char *sub_1D4DD8298(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_6(a3, result);
  }

  return result;
}

char *sub_1D4DD82B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_6(a3, result);
  }

  return result;
}

void *sub_1D4DD82DC(void *a1, int64_t a2, char a3)
{
  result = sub_1D4DD8448(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D4DD82FC(char *a1, int64_t a2, char a3)
{
  result = sub_1D4DD8568(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D4DD831C(char *a1, int64_t a2, char a3)
{
  result = sub_1D4DD8694(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D4DD833C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1, &qword_1EC7E43E8);

  return sub_1D4DD7DCC();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1D4DD83D8(void *a1, int64_t a2, char a3)
{
  result = sub_1D4DD87B4(a1, a2, a3, *v3, &qword_1EC7E3A48, &qword_1EC7E3760);
  *v3 = result;
  return result;
}

void *sub_1D4DD8410(void *a1, int64_t a2, char a3)
{
  result = sub_1D4DD87B4(a1, a2, a3, *v3, &qword_1EC7E4408, &qword_1EC7E3710);
  *v3 = result;
  return result;
}

void *sub_1D4DD8448(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D4DD922C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[10 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D4D9E504();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D4DD8568(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D4DD92DC(0, &qword_1EC7E4410, &type metadata for FacetAvailability, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D4DD8694(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D4DD92DC(0, &qword_1EC7E43F8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D4DD87B4(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_1D4DD9284(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 != a4 || &a4[5 * v11 + 4] <= v13 + 4)
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D4DA1130(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1D4DD88F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1D4E0F9C0;
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

uint64_t sub_1D4DD895C()
{
  v1 = v0;
  v2 = *v0;
  sub_1D4DD91D4();
  result = sub_1D4E0CF30();
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
      sub_1D4DD88F8(0, (v27 + 63) >> 6, v2 + 56);
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
    sub_1D4E0D1D0();
    sub_1D4E0CB50();
    result = sub_1D4E0D1F0();
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

BOOL sub_1D4DD8BAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D4E0D1D0();
  sub_1D4E0CB50();
  v8 = sub_1D4E0D1F0();
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
    if (v13 || (sub_1D4E0D170() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;
      sub_1D4E0CA10();
      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  sub_1D4E0CA10();
  sub_1D4DD8CF8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_1D4DD8CF8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1D4DD895C();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1D4DD8FAC();
LABEL_10:
      v15 = *v4;
      sub_1D4E0D1D0();
      sub_1D4E0CB50();
      result = sub_1D4E0D1F0();
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
        if (v18 || (sub_1D4E0D170() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1D4DD8E60();
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
    result = sub_1D4E0D1A0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1D4DD8E60()
{
  v1 = v0;
  sub_1D4DD91D4();
  v2 = *v0;
  v3 = sub_1D4E0CF20();
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
        result = sub_1D4E0CA10();
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

uint64_t sub_1D4DD8FAC()
{
  v1 = v0;
  v2 = *v0;
  sub_1D4DD91D4();
  result = sub_1D4E0CF30();
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
        sub_1D4E0D1D0();
        sub_1D4E0CA10();
        sub_1D4E0CB50();
        result = sub_1D4E0D1F0();
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

void sub_1D4DD91D4()
{
  if (!qword_1EC7E43F0)
  {
    v0 = sub_1D4E0CF40();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E43F0);
    }
  }
}

void sub_1D4DD922C()
{
  if (!qword_1EC7E4400)
  {
    sub_1D4D9E504();
    v0 = sub_1D4E0D150();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E4400);
    }
  }
}

void sub_1D4DD9284(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D4DA1130(255, a3);
    v4 = sub_1D4E0D150();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D4DD92DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D4DD933C(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1D4DD93C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D4DD94A4()
{
  result = qword_1EC7E4418;
  if (!qword_1EC7E4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4418);
  }

  return result;
}

unint64_t sub_1D4DD94FC()
{
  result = qword_1EC7E4420;
  if (!qword_1EC7E4420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4420);
  }

  return result;
}

unint64_t sub_1D4DD9554()
{
  result = qword_1EC7E4428;
  if (!qword_1EC7E4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4428);
  }

  return result;
}

unint64_t sub_1D4DD95AC()
{
  result = qword_1EE08A6A8;
  if (!qword_1EE08A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08A6A8);
  }

  return result;
}

unint64_t sub_1D4DD9604()
{
  result = qword_1EE08A6B0;
  if (!qword_1EE08A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08A6B0);
  }

  return result;
}

unint64_t sub_1D4DD965C()
{
  result = qword_1EE08A6B8;
  if (!qword_1EE08A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08A6B8);
  }

  return result;
}

void OUTLINED_FUNCTION_7_4(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E87A0];

  sub_1D4DD8168(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return sub_1D4E0D1D0();
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return sub_1D4E0CAB0();
}

void OUTLINED_FUNCTION_22_3()
{

  JUMPOUT(0x1DA6E0F50);
}

uint64_t OUTLINED_FUNCTION_23_2()
{

  return sub_1D4E0D130();
}

uint64_t Features.Sonic.init(rawValue:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1D4E0C850();
  OUTLINED_FUNCTION_5_4();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  (*(v6 + 16))(&v25 - v11, a1, v2);
  sub_1D4E0C840();
  sub_1D4DD8110();
  OUTLINED_FUNCTION_0_7();
  v12 = sub_1D4E0CAB0();
  v13 = *(v6 + 8);
  v13(v10, v2);
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_4();
    (v13)(v14);
    v15 = OUTLINED_FUNCTION_90();
    result = (v13)(v15);
    v17 = 0;
  }

  else
  {
    sub_1D4E0C840();
    OUTLINED_FUNCTION_0_7();
    sub_1D4E0CAB0();
    v18 = OUTLINED_FUNCTION_1_4();
    (v13)(v18);
    sub_1D4E0C840();
    OUTLINED_FUNCTION_0_7();
    sub_1D4E0CAB0();
    v19 = OUTLINED_FUNCTION_1_4();
    (v13)(v19);
    sub_1D4E0C840();
    OUTLINED_FUNCTION_0_7();
    sub_1D4E0CAB0();
    v20 = OUTLINED_FUNCTION_1_4();
    (v13)(v20);
    sub_1D4E0C840();
    OUTLINED_FUNCTION_0_7();
    sub_1D4E0CAB0();
    v21 = OUTLINED_FUNCTION_1_4();
    (v13)(v21);
    sub_1D4E0C840();
    OUTLINED_FUNCTION_0_7();
    v22 = sub_1D4E0CAB0();
    v23 = OUTLINED_FUNCTION_3_4();
    (v13)(v23);
    v13(v10, v2);
    v24 = OUTLINED_FUNCTION_90();
    result = (v13)(v24);
    if (v22)
    {
      v17 = 5;
    }

    else
    {
      v17 = 6;
    }
  }

  *a2 = v17;
  return result;
}

uint64_t Features.Sonic.hashValue.getter()
{
  v1 = *v0;
  sub_1D4E0D1D0();
  MEMORY[0x1DA6E0F50](v1);
  return sub_1D4E0D1F0();
}

uint64_t Features.MediaRemote.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  sub_1D4E0C850();
  OUTLINED_FUNCTION_5_4();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = OUTLINED_FUNCTION_0_7();
  v10(v9);
  sub_1D4E0C840();
  sub_1D4DD8110();
  v11 = sub_1D4E0CAB0();
  v12 = *(v4 + 8);
  v13 = OUTLINED_FUNCTION_90();
  v12(v13);
  v14 = OUTLINED_FUNCTION_3_4();
  v12(v14);
  result = (v12)(v8, v1);
  *a1 = (v11 & 1) == 0;
  return result;
}

uint64_t Features.MediaRemote.hashValue.getter()
{
  sub_1D4E0D1D0();
  MEMORY[0x1DA6E0F50](0);
  return sub_1D4E0D1F0();
}

uint64_t sub_1D4DD9E74()
{
  sub_1D4E0D1D0();
  MEMORY[0x1DA6E0F50](0);
  return sub_1D4E0D1F0();
}

unint64_t sub_1D4DD9EB8()
{
  result = qword_1EE08A6D8;
  if (!qword_1EE08A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08A6D8);
  }

  return result;
}

unint64_t sub_1D4DD9F10()
{
  result = qword_1EE08A6F0;
  if (!qword_1EE08A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08A6F0);
  }

  return result;
}

unint64_t sub_1D4DD9F6C()
{
  result = qword_1EE08A6C8;
  if (!qword_1EE08A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08A6C8);
  }

  return result;
}

unint64_t sub_1D4DD9FE0()
{
  result = qword_1EE08A6D0;
  if (!qword_1EE08A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08A6D0);
  }

  return result;
}

unint64_t sub_1D4DDA038()
{
  result = qword_1EE08A6C0;
  if (!qword_1EE08A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08A6C0);
  }

  return result;
}

uint64_t sub_1D4DDA0A0(uint64_t a1)
{
  v2 = sub_1D4DDA038();

  return MEMORY[0x1EEE41830](a1, v2);
}

uint64_t getEnumTagSinglePayload for Features.Sonic(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Features.Sonic(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D4DDA23C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void aslgmuibau()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1E84C00F0 + ((-3 * (dword_1EC7E4A00 ^ 0x8A ^ dword_1EC7E49D8)) ^ byte_1D4E31F80[byte_1D4E31C60[(-3 * (dword_1EC7E4A00 ^ 0x8A ^ dword_1EC7E49D8))] ^ 7]) + 16);
  v1 = *(v0 - 4);
  v2 = *(&off_1E84C00F0 + (byte_1D4E31968[(byte_1D4E3165C[(-3 * (v1 ^ dword_1EC7E49D8 ^ 0x8A)) - 12] ^ 0xC3) - 8] ^ (-3 * (v1 ^ dword_1EC7E49D8 ^ 0x8A))) - 58);
  v3 = v1 - &v8 + *v2;
  v4 = 1543604477 * v3 + 0x6D4BA15110163F62;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = *(&off_1E84C00F0 + ((-3 * ((dword_1EC7E49D8 - dword_1EC7E4A00) ^ 0x8A)) ^ byte_1D4E31550[byte_1D4E320D0[(-3 * ((dword_1EC7E49D8 - dword_1EC7E4A00) ^ 0x8A))] ^ 0xE2]) - 111) - 12;
  v7 = *&v6[8 * ((60 * ((*&v6[8 * (byte_1D4E31558[(byte_1D4E320D0[(-3 * ((v5 + *(v0 - 4)) ^ 0x8A))] ^ 0x80) - 8] ^ (-3 * ((v5 + *(v0 - 4)) ^ 0x8A))) + 21576])(24, 0x1010040E2407E0ALL) != 0)) | 0x682)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4DDA4FC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x78D94BCC6DAD3D9BLL;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((459 * (v3 != 0)) ^ 0x4FDu)))();
}

uint64_t sub_1D4DDA64C()
{
  v5 = *(v3 + 8) + 1822127336;
  v6 = ((v2 - 31) ^ 0x616F660B) + ((v2 - 294191445) & 0x1188FFFDu) + v0 > v5;
  if (v1 > 0x25B74D78 != v5 < 0xDA48B283)
  {
    v6 = v1 > 0x25B74D78;
  }

  return (*(v4 + 8 * (((2 * !v6) | (8 * !v6)) ^ v2)))();
}

void sub_1D4DDA6E0()
{
  v8 = v3 ^ (v6 + 851);
  v9 = *v4;
  *(*v4 + v2) = 0;
  *(v9 + (v8 - 1289608258 + v1)) = 0;
  v10 = v1 - 2027506636;
  *(v9 + (v10 + 3)) = 1;
  *(v9 + (v10 + 2)) = 0;
  *v0 += 4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D4DDAC0C()
{
  v6 = *(v3 + 8) - 1523222835 + v4 + (v0 ^ 0x6B0) - 2015;
  v7 = v2 > 0x1918BB1C;
  v8 = v1 + 1846409495 > v6;
  if (v7 != v6 < 0xE6E744DF)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((1289 * v8) ^ v0)))();
}

uint64_t sub_1D4DDB094(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v8 + 12);
  *(a6 + 8) = v8 + 12;
  return (*(v10 + 8 * ((((v11 + v7) < 0xFFFFFFFC) * (a2 + v6 - 586 + v9 + v6 - 972 + 740)) ^ v6)))();
}

uint64_t sub_1D4DDB0DC()
{
  v5 = *(v3 + 8) - 780318865;
  v6 = v1 > ((v0 - 144781323) & 0xDCA5BEFF) - 321852806;
  v7 = v2 - 967755454 > v5;
  if (v5 < 0x3F2A850A == v6)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((v6 * (v0 ^ 0x67D)) ^ v0)))();
}

uint64_t sub_1D4DDB568@<X0>(int a1@<W1>, uint64_t a2@<X5>, int a3@<W8>)
{
  v7 = *(v4 + 12);
  *(a2 + 40) = v4 + 12;
  return (*(v6 + 8 * ((2654 * (v7 + v3 < ((6 * ((a3 - 903) ^ 0x271)) ^ (a1 - 725)) + ((a3 - 903) ^ (v5 + 410)))) ^ (a3 - 903))))();
}

uint64_t sub_1D4DDB5C4()
{
  v6 = *(v3 + 8) - 1439124990;
  v7 = v1 > 0xE81A105A;
  v8 = v2 - 1626561575 > v6;
  if (v7 == v6 < 0x17E5EF9D)
  {
    v7 = v8;
  }

  return (*(v5 + 8 * ((v7 * (((v0 - 1811644490) | 0x40001037) - v4 + 17)) | v0)))();
}

uint64_t sub_1D4DDB764@<X0>(int a1@<W8>)
{
  v6 = ((2 * (v2 + 2 * a1)) & 0xFBDFFF3C) + ((v2 + 2 * a1) ^ 0xFDEFFF9F);
  if (v1 > 0x6F87E38C != v6 - 1836573492 < 0x90781C6B)
  {
    v7 = v6 - 1836573492 < 0x90781C6B;
  }

  else
  {
    v7 = v6 - 1836573492 > v3;
  }

  return (*(v5 + 8 * (v4 ^ (2045 * v7))))();
}

uint64_t sub_1D4DDBB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v34 + 8 * (v33 ^ 0xEFC)))();
  (*(v34 + 8 * (v33 ^ 0xECB)))();
  v43 = (*(v34 + 8 * (v33 ^ 0xEF5)))(a12, 0);
  return (*(v34 + 8 * ((19 * (((v33 + 1) ^ (v43 == 0)) & 1)) ^ v33)))(v43, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1D4DDBC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  (*(v38 + 8 * (v35 + 712)))(a1, *(&off_1E84C00F0 + v35 - 2212) - 12);
  (*(v38 + 8 * (v35 ^ 0x336)))(a1);
  (*(v38 + 8 * (v35 + 750)))(a1, v37);
  v40 = (*(v38 + 8 * (v35 ^ 0x32A)))();
  return (*(v38 + 8 * (((v40 == *(&off_1E84C00F0 + v35 - 2202) - 12) * ((((2 * v35) ^ 0x19DC) - 1969) ^ 0x30A)) ^ v35)))(v40, v41, v42, v43, v44, v45, v46, v47, a9, v36, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1D4DDBD24()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 ^ 0xAC8)))() == v1;
  return (*(v4 + 8 * ((v5 * (((v0 - 329) | 0x101) + 131 * (v0 ^ 0x140) - 651)) ^ v0)))();
}

