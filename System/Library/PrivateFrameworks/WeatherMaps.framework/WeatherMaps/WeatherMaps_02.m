uint64_t sub_220E49CE4()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_220E49DD8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_220FC9A00;
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

BOOL sub_220E49E3C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](a2);
  v6 = sub_220FC3A90();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_220E4B17C(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_220E49F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v11 = *v5;
  sub_220FC3A40();
  sub_220EEBB30(v22, a2, a3, a4);
  v12 = sub_220FC3A90();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = *(v11 + 48) + 32 * v14;
      v17 = *v16 == a2 && *(v16 + 8) == a3;
      v18 = v17 && *(v16 + 16) == a4;
      if (v18 && *(v16 + 24) == a5)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    result = 0;
    a5 = *(v16 + 24);
  }

  else
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = *v5;
    sub_220E4B2B4(a2, a3, a4, v14, isUniquelyReferenced_nonNull_native, a5);
    *v5 = v22[0];
    result = 1;
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  return result;
}

uint64_t sub_220E4A07C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_220FC3A40();
  sub_220EB33C0(v23);
  v6 = sub_220FC3A90();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    while (1)
    {
      v13 = *(v5 + 48) + 48 * v8;
      v14 = *(v13 + 24);
      v15 = *v13 == v10 && *(v13 + 8) == v11;
      v16 = v15 && *(v13 + 16) == v12;
      if (v16 && v14 == *(a2 + 24))
      {
        v18 = *(v13 + 32);
        if (v18 == *(a2 + 32))
        {
          v19 = *(v13 + 40);
          if (v19 == *(a2 + 40))
          {
            break;
          }
        }
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    result = 0;
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    *(a1 + 24) = v14;
    *(a1 + 32) = v18;
    *(a1 + 40) = v19;
  }

  else
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23[0] = *v2;
    sub_220E4B450(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v23[0];
    v21 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v21;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }

  return result;
}

