unint64_t sub_1AF6B4C7C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1AFDFF288();
      sub_1AFDFF2A8();
      MEMORY[0x1B271ACB0](v9);
      result = sub_1AFDFF2F8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 72 * v3;
        v15 = (v14 + 72 * v6);
        if (v3 != v6 || result >= v15 + 72)
        {
          result = memmove(result, v15, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

unint64_t sub_1AF6B4E24(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1AFDFF278();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          result = v15 + 120 * v3;
          v16 = (v15 + 120 * v6);
          if (v3 != v6 || result >= v16 + 120)
          {
            result = memmove(result, v16, 0x78uLL);
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

uint64_t sub_1AF6B4F90(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      sub_1AFDFF288();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      result = sub_1AFDFF2F8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

uint64_t sub_1AF6B512C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      sub_1AFDFF288();

      sub_1AFDFD038();
      v10 = sub_1AFDFF2F8();

      v11 = v10 & v7;
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
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

uint64_t sub_1AF6B52D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      sub_1AFDFF288();
      sub_1AFDFD038();

      result = sub_1AFDFF2F8();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

uint64_t sub_1AF6B57D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      sub_1AFDFF288();
      sub_1AFDFD038();

      result = sub_1AFDFF2F8();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

void (*sub_1AF6B5A70(uint64_t *a1, uint64_t a2))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1AF6B70CC(v5);
  v5[9] = sub_1AF6B5F20(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1AF6B762C;
}

void (*sub_1AF6B5B14(uint64_t *a1, uint64_t a2))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1AF6B70CC(v5);
  v5[9] = sub_1AF6B6140(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1AF6B762C;
}

void (*sub_1AF6B5BB8(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for TextureCache.TextureKey() - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[8] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1AF6B718C(a2, v9);
  v6[9] = sub_1AF6B70CC(v6);
  v6[10] = sub_1AF6B6334(v6 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_1AF6B5CA0;
}

void sub_1AF6B5CA0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_1AF6B71F0(v3);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1AF6B5D1C(uint64_t *a1, unsigned __int8 a2, uint64_t a3))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1AF6B70CC(v7);
  v7[9] = sub_1AF6B66C8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1AF6B762C;
}

void (*sub_1AF6B5DC8(uint64_t *a1, unint64_t a2))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1AF6B70CC(v5);
  v5[9] = sub_1AF6B6A00(v5 + 4, a2 | ((HIDWORD(a2) & 1) << 32), isUniquelyReferenced_nonNull_native);
  return sub_1AF6B762C;
}

void (*sub_1AF6B5E7C(uint64_t *a1, uint64_t a2))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1AF6B70CC(v5);
  v5[9] = sub_1AF6B6EFC(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1AF6B762C;
}

void (*sub_1AF6B5F20(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 24) = a2;
  *(v8 + 32) = v3;
  v10 = *v3;
  v11 = sub_1AF449CB8(a2);
  v13 = v12;
  *(v9 + 48) = v12 & 1;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a3 & 1) == 0)
  {
    if (v14 < v15 || (a3 & 1) != 0)
    {
      sub_1AF82D618(v15, a3 & 1);
      v11 = sub_1AF449CB8(a2);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v11;
      sub_1AF845100();
      v11 = v16;
    }
  }

  *(v9 + 40) = v11;
  if (v13)
  {
    v18 = *(*v4 + 56) + 24 * v11;
    v19 = *v18;
    v20 = *(v18 + 16);
  }

  else
  {
    v20 = 0;
    v19 = 0uLL;
  }

  *v9 = v19;
  *(v9 + 16) = v20;
  return sub_1AF6B6070;
}

void sub_1AF6B6070(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 48);
  if (v2)
  {
    v6 = v1[5];
    v7 = *v1[4];
    if (v5)
    {
      v8 = (v7[7] + 24 * v6);
      *v8 = v2;
      v8[1] = v3;
      v8[2] = v4;
    }

    else
    {
      sub_1AF843220(v6, v1[3], v2, v3, v4, v7);
    }
  }

  else if ((*a1)[6])
  {
    sub_1AF6B2070(v1[5], *v1[4]);
  }

  v9 = *v1;
  sub_1AF6B70F4(v2);
  sub_1AF6B7140(v9);

  free(v1);
}

void (*sub_1AF6B6140(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 24) = a2;
  *(v8 + 32) = v3;
  v10 = *v3;
  v11 = sub_1AF449CB8(a2);
  v13 = v12;
  *(v9 + 48) = v12 & 1;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a3 & 1) == 0)
  {
    if (v14 < v15 || (a3 & 1) != 0)
    {
      sub_1AF834194(v15, a3 & 1);
      v11 = sub_1AF449CB8(a2);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v11;
      sub_1AF848B00();
      v11 = v16;
    }
  }

  *(v9 + 40) = v11;
  if (v13)
  {
    v18 = *(*v4 + 56) + 24 * v11;
    v19 = *v18;
    v20 = *(v18 + 16);
  }

  else
  {
    v20 = 0;
    v19 = 0uLL;
  }

  *v9 = v19;
  *(v9 + 16) = v20;
  return sub_1AF6B6290;
}

void sub_1AF6B6290(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 48);
  if (v3)
  {
    v6 = v1[5];
    v7 = *v1[4];
    if (v5)
    {
      v8 = (v7[7] + 24 * v6);
      *v8 = v3;
      v8[1] = v2;
      v8[2] = v4;
    }

    else
    {
      sub_1AF843220(v6, v1[3], v3, v2, v4, v7);
    }
  }

  else if ((*a1)[6])
  {
    sub_1AF6B2070(v1[5], *v1[4]);
  }

  free(v1);
}

void (*sub_1AF6B6334(uint64_t *a1, unsigned __int8 *a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x300uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 736) = v4;
  *(v9 + 728) = a2;
  v11 = *(type metadata accessor for TextureCache.TextureKey() - 8);
  *(v10 + 744) = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v10 + 752) = v12;
  v13 = *v4;
  v14 = sub_1AF41A700(a2);
  v16 = v15;
  *(v10 + 97) = v15 & 1;
  v17 = *(v13 + 24);
  v18 = *(v13 + 16) + ((v15 & 1) == 0);
  if (v17 < v18 || (a3 & 1) == 0)
  {
    if (v17 < v18 || (a3 & 1) != 0)
    {
      sub_1AF8376F4(v18, a3 & 1);
      v14 = sub_1AF41A700(a2);
      if ((v16 & 1) != (v20 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v14;
      sub_1AF84A698();
      v14 = v19;
    }
  }

  *(v10 + 760) = v14;
  if (v16)
  {
    sub_1AF446690(*(*v4 + 56) + 104 * v14, v10);
  }

  else
  {
    *(v10 + 64) = 0u;
    *(v10 + 80) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 96) = -1;
  }

  return sub_1AF6B64F4;
}

void sub_1AF6B64F4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    sub_1AF6B724C(*a1, v2 + 520, &unk_1ED725A20);
    v7 = *(v2 + 97);
    if (*(v2 + 616) != 255)
    {
      v8 = *(v2 + 736);
      sub_1AF446690(v2 + 520, v2 + 416);
      v5 = *v8;
      v6 = *(v2 + 760);
      if (v7)
      {
        sub_1AF446690(v2 + 416, v5[7] + 104 * v6);
        goto LABEL_15;
      }

      v11 = *(v2 + 752);
      sub_1AF6B718C(*(v2 + 728), v11);
      sub_1AF446690(v2 + 416, v2 + 624);
      v12 = v2 + 624;
      goto LABEL_14;
    }

    sub_1AF0D9DB0(v2 + 520, &unk_1ED725A20);
    if ((v7 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_11:
    v9 = *(v2 + 760);
    v10 = **(v2 + 736);
    sub_1AF6B71F0(*(v10 + 48) + *(*(v2 + 744) + 72) * v9);
    sub_1AF6B3F80(v9, v10);
    goto LABEL_15;
  }

  sub_1AF6B724C(*a1, v2 + 208, &unk_1ED725A20);
  v3 = *(v2 + 97);
  if (*(v2 + 304) != 255)
  {
    v4 = *(v2 + 736);
    sub_1AF446690(v2 + 208, v2 + 104);
    v5 = *v4;
    v6 = *(v2 + 760);
    if (v3)
    {
      sub_1AF446690(v2 + 104, v5[7] + 104 * v6);
      goto LABEL_15;
    }

    v11 = *(v2 + 752);
    sub_1AF6B718C(*(v2 + 728), v11);
    sub_1AF446690(v2 + 104, v2 + 312);
    v12 = v2 + 312;
LABEL_14:
    sub_1AF843900(v6, v11, v12, v5);
    goto LABEL_15;
  }

  sub_1AF0D9DB0(v2 + 208, &unk_1ED725A20);
  if (v3)
  {
    goto LABEL_11;
  }

LABEL_15:
  v13 = *(v2 + 752);
  sub_1AF0D9DB0(v2, &unk_1ED725A20);
  free(v13);

  free(v2);
}

