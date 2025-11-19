uint64_t sub_25E604B30(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_25E63AD50;
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

void *sub_25E604B94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9160, &qword_25E63B110);
  v2 = *v0;
  v3 = sub_25E635DA0();
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

void sub_25E604CEC(uint64_t *a1, uint64_t *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *v4;
  sub_25E635DA0();
  OUTLINED_FUNCTION_13_1();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_4_4();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v3, 8 * v9);
    }

    OUTLINED_FUNCTION_1_4();
    if (v15)
    {
      do
      {
        OUTLINED_FUNCTION_9_1();
LABEL_15:
        *(*(v5 + 48) + v17) = *(*(v6 + 48) + v17);
      }

      while (v16);
    }

    v18 = v13;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v14)
      {
        goto LABEL_17;
      }

      ++v18;
      if (*(v3 + v19))
      {
        OUTLINED_FUNCTION_8_2();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v4 = v5;
  }
}

void sub_25E604DA4(uint64_t *a1, uint64_t *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *v4;
  sub_25E635DA0();
  OUTLINED_FUNCTION_13_1();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_4_4();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v3, 8 * v9);
    }

    OUTLINED_FUNCTION_1_4();
    if (v15)
    {
      do
      {
        OUTLINED_FUNCTION_9_1();
LABEL_15:
        *(*(v5 + 48) + 8 * v17) = *(*(v6 + 48) + 8 * v17);
      }

      while (v16);
    }

    v18 = v13;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v14)
      {
        goto LABEL_17;
      }

      ++v18;
      if (*(v3 + v19))
      {
        OUTLINED_FUNCTION_8_2();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v4 = v5;
  }
}

void *sub_25E604E5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9158, &qword_25E63B108);
  v2 = *v0;
  v3 = sub_25E635DA0();
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
        v18 = 5 * v17;
        result = sub_25E5F82CC(*(v2 + 48) + 40 * v17, v22);
        v19 = *(v4 + 48) + 8 * v18;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
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

uint64_t sub_25E604FD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9178, &qword_25E63B128);
  result = sub_25E635DB0();
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
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_25E636110();
        sub_25E635860();

        result = sub_25E636130();
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
        *(*(v6 + 48) + v21) = v16;
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

uint64_t sub_25E60527C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9160, &qword_25E63B110);
  result = sub_25E635DB0();
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
        sub_25E636110();

        sub_25E635860();
        result = sub_25E636130();
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

uint64_t sub_25E6054B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9170, &qword_25E63B120);
  result = sub_25E635DB0();
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
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_25E636110();
        MEMORY[0x25F8B9DE0](v16);
        result = sub_25E636130();
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
        *(*(v6 + 48) + v21) = v16;
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

void sub_25E6056CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = OUTLINED_FUNCTION_6_2(a1, a2, a3);
  sub_25E635DB0();
  OUTLINED_FUNCTION_13_1();
  if (v6)
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 7;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v4 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = v5[5];
        v18 = sub_25E636100();
        OUTLINED_FUNCTION_12_0(v18);
        if (((-1 << v20) & ~v12[v19]) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_11_1();
LABEL_21:
        OUTLINED_FUNCTION_16_1();
        *(v12 + v25) |= v26;
        *(v5[6] + 8 * v27) = v16;
        ++v5[2];
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_20();
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        if (v12[v21] != -1)
        {
          OUTLINED_FUNCTION_18_0();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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
          goto LABEL_23;
        }

        v15 = *(v4 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v3 = v5;
  }
}

uint64_t sub_25E605854(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9158, &qword_25E63B108);
  result = sub_25E635DB0();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
        sub_25E5F82CC(*(v3 + 48) + 40 * (v13 | (v7 << 6)), v29);
        v16 = *(v6 + 40);
        result = sub_25E635D80();
        v17 = -1 << *(v6 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = *(v6 + 48) + 40 * v20;
        v26 = v29[0];
        v27 = v29[1];
        *(v25 + 32) = v30;
        *v25 = v26;
        *(v25 + 16) = v27;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
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
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
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

          v2 = v28;
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_25E605ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25E602D50(a1, *(v2 + 32), *(v2 + 40), a2);
}

uint64_t sub_25E605AF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25E605B58()
{
  result = qword_27FCF8FC8[0];
  if (!qword_27FCF8FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCF8FC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SummaryItemRequirementEvaluationResult(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25E605D10(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25E605D50(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PartOfWeek(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25E605E34(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25E605F60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25E602B18(a1, a2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void OUTLINED_FUNCTION_1_4()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_4_4()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(*v3 + 24) > a1)
  {
    v5 = *(*v3 + 24);
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_7_2()
{
  v1 = *(*(v0 - 248) + 8);
  result = *(v0 - 232);
  v3 = *(v0 - 224);
  return result;
}

uint64_t EventRecorderDiagramRenderer.Color.hashValue.getter()
{
  v1 = *v0;
  sub_25E636110();
  MEMORY[0x25F8B9DE0](v1);
  return sub_25E636130();
}

uint64_t EventRecorderDiagramRenderer.__allocating_init(referenceDate:colorForTag:)()
{
  OUTLINED_FUNCTION_37();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  EventRecorderDiagramRenderer.init(referenceDate:colorForTag:)();
  return v3;
}

uint64_t EventRecorderDiagramRenderer.init(referenceDate:colorForTag:)()
{
  OUTLINED_FUNCTION_37();
  v4 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_eventIntervals) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_stageNames) = v4;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_height) = 0;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_fullDuration) = 0;
  v5 = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_maxSublevelByColor) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_thermalStateByX) = v5;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_cpuLoadByX) = v5;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_width) = 0x40A3880000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_xMargin) = 0x405E000000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_yHeader) = 0x4034000000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_yThermalHigh) = 0x4043000000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_yCPULoadHigh) = 0x4043000000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_ySpacing) = 0x4018000000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_blockHeight) = 0x4043000000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_legendLineHeight) = 0x4034000000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_legendNumberOfNamesPerRow) = 4;
  v6 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_referenceDate;
  v7 = sub_25E635570();
  OUTLINED_FUNCTION_1_2(v7);
  (*(v8 + 32))(v1 + v6, v3);
  v9 = (v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_colorForTag);
  *v9 = v2;
  v9[1] = v0;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_yStride) = 0x4046000000000000;
  return v1;
}

void sub_25E606498()
{
  OUTLINED_FUNCTION_11_2();
  v317 = v1;
  v318 = v2;
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9180, &qword_25E63B180);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_7();
  v293 = v8 - v9;
  v11 = MEMORY[0x28223BE20](v10);
  v295 = &v278 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v278 - v13;
  v15 = sub_25E635570();
  v16 = OUTLINED_FUNCTION_5(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_3();
  v23 = v22 - v21;
  v24 = type metadata accessor for RootEventRecorder.Event(0);
  v25 = *(*(v24 - 1) + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v29);
  v32 = &v278 - v31;
  v33 = *(v5 + 16);
  if (v33)
  {
    v34 = v5 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v35 = *(v30 + 72);
    v306 = v34;
    sub_25E60AF74(v34 + v35 * (v33 - 1), &v278 - v31);
    v36 = *(v3 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_fullDuration);
    v37 = v24[8];
    if (v36 <= *(v32 + v37))
    {
      v36 = *(v32 + v37);
    }

    *(v3 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_fullDuration) = v36;
    if (v36 > 0.0)
    {
      v299 = v35;
      v304 = v33;
      v288 = v32;
      v290 = v14;
      sub_25E635560();
      sub_25E635540();
      v285 = v38;
      v39 = *(v18 + 8);
      v39(v23, v15);
      sub_25E635560();
      sub_25E635540();
      v41 = v40;
      v39(v23, v15);
      v315 = MEMORY[0x277D84FA0];
      v305 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_thermalStateByX;
      v303 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_cpuLoadByX;
      v284 = v3 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_colorForTag;
      v283 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_eventIntervals;
      v42 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_maxSublevelByColor;
      v291 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_height;
      v300 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_stageNames;
      OUTLINED_FUNCTION_41();
      v289 = v42;
      OUTLINED_FUNCTION_41();
      v286 = 0;
      v287 = 0x800000025E638DA0;
      v43 = MEMORY[0x277D84F98];
      v44 = 0.5;
      v45 = 2.0;
      v296 = MEMORY[0x277D84F98];
      v46 = MEMORY[0x277D84F98];
      v302 = MEMORY[0x277D84F98];
      v307 = v24;
      OUTLINED_FUNCTION_44();
      v47 = v306;
      while (1)
      {
        v306 = v47;
        sub_25E60AF74(v47, v32);
        v48 = *(v32 + v24[8]);
        v49 = v48 * 2260.0 / *(v3 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_fullDuration) + 120.0;
        v50 = *(v32 + v24[10]);
        v51 = v305;
        OUTLINED_FUNCTION_17_2();
        v52 = *(v3 + v51);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_7_3();
        if (__OFADD__(v55, v56))
        {
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
          goto LABEL_207;
        }

        v57 = v53;
        v58 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9188, &qword_25E63B188);
        if (OUTLINED_FUNCTION_54())
        {
          sub_25E60D614(v49);
          OUTLINED_FUNCTION_4_5();
          if (!v241)
          {
            goto LABEL_210;
          }

          v57 = v59;
        }

        v60 = v312;
        if (v58)
        {
          *(*(v312 + 56) + 8 * v57) = v50;
        }

        else
        {
          OUTLINED_FUNCTION_18_1(v312);
          *(v61 + 8 * v57) = v50;
          v62 = *(v60 + 16);
          v63 = __OFADD__(v62, 1);
          v64 = v62 + 1;
          if (v63)
          {
            goto LABEL_190;
          }

          *(v60 + 16) = v64;
        }

        *(v3 + v305) = v60;
        swift_endAccess();
        v32 = v308;
        v65 = v308 + v24[11];
        v66 = *v65;
        v301 = *(v65 + 16);
        v298 = v66;
        v67 = *(v65 + 32);
        v68 = v303;
        OUTLINED_FUNCTION_17_2();
        v69 = *(v3 + v68);
        if (v67)
        {
          v70 = *(v3 + v68);
          sub_25E60D614(v49);
          if (v71)
          {
            v33 = v303;
            v72 = *(v3 + v303);
            swift_isUniquelyReferenced_nonNull_native();
            v312 = *(v3 + v33);
            v73 = v312;
            *(v3 + v33) = 0x8000000000000000;
            v74 = *(v73 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B8, &unk_25E63B1B0);
            sub_25E635EA0();
            v75 = v312;
            sub_25E635EB0();
            *(v3 + v33) = v75;
          }
        }

        else
        {
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_40();
          OUTLINED_FUNCTION_7_3();
          if (__OFADD__(v78, v79))
          {
            goto LABEL_191;
          }

          v80 = v76;
          v81 = v77;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B8, &unk_25E63B1B0);
          if (OUTLINED_FUNCTION_54())
          {
            sub_25E60D614(v49);
            OUTLINED_FUNCTION_4_5();
            if (!v241)
            {
              goto LABEL_210;
            }

            v80 = v82;
          }

          v83 = v303;
          v84 = v312;
          if (v81)
          {
            v85 = (*(v312 + 56) + 32 * v80);
            v86 = v301;
            *v85 = v298;
            v85[1] = v86;
          }

          else
          {
            OUTLINED_FUNCTION_18_1(v312);
            v88 = (v87 + 32 * v80);
            v89 = v301;
            *v88 = v298;
            v88[1] = v89;
            v90 = *(v84 + 16);
            v63 = __OFADD__(v90, 1);
            v91 = v90 + 1;
            if (v63)
            {
              goto LABEL_193;
            }

            *(v84 + 16) = v91;
          }

          *(v3 + v83) = v84;
        }

        swift_endAccess();
        if (v41 <= v48)
        {
          v41 = v48;
        }

        v92 = v32 + v24[9];
        v93 = *(v92 + 8);
        v94 = *(v93 + 16);
        if (!v94)
        {
          goto LABEL_37;
        }

        v95 = *(v93 + 8 * v94 + 24);
        v96 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          goto LABEL_187;
        }

        if ((v96 & 0x8000000000000000) != 0)
        {
          goto LABEL_188;
        }

        v97 = *v92;
        v98 = *(*v92 + 16);
        if (v98 < v96)
        {
          goto LABEL_189;
        }

        if (v98 != v96)
        {
          break;
        }

        v101 = *v92;

LABEL_39:
        v102 = v300;
        v103 = *(v3 + v300);
        v104 = sub_25E607A48(v97, v103);
        if (v105)
        {
          v24 = v103[2];
          OUTLINED_FUNCTION_17_2();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v3 + v102) = v103;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_32();
            v103 = sub_25E60A598(v265, v266, v267, v268);
            *(v3 + v102) = v103;
          }

          v32 = v103[2];
          if (v32 >= v103[3] >> 1)
          {
            OUTLINED_FUNCTION_32();
            v103 = sub_25E60A598(v269, v270, v271, v272);
          }

          v103[2] = v32 + 1;
          v103[v32 + 4] = v97;
          *(v3 + v300) = v103;
          swift_endAccess();
          OUTLINED_FUNCTION_44();
        }

        else
        {
          v24 = v104;
        }

        if (*(v46 + 16) && (v107 = sub_25E60D4B8(v97), (v108 & 1) != 0))
        {
          *&v301 = *(*(v46 + 56) + 8 * v107);
        }

        else
        {
          *&v301 = 0;
        }

        if (!v43[2] || (v109 = v43, sub_25E60D4B8(v97), (v110 & 1) == 0))
        {
          v314[0] = *v92;
          sub_25E6146C0(&v312);
          v33 = v313;
          v310 = v312;
          v311 = v313;
          v92 = sub_25E61459C();

          if (v43[2] && (v111 = sub_25E60D4B8(v92), (v112 & 1) != 0))
          {
            v113 = *(v43[7] + 8 * v111);
          }

          else
          {
            v113 = 0;
          }

          if (*(v46 + 16))
          {
            v114 = sub_25E60D4B8(v92);
            v116 = v115;

            if (v116)
            {
              v117 = *(*(v46 + 56) + 8 * v114);
LABEL_61:
              v63 = __OFADD__(v113, v117);
              v32 = v113 + v117;
              if (v63)
              {
                goto LABEL_185;
              }

              swift_isUniquelyReferenced_nonNull_native();
              *&v314[0] = v43;
              v109 = v43;
              sub_25E60D4B8(v97);
              v118 = v43[2];
              OUTLINED_FUNCTION_15_2();
              if (__OFADD__(v119, v120))
              {
                goto LABEL_186;
              }

              OUTLINED_FUNCTION_52();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9190, &qword_25E63B190);
              OUTLINED_FUNCTION_8_3();
              if (sub_25E635EA0())
              {
                OUTLINED_FUNCTION_48();
                OUTLINED_FUNCTION_4_5();
                if (!v241)
                {
                  goto LABEL_209;
                }

                v33 = v121;
              }

              v43 = *&v314[0];
              if (v92)
              {
                *(*(*&v314[0] + 56) + 8 * v33) = v32;
              }

              else
              {
                OUTLINED_FUNCTION_2_7(*&v314[0] + 8 * (v33 >> 6));
                *(v43[6] + 8 * v33) = v97;
                *(v43[7] + 8 * v33) = v32;
                v122 = v43[2];
                v63 = __OFADD__(v122, 1);
                v123 = v122 + 1;
                if (v63)
                {
                  goto LABEL_192;
                }

                v43[2] = v123;
              }

              OUTLINED_FUNCTION_44();
              goto LABEL_72;
            }
          }

          else
          {
          }

          v117 = 0;
          goto LABEL_61;
        }