uint64_t sub_220E4A1DC(void *a1, void *a2)
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

    v9 = sub_220FC34D0();

    if (v9)
    {

      type metadata accessor for WeatherMapAnnotationView();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = sub_220FC34C0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_220EE7B04(v7, result + 1);
        if (*(v16 + 24) <= *(v16 + 16))
        {
          sub_220E4AD14();
        }

        v17 = v8;
        sub_220EE7CBC(v17, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v17;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for WeatherMapAnnotationView();
    v11 = sub_220FC3240();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *v3;
        v17 = a2;
        sub_220E4B5FC(v17, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v22;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_220FC3250();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v19 = *(*(v6 + 48) + 8 * v13);
    *a1 = v19;
    v20 = v19;
    return 0;
  }

  return result;
}

BOOL sub_220E4A3E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_220FC3A40();
  sub_220FC27D0();
  v8 = sub_220FC3A90();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_220FC3940() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_220E4B744(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_220E4A52C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFE0);
  result = sub_220FC3570();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_220E49DD8(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    sub_220FC3A40();
    MEMORY[0x223D9CFA0](v15);
    result = sub_220FC3A90();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_220E4A778()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D000);
  result = sub_220FC3570();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v30 = v2;
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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v2 + 32);
    if (v29 >= 64)
    {
      sub_220E49DD8(0, (v29 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v29;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(v2 + 48) + 32 * (v12 | (v5 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    sub_220FC3A40();
    MEMORY[0x223D9CFA0](v16);
    MEMORY[0x223D9CFA0](v17);
    MEMORY[0x223D9CFA0](v18);
    sub_220FC3A70();
    result = sub_220FC3A90();
    v20 = -1 << *(v4 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v4 + 48) + 32 * v23;
    *v28 = v16;
    *(v28 + 8) = v17;
    *(v28 + 16) = v18;
    *(v28 + 24) = v19;
    ++*(v4 + 16);
    v2 = v30;
    if (!v9)
    {
      goto LABEL_7;
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
    v27 = *(v11 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_220E4AA1C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFF8);
  result = sub_220FC3570();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_30:

    *v1 = v4;
    return result;
  }

  v33 = v2;
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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v34 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v32 = 1 << *(v2 + 32);
    if (v32 >= 64)
    {
      sub_220E49DD8(0, (v32 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v32;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v34 = (v9 - 1) & v9;
LABEL_12:
    v15 = *(v2 + 48) + 48 * (v12 | (v5 << 6));
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    v21 = *(v15 + 40);
    sub_220FC3A40();
    MEMORY[0x223D9CFA0](v17);
    MEMORY[0x223D9CFA0](v16);
    MEMORY[0x223D9CFA0](v18);
    sub_220FC3A70();
    MEMORY[0x223D9CFA0](v20);
    v22 = v21 == 0.0 ? 0.0 : v21;
    MEMORY[0x223D9CFD0](*&v22);
    result = sub_220FC3A90();
    v23 = -1 << *(v4 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v11 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v4 + 48) + 48 * v26;
    v9 = v34;
    *v31 = v17;
    *(v31 + 8) = v16;
    *(v31 + 16) = v18;
    *(v31 + 24) = v19;
    *(v31 + 32) = v20;
    *(v31 + 40) = v21;
    ++*(v4 + 16);
    v2 = v33;
    if (!v34)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v11 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_220E4AD14()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFF0);
  result = sub_220FC3570();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      ++v13;
      if (v6[v5])
      {
        OUTLINED_FUNCTION_26();
        goto LABEL_12;
      }
    }

    v23 = 1 << *(v2 + 32);
    if (v23 >= 64)
    {
      sub_220E49DD8(0, (v23 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v23;
    }

    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_27_1();
LABEL_12:
    v14 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_220FC3240();
    v15 = -1 << *(v4 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
    {
      break;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v4 + 48) + 8 * v18) = v14;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v19 = 0;
  v20 = (63 - v15) >> 6;
  while (++v17 != v20 || (v19 & 1) == 0)
  {
    v21 = v17 == v20;
    if (v17 == v20)
    {
      v17 = 0;
    }

    v19 |= v21;
    v22 = *(v11 + 8 * v17);
    if (v22 != -1)
    {
      v18 = __clz(__rbit64(~v22)) + (v17 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_220E4AF20()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D008);
  result = sub_220FC3570();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_220E49DD8(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_220FC3A40();
    sub_220FC27D0();
    result = sub_220FC3A90();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
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
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_220E4B17C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_220E4A52C();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_220E4BE14();
LABEL_10:
      v12 = *v3;
      sub_220FC3A40();
      MEMORY[0x223D9CFA0](v5);
      result = sub_220FC3A90();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_220E4B8AC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_220FC3980();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_220E4B2B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, float a6)
{
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a5 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a5)
  {
    sub_220E4A778();
  }

  else
  {
    if (v13 > v12)
    {
      sub_220E4B9EC();
      goto LABEL_21;
    }

    sub_220E4C030();
  }

  v14 = *v6;
  sub_220FC3A40();
  sub_220EEBB30(v27, a1, a2, a3);
  v15 = sub_220FC3A90();
  v16 = -1 << *(v14 + 32);
  a4 = v15 & ~v16;
  if ((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    do
    {
      v18 = *(v14 + 48) + 32 * a4;
      v19 = *v18 == a1 && *(v18 + 8) == a2;
      v20 = v19 && *(v18 + 16) == a3;
      if (v20 && *(v18 + 24) == a6)
      {
        goto LABEL_24;
      }

      a4 = (a4 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_21:
  v22 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 32 * a4;
  *v23 = a1;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3;
  *(v23 + 24) = a6;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return;
  }

  __break(1u);
LABEL_24:
  sub_220FC3980();
  __break(1u);
}

void sub_220E4B450(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_220E4AA1C();
  }

  else
  {
    if (v7 > v6)
    {
      sub_220E4BAC4();
      goto LABEL_24;
    }

    sub_220E4C2A4();
  }

  v8 = *v3;
  sub_220FC3A40();
  sub_220EB33C0(v22);
  v9 = sub_220FC3A90();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(v8 + 48) + 48 * a2;
      v13 = *v12 == *a1 && *(v12 + 8) == *(a1 + 8);
      v14 = v13 && *(v12 + 16) == *(a1 + 16);
      v15 = v14 && *(v12 + 24) == *(a1 + 24);
      if (v15 && *(v12 + 32) == *(a1 + 32) && *(v12 + 40) == *(a1 + 40))
      {
        goto LABEL_27;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v17 = (*(v16 + 48) + 48 * a2);
  v18 = *(a1 + 16);
  *v17 = *a1;
  v17[1] = v18;
  v17[2] = *(a1 + 32);
  v19 = *(v16 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v16 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_27:
  sub_220FC3980();
  __break(1u);
}

uint64_t sub_220E4B5FC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_220E4AD14();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_220E4C56C();
LABEL_10:
      v12 = *v3;
      result = sub_220FC3240();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for WeatherMapAnnotationView();
        v14 = *(*(v12 + 48) + 8 * a2);
        v15 = sub_220FC3250();

        if (v15)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_220E4BBB0();
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
    result = sub_220FC3980();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_220E4B744(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_220E4AF20();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_220E4C77C();
LABEL_10:
      v15 = *v4;
      sub_220FC3A40();
      sub_220FC27D0();
      result = sub_220FC3A90();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_220FC3940() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_220E4BCBC();
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
    result = sub_220FC3980();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_220E4B8AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFE0);
  v2 = *v0;
  v3 = sub_220FC3560();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void sub_220E4B9EC()
{
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D000);
  v4 = OUTLINED_FUNCTION_22_0();
  if (*(v1 + 16))
  {
    v5 = OUTLINED_FUNCTION_3_7();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    OUTLINED_FUNCTION_8_3();
    if (v12)
    {
      do
      {
        OUTLINED_FUNCTION_18_0();
LABEL_15:
        v17 = *(v1 + 48) + 32 * v14;
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        v20 = *(v4 + 48) + 32 * v14;
        *v20 = *v17;
        *(v20 + 16) = v18;
        *(v20 + 24) = v19;
      }

      while (v13);
    }

    v15 = v10;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v11)
      {
        goto LABEL_17;
      }

      ++v15;
      if (*(v2 + v16))
      {
        OUTLINED_FUNCTION_17_1();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v4;
  }
}

void sub_220E4BAC4()
{
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFF8);
  v4 = OUTLINED_FUNCTION_22_0();
  if (*(v1 + 16))
  {
    v5 = OUTLINED_FUNCTION_3_7();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    OUTLINED_FUNCTION_8_3();
    if (v12)
    {
      do
      {
        OUTLINED_FUNCTION_18_0();
LABEL_15:
        v17 = 3 * v14;
        v18 = *(v1 + 48) + 16 * v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v18 + 32);
        v22 = *(v18 + 40);
        v23 = *(v4 + 48) + 16 * v17;
        *v23 = *v18;
        *(v23 + 16) = v19;
        *(v23 + 24) = v20;
        *(v23 + 32) = v21;
        *(v23 + 40) = v22;
      }

      while (v13);
    }

    v15 = v10;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v11)
      {
        goto LABEL_17;
      }

      ++v15;
      if (*(v2 + v16))
      {
        OUTLINED_FUNCTION_17_1();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v4;
  }
}

id sub_220E4BBB0()
{
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFF0);
  v4 = OUTLINED_FUNCTION_22_0();
  if (*(v1 + 16))
  {
    result = OUTLINED_FUNCTION_3_7();
    if (v8)
    {
      v9 = result >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      result = memmove(result, v2, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v1 + 16);
    v11 = 1 << *(v1 + 32);
    v12 = *(v1 + 56);
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
        OUTLINED_FUNCTION_27_1();
LABEL_17:
        v18 = v16 | (v10 << 6);
        v19 = *(*(v1 + 48) + 8 * v18);
        *(*(v4 + 48) + 8 * v18) = v19;
        result = v19;
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

      ++v17;
      if (*(v2 + v10))
      {
        OUTLINED_FUNCTION_26();
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v4;
  }

  return result;
}

void *sub_220E4BCBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D008);
  v2 = *v0;
  v3 = sub_220FC3560();
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

uint64_t sub_220E4BE14()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFE0);
  result = sub_220FC3570();
  v4 = result;
  if (*(v2 + 16))
  {
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
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        sub_220FC3A40();
        MEMORY[0x223D9CFA0](v14);
        result = sub_220FC3A90();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_220E4C030()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D000);
  result = sub_220FC3570();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v2 + 48) + 32 * (v12 | (v5 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        sub_220FC3A40();
        MEMORY[0x223D9CFA0](v16);
        MEMORY[0x223D9CFA0](v17);
        MEMORY[0x223D9CFA0](v18);
        sub_220FC3A70();
        result = sub_220FC3A90();
        v20 = -1 << *(v4 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = *(v4 + 48) + 32 * v23;
        *v28 = v16;
        *(v28 + 8) = v17;
        *(v28 + 16) = v18;
        *(v28 + 24) = v19;
        ++*(v4 + 16);
        v2 = v29;
        if (!v9)
        {
          goto LABEL_7;
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
        v27 = *(v11 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_220E4C2A4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFF8);
  result = sub_220FC3570();
  v4 = result;
  if (*(v2 + 16))
  {
    v32 = v2;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v33 = (v9 - 1) & v9;
LABEL_12:
        v15 = *(v2 + 48) + 48 * (v12 | (v5 << 6));
        v17 = *v15;
        v16 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        v20 = *(v15 + 32);
        v21 = *(v15 + 40);
        sub_220FC3A40();
        MEMORY[0x223D9CFA0](v17);
        MEMORY[0x223D9CFA0](v16);
        MEMORY[0x223D9CFA0](v18);
        sub_220FC3A70();
        MEMORY[0x223D9CFA0](v20);
        v22 = v21 == 0.0 ? 0.0 : v21;
        MEMORY[0x223D9CFD0](*&v22);
        result = sub_220FC3A90();
        v23 = -1 << *(v4 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v11 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v31 = *(v4 + 48) + 48 * v26;
        v9 = v33;
        *v31 = v17;
        *(v31 + 8) = v16;
        *(v31 + 16) = v18;
        *(v31 + 24) = v19;
        *(v31 + 32) = v20;
        *(v31 + 40) = v21;
        ++*(v4 + 16);
        v2 = v32;
        if (!v33)
        {
          goto LABEL_7;
        }
      }

      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v11 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_28;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v33 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_220E4C56C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFF0);
  result = sub_220FC3570();
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
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_220FC3240();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v23;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_220E4C77C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D008);
  result = sub_220FC3570();
  v4 = result;
  if (*(v2 + 16))
  {
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
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_220FC3A40();

        sub_220FC27D0();
        result = sub_220FC3A90();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

id sub_220E4C9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_220FC26C0();

  v7 = sub_220FC26C0();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_220E4CA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, _BYTE *a13)
{
  v68 = type metadata accessor for MainOverlayRenderContext();
  v69 = &off_283481CA0;
  v67[0] = a1;
  v20 = OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_texturePools;
  type metadata accessor for MTLPixelFormat(0);
  type metadata accessor for OverlayTexturePool();
  sub_220E4D1BC();
  *&a13[v20] = sub_220FC2600();
  v21 = &a13[OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_colorMap];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  v21[40] = -1;
  sub_220E1E2A8(v67, &a13[OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_mainContext]);
  sub_220E4D214(a7, __src, &qword_27CF9CFC0);
  if (__src[3])
  {
    v22 = swift_allocObject();
    memcpy((v22 + 16), __src, 0x78uLL);
    v23 = &off_283481D58;
    v24 = &type metadata for OverlayRenderContext.Shaders;
  }

  else
  {
    sub_220E45374(__src, &qword_27CF9CFC0);
    v22 = 0;
    v24 = 0;
    v23 = 0;
  }

  v25 = &a13[OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_shaders];
  *v25 = v22;
  v25[1] = 0;
  v25[2] = 0;
  v25[3] = v24;
  v25[4] = v23;
  v26 = sub_220FC2600();
  swift_beginAccess();
  *&a13[v20] = v26;

  *&a13[OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_destinationPixelFormat] = a3;
  a13[OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_pixelReaderEnabled] = a6 & 1;
  *&a13[OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_userInterfaceStyle] = a4;
  v65.receiver = a13;
  v65.super_class = type metadata accessor for OverlayRenderContext();
  v27 = objc_msgSendSuper2(&v65, sel_init);
  v28 = v27;
  if ((a5 & 1) == 0)
  {
    v55 = v27;
    sub_220E45374(a7, &qword_27CF9CFC0);
    sub_220E2DD2C(a11);

LABEL_36:
    __swift_destroy_boxed_opaque_existential_0(v67);
    return v28;
  }

  if (a9 <= -9.22337204e18)
  {
    goto LABEL_40;
  }

  if (a9 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((*&a9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_42;
  }

  if (a10 > -9.22337204e18)
  {
    if (a10 < 9.22337204e18)
    {
      v29 = 1 << *(a2 + 32);
      v30 = -1;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      v31 = v30 & *(a2 + 56);
      v59 = OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_texturePools;
      v58 = (v29 + 63) >> 6;
      v57 = v27;
      v32 = 0;
      v33 = a8;
      v34 = a11;
      v61 = v28;
      while (1)
      {
        if (!v31)
        {
          while (1)
          {
            v35 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              break;
            }

            if (v35 >= v58)
            {
              sub_220E45374(a7, &qword_27CF9CFC0);

              sub_220E2DD2C(v34);

              goto LABEL_36;
            }

            v31 = *(a2 + 56 + 8 * v35);
            ++v32;
            if (v31)
            {
              v32 = v35;
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_19:
        v36 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        v37 = *(*(a2 + 48) + (v36 | (v32 << 6)));
        if (*(v33 + 16))
        {
          v38 = sub_220F1AE38(v37);
          if (v39)
          {
            break;
          }
        }

        v41 = sub_220F40D14(v37);
        if ((v42 & 1) == 0)
        {
          v40 = v41;
LABEL_24:
          v43 = *(*__swift_project_boxed_opaque_existential_1(v67, v68) + 16);
          swift_unknownObjectRetain();
          sub_220FC35C0();

          v44 = MEMORY[0x223D9C390](v40);
          MEMORY[0x223D9BD60](v44);

          swift_allocObject();
          sub_220E1AADC(v34);
          v45 = sub_220F412B8(v43, v40, a9, a10, 1, 16, 5, 1, 0x2D79616C7265766FLL, 0xEF2D7265646E6572, v34);
          swift_beginAccess();

          swift_isUniquelyReferenced_nonNull_native();
          v64 = *&v61[v59];
          *&v61[v59] = 0x8000000000000000;
          v46 = sub_220F1937C();
          if (__OFADD__(v64[2], (v47 & 1) == 0))
          {
            goto LABEL_38;
          }

          v48 = v46;
          v49 = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFE8);
          if (sub_220FC3710())
          {
            v50 = sub_220F1937C();
            v33 = a8;
            v34 = a11;
            if ((v49 & 1) != (v51 & 1))
            {
              goto LABEL_45;
            }

            v48 = v50;
          }

          else
          {
            v33 = a8;
            v34 = a11;
          }

          if (v49)
          {
            *(v64[7] + 8 * v48) = v45;
          }

          else
          {
            v64[(v48 >> 6) + 8] |= 1 << v48;
            *(v64[6] + 8 * v48) = v40;
            *(v64[7] + 8 * v48) = v45;
            v52 = v64[2];
            v53 = __OFADD__(v52, 1);
            v54 = v52 + 1;
            if (v53)
            {
              goto LABEL_39;
            }

            v64[2] = v54;
          }

          v28 = v61;
          *&v61[v59] = v64;
          swift_endAccess();
        }
      }

      v40 = *(*(v33 + 56) + 8 * v38);
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_220FC3990();
  __break(1u);
  return result;
}

unint64_t sub_220E4D10C()
{
  result = qword_27CF9CFC8;
  if (!qword_27CF9CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9CFC8);
  }

  return result;
}

unint64_t sub_220E4D1BC()
{
  result = qword_27CF9F390;
  if (!qword_27CF9F390)
  {
    type metadata accessor for MTLPixelFormat(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F390);
  }

  return result;
}

uint64_t sub_220E4D214(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220E4D27C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F3B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_220E4D2EC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v62 = *MEMORY[0x277D85DE8];
  v60 = type metadata accessor for MainOverlayRenderContext();
  v61 = &off_283481CA0;
  v59[0] = a1;
  v10 = *(*__swift_project_boxed_opaque_existential_1(v59, v60) + 72);

  swift_unknownObjectRetain();
  v11 = sub_220FC26C0();
  v12 = [v10 newFunctionWithName_];

  swift_unknownObjectRelease();
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = *(*__swift_project_boxed_opaque_existential_1(v59, v60) + 72);
  swift_unknownObjectRetain();
  v14 = sub_220FC26C0();
  v15 = [v13 newFunctionWithName_];

  swift_unknownObjectRelease();
  if (!v15)
  {
    swift_unknownObjectRelease();
LABEL_17:
    if (qword_27CF9BFA0 != -1)
    {
      swift_once();
    }

    v38 = sub_220FC17A0();
    __swift_project_value_buffer(v38, qword_27CF9CAF0);
    sub_220E1E2A8(v59, v58);

    v39 = sub_220FC1780();
    v40 = sub_220FC2E10();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57 = v42;
      *v41 = 136446466;
      v43 = [*(*__swift_project_boxed_opaque_existential_1(v58 v58[3]) + 72)];
      if (v43)
      {
        v44 = v43;
        sub_220FC2700();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFD0);
      v52 = sub_220FC2750();
      v54 = v53;
      __swift_destroy_boxed_opaque_existential_0(v58);
      v55 = sub_220E20FF8(v52, v54, &v57);

      *(v41 + 4) = v55;
      *(v41 + 12) = 2082;
      *(v41 + 14) = sub_220E20FF8(a2, a3, &v57);
      _os_log_impl(&dword_220E15000, v39, v40, "Cannot make the shader functions. library=%{public}s, functionName=%{public}s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D9DDF0](v42, -1, -1);
      MEMORY[0x223D9DDF0](v41, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v58);
    }

    goto LABEL_29;
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  sub_220EF50DC(0x5F72656874616577, 0xEB0000000070616DLL, v16);
  v17 = [v16 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (!v18)
  {
    __break(1u);
    goto LABEL_31;
  }

  [v18 setPixelFormat_];

  v19 = [v16 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  if (!v20)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v20 setBlendingEnabled_];

  v21 = [v16 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript_];

  if (!v22)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v22 setRgbBlendOperation_];

  v23 = [v16 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript_];

  if (!v24)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v24 setAlphaBlendOperation_];

  v25 = [v16 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript_];

  if (!v26)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v26 setSourceRGBBlendFactor_];

  v27 = [v16 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript_];

  if (!v28)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v28 setSourceAlphaBlendFactor_];

  v29 = [v16 colorAttachments];
  v30 = [v29 objectAtIndexedSubscript_];

  if (!v30)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v30 setDestinationRGBBlendFactor_];

  v31 = [v16 colorAttachments];
  v32 = [v31 objectAtIndexedSubscript_];

  if (!v32)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v32 setDestinationAlphaBlendFactor_];

  if ((a5 & 1) == 0)
  {
    goto LABEL_14;
  }

  v33 = [v16 colorAttachments];
  v34 = [v33 objectAtIndexedSubscript_];

  if (v34)
  {
    [v34 setPixelFormat_];

LABEL_14:
    [v16 setDepthAttachmentPixelFormat_];
    [v16 setVertexFunction_];
    [v16 setFragmentFunction_];
    v35 = *(*__swift_project_boxed_opaque_existential_1(v59, v60) + 16);
    v58[0] = 0;
    v36 = [v35 newRenderPipelineStateWithDescriptor:v16 error:v58];
    v37 = v58[0];
    if (v36)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v37;
      v46 = sub_220FBFFE0();

      swift_willThrow();
      if (qword_27CF9BFA0 != -1)
      {
        swift_once();
      }

      v47 = sub_220FC17A0();
      __swift_project_value_buffer(v47, qword_27CF9CAF0);

      v48 = sub_220FC1780();
      v49 = sub_220FC2E10();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v58[0] = v51;
        *v50 = 136446210;
        *(v50 + 4) = sub_220E20FF8(v56, a3, v58);
        _os_log_impl(&dword_220E15000, v48, v49, "Cannot make render pipeline state. functionName=%{public}s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x223D9DDF0](v51, -1, -1);
        MEMORY[0x223D9DDF0](v50, -1, -1);
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

LABEL_29:
    __swift_destroy_boxed_opaque_existential_0(v59);
    return;
  }

LABEL_38:
  __break(1u);
}

uint64_t sub_220E4DB58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for MainOverlayRenderContext();
  v26[3] = v10;
  v26[4] = &off_283481CA0;
  v26[0] = a4;
  sub_220E4D214(a1, &v24, &qword_27CF9F3B0);
  sub_220E1E2A8(v26, v22);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  MEMORY[0x28223BE20](v11, v11);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v21[3] = v10;
  v21[4] = &off_283481CA0;
  v21[0] = v15;
  v16 = __swift_project_boxed_opaque_existential_1(v21, v10);
  sub_220E4D2EC(*v16, 0xD000000000000015, 0x8000000220FDCB70, a2, a3);
  v18 = v17;
  sub_220E45374(a1, &qword_27CF9F3B0);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v21);
  if (v18)
  {
    v19 = v25[0];
    *(a5 + 16) = v24;
    *(a5 + 32) = v19;
    *(a5 + 41) = *(v25 + 9);
    *(a5 + 64) = v18;
  }

  else
  {
    sub_220E45374(&v24, &qword_27CF9F3B0);
    type metadata accessor for OverlayShader();
    swift_deallocPartialClassInstance();
    a5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v22);
  return a5;
}

uint64_t sub_220E4DD58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for MainOverlayRenderContext();
  v26[3] = v10;
  v26[4] = &off_283481CA0;
  v26[0] = a4;
  sub_220E4D214(a1, &v24, &qword_27CF9F3B0);
  sub_220E1E2A8(v26, v22);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  MEMORY[0x28223BE20](v11, v11);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v21[3] = v10;
  v21[4] = &off_283481CA0;
  v21[0] = v15;
  v16 = __swift_project_boxed_opaque_existential_1(v21, v10);
  sub_220E4D2EC(*v16, 0xD000000000000017, 0x8000000220FDCB50, a2, a3);
  v18 = v17;
  sub_220E45374(a1, &qword_27CF9F3B0);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v21);
  if (v18)
  {
    v19 = v25[0];
    *(a5 + 16) = v24;
    *(a5 + 32) = v19;
    *(a5 + 41) = *(v25 + 9);
    *(a5 + 64) = v18;
  }

  else
  {
    sub_220E45374(&v24, &qword_27CF9F3B0);
    type metadata accessor for OverlayShader();
    swift_deallocPartialClassInstance();
    a5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v22);
  return a5;
}

uint64_t sub_220E4DF58(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for MainOverlayRenderContext();
  v38[3] = v12;
  v38[4] = &off_283481CA0;
  v38[0] = a5;
  v13 = __swift_project_boxed_opaque_existential_1(v38, v12);
  sub_220E1E2A8(*v13 + 32, &v36);
  __swift_project_boxed_opaque_existential_1(&v36, *&v37[8]);
  v14 = [objc_opt_self() mainScreen];
  [v14 scale];
  v16 = v15;

  v17 = v16;
  *(a6 + 72) = sub_220F82B9C(v17);
  v18 = v35;
  *(a6 + 80) = v34;
  *(a6 + 96) = v18;
  *(a6 + 112) = 1;
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v19 = a2;
  *&v20 = sub_220F884A0(v19);
  *(a6 + 128) = v20;
  sub_220E4D214(a1, &v36, &qword_27CF9F3B0);
  sub_220E1E2A8(v38, &v34);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
  v32 = &v32;
  MEMORY[0x28223BE20](v21, v21);
  v23 = a3;
  v24 = (&v33[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v33[3] = v12;
  v33[4] = &off_283481CA0;
  v33[0] = v26;
  v27 = __swift_project_boxed_opaque_existential_1(v33, v12);
  sub_220E4D2EC(*v27, 0xD000000000000020, 0x8000000220FDCB20, v23, a4 & 1);
  v29 = v28;

  sub_220E45374(a1, &qword_27CF9F3B0);
  __swift_destroy_boxed_opaque_existential_0(v33);
  if (v29)
  {
    v30 = *v37;
    *(a6 + 16) = v36;
    *(a6 + 32) = v30;
    *(a6 + 41) = *&v37[9];
    *(a6 + 64) = v29;
    __swift_destroy_boxed_opaque_existential_0(&v34);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    sub_220E45374(&v36, &qword_27CF9F3B0);
    type metadata accessor for OverlayShader();
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0(&v34);
    __swift_destroy_boxed_opaque_existential_0(v38);
    return 0;
  }

  return a6;
}

uint64_t sub_220E4E384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v20 = *a4;
  v21 = &off_283481CA0;
  v19[0] = a4;
  a5(0);
  v10 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v19[-1] - v13);
  (*(v15 + 16))(&v19[-1] - v13);
  v16 = a6(a1, a2, a3, *v14, v10);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v16;
}

unint64_t sub_220E4E534()
{
  result = qword_27CF9CFD8;
  if (!qword_27CF9CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9CFD8);
  }

  return result;
}

unint64_t sub_220E4E588()
{
  result = qword_2812C75B0;
  if (!qword_2812C75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C75B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return sub_220FC3560();
}

void OUTLINED_FUNCTION_28_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_29_0()
{
  v2 = *(v0 + 208);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 184, v2);
}

void sub_220E4E71C()
{
  v1 = sub_220E4E780();
  *&v1[OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView_cornerRadius] = *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_cornerRadius);
  sub_220E3B59C();
}

id sub_220E4E780()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView____lazy_storage___snapshotDisplayView;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView____lazy_storage___snapshotDisplayView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView____lazy_storage___snapshotDisplayView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for WeatherMapSnapshotDisplayView()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_220E4E804@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SnapshotManager.SnapshotResult(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherMapSnapshotView.Status(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WeatherMapSnapshotView.Status.Loaded(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220E55FB8();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_220E55F60(v9, type metadata accessor for WeatherMapSnapshotView.Status);
    v14 = 1;
  }

  else
  {
    sub_220E56050();
    sub_220E55FB8();
    sub_220E55F60(v13, type metadata accessor for WeatherMapSnapshotView.Status.Loaded);
    type metadata accessor for SnapshotManager.Snapshot(0);
    sub_220E55FB8();
    sub_220E55F60(v5, type metadata accessor for SnapshotManager.Snapshot);
    v14 = 0;
  }

  v15 = type metadata accessor for SnapshotManager.Options(0);
  return __swift_storeEnumTagSinglePayload(a1, v14, 1, v15);
}

uint64_t sub_220E4EA28@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SnapshotManager.SnapshotResult(0);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherMapSnapshotView.Status(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for WeatherMapSnapshotView.Status.Loaded(0);
  v11 = OUTLINED_FUNCTION_8_0(v10);
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_4_6();
  sub_220E55FB8();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_12();
    sub_220E55F60(v9, v16);
    v17 = 1;
  }

  else
  {
    sub_220E56050();
    sub_220E55FB8();
    sub_220E55F60(v15, type metadata accessor for WeatherMapSnapshotView.Status.Loaded);
    OUTLINED_FUNCTION_5_4();
    sub_220E56050();
    v17 = 0;
  }

  v18 = type metadata accessor for SnapshotManager.Snapshot(0);
  return __swift_storeEnumTagSinglePayload(a1, v17, 1, v18);
}

uint64_t sub_220E4EBCC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WeatherMapSnapshotView.Status(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherMapSnapshotView.Status.Loaded(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220E55FB8();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_220E55F60(v5, type metadata accessor for WeatherMapSnapshotView.Status);
    v10 = sub_220FC0760();
    v11 = a1;
    v12 = 1;
  }

  else
  {
    sub_220E56050();
    v13 = *(v6 + 20);
    v14 = sub_220FC0760();
    (*(*(v14 - 8) + 16))(a1, &v9[v13], v14);
    sub_220E55F60(v9, type metadata accessor for WeatherMapSnapshotView.Status.Loaded);
    v11 = a1;
    v12 = 0;
    v10 = v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
}

uint64_t sub_220E4ED98()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView____lazy_storage___showDebugConsole;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView____lazy_storage___showDebugConsole);
  if (v2 == 2)
  {
    if (qword_2812CA228 != -1)
    {
      swift_once();
    }

    sub_220E56368(&qword_2812C9D28, type metadata accessor for WeatherMapSnapshotView);
    sub_220FC0A00();
    LOBYTE(v2) = v4;
    *(v0 + v1) = v4;
  }

  return v2 & 1;
}

uint64_t sub_220E4EE70()
{
  v0 = type metadata accessor for WeatherMapSnapshotView.Status(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v9 - v6;
  swift_beginAccess();
  sub_220E55FB8();
  sub_220E4F054();
  sub_220E55F60(v7, type metadata accessor for WeatherMapSnapshotView.Status);
  sub_220E55FB8();
  result = swift_getEnumCaseMultiPayload();
  if (result >= 2)
  {
    if (result != 2)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_220F599BC();
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_220E55F60(v3, type metadata accessor for WeatherMapSnapshotView.Status);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_220E55FB8();
      sub_220F59A28();
      swift_unknownObjectRelease();
      return sub_220E55F60(v7, type metadata accessor for WeatherMapSnapshotView.Status);
    }
  }

  return result;
}

void sub_220E4F054()
{
  v0 = sub_220FC0760();
  v78 = *(v0 - 8);
  v79 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v77 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for SnapshotManager.Snapshot(0);
  MEMORY[0x28223BE20](v72, v3);
  v76 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WeatherMapOverlay();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SnapshotManager.Options(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for SnapshotManager.SnapshotResult(0);
  MEMORY[0x28223BE20](v75, v13);
  v74 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v65 - v17;
  v73 = type metadata accessor for WeatherMapSnapshotView.Status.Loaded(0);
  MEMORY[0x28223BE20](v73, v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v65 - v24;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v65 - v28;
  v30 = type metadata accessor for WeatherMapSnapshotView.Status(0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220E55FB8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_220E55F60(v33, type metadata accessor for WeatherMapSnapshotView.Status);
      sub_220E52D04();
      break;
    case 2u:
      if (qword_2812C5EF8 != -1)
      {
        swift_once();
      }

      v53 = sub_220FC17A0();
      __swift_project_value_buffer(v53, qword_2812C5F00);
      v54 = sub_220FC1780();
      v55 = sub_220FC2E30();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_220E15000, v54, v55, "Update SnapshotView - Not Loaded", v56, 2u);
        MEMORY[0x223D9DDF0](v56, -1, -1);
      }

      break;
    case 3u:
      if (qword_2812C5EF8 != -1)
      {
        swift_once();
      }

      v57 = sub_220FC17A0();
      __swift_project_value_buffer(v57, qword_2812C5F00);
      v58 = sub_220FC1780();
      v59 = sub_220FC2E30();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_220E15000, v58, v59, "Update SnapshotView - Loading", v60, 2u);
        MEMORY[0x223D9DDF0](v60, -1, -1);
      }

      sub_220E51FE4();
      break;
    default:
      sub_220E56050();
      v34 = [objc_opt_self() sharedApplication];
      v35 = [v34 applicationState];

      if (qword_2812C5EF8 != -1)
      {
        swift_once();
      }

      v36 = sub_220FC17A0();
      __swift_project_value_buffer(v36, qword_2812C5F00);
      sub_220E55FB8();
      sub_220E55FB8();
      v37 = sub_220FC1780();
      v38 = sub_220FC2E30();
      if (os_log_type_enabled(v37, v38))
      {
        v70 = v37;
        v39 = swift_slowAlloc();
        v68 = v38;
        v40 = v39;
        v69 = swift_slowAlloc();
        v81 = v69;
        *v40 = 67109891;
        *(v40 + 4) = v35 == 0;
        *(v40 + 8) = 2160;
        *(v40 + 10) = 1752392040;
        *(v40 + 18) = 2081;
        v67 = type metadata accessor for SnapshotManager.SnapshotResult;
        sub_220E55FB8();
        sub_220E55FB8();
        v66 = type metadata accessor for SnapshotManager.Snapshot;
        sub_220E55F60(v18, type metadata accessor for SnapshotManager.Snapshot);
        v41 = *(v9 + 20);
        v42 = sub_220FC1040();
        v71 = v35;
        v44 = v43;
        sub_220E55F60(v25, type metadata accessor for WeatherMapSnapshotView.Status.Loaded);
        v45 = sub_220FC1070();
        (*(*(v45 - 8) + 8))(&v12[v41], v45);
        v46 = sub_220E20FF8(v42, v44, &v81);
        v35 = v71;

        *(v40 + 20) = v46;
        *(v40 + 28) = 2080;
        sub_220E55FB8();
        sub_220E55FB8();
        sub_220E55F60(v18, v66);
        LOBYTE(v46) = v8[200];
        sub_220E55F60(v8, type metadata accessor for WeatherMapOverlay);
        v80 = v46;
        sub_220E561E0();
        v47 = sub_220FC38F0();
        v49 = v48;
        sub_220E55F60(v21, type metadata accessor for WeatherMapSnapshotView.Status.Loaded);
        v50 = sub_220E20FF8(v47, v49, &v81);

        *(v40 + 30) = v50;
        v51 = v70;
        _os_log_impl(&dword_220E15000, v70, v68, "Update SnapshotView - Loaded. isActive=%{BOOL}d, location=%{private,mask.hash}s, overlay=%s", v40, 0x26u);
        v52 = v69;
        swift_arrayDestroy();
        MEMORY[0x223D9DDF0](v52, -1, -1);
        MEMORY[0x223D9DDF0](v40, -1, -1);
      }

      else
      {

        sub_220E55F60(v21, type metadata accessor for WeatherMapSnapshotView.Status.Loaded);
        sub_220E55F60(v25, type metadata accessor for WeatherMapSnapshotView.Status.Loaded);
      }

      sub_220E55FB8();
      v61 = v76;
      sub_220E56050();
      v63 = v77;
      v62 = v78;
      v64 = v79;
      (*(v78 + 16))(v77, &v29[*(v73 + 20)], v79);
      sub_220E521C0(v61, v63, (v35 == 0) & ~v29[*(v75 + 20)]);
      (*(v62 + 8))(v63, v64);
      sub_220E55F60(v61, type metadata accessor for SnapshotManager.Snapshot);
      sub_220E55F60(v29, type metadata accessor for WeatherMapSnapshotView.Status.Loaded);
      break;
  }
}

uint64_t sub_220E4F9D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_status;
  swift_beginAccess();
  sub_220E560A8(a1, v1 + v3);
  swift_endAccess();
  sub_220E4EE70();
  OUTLINED_FUNCTION_0_12();
  return sub_220E55F60(a1, v4);
}

uint64_t sub_220E4FA40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  v1 = OUTLINED_FUNCTION_8_0(v0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v32 - v7;
  v9 = sub_220FC0760();
  OUTLINED_FUNCTION_6();
  v11 = v10;
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D080);
  v18 = OUTLINED_FUNCTION_8_0(v17);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v32 - v20;
  v22 = type metadata accessor for SnapshotManager.Snapshot(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v23, v24);
  OUTLINED_FUNCTION_3();
  v27 = v26 - v25;
  OUTLINED_FUNCTION_5_1();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = result;
    OUTLINED_FUNCTION_5_1();
    sub_220E43574();
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
    {

      v30 = &qword_27CF9D080;
      v31 = v21;
      return sub_220E3B2DC(v31, v30);
    }

    OUTLINED_FUNCTION_5_4();
    sub_220E56050();
    OUTLINED_FUNCTION_5_1();
    sub_220E43574();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      OUTLINED_FUNCTION_6_3();

      v30 = &qword_27CF9CEE8;
      v31 = v8;
      return sub_220E3B2DC(v31, v30);
    }

    (*(v11 + 32))(v16, v8, v9);
    (*(v11 + 16))(v4, v16, v9);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v9);
    sub_220E4FD74(v27, v4);

    sub_220E3B2DC(v4, &qword_27CF9CEE8);
    (*(v11 + 8))(v16, v9);
    return OUTLINED_FUNCTION_6_3();
  }

  return result;
}