uint64_t sub_1D4DDBDD4()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 ^ 0xAC8)))() == v1;
  return (*(v4 + 8 * ((v5 * ((v0 - 22) ^ (v0 - 72))) ^ v0)))();
}

uint64_t sub_1D4DDBE6C()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 + 2632)))();
  return (*(v4 + 8 * (((v5 == v1) * (((v0 ^ 0x15B) + 816) ^ (21 * (v0 ^ 0x15B)))) ^ v0)))(v5);
}

uint64_t sub_1D4DDBF24()
{
  (*(v4 + 8 * (v0 + 2640)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 + 2632)))() == v1;
  return (*(v4 + 8 * ((v5 * (((v0 - 303) | 0x891) + ((v0 + 649812861) & 0x5944ABFB) - 1433)) ^ v0)))();
}

uint64_t sub_1D4DDBF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v44 = (v42 - 120) | 0x2A0;
  (*(v43 + 8 * (v44 + 59)))(a41);
  (*(v43 + 8 * (v44 ^ 0x1DF)))(a42);
  return (*(v43 + 8 * (((a40 == 0) * ((v44 ^ 0xD4049A85) + 1475796767 + ((v44 - 29915003) & 0xD5CCFCFF))) ^ v44)))(a40, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1D4DDC908@<X0>(int a1@<W8>)
{
  v3 = a1 - 235;
  v4 = (*(v2 + 8 * (a1 + 2222)))();
  return (*(v2 + 8 * ((((((v3 + 726) ^ (v1 == -45004)) & 1) == 0) * (v3 - 392)) ^ v3)))(v4);
}

uint64_t sub_1D4DDC950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  a18 = 0;
  a20 = 0;
  v23 = (*(v22 + 8 * (v21 + 1803)))(**(&off_1E84C00F0 + (v21 ^ 0x478)), *v20, *(v20 + 12) + (v21 ^ 0x8726B05E), &a18, &a20);
  v24 = ((v21 + 1409547257) | 0x80009014) + (v23 ^ 0x5F796EFD) + ((2 * v23) & 0xBEF2DDFA) == 1132330871;
  return (*(v22 + 8 * (v24 | (4 * v24) | v21)))(v23, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11);
}

uint64_t sub_1D4DDCA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v27 = (*(v25 + 8 * (v22 + 1803)))(*v23, *v20, (*(v20 + 12) - 2027506636), &a18, &a20);
  v35 = (v27 ^ ((v22 ^ (v24 + 934)) + 1668486274)) - 556171400 + ((2 * v27) & 0x6EEF49F2);
  if (v35 == 374416497)
  {
    v36 = (*(v25 + 8 * ((v21 - 10) ^ 0xD4049077)))(24, 0x1010040E2407E0ALL) != 0;
    return (*(v25 + 8 * ((37 * v36) ^ 0x78C)))();
  }

  else if (v35 == 642851956)
  {
    return (*(v25 + 4792))(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  else
  {
    v38 = 946232179 * ((v26 - 108) ^ 0x907B3CCF);
    *(v26 - 104) = v38 ^ 0x638;
    *(v26 - 100) = v35 - v38 + 962804850;
    v39 = (*(v25 + 8 * ((v21 - 29) ^ 0xD4049077)))(v26 - 108);
    return (*(v25 + 8 * ((3280 * (*(v26 - 108) != 1181123576)) ^ 0x4AD)))(v39);
  }
}

uint64_t sub_1D4DDD0AC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  v16 = (a1 + 1458843159) & 0x4F8E;
  (*(v15 + 8 * (a1 ^ 0x26Cu)))(v13);
  v16 ^= 0x321u;
  v17 = (*(v15 + 8 * (v16 + 1760)))(**(v14 + 8 * (v16 - 1195)), a11, a13);
  return (*(v15 + 8 * v16))(v17);
}

void sub_1D4DDD100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, _DWORD *a50, uint64_t a51, uint64_t a52)
{
  v54 = *(a6 + 144);
  (*(v53 + 8 * (v52 + 737901331)))(*(v54 - 0x1729FABDC6538B0));
  *(v54 - 0x1729FABDC6538B0) = a52;
  *a50 = a15;
  JUMPOUT(0x1D4DDD164);
}

uint64_t sub_1D4DDD398(uint64_t a1)
{
  v5 = (a1 + v1 - 16);
  v6 = (v3 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((((v2 - 42) ^ 0xFFFFFF65) & v1) != 32) * ((1249 * ((v2 - 42) ^ 0x87)) ^ 0x9E8)) ^ (v2 - 42))))();
}

uint64_t sub_1D4DDD490(uint64_t a1)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFE91 ^ (v3 - 2076)) + v1;
  *(a1 - 7 + v6) = *(v4 - 7 + v6);
  return (*(v5 + 8 * ((791 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_1D4DDD560(uint64_t a1)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * ((50 * (v5 != (v2 ^ 0x32u) - 737900046 - 3557068919)) ^ v2 ^ 0x32)))();
}

uint64_t sub_1D4DDD5AC(uint64_t a1)
{
  v8 = v4 - 1;
  *(a1 + v8) = *(v6 + v8);
  return (*(v7 + 8 * (((v8 != v3 + v5) * v1) ^ v2)))();
}

void sub_1D4DDD5E0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(a23 - 0x1729FABDC6538A8) = a20 - 1361886286 - (((a2 + v23 + 56) ^ 0x5DA685EB) & (2 * a20));
  *(a23 - 0x1729FABDC6538A4) = 1786714870;
  JUMPOUT(0x1D4DDD774);
}

uint64_t sub_1D4DDDAA0()
{
  v6 = v0 - 284;
  *(v3 - 0x1729FABDC6538B0) = 0;
  *(v3 - 0x1729FABDC6538A8) = v1;
  *(v3 - 0x1729FABDC6538A4) = 1786714870;
  v7 = (*(v5 + 8 * (v0 + 2071)))(v3 - 0x1729FABDC6538B0);
  return (*(v5 + 8 * (((((v2 == 0) ^ (v4 + 2 * (v6 ^ 0x1F))) & 1) * (2 * (v6 ^ 0x71F) - 2670)) | (2 * (v6 ^ 0x71F)))))(v7);
}

void sub_1D4DDDBB4(int a1@<W8>)
{
  (*(v3 + 8 * (a1 + 1257)))();
  *v1 = 0;
  *(v1 + 8) = 1840070043;
  *(v1 + 12) = v2;
  JUMPOUT(0x1D4DDDBE0);
}

void fm23w5mn5o()
{
  v0 = *(&off_1E84C00F0 + ((-3 * (qword_1EC7E49D0 ^ 0x8A ^ dword_1EC7E49D8)) ^ byte_1D4E31550[byte_1D4E320D0[(-3 * (qword_1EC7E49D0 ^ 0x8A ^ dword_1EC7E49D8))] ^ 0x8E]) - 41);
  v1 = 1543604477 * ((*v0 + qword_1EC7E49D0) ^ &v2 ^ 0x45EA3381FA58338ALL);
  qword_1EC7E49D0 = v1;
  *v0 = v1;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4DDDD4C()
{
  (*(v1 + 23632))();
  *(v0 + 8) = 0;
  return (*(v1 + 8 * ((188 * (((*(v0 + 24) == 0) ^ 0x45) & 1)) ^ 0x27Cu)))();
}

uint64_t sub_1D4DDDD98()
{
  (*(v1 + 8 * (v2 ^ 0x9F6u)))();
  *(v0 + 24) = 0;
  *(v0 + 36) = 0;
  *v0 = 0;
  return (*(v1 + 8 * (((*(v0 + 48) == 0) * ((v2 ^ 0x139) - 423 + (((v2 ^ 0x139) + 1549308985) & 0xBF3) - 1241)) ^ v2 ^ 0x139)))();
}

uint64_t sub_1D4DDDE78@<X0>(int a1@<W8>)
{
  v3 = a1 - 468;
  (*(v2 + 8 * (a1 + 2072)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * (((*(v1 + 64) == 0) * ((v3 ^ 0x1A0F9FEF) + v3 + 14 - 437231595)) ^ v3)))();
}

uint64_t sub_1D4DDDED0@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2526)))();
  *(v1 + 64) = 0;
  *(v1 + 76) = 0;
  *(v1 + 40) = 0;
  return 0;
}

void tn46gtiuhw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v7 = a5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = v7 || a6 == 0 || a7 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4DDDFC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _DWORD *a19)
{
  *a4 = 0;
  *a19 = 0;
  *a6 = 0;
  *a7 = 0;
  return (*(v19 + 8 * ((49 * (unk_1EC7E7E90 == 0)) ^ 0x215u)))();
}

uint64_t sub_1D4DDE05C()
{
  *(v2 + 36) = 0;
  *v2 = 0;
  return (*(v1 + 8 * (((*(v2 + 48) == 0) * ((v0 - 2388) ^ 0x14 ^ (81 * (v0 ^ 0xB7E)))) ^ v0)))();
}

uint64_t sub_1D4DDE164@<X0>(int a1@<W8>)
{
  v4 = a1 - 25;
  (*(v1 + 8 * (a1 + 2395)))();
  *(v2 + 64) = 0;
  *(v2 + 76) = 0;
  *(v2 + 40) = 0;
  v5 = (*(v1 + 8 * (v4 + 2414)))(24, 0x1010040E2407E0ALL);
  return (*(v1 + 8 * (((v5 == 0) * (((6 * (v4 ^ 0x337)) ^ 0x543542CF) + (v4 ^ (v3 + 534)))) ^ v4)))(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D4DDE258(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0xFEE00FC579CDB96;
  *(a1 + 16) = 0;
  v3 = (*(v2 + 8 * (v1 ^ 0xD42)))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((((v1 + 1633413135) & 0x9EA41B7E) + 164) ^ (v1 + 1065))) ^ v1)))(v3, v4, v5, v6);
}

void qi864985u0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5 || a4 == 0 || a5 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4DE2FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD *a32, uint64_t a33, void *a34, void *a35)
{
  *a35 = 0;
  *a32 = 0;
  *a34 = 0;
  *a28 = 0;
  return (*(v35 + 8 * ((200 * (a33 != 0)) ^ 0x26Au)))(a1, a2, 551906117);
}

uint64_t sub_1D4DE30CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int *a10, unsigned int *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if ((a33 + 6) < 5)
  {
    goto LABEL_2;
  }

  if (a33 == -1)
  {
    v61 = a3 + v54;
    v62 = a3 + v54 - 600;
    v63 = (*(v53 + 8 * (v54 + 551908262)))(*a10, &a48) != 0;
    return (*(v53 + 8 * ((v63 * (v61 - 763)) ^ v62)))();
  }

  else
  {
    if (a33 == -8)
    {
LABEL_2:
      v55 = a3 + v54 - 600;
      v56 = (v54 + 13) ^ ((*(v53 + 8 * (v54 + 551908262)))(*a19, &a53) == ((v54 - 686759667) ^ 0xB62B78EF));
      return (*(v53 + 8 * ((44 * (v56 & 1)) ^ v55)))();
    }

    v58 = a3 + v54;
    v59 = a3 + v54 - 189;
    v60 = (*(v53 + 8 * (v54 ^ (v54 + 1160))))(*a11, &a38) == (v54 ^ (v54 - 225)) - 227;
    return (*(v53 + 8 * ((v60 * (v58 + 892)) ^ v59)))();
  }
}

uint64_t sub_1D4DE33B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = (*(v37 + 8 * (v38 + 415)))(v39 - 144, 0);
  if (v40 >= 0)
  {
    a31 = *(v39 - 144);
  }

  v48 = a31 / (((v38 - 512) | 0x40u) ^ 0x856);
  v49 = *(a36 + 40 * v36 + 36);
  v51 = v49 >= v48;
  v50 = v49 - v48;
  v51 = !v51 || v50 >= 0x12C;
  v52 = !v51;
  return (*(v37 + 8 * ((35 * v52) | v38)))(v40, v41, 551906117, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_1D4DE344C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t *a35)
{
  v39 = (*(v37 + 8 * (v38 + 828)))(*(v35 + 40 * v36 + 16), 0x100004077774924);
  *a35 = v39;
  return (*(v37 + 8 * (((v39 == 0) * ((v38 + 464) ^ v38 ^ 0x240)) | v38)))();
}

uint64_t sub_1D4DE34C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34)
{
  v38 = (*(v36 + 8 * ((v37 - 551) ^ 0xDA5)))(*(v34 + 40 * v35 + 32), 0x100004077774924);
  *a34 = v38;
  return (*(v36 + 8 * (((v38 == 0) * ((((4 * (v37 - 551)) ^ 0x1814) + 1655999399) & 0x9D4B7BFC ^ 0x82F)) ^ (v37 - 551))))(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1D4DE354C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  v37 = (*(v35 + 8 * (v36 ^ 0xB1A)))(*a35);
  *a35 = 0;
  return sub_1D4DE3338(v37, v38, 551906117);
}

void sub_1D4DE3640()
{
  v3 = (((v0 + 276668541) & 0xEF8258EA ^ 0x2B2) - 460) | 0x103;
  __asm { BRAA            X14, X17 }
}

uint64_t sub_1D4DE7FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v50 = v45 ^ (v49 - 1721);
  *(v46 - 0x2F9FA99D07A4AD62) = 0;
  *(v46 - 0x2F9FA99D07A4AD5ALL) = -1317876224;
  *(v46 - 0x2F9FA99D07A4AD56) = 0;
  v51 = (*(v47 + 8 * (v45 ^ (v49 + 1158))))(v46 - 0x2F9FA99D07A4AD62);
  return (*(v47 + 8 * ((((((v50 - 281) ^ (a45 == v48)) & 1) == 0) * (((v50 - 537224937) & 0xFF1FF7FF) + 551905353)) ^ v50)))(v51);
}

void sub_1D4DE80FC()
{
  (*(v3 + 8 * ((v0 & 0xDFBFD7E2) + 551908264)))();
  *v4 = 0;
  *(v1 - 0x63E5E14B55EA7FF6) = v2;
  *(v1 - 0x63E5E14B55EA7FF2) = 223807700;
  JUMPOUT(0x1D4DE8168);
}