LABEL_72:
        switch(*(v32 + v307[6]))
        {
          case 1:
            OUTLINED_FUNCTION_43(v316);
            if (!v136)
            {
              goto LABEL_91;
            }

            sub_25E60D524(v32);
            if ((v137 & 1) == 0)
            {
              goto LABEL_91;
            }

            v138 = *(v302 + 56);
            OUTLINED_FUNCTION_28();
            v142 = v292;
            sub_25E60AF74(v140 + v139 * v141, v292);
            v143 = v142;
            v144 = v294;
            sub_25E60DD54(v143, v294);
            v145 = *(v144 + v307[8]) * 2260.0 / *(v3 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_fullDuration) + 120.0;
            v146 = (v24 + v44) * 44.0 + 96.0;
            OUTLINED_FUNCTION_29();
            if (v149 > 30 || v49 - v148 < v45)
            {
              goto LABEL_87;
            }

            CGPointMake(v147);
            OUTLINED_FUNCTION_29();
            v320 = CGRectInset(v319, 0.0, v229 + v229);
            x = v320.origin.x;
            y = v320.origin.y;
            width = v320.size.width;
            height = v320.size.height;
            v234 = *v284;
            v233 = *(v284 + 8);
            v235 = v307;
            v236 = (v32 + v307[7]);
            v237 = v236[1];
            *&v314[0] = *v236;
            *(&v314[0] + 1) = v237;

            v234(&v312, v314);

            LODWORD(v298) = v312;
            v238 = (v32 + v235[5]);
            v239 = *v238;
            v240 = v238[1];
            v241 = *v238 == 0xD000000000000029 && v287 == v240;
            if (v241 || (sub_25E636070() & 1) != 0)
            {
              v242 = v296;
              if (__OFADD__(v286, 1))
              {
                goto LABEL_208;
              }

              v243 = v239;
              v244 = 0;
              v245 = v285;
              v246 = v48;
              v281 = v286;
              v285 = v48;
              ++v286;
            }

            else
            {
              v243 = v239;
              v245 = 0.0;
              v246 = 0.0;
              v281 = 0;
              v244 = 1;
              v242 = v296;
            }

            if (*(v242 + 16) && (v247 = sub_25E60D4B8(v97), (v248 & 1) != 0))
            {
              if (*(*(v296 + 56) + 8 * v247) == v301)
              {
                goto LABEL_161;
              }
            }

            else
            {
              OUTLINED_FUNCTION_29();
              if (!v249)
              {
LABEL_161:

                v280 = v243;
                goto LABEL_164;
              }
            }

            v280 = 0;
            v240 = 0;
LABEL_164:
            if (v244)
            {
              v250 = 0.0;
            }

            else
            {
              v250 = v245;
            }

            v279 = v250;
            if (v244)
            {
              v251 = 0.0;
            }

            else
            {
              v251 = v246;
            }

            v278 = v251;
            LOBYTE(v310) = v244;
            v309 = v244;
            v32 = v283;
            OUTLINED_FUNCTION_17_2();

            sub_25E60A2E0(sub_25E60A480);
            v252 = *(*(v3 + v32) + 16);
            sub_25E60A36C(v252, sub_25E60A480);
            v253 = *(v3 + v32);
            *(v253 + 16) = v252 + 1;
            v254 = v253 + 104 * v252;
            v255 = y;
            *(v254 + 32) = x;
            *(v254 + 40) = v255;
            *(v254 + 48) = width;
            *(v254 + 56) = height;
            v256 = v298;
            *(v254 + 64) = v298;
            v257 = v281;
            *(v254 + 72) = v301;
            *(v254 + 80) = v257;
            *(v254 + 88) = v244;
            v258 = v278;
            *(v254 + 96) = v279;
            *(v254 + 104) = v258;
            *(v254 + 112) = v244;
            v33 = v280;
            *(v254 + 120) = v280;
            *(v254 + 128) = v240;
            *(v3 + v32) = v253;
            swift_endAccess();
            v259 = *(v3 + v289);
            v260 = *(v259 + 16);
            if (v260)
            {
              sub_25E60D5A8(v256);
              OUTLINED_FUNCTION_44();
              v44 = 0.5;
              v45 = 2.0;
              if (v262)
              {
                v260 = *(*(v259 + 56) + 8 * v261);
              }

              else
              {
                v260 = 0;
              }
            }

            else
            {
              v32 = v308;
              v44 = 0.5;
              v45 = 2.0;
            }

            if (v301 <= v260)
            {
              v263 = v260;
            }

            else
            {
              v263 = v301;
            }

            v92 = v289;
            OUTLINED_FUNCTION_17_2();
            v264 = *(v3 + v92);
            swift_isUniquelyReferenced_nonNull_native();
            v312 = *(v3 + v92);
            sub_25E60DDB8(v263, v298);
            *(v3 + v92) = v312;
            swift_endAccess();
            if (v240)
            {
              sub_25E603328(v314, v33, v240);
            }

LABEL_87:
            OUTLINED_FUNCTION_49();
            v152 = *(v3 + v151);
            if (v152 <= v146 + 38.0)
            {
              v152 = v146 + 38.0;
            }

            *(v3 + v151) = v152;
            v153 = v302;
            v154 = sub_25E60D524(v32);
            if (v155)
            {
              v156 = v154;
              swift_isUniquelyReferenced_nonNull_native();
              *&v314[0] = v153;
              v157 = *(v153 + 24);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91A0, &unk_25E63B1A0);
              OUTLINED_FUNCTION_8_3();
              sub_25E635EA0();
              v92 = *&v314[0];
              v158 = *(*&v314[0] + 48);
              v159 = sub_25E6355A0();
              OUTLINED_FUNCTION_1_2(v159);
              (*(v160 + 8))(v158 + *(v160 + 72) * v156, v159);
              v161 = *(v92 + 56);
              OUTLINED_FUNCTION_28();
              v164 = v290;
              sub_25E60DD54(v162 + v156 * v163, v290);
              OUTLINED_FUNCTION_14_2();
              sub_25E60EF80(&qword_27FCF91A8);
              OUTLINED_FUNCTION_27();
              sub_25E635EB0();
            }

            else
            {
              v164 = v290;
            }

            OUTLINED_FUNCTION_32();
            __swift_storeEnumTagSinglePayload(v217, v218, v219, v220);
            sub_25E60DCEC(v164);
            OUTLINED_FUNCTION_29();
            v32 = v221 - 1;
            if (__OFSUB__(v221, 1))
            {
              goto LABEL_202;
            }

            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_26();
            v222 = *(v46 + 16);
            OUTLINED_FUNCTION_15_2();
            v24 = (v223 + v224);
            if (__OFADD__(v223, v224))
            {
              goto LABEL_204;
            }

            OUTLINED_FUNCTION_52();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9190, &qword_25E63B190);
            OUTLINED_FUNCTION_8_3();
            if (sub_25E635EA0())
            {
              OUTLINED_FUNCTION_48();
              OUTLINED_FUNCTION_4_5();
              v24 = v307;
              if (!v241)
              {
LABEL_209:
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
                goto LABEL_210;
              }

              v33 = v225;
            }

            else
            {
              OUTLINED_FUNCTION_45();
            }

            v46 = *&v314[0];
            if (v92)
            {
              *(*(*&v314[0] + 56) + 8 * v33) = v32;
            }

            else
            {
              OUTLINED_FUNCTION_1_5();
              if (v63)
              {
                goto LABEL_206;
              }

              *(v46 + 16) = v227;
            }

            sub_25E60AFD8(v294);
LABEL_147:
            OUTLINED_FUNCTION_44();
LABEL_148:
            v228 = v306;
            sub_25E60AFD8(v32);
            v47 = v228 + v299;
            if (!--v304)
            {
              v273 = v315;
              sub_25E607BCC();
              v274 = OUTLINED_FUNCTION_51();
              sub_25E60AFD8(v274);
              v275 = *(v273 + 16);

              if (!__OFADD__(v275, 4))
              {
                OUTLINED_FUNCTION_49();
                *(v3 + v276) = v277 + *(v3 + v276);

                goto LABEL_183;
              }

LABEL_207:
              __break(1u);
LABEL_208:
              __break(1u);
              while (1)
              {
LABEL_210:
                sub_25E6360A0();
                __break(1u);
LABEL_211:
                sub_25E6355A0();
              }
            }

            break;
          case 2:
            OUTLINED_FUNCTION_43(v316);
            if (!v165 || (sub_25E60D524(v32), v33 = v302, (v166 & 1) == 0))
            {
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_45();
              __swift_storeEnumTagSinglePayload(v184, v185, v186, v24);

              sub_25E60DCEC(v109);
              goto LABEL_148;
            }

            v167 = *(v302 + 56);
            OUTLINED_FUNCTION_28();
            OUTLINED_FUNCTION_42();
            sub_25E60AF74(v168, v109);
            v169 = 1;
            v170 = v32;
            v171 = v307;
            __swift_storeEnumTagSinglePayload(v109, 0, 1, v307);
            sub_25E60DCEC(v109);
            v172 = sub_25E60D524(v170);
            if (v173)
            {
              v174 = v172;
              swift_isUniquelyReferenced_nonNull_native();
              *&v314[0] = v33;
              v175 = *(v33 + 24);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91A0, &unk_25E63B1A0);
              OUTLINED_FUNCTION_8_3();
              sub_25E635EA0();
              v176 = *&v314[0];
              v177 = *(*&v314[0] + 48);
              v178 = sub_25E6355A0();
              OUTLINED_FUNCTION_1_2(v178);
              (*(v179 + 8))(v177 + *(v179 + 72) * v174, v178);
              v180 = *(v176 + 56);
              OUTLINED_FUNCTION_28();
              v183 = v293;
              sub_25E60DD54(v181 + v174 * v182, v293);
              OUTLINED_FUNCTION_14_2();
              sub_25E60EF80(&qword_27FCF91A8);
              OUTLINED_FUNCTION_27();
              sub_25E635EB0();
              v169 = 0;
            }

            else
            {
              v183 = v293;
            }

            __swift_storeEnumTagSinglePayload(v183, v169, 1, v171);
            sub_25E60DCEC(v183);
            OUTLINED_FUNCTION_29();
            v32 = v212 - 1;
            if (__OFSUB__(v212, 1))
            {
              goto LABEL_201;
            }

            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_26();
            v213 = *(v46 + 16);
            OUTLINED_FUNCTION_15_2();
            v24 = (v214 + v215);
            if (__OFADD__(v214, v215))
            {
              goto LABEL_203;
            }

            OUTLINED_FUNCTION_52();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9190, &qword_25E63B190);
            OUTLINED_FUNCTION_8_3();
            if (sub_25E635EA0())
            {
              OUTLINED_FUNCTION_48();
              OUTLINED_FUNCTION_4_5();
              v24 = v307;
              if (!v241)
              {
                goto LABEL_209;
              }

              v33 = v216;
            }

            else
            {
              OUTLINED_FUNCTION_45();
            }

            v46 = *&v314[0];
            if (v169)
            {
              v208 = *(*&v314[0] + 56);
LABEL_138:
              *(v208 + 8 * v33) = v32;
            }

            else
            {
              OUTLINED_FUNCTION_1_5();
              if (v63)
              {
                goto LABEL_205;
              }

              *(v46 + 16) = v226;
            }

            goto LABEL_147;
          case 3:
LABEL_91:

            OUTLINED_FUNCTION_45();
            goto LABEL_148;
          default:
            sub_25E60AF74(v32, v297);
            v124 = v302;
            swift_isUniquelyReferenced_nonNull_native();
            *&v314[0] = v124;
            sub_25E60D524(v32);
            OUTLINED_FUNCTION_7_3();
            v129 = v127 + v128;
            if (__OFADD__(v127, v128))
            {
              goto LABEL_194;
            }

            v130 = v125;
            v131 = v126;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91A0, &unk_25E63B1A0);
            OUTLINED_FUNCTION_8_3();
            if ((sub_25E635EA0() & 1) == 0)
            {
              goto LABEL_78;
            }

            sub_25E60D524(v32);
            OUTLINED_FUNCTION_4_5();
            if (!v241)
            {
              goto LABEL_211;
            }

            v130 = v132;
LABEL_78:
            v302 = *&v314[0];
            if (v131)
            {
              v133 = *(*&v314[0] + 56);
              OUTLINED_FUNCTION_28();
              sub_25E60DEC8(v297, v134 + v130 * v135);
            }

            else
            {
              OUTLINED_FUNCTION_5_3(*&v314[0] + 8 * (v130 >> 6));
              v188 = *(v187 + 48);
              v189 = sub_25E6355A0();
              OUTLINED_FUNCTION_1_2(v189);
              (*(v190 + 16))(v188 + *(v190 + 72) * v130, v32);
              OUTLINED_FUNCTION_53(v316);
              OUTLINED_FUNCTION_28();
              sub_25E60DD54(v297, v191 + v130 * v192);
              v193 = *(v302 + 16);
              v63 = __OFADD__(v193, 1);
              v194 = v193 + 1;
              if (v63)
              {
                goto LABEL_198;
              }

              *(v302 + 16) = v194;
            }

            OUTLINED_FUNCTION_29();
            v32 = v195 + 1;
            if (__OFADD__(v195, 1))
            {
              goto LABEL_195;
            }

            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_26();
            v196 = *(v46 + 16);
            OUTLINED_FUNCTION_15_2();
            if (__OFADD__(v197, v198))
            {
              goto LABEL_196;
            }

            OUTLINED_FUNCTION_52();
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9190, &qword_25E63B190);
            if ((sub_25E635EA0() & 1) == 0)
            {
              goto LABEL_105;
            }

            OUTLINED_FUNCTION_48();
            OUTLINED_FUNCTION_4_5();
            if (!v241)
            {
              goto LABEL_209;
            }

            v129 = v199;
LABEL_105:
            v200 = v296;
            v46 = *&v314[0];
            if (v131)
            {
              *(*(*&v314[0] + 56) + 8 * v129) = v32;
            }

            else
            {
              OUTLINED_FUNCTION_1_5();
              if (v63)
              {
                goto LABEL_199;
              }

              *(v46 + 16) = v201;
            }

            if (v32 >= 30)
            {
              v32 = 30;
            }

            swift_isUniquelyReferenced_nonNull_native();
            *&v314[0] = v200;
            sub_25E60D4B8(v97);
            v203 = v202;
            OUTLINED_FUNCTION_7_3();
            if (__OFADD__(v205, v206))
            {
              goto LABEL_197;
            }

            v33 = v204;
            if (sub_25E635EA0())
            {
              OUTLINED_FUNCTION_48();
              OUTLINED_FUNCTION_4_5();
              v24 = v307;
              if (!v241)
              {
                goto LABEL_209;
              }

              v33 = v207;
            }

            else
            {
              OUTLINED_FUNCTION_45();
            }

            v296 = *&v314[0];
            if (v203)
            {
              v208 = *(*&v314[0] + 56);
              goto LABEL_138;
            }

            OUTLINED_FUNCTION_2_7(*&v314[0] + 8 * (v33 >> 6));
            *(v209[6] + 8 * v33) = v97;
            *(v209[7] + 8 * v33) = v32;
            v210 = v209[2];
            v63 = __OFADD__(v210, 1);
            v211 = v210 + 1;
            if (v63)
            {
              goto LABEL_200;
            }

            v209[2] = v211;
            goto LABEL_147;
        }
      }

      if (v96)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
        v99 = OUTLINED_FUNCTION_35();
        _swift_stdlib_malloc_size(v99);
        OUTLINED_FUNCTION_3_6();
        v99[2] = v96;
        v99[3] = v100;
        swift_arrayInitWithCopy();
        v97 = v99;
        goto LABEL_39;
      }

LABEL_37:
      v97 = MEMORY[0x277D84F90];
      goto LABEL_39;
    }

    sub_25E60AFD8(v32);
  }

LABEL_183:
  OUTLINED_FUNCTION_12_1();
}

uint64_t sub_25E607A48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = *(a1 + 16);
    v6 = a2 + 32;
    v7 = (a1 + 40);
    do
    {
      v8 = *(v6 + 8 * v4);
      if (*(v8 + 16) == v5)
      {
        if (!v5 || v8 == a1)
        {
          return v4;
        }

        v9 = (v8 + 40);
        v10 = v7;
        v11 = v5;
        while (1)
        {
          v12 = *(v9 - 1) == *(v10 - 1) && *v9 == *v10;
          if (!v12 && (sub_25E636070() & 1) == 0)
          {
            break;
          }

          v9 += 2;
          v10 += 2;
          if (!--v11)
          {
            return v4;
          }
        }
      }

      ++v4;
    }

    while (v4 != v2);
  }

  return 0;
}

uint64_t sub_25E607B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_25E60D660(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_25E607B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_25E60D6D8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void sub_25E607BCC()
{
  OUTLINED_FUNCTION_11_2();
  v206 = v1;
  v207 = v2;
  v176 = v0;
  v4 = v3;
  v170 = v5;
  v178 = v6;
  v179 = v7;
  v9 = v8;
  v194 = type metadata accessor for RootEventRecorder.Event(0);
  v10 = OUTLINED_FUNCTION_5(v194);
  v190 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v189 = &v166 - v18;
  v195 = sub_25E6355A0();
  v19 = OUTLINED_FUNCTION_5(v195);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_3();
  v186 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9260, &qword_25E63B328);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  OUTLINED_FUNCTION_7();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v166 - v32;
  v204 = v4;
  v203 = MEMORY[0x277D84FA0];
  v34 = v9 + 64;
  v35 = 1 << *(v9 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v9 + 64);
  v38 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_stageNames;
  v171 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_eventIntervals;
  v169 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_height;

  v191 = v9;

  v175 = v38;
  OUTLINED_FUNCTION_41();
  v39 = 0;
  v40 = (v35 + 63) >> 6;
  v183 = v21 + 16;
  v182 = v21 + 32;
  v193 = 0x800000025E638F30;
  v187 = v21;
  v192 = (v21 + 8);
  v188 = v16;
  v185 = v30;
  v184 = v33;
  v181 = v9 + 64;
  v180 = v40;
  if (v37)
  {
    while (1)
    {
      v41 = v39;
LABEL_9:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v41 << 6);
      v44 = v191;
      v45 = v187;
      (*(v187 + 16))(v186, *(v191 + 48) + *(v187 + 72) * v43, v195);
      v46 = v189;
      sub_25E60AF74(*(v44 + 56) + *(v190 + 72) * v43, v189);
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9268, &qword_25E63B330) + 48);
      v48 = *(v45 + 32);
      v30 = v185;
      v49 = OUTLINED_FUNCTION_46();
      v50(v49);
      sub_25E60DD54(v46, v30 + v47);
      OUTLINED_FUNCTION_32();
      __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
      v16 = v188;
      v33 = v184;
      v34 = v181;
      v40 = v180;
LABEL_10:
      v55 = OUTLINED_FUNCTION_46();
      sub_25E60EFC4(v55, v56);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9268, &qword_25E63B330);
      if (__swift_getEnumTagSinglePayload(v33, 1, v57) == 1)
      {

        OUTLINED_FUNCTION_12_1();
        return;
      }

      sub_25E60DD54(&v33[*(v57 + 48)], v16);
      v58 = (v16 + v194[5]);
      v59 = *v58;
      v60 = v58[1];
      *&v200[0] = *v58;
      *(&v200[0] + 1) = v60;
      v201 = 0xD000000000000011;
      v202 = v193;
      sub_25E60F034();
      if ((sub_25E635D60() & 1) == 0)
      {
        break;
      }