void sub_220E4FD74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for WeatherMapAnnotationViewModel();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v73 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_220FC1070();
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v10);
  v70 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SnapshotManager.Snapshot(0);
  MEMORY[0x28223BE20](v12, v13);
  v72 = &v62[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for WeatherMapOverlay();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v62[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v62[-v21];
  v23 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v62[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v62[-v29];
  v31 = *(v3 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationView);
  if (v31)
  {
    v66 = v9;
    v32 = a1 + *(v12 + 40);
    v33 = v31;
    v68 = v32;
    v69 = v33;
    sub_220E54CA4(v30);
    sub_220E55FB8();
    if (qword_2812C5EF8 != -1)
    {
      swift_once();
    }

    v34 = sub_220FC17A0();
    __swift_project_value_buffer(v34, qword_2812C5F00);
    v67 = v22;
    sub_220E55FB8();
    v35 = v72;
    sub_220E55FB8();
    sub_220E55FB8();
    v36 = sub_220FC1780();
    v37 = sub_220FC2E30();
    v38 = v30;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v65 = v3;
      v40 = v39;
      v64 = swift_slowAlloc();
      v75 = v64;
      *v40 = 136446979;
      memcpy(v76, v18 + 16, sizeof(v76));
      memcpy(v74, v18 + 16, sizeof(v74));
      sub_220E56868(v76, v77);
      sub_220E568C4();
      v63 = v37;
      v41 = sub_220FC38F0();
      v42 = v35;
      v44 = v43;
      memcpy(v77, v74, 0xB8uLL);
      sub_220E56918(v77);
      sub_220E55F60(v18, type metadata accessor for WeatherMapOverlay);
      v45 = sub_220E20FF8(v41, v44, &v75);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2082;
      v46 = v42 + *(v12 + 40);
      v74[0] = *(v46 + *(type metadata accessor for SnapshotManager.Options(0) + 40));
      type metadata accessor for UIUserInterfaceStyle(0);
      sub_220E56368(&qword_2812C5C58, type metadata accessor for UIUserInterfaceStyle);
      v47 = sub_220FC38F0();
      v49 = v48;
      sub_220E55F60(v42, type metadata accessor for SnapshotManager.Snapshot);
      v50 = sub_220E20FF8(v47, v49, &v75);

      *(v40 + 14) = v50;
      *(v40 + 22) = 2160;
      *(v40 + 24) = 1752392040;
      *(v40 + 32) = 2081;
      v51 = v70;
      sub_220F05E6C(v70);
      v52 = sub_220FC1040();
      v54 = v53;
      (*(v66 + 8))(v51, v71);
      sub_220E55F60(v26, type metadata accessor for WeatherMapAnnotatedLocationData);
      v55 = sub_220E20FF8(v52, v54, &v75);

      *(v40 + 34) = v55;
      _os_log_impl(&dword_220E15000, v36, v63, "Update annotationView for map embed. overlay=%{public}s, userInterfaceStyle=%{public}s, location=%{private,mask.hash}s", v40, 0x2Au);
      v56 = v64;
      swift_arrayDestroy();
      MEMORY[0x223D9DDF0](v56, -1, -1);
      MEMORY[0x223D9DDF0](v40, -1, -1);
    }

    else
    {

      sub_220E55F60(v26, type metadata accessor for WeatherMapAnnotatedLocationData);
      sub_220E55F60(v35, type metadata accessor for SnapshotManager.Snapshot);
      sub_220E55F60(v18, type metadata accessor for WeatherMapOverlay);
    }

    v57 = type metadata accessor for SnapshotManager.Options(0);
    v58 = v69;
    v59 = *(v68 + *(v57 + 40));
    [v69 setOverrideUserInterfaceStyle_];
    v60 = v73;
    v61 = v67;
    sub_220E54EF0(v38, v67, v59, v73);
    sub_220F86050(v60);

    sub_220E55F60(v61, type metadata accessor for WeatherMapOverlay);
    sub_220E55F60(v38, type metadata accessor for WeatherMapAnnotatedLocationData);
  }

  else
  {

    sub_220E542C8(a1, a2);
  }
}

void sub_220E50484()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_cornerRadius) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView____lazy_storage___showDebugConsole) = 2;
  type metadata accessor for WeatherMapSnapshotView.Status(0);
  swift_storeEnumTagMultiPayload();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView____lazy_storage___snapshotDisplayView) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationView) = 0;
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationViewFractionalCenter;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_debugLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorLabelEffect) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorPlatterView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_unitObserver) = 0;
  v2 = type metadata accessor for SnapshotManager.Snapshot(0);
  OUTLINED_FUNCTION_20_1(v2);
  v3 = sub_220FC0760();
  OUTLINED_FUNCTION_20_1(v3);
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_needsBuild) = 1;
  sub_220FC3740();
  __break(1u);
}

id sub_220E50614()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_unitObserver;
  OUTLINED_FUNCTION_5_1();
  if (*&v1[v3])
  {

    sub_220EC2890();
  }

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id sub_220E50828()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for WeatherMapSnapshotView.Status(0);
  OUTLINED_FUNCTION_2();
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v8, v11);
  v39.receiver = v0;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, sel_layoutSubviews);
  v12 = objc_opt_self();
  [v12 begin];
  [v12 setDisableActions_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [v0 bounds];
    sub_220FC3130();
    [v14 setCenter_];
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    [v15 sizeToFit];
  }

  v17 = [v0 layer];
  OUTLINED_FUNCTION_5_1();
  sub_220E55FB8();
  sub_220E56050();
  v18 = swift_getEnumCaseMultiPayload() != 1;
  sub_220E55F60(v10, type metadata accessor for WeatherMapSnapshotView.Status);
  [v17 setShouldRasterize_];

  sub_220E55FB8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      OUTLINED_FUNCTION_0_12();
      sub_220E55F60(v6, v27);
      v28 = *&v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorPlatterView];
      if (v28)
      {
        v29 = v28;
        OUTLINED_FUNCTION_9_2();
        [v6 setFrame_];
      }

      v30 = *&v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorEffectView];
      if (v30)
      {
        v31 = v30;
        OUTLINED_FUNCTION_9_2();
        [v6 setFrame_];
      }

      v32 = *&v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorLabel];
      if (v32)
      {
        v33 = v32;
        OUTLINED_FUNCTION_9_2();
        v43 = CGRectInset(v42, 16.0, 16.0);
        [v6 setFrame_];
      }
    }

    else
    {
      v20 = *&v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationView];
      if (v20)
      {
        v21 = &v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationViewFractionalCenter];
        if ((v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationViewFractionalCenter + 16] & 1) == 0)
        {
          v22 = *v21;
          v23 = v21[1];
          v24 = v20;
          [v0 bounds];
          v25 = v22 * CGRectGetWidth(v40);
          [v0 bounds];
          [v24 setCenter_];
        }
      }

      OUTLINED_FUNCTION_0_12();
      sub_220E55F60(v6, v26);
    }
  }

  v34 = *&v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_debugLabel];
  if (v34)
  {
    v35 = v34;
    OUTLINED_FUNCTION_9_2();
    [v6 setFrame_];
  }

  return [v12 commit];
}

void sub_220E50C44()
{
  if (v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_needsBuild] == 1)
  {
    v1 = v0;
    v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_needsBuild] = 0;
    v2 = sub_220E4E780();
    [v2 setAutoresizingMask_];

    v3 = OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView____lazy_storage___snapshotDisplayView;
    v4 = *&v1[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView____lazy_storage___snapshotDisplayView];
    [v1 bounds];
    [v4 setFrame_];

    [*&v1[v3] setHidden_];
    [v1 addSubview_];
    if (sub_220E4ED98())
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
      v6 = objc_opt_self();
      v7 = [v6 whiteColor];
      [v5 setTextColor_];

      v8 = v5;
      v9 = [v6 blackColor];
      v10 = [v9 colorWithAlphaComponent_];

      [v8 setBackgroundColor_];
      v11 = [objc_opt_self() systemFontOfSize_];
      [v8 setFont_];

      [v8 setNumberOfLines_];
      [v1 addSubview_];
      v12 = *&v1[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_debugLabel];
      *&v1[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_debugLabel] = v8;
    }

    v13 = [v1 layer];
    v14 = [objc_opt_self() mainScreen];
    [v14 scale];
    v16 = v15;

    [v13 setRasterizationScale_];
    v17 = [objc_opt_self() defaultCenter];
    [v17 addObserver:v1 selector:sel_darkerSystemColorsStatusDidChange_ name:*MEMORY[0x277D76460] object:0];

    [v1 setIsAccessibilityElement_];
    if (qword_2812C7508 != -1)
    {
      swift_once();
    }

    v18 = sub_220EDDB94();

    if (v18)
    {
      v19 = *&v1[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_overlaySonifier + 8];
      ObjectType = swift_getObjectType();
      v21 = (*(v19 + 72))(ObjectType, v19);
      [v1 addGestureRecognizer_];

      v22 = *(v19 + 24);
      v23 = swift_unknownObjectRetain();
      v22(v23, &off_28347D3E0, ObjectType, v19);
      [v1 setUserInteractionEnabled_];
      [v1 setAccessibilityRespondsToUserInteraction_];
    }

    sub_220E51044();
  }
}

void sub_220E51044()
{
  v1 = v0;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v2);
  v104 = &v95 - v3;
  v108 = sub_220FC0950();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v4);
  v112 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_220FC2450();
  v103 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v6);
  v110 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_220FC2F60();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v8);
  v109 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D050);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v10);
  v115 = &v95 - v11;
  v98 = sub_220FC06F0();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v12);
  v96 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220FC05E0();
  v113 = *(v14 - 8);
  v114 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D058);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v95 = &v95 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v95 - v23;
  v118 = sub_220FC0760();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v25);
  v117 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D040);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = &v95 - v29;
  v31 = type metadata accessor for WeatherMapSnapshotView.Status(0);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v34 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v95 - v37;
  v39 = type metadata accessor for SnapshotManager.Options(0);
  MEMORY[0x28223BE20](v39, v40);
  v119 = &v95 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *&v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_overlaySonifier + 8];
  ObjectType = swift_getObjectType();
  v120 = (*(v42 + 40))(ObjectType, v42);
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v44 = qword_2812CE4B0;
  v121 = sub_220FBFF80();
  v46 = v45;

  swift_beginAccess();
  sub_220E55FB8();
  sub_220E4E804(v30);
  sub_220E55F60(v38, type metadata accessor for WeatherMapSnapshotView.Status);
  if (__swift_getEnumTagSinglePayload(v30, 1, v39) != 1)
  {
    v49 = v119;
    sub_220E56050();
    sub_220E55FB8();
    sub_220E4EBCC(v24);
    sub_220E55F60(v34, type metadata accessor for WeatherMapSnapshotView.Status);
    v50 = v118;
    if (__swift_getEnumTagSinglePayload(v24, 1, v118) == 1)
    {
      sub_220E55F60(v49, type metadata accessor for SnapshotManager.Options);
      v47 = &qword_27CF9CEE8;
      v48 = v24;
      goto LABEL_7;
    }

    v73 = v116;
    v74 = v117;
    (*(v116 + 32))(v117, v24, v50);
    v75 = *(v49 + *(v39 + 24));
    switch(v75)
    {
      case 5:
        sub_220FC0700();
        sub_220FC05C0();
        (*(v113 + 8))(v17, v114);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D070);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_220FC8E10;
        v83 = v104;
        sub_220FC0930();
        v84 = v106;
        v85 = sub_220FBFCE0();
        v87 = v86;
        (*(v105 + 8))(v83, v84);
        *(v82 + 32) = v85;
        *(v82 + 40) = v87;
        v88 = v112;
        sub_220FC0910();
        *(v82 + 48) = sub_220FC08E0();
        *(v82 + 56) = v89;
        v122 = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D068);
        sub_220E56234();
        v51 = sub_220FC2670();
        v52 = v90;

        (*(v107 + 8))(v88, v108);
        (*(v73 + 8))(v74, v50);
        break;
      case 4:
        sub_220FC0700();
        sub_220FC0580();
        (*(v113 + 8))(v17, v114);
        sub_220FC2430();
        v78 = v103;
        (*(v103 + 104))(v110, *MEMORY[0x277D7B408], v111);
        sub_220FC0C80();
        sub_220FC0C60();
        sub_220E56368(&qword_27CF9D078, MEMORY[0x277D7B508]);
        v79 = v100;
        v80 = v102;
        v51 = sub_220FBFCB0();
        v52 = v81;

        (*(v78 + 8))(v110, v111);
        (*(v101 + 8))(v109, v80);
        (*(v99 + 8))(v115, v79);
        (*(v73 + 8))(v117, v50);
        break;
      case 3:
        v76 = v95;
        sub_220FC0710();
        v77 = sub_220FC07C0();
        if (__swift_getEnumTagSinglePayload(v76, 1, v77) != 1)
        {
          v51 = sub_220FC0770();
          v52 = v94;
          (*(v73 + 8))(v74, v50);
          sub_220E55F60(v119, type metadata accessor for SnapshotManager.Options);
          (*(*(v77 - 8) + 8))(v76, v77);
          goto LABEL_8;
        }

        (*(v73 + 8))(v74, v50);
        sub_220E55F60(v119, type metadata accessor for SnapshotManager.Options);
        v47 = &qword_27CF9D058;
        v48 = v76;
        goto LABEL_7;
      default:
        sub_220FC0700();
        v92 = v96;
        sub_220FC05D0();
        (*(v113 + 8))(v17, v114);
        v51 = sub_220FC06E0();
        v52 = v93;
        (*(v97 + 8))(v92, v98);
        (*(v73 + 8))(v74, v50);
        v91 = v49;
LABEL_29:
        sub_220E55F60(v91, type metadata accessor for SnapshotManager.Options);
        goto LABEL_8;
    }

    v91 = v119;
    goto LABEL_29;
  }

  v47 = &qword_27CF9D040;
  v48 = v30;
LABEL_7:
  sub_220E3B2DC(v48, v47);
  v51 = 0;
  v52 = 0;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E10;
  *(inited + 32) = v121;
  *(inited + 40) = v46;
  *(inited + 48) = v51;
  *(inited + 56) = v52;

  v54 = 0;
  v55 = MEMORY[0x277D84F90];
LABEL_9:
  v56 = (inited + 40 + 16 * v54);
  while (++v54 != 3)
  {
    v57 = v56 + 2;
    v58 = *v56;
    v56 += 2;
    if (v58)
    {
      v59 = *(v57 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F36F34(0, *(v55 + 16) + 1, 1, v55);
        v55 = v63;
      }

      v61 = *(v55 + 16);
      v60 = *(v55 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_220F36F34(v60 > 1, v61 + 1, 1, v55);
        v55 = v64;
      }

      *(v55 + 16) = v61 + 1;
      v62 = v55 + 16 * v61;
      *(v62 + 32) = v59;
      *(v62 + 40) = v58;
      goto LABEL_9;
    }
  }

  swift_setDeallocating();
  sub_220E56190(&qword_27CF9CFD0);
  v122 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D068);
  sub_220E56234();
  v65 = sub_220FC2670();
  v67 = v66;

  sub_220FB51A4(v65, v67, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D070);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_220FC8E30;
  *(v68 + 32) = v121;
  *(v68 + 40) = v46;
  sub_220E562FC(v68, v1);
  if (v120)
  {
    v69 = qword_2812CE4B0;
    v70 = sub_220FBFF80();
    v72 = v71;

    sub_220E56298(v70, v72, v1);
  }
}

void sub_220E51F80()
{
  v1 = v0;
  v2 = sub_220E4E780();
  sub_220E3B664();

  v3 = OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationView;
  v4 = *(v1 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v4 = *(v1 + v3);
  }

  *(v1 + v3) = 0;
}

void sub_220E51FE4()
{
  sub_220E51F80();
  sub_220E50C44();
  v1 = sub_220E4E780();
  [v1 setHidden_];

  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationView];
  if (v2)
  {
    [v2 setHidden_];
  }

  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorPlatterView];
  if (v3)
  {
    [v3 setHidden_];
  }

  v4 = *&v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorEffectView];
  if (v4)
  {
    [v4 setHidden_];
  }

  if ((DeviceIsSlow() & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [Strong startAnimating];
    }

    else
    {
      v6 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
      [v6 setHidesWhenStopped_];
      v8 = v6;
      [v8 setTranslatesAutoresizingMaskIntoConstraints_];
      [v8 startAnimating];
      v7 = [objc_opt_self() whiteColor];
      [v8 setColor_];

      [v0 bounds];
      sub_220FC3130();
      [v8 setCenter_];

      [v0 addSubview_];
      swift_unknownObjectWeakAssign();
    }
  }
}

void sub_220E521C0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v96) = a3;
  v93 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v91 = &v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v85 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D080);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v92 = &v85 - v15;
  v16 = type metadata accessor for SnapshotManager.Options(0);
  MEMORY[0x28223BE20](v16, v17);
  v97 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SnapshotManager.Snapshot(0);
  v88 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v90 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v85 - v24;
  v89 = v26;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v85 - v29;
  v32 = a1 + *(v31 + 40);
  v98 = v16;
  v33 = *(v16 + 40);
  v94 = v32;
  v34 = *(v32 + v33) == 2;
  v35 = 1802658116;
  if (!v34)
  {
    v35 = 0x746867694CLL;
  }

  v87 = v35;
  if (v34)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  if (qword_2812C5EF8 != -1)
  {
    swift_once();
  }

  v37 = sub_220FC17A0();
  __swift_project_value_buffer(v37, qword_2812C5F00);
  sub_220E55FB8();
  v95 = a1;
  sub_220E55FB8();

  v38 = sub_220FC1780();
  v39 = sub_220FC2E30();

  v40 = os_log_type_enabled(v38, v39);
  v99 = v19;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v85 = v38;
    v42 = v41;
    v86 = swift_slowAlloc();
    v101 = v86;
    *v42 = 136447235;
    v43 = sub_220E20FF8(v87, v36, &v101);

    *(v42 + 4) = v43;
    *(v42 + 12) = 2082;
    v44 = &v30[*(v19 + 40)];
    LODWORD(v87) = v39;
    v45 = v98;
    v100 = v44[v98[6]];
    sub_220E561E0();
    v46 = sub_220FC38F0();
    v48 = v47;
    sub_220E55F60(v30, type metadata accessor for SnapshotManager.Snapshot);
    v49 = sub_220E20FF8(v46, v48, &v101);

    *(v42 + 14) = v49;
    *(v42 + 22) = 1026;
    *(v42 + 24) = v96 & 1;
    *(v42 + 28) = 2160;
    *(v42 + 30) = 1752392040;
    *(v42 + 38) = 2081;
    v50 = v97;
    sub_220E55FB8();
    v51 = v45[5];
    v52 = sub_220FC1040();
    v54 = v53;
    v19 = v99;
    sub_220E55F60(v25, type metadata accessor for SnapshotManager.Snapshot);
    v55 = sub_220FC1070();
    (*(*(v55 - 8) + 8))(&v50[v51], v55);
    v56 = sub_220E20FF8(v52, v54, &v101);

    *(v42 + 40) = v56;
    v57 = v85;
    _os_log_impl(&dword_220E15000, v85, v87, "Process new snapshot. style=%{public}s, options=%{public}s, animated=%{BOOL,public}d, location=%{private,mask.hash}s", v42, 0x30u);
    v58 = v86;
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v58, -1, -1);
    MEMORY[0x223D9DDF0](v42, -1, -1);
  }

  else
  {

    sub_220E55F60(v25, type metadata accessor for SnapshotManager.Snapshot);
    sub_220E55F60(v30, type metadata accessor for SnapshotManager.Snapshot);
  }

  v59 = v95;
  v60 = v92;
  sub_220E55FB8();
  __swift_storeEnumTagSinglePayload(v60, 0, 1, v19);
  swift_beginAccess();
  sub_220E563B0();
  swift_endAccess();
  v61 = sub_220FC0760();
  v62 = *(*(v61 - 8) + 16);
  v63 = v93;
  v62(v12, v93, v61);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v61);
  swift_beginAccess();
  sub_220E563B0();
  swift_endAccess();
  v64 = sub_220E4E780();
  sub_220E3B74C(v59, v96 & 1);

  v62(v12, v63, v61);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v61);
  sub_220E4FD74(v59, v12);
  sub_220E3B2DC(v12, &qword_27CF9CEE8);
  sub_220E535F0();
  sub_220E5373C(v59);
  sub_220E51044();
  if (qword_2812C7508 != -1)
  {
    swift_once();
  }

  v65 = sub_220EDDB94();

  v66 = v94;
  if (v65)
  {
    v67 = *&v4[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_overlaySonifier + 8];
    ObjectType = swift_getObjectType();
    (*(v67 + 48))(*(v66 + v98[11]), ObjectType, v67);
    v69 = sub_220FC2AE0();
    v70 = v91;
    __swift_storeEnumTagSinglePayload(v91, 1, 1, v69);
    sub_220E55FB8();
    sub_220FC2AB0();
    v71 = v4;
    v72 = sub_220FC2AA0();
    v73 = swift_allocObject();
    v74 = MEMORY[0x277D85700];
    v73[2] = v72;
    v73[3] = v74;
    v73[4] = v71;
    sub_220E56050();
    sub_220F9BB1C(0, 0, v70, &unk_220FC9D00, v73);
  }

  v75 = [objc_opt_self() defaultCenter];
  if (qword_27CF9C050 != -1)
  {
    swift_once();
  }

  v96 = qword_27CFAF480;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D088);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E10;
  v101 = 0x6E6F697461636F6CLL;
  v102 = 0xEA00000000004449;
  v77 = MEMORY[0x277D837D0];
  sub_220FC3540();
  v78 = v97;
  sub_220E55FB8();
  v79 = v98[5];
  v80 = sub_220FC1020();
  v82 = v81;
  v83 = sub_220FC1070();
  (*(*(v83 - 8) + 8))(&v78[v79], v83);
  *(inited + 96) = v77;
  *(inited + 72) = v80;
  *(inited + 80) = v82;
  v101 = 0x746F687370616E73;
  v102 = 0xE800000000000000;
  sub_220FC3540();
  *(inited + 168) = v99;
  __swift_allocate_boxed_opaque_existential_1((inited + 144));
  sub_220E55FB8();
  v84 = sub_220FC2600();
  sub_220E56408(v96, 0, v84, v75);
}