uint64_t sub_1D4DE81BC()
{
  (*(v2 + 8 * (v1 + 1164)))(v4, v3);
  v5 = (*(v2 + 8 * (v1 + 1156)))() == v0;
  return (*(v2 + 8 * ((v5 * (((v1 - 630840386) & 0x2599DF2D) + 824)) ^ v1)))();
}

uint64_t sub_1D4DE825C()
{
  (*(v2 + 8 * (v1 ^ 0xCB4)))(v4, v3);
  v5 = (*(v2 + 8 * (v1 + 1156)))() == v0;
  return (*(v2 + 8 * ((v5 * (v1 + 1764)) ^ v1)))();
}

uint64_t sub_1D4DE82F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v43 = (*(v41 + 8 * (v40 ^ 0x202)))(a1, 0x100004077774924);
  *(v42 - 232) = v43;
  return (*(v41 + 8 * (((v43 != 0) * (v40 + ((2 * v40) ^ 0x1324) - 2467)) ^ v40)))(v43, v44, 551906117, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

void y1rKtVxYz7()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1E84C00F0 + ((-3 * (dword_1EC7E49E0 ^ 0x8A ^ dword_1EC7E49D8)) ^ byte_1D4E31A60[byte_1D4E31750[(-3 * (dword_1EC7E49E0 ^ 0x8A ^ dword_1EC7E49D8))] ^ 0xE6]) - 36);
  v1 = -3 * (*v0 ^ dword_1EC7E49D8 ^ 0x8A);
  v2 = *(&off_1E84C00F0 + (byte_1D4E31B68[(byte_1D4E31858[v1 - 8] ^ 0x6B) - 8] ^ v1) - 20);
  v3 = &v8[*v0 + *v2];
  v4 = 1543604477 * v3 + 0x45EA3381FA58338ALL;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *v0 = v4;
  *v2 = v5;
  LOBYTE(v2) = -3 * ((v5 + *v0) ^ 0x8A);
  v6 = *(&off_1E84C00F0 + ((-3 * ((dword_1EC7E49D8 + dword_1EC7E49E0) ^ 0x8A)) ^ byte_1D4E321D0[byte_1D4E31E80[(-3 * ((dword_1EC7E49D8 + dword_1EC7E49E0) ^ 0x8A))] ^ 0xEA]) - 199) - 12;
  v7 = *&v6[8 * ((225 * ((*&v6[8 * (byte_1D4E321D4[(byte_1D4E31E8C[v2 - 12] ^ 0xEA) - 4] ^ v2) + 21912])(24, 0x1010040E2407E0ALL) != 0)) ^ 0x672)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4DE8580(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x6F0AC1E1369E4B09;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((56 * (v3 != 0)) ^ 0x7DAu)))();
}

uint64_t sub_1D4DE86C0()
{
  v5 = *(v3 + 8) - 1887993249;
  v6 = ((v2 - 1710) | 0x24) + ((v2 + 1576307951) & 0xA20B6EFF ^ 0x570B09FA) + v0 > v5;
  if (v1 > 0x39EA3293 != v5 < 0xC615CD68)
  {
    v6 = v1 > 0x39EA3293;
  }

  return (*(v4 + 8 * ((461 * !v6) ^ v2)))();
}

void sub_1D4DE875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = v15 + v11;
  v17 = *v12;
  *(*v12 + v10) = 0;
  *(v17 + v9 + ((v16 - 687) ^ 0x50750E82u)) = 0;
  *(v17 + (v9 - 1862975966)) = 1;
  *(v17 + (v9 - 1862975967)) = 0;
  *v8 += 4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D4DE8C6C()
{
  v5 = *(v3 + 8) + 1570186821;
  v6 = v1 > 0x6BCA8EAD;
  v7 = v6 ^ (v5 < 0x9435714E);
  v8 = ((v0 - 204706424) & 0xCCB3BEFE ^ 0xE5AA9FD3) + v2 > v5;
  if (v7)
  {
    v8 = v6;
  }

  return (*(v4 + 8 * ((58 * v8) ^ v0)))();
}

uint64_t sub_1D4DE8E28@<X0>(int a1@<W8>)
{
  v6 = ((2 * ((a1 << (v4 - 114)) + v2)) & 0x6FFDD6F0) + (v4 ^ 0xB7FEEF0A ^ ((a1 << (v4 - 114)) + v2));
  if (v1 > 0x26199F4 != v6 + 1168079502 < 0xFD9E6607)
  {
    v7 = v6 + 1168079502 < 0xFD9E6607;
  }

  else
  {
    v7 = v6 + 1168079502 > v3;
  }

  return (*(v5 + 8 * ((247 * !v7) ^ v4)))();
}

uint64_t sub_1D4DE8F44@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  HIDWORD(a10) = a1;
  v27 = (*(v18 + 8 * (v17 + 1957)))((v17 ^ (v19 + 731)) + (((v17 - 990) | 0x6C) ^ 0x8780E388) + v16, 0x100004077774924);
  return (*(v18 + 8 * ((1984 * (v27 == 0)) ^ v17)))(v27, v20, v21, v22, v23, v24, v25, 1065341128, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D4DE9014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30, int a31, int a32, uint64_t a33)
{
  v37 = (*(v34 + 8 * (v36 + v35)))(*v33);
  *v33 = a33;
  *a30 = a18;
  return (*(v34 + 8 * ((3760 * (a32 == 0)) ^ (v36 + v35 - 1112))))(v37);
}

void sub_1D4DE9088(_DWORD *a1@<X8>)
{
  v3 = *v2;
  v4 = *a1 + v1;
  *(*v2 + v4 + 1) = -24;
  *(v3 + v4 + 2) = -110;
  *(v3 + v4) = 118;
  *(v3 + v4 + 3) = 16;
  *a1 += 4;
  JUMPOUT(0x1D4DE90D0);
}

uint64_t sub_1D4DE91CC()
{
  v6 = ((v0 + 189) ^ (v5 + 379) ^ 0x7989D80) + *(v3 + 8);
  v7 = v1 > 0x24907D0;
  v8 = v2 - 1901316530 > v6;
  if (v7 == v6 < 0xFDB6F82B)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((28 * !v7) ^ v0)))();
}

uint64_t sub_1D4DE924C@<X0>(int a1@<W7>, _DWORD *a2@<X8>)
{
  v7 = *v3;
  v8 = *a2 + v2;
  *(*v3 + v8 + 3) = 1;
  *(v7 + v8 + 1) = 0;
  *(v7 + v8) = 0;
  *(v7 + v8 + 2) = 0;
  *a2 += 4;
  return (*(v5 + 8 * ((((v6 + v4 - 1412033483) & 0x5429E8E6) + 423) ^ (v4 + a1))))();
}

uint64_t sub_1D4DE970C()
{
  v5 = *(v3 + 8) + 290418297;
  v6 = v1 > ((v0 - 626445980) & 0xE5D6FAA6 ^ 0x789276DB);
  v7 = v2 - 656214107 > v5;
  if (v6 == v5 < ((v0 + 565057358) & 0xDE51E6FE) + 1206761118)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((4007 * v6) ^ v0)))();
}

uint64_t sub_1D4DE9BB8@<X0>(int a1@<W8>)
{
  v3 = a1 + 848;
  v11 = (*(v2 + 8 * (a1 + 2948)))(12, 0x100004077774924);
  *(v11 + 10) = *(*(v1 + 8 * (v3 ^ 0x34D)) + 10);
  return (*(v2 + 8 * ((((v3 ^ 0x350) == 10) | (8 * ((v3 ^ 0x350) == 10))) ^ v3)))(v11, v4, v5, v6, v7, v8, v9, 1065341128);
}

uint64_t sub_1D4DE9C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v38 = (v37 - 160 + v34);
  *v38 = *(v35 + 12);
  v38[1] = 1862975980;
  v38[2] = 1862975973;
  return (*(v36 + 8 * (((((v38 == 0) ^ (v33 - 120)) & 1) * ((v33 - 577) ^ 0x176)) ^ v33)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1D4DE9D30()
{
  v6 = *(v3 + 8) - 874318352;
  v7 = v2 > 0xFD7EBEF7;
  v8 = v0 - 1820950745 > v6;
  if (v7 != v6 < (((v1 ^ 0xC33) - 2810) ^ (v5 + 2) ^ 0xC201705B))
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((77 * ((((v1 ^ 0x33) - 1) ^ v8) & 1)) | v1 ^ 0xC33)))();
}

uint64_t sub_1D4DE9DC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unint64_t a40, _DWORD *a41)
{
  v46 = (v45 + v41 - 630) | 0x241;
  v47 = *v42;
  v48 = *a8;
  v49 = *a8 - 1862975969;
  *(*v42 + v49) = 0;
  *(v47 + v49 + 1) = 0;
  *(v47 + v48 + (v46 ^ 0x90F53574)) = 0;
  *(v47 + v49 + 3) = 11;
  *a8 += 4;
  v50 = *v42 + (*a41 - 1862975969);
  return (*(v44 + 8 * (((a40 <= v50) * (((31 * (v46 ^ 0xB08) - 2202) | 0x502) - 1950)) ^ v46)))(v50, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, v43, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_1D4DE9F2C@<X0>(int a1@<W8>)
{
  v6 = (((v4 | 0x2A2) + 1836946254) & (2 * (v2 + 2 * a1))) + ((v2 + 2 * a1) ^ 0xB6BECB1B);
  if (v1 > 0x44054D84 != v6 + 87811921 < ((v4 + 776718232) & 0xD1B43FB7) - 1141200168)
  {
    v7 = v6 + 87811921 < ((v4 + 776718232) & 0xD1B43FB7) - 1141200168;
  }

  else
  {
    v7 = v6 + 87811921 > v3;
  }

  return (*(v5 + 8 * ((2032 * v7) ^ v4)))();
}

uint64_t sub_1D4DEA118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, _DWORD *a42, int a43, int a44, uint64_t a45)
{
  v49 = v48 + a8;
  v50 = (*(v46 + 8 * (v48 + v47)))(*v45);
  *v45 = a45;
  *a42 = a13;
  return (*(v46 + 8 * ((2861 * (a44 == v49 - 362)) ^ (v49 + 577))))(v50);
}

uint64_t sub_1D4DEA30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  (*(v40 + 8 * (v41 + 306)))();
  (*(v40 + 8 * (v41 ^ 0x1C1)))();
  v50 = (*(v40 + 8 * (v41 + 315)))(*(v39 + 8 * (v41 - 2649)), 0);
  return (*(v40 + 8 * (((v50 == 0) * ((((v41 + 941014372) & 0xC7E93A7F) - 152) ^ 0x175)) ^ v41)))(v50, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_1D4DEA41C(uint64_t a1)
{
  (*(v3 + 8 * (v4 + 1243)))(a1, *(v1 + 8 * (v4 - 1681)) - 12);
  (*(v3 + 8 * (v4 ^ 0xD25)))(a1);
  *(v5 - 256) = (*(v3 + 8 * (v4 ^ 0xD01)))(a1, v2);
  v7 = (*(v3 + 8 * (v4 + 1273)))() == *(v1 + 8 * (v4 - 1671)) - 12;
  return (*(v3 + 8 * ((v7 * ((v4 + 1410) ^ (v4 - 1100))) ^ v4)))();
}

uint64_t sub_1D4DEA4F8()
{
  v9 = v0;
  (*(v4 + 8 * ((v1 + 97) ^ 0x914)))(v3, v2);
  v5 = (*(v4 + 8 * ((v1 + 97) ^ 0x92C)))();
  return (*(v4 + 8 * (((v5 == v9) * (v1 ^ 0xC58 ^ (212 * ((v1 + 97) ^ 0x2BD)))) ^ (v1 + 97))))(v5, v6, v7);
}

uint64_t sub_1D4DEA5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(v13 + 8 * (v14 ^ 0x914)))(v12, v11);
  v15 = (*(v13 + 8 * (v14 + 2276)))() == a11;
  return (*(v13 + 8 * ((v15 * ((v14 + 1003) ^ 0x498 ^ (298 * (v14 ^ 0x2B7)))) ^ v14)))();
}

uint64_t sub_1D4DEA674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(v13 + 8 * (v14 + 2284)))(v12, v11);
  v15 = (*(v13 + 8 * (v14 ^ 0x92C)))() == a11;
  return (*(v13 + 8 * ((v15 * (((v14 + 2101928954) & 0x82B71FF0) + ((v14 - 97) ^ 0xFFFFFFB0))) ^ v14)))();
}

uint64_t sub_1D4DEA718()
{
  v5 = v1 - 596;
  v6 = (v1 - 385) | 8;
  v7 = v3;
  v8 = v2;
  v9 = v0;
  v10 = v1;
  (*(v4 + 8 * (v1 ^ 0x9F5)))(v7, v8);
  v11 = (*(v4 + 8 * (v10 ^ 0x9CD)))() == v9;
  return (*(v4 + 8 * (((((v5 ^ v11) & 1) == 0) * (v6 ^ 0x3A)) ^ v10)))();
}

uint64_t sub_1D4DEA79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v19 = (v14 + 63928535) & 0xFC3089EF;
  *(v18 - 256) = v15;
  v20 = (*(v17 + 8 * (v19 ^ 0x2CD)))(v15, v16, va);
  *(v18 - 248) = v20;
  return (*(v17 + 8 * (((v20 == 0) * (((v19 - 1939) ^ 0xFFFFF92F) + v19 - 599)) ^ v19)))(v20, v21, v22, v23, v24, v25, v26, v27, a1, a2, a3);
}

uint64_t sub_1D4DEA89C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 495030071;
  *(a1 + 12) = -1179748465;
  *(a1 + 16) = 0;
  v3 = (*(v2 + 8 * ((v1 | 0x480) ^ 0xF15)))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v2 + 8 * (((v3 != 0) * ((((v1 | 0x480) - 65) ^ 0xFFFFFD5C) + (v1 | 0x480) + 662)) ^ (v1 | 0x480))))(v3, v4, v5);
}