LABEL_12:
      sub_25E60AFD8(v16);
      (*v192)(v33, v195);
      if (!v37)
      {
        goto LABEL_5;
      }
    }

    v62 = (v16 + v194[9]);
    v63 = v62[1];
    v64 = *(v63 + 16);
    v172 = v62;
    if (v64)
    {
      v65 = *(v63 + 8 * v64 + 24);
      v66 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_85;
      }

      if ((v66 & 0x8000000000000000) != 0)
      {
        goto LABEL_86;
      }

      v67 = *(*v62 + 16);
      if (v67 < v66)
      {
        goto LABEL_87;
      }

      if (v67 == v66)
      {
        v71 = *v62;

        v70 = v71;
LABEL_24:
        v177 = v70;
        v72 = *(v175 + v176);
        v73 = sub_25E607A48(v70, v72);
        if (v74)
        {
          v174 = v72[2];
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_17_2();
          OUTLINED_FUNCTION_23();

          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_25();
          OUTLINED_FUNCTION_49();
          *(v75 + v76) = v72;
          v77 = v72;
          if (v78)
          {
            v72 = v175;
          }

          else
          {
            sub_25E60A598(0, (v174 + 1), 1, v72);
            OUTLINED_FUNCTION_25();
            v77 = v155;
            v72 = v175;
            *(v175 + v75) = v155;
          }

          v80 = v77[2];
          v79 = v77[3];
          v81 = v80 + 1;
          if (v80 >= v79 >> 1)
          {
            v173 = (v80 + 1);
            v168 = v80;
            sub_25E60A598((v79 > 1), v80 + 1, 1, v77);
            OUTLINED_FUNCTION_25();
            v77 = v156;
          }

          v77[2] = v81;
          v77[v80 + 4] = v177;
          *(v72 + v75) = v77;
          swift_endAccess();
        }

        else
        {
          v174 = v73;
        }

        OUTLINED_FUNCTION_42();
        v82 = v72[2];
        v179 = v72;
        if (v82 && (v83 = OUTLINED_FUNCTION_23(), sub_25E60D4B8(v83), (v84 & 1) != 0))
        {
          OUTLINED_FUNCTION_53(&v205);
          v173 = *(v86 + 8 * v85);
        }

        else
        {
          v173 = 0;
        }

        OUTLINED_FUNCTION_43(&v204);
        if (v87)
        {
          v88 = OUTLINED_FUNCTION_23();
          sub_25E60D4B8(v88);
          if (v89)
          {
            OUTLINED_FUNCTION_20_0();
LABEL_57:
            v121 = (v174 + 0.5) * 44.0 + 96.0;
            v178 = v92;
            if (v72 <= v170)
            {
              v122 = *(v16 + v194[8]) * 2260.0 / *(v91 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_fullDuration) + 120.0;
              CGPointMake(v90);
              v209 = CGRectInset(v208, 0.0, v72 + v72);
              x = v209.origin.x;
              y = v209.origin.y;
              width = v209.size.width;
              height = v209.size.height;
              if (sub_25E5F7000(v174, v203))
              {
                v172 = 0;
                v168 = 0;
              }

              else
              {
                *&v200[0] = v59;
                *(&v200[0] + 1) = v60;

                MEMORY[0x25F8B9540](0x696E69666E552820, 0xED00002964656873);
                v127 = v200[0];

                v168 = *(&v127 + 1);
                v172 = v127;
                sub_25E603328(v200, v127, *(&v127 + 1));

                sub_25E603558(v200, v174);
              }

              v197 = 1;
              v196 = 1;
              v128 = v176;
              v129 = v171;
              OUTLINED_FUNCTION_17_2();
              v130 = *(v128 + v129);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v128 + v129) = v130;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v157 = *(v130 + 2);
                OUTLINED_FUNCTION_32();
                v130 = sub_25E60A480(v158, v159, v160, v161);
                *(v176 + v171) = v130;
              }

              v132 = *(v130 + 2);
              if (v132 >= *(v130 + 3) >> 1)
              {
                OUTLINED_FUNCTION_32();
                v130 = sub_25E60A480(v162, v163, v164, v165);
              }

              *(v130 + 2) = v132 + 1;
              v133 = &v130[104 * v132];
              *(v133 + 4) = x;
              *(v133 + 5) = y;
              *(v133 + 6) = width;
              *(v133 + 7) = height;
              v133[64] = 5;
              v134 = *(&v201 + 3);
              *(v133 + 65) = v201;
              *(v133 + 17) = v134;
              v135 = v173;
              *(v133 + 9) = v173;
              *(v133 + 10) = 0;
              v133[88] = 1;
              v136 = *(v199 + 3);
              *(v133 + 89) = v199[0];
              *(v133 + 23) = v136;
              *(v133 + 12) = 0;
              *(v133 + 13) = 0;
              v133[112] = 1;
              v137 = *&v198[3];
              *(v133 + 113) = *v198;
              *(v133 + 29) = v137;
              v138 = v168;
              *(v133 + 15) = v172;
              *(v133 + 16) = v138;
              v139 = v176;
              *(v176 + v171) = v130;
              v72 = v135;
              swift_endAccess();
              v91 = v139;
            }

            v140 = *(v91 + v169);
            if (v140 <= v121 + 38.0)
            {
              v140 = v121 + 38.0;
            }

            *(v91 + v169) = v140;
            if (__OFSUB__(v72, 1))
            {
              goto LABEL_81;
            }

            v174 = v72 - 1;
            OUTLINED_FUNCTION_42();
            LODWORD(v173) = swift_isUniquelyReferenced_nonNull_native();
            *&v200[0] = v72;
            v141 = OUTLINED_FUNCTION_23();
            sub_25E60D4B8(v141);
            OUTLINED_FUNCTION_7_3();
            if (__OFADD__(v144, v145))
            {
              goto LABEL_82;
            }

            v146 = v142;
            LODWORD(v179) = v143;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9190, &qword_25E63B190);
            if (sub_25E635EA0())
            {
              v147 = OUTLINED_FUNCTION_23();
              v148 = sub_25E60D4B8(v147);
              v150 = v179;
              if ((v179 & 1) != (v149 & 1))
              {
                goto LABEL_90;
              }

              v146 = v148;
            }

            else
            {
              v150 = v179;
            }

            v179 = *&v200[0];
            if (v150)
            {
              OUTLINED_FUNCTION_50();
              OUTLINED_FUNCTION_23();
            }

            else
            {
              OUTLINED_FUNCTION_5_3(*&v200[0] + 8 * (v146 >> 6));
              *(*(v151 + 48) + 8 * v146) = v177;
              OUTLINED_FUNCTION_50();
              v153 = *(v152 + 16);
              v104 = __OFADD__(v153, 1);
              v154 = v153 + 1;
              if (v104)
              {
                goto LABEL_88;
              }

              *(v152 + 16) = v154;
            }

            goto LABEL_12;
          }
        }

        v200[0] = *v172;
        sub_25E6146C0(&v201);
        v168 = v201;
        v167 = v202;
        v199[0] = v201;
        v199[1] = v202;
        v172 = sub_25E61459C();

        OUTLINED_FUNCTION_43(&v204);
        if (v93 && (v94 = OUTLINED_FUNCTION_51(), v178 = v199, sub_25E60D4B8(v94), (v95 & 1) != 0))
        {
          OUTLINED_FUNCTION_53(&v204);
          v168 = *(v97 + 8 * v96);
        }

        else
        {
          v168 = 0;
        }

        OUTLINED_FUNCTION_42();
        v98 = OUTLINED_FUNCTION_51();
        if (*&v200[0])
        {
          v167 = sub_25E60D4B8(v98);
          v100 = v99;
          OUTLINED_FUNCTION_51();

          if (v100)
          {
            OUTLINED_FUNCTION_53(&v205);
            v102 = *(v101 + 8 * v167);
LABEL_47:
            v103 = v178;
            v104 = __OFADD__(v168, v102);
            v105 = (v168 + v102);
            if (v104)
            {
              goto LABEL_83;
            }

            v178 = v105;
            v106 = v103;
            LODWORD(v172) = swift_isUniquelyReferenced_nonNull_native();
            *&v200[0] = v106;
            v107 = OUTLINED_FUNCTION_23();
            sub_25E60D4B8(v107);
            OUTLINED_FUNCTION_7_3();
            v104 = __OFADD__(v110, v111);
            v112 = v110 + v111;
            if (v104)
            {
              goto LABEL_84;
            }

            LODWORD(v168) = v109;
            v166 = v108;
            v167 = v112;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9190, &qword_25E63B190);
            v72 = v200;
            if (sub_25E635EA0())
            {
              v72 = *&v200[0];
              v113 = OUTLINED_FUNCTION_23();
              sub_25E60D4B8(v113);
              if ((v168 & 1) != (v114 & 1))
              {
                goto LABEL_90;
              }

              OUTLINED_FUNCTION_20_0();
            }

            else
            {
              OUTLINED_FUNCTION_20_0();
              v116 = v166;
              v115 = v168;
            }

            v92 = *&v200[0];
            if (v115)
            {
              *(*(*&v200[0] + 56) + 8 * v116) = v178;
            }

            else
            {
              OUTLINED_FUNCTION_5_3(*&v200[0] + 8 * (v116 >> 6));
              *(v117[6] + 8 * v118) = v177;
              *(v117[7] + 8 * v118) = v178;
              v119 = v117[2];
              v104 = __OFADD__(v119, 1);
              v120 = v119 + 1;
              if (v104)
              {
                goto LABEL_89;
              }

              v117[2] = v120;

              v72 = v173;
              OUTLINED_FUNCTION_25();
            }

            goto LABEL_57;
          }
        }

        else
        {
        }

        v102 = 0;
        goto LABEL_47;
      }

      if (v66)
      {
        v177 = *v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
        v174 = OUTLINED_FUNCTION_35();
        _swift_stdlib_malloc_size(v174);
        OUTLINED_FUNCTION_3_6();
        v68 = v174;
        *(v174 + 2) = v66;
        v68[3] = v69;
        swift_arrayInitWithCopy();
        v70 = v174;
        goto LABEL_24;
      }
    }

    v70 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_5:
  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v40)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9268, &qword_25E63B330);
      __swift_storeEnumTagSinglePayload(v30, 1, 1, v61);
      v37 = 0;
      goto LABEL_10;
    }

    v37 = *(v34 + 8 * v41);
    ++v39;
    if (v37)
    {
      v39 = v41;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
  sub_25E6360A0();
  __break(1u);
}

void sub_25E608A2C()
{
  OUTLINED_FUNCTION_11_2();
  v58 = v1;
  v59 = v2;
  v3 = v0;
  v51 = v4;
  v5 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_eventIntervals;
  OUTLINED_FUNCTION_41();
  v6 = *(v0 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = 104 * v7 - 72;
    v52 = MEMORY[0x277D84F98];
    v53 = 65;
    v54 = 0xE100000000000000;
    v9 = v7;
    v10 = v51;
    v50 = v6;
    while (1)
    {
      if (v9 > v7)
      {
        __break(1u);
LABEL_43:

        v49 = v52;
        goto LABEL_44;
      }

      memcpy(__dst, (v6 + v8), 0x68uLL);
      memcpy(v56, (v6 + v8), sizeof(v56));
      sub_25E60DF2C(__dst, v55);
      sub_25E6090B8(v56, v10);
      v11 = __dst[12];
      if (__dst[12])
      {
        break;
      }

LABEL_19:
      v63.origin.x = OUTLINED_FUNCTION_0_5();
      CGRectGetMaxX(v63);
      v64.origin.x = OUTLINED_FUNCTION_0_5();
      CGRectGetMinY(v64);
      v30 = sub_25E60DF64(__dst);
      if ((__dst[7] & 1) == 0 && (__dst[10] & 1) == 0)
      {
        v31 = __dst[6];
        v33 = *&__dst[8];
        v32 = *&__dst[9];
        v34 = *&__dst[8] * 2260.0 / *(v3 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_fullDuration) + 120.0;
        CGPointMake(v30);
        CGPointMake(v35);
        v56[0] = 0;
        v56[1] = 0xE000000000000000;
        sub_25E635DE0();

        v56[0] = 0x6F7420656D6954;
        v56[1] = 0xE700000000000000;
        if (v31)
        {
          v36 = 0;
        }

        else
        {
          v36 = 0x747372694620;
        }

        if (v31)
        {
          v37 = 0xE000000000000000;
        }

        else
        {
          v37 = 0xE600000000000000;
        }

        MEMORY[0x25F8B9540](v36, v37);

        MEMORY[0x25F8B9540](0x522079726F745320, 0xEC00000079646165);
        v38 = v56[0];
        v39 = v56[1];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91C0, &qword_25E63BD00);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_25E63A3E0;
        *(v40 + 56) = MEMORY[0x277D839F8];
        *(v40 + 64) = MEMORY[0x277D83A80];
        *(v40 + 32) = v32 - v33;
        v56[0] = sub_25E6357F0();
        v56[1] = v41;
        MEMORY[0x25F8B9540](29472, 0xE200000000000000);
        v42 = v56[1];
        OUTLINED_FUNCTION_0_5();
        sub_25E609AD4(v38, v39, v43, v42, v10);
      }

      if (!--v9)
      {
        goto LABEL_43;
      }

      v7 = *(v6 + 16);
      v8 -= 104;
    }

    v12 = __dst[11];
    v13 = sub_25E60DF94();
    sub_25E60DF2C(__dst, v56);
    sub_25E60DF2C(__dst, v56);
    OUTLINED_FUNCTION_46();
    v14 = sub_25E609044();
    v15 = CTLineCreateWithAttributedString(v14);
    OUTLINED_FUNCTION_47(v15);
    v17 = v16;

    v60.origin.x = OUTLINED_FUNCTION_0_5();
    if (CGRectGetWidth(v60) > v17)
    {
      sub_25E60DF64(__dst);
LABEL_18:
      v61.origin.x = OUTLINED_FUNCTION_0_5();
      CGRectGetMidX(v61);
      v62.origin.x = OUTLINED_FUNCTION_0_5();
      CGRectGetMinY(v62);
      CGPointMake(v27);
      sub_25E60A0A0(v14, v10, v28, v29);

      goto LABEL_19;
    }

    v18 = OUTLINED_FUNCTION_46();
    sub_25E607B24(v18, v19, v52);
    if (v20)
    {
      sub_25E60DF64(__dst);
      v22 = v53;
      v21 = v54;
    }

    else
    {
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v56[0] = v52;
      sub_25E60DFD8(v53, v54, v12, v11);
      v52 = v56[0];
      if (v53 != 90 || v54 != 0xE100000000000000)
      {
        v6 = v50;
        if (sub_25E636070())
        {

          sub_25E60DF64(__dst);
          v21 = 0xE100000000000000;
          v22 = 97;
          v24 = v3;
        }

        else
        {
          v44 = sub_25E635770();

          if ((v44 & 0x100) != 0)
          {
            __break(1u);
            return;
          }

          sub_25E60DF64(__dst);
          if (((v44 + 1) & 0x100) != 0)
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          if ((v44 + 1) >= 0)
          {
            v45 = (v44 + 2);
          }

          else
          {
            v45 = ((((v44 + 1) & 0x3F) << 8) | ((v44 + 1) >> 6)) + 33217;
          }

          v56[0] = (v45 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v45) >> 3))));
          v22 = sub_25E635850();
          v21 = v46;
          if ((v46 & 0x2000000000000000) != 0)
          {
            v24 = v3;
            if ((v46 & 0xF00000000000000) == 0)
            {
              goto LABEL_46;
            }
          }

          else
          {
            if ((v22 & 0xFFFFFFFFFFFFLL) == 0)
            {
              goto LABEL_47;
            }

            v24 = v3;
            if ((v22 & 0x1000000000000000) == 0)
            {
              OUTLINED_FUNCTION_46();
              v22 = sub_25E60E258();
              v48 = v47;

              v21 = v48;
            }
          }
        }

        goto LABEL_17;
      }

      sub_25E60DF64(__dst);
      v21 = 0xE100000000000000;
      v22 = 97;
    }

    v24 = v3;
    v6 = v50;