void sub_220E52D04()
{
  sub_220E50C44();
  sub_220E52DF4();
  v1 = sub_220E4E780();
  [v1 setHidden_];

  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationView);
  if (v2)
  {
    [v2 setHidden_];
  }

  v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorPlatterView);
  if (v3)
  {
    [v3 setHidden_];
  }

  v4 = *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorEffectView);
  if (v4)
  {
    [v4 setHidden_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong stopAnimating];
  }
}

void sub_220E52DF4()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorPlatterView;
  if (!*&v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorPlatterView])
  {
    v2 = v0;
    v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v4 = [objc_opt_self() blackColor];
    [v3 setBackgroundColor_];

    [v3 setAlpha_];
    v5 = [v3 layer];
    v30 = OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_cornerRadius;
    [v5 setCornerRadius_];

    v6 = [v3 layer];
    v29 = *MEMORY[0x277CDA138];
    [v6 setCornerCurve_];

    v7 = [v3 layer];
    [v7 setMasksToBounds_];

    v8 = *(v2 + v1);
    *(v2 + v1) = v3;
    v9 = v3;

    v32 = v9;
    [v2 addSubview_];
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v10 = qword_2812CE4B0;
    sub_220FBFF80();

    v11 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
    sub_220E1966C(0, &qword_2812C5B50);
    v12 = *MEMORY[0x277D769D0];
    v13 = *MEMORY[0x277D74418];
    v14 = sub_220F6DD88(0xD00000000000001BLL, 0x8000000220FDCF20, *MEMORY[0x277D769D0], -1, *MEMORY[0x277D74418], 0, 0, 2);
    [v11 setImage_];

    v15 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v15 setLineSpacing_];
    sub_220E1966C(0, &qword_2812C5BD8);
    v16 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    sub_220E1966C(0, &qword_27CF9D0A0);
    v17 = sub_220E533F0();
    [v16 appendAttributedString_];

    v18 = sub_220E533F0();
    [v16 appendAttributedString_];

    [v16 addAttribute:*MEMORY[0x277D74118] value:v15 range:{0, 2}];
    v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_newTextureWithDescriptor_];
    [v19 setAttributedText_];
    [v19 setNumberOfLines_];
    sub_220E1966C(0, &qword_2812C5B80);
    v20 = sub_220E417BC(v12, 0x8000u, 0, 1, 0, 0, v13);
    [v19 setFont_];

    [v19 setTextAlignment_];
    v21 = *(v2 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorLabel);
    *(v2 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorLabel) = v19;
    v22 = v19;

    v23 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
    v24 = [v23 layer];
    [v24 setCornerRadius_];

    v25 = [v23 layer];
    [v25 setCornerCurve_];

    v26 = [v23 layer];
    [v26 setMasksToBounds_];

    v27 = [v23 contentView];
    [v27 addSubview_];

    [v2 addSubview_];
    v28 = *(v2 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorEffectView);
    *(v2 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorEffectView) = v23;
    v31 = v23;

    sub_220E53464();
  }
}

id sub_220E533F0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_220FC26C0();

  v2 = [v0 initWithString_];

  return v2;
}

void sub_220E53464()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorEffectView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorLabel);
    if (v2)
    {
      v7 = v1;
      v3 = v2;
      if (UIAccessibilityDarkerSystemColorsEnabled())
      {
        [v7 setEffect_];
        v4 = [objc_opt_self() whiteColor];
        [v3 setTextColor_];
      }

      else
      {
        v5 = [objc_opt_self() effectWithStyle_];
        v6 = [objc_opt_self() effectForBlurEffect:v5 style:2];

        [v7 setEffect_];
        v4 = [objc_opt_self() labelColor];
        [v3 setTextColor_];
      }
    }
  }
}

void sub_220E535F0()
{
  sub_220E50C44();
  v1 = sub_220E4E780();
  [v1 setHidden_];

  v2 = OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationView;
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationView];
  if (v3)
  {
    [v3 setHidden_];
    v4 = *&v0[v2];
    if (v4)
    {
      v5 = v4;
      v6 = [v5 superview];
      [v6 bringSubviewToFront_];

      if (*&v0[v2])
      {
        [v0 bringSubviewToFront_];
      }
    }
  }

  v7 = *&v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorPlatterView];
  if (v7)
  {
    [v7 setHidden_];
  }

  v8 = *&v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorEffectView];
  if (v8)
  {
    [v8 setHidden_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong removeFromSuperview];
  }
}

void sub_220E5373C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WeatherMapSnapshotView.Status(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v35 - v10;
  v12 = *&v1[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_debugLabel];
  if (!v12)
  {
    return;
  }

  v13 = (a1 + *(type metadata accessor for SnapshotManager.Snapshot(0) + 36));
  memcpy(v37, v13 + 2, sizeof(v37));
  v14 = sub_220E435CC(v37);
  sub_220E22B0C(v37);
  switch(v14)
  {
    case 1:
      v22 = v12;
      v18 = 0xE500000000000000;
      v16 = 0x7261646172;
      break;
    case 2:
      v20 = v12;
      v18 = 0xE800000000000000;
      v16 = 0x7473616365726F66;
      break;
    case 3:
      v21 = v12;
      v18 = 0xEB00000000657275;
      v16 = 0x74617265706D6574;
      break;
    case 4:
      v19 = v12;
      v18 = 0xE400000000000000;
      v16 = 1684957559;
      break;
    default:
      v15 = v13[1];
      if (v15 >= 2)
      {
        v23 = *v13;
        strcpy(v38, "airQuality (");
        BYTE13(v38[0]) = 0;
        HIWORD(v38[0]) = -5120;
        v24 = v12;
        MEMORY[0x223D9BD60](v23, v15);
        MEMORY[0x223D9BD60](41, 0xE100000000000000);
        v18 = *(&v38[0] + 1);
        v16 = *&v38[0];
      }

      else
      {
        v16 = 0x696C617551726961;
        v17 = v12;
        v18 = 0xEA00000000007974;
      }

      break;
  }

  v25 = *(a1 + 40);
  v38[0] = *(a1 + 24);
  v38[1] = v25;
  v39 = *(a1 + 56);
  [v2 bounds];
  v28 = sub_220F43DA4(v26, v27) * 100.0;
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    return;
  }

  swift_beginAccess();
  sub_220E55FB8();
  sub_220E4EBCC(v11);
  sub_220E55F60(v7, type metadata accessor for WeatherMapSnapshotView.Status);
  v29 = sub_220FC0760();
  if (__swift_getEnumTagSinglePayload(v11, 1, v29) == 1)
  {
    sub_220E3B2DC(v11, &qword_27CF9CEE8);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    WeatherDataModel.rainExpectation.getter(&v35);
    v34 = v35;
    (*(*(v29 - 8) + 8))(v11, v29);
    v31 = 0xE900000000000072;
    v30 = 0x756F68207478656ELL;
    switch(v34)
    {
      case 1:
        break;
      case 2:
        v31 = 0x8000000220FDCEB0;
        v30 = 0xD000000000000010;
        break;
      case 3:
        v31 = 0xEE007372756F6820;
        v30 = 0x786973207478656ELL;
        break;
      case 4:
        v31 = 0xE400000000000000;
        v30 = 1701736302;
        break;
      case 5:
        v31 = 0xE700000000000000;
        v30 = 0x6E776F6E6B6E75;
        break;
      default:
        v31 = 0xE300000000000000;
        v30 = 7827310;
        break;
    }
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  sub_220FC35C0();
  MEMORY[0x223D9BD60](0x203A6D6F6F5ALL, 0xE600000000000000);
  sub_220FC2BF0();
  MEMORY[0x223D9BD60](0x79616C7265764F0ALL, 0xEA0000000000203ALL);
  MEMORY[0x223D9BD60](v16, v18);

  MEMORY[0x223D9BD60](0x203A6E6961520ALL, 0xE700000000000000);
  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = 4271950;
  }

  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0xE300000000000000;
  }

  MEMORY[0x223D9BD60](v32, v33);

  sub_220F05198(v35, v36, v12);
}

uint64_t sub_220E53C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for SonifierDataState(0);
  v5[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for SonifierDataState.OverlayFrames(0);
  v5[7] = swift_task_alloc();
  sub_220FC2AB0();
  v5[8] = sub_220FC2AA0();
  v7 = sub_220FC2A30();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x2822009F8](sub_220E53DA8, v7, v6);
}

uint64_t sub_220E53DA8()
{
  v1 = (v0[2] + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_overlaySonifier);
  v0[11] = *v1;
  v2 = v1[1];
  v0[12] = v2;
  v0[13] = swift_getObjectType();
  if (((*(v2 + 40))() & 1) != 0 && (v3 = v0[3], v4 = type metadata accessor for SnapshotManager.Snapshot(0), v5 = (v3 + *(v4 + 48)), v6 = v5[1], v0[14] = v6, v6 >> 60 != 15))
  {
    v13 = v4;
    v14 = v0[6];
    v15 = v0[7];
    v16 = v0[5];
    v38 = v0[4];
    v36 = v16;
    v37 = *v5;
    v0[15] = *v5;
    v17 = type metadata accessor for WeatherMapOverlay();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    v18 = v3 + v13[10];
    v19 = (v18 + *(type metadata accessor for SnapshotManager.Options(0) + 36));
    v20 = *v19;
    v21 = v19[1];
    v22 = (v3 + v13[14]);
    v23 = *(v3 + v13[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D098);
    v24 = swift_allocObject();
    v34 = v22[1];
    v35 = *v22;
    *(v24 + 16) = xmmword_220FC8E30;
    *(v24 + 32) = v37;
    *(v24 + 40) = v6;
    sub_220E43574();
    v25 = (v15 + v14[5]);
    *v25 = v20;
    v25[1] = v21;
    v26 = v15 + v14[6];
    *v26 = v35;
    *(v26 + 16) = v34;
    *(v26 + 32) = 0;
    v27 = v15 + v14[7];
    *v27 = v23;
    *(v27 + 8) = 0;
    sub_220E567E8(v37, v6);
    sub_220E567FC(v37, v6);
    MKZoomScaleForZoomLevelF();
    v29 = v28;
    sub_220E3B2DC(v36, &unk_27CF9EB80);
    v30 = v15 + v14[8];
    *v30 = v29;
    *(v30 + 8) = 0;
    *(v15 + v14[9]) = v24;
    sub_220E55FB8();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v14);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
    __swift_storeEnumTagSinglePayload(v38, 0, 3, v31);
    v0[16] = *(v2 + 80);
    v0[17] = (v2 + 80) & 0xFFFFFFFFFFFFLL | 0xFFA4000000000000;
    v9 = sub_220FC2A30();
    v11 = v32;
    v12 = sub_220E540D0;
  }

  else
  {
    v7 = v0[4];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
    __swift_storeEnumTagSinglePayload(v7, 1, 3, v8);
    v0[18] = *(v2 + 80);
    v0[19] = (v2 + 80) & 0xFFFFFFFFFFFFLL | 0xFFA4000000000000;
    v9 = sub_220FC2A30();
    v11 = v10;
    v12 = sub_220E541E8;
  }

  return MEMORY[0x2822009F8](v12, v9, v11);
}

uint64_t sub_220E540D0()
{
  OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_18_1();
  v2(v1);
  OUTLINED_FUNCTION_7_2();
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_220E54138, v3, v4);
}

uint64_t sub_220E54138()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[7];

  sub_220E56854(v2, v1);
  sub_220E55F60(v3, type metadata accessor for SonifierDataState.OverlayFrames);

  v4 = v0[1];

  return v4();
}

uint64_t sub_220E541E8()
{
  OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_18_1();
  v2(v1);
  OUTLINED_FUNCTION_7_2();
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_220E54250, v3, v4);
}

uint64_t sub_220E54250()
{
  OUTLINED_FUNCTION_19();

  v1 = *(v0 + 8);

  return v1();
}

void sub_220E542C8(uint64_t a1, uint64_t a2)
{
  v85 = a2;
  v3 = type metadata accessor for WeatherMapAnnotationViewModel();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v88 = &v79[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v7);
  v93 = &v79[-v8];
  v9 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v84 = &v79[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v13);
  v91 = &v79[-v14];
  v15 = type metadata accessor for SnapshotManager.Snapshot(0);
  v86 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v89 = &v79[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = v17;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v79[-v20];
  v22 = type metadata accessor for SnapshotManager.Options(0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v79[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v79[-v28];
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v79[-v32];
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v79[-v36];
  v82 = a1 + *(v15 + 40);
  v83 = v15;
  sub_220E55FB8();
  if (qword_2812C5EF8 != -1)
  {
    swift_once();
  }

  v38 = sub_220FC17A0();
  __swift_project_value_buffer(v38, qword_2812C5F00);
  sub_220E55FB8();
  sub_220E55FB8();
  sub_220E55FB8();
  v90 = a1;
  sub_220E55FB8();
  v39 = sub_220FC1780();
  v40 = sub_220FC2E30();
  v41 = os_log_type_enabled(v39, v40);
  v94 = v37;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v95 = v81;
    *v42 = 136447491;
    LOBYTE(aBlock) = v33[*(v22 + 24)];
    sub_220E561E0();
    v80 = v40;
    v43 = sub_220FC38F0();
    v45 = v44;
    sub_220E55F60(v33, type metadata accessor for SnapshotManager.Options);
    v46 = sub_220E20FF8(v43, v45, &v95);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2082;
    *&aBlock = *&v29[*(v22 + 40)];
    type metadata accessor for UIUserInterfaceStyle(0);
    sub_220E56368(&qword_2812C5C58, type metadata accessor for UIUserInterfaceStyle);
    v47 = sub_220FC38F0();
    v49 = v48;
    sub_220E55F60(v29, type metadata accessor for SnapshotManager.Options);
    v50 = sub_220E20FF8(v47, v49, &v95);

    *(v42 + 14) = v50;
    *(v42 + 22) = 2160;
    *(v42 + 24) = 1752392040;
    *(v42 + 32) = 2081;
    v51 = sub_220FC1040();
    v53 = v52;
    sub_220E55F60(v25, type metadata accessor for SnapshotManager.Options);
    v54 = sub_220E20FF8(v51, v53, &v95);

    *(v42 + 34) = v54;
    *(v42 + 42) = 2160;
    *(v42 + 44) = 1752392040;
    *(v42 + 52) = 2081;
    v55 = v22;
    aBlock = *v21;
    type metadata accessor for CGPoint(0);
    v56 = sub_220FC2750();
    v58 = v57;
    sub_220E55F60(v21, type metadata accessor for SnapshotManager.Snapshot);
    v59 = sub_220E20FF8(v56, v58, &v95);
    v37 = v94;

    *(v42 + 54) = v59;
    _os_log_impl(&dword_220E15000, v39, v80, "Recreate annotationView for map embed. overlayKind=%{public}s, userInterfaceStyle=%{public}s, location=%{private,mask.hash}s, center=%{private,mask.hash}s", v42, 0x3Eu);
    v60 = v81;
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v60, -1, -1);
    MEMORY[0x223D9DDF0](v42, -1, -1);
  }

  else
  {

    sub_220E55F60(v21, type metadata accessor for SnapshotManager.Snapshot);
    sub_220E55F60(v25, type metadata accessor for SnapshotManager.Options);
    sub_220E55F60(v29, type metadata accessor for SnapshotManager.Options);
    sub_220E55F60(v33, type metadata accessor for SnapshotManager.Options);
    v55 = v22;
  }

  v61 = v92;
  sub_220E54C54();
  v62 = v91;
  sub_220E54CA4(v91);
  v63 = v84;
  sub_220E55FB8();
  LOBYTE(aBlock) = v37[*(v55 + 24)];
  v64 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotation());
  v65 = sub_220FBF76C(v63, &aBlock);
  v66 = v93;
  sub_220E54EF0(v62, v90 + *(v83 + 36), *&v37[*(v55 + 40)], v93);
  v67 = v88;
  sub_220E55FB8();
  v68 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationView());
  v69 = v65;
  v70 = sub_220F86A3C(v69, v67, 1);
  [v70 setOverrideUserInterfaceStyle_];
  [v61 addSubview_];
  v71 = objc_opt_self();
  sub_220E55FB8();
  v72 = (v87 + ((*(v86 + 80) + 24) & ~*(v86 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  *(v73 + 16) = v70;
  sub_220E56050();
  *(v73 + v72) = v61;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_220E56974;
  *(v74 + 24) = v73;
  v99 = sub_220E56A04;
  v100 = v74;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v97 = sub_220EE6934;
  v98 = &block_descriptor_1;
  v75 = _Block_copy(&aBlock);
  v76 = v70;
  v77 = v61;

  [v71 performWithoutAnimation_];
  _Block_release(v75);

  sub_220E55F60(v66, type metadata accessor for WeatherMapAnnotationViewModel);
  sub_220E55F60(v62, type metadata accessor for WeatherMapAnnotatedLocationData);
  sub_220E55F60(v94, type metadata accessor for SnapshotManager.Options);
  LOBYTE(v69) = swift_isEscapingClosureAtFileLocation();

  if (v69)
  {
    __break(1u);
  }

  else
  {
    v78 = *&v77[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationView];
    *&v77[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationView] = v76;
  }
}

void sub_220E54C54()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationView;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationView);
  if (v2)
  {
    [v2 removeFromSuperview];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

uint64_t sub_220E54CA4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v19 - v5;
  v7 = sub_220FC0760();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220E43574();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_220E3B2DC(v6, &qword_27CF9CEE8);
    v12 = *(type metadata accessor for SnapshotManager.Options(0) + 20);
    v13 = sub_220FC1070();
    (*(*(v13 - 8) + 16))(a1, v1 + v12, v13);
  }

  else
  {
    v14 = *(v8 + 32);
    v14(v11, v6, v7);
    v15 = *(type metadata accessor for SnapshotManager.Options(0) + 20);
    v16 = sub_220FC1070();
    (*(*(v16 - 8) + 16))(a1, v1 + v15, v16);
    v17 = type metadata accessor for WeatherMapAnnotatedLocation(0);
    v14((a1 + *(v17 + 20)), v11, v7);
  }

  type metadata accessor for WeatherMapAnnotatedLocationData(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_220E54EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for WeatherMapAnnotationViewModel();
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationViewModelFactory), *(v4 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationViewModelFactory + 24));
  v53 = *(a2 + 200);
  memcpy(v56, (a2 + 16), sizeof(v56));
  sub_220F1505C(v54);
  memcpy(v55, v54, sizeof(v55));
  sub_220F6E0C4(a1, &v53, v55, 0, a3, v13);
  sub_220E31784(v54);
  v14 = *v13;
  v42 = *(v13 + 1);
  v43 = v14;
  v39 = *(v13 + 2);
  LOBYTE(a2) = v13[24];
  v15 = v13[25];
  v48 = v13[26];
  v49 = v15;
  v16 = *(v13 + 4);
  v17 = *(v13 + 5);
  v18 = *(v13 + 7);
  v51 = *(v13 + 6);
  v52 = v16;
  v44 = v18;
  v45 = v17;
  v50 = v13[64];
  sub_220E55FB8();
  v19 = *&v13[v10[12]];
  v40 = *&v13[v10[13]];
  v41 = v19;
  v20 = v10[15];
  v38 = *&v13[v10[14]];
  v21 = *&v13[v20];
  v22 = *&v13[v20 + 8];
  v23 = &v13[v10[16]];
  v24 = *(v23 + 1);
  v46 = *v23;
  v47 = v21;
  v25 = v39;
  sub_220E5696C();

  v41 = v41;
  v40 = v40;
  v26 = v38;
  v27 = v22;

  v28 = v45;

  result = sub_220E55F60(v13, type metadata accessor for WeatherMapAnnotationViewModel);
  v30 = v42;
  *a4 = v43;
  *(a4 + 8) = v30;
  *(a4 + 16) = v25;
  *(a4 + 24) = a2;
  LOBYTE(v30) = v48;
  *(a4 + 25) = v49;
  *(a4 + 26) = v30;
  *(a4 + 27) = 0;
  v31 = v51;
  *(a4 + 32) = v52;
  *(a4 + 40) = v28;
  v32 = v44;
  *(a4 + 48) = v31;
  *(a4 + 56) = v32;
  *(a4 + 64) = v50;
  v33 = v40;
  *(a4 + v10[12]) = v41;
  *(a4 + v10[13]) = v33;
  *(a4 + v10[14]) = v26;
  v34 = (a4 + v10[15]);
  v35 = v46;
  *v34 = v47;
  v34[1] = v27;
  v36 = (a4 + v10[16]);
  *v36 = v35;
  v36[1] = v24;
  return result;
}