uint64_t sub_1D4DEA928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{
  *(v23 + 8) = 495034167;
  *(v27 - 240) = v25;
  return (*(v26 + 8 * (((a23 > 0x1000) * (v24 ^ 0x894 ^ ((v24 - 995) | 0x10))) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_1D4DEAE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = v48 + 1475;
  *(v49 - 0x60E31FD2FE548731) = 0;
  *(v49 - 0x60E31FD2FE548729) = 495030071;
  *(v49 - 0x60E31FD2FE548725) = -1179748465;
  (*(v50 + 8 * (v48 + 2621)))(v49 - 0x60E31FD2FE548731);
  (*(v50 + 8 * (v51 + 1053)))(a47);
  (*(v50 + 8 * (v51 + 1053)))(a48);
  return (*(v50 + 8 * (((a46 == 0) * ((((v51 - 1839001745) & 0x6D9CEFDB) + 85) ^ v51 ^ 0x1AB)) | v51)))();
}

void sub_1D4DEAEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  *(a20 - 0x60E31FD2FE548729) = a23 + 495030071 - ((v23 + v24 + 990057188) & (2 * a23));
  *(a20 - 0x60E31FD2FE548725) = -1179748465;
  JUMPOUT(0x1D4DEAF28);
}

uint64_t sub_1D4DEB01C@<X0>(int a1@<W8>)
{
  v3 = 6 * (a1 ^ 0x99);
  v4 = (*(v2 + 8 * (a1 ^ 0xBD5)))();
  return (*(v2 + 8 * ((45 * (((v1 == -45004) ^ (v3 - 69)) & 1)) ^ v3)))(v4);
}

uint64_t sub_1D4DEB080@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12)
{
  a7 = 0;
  a11 = 0;
  v16 = (*(v14 + 8 * ((a1 | 0x800020A2) ^ 0xC0803BD7)))(**(v13 + 8 * ((a1 | 0x800020A2) + 1065340784)), *v12, (*(v12 + 12) - 1862975969), &a7, &a11);
  if (v16)
  {
    if (v16 == 268435459)
    {
      a12 = 0x60E31FD2FE548731;
      return (*(v14 + 2896))(v16, v17, v18, v19, v20, v21, v22, v23, a2, a3, a4);
    }

    else
    {
      v33 = 946232179 * ((((2 * (v15 - 108)) | 0xD1772250) - (v15 - 108) - 1757122856) ^ 0xF8C0ADE7);
      *(v15 - 104) = v33 ^ 0x638;
      *(v15 - 100) = ((2 * v16) & 0xBF6DDBF6) - v33 + (v16 ^ 0xDFB6EDFB) + 1878881000;
      v34 = (*(v14 + 23736))(v15 - 108);
      return (*(v14 + 8 * ((474 * (*(v15 - 108) != 1181123576)) ^ 0x4FF)))(v34);
    }
  }

  else
  {
    v24 = (*(v14 + 23584))(24, 0x1010040E2407E0ALL);
    return (*(v14 + 8 * ((114 * (((v24 == 0) ^ 0x31) & 1)) ^ 0x6B8)))(v24, v25, v26, v27, v28, v29, v30, v31, a2);
  }
}

uint64_t sub_1D4DEB6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18)
{
  v23 = 8 * (v21 ^ 0x428);
  v24 = v23 ^ 0x247;
  (*(v22 + 8 * (v23 ^ 0xD32)))(v20);
  v25 = (*(v22 + 8 * (v24 ^ 0xF72)))(**(v18 + 8 * (v24 - 1277)), a14, a18);
  return (*(v22 + 8 * (((v19 == 0) * (v24 - 805)) ^ v24)))(v25);
}

void sub_1D4DEB6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v26 = *(v24 - 208);
  (*(v23 + 8 * (v25 ^ 0xC0803B28)))(*(v26 - 0x60E31FD2FE548731));
  *(v26 - 0x60E31FD2FE548731) = *(v24 - 184);
  **(v24 - 200) = a23;
  JUMPOUT(0x1D4DEB744);
}

uint64_t sub_1D4DEB914(uint64_t a1)
{
  v5 = *(v3 + v1 - 1 - 31);
  v6 = a1 + v1 - 1;
  *(v6 - 15) = *(v3 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((28 * (((v2 - 1915683267) & 0x722F01EE) - 196 != (((v2 - 20) ^ 0xFFFFFF44) & v1))) ^ (v2 - 20))))();
}

void sub_1D4DEBB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  *(a15 - 0x60E31FD2FE548729) = a18 + 495030071 - ((2 * a18) & 0x3B031E6E);
  *(a15 - 0x60E31FD2FE548725) = -1179748465;
  JUMPOUT(0x1D4DEBD38);
}

uint64_t sub_1D4DEC034@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = (a1 - 1296381823) & 0x4D453FDF;
  v17 = a1 + 2592;
  (*(v13 + 8 * (a1 + 2592)))();
  *(v10 - 0x60E31FD2FE548731) = 0;
  *(v10 + v12) = 495030071;
  *(v10 + v11) = v15;
  (*(v13 + 8 * v17))(v10 - 0x60E31FD2FE548731);
  v18 = (*(v13 + 8 * (v16 + 447)))(a9);
  return (*(v13 + 8 * (((((v16 - 2147481931) | 0x40802022) + (v16 ^ 0x2E ^ (v14 - 15))) * (v9 == 0)) ^ v16)))(v18);
}

void sub_1D4DEC138(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2450)))();
  *v1 = 0;
  *(v1 + 8) = 916343561;
  *(v1 + 12) = 1862975969;
  JUMPOUT(0x1D4DEC174);
}

void uv5t6nhkui()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1E84C00F0 + (byte_1D4E31A60[byte_1D4E31750[(-3 * ((dword_1EC7E49D8 - dword_1EC7E49C0) ^ 0x8A))] ^ 6] ^ (-3 * ((dword_1EC7E49D8 - dword_1EC7E49C0) ^ 0x8A))) - 53);
  v1 = *(&off_1E84C00F0 + ((-3 * ((dword_1EC7E49D8 + *v0) ^ 0x8A)) ^ byte_1D4E31A60[byte_1D4E31750[(-3 * ((dword_1EC7E49D8 + *v0) ^ 0x8A))] ^ 6]) - 62);
  v2 = (*v1 ^ *v0) - &v7;
  v3 = 1543604477 * v2 - 0x45EA3381FA58338ALL;
  v4 = 1543604477 * (v2 ^ 0x45EA3381FA58338ALL);
  *v0 = v3;
  *v1 = v4;
  LOBYTE(v1) = -3 * (*v0 ^ 0x8A ^ v4);
  v5 = *(&off_1E84C00F0 + ((-3 * ((dword_1EC7E49D8 + dword_1EC7E49C0) ^ 0x8A)) ^ byte_1D4E31550[byte_1D4E320D0[(-3 * ((dword_1EC7E49D8 + dword_1EC7E49C0) ^ 0x8A))] ^ 0xEC]) - 178) - 12;
  v6 = *&v5[8 * ((32 * ((*&v5[8 * (byte_1D4E321D4[(byte_1D4E31E8C[v1 - 12] ^ 0xB0) - 4] ^ v1) + 22784])(24, 0x1010040E2407E0ALL) == 0)) | 0xACA)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4DEC3A4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x210BB38616FB3631;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  if (v3)
  {
    v4 = 1422;
  }

  else
  {
    v4 = 1423;
  }

  return (*(v1 + 8 * v4))();
}

void p435tmhbla()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1E84C00F0 + ((-3 * (dword_1EC7E49C8 ^ 0x8A ^ dword_1EC7E49D8)) ^ byte_1D4E31960[byte_1D4E31650[(-3 * (dword_1EC7E49C8 ^ 0x8A ^ dword_1EC7E49D8))] ^ 0x42]) - 166);
  v1 = *(v0 - 4);
  v2 = *(&off_1E84C00F0 + ((-3 * ((dword_1EC7E49D8 - v1) ^ 0x8A)) ^ byte_1D4E31550[byte_1D4E320D0[(-3 * ((dword_1EC7E49D8 - v1) ^ 0x8A))] ^ 0x8E]) - 41);
  v3 = v1 ^ &v8 ^ *v2;
  v4 = 1543604477 * v3 - 0x45EA3381FA58338ALL;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = *(&off_1E84C00F0 + ((-3 * ((dword_1EC7E49D8 - dword_1EC7E49C8) ^ 0x8A)) ^ byte_1D4E31F80[byte_1D4E31C60[(-3 * ((dword_1EC7E49D8 - dword_1EC7E49C8) ^ 0x8A))] ^ 7]) - 6) - 12;
  v7 = (*&v6[8 * (byte_1D4E31558[(byte_1D4E320D0[(-3 * ((v5 - *(v0 - 4)) ^ 0x8A))] ^ 0x78) - 8] ^ (-3 * ((v5 - *(v0 - 4)) ^ 0x8A))) + 21744])(24, 0x1010040E2407E0ALL) != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4DF0D78(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x241C090D09BF22FCLL;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((23 * (v3 == 0)) ^ 0x645u)))();
}

void fy34trz2st()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1E84C00F0 + ((-3 * (dword_1EC7E49F8 ^ 0x8A ^ dword_1EC7E49D8)) ^ byte_1D4E321D0[byte_1D4E31E80[(-3 * (dword_1EC7E49F8 ^ 0x8A ^ dword_1EC7E49D8))] ^ 0xEA]) - 198);
  v1 = -3 * ((dword_1EC7E49D8 + *v0) ^ 0x8A);
  v2 = *(&off_1E84C00F0 + (byte_1D4E31B68[(byte_1D4E31858[v1 - 8] ^ 0x6B) - 8] ^ v1) - 20);
  v3 = (*v2 ^ *v0) - &v8;
  v4 = 1543604477 * v3 + 0x6D4BA15110163F62;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *v0 = v4;
  *v2 = v5;
  v6 = *(&off_1E84C00F0 + ((-3 * ((dword_1EC7E49D8 - dword_1EC7E49F8) ^ 0x8A)) ^ byte_1D4E321D0[byte_1D4E31E80[(-3 * ((dword_1EC7E49D8 - dword_1EC7E49F8) ^ 0x8A))] ^ 0xB0]) - 90) - 12;
  v7 = *&v6[8 * ((29 * ((*&v6[8 * (byte_1D4E31A64[(byte_1D4E31750[(-3 * ((v5 + *v0) ^ 0x8A))] ^ 0xE6) - 4] ^ (-3 * ((v5 + *v0) ^ 0x8A))) + 23120])(24, 0x1010040E2407E0ALL) == 0)) ^ 0x7CD)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4DF4C2C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 987097956;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((13 * (v3 == 0)) ^ 0x4F7u)))();
}

uint64_t sub_1D4DF80B0@<X0>(int a1@<W8>)
{
  v4 = 109 * (a1 ^ 0x71D);
  (*(v2 + 8 * (a1 + 1137)))();
  return (*(v2 + 8 * ((120 * (((v4 ^ (*(v1 + 32 * v3 + 24) == 0)) & 1) == 0)) ^ v4)))();
}

void rsegvyrt87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || a6 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4DF8308(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  *a4 = 0;
  *a5 = 0;
  v6 = (*(v5 + 23584))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v5 + 8 * ((85 * v6) ^ 0x427u)))();
}

uint64_t sub_1D4DF8370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a1 = 0;
  *(a1 + 8) = 0x724731B45C318D7ALL;
  *(a1 + 16) = 0;
  v12 = (*(v10 + 23584))(4096, 0x100004077774924);
  *a1 = v12;
  return (*(v10 + 8 * ((169 * (v12 != 0)) ^ 0x576)))(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D4DF851C()
{
  v5 = *(v3 + 8) - 1720123901;
  v6 = v0 - 2090640947 > v5;
  if (v1 > 0xA55747E != v5 < ((v2 + 578) | 0x118) - 173373531)
  {
    v6 = v1 > 0xA55747E;
  }

  return (*(v4 + 8 * ((208 * v6) ^ v2)))();
}

uint64_t sub_1D4DF8AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = *(v9 - 0x2B7CC17BA9FDC7DELL) + 1385189627 + v10 + (v6 ^ (a6 - 239)) - 1492;
  v13 = v7 > 0x513E1BD0;
  v14 = v8 + 1014674043 > v12;
  if (v13 == v12 < 0xAEC1E42B)
  {
    v13 = v14;
  }

  return (*(v11 + 8 * ((114 * !v13) ^ v6)))();
}

uint64_t sub_1D4DF8B38@<X0>(_DWORD *a1@<X8>)
{
  v5 = *(v1 - 0x2B7CC17BA9FDC7E6);
  v6 = *a1 - 1917268404;
  *(v5 + (*a1 - 1917268403)) = 107;
  *(v5 + v6 + 2) = -40;
  *(v5 + v6) = 113;
  *(v5 + v6 + 3) = 108;
  *a1 += 4;
  return (*(v4 + 8 * (((((v2 + v3 - 2886) | 0x521) == 1381) * ((v3 ^ 0xBA7B9EC4) - 1558)) ^ (v2 + v3 - 1916))))();
}

uint64_t sub_1D4DF9050()
{
  v5 = *(v3 - 0x2B7CC17BA9FDC7DELL) - 603694859;
  v6 = (v2 ^ 0xC5EEB151) + v0 > v5;
  if (v1 > 0xC7CA198C != v5 < ((v2 + 1723021841) & 0x994CC6BF ^ 0x3835E0D0))
  {
    v6 = v1 > 0xC7CA198C;
  }

  return (*(v4 + 8 * ((1018 * !v6) ^ v2)))();
}

uint64_t sub_1D4DF90F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = v9 ^ 0x2BF;
  v14 = *(v10 - 0x2B7CC17BA9FDC7E6);
  *(v14 + v8) = 0;
  *(v14 + (v7 - 1917268403)) = 0;
  v15 = a6 + v13 - 1873;
  *(v14 + (v7 - 1917268402)) = 0;
  *(v14 + v7 + (v15 ^ 0x37C3572Eu)) = 1;
  *v6 += 4;
  return (*(v12 + 8 * ((v11 + v15 - 1377) ^ 0x60D ^ (v11 + v15 - 1916))))();
}

uint64_t sub_1D4DF9238@<X0>(int a1@<W8>)
{
  v9 = ((2 * ((a1 << ((v7 ^ v3) - 40)) + v2)) & 0xFF7B3EF4) + (((a1 << ((v7 ^ v3) - 40)) + v2) ^ 0x7FBD9F7B);
  if (v1 > v6 != v9 - 1559314134 < (v7 ^ v3) * v4 + 583818568)
  {
    v10 = v9 - 1559314134 < (v7 ^ v3) * v4 + 583818568;
  }

  else
  {
    v10 = v9 - 1559314134 > v5;
  }

  return (*(v8 + 8 * ((2428 * v10) ^ v7)))();
}