LABEL_17:
    v25 = sub_25E609044();

    v14 = v25;
    v26 = CTLineCreateWithAttributedString(v14);
    CTLineGetBoundsWithOptions(v26, 0);

    v53 = v22;
    v54 = v21;
    v10 = v51;
    v3 = v24;
    goto LABEL_18;
  }

LABEL_48:
  v49 = MEMORY[0x277D84F98];
  v10 = v51;
LABEL_44:
  sub_25E609294();
  sub_25E609568(v10);
  sub_25E60993C(v10);
  sub_25E609C64();
  sub_25E609E48(v49, v10);

  OUTLINED_FUNCTION_12_1();
}

id sub_25E609044()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_25E6357C0();

  v2 = [v0 initWithString_];

  return v2;
}

void sub_25E6090B8(uint64_t *a1, CGContextRef c)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  v9 = a1[5];
  CGContextBeginPath(c);
  v24.origin.x = OUTLINED_FUNCTION_0_5();
  CGContextAddRect(v10, v24);
  v11 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_maxSublevelByColor;
  OUTLINED_FUNCTION_41();
  v12 = *(v2 + v11);
  v13 = 1.0;
  if (v12[2])
  {
    v14 = sub_25E60D5A8(v8);
    if (v15)
    {
      v13 = *(v12[7] + 8 * v14);
    }
  }

  v23 = v8;
  v16 = sub_25E609240(&v23, v9 / v13);
  CGContextSetFillColorWithColor(c, v16);
  CGContextDrawPath(c, kCGPathFill);
  CGColorCreateGenericRGB(0.1, 0.1, 0.1, 0.75);
  v17 = OUTLINED_FUNCTION_36();
  CGContextSetStrokeColorWithColor(v17, v18);

  CGContextBeginPath(c);
  v25.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMinX(v25);
  v26.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMinY(v26);
  OUTLINED_FUNCTION_55(v19);
  sub_25E635CA0();
  v27.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMinX(v27);
  v28.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMaxY(v28);
  OUTLINED_FUNCTION_55(v20);
  sub_25E635CB0();
  v29.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMaxX(v29);
  v30.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMinY(v30);
  OUTLINED_FUNCTION_55(v21);
  sub_25E635CA0();
  v31.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMaxX(v31);
  v32.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMaxY(v32);
  OUTLINED_FUNCTION_55(v22);
  sub_25E635CB0();
  OUTLINED_FUNCTION_56();
}

CGColorRef sub_25E609240(char *a1, double a2)
{
  v2 = *a1;
  v3 = (1.0 - dbl_25E63B3B8[v2]) * a2;
  v4 = 1.0 - (1.0 - dbl_25E63B388[v2]) * a2;
  v5 = (1.0 - dbl_25E63B358[v2]) * a2;
  return OUTLINED_FUNCTION_21(v5, v4, 1.0 - v5, v3, 1.0 - v3);
}

void sub_25E609294()
{
  OUTLINED_FUNCTION_11_2();
  v37 = v1;
  v38 = v2;
  v3 = v0;
  v5 = v4;
  v6 = sub_25E635620();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  v14 = v13 - v12;
  v15 = sub_25E60DF94();
  v16 = sub_25E609044();
  v17 = CTLineCreateWithAttributedString(v16);
  OUTLINED_FUNCTION_47(v17);

  CGPointMake(v18);
  v35 = v16;
  sub_25E60A0A0(v16, v5, v19, v20);
  v21 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_thermalStateByX;
  OUTLINED_FUNCTION_41();
  v22 = *(v3 + v21);

  v24 = sub_25E60B034(v23, sub_25E60AADC, sub_25E60EBA0);

  v36 = v24;
  sub_25E60B6BC(&v36);
  v25 = *(v36 + 2);
  if (v25)
  {
    v26 = *MEMORY[0x277CBF258];
    v27 = (v9 + 104);
    v28 = (v9 + 8);
    v29 = (v36 + 40);
    v30 = 1;
    do
    {
      v31 = *(v29 - 1);
      v32 = *v29;
      CGContextBeginPath(v5);
      sub_25E609844(v32);
      v33 = OUTLINED_FUNCTION_36();
      CGContextSetFillColorWithColor(v33, v34);

      if ((v30 & 1) == 0)
      {
        sub_25E635CA0();
        sub_25E635CB0();
        sub_25E635CB0();
        sub_25E635CB0();
        sub_25E635CB0();
      }

      v29 += 2;
      (*v27)(v14, v26, v6);
      sub_25E635CC0();
      (*v28)(v14, v6);
      v30 = 0;
      --v25;
    }

    while (v25);
  }

  OUTLINED_FUNCTION_12_1();
}

uint64_t sub_25E609568(CGContext *a1)
{
  v2 = v1;
  v4 = sub_25E635620();
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_3();
  v12 = v11 - v10;
  v13 = sub_25E60DF94();
  v14 = sub_25E609044();
  v15 = CTLineCreateWithAttributedString(v14);
  OUTLINED_FUNCTION_47(v15);

  CGPointMake(v16);
  v36 = v14;
  sub_25E60A0A0(v14, a1, v17, v18);
  v19 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_cpuLoadByX;
  OUTLINED_FUNCTION_41();
  v20 = *(v2 + v19);

  v37 = sub_25E60B034(v21, sub_25E60AB58, sub_25E60EC94);
  sub_25E60B760(&v37);

  v22 = *(v37 + 2);
  if (v22)
  {
    v23 = *MEMORY[0x277CBF258];
    v24 = (v7 + 104);
    v25 = (v7 + 8);
    v26 = (v37 + 64);
    v27 = 1;
    do
    {
      v28 = *(v26 - 4);
      v29 = *(v26 - 3) + *(v26 - 2) + *v26;
      CGContextBeginPath(a1);
      sub_25E6098E0(v29, v30, v31, v32);
      v33 = OUTLINED_FUNCTION_36();
      CGContextSetFillColorWithColor(v33, v34);

      if ((v27 & 1) == 0)
      {
        sub_25E635CA0();
        sub_25E635CB0();
        sub_25E635CB0();
        sub_25E635CB0();
        sub_25E635CB0();
      }

      (*v24)(v12, v23, v4);
      v20 = a1;
      sub_25E635CC0();
      (*v25)(v12, v4);
      v27 = 0;
      v26 += 5;
      --v22;
    }

    while (v22);
  }
}

CGColorRef sub_25E609844(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      result = CGColorCreateGenericRGB(0.1, 1.0, 0.1, 1.0);
      break;
    case 1:
      result = OUTLINED_FUNCTION_24(0.9, 1.0, 0.1);
      break;
    case 2:
      result = OUTLINED_FUNCTION_24(1.0, 0.6, 0.1);
      break;
    case 3:
      result = CGColorCreateGenericRGB(1.0, 0.1, 0.1, 1.0);
      break;
    default:
      result = OUTLINED_FUNCTION_24(0.5, 0.5, 0.5);
      break;
  }

  return result;
}

CGColorRef sub_25E6098E0(double a1, double a2, double a3, double a4)
{
  if (a1 >= 0.6)
  {
    return OUTLINED_FUNCTION_24(0.9, 1.1 - a1, 0.1);
  }

  else
  {
    return OUTLINED_FUNCTION_21(a1 * -0.833333333, a1 * -0.833333333 + 1.0, 0.1, a4, a1 * 1.5 + 0.1);
  }
}

void sub_25E60993C(CGContext *a1)
{
  v3 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_stageNames;
  OUTLINED_FUNCTION_41();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if (i >= *(v4 + 16))
    {
      break;
    }

    if (*(*(v4 + 8 * i + 32) + 16))
    {
      v12 = *(v4 + 8 * i + 32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
      sub_25E60EF1C();
      sub_25E6357A0();
    }

    sub_25E60DF94();
    v7 = sub_25E609044();
    v8 = CTLineCreateWithAttributedString(v7);
    CTLineGetBoundsWithOptions(v8, 0);

    CGPointMake(v9);
    sub_25E60A0A0(v7, a1, v10, v11);
  }

  __break(1u);
}

void sub_25E609AD4(int a1, int a2, int a3, int a4, CGContextRef c)
{
  CGContextBeginPath(c);
  sub_25E635CA0();
  v6 = sub_25E635CB0();
  CGPointMake(v6);
  v7 = sub_25E635CB0();
  CGPointMake(v7);
  v8 = sub_25E635CB0();
  CGPointMake(v8);
  sub_25E635CB0();
  v9 = sub_25E60DF94();

  v10 = sub_25E609044();
  v11 = CTLineCreateWithAttributedString(v10);
  CTLineGetBoundsWithOptions(v11, 0);

  CGPointMake(v12);
  sub_25E60A0A0(v10, c, v13, v14);

  v19 = sub_25E609044();
  v15 = CTLineCreateWithAttributedString(v19);
  OUTLINED_FUNCTION_47(v15);

  CGPointMake(v16);
  sub_25E60A0A0(v19, c, v17, v18);
  OUTLINED_FUNCTION_56();
}

void sub_25E609C64()
{
  OUTLINED_FUNCTION_11_2();
  v1 = v0;
  v3 = v2;
  CGContextBeginPath(v2);
  CGPointMake(v4);
  v5 = sub_25E635CA0();
  CGPointMake(v5);
  sub_25E635CB0();
  v6 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_fullDuration;
  for (i = 5.0; i <= *(v1 + v6); i = i + 5.0)
  {
    v8 = i * 2260.0 / *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_fullDuration) + 120.0;
    sub_25E60DF94();
    sub_25E635B20();
    MEMORY[0x25F8B9540](29472, 0xE200000000000000);
    v9 = sub_25E609044();
    v10 = CTLineCreateWithAttributedString(v9);
    CTLineGetBoundsWithOptions(v10, 0);

    CGPointMake(v11);
    sub_25E60A0A0(v9, v3, v12, v13);
  }

  OUTLINED_FUNCTION_56();
  CGContextBeginPath(v3);
  v14 = sub_25E635C90();
  v15 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_height;
  for (j = 5.0; j <= *(v1 + v6); j = j + 5.0)
  {
    v17 = j * 2260.0 / *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_fullDuration) + 120.0;
    CGPointMake(v14);
    v18 = sub_25E635CA0();
    v19 = *(v1 + v15);
    CGPointMake(v18);
    v14 = sub_25E635CB0();
  }

  OUTLINED_FUNCTION_56();
  sub_25E635C90();
  OUTLINED_FUNCTION_12_1();
}

void sub_25E609E48(uint64_t a1, CGContext *a2)
{
  v4 = *(a1 + 16);
  v5 = v4 + 4;
  if (__OFADD__(v4, 4))
  {
LABEL_12:
    __break(1u);

    __break(1u);
  }

  else
  {
    v6 = v2;
    v19 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_height;
    v7 = *(v2 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_height);
    v23[0] = sub_25E60B034(a1, sub_25E60ABDC, sub_25E60ED8C);
    sub_25E60B804(v23);
    v8 = 0;
    v20 = (v5 - 1) >> 2;
    v3 = v23[0];
    v22 = v23[0][2];
    v9 = (v23[0] + 7);
    while (v22 != v8)
    {
      if (v8 >= v3[2])
      {
        __break(1u);
        goto LABEL_12;
      }

      v11 = *(v9 - 1);
      v10 = *v9;
      v13 = *(v9 - 3);
      v12 = *(v9 - 2);
      sub_25E60DF94();
      v23[0] = v11;
      v23[1] = v10;

      MEMORY[0x25F8B9540](8250, 0xE200000000000000);
      MEMORY[0x25F8B9540](v13, v12);

      v14 = sub_25E609044();
      v15 = *(v6 + v19) + -24.0 + (v20 + ~(v8 >> 2)) * -20.0;
      CGPointMake(v14);
      sub_25E60A0A0(v14, a2, v16, v17);

      if (v15 < v7)
      {
        v7 = v15;
      }

      v9 += 4;
      ++v8;
    }

    CGContextBeginPath(a2);
    CGPointMake(v18);
    CGContextAddRect(a2, v25);

    CGContextStrokePath(a2);
  }
}