id sub_220E55184(void *a1, double *a2, uint64_t a3)
{
  [a1 sizeToFit];
  v6 = *a2;
  v7 = a2[1];
  [a1 setCenter_];
  v8 = a2 + *(type metadata accessor for SnapshotManager.Snapshot(0) + 40);
  v9 = &v8[*(type metadata accessor for SnapshotManager.Options(0) + 36)];
  v10 = v6 / *v9;
  v11 = v7 / v9[1];
  v12 = a3 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationViewFractionalCenter;
  *v12 = v10;
  *(v12 + 8) = v11;
  *(v12 + 16) = 0;

  return [a1 layoutIfNeeded];
}

void sub_220E5536C()
{
  type metadata accessor for WeatherMapSnapshotView.Status(319);
  if (v0 <= 0x3F)
  {
    sub_220E55534(319, qword_2812C7138, type metadata accessor for SnapshotManager.Snapshot);
    if (v1 <= 0x3F)
    {
      sub_220E55534(319, &qword_2812CA260, MEMORY[0x277CE3360]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_220E55534(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_220FC33A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_220E55590()
{
  result = type metadata accessor for WeatherMapSnapshotView.Status.Loaded(319);
  if (v1 <= 0x3F)
  {
    result = sub_220E55624();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_220E55624()
{
  result = qword_2812C5AD8;
  if (!qword_2812C5AD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2812C5AD8);
  }

  return result;
}

uint64_t sub_220E556A8()
{
  result = type metadata accessor for SnapshotManager.SnapshotResult(319);
  if (v1 <= 0x3F)
  {
    result = sub_220FC0760();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_220E5572C()
{
  swift_getObjectType();

  return sub_220FC0A00();
}

uint64_t sub_220E55784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2860](a1, a2, ObjectType, a6);
}

uint64_t sub_220E557EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2870](a1, a2, a3, ObjectType, a7);
}

uint64_t sub_220E5585C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2858](a1, a2, a3, a4, ObjectType, a8);
}

uint64_t sub_220E558DC()
{
  [v0 convertPoint_fromCoordinateSpace_];
  v2 = v1;
  v4 = v3;
  v5 = sub_220E4E780();
  [v5 convertPoint:v0 fromCoordinateSpace:{v2, v4}];
  v7 = v6;
  v9 = v8;

  [*&v0[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView____lazy_storage___snapshotDisplayView] bounds];
  v13.x = v7;
  v13.y = v9;
  v10 = CGRectContainsPoint(v14, v13);
  v11 = v7;
  if (!v10)
  {
    v11 = 0.0;
  }

  return *&v11;
}

uint64_t sub_220E55988@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WeatherMapSnapshotView.Status(0);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D040);
  v9 = OUTLINED_FUNCTION_8_0(v8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v22 - v11;
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_6();
  sub_220E55FB8();
  sub_220E4E804(v12);
  OUTLINED_FUNCTION_0_12();
  sub_220E55F60(v7, v13);
  v14 = type metadata accessor for SnapshotManager.Options(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
  {
    sub_220E3B2DC(v12, &qword_27CF9D040);
    v15 = sub_220FC1070();
    v16 = a1;
    v17 = 1;
  }

  else
  {
    v18 = *(v14 + 20);
    v19 = sub_220FC1070();
    OUTLINED_FUNCTION_2();
    (*(v20 + 16))(a1, &v12[v18], v19);
    sub_220E55F60(v12, type metadata accessor for SnapshotManager.Options);
    v16 = a1;
    v17 = 0;
    v15 = v19;
  }

  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
}

uint64_t sub_220E55B40(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, void), uint64_t a5)
{
  v9 = sub_220FC2390();
  OUTLINED_FUNCTION_6();
  v11 = v10;
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  if (qword_2812C7508 != -1)
  {
    swift_once();
  }

  v17 = sub_220EDDBD8();

  if ((v17 & 1) == 0)
  {
    return a4(a3, 0);
  }

  sub_220E55D80(&v26);
  v18 = v26;
  if (v26 == 4)
  {
    return a4(a3, 0);
  }

  v20 = *(v5 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_mapLocationAccessibilityModelManager + 24);
  v21 = *(v5 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_mapLocationAccessibilityModelManager + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_mapLocationAccessibilityModelManager), v20);
  v25 = v18;
  sub_220FC2370();
  (*(v21 + 8))(a3, &v25, v16, v20, v21);
  (*(v11 + 8))(v16, v9);
  sub_220E1966C(0, &qword_2812C5CA0);
  v22 = sub_220FC2FC0();
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a3;

  v24 = a3;
  sub_220FC1490();
}

uint64_t sub_220E55D80@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for WeatherMapSnapshotView.Status(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D040);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - v8;
  swift_beginAccess();
  sub_220E55FB8();
  sub_220E4E804(v9);
  sub_220E55F60(v5, type metadata accessor for WeatherMapSnapshotView.Status);
  v10 = type metadata accessor for SnapshotManager.Options(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    result = sub_220E3B2DC(v9, &qword_27CF9D040);
    LOBYTE(v12) = 4;
  }

  else
  {
    v13 = v9[*(v10 + 24)];
    result = sub_220E55F60(v9, type metadata accessor for SnapshotManager.Options);
    if (v13 >= 6)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      v12 = 0x30200010101uLL >> (8 * v13);
    }
  }

  *a1 = v12;
  return result;
}

uint64_t sub_220E55F60(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220E55FB8()
{
  OUTLINED_FUNCTION_8_1();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_9();
  v3(v2);
  return v0;
}

uint64_t sub_220E56050()
{
  OUTLINED_FUNCTION_8_1();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_9();
  v3(v2);
  return v0;
}

uint64_t sub_220E560A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapSnapshotView.Status(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E56134()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_220E56190(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v1, 32, 7);
}

unint64_t sub_220E561E0()
{
  result = qword_2812C9ED8;
  if (!qword_2812C9ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9ED8);
  }

  return result;
}

unint64_t sub_220E56234()
{
  result = qword_2812C5D70;
  if (!qword_2812C5D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9D068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5D70);
  }

  return result;
}

void sub_220E56298(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_220FC26C0();

  [a3 setAccessibilityHint_];
}

void sub_220E562FC(uint64_t a1, void *a2)
{
  v3 = sub_220FC2960();

  [a2 setAccessibilityUserInputLabels_];
}