void (*sub_1AF6B66C8(uint64_t *a1, unsigned __int8 a2, uint64_t a3, char a4))(__int128 **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x140uLL);
  }

  v11 = v10;
  *a1 = v10;
  *(v10 + 288) = a3;
  *(v10 + 296) = v4;
  *(v10 + 312) = a2;
  v12 = *v4;
  v13 = sub_1AF41A680(a2, a3);
  v15 = v14;
  *(v11 + 313) = v14 & 1;
  v16 = *(v12 + 24);
  v17 = *(v12 + 16) + ((v14 & 1) == 0);
  if (v16 < v17 || (a4 & 1) == 0)
  {
    if (v16 < v17 || (a4 & 1) != 0)
    {
      sub_1AF83AAE4(v17, a4 & 1);
      v13 = sub_1AF41A680(a2, a3);
      if ((v15 & 1) != (v19 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v13;
      sub_1AF84C0F8();
      v13 = v18;
    }
  }

  *(v11 + 38) = v13;
  if (v15)
  {
    memmove(v11, (*(*v5 + 56) + 72 * v13), 0x48uLL);
  }

  else
  {
    *(v11 + 8) = 0;
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
  }

  return sub_1AF6B682C;
}

void sub_1AF6B682C(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[2];
  *(v2 + 120) = (*a1)[3];
  v4 = *v2;
  *(v2 + 88) = v2[1];
  *(v2 + 104) = v3;
  *(v2 + 17) = *(v2 + 8);
  *(v2 + 72) = v4;
  v5 = *(v2 + 16);
  if (a2)
  {
    if (v5)
    {
      v7 = *(v2 + 37);
      v6 = *(v2 + 38);
      if ((*(v2 + 313) & 1) == 0)
      {
        v8 = *(v2 + 36);
        v9 = *v7;
        v10 = *(v2 + 11);
        v11 = *(v2 + 96);
        v12 = *(v2 + 29);
        v13 = *(v2 + 60);
        v14 = *(v2 + 122);
        v15 = *(v2 + 17);
        v26 = *(v2 + 72);
        v27 = v10;
        v28 = v11 & 1;
        v29 = *(v2 + 26);
        v30 = *(v2 + 108);
        v31 = v12;
        v33 = v14;
        v32 = v13;
        v34 = v5;
        v35 = v15;
        v16 = *(v2 + 312);
        v17 = &v26;
LABEL_11:
        sub_1AF843BB8(v6, v16, v8, v17, v9);
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v5)
  {
    v7 = *(v2 + 37);
    v6 = *(v2 + 38);
    if ((*(v2 + 313) & 1) == 0)
    {
      v8 = *(v2 + 36);
      v9 = *v7;
      v18 = *(v2 + 11);
      v19 = *(v2 + 96);
      v20 = *(v2 + 29);
      v21 = *(v2 + 60);
      v22 = *(v2 + 122);
      v23 = *(v2 + 17);
      v36 = *(v2 + 72);
      v37 = v18;
      v38 = v19 & 1;
      v39 = *(v2 + 26);
      v40 = *(v2 + 108);
      v41 = v20;
      v43 = v22;
      v42 = v21;
      v44 = v5;
      v45 = v23;
      v16 = *(v2 + 312);
      v17 = &v36;
      goto LABEL_11;
    }

LABEL_7:
    memmove((*(*v7 + 56) + 72 * v6), v2, 0x48uLL);
    goto LABEL_12;
  }

  if (*(v2 + 313))
  {
    sub_1AF6B4C7C(*(v2 + 38), **(v2 + 37));
  }

LABEL_12:
  v24 = v2[3];
  v2[11] = v2[2];
  v2[12] = v24;
  *(v2 + 26) = *(v2 + 8);
  v25 = v2[1];
  v2[9] = *v2;
  v2[10] = v25;
  sub_1AF6B72B8(v2 + 72, v2 + 216, &qword_1EB631BC0, sub_1AF4464AC);
  sub_1AF6B739C((v2 + 9), &qword_1EB631BC0, sub_1AF4464AC);

  free(v2);
}

void (*sub_1AF6B6A00(void *a1, unint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v4;
  v10 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v9[3] = v11;
  v13 = *(v11 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v9[5] = malloc(v13);
    v14 = malloc(v13);
  }

  v9[6] = v14;
  sub_1AF6B7550(0, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo, MEMORY[0x1E69E6720]);
  v16 = *(*(v15 - 8) + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(v16);
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v9[9] = v17;
  v19 = *v4;
  v20 = HIDWORD(a2) & 1;
  v21 = a2;
  v22 = sub_1AF419B74(a2 | (v20 << 32));
  v24 = v23;
  *(v9 + 88) = v23 & 1;
  v25 = *(v19 + 24);
  v26 = *(v19 + 16) + ((v23 & 1) == 0);
  if (v25 < v26 || (a3 & 1) == 0)
  {
    if (v25 < v26 || (a3 & 1) != 0)
    {
      sub_1AF835420(v26, a3 & 1);
      v22 = sub_1AF419B74(v21 | (v20 << 32));
      if ((v24 & 1) != (v28 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v27 = v22;
      sub_1AF8494C8();
      v22 = v27;
    }
  }

  v9[10] = v22;
  if (v24)
  {
    sub_1AF687DC4(*(*v4 + 56) + *(v12 + 72) * v22, v18);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v12 + 56))(v18, v29, 1, v10);
  return sub_1AF6B6CD4;
}

void sub_1AF6B6CD4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[2];
  v4 = ((*a1)[3] + 48);
  v5 = (*a1)[9];
  if (a2)
  {
    v6 = v2[7];
    sub_1AF6B72B8(v5, v6, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 88);
    v9 = v2[7];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_1AF687DC4(v9, v2[5]);
      v11 = *v10;
      v12 = v2[10];
      v13 = v2[5];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[4];
        v15 = *v2;
        v16 = *v2;
        sub_1AF687DC4(v13, v14);
        sub_1AF84380C(v12, v16 | ((HIDWORD(v15) & 1) << 32), v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = v2[8];
    sub_1AF6B72B8(v5, v17, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 88);
    v9 = v2[8];
    if (v18 != 1)
    {
      v19 = v2[1];
      sub_1AF687DC4(v9, v2[6]);
      v11 = *v19;
      v12 = v2[10];
      v13 = v2[6];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1AF687DC4(v13, v11[7] + *(v2[3] + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_1AF6B739C(v9, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  if (v8)
  {
    sub_1AF6B3BBC(v2[10], *v2[1]);
  }

LABEL_10:
  v20 = v2[8];
  v21 = v2[9];
  v23 = v2[6];
  v22 = v2[7];
  v25 = v2[4];
  v24 = v2[5];
  sub_1AF6B739C(v21, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  free(v21);
  free(v20);
  free(v22);
  free(v23);
  free(v24);
  free(v25);

  free(v2);
}

void (*sub_1AF6B6EFC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1AF449D3C(a2);
  v13 = v12;
  *(v9 + 32) = v12 & 1;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a3 & 1) == 0)
  {
    if (v14 < v15 || (a3 & 1) != 0)
    {
      sub_1AF84120C(v15, a3 & 1);
      v11 = sub_1AF449D3C(a2);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v11;
      sub_1AF84F9A8();
      v11 = v16;
    }
  }

  *(v9 + 24) = v11;
  if (v13)
  {
    v18 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v18 = 0;
  }

  *v9 = v18;
  return sub_1AF6B7038;
}

void sub_1AF6B7038(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_1AF85B950(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    sub_1AF6B3690(v1[3], *v1[2]);
  }

  free(v1);
}

uint64_t (*sub_1AF6B70CC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1AF6B7610;
}

uint64_t sub_1AF6B70F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AF6B7140(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AF6B718C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextureCache.TextureKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF6B71F0(uint64_t a1)
{
  v2 = type metadata accessor for TextureCache.TextureKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF6B724C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1AF6B740C(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF6B72B8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1AF6B7550(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1AF6B7338()
{
  result = qword_1ED726BC0;
  if (!qword_1ED726BC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED726BC0);
  }

  return result;
}

uint64_t sub_1AF6B739C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AF6B7550(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AF6B740C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1AFDFDD58();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1AF6B7458(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AF6B7550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for QueryBuffer()
{
  result = qword_1ED72D708;
  if (!qword_1ED72D708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF6B76C0()
{
  v1 = *(v0 + 4);
  sub_1AFDFF288();
  if (v1 == 1)
  {
    MEMORY[0x1B271ACB0](0);
  }

  else
  {
    MEMORY[0x1B271ACB0](1);
    sub_1AFDFF2C8();
  }

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6B7730()
{
  if (*(v0 + 4) == 1)
  {
    return MEMORY[0x1B271ACB0](0);
  }

  MEMORY[0x1B271ACB0](1);
  return sub_1AFDFF2C8();
}

uint64_t sub_1AF6B7780()
{
  v1 = *(v0 + 4);
  sub_1AFDFF288();
  if (v1 == 1)
  {
    MEMORY[0x1B271ACB0](0);
  }

  else
  {
    MEMORY[0x1B271ACB0](1);
    sub_1AFDFF2C8();
  }

  return sub_1AFDFF2F8();
}

BOOL sub_1AF6B77EC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == 1)
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1AF6B7828()
{
  v1 = *(v0 + 4);
  sub_1AFDFF288();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1B271ACB0](0);
      return sub_1AFDFF2F8();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1B271ACB0](v2);
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6B78A8()
{
  if (!*(v0 + 4))
  {
    v1 = 1;
    goto LABEL_5;
  }

  if (*(v0 + 4) == 1)
  {
    v1 = 2;
LABEL_5:
    MEMORY[0x1B271ACB0](v1);
    return sub_1AFDFF2C8();
  }

  return MEMORY[0x1B271ACB0](0);
}

uint64_t sub_1AF6B7904()
{
  v1 = *(v0 + 4);
  sub_1AFDFF288();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1B271ACB0](0);
      return sub_1AFDFF2F8();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1B271ACB0](v2);
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

BOOL sub_1AF6B7980(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  if (!*(a1 + 4))
  {
    if (*(a2 + 4))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 4) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && v2 == 0;
}

uint64_t sub_1AF6B79D4()
{
  v1 = *v0;
  v2 = 45;
  v3 = 30578;
  v4 = 0x7269646F6E2D7772;
  if (v1 != 4)
  {
    v4 = 63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 114;
  if (v1 != 1)
  {
    v5 = 119;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF6B7A64()
{
  type metadata accessor for QueryBuffer();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  qword_1ED73B840 = result;
  return result;
}

uint64_t sub_1AF6B7AA0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a2)
  {
    v6 = a3;
    if (a3)
    {
      if (a4)
      {
        v7 = a3 + 16 * a4;
        while (((*(*(v6 + 8) + 48))() & 1) == 0 || (*a1 & 0xFA) == 0)
        {
          v6 += 16;
          ++a1;
          if (v6 == v7)
          {
            return 0;
          }
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AF6B7B38(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1AFDFF308();
  MEMORY[0x1B271ACB0](0);
  if (a1 && a2)
  {
    v16 = 16 * a2;
    do
    {
      v17 = *a1;
      a1 += 2;
      MEMORY[0x1B271ACB0](v17);
      v16 -= 16;
    }

    while (v16);
  }

  MEMORY[0x1B271ACB0](1);
  if (a3 && a4)
  {
    do
    {
      v18 = *a3++;
      MEMORY[0x1B271ACB0](v18);
      --a4;
    }

    while (a4);
  }

  MEMORY[0x1B271ACB0](2);
  if (a5 && a6)
  {
    v19 = 16 * a6;
    do
    {
      v20 = *a5;
      a5 += 2;
      MEMORY[0x1B271ACB0](v20);
      v19 -= 16;
    }

    while (v19);
  }

  MEMORY[0x1B271ACB0](3);
  if (a7 && a8)
  {
    v21 = (a7 + 16);
    v22 = 24 * a8;
    do
    {
      v23 = *v21;
      v21 += 3;
      MEMORY[0x1B271ACB0](v23);
      v22 -= 24;
    }

    while (v22);
  }

  return sub_1AFDFF2E8();
}

uint64_t initializeBufferWithCopyOfBuffer for Scope(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for QueryScope(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for QueryScope(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AF6B7D18(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1AF6B7D30(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for QueryHeader(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for QueryHeader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Scope(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Scope(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1AF6B7E50(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF6B7E6C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_1AF6B7EA0()
{
  result = qword_1EB63D5B0;
  if (!qword_1EB63D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D5B0);
  }

  return result;
}

unint64_t sub_1AF6B7EF8()
{
  result = qword_1EB63D5B8;
  if (!qword_1EB63D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D5B8);
  }

  return result;
}

uint64_t sub_1AF6B7F4C(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, size_t a4, uint64_t *a5, uint64_t a6, const void *a7, uint64_t a8)
{
  v14 = 16 * a2;
  v15 = a4 + 16 * a2 + 7;
  v29 = v15 & 0xFFFFFFFFFFFFFFF8;
  v27 = 16 * a6;
  v16 = (16 * a6 + v15) & 0xFFFFFFFFFFFFFFF8;
  v17 = 24 * a8;
  type metadata accessor for QueryBuffer();
  v18 = swift_allocObject();
  v26 = a5;
  v19 = sub_1AF6B7B38(a1, a2, a3, a4, a5, a6, a7, a8);
  v20 = sub_1AF6B7AA0(a3, a4, a1, a2);
  *(v18 + 16) = 0;
  *(v18 + 18) = v14;
  *(v18 + 20) = v14;
  *(v18 + 22) = a4;
  *(v18 + 24) = v29;
  *(v18 + 26) = v27;
  *(v18 + 28) = v16;
  *(v18 + 30) = v17;
  *(v18 + 32) = v19;
  v21 = v18 + 41;
  *(v18 + 40) = v20 & 1;
  if (v14)
  {
    v22 = v14 >> 4;
    if (v14 >> 4 >= a2)
    {
      v22 = a2;
    }

    memcpy((v18 + 41), a1, 16 * v22);
  }

  if (a4)
  {
    memcpy((v21 + v14), a3, a4);
  }

  if (v27)
  {
    v23 = v27 >> 4;
    if (v27 >> 4 >= a6)
    {
      v23 = a6;
    }

    memcpy((v21 + v29), v26, 16 * v23);
  }

  if ((v17 + 23) > 0x2E)
  {
    v24 = v17 / 24;
    if (v17 / 24 >= a8)
    {
      v24 = a8;
    }

    memcpy((v21 + v16), a7, 24 * v24);
  }

  return v18;
}

uint64_t sub_1AF6B8120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = sub_1AFDFD488();
    *(v8 + 16) = v6;
    memset((v8 + 32), 1, v6);
    v9 = v6;
  }

  else
  {
    v9 = *(MEMORY[0x1E69E7CC0] + 16);
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(a2 + 16);
  v11 = 16 * v6;
  v12 = v9 + 16 * v6 + 7;
  v13 = v12 & 0xFFFFFFFFFFFFFFF8;
  v14 = 16 * v10;
  v27 = (16 * v10 + v12) & 0xFFF8;
  __src = (a1 + 32);
  v29 = (v8 + 32);
  v25 = v10;
  v26 = sub_1AF6B7B38((a1 + 32), v6, (v8 + 32), v9, (a2 + 32), v10, v7 + 32, 0);
  v30 = v13;
  if (v9 && v6)
  {
    v24 = a2;
    v16 = a1 + 32;
    v15 = (v8 + 32);
    do
    {
      if (((*(*(v16 + 8) + 48))() & 1) != 0 && (*v15 & 0xFE) == 2)
      {
        v17 = 1;
        goto LABEL_13;
      }

      v16 += 16;
      ++v15;
    }

    while (v16 != a1 + v11 + 32);
    v17 = 0;
LABEL_13:
    a2 = v24;
    LOWORD(v13) = v30;
  }

  else
  {
    v17 = 0;
  }

  type metadata accessor for QueryBuffer();
  v18 = swift_allocObject();
  v19 = v18;
  *(v18 + 16) = 0;
  *(v18 + 18) = v11;
  *(v18 + 20) = v11;
  *(v18 + 22) = v9;
  *(v18 + 24) = v13;
  *(v18 + 26) = v14;
  *(v18 + 28) = v27;
  *(v18 + 32) = v26;
  v20 = v18 + 41;
  *(v18 + 40) = v17;
  if (v11)
  {
    v21 = v11 >> 4;
    if (v6 < v11 >> 4)
    {
      v21 = v6;
    }

    memcpy((v18 + 41), __src, 16 * v21);
  }

  if (v9)
  {
    memcpy((v20 + v11), v29, v9);
  }

  if (v14)
  {
    v22 = v14 >> 4;
    if (v25 < v14 >> 4)
    {
      v22 = v25;
    }

    memcpy((v20 + v30), (a2 + 32), 16 * v22);
  }

  *a3 = v19;
  *(a3 + 8) = 0;
  *(a3 + 12) = 2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 2;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_1AF6B8360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = sub_1AFDFD488();
    *(v8 + 16) = v6;
    memset((v8 + 32), 3, v6);
    v9 = v6;
  }

  else
  {
    v9 = *(MEMORY[0x1E69E7CC0] + 16);
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(a2 + 16);
  v11 = 16 * v6;
  v12 = v9 + 16 * v6 + 7;
  v13 = v12 & 0xFFFFFFFFFFFFFFF8;
  v14 = 16 * v10;
  v27 = (16 * v10 + v12) & 0xFFF8;
  __src = (a1 + 32);
  v29 = (v8 + 32);
  v25 = v10;
  v26 = sub_1AF6B7B38((a1 + 32), v6, (v8 + 32), v9, (a2 + 32), v10, v7 + 32, 0);
  v30 = v13;
  if (v9 && v6)
  {
    v24 = a2;
    v16 = a1 + 32;
    v15 = (v8 + 32);
    do
    {
      if (((*(*(v16 + 8) + 48))() & 1) != 0 && (*v15 & 0xFE) == 2)
      {
        v17 = 1;
        goto LABEL_13;
      }

      v16 += 16;
      ++v15;
    }

    while (v16 != a1 + v11 + 32);
    v17 = 0;
LABEL_13:
    a2 = v24;
    LOWORD(v13) = v30;
  }

  else
  {
    v17 = 0;
  }

  type metadata accessor for QueryBuffer();
  v18 = swift_allocObject();
  v19 = v18;
  *(v18 + 16) = 0;
  *(v18 + 18) = v11;
  *(v18 + 20) = v11;
  *(v18 + 22) = v9;
  *(v18 + 24) = v13;
  *(v18 + 26) = v14;
  *(v18 + 28) = v27;
  *(v18 + 32) = v26;
  v20 = v18 + 41;
  *(v18 + 40) = v17;
  if (v11)
  {
    v21 = v11 >> 4;
    if (v6 < v11 >> 4)
    {
      v21 = v6;
    }

    memcpy((v18 + 41), __src, 16 * v21);
  }

  if (v9)
  {
    memcpy((v20 + v11), v29, v9);
  }

  if (v14)
  {
    v22 = v14 >> 4;
    if (v25 < v14 >> 4)
    {
      v22 = v25;
    }

    memcpy((v20 + v30), (a2 + 32), 16 * v22);
  }

  *a3 = v19;
  *(a3 + 8) = 0;
  *(a3 + 12) = 2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 2;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_1AF6B85A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = sub_1AFDFD488();
    *(v8 + 16) = v6;
    bzero((v8 + 32), v6);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(a2 + 16);
  v37 = v6;
  v38 = v8;
  if (v9)
  {
    v39 = a3;
    v44 = v7;
    sub_1AFC070A4(0, v9, 0);
    v10 = v7;
    v11 = a2 + 32;
    do
    {
      sub_1AF441194(v11, v41);
      sub_1AF441150(v41, v42);
      DynamicType = swift_getDynamicType();
      v13 = v42;
      v14 = v43;
      sub_1AF441150(v41, v42);
      v15 = (*(v14 + 16))(v13, v14);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v41);
      v44 = v10;
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        sub_1AFC070A4(v16 > 1, v17 + 1, 1);
        v10 = v44;
      }

      v10[2] = v17 + 1;
      v18 = &v10[3 * v17];
      v18[4] = DynamicType;
      v18[5] = v14;
      v18[6] = v15;
      v11 += 40;
      --v9;
    }

    while (v9);

    v8 = v38;
    a3 = v39;
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v8 + 16);
  v20 = v10[2];
  v21 = 16 * v6;
  v35 = v19 + 16 * v6 + 7;
  __src = (a1 + 32);
  v40 = v35 & 0xFFFFFFFFFFFFFFF8;
  v22 = 24 * v20;
  v32 = v20;
  v33 = (v8 + 32);
  v34 = sub_1AF6B7B38((a1 + 32), v6, (v8 + 32), v19, v7 + 4, 0, (v10 + 4), v20);
  if (v19 && v6)
  {
    v23 = (v8 + 32);
    v24 = a1 + 32;
    do
    {
      if (((*(*(v24 + 8) + 48))() & 1) != 0 && (*v23 & 0xFE) == 2)
      {
        v25 = 1;
        goto LABEL_20;
      }

      v24 += 16;
      ++v23;
    }

    while (v24 != a1 + v21 + 32);
    v25 = 0;
LABEL_20:
    v6 = v37;
  }

  else
  {
    v25 = 0;
  }

  type metadata accessor for QueryBuffer();
  v26 = swift_allocObject();
  v27 = v26;
  *(v26 + 16) = 0;
  *(v26 + 18) = v21;
  *(v26 + 20) = v21;
  *(v26 + 22) = v19;
  *(v26 + 24) = v35 & 0xFFF8;
  *(v26 + 26) = 0;
  *(v26 + 28) = v40;
  *(v26 + 30) = v22;
  *(v26 + 32) = v34;
  v28 = v26 + 41;
  *(v26 + 40) = v25;
  if (v21)
  {
    v29 = v21 >> 4;
    if (v6 < v21 >> 4)
    {
      v29 = v6;
    }

    memcpy((v26 + 41), __src, 16 * v29);
  }

  if (v19)
  {
    memcpy((v28 + v21), v33, v19);
  }

  if ((v22 + 23) > 0x2E)
  {
    v30 = v22 / 24;
    if (v32 < v22 / 24)
    {
      v30 = v32;
    }

    memcpy((v28 + v40), v10 + 4, 24 * v30);
  }

  *a3 = v27;
  *(a3 + 8) = 0;
  *(a3 + 12) = 2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 2;
  *(a3 + 32) = 0;
  return result;
}

unint64_t sub_1AF6B8958()
{
  result = qword_1EB63D5C0;
  if (!qword_1EB63D5C0)
  {
    sub_1AF6B89B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D5C0);
  }

  return result;
}

void sub_1AF6B89B0()
{
  if (!qword_1EB63D5C8)
  {
    sub_1AF6B8A0C();
    v0 = type metadata accessor for OptionSetIterator();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63D5C8);
    }
  }
}

unint64_t sub_1AF6B8A0C()
{
  result = qword_1EB63D5D0;
  if (!qword_1EB63D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D5D0);
  }

  return result;
}

unint64_t sub_1AF6B8A64()
{
  result = qword_1EB63D5D8;
  if (!qword_1EB63D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D5D8);
  }

  return result;
}

unint64_t sub_1AF6B8ABC()
{
  result = qword_1EB63D5E0;
  if (!qword_1EB63D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D5E0);
  }

  return result;
}

unint64_t sub_1AF6B8B14(uint64_t a1)
{
  *(a1 + 8) = sub_1AF6B8B44();
  result = sub_1AF6B8B98();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF6B8B44()
{
  result = qword_1EB63D5E8;
  if (!qword_1EB63D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D5E8);
  }

  return result;
}

unint64_t sub_1AF6B8B98()
{
  result = qword_1EB63D5F0;
  if (!qword_1EB63D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D5F0);
  }

  return result;
}

unint64_t sub_1AF6B8BF0()
{
  result = qword_1EB63D5F8;
  if (!qword_1EB63D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D5F8);
  }

  return result;
}

unint64_t sub_1AF6B8C48()
{
  result = qword_1EB63D600;
  if (!qword_1EB63D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D600);
  }

  return result;
}

unint64_t sub_1AF6B8CA0()
{
  result = qword_1EB63D608;
  if (!qword_1EB63D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D608);
  }

  return result;
}

unint64_t sub_1AF6B8CF8()
{
  result = qword_1EB63D610;
  if (!qword_1EB63D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D610);
  }

  return result;
}

unint64_t *sub_1AF6B8D4C(int8x16_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 63) >> 6;
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = (a2 + 63) >> 6;
  }

  if (v5 <= 3)
  {
    v7 = 0;
    v8 = 0;
LABEL_9:
    v13 = v6 - v8;
    v14 = a1 + v8;
    do
    {
      v15 = *v14++;
      v16 = vcnt_s8(v15);
      v16.i16[0] = vaddlv_u8(v16);
      v7 += v16.u32[0];
      --v13;
    }

    while (v13);
    goto LABEL_11;
  }

  v8 = v6 & 0x7FFFFFFFFFFFFFFCLL;
  v9 = a1 + 1;
  v10 = 0uLL;
  v11 = v6 & 0x7FFFFFFFFFFFFFFCLL;
  v12 = 0uLL;
  do
  {
    v10 = vpadalq_u32(v10, vpaddlq_u16(vpaddlq_u8(vcntq_s8(v9[-1]))));
    v12 = vpadalq_u32(v12, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v9))));
    v9 += 2;
    v11 -= 4;
  }

  while (v11);
  v7 = vaddvq_s64(vaddq_s64(v12, v10));
  if (v6 != v8)
  {
    goto LABEL_9;
  }

LABEL_11:
  result = ecs_stack_allocator_allocate(a3, 8 * v7, 8);
  if (a2 >= 1)
  {
    v18 = 0;
    v19 = result;
    do
    {
      v21 = v18 >> 6;
      v22 = a1->i64[v18 >> 6] >> v18;
      if (!v22)
      {
        v18 = v21 << 6;
        do
        {
          if (v5 < 2)
          {
            if (v21 < 0x7FFFFFFFFFFFFFFFLL)
            {
              return result;
            }
          }

          else if ((v21 + 1) >= v5)
          {
            return result;
          }

          v22 = a1->u64[v21 + 1];
          v18 += 64;
          ++v21;
        }

        while (!v22);
      }

      v20 = __clz(__rbit64(v22)) + v18;
      *v19++ = v20;
      v18 = v20 + 1;
    }

    while ((v20 + 1) < a2);
  }

  return result;
}

uint64_t sub_1AF6B8EAC(uint64_t result)
{
  v42 = result;
  if (v1[10] >= 1)
  {
    v2 = v1;
    v3 = v1[7];
    if (v3)
    {
      v4 = 48 * v3;
      for (i = (v1[5] + 40); ; i += 6)
      {
        v6 = *i;
        if ((v42 & 1) == 0)
        {
          break;
        }

        v7 = v2[9];
        v47 = 0;
        memset(v46, 0, sizeof(v46));
        v48 = 5;
        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v43[0] = *(v7 + 96);
        v9 = *&v43[0];
        *(v7 + 96) = 0x8000000000000000;
        v10 = sub_1AF41A124(v6);
        v12 = v11;
        v13 = *(v9 + 16) + ((v11 & 1) == 0);
        if (*(v9 + 24) >= v13)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AF8469BC();
            v9 = *&v43[0];
          }
        }

        else
        {
          sub_1AF830278(v13, isUniquelyReferenced_nonNull_native);
          type metadata accessor for ComponentsDataChunk();
          v9 = *&v43[0];
          v14 = sub_1AF41A124(v6);
          if ((v12 & 1) != (v15 & 1))
          {
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

          v10 = v14;
        }

        *(v7 + 96) = v9;

        v22 = *(v7 + 96);
        if ((v12 & 1) == 0)
        {
          sub_1AF0FBA0C(v43);
          v23 = *&v43[0];
          v22[(v10 >> 6) + 8] |= 1 << v10;
          *(v22[6] + 8 * v10) = v6;
          *(v22[7] + 8 * v10) = v23;
          ++v22[2];
        }

        v24 = v22[7];
        sub_1AF63515C(v46, v43);
        v45 = 0;
        v44 = 0uLL;
        v25 = *(v24 + 8 * v10);
        v26 = swift_isUniquelyReferenced_nonNull_native();
        *(v24 + 8 * v10) = v25;
        if ((v26 & 1) == 0)
        {
          v25 = sub_1AF420EA0(0, v25[2] + 1, 1, v25);
          *(v24 + 8 * v10) = v25;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          *(v24 + 8 * v10) = sub_1AF420EA0(v27 > 1, v28 + 1, 1, v25);
        }

        result = sub_1AF635250(v46);
        v29 = *(v24 + 8 * v10);
        *(v29 + 16) = v28 + 1;
        v30 = v29 + 72 * v28;
        *(v30 + 32) = v43[0];
        v31 = v44;
        v32 = v43[2];
        v33 = v43[1];
        *(v30 + 96) = v45;
        *(v30 + 64) = v32;
        *(v30 + 80) = v31;
        *(v30 + 48) = v33;
LABEL_5:
        v4 -= 48;
        if (!v4)
        {
          return result;
        }
      }

      v16 = *(v6 + 376);
      swift_retain_n();
      os_unfair_lock_lock(v16);
      os_unfair_lock_lock(*(v6 + 344));
      v17 = *(v6 + 232);
      v18 = *(v6 + 240);
      if (*(*(v6 + 40) + 200) == 1)
      {
        *(*(v6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
      }

      sub_1AF705690(v17, v18);
      v19 = *(v6 + 232);
      if (v19 < v17 || v19 >= v18)
      {
        sub_1AF5B4FCC(*(v6 + 40), v17, v18, 1, v6);
        v21 = v18 - v17;
LABEL_38:
        v41 = *(v6 + 16);
        if (*(v41 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
        {
          vfx_counters.add(_:_:)(*(v41 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 44), v21);
        }

        if (*(v41 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
        {
          vfx_counters.add(_:_:)(*(v41 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 48), -v21);
        }

        ++*(v6 + 116);
        os_unfair_lock_unlock(*(v6 + 344));
        os_unfair_lock_unlock(*(v6 + 376));

        goto LABEL_5;
      }

      v21 = v18 - v17;
      v34 = v19 + v18 - v17;
      v35 = *(v6 + 240) - v19;
      v36 = v34;
      if (v21 < 1)
      {
        if (v35 <= 0)
        {
          v37 = v21 < v35;
LABEL_31:
          if (v37)
          {
            v36 = *(v6 + 240);
          }

          else
          {
            v36 = v34;
          }
        }
      }

      else if ((v35 & 0x8000000000000000) == 0)
      {
        v37 = v35 < v21;
        goto LABEL_31;
      }

      *(v6 + 232) = v36;
      v38 = *(v6 + 248);
      if (v36 > v38)
      {
        v38 = v36;
      }

      *(v6 + 248) = v38;
      v39 = *(v6 + 192);
      if (v39)
      {
        v40 = *(v6 + 208);
        sub_1AF75D364(v19, v34, v39);
        sub_1AF75D364(v19, v34, v40);
      }

      goto LABEL_38;
    }
  }

  return result;
}

uint64_t sub_1AF6B92C4()
{
  if (!*(v0 + 80))
  {
    return 0;
  }

  sub_1AF6BA358(0);
  v2 = v1;

  v3 = sub_1AF6496EC(v2);

  return v3;
}

int8x16_t *sub_1AF6B933C(uint64_t a1, int8x16_t *a2, uint64_t a3)
{
  v3 = a3;
  v5 = (a3 + 63) >> 6;
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = (a3 + 63) >> 6;
  }

  v7 = ecs_stack_allocator_allocate(a1, 8 * v6, 8);
  bzero(v7, 8 * v6);
  v8 = 0;
  if (v5 < 4)
  {
    goto LABEL_9;
  }

  if ((v7 - a2) < 0x20)
  {
    goto LABEL_9;
  }

  v8 = v6 & 0x7FFFFFFFFFFFFFFCLL;
  v9 = a2 + 1;
  v10 = v7 + 1;
  v11 = v6 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v12 = vmvnq_s8(*v9);
    v10[-1] = vmvnq_s8(v9[-1]);
    *v10 = v12;
    v9 += 2;
    v10 += 2;
    v11 -= 4;
  }

  while (v11);
  if (v6 != v8)
  {
LABEL_9:
    v13 = v6 - v8;
    v14 = v8;
    v15 = &v7->i64[v8];
    v16 = &a2->i64[v14];
    do
    {
      v17 = *v16++;
      *v15++ = ~v17;
      --v13;
    }

    while (v13);
  }

  v18 = v5 - 1;
  if (v5 <= 1)
  {
    v18 = 0;
  }

  v7->i64[v18] &= ~(-1 << v3);
  return v7;
}

uint64_t sub_1AF6B9434()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];
  if (v0[5] >= 1)
  {
    swift_arrayDestroy();
  }

  ecs_stack_allocator_deallocate(v3, v2, 48 * v1);
  ecs_stack_allocator_pop_snapshot(v0[2]);

  return swift_deallocClassInstance();
}

uint64_t initializeWithCopy for QueryResult.ChunkResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

uint64_t assignWithCopy for QueryResult.ChunkResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v3;
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for QueryResult.ChunkResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for MetalFunctionReflection.Arg(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MetalFunctionReflection.Arg(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for QueryResult()
{
}

uint64_t initializeWithCopy for QueryResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v3;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t assignWithCopy for QueryResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t assignWithTake for QueryResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for QueryResult(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for QueryResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF6B9944()
{
  v1 = v0[10];
  v2 = sub_1AF4217DC(0, v1 & ~(v1 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (v1 >= 1)
  {
    v4 = thread_worker_index(v3);
    v6 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    if (*v4 != -1)
    {
      v6 += 8 * *v4 + 8;
    }

    v7 = *(*v6 + 32);
    ecs_stack_allocator_push_snapshot(v7);
    v8 = ecs_stack_allocator_allocate(v7, 8 * v1, 4);
    v9 = v0[7];
    if (v9)
    {
      v35 = v7;
      v36 = v2;
      v10 = 0;
      v11 = v0[5];
      v34 = v8;
      v37 = v8 + 4;
      v38 = &v11[12 * v9];
      do
      {
        v12 = *(v11 + 2);
        v13 = *(v11 + 5);
        if (v12)
        {
          v14 = *(v11 + 4);

          if (v14)
          {
            v15 = &v37[8 * v10];
            while (1)
            {
              v17 = *v12++;
              v16 = v17;

              if (*(v13 + 184))
              {
                break;
              }

              v19 = *(*(v13 + 168) + 4 * v16);
              v20 = *(*(v18 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v19 + 8);

              *(v15 - 1) = v19;
              *v15 = v20;
              ++v10;
              v15 += 8;
              if (!--v14)
              {
                goto LABEL_6;
              }
            }

LABEL_27:
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }
        }

        else
        {
          v22 = *v11;
          v21 = v11[1];

          if (v22 != v21)
          {
            v23 = &v37[8 * v10];
            do
            {

              if (*(v13 + 184))
              {
                goto LABEL_27;
              }

              v25 = *(*(v13 + 168) + 4 * v22);
              v26 = v22 + 1;
              v27 = *(*(v24 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v25 + 8);

              *(v23 - 1) = v25;
              *v23 = v27;
              ++v10;
              v23 += 8;
              v22 = v26;
            }

            while (v21 != v26);
          }
        }

LABEL_6:

        v11 += 12;
      }

      while (v11 != v38);
      if (v10)
      {
        v2 = v36;
        v28 = *(v36 + 2);
        v29 = 8 * v10;
        v30 = v34;
        v7 = v35;
        do
        {
          v31 = *v30;
          v32 = *(v2 + 3);
          if (v28 >= v32 >> 1)
          {
            v2 = sub_1AF4217DC(v32 > 1, v28 + 1, 1, v2);
          }

          ++v30;
          *(v2 + 2) = v28 + 1;
          *&v2[8 * v28++ + 32] = v31;
          v29 -= 8;
        }

        while (v29);
      }

      else
      {
        v7 = v35;
        v2 = v36;
      }
    }

    ecs_stack_allocator_pop_snapshot(v7);
  }

  return v2;
}

uint64_t sub_1AF6B9BF4()
{
  if (v0[10] >= 1)
  {
    v1 = v0[7];
    if (v1)
    {
      v2 = 48 * v1;
      v3 = v0[5] + 40;
      do
      {
        v5 = *v3;
        v6 = *(*v3 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v6);
        os_unfair_lock_lock(*(v5 + 344));
        v7 = *(v5 + 232);
        v8 = *(v5 + 240);
        if (v8 != v7)
        {
          v9 = *(v5 + 192);
          if (v9)
          {
            v10 = *(v5 + 208);
            sub_1AF75D408(*(v5 + 232), *(v5 + 240), v9);
            sub_1AF75D364(v7, v8, v10);
          }

          sub_1AF705690(v7, v8);
        }

        os_unfair_lock_unlock(*(v5 + 344));
        os_unfair_lock_unlock(*(v5 + 376));

        v3 += 48;
        v2 -= 48;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_1AF6B9CF0(uint64_t result)
{
  if (v1[10] >= 1)
  {
    v2 = v1[7];
    if (v2)
    {
      v3 = result;
      v4 = result & 1;
      v5 = 48 * v2;
      v6 = v1[5] + 40;
      do
      {
        v7 = *v6;
        if (*(*v6 + 120) != v4)
        {
          v8 = *(v7 + 16);
          v9 = *(v7 + 188);
          v10 = *(v7 + 24);
          v11 = *(v8 + 136);

          os_unfair_lock_lock(v11);
          v12 = *(v8 + 104);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v8 + 104) = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            *(v8 + 104) = sub_1AFC0D9B8(v12);
          }

          sub_1AF6213F4(v9, v3 & 1);
          if (*(*(*(v8 + 88) + 8 * v10 + 32) + 200) == 1)
          {
            *(v8 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
          }

          os_unfair_lock_unlock(*(v8 + 136));

          *(v7 + 120) = v4;
        }

        v6 += 48;
        v5 -= 48;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t sub_1AF6B9E2C(__int128 *a1, uint64_t a2, char **a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v8 = *(a1 + 9);
  v9 = *(v8 + 32);
  v10 = *(a1 + 5);
  v70 = *(a1 + 7);
  if (v70 == 1)
  {
    v11 = *v10;

    v12 = sub_1AF64B110(&type metadata for WorldAABB, &off_1F2510410, 0, 0, 0, v8);
    if (v13)
    {
      ecs_stack_allocator_push_snapshot(v9);
      v14 = *(a1 + 10);
      v15 = ecs_stack_allocator_allocate(v9, 32 * v14, 16);
      if (32 * v14)
      {
        v16 = (32 * v14) >> 5;
        f32 = v15[1].f32;
        do
        {
          *(f32 - 1) = xmmword_1AFE201A0;
          *f32 = xmmword_1AFE52680;
          f32 += 2;
          --v16;
        }

        while (v16);
      }

      sub_1AFB709D8(v15, a2, a3, a4, a5, a6, a7);
      ecs_stack_allocator_pop_snapshot(v9);
    }

    else
    {
      sub_1AFB709D8((v12 + 32 * v11), a2, a3, a4, a5, a6, a7);
    }
  }

  ecs_stack_allocator_push_snapshot(v9);
  v18 = *(a1 + 10);
  v59 = v9;
  v68 = ecs_stack_allocator_allocate(v9, 32 * v18, 16);
  if (v18 > 0 && v70)
  {
    v19 = 0;
    v20 = *(v8 + 32);
    v21 = *(*(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v75 = *a1;
    v69 = v21;
    v66 = v20;
    v67 = v10;
    do
    {
      v22 = &v10[12 * v19];
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v26 = *(v22 + 5);
      v74 = v26;
      if (v21)
      {
        v27 = *(v26 + 376);

        os_unfair_lock_lock(v27);
        os_unfair_lock_lock(*(v26 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v20);
      v72 = *(v8 + 64);
      v73 = *(v8 + 48);
      v28 = *(v8 + 80);
      v29 = *(*(*(*(v26 + 40) + 16) + 32) + 16) + 1;
      *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v29, 8);
      *(v8 + 56) = v29;
      v30 = v24 - v23;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 64) = 0;

      v31 = sub_1AF64B110(&type metadata for WorldAABB, &off_1F2510410, 0, 0, 0, v8);
      v71 = v28;
      if (v32)
      {
        if (v24 != v23)
        {
          v33 = v68[2 * v25 + 1].f32;
          do
          {
            *(v33 - 1) = xmmword_1AFE201A0;
            *v33 = xmmword_1AFE52680;
            v33 += 2;
            --v30;
          }

          while (v30);
        }
      }

      else
      {
        memcpy(&v68[2 * v25], (v31 + 32 * v23), 32 * v30);
      }

      v34 = *(v8 + 48);
      v35 = *(v8 + 64);
      if (!v35)
      {
        v56 = *(v8 + 56);
        v57 = *(v8 + 32);
        v21 = v69;
        goto LABEL_50;
      }

      for (i = 0; i != v35; ++i)
      {
        v38 = (v34 + 48 * i);
        v39 = *v38;
        v40 = v38[4];
        v41 = *(v8 + 72);
        if (v41)
        {
          v42 = v39 == v41;
        }

        else
        {
          v42 = 0;
        }

        if (v42 || !*(v75 + 22))
        {
          goto LABEL_22;
        }

        v43 = v38[2];
        v44 = v75 + 41;
        v45 = *(v75 + 18);
        if (v45 >= 0x10)
        {
          v46 = (v44 + *(v75 + 16));
          v47 = v45 >> 4;
          v48 = v75 + 41;
          while (*v46 != v39)
          {
            ++v48;
            v46 += 2;
            if (!--v47)
            {
              goto LABEL_38;
            }
          }

          v49 = *(v48 + *(v75 + 20));
          v50 = v49 > 5;
          v51 = (1 << v49) & 0x23;
          if (v50 || v51 == 0)
          {
LABEL_22:

            v40(v37);

            continue;
          }
        }

LABEL_38:
        if (swift_conformsToProtocol2() && v43)
        {
          if (sub_1AF5FC8D8(v43))
          {
            goto LABEL_22;
          }

          v53 = *(v75 + 18);
          if (v53 < 0x10)
          {
            goto LABEL_22;
          }

          v54 = (v44 + *(v75 + 16));
          v55 = 16 * (v53 >> 4);
          while (*v54 != v43)
          {
            v54 += 2;
            v55 -= 16;
            if (!v55)
            {
              goto LABEL_22;
            }
          }
        }
      }

      v56 = *(v8 + 56);
      v34 = *(v8 + 48);
      v57 = *(v8 + 32);
      v10 = v67;
      v21 = v69;
      if (*(v8 + 64) >= 1)
      {
        swift_arrayDestroy();
      }

      v20 = v66;
LABEL_50:
      ecs_stack_allocator_deallocate(v57, v34, 48 * v56);
      *(v8 + 48) = v73;
      *(v8 + 64) = v72;
      *(v8 + 80) = v71;
      sub_1AF62D29C(v74);
      ecs_stack_allocator_pop_snapshot(v20);
      if (v21)
      {
        os_unfair_lock_unlock(*(v74 + 344));
        os_unfair_lock_unlock(*(v74 + 376));
      }

      ++v19;
    }

    while (v19 != v70);
  }

  sub_1AFB709D8(v68, a2, a3, a4, a5, a6, a7);

  return ecs_stack_allocator_pop_snapshot(v59);
}

uint64_t sub_1AF6BA358(unint64_t a1)
{
  v2 = *(v1 + 56);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = *(v1 + 40); ; i += 48)
  {
    v4 = *(i + 8);
    if (a1 >= v4 && (v4 - *i + *(i + 4)) > a1)
    {
      break;
    }

    if (!--v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *(*(i + 40) + 188);
}

uint64_t sub_1AF6BA3C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1AF6BA358(a3);
  v5 = v4;

  v6 = sub_1AF64B03C(a1);
  v8 = v7;

  if (v8)
  {
    return 0;
  }

  else
  {
    return v6 + sub_1AF6411A4(a1) * v5;
  }
}

void *sub_1AF6BA460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = a2;
  v149 = *(a2 + 32);
  ecs_stack_allocator_push_snapshot(v149);
  v167 = *a3;
  v168 = *(a3 + 16);
  v169 = *(a3 + 32);
  if (*(*a3 + 40) != 1)
  {
LABEL_131:
    v129 = a6;
    if (a6)
    {
      if (a6 == 1)
      {
        v129 = 0;
        v130 = 0;
      }

      else
      {
        v131 = 0;
        v132 = 0;
        v130 = a6 & 0xFFFFFFFFFFFFFFFELL;
        v133 = (a4 + 56);
        v134 = a6 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v135 = *(v133 - 12);
          v136 = *(v133 - 13) - *(v133 - 14);
          v137 = *(v133 - 1) - *(v133 - 2);
          v138 = *v133;
          v133 += 24;
          v131 = v131 - v135 + (v136 + v135);
          v132 = v132 - v138 + v137 + v138;
          v134 -= 2;
        }

        while (v134);
        v129 = v132 + v131;
        if (v130 == a6)
        {
          goto LABEL_141;
        }
      }

      v139 = a6 - v130;
      v140 = (a4 + 48 * v130 + 8);
      do
      {
        v141 = *(v140 - 2);
        v142 = *(v140 - 1);
        v143 = *v140;
        v140 += 12;
        v129 = v129 - v143 + v142 - v141 + v143;
        --v139;
      }

      while (v139);
    }

LABEL_141:
    type metadata accessor for QueryResult.Deallocator();
    result = swift_allocObject();
    result[4] = a5;
    result[5] = a6;
    result[2] = v149;
    result[3] = a4;
    *a7 = v167;
    *(a7 + 16) = v168;
    *(a7 + 32) = v169;
    *(a7 + 40) = a4;
    *(a7 + 48) = a5;
    *(a7 + 56) = a6;
    *(a7 + 64) = a1;
    *(a7 + 72) = v10;
    *(a7 + 80) = v129;
    *(a7 + 88) = result;
    return result;
  }

  if (!a6)
  {
    v129 = 0;
    goto LABEL_141;
  }

  v146 = a1;
  v147 = a5;
  v148 = a7;
  v145 = a3;
  v155 = *(a3 + 16);
  v150 = a6;

  v13 = 0;
  v158 = v10;
  while (1)
  {
    v14 = (a4 + 48 * v13);
    v15 = v14[2];
    v16 = v14[5];
    v161 = v16;
    if (!v15)
    {
      v22 = *(v16 + 232);
      v23 = *(v16 + 240);
      if (v23 == v22)
      {
        goto LABEL_5;
      }

      v151 = v13;
      v24 = *(v16 + 192);

      if (v24)
      {
        v25 = *(v16 + 208);
        sub_1AF75D408(v22, v23, v24);
        if ((v155 & 4) != 0)
        {
          sub_1AF75D408(v22, v23, v25);
        }

        else
        {
          sub_1AF75D364(v22, v23, v25);
        }
      }

      if (*(*(v16 + 40) + 213) == 1)
      {
        v103 = *(v16 + 48);
        v104 = (v103 + 32);
        v105 = *(v103 + 16) + 1;
        while (--v105)
        {
          v106 = v104 + 5;
          v107 = *v104;
          v104 += 5;
          if (v107 == &type metadata for PropagateDirtiness)
          {
            v105 = *(v106 - 2);
            break;
          }
        }

        v108 = *(v16 + 128) + v105;
        do
        {

          if (*(v16 + 184))
          {
            goto LABEL_143;
          }

          v111 = v22 + 1;
          v112 = *(*(v16 + 168) + 4 * v22);
          v113 = (v108 + 8 * v22);
          v114 = *(*(v110 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v112 + 8);

          v115 = *v113;
          v116 = v113[1];
          if (v115 != -1 || v116 != 0)
          {
            v118 = *(v158 + 88);
            sub_1AFDFF288();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            v119 = sub_1AFDFF2F8();
            v120 = v118 + 56;
            v121 = -1 << *(v118 + 32);
            v122 = v119 & ~v121;
            if ((*(v118 + 56 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122))
            {
              v123 = ~v121;
              v124 = *(v118 + 48);
              v16 = v161;
              while (1)
              {
                v125 = v124 + 16 * v122;
                v127 = *(v125 + 8);
                v126 = *(v125 + 12);
                if (v127 == v115 && v126 == v116)
                {
                  break;
                }

                v122 = (v122 + 1) & v123;
                if (((*(v120 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122) & 1) == 0)
                {
                  goto LABEL_113;
                }
              }
            }

            else
            {
              v16 = v161;
LABEL_113:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v166 = *(v158 + 88);
              sub_1AF711640(v112 | (v114 << 32), v115 | (v116 << 32), v122, isUniquelyReferenced_nonNull_native);
              *(v158 + 88) = v166;
            }
          }

          v22 = v111;
        }

        while (v111 != v23);

        a6 = v150;
        v10 = v158;
        goto LABEL_129;
      }

      goto LABEL_4;
    }

    v17 = v14[4];
    if (!v17)
    {
      goto LABEL_5;
    }

    v151 = v13;
    v18 = *v15;
    v19 = *v15 + 1;
    if (v17 != 1)
    {
      break;
    }

LABEL_10:
    v20 = *(v16 + 192);
    if (v20)
    {
      v21 = *(v16 + 208);
      sub_1AF75D408(v18, v19, v20);
      if ((v155 & 4) != 0)
      {
        sub_1AF75D408(v18, v19, v21);
      }

      else
      {
        sub_1AF75D364(v18, v19, v21);
      }
    }

    if (*(*(v16 + 40) + 213) == 1)
    {
      v77 = *(v16 + 48);
      v78 = (v77 + 32);
      v79 = *(v77 + 16) + 1;
      while (--v79)
      {
        v80 = v78 + 5;
        v81 = *v78;
        v78 += 5;
        if (v81 == &type metadata for PropagateDirtiness)
        {
          v79 = *(v80 - 2);
          break;
        }
      }

      if (v18 != v19)
      {
        v163 = *(v16 + 128) + v79;
        do
        {
          v83 = v19;

          if (*(v16 + 184))
          {
            goto LABEL_143;
          }

          v85 = v18 + 1;
          v86 = *(*(v16 + 168) + 4 * v18);
          v87 = (v163 + 8 * v18);
          v88 = *(*(v84 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v86 + 8);

          v89 = *v87;
          v90 = v87[1];
          if (v89 != -1 || v90 != 0)
          {
            v92 = *(v10 + 88);
            sub_1AFDFF288();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            v93 = sub_1AFDFF2F8();
            v94 = v92 + 56;
            v95 = -1 << *(v92 + 32);
            v96 = v93 & ~v95;
            if ((*(v92 + 56 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96))
            {
              v97 = ~v95;
              v98 = *(v92 + 48);
              v10 = v158;
              while (1)
              {
                v99 = v98 + 16 * v96;
                v101 = *(v99 + 8);
                v100 = *(v99 + 12);
                if (v101 == v89 && v100 == v90)
                {
                  break;
                }

                v96 = (v96 + 1) & v97;
                if (((*(v94 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
                {
                  goto LABEL_90;
                }
              }
            }

            else
            {
              v10 = v158;
LABEL_90:
              v82 = swift_isUniquelyReferenced_nonNull_native();
              v165 = *(v10 + 88);
              sub_1AF711640(v86 | (v88 << 32), v89 | (v90 << 32), v96, v82);
              *(v10 + 88) = v165;
            }
          }

          v18 = v85;
          v19 = v83;
        }

        while (v85 != v83);
      }

      a6 = v150;
LABEL_129:
      v13 = v151;
      goto LABEL_5;
    }

LABEL_4:

    a6 = v150;
    v13 = v151;
LABEL_5:
    if (++v13 == a6)
    {
      sub_1AF692DB0(v145);
      a5 = v147;
      a7 = v148;
      a1 = v146;
      goto LABEL_131;
    }
  }

  v156 = v17;

  v26 = v156;
  v27 = 1;
  v153 = v15;
  while (1)
  {
    v28 = v15[v27];
    if (v19 != v28)
    {
      break;
    }

LABEL_20:
    ++v27;
    v19 = v28 + 1;
    if (v27 == v26)
    {
      goto LABEL_10;
    }
  }

  v157 = v27;
  v29 = *(v16 + 16);
  v30 = *(v16 + 192);
  v159 = v19;
  if (v30)
  {
    v31 = v15[v27];
    v32 = *(v16 + 208);
    sub_1AF75D408(v18, v19, v30);
    if ((v155 & 4) != 0)
    {
      sub_1AF75D408(v18, v19, v32);
      v26 = v156;
      v28 = v31;
    }

    else
    {
      v26 = v156;
      v28 = v31;
      if (v19 != v18)
      {
        v33 = v18 >> 6;
        v34 = v19;
        v35 = v19 >> 6;
        v36 = ~(-1 << v18);
        v37 = -1 << v34;
        if (v35 == v18 >> 6)
        {
          *(v32 + 8 * v33) &= v37 ^ v36;
        }

        else
        {
          if (v35 - (v18 >> 6) > 1)
          {
            bzero((v32 + 8 * v33 + 8), 8 * (v35 + ~v33));
            v28 = v31;
            v26 = v156;
          }

          *(v32 + 8 * v33) &= v36;
          *(v32 + 8 * v35) &= v37;
        }

        v19 = v159;
        v15 = v153;
      }
    }
  }

  if (*(*(v16 + 40) + 213) != 1)
  {
    goto LABEL_18;
  }

  v38 = *(v16 + 48);
  v39 = (v38 + 32);
  v40 = *(v38 + 16) + 1;
  while (--v40)
  {
    v41 = v39 + 5;
    v42 = *v39;
    v39 += 5;
    if (v42 == &type metadata for PropagateDirtiness)
    {
      v40 = *(v41 - 2);
      break;
    }
  }

  if (v18 == v19)
  {
LABEL_18:
    v18 = v28;
LABEL_19:
    v27 = v157;
    goto LABEL_20;
  }

  v154 = v28;
  v160 = *(v16 + 128) + v40;
  while (1)
  {

    if (*(v16 + 184))
    {
      break;
    }

    v46 = *(*(v16 + 168) + 4 * v18);
    v47 = *(*(v29 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v46 + 8);

    if (*(v160 + 8 * v18) != -1 || HIDWORD(*(v160 + 8 * v18)) != 0)
    {
      v162 = *(v160 + 8 * v18);
      v49 = *(v10 + 88);
      sub_1AFDFF288();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      v50 = sub_1AFDFF2F8();
      v51 = v49 + 56;
      v52 = -1 << *(v49 + 32);
      v53 = v50 & ~v52;
      if ((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
      {
        v54 = ~v52;
        v55 = *(v49 + 48);
        v19 = v159;
        while (1)
        {
          v56 = vceq_s32(*(v55 + 16 * v53 + 8), v162);
          if (v56.i32[0] & v56.i32[1])
          {
            break;
          }

          v53 = (v53 + 1) & v54;
          if (((*(v51 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
LABEL_54:
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v164 = *(v10 + 88);
        *(v10 + 88) = 0x8000000000000000;
        if (*(v164 + 24) > *(v164 + 16))
        {
          if (v57)
          {
            v43 = v164;
          }

          else
          {
            sub_1AF6BAFCC();
            v62 = sub_1AFDFE188();
            v43 = v62;
            if (*(v164 + 16))
            {
              v63 = (v62 + 56);
              v64 = (v164 + 56);
              v65 = ((1 << *(v43 + 32)) + 63) >> 6;
              if (v43 != v164 || v63 >= &v64[8 * v65])
              {
                memmove(v63, v64, 8 * v65);
              }

              v66 = 0;
              *(v43 + 16) = *(v164 + 16);
              v67 = 1 << *(v164 + 32);
              if (v67 < 64)
              {
                v68 = ~(-1 << v67);
              }

              else
              {
                v68 = -1;
              }

              v69 = v68 & *(v164 + 56);
              for (i = (v67 + 63) >> 6; v69; *(*(v43 + 48) + 16 * v72) = *(*(v164 + 48) + 16 * v72))
              {
                v71 = __clz(__rbit64(v69));
                v69 &= v69 - 1;
                v72 = v71 | (v66 << 6);
LABEL_76:
                ;
              }

              v73 = v66 << 6;
              while (1)
              {
                v74 = v66 + 1;
                if (v66 + 1 >= i)
                {
                  break;
                }

                v75 = *(v164 + 64 + 8 * v66);
                v73 += 64;
                ++v66;
                if (v75)
                {
                  v76 = __clz(__rbit64(v75));
                  v69 = (v75 - 1) & v75;
                  v72 = v76 + v73;
                  v66 = v74;
                  goto LABEL_76;
                }
              }
            }
          }

          v19 = v159;
        }

        else
        {
          if (v57)
          {
            sub_1AF70EEE0();
          }

          else
          {
            sub_1AF714FF4();
          }

          v19 = v159;
          v43 = v164;
          sub_1AFDFF288();
          sub_1AFDFF2C8();
          sub_1AFDFF2C8();
          v58 = sub_1AFDFF2F8();
          v59 = -1 << *(v164 + 32);
          v53 = v58 & ~v59;
          if ((*(v164 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
          {
            v60 = ~v59;
            v44 = v162;
            while (1)
            {
              v61 = vceq_s32(*(*(v164 + 48) + 16 * v53 + 8), v162);
              if (v61.i32[0] & v61.i32[1])
              {
                break;
              }

              v53 = (v53 + 1) & v60;
              if (((*(v164 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            sub_1AFDFF198();
            __break(1u);
            break;
          }
        }

        v44 = v162;
LABEL_43:
        *(v43 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v53;
        *&v45 = __PAIR64__(v47, v46);
        *(&v45 + 1) = v44;
        *(*(v43 + 48) + 16 * v53) = v45;
        ++*(v43 + 16);
        *(v158 + 88) = v43;
        v10 = v158;
      }
    }

    ++v18;
    v16 = v161;
    if (v18 == v19)
    {
      v15 = v153;
      v28 = v154;
      v18 = v154;
      v26 = v156;
      goto LABEL_19;
    }
  }

LABEL_143:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF6BAFCC()
{
  if (!qword_1ED7230E0)
  {
    sub_1AF6781F0();
    v0 = sub_1AFDFE1C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7230E0);
    }
  }
}

uint64_t sub_1AF6BB028@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v6 = 0uLL;
  if (!a4)
  {
    goto LABEL_282;
  }

  v7 = a4;
  if (&a4[a5] == a4)
  {
    goto LABEL_282;
  }

  v8 = a3;
  v9 = result;
  v10 = 0;
  v11 = *(a3 + 16);
  v12 = *(a3 + 32);
  result = __clz(__rbit64(v12));
  v13 = v9[13] + 32;
  v14 = 4 * a5;
  v15 = a4;
  do
  {
    v17 = *v15;
    if (v12)
    {
      v18 = *(v13 + 40 * v17 + 16);
      if (result >= *(v18 + 16))
      {
        v16 = 0;
        goto LABEL_5;
      }

      v19 = *(v18 + 8 * result + 32);
    }

    else
    {
      v20 = (v13 + 40 * v17);
      v19 = *v20;
      if ((v11 & 1) == 0)
      {
        v16 = *(v19 + 16) - v20[1];
        goto LABEL_5;
      }
    }

    v16 = *(v19 + 16);
LABEL_5:
    v10 += v16;
    ++v15;
    v14 -= 4;
  }

  while (v14);
  if (v10 <= 0)
  {
LABEL_282:
    v240 = 0uLL;
    v241 = 0uLL;
    v238 = 0uLL;
    v239 = 0uLL;
    v237 = 0uLL;
    goto LABEL_284;
  }

  v244 = a6;
  v21 = *(a2 + 32);
  v248 = result;
  v249 = *(a3 + 32);
  v22 = v10;
  v250 = &a4[a5];
  ecs_stack_allocator_push_snapshot(v21);
  v242 = v22;
  v256 = v21;
  v23 = ecs_stack_allocator_allocate(v21, 48 * v22, 8);
  v25 = v249;
  v24 = v250;
  v253 = v23;
  v26 = v248;
  v261 = 0;
  v259 = 0;
  v263 = v8;
  v257 = v9;
  while (2)
  {
    v27 = *v7;
    if (v11 & 2) == 0 && (*(*(v9[11] + 8 * v27 + 32) + 209))
    {
      goto LABEL_16;
    }

    v28 = v9[13] + 32;
    if (v25)
    {
      v29 = *(v28 + 40 * v27 + 16);
      if (v26 >= *(v29 + 16))
      {
        goto LABEL_16;
      }

      v30 = *(v29 + 8 * v26 + 32);
      v31 = *(v30 + 16);
      if (!v31)
      {
        goto LABEL_16;
      }

      v251 = v7;
      v32 = v30 + 32;

      v33 = 0;
      while (2)
      {
        v34 = (v32 + 24 * v33);
        v35 = *(v9[18] + 8 * *v34 + 32);
        v36 = *(v35 + 256);
        v37 = *(v35 + 240);
        if (v37 == v36)
        {
          goto LABEL_24;
        }

        v38 = *(v34 + 1);
        v39 = *(v34 + 2);
        v40 = *(v8 + 8);
        v41 = *(v35 + 28);
        if (*(v8 + 12))
        {
          if (*(v8 + 12) != 1)
          {
            goto LABEL_37;
          }

          v42 = v40 == v41 ? 1 : *(v35 + 32);
          if (v42 == 1)
          {
            goto LABEL_37;
          }

LABEL_24:
          if (++v33 == v31)
          {

            v7 = v251;
            goto LABEL_15;
          }

          continue;
        }

        break;
      }

      if (v40 == v41)
      {
        v43 = *(v35 + 32);
      }

      else
      {
        v43 = 1;
      }

      if (v43)
      {
        goto LABEL_24;
      }

LABEL_37:
      if ((v11 & 8) != 0 && v37 == *(v35 + 248) || (v11 & 0x10) != 0 && *(v35 + 232) == v36)
      {
        goto LABEL_24;
      }

      if (v38)
      {
        v44 = (v39 + 63) >> 6;
        if (v44 <= 1)
        {
          v44 = 1;
        }

        v45 = 8 * v44;
        swift_retain_n();
        v46 = ecs_stack_allocator_allocate(v256, v45, 8);
        memcpy(v46, v38, v45);
        if ((v11 & 0x24) != 0)
        {
          v47 = v39;
          v48 = *(v35 + 192);
          if (v48)
          {
            goto LABEL_46;
          }

LABEL_61:

          v8 = v263;
          v9 = v257;
          goto LABEL_24;
        }

        v9 = v257;
        if (!v46)
        {
LABEL_95:
          v89 = 256;
          v90 = 232;
          if ((v11 & 0x10) == 0)
          {
            v89 = 232;
            v90 = 240;
          }

          if ((v11 & 8) != 0)
          {
            v89 = 248;
            v90 = 240;
          }

          v91 = *(v35 + v90);
          v92 = *(v35 + v89);
          v93 = v91 - v92;
          if (v91 != v92)
          {
            v94 = 0;
            v95 = 0;
            v96 = 0;
LABEL_109:
            v8 = v263;
            v99 = v253 + 48 * v261;
            *v99 = v92;
            *(v99 + 4) = v91;
            v100 = v93 + v259;
            *(v99 + 8) = v259;
            *(v99 + 16) = v94;
            *(v99 + 24) = v95;
            *(v99 + 32) = v96;
            *(v99 + 40) = v35;

            ++v261;
            v259 = v100;
            goto LABEL_24;
          }

          goto LABEL_23;
        }

LABEL_83:
        v75 = (v39 + 63) >> 6;
        if (v75 <= 1)
        {
          v76 = 1;
        }

        else
        {
          v76 = (v39 + 63) >> 6;
        }

        if (v75 < 4)
        {
          v77 = 0;
          v78 = 0;
          goto LABEL_91;
        }

        v78 = v76 & 0x7FFFFFFFFFFFFFFCLL;
        v79 = v46 + 1;
        v80 = 0uLL;
        v81 = v76 & 0x7FFFFFFFFFFFFFFCLL;
        v82 = 0uLL;
        do
        {
          v80 = vpadalq_u32(v80, vpaddlq_u16(vpaddlq_u8(vcntq_s8(v79[-1]))));
          v82 = vpadalq_u32(v82, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v79))));
          v79 += 2;
          v81 -= 4;
        }

        while (v81);
        v77 = vaddvq_s64(vaddq_s64(v82, v80));
        if (v76 != v78)
        {
LABEL_91:
          v83 = v76 - v78;
          v84 = v46 + v78;
          do
          {
            v85 = *v84++;
            v86 = vcnt_s8(v85);
            v86.i16[0] = vaddlv_u8(v86);
            v77 += v86.u32[0];
            --v83;
          }

          while (v83);
        }

        v87 = *(v35 + 232);
        v88 = *(v35 + 240);
        if (v77 == v88 - v87)
        {
          sub_1AF75D364(0, v87, v46);
          sub_1AF75D364(v88, v39, v46);
          goto LABEL_95;
        }

        if ((v11 & 8) != 0)
        {
          v87 = *(v35 + 248);
        }

        else if ((v11 & 0x10) != 0)
        {
          v88 = *(v35 + 232);
          v87 = *(v35 + 256);
        }

        sub_1AF75D364(0, v87, v46);
        sub_1AF75D364(v88, v39, v46);
        v97 = 0;
        while (v76 != v97)
        {
          if (v46->i64[v97++])
          {
            v94 = sub_1AF6B8D4C(v46, v39, v256);
            LODWORD(v92) = 0;
            v96 = v91;
            v93 = v91;
            goto LABEL_109;
          }
        }

LABEL_23:

        v8 = v263;
        goto LABEL_24;
      }

      swift_retain_n();
      if ((v11 & 0x24) == 0)
      {
        goto LABEL_95;
      }

      v47 = 0;
      v46 = 0;
      v48 = *(v35 + 192);
      if (!v48)
      {
        goto LABEL_61;
      }

LABEL_46:
      v39 = *(v35 + 200);
      if (*(v263 + 24) == 1)
      {
        v49 = *(v35 + 208);
        v50 = *(v35 + 216) + 63;
        v51 = v50 >> 6;
        if (v50 >> 6 <= 1)
        {
          v52 = 1;
        }

        else
        {
          v52 = v50 >> 6;
        }

        if (v51 <= 3 || (v48 + 8 * v52 > v49 ? (v53 = v49 + 8 * v52 > v48) : (v53 = 0), v53))
        {
          v54 = 0;
        }

        else
        {
          v54 = v52 & 0x7FFFFFFFFFFFFFFCLL;
          v55 = (v49 + 16);
          v56 = v48 + 1;
          v57 = v52 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v58 = vorrq_s8(*v56, *v55);
            v55[-1] = vorrq_s8(v56[-1], v55[-1]);
            *v55 = v58;
            v55 += 2;
            v56 += 2;
            v57 -= 4;
          }

          while (v57);
          if (v52 == v54)
          {
            goto LABEL_67;
          }
        }

        v59 = v52 - v54;
        v60 = 8 * v54;
        v61 = &v48->i64[v54];
        v62 = (v49 + v60);
        do
        {
          v63 = *v61++;
          *v62++ |= v63;
          --v59;
        }

        while (v59);
      }

LABEL_67:
      if (v46)
      {
        if ((v11 & 4) != 0)
        {
          sub_1AF75D4D0(v48, v39, v46, v47);
        }

        else
        {
          sub_1AF75D570(v48, v39, v46, v47);
        }

        v39 = v47;
        v9 = v257;
        if ((v11 & 0x20) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }

      v64 = (v39 + 63) >> 6;
      if (v64 <= 1)
      {
        v65 = 1;
      }

      else
      {
        v65 = (v39 + 63) >> 6;
      }

      v246 = v65;
      v66 = 8 * v65;
      v67 = ecs_stack_allocator_allocate(v256, 8 * v65, 8);
      v46 = v67;
      if ((v11 & 4) != 0)
      {
        memcpy(v67, v48, v66);
        v9 = v257;
        if ((v11 & 0x20) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }

      bzero(v67, v66);
      v68 = 0;
      if (v64 < 4)
      {
        v9 = v257;
        v69 = v246;
      }

      else
      {
        v9 = v257;
        v69 = v246;
        if ((v46 - v48) > 0x1F)
        {
          v68 = v246 & 0x7FFFFFFFFFFFFFFCLL;
          v70 = v48 + 1;
          v71 = v46 + 1;
          v72 = v246 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v73 = vmvnq_s8(*v70);
            v71[-1] = vmvnq_s8(v70[-1]);
            *v71 = v73;
            v70 += 2;
            v71 += 2;
            v72 -= 4;
          }

          while (v72);
          if (v246 == v68)
          {
LABEL_115:
            v106 = v64 - 1;
            if (v64 <= 1)
            {
              v106 = 0;
            }

            v46->i64[v106] &= ~(-1 << v39);
            if ((v11 & 0x20) == 0)
            {
              goto LABEL_83;
            }

LABEL_82:
            v74 = *(v35 + 240);
            sub_1AF75D364(0, *(v35 + 232), v46);
            sub_1AF75D364(v74, v39, v46);
            goto LABEL_83;
          }
        }
      }

      v101 = v69 - v68;
      v102 = v68;
      v103 = &v46->i64[v68];
      v104 = &v48->i64[v102];
      do
      {
        v105 = *v104++;
        *v103++ = ~v105;
        --v101;
      }

      while (v101);
      goto LABEL_115;
    }

    v107 = (v28 + 40 * v27);
    v108 = v107[1];
    v109 = *(*v107 + 16);
    if (v108 != v109)
    {
      v245 = *v7;
      v252 = v7;
      v110 = *v107 + 32;

      while (1)
      {
        v111 = *(v9[18] + 8 * *(v110 + 4 * v108) + 32);
        v112 = *(v111 + 256);
        v113 = *(v111 + 240);
        if (v113 != v112)
        {
          v114 = *(v8 + 8);
          v115 = *(v111 + 28);
          if (*(v8 + 12))
          {
            if (*(v8 + 12) == 1)
            {
              v116 = v114 == v115 ? 1 : *(v111 + 32);
              if (v116 != 1)
              {
                goto LABEL_122;
              }
            }
          }

          else
          {
            if (v114 == v115)
            {
              v117 = *(v111 + 32);
            }

            else
            {
              v117 = 1;
            }

            if (v117)
            {
              goto LABEL_122;
            }
          }

          if (((v11 & 8) == 0 || v113 != *(v111 + 248)) && ((v11 & 0x10) == 0 || *(v111 + 232) != v112))
          {
            if ((v11 & 0x24) == 0)
            {
              swift_retain_n();
              goto LABEL_185;
            }

            v118 = *(v111 + 192);
            if (v118)
            {
              v119 = *(v111 + 200);
              if (*(v8 + 24) == 1)
              {
                v120 = *(v111 + 208);
                v121 = *(v111 + 216) + 63;
                v122 = v121 >> 6;
                if (v121 >> 6 <= 1)
                {
                  v123 = 1;
                }

                else
                {
                  v123 = v121 >> 6;
                }

                if (v122 < 4 || (v118 + 8 * v123 > v120 ? (v124 = v120 + 8 * v123 > v118) : (v124 = 0), v124))
                {
                  v125 = 0;
                }

                else
                {
                  v125 = v123 & 0x7FFFFFFFFFFFFFFCLL;
                  v126 = (v120 + 16);
                  v127 = v118 + 1;
                  v128 = v123 & 0x7FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v129 = vorrq_s8(*v127, *v126);
                    v126[-1] = vorrq_s8(v127[-1], v126[-1]);
                    *v126 = v129;
                    v126 += 2;
                    v127 += 2;
                    v128 -= 4;
                  }

                  while (v128);
                  if (v123 == v125)
                  {
                    goto LABEL_159;
                  }
                }

                v130 = v123 - v125;
                v131 = 8 * v125;
                v132 = &v118->i64[v125];
                v133 = (v120 + v131);
                do
                {
                  v134 = *v132++;
                  *v133++ |= v134;
                  --v130;
                }

                while (v130);
              }

LABEL_159:
              v254 = v119;
              v135 = (v119 + 63) >> 6;
              if (v135 <= 1)
              {
                v136 = 1;
              }

              else
              {
                v136 = (v119 + 63) >> 6;
              }

              swift_retain_n();
              v137 = ecs_stack_allocator_allocate(v256, 8 * v136, 8);
              v138 = v137;
              if ((v11 & 4) != 0)
              {
                memcpy(v137, v118, 8 * v136);
                if ((v11 & 0x20) == 0)
                {
                  goto LABEL_176;
                }
              }

              else
              {
                bzero(v137, 8 * v136);
                v139 = 0;
                if (v135 < 4)
                {
                  goto LABEL_168;
                }

                if ((v138 - v118) < 0x20)
                {
                  goto LABEL_168;
                }

                v139 = v136 & 0x7FFFFFFFFFFFFFFCLL;
                v140 = v118 + 1;
                v141 = v138 + 1;
                v142 = v136 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v143 = vmvnq_s8(*v140);
                  v141[-1] = vmvnq_s8(v140[-1]);
                  *v141 = v143;
                  v140 += 2;
                  v141 += 2;
                  v142 -= 4;
                }

                while (v142);
                if (v136 != v139)
                {
LABEL_168:
                  v144 = v136 - v139;
                  v145 = v139;
                  v146 = &v138->i64[v139];
                  v147 = &v118->i64[v145];
                  do
                  {
                    v148 = *v147++;
                    *v146++ = ~v148;
                    --v144;
                  }

                  while (v144);
                }

                v149 = v135 - 1;
                if (v135 <= 1)
                {
                  v149 = 0;
                }

                v138->i64[v149] &= ~(-1 << v254);
                if ((v11 & 0x20) == 0)
                {
LABEL_176:
                  if (v135 < 4)
                  {
                    v150 = 0;
                    v151 = 0;
                    v152 = v254;
                    goto LABEL_181;
                  }

                  v151 = v136 & 0x7FFFFFFFFFFFFFFCLL;
                  v153 = v138 + 1;
                  v154 = 0uLL;
                  v155 = v136 & 0x7FFFFFFFFFFFFFFCLL;
                  v156 = 0uLL;
                  v152 = v254;
                  do
                  {
                    v154 = vpadalq_u32(v154, vpaddlq_u16(vpaddlq_u8(vcntq_s8(v153[-1]))));
                    v156 = vpadalq_u32(v156, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v153))));
                    v153 += 2;
                    v155 -= 4;
                  }

                  while (v155);
                  v150 = vaddvq_s64(vaddq_s64(v156, v154));
                  if (v136 != v151)
                  {
LABEL_181:
                    v157 = v136 - v151;
                    v158 = v138 + v151;
                    do
                    {
                      v159 = *v158++;
                      v160 = vcnt_s8(v159);
                      v160.i16[0] = vaddlv_u8(v160);
                      v150 += v160.u32[0];
                      --v157;
                    }

                    while (v157);
                  }

                  v161 = *(v111 + 232);
                  v162 = *(v111 + 240);
                  if (v150 != v162 - v161)
                  {
                    if ((v11 & 8) != 0)
                    {
                      v161 = *(v111 + 248);
                    }

                    else if ((v11 & 0x10) != 0)
                    {
                      v162 = *(v111 + 232);
                      v161 = *(v111 + 256);
                    }

                    sub_1AF75D364(0, v161, v138);
                    sub_1AF75D364(v162, v152, v138);
                    v171 = 0;
                    v9 = v257;
                    while (v136 != v171)
                    {
                      if (v138->i64[v171++])
                      {
                        v168 = sub_1AF6B8D4C(v138, v152, v256);
                        LODWORD(v166) = 0;
                        v170 = v165;
                        v167 = v165;
                        v8 = v263;
                        goto LABEL_199;
                      }
                    }

                    v8 = v263;
                    goto LABEL_122;
                  }

                  sub_1AF75D364(0, v161, v138);
                  sub_1AF75D364(v162, v152, v138);
                  v8 = v263;
                  v9 = v257;
LABEL_185:
                  v163 = 256;
                  v164 = 232;
                  if ((v11 & 0x10) == 0)
                  {
                    v163 = 232;
                    v164 = 240;
                  }

                  if ((v11 & 8) != 0)
                  {
                    v163 = 248;
                    v164 = 240;
                  }

                  v165 = *(v111 + v164);
                  v166 = *(v111 + v163);
                  v167 = v165 - v166;
                  if (v165 == v166)
                  {
                  }

                  else
                  {
                    v168 = 0;
                    v169 = 0;
                    v170 = 0;
LABEL_199:
                    v173 = v253 + 48 * v261;
                    *v173 = v166;
                    *(v173 + 4) = v165;
                    v174 = v167 + v259;
                    *(v173 + 8) = v259;
                    *(v173 + 16) = v168;
                    *(v173 + 24) = v169;
                    *(v173 + 32) = v170;
                    *(v173 + 40) = v111;

                    ++v261;
                    v259 = v174;
                  }

                  goto LABEL_122;
                }
              }

              v247 = *(v111 + 240);
              sub_1AF75D364(0, *(v111 + 232), v138);
              sub_1AF75D364(v247, v254, v138);
              goto LABEL_176;
            }

            v9 = v257;
          }
        }

LABEL_122:
        if (++v108 == v109)
        {

          v24 = v250;
          v7 = v252;
          v26 = v248;
          v25 = v249;
          LODWORD(v27) = v245;
          break;
        }
      }
    }

    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }

    v175 = v9[13] + 40 * v27;
    v176 = *(v175 + 40) & 0x7FFFFFFFFFFFFFFFLL;
    if (!v176)
    {
      goto LABEL_16;
    }

    v177 = *(v175 + 32) + 32;

    v178 = 0;
    while (2)
    {
      v179 = *(v9[18] + 8 * *(v177 + 4 * v178) + 32);
      v180 = *(v179 + 256);
      v181 = *(v179 + 240);
      if (v181 == v180)
      {
        goto LABEL_206;
      }

      v182 = *(v8 + 8);
      v183 = *(v179 + 28);
      if (!*(v8 + 12))
      {
        if (v182 == v183)
        {
          v185 = *(v179 + 32);
        }

        else
        {
          v185 = 1;
        }

        if (v185)
        {
          goto LABEL_206;
        }

LABEL_219:
        if ((v11 & 8) != 0 && v181 == *(v179 + 248) || (v11 & 0x10) != 0 && *(v179 + 232) == v180)
        {
          goto LABEL_206;
        }

        if ((v11 & 0x24) == 0)
        {
          swift_retain_n();
          goto LABEL_262;
        }

        v186 = *(v179 + 192);
        if (!v186)
        {
          v9 = v257;
          goto LABEL_206;
        }

        v187 = v8;
        v188 = *(v179 + 200);
        if (*(v187 + 24) == 1)
        {
          v189 = *(v179 + 208);
          v190 = *(v179 + 216) + 63;
          v191 = v190 >> 6;
          if (v190 >> 6 <= 1)
          {
            v192 = 1;
          }

          else
          {
            v192 = v190 >> 6;
          }

          if (v191 < 4 || (v186 + 8 * v192 > v189 ? (v193 = v189 + 8 * v192 > v186) : (v193 = 0), v193))
          {
            v194 = 0;
          }

          else
          {
            v194 = v192 & 0x7FFFFFFFFFFFFFFCLL;
            v195 = (v189 + 16);
            v196 = v186 + 1;
            v197 = v192 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v198 = vorrq_s8(*v196, *v195);
              v195[-1] = vorrq_s8(v196[-1], v195[-1]);
              *v195 = v198;
              v195 += 2;
              v196 += 2;
              v197 -= 4;
            }

            while (v197);
            if (v192 == v194)
            {
              goto LABEL_243;
            }
          }

          v199 = v192 - v194;
          v200 = 8 * v194;
          v201 = &v186->i64[v194];
          v202 = (v189 + v200);
          do
          {
            v203 = *v201++;
            *v202++ |= v203;
            --v199;
          }

          while (v199);
        }

LABEL_243:
        if ((v11 & 4) != 0)
        {
          v206 = (v188 + 63) >> 6;
          if (v206 <= 1)
          {
            v206 = 1;
          }

          v207 = v7;
          v208 = 8 * v206;
          swift_retain_n();
          v204 = ecs_stack_allocator_allocate(v256, v208, 8);
          v209 = v208;
          v7 = v207;
          memcpy(v204, v186, v209);
          if ((v11 & 0x20) == 0)
          {
LABEL_250:
            v211 = (v188 + 63) >> 6;
            if (v211 <= 1)
            {
              v212 = 1;
            }

            else
            {
              v212 = (v188 + 63) >> 6;
            }

            if (v211 >= 4)
            {
              v214 = v212 & 0x7FFFFFFFFFFFFFFCLL;
              v215 = v204 + 1;
              v216 = 0uLL;
              v217 = v212 & 0x7FFFFFFFFFFFFFFCLL;
              v218 = 0uLL;
              do
              {
                v216 = vpadalq_u32(v216, vpaddlq_u16(vpaddlq_u8(vcntq_s8(v215[-1]))));
                v218 = vpadalq_u32(v218, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v215))));
                v215 += 2;
                v217 -= 4;
              }

              while (v217);
              v213 = vaddvq_s64(vaddq_s64(v218, v216));
              if (v212 == v214)
              {
                goto LABEL_260;
              }
            }

            else
            {
              v213 = 0;
              v214 = 0;
            }

            v219 = v212 - v214;
            v220 = v204 + v214;
            do
            {
              v221 = *v220++;
              v222 = vcnt_s8(v221);
              v222.i16[0] = vaddlv_u8(v222);
              v213 += v222.u32[0];
              --v219;
            }

            while (v219);
LABEL_260:
            v223 = *(v179 + 232);
            v224 = *(v179 + 240);
            if (v213 != v224 - v223)
            {
              if ((v11 & 8) != 0)
              {
                v223 = *(v179 + 248);
              }

              else if ((v11 & 0x10) != 0)
              {
                v224 = *(v179 + 232);
                v223 = *(v179 + 256);
              }

              sub_1AF75D364(0, v223, v204);
              sub_1AF75D364(v224, v188, v204);
              v233 = 0;
              v9 = v257;
              while (v212 != v233)
              {
                if (v204->i64[v233++])
                {
                  v230 = sub_1AF6B8D4C(v204, v188, v256);
                  LODWORD(v228) = 0;
                  v232 = v227;
                  v229 = v227;
                  v8 = v263;
                  goto LABEL_276;
                }
              }

              v8 = v263;
              goto LABEL_206;
            }

            sub_1AF75D364(0, v223, v204);
            sub_1AF75D364(v224, v188, v204);
            v8 = v263;
            v9 = v257;
LABEL_262:
            v225 = 256;
            v226 = 232;
            if ((v11 & 0x10) == 0)
            {
              v225 = 232;
              v226 = 240;
            }

            if ((v11 & 8) != 0)
            {
              v225 = 248;
              v226 = 240;
            }

            v227 = *(v179 + v226);
            v228 = *(v179 + v225);
            v229 = v227 - v228;
            if (v227 == v228)
            {
            }

            else
            {
              v230 = 0;
              v231 = 0;
              v232 = 0;
LABEL_276:
              v235 = v253 + 48 * v261;
              *v235 = v228;
              *(v235 + 4) = v227;
              v236 = v229 + v259;
              *(v235 + 8) = v259;
              *(v235 + 16) = v230;
              *(v235 + 24) = v231;
              *(v235 + 32) = v232;
              *(v235 + 40) = v179;

              ++v261;
              v259 = v236;
            }

            goto LABEL_206;
          }
        }

        else
        {
          swift_retain_n();
          v204 = sub_1AF6B933C(v256, v186, v188);
          v188 = v205;
          if ((v11 & 0x20) == 0)
          {
            goto LABEL_250;
          }
        }

        v210 = *(v179 + 240);
        sub_1AF75D364(0, *(v179 + 232), v204);
        sub_1AF75D364(v210, v188, v204);
        goto LABEL_250;
      }

      if (*(v8 + 12) != 1)
      {
        goto LABEL_219;
      }

      v184 = v182 == v183 ? 1 : *(v179 + 32);
      if (v184 == 1)
      {
        goto LABEL_219;
      }

LABEL_206:
      if (++v178 != v176)
      {
        continue;
      }

      break;
    }

LABEL_15:
    v25 = v249;
    v24 = v250;
    v26 = v248;
LABEL_16:
    if (++v7 != v24)
    {
      continue;
    }

    break;
  }

  if (v261)
  {

    sub_1AF6B75B4(v8, v266);
    sub_1AF6BA460(v9, a2, v8, v253, v242, v261, v266);
    v264 = v266[1];
    v265 = v266[0];
    v260 = v266[3];
    v262 = v266[2];
    v258 = v266[4];
    v255 = v266[5];
    result = ecs_stack_allocator_pop_snapshot(v256);
    v237 = v255;
    v239 = v258;
    v238 = v260;
    v241 = v262;
    v240 = v264;
    v6 = v265;
    a6 = v244;
  }

  else
  {
    result = ecs_stack_allocator_pop_snapshot(v256);
    v240 = 0uLL;
    v241 = 0uLL;
    v238 = 0uLL;
    v239 = 0uLL;
    v237 = 0uLL;
    a6 = v244;
    v6 = 0uLL;
  }

LABEL_284:
  *a6 = v6;
  a6[1] = v240;
  a6[2] = v241;
  a6[3] = v238;
  a6[4] = v239;
  a6[5] = v237;
  return result;
}

uint64_t sub_1AF6BC130(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t *a6)
{
  v128 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 9);
  v9 = *(v8 + 32);
  v118 = *(a1 + 7);
  if (v118 == 1)
  {
    v10 = **(a1 + 5);

    v11 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, 0, 0, 0, v8);
    if (v12)
    {
      ecs_stack_allocator_push_snapshot(v9);
      v13 = 16 * *(a1 + 10);
      v108 = v9;
      v14 = ecs_stack_allocator_allocate(v9, v13, 16);
      v15 = v14;
      if (v13)
      {
        memset_pattern16(v14, &xmmword_1AFE201A0, v13);
      }

      if (a2)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v25 = v17 + 1;
          v26 = *(a3 + 8 * v17 + 4);
          if (v26 == -1)
          {
            v27 = *a5;
            *(a4 + 8 * v17) = *a5;
            v28 = *a6;
            *(a4 + 8 * *a6 + 4) = COERCE_FLOAT(*(a4 + 8 * *a6)) / v27;
            if (v28 != v17)
            {
              v29 = v28 + v16;
              v30 = (a4 + 12 + 8 * v28);
              do
              {
                *v30 = COERCE_FLOAT(*(v30 - 1)) / *a5;
                v30 += 2;
                v31 = __CFADD__(v29++, 1);
              }

              while (!v31);
            }

            *a6 = v25;
            v24 = 0.0;
          }

          else
          {
            v18 = v17;
            if (*(a3 + 8 * v17) != -1)
            {
              LODWORD(v17) = *(a3 + 8 * v17);
            }

            if (*(a3 + 8 * v26 + 4) == -1)
            {
              v19 = v26;
            }

            else
            {
              v19 = *(a3 + 8 * v26 + 4);
            }

            v20 = *&v15[2 * v17];
            v21 = *&v15[2 * v18];
            v22 = *&v15[2 * v26];
            v23 = *&v15[2 * v19];
            *(a4 + 8 * v18) = *a5;
            v24 = catmull_rom_spline_arclength(v20, v21, v22, v23, 0.0, 1.0) + *a5;
          }

          *a5 = v24;
          --v16;
          v17 = v25;
        }

        while (v25 != a2);
      }

      ecs_stack_allocator_pop_snapshot(v108);
    }

    else if (a2)
    {
      v92 = 0;
      v93 = 0;
      v94 = v11 + 16 * v10;
      do
      {
        v102 = v93 + 1;
        v103 = *(a3 + 8 * v93 + 4);
        if (v103 == -1)
        {
          v104 = *a5;
          *(a4 + 8 * v93) = *a5;
          v105 = *a6;
          *(a4 + 8 * *a6 + 4) = COERCE_FLOAT(*(a4 + 8 * *a6)) / v104;
          if (v105 != v93)
          {
            v106 = v105 + v92;
            v107 = (a4 + 12 + 8 * v105);
            do
            {
              *v107 = COERCE_FLOAT(*(v107 - 1)) / *a5;
              v107 += 2;
              v31 = __CFADD__(v106++, 1);
            }

            while (!v31);
          }

          *a6 = v102;
          v101 = 0.0;
        }

        else
        {
          v95 = v93;
          if (*(a3 + 8 * v93) != -1)
          {
            LODWORD(v93) = *(a3 + 8 * v93);
          }

          if (*(a3 + 8 * v103 + 4) == -1)
          {
            v96 = v103;
          }

          else
          {
            v96 = *(a3 + 8 * v103 + 4);
          }

          v97 = *(v94 + 16 * v93);
          v98 = *(v94 + 16 * v95);
          v99 = *(v94 + 16 * v103);
          v100 = *(v94 + 16 * v96);
          *(a4 + 8 * v95) = *a5;
          v101 = catmull_rom_spline_arclength(v97, v98, v99, v100, 0.0, 1.0) + *a5;
        }

        *a5 = v101;
        --v92;
        v93 = v102;
      }

      while (v102 != a2);
    }
  }

  v117 = *(a1 + 5);
  ecs_stack_allocator_push_snapshot(v9);
  v32 = *(a1 + 10);
  v109 = v9;
  v33 = ecs_stack_allocator_allocate(v9, 16 * v32, 16);
  v34 = v33;
  if (v32 > 0 && v118)
  {
    v35 = 0;
    v36 = *(*(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v122 = *(v8 + 32);
    v37 = a1[1];
    v125 = *a1;
    v126 = v37;
    v127 = *(a1 + 4);
    v115 = a2;
    v116 = v33;
    v114 = v36;
    do
    {
      v38 = a2;
      v39 = (v117 + 48 * v35);
      v40 = *v39;
      v41 = v39[1];
      v42 = v39[2];
      v43 = *(v39 + 5);
      v123 = v43;
      if (v36)
      {
        v44 = *(v43 + 376);

        os_unfair_lock_lock(v44);
        os_unfair_lock_lock(*(v43 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v122);
      v120 = *(v8 + 64);
      v121 = *(v8 + 48);
      v119 = *(v8 + 80);
      v45 = *(*(*(*(v43 + 40) + 16) + 32) + 16) + 1;
      *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v45, 8);
      *(v8 + 56) = v45;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 64) = 0;

      v46 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, 0, 0, 0, v8);
      v48 = v47;
      v49 = 16 * (v41 - v40);
      if (v48)
      {
        v124 = xmmword_1AFE201A0;
        memset_pattern16_nocache(&v34[2 * v42], &v124, v49);
      }

      else
      {
        memcpy(&v34[2 * v42], (v46 + 16 * v40), v49);
      }

      a2 = v38;
      v50 = *(v8 + 48);
      v51 = *(v8 + 64);
      if (!v51)
      {
        v73 = *(v8 + 56);
        v74 = *(v8 + 32);
        v34 = v116;
        v75 = v119;
        goto LABEL_60;
      }

      for (i = 0; i != v51; ++i)
      {
        v54 = (v50 + 48 * i);
        v55 = *v54;
        v56 = v54[4];
        v57 = *(v8 + 72);
        if (v57)
        {
          v58 = v55 == v57;
        }

        else
        {
          v58 = 0;
        }

        if (v58)
        {
          goto LABEL_32;
        }

        v59 = v125;
        if (!*(v125 + 22))
        {
          goto LABEL_32;
        }

        v60 = v54[2];
        v61 = v125 + 41;
        v62 = *(v125 + 18);
        if (v62 >= 0x10)
        {
          v63 = (v61 + *(v125 + 16));
          v64 = v62 >> 4;
          v65 = v125 + 41;
          while (*v63 != v55)
          {
            ++v65;
            v63 += 2;
            if (!--v64)
            {
              goto LABEL_48;
            }
          }

          v66 = *(v65 + *(v125 + 20));
          v67 = v66 > 5;
          v68 = (1 << v66) & 0x23;
          if (v67 || v68 == 0)
          {
LABEL_32:

            v56(v53);

            continue;
          }
        }

LABEL_48:
        if (swift_conformsToProtocol2() && v60)
        {
          if (sub_1AF5FC8D8(v60))
          {
            goto LABEL_32;
          }

          v70 = *(v59 + 18);
          if (v70 < 0x10)
          {
            goto LABEL_32;
          }

          v71 = (v61 + *(v59 + 16));
          v72 = 16 * (v70 >> 4);
          while (*v71 != v60)
          {
            v71 += 2;
            v72 -= 16;
            if (!v72)
            {
              goto LABEL_32;
            }
          }
        }
      }

      v73 = *(v8 + 56);
      v50 = *(v8 + 48);
      v74 = *(v8 + 32);
      v75 = v119;
      if (*(v8 + 64) >= 1)
      {
        swift_arrayDestroy();
      }

      a2 = v115;
      v34 = v116;
      v36 = v114;
LABEL_60:
      ecs_stack_allocator_deallocate(v74, v50, 48 * v73);
      *(v8 + 48) = v121;
      *(v8 + 64) = v120;
      *(v8 + 80) = v75;
      sub_1AF62D29C(v123);
      ecs_stack_allocator_pop_snapshot(v122);
      if (v36)
      {
        os_unfair_lock_unlock(*(v123 + 344));
        os_unfair_lock_unlock(*(v123 + 376));
      }

      ++v35;
    }

    while (v35 != v118);
  }

  if (a2)
  {
    v76 = 0;
    v77 = 0;
    do
    {
      v85 = v77 + 1;
      v86 = *(a3 + 8 * v77 + 4);
      if (v86 == -1)
      {
        v87 = *a5;
        *(a4 + 8 * v77) = *a5;
        v88 = *a6;
        *(a4 + 8 * *a6 + 4) = COERCE_FLOAT(*(a4 + 8 * *a6)) / v87;
        if (v88 != v77)
        {
          v89 = v88 + v76;
          v90 = (a4 + 12 + 8 * v88);
          do
          {
            *v90 = COERCE_FLOAT(*(v90 - 1)) / *a5;
            v90 += 2;
            v31 = __CFADD__(v89++, 1);
          }

          while (!v31);
        }

        *a6 = v85;
        v84 = 0.0;
      }

      else
      {
        v78 = v77;
        if (*(a3 + 8 * v77) != -1)
        {
          LODWORD(v77) = *(a3 + 8 * v77);
        }

        if (*(a3 + 8 * v86 + 4) == -1)
        {
          v79 = v86;
        }

        else
        {
          v79 = *(a3 + 8 * v86 + 4);
        }

        v80 = *&v34[2 * v77];
        v81 = *&v34[2 * v78];
        v82 = *&v34[2 * v86];
        v83 = *&v34[2 * v79];
        *(a4 + 8 * v78) = *a5;
        v84 = catmull_rom_spline_arclength(v80, v81, v82, v83, 0.0, 1.0) + *a5;
      }

      *a5 = v84;
      --v76;
      v77 = v85;
    }

    while (v85 != a2);
  }

  return ecs_stack_allocator_pop_snapshot(v109);
}

uint64_t sub_1AF6BC968(__int128 *a1, unsigned int *a2, uint64_t a3, uint64_t a4, float32x4_t *a5, uint64_t a6, void *a7, float a8)
{
  v163 = *MEMORY[0x1E69E9840];
  v142 = a5[1];
  v143 = *a5;
  v140 = a5[3];
  v141 = a5[2];
  v138 = a5[5];
  v139 = a5[4];
  v10 = *(a1 + 9);
  v11 = *(v10 + 32);
  v12 = *(a1 + 5);
  v153 = *(a1 + 7);
  if (v153 == 1)
  {
    v13 = *v12;

    v14 = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, 0, 0, 0, v10);
    if (v15)
    {
      ecs_stack_allocator_push_snapshot(v11);
      v16 = 16 * *(a1 + 10);
      v17 = ecs_stack_allocator_allocate(v11, v16, 16);
      v18 = v17;
      if (v16)
      {
        memset_pattern16(v17, &xmmword_1AFE208C0, v16);
      }

      v19 = a2;
      if (a2 && a3)
      {
        v20 = 4 * a3;
        do
        {
          v21 = *v19;
          v22 = *(a4 + 16 * v21);
          v23 = -(fmaxf(fmaxf(COERCE_FLOAT(*&v18[2 * v21]), COERCE_FLOAT(v18[2 * v21 + 1])), COERCE_FLOAT(HIDWORD(v18[2 * v21]))) * a8);
          v24 = vmulq_f32(v22, v143);
          _NF = (v143.f32[3] + (v24.f32[2] + vaddv_f32(*v24.f32))) < v23;
          v25 = vmulq_f32(v22, v142);
          v26 = v142.f32[3] + (v25.f32[2] + vaddv_f32(*v25.f32));
          _NF = _NF || v26 < v23;
          v28 = vmulq_f32(v22, v141);
          v29 = v141.f32[3] + (v28.f32[2] + vaddv_f32(*v28.f32));
          v30 = _NF || v29 < v23;
          v31 = vmulq_f32(v22, v140);
          v32 = v140.f32[3] + (v31.f32[2] + vaddv_f32(*v31.f32));
          v33 = v30 || v32 < v23;
          v34 = vmulq_f32(v22, v139);
          v35 = v139.f32[3] + (v34.f32[2] + vaddv_f32(*v34.f32));
          v36 = v33 || v35 < v23;
          v37 = vmulq_f32(v22, v138);
          v38 = v138.f32[3] + (v37.f32[2] + vaddv_f32(*v37.f32));
          if (!v36 && v38 >= v23)
          {
            *(a6 + 4 * (*a7)++) = v21;
          }

          ++v19;
          v20 -= 4;
        }

        while (v20);
      }

      ecs_stack_allocator_pop_snapshot(v11);
    }

    else
    {
      v114 = a2;
      if (a2 && a3)
      {
        v115 = 4 * a3;
        do
        {
          v116 = *v114;
          v117 = *(a4 + 16 * v116);
          v118 = -(fmaxf(fmaxf(COERCE_FLOAT(*(v14 + 16 * v13 + 16 * v116)), COERCE_FLOAT(*(v14 + 16 * v13 + 16 * v116 + 8))), COERCE_FLOAT(HIDWORD(*(v14 + 16 * v13 + 16 * v116)))) * a8);
          v119 = vmulq_f32(v117, v143);
          _NF = (v143.f32[3] + (v119.f32[2] + vaddv_f32(*v119.f32))) < v118;
          v120 = vmulq_f32(v117, v142);
          v121 = v142.f32[3] + (v120.f32[2] + vaddv_f32(*v120.f32));
          v122 = _NF || v121 < v118;
          v123 = vmulq_f32(v117, v141);
          v124 = v141.f32[3] + (v123.f32[2] + vaddv_f32(*v123.f32));
          v125 = v122 || v124 < v118;
          v126 = vmulq_f32(v117, v140);
          v127 = v140.f32[3] + (v126.f32[2] + vaddv_f32(*v126.f32));
          v128 = v125 || v127 < v118;
          v129 = vmulq_f32(v117, v139);
          v130 = v139.f32[3] + (v129.f32[2] + vaddv_f32(*v129.f32));
          v131 = v128 || v130 < v118;
          v132 = vmulq_f32(v117, v138);
          v133 = v138.f32[3] + (v132.f32[2] + vaddv_f32(*v132.f32));
          if (!v131 && v133 >= v118)
          {
            *(a6 + 4 * (*a7)++) = v116;
          }

          ++v114;
          v115 -= 4;
        }

        while (v115);
      }
    }
  }

  ecs_stack_allocator_push_snapshot(v11);
  v40 = *(a1 + 10);
  v135 = v11;
  v41 = ecs_stack_allocator_allocate(v11, 16 * v40, 16);
  v42 = v41;
  if (v40 > 0 && v153)
  {
    v43 = 0;
    v44 = *(v10 + 32);
    v45 = *(*(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v46 = a1[1];
    v160 = *a1;
    v161 = v46;
    v162 = *(a1 + 4);
    __asm { FMOV            V0.4S, #1.0 }

    v147 = _Q0;
    v152 = v44;
    v151 = v45;
    v148 = v12;
    v149 = v41;
    do
    {
      v50 = &v12[12 * v43];
      v52 = *v50;
      v51 = v50[1];
      v53 = v50[2];
      v54 = *(v50 + 5);
      if (v45)
      {
        v55 = *(v50 + 5);
        v56 = *(v54 + 376);

        v57 = v56;
        v54 = v55;
        os_unfair_lock_lock(v57);
        os_unfair_lock_lock(*(v55 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v44);
      v156 = *(v10 + 64);
      v157 = *(v10 + 48);
      v155 = *(v10 + 80);
      v58 = v54;
      v59 = *(*(*(*(v54 + 40) + 16) + 32) + 16) + 1;
      *(v10 + 48) = ecs_stack_allocator_allocate(*(v10 + 32), 48 * v59, 8);
      *(v10 + 56) = v59;
      v60 = &v42[2 * v53];
      *(v10 + 72) = 0;
      *(v10 + 80) = 0;
      *(v10 + 64) = 0;

      v61 = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, 0, 0, 0, v10);
      v63 = v62;
      v64 = 16 * (v51 - v52);
      if (v63)
      {
        v65 = v147;
        HIDWORD(v65) = v150;
        v159 = v65;
        memset_pattern16_nocache(v60, &v159, v64);
      }

      else
      {
        memcpy(v60, (v61 + 16 * v52), v64);
      }

      v66 = v58;
      v67 = *(v10 + 48);
      v68 = *(v10 + 64);
      v158 = v66;
      if (!v68)
      {
        v90 = *(v10 + 56);
        v91 = *(v10 + 32);
        v44 = v152;
        goto LABEL_67;
      }

      v154 = v43;
      for (i = 0; i != v68; ++i)
      {
        v71 = (v67 + 48 * i);
        v72 = *v71;
        v73 = v71[4];
        v74 = *(v10 + 72);
        if (v74)
        {
          _ZF = v72 == v74;
        }

        else
        {
          _ZF = 0;
        }

        if (_ZF)
        {
          goto LABEL_39;
        }

        v76 = v160;
        if (!*(v160 + 22))
        {
          goto LABEL_39;
        }

        v77 = v71[2];
        v78 = v160 + 41;
        v79 = *(v160 + 18);
        if (v79 >= 0x10)
        {
          v80 = (v78 + *(v160 + 16));
          v81 = v79 >> 4;
          v82 = v160 + 41;
          while (*v80 != v72)
          {
            ++v82;
            v80 += 2;
            if (!--v81)
            {
              goto LABEL_55;
            }
          }

          v83 = *(v82 + *(v160 + 20));
          v84 = v83 > 5;
          v85 = (1 << v83) & 0x23;
          if (v84 || v85 == 0)
          {
LABEL_39:

            v73(v70);

            continue;
          }
        }

LABEL_55:
        if (swift_conformsToProtocol2() && v77)
        {
          if (sub_1AF5FC8D8(v77))
          {
            goto LABEL_39;
          }

          v87 = *(v76 + 18);
          if (v87 < 0x10)
          {
            goto LABEL_39;
          }

          v88 = (v78 + *(v76 + 16));
          v89 = 16 * (v87 >> 4);
          while (*v88 != v77)
          {
            v88 += 2;
            v89 -= 16;
            if (!v89)
            {
              goto LABEL_39;
            }
          }
        }
      }

      v90 = *(v10 + 56);
      v67 = *(v10 + 48);
      v91 = *(v10 + 32);
      v44 = v152;
      if (*(v10 + 64) >= 1)
      {
        swift_arrayDestroy();
      }

      v12 = v148;
      v42 = v149;
      v43 = v154;
LABEL_67:
      ecs_stack_allocator_deallocate(v91, v67, 48 * v90);
      *(v10 + 48) = v157;
      *(v10 + 64) = v156;
      *(v10 + 80) = v155;
      sub_1AF62D29C(v158);
      ecs_stack_allocator_pop_snapshot(v44);
      v45 = v151;
      if (v151)
      {
        os_unfair_lock_unlock(*(v158 + 344));
        os_unfair_lock_unlock(*(v158 + 376));
      }

      ++v43;
    }

    while (v43 != v153);
  }

  v92 = a2;
  if (a2 && a3)
  {
    v93 = 4 * a3;
    do
    {
      v94 = *v92;
      v95 = *(a4 + 16 * v94);
      v96 = -(fmaxf(fmaxf(COERCE_FLOAT(*&v42[2 * v94]), COERCE_FLOAT(v42[2 * v94 + 1])), COERCE_FLOAT(HIDWORD(v42[2 * v94]))) * a8);
      v97 = vmulq_f32(v95, v143);
      _NF = (v143.f32[3] + (v97.f32[2] + vaddv_f32(*v97.f32))) < v96;
      v98 = vmulq_f32(v95, v142);
      v99 = v142.f32[3] + (v98.f32[2] + vaddv_f32(*v98.f32));
      v100 = _NF || v99 < v96;
      v101 = vmulq_f32(v95, v141);
      v102 = v141.f32[3] + (v101.f32[2] + vaddv_f32(*v101.f32));
      v103 = v100 || v102 < v96;
      v104 = vmulq_f32(v95, v140);
      v105 = v140.f32[3] + (v104.f32[2] + vaddv_f32(*v104.f32));
      v106 = v103 || v105 < v96;
      v107 = vmulq_f32(v95, v139);
      v108 = v139.f32[3] + (v107.f32[2] + vaddv_f32(*v107.f32));
      v109 = v106 || v108 < v96;
      v110 = vmulq_f32(v95, v138);
      v111 = v138.f32[3] + (v110.f32[2] + vaddv_f32(*v110.f32));
      if (!v109 && v111 >= v96)
      {
        *(a6 + 4 * (*a7)++) = v94;
      }

      ++v92;
      v93 -= 4;
    }

    while (v93);
  }

  return ecs_stack_allocator_pop_snapshot(v135);
}

uint64_t sub_1AF6BD1F0(__int128 *a1, __int128 *a2, unsigned int *a3, uint64_t a4, float32x4_t *a5, uint64_t a6, void *a7, float a8)
{
  v82 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 9);
  v11 = *(v10 + 32);
  v12 = *(a1 + 5);
  v73 = *(a1 + 7);
  if (v73 != 1)
  {
    ecs_stack_allocator_push_snapshot(v11);
    v19 = *(a1 + 10);
    v62 = v11;
    v72 = ecs_stack_allocator_allocate(v11, 16 * v19, 16);
    if (v19 <= 0 || !v73)
    {
LABEL_48:
      sub_1AF6BC968(a2, a3, a4, v72, a5, a6, a7, a8);
      return ecs_stack_allocator_pop_snapshot(v62);
    }

    v20 = 0;
    v21 = *(*(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v22 = *(v10 + 32);
    v23 = a1[1];
    v79 = *a1;
    v80 = v23;
    v81 = *(a1 + 4);
    v70 = v12;
    v71 = v22;
    v69 = v21;
LABEL_10:
    v24 = &v12[12 * v20];
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = *(v24 + 5);
    if (v21)
    {
      v29 = *(v28 + 376);

      os_unfair_lock_lock(v29);
      os_unfair_lock_lock(*(v28 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v22);
    v75 = *(v10 + 64);
    v76 = *(v10 + 48);
    v74 = *(v10 + 80);
    v30 = *(*(*(*(v28 + 40) + 16) + 32) + 16) + 1;
    *(v10 + 48) = ecs_stack_allocator_allocate(*(v10 + 32), 48 * v30, 8);
    *(v10 + 56) = v30;
    v31 = &v72[2 * v27];
    *(v10 + 72) = 0;
    *(v10 + 80) = 0;
    *(v10 + 64) = 0;

    v32 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, 0, 0, 0, v10);
    v34 = v33;
    v35 = 16 * (v26 - v25);
    v77 = v28;
    if (v34)
    {
      v78 = xmmword_1AFE201A0;
      memset_pattern16_nocache(v31, &v78, v35);
    }

    else
    {
      memcpy(v31, (v32 + 16 * v25), v35);
    }

    v36 = *(v10 + 48);
    v37 = *(v10 + 64);
    if (!v37)
    {
      v59 = *(v10 + 56);
      v60 = *(v10 + 32);
      goto LABEL_46;
    }

    v38 = 0;
    while (1)
    {
      v40 = (v36 + 48 * v38);
      v41 = *v40;
      v42 = v40[4];
      v43 = *(v10 + 72);
      if (v43)
      {
        v44 = v41 == v43;
      }

      else
      {
        v44 = 0;
      }

      if (!v44)
      {
        v45 = v79;
        if (*(v79 + 22))
        {
          v46 = v40[2];
          v47 = v79 + 41;
          v48 = *(v79 + 18);
          if (v48 < 0x10)
          {
            goto LABEL_34;
          }

          v49 = (v47 + *(v79 + 16));
          v50 = v48 >> 4;
          v51 = v79 + 41;
          while (*v49 != v41)
          {
            ++v51;
            v49 += 2;
            if (!--v50)
            {
              goto LABEL_34;
            }
          }

          v52 = *(v51 + *(v79 + 20));
          v53 = v52 > 5;
          v54 = (1 << v52) & 0x23;
          if (!v53 && v54 != 0)
          {
LABEL_34:
            if (!swift_conformsToProtocol2() || !v46)
            {
              goto LABEL_19;
            }

            if ((sub_1AF5FC8D8(v46) & 1) == 0)
            {
              v56 = *(v45 + 18);
              if (v56 >= 0x10)
              {
                v57 = (v47 + *(v45 + 16));
                v58 = 16 * (v56 >> 4);
                while (*v57 != v46)
                {
                  v57 += 2;
                  v58 -= 16;
                  if (!v58)
                  {
                    goto LABEL_18;
                  }
                }

                goto LABEL_19;
              }
            }
          }
        }
      }

LABEL_18:

      v42(v39);

LABEL_19:
      if (++v38 == v37)
      {
        v59 = *(v10 + 56);
        v36 = *(v10 + 48);
        v60 = *(v10 + 32);
        v21 = v69;
        if (*(v10 + 64) >= 1)
        {
          swift_arrayDestroy();
        }

        v12 = v70;
LABEL_46:
        v22 = v71;
        ecs_stack_allocator_deallocate(v60, v36, 48 * v59);
        *(v10 + 48) = v76;
        *(v10 + 64) = v75;
        *(v10 + 80) = v74;
        sub_1AF62D29C(v77);
        ecs_stack_allocator_pop_snapshot(v71);
        if (v21)
        {
          os_unfair_lock_unlock(*(v77 + 344));
          os_unfair_lock_unlock(*(v77 + 376));
        }

        if (++v20 == v73)
        {
          goto LABEL_48;
        }

        goto LABEL_10;
      }
    }
  }

  v13 = *v12;

  v14 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, 0, 0, 0, v10);
  if (v15)
  {
    ecs_stack_allocator_push_snapshot(v11);
    v16 = 16 * *(a1 + 10);
    v17 = ecs_stack_allocator_allocate(v11, v16, 16);
    v18 = v17;
    if (v16)
    {
      memset_pattern16(v17, &xmmword_1AFE201A0, v16);
    }

    sub_1AF6BC968(a2, a3, a4, v18, a5, a6, a7, a8);
    ecs_stack_allocator_pop_snapshot(v11);
  }

  else
  {
    sub_1AF6BC968(a2, a3, a4, v14 + 16 * v13, a5, a6, a7, a8);
  }
}

uint64_t sub_1AF6BD724(__int128 *a1, unsigned int *a2, uint64_t a3, float *a4, float a5, float32x4_t a6)
{
  v97 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 9);
  v9 = *(v8 + 32);
  v10 = *(a1 + 5);
  v87 = *(a1 + 7);
  if (v87 == 1)
  {
    v11 = *(v8 + 32);
    v12 = *v10;

    v13 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, 0, 0, 0, v8);
    if (v14)
    {
      ecs_stack_allocator_push_snapshot(v11);
      v15 = 16 * *(a1 + 10);
      v16 = ecs_stack_allocator_allocate(v11, v15, 16);
      v17 = v16;
      if (v15)
      {
        memset_pattern16(v16, &xmmword_1AFE201A0, v15);
      }

      v18 = a4;
      v19 = a2;
      if (a2 && a3)
      {
        v20 = 4 * a3;
        do
        {
          v21 = *v19++;
          v22 = vmulq_f32(*&v17[2 * v21], a6);
          *v18++ = vaddv_f32(vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL))) * a5;
          v20 -= 4;
        }

        while (v20);
      }

      ecs_stack_allocator_pop_snapshot(v11);
    }

    else
    {
      v73 = a2;
      if (a2 && a3)
      {
        v74 = 4 * a3;
        v75 = a4;
        do
        {
          v76 = *v73++;
          v77 = vmulq_f32(*(v13 + 16 * v12 + 16 * v76), a6);
          *v75++ = vaddv_f32(vadd_f32(*v77.i8, *&vextq_s8(v77, v77, 8uLL))) * a5;
          v74 -= 4;
        }

        while (v74);
      }
    }
  }

  ecs_stack_allocator_push_snapshot(v9);
  v23 = v9;
  v24 = *(a1 + 10);
  v78 = v23;
  v86 = ecs_stack_allocator_allocate(v23, 16 * v24, 16);
  if (v24 > 0 && v87)
  {
    v25 = 0;
    v26 = *(*(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v27 = *(v8 + 32);
    v28 = a1[1];
    v94 = *a1;
    v95 = v28;
    v96 = *(a1 + 4);
    v85 = v10;
    v84 = v26;
    v83 = v27;
    do
    {
      v29 = v10;
      v30 = &v10[12 * v25];
      v31 = *v30;
      v32 = v30[1];
      v33 = v30[2];
      v34 = *(v30 + 5);
      if (v26)
      {
        v35 = *(v34 + 376);

        os_unfair_lock_lock(v35);
        os_unfair_lock_lock(*(v34 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v27);
      v91 = *(v8 + 64);
      v92 = *(v8 + 48);
      v90 = *(v8 + 80);
      v36 = *(*(*(*(v34 + 40) + 16) + 32) + 16) + 1;
      *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v36, 8);
      *(v8 + 56) = v36;
      v37 = &v86[2 * v33];
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 64) = 0;

      v38 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, 0, 0, 0, v8);
      v40 = v39;
      v41 = 16 * (v32 - v31);
      if (v40)
      {
        v93 = xmmword_1AFE201A0;
        memset_pattern16_nocache(v37, &v93, v41);
      }

      else
      {
        memcpy(v37, (v38 + 16 * v31), v41);
      }

      v42 = *(v8 + 48);
      v43 = *(v8 + 64);
      if (!v43)
      {
        v65 = *(v8 + 56);
        v66 = *(v8 + 32);
        goto LABEL_50;
      }

      v88 = v34;
      v89 = v25;
      for (i = 0; i != v43; ++i)
      {
        v46 = (v42 + 48 * i);
        v47 = *v46;
        v48 = v46[4];
        v49 = *(v8 + 72);
        if (v49)
        {
          v50 = v47 == v49;
        }

        else
        {
          v50 = 0;
        }

        if (v50)
        {
          goto LABEL_22;
        }

        v51 = v94;
        if (!*(v94 + 22))
        {
          goto LABEL_22;
        }

        v52 = v46[2];
        v53 = v94 + 41;
        v54 = *(v94 + 18);
        if (v54 >= 0x10)
        {
          v55 = (v53 + *(v94 + 16));
          v56 = v54 >> 4;
          v57 = v94 + 41;
          while (*v55 != v47)
          {
            ++v57;
            v55 += 2;
            if (!--v56)
            {
              goto LABEL_38;
            }
          }

          v58 = *(v57 + *(v94 + 20));
          v59 = v58 > 5;
          v60 = (1 << v58) & 0x23;
          if (v59 || v60 == 0)
          {
LABEL_22:

            v48(v45);

            continue;
          }
        }

LABEL_38:
        if (swift_conformsToProtocol2() && v52)
        {
          if (sub_1AF5FC8D8(v52))
          {
            goto LABEL_22;
          }

          v62 = *(v51 + 18);
          if (v62 < 0x10)
          {
            goto LABEL_22;
          }

          v63 = (v53 + *(v51 + 16));
          v64 = 16 * (v62 >> 4);
          while (*v63 != v52)
          {
            v63 += 2;
            v64 -= 16;
            if (!v64)
            {
              goto LABEL_22;
            }
          }
        }
      }

      v65 = *(v8 + 56);
      v42 = *(v8 + 48);
      v66 = *(v8 + 32);
      v29 = v85;
      if (*(v8 + 64) >= 1)
      {
        swift_arrayDestroy();
      }

      v34 = v88;
      v25 = v89;
      v26 = v84;
      v27 = v83;
LABEL_50:
      ecs_stack_allocator_deallocate(v66, v42, 48 * v65);
      *(v8 + 48) = v92;
      *(v8 + 64) = v91;
      *(v8 + 80) = v90;
      sub_1AF62D29C(v34);
      ecs_stack_allocator_pop_snapshot(v27);
      if (v26)
      {
        os_unfair_lock_unlock(*(v34 + 344));
        os_unfair_lock_unlock(*(v34 + 376));
      }

      ++v25;
      v10 = v29;
    }

    while (v25 != v87);
  }

  v67 = a4;
  v68 = a2;
  if (a2 && a3)
  {
    v69 = 4 * a3;
    do
    {
      v70 = *v68++;
      v71 = vmulq_f32(*&v86[2 * v70], a6);
      *v67++ = vaddv_f32(vadd_f32(*v71.i8, *&vextq_s8(v71, v71, 8uLL))) * a5;
      v69 -= 4;
    }

    while (v69);
  }

  return ecs_stack_allocator_pop_snapshot(v78);
}

uint64_t sub_1AF6BDDA8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a9;
  v91 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 9);
  v13 = *(v12 + 32);
  v14 = *(a1 + 5);
  v81 = *(a1 + 7);
  if (v81 != 1)
  {
    ecs_stack_allocator_push_snapshot(v13);
    v22 = *(a1 + 10);
    v69 = v13;
    v80 = ecs_stack_allocator_allocate(v13, 16 * v22, 16);
    v68 = (16 * v22) >> 4;
    if (v22 <= 0 || !v81)
    {
LABEL_48:
      sub_1AF6BE980(v80, v68, a2, a3, a4, a5, a6, a7 & 1, a8);
      return ecs_stack_allocator_pop_snapshot(v69);
    }

    v23 = *(*(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v24 = *(v12 + 32);
    v25 = a1[1];
    v88 = *a1;
    v89 = v25;
    v26 = *(a1 + 4);
    v27 = 0;
    v90 = v26;
    v79 = v23;
    v77 = v14;
    v78 = v24;
LABEL_10:
    v28 = &v14[12 * v27];
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[2];
    v32 = *(v28 + 5);
    if (v23)
    {
      v33 = *(v32 + 376);

      os_unfair_lock_lock(v33);
      os_unfair_lock_lock(*(v32 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v24);
    v84 = *(v12 + 64);
    v85 = *(v12 + 48);
    v83 = *(v12 + 80);
    v34 = *(*(*(*(v32 + 40) + 16) + 32) + 16) + 1;
    *(v12 + 48) = ecs_stack_allocator_allocate(*(v12 + 32), 48 * v34, 8);
    *(v12 + 56) = v34;
    v35 = &v80[2 * v31];
    *(v12 + 72) = 0;
    *(v12 + 80) = 0;
    *(v12 + 64) = 0;

    v36 = sub_1AF64B110(v11, a10, 0, 0, 0, v12);
    v38 = v37;
    v39 = 16 * (v30 - v29);
    v86 = v32;
    if (v38)
    {
      v87 = 0uLL;
      memset_pattern16_nocache(v35, &v87, v39);
    }

    else
    {
      memcpy(v35, (v36 + 16 * v29), v39);
    }

    v40 = *(v12 + 48);
    v41 = *(v12 + 64);
    if (!v41)
    {
      v63 = *(v12 + 56);
      v64 = *(v12 + 32);
      v66 = v32;
      v65 = v83;
      goto LABEL_46;
    }

    v82 = v27;
    v42 = 0;
    while (1)
    {
      v44 = (v40 + 48 * v42);
      v45 = *v44;
      v46 = v44[4];
      v47 = *(v12 + 72);
      if (v47)
      {
        v48 = v45 == v47;
      }

      else
      {
        v48 = 0;
      }

      if (!v48)
      {
        v49 = v88;
        if (*(v88 + 22))
        {
          v50 = v44[2];
          v51 = v88 + 41;
          v52 = *(v88 + 18);
          if (v52 < 0x10)
          {
            goto LABEL_34;
          }

          v53 = (v51 + *(v88 + 16));
          v54 = v52 >> 4;
          v55 = v88 + 41;
          while (*v53 != v45)
          {
            ++v55;
            v53 += 2;
            if (!--v54)
            {
              goto LABEL_34;
            }
          }

          v56 = *(v55 + *(v88 + 20));
          v57 = v56 > 5;
          v58 = (1 << v56) & 0x23;
          if (!v57 && v58 != 0)
          {
LABEL_34:
            if (!swift_conformsToProtocol2() || !v50)
            {
              goto LABEL_19;
            }

            if ((sub_1AF5FC8D8(v50) & 1) == 0)
            {
              v60 = *(v49 + 18);
              if (v60 >= 0x10)
              {
                v61 = (v51 + *(v49 + 16));
                v62 = 16 * (v60 >> 4);
                while (*v61 != v50)
                {
                  v61 += 2;
                  v62 -= 16;
                  if (!v62)
                  {
                    goto LABEL_18;
                  }
                }

                goto LABEL_19;
              }
            }
          }
        }
      }

LABEL_18:

      v46(v43);

LABEL_19:
      if (++v42 == v41)
      {
        v63 = *(v12 + 56);
        v40 = *(v12 + 48);
        v64 = *(v12 + 32);
        v65 = v83;
        if (*(v12 + 64) >= 1)
        {
          swift_arrayDestroy();
        }

        v14 = v77;
        v11 = a9;
        v27 = v82;
        v66 = v86;
LABEL_46:
        ecs_stack_allocator_deallocate(v64, v40, 48 * v63);
        *(v12 + 48) = v85;
        *(v12 + 64) = v84;
        *(v12 + 80) = v65;
        sub_1AF62D29C(v66);
        v24 = v78;
        ecs_stack_allocator_pop_snapshot(v78);
        v23 = v79;
        if (v79)
        {
          os_unfair_lock_unlock(*(v66 + 344));
          os_unfair_lock_unlock(*(v66 + 376));
        }

        if (++v27 == v81)
        {
          goto LABEL_48;
        }

        goto LABEL_10;
      }
    }
  }

  v15 = *v14;
  v16 = v14[1];

  v17 = sub_1AF64B110(a9, a10, 0, 0, 0, v12);
  if (v18)
  {
    ecs_stack_allocator_push_snapshot(v13);
    v19 = 16 * *(a1 + 10);
    v20 = ecs_stack_allocator_allocate(v13, v19, 16);
    if (v19)
    {
      v21 = v20;
      bzero(v20, v19);
      v20 = v21;
    }

    sub_1AF6BE980(v20, v19 >> 4, a2, a3, a4, a5, a6, a7 & 1, a8);
    ecs_stack_allocator_pop_snapshot(v13);
  }

  else
  {
    sub_1AF6BE980(v17 + 16 * v15, v16 - v15, a2, a3, a4, a5, a6, a7 & 1, a8);
  }
}

uint64_t sub_1AF6BE418(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v87 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 9);
  v10 = *(v9 + 32);
  v11 = *(a1 + 5);
  v77 = *(a1 + 7);
  if (v77 != 1)
  {
    ecs_stack_allocator_push_snapshot(v10);
    v19 = *(a1 + 10);
    v65 = v10;
    v76 = ecs_stack_allocator_allocate(v10, 16 * v19, 16);
    v64 = (16 * v19) >> 4;
    if (v19 <= 0 || !v77)
    {
LABEL_48:
      sub_1AF6BE980(v76, v64, a2, a3, a4, a5, a6, a7 & 1, a8);
      return ecs_stack_allocator_pop_snapshot(v65);
    }

    v20 = 0;
    v21 = *(*(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v22 = *(v9 + 32);
    v23 = a1[1];
    v84 = *a1;
    v85 = v23;
    v86 = *(a1 + 4);
    v75 = v11;
    v74 = v21;
    v73 = v22;
LABEL_10:
    v24 = &v11[12 * v20];
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = *(v24 + 5);
    if (v21)
    {
      v29 = *(v28 + 376);

      os_unfair_lock_lock(v29);
      os_unfair_lock_lock(*(v28 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v22);
    v80 = *(v9 + 64);
    v81 = *(v9 + 48);
    v79 = *(v9 + 80);
    v30 = *(*(*(*(v28 + 40) + 16) + 32) + 16) + 1;
    *(v9 + 48) = ecs_stack_allocator_allocate(*(v9 + 32), 48 * v30, 8);
    *(v9 + 56) = v30;
    v31 = v28;
    v32 = &v76[2 * v27];
    *(v9 + 72) = 0;
    *(v9 + 80) = 0;
    *(v9 + 64) = 0;

    v33 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, 0, 0, 0, v9);
    v35 = v34;
    v36 = 16 * (v26 - v25);
    v82 = v31;
    if (v35)
    {
      v83 = xmmword_1AFE201A0;
      memset_pattern16_nocache(v32, &v83, v36);
    }

    else
    {
      memcpy(v32, (v33 + 16 * v25), v36);
    }

    v37 = *(v9 + 48);
    v38 = *(v9 + 64);
    if (!v38)
    {
      v60 = *(v9 + 56);
      v61 = *(v9 + 32);
      v62 = v79;
      goto LABEL_46;
    }

    v78 = v20;
    v39 = 0;
    while (1)
    {
      v41 = (v37 + 48 * v39);
      v42 = *v41;
      v43 = v41[4];
      v44 = *(v9 + 72);
      if (v44)
      {
        v45 = v42 == v44;
      }

      else
      {
        v45 = 0;
      }

      if (!v45)
      {
        v46 = v84;
        if (*(v84 + 22))
        {
          v47 = v41[2];
          v48 = v84 + 41;
          v49 = *(v84 + 18);
          if (v49 < 0x10)
          {
            goto LABEL_34;
          }

          v50 = (v48 + *(v84 + 16));
          v51 = v49 >> 4;
          v52 = v84 + 41;
          while (*v50 != v42)
          {
            ++v52;
            v50 += 2;
            if (!--v51)
            {
              goto LABEL_34;
            }
          }

          v53 = *(v52 + *(v84 + 20));
          v54 = v53 > 5;
          v55 = (1 << v53) & 0x23;
          if (!v54 && v55 != 0)
          {
LABEL_34:
            if (!swift_conformsToProtocol2() || !v47)
            {
              goto LABEL_19;
            }

            if ((sub_1AF5FC8D8(v47) & 1) == 0)
            {
              v57 = *(v46 + 18);
              if (v57 >= 0x10)
              {
                v58 = (v48 + *(v46 + 16));
                v59 = 16 * (v57 >> 4);
                while (*v58 != v47)
                {
                  v58 += 2;
                  v59 -= 16;
                  if (!v59)
                  {
                    goto LABEL_18;
                  }
                }

                goto LABEL_19;
              }
            }
          }
        }
      }

LABEL_18:

      v43(v40);

LABEL_19:
      if (++v39 == v38)
      {
        v60 = *(v9 + 56);
        v37 = *(v9 + 48);
        v61 = *(v9 + 32);
        v20 = v78;
        v62 = v79;
        if (*(v9 + 64) >= 1)
        {
          swift_arrayDestroy();
        }

        v11 = v75;
        v21 = v74;
        v22 = v73;
LABEL_46:
        ecs_stack_allocator_deallocate(v61, v37, 48 * v60);
        *(v9 + 48) = v81;
        *(v9 + 64) = v80;
        *(v9 + 80) = v62;
        sub_1AF62D29C(v82);
        ecs_stack_allocator_pop_snapshot(v22);
        if (v21)
        {
          os_unfair_lock_unlock(*(v82 + 344));
          os_unfair_lock_unlock(*(v82 + 376));
        }

        if (++v20 == v77)
        {
          goto LABEL_48;
        }

        goto LABEL_10;
      }
    }
  }

  v12 = *v11;
  v13 = v11[1];

  v14 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, 0, 0, 0, v9);
  if (v15)
  {
    ecs_stack_allocator_push_snapshot(v10);
    v16 = 16 * *(a1 + 10);
    v17 = ecs_stack_allocator_allocate(v10, v16, 16);
    if (v16)
    {
      v18 = v17;
      memset_pattern16(v17, &xmmword_1AFE201A0, v16);
      v17 = v18;
    }

    sub_1AF6BE980(v17, v16 >> 4, a2, a3, a4, a5, a6, a7 & 1, a8);
    ecs_stack_allocator_pop_snapshot(v10);
  }

  else
  {
    sub_1AF6BE980(v14 + 16 * v12, v13 - v12, a2, a3, a4, a5, a6, a7 & 1, a8);
  }
}

uint64_t sub_1AF6BE980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  if (a1)
  {
    v15 = (16 * a2) >> 4;
  }

  else
  {
    v15 = 0;
  }

  v91 = *(a3 + 88);
  v92 = *(a3 + 104);
  v93 = *(a3 + 120);
  sub_1AF6C0CEC(0, &qword_1ED7269A0, sub_1AF5C5300);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE431C0;
  v62 = a4;
  v63 = a5;
  v17 = *(a5 + 8);
  *(v16 + 32) = a4;
  *(v16 + 40) = v17;
  sub_1AF5B4630(v16, v83);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF6B06C0(a6, v83, 0x200000000, v84);
  v18 = v87;
  if (*v84)
  {
    v19 = v87;
  }

  else
  {
    v19 = 0;
  }

  if ((a8 & 1) == 0 && (a7 & 0x8000000000000000) == 0 && a7)
  {
    if (!*v84)
    {
      return sub_1AF692DB0(v83);
    }

LABEL_31:
    if (v87 > 0)
    {
      v61 = *(&v85 + 1);
      if (*(&v85 + 1))
      {
        v59 = *&v84[40];
        v37 = *(&v86 + 1);
        v38 = *(v86 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v39 = *(*(&v86 + 1) + 32);
        v88 = *v84;
        v89 = *&v84[8];
        v90 = *&v84[24];
        v79 = *&v84[32];
        v80 = v85;
        v81 = v86;
        v82 = v87;
        v77 = *v84;
        v78 = *&v84[16];
        sub_1AF5DD298(&v77, &v74);
        v40 = 0;
        v57 = v38;
        v55 = v39;
        do
        {
          v41 = (v59 + 48 * v40);
          v73 = *v41;
          v42 = v41[2];
          v69 = *(v41 + 2);
          v71 = v41[1];
          v67 = *(v41 + 3);
          v43 = *(v41 + 5);
          v65 = *(v41 + 4);
          if (v38)
          {
            v44 = *(v43 + 376);

            os_unfair_lock_lock(v44);
            os_unfair_lock_lock(*(v43 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v39);
          v45 = *(v37 + 64);
          v74 = *(v37 + 48);
          v75 = v45;
          v76 = *(v37 + 80);
          v46 = *(v37 + 32);
          v47 = *(*(*(*(v43 + 40) + 16) + 32) + 16) + 1;

          *(v37 + 48) = ecs_stack_allocator_allocate(v46, 48 * v47, 8);
          *(v37 + 56) = v47;
          *(v37 + 72) = 0;
          *(v37 + 80) = 0;
          *(v37 + 64) = 0;

          v48 = sub_1AF64B110(v62, v63, v69, v67, v65, v37);
          if (v73 == v71)
          {
            v39 = v55;
          }

          else
          {
            v49 = (v48 + 16 * v73);
            v50 = v71 - v73;
            v39 = v55;
            do
            {
              v51 = 0uLL;
              if (v42 / a7 < v15)
              {
                v51 = *(a1 + 16 * (v42 / a7));
              }

              *v49++ = v51;
              ++v42;
              --v50;
            }

            while (v50);
          }

          sub_1AF630994(v37, &v88, &v74);
          sub_1AF62D29C(v43);
          ecs_stack_allocator_pop_snapshot(v39);
          v38 = v57;
          if (v57)
          {
            os_unfair_lock_unlock(*(v43 + 344));
            os_unfair_lock_unlock(*(v43 + 376));
          }

          ++v40;
        }

        while (v40 != v61);
LABEL_48:
        sub_1AF692DB0(v83);
        sub_1AF5D1564(v84);
        return sub_1AF5D1564(v84);
      }
    }

    goto LABEL_46;
  }

  if (*(a9 + 80) >= v19)
  {
    a7 = 1;
    if (*v84)
    {
      goto LABEL_31;
    }

    return sub_1AF692DB0(v83);
  }

  if (!*v84)
  {
    return sub_1AF692DB0(v83);
  }

  if (v87 > 0)
  {
    v60 = *(&v85 + 1);
    if (*(&v85 + 1))
    {
      v53 = *(a9 + 80);
      v58 = *&v84[40];
      v20 = *(&v86 + 1);
      v21 = *(v86 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v22 = *(*(&v86 + 1) + 32);
      v88 = *v84;
      v89 = *&v84[8];
      v90 = *&v84[24];
      v79 = *&v84[32];
      v80 = v85;
      v81 = v86;
      v82 = v87;
      v77 = *v84;
      v78 = *&v84[16];
      sub_1AF5DD298(&v77, &v74);
      v23 = 0;
      v24 = 0;
      v25 = -1;
      v56 = v21;
      v54 = v22;
      do
      {
        v66 = v24;
        v26 = (v58 + 48 * v24);
        v27 = *v26;
        v64 = v26[1];
        v68 = *(v26 + 3);
        v70 = *(v26 + 2);
        v28 = *(v26 + 5);
        v72 = *(v26 + 4);
        if (v21)
        {
          v29 = *(v28 + 376);

          os_unfair_lock_lock(v29);
          os_unfair_lock_lock(*(v28 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v22);
        v30 = *(v20 + 64);
        v74 = *(v20 + 48);
        v75 = v30;
        v76 = *(v20 + 80);
        v31 = *(v20 + 32);
        v32 = *(*(*(*(v28 + 40) + 16) + 32) + 16) + 1;

        *(v20 + 48) = ecs_stack_allocator_allocate(v31, 48 * v32, 8);
        *(v20 + 56) = v32;
        *(v20 + 72) = 0;
        *(v20 + 80) = 0;
        *(v20 + 64) = 0;

        v33 = sub_1AF64B110(v62, v63, v70, v68, v72, v20);
        if (v27 == v64)
        {
          v22 = v54;
        }

        else
        {
          v34 = v18 + v27;
          v35 = v64 - v27;
          v36 = (v33 + 16 * v27);
          v22 = v54;
          do
          {
            if (!v23)
            {
              ++v25;
              v23 = v18 / (v53 - v25);
            }

            *v36++ = *(a1 + 16 * v25);
            --v18;
            --v23;
            --v35;
          }

          while (v35);
          v18 = v34 - v64;
        }

        sub_1AF630994(v20, &v88, &v74);
        sub_1AF62D29C(v28);
        ecs_stack_allocator_pop_snapshot(v22);
        v21 = v56;
        if (v56)
        {
          os_unfair_lock_unlock(*(v28 + 344));
          os_unfair_lock_unlock(*(v28 + 376));
        }

        v24 = v66 + 1;
      }

      while (v66 + 1 != v60);
      goto LABEL_48;
    }
  }

LABEL_46:
  sub_1AF692DB0(v83);
  return sub_1AF5D1564(v84);
}

uint64_t sub_1AF6BEF6C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  __asm { FMOV            V0.4S, #1.0 }

  return sub_1AF6BEFDC(a1, a2, a3, a4, a5, a6, a7, a8, _Q0, &type metadata for Color, &off_1F252CA88, &xmmword_1AFE21160);
}

uint64_t sub_1AF6BEFDC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, const void *a12)
{
  v13 = a10;
  v94 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 9);
  v15 = *(v14 + 32);
  v16 = *(a1 + 5);
  v85 = *(a1 + 7);
  if (v85 != 1)
  {
    ecs_stack_allocator_push_snapshot(v15);
    v24 = *(a1 + 10);
    v72 = v15;
    v84 = ecs_stack_allocator_allocate(v15, 16 * v24, 16);
    v71 = (16 * v24) >> 4;
    if (v24 <= 0 || !v85)
    {
LABEL_48:
      sub_1AF6BE980(v84, v71, a2, a3, a4, a5, a6, a7 & 1, a8);
      return ecs_stack_allocator_pop_snapshot(v72);
    }

    v25 = v16;
    v26 = *(*(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v27 = *(v14 + 32);
    v28 = a1[1];
    v91 = *a1;
    v92 = v28;
    v29 = *(a1 + 4);
    v30 = 0;
    v93 = v29;
    v83 = v26;
    v80 = v16;
    v82 = v27;
LABEL_10:
    v31 = &v25[12 * v30];
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[2];
    v35 = *(v31 + 5);
    if (v26)
    {
      v36 = *(v35 + 376);

      os_unfair_lock_lock(v36);
      os_unfair_lock_lock(*(v35 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v27);
    v88 = *(v14 + 64);
    v89 = *(v14 + 48);
    v87 = *(v14 + 80);
    v37 = *(*(*(*(v35 + 40) + 16) + 32) + 16) + 1;
    *(v14 + 48) = ecs_stack_allocator_allocate(*(v14 + 32), 48 * v37, 8);
    *(v14 + 56) = v37;
    v38 = &v84[2 * v34];
    *(v14 + 72) = 0;
    *(v14 + 80) = 0;
    *(v14 + 64) = 0;

    v39 = sub_1AF64B110(v13, a11, 0, 0, 0, v14);
    v41 = v40;
    v42 = 16 * (v33 - v32);
    if (v41)
    {
      v90 = a9;
      memset_pattern16_nocache(v38, &v90, v42);
    }

    else
    {
      memcpy(v38, (v39 + 16 * v32), v42);
    }

    v43 = *(v14 + 48);
    v44 = *(v14 + 64);
    if (!v44)
    {
      v66 = *(v14 + 56);
      v67 = *(v14 + 32);
      v69 = v35;
      v68 = v87;
      goto LABEL_46;
    }

    v86 = v30;
    v45 = 0;
    while (1)
    {
      v47 = (v43 + 48 * v45);
      v48 = *v47;
      v49 = v47[4];
      v50 = *(v14 + 72);
      if (v50)
      {
        v51 = v48 == v50;
      }

      else
      {
        v51 = 0;
      }

      if (!v51)
      {
        v52 = v91;
        if (*(v91 + 22))
        {
          v53 = v47[2];
          v54 = v91 + 41;
          v55 = *(v91 + 18);
          if (v55 < 0x10)
          {
            goto LABEL_34;
          }

          v56 = (v54 + *(v91 + 16));
          v57 = v55 >> 4;
          v58 = v91 + 41;
          while (*v56 != v48)
          {
            ++v58;
            v56 += 2;
            if (!--v57)
            {
              goto LABEL_34;
            }
          }

          v59 = *(v58 + *(v91 + 20));
          v60 = v59 > 5;
          v61 = (1 << v59) & 0x23;
          if (!v60 && v61 != 0)
          {
LABEL_34:
            if (!swift_conformsToProtocol2() || !v53)
            {
              goto LABEL_19;
            }

            if ((sub_1AF5FC8D8(v53) & 1) == 0)
            {
              v63 = *(v52 + 18);
              if (v63 >= 0x10)
              {
                v64 = (v54 + *(v52 + 16));
                v65 = 16 * (v63 >> 4);
                while (*v64 != v53)
                {
                  v64 += 2;
                  v65 -= 16;
                  if (!v65)
                  {
                    goto LABEL_18;
                  }
                }

                goto LABEL_19;
              }
            }
          }
        }
      }

LABEL_18:

      v49(v46);

LABEL_19:
      if (++v45 == v44)
      {
        v66 = *(v14 + 56);
        v43 = *(v14 + 48);
        v67 = *(v14 + 32);
        v68 = v87;
        if (*(v14 + 64) >= 1)
        {
          swift_arrayDestroy();
        }

        v25 = v80;
        v13 = a10;
        v30 = v86;
        v69 = v35;
LABEL_46:
        ecs_stack_allocator_deallocate(v67, v43, 48 * v66);
        *(v14 + 48) = v89;
        *(v14 + 64) = v88;
        *(v14 + 80) = v68;
        sub_1AF62D29C(v69);
        v27 = v82;
        ecs_stack_allocator_pop_snapshot(v82);
        v26 = v83;
        if (v83)
        {
          os_unfair_lock_unlock(*(v69 + 344));
          os_unfair_lock_unlock(*(v69 + 376));
        }

        if (++v30 == v85)
        {
          goto LABEL_48;
        }

        goto LABEL_10;
      }
    }
  }

  v17 = *v16;
  v18 = v16[1];

  v19 = sub_1AF64B110(a10, a11, 0, 0, 0, v14);
  if (v20)
  {
    ecs_stack_allocator_push_snapshot(v15);
    v21 = 16 * *(a1 + 10);
    v22 = ecs_stack_allocator_allocate(v15, v21, 16);
    if (v21)
    {
      v23 = v22;
      memset_pattern16(v22, a12, v21);
      v22 = v23;
    }

    sub_1AF6BE980(v22, v21 >> 4, a2, a3, a4, a5, a6, a7 & 1, a8);
    ecs_stack_allocator_pop_snapshot(v15);
  }

  else
  {
    sub_1AF6BE980(v19 + 16 * v17, v18 - v17, a2, a3, a4, a5, a6, a7 & 1, a8);
  }
}

uint64_t sub_1AF6BF530(__int128 *a1, unsigned int *a2, uint64_t a3, float *a4, uint64_t a5, float a6)
{
  v98 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 9);
  v9 = *(v8 + 32);
  v10 = *(a1 + 5);
  v88 = *(a1 + 7);
  if (v88 == 1)
  {
    v11 = *v10;

    v12 = sub_1AF64B110(&type metadata for ParticleLifetime, &off_1F252CB38, 0, 0, 0, v8);
    if (v13)
    {
      ecs_stack_allocator_push_snapshot(v9);
      v14 = 4 * *(a1 + 10);
      v15 = ecs_stack_allocator_allocate(v9, v14, 4);
      v16 = v15;
      if (v14)
      {
        memset_pattern16(v15, &xmmword_1AFE21160, v14);
      }

      v17 = a4;
      v18 = a2;
      if (a2 && a3)
      {
        v19 = 4 * a3;
        do
        {
          v20 = *v18++;
          *v17++ = (*(a5 + 4 * v20) * a6) * (1.0 / v16[v20]);
          v19 -= 4;
        }

        while (v19);
      }

      ecs_stack_allocator_pop_snapshot(v9);
    }

    else
    {
      v75 = a2;
      if (a2 && a3)
      {
        v76 = 4 * a3;
        v77 = a4;
        do
        {
          v78 = *v75++;
          *v77++ = (*(a5 + 4 * v78) * a6) * (1.0 / *(v12 + 4 * v11 + 4 * v78));
          v76 -= 4;
        }

        while (v76);
      }
    }
  }

  ecs_stack_allocator_push_snapshot(v9);
  v21 = *(a1 + 10);
  v79 = v9;
  v22 = ecs_stack_allocator_allocate(v9, 4 * v21, 4);
  v23 = v22;
  if (v21 > 0 && v88)
  {
    v24 = 0;
    v25 = *(v8 + 32);
    v26 = *(*(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v27 = a1[1];
    v95 = *a1;
    v96 = v27;
    v97 = *(a1 + 4);
    v87 = v25;
    v86 = v26;
    v84 = v10;
    v85 = v22;
    do
    {
      v28 = &v10[12 * v24];
      v30 = *v28;
      v29 = v28[1];
      v31 = v28[2];
      v32 = *(v28 + 5);
      if (v26)
      {
        v33 = *(v28 + 5);
        v34 = *(v32 + 376);

        v35 = v34;
        v32 = v33;
        os_unfair_lock_lock(v35);
        os_unfair_lock_lock(*(v33 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v25);
      v91 = *(v8 + 64);
      v92 = *(v8 + 48);
      v90 = *(v8 + 80);
      v36 = v32;
      v37 = *(*(*(*(v32 + 40) + 16) + 32) + 16) + 1;
      *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v37, 8);
      *(v8 + 56) = v37;
      v38 = &v23[v31];
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 64) = 0;

      v39 = sub_1AF64B110(&type metadata for ParticleLifetime, &off_1F252CB38, 0, 0, 0, v8);
      v41 = v40;
      v42 = 4 * (v29 - v30);
      if (v41)
      {
        v94 = 1065353216;
        memset_pattern4_nocache(v38, &v94, v42);
      }

      else
      {
        memcpy(v38, (v39 + 4 * v30), v42);
      }

      v43 = v36;
      v44 = *(v8 + 48);
      v45 = *(v8 + 64);
      v93 = v43;
      if (!v45)
      {
        v67 = *(v8 + 56);
        v68 = *(v8 + 32);
        v25 = v87;
        v69 = v90;
        goto LABEL_50;
      }

      v89 = v24;
      for (i = 0; i != v45; ++i)
      {
        v48 = (v44 + 48 * i);
        v49 = *v48;
        v50 = v48[4];
        v51 = *(v8 + 72);
        if (v51)
        {
          v52 = v49 == v51;
        }

        else
        {
          v52 = 0;
        }

        if (v52)
        {
          goto LABEL_22;
        }

        v53 = v95;
        if (!*(v95 + 22))
        {
          goto LABEL_22;
        }

        v54 = v48[2];
        v55 = v95 + 41;
        v56 = *(v95 + 18);
        if (v56 >= 0x10)
        {
          v57 = (v55 + *(v95 + 16));
          v58 = v56 >> 4;
          v59 = v95 + 41;
          while (*v57 != v49)
          {
            ++v59;
            v57 += 2;
            if (!--v58)
            {
              goto LABEL_38;
            }
          }

          v60 = *(v59 + *(v95 + 20));
          v61 = v60 > 5;
          v62 = (1 << v60) & 0x23;
          if (v61 || v62 == 0)
          {
LABEL_22:

            v50(v47);

            continue;
          }
        }

LABEL_38:
        if (swift_conformsToProtocol2() && v54)
        {
          if (sub_1AF5FC8D8(v54))
          {
            goto LABEL_22;
          }

          v64 = *(v53 + 18);
          if (v64 < 0x10)
          {
            goto LABEL_22;
          }

          v65 = (v55 + *(v53 + 16));
          v66 = 16 * (v64 >> 4);
          while (*v65 != v54)
          {
            v65 += 2;
            v66 -= 16;
            if (!v66)
            {
              goto LABEL_22;
            }
          }
        }
      }

      v67 = *(v8 + 56);
      v44 = *(v8 + 48);
      v68 = *(v8 + 32);
      v25 = v87;
      v69 = v90;
      if (*(v8 + 64) >= 1)
      {
        swift_arrayDestroy();
      }

      v10 = v84;
      v23 = v85;
      v24 = v89;
LABEL_50:
      ecs_stack_allocator_deallocate(v68, v44, 48 * v67);
      *(v8 + 48) = v92;
      *(v8 + 64) = v91;
      *(v8 + 80) = v69;
      sub_1AF62D29C(v93);
      ecs_stack_allocator_pop_snapshot(v25);
      v26 = v86;
      if (v86)
      {
        os_unfair_lock_unlock(*(v93 + 344));
        os_unfair_lock_unlock(*(v93 + 376));
      }

      ++v24;
    }

    while (v24 != v88);
  }

  v70 = a4;
  v71 = a2;
  if (a2 && a3)
  {
    v72 = 4 * a3;
    do
    {
      v73 = *v71++;
      *v70++ = (*(a5 + 4 * v73) * a6) * (1.0 / v23[v73]);
      v72 -= 4;
    }

    while (v72);
  }

  return ecs_stack_allocator_pop_snapshot(v79);
}

uint64_t sub_1AF6BFAE0(__int128 *a1, __int128 *a2, unsigned int *a3, uint64_t a4, float *a5, float a6)
{
  v79 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 9);
  v9 = *(v8 + 32);
  v10 = *(a1 + 5);
  v69 = *(a1 + 7);
  if (v69 != 1)
  {
    ecs_stack_allocator_push_snapshot(v9);
    v17 = *(a1 + 10);
    v60 = v9;
    v68 = ecs_stack_allocator_allocate(v9, 4 * v17, 4);
    if (v17 <= 0 || !v69)
    {
LABEL_48:
      sub_1AF6BF530(a2, a3, a4, a5, v68, a6);
      return ecs_stack_allocator_pop_snapshot(v60);
    }

    v18 = 0;
    v19 = *(v8 + 32);
    v20 = *(*(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v21 = a1[1];
    v76 = *a1;
    v77 = v21;
    v78 = *(a1 + 4);
    v67 = v20;
    v65 = v19;
    v66 = v10;
LABEL_10:
    v22 = &v10[12 * v18];
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    v26 = *(v22 + 5);
    if (v20)
    {
      v27 = *(v26 + 376);

      os_unfair_lock_lock(v27);
      os_unfair_lock_lock(*(v26 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v19);
    v72 = *(v8 + 64);
    v73 = *(v8 + 48);
    v71 = *(v8 + 80);
    v28 = *(*(*(*(v26 + 40) + 16) + 32) + 16) + 1;
    *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v28, 8);
    *(v8 + 56) = v28;
    v29 = v68 + v25;
    *(v8 + 72) = 0;
    *(v8 + 80) = 0;
    *(v8 + 64) = 0;

    v30 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, 0, 0, 0, v8);
    v32 = v31;
    v33 = 4 * (v24 - v23);
    v74 = v26;
    if (v32)
    {
      v75 = 0;
      memset_pattern4_nocache(v29, &v75, v33);
    }

    else
    {
      memcpy(v29, (v30 + 4 * v23), v33);
    }

    v34 = *(v8 + 48);
    v35 = *(v8 + 64);
    if (!v35)
    {
      v57 = *(v8 + 56);
      v58 = *(v8 + 32);
      v20 = v67;
      goto LABEL_46;
    }

    v70 = v18;
    v36 = 0;
    while (1)
    {
      v38 = (v34 + 48 * v36);
      v39 = *v38;
      v40 = v38[4];
      v41 = *(v8 + 72);
      if (v41)
      {
        v42 = v39 == v41;
      }

      else
      {
        v42 = 0;
      }

      if (!v42)
      {
        v43 = v76;
        if (*(v76 + 22))
        {
          v44 = v38[2];
          v45 = v76 + 41;
          v46 = *(v76 + 18);
          if (v46 < 0x10)
          {
            goto LABEL_34;
          }

          v47 = (v45 + *(v76 + 16));
          v48 = v46 >> 4;
          v49 = v76 + 41;
          while (*v47 != v39)
          {
            ++v49;
            v47 += 2;
            if (!--v48)
            {
              goto LABEL_34;
            }
          }

          v50 = *(v49 + *(v76 + 20));
          v51 = v50 > 5;
          v52 = (1 << v50) & 0x23;
          if (!v51 && v52 != 0)
          {
LABEL_34:
            if (!swift_conformsToProtocol2() || !v44)
            {
              goto LABEL_19;
            }

            if ((sub_1AF5FC8D8(v44) & 1) == 0)
            {
              v54 = *(v43 + 18);
              if (v54 >= 0x10)
              {
                v55 = (v45 + *(v43 + 16));
                v56 = 16 * (v54 >> 4);
                while (*v55 != v44)
                {
                  v55 += 2;
                  v56 -= 16;
                  if (!v56)
                  {
                    goto LABEL_18;
                  }
                }

                goto LABEL_19;
              }
            }
          }
        }
      }

LABEL_18:

      v40(v37);

LABEL_19:
      if (++v36 == v35)
      {
        v57 = *(v8 + 56);
        v34 = *(v8 + 48);
        v58 = *(v8 + 32);
        v18 = v70;
        v20 = v67;
        if (*(v8 + 64) >= 1)
        {
          swift_arrayDestroy();
        }

        v19 = v65;
        v10 = v66;
LABEL_46:
        ecs_stack_allocator_deallocate(v58, v34, 48 * v57);
        *(v8 + 48) = v73;
        *(v8 + 64) = v72;
        *(v8 + 80) = v71;
        sub_1AF62D29C(v74);
        ecs_stack_allocator_pop_snapshot(v19);
        if (v20)
        {
          os_unfair_lock_unlock(*(v74 + 344));
          os_unfair_lock_unlock(*(v74 + 376));
        }

        if (++v18 == v69)
        {
          goto LABEL_48;
        }

        goto LABEL_10;
      }
    }
  }

  v11 = *v10;

  v12 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, 0, 0, 0, v8);
  if (v13)
  {
    ecs_stack_allocator_push_snapshot(v9);
    v14 = 4 * *(a1 + 10);
    v15 = ecs_stack_allocator_allocate(v9, v14, 4);
    v16 = v15;
    if (v14)
    {
      bzero(v15, v14);
    }

    sub_1AF6BF530(a2, a3, a4, a5, v16, a6);
    ecs_stack_allocator_pop_snapshot(v9);
  }

  else
  {
    sub_1AF6BF530(a2, a3, a4, a5, v12 + 4 * v11, a6);
  }
}

uint64_t sub_1AF6BFFEC(__int128 *a1, unsigned int *a2, uint64_t a3, float *a4, float a5)
{
  v81 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 9);
  v8 = *(v7 + 32);
  v9 = *(a1 + 5);
  v71 = *(a1 + 7);
  if (v71 != 1)
  {
    ecs_stack_allocator_push_snapshot(v8);
    v18 = *(a1 + 10);
    v63 = v8;
    v70 = ecs_stack_allocator_allocate(v8, 4 * v18, 4);
    if (v18 <= 0 || !v71)
    {
LABEL_48:
      sub_1AFB78658(v70, a2, a3, a4, a5);
      return ecs_stack_allocator_pop_snapshot(v63);
    }

    v19 = 0;
    v20 = *(v7 + 32);
    v21 = *(*(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v22 = a1[1];
    v78 = *a1;
    v79 = v22;
    v80 = *(a1 + 4);
    v68 = v20;
    v69 = v9;
    v67 = v21;
LABEL_10:
    v23 = &v9[12 * v19];
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v27 = *(v23 + 5);
    if (v21)
    {
      v28 = *(v27 + 376);

      os_unfair_lock_lock(v28);
      os_unfair_lock_lock(*(v27 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v20);
    v74 = *(v7 + 64);
    v75 = *(v7 + 48);
    v73 = *(v7 + 80);
    v29 = *(*(*(*(v27 + 40) + 16) + 32) + 16) + 1;
    *(v7 + 48) = ecs_stack_allocator_allocate(*(v7 + 32), 48 * v29, 8);
    *(v7 + 56) = v29;
    v30 = v70 + v26;
    *(v7 + 72) = 0;
    *(v7 + 80) = 0;
    *(v7 + 64) = 0;

    v31 = sub_1AF64B110(&type metadata for ParticleID, &off_1F252DFA8, 0, 0, 0, v7);
    v33 = v32;
    v34 = 4 * (v25 - v24);
    v76 = v27;
    if (v33)
    {
      v77 = 0;
      memset_pattern4_nocache(v30, &v77, v34);
    }

    else
    {
      memcpy(v30, (v31 + 4 * v24), v34);
    }

    v35 = *(v7 + 48);
    v36 = *(v7 + 64);
    if (!v36)
    {
      v58 = *(v7 + 56);
      v59 = *(v7 + 32);
      v61 = v76;
      v60 = v73;
      goto LABEL_46;
    }

    v72 = v19;
    v37 = 0;
    while (1)
    {
      v39 = (v35 + 48 * v37);
      v40 = *v39;
      v41 = v39[4];
      v42 = *(v7 + 72);
      if (v42)
      {
        v43 = v40 == v42;
      }

      else
      {
        v43 = 0;
      }

      if (!v43)
      {
        v44 = v78;
        if (*(v78 + 22))
        {
          v45 = v39[2];
          v46 = v78 + 41;
          v47 = *(v78 + 18);
          if (v47 < 0x10)
          {
            goto LABEL_34;
          }

          v48 = (v46 + *(v78 + 16));
          v49 = v47 >> 4;
          v50 = v78 + 41;
          while (*v48 != v40)
          {
            ++v50;
            v48 += 2;
            if (!--v49)
            {
              goto LABEL_34;
            }
          }

          v51 = *(v50 + *(v78 + 20));
          v52 = v51 > 5;
          v53 = (1 << v51) & 0x23;
          if (!v52 && v53 != 0)
          {
LABEL_34:
            if (!swift_conformsToProtocol2() || !v45)
            {
              goto LABEL_19;
            }

            if ((sub_1AF5FC8D8(v45) & 1) == 0)
            {
              v55 = *(v44 + 18);
              if (v55 >= 0x10)
              {
                v56 = (v46 + *(v44 + 16));
                v57 = 16 * (v55 >> 4);
                while (*v56 != v45)
                {
                  v56 += 2;
                  v57 -= 16;
                  if (!v57)
                  {
                    goto LABEL_18;
                  }
                }

                goto LABEL_19;
              }
            }
          }
        }
      }

LABEL_18:

      v41(v38);

LABEL_19:
      if (++v37 == v36)
      {
        v58 = *(v7 + 56);
        v35 = *(v7 + 48);
        v59 = *(v7 + 32);
        v20 = v68;
        v60 = v73;
        if (*(v7 + 64) >= 1)
        {
          swift_arrayDestroy();
        }

        v9 = v69;
        v19 = v72;
        v21 = v67;
        v61 = v76;
LABEL_46:
        ecs_stack_allocator_deallocate(v59, v35, 48 * v58);
        *(v7 + 48) = v75;
        *(v7 + 64) = v74;
        *(v7 + 80) = v60;
        sub_1AF62D29C(v61);
        ecs_stack_allocator_pop_snapshot(v20);
        if (v21)
        {
          os_unfair_lock_unlock(*(v61 + 344));
          os_unfair_lock_unlock(*(v61 + 376));
        }

        if (++v19 == v71)
        {
          goto LABEL_48;
        }

        goto LABEL_10;
      }
    }
  }

  v10 = *(v7 + 32);
  v11 = *v9;

  v12 = sub_1AF64B110(&type metadata for ParticleID, &off_1F252DFA8, 0, 0, 0, v7);
  if (v13)
  {
    v14 = v10;
    ecs_stack_allocator_push_snapshot(v10);
    v15 = 4 * *(a1 + 10);
    v16 = ecs_stack_allocator_allocate(v10, v15, 4);
    if (v15)
    {
      v17 = v16;
      bzero(v16, v15);
      v16 = v17;
      v14 = v10;
    }

    sub_1AFB78658(v16, a2, a3, a4, a5);
    ecs_stack_allocator_pop_snapshot(v14);
  }

  else
  {
    sub_1AFB78658(v12 + 4 * v11, a2, a3, a4, a5);
  }
}

uint64_t sub_1AF6C0508(uint64_t result, unsigned int *a2, uint64_t a3, float *a4, float a5)
{
  v107 = *MEMORY[0x1E69E9840];
  v6 = *(result + 72);
  v7 = *(result + 40);
  v8 = *(result + 56);
  if (v8 == 1)
  {
    v12 = *v7;

    v13 = sub_1AF64B110(&type metadata for ParticleParentID, &off_1F252D8C8, 0, 0, 0, v6);
    if ((v14 & 1) == 0)
    {
      sub_1AFB78684(v13 + 4 * v12, a2, a3, a4, a5);
    }
  }

  v98 = *(v6 + 32);
  v15 = *(result + 80);
  v90 = *(result + 40);
  v87 = *(result + 56);
  v96 = result;
  if (v15 <= 0)
  {
    if (v8)
    {
      return result;
    }

LABEL_39:
    ecs_stack_allocator_push_snapshot(v98);
    v89 = ecs_stack_allocator_allocate(v98, 4 * v15, 4);
    if (v15 < 1 || !v8)
    {
LABEL_81:
      sub_1AFB78684(v89, a2, a3, a4, a5);
      return ecs_stack_allocator_pop_snapshot(v98);
    }

    v41 = 0;
    v42 = *(v6 + 32);
    v43 = *(*(v96 + 64) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v44 = *(v96 + 16);
    v100 = *v96;
    v101 = v44;
    v102 = *(v96 + 32);
    v88 = v43;
    v86 = v42;
LABEL_43:
    v45 = &v7[12 * v41];
    v47 = *v45;
    v46 = v45[1];
    v48 = v45[2];
    v49 = *(v45 + 5);
    if (v43)
    {
      v50 = *(v49 + 376);

      os_unfair_lock_lock(v50);
      os_unfair_lock_lock(*(v49 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v42);
    v93 = *(v6 + 64);
    v95 = *(v6 + 48);
    v92 = *(v6 + 80);
    v51 = *(*(*(*(v49 + 40) + 16) + 32) + 16) + 1;
    *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v51, 8);
    *(v6 + 56) = v51;
    v52 = v89 + v48;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    *(v6 + 64) = 0;

    v53 = sub_1AF64B110(&type metadata for ParticleParentID, &off_1F252D8C8, 0, 0, 0, v6);
    v55 = v54;
    v56 = 4 * (v46 - v47);
    v97 = v49;
    if (v55)
    {
      v99 = 0;
      memset_pattern4_nocache(v52, &v99, v56);
    }

    else
    {
      memcpy(v52, (v53 + 4 * v47), v56);
    }

    v57 = *(v6 + 48);
    v58 = *(v6 + 64);
    if (!v58)
    {
      v80 = *(v6 + 56);
      v81 = *(v6 + 32);
      v43 = v88;
      v82 = v92;
      v7 = v90;
      goto LABEL_79;
    }

    v91 = v41;
    v59 = 0;
    while (1)
    {
      v61 = (v57 + 48 * v59);
      v62 = *v61;
      v63 = v61[4];
      v64 = *(v6 + 72);
      if (v64)
      {
        v65 = v62 == v64;
      }

      else
      {
        v65 = 0;
      }

      if (!v65)
      {
        v66 = v100;
        if (*(v100 + 22))
        {
          v67 = v61[2];
          v68 = v100 + 41;
          v69 = *(v100 + 18);
          if (v69 < 0x10)
          {
            goto LABEL_67;
          }

          v70 = (v68 + *(v100 + 16));
          v71 = v69 >> 4;
          v72 = v100 + 41;
          while (*v70 != v62)
          {
            ++v72;
            v70 += 2;
            if (!--v71)
            {
              goto LABEL_67;
            }
          }

          v73 = *(v72 + *(v100 + 20));
          v74 = v73 > 5;
          v75 = (1 << v73) & 0x23;
          if (!v74 && v75 != 0)
          {
LABEL_67:
            if (!swift_conformsToProtocol2() || !v67)
            {
              goto LABEL_52;
            }

            if ((sub_1AF5FC8D8(v67) & 1) == 0)
            {
              v77 = *(v66 + 18);
              if (v77 >= 0x10)
              {
                v78 = (v68 + *(v66 + 16));
                v79 = 16 * (v77 >> 4);
                while (*v78 != v67)
                {
                  v78 += 2;
                  v79 -= 16;
                  if (!v79)
                  {
                    goto LABEL_51;
                  }
                }

                goto LABEL_52;
              }
            }
          }
        }
      }

LABEL_51:

      v63(v60);

LABEL_52:
      if (++v59 == v58)
      {
        v80 = *(v6 + 56);
        v57 = *(v6 + 48);
        v81 = *(v6 + 32);
        v43 = v88;
        v82 = v92;
        if (*(v6 + 64) >= 1)
        {
          swift_arrayDestroy();
        }

        v7 = v90;
        v41 = v91;
        v42 = v86;
        v8 = v87;
LABEL_79:
        ecs_stack_allocator_deallocate(v81, v57, 48 * v80);
        *(v6 + 48) = v95;
        *(v6 + 64) = v93;
        *(v6 + 80) = v82;
        sub_1AF62D29C(v97);
        ecs_stack_allocator_pop_snapshot(v42);
        if (v43)
        {
          os_unfair_lock_unlock(*(v97 + 344));
          os_unfair_lock_unlock(*(v97 + 376));
        }

        if (++v41 == v8)
        {
          goto LABEL_81;
        }

        goto LABEL_43;
      }
    }
  }

  if (!v8)
  {
    goto LABEL_39;
  }

  v94 = *(result + 80);
  v16 = *(result + 40);
  v17 = *(result + 56);
  v18 = 0;
  v19 = *(*(result + 64) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v20 = *(result + 16);
  v103[0] = *result;
  v103[1] = v20;
  v104 = *(result + 32);
  v21 = (v16 + 40);
  do
  {
    v22 = *v21;
    if (v19)
    {
      v23 = *(v22 + 376);

      os_unfair_lock_lock(v23);
      os_unfair_lock_lock(*(v22 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v98);
    v24 = *(v6 + 64);
    v105[0] = *(v6 + 48);
    v105[1] = v24;
    v106 = *(v6 + 80);
    v25 = *(*(*(*(v22 + 40) + 16) + 32) + 16) + 1;
    *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v25, 8);
    *(v6 + 56) = v25;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    *(v6 + 64) = 0;
    v26 = *(*(v22 + 40) + 16);
    v27 = *(v26 + 128);
    if (*(v27 + 16))
    {
      v28 = sub_1AF449CB8(&type metadata for ParticleParentID);
      if ((v29 & 1) != 0 && *(*(v26 + 24) + 16 * *(*(v27 + 56) + 8 * v28) + 32) == &type metadata for ParticleParentID)
      {
        ++v18;
      }
    }

    sub_1AF630994(v6, v103, v105);
    if (*(*(v6 + 104) + 16))
    {

      sub_1AF62F348(v30, v22);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v6 + 104);
      if (isUniquelyReferenced_nonNull_native)
      {
        v33 = v32[2];
        v34 = swift_isUniquelyReferenced_nonNull_native();
        *(v6 + 104) = v32;
        if ((v34 & 1) == 0)
        {
          v32 = sub_1AF420EA0(0, v33, 1, v32);
          *(v6 + 104) = v32;
        }

        sub_1AF43A540(0);
        swift_arrayDestroy();
        if (v33)
        {
          v35 = v32[2] - v33;
          memmove(v32 + 4, &v32[9 * v33 + 4], 72 * v35);
          v32[2] = v35;
        }

        *(v6 + 104) = v32;
      }

      else
      {
        v36 = MEMORY[0x1E69E7CC0];
        if (v32[3] >= 2uLL)
        {
          sub_1AF6C0CEC(0, &qword_1ED7269C0, sub_1AF43A540);
          v36 = swift_allocObject();
          v37 = j__malloc_size_0(v36);
          v36[2] = 0;
          v36[3] = 2 * ((v37 - 32) / 72);
        }

        *(v6 + 104) = v36;
      }

      if (*(*(v6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
      {
        v38 = *(v22 + 232);
        v39 = *(v22 + 256);
        if (v38 == v39)
        {
          v40 = *(v22 + 240);
        }

        else
        {
          sub_1AF6497A0(v39, v38);
          v39 = *(v22 + 232);
          v40 = *(v22 + 240);
          if (v40 == v39)
          {
            v40 = 0;
            v39 = 0;
            *(v22 + 232) = 0;
            *(v22 + 240) = 0;
          }
        }

        *(v22 + 248) = v40;
        *(v22 + 256) = v39;
      }
    }

    ecs_stack_allocator_pop_snapshot(v98);
    if (v19)
    {
      os_unfair_lock_unlock(*(v22 + 344));
      os_unfair_lock_unlock(*(v22 + 376));
    }

    v21 += 6;
    --v17;
  }

  while (v17);
  v8 = v87;
  v7 = v90;
  v15 = v94;
  if (v18 == v87)
  {
    goto LABEL_39;
  }

  return result;
}

void sub_1AF6C0CEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFEA18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF6C0D50()
{
  v1 = v0[1];
  result = 9 * __ROR8__(5 * v1, 57);
  v3 = v0[2] ^ *v0;
  v4 = v0[3] ^ v1;
  *v0 ^= v4;
  v0[1] = v3 ^ v1;
  v0[2] = v3 ^ (v1 << 17);
  v0[3] = __ROR8__(v4, 19);
  return result;
}

uint64_t sub_1AF6C0D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = *(v10 + 16);
  v13(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  sub_1AF5C5358(0, &qword_1ED722510);
  if (swift_dynamicCast())
  {
    sub_1AF0FBA54(&v18, v21);
    v14 = v22;
    v15 = v23;
    sub_1AF441150(v21, v22);
    v16 = *(v15 + 8);
    *(&v19 + 1) = v14;
    v20 = v15;
    sub_1AF585714(&v18);
    v16(v5, a4, v14, v15);
    swift_dynamicCast();
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_1AF63A7E8(&v18, &unk_1EB632CF8, &qword_1ED722510);
    return (v13)(a5, a1, a3);
  }
}

uint64_t sub_1AF6C0F5C(uint64_t result, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = result;
  v8 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v9 = *a3;
    swift_unownedRetainStrong();
    v10 = sub_1AF6824B0(&type metadata for Children, &off_1F252A4A0, a2);
    if (v10)
    {
      v18[0] = *v10;

      swift_getAtKeyPath();

      v11 = v20;

      v12 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1AF4217DC(0, *&v20[2] + 1, 1, v20);
      }

      v14 = v12[2];
      v13 = v12[3];
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1AF4217DC(v13 > 1, v14 + 1, 1, v12);
      }

      v12[2] = (v14 + 1);
      v12[v14 + 4] = a4;
      if (sub_1AFB7BCF0(v11, v12))
      {
        goto LABEL_15;
      }

      swift_unownedRetainStrong();

      if (swift_unknownObjectUnownedLoadStrong())
      {
        swift_unknownObjectRelease();
      }

      v15 = swift_unownedRetainStrong();
      v18[0] = v12;
      MEMORY[0x1EEE9AC00](v15, v16);
      sub_1AFC3E260(a2, sub_1AF6CC3D8);

      if (swift_unknownObjectUnownedLoadStrong())
      {
        swift_unknownObjectRelease();
      }

      if (*(a3 + 24) != 1)
      {
LABEL_15:
      }

      else
      {
        swift_unownedRetainStrong();
        v18[0] = __PAIR64__(v8, a2);
        v18[1] = v9;
        sub_1AF57C264();
        v18[5] = v17;
        v18[6] = &off_1F2536190;
        v18[2] = v7;
        v18[3] = v12;
        v19 = 11;

        sub_1AF6C67D0(v18);

        sub_1AF57955C(v18);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1AF6C11EC(char a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  if (a1)
  {
    v10 = 0;
    v9 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if ((a1 & 2) != 0)
    {
      v10 = v9 != 0;
      if (!v9)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    if (v9)
    {
      v10 = *(v9 + 80);
LABEL_8:
      swift_unknownObjectWeakLoadStrong();
      v9 = *(v9 + 56);
      goto LABEL_10;
    }

    v10 = 0;
  }

LABEL_10:
  swift_unknownObjectUnownedInit();
  v13[0] = a2;
  v13[2] = v9;
  swift_unknownObjectUnownedAssign();
  swift_unownedRetain();
  swift_unknownObjectRelease();
  v14 = v10;
  sub_1AF85BBBC(v13, a3, a4, &v15);
  if (v4)
  {
    sub_1AF579490(v13);
    if (v10)
    {
      if ((a1 & 8) != 0)
      {
        v11 = 1;
      }

      else if ((a1 & 4) != 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = [objc_opt_self() immediateMode] ^ 1;
      }

      sub_1AF6C5E30(v11);
    }
  }

  else
  {
    sub_1AF579490(v13);
    if (v10)
    {
      if ((a1 & 8) != 0)
      {
        v12 = 1;
      }

      else if ((a1 & 4) != 0)
      {
        v12 = 0;
      }

      else
      {
        v12 = [objc_opt_self() immediateMode] ^ 1;
      }

      sub_1AF6C5E30(v12);
    }
  }
}

uint64_t sub_1AF6C1390(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 0xFFFFFFFF)
  {
    v5 = v4;
    v9 = result;
    swift_unownedRetainStrong();
    v10 = sub_1AF67CACC(a3, *(a4 + 8), a2);

    swift_unownedRetainStrong();
    sub_1AF6823F8(v9, a2, a3, a4);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      v11 = result;
      if ((*(a4 + 24))(a3, a4))
      {
        v12 = v11 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
        v13 = type metadata accessor for ScriptingConfiguration();
        ++*(v12 + *(v13 + 36));
      }

      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      sub_1AF6C3810(v9, a2, !v10, a3, v14);
      sub_1AF6C67D0(v14);

      return sub_1AF57955C(v14);
    }
  }

  return result;
}

uint64_t sub_1AF6C150C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v7 = result;
  v8 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v9 = *v4;
    swift_unownedRetainStrong();

    swift_unownedRetainStrong();
    if ((v5 & 0x80000000) == 0 && v5 < *(v9 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v10 = (*(v9 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v5);
      if (v8 == 0xFFFFFFFF || v10[2] == v8)
      {
        v11 = *(v10 + 2);
        v12 = *(*(v9 + 144) + 8 * *v10 + 32);
        if (*(v12 + 232) <= v11 && *(v12 + 240) > v11)
        {
          v13 = **(v9 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v14 = *(v12 + 344);

          os_unfair_lock_lock(v14);
          ecs_stack_allocator_push_snapshot(*(v13 + 32));

          sub_1AF68295C(v13, v12, v11, v7, a2, 0);

          ecs_stack_allocator_pop_snapshot(*(v13 + 32));
          os_unfair_lock_unlock(*(v12 + 344));
        }
      }
    }

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      v15 = result;
      if ((*(a2 + 24))(v7, a2))
      {
        v16 = v15 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
        v17 = type metadata accessor for ScriptingConfiguration();
        ++*(v16 + *(v17 + 36));
      }

      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v18[0] = v5;
      v18[1] = v8;
      v19 = v9;
      v20 = v7;
      v21 = a2;
      v22 = 13;
      sub_1AF6C67D0(v18);

      return sub_1AF57955C(v18);
    }
  }

  return result;
}

uint64_t sub_1AF6C1734(uint64_t result, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  if (a3 != 0xFFFFFFFF)
  {
    v8 = result;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    swift_unownedRetainStrong();
    sub_1AF67C738(v8, a3, a2, a4);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      sub_1AF6C3948(v8, a2, v9);
      sub_1AF6C67D0(v9);

      return sub_1AF57955C(v9);
    }
  }

  return result;
}

unint64_t sub_1AF6C1830(unint64_t result, char a2)
{
  v3 = v2;
  v5 = result;
  v6 = HIDWORD(result);
  if (HIDWORD(result) || result != -1)
  {
    v7 = *v2;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    swift_unownedRetainStrong();
    sub_1AF65CBC8(v5, a2 & 1);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v8[0] = v5;
      v8[1] = v6;
      v9 = v7;
      v10 = a2 & 1;
      v11 = 7;
      sub_1AF6C67D0(v8);

      return sub_1AF57955C(v8);
    }
  }

  return result;
}

uint64_t sub_1AF6C1914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v12 + 16);
  v18(v17, v4, v15);
  if ((*(v8 + 48))(v17, 1, v7) == 1)
  {
    return (v18)(a4, v4, a3);
  }

  (*(v8 + 32))(v10, v17, v7);
  type metadata accessor for DefaultRemapper();
  sub_1AF6C0D8C(v10, v20, v7, &off_1F2535DF0, a4);
  (*(v8 + 8))(v10, v7);
  return (*(v8 + 56))(a4, 0, 1, v7);
}

unint64_t sub_1AF6C1B18@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AF6C97E0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1AF6C1B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1AF6C97E0(*v2);
  v6 = v5;
  v7 = HIDWORD(v5);
  v8 = *(a1 + OBJC_IVAR____TtC3VFX15DefaultRemapper_destinationEntityManager);
  swift_unownedRetainStrong();

  *a2 = v6;
  *(a2 + 4) = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_1AF6C1BAC@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unownedRetainStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1AF6C1BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[7] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;
  v6 = sub_1AFDFD538();
  WitnessTable = swift_getWitnessTable();
  return sub_1AF628B24(sub_1AF6CAE58, v10, v6, a4, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
}

uint64_t sub_1AF6C1C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1AF6C1BE0(a1, a2, *v5, *(a3 + 16), *(a4 - 8));
  *a5 = result;
  return result;
}

uint64_t sub_1AF6C1CC0(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v132 = a6;
  v134 = a2;
  v129 = a1;
  v9 = sub_1AFDFDD58();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v128 = &v108 - v11;
  v122 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v117 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v108 - v17;
  v121 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v130 = sub_1AFDFDD58();
  v23 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v24);
  v119 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v118 = &v108 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v120 = &v108 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v108 - v34;
  if (swift_conformsToProtocol2())
  {
    v36 = a4 == 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = !v36;
  if (swift_conformsToProtocol2())
  {
    v38 = a5 == 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  if (v38 && (v37 & 1) == 0)
  {
LABEL_16:

    return a3;
  }

  v145 = sub_1AFDFCBC8();
  if (!v37)
  {

    if (v39)
    {
      MEMORY[0x1EEE9AC00](v45, v46);
      *(&v108 - 6) = a4;
      *(&v108 - 5) = a5;
      v47 = v129;
      *(&v108 - 4) = v132;
      *(&v108 - 3) = v47;
      *(&v108 - 2) = v134;
      return sub_1AFDFCC98();
    }

    goto LABEL_16;
  }

  v40 = a3 & 0xC000000000000001;
  v134 = v18;
  v133 = a4;
  if (v39)
  {
    v119 = v35;
    if (v40)
    {
      v41 = sub_1AFDFE4D8();
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v118 = v41 | 0x8000000000000000;
    }

    else
    {
      v54 = -1 << *(a3 + 32);
      v43 = ~v54;
      v42 = a3 + 64;
      v55 = -v54;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v44 = v56 & *(a3 + 64);
      v118 = a3;
    }

    v125 = (v121 + 32);
    v124 = (v122 + 32);
    v116 = TupleTypeMetadata2 - 8;
    v109 = v43;
    v115 = ((v43 + 64) >> 6);
    v110 = v121 + 16;
    v123 = (v122 + 16);
    v114 = (v23 + 32);
    v113 = (v122 + 56);
    v112 = (v122 + 8);

    v57 = 0;
    v108 = v42;
    v58 = v42 + 8;
    for (i = v42 + 8; ; v58 = i)
    {
      v126 = v57;
      if ((v118 & 0x8000000000000000) != 0)
      {
        break;
      }

      v59 = v44;
      v60 = v57;
      v61 = TupleTypeMetadata2;
      v62 = v120;
      if (v44)
      {
LABEL_38:
        v127 = (v59 - 1) & v59;
        v66 = __clz(__rbit64(v59)) | (v60 << 6);
        v67 = v118;
        (*(v121 + 16))(v22, *(v118 + 48) + *(v121 + 72) * v66, a4);
        (*(v122 + 16))(v18, *(v67 + 56) + *(v122 + 72) * v66, a5);
        goto LABEL_41;
      }

      if (v115 <= (v57 + 1))
      {
        v63 = v57 + 1;
      }

      else
      {
        v63 = v115;
      }

      v64 = v57;
      v57 = v63 - 1;
      v65 = v119;
      while (1)
      {
        v60 = v64 + 1;
        if ((v64 + 1) >= v115)
        {
          break;
        }

        v59 = *(v58 + 8 * v64++);
        if (v59)
        {
          goto LABEL_38;
        }
      }

      v127 = 0;
      v70 = 1;
LABEL_43:
      v71 = *(v61 - 8);
      (*(v71 + 56))(v62, v70, 1, v61);
      (*v114)(v65, v62, v130);
      if ((*(v71 + 48))(v65, 1, v61) == 1)
      {
        goto LABEL_70;
      }

      (*v124)(v18, &v65[*(v61 + 48)], a5);
      (*v125)(v22, v65, a4);
      sub_1AF5C5358(0, &qword_1ED722510);
      v126 = v57;
      swift_dynamicCast();
      v72 = v142;
      v73 = v143;
      sub_1AF441150(&v141, v142);
      v74 = *(v73 + 8);
      v139 = v72;
      v140 = v73;
      sub_1AF585714(&v138);
      v75 = v129;
      v74(v129, &off_1F2535DF0, v72, v73);
      sub_1AF0FBA54(&v138, v144);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v141);
      swift_dynamicCast();
      (*v123)(v117, v134, a5);
      swift_dynamicCast();
      v76 = v139;
      v77 = v140;
      sub_1AF441150(&v138, v139);
      v78 = *(v77 + 8);
      v136 = v76;
      v137 = v77;
      sub_1AF585714(&v135);
      a4 = v133;
      v78(v75, &off_1F2535DF0, v76, v77);
      v18 = v134;
      sub_1AF0FBA54(&v135, &v141);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v138);
      v79 = v128;
      swift_dynamicCast();
      (*v113)(v79, 0, 1, a5);
      sub_1AFDFCCB8();
      sub_1AFDFCCD8();
      (*v112)(v18, a5);
      v57 = v126;
      v44 = v127;
    }

    v68 = sub_1AFDFE508();
    v61 = TupleTypeMetadata2;
    v62 = v120;
    if (v68)
    {
      sub_1AFDFEDE8();
      swift_unknownObjectRelease();
      sub_1AFDFEDE8();
      swift_unknownObjectRelease();
      v60 = v57;
      v127 = v44;
LABEL_41:
      v69 = *(v61 + 48);
      (*v125)(v62, v22, a4);
      (*v124)(&v62[v69], v18, a5);
      v70 = 0;
      v57 = v60;
    }

    else
    {
      v70 = 1;
      v127 = v44;
    }

    v65 = v119;
    goto LABEL_43;
  }

  v48 = v23;
  v120 = v22;
  if (v40)
  {
    v49 = sub_1AFDFE4D8();
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = v49 | 0x8000000000000000;
  }

  else
  {
    v80 = -1 << *(a3 + 32);
    v51 = ~v80;
    v50 = a3 + 64;
    v81 = -v80;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    else
    {
      v82 = -1;
    }

    v52 = v82 & *(a3 + 64);
    v53 = a3;
  }

  v125 = (v121 + 32);
  v124 = (v122 + 32);
  v116 = TupleTypeMetadata2 - 8;
  v109 = v51;
  v110 = (v51 + 64) >> 6;
  i = v121 + 16;
  v123 = (v122 + 16);
  v115 = (v48 + 32);
  v114 = (v122 + 56);
  v113 = (v122 + 8);

  v83 = 0;
  v108 = v50;
  v84 = (v50 + 8);
  v117 = v53;
  v112 = (v50 + 8);
  if ((v53 & 0x8000000000000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_53:
  v85 = v52;
  v86 = v83;
  v87 = v120;
  v88 = v133;
  v89 = v119;
  if (v52)
  {
LABEL_60:
    v127 = (v85 - 1) & v85;
    v93 = __clz(__rbit64(v85)) | (v86 << 6);
    (*(v121 + 16))(v120, *(v53 + 48) + *(v121 + 72) * v93, v133);
    v94 = *(v53 + 56) + *(v122 + 72) * v93;
    v95 = v134;
    (*(v122 + 16))(v134, v94, a5);
LABEL_63:
    v97 = TupleTypeMetadata2;
    v98 = *(TupleTypeMetadata2 + 48);
    (*v125)(v89, v87, v88);
    (*v124)(&v89[v98], v95, a5);
    j = 0;
    v126 = v86;
    goto LABEL_67;
  }

  if (v110 <= (v83 + 1))
  {
    v90 = (v83 + 1);
  }

  else
  {
    v90 = v110;
  }

  v91 = v90 - 1;
  v92 = v83;
  while (1)
  {
    v86 = v92 + 1;
    if ((v92 + 1) >= v110)
    {
      break;
    }

    v85 = v84[v92++];
    if (v85)
    {
      goto LABEL_60;
    }
  }

  v126 = v91;
  v127 = 0;
  for (j = 1; ; j = 1)
  {
    v97 = TupleTypeMetadata2;
LABEL_67:
    v100 = *(v97 - 8);
    (*(v100 + 56))(v89, j, 1, v97);
    v101 = v118;
    (*v115)(v118, v89, v130);
    if ((*(v100 + 48))(v101, 1, v97) == 1)
    {
      break;
    }

    v102 = v134;
    (*v124)(v134, (v101 + *(v97 + 48)), a5);
    (*v125)(v87, v101, v88);
    sub_1AF5C5358(0, &qword_1ED722510);
    swift_dynamicCast();
    v103 = v142;
    v104 = v143;
    sub_1AF441150(&v141, v142);
    v105 = *(v104 + 8);
    v139 = v103;
    v140 = v104;
    sub_1AF585714(&v138);
    v105(v129, &off_1F2535DF0, v103, v104);
    sub_1AF0FBA54(&v138, v144);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v141);
    swift_dynamicCast();
    v106 = v128;
    (*v123)(v128, v102, a5);
    (*v114)(v106, 0, 1, a5);
    sub_1AFDFCCB8();
    sub_1AFDFCCD8();
    (*v113)(v102, a5);
    v83 = v126;
    v52 = v127;
    v53 = v117;
    v84 = v112;
    if ((v117 & 0x8000000000000000) == 0)
    {
      goto LABEL_53;
    }

LABEL_61:
    v96 = sub_1AFDFE508();
    v87 = v120;
    v88 = v133;
    v89 = v119;
    if (v96)
    {
      sub_1AFDFEDE8();
      swift_unknownObjectRelease();
      v95 = v134;
      sub_1AFDFEDE8();
      swift_unknownObjectRelease();
      v86 = v83;
      v127 = v52;
      goto LABEL_63;
    }

    v126 = v83;
    v127 = v52;
  }

LABEL_70:
  sub_1AF0FBB14();
  return v145;
}