uint64_t sub_1D4DF9324@<X0>(int a1@<W1>, int a2@<W2>, char a3@<W5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v34 = a1 + 461;
  v35 = (a1 - 51) ^ (a3 + 54);
  v36 = a1 + 65;
  HIDWORD(a25) = a4;
  v44 = (*(v33 + 8 * ((a1 + 461) ^ 0xA72u)))((a2 - 2143133563), 0x100004077774924);
  return (*(v33 + 8 * ((((v35 ^ (v44 == 0)) & 1) * (v36 ^ 0x62)) | v34)))(v44, v37, v38, v39, v40, 3128662369, v41, v42, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1D4DF93FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, _DWORD *a44, int a45, int a46, uint64_t a47)
{
  v49 = a6 ^ 0xBA7B9F75;
  v50 = a6 + v47;
  v51 = a6 + v47 - 2837;
  v52 = (*(v48 + 8 * v50))(*(a42 - 0x2B7CC17BA9FDC7E6));
  *(a42 - 0x2B7CC17BA9FDC7E6) = a47;
  *a44 = a30;
  return (*(v48 + 8 * (((a46 == 0) * (v49 ^ 0x6FD)) ^ v51)))(v52);
}

uint64_t sub_1D4DF9614()
{
  v5 = *(v3 - 0x2B7CC17BA9FDC7DELL) + 165424830;
  v6 = v2 - 205092212 > v5;
  if (v0 > 0x99F243BF != v5 < 0x660DBC38)
  {
    v6 = v0 > 0x99F243BF;
  }

  return (*(v4 + 8 * ((474 * (((v1 + 119) ^ 0xC1 ^ v6) & 1)) ^ v1)))();
}

uint64_t sub_1D4DF96A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = v13 ^ (a6 - 125);
  v18 = a11 - ((2 * a11) & 0x32A2E7DBEA424B78) - 0x66AE8C120ADEDA44;
  v19 = (((2 * v12) & 0xD6C19B7E) + *(v14 - 0x2B7CC17BA9FDC7E6) + 0x10292E00949F3241 + (v17 ^ v12 ^ 0xEFD6D1FFD11B54DELL));
  *v19 = HIBYTE(v18) ^ 0x99;
  v19[1] = BYTE6(v18) ^ 0x51;
  v19[2] = BYTE5(v18) ^ 0x73;
  v19[3] = BYTE4(v18) ^ 0xED;
  v19[4] = ((a11 - ((2 * a11) & 0xEA424B78) - 182377028) >> 24) ^ 0xF5;
  v19[5] = BYTE2(v18) ^ 0x21;
  v19[6] = BYTE1(v18) ^ 0x25;
  v19[7] = v18 ^ 0xBC;
  *v11 += 8;
  return (*(v16 + 8 * (((173 * (v17 ^ (a6 + 7)) == 1557) * ((19 * (v17 ^ (a6 - 91))) ^ 0x7EA)) ^ (v15 + v17 - 1615))))();
}

uint64_t sub_1D4DF9C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v49 = (v48 - 240 + v44);
  *v49 = *(v46 - 0x2B7CC17BA9FDC7DALL);
  v49[1] = (HIDWORD(a15) ^ 0xFBFFB1FE) + ((2 * HIDWORD(a15)) & 0xF7FF63FC) + 1984397238;
  v49[2] = 1917268408;
  return (*(v47 + 8 * (((v49 != 0) | (4 * (v49 != 0))) ^ v45)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_1D4DF9D70()
{
  v4 = (v0 ^ 0xC61CBD83) + v1;
  v5 = ((v0 - 75523240) & 0xBEFBFB7F ^ 0xD390A8ED) + *(v2 - 0x2B7CC17BA9FDC7DELL);
  v6 = v1 > 0x39E340F5;
  v7 = v4 > v5;
  if (v6 == v5 < 0xC61CBF06)
  {
    v6 = v7;
  }

  return (*(v3 + 8 * ((37 * !v6) ^ v0)))();
}

uint64_t sub_1D4DF9E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v54 = v51 + v49;
  v55 = *(v52 - 0x2B7CC17BA9FDC7E6);
  v56 = HIDWORD(a15) - (v50 & 0xA4C9E4D2) - 765136279;
  v57 = *v48 - 1917268404;
  *(v55 + v57) = (v56 >> (v54 - 114)) ^ 0xD2;
  *(v55 + v57 + 1) = BYTE2(v56) ^ 0x64;
  v58 = v54 - 1641;
  *(v55 + v57 + 2) = BYTE1(v56) ^ 0xF2;
  *(v55 + v57 + 3) = v56 ^ 0x69;
  v59 = *v48 + 4;
  *v48 = v59;
  v60 = *(v52 - 0x2B7CC17BA9FDC7E6) + (v59 - 1917268404);
  return (*(v53 + 8 * ((8 * (a18 <= v60)) | (16 * (a18 <= v60)) | v58)))(v60, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4DFA438()
{
  v3 = (v0 - 1211) | 0x441;
  (*(v2 + 8 * (v0 ^ 0xD37u)))();
  *(v1 + 8) = 0;
  return (*(v2 + 8 * (v3 ^ (4 * ((((((v3 - 796) | 0x98) - 675) ^ (*(v1 + 24) == 0)) & 1) == 0)))))();
}

uint64_t sub_1D4DFA49C@<X0>(int a1@<W8>)
{
  v3 = a1 - 675;
  (*(v2 + 8 * (a1 ^ 0x835)))();
  *(v1 + 24) = 0;
  *(v1 + 36) = 0;
  *v1 = 0;
  return (*(v2 + 8 * ((54 * ((((v3 + 210) ^ (*(v1 + 48) == 0)) & 1) == 0)) ^ v3)))();
}

uint64_t sub_1D4DFA4F4()
{
  (*(v2 + 8 * (v0 + 2670)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * ((998 * (((*(v1 + 64) == 0) ^ (v0 - 83)) & 1)) ^ (v0 + 210))))();
}

uint64_t sub_1D4DFA53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v53 = (v50 + 146) | 0x849;
  v54 = (*(v52 + 8 * (v50 + 2460)))();
  *(v51 + 64) = 0;
  *(v51 + 76) = 0;
  *(v51 + 40) = 0;
  (*(v52 + 8 * (v53 ^ 0x15D)))(v54);
  (*(v52 + 8 * (v53 + 218)))();
  v63 = (*(v52 + 8 * (v53 + 212)))(a16, 0);
  return (*(v52 + 8 * (((v63 == 0) * (((v53 - 1709) | 0x140) - 1353)) ^ v53)))(v63, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_1D4DFA750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  (*(v54 + 8 * (v52 ^ 0x98B)))(a1, *(&off_1E84C00F0 + (v52 ^ 0x2FF)) - 12);
  (*(v54 + 8 * (v52 ^ 0x975)))(a1);
  (*(v54 + 8 * (v52 ^ 0x951)))(a1, v53);
  v56 = (*(v54 + 8 * (v52 ^ 0x969)))();
  return (*(v54 + 8 * (((v56 == *(&off_1E84C00F0 + v52 - 727) - 12) * (3 * (v52 ^ 0x226) + 2199)) ^ v52)))(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_1D4DFA854()
{
  v8 = v0;
  (*(v4 + 8 * (v1 ^ 0x8D9)))(v2, v3);
  v5 = (*(v4 + 8 * (v1 + 2081)))();
  return (*(v4 + 8 * (((v5 == v8) * (3 * (v1 ^ 0x3AE) + ((v1 - 136) ^ 0x649))) ^ v1)))(v5, v6);
}

uint64_t sub_1D4DFA908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0x8D9)))(v10, v11);
  v13 = (*(v12 + 8 * (v9 ^ 0x8E1)))();
  return (*(v12 + 8 * (((v13 == a9) * ((v9 - 246) ^ 0x272)) ^ v9)))(v13, v14);
}

uint64_t sub_1D4DFA9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0x8D9)))(v10, v11);
  v13 = (*(v12 + 8 * (v9 + 2081)))();
  return (*(v12 + 8 * (((v13 == a9) * ((v9 ^ 0x1FA) + (v9 ^ 0x188) + 923)) ^ v9)))(v13, v14);
}

uint64_t sub_1D4DFAA6C()
{
  (*(v4 + 8 * (v0 + 2089)))(v2, v3);
  v5 = (*(v4 + 8 * (v0 + 2081)))();
  return (*(v4 + 8 * (((v5 == v1) * (((v0 - 376) | 0xF0) ^ ((v0 - 336) | 0xC4) ^ 0x602)) ^ v0)))(v5, v6);
}

uint64_t sub_1D4DFAAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v61 = v59 + 889;
  v62 = (v59 - 1436905963) | 0x10210860;
  v63 = v59 - 1166305675;
  (*(v60 + 8 * (v59 + 2113)))(a58);
  (*(v60 + 8 * (v61 ^ 0xD48)))(a59);
  return (*(v60 + 8 * (((a57 == 0) * (v63 ^ v62 ^ 0x12)) | v61)))(a57, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_1D4DFB518@<X0>(int a1@<W8>)
{
  v3 = a1 - 1011;
  v4 = v3 + 2167;
  (*(v2 + 8 * (v3 + 2630)))();
  *(v1 + 8) = 0;
  return (*(v2 + 8 * (((((3 * (v4 ^ 0x88E) - 839) | 0x425) ^ 0x415) * (*(v1 + 24) == 0)) ^ v4)))();
}

uint64_t sub_1D4DFB57C()
{
  *(v1 + 36) = 0;
  *v1 = 0;
  return (*(v2 + 8 * (((*(v1 + 48) == 0) * (v0 + 359 + v0 + 3 - 2407)) ^ v0)))();
}

uint64_t sub_1D4DFB5B4()
{
  v3 = v0 ^ 0x164;
  (*(v2 + 8 * (v0 ^ 0xF0A)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * (((*(v1 + 64) == 0) * (((v3 + 63) ^ 0xFFFFFBBF) + v3 + 80)) ^ v3)))();
}

uint64_t sub_1D4DFB608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  *(v34 + 76) = 0;
  *(v34 + 40) = 0;
  v37 = (*(v36 + 8 * (v33 ^ 0xD56)))(**(v35 + 8 * (v33 ^ 0x631)), *(v31 - 0x2B7CC17BA9FDC7E6), *(v31 - 0x2B7CC17BA9FDC7DALL) + ((v33 - v32 + 1383) ^ 0x37C3572Du), &a27, &a31);
  return (*(v36 + 8 * ((15 * ((v37 ^ 0xFCFF6EBC) + 2147137512 + ((2 * v37) & 0xF9FEDD78) != v33 - 1929764732)) ^ v33)))();
}

uint64_t sub_1D4DFB82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{
  v37 = (*(v35 + 8 * (v34 ^ 0xD59)))(*v33, *(v31 - 0x2B7CC17BA9FDC7E6), *(v31 - 0x2B7CC17BA9FDC7DALL) + ((v34 - v32 + 1374) ^ 0x37C3572Du), &a27, &a31);
  v45 = (v37 ^ 0xFEFE6FE6) + 2113648318 + ((2 * v37) & 0xFDFCDFCC);
  if (v45 == -1929763161)
  {
    v48 = -45017;
  }

  else
  {
    if (v45 == 2096768676)
    {
      v46 = (*(v35 + 8 * (v32 - 1166304933)))(24, 0x1010040E2407E0ALL) != 0;
      return (*(v35 + 8 * ((v46 * (((v32 - 1166307785) ^ 0xFFFFFFD7) + ((v32 - 1166307785) | 1))) ^ (v32 - 1166305952))))();
    }

    v49 = 946232179 * ((((v36 - 108) ^ 0xCCAC8659 | 0xE433420F) - ((v36 - 108) ^ 0xCCAC8659) + (((v36 - 108) ^ 0xCCAC8659) & 0x1BCCBDF0)) ^ 0xB8E4F899);
    *(v36 - 104) = (v32 - 1166306289) ^ v49;
    *(v36 - 100) = v45 - v49 - 759547329;
    v37 = (*(v35 + 8 * (v32 - 1166304914)))(v36 - 108);
    if (*(v36 - 108) == 1181123576)
    {
      v48 = -45016;
    }

    else
    {
      v48 = 0;
    }
  }

  a28 = 0x5C8F431131299E9FLL;
  return (*(v35 + 8 * ((3185 * (v48 == ((169 * (((((v32 - 1166306849) | 6) - 105) | 0x400) ^ 0x7AE)) ^ 0x743))) ^ ((v32 - 1166306849) | 6))))(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1D4DFC370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v6 - 0x5C8F431131299E9FLL);
  v9 = (((v5 ^ 0x9FD) - 307763077) ^ v3) + ((2 * v3) & 0xDB4FE376) + 307760709;
  v10 = (*(v8 + v9) << 24) | (*(v8 + v9 + 1) << 16) | (*(v8 + v9 + 2) << 8) | *(v8 + v9 + 3);
  *(v6 + a3) = v4;
  return (*(v7 + 8 * ((1215 * (v10 == 0)) ^ v5)))();
}

void sub_1D4DFC6C4(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  *(v9 + a1) = v8;
  *(v12 - 244) = 0;
  *a8 = (*(v11 + 8 * (a2 ^ 0xB19)))(v10, 0x100004077774924);
  JUMPOUT(0x1D4DFC7A4);
}

uint64_t sub_1D4DFC814()
{
  v4 = (((v2 + 846304775) & 0xCD8E6AEE) + 2581527331) ^ v0;
  v6 = v1 < 0x20 || v4 < 8;
  return (*(v3 + 8 * ((19 * v6) ^ v2)))();
}

uint64_t sub_1D4DFC8B4(uint64_t a1)
{
  v5 = (a1 + v1 - 16);
  v6 = *(v3 + v1 - 16);
  *(v5 - 1) = *(v3 + v1 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * (((v2 + 1219) | 0x302) - 152)) ^ v2)))();
}

uint64_t sub_1D4DFCAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, _DWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *a12 = a25;
  *a13 = a19;
  return (*(v29 + 8 * ((25 * (a29 == 0x5C8F431131299E9FLL)) | 0x522)))(a1, 0x5C8F431131299E9FLL);
}

uint64_t sub_1D4DFCBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v24 - 0x5C8F431131299E9FLL) = 0;
  *(v24 - 0x5C8F431131299E97) = 1237259409;
  *(v24 - 0x5C8F431131299E93) = 0;
  v26 = (*(v25 + 8 * (v22 ^ 0xEB1)))(v24 - 0x5C8F431131299E9FLL);
  return (*(v25 + 8 * (((a22 == 0x2B7CC17BA9FDC7E6) * (v23 + (((v22 ^ 0x29E) - 406) ^ 0xBA7B9F6E) - 2930)) ^ v22 ^ 0x29E)))(v26);
}

void sub_1D4DFCCDC(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 1403)))();
  *(v1 - 0x2B7CC17BA9FDC7E6) = 0;
  *(v1 - 0x2B7CC17BA9FDC7DELL) = 1546751354;
  *(v1 - 0x2B7CC17BA9FDC7DALL) = 1917268404;
  JUMPOUT(0x1D4DFCD48);
}

uint64_t gJa8aF901k(uint64_t a1)
{
  if (a1 + 8) <= 6 && ((0x7Du >> (a1 + 8)))
  {
    v1 = off_1F5090EE0[40 * ((*(&unk_1F5090EEC + 23572))(24, 0x1010040E2407E0ALL) == 0) + 2369];
    __asm { BRAA            X8, X17 }
  }

  return 4294922295;
}

uint64_t sub_1D4DFD3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, int a29, int a30, uint64_t a31)
{
  (*(v32 + 8 * (v33 ^ 0xF7BCACFC)))(*v31);
  *v31 = a31;
  *a28 = a21;
  return (*(v32 + 8 * ((1170 * (a30 == (v33 ^ (v33 - 775)) - 793)) ^ (v34 + v33 - 2359))))();
}