uint64_t sub_220E56368(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220E563B0()
{
  OUTLINED_FUNCTION_8_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_9();
  v3(v2);
  return v0;
}

void sub_220E56408(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_220FC25B0();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t sub_220E564A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  result = a6;
  switch(a21 >> 61)
  {
    case 0uLL:
    case 2uLL:
      goto LABEL_3;
    case 1uLL:
    case 3uLL:
    case 4uLL:

LABEL_3:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220E565AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_220E56604(uint64_t a1)
{
  v4 = type metadata accessor for SnapshotManager.Snapshot(0);
  OUTLINED_FUNCTION_8_0(v4);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_220E566F8;

  return sub_220E53C7C(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_220E566F8()
{
  OUTLINED_FUNCTION_19();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_220E567E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_220E567FC(a1, a2);
  }

  return a1;
}

uint64_t sub_220E567FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_220E56854(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_220E565AC(a1, a2);
  }

  return a1;
}

unint64_t sub_220E568C4()
{
  result = qword_2812C96D8;
  if (!qword_2812C96D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C96D8);
  }

  return result;
}

id sub_220E56974()
{
  v1 = *(type metadata accessor for SnapshotManager.Snapshot(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_220E55184(v3, (v0 + v2), v4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return sub_220E55F60(v0, type metadata accessor for SnapshotManager.Snapshot);
}

uint64_t OUTLINED_FUNCTION_20_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t sub_220E56A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, float a10, double a11)
{
  *(v12 + 168) = v11;
  *(v12 + 36) = a10;
  *(v12 + 152) = a9;
  *(v12 + 160) = a11;
  *(v12 + 136) = a8;
  *(v12 + 144) = v17;
  *(v12 + 120) = a6;
  *(v12 + 128) = a7;
  *(v12 + 104) = a4;
  *(v12 + 112) = a5;
  *(v12 + 88) = a2;
  *(v12 + 96) = a3;
  *(v12 + 80) = a1;
  *(v12 + 176) = *v18;
  *(v12 + 33) = *(v18 + 16);
  OUTLINED_FUNCTION_33();
  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_220E56AF4()
{
  v2 = *(v0 + 96);
  if (object_getClass(v2) == _TtC11WeatherMaps30WindWeatherMapOverlayContainer && v2 != 0)
  {
    v11 = *(v0 + 33);
    *(v0 + 40) = *(v0 + 176);
    *(v0 + 56) = v11;
    swift_unknownObjectRetain();
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *v12 = v0;
    v12[1] = sub_220E57068;
    OUTLINED_FUNCTION_40();

    return sub_220E57DFC(v22, v23, v24, v13, v14, v15, v16, v17, v18, v19, v20);
  }

  v4 = *(v0 + 128);
  v5 = *(v4 + 32);
  *(v0 + 34) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  *(v0 + 240) = 0;
  *(v0 + 248) = 0;

  if (v8)
  {
    v10 = 0;
LABEL_16:
    *(v0 + 256) = v8;
    *(v0 + 264) = v10;
    v27 = *(v0 + 33);
    v28 = *(v0 + 176);
    v29 = *(v0 + 184);
    v76 = *(v0 + 144);
    v77 = *(v0 + 168);
    v75 = *(v0 + 136);
    v30 = *(v0 + 104);
    OUTLINED_FUNCTION_11_3();
    v73 = v31;
    v74 = v32;
    v35 = (v34 + 24 * v33);
    v36 = *v35;
    *(v0 + 272) = *v35;
    v38 = v35[1];
    v37 = v35[2];
    *(v0 + 280) = v37;
    type metadata accessor for SnapshotOverlayComposeRequest();
    type metadata accessor for SnapshotManager.Options(0);
    *(v0 + 16) = v28;
    *(v0 + 24) = v29;
    *(v0 + 32) = v27;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();

    v40 = OUTLINED_FUNCTION_12_2();
    sub_220E5AB38(v41, v36, v38, v37, v75, v76, v42, v77, v40, v43, v44, v45, v46, v47, ObjectType, v30);
    *(v0 + 288) = v48;
    if (v48)
    {
      v49 = swift_task_alloc();
      if ((v73 | (v74 << 32)) < 0)
      {
        *(v0 + 296) = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0B8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
        OUTLINED_FUNCTION_9_3();
        *v49 = v64;
        OUTLINED_FUNCTION_20_2();
      }

      else
      {
        *(v0 + 312) = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0B8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
        OUTLINED_FUNCTION_9_3();
        *v49 = v50;
        OUTLINED_FUNCTION_19_1();
      }

      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_40();

      return MEMORY[0x282200430](v65, v66, v67, v68, v69);
    }

    if (qword_27CF9BFB0 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    v51 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v51, qword_27CF9CB08);
    v52 = sub_220FC1780();
    v53 = sub_220FC2E10();
    v54 = OUTLINED_FUNCTION_21_0(v53);
    v55 = *(v0 + 240);
    if (v54)
    {
      v56 = OUTLINED_FUNCTION_20_0();
      *v56 = 0;
      _os_log_impl(&dword_220E15000, v52, v53, "Could not create render task!", v56, 2u);
      OUTLINED_FUNCTION_15();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v26 = 0;
    while (((63 - v7) >> 6) - 1 != v26)
    {
      v10 = v26 + 1;
      v8 = *(v9 + 8 * v26++ + 72);
      if (v8)
      {
        goto LABEL_16;
      }
    }

    if (qword_27CF9BFB0 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    v57 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v57, qword_27CF9CB08);

    v58 = sub_220FC1780();
    v59 = sub_220FC2E30();

    if (os_log_type_enabled(v58, v59))
    {
      v61 = *(v0 + 80);
      v60 = *(v0 + 88);
      swift_slowAlloc();
      v62 = OUTLINED_FUNCTION_50();
      v78 = v62;
      *v1 = 136446210;
      *(v1 + 4) = sub_220E20FF8(v61, v60, &v78);
      OUTLINED_FUNCTION_52(&dword_220E15000, v63, v59, "Finished rendering tiles. uuid=%{public}s");
      __swift_destroy_boxed_opaque_existential_0(v62);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_15();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_40();

  return v71();
}

uint64_t sub_220E57068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_27_0();
  v11 = v10;
  OUTLINED_FUNCTION_17();
  *v12 = v11;
  v13 = *v5;
  OUTLINED_FUNCTION_8();
  *v14 = v13;
  v11[25] = v4;

  if (!v4)
  {
    v11[26] = a4;
    v11[27] = a3;
    v11[28] = a2;
    v11[29] = a1;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_220E5719C()
{
  OUTLINED_FUNCTION_19();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_23_1();

  return v0();
}

uint64_t sub_220E57200()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220E572FC()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v2 = v0[31];
  swift_unknownObjectRelease();

  v3 = v0[9];
  v5 = v0[32];
  v4 = v0[33];
  v0[31] = v3;
  v6 = (v5 - 1) & v5;
  if (v6)
  {
    v62 = v3;
    goto LABEL_8;
  }

  do
  {
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    v7 = OUTLINED_FUNCTION_48();
    if (v10 == v11)
    {

      if (qword_27CF9BFB0 != -1)
      {
        OUTLINED_FUNCTION_0_13();
      }

      v45 = sub_220FC17A0();
      OUTLINED_FUNCTION_23_0(v45, qword_27CF9CB08);

      v46 = sub_220FC1780();
      v47 = sub_220FC2E30();

      if (os_log_type_enabled(v46, v47))
      {
        swift_slowAlloc();
        v71 = OUTLINED_FUNCTION_50();
        *(v1 + 4) = OUTLINED_FUNCTION_61(4.8751e-34, v71, v48, v49, v50, v51, v52, v53, v54, v59, v60);
        OUTLINED_FUNCTION_52(&dword_220E15000, v55, v47, "Finished rendering tiles. uuid=%{public}s");
        __swift_destroy_boxed_opaque_existential_0(v71);
        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_15();
      }

LABEL_25:
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_18_2();

      __asm { BRAA            X5, X16 }
    }

    v6 = *(v7 + 8 * v9 + 64);
    v4 = v8 + 1;
  }

  while (!v6);
  v62 = v3;
  v4 = v9;
LABEL_8:
  v0[32] = v6;
  v0[33] = v4;
  v70 = v0[21];
  v68 = v0[17];
  v69 = v0[18];
  v67 = v0[13];
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_37(v12);
  type metadata accessor for SnapshotManager.Options(0);
  v13 = OUTLINED_FUNCTION_36();
  swift_unknownObjectRetain();

  v14 = OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_63(v15, v16, v14, v23, v24, v25, v26, v27, v17, v18, v19, v20, v21, v22, v13, v67, v62, v63, v65, v67, v68, v69, v70, (v0 + 2));
  v0[36] = v28;
  if (!v28)
  {
    if (qword_27CF9BFB0 == -1)
    {
LABEL_12:
      v30 = sub_220FC17A0();
      OUTLINED_FUNCTION_23_0(v30, qword_27CF9CB08);
      v31 = sub_220FC1780();
      v32 = sub_220FC2E10();
      v33 = OUTLINED_FUNCTION_21_0(v32);
      v34 = v0[30];
      if (v33)
      {
        *OUTLINED_FUNCTION_20_0() = 0;
        OUTLINED_FUNCTION_59(&dword_220E15000, v35, v36, "Could not create render task!");
        OUTLINED_FUNCTION_15();

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      goto LABEL_25;
    }

LABEL_29:
    OUTLINED_FUNCTION_0_13();
    goto LABEL_12;
  }

  if ((v64 | (v66 << 32)) < 0)
  {
    v37 = swift_task_alloc();
    v0[37] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
    OUTLINED_FUNCTION_9_3();
    *v37 = v38;
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_55();
  }

  else
  {
    v29 = swift_task_alloc();
    v0[39] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
    *v29 = v0;
    v29[1] = sub_220E57744;
  }

  OUTLINED_FUNCTION_18_2();

  return MEMORY[0x282200430](v39, v40, v41, v42, v43);
}

uint64_t sub_220E57744()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220E57840()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v2 = v0[30];
  swift_unknownObjectRelease();

  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v0[30] = v0[8];
  v6 = (v4 - 1) & v4;
  if (v6)
  {
    v62 = v5;
    goto LABEL_8;
  }

  do
  {
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    v7 = OUTLINED_FUNCTION_48();
    if (v10 == v11)
    {

      if (qword_27CF9BFB0 != -1)
      {
        OUTLINED_FUNCTION_0_13();
      }

      v45 = sub_220FC17A0();
      OUTLINED_FUNCTION_23_0(v45, qword_27CF9CB08);

      v46 = sub_220FC1780();
      v47 = sub_220FC2E30();

      if (os_log_type_enabled(v46, v47))
      {
        swift_slowAlloc();
        v71 = OUTLINED_FUNCTION_50();
        *(v1 + 4) = OUTLINED_FUNCTION_61(4.8751e-34, v71, v48, v49, v50, v51, v52, v53, v54, v59, v60);
        OUTLINED_FUNCTION_52(&dword_220E15000, v55, v47, "Finished rendering tiles. uuid=%{public}s");
        __swift_destroy_boxed_opaque_existential_0(v71);
        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_15();
      }

LABEL_25:
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_18_2();

      __asm { BRAA            X5, X16 }
    }

    v6 = *(v7 + 8 * v9 + 64);
    v3 = v8 + 1;
  }

  while (!v6);
  v62 = v5;
  v3 = v9;
LABEL_8:
  v0[32] = v6;
  v0[33] = v3;
  v70 = v0[21];
  v68 = v0[17];
  v69 = v0[18];
  v67 = v0[13];
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_37(v12);
  type metadata accessor for SnapshotManager.Options(0);
  v13 = OUTLINED_FUNCTION_36();
  swift_unknownObjectRetain();

  v14 = OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_63(v15, v16, v14, v23, v24, v25, v26, v27, v17, v18, v19, v20, v21, v22, v13, v67, v62, v63, v65, v67, v68, v69, v70, (v0 + 2));
  v0[36] = v28;
  if (!v28)
  {
    if (qword_27CF9BFB0 == -1)
    {
LABEL_12:
      v31 = sub_220FC17A0();
      OUTLINED_FUNCTION_23_0(v31, qword_27CF9CB08);
      v32 = sub_220FC1780();
      v33 = sub_220FC2E10();
      v34 = OUTLINED_FUNCTION_21_0(v33);
      v35 = v0[30];
      if (v34)
      {
        *OUTLINED_FUNCTION_20_0() = 0;
        OUTLINED_FUNCTION_59(&dword_220E15000, v36, v37, "Could not create render task!");
        OUTLINED_FUNCTION_15();

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      goto LABEL_25;
    }

LABEL_29:
    OUTLINED_FUNCTION_0_13();
    goto LABEL_12;
  }

  if ((v64 | (v66 << 32)) < 0)
  {
    v38 = swift_task_alloc();
    OUTLINED_FUNCTION_56(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
    v0[8] = v0;
    v0[9] = sub_220E57200;
  }

  else
  {
    v29 = swift_task_alloc();
    v0[39] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
    OUTLINED_FUNCTION_9_3();
    *v29 = v30;
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_55();
  }

  OUTLINED_FUNCTION_18_2();

  return MEMORY[0x282200430](v39, v40, v41, v42, v43);
}

uint64_t sub_220E57C88()
{
  OUTLINED_FUNCTION_19();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220E57CE4()
{
  OUTLINED_FUNCTION_64_0();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_32_0();

  return v2();
}

uint64_t sub_220E57D70()
{
  OUTLINED_FUNCTION_64_0();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_32_0();

  return v2();
}

uint64_t sub_220E57DFC(double a1, float a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v12 + 96) = v11;
  *(v12 + 320) = a2;
  *(v12 + 80) = a1;
  *(v12 + 88) = a3;
  *(v12 + 64) = a10;
  *(v12 + 72) = a11;
  *(v12 + 48) = a8;
  *(v12 + 56) = a9;
  *(v12 + 32) = a6;
  *(v12 + 40) = a7;
  v13 = *(type metadata accessor for WeatherMapOverlayTimeConstraints() - 8);
  *(v12 + 104) = v13;
  *(v12 + 112) = *(v13 + 64);
  *(v12 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  *(v12 + 128) = swift_task_alloc();
  *(v12 + 136) = *v16;
  *(v12 + 324) = *(v16 + 16);

  return MEMORY[0x2822009F8](sub_220E57F24, 0, 0);
}

uint64_t sub_220E57F24()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = v1 + *(type metadata accessor for SnapshotOverlayComposeRequest() + 32);
  v4 = type metadata accessor for SnapshotManager.Options(0);
  v5 = (v3 + *(v4 + 36));
  v6 = *v5;
  *(v0 + 152) = *v5;
  v7 = v5[1];
  *(v0 + 160) = v7;
  v8 = *(v3 + *(v4 + 28));
  *(v0 + 168) = v8;
  sub_220EDDD00();
  v9 = OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleSimulator;
  *(v0 + 176) = OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleSimulator;
  if (*(v2 + v9))
  {

    sub_220ED6358();
  }

  v10 = *(v0 + 48);
  v11 = *(v10 + 16);
  if (v11)
  {
    v13 = (v10 + 48);
    v14 = MEMORY[0x277D84F90];
    do
    {
      v15 = *(v13 - 2);
      v16 = *(v13 - 1);
      v17 = *v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F3710C();
        v14 = v20;
      }

      v18 = *(v14 + 16);
      if (v18 >= *(v14 + 24) >> 1)
      {
        sub_220F3710C();
        v14 = v21;
      }

      v13 += 7;
      *(v14 + 16) = v18 + 1;
      v19 = v14 + 32 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      *(v19 + 48) = v17;
      v12 = v8;
      *(v19 + 56) = v12;
      --v11;
    }

    while (v11);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v22 = *(v0 + 80);
  v23 = *(v0 + 72);
  v24 = *(v0 + 56);
  v25 = *(v0 + 32);
  v26 = *(v0 + 40);
  *(v0 + 184) = sub_220E5AA9C(v14);
  sub_220EDE544(0.0, 0.0, v6, v7, v26[1], v26[2], v26[3], v26[4], v8, v8);
  sub_220EDE89C(v23, v22);
  v27 = v24 + 64;
  v28 = -1;
  v29 = -1 << *(v24 + 32);
  if (-v29 < 64)
  {
    v28 = ~(-1 << -v29);
  }

  v30 = v28 & *(v24 + 64);
  v31 = (63 - v29) >> 6;
  v98 = v24;

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
LABEL_15:
  *(v0 + 200) = v38;
  *(v0 + 208) = v39;
  v44 = v43;
  *(v0 + 192) = v37;
  v95 = v37;
  while (1)
  {
    *(v0 + 224) = v41;
    *(v0 + 232) = v42;
    *(v0 + 216) = v40;
    v103 = v41;
    if (!v30)
    {
      break;
    }

    v101 = v40;
    v43 = v44;
LABEL_22:
    v45 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v46 = v45 | (v43 << 6);
    v25 = *(*(v98 + 48) + 16 * v46 + 8) | (*(*(v98 + 48) + 16 * v46 + 12) << 32);
    v47 = (*(v98 + 56) + 24 * v46);
    v40 = *v47;
    v41 = v47[1];
    v39 = v47[2];
    swift_unknownObjectRetain();

    if ((v25 & 0x8000000000000000) == 0)
    {
      v32 = sub_220E5ADB8(v95);
      v37 = v40;
      v38 = v41;
      v40 = v101;
      v41 = v103;
      goto LABEL_15;
    }

    v32 = sub_220E5ADB8(v101);
    v42 = v39;
    v44 = v43;
  }

  while (1)
  {
    v43 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      return MEMORY[0x282200430](v32, v33, v34, v35, v36);
    }

    if (v43 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v43);
    ++v44;
    if (v30)
    {
      v101 = v40;
      goto LABEL_22;
    }
  }

  if (v40)
  {
    v96 = *(v0 + 136);
    v99 = *(v0 + 144);
    v48 = *(v0 + 120);
    v49 = *(v0 + 128);
    v51 = *(v0 + 104);
    v50 = *(v0 + 112);
    v87 = v48;
    v88 = *(v0 + 96);
    v52 = *(v0 + 320);
    v54 = *(v0 + 80);
    v53 = *(v0 + 88);
    v55 = *(v0 + 64);
    v92 = *(v0 + 72);
    v90 = v42;
    v56 = *(v0 + 32);
    v93 = *(v0 + 324);
    v57 = sub_220FC2AE0();
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v57);
    sub_220E5ADF8(v55, v48);
    v58 = (*(v51 + 80) + 112) & ~*(v51 + 80);
    v59 = (v50 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    *(v61 + 32) = v56;
    *(v61 + 40) = &off_283483E58;
    *(v61 + 48) = v88;
    *(v61 + 56) = v6;
    *(v61 + 64) = v7;
    *(v61 + 72) = v8;
    *(v61 + 80) = v52;
    *(v61 + 88) = v40;
    *(v61 + 96) = v103;
    *(v61 + 104) = v90;
    sub_220E5AE74(v87, v61 + v58);
    v62 = (v61 + v59);
    *v62 = v92;
    v62[1] = v54;
    *(v61 + v60) = v53;
    v63 = v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v63 = v96;
    *(v63 + 8) = v99;
    *(v63 + 16) = v93;
    sub_220E5AFD0(v40);

    swift_unknownObjectRetain();

    sub_220E5AFB8(v96, v99, v93);
    sub_220E85B54();
    *(v0 + 240) = v64;
    v65 = swift_task_alloc();
    *(v0 + 248) = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
    OUTLINED_FUNCTION_9_3();
    *v65 = v66;
    v65[1] = sub_220E58664;
LABEL_27:
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_34();

    return MEMORY[0x282200430](v32, v33, v34, v35, v36);
  }

  v68 = 0;
  *(v0 + 264) = 0;
  while (1)
  {
    OUTLINED_FUNCTION_38(v68);
    v25 = *(v25 + v42);
    *(v0 + 280) = v25;
    if (v25)
    {
      break;
    }

    OUTLINED_FUNCTION_42_0();
    if (v69)
    {
      v70 = *(v0 + 192);

      if (!v70)
      {
        OUTLINED_FUNCTION_28_1();
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_53_1();

        OUTLINED_FUNCTION_10_2();
        OUTLINED_FUNCTION_34();

        __asm { BRAA            X5, X16 }
      }

      v91 = *(v0 + 152);
      v97 = *(v0 + 208);
      v100 = *(v0 + 136);
      v102 = *(v0 + 144);
      v72 = *(v0 + 104);
      v71 = *(v0 + 112);
      v73 = *(v0 + 96);
      v89 = *(v0 + 120);
      v74 = *(v0 + 32);
      v94 = *(v0 + 324);
      v75 = sub_220FC2AE0();
      OUTLINED_FUNCTION_30(v75);
      OUTLINED_FUNCTION_7_3();
      v76 = swift_allocObject();
      v76[2] = 0;
      v76[3] = 0;
      v76[4] = v74;
      v76[5] = &off_283483E58;
      v76[6] = v73;
      v77 = OUTLINED_FUNCTION_31(v76, v91);
      *(v77 + 104) = v97;
      sub_220E5AE74(v89, v77 + v72);
      OUTLINED_FUNCTION_26_0((v76 + v71));
      *v78 = v100;
      *(v78 + 8) = v102;
      *(v78 + 16) = v94;

      OUTLINED_FUNCTION_22_1();
      swift_unknownObjectRetain();

      OUTLINED_FUNCTION_4_7();
      sub_220E85B54();
      OUTLINED_FUNCTION_56(v79);
      v80 = swift_task_alloc();
      *(v0 + 304) = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
      OUTLINED_FUNCTION_9_3();
      *v80 = v81;
      OUTLINED_FUNCTION_5_5();
      goto LABEL_27;
    }
  }

  v82 = swift_task_alloc();
  *(v0 + 288) = v82;
  *v82 = v0;
  OUTLINED_FUNCTION_3_9(v82);
  OUTLINED_FUNCTION_34();

  return sub_220ED6388();
}

uint64_t sub_220E58664()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {
    sub_220E5ADB8(*(v3 + 216));
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220E58778()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v3 = v1[29];
  v4 = v1[27];

  swift_unknownObjectRelease();
  v5 = 0;
  v1[33] = v1[3];
  while (1)
  {
    OUTLINED_FUNCTION_38(v5);
    v3 = *(v3 + v4);
    v1[35] = v3;
    if (v3)
    {
      break;
    }

    OUTLINED_FUNCTION_42_0();
    if (v6)
    {
      v7 = v1[24];

      if (!v7)
      {
        OUTLINED_FUNCTION_28_1();
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_53_1();

        OUTLINED_FUNCTION_10_2();
        OUTLINED_FUNCTION_13_0();

        __asm { BRAA            X5, X16 }
      }

      v8 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30(v8);
      OUTLINED_FUNCTION_7_3();
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v7;
      v9[5] = &off_283483E58;
      v9[6] = v0;
      v10 = OUTLINED_FUNCTION_31(v9, v41);
      OUTLINED_FUNCTION_62_0(v10, v11, v12, v13, v14, v15, v16, v17, v33, v35, v37, v39, v41.n128_i64[0], v41.n128_i64[1], v44, v46, v48, v51);
      OUTLINED_FUNCTION_26_0((v9 + v2));
      OUTLINED_FUNCTION_51(v18, v34, v36, v38, v40, v42, v43, v45, v47, v49, v50, v52, v53, v54);

      OUTLINED_FUNCTION_22_1();
      swift_unknownObjectRetain();

      OUTLINED_FUNCTION_4_7();
      sub_220E85B54();
      OUTLINED_FUNCTION_56(v19);
      v20 = swift_task_alloc();
      v1[38] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
      OUTLINED_FUNCTION_9_3();
      *v20 = v21;
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_13_0();

      return MEMORY[0x282200430](v22, v23, v24, v25, v26);
    }
  }

  v28 = swift_task_alloc();
  v1[36] = v28;
  *v28 = v1;
  OUTLINED_FUNCTION_3_9(v28);
  OUTLINED_FUNCTION_13_0();

  return sub_220ED6388();
}

uint64_t sub_220E589A8()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220E58AAC()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  while (1)
  {
    OUTLINED_FUNCTION_42_0();
    if (v6)
    {
      break;
    }

    OUTLINED_FUNCTION_38(v5);
    v1 = *(v1 + v0);
    v3[35] = v1;
    if (v1)
    {

      v7 = swift_task_alloc();
      v3[36] = v7;
      *v7 = v3;
      OUTLINED_FUNCTION_3_9();
      OUTLINED_FUNCTION_13_0();

      return sub_220ED6388();
    }
  }

  v10 = v3[24];

  if (!v10)
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_53_1();

    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_13_0();

    __asm { BRAA            X5, X16 }
  }

  v11 = OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_30(v11);
  OUTLINED_FUNCTION_7_3();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = &off_283483E58;
  v12[6] = v2;
  v13 = OUTLINED_FUNCTION_31(v12, v41);
  OUTLINED_FUNCTION_62_0(v13, v14, v15, v16, v17, v18, v19, v20, v33, v35, v37, v39, v41.n128_i64[0], v41.n128_i64[1], v44, v46, v48, v51);
  OUTLINED_FUNCTION_26_0((v12 + v4));
  OUTLINED_FUNCTION_51(v21, v34, v36, v38, v40, v42, v43, v45, v47, v49, v50, v52, v53, v54);

  OUTLINED_FUNCTION_22_1();
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_4_7();
  sub_220E85B54();
  OUTLINED_FUNCTION_56(v22);
  v23 = swift_task_alloc();
  v3[38] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
  OUTLINED_FUNCTION_9_3();
  *v23 = v24;
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x282200430](v25, v26, v27, v28, v29);
}

uint64_t sub_220E58CB4()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
    sub_220E5ADB8(*(v3 + 192));
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220E58DBC()
{

  swift_unknownObjectRelease();
  v6 = v0[2];
  v1 = v0[27];
  v2 = v0[24];
  sub_220EDEA18();
  sub_220E5ADB8(v2);
  sub_220E5ADB8(v1);

  OUTLINED_FUNCTION_23_1();
  v4 = v0[33];

  return v3(v4, v6, 0, 0xF000000000000000);
}

uint64_t sub_220E58EB4()
{
  sub_220E5ADB8(*(v0 + 192));

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_32_0();

  return v1();
}

uint64_t sub_220E58F4C()
{
  v1 = *(v0 + 264);
  sub_220E5ADB8(*(v0 + 216));

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_32_0();

  return v2();
}

uint64_t sub_220E58FF0(uint64_t a1, double a2, double a3, double a4, float a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 201) = v21;
  *(v14 + 320) = v19;
  *(v14 + 328) = v20;
  *(v14 + 304) = a6;
  *(v14 + 312) = a7;
  *(v14 + 296) = v18;
  *(v14 + 280) = v17;
  *(v14 + 264) = a13;
  *(v14 + 272) = a14;
  *(v14 + 204) = a5;
  *(v14 + 248) = a3;
  *(v14 + 256) = a4;
  *(v14 + 240) = a2;
  *(v14 + 224) = a11;
  *(v14 + 232) = a12;
  *(v14 + 208) = a1;
  *(v14 + 216) = a10;

  return MEMORY[0x2822009F8](sub_220E590C0, 0, 0);
}

uint64_t sub_220E590C0()
{
  v1 = *(v0 + 224);
  ObjectType = swift_getObjectType();
  *(v0 + 336) = ObjectType;
  v3 = *(v1 + 64);
  *(v0 + 344) = v3;
  *(v0 + 352) = (v1 + 64) & 0xFFFFFFFFFFFFLL | 0x5341000000000000;
  v3();
  v4 = *(v0 + 96);
  if (!v4)
  {
    sub_220E5B1D0(v0 + 72);
    if (qword_27CF9BFB0 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    v30 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v30, qword_27CF9CB08);
    v31 = sub_220FC1780();
    v32 = sub_220FC2E10();
    if (OUTLINED_FUNCTION_21_0(v32))
    {
      *OUTLINED_FUNCTION_20_0() = 0;
      OUTLINED_FUNCTION_60(&dword_220E15000, v33, v34, "render: Could not get Metal device!");
      OUTLINED_FUNCTION_15();
    }

    goto LABEL_16;
  }

  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 240);
  v8 = *(v0 + 224);
  v9 = *(*__swift_project_boxed_opaque_existential_1((v0 + 72), v4) + 16);
  *(v0 + 360) = v9;
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  v10 = *(v8 + 56);
  *(v0 + 368) = v10;
  *(v0 + 376) = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xC4D5000000000000;
  v10(ObjectType, v8);
  v12 = v11;

  v13 = sub_220E59A9C(v9, 4, v12, v7, v6, v5);
  *(v0 + 384) = v13;
  if (!v13)
  {
    if (qword_27CF9BFB0 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    v35 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v35, qword_27CF9CB08);
    v31 = sub_220FC1780();
    v36 = sub_220FC2E10();
    if (OUTLINED_FUNCTION_21_0(v36))
    {
      *OUTLINED_FUNCTION_20_0() = 0;
      OUTLINED_FUNCTION_58_0(&dword_220E15000, v37, v38, "render: Could not create output texture!");
      OUTLINED_FUNCTION_15();
    }

    swift_unknownObjectRelease();
LABEL_16:

    v39 = 0;
    goto LABEL_17;
  }

  v14 = *(v0 + 280);
  v15 = *(v14 + 16);
  *(v0 + 392) = v15;
  if (v15)
  {
    *(v0 + 400) = 0;
    OUTLINED_FUNCTION_14_2(v14);

    v16 = swift_task_alloc();
    *(v0 + 448) = v16;
    *v16 = v0;
    OUTLINED_FUNCTION_15_1(v16);
    v18 = OUTLINED_FUNCTION_47(v17);

    return sub_220E59C00(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  }

  v39 = sub_220E5A440(v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_17:
  **(v0 + 208) = v39;
  OUTLINED_FUNCTION_32_0();

  return v40();
}

uint64_t sub_220E59408()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *(v6 + 456) = v5;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220E59540()
{
  v1 = *(v0 + 456);
  if (!v1)
  {
    if (qword_27CF9BFB0 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    v28 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v28, qword_27CF9CB08);
    v29 = sub_220FC1780();
    v30 = sub_220FC2E10();
    if (OUTLINED_FUNCTION_21_0(v30))
    {
      *OUTLINED_FUNCTION_20_0() = 0;
      OUTLINED_FUNCTION_60(&dword_220E15000, v31, v32, "render: Could not render tile texture, skipping tile!");
      OUTLINED_FUNCTION_15();
    }

    goto LABEL_20;
  }

  (*(v0 + 344))(*(v0 + 336), *(v0 + 224));
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = [*(*__swift_project_boxed_opaque_existential_1((v0 + 112) v2) + 24)];
    __swift_destroy_boxed_opaque_existential_0(v0 + 112);
    if (v3)
    {
      v4 = *(v0 + 256);
      v5 = v4 / *(v0 + 204);
      swift_unknownObjectRetain();
      if (v5 == 1.0)
      {
        v6 = *(v0 + 312);
        v59.origin.x = OUTLINED_FUNCTION_6_0();
        if (CGRectGetWidth(v59) == v6)
        {
          v7 = *(v0 + 312);
          v60.origin.x = OUTLINED_FUNCTION_6_0();
          v8 = v1;
          if (CGRectGetHeight(v60) == v7)
          {
            goto LABEL_9;
          }
        }
      }

      v9 = *(v0 + 368);
      v10 = *(v0 + 360);
      v11 = *(v0 + 336);
      v12 = *(v0 + 224);
      v13 = *(v0 + 256);
      v14 = (v13 / *(v0 + 204));
      v61.origin.x = OUTLINED_FUNCTION_6_0();
      v15 = CGRectGetWidth(v61) * v14;
      v62.origin.x = OUTLINED_FUNCTION_6_0();
      v16 = CGRectGetHeight(v62) * v14;
      v9(v11, v12);
      v18 = v17;

      v19 = sub_220E59A9C(v10, 2, v18, v15, v16, 1.0);
      if (v19)
      {
        v8 = v19;
        v20 = *(v0 + 312);
        v21 = *(v0 + 256);
        v22 = (v21 / *(v0 + 204));
        v23 = [objc_allocWithZone(MEMORY[0x277CD7540]) initWithDevice_];
        v63.origin.x = OUTLINED_FUNCTION_6_0();
        v24 = CGRectGetWidth(v63) / v20 * v22;
        v64.origin.x = OUTLINED_FUNCTION_6_0();
        Height = CGRectGetHeight(v64);
        *(v0 + 152) = v24;
        *(v0 + 160) = Height / v20 * v22;
        *(v0 + 168) = 0;
        *(v0 + 176) = 0;
        [v23 setScaleTransform_];
        [v23 setEdgeMode_];
        [v23 encodeToCommandBuffer:v3 sourceTexture:v1 destinationTexture:v8];

        swift_unknownObjectRelease();
LABEL_9:
        v26 = *(v0 + 256);
        v27 = v26;
        sub_220E59EC8(v3, v8, *(v0 + 384), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), v27 / *(v0 + 204), *(v0 + 240), *(v0 + 248), v26);
        [v3 commit];
        [v3 waitUntilCompleted];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_21;
      }

      swift_unknownObjectRelease();
      if (qword_27CF9BFB0 != -1)
      {
        OUTLINED_FUNCTION_0_13();
      }

      v56 = sub_220FC17A0();
      OUTLINED_FUNCTION_23_0(v56, qword_27CF9CB08);
      v29 = sub_220FC1780();
      v57 = sub_220FC2E10();
      if (OUTLINED_FUNCTION_21_0(v57))
      {
        v58 = OUTLINED_FUNCTION_20_0();
        *v58 = 0;
        _os_log_impl(&dword_220E15000, v29, v57, "render: Could not create tile resize texture, skipping tile!", v58, 2u);
        OUTLINED_FUNCTION_15();
      }

      swift_unknownObjectRelease();
      goto LABEL_19;
    }
  }

  else
  {
    sub_220E5B1D0(v0 + 112);
  }

  if (qword_27CF9BFB0 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v33 = sub_220FC17A0();
  OUTLINED_FUNCTION_23_0(v33, qword_27CF9CB08);
  v29 = sub_220FC1780();
  v34 = sub_220FC2E10();
  if (OUTLINED_FUNCTION_21_0(v34))
  {
    *OUTLINED_FUNCTION_20_0() = 0;
    OUTLINED_FUNCTION_58_0(&dword_220E15000, v35, v36, "render: Could not create command buffer, skipping tile!");
    OUTLINED_FUNCTION_15();
  }

LABEL_19:
  swift_unknownObjectRelease();
LABEL_20:

LABEL_21:
  v37 = *(v0 + 400) + 1;
  if (v37 == *(v0 + 392))
  {
    v38 = sub_220E5A440(*(v0 + 384));
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    **(v0 + 208) = v38;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_54();

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 400) = v37;
  OUTLINED_FUNCTION_14_2(*(v0 + 280) + (v37 << 6));

  v41 = swift_task_alloc();
  *(v0 + 448) = v41;
  *v41 = v0;
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_47(v42);
  OUTLINED_FUNCTION_54();

  return sub_220E59C00(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
}

id sub_220E59A9C(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  result = objc_opt_self();
  v13 = a4 * a6;
  if (a4 * a6 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = a5 * a6;
  v15 = COERCE__INT64(fabs(a5 * a6)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE__INT64(fabs(a4 * a6)) > 0x7FEFFFFFFFFFFFFFLL || v15)
  {
    goto LABEL_10;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v14 < 9.22337204e18)
  {
    v16 = [result texture2DDescriptorWithPixelFormat:a3 width:v13 height:v14 mipmapped:0];
    swift_getObjectType();
    [v16 setStorageMode_];
    [v16 setUsage_];
    [v16 setFramebufferOnly_];
    v17 = [a1 newTextureWithDescriptor_];

    return v17;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_220E59C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11)
{
  *(v12 + 104) = v11;
  *(v12 + 88) = a10;
  *(v12 + 96) = a11;
  *(v12 + 80) = a9;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 24) = a1;
  *(v12 + 112) = *a8;
  *(v12 + 144) = *(a8 + 16);
  return MEMORY[0x2822009F8](sub_220E59C48, 0, 0);
}

uint64_t sub_220E59C48()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 24);
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  v12 = *(v0 + 32);
  v13 = vextq_s8(*(v0 + 48), *(v0 + 48), 8uLL);
  *(v11 + 16) = v4;
  *(v11 + 24) = v10;
  *(v11 + 32) = v6;
  *(v11 + 40) = v13;
  *(v11 + 56) = v5;
  *(v11 + 64) = v12;
  *(v11 + 80) = v9;
  *(v11 + 88) = v8;
  *(v11 + 96) = v7;
  *(v11 + 104) = v3;
  *(v11 + 112) = v2;
  *(v11 + 120) = v1;
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0D8);
  *v14 = v0;
  v14[1] = sub_220E59DAC;
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822007B8]();
}

uint64_t sub_220E59DAC()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_220E59EC8(void *a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, float a8, double a9, double a10, double a11)
{
  v12 = a8;
  v13 = a8 * a4;
  if (v13 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_61;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v15 = v12 * a5;
  v16 = COERCE__INT64(fabs(v12 * a5)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE_UNSIGNED_INT64(fabs(a8 * a4)) > 0x7FEFFFFFFFFFFFFFLL || v16)
  {
    goto LABEL_62;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v48 = a8 * a4;
  v20 = a5;
  v23 = CGRectGetWidth(*&a4) * v12;
  if (COERCE__INT64(fabs(v23)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v57.origin.x = a4;
  v57.origin.y = a5;
  v57.size.width = a6;
  v57.size.height = a7;
  v24 = CGRectGetHeight(v57) * v12;
  if (v24 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v25 = a9 * a11;
  if (a9 * a11 <= -9.22337204e18)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v26 = COERCE_UNSIGNED_INT64(fabs(a9 * a11)) > 0x7FEFFFFFFFFFFFFFLL;
  v27 = a10 * a11;
  if (COERCE__INT64(fabs(a10 * a11)) > 0x7FEFFFFFFFFFFFFFLL || v26 || (*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_72;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v28 = v48;
  v29 = v15;
  v30 = v25;
  v31 = v27;
  if (v25 < v48 || v31 < v29)
  {
    if (qword_27CF9BFB0 == -1)
    {
LABEL_25:
      v33 = sub_220FC17A0();
      __swift_project_value_buffer(v33, qword_27CF9CB08);
      osloga = sub_220FC1780();
      v34 = sub_220FC2E10();
      if (!os_log_type_enabled(osloga, v34))
      {
        goto LABEL_57;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "mergePass: Rect out of bounds, skipping!";
LABEL_56:
      _os_log_impl(&dword_220E15000, osloga, v34, v36, v35, 2u);
      MEMORY[0x223D9DDF0](v35, -1, -1);
      goto LABEL_57;
    }

LABEL_75:
    swift_once();
    goto LABEL_25;
  }

  v37 = v23;
  if (v28 < 0)
  {
    v39 = v37 + v28;
    if (__OFADD__(v37, v28))
    {
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v38 = -v28;
    if (__OFSUB__(v37, v39))
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v28 = 0;
    v37 = v39;
  }

  else
  {
    v38 = 0;
  }

  v40 = v24;
  if ((v29 & 0x8000000000000000) == 0)
  {
    v41 = 0;
    goto LABEL_37;
  }

  v42 = v40 + v29;
  if (__OFADD__(v40, v29))
  {
    goto LABEL_82;
  }

  v41 = -v29;
  if (__OFSUB__(v40, v42))
  {
LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
    goto LABEL_54;
  }

  v29 = 0;
  v40 = v42;
LABEL_37:
  if (__OFADD__(v28, v37))
  {
    __break(1u);
    goto LABEL_77;
  }

  if (v28 + v37 > v30)
  {
    v37 = v30 - v28;
    if (__OFSUB__(v30, v28))
    {
      goto LABEL_78;
    }
  }

  if (__OFADD__(v29, v40))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v29 + v40 > v31)
  {
    v40 = v31 - v29;
    if (__OFSUB__(v31, v29))
    {
      goto LABEL_79;
    }
  }

  if (v40 < 1 || v37 <= 0)
  {
    if (qword_27CF9BFB0 == -1)
    {
LABEL_49:
      v44 = sub_220FC17A0();
      __swift_project_value_buffer(v44, qword_27CF9CB08);
      osloga = sub_220FC1780();
      v34 = sub_220FC2E10();
      if (!os_log_type_enabled(osloga, v34))
      {
        goto LABEL_57;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "mergePass: Source size <= 0, skipping!";
      goto LABEL_56;
    }

LABEL_80:
    swift_once();
    goto LABEL_49;
  }

  v45 = [a1 blitCommandEncoder];
  if (v45)
  {
    v46 = v45;
    v55[0] = v38;
    v55[1] = v41;
    v55[2] = 0;
    v54[0] = v37;
    v54[1] = v40;
    v54[2] = 1;
    v53[0] = v28;
    v53[1] = v29;
    v53[2] = 0;
    [v45 copyFromTexture:a2 sourceSlice:0 sourceLevel:0 sourceOrigin:v55 sourceSize:v54 toTexture:a3 destinationSlice:0 destinationLevel:0 destinationOrigin:v53];
    [v46 endEncoding];
    swift_unknownObjectRelease();
    return;
  }

  if (qword_27CF9BFB0 != -1)
  {
    goto LABEL_85;
  }

LABEL_54:
  v47 = sub_220FC17A0();
  __swift_project_value_buffer(v47, qword_27CF9CB08);
  osloga = sub_220FC1780();
  v34 = sub_220FC2E10();
  if (os_log_type_enabled(osloga, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "mergePass: Could not create copy encoder";
    goto LABEL_56;
  }

LABEL_57:
}

CGImageRef sub_220E5A440(void *a1)
{
  v5 = [a1 width];
  v6 = [a1 height];
  if ((v5 - 0x2000000000000000) >> 62 == 3)
  {
    v1 = v6;
    v2 = 4 * v5;
    v3 = v6 * 4 * v5;
    if ((v6 * (4 * v5)) >> 64 == v3 >> 63)
    {
      v7 = sub_220EECE00(0, v3);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_14:
  sub_220E98804();
  v7 = v18;
LABEL_4:
  MTLRegionMake2D(v5, v1, &v19);
  [a1 getBytes:v7 + 32 bytesPerRow:v2 fromRegion:&v19 mipmapLevel:0];
  v8 = [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithBytes:v7 + 32 length:v3];

  v9 = CGDataProviderCreateWithCFData(v8);
  if (v9)
  {
    v10 = v9;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v12 = CGImageCreate(v5, v1, 8uLL, 0x20uLL, v2, DeviceRGB, 1u, v10, 0, 1, kCGRenderingIntentDefault);
  }

  else
  {
    if (qword_27CF9BFB0 != -1)
    {
      swift_once();
    }

    v13 = sub_220FC17A0();
    __swift_project_value_buffer(v13, qword_27CF9CB08);
    v14 = sub_220FC1780();
    v15 = sub_220FC2E10();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_220E15000, v14, v15, "Could not create CGImage from data!", v16, 2u);
      MEMORY[0x223D9DDF0](v16, -1, -1);
    }

    return 0;
  }

  return v12;
}

uint64_t sub_220E5A680(uint64_t a1, double a2, double a3, double a4, uint64_t a5, void *a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15)
{
  v68 = a9;
  v69 = a10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0E0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v56 - v27;
  v29 = sub_220E59A9C(a6, 5, 70, a2, a2, 1.0);
  if (v29 && *(a7 + 16))
  {
    v61 = a15;
    v59 = a1;
    v60 = a14;
    v57 = v23;
    v58 = a13;
    v66 = a11;
    v67 = a12;
    v30 = *(a7 + 32);
    v32 = *(v30 + 16);
    v31 = *(v30 + 24);
    v33 = *(v30 + 32);
    v34 = *(v30 + 40);
    v35 = objc_allocWithZone(type metadata accessor for OverlayTile());

    v36 = sub_220E5E748(v32, v31, v33, a7, v34);
    v38 = *a8;
    v37 = a8[1];
    v62 = v36;
    v63 = v37;
    v39 = a8[2];
    v64 = v38;
    v65 = v39;
    ObjectType = swift_getObjectType();
    (*(v69 + 8))(ObjectType);
    v42 = v41;
    v43 = swift_getObjectType();
    v70[0] = v58;
    v70[1] = v60;
    v71 = v61;
    v44 = v57;
    (*(v24 + 16))(v28, v59, v57);
    v45 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v46 = (v25 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    (*(v24 + 32))(v47 + v45, v28, v44);
    *(v47 + v46) = v29;
    v48 = *(v42 + 64);
    swift_unknownObjectRetain();
    v55 = v42;
    v49 = v62;
    v48(v64, v63, v65, v62, v29, 1, v66, v67, a3, 0.5, a4, v70, sub_220E5B29C, v47, v43, v55);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27CF9BFB0 != -1)
    {
      swift_once();
    }

    v50 = sub_220FC17A0();
    __swift_project_value_buffer(v50, qword_27CF9CB08);
    v51 = sub_220FC1780();
    v52 = sub_220FC2E10();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_220E15000, v51, v52, "renderTile: Could not create tile texture!", v53, 2u);
      MEMORY[0x223D9DDF0](v53, -1, -1);
    }

    v70[0] = 0;
    sub_220FC2A50();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_220E5AA24()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0E0);
  return sub_220FC2A50();
}

uint64_t sub_220E5AA9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_220E304BC();
  v4 = MEMORY[0x223D9C180](v2, &type metadata for WeatherMapTilePath, v3);
  v14 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v6 += 8;
      sub_220E49F2C(v13, v7, v8, v9, v10);
      --v5;
    }

    while (v5);

    return v14;
  }

  else
  {
    v11 = v4;
  }

  return v11;
}

void sub_220E5AB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, float a11, double a12, double a13, double a14, uint64_t a15, uint64_t a16)
{
  v55 = a4;
  v56 = a6;
  v53 = a16;
  v54 = a3;
  v27 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27 - 8, v30);
  v31 = &v48[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v35 = &v48[-v34];
  v36 = *(a7 + 8);
  v51 = *a7;
  v52 = v35;
  v50 = v36;
  v49 = *(a7 + 16);
  v37 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v37);
  sub_220E5ADF8(a5, v31);
  v38 = (*(v28 + 80) + 112) & ~*(v28 + 80);
  v39 = (v29 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  v43 = v53;
  v42 = v54;
  *(v41 + 32) = a1;
  *(v41 + 40) = v43;
  *(v41 + 48) = a8;
  *(v41 + 56) = a13;
  *(v41 + 64) = a14;
  *(v41 + 72) = a12;
  *(v41 + 80) = a11;
  *(v41 + 88) = a2;
  *(v41 + 96) = v42;
  *(v41 + 104) = v55;
  sub_220E5AE74(v31, v41 + v38);
  v44 = v41 + v39;
  *v44 = v56;
  *(v44 + 8) = a9;
  *(v41 + v40) = a10;
  v45 = v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  v47 = v50;
  v46 = v51;
  *v45 = v51;
  *(v45 + 8) = v47;
  LOBYTE(v31) = v49;
  *(v45 + 16) = v49;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  sub_220E5AFB8(v46, v47, v31);
  sub_220E85B54();
}

uint64_t sub_220E5ADB8(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220E5ADF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E5AE5C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_220E5AE74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E5AED8()
{
  OUTLINED_FUNCTION_35_2();
  v0 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  OUTLINED_FUNCTION_29(v0);
  OUTLINED_FUNCTION_1_13();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_2_9(v2);
  OUTLINED_FUNCTION_25_2();

  return sub_220E58FF0(v4, v12, v13, v14, v15, v16, v17, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_220E5AFB8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_220E5AFD0(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_220E5B010()
{
  OUTLINED_FUNCTION_35_2();
  v0 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  OUTLINED_FUNCTION_29(v0);
  OUTLINED_FUNCTION_1_13();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_2_9(v2);
  OUTLINED_FUNCTION_25_2();

  return sub_220E58FF0(v4, v12, v13, v14, v15, v16, v17, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_220E5B0F0()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_32_0();

  return v3();
}

uint64_t sub_220E5B1D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MTLRegionMake2D@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = a2;
  a3[5] = 1;
  return result;
}

uint64_t sub_220E5B29C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0E0);
  OUTLINED_FUNCTION_29(v0);

  return sub_220E5AA24();
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for WeatherMapOverlayTimeConstraints() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 112) & ~v2;
  v4 = (((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = sub_220FC02B0();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v7(v5 + v1[7], v6);
  sub_220E5AE5C(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  return MEMORY[0x2821FE8E8](v0, v4 + 17, v2 | 7);
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return sub_220FC2AE0();
}

uint64_t OUTLINED_FUNCTION_22_1()
{
  sub_220E5AFB8(v1, v0, v2);

  return sub_220E5AFD0(v3);
}

void OUTLINED_FUNCTION_26_0(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v5;
  *(v2 + v3) = v4;
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return sub_220EDEA18();
}

uint64_t OUTLINED_FUNCTION_31(uint64_t result, __n128 a2)
{
  *(result + 56) = a2;
  *(result + 72) = v4;
  *(result + 80) = v5;
  *(result + 88) = v3;
  *(result + 96) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_36()
{
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_37@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + 24 * a1);
  *(v2 + 272) = *v4;
  *(v2 + 280) = v4[2];

  return type metadata accessor for SnapshotOverlayComposeRequest();
}

uint64_t OUTLINED_FUNCTION_38@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 272) = a1;
  v3 = *(v1 + 184);
  v4 = *(v3 + 16);

  return sub_220EDE9A0(v3, v4);
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return sub_220E5ADB8(v0);
}

uint64_t OUTLINED_FUNCTION_51@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a1 = a13;
  *(a1 + 8) = a14;
  *(a1 + 16) = a11;
}

void OUTLINED_FUNCTION_52(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return sub_220E5ADB8(v0);
}

void OUTLINED_FUNCTION_58_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_59(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void OUTLINED_FUNCTION_60(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

unint64_t OUTLINED_FUNCTION_61(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  *v13 = a1;

  return sub_220E20FF8(v12, v11, va);
}

uint64_t OUTLINED_FUNCTION_62_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(a1 + 104) = a18;

  return sub_220E5AE74(a12, a1 + v18);
}

void OUTLINED_FUNCTION_63(uint64_t a1, uint64_t a2, double a3, double a4, float a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  sub_220E5AB38(a1, a2, v24, v25, a11, a22, a24, a23, a3, a4, a5, a6, a7, a8, a15, a16);
}

uint64_t OUTLINED_FUNCTION_64_0()
{
}

id sub_220E5B95C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11WeatherMaps22ContextMenuInteraction_weatherDataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC11WeatherMaps22ContextMenuInteraction_weatherDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC11WeatherMaps22ContextMenuInteraction_strongDelegate] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_initWithDelegate_, a1);
}

_BYTE *storeEnumTagSinglePayload for MapScrubberOverlayViewModel.Labels.Precision(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_220E5BBB0()
{
  result = type metadata accessor for MapScrubberOverlayViewModel.Active(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11WeatherMaps27MapScrubberOverlayViewModelO10AffordanceVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_220E5BC64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_220E5BCB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_220E5BD68()
{
  sub_220E5C078(319, &qword_27CF9D188, &type metadata for MapScrubberOverlayViewModel.Affordance, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_220E5BE7C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MapScrubberOverlayViewModel.Labels(319);
      if (v2 <= 0x3F)
      {
        sub_220E5C078(319, &qword_27CF9D198, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220E5BE7C()
{
  if (!qword_27CF9D190)
  {
    sub_220FC02B0();
    sub_220E5D520(&qword_2812CA290, MEMORY[0x277CC9578]);
    v0 = sub_220FC2D30();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF9D190);
    }
  }
}

uint64_t sub_220E5BF10(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_220E5BF50(uint64_t result, int a2, int a3)
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

void sub_220E5BFC8()
{
  sub_220FC02B0();
  if (v0 <= 0x3F)
  {
    sub_220E5C078(319, &qword_27CF9D1B0, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220E5C078(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_220E5C0CC()
{
  result = qword_27CF9D1B8;
  if (!qword_27CF9D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9D1B8);
  }

  return result;
}

uint64_t sub_220E5C120()
{
  v1 = v0;
  type metadata accessor for MapScrubberOverlayViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = type metadata accessor for MapScrubberOverlayViewModel.Active(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_0_14();
  sub_220E5D608(v1, v6, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_7_4();
    return 0;
  }

  else
  {
    sub_220E3AF84(v6, v12);
    v14 = *(v12 + *(v7 + 36));
    OUTLINED_FUNCTION_1_14();
    sub_220E5D668(v12, v15);
  }

  return v14;
}

uint64_t sub_220E5C230@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MapScrubberOverlayViewModel.Labels(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  type metadata accessor for MapScrubberOverlayViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  type metadata accessor for MapScrubberOverlayViewModel.Active(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_0_14();
  sub_220E5D608(v2, v13, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220E5D668(v13, type metadata accessor for MapScrubberOverlayViewModel);
    v20 = sub_220FC02B0();
    v21 = a1;
    v22 = 1;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_13_1();
    sub_220E3AF84(v23, v24);
    OUTLINED_FUNCTION_6_4();
    sub_220E5D608(v18 + v25, v8, v26);
    OUTLINED_FUNCTION_1_14();
    sub_220E5D668(v18, v27);
    v28 = sub_220FC02B0();
    OUTLINED_FUNCTION_2();
    (*(v29 + 16))(a1, v8, v28);
    sub_220E5D668(v8, type metadata accessor for MapScrubberOverlayViewModel.Labels);
    v21 = a1;
    v22 = 0;
    v20 = v28;
  }

  return __swift_storeEnumTagSinglePayload(v21, v22, 1, v20);
}

uint64_t sub_220E5C410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapScrubberOverlayViewModel.Active(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  type metadata accessor for MapScrubberOverlayViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9, v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D1D8);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = v40 - v19;
  v22 = v40 + *(v21 + 56) - v19;
  sub_220E5D608(a1, v40 - v19, type metadata accessor for MapScrubberOverlayViewModel);
  sub_220E5D608(a2, v22, type metadata accessor for MapScrubberOverlayViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_14();
    sub_220E5D608(v20, v12, v23);
    v25 = *v12;
    v24 = *(v12 + 1);
    v27 = *(v12 + 2);
    v26 = *(v12 + 3);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v12[32];
      v29 = *v22;
      v30 = *(v22 + 1);
      v32 = *(v22 + 2);
      v31 = *(v22 + 3);
      v33 = v22[32];
      v42[0] = v25;
      v42[1] = v24;
      v42[2] = v27;
      v42[3] = v26;
      v43 = v28;
      v40[0] = v29;
      v40[1] = v30;
      v40[2] = v32;
      v40[3] = v31;
      v41 = v33;
      v34 = sub_220E5C988(v42, v40);
      sub_220E3B0C4(v29, v30);
      OUTLINED_FUNCTION_14_3();
LABEL_9:
      OUTLINED_FUNCTION_7_4();
      return v34 & 1;
    }

    OUTLINED_FUNCTION_14_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_220E5D608(v20, v16, v35);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_220E3AF84(v22, v8);
      v34 = sub_220E5C6B0(v16, v8);
      sub_220E5D668(v8, type metadata accessor for MapScrubberOverlayViewModel.Active);
      v37 = OUTLINED_FUNCTION_13_1();
      sub_220E5D668(v37, v38);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_14();
    sub_220E5D668(v16, v36);
  }

  sub_220E5D6C0(v20);
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_220E5C6B0(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if (!*(a1 + 8))
  {
    if (!v4)
    {
      goto LABEL_7;
    }

LABEL_6:
    v18 = OUTLINED_FUNCTION_9_4();
    sub_220E3B040(v18, v19);
    v20 = OUTLINED_FUNCTION_4_8();
    sub_220E3B040(v20, v21);
    v22 = OUTLINED_FUNCTION_4_8();
    sub_220E3B0C4(v22, v23);
    v24 = OUTLINED_FUNCTION_9_4();
    sub_220E3B0C4(v24, v25);
    return 0;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  v8 = OUTLINED_FUNCTION_4_8();
  v37 = sub_220E5C8EC(v8, v9, v10, v11, v5, v4, v7, v6);
  v12 = OUTLINED_FUNCTION_9_4();
  sub_220E3B040(v12, v13);
  v14 = OUTLINED_FUNCTION_4_8();
  sub_220E3B040(v14, v15);

  v16 = OUTLINED_FUNCTION_4_8();
  sub_220E3B0C4(v16, v17);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v26 = type metadata accessor for MapScrubberOverlayViewModel.Active(0);
  sub_220FC02B0();
  sub_220E5D520(&qword_27CF9D1E0, MEMORY[0x277CC9578]);
  if ((sub_220FC26B0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD18);
  if ((sub_220FC26B0() & 1) == 0 || (sub_220E5CAD4(a1 + v26[6], a2 + v26[6]) & 1) == 0 || *(a1 + v26[7]) != *(a2 + v26[7]))
  {
    return 0;
  }

  v27 = v26[8];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  switch(v28)
  {
    case 5:
      if (v29 != 5)
      {
        return 0;
      }

      break;
    case 4:
      if (v29 != 4)
      {
        return 0;
      }

      break;
    case 3:
      if (v29 != 3)
      {
        return 0;
      }

      break;
    default:
      if (v28 != v29 || (v29 - 6) >= 0xFFFFFFFD)
      {
        return 0;
      }

      break;
  }

  v31 = v26[9];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      v35 = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_220E5C8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_220FC3940(), result = 0, (v13 & 1) != 0))
  {
    if (a4)
    {
      if (a8)
      {
        v15 = a3 == a7 && a4 == a8;
        if (v15 || (sub_220FC3940() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL sub_220E5C988(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = *a2;
  v3 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (!*(a1 + 8))
  {
    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_6:
    v20 = OUTLINED_FUNCTION_8_4();
    sub_220E3B040(v20, v21);
    v22 = OUTLINED_FUNCTION_5_6();
    sub_220E3B040(v22, v23);
    v24 = OUTLINED_FUNCTION_5_6();
    sub_220E3B0C4(v24, v25);
    v26 = OUTLINED_FUNCTION_8_4();
    sub_220E3B0C4(v26, v27);
    return 0;
  }

  if (!v3)
  {
    goto LABEL_6;
  }

  v8 = OUTLINED_FUNCTION_5_6();
  v30 = v9;
  v13 = sub_220E5C8EC(v8, v10, v11, v12, v4, v3, v6, v5);
  v14 = OUTLINED_FUNCTION_8_4();
  sub_220E3B040(v14, v15);
  v16 = OUTLINED_FUNCTION_5_6();
  sub_220E3B040(v16, v17);

  v18 = OUTLINED_FUNCTION_5_6();
  sub_220E3B0C4(v18, v19);
  v7 = v30;
  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if (v2 != 6)
  {
    if (v7 != 6)
    {
      switch(v2)
      {
        case 5:
          if (v7 == 5)
          {
            return 1;
          }

          break;
        case 4:
          if (v7 == 4)
          {
            return 1;
          }

          break;
        case 3:
          if (v7 == 3)
          {
            return 1;
          }

          break;
        default:
          if ((v7 - 6) <= 0xFFFFFFFC && v2 == v7)
          {
            return 1;
          }

          break;
      }
    }

    return 0;
  }

  return v7 == 6;
}

uint64_t sub_220E5CAD4(uint64_t a1, uint64_t a2)
{
  if (sub_220FC0240())
  {
    v4 = type metadata accessor for MapScrubberOverlayViewModel.Labels(0);
    if (sub_220F34EA4(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))))
    {
      v5 = *(v4 + 24);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);
      if (v6 == 1)
      {
        if (v7)
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_220E5CB7C(char a1, char a2)
{
  if (a1)
  {
    if (a2)
    {
      return 1;
    }
  }

  else if ((a2 & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_220E5CBA4@<X0>(uint64_t *a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for MapScrubberOverlayViewModel.Active(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  type metadata accessor for MapScrubberOverlayViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_3();
  v12 = (v11 - v10);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D1E8);
  v13 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v14);
  v16 = &v45 - v15;
  OUTLINED_FUNCTION_0_14();
  sub_220E5D608(v1, v12, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v12;
    v18 = v12[1];
    v20 = v12[2];
    v21 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220FC8E10;
    *(inited + 32) = 1701869940;
    *(inited + 40) = 0xE400000000000000;
    v23 = MEMORY[0x277D837D0];
    v24 = OUTLINED_FUNCTION_12_3(inited, 0x6576697463616E69);
    v24[9] = v23;
    v24[10] = v25;
    v24[11] = 0xEA00000000006563;
    if (v18 && (sub_220E5D030(v19, v18, v20, v21, v47), , , v26 = v48, v27 = __swift_project_boxed_opaque_existential_1(v47, v48), v50 = v26, boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v49), (*(*(v26 - 8) + 16))(boxed_opaque_existential_1Tm, v27, v26), __swift_destroy_boxed_opaque_existential_0(v47), v50))
    {
      sub_220E5D784(&v49, (inited + 96));
    }

    else
    {
      *(inited + 120) = v23;
      *(inited + 96) = 0;
      *(inited + 104) = 0xE000000000000000;
    }

    sub_220FC2600();
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    sub_220E3AF84(v12, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_220FC9EF0;
    *(v29 + 32) = 1701869940;
    *(v29 + 40) = 0xE400000000000000;
    v30 = MEMORY[0x277D837D0];
    v31 = OUTLINED_FUNCTION_12_3(v29, 0x657669746361);
    v31[9] = v30;
    v31[10] = v32;
    v31[11] = 0xEA00000000006563;
    v33 = v7[1];
    if (v33 && (sub_220E5D030(*v7, v33, v7[2], v7[3], v47), v34 = v48, v35 = __swift_project_boxed_opaque_existential_1(v47, v48), v50 = v34, v36 = __swift_allocate_boxed_opaque_existential_1Tm(&v49), (*(*(v34 - 8) + 16))(v36, v35, v34), __swift_destroy_boxed_opaque_existential_0(v47), v50))
    {
      sub_220E5D784(&v49, (v29 + 96));
    }

    else
    {
      *(v29 + 120) = v30;
      *(v29 + 96) = 0;
      *(v29 + 104) = 0xE000000000000000;
    }

    *(v29 + 128) = 0x736C6562616CLL;
    *(v29 + 136) = 0xE600000000000000;
    v37 = *(v2 + 24);
    *(v29 + 168) = type metadata accessor for MapScrubberOverlayViewModel.Labels(0);
    __swift_allocate_boxed_opaque_existential_1Tm((v29 + 144));
    OUTLINED_FUNCTION_6_4();
    sub_220E5D608(v7 + v37, v38, v39);
    sub_220FC2600();
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_1_14();
    sub_220E5D668(v7, v40);
  }

  v42 = v45;
  v41 = v46;
  v46[3] = v45;
  v41[4] = sub_220E5D7E8(&qword_27CF9D1F0, &qword_27CF9D1E8);
  v43 = __swift_allocate_boxed_opaque_existential_1Tm(v41);
  return (*(v13 + 32))(v43, v16, v42);
}

uint64_t sub_220E5D030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E10;
  v11 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v11;
  *(inited + 80) = 0x656C746974627573;
  *(inited + 120) = v11;
  if (a4)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0xE000000000000000;
  if (a4)
  {
    v13 = a4;
  }

  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v12;
  *(inited + 104) = v13;

  sub_220FC2600();
  a5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D1F8);
  a5[4] = sub_220E5D7E8(&qword_27CF9D200, &qword_27CF9D1F8);
  __swift_allocate_boxed_opaque_existential_1Tm(a5);
  return sub_220FC12A0();
}

uint64_t sub_220E5D1A4()
{
  sub_220E5D520(&qword_27CF9D208, type metadata accessor for MapScrubberOverlayViewModel);

  return sub_220FC1290();
}

uint64_t sub_220E5D21C()
{
  sub_220E5D794();

  return sub_220FC1290();
}

uint64_t sub_220E5D258@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MapScrubberOverlayViewModel.Labels(0);
  v5 = v4;
  if (*(v2 + *(v4 + 24)))
  {
    v6 = 0x796C72756F68;
  }

  else
  {
    v6 = 0x74756E694D726570;
  }

  if (*(v2 + *(v4 + 24)))
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC9EF0;
  *(inited + 32) = 7827310;
  *(inited + 40) = 0xE300000000000000;
  v9 = sub_220FC02B0();
  *(inited + 72) = v9;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1Tm, v2, v9);
  strcpy((inited + 80), "labelOffsets");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v11 = *(v2 + *(v5 + 20));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D218);
  *(inited + 96) = v11;
  *(inited + 120) = v12;
  *(inited + 128) = 0x6F69736963657270;
  *(inited + 168) = MEMORY[0x277D837D0];
  *(inited + 136) = 0xE90000000000006ELL;
  *(inited + 144) = v6;
  *(inited + 152) = v7;

  OUTLINED_FUNCTION_13_1();
  sub_220FC2600();
  v13 = OUTLINED_FUNCTION_13_1();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v13);
  a1[4] = sub_220E5D7E8(&qword_27CF9D228, &qword_27CF9D220);
  __swift_allocate_boxed_opaque_existential_1Tm(a1);
  return sub_220FC12A0();
}

uint64_t sub_220E5D46C()
{
  sub_220E5D520(&qword_27CF9D230, type metadata accessor for MapScrubberOverlayViewModel.Labels);

  return sub_220FC1290();
}

uint64_t sub_220E5D520(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_220E5D56C()
{
  result = qword_27CF9D1C8;
  if (!qword_27CF9D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9D1C8);
  }

  return result;
}

uint64_t sub_220E5D608(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220E5D668(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220E5D6C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D1D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  OUTLINED_FUNCTION_11_0();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

_OWORD *sub_220E5D784(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_220E5D794()
{
  result = qword_27CF9D210;
  if (!qword_27CF9D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9D210);
  }

  return result;
}

uint64_t sub_220E5D7E8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220E5D878(char a1)
{
  result = 0x735F726566667562;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x74735F6567616D69;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x5F3878385F78746BLL;
      break;
    default:
      result = 1635017060;
      break;
  }

  return result;
}

uint64_t sub_220E5D978()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  *(v1 + 72) = v4;
  *(v1 + 80) = v0;
  *(v1 + 36) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  *(v1 + 40) = v8;
  *(v1 + 48) = v9;
  v10 = sub_220FC0470();
  *(v1 + 88) = v10;
  *(v1 + 96) = *(v10 - 8);
  *(v1 + 104) = swift_task_alloc();
  v11 = sub_220FC02B0();
  *(v1 + 112) = v11;
  *(v1 + 120) = *(v11 - 8);
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = *v3;
  *(v1 + 33) = *(v3 + 16);

  return MEMORY[0x2822009F8](sub_220E5DAB0, 0, 0);
}

uint64_t sub_220E5DAB0()
{
  v1 = *(v0 + 33);
  v2 = *(*(v0 + 80) + 32);
  *(v0 + 16) = *(v0 + 136);
  *(v0 + 32) = v1;
  v10 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_220E5DBC8;
  v4.n128_u32[0] = *(v0 + 36);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);

  return v10(v8, v7, v5, v0 + 16, v6, v4);
}

uint64_t sub_220E5DBC8(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_17();
  *v7 = v6;
  v4[20] = a1;
  v4[21] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_220E5E294, 0, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[22] = v8;
    *v8 = v6;
    v8[1] = sub_220E5DD48;

    return sub_220F92008();
  }
}

uint64_t sub_220E5DD48()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;
  *(v2 + 192) = v5;
  *(v2 + 34) = v6;
  *(v2 + 200) = v0;

  if (v0)
  {
    v7 = sub_220E5E224;
  }

  else
  {
    v7 = sub_220E5DE5C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_220E5DE5C()
{
  v46 = v0;
  if (qword_27CF9BFA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = sub_220FC17A0();
  __swift_project_value_buffer(v3, qword_27CF9CAF0);
  sub_220E567FC(v1, v2);
  sub_220E567FC(v1, v2);

  v4 = sub_220FC1780();
  v5 = sub_220FC2E30();

  if (os_log_type_enabled(v4, v5))
  {
    v43 = *(v0 + 192);
    v6 = *(v0 + 72);
    v7 = *(v0 + 34);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v45 = v9;
    *v8 = 136381699;
    v10 = sub_220EEBA60();
    v12 = sub_220E20FF8(v10, v11, &v45);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2050;
    *(v8 + 14) = v6;
    *(v8 + 22) = 2082;
    v13 = sub_220E5D878(v7);
    v15 = sub_220E20FF8(v13, v14, &v45);

    *(v8 + 24) = v15;
    *(v8 + 32) = 2050;
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    switch(v43 >> 62)
    {
      case 1uLL:
        result = OUTLINED_FUNCTION_5_7();
        LODWORD(v18) = HIDWORD(v17) - v17;
        if (!__OFSUB__(HIDWORD(v17), v17))
        {
          v18 = v18;
          goto LABEL_13;
        }

        __break(1u);
        return result;
      case 2uLL:
        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        OUTLINED_FUNCTION_5_7();
        v18 = v21 - v22;
        if (!__OFSUB__(v21, v22))
        {
          goto LABEL_13;
        }

        __break(1u);
        goto LABEL_10;
      case 3uLL:
LABEL_10:
        OUTLINED_FUNCTION_5_7();
        v18 = 0;
        goto LABEL_13;
      default:
        OUTLINED_FUNCTION_5_7();
        v18 = BYTE6(v16);
LABEL_13:
        v24 = *(v0 + 184);
        v25 = *(v0 + 192);
        v26 = *(v0 + 80);
        *(v8 + 34) = v18;
        sub_220E565AC(v24, v25);
        *(v8 + 42) = 2082;
        v27 = sub_220EA0CA4(*(v26 + 16), *(v26 + 24));
        v29 = sub_220E20FF8(v27, v28, &v45);

        *(v8 + 44) = v29;
        _os_log_impl(&dword_220E15000, v4, v5, "Received incoming tile. tilePath=%{private}s, timestamp=%{public}lu, format=%{public}s, dataCount=%{public}ld, resourceType=%{public}s", v8, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x223D9DDF0](v9, -1, -1);
        MEMORY[0x223D9DDF0](v8, -1, -1);
        break;
    }
  }

  else
  {
    v20 = *(v0 + 184);
    v19 = *(v0 + 192);
    sub_220E565AC(v20, v19);
    sub_220E565AC(v20, v19);
  }

  v44 = *(v0 + 34);
  v41 = *(v0 + 184);
  v42 = *(v0 + 192);
  v31 = *(v0 + 120);
  v30 = *(v0 + 128);
  v32 = *(v0 + 104);
  v40 = *(v0 + 112);
  v33 = *(v0 + 88);
  v34 = *(v0 + 96);
  v35 = *(v0 + 40);
  sub_220FC0670();
  sub_220FC0450();
  v36 = type metadata accessor for OverlayTileData(0);
  v37 = v35 + *(v36 + 20);
  sub_220FC0190();
  swift_unknownObjectRelease();
  (*(v34 + 8))(v32, v33);
  (*(v31 + 8))(v30, v40);
  v38 = &v37[*(type metadata accessor for OverlayTileData.Expiry(0) + 20)];
  *v38 = 0;
  *(v38 + 1) = 0;
  *v35 = v41;
  v35[1] = v42;
  *(v35 + *(v36 + 24)) = v44;

  OUTLINED_FUNCTION_32_0();

  return v39();
}

uint64_t sub_220E5E224()
{
  OUTLINED_FUNCTION_19();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220E5E294()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220E5E2FC()
{
  sub_220E5E3BC(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t sub_220E5E324()
{
  sub_220E5E2FC();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_220E5E3BC(uint64_t a1, uint64_t a2)
{
  if ((a2 - 2) >= 5)
  {
    return sub_220E5E3D0(a1, a2);
  }

  return a1;
}

uint64_t sub_220E5E3D0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_220E5E40C()
{
  sub_220FC02B0();
  if (v0 <= 0x3F)
  {
    sub_220E5E490();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220E5E490()
{
  if (!qword_2812C5DC0)
  {
    v0 = sub_220FC33A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C5DC0);
    }
  }
}

uint64_t sub_220E5E508()
{
  result = type metadata accessor for OverlayTileData.Expiry(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OverlayTileData.Format(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OverlayTileData.Format(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}