void sub_25E60A0A0(const __CFAttributedString *a1, CGContextRef c, CGFloat a3, double a4)
{
  CGContextSaveGState(c);
  v8 = CTLineCreateWithAttributedString(a1);
  v10.origin.x = OUTLINED_FUNCTION_47(v8);
  v9.a = 1.0;
  v9.b = 0.0;
  v9.c = 0.0;
  v9.d = -1.0;
  v9.tx = a3;
  v9.ty = CGRectGetMaxY(v10) + a4;
  CGContextSetTextMatrix(c, &v9);
  CTLineDraw(a1, c);
  CGContextRestoreGState(c);
}

uint64_t EventRecorderDiagramRenderer.deinit()
{
  v1 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_referenceDate;
  v2 = sub_25E635570();
  OUTLINED_FUNCTION_1_2(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_colorForTag + 8);

  v5 = *(v0 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_eventIntervals);

  v6 = *(v0 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_stageNames);

  v7 = *(v0 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_maxSublevelByColor);

  v8 = *(v0 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_thermalStateByX);

  v9 = *(v0 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_cpuLoadByX);

  return v0;
}

uint64_t EventRecorderDiagramRenderer.__deallocating_deinit()
{
  EventRecorderDiagramRenderer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_25E60A244(unint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_25E60A2E0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_25E60A36C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_25E60A3B4()
{
  OUTLINED_FUNCTION_31();
  if (v5)
  {
    OUTLINED_FUNCTION_10_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_39(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9220, &qword_25E63B2F0);
    v9 = OUTLINED_FUNCTION_35();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_3_6();
    *(v9 + 2) = v3;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

char *sub_25E60A480(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9250, &qword_25E63B320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[104 * v8] <= v12)
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25E60A598(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9278, &qword_25E63B338);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_25E60A6C8()
{
  OUTLINED_FUNCTION_31();
  if (v5)
  {
    OUTLINED_FUNCTION_10_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_39(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91E8, " A");
    v9 = OUTLINED_FUNCTION_35();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_34();
    *(v9 + 2) = v3;
    *(v9 + 3) = 2 * v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_25E60A798()
{
  OUTLINED_FUNCTION_31();
  if (v5)
  {
    OUTLINED_FUNCTION_10_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_38(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
    v9 = OUTLINED_FUNCTION_35();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_3_6();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_25E60A86C(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_25E60AC58(v8, v7);
  v10 = *(type metadata accessor for RootEventRecorder.Event(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_25E60AD74(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_25E60A958(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91F0, &qword_25E63CAA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

void *sub_25E60AA6C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9288, &unk_25E63B348);
  v4 = OUTLINED_FUNCTION_35();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_34();
  v4[2] = a1;
  v4[3] = (2 * v5) | 1;
  return v4;
}

void *sub_25E60AADC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9238, &qword_25E63B308);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_25E60AB58(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9228, &qword_25E63B2F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 40);
  return v4;
}

void *sub_25E60ABDC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9210, &qword_25E63B2E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 32);
  return v4;
}

size_t sub_25E60AC58(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91F8, "(A");
  v4 = *(type metadata accessor for RootEventRecorder.Event(0) - 8);
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

char *sub_25E60AD54(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_16_2(a3, result);
  }

  return result;
}

uint64_t sub_25E60AD74(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for RootEventRecorder.Event(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for RootEventRecorder.Event(0);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

void *sub_25E60AE48(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8FC0, &qword_25E63ACC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void sub_25E60AEB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
      v7 = OUTLINED_FUNCTION_35();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_3_6();
      v7[2] = v5;
      v7[3] = v8;
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_25E60AF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootEventRecorder.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E60AFD8(uint64_t a1)
{
  v2 = type metadata accessor for RootEventRecorder.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E60B034(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v3, a1);

  sub_25E60EF14();
  if (v7 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

void sub_25E60B100()
{
  OUTLINED_FUNCTION_31();
  if (v5)
  {
    OUTLINED_FUNCTION_10_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_38(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
    v9 = OUTLINED_FUNCTION_35();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_3_6();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_25E60B1D4()
{
  OUTLINED_FUNCTION_31();
  if (v5)
  {
    OUTLINED_FUNCTION_10_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_38(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9280, &qword_25E63B340);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_25E60B2A8()
{
  OUTLINED_FUNCTION_31();
  if (v5)
  {
    OUTLINED_FUNCTION_10_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_39(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91E8, " A");
    v9 = OUTLINED_FUNCTION_35();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_34();
    *(v9 + 2) = v3;
    *(v9 + 3) = 2 * v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

char *sub_25E60B378(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9238, &qword_25E63B308);
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

char *sub_25E60B478(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9228, &qword_25E63B2F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

void *sub_25E60B58C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9210, &qword_25E63B2E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9218, &qword_25E63B2E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25E60B6BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25E60EB64(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_25E60B8A8(v5, &qword_27FCF9240, &qword_25E63B310, sub_25E60BB8C, sub_25E60B9C4);
  *a1 = v2;
  return result;
}

uint64_t sub_25E60B760(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25E60EB78(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_25E60B8A8(v5, &qword_27FCF9230, &qword_25E63B300, sub_25E60C074, sub_25E60BA3C);
  *a1 = v2;
  return result;
}

uint64_t sub_25E60B804(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25E60EB8C(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_25E60B8A8(v5, &qword_27FCF9218, &qword_25E63B2E8, sub_25E60C590, sub_25E60BAC4);
  *a1 = v2;
  return result;
}

uint64_t sub_25E60B8A8(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_25E636030();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_25E635A40();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_25E60B9C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_25E60BA3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 40;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 40 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = v9 + 40;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v11 = *(v9 + 48);
        v12 = *(v9 + 64);
        v13 = *(v9 + 16);
        *v10 = *v9;
        *(v9 + 56) = v13;
        v14 = *(v9 + 32);
        *v9 = v7;
        *(v9 + 8) = v11;
        *(v9 + 24) = v12;
        v9 -= 40;
        *(v10 + 32) = v14;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 40;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_25E60BAC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
    while (2)
    {
      v9 = v6 + 32 * v4;
      result = *(v9 + 16);
      v10 = *(v9 + 24);
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 + 16) && v10 == *(v12 + 24))
        {
          break;
        }

        result = sub_25E636070();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 40);
        result = *(v12 + 48);
        v10 = *(v12 + 56);
        v16 = *(v12 + 16);
        *(v12 + 32) = *v12;
        *(v12 + 48) = v16;
        *v12 = v14;
        *(v12 + 8) = v15;
        *(v12 + 16) = result;
        *(v12 + 24) = v10;
        v12 -= 32;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 32;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_25E60BB8C(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v88 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v83 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v14 = *v11;
        v13 = v11 + 4;
        v15 = v14;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v13;
          v13 += 2;
          v20 = (v10 < v15) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v15)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (v32 >= *v34)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                *(v34 + 16) = *v34;
                *v34 = v32;
                *(v34 + 8) = v35;
                v34 -= 16;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v85 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = v8[2];
        sub_25E60A3B4();
        v8 = v81;
      }

      v37 = v8[2];
      v38 = v37 + 1;
      if (v37 >= v8[3] >> 1)
      {
        sub_25E60A3B4();
        v8 = v82;
      }

      v8[2] = v38;
      v39 = v8 + 4;
      v40 = &v8[2 * v37 + 4];
      *v40 = v7;
      v40[1] = v9;
      v86 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = &v39[2 * v38 - 2];
          v43 = &v8[2 * v38];
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = v8[4];
            v45 = v8[5];
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v73 = &v39[2 * v41 - 2];
          v74 = *v73;
          v75 = &v39[2 * v41];
          v76 = v75[1];
          sub_25E60CE48((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v86);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = v8[2];
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          memmove(&v39[2 * v41], v75 + 2, 16 * (v78 - 1 - v41));
          v77[2] = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = &v39[2 * v38];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v85;
      a4 = v83;
      if (v85 >= v6)
      {
        v88 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_25E60CAB8(&v88, *a1, a3);
LABEL_89:
}

void sub_25E60C074(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v90 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 40 * v9);
        v11 = (*a3 + 40 * v7);
        v12 = 40 * v7;
        v14 = *v11;
        v13 = v11 + 10;
        v15 = v14;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v13;
          v13 += 5;
          v20 = (v10 < v15) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v15)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 40 * v6 - 40;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = *(v24 + v12 + 32);
                v27 = (v24 + v21);
                v28 = *v25;
                v29 = v25[1];
                v30 = *(v27 + 4);
                v31 = v27[1];
                *v25 = *v27;
                v25[1] = v31;
                *(v25 + 4) = v30;
                *v27 = v28;
                v27[1] = v29;
                *(v27 + 4) = v26;
              }

              ++v23;
              v21 -= 40;
              v12 += 40;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v32 = *a3;
            v33 = *a3 + 40 * v9 - 40;
            v34 = v7 - v9;
            do
            {
              v35 = *(v32 + 40 * v9);
              v36 = v34;
              v37 = v33;
              do
              {
                v38 = v37 + 40;
                if (v35 >= *v37)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_111;
                }

                v39 = *(v37 + 48);
                v40 = *(v37 + 64);
                v41 = *(v37 + 16);
                *v38 = *v37;
                *(v37 + 56) = v41;
                v42 = *(v37 + 32);
                *v37 = v35;
                *(v37 + 8) = v39;
                *(v37 + 24) = v40;
                v37 -= 40;
                *(v38 + 32) = v42;
              }

              while (!__CFADD__(v36++, 1));
              ++v9;
              v33 += 40;
              --v34;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v92 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = v8[2];
        sub_25E60A3B4();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_25E60A3B4();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v7;
      v47[1] = v92;
      v93 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_56:
            if (v54)
            {
              goto LABEL_96;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_99;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_104;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v45 < 2)
          {
            goto LABEL_98;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_71:
          if (v69)
          {
            goto LABEL_101;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_103;
          }

          if (v76 < v68)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_25E60CFEC((*a3 + 40 * *v80), (*a3 + 40 * *v82), *a3 + 40 * v83, v93);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v83 < v81)
          {
            goto LABEL_91;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_92;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_93;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_85;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_94;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_95;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_97;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_100;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_105;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v92;
      a4 = v90;
      if (v92 >= v6)
      {
        v95 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_25E60CBE4(&v95, *a1, a3);
LABEL_89:
}

void sub_25E60C590(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      i = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *a3 + 32 * i;
        v12 = *a3 + 32 * v7;
        if (*(v11 + 16) == *(v12 + 16) && *(v11 + 24) == *(v12 + 24))
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_25E636070();
        }

        v15 = (v12 + 88);
        for (i = v9 + 2; i < v6; ++i)
        {
          if (*(v15 - 1) == *(v15 - 5) && *v15 == *(v15 - 4))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_25E636070()))
          {
            break;
          }

          v15 += 4;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (i < v9)
        {
          goto LABEL_121;
        }

        if (v9 < i)
        {
          v17 = 32 * i - 16;
          v18 = 32 * v9 + 24;
          v19 = i;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v18);
              v23 = (v21 + v17);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v20;
            v17 -= 32;
            v18 += 32;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v28 = a3[1];
      if (i < v28)
      {
        if (__OFSUB__(i, v9))
        {
          goto LABEL_120;
        }

        if (i - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = (v9 + a4);
          }

          if (v29 < v9)
          {
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
            return;
          }

          if (i != v29)
          {
            v30 = *a3;
            v31 = *a3 + 32 * i - 32;
            v93 = v9;
            v32 = (v9 - i);
            do
            {
              v33 = i;
              v34 = v30 + 32 * i;
              v35 = *(v34 + 16);
              v36 = *(v34 + 24);
              v37 = v32;
              v38 = v31;
              do
              {
                v39 = v35 == *(v38 + 16) && v36 == *(v38 + 24);
                if (v39 || (sub_25E636070() & 1) == 0)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_124;
                }

                v40 = *(v38 + 32);
                v41 = *(v38 + 40);
                v35 = *(v38 + 48);
                v36 = *(v38 + 56);
                v42 = *(v38 + 16);
                *(v38 + 32) = *v38;
                *(v38 + 48) = v42;
                *v38 = v40;
                *(v38 + 8) = v41;
                *(v38 + 16) = v35;
                *(v38 + 24) = v36;
                v38 -= 32;
              }

              while (!__CFADD__(v37++, 1));
              i = v33 + 1;
              v31 += 32;
              --v32;
            }

            while ((v33 + 1) != v29);
            i = v29;
            v9 = v93;
          }
        }
      }

      if (i < v9)
      {
        goto LABEL_119;
      }

      v92 = i;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = v8[2];
        sub_25E60A3B4();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_25E60A3B4();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v92;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_69:
            if (v54)
            {
              goto LABEL_109;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_112;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_117;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v45 < 2)
          {
            goto LABEL_111;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_84:
          if (v69)
          {
            goto LABEL_114;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_116;
          }

          if (v76 < v68)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v48 - 1 >= v45)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_25E60D1C0((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v83 < v81)
          {
            goto LABEL_104;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_105;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_106;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_98;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_107;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_108;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_110;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v92;
      if (v92 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_25E60CD1C(&v96, *a1, a3);
LABEL_102:
}

uint64_t sub_25E60CAB8(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25E60D384(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_25E60CE48((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_25E60CBE4(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25E60D384(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_25E60CFEC((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_25E60CD1C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25E60D384(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_25E60D1C0((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_25E60CE48(double *__src, double *__dst, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[2 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 2;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 2;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 2;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = *v13;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[2 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[2 * v9];
LABEL_25:
  v16 = v6 - 2;
  for (v5 -= 2; v11 > v4 && v6 > v7; v5 -= 2)
  {
    if (*(v11 - 2) < *v16)
    {
      v14 = v5 + 2 == v6;
      v6 -= 2;
      if (!v14)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 2)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 2;
  }

LABEL_38:
  v18 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v18])
  {
    memmove(v6, v4, 16 * v18);
  }

  return 1;
}

uint64_t sub_25E60CFEC(double *__src, double *__dst, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 40;
  v9 = (a3 - __dst) / 40;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[5 * v8] <= a4)
    {
      memmove(a4, __src, 40 * v8);
    }

    v11 = &v4[5 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 5;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 5;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 5;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[5 * v9] <= a4)
  {
    memmove(a4, __dst, 40 * v9);
  }

  v11 = &v4[5 * v9];
LABEL_25:
  v18 = v6 - 5;
  for (v5 -= 40; v11 > v4 && v6 > v7; v5 -= 40)
  {
    if (*(v11 - 5) < *v18)
    {
      v14 = v5 + 40 == v6;
      v6 -= 5;
      if (!v14)
      {
        v22 = *v18;
        v23 = *(v18 + 1);
        *(v5 + 32) = v18[4];
        *v5 = v22;
        *(v5 + 16) = v23;
        v6 = v18;
      }

      goto LABEL_25;
    }

    if (v11 != (v5 + 40))
    {
      v20 = *(v11 - 5);
      v21 = *(v11 - 3);
      *(v5 + 32) = *(v11 - 1);
      *v5 = v20;
      *(v5 + 16) = v21;
    }

    v11 -= 5;
  }

LABEL_38:
  v24 = (v11 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[5 * v24])
  {
    memmove(v6, v4, 40 * v24);
  }

  return 1;
}

uint64_t sub_25E60D1C0(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[32 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (v13 || (sub_25E636070() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 32;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 32;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 32;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *(v14 + 1);
    *v7 = *v14;
    *(v7 + 1) = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[32 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[32 * v9];
LABEL_29:
  for (v5 -= 32; v11 > v4 && v6 > v7; v5 -= 32)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_25E636070() & 1) != 0)
    {
      v20 = v6 - 32;
      v13 = v5 + 32 == v6;
      v6 -= 32;
      if (!v13)
      {
        v21 = *(v20 + 1);
        *v5 = *v20;
        *(v5 + 1) = v21;
        v6 = v20;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 32)
    {
      v19 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v19;
    }

    v11 -= 32;
  }

LABEL_46:
  v22 = (v11 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v22])
  {
    memmove(v6, v4, 32 * v22);
  }

  return 1;
}

char *sub_25E60D398(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_16_2(a3, result);
  }

  return result;
}

char *sub_25E60D3B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9220, &qword_25E63B2F0);
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

unint64_t sub_25E60D4B8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_25E636110();
  sub_25E61D8BC(v6, a1);
  v4 = sub_25E636130();

  return sub_25E60D758(a1, v4);
}

unint64_t sub_25E60D524(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25E6355A0();
  sub_25E60EF80(&qword_27FCF91A8);
  v5 = sub_25E635760();

  return sub_25E60D860(a1, v5);
}

unint64_t sub_25E60D5A8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_25E636110();
  MEMORY[0x25F8B9DE0](a1);
  v4 = sub_25E636130();

  return sub_25E60DA08(a1, v4);
}

unint64_t sub_25E60D614(double a1)
{
  v3 = *(v1 + 40);
  v4 = sub_25E636100();

  return sub_25E60DA68(v4, a1);
}

unint64_t sub_25E60D660(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25E636110();
  sub_25E635860();
  v6 = sub_25E636130();

  return sub_25E60DAC4(a1, a2, v6);
}

unint64_t sub_25E60D6D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25E636110();
  sub_25E61D8BC(v8, a1);
  sub_25E61D87C(v8, a2);
  v6 = sub_25E636130();

  return sub_25E60DB78(a1, a2, v6);
}

unint64_t sub_25E60D758(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_25E636070() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25E60D860(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_25E6355A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_25E60EF80(&qword_27FCF9258);
    v10 = sub_25E6357B0();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_25E60DA08(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_25E60DA68(uint64_t a1, double a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_25E60DAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_25E636070() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_25E60DB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = ~v5;
    v9 = *(a1 + 16);
    v10 = *(v3 + 48);
    v23 = (a2 + 32);
    v22 = (a1 + 40);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = *v11;
      if (*(*v11 + 16) == v9)
      {
        v13 = v11[1];
        if (!v9 || v12 == a1)
        {
LABEL_13:
          v18 = *(v13 + 16);
          if (v18 == *(a2 + 16))
          {
            if (!v18 || v13 == a2)
            {
              return v6;
            }

            v19 = (v13 + 32);
            for (i = v23; *v19 == *i; ++i)
            {
              ++v19;
              if (!--v18)
              {
                return v6;
              }
            }
          }
        }

        else
        {
          v14 = (v12 + 40);
          v15 = v22;
          v16 = v9;
          while (1)
          {
            v17 = *(v14 - 1) == *(v15 - 1) && *v14 == *v15;
            if (!v17 && (sub_25E636070() & 1) == 0)
            {
              break;
            }

            v14 += 2;
            v15 += 2;
            if (!--v16)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v6 = (v6 + 1) & v8;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_25E60DCEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9180, &qword_25E63B180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E60DD54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootEventRecorder.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E60DDB8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_25E60D5A8(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9248, &qword_25E63B318);
  result = sub_25E635EA0();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = *v3;
  result = sub_25E60D5A8(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_25E6360A0();
    __break(1u);
    return result;
  }

  v9 = result;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    *(v14[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_25E61D400(v9, a2, a1, v14);
  }

  return result;
}

uint64_t sub_25E60DEC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootEventRecorder.Event(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E60DF94()
{
  result = qword_27FCF91C8;
  if (!qword_27FCF91C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCF91C8);
  }

  return result;
}

uint64_t sub_25E60DFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25E60D660(a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9208, &qword_25E63B2D8);
  if ((sub_25E635EA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  v16 = sub_25E60D660(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_25E6360A0();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    v20 = v19[1];
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_25E61D444(v13, a3, a4, a1, a2, v18);
  }
}

uint64_t sub_25E60E12C()
{
  v4 = v1;
  OUTLINED_FUNCTION_37();
  v5 = *v1;
  sub_25E60D6D8(v6, v7);
  OUTLINED_FUNCTION_7_3();
  if (__OFADD__(v10, v11))
  {
    __break(1u);
LABEL_14:
    result = sub_25E6360A0();
    __break(1u);
    return result;
  }

  v12 = v8;
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9200, &unk_25E63B2C8);
  if (sub_25E635EA0())
  {
    v14 = *v4;
    sub_25E60D6D8(v2, v0);
    OUTLINED_FUNCTION_4_5();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  v17 = *v4;
  if (v13)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = v3;
  }

  else
  {
    sub_25E61D490(v12, v2, v0, v3, v17);
  }
}

uint64_t sub_25E60E258()
{
  v0 = sub_25E60E730();
  v4 = sub_25E60E764(v0, v1, v2, v3);

  return v4;
}

unint64_t sub_25E60E2C4()
{
  result = qword_27FCF91D0;
  if (!qword_27FCF91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF91D0);
  }

  return result;
}

uint64_t type metadata accessor for EventRecorderDiagramRenderer()
{
  result = qword_27FCF91D8;
  if (!qword_27FCF91D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E60E36C()
{
  result = sub_25E635570();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventRecorderDiagramRenderer.Color(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EventRecorderDiagramRenderer.Color(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25E60E65C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 104))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 96);
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

uint64_t sub_25E60E6B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2;
    }
  }

  return result;
}

uint64_t sub_25E60E764(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25E635850();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_25E635D40();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_25E60AE48(v9, 0);
  v12 = sub_25E60E8C4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_25E635850();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_25E635E40();
LABEL_4:

  return sub_25E635850();
}

unint64_t sub_25E60E8C4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_25E60EAD4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25E6358C0();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_25E635E40();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_25E60EAD4(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_25E6358A0();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_25E60EAD4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25E6358D0();
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
    v5 = MEMORY[0x25F8B9570](15, a1 >> 16);
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

void *sub_25E60EBA0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
      v13 = *(*(a4 + 48) + v12);
      v14 = *(*(a4 + 56) + v12);
      v7 &= v7 - 1;
      *a2 = v13;
      a2[1] = v14;
      a2 += 2;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_25E60EC94(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = v12 | (v9 << 6);
      v14 = *(*(a4 + 48) + 8 * v13);
      v15 = (*(a4 + 56) + 32 * v13);
      v16 = *v15;
      v17 = v15[1];
      *a2 = v14;
      *(a2 + 8) = v16;
      *(a2 + 24) = v17;
      a2 += 40;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25E60ED8C(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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

unint64_t sub_25E60EF1C()
{
  result = qword_280CB2808;
  if (!qword_280CB2808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF9198, &qword_25E63B198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB2808);
  }

  return result;
}

uint64_t sub_25E60EF80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25E6355A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25E60EFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9260, &qword_25E63B328);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E60F034()
{
  result = qword_27FCF9270;
  if (!qword_27FCF9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9270);
  }

  return result;
}

void OUTLINED_FUNCTION_1_5()
{
  v3[(v2 >> 6) + 8] |= 1 << v2;
  *(v3[6] + 8 * v2) = v0;
  *(v3[7] + 8 * v2) = v1;
  v4 = v3[2];
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_18_1(uint64_t a1@<X8>)
{
  *(a1 + 8 * (v1 >> 6) + 64) |= 1 << v1;
  *(*(a1 + 48) + 8 * v1) = v2;
  v3 = *(a1 + 56);
}

unint64_t OUTLINED_FUNCTION_26()
{
  *(v2 - 240) = v1;

  return sub_25E60D4B8(v0);
}

uint64_t OUTLINED_FUNCTION_27()
{
  result = v1;
  *(v2 - 336) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_35()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_38(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_39(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

unint64_t OUTLINED_FUNCTION_40()
{
  *(v2 - 256) = *(v0 + v1);
  *(v0 + v1) = 0x8000000000000000;

  return sub_25E60D614(v4);
}

uint64_t OUTLINED_FUNCTION_41()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_47(const __CTLine *a1)
{

  *&result = CTLineGetBoundsWithOptions(a1, 0);
  return result;
}

unint64_t OUTLINED_FUNCTION_48()
{
  v3 = *(v1 - 240);

  return sub_25E60D4B8(v0);
}

uint64_t OUTLINED_FUNCTION_54()
{

  return sub_25E635EA0();
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1)
{

  return CGPointMake(a1);
}

void OUTLINED_FUNCTION_56()
{

  CGContextDrawPath(v0, kCGPathStroke);
}

uint64_t sub_25E60F494(uint64_t a1)
{
  if ((a1 - 1664) < 2)
  {
    v7 = 0;
    v9 = MEMORY[0x277D84FA0];
    v8 = 2;
    goto LABEL_20;
  }

  switch(a1)
  {
    case 287:
    case 421:
      goto LABEL_18;
    case 595:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25E63A3E0;
      v5 = 595;
      goto LABEL_19;
    case 839:
      goto LABEL_18;
    case 881:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_25E63A3E0;
      *(v10 + 32) = 881;
      v9 = sub_25E612764(v10);
      v8 = 0;
      v7 = 2;
      goto LABEL_20;
  }

  if (a1 == 910 || a1 == 1086 || a1 == 1533 || (a1 != 1663 ? (v2 = a1 == 15291) : (v2 = 1), !v2 ? (v3 = a1 == 10932) : (v3 = 1), v3))
  {
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25E63A3E0;
    v5 = 492;
LABEL_19:
    *(inited + 32) = v5;
    v9 = sub_25E612764(inited);
    v8 = 0;
    v7 = 1;
    goto LABEL_20;
  }

  v7 = 0;
  v8 = 0;
  v9 = MEMORY[0x277D84FA0];
LABEL_20:
  type metadata accessor for UtilitySceneConfiguration();
  swift_allocObject();
  return sub_25E5F60A8(a1, v8, v7, v9);
}

uint64_t sub_25E60F680(uint64_t a1)
{
  result = MEMORY[0x277D84FA0];
  switch(a1)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25E63B450;
      *(inited + 32) = xmmword_25E63B460;
      *(inited + 48) = xmmword_25E63B470;
      *(inited + 64) = xmmword_25E63B480;
      *(inited + 80) = 1663;
      return sub_25E5F696C(inited);
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25E63A3E0;
      v4 = 1086;
      goto LABEL_10;
    case 3:
    case 5:
    case 6:
    case 7:
      return result;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25E63B490;
      *(inited + 32) = xmmword_25E63B4A0;
      *(inited + 48) = xmmword_25E63B4B0;
      *(inited + 64) = xmmword_25E63B4C0;
      *(inited + 80) = xmmword_25E63B4D0;
      *(inited + 96) = xmmword_25E63B4E0;
      *(inited + 112) = xmmword_25E63B4F0;
      *(inited + 128) = xmmword_25E63B500;
      *(inited + 144) = xmmword_25E63B510;
      *(inited + 160) = xmmword_25E63B520;
      return sub_25E5F696C(inited);
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25E63A3E0;
      v4 = 1664;
      goto LABEL_10;
    default:
      if (a1 == 16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_25E63A3E0;
        v4 = 2147482095;
      }

      else
      {
        if (a1 != 32)
        {
          return result;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_25E63A3E0;
        v4 = 839;
      }

LABEL_10:
      *(inited + 32) = v4;
      return sub_25E5F696C(inited);
  }
}

uint64_t sub_25E60F888(uint64_t a1)
{
  if (a1 == 4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
    inited = swift_initStackObject();
    inited[1] = xmmword_25E63B530;
    inited[2] = xmmword_25E63B540;
    inited[3] = xmmword_25E63B550;
    inited[4] = xmmword_25E63B560;
    inited[5] = xmmword_25E63B570;
    return sub_25E5F696C(inited);
  }

  if (a1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
    inited = swift_initStackObject();
    inited[1] = xmmword_25E63B580;
    inited[2] = xmmword_25E63B590;
    inited[3] = xmmword_25E63B5A0;
    inited[4] = xmmword_25E63B5B0;
    inited[5] = xmmword_25E63B5C0;
    inited[6] = xmmword_25E63B5D0;
    inited[7] = xmmword_25E63B5E0;
    inited[8] = xmmword_25E63B5F0;
    return sub_25E5F696C(inited);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t static PartOfWeek.partOfWeek(for:in:)@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6355E0();
  *a1 = result & 1;
  return result;
}

Swift::String __swiftcall PartOfWeek.localizedText()()
{
  *v0;
  type metadata accessor for LocalizedString();
  v1 = static LocalizedString.localizedString(forKey:)();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t PartOfWeek.localizedSynonyms()()
{
  if (*v0)
  {
    v1 = "ilityTypeConfiguration";
  }

  else
  {
    v1 = "PNPartOfWeekWeekendText";
  }

  v6 = v1 | 0x8000000000000000;

  v2 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x25F8B9540](v2, 0xE800000000000000);

  type metadata accessor for LocalizedString();
  static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000017, v6);
  v4 = v3;

  return v4;
}

uint64_t static PartOfWeek.from(localizedText:)@<X0>(char *a1@<X8>)
{
  v1 = sub_25E635830();
  v3 = v2;
  type metadata accessor for LocalizedString();
  v4 = 0;
  v5 = 0;
  v32 = v1;
  v33 = v3;
  while (1)
  {
    v6 = v4;
    v7 = *(&unk_28704A3A8 + v5 + 32);
    v8 = "PNPartOfWeekWeekdayText";
    if (v7)
    {
      v8 = "PNPartOfWeekWeekendText";
    }

    v9 = (v8 - 32) | 0x8000000000000000;
    static LocalizedString.localizedString(forKey:)();

    v10 = sub_25E635830();
    v12 = v11;

    if (v10 == v1 && v12 == v3)
    {
      break;
    }

    v14 = sub_25E636070();

    if (v14)
    {
      goto LABEL_21;
    }

    v15 = OUTLINED_FUNCTION_0_0();
    MEMORY[0x25F8B9540](v15, 0xE800000000000000);

    static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000017, v9);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v34 = MEMORY[0x277D84F90];
      sub_25E5F3468();
      v19 = v34;
      v20 = (v17 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v23 = sub_25E635830();
        v25 = v24;
        v26 = *(v34 + 16);
        if (v26 >= *(v34 + 24) >> 1)
        {
          sub_25E5F3468();
        }

        *(v34 + 16) = v26 + 1;
        v27 = v34 + 16 * v26;
        *(v27 + 32) = v23;
        *(v27 + 40) = v25;
        v20 += 2;
        --v18;
      }

      while (v18);

      v1 = v32;
      v3 = v33;
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
    }

    v28 = sub_25E5F68AC(v19);
    v29 = sub_25E5F6F28(v1, v3, v28);

    if (v29)
    {
      goto LABEL_21;
    }

    v4 = 1;
    v5 = 1u;
    if (v6)
    {

      v7 = 2;
      goto LABEL_22;
    }
  }

LABEL_21:

LABEL_22:
  *a1 = v7;
  return result;
}

PhotosIntelligenceCore::PartOfWeek_optional __swiftcall PartOfWeek.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E635F30();

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

uint64_t PartOfWeek.rawValue.getter()
{
  if (*v0)
  {
    return 0x646E656B656577;
  }

  else
  {
    return 0x7961646B656577;
  }
}

uint64_t sub_25E60FE68@<X0>(uint64_t *a1@<X8>)
{
  result = PartOfWeek.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_25E60FF54()
{
  v0 = sub_25E6355B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25E6355F0();
  __swift_allocate_value_buffer(v5, qword_280CB2198);
  __swift_project_value_buffer(v5, qword_280CB2198);
  (*(v1 + 104))(v4, *MEMORY[0x277CC9830], v0);
  sub_25E6355C0();
  return (*(v1 + 8))(v4, v0);
}

void sub_25E610074(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  if (qword_280CB2190 != -1)
  {
    swift_once();
  }

  v4 = sub_25E6355F0();
  __swift_project_value_buffer(v4, qword_280CB2198);
  v5 = sub_25E6355E0();
  v6 = "PNPartOfWeekWeekdayText";
  if (v5)
  {
    v6 = "PNPartOfWeekWeekendText";
  }

  v7 = (v6 - 32) | 0x8000000000000000;
  type metadata accessor for LocalizedString();
  static LocalizedString.localizedString(forKey:)();

  MEMORY[0x25F8B9540](0x736D796E6F6E7953, 0xE800000000000000);

  static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000017, v7);
  v9 = v8;

  sub_25E5F68AC(v9);
  v10 = sub_25E6357C0();
  v11 = sub_25E635B30();
  (a3)[2](a3, v10, v11);

  _Block_release(a3);
}

uint64_t static PNPartOfWeekCalculator.partOfWeekLocalizedStrings(for:result:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  if (qword_280CB2190 != -1)
  {
    swift_once();
  }

  v3 = sub_25E6355F0();
  __swift_project_value_buffer(v3, qword_280CB2198);
  v4 = sub_25E6355E0();
  v5 = "PNPartOfWeekWeekdayText";
  if (v4)
  {
    v5 = "PNPartOfWeekWeekendText";
  }

  v6 = (v5 - 32) | 0x8000000000000000;
  type metadata accessor for LocalizedString();
  v7 = static LocalizedString.localizedString(forKey:)();
  v9 = v8;

  v10 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x25F8B9540](v10, 0xE800000000000000);

  static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000017, v6);
  v12 = v11;

  v13 = sub_25E5F68AC(v12);
  a2(v7, v9, v13);
}

PNPartOfWeekCalculator __swiftcall PNPartOfWeekCalculator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_25E610538()
{
  result = qword_27FCF9290;
  if (!qword_27FCF9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9290);
  }

  return result;
}

unint64_t sub_25E610590()
{
  result = qword_27FCF9298;
  if (!qword_27FCF9298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF92A0, &qword_25E63B710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9298);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PartOfWeek(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t type metadata accessor for PNPartOfWeekCalculator()
{
  result = qword_27FCF92A8;
  if (!qword_27FCF92A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCF92A8);
  }

  return result;
}

unint64_t sub_25E610714()
{
  result = qword_27FCF92B0;
  if (!qword_27FCF92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF92B0);
  }

  return result;
}

uint64_t sub_25E610768(unsigned __int8 a1, char a2)
{
  v2 = 0x676E696E726F6DLL;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x676E696E726F6DLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1852796782;
      break;
    case 2:
      v5 = 0x6F6F6E7265746661;
      v3 = 0xE90000000000006ELL;
      break;
    case 3:
      v5 = 0x676E696E657665;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x746867696ELL;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1852796782;
      break;
    case 2:
      v2 = 0x6F6F6E7265746661;
      v6 = 0xE90000000000006ELL;
      break;
    case 3:
      v2 = 0x676E696E657665;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x746867696ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_6();
  }

  return v8 & 1;
}

uint64_t sub_25E6108C0(char a1, char a2)
{
  if (*&aSpring_2[8 * a1] == *&aSpring_2[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25E636070();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_25E610928(unsigned __int8 a1, char a2)
{
  v2 = 0x6465726975716572;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x697469726F697270;
    }

    else
    {
      v4 = 0x6B61657262656974;
    }

    if (v3 == 1)
    {
      v5 = 0xEB0000000064657ALL;
    }

    else
    {
      v5 = 0xEA00000000007265;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x6465726975716572;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x697469726F697270;
    }

    else
    {
      v2 = 0x6B61657262656974;
    }

    if (a2 == 1)
    {
      v6 = 0xEB0000000064657ALL;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_6();
  }

  return v8 & 1;
}

uint64_t sub_25E610A30(char a1, char a2)
{
  v2 = "ening";
  if (a1)
  {
    v3 = "generic location";
  }

  else
  {
    v3 = "ening";
  }

  if (a2)
  {
    v2 = "generic location";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25E636070();
  }

  return v4 & 1;
}

uint64_t sub_25E610ACC(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x6C6C616D73;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6D756964656DLL;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x656772616CLL;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x656772616C78;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x6C6C616D73;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6D756964656DLL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x656772616CLL;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x656772616C78;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_6();
  }

  return v8 & 1;
}

uint64_t sub_25E610C20(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0x6E6974617265706FLL;
    }

    if (v2 == 1)
    {
      v4 = 0x800000025E6384B0;
    }

    else
    {
      v4 = 0xEE00746E696F5067;
    }
  }

  else
  {
    v4 = 0x800000025E638490;
    v3 = 0xD00000000000001BLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0x6E6974617265706FLL;
    }

    if (a2 == 1)
    {
      v6 = 0x800000025E6384B0;
    }

    else
    {
      v6 = 0xEE00746E696F5067;
    }
  }

  else
  {
    v6 = 0x800000025E638490;
    v5 = 0xD00000000000001BLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_6();
  }

  return v8 & 1;
}

uint64_t sub_25E610D04(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000797261;
  v3 = 0x73726576696E6E61;
  v4 = a1;
  v5 = 0x73726576696E6E61;
  v6 = 0xEB00000000797261;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x7961646874726962;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = 0x676E6964646577;
      break;
    case 3:
      v5 = 0x6C616E6F73726570;
      v6 = 0xEE00746E65766520;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x7961646874726962;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x676E6964646577;
      break;
    case 3:
      v3 = 0x6C616E6F73726570;
      v2 = 0xEE00746E65766520;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25E636070();
  }

  return v8 & 1;
}

uint64_t sub_25E610E70(unsigned __int8 a1, char a2)
{
  v2 = 0x747265636E6F63;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x20796164696C6F68;
    }

    else
    {
      v4 = 0x76652074726F7073;
    }

    if (v3 == 1)
    {
      v5 = 0xED0000746E657665;
    }

    else
    {
      v5 = 0xEB00000000746E65;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x747265636E6F63;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x20796164696C6F68;
    }

    else
    {
      v2 = 0x76652074726F7073;
    }

    if (a2 == 1)
    {
      v6 = 0xED0000746E657665;
    }

    else
    {
      v6 = 0xEB00000000746E65;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_6();
  }

  return v8 & 1;
}

uint64_t sub_25E610F88(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x7361666B61657262;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x68636E756CLL;
    }

    else
    {
      v5 = 0x72656E6E6964;
    }

    if (v4 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0x7361666B61657262;
    v6 = 0xE900000000000074;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x68636E756CLL;
    }

    else
    {
      v3 = 0x72656E6E6964;
    }

    if (a2 == 1)
    {
      v2 = 0xE500000000000000;
    }

    else
    {
      v2 = 0xE600000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25E636070();
  }

  return v8 & 1;
}