uint64_t sub_1D4DFD594()
{
  v5 = *(v3 + 8) + 1843760272;
  v6 = v1 > 0x740256CA;
  v7 = v2 + 1052898664 > v5;
  if (v6 == v5 < (((v0 - 2135940658) | 0x770C8502) ^ 0x7C410E47u))
  {
    LOBYTE(v6) = v7;
  }

  return (*(v4 + 8 * ((119 * ((v0 ^ 0x49 ^ v6) & 1)) ^ v0)))();
}

uint64_t sub_1D4DFD62C@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  v6 = *(a1 - 0x2E52CFE8A53EA7A5);
  v7 = *a2 - 1295758285;
  *(v6 + v7 + 1) = 43;
  *(v6 + v7 + 2) = -115;
  *(v6 + v7) = 99;
  *(v6 + v7 + 3) = 110;
  *a2 += 4;
  return (*(v2 + 8 * (((v4 == v3) * ((v4 + 1418907529) & 0xB3B08FDD ^ 0xD0)) ^ (v5 + v4 - 2370))))(0);
}

uint64_t sub_1D4DFDAD0()
{
  v6 = *(v2 + 12);
  *(v3 + 32) = v2 + 12;
  return (*(v4 + 8 * (((((v0 + 891706627) & 0xCAD99EE5 ^ (v1 + 708)) + v6 > 0xFFFFFFFB) * (v0 ^ (v5 - 1481) ^ (v5 - 6))) ^ v0)))(4294922289);
}

uint64_t sub_1D4DFDB30()
{
  v6 = *(v3 + 8) - 1490089906;
  v7 = v1 > 0x3AB8DB0C;
  v8 = v2 + (v0 ^ 0xAEEu) + v5 + v0 - 708 - 2142322298 > v6;
  if (v7 == v6 < 0xC54724EF)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((1620 * v7) ^ v0)))();
}

uint64_t sub_1D4DFDFE8()
{
  v5 = *(v2 + 12);
  *(v3 + 72) = v2 + 12;
  return (*(v4 + 8 * ((49 * ((((v5 + v1) > 0xFFFFFFF7) ^ (v0 - 86)) & 1)) ^ v0)))(4294922289);
}

uint64_t sub_1D4DFE03C()
{
  v7 = (((v0 - 195) | 0x91D) ^ 0xCBC5EDE3) + *(v3 + 8);
  v8 = v1 > 0x1621FE5A;
  v9 = v2 - 1667084840 > v7;
  if (v8 == v7 < 0xE9DE019D)
  {
    v8 = v9;
  }

  return (*(v4 + 8 * ((v8 * ((v0 - v6 + 2757) ^ (v5 - 12))) ^ v0)))();
}

uint64_t sub_1D4DFE200@<X0>(int a1@<W8>)
{
  v7 = (((v2 + 2 * a1) << (((v5 - 34) ^ 0x8D) - 88)) & 0x3F7FFF60) + ((v2 + 2 * a1) ^ 0x1FBFFFB1);
  if (v1 > v4 != (v7 - 1803469259) < 0xB4413DE6)
  {
    v8 = (v7 - 1803469259) < 0xB4413DE6;
  }

  else
  {
    v8 = v7 - 1803469259 > v3;
  }

  return (*(v6 + 8 * ((324 * v8) ^ v5)))();
}

uint64_t sub_1D4DFE5BC()
{
  v6 = *(v2 + 12);
  *(v3 + 112) = v2 + 12;
  return (*(v4 + 8 * ((45 * (((v5 + (v0 ^ 0xF6) + 61) ^ ((v6 + v1) > 0xFFFFFFF7)) & 1)) ^ v0)))(4294922289);
}

uint64_t sub_1D4DFE610()
{
  v6 = *(v3 + 8) - 595448546;
  v7 = v1 > ((v0 - 1515455313) | 0x5210A600u) - v5 + 90551864;
  v8 = v2 - 1386310150 > v6;
  if (v6 < 0xFA9A49BF == v7)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((3530 * v7) ^ v0)))();
}

uint64_t sub_1D4DFE7BC@<X0>(int a1@<W8>)
{
  v7 = (a1 << (((v5 - 35) ^ 0x65) + 5)) + v2;
  v8 = ((2 * v7) & 0xFCBBF95C) + (v7 ^ 0xFE5DFCAF);
  if (v1 > v4 != v8 - 1485663003 < 0xA5D09194)
  {
    v9 = v8 - 1485663003 < 0xA5D09194;
  }

  else
  {
    v9 = v8 - 1485663003 > v3;
  }

  return (*(v6 + 8 * ((3276 * v9) ^ v5)))();
}

uint64_t sub_1D4DFEB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 144) = (*(v15 + 8 * (v16 ^ 0x25E)))();
  (*(v15 + 8 * (v16 ^ 0x269)))();
  v17 = (*(v15 + 8 * (v16 ^ 0x257)))(a14, 0);
  *(v14 + 152) = v17;
  return (*(v15 + 8 * (((v17 == 0) * (125 * (v16 ^ 0x9D9) - 2327)) | v16)))(4294922293, v17);
}

uint64_t sub_1D4DFEC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (*(v16 + 8 * (v15 ^ 0x2EF)))(a14, a2, 0);
  *(v14 + 160) = v17;
  return (*(v16 + 8 * (((v17 == 0) * (((137 * (v15 ^ 0x94B)) ^ 0x695) - 218)) ^ v15)))(4294922293);
}

uint64_t sub_1D4DFEC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  (*(v45 + 8 * (v46 ^ 0xD17)))(v48, *(&off_1E84C00F0 + v46 - 1629) - 12);
  (*(v45 + 8 * (v46 + 1305)))(v48);
  (*(v45 + 8 * (v46 ^ 0xDCD)))(v48, v47);
  v49 = (*(v45 + 8 * (v46 ^ 0xDF5)))();
  return (*(v45 + 8 * (((v49 == *(&off_1E84C00F0 + (v46 ^ 0x675)) - 12) * ((v46 + 77) ^ (v46 - 905) ^ 0xB78)) ^ v46)))(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_1D4DFED6C()
{
  v8 = v0;
  (*(v1 + 8 * (v2 + 2705)))(v4, v3);
  v5 = (*(v1 + 8 * (v2 + 2697)))();
  return (*(v1 + 8 * (((v5 == v8) * ((v2 ^ 0x3F3) + 1622)) ^ v2)))(v5, v6);
}

uint64_t sub_1D4DFEDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v9 + 8 * (v10 + 2705)))(v12, v11);
  v13 = (*(v9 + 8 * (v10 | 0xA89)))() == a9;
  return (*(v9 + 8 * ((v13 * ((((v10 ^ 0x11C) + 727) ^ 0xFFFFFB2F) + 137 * (v10 ^ 0x11C))) ^ v10)))();
}

uint64_t sub_1D4DFEEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v9 + 8 * (v10 ^ 0xAB1)))(v12, v11);
  v13 = (*(v9 + 8 * (v10 ^ 0xA89)))() == a9;
  return (*(v9 + 8 * ((v13 * ((v10 - 92070189) & 0x57CE2FF ^ (v10 - 695402915) & 0x297306FE ^ 0xD94)) ^ v10)))();
}

uint64_t sub_1D4DFEF7C()
{
  v5 = v0;
  (*(v1 + 8 * (v2 + 2705)))(v4, v3);
  v6 = (*(v1 + 8 * (v2 + 2697)))() == v5;
  return (*(v1 + 8 * ((v6 * ((v2 + 1372) ^ 0x59F)) ^ v2)))();
}

uint64_t sub_1D4DFEFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  (*(v53 + 8 * (v52 + 1838)))(a51);
  (*(v53 + 8 * ((v52 - 160) ^ 0x872)))(a52);
  return (*(v53 + 8 * ((46 * ((((v52 - 379) ^ (a50 == 0)) & 1) == 0)) ^ (v52 - 160))))(a50, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_1D4DFF86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v27 = v26 ^ 0x250;
  a19 = 0;
  a24 = 0;
  v28 = (*(v25 + 8 * (v27 + 2252)))(**(&off_1E84C00F0 + (v26 ^ 0xEB)), *v24, ((v27 - 4279082) & 0xF7FDEFF6) + *(v24 + 12) - 1157126979, &a19, &a24);
  return (*(v25 + 8 * ((2511 * ((v28 ^ 0xE7DF7FBE) + 1072954862 + ((((v27 - 417) | 0xC3) - 809566799) & (2 * v28)) == 936607151)) ^ v27)))(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_1D4DFF9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v30 = (*(v26 + 8 * (v25 ^ 0x9DC)))(*v27, *v24, (v25 - 1295758285 + *(v24 + 12) - 681), &a19, &a24);
  v31 = (v30 ^ 0x27F3FFED) - 2130497 + ((2 * v30) & 0x4FE7FFDA);
  if (v31 == 668171692)
  {
    v32 = (*(v26 + 8 * (v28 - 138631312)))(24, 0x1010040E2407E0ALL) == 0;
    return (*(v26 + 8 * ((v32 * ((v28 - 138630772) ^ (v28 - 138631575))) ^ (v28 - 138633243))))();
  }

  else if (v31 == 936607151)
  {
    return (*(v26 + 8 * ((211 * (35 * ((v28 - 138633676) ^ 0x247) == -44492)) ^ (v28 - 138633676))))(4294922279);
  }

  else
  {
    v34 = 946232179 * ((1523044408 - ((v29 - 108) | 0x5AC7D038) + ((v29 - 108) | 0xA5382FC7)) ^ 0x35431308);
    *(v29 - 104) = (v28 - 138632668) ^ v34;
    *(v29 - 100) = v31 - v34 + 669049655;
    (*(v26 + 23736))(v29 - 108);
    return (*(v26 + 8 * ((1045 * (*(v29 - 108) != 1181123576)) ^ (v28 - 138633785))))(4294922280);
  }
}

uint64_t sub_1D4DFFDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = (*(v19 + 8 * (v17 ^ 0xCBE)))(a1, 0x100004077774924);
  *(v18 + 240) = v20;
  return (*(v19 + 8 * (((v20 != 0) * ((v17 - 1385195606) & 0x529063BF ^ (v17 - 218373316) & 0xD0415BD ^ 0x2D8)) ^ v17)))(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_1D4E00004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, unsigned int a24)
{
  (*(v24 + 8 * (v25 + 1445)))(v26);
  (*(v24 + 8 * ((4 * (v25 ^ 0x5A5)) ^ 0xA8D)))(**(&off_1E84C00F0 + ((4 * (v25 ^ 0x5A5)) ^ 0x102)), a19, a24);
  return (*(v24 + 8 * ((1045 * (v27 + ((((4 * (v25 ^ 0x5A5)) ^ 0xDB) - 134371933) & 0xFFBEFFF7) == -42049)) ^ (4 * (v25 ^ 0x5A5)) ^ 0xDB)))(4294922293);
}

void sub_1D4E00054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26)
{
  v29 = *(v26 + 216);
  (*(v27 + 8 * (v28 ^ 0xF7BCACFC)))(*(v29 - 0x78520B45E1B54CDELL));
  *(v29 - 0x78520B45E1B54CDELL) = *(v26 + 240);
  **(v26 + 224) = a26;
  JUMPOUT(0x1D4E000B0);
}

uint64_t sub_1D4E00324@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v1 - 16);
  v6 = (v4 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v3 + 8 * (((((((v2 - 1368) | 0x509u) + 4294965399) & v1) != 32) * (((((v2 - 1368) | 0x509) - 1344311958) & 0x50208F7F) - 866)) ^ ((v2 - 1368) | 0x509))))(32);
}

uint64_t sub_1D4E0041C@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFF5A7 ^ (v3 - 1258913336) & 0x4B097E7B) + v1;
  *(a1 - 7 + v6) = *(v5 - 7 + v6);
  return (*(v4 + 8 * ((297 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

void sub_1D4E004D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  *(a16 - 0x78520B45E1B54CD6) = a24 - 1172238684 - ((v25 + v24 + 1950486974) & (2 * a24));
  *(a16 - 0x78520B45E1B54CD2) = -267630515;
  JUMPOUT(0x1D4E006F4);
}

uint64_t sub_1D4E00900@<X0>(int a1@<W8>)
{
  v6 = a1 - 2200;
  v7 = (a1 - 1973414721) & 0x759FE87D;
  v8 = *(v3 - 0x78520B45E1B54CDELL);
  v9 = ((2 * v1) & 0xEFEFE5DE ^ 0xE008809A) + (v1 ^ 0x7FBBAA2);
  v10 = (*(v8 + (v7 ^ 0x8080509) + v9) << ((v6 - 72) & 0x3D ^ 0x21)) | (*(v8 + v9 + 134745362) << 16) | (*(v8 + v9 + 134745363) << 8) | *(v8 + v9 + 134745364);
  *(v3 + v4) = v2;
  return (*(v5 + 8 * (v6 ^ (11 * (v3 == 0x78520B45E1B54CDELL)))))(v10);
}

uint64_t sub_1D4E009EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(v6 + 8 * (v7 + 2385)))(a2);
  *(v3 - 0x78520B45E1B54CDELL) = 0;
  *(v3 + v5) = -1172238684;
  *(v3 + v4) = v8;
  (*(v6 + 8 * (v7 ^ 0x9B3)))(v3 - 0x78520B45E1B54CDELL);
  return (*(v6 + 8 * ((((v9 + ((((v7 + 1479) | 0x18) - 138496025) & 0xFFFDE776) - 2855) ^ ((v7 + 1479) | 0x18) ^ 0x87D) * (v2 == 0)) | (v7 + 1479) | 0x18)))(a1);
}

void sub_1D4E00AD0()
{
  *v0 = 0;
  *(v0 + 8) = 504896673;
  *(v0 + 12) = v1;
  (*(v3 + 8 * (v2 ^ 0x8EA)))(v0);
  JUMPOUT(0x1D4DFD104);
}

uint64_t jkag7Bg01u(uint64_t a1, uint64_t a2)
{
  if (a1 + 8) <= 6 && ((0x7Du >> (a1 + 8)))
  {
    __asm { BRAA            X8, X17 }
  }

  return 4294922295;
}

uint64_t sub_1D4E01204(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _DWORD *a27, int a28, int a29, uint64_t a30)
{
  v33 = a5 + a4 - 322;
  (*(v32 + 8 * (a4 + v31)))(*v30);
  *v30 = a30;
  *a27 = a16;
  return (*(v32 + 8 * ((1760 * (a29 == 0)) ^ v33)))();
}

uint64_t sub_1D4E013DC()
{
  v5 = *(v3 + 8) - 748115895;
  v6 = v1 > ((v0 + 857) ^ 0xBAE3162F);
  v7 = v2 + 1189952448 + ((v0 - 1601795400) | 0x1411018Au) > v5;
  if (v6 == v5 < 0x451CE12D)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((1003 * v6) ^ v0)))();
}

uint64_t sub_1D4E01574@<X0>(int a1@<W8>)
{
  v6 = (a1 << (((v4 - 33) | 0x41) + 62)) + ((v4 + 479) ^ 0x4A4 ^ (v2 + 230));
  v7 = ((2 * v6) & 0xF76FFDFC) + (v6 ^ 0x7BB7FEFE);
  if (v1 > 0x24ACDCE0 != v7 + 1604002845 < 0xDB53231B)
  {
    v8 = v7 + 1604002845 < 0xDB53231B;
  }

  else
  {
    v8 = v7 + 1604002845 > v3;
  }

  return (*(v5 + 8 * ((104 * v8) ^ v4)))();
}

uint64_t sub_1D4E01900(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 12);
  *(a6 + 16) = v8 + 12;
  return (*(v9 + 8 * ((125 * (((a4 + v6 - 2106) ^ (a4 + 969) ^ (v7 - 1113)) + v10 > 0xFFFFFFFB)) ^ v6)))(4294922289);
}

uint64_t sub_1D4E0194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(v8 + 8) + 1736112910;
  v11 = v7 > 0x26D0CC09;
  v12 = v6 - 1885921201 > v10;
  if (v11 != v10 < ((a5 + ((v5 + 604175601) | 0x90949080) - 391) ^ 0xD92F3321))
  {
    v12 = v11;
  }

  return (*(v9 + 8 * ((v12 | (2 * v12)) ^ v5)))();
}

uint64_t sub_1D4E01B08@<X0>(int a1@<W8>)
{
  v7 = ((((v5 + 1490577244) & 0xA7279E77) - 201429150) & (2 * (v2 + 2 * a1))) + ((v2 + 2 * a1) ^ 0xF9FF3CE4);
  if (v1 > v4 != v7 - 172588860 < 0xEFB5BDA8)
  {
    v8 = v7 - 172588860 < 0xEFB5BDA8;
  }

  else
  {
    v8 = v7 - 172588860 > v3;
  }

  return (*(v6 + 8 * ((15 * v8) ^ v5)))();
}

uint64_t sub_1D4E01E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 12);
  *(a6 + 56) = v8 + 12;
  return (*(v9 + 8 * ((63 * ((v10 + v7) < 0xFFFFFFF8)) ^ v6)))(4294922289);
}

uint64_t sub_1D4E01EA8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = (((a5 + a4 + v5 - 975 - 186 - 434) | 0x310) ^ 0xBF92BAD8) + *(v8 + 8);
  v11 = v6 > 0xCEB90DB3;
  v12 = v7 - 407970139 > v10;
  if (v11 == v10 < 0x3146F244)
  {
    v11 = v12;
  }

  return (*(v9 + 8 * (((32 * v11) | (v11 << 6)) ^ (v5 - 975))))();
}

uint64_t sub_1D4E02474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(v13 + 8 * (v12 + 2414)))();
  (*(v13 + 8 * (v12 + 2429)))();
  v15 = (*(v13 + 8 * (v12 ^ 0x9BB)))(a12, 0);
  return (*(v13 + 8 * (v12 | (8 * (v15 == 0)))))(4294922293, v15);
}

uint64_t sub_1D4E025B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  (*(v43 + 8 * (v40 + 2724)))(v42, *(&off_1E84C00F0 + ((v40 + 1979) ^ 0x89D)) - 12);
  (*(v43 + 8 * (v40 + 2734)))(v42);
  (*(v43 + 8 * ((v40 + 1979) ^ 0x333)))(v42, v41);
  v44 = (*(v43 + 8 * ((v40 + 1979) ^ 0x30B)))();
  return (*(v43 + 8 * (((v44 == *(&off_1E84C00F0 + ((v40 + 1979) ^ 0x88B)) - 12) * (((v40 + 1459144467) & 0xA9073F7D ^ 0xFFFFFC95) + ((v40 + 2135594790) & 0x80B56C4F))) ^ (v40 + 1979))))(v44, v45, v46, v47, v48, v49, v50, v51, a9, v39, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_1D4E026E8()
{
  v7 = v0;
  (*(v4 + 8 * (v1 ^ 0xA7D)))(v3, v2);
  v5 = (*(v4 + 8 * (v1 + 2493)))();
  return (*(v4 + 8 * (((v5 == v7) * (v1 + 1718 + v1 + 625 - 988)) ^ v1)))(v5);
}

uint64_t sub_1D4E02798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0xA7Du)))(v11, v10);
  v13 = (*(v12 + 8 * (v9 + 2493)))() == a9;
  return (*(v12 + 8 * ((v13 * (((v9 ^ 0x94E) - 2007) ^ 0x255)) ^ v9)))();
}

uint64_t sub_1D4E02844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0xA7D)))(v11, v10);
  v13 = (*(v12 + 8 * (v9 + 2493)))() == a9;
  return (*(v12 + 8 * ((v13 * ((11 * (v9 ^ 0x1CD) + 272272676) & 0xEFC57AB2 ^ 0xBCF)) ^ v9)))();
}

uint64_t sub_1D4E02904()
{
  v5 = v0;
  (*(v4 + 8 * ((v1 + 289) ^ 0xA7D)))(v3, v2);
  v6 = (*(v4 + 8 * ((v1 + 289) ^ 0xA45)))() == v5;
  return (*(v4 + 8 * ((v6 * (((v1 - 2065532648) & 0x7B1D8EBE) - 769)) ^ (v1 + 289))))();
}

uint64_t sub_1D4E02984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v48 = 5 * (v46 ^ 0x4DB);
  (*(v47 + 8 * (v48 ^ 0x298)))(a45);
  (*(v47 + 8 * (v48 + 376)))(a46);
  return (*(v47 + 8 * (((a44 == 0) * ((((v48 + 335837067) | 0xA093108A) ^ 0xFFFFFF88) + v48 - 1265137643)) ^ v48)))(a44, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_1D4E03420(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a19 = 0;
  a16 = 0;
  v23 = (*(v22 + 8 * (v21 ^ 0xC76)))(**(&off_1E84C00F0 + (v21 ^ 0x711)), *v20, v19 + *(v20 + 12) + ((v21 - 1265136953) ^ (a2 - 284)) - 356, &a19, &a16);
  return (*(v22 + 8 * ((134 * ((v23 ^ 0x3733C776) - 84018724 + ((2 * v23) & 0x6E678EEC) != 1110557013)) ^ v21)))(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11);
}

uint64_t sub_1D4E0355C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v15 = (*(v13 + 8 * (v9 + 1008)))(*v11, *v7, (*(v7 + 12) + v8), va1, va);
  v16 = (v15 ^ 0xF235DB53) + 1073473023 + (((v9 - 1265137083) ^ 0x50FC276C) & (2 * v15));
  if (v16 == 842121554)
  {
    v17 = (*(v13 + 23584))(24, 0x1010040E2407E0ALL) != 0;
    return (*(v13 + 8 * ((v17 * (11 * (v12 ^ 0xB4979086) - 327)) ^ 0x73C)))();
  }

  else if (v16 == 1110557013)
  {
    v23 = v10;
    return (*(v13 + 4816))(4294922279);
  }

  else
  {
    v19 = 946232179 * ((((2 * (v14 - 108)) | 0xAD5392EC) - (v14 - 108) - 1453967734) ^ 0xC6D2F5B9);
    *(v14 - 104) = v19 ^ 0x638;
    *(v14 - 100) = v16 - v19 + 495099793;
    (*(v13 + 23736))(v14 - 108);
    return (*(v13 + 8 * ((173 * (*(v14 - 108) != 1181123576)) ^ 0x164)))(4294922280);
  }
}

uint64_t sub_1D4E03BA8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = a1 ^ 0x9B4;
  (*(v13 + 8 * (a1 + 368)))(v12);
  v15 = (v14 - 618) | 0x20;
  (*(v13 + 8 * (v15 + 2601)))(**(&off_1E84C00F0 + v15 - 354), a12, a9);
  return (*(v13 + 8 * ((173 * ((((v15 + 805797662) | 0x84901148) ^ 0xB49791CA) == -45003)) ^ v15)))(4294922293);
}

void sub_1D4E03BE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, _DWORD *a55, uint64_t a56, uint64_t a57)
{
  v59 = *(a6 + 160);
  (*(v58 + 8 * (a4 ^ v57)))(*(v59 - 0x161D22D60BEDB2F3));
  *(v59 - 0x161D22D60BEDB2F3) = a57;
  *a55 = a18;
  JUMPOUT(0x1D4E03C40);
}

uint64_t sub_1D4E03E04(uint64_t a1)
{
  v5 = *(v3 + v1 - 1 - 31);
  v6 = a1 + v1 - 1;
  *(v6 - 15) = *(v3 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((3128 * ((v2 ^ 0x17Cu) - 1228 == (v1 & 0xFFFFFFE0))) ^ v2)))();
}

uint64_t sub_1D4E03E98(uint64_t a1)
{
  *(a1 + v1) = *(v5 + v1);
  v7 = ((v1 + 1) ^ v3) != (v2 ^ 0x2D496C09);
  return (*(v6 + 8 * (((v7 << 6) | (v7 << 7)) ^ v4)))();
}

void sub_1D4E04024(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(a20 - 0x161D22D60BEDB2EBLL) = ((a5 + a4 + 1250) ^ 0x7878E419) + a16 - ((2 * a16) & 0xF0F1C64A);
  *(a20 - 0x161D22D60BEDB2E7) = -499228505;
  JUMPOUT(0x1D4E04210);
}

uint64_t sub_1D4E0443C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *(v7 - 0x161D22D60BEDB2F3);
  v12 = ((2 * v5) & 0xFFDFE97E ^ 0xC45CC14E) + (v5 ^ 0x1DD19418) + 1051457;
  v13 = (*(v11 + v12) << 24) | (*(v11 + v12 + 1) << 16) | (*(v11 + v12 + 2) << 8);
  v14 = *(v11 + v12 + 3);
  *(v7 + v9) = v6;
  if (!(v13 | v14))
  {
    return (*(v10 + 8 * ((((a2 ^ (a2 + 493)) - 407) * (v7 == v8)) ^ (a5 + a2 + 27))))(4294922294);
  }

  if ((v13 | v14) == 0xFFFF4FFB)
  {
    return (*(v10 + 8 * (((*(*(&off_1E84C00F0 + a5 + a2 - 602) - 4) == 0) * (((a5 + a2 - 1727431518) & 0x66F68BBF) - 2568)) ^ (a5 + a2 + 527))))();
  }

  return (*(v10 + 8 * ((16 * (((v7 == v8) ^ (((-77 - a2) ^ 0x2F) + 1)) & 1)) | 0x7AC)))();
}

uint64_t sub_1D4E04930@<X0>(int a1@<W8>)
{
  v8 = (a1 - 1387687271) & 0x52B66EFA;
  (*(v7 + 8 * (a1 ^ 0xB4C)))();
  *(v2 - 0x161D22D60BEDB2F3) = 0;
  *(v2 + v6) = 2021188389;
  *(v2 + v4) = v5;
  (*(v7 + 8 * (v8 + 2352)))(v2 - 0x161D22D60BEDB2F3);
  return (*(v7 + 8 * (((((((v8 + 718) | 0x2C1) + 806746591) | 0x84819002) + 1265135760 + 354 * (((v8 + 718) | 0x2C1) ^ 0x7EE) - 3057) * (v1 == 0)) ^ ((v8 + 718) | 0x2C1))))(v3);
}

void sub_1D4E04A58()
{
  *v0 = 0;
  *(v0 + 8) = 1907636452;
  *(v0 + 12) = v1;
  (*(v3 + 8 * (v2 ^ 0xA4E)))(v0);
  JUMPOUT(0x1D4E00D14);
}

void asabc800ag(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4E04B38(uint64_t a1, _DWORD *a2)
{
  *v2 = 0;
  *a2 = 0;
  v4 = (*(v3 + 23584))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v3 + 8 * (v4 | (4 * v4) | 0x542u)))(4294922293);
}

uint64_t sub_1D4E055FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, _DWORD *a34, int a35, unsigned int a36, uint64_t a37)
{
  v39 = 2 * (a5 ^ (a5 - 167));
  v40 = v38 + a5 - 2045;
  (*(v37 + 8 * (a5 ^ (a5 - 2422))))(*a11);
  *a11 = a37;
  *a34 = a26;
  return (*(v37 + 8 * (((a36 == 0) * (v39 ^ 0xC50)) ^ v40)))(a36, v41, v42, v43, 2932264581, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D4E05724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _DWORD *a40, int a41, unsigned int a42, uint64_t a43)
{
  v45 = a5 ^ (a5 + 168);
  v46 = a5 + v44 - 1924;
  (*(v43 + 8 * (a5 + v44)))(*(a38 - 0x1A8CA07156B7B2ABLL));
  *(a38 - 0x1A8CA07156B7B2ABLL) = a43;
  *a40 = a31;
  return (*(v43 + 8 * (((a42 == 0) * (v45 ^ 0x163)) ^ v46)))(a42, v47, v48, v49, 2932264581, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D4E05998()
{
  v4 = *(v2 - 0x1A8CA07156B7B2A3) - 1579938237 + ((v1 - 531815500) & 0x1FB2DF3F);
  if (v0 > 0x572430B != v4 < 0xFA8DBCF0)
  {
    v5 = v0 > 0x572430B;
  }

  else
  {
    v5 = v0 - 91374841 + v1 - 62 > v4;
  }

  return (*(v3 + 8 * ((27 * !v5) ^ v1)))();
}

uint64_t sub_1D4E05A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *(v8 - 0x1A8CA07156B7B2ABLL);
  v12 = ((2 * v6) & 0xFD37F77A) + (v6 ^ 0xFE9BFBBD);
  *(v11 + v12 + 23331908) = 0;
  v13 = a5 + v7 - 493;
  *(v11 + v12 + 23331907) = 0;
  *(v11 + v12 + 23331909) = 0;
  *(v11 + v12 + (v13 ^ 0xAFA2CAC3)) = 1;
  *v5 += 4;
  return (*(v9 + 8 * ((690 * (((a5 + v7 + 1561448301) ^ 0xBD89E42) + ((a5 + v7 + 1561448301) & 0xF42766F7) == 2164)) ^ (v10 + v13 - 2775))))(0);
}

uint64_t sub_1D4E05F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(v13 + 8 * (v12 + 2426)))();
  (*(v13 + 8 * (v12 + 2441)))();
  v15 = (*(v13 + 8 * (v12 + 2435)))(a12, 0);
  return (*(v13 + 8 * (((((v12 - 67) ^ (v15 == 0)) & 1) * ((v12 - 528963) & 0xAECEDEAD ^ 0xAEC6CEB3)) ^ v12)))(4294922293, v15);
}

uint64_t sub_1D4E06008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = v13 ^ v12 ^ (a5 - 99);
  v17 = (*(v14 + 8 * ((v13 ^ v12) + 513)))(a12, a2, 0);
  *(v15 - 256) = v17;
  return (*(v14 + 8 * ((((v16 ^ (v17 == 0)) & 1) * ((((v13 ^ v12) - 2374) | 0x210) ^ 0x265)) ^ v13 ^ v12)))(4294922293);
}

uint64_t sub_1D4E06080()
{
  (*(v1 + 8 * (v0 ^ 0x90A)))(v2, *(&off_1E84C00F0 + v0 - 610) - 12);
  (*(v1 + 8 * (v0 ^ 0x9F4)))(v2);
  *(v4 - 248) = (*(v1 + 8 * (v0 ^ 0x9D0)))(v2, v3);
  v5 = (*(v1 + 8 * (v0 ^ 0x9E8)))();
  return (*(v1 + 8 * (((v5 == *(&off_1E84C00F0 + (v0 ^ 0x268)) - 12) * (v0 ^ 0x36E ^ ((v0 + 399) | 0x3B2))) ^ v0)))(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_1D4E06184(uint64_t a1)
{
  v4 = (v1 - 1359520148) & 0x5108A6FB;
  *(v3 - 248) = a1;
  (*(v2 + 8 * (v4 + 1074)))();
  (*(v2 + 8 * (v4 + 1074)))(*(v3 - 256));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4E06DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v31 = v28 + 1187;
  v32 = (v28 - 1126878) & 0xAED7FFAF;
  a19 = 0;
  a28 = 0;
  a27 = v30;
  v33 = (*(v29 + 8 * (v28 + 2754)))(**(&off_1E84C00F0 + v28 - 161), *(a24 - 0x1A8CA07156B7B2ABLL), *(a24 - 0x1A8CA07156B7B29FLL), &a19, &a28);
  return (*(v29 + 8 * ((13 * ((v33 ^ (v32 - 1325847814)) - 44073024 + ((2 * v33) & 0xBF7FF2FE) == 1830779202)) ^ v31)))(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_1D4E06EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v37 = (*(v32 + 8 * (v29 + 1567)))(*v33, *(v30 + v31), *(v30 - 0x1A8CA07156B7B29FLL), &a19, &a28);
  v43 = (v37 ^ 0x7F9FF9FF) - 578846912 + ((v37 << ((v29 - 113) & 0x9F ^ (v35 - 1))) & 0xFF3FF3FE);
  if (v43 == v28)
  {
    v46 = 4294922279;
    v47 = v34;
  }

  else
  {
    if (v43 == 1562343743)
    {
      v44 = (*(v32 + 23584))(24, 0x1010040E2407E0ALL) != 0;
      return (*(v32 + 8 * ((115 * v44) ^ 0x391)))();
    }

    v48 = 946232179 * ((((v36 - 108) | 0x211FEA39) - ((v36 - 108) & 0x211FEA39)) ^ 0xB164D6F6);
    *(v36 - 104) = v48 ^ 0x638;
    *(v36 - 100) = v43 - v48 - 225122396;
    (*(v32 + 23736))(v36 - 108);
    if (*(v36 - 108) == 1181123576)
    {
      v46 = 4294922280;
    }

    else
    {
      v46 = 0;
    }

    v47 = v34;
  }

  if (v46)
  {
    v49 = v34;
  }

  else
  {
    v49 = v47;
  }

  a20 = v49;
  return (*(v32 + 8 * ((2576 * (v46 == 0)) ^ 0xB3)))(v46, 4130263200, v38, v39, 2932264581, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_1D4E0726C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28)
{
  *(v30 + 8) = v32 - 4096;
  *(v33 - 200) = v31;
  return (*(v29 + 8 * (((a28 <= 0x1000) * (v28 - 777)) ^ v28)))(a1, a2, a3, a4, 2932264581);
}

uint64_t sub_1D4E073AC()
{
  *(v4 - 180) = -45007;
  *(v4 - 164) = -45007;
  return (*(v1 + 8 * (((v2 == v3) * (((v0 + 338) ^ 0x664) + ((v0 + 338) ^ 0xFFFFFD87))) ^ (v0 + 338))))();
}

void sub_1D4E0762C()
{
  (*(v4 + 8 * (v1 ^ (v0 - 2422))))();
  *(v5 + v2) = 0;
  *(v5 - 0x71166887D0A76934) = v6;
  *(v5 + v3) = 164704100;
  (*(v4 + 8 * (v1 ^ 0xAEC6C50F)))(v5 + v2);
  sub_1D4E078C8();
}

uint64_t sub_1D4E076F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29)
{
  v32 = 163 * (a5 ^ (a5 + 1));
  v33 = a5 + v31 - 2863;
  v34 = *(v30 - 200);
  v35 = (*(v29 + 8 * (a5 + v31)))(*(v34 - 0x71166887D0A7693CLL));
  *(v34 - 0x71166887D0A7693CLL) = *(v30 - 176);
  **(v30 - 192) = a29;
  v36 = *(v30 - 180);
  *(v30 - 164) = v36;
  return (*(v29 + 8 * ((204 * (v36 != (v32 ^ 0x1E9))) ^ v33)))(v35);
}

uint64_t sub_1D4E07850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  *(a27 - 0x71166887D0A76934) = (a5 ^ (a5 - 369)) + 524352999 + a28 - ((2 * a28) & 0x3E81FBCE) - 913;
  *(a27 - 0x71166887D0A76930) = 164704100;
  return sub_1D4E078C8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D4E07AA8(uint64_t a1, int a2)
{
  v8 = *(v6 - 0x71166887D0A7693CLL);
  v9 = (*(v8 + v5) << ((v4 ^ 0x2A) + 13)) | (*(v8 + (a2 + v3 - 3)) << 16) | (*(v8 + (a2 + v3 - 2)) << 8) | *(v8 + (a2 + v3 - 1));
  *(v6 - 0x71166887D0A76930) = v2 + 1509109630;
  return (*(v7 + 8 * ((1085 * (v9 == 261 * (v4 ^ 0x22A) - 2871)) ^ v4)))();
}

uint64_t sub_1D4E07C28@<X0>(uint64_t a1@<X8>)
{
  v8 = (*(a1 + v3) << (((v4 - 32) & 0x3F) - 31)) | (*(a1 + (v1 + 1)) << 16) | (*(a1 + (v1 + 2)) << ((v4 - 120) & 0x7D ^ 0x15)) | *(a1 + (v1 + 3));
  *(v5 - 0x71166887D0A76930) = v2 - 908234881;
  return (*(v6 + 8 * ((978 * (v8 != 0)) ^ (v4 - 342))))(0);
}

uint64_t sub_1D4E07CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = (*(v8 + 8 * (v7 ^ 0x999)))(v6 << (((-67 * (v7 ^ 0x1E)) ^ 0xB7u) + a5 + v7 - 29), 0x1010040F32E1FD2);
  v12 = v5 == v9 || v10 == 0;
  return (*(v8 + 8 * ((60 * v12) ^ v7)))(4294922294);
}

uint64_t sub_1D4E07E74@<X0>(int a1@<W4>, int a2@<W5>, int *a3@<X8>)
{
  v16 = bswap64(*(*(v10 + v9) + (((a2 - 4) << ((a1 ^ v5) + 118)) & ((a1 - 1455) + v7)) + ((a2 - 4) ^ v6) + v3));
  *(a3 - 3) = (v16 + v4 - (v8 & (2 * v16))) ^ v4;
  LODWORD(v16) = *(v10 + v12);
  *(v10 + v12) = v16 + 8;
  v17 = *(v10 + v9);
  *(a3 - 1) = (*(v17 + (v14 + v16 + 4)) << 24) | (*(v17 + (v14 + v16 + 5)) << 16) | (*(v17 + (v14 + v16 + 6)) << 8) | *(v17 + (v14 + v16 + 7));
  LODWORD(v16) = *(v10 + v12);
  *(v10 + v12) = v16 + 4;
  v18 = *(v10 + v9);
  *a3 = (*(v18 + (v16 + v14)) << 24) | (*(v18 + (v16 + v14 + 1)) << 16) | (*(v18 + (v16 + v14 + 2)) << 8) | *(v18 + (v16 + v14 + 3));
  LODWORD(v16) = *(v10 + v12);
  *(v10 + v12) = v16 + 4;
  return (*(v13 + 8 * (a1 | (2 * (v16 + v14 + *(a3 - 1) + *a3 > (*(v10 + v11) ^ v15))))))();
}

uint64_t sub_1D4E07F8C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>)
{
  *(a7 + 4) = *(v9 + v8) + a5;
  v13 = *(v9 + v10) + a4;
  *(v9 + v10) = v13;
  *(a7 + 12) = *(v9 + v8) + (a6 + v13 - 4);
  *(v9 + v10) += *a7;
  return (*(v11 + 8 * (((v12 + ((a3 + a1) | a2) - 2894) * (v7 == 0)) ^ a3)))();
}

uint64_t sub_1D4E080A0@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 < v5;
  *(v2 + v3) = 0;
  if (v7 == (v3 + 1) > 0xFFFFFFFFFA44B07CLL)
  {
    v7 = a1 + v3 + (v1 + 1329) + 411 < v4;
  }

  return (*(v6 + 8 * ((3224 * v7) ^ v1)))(4294922262);
}

uint64_t sub_1D4E08100(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  *(v28 - 160) = a22;
  *(v28 - 148) = a27;
  return (*(v27 + 8 * ((((7 * (((a4 - 645) | 0x148) ^ 0x77D)) ^ 0x109) * (a22 != 0)) ^ (a4 + 564))))(0);
}

uint64_t sub_1D4E08158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  v21 = (*(v20 + 8 * (v17 ^ 0xAE1)))(32 * v18, 0x1010040F32E1FD2);
  *a17 = v21;
  return (*(v20 + 8 * (((v21 == 0) * (((v17 - 95) | 0x648) - 1850)) ^ v17)))(v19);
}

uint64_t sub_1D4E081B8()
{
  *(v3 - 137) = v1 != 0;
  *(v3 - 144) = 0;
  return (*(v2 + 8 * (((((v0 - 28) ^ (v1 != 0)) & 1) * ((v0 + 996) ^ 0x54E)) ^ (v0 + 996))))();
}

uint64_t sub_1D4E08204@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *(v12 - 160);
  v14 = 32 * a1;
  *(*a10 + v14) = *(v13 + v14);
  v16 = (v13 + v14 + 8);
  v15 = *v16;
  *(v12 - 136) = a1;
  *(v12 - 128) = v16;
  *(*a10 + v14 + 8) = v15;
  v17 = *(v13 + v14 + 12);
  *(v12 - 120) = v13 + v14 + 12;
  *(*a10 + v14 + 12) = v17;
  *(*a10 + v14 + 16) = 0;
  *(*a10 + v14 + 24) = 0;
  *(*a10 + v14 + 16) = (*(v11 + 8 * (v10 ^ 0xE57)))(*v16, 0x100004077774924);
  return (*(v11 + 8 * (((*(*a10 + v14 + 16) == 0) * (v10 - 1432 + ((v10 - 315706908) & 0x12D14A6F) - 601)) ^ v10)))();
}

uint64_t sub_1D4E084B8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 329;
  v6 = (v1 - 16 + a1);
  v7 = *(v4 + v1 - 16);
  *(v6 - 1) = *(v4 + v1 - 16 - 16);
  *v6 = v7;
  return (*(v3 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * ((v5 + 181761835) & 0xF52A87AD ^ 0x43E)) ^ v5)))((v1 & 0xFFFFFFE0) - 32);
}

uint64_t sub_1D4E086BC@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v9 = v3 - 1;
  *(a2 + v9) = *(v8 + v9);
  return (*(v7 + 8 * (((v9 == ((v2 + v4) | v5) + a1) * v6) ^ v2)))();
}

uint64_t sub_1D4E086F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int *a15, uint64_t a16, void *a17)
{
  v19 = 7 * ((v18 + a5 - 1176) ^ 0x6F9);
  v20 = v18 + a5 - 793;
  *(*a17 + 32 * a7 + 24) = (*(v17 + 8 * (v18 + a5 - 6)))(*a15, 0x100004077774924);
  return (*(v17 + 8 * (((*(*a17 + 32 * a7 + 24) == 0) * (v19 ^ 0xB6)) ^ v20)))();
}

uint64_t sub_1D4E0880C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = 451 * (a5 ^ (a5 + 1));
  v27 = *(v25 - 148);
  v28 = v26 + *(v25 - 144) - 1352;
  *(v25 - 144) = v28;
  LOBYTE(v27) = v28 < v27;
  *(v25 - 137) = v27;
  return (*(v24 + 8 * ((((v26 ^ v27) & 1) * (v26 ^ 0x54E)) ^ v26)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D4E08870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v29 = 11 * (v27 ^ 0x74);
  (*(v28 + 8 * ((v27 ^ 0x63F) + 1084)))(a22);
  *a10 = a27;
  return (*(v28 + 8 * (((a20 == 0x71166887D0A7693CLL) * ((((v29 - 1782) | 0x296) + 521) ^ 0x888)) ^ v29)))(0);
}

uint64_t sub_1D4E08B5C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = (a1 - 2253) | 0xA0;
  (*(v20 + 8 * (a1 + 682)))();
  *(v18 + v19) = 0;
  *(v18 - 0x71166887D0A76934) = v21;
  *(v18 - 0x71166887D0A76930) = 164704100;
  (*(v20 + 8 * (v22 + 2775)))(v18 + v19);
  return (*(v20 + 8 * (((((((v22 + 76) & 0xD7) + 68) ^ (a17 == 0x1A8CA07156B7B2ABLL)) & 1) * (((v22 + 2121187148) & 0x819146D7 ^ 0xAEC6C852) + 1362702777)) ^ (v22 + 2121187148) & 0x819146D7)))(v17);
}

void sub_1D4E08C7C()
{
  *(v1 + v2) = 0;
  *(v1 - 0x1A8CA07156B7B2A3) = 1488562574;
  *(v1 - 0x1A8CA07156B7B29FLL) = 0;
  (*(v3 + 8 * ((v0 ^ 0x1098) + 1756)))(v1 + v2);
  sub_1D4E04B8C();
}

void Gg9q7vHg34(unint64_t a1, uint64_t a2)
{
  v3 = a1 > 0xFFFFFFFFFFFFFFEFLL && a2 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4E08E30(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = (*(v3 + 23584))(24, 0x1010040E2407E0ALL) != 0;
  return (*(v3 + 8 * ((39 * v4) ^ v2)))(4294922293);
}

uint64_t sub_1D4E08E80()
{
  *v0 = 0;
  *(v0 + 8) = 0x205585D268BFA235;
  *(v0 + 16) = 0;
  v2 = (*(v1 + 23584))(4096, 0x100004077774924);
  *v0 = v2;
  return (*(v1 + 8 * ((20 * (v2 == 0)) ^ 0x801)))();
}