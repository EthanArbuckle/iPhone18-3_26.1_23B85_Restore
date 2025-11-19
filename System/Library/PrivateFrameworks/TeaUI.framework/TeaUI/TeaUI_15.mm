uint64_t sub_1D7F5BA74(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D7F5A954();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1D7F5D18C();
LABEL_10:
      v12 = *v3;
      result = sub_1D81927D4();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
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

    result = sub_1D7F5C6DC();
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
    result = sub_1D8192704();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_1D7F5BB78(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D7F5AB98();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1D7F5D398();
LABEL_10:
      v12 = *v3;
      sub_1D81927E4();
      sub_1D8190FF4();
      v13 = sub_1D8192824();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for BlueprintInfiniteScrollRequest();
        v15 = *(*(v12 + 48) + 8 * a2);
        v16 = *(v15 + 16) == *(a1 + 16) && *(v15 + 24) == *(a1 + 24);
        if (v16 || (sub_1D8192634() & 1) != 0)
        {
          goto LABEL_19;
        }

        v13 = a2 + 1;
      }
    }

    sub_1D7F5C83C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_19:
    sub_1D8192704();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

uint64_t sub_1D7F5BCD8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D7F5ADD8();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1D7F5D5BC();
LABEL_10:
      v12 = *v3;
      sub_1D81927E4();
      MEMORY[0x1DA714A00](v5);
      result = sub_1D8192824();
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

    result = sub_1D7F5C918();
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
    result = sub_1D8192704();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1D7F5BE10(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D7F5B03C();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1D7F5D7F0();
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1D7F5DEF4(&qword_1EDBBC6C0, MEMORY[0x1E6969C28]);
      v14 = sub_1D8190E54();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1D7F5DEF4(&qword_1EDBBC6B0, MEMORY[0x1E6969C28]);
        v16 = sub_1D8190ED4();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1D7F5CA70();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_1D8192704();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_1D7F5C09C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_1D7F5B388();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D7F5CC98();
      goto LABEL_24;
    }

    sub_1D7F5DAFC();
  }

  v8 = *v3;
  sub_1D81927E4();
  sub_1D811B984();
  result = sub_1D8192824();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = (*(v8 + 48) + 48 * a2);
      v12 = *v11 == *v5 && v11[1] == v5[1];
      if (v12 && v11[2] == v5[2])
      {
        v13 = v11[3] == v5[3] && v11[4] == v5[4];
        if (v13 && v11[5] == v5[5])
        {
          goto LABEL_27;
        }
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v16 = (*(v15 + 48) + 48 * a2);
  v17 = *(v5 + 1);
  *v16 = *v5;
  v16[1] = v17;
  v16[2] = *(v5 + 2);
  v18 = *(v15 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v15 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_27:
  result = sub_1D8192704();
  __break(1u);
  return result;
}

uint64_t sub_1D7F5C240(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v9 = *&result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_40;
  }

  if (a5)
  {
    sub_1D7F5B610();
  }

  else
  {
    if (v11 > v10)
    {
      *&result = COERCE_DOUBLE(sub_1D7F5CE04());
      goto LABEL_40;
    }

    sub_1D7F5DD54();
  }

  v12 = *v5;
  sub_1D81927E4();
  if ((a3 & 0x80) == 0)
  {
    MEMORY[0x1DA714A00](0);
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0.0;
    }

LABEL_17:
    MEMORY[0x1DA714A20](*&v13);
    goto LABEL_18;
  }

  MEMORY[0x1DA714A00](1);
  if ((a3 & 1) == 0)
  {
    MEMORY[0x1DA714A00](2);
    MEMORY[0x1DA714A00](*&v9);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = *&a2;
    }

    else
    {
      v13 = 0.0;
    }

    goto LABEL_17;
  }

  MEMORY[0x1DA714A00]((*&v9 | a2) != 0);
LABEL_18:
  *&result = COERCE_DOUBLE(sub_1D8192824());
  v14 = -1 << *(v12 + 32);
  a4 = result & ~v14;
  if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_40;
  }

  v15 = ~v14;
  while (1)
  {
    v16 = *(v12 + 48) + 24 * a4;
    v17 = *v16;
    v18 = *(v16 + 16);
    if (v18 < 0)
    {
      break;
    }

    if ((a3 & 0x80) == 0 && v17 == v9)
    {
      goto LABEL_39;
    }

LABEL_25:
    a4 = (a4 + 1) & v15;
    if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  if ((a3 & 0x80) == 0)
  {
    goto LABEL_25;
  }

  v19 = *(v16 + 8);
  if (v18)
  {
    if (*&v17 | *&v19)
    {
      if ((a3 & ((*&v9 | a2) != 0)) != 0)
      {
        goto LABEL_39;
      }
    }

    else if ((a3 & ((*&v9 | a2) == 0)) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_25;
  }

  if (a3)
  {
    goto LABEL_25;
  }

  if (*&v17 != *&v9 || v19 != *&a2)
  {
    goto LABEL_25;
  }

LABEL_39:
  *&result = COERCE_DOUBLE(sub_1D8192704());
  __break(1u);
LABEL_40:
  v21 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = v9;
  *(v22 + 8) = *&a2;
  *(v22 + 16) = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

void sub_1D7F5C484(uint64_t a1)
{
  v6 = v1;
  OUTLINED_FUNCTION_5_21(a1, &qword_1EDBB2EC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v7 = *v1;
  v8 = sub_1D8192134();
  if (*(v7 + 16))
  {
    v9 = OUTLINED_FUNCTION_26_5();
    if (v12)
    {
      v13 = v9 >= v11;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      memmove(v9, v2, 8 * v10);
    }

    OUTLINED_FUNCTION_13_11();
    while (v5)
    {
      OUTLINED_FUNCTION_55_4();
LABEL_15:
      v18 = v14 | (v3 << 6);
      v19 = (*(v7 + 48) + 16 * v18);
      v20 = v19[1];
      v21 = (*(v8 + 48) + 16 * v18);
      *v21 = *v19;
      v21[1] = v20;
      sub_1D8190DB4();
    }

    v15 = v3;
    while (1)
    {
      v3 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v15;
      if (*(v2 + v3))
      {
        OUTLINED_FUNCTION_21_3();
        v5 = v17 & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v6 = v8;
  }
}

void *sub_1D7F5C57C()
{
  v1 = v0;
  sub_1D7EAF54C(0, &qword_1ECA0E030, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D0], MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1D8192134();
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

void *sub_1D7F5C6DC()
{
  v1 = v0;
  sub_1D7EAF54C(0, &qword_1EDBB2EB8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1D8192134();
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

void sub_1D7F5C83C()
{
  v5 = v0;
  sub_1D7F5DFD0();
  v6 = *v0;
  v7 = sub_1D8192134();
  if (*(v6 + 16))
  {
    v8 = OUTLINED_FUNCTION_26_5();
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
      memmove(v8, v1, 8 * v9);
    }

    OUTLINED_FUNCTION_13_11();
    while (v4)
    {
      OUTLINED_FUNCTION_55_4();
LABEL_15:
      *(*(v7 + 48) + 8 * (v13 | (v2 << 6))) = *(*(v6 + 48) + 8 * (v13 | (v2 << 6)));
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v2))
      {
        OUTLINED_FUNCTION_21_3();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

void *sub_1D7F5C918()
{
  v1 = v0;
  sub_1D7F5E064(0, &qword_1EDBAE3F0, sub_1D7F14D74);
  v2 = *v0;
  v3 = sub_1D8192134();
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

void *sub_1D7F5CA70()
{
  v1 = v0;
  v2 = sub_1D818E994();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7F5DF3C();
  v6 = *v0;
  v7 = sub_1D8192134();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_1D7F5CC98()
{
  v1 = v0;
  sub_1D7F5E064(0, &qword_1ECA0E020, sub_1D7F5DEA0);
  v2 = *v0;
  v3 = sub_1D8192134();
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
    for (i = (v9 + 63) >> 6; v11; v21[2] = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 3 * v14;
      v18 = (*(v2 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = v18[2];
      v21 = (*(v4 + 48) + 16 * v17);
      *v21 = *v18;
      v21[1] = v19;
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

void *sub_1D7F5CE04()
{
  v1 = v0;
  sub_1D7F5E064(0, &qword_1ECA0E018, sub_1D7F14CC8);
  v2 = *v0;
  v3 = sub_1D8192134();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 3 * v14;
      v18 = *(v2 + 48) + 8 * v17;
      v19 = *(v18 + 16);
      v20 = *(v4 + 48) + 8 * v17;
      *v20 = *v18;
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

uint64_t sub_1D7F5CF70()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7EAF54C(0, &qword_1ECA0E030, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D0], MEMORY[0x1E69E6A10]);
  result = sub_1D8192144();
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
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_1D81927D4();
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
          goto LABEL_23;
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
LABEL_23:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D7F5D18C()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7EAF54C(0, &qword_1EDBB2EB8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  result = sub_1D8192144();
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
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_1D81927D4();
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
          goto LABEL_23;
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
LABEL_23:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D7F5D398()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7F5DFD0();
  result = sub_1D8192144();
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
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        sub_1D81927E4();

        sub_1D8190FF4();
        result = sub_1D8192824();
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

uint64_t sub_1D7F5D5BC()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7F5E064(0, &qword_1EDBAE3F0, sub_1D7F14D74);
  result = sub_1D8192144();
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
        sub_1D81927E4();
        MEMORY[0x1DA714A00](v14);
        result = sub_1D8192824();
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

uint64_t sub_1D7F5D7F0()
{
  v1 = v0;
  v32 = sub_1D818E994();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D7F5DF3C();
  v6 = sub_1D8192144();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_1D7F5DEF4(&qword_1EDBBC6C0, MEMORY[0x1E6969C28]);
        result = sub_1D8190E54();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1D7F5DAFC()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7F5E064(0, &qword_1ECA0E020, sub_1D7F5DEA0);
  result = sub_1D8192144();
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
        v14 = (*(v2 + 48) + 48 * (v11 | (v5 << 6)));
        v24 = *v14;
        v25 = v14[1];
        v26 = v14[2];
        sub_1D81927E4();
        sub_1D811B984();
        result = sub_1D8192824();
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
        v23 = (*(v4 + 48) + 48 * v18);
        *v23 = v24;
        v23[1] = v25;
        v23[2] = v26;
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

unint64_t sub_1D7F5DD54()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7F5E064(0, &qword_1ECA0E018, sub_1D7F14CC8);
  result = sub_1D8192144();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; result = sub_1D7F5B83C(*v13, *(v13 + 8), *(v13 + 16), v4))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = *(v2 + 48) + 24 * (v10 | (v5 << 6));
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_13;
      }

      v12 = *(v2 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1D7F5DEA0()
{
  result = qword_1ECA0E028;
  if (!qword_1ECA0E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E028);
  }

  return result;
}

uint64_t sub_1D7F5DEF4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7F5DF3C()
{
  if (!qword_1EDBAE410)
  {
    sub_1D818E994();
    sub_1D7F5DEF4(&qword_1EDBBC6C0, MEMORY[0x1E6969C28]);
    v0 = sub_1D8192174();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE410);
    }
  }
}

void sub_1D7F5DFD0()
{
  if (!qword_1EDBB2EC8)
  {
    type metadata accessor for BlueprintInfiniteScrollRequest();
    sub_1D7F5DEF4(&qword_1EDBB5F38, type metadata accessor for BlueprintInfiniteScrollRequest);
    v0 = sub_1D8192174();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2EC8);
    }
  }
}

void sub_1D7F5E064(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    OUTLINED_FUNCTION_159();
    v4 = sub_1D8192174();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t ViewTransitionThroughColorAnimator.Options.init(timingSettings:fadeColor:ignoresInvertColors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t ViewTransitionThroughColorAnimator.__allocating_init(optionsBlock:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_0();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ViewTransitionThroughColorAnimator.init(optionsBlock:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ViewTransitionThroughColorAnimator.__allocating_init(options:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = *a1;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  type metadata accessor for ViewTransitionThroughColorAnimator();
  result = swift_allocObject();
  *(result + 16) = sub_1D7F5E194;
  *(result + 24) = v4;
  return result;
}

uint64_t ViewTransitionThroughColorAnimator.__allocating_init(timingSettings:fadeColor:ignoresInvertColors:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  type metadata accessor for ViewTransitionThroughColorAnimator();
  result = swift_allocObject();
  *(result + 16) = sub_1D7F5E9C0;
  *(result + 24) = v8;
  return result;
}

id sub_1D7F5E240@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return v2;
}

uint64_t sub_1D7F5E25C()
{
  sub_1D7E1F150();
  swift_allocObject();
  return sub_1D818FBA4();
}

void sub_1D7F5E2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 16);

  v14 = [a6 traitCollection];
  v13(&aBlock);

  v15 = aBlock;
  v16 = v34;
  v17 = v35;
  v18 = v36;
  v32 = v36;
  [a7 bounds];
  v23 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v23 setBackgroundColor_];
  [v23 setAccessibilityIgnoresInvertColors_];
  [a7 addSubview_];
  sub_1D7F5E900();
  v24 = UIViewPropertyAnimator.init(timingSettings:)(v15, v16);
  v25 = swift_allocObject();
  *(v25 + 16) = a6;
  v37 = sub_1D7F5E9B0;
  v38 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1D7E64940;
  v36 = &block_descriptor_13;
  v26 = _Block_copy(&aBlock);
  v27 = a6;

  [v24 addAnimations_];
  _Block_release(v26);
  v28 = swift_allocObject();
  *(v28 + 16) = v15;
  *(v28 + 24) = v16;
  *(v28 + 32) = v17;
  *(v28 + 40) = v32;
  *(v28 + 48) = v23;
  *(v28 + 56) = sub_1D7F15988;
  *(v28 + 64) = v12;
  v37 = sub_1D7F5E944;
  v38 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1D7FEBC20;
  v36 = &block_descriptor_18;
  v29 = _Block_copy(&aBlock);
  v30 = v17;
  v31 = v23;

  [v24 addCompletion_];
  _Block_release(v29);
  [v24 startAnimation];
}

void sub_1D7F5E5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  sub_1D7F5E900();
  v13 = UIViewPropertyAnimator.init(timingSettings:)(a2, a3);
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  v24 = sub_1D7F5E95C;
  v25 = v14;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1D7E64940;
  v23 = &block_descriptor_24;
  v15 = _Block_copy(&v20);
  v16 = a6;

  [v13 addAnimations_];
  _Block_release(v15);
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a7;
  v17[4] = a8;
  v24 = sub_1D7F5E970;
  v25 = v17;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1D7FEBC20;
  v23 = &block_descriptor_30;
  v18 = _Block_copy(&v20);
  v19 = v16;

  [v13 addCompletion_];
  _Block_release(v18);
  [v13 startAnimation];
}

uint64_t ViewTransitionThroughColorAnimator.__deallocating_deinit()
{

  OUTLINED_FUNCTION_7_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7F5E86C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D7F5E8AC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1D7F5E900()
{
  result = qword_1ECA0DA78;
  if (!qword_1ECA0DA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECA0DA78);
  }

  return result;
}

uint64_t IndexPathBlueprintBookmarkApplicator.__allocating_init(blueprintLayoutProvider:blueprintViewProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  IndexPathBlueprintBookmarkApplicator.init(blueprintLayoutProvider:blueprintViewProvider:)(a1, a2);
  return v4;
}

uint64_t IndexPathBlueprintBookmarkApplicator.deinit()
{
  OUTLINED_FUNCTION_3_0();
  (*(v1 + 8))(v0 + v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t IndexPathBlueprintBookmarkApplicator.__deallocating_deinit()
{
  IndexPathBlueprintBookmarkApplicator.deinit();

  return swift_deallocClassInstance();
}

double IndexPathBlueprintBookmarkApplicator.prepare(bookmark:context:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t IndexPathBlueprintBookmarkApplicator.apply(bookmark:context:preparedContext:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v30 = v3;
  v31 = a1;
  type metadata accessor for BlueprintBookmark();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D818E994();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  BlueprintLayoutProviderType.layoutBlueprint.getter(*(v3 + 80), *(v3 + 96));
  v9 = OUTLINED_FUNCTION_1_43();
  v10 = OUTLINED_FUNCTION_1_43();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v35 = v9;
  v36 = v10;
  v37 = AssociatedConformanceWitness;
  v38 = v12;
  v13 = type metadata accessor for BlueprintLayout();
  swift_getWitnessTable();
  LOBYTE(v3) = sub_1D8191874();
  OUTLINED_FUNCTION_3_0();
  result = (*(v14 + 8))(v39, v13);
  if ((v3 & 1) == 0)
  {
    sub_1D7E2B108(v31, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D7E2A12C();
      v17 = *&v6[*(v16 + 48)];
      (*(v33 + 32))(v32, v6, v34);
      v18 = *(v2 + *(*v2 + 120));
      v19 = *(v30 + 104);
      v20 = *(v30 + 88);
      v30 = *(v19 + 56);
      v31 = v18;
      v21 = (v30)(v20, v19);
      swift_getAssociatedTypeWitness();
      v22 = swift_getAssociatedConformanceWitness();
      v23 = *(v22 + 88);
      v24 = v32;
      v25 = swift_checkMetadataState();
      v23(v39, v24, v25, v22);

      if ((v40 & 1) == 0)
      {
        v26 = sub_1D7F5EF04(v2, v39[0], v39[1], v39[2], v39[3], v17);
        v28 = v27;
        v29 = (v30)(v20, v19);
        [v29 setContentOffset_];
      }

      return (*(v33 + 8))(v24, v34);
    }

    else
    {
      return sub_1D7E2BBA0(v6);
    }
  }

  return result;
}

double sub_1D7F5EF04(uint64_t *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v11 = *a1;
  BlueprintLayoutProviderType.layoutBlueprint.getter(*(*a1 + 80), *(*a1 + 96));
  v12 = v33[565];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for BlueprintLayout();
  (*(*(v13 - 8) + 8))(v33, v13);
  if (v12)
  {
    v14 = *(v11 + 104);
    v15 = *(v14 + 56);
    v16 = *(v11 + 88);
    v17 = v15(v16, v14);
    [v17 contentOffset];
    v19 = v18;

    v34.origin.x = a2;
    v34.origin.y = a3;
    v34.size.width = a4;
    v34.size.height = a5;
    CGRectGetMinY(v34);
    v20 = v15(v16, v14);
    [v20 adjustedContentInset];
  }

  else
  {
    v35.origin.x = a2;
    v35.origin.y = a3;
    v35.size.width = a4;
    v35.size.height = a5;
    v21 = CGRectGetMinX(v35) + a6;
    v22 = *(v11 + 104);
    v23 = *(v22 + 56);
    v24 = *(v11 + 88);
    v25 = v23(v24, v22);
    [v25 adjustedContentInset];
    v27 = v26;

    v19 = v21 - v27;
    v20 = v23(v24, v22);
    [v20 contentOffset];
  }

  return v19;
}

uint64_t (*KeyCommandScrollProvider.invalidator.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7F5F348;
}

uint64_t sub_1D7F5F34C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 48);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D7F5F39C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
  return swift_unknownObjectWeakAssign();
}

void (*KeyCommandScrollProvider.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 48);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7F5F4B0;
}

void sub_1D7F5F4B0()
{
  OUTLINED_FUNCTION_3_5();
  *(v2 + 48) = v3;
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t KeyCommandScrollProvider.__allocating_init(scrollView:)(void *a1)
{
  v2 = swift_allocObject();
  KeyCommandScrollProvider.init(scrollView:)(a1);
  return v2;
}

uint64_t KeyCommandScrollProvider.init(scrollView:)(void *a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return v1;
}

void sub_1D7F5F5F4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong contentOffset];
    [v2 setContentOffset:1 animated:sub_1D7F5FCAC(v2)];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v0 + 48);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v0, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D7F5F6CC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 adjustedContentInset];
    v12 = v11;
    v14 = v13;
    [v2 contentOffset];
    v18 = v15;
    v19.origin.x = UIEdgeInsetsInsetRect(v4, v6, v8, v10, v12, v14);
    CGRectGetHeight(v19);
    [v2 setContentOffset:1 animated:{sub_1D7F5FCAC(v2), v18}];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v0 + 48);
      ObjectType = swift_getObjectType();
      (*(v16 + 8))(v0, ObjectType, v16);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1D7F5F830()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong adjustedContentInset];
    [v2 setContentOffset:1 animated:sub_1D7F5FCAC(v2)];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v0 + 48);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v0, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D7F5F900()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong contentOffset];
    [v2 setContentOffset:1 animated:sub_1D7F5FCAC(v2)];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v0 + 48);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v0, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D7F5F9D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 adjustedContentInset];
    v12 = v11;
    v14 = v13;
    [v2 contentOffset];
    v18 = v15;
    v19.origin.x = UIEdgeInsetsInsetRect(v4, v6, v8, v10, v12, v14);
    CGRectGetHeight(v19);
    [v2 setContentOffset:1 animated:{sub_1D7F5FCAC(v2), v18}];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v0 + 48);
      ObjectType = swift_getObjectType();
      (*(v16 + 8))(v0, ObjectType, v16);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D7F5FB3C(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = swift_unownedRetainStrong();
  a2(v3);
}

void sub_1D7F5FB80()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 adjustedContentInset];
    [v2 contentSize];
    v13.origin.x = v4;
    v13.origin.y = v6;
    v13.size.width = v8;
    v13.size.height = v10;
    CGRectGetHeight(v13);
    [v2 setContentOffset:1 animated:sub_1D7F5FCAC(v2)];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v0 + 48);
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(v0, ObjectType, v11);
      swift_unknownObjectRelease();
    }
  }
}

double sub_1D7F5FCAC(void *a1)
{
  [a1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [a1 adjustedContentInset];
  [a1 contentSize];
  v11.origin.x = v3;
  v11.origin.y = v5;
  v11.size.width = v7;
  v11.size.height = v9;
  CGRectGetHeight(v11);
  return 0.0;
}

uint64_t KeyCommandScrollProvider.deinit()
{
  sub_1D7E166A0(v0 + 16);
  MEMORY[0x1DA715E30](v0 + 32);
  sub_1D7E166A0(v0 + 40);
  return v0;
}

uint64_t KeyCommandScrollProvider.__deallocating_deinit()
{
  KeyCommandScrollProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D7F5FDD8(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7F60028;
}

void sub_1D7F5FE58()
{
  OUTLINED_FUNCTION_3_5();
  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

id sub_1D7F6005C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  type metadata accessor for ConfigurableSingleton();
  swift_initStaticObject();
  sub_1D7F6026C();
  sub_1D818EA44();

  (*(a2 + 24))(a1, a2);
  sub_1D818EA44();

  (*(a2 + 32))(a1, a2);
  sub_1D818EA44();

  return [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:v5 stiffness:v5 damping:v5 initialVelocity:{0.0, 0.0}];
}

double static SpringTimingSettings.durationParameter.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D7F6005C(a1, a2);
  [v2 ts_settlingDuration];
  v4 = v3;

  return v4;
}

unint64_t sub_1D7F6026C()
{
  result = qword_1ECA0E038;
  if (!qword_1ECA0E038)
  {
    type metadata accessor for ConfigurableSingleton();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E038);
  }

  return result;
}

Swift::Void __swiftcall DimContentSelectionStyle.select(_:isHighlighted:hasBeenTraversed:view:selectedBackgroundView:)(Swift::Bool _, Swift::Bool isHighlighted, Swift::Bool hasBeenTraversed, UIView *view, UIView *selectedBackgroundView)
{
  if (!_ || (v5[1] & 1) != 0)
  {
    [(UIView *)view setAlpha:hasBeenTraversed, view, selectedBackgroundView, 1.0];
    v12 = [(UIView *)view layer];
    [(CALayer *)v12 setShouldRasterize:0];
  }

  else
  {
    v7 = *v5;
    [(UIView *)view setAlpha:hasBeenTraversed, view, selectedBackgroundView, *v5];
    v8 = OUTLINED_FUNCTION_0_54();
    v9 = [(UIView *)view traitCollection];
    [v9 displayScale];
    v11 = v10;

    [v8 setRasterizationScale_];
    v12 = OUTLINED_FUNCTION_0_54();
    [(CALayer *)v12 setShouldRasterize:v7 != 1.0];
  }
}

Swift::Void __swiftcall DimContentSelectionStyle.didSetHighlighted(_:view:selectedBackgroundView:)(Swift::Bool _, UIView *view, UIView *selectedBackgroundView)
{
  v5 = *v3;
  if (!_)
  {
    v5 = 1.0;
  }

  [(UIView *)view setAlpha:selectedBackgroundView, v5];
  v6 = OUTLINED_FUNCTION_0_54();
  v7 = [(UIView *)view traitCollection];
  [v7 displayScale];
  v9 = v8;

  [v6 setRasterizationScale_];
  v11 = OUTLINED_FUNCTION_0_54();
  [(UIView *)view alpha];
  [v11 setShouldRasterize_];
}

uint64_t getEnumTagSinglePayload for DimContentSelectionStyle(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for DimContentSelectionStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

id sub_1D7F60630()
{
  result = [v0 isViewLoaded];
  if (result)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x250);

    return v2();
  }

  return result;
}

uint64_t sub_1D7F606B4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_16(OBJC_IVAR____TtC5TeaUI21SectionViewController_dataSource);
  OUTLINED_FUNCTION_56();
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_1D7F60630();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D7F60714(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  OUTLINED_FUNCTION_13_0(v3, OBJC_IVAR____TtC5TeaUI21SectionViewController_dataSource);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 8);
  v3[3] = Strong;
  v3[4] = v5;
  return OUTLINED_FUNCTION_20_10();
}

void sub_1D7F60784(void **a1, char a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_19_0();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1D7F60630();
  }

  free(v3);
}

uint64_t sub_1D7F60814()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D7F6085C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5TeaUI21SectionViewController_delegate;
  OUTLINED_FUNCTION_56();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D7F608C0(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  OUTLINED_FUNCTION_13_0(v3, OBJC_IVAR____TtC5TeaUI21SectionViewController_delegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 8);
  v3[3] = Strong;
  v3[4] = v5;
  return OUTLINED_FUNCTION_20_10();
}

void sub_1D7F60930(void **a1, char a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_19_0();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1D7F609AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

void sub_1D7F609F0()
{
  v1 = sub_1D7F61DF0();
  v2 = *&v1[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton];

  v3 = (v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController_barAnimationCoordinator);
  swift_beginAccess();
  if (*v3)
  {
    v4 = *(v3[1] + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = &v2[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationDelegate];
  swift_beginAccess();
  *(v5 + 1) = v4;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7F60AB0()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1D7F60AFC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_16(OBJC_IVAR____TtC5TeaUI21SectionViewController_barAnimationCoordinator);
  OUTLINED_FUNCTION_56();
  *v2 = a1;
  v2[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1D7F609F0();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D7F60B6C(uint64_t a1)
{
  OUTLINED_FUNCTION_15_12(a1);
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

void sub_1D7F60BFC()
{
  v1 = sub_1D7F61F54();
  v2 = OBJC_IVAR____TtC5TeaUI21SectionViewController_sectionTitleColor;
  swift_beginAccess();
  sub_1D7F820F4(*(v0 + v2));
}

id sub_1D7F60C60()
{
  v1 = OBJC_IVAR____TtC5TeaUI21SectionViewController_sectionTitleColor;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1D7F60CB0(void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI21SectionViewController_sectionTitleColor;
  OUTLINED_FUNCTION_56();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1D7F60BFC();
}

uint64_t sub_1D7F60D10(uint64_t a1)
{
  OUTLINED_FUNCTION_15_12(a1);
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t sub_1D7F60D74()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  swift_getObjectType();
  v1 = OUTLINED_FUNCTION_11_16();
  v2(v1);
  OUTLINED_FUNCTION_161();
  swift_unknownObjectRelease();
  return v0;
}

void sub_1D7F60DF8()
{
  v1 = sub_1D7F60EF0();
  sub_1D7F60E6C(v1);
  v2 = v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController_presentation;
  swift_beginAccess();
  if (*(v2 + 8) == 2)
  {
    v3 = sub_1D7F61F54();
    v4 = sub_1D7F60EF0();
    sub_1D7F8214C(v4, 1);
  }
}

void sub_1D7F60E6C(uint64_t a1)
{
  v2 = sub_1D7F6348C(a1);
  v7 = v3;
  v4 = *(v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController_currentSection);
  v5 = *(v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController_currentSection + 8);
  v6 = v5;
  sub_1D7F63540(v2, v7, v4, v5);
}

uint64_t sub_1D7F60EF0()
{

  sub_1D818F534();

  return v1;
}

void sub_1D7F60F3C()
{

  sub_1D818F544();

  sub_1D7F60DF8();
}

void (*sub_1D7F60F94(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1D7F60EF0();
  return sub_1D7F60FDC;
}

uint64_t sub_1D7F61000()
{

  v0 = sub_1D818F554();

  return v0;
}

double sub_1D7F61044@<D0>(uint64_t a1@<X8>)
{
  sub_1D7F6140C(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void sub_1D7F61088(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;
  sub_1D7F6146C(v5[0], v1, v2, v3);
  sub_1D7F614D0(v5);
}

void sub_1D7F610DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v3;
  v15 = v2;
  v4 = (v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController_presentation);
  swift_beginAccess();
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = *v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  sub_1D7F6146C(v9, v5, v6, v7);
  sub_1D7F61168(v14, &v9);
  sub_1D7F61578(v9, v10, v11, v12);
}

void sub_1D7F61168(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v4 == 1)
  {
    if (v6 == 1)
    {
      return;
    }

    sub_1D7F63DE4();
  }

  else if (v4 == 2)
  {
    if (v6 == 2)
    {
      return;
    }

    sub_1D7F63FE0();
  }

  else if (v4 != 3)
  {
    v9 = a1[2];
    if ((v6 - 1) >= 3)
    {
      if (v4)
      {
        if (v6)
        {
          if (*a1 == v5 && v4 == v6)
          {
            if (((v7 ^ v9) & 1) == 0)
            {
              return;
            }
          }

          else if ((sub_1D8192634() & 1) != 0 && ((v7 ^ v9) & 1) == 0)
          {
            return;
          }
        }

        v11 = (v7 ^ v9) & 1;
      }

      else
      {
        v11 = (v7 ^ v9) & 1;
        if (!(v6 | v11))
        {
          return;
        }
      }

      sub_1D7F6147C(v5, v6, v7, v8);
      sub_1D7E0E10C(v8);
      if (!v11)
      {
        v18 = sub_1D7F61DF0();
        v17 = &v18[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text];
        *v17 = v5;
        v17[1] = v6;

        sub_1D7F8B854();

        return;
      }
    }

    sub_1D7F63BA8(v9 & 1);
  }

  switch(v6)
  {
    case 1:

      sub_1D7F63E50();
      break;
    case 2:

      sub_1D7F64084();
      break;
    case 3:
      return;
    default:
      v12 = v2 + OBJC_IVAR____TtC5TeaUI21SectionViewController_dataSource;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 8);
        ObjectType = swift_getObjectType();
        v15 = (*(v13 + 8))(v2, ObjectType, v13);
        swift_unknownObjectRelease();
        if (v15 > 1 || v8 != 0)
        {
          goto LABEL_33;
        }
      }

      else if (v8)
      {
LABEL_33:
        v19 = BYTE1(v7);
        sub_1D7F636D4(v5, v6, v7 & 1, &v19);
      }

      break;
  }
}

void sub_1D7F6140C(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController_presentation);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  sub_1D7F6146C(v4, v5, v6, v7);
}

void sub_1D7F6146C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 3)
  {
    sub_1D7F6147C(a1, a2, a3, a4);
  }
}

void sub_1D7F6147C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 - 1) >= 2)
  {
    sub_1D8190DB4();

    sub_1D7E19F24(a4);
  }
}

void sub_1D7F614D0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController_presentation);
  OUTLINED_FUNCTION_56();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v10;
  v4[4] = v3;
  v11 = OUTLINED_FUNCTION_3_39();
  sub_1D7F6146C(v11, v12, v13, v14);
  v15 = OUTLINED_FUNCTION_3_39();
  sub_1D7F61578(v15, v16, v17, v18);
  v23[0] = v5;
  v23[1] = v6;
  v23[2] = v7;
  v23[3] = v8;
  v23[4] = v9;
  sub_1D7F610DC(v23);
  v19 = OUTLINED_FUNCTION_3_39();
  sub_1D7F61578(v19, v20, v21, v22);
}

void sub_1D7F61578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 3)
  {
    sub_1D7F61588(a1, a2, a3, a4);
  }
}

void sub_1D7F61588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 - 1) >= 2)
  {

    sub_1D7E0E10C(a4);
  }
}

uint64_t sub_1D7F615DC(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[8] = v1;
  v4 = (v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController_presentation);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  *v3 = *v4;
  v3[1] = v6;
  v3[2] = v7;
  v3[3] = v8;
  v3[4] = v9;
  sub_1D7F6146C(v5, v6, v7, v8);
  return OUTLINED_FUNCTION_20_10();
}

void sub_1D7F6166C(void **a1)
{
  v1 = *a1;
  v2 = OUTLINED_FUNCTION_5_23();
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v7;
  if (v6)
  {
    sub_1D7F6146C(v2, v3, v4, v5);
    sub_1D7F614D0(v12);
    v8 = OUTLINED_FUNCTION_5_23();
    sub_1D7F61578(v8, v9, v10, v11);
  }

  else
  {
    sub_1D7F614D0(v12);
  }

  free(v1);
}

void sub_1D7F616F0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D7F6180C(v1);
}

void sub_1D7F61720()
{
  v1 = v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController_presentation;
  swift_beginAccess();
  if (*(v1 + 8) == 1)
  {
    v2 = sub_1D7F61E68();
    v3 = OBJC_IVAR____TtC5TeaUI21SectionViewController_sectionBarTintColor;
    swift_beginAccess();
    v4 = *(v0 + v3);
    [v2 setBackgroundColor_];
  }
}

void *sub_1D7F617C4()
{
  v1 = OBJC_IVAR____TtC5TeaUI21SectionViewController_sectionBarTintColor;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1D7F6182C(uint64_t a1)
{
  OUTLINED_FUNCTION_15_12(a1);
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

void sub_1D7F61890(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D7F61B24(v1);
}

void sub_1D7F618C0()
{
  v1 = v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController_presentation;
  swift_beginAccess();
  if (*(v1 + 8) == 1)
  {
    v2 = OBJC_IVAR____TtC5TeaUI21SectionViewController_sectionBarTextColor;
    swift_beginAccess();
    v3 = *(v0 + v2);
    if (v3)
    {
      v4 = v3;
      v5 = sub_1D7F61E88();
      sub_1D7F66AB4(0, &qword_1EDBB2C30, sub_1D7F66EA4, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D819FAB0;
      v7 = *MEMORY[0x1E69DB650];
      *(inited + 32) = *MEMORY[0x1E69DB650];
      v8 = sub_1D7E0A1A8(0, &qword_1EDBB2F68);
      *(inited + 64) = v8;
      *(inited + 40) = v4;
      type metadata accessor for Key();
      sub_1D7F66F10(&qword_1EDBB30F0, type metadata accessor for Key);
      v9 = v7;
      v10 = v4;
      v11 = v9;
      v12 = sub_1D8190D94();
      sub_1D7F66BDC(v12, 0, v5);

      v13 = *(v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsSegmentedControl);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_1D819FAB0;
      *(v14 + 64) = v8;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v15 = v10;
      v16 = v13;
      v17 = sub_1D8190D94();
      sub_1D7F66BDC(v17, 4, v16);
    }
  }
}

void *sub_1D7F61ADC()
{
  v1 = OBJC_IVAR____TtC5TeaUI21SectionViewController_sectionBarTextColor;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1D7F61B44(uint64_t a1)
{
  OUTLINED_FUNCTION_15_12(a1);
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

void sub_1D7F61BA8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D7F61C88(v1);
}

void sub_1D7F61BD8()
{
  v1 = sub_1D7F61DF0();
  v2 = OBJC_IVAR____TtC5TeaUI21SectionViewController_barBackgroundColor;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = v3;
  sub_1D7F8B6D4(v3);
}

void *sub_1D7F61C40()
{
  v1 = OBJC_IVAR____TtC5TeaUI21SectionViewController_barBackgroundColor;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D7F61CA8(void *a1, uint64_t *a2, void (*a3)(void))
{
  v6 = *a2;
  OUTLINED_FUNCTION_56();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;

  a3();
}

uint64_t sub_1D7F61D14(uint64_t a1)
{
  OUTLINED_FUNCTION_15_12(a1);
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t sub_1D7F61D78(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_1D7F61DF0()
{
  v1 = OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsBarButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SectionViewBarButtonItem()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D7F61E88()
{
  v1 = OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsSegmentedControl;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsSegmentedControl);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsSegmentedControl);
  }

  else
  {
    v4 = sub_1D7F61EE8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D7F61EE8()
{
  v1 = sub_1D7F61E68();
  v2 = *&v1[OBJC_IVAR____TtC5TeaUI24SectionViewSegmentedView_segmentedControl];

  [v2 addTarget:v0 action:sel_doSegmentChangeWithSender_ forControlEvents:4096];
  return v2;
}

id sub_1D7F61F74(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(a2(0)) initWithFrame_];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id SectionViewController.init(toolbarManager:barCompressionManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI21SectionViewController_dataSource);
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI21SectionViewController_delegate);
  v8 = (v3 + OBJC_IVAR____TtC5TeaUI21SectionViewController_barAnimationCoordinator);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC5TeaUI21SectionViewController_sectionTitleColor;
  v10 = [objc_opt_self() labelColor];
  *(v4 + v9) = v10;
  v11 = OBJC_IVAR____TtC5TeaUI21SectionViewController__selectedSectionIndex;
  OUTLINED_FUNCTION_4_29(v10, &qword_1EDBB2030, MEMORY[0x1E69E6530]);
  swift_allocObject();
  *(v4 + v11) = sub_1D818F514();
  v12 = v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController_presentation;
  *v12 = xmmword_1D81A74D0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = 0;
  *(v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController_sectionBarTintColor) = 0;
  *(v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController_sectionBarTextColor) = 0;
  *(v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController_barBackgroundColor) = 0;
  v13 = (v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController_currentSection);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC5TeaUI21SectionViewController_scrollViewProxyManager;
  type metadata accessor for ScrollViewProxyManager();
  OUTLINED_FUNCTION_24_6();
  *(v4 + v14) = ScrollViewProxyManager.init()();
  *(v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsBarButtonItem) = 0;
  *(v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsSegmentedView) = 0;
  *(v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsSegmentedControl) = 0;
  *(v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionSelectorView) = 0;
  v15 = (v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController_toolbarManager);
  *v15 = a1;
  v15[1] = a2;
  *(v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController_barCompressionManager) = a3;
  type metadata accessor for SectionViewController();
  OUTLINED_FUNCTION_7();
  return objc_msgSendSuper2(v16, v17);
}

id SectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SectionViewController.init(coder:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI21SectionViewController_dataSource);
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI21SectionViewController_delegate);
  v2 = (v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController_barAnimationCoordinator);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC5TeaUI21SectionViewController_sectionTitleColor;
  v4 = [objc_opt_self() labelColor];
  *(v1 + v3) = v4;
  v5 = OBJC_IVAR____TtC5TeaUI21SectionViewController__selectedSectionIndex;
  OUTLINED_FUNCTION_4_29(v4, &qword_1EDBB2030, MEMORY[0x1E69E6530]);
  swift_allocObject();
  *(v1 + v5) = sub_1D818F514();
  v6 = v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController_presentation;
  *v6 = xmmword_1D81A74D0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController_sectionBarTintColor) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController_sectionBarTextColor) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController_barBackgroundColor) = 0;
  v7 = (v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController_currentSection);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC5TeaUI21SectionViewController_scrollViewProxyManager;
  type metadata accessor for ScrollViewProxyManager();
  OUTLINED_FUNCTION_24_6();
  *(v1 + v8) = ScrollViewProxyManager.init()();
  *(v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsSegmentedView) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsSegmentedControl) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionSelectorView) = 0;
  sub_1D81923A4();
  __break(1u);
}

uint64_t sub_1D7F62414()
{
  ObjectType = swift_getObjectType();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SectionViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_8();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D818F174();

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  OUTLINED_FUNCTION_161();
  sub_1D818ED84();
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  sub_1D7F66AB4(0, &qword_1EDBB2C70, sub_1D7E295E0, MEMORY[0x1E69E6F90]);
  v2 = OUTLINED_FUNCTION_24_6();
  *(v2 + 16) = xmmword_1D819FAB0;
  v3 = sub_1D818FF64();
  v4 = MEMORY[0x1E69DC130];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = ObjectType;
  sub_1D8191A24();
  swift_unknownObjectRelease();

  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x250))(v5);
}

void sub_1D7F6260C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    isEscapingClosureAtFileLocation = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC5TeaUI21SectionViewController_barCompressionManager);
    if (v6)
    {
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      v8[2] = v2;
      v8[3] = v6;
      v8[4] = isEscapingClosureAtFileLocation;
      v8[5] = v3;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1D7F66CB0;
      *(v9 + 24) = v8;
      aBlock[4] = sub_1D7EA8F68;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D7E74D74;
      aBlock[3] = &block_descriptor_74;
      v10 = _Block_copy(aBlock);
      v11 = v3;

      v12 = v6;
      v13 = v2;
      v14 = isEscapingClosureAtFileLocation;

      [v7 performWithoutAnimation_];

      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

uint64_t sub_1D7F627EC(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    sub_1D7FA697C(v5);
    sub_1D7F66CBC(a3, a2);
  }

  sub_1D7F62854(a2, 1);
  return sub_1D8191A14();
}

void sub_1D7F62854(void *a1, char a2)
{
  v3 = v2;
  if ((sub_1D8190B24() & 1) == 0)
  {
    v6 = [v3 traitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v7 == 2 || (a2 & 1) != 0)
    {
      swift_getObjectType();
      dynamic_cast_existential_1_unconditional(v3);
      v22 = v21;
      ObjectType = swift_getObjectType();
      v24 = (*(v22 + 8))(ObjectType, v22);
      if (v24)
      {
        v25 = v24;
        [v24 setNavigationBarHidden:0 animated:0];
      }

      v26 = _s5TeaUI12MastheadablePAASo16UIViewControllerCRbzrlE012mastheadViewE0AA08MastheadgE4Type_pSgvg_0();
      if (v26)
      {
        v28 = v26;
        v29 = v27;
        v30 = swift_getObjectType();
        (*(v29 + 8))(v30, v29);
      }

      if (a1)
      {
        swift_getObjectType();
        v31 = dynamic_cast_existential_1_unconditional(v3);
        v33 = v32;
        swift_beginAccess();

        v19 = a1;
        sub_1D818F154();

        v20 = v36;
        if (v36)
        {
          sub_1D7FA67FC(v36);
          v34 = swift_getObjectType();
          sub_1D7FA9488(v31, v19, v34, v33);
          goto LABEL_19;
        }

LABEL_20:

        v37.value.super.isa = [v3 traitCollection];
        isa = v37.value.super.isa;
        BarCompressionManager.traitCollectionDidChange(_:)(v37);
      }
    }

    else
    {
      if (v7 >= 2)
      {
        sub_1D81923A4();
        __break(1u);
        return;
      }

      swift_getObjectType();
      dynamic_cast_existential_1_unconditional(v3);
      v9 = v8;
      v10 = swift_getObjectType();
      v11 = (*(v9 + 8))(v10, v9);
      if (v11)
      {
        v12 = v11;
        [v11 setNavigationBarHidden:1 animated:0];
      }

      v13 = _s5TeaUI12MastheadablePAASo16UIViewControllerCRbzrlE012mastheadViewE0AA08MastheadgE4Type_pSgvg_0();
      if (v13)
      {
        v15 = v13;
        v16 = v14;
        v17 = swift_getObjectType();
        (*(v16 + 8))(v17, v16);
      }

      if (a1)
      {
        swift_getObjectType();
        v18 = dynamic_cast_existential_1_unconditional(v3);
        swift_beginAccess();
        v19 = a1;

        sub_1D818F154();

        v20 = v36;
        if (v36)
        {
          sub_1D7FA697C(v36);
          swift_getObjectType();
          sub_1D7FA9328(v18, v19);
LABEL_19:

          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }
  }
}

void sub_1D7F62C50()
{
  v36.receiver = v0;
  v36.super_class = type metadata accessor for SectionViewController();
  objc_msgSendSuper2(&v36, sel_viewWillLayoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC5TeaUI21SectionViewController_presentation];
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v2 = *(v1 + 1);
  if (v2 == 2)
  {
    v15 = sub_1D7F62E58();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = sub_1D7F61F54();
    [v22 frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v39.origin.x = v24;
    v39.origin.y = v26;
    v39.size.width = v28;
    v39.size.height = v30;
    v43.origin.x = v15;
    v43.origin.y = v17;
    v43.size.width = v19;
    v43.size.height = v21;
    if (CGRectEqualToRect(v39, v43))
    {
      return;
    }

    goto LABEL_7;
  }

  if (v2 == 1)
  {
    v3 = [v0 view];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 bounds];
    OUTLINED_FUNCTION_9_0();

    v37.origin.x = OUTLINED_FUNCTION_8_0();
    Width = CGRectGetWidth(v37);
    v6 = sub_1D7F61E68();
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v42.origin.x = 0.0;
    v42.origin.y = 0.0;
    v38.origin.x = v8;
    v38.origin.y = v10;
    v38.size.width = v12;
    v38.size.height = v14;
    v42.size.width = Width;
    v42.size.height = 44.0;
    if (!CGRectEqualToRect(v38, v42))
    {
LABEL_7:
      v31 = OUTLINED_FUNCTION_6_23();
      [v32 v33];
      v34 = UIViewController.effectiveNavigationItem.getter();
      v40.origin.x = OUTLINED_FUNCTION_6_23();
      [v34 ts:CGRectGetHeight(v40) setBottomPaletteMinimumHeight:?];

      v35 = UIViewController.effectiveNavigationItem.getter();
      v41.origin.x = OUTLINED_FUNCTION_6_23();
      [v35 ts:CGRectGetHeight(v41) setBottomPalettePreferredHeight:?];
    }
  }
}

double sub_1D7F62E58()
{
  v1 = sub_1D7F61F54();
  v2 = [v1 superview];

  if (!v2)
  {
    return 0.0;
  }

  [*(*(v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionSelectorView) + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_scrollView) contentSize];
  v3 = [v2 safeAreaLayoutGuide];
  [v3 layoutFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v32.origin.x = v5;
  v32.origin.y = v7;
  v32.size.width = v9;
  v32.size.height = v11;
  MinX = CGRectGetMinX(v32);
  v13 = [v2 safeAreaLayoutGuide];
  [v13 layoutFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v33.origin.x = v15;
  v33.origin.y = v17;
  v33.size.width = v19;
  v33.size.height = v21;
  CGRectGetMinY(v33);
  v22 = [v2 safeAreaLayoutGuide];
  [v22 layoutFrame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v34.origin.x = v24;
  v34.origin.y = v26;
  v34.size.width = v28;
  v34.size.height = v30;
  CGRectGetWidth(v34);

  return MinX;
}

void sub_1D7F63068()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController_dataSource;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  v6 = (v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController_currentSection);
  v7 = *(v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController_currentSection + 8);
  if (!v7)
  {
    if (v5 > 0)
    {
      v10 = sub_1D7F6348C(0);
      v12 = v13;
      goto LABEL_10;
    }

LABEL_9:
    v10 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v8 = *v6;
  if (*v6 >= v5)
  {
    goto LABEL_9;
  }

  v9 = v7;
  v10 = sub_1D7F6348C(v8);
  v12 = v11;

LABEL_10:
  v14 = *v6;
  v15 = v6[1];
  v16 = v15;
  sub_1D7F63540(v10, v12, v14, v15);

  v17 = (v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController_presentation);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v18 = v17[1];
  if (v18 != 1)
  {
    if (v18 == 2)
    {
      if (v5 < 2)
      {
        sub_1D7F63FE0();
      }

      else
      {
        sub_1D7F64084();
        v22 = sub_1D7F61F54();
        sub_1D7F824BC();

        v23 = OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionSelectorView;
        [*(v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionSelectorView) setNeedsLayout];
        v24 = *(v1 + v23);
        [v24 layoutIfNeeded];
      }
    }

    else if (v18 != 3)
    {
      v19 = *v17;
      v20 = v17[2];
      v21 = v17[3];
      if (v5 > 1 || v21)
      {
        v39 = BYTE1(v17[2]);
        sub_1D7F6147C(v19, v18, v20, v21);
        sub_1D7F636D4(v19, v18, v20 & 1, &v39);
        sub_1D7E0E10C(v21);

        return;
      }

      sub_1D7F6147C(*v17, v17[1], v17[2], 0);

      sub_1D7F63BA8(v20 & 1);
    }

    goto LABEL_33;
  }

  v25 = sub_1D7F61E88();
  [v25 removeAllSegments];

  v26 = OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsSegmentedControl;
  [*(v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsSegmentedControl) setSelectedSegmentIndex_];
  sub_1D7F63DE4();
  if (v5 < 2)
  {
LABEL_33:

    return;
  }

  v38 = v12;
  for (i = 0; i != v5; ++i)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v2 + 8);
      v29 = swift_getObjectType();
      (*(v28 + 16))(v1, i, v29, v28);
      v31 = v30;
      swift_unknownObjectRelease();
      v32 = *(v1 + v26);
      if (v31)
      {
        v33 = v32;
        v34 = sub_1D8190EE4();

        goto LABEL_25;
      }
    }

    else
    {
      v32 = *(v1 + v26);
    }

    v33 = v32;
    v34 = 0;
LABEL_25:
    [v33 insertSegmentWithTitle:v34 atIndex:i animated:{0, v38}];
  }

  if ((sub_1D8190B24() & 1) == 0)
  {
    v35 = sub_1D7F61E68();
    [v35 setNeedsLayout];

    [*(v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsSegmentedView) layoutIfNeeded];
  }

  if (v6[1])
  {
    v36 = *v6;
  }

  else
  {
    v36 = -1;
  }

  v37 = *(v1 + v26);
  [v37 setSelectedSegmentIndex_];

  [*(v1 + v26) setNeedsLayout];
  [*(v1 + v26) layoutIfNeeded];
  sub_1D7F63E50();
}

uint64_t sub_1D7F6348C(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  v2 = a1;
  v3 = v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController_dataSource;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v4 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  (*(v4 + 24))(v1, v2, ObjectType, v4);
  swift_unknownObjectRelease();
  return v2;
}

void sub_1D7F63540(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = (v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController_currentSection);
  v8 = *(v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController_currentSection + 8);
  *v7 = a1;
  v7[1] = a2;
  v9 = a2;

  if (a2)
  {
    if (a4)
    {
      if (a2 == a4)
      {
        return;
      }

      v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x258);
      v11 = v9;
      v14 = a4;
      v10(a2, a4);
    }

    else
    {
      v13 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x258);
      v14 = v9;
      v13(a2, 0);
    }
  }

  else
  {
    if (!a4)
    {
      return;
    }

    v12 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x258);
    v14 = a4;
    v12(0, a4);
  }
}

void sub_1D7F636D4(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v5 = v4;
  v9 = *a4;
  v48 = a3 & 1;
  v10 = UIViewController.effectiveNavigationItem.getter();
  v49 = v9;
  v50 = a3;
  if (a3)
  {
    v11 = sub_1D7E3443C(v10);
  }

  else
  {
    v11 = sub_1D7E38C7C(v10);
  }

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1D7E36AB8(v12);
  for (i = 0; v13 != i; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1DA714420](i, v12);
    }

    else
    {
      if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v15 = *(v12 + 8 * i + 32);
    }

    v16 = v15;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    v17 = sub_1D7F61DF0();

    if (v16 == v17)
    {

      return;
    }
  }

  v18 = sub_1D7F61DF0();
  v19 = &v18[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text];
  *v19 = a1;
  *(v19 + 1) = a2;

  sub_1D8190DB4();
  sub_1D7F8B854();

  v20 = sub_1D8190B24();
  v21 = *(v5 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsBarButtonItem);
  v22 = MEMORY[0x1E69E7C98];
  if (v20)
  {
    sub_1D7E0A1A8(0, &unk_1EDBB2FD0);
    v23 = v22;
    sub_1D7F661D0(0, &qword_1EDBB2BF0, v22 + 8, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D81A50A0;
    v25 = objc_opt_self();
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1D7F66F74;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7F65060;
    aBlock[3] = &block_descriptor_64;
    v27 = _Block_copy(aBlock);
    v28 = v21;

    v29 = [v25 elementWithUncachedProvider_];
    _Block_release(v27);
    *(v24 + 32) = v29;
    isa = UIMenu.init(children:)(v24).super.super.isa;
    [v28 setMenu_];
  }

  else
  {
    v23 = MEMORY[0x1E69E7C98];
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = v21;

    sub_1D7F8B72C(sub_1D7F66CA8, v31);
  }

  v33 = OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsBarButtonItem;
  *(*(v5 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsBarButtonItem) + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_position) = v48;
  sub_1D7F8BD38();
  v34 = *(v5 + v33);
  LOBYTE(aBlock[0]) = v49 & 1;
  v35 = v34;
  sub_1D7F8B77C(aBlock);

  v36 = UIViewController.effectiveNavigationItem.getter();
  if (v50)
  {
    sub_1D7F661D0(0, &qword_1EDBB2BF0, v23 + 8, MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D81A50A0;
    v38 = *(v5 + v33);
    *(v37 + 32) = v38;
    v39 = v38;
    v40 = UIViewController.effectiveNavigationItem.getter();
    v41 = sub_1D7E3443C(v40);
    if (!v41)
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    aBlock[0] = v37;
    sub_1D7E45B68(v41);
    sub_1D7F2F7EC(aBlock[0], v36);
  }

  else
  {
    v42 = UIViewController.effectiveNavigationItem.getter();
    v43 = sub_1D7E38C7C(v42);
    if (v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = MEMORY[0x1E69E7CC0];
    }

    sub_1D7F661D0(0, &qword_1EDBB2BF0, v23 + 8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D81A50A0;
    v46 = *(v5 + v33);
    *(inited + 32) = v46;
    aBlock[0] = v44;
    v47 = v46;
    sub_1D7E45B68(inited);
    sub_1D7F2F7F8(aBlock[0], v36);
  }
}

void sub_1D7F63BA8(char a1)
{
  v17 = UIViewController.effectiveNavigationItem.getter();
  v2 = UIViewController.effectiveNavigationItem.getter();
  if (a1)
  {
    v3 = sub_1D7E3443C(v2);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v18 = MEMORY[0x1E69E7CC0];
    v5 = sub_1D7E36AB8(v4);
    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {

        sub_1D7F2F7EC(v18, v17);
        goto LABEL_32;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA714420](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v9 = sub_1D7F61DF0();

      if (v8 == v9)
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
    v10 = sub_1D7E38C7C(v2);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v19 = MEMORY[0x1E69E7CC0];
    v12 = sub_1D7E36AB8(v11);
    for (j = 0; v12 != j; ++j)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1DA714420](j, v11);
      }

      else
      {
        if (j >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v14 = *(v11 + 8 * j + 32);
      }

      v15 = v14;
      if (__OFADD__(j, 1))
      {
        goto LABEL_36;
      }

      v16 = sub_1D7F61DF0();

      if (v15 == v16)
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    sub_1D7F2F7F8(v19, v17);
LABEL_32:
  }
}

void sub_1D7F63DE4()
{
  v0 = sub_1D8190B24();
  v1 = UIViewController.effectiveNavigationItem.getter();
  v3 = v1;
  v2 = &selRef_setTitleView_;
  if ((v0 & 1) == 0)
  {
    v2 = &selRef_ts_setBottomPaletteWithContentView_;
  }

  [v1 *v2];
}

void sub_1D7F63E50()
{
  if (sub_1D8190B24())
  {
    v1 = UIViewController.effectiveNavigationItem.getter();
    v2 = [v1 titleView];

    v3 = sub_1D7F61E88();
    if (v2)
    {

      if (v2 == v3)
      {
        return;
      }
    }

    v10 = UIViewController.effectiveNavigationItem.getter();
    [v10 setTitleView_];
  }

  else
  {
    v4 = sub_1D7F61E68();
    v5 = UIViewController.effectiveNavigationItem.getter();
    v6 = [v5 _bottomPalette];

    if (v6)
    {
      v7 = [v6 contentView];

      if (v4 == v7)
      {
        return;
      }
    }

    else
    {
    }

    v8 = UIViewController.effectiveNavigationItem.getter();
    [v8 ts:*(v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsSegmentedView) setBottomPaletteWithContentView:?];

    v9 = UIViewController.effectiveNavigationItem.getter();
    [v9 ts:44.0 setBottomPalettePreferredHeight:?];

    v10 = UIViewController.effectiveNavigationItem.getter();
    [v10 ts:44.0 setBottomPaletteMinimumHeight:?];
  }
}

void sub_1D7F63FE0()
{
  v1 = v0;
  v2 = sub_1D7F61F54();
  *&v2[OBJC_IVAR____TtC5TeaUI19SectionSelectorView_delegate + 8] = 0;
  swift_unknownObjectWeakAssign();

  v3 = *(v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionSelectorView);
  sub_1D7F8242C(0, 0);

  v4 = UIViewController.effectiveNavigationItem.getter();
  [v4 ts:0 setBottomPaletteWithContentView:?];
}

void sub_1D7F64084()
{
  v1 = v0;
  v2 = sub_1D7F61F54();
  v3 = UIViewController.effectiveNavigationItem.getter();
  v4 = [v3 _bottomPalette];

  if (v4)
  {
    v5 = [v4 contentView];

    if (v2 == v5)
    {
      return;
    }
  }

  else
  {
  }

  v6 = OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionSelectorView;
  *(*&v1[OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionSelectorView] + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_delegate + 8) = &off_1F52EC808;
  swift_unknownObjectWeakAssign();
  v7 = *&v1[v6];
  v8 = v1;
  sub_1D7F8242C(v1, &off_1F52EC7F0);

  v9 = UIViewController.effectiveNavigationItem.getter();
  [v9 ts:*&v1[v6] setBottomPaletteWithContentView:?];

  v10 = UIViewController.effectiveNavigationItem.getter();
  [*&v1[v6] frame];
  [v10 ts:CGRectGetHeight(v13) setBottomPaletteMinimumHeight:?];

  v11 = UIViewController.effectiveNavigationItem.getter();
  [*&v1[v6] frame];
  [v11 ts:CGRectGetHeight(v14) setBottomPalettePreferredHeight:?];
}

void sub_1D7F64224(void *a1, void *a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = a2;
    [v5 willMoveToParentViewController_];
    [v5 removeFromParentViewController];
    v6 = [v5 view];
    if (!v6)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v7 = v6;
    [v6 removeFromSuperview];

    [v5 didMoveToParentViewController_];
    OUTLINED_FUNCTION_7();
    swift_beginAccess();

    sub_1D818F154();

    if (v34)
    {
      ScrollViewProxyManager.restore(_:)(v34);
    }
  }

  if (!a1)
  {
    return;
  }

  v8 = a1;
  [v8 willMoveToParentViewController_];
  [v3 addChildViewController_];
  v9 = [v3 view];
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = v9;
  v11 = [v8 view];
  if (!v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = v11;
  [v10 insertSubview:v11 atIndex:0];

  v13 = [v8 view];
  if (!v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = v13;
  v15 = [v3 view];
  if (!v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  [v15 bounds];
  OUTLINED_FUNCTION_9_0();

  v17 = OUTLINED_FUNCTION_8_0();
  [v18 v19];

  v20 = [v8 view];
  if (!v20)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v21 = v20;
  [v20 setAutoresizingMask_];

  [v8 didMoveToParentViewController_];
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v8))
  {
    goto LABEL_15;
  }

  v23 = v22;
  ObjectType = swift_getObjectType();
  v25 = *(v23 + 16);
  v26 = v8;
  v25(&v34, ObjectType, v23);
  v27 = v34;
  if (v35)
  {
    sub_1D7E4E678(v34, 1);

LABEL_15:
    v28 = sub_1D809521C(v8);
    if (v28)
    {
      v30 = v28;
      v31 = v29;
      v32 = swift_getObjectType();
      v33 = (*(v31 + 96))(v32, v31);
      ScrollViewProxyManager.proxy(to:)(v33);
    }

    goto LABEL_18;
  }

  ScrollViewProxyManager.proxy(to:)(v27);
  sub_1D7E4E678(v27, 0);
LABEL_18:
}

void sub_1D7F64570(char a1, double a2)
{
  v5 = sub_1D8190B24();
  v6 = sub_1D7F61DF0();
  v9 = v6;
  if (v5)
  {
    [v6 setEnabled_];
  }

  else
  {
    v7 = *&v6[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton];

    [v7 setUserInteractionEnabled_];
    v9 = *(*(v2 + OBJC_IVAR____TtC5TeaUI21SectionViewController____lazy_storage___sectionsBarButtonItem) + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton);
    [v9 alpha];
    if (v8 != a2)
    {
      [v9 setAlpha_];
    }
  }
}

void sub_1D7F64668(void *a1)
{
  [a1 selectedSegmentIndex];

  sub_1D7F60F3C();
}

id sub_1D7F64700()
{
  result = sub_1D7F647BC();
  if (result)
  {
    v2 = result;
    v3 = [result navigationBar];

    if (v3)
    {
      if (([v3 isHidden] & 1) == 0)
      {
        v4 = [v0 traitCollection];
        v5 = [v4 horizontalSizeClass];

        if (v5 != 1)
        {
          v6 = objc_allocWithZone(type metadata accessor for MastheadTitleViewBarCompressionAnimator());
          v7 = OUTLINED_FUNCTION_161();
          return MastheadTitleViewBarCompressionAnimator.init(navigationBar:)(v7);
        }
      }
    }

    return 0;
  }

  return result;
}

id sub_1D7F647BC()
{
  type metadata accessor for SectionViewController();
  sub_1D7E0631C(0, &qword_1EDBB3500);
  v1 = v0;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v6, v8);
    v2 = v9;
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    if ((*(v3 + 32))(v2, v3))
    {
      v4 = 0;
    }

    else
    {
      v4 = [v1 navigationController];
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1D7F66B18(v6);
    return [v1 navigationController];
  }

  return v4;
}

void sub_1D7F648D8(char a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    *&v17 = OUTLINED_FUNCTION_5_23();
    *(&v17 + 1) = v1;
    v18 = v2;
    v19 = v3;
    v20 = v4;
    v13 = xmmword_1D81A74D0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    sub_1D7F6146C(v17, v1, v2, v3);
    sub_1D7F61168(&v17, &v13);
    v6 = *(&v17 + 1);
    v5 = v17;
    v7 = v18;
    v8 = v19;
  }

  else
  {
    v17 = xmmword_1D81A74D0;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    *&v13 = OUTLINED_FUNCTION_5_23();
    *(&v13 + 1) = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    sub_1D7F6146C(v13, v9, v10, v11);
    sub_1D7F61168(&v17, &v13);
    v6 = *(&v13 + 1);
    v5 = v13;
    v7 = v14;
    v8 = v15;
  }

  sub_1D7F61578(v5, v6, v7, v8);
}

id SectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7F64CA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_16(OBJC_IVAR____TtC5TeaUI21SectionViewController_dataSource);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v5 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 16))(v2, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

Swift::Void __swiftcall SectionViewController.mastheadDidTapCallToAction()()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI21SectionViewController_currentSection + 8);
  if (v1)
  {
    v5 = v1;
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v5))
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      (*(v3 + 24))(ObjectType, v3);
    }
  }
}

id SectionViewController.mastheadViewScrollBehavior.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController_currentSection + 8);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v4))
  {

LABEL_5:
    result = [objc_opt_self() clearColor];
    goto LABEL_6;
  }

  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 8))(&v9, ObjectType, v6);

  result = v9;
LABEL_6:
  *a1 = result;
  return result;
}

uint64_t SectionViewController.mastheadScrollView.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR____TtC5TeaUI21SectionViewController_scrollViewProxyManager);
  *(a1 + 8) = 1;
}

uint64_t sub_1D7F64EF4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = v6 + OBJC_IVAR____TtC5TeaUI21SectionViewController_presentation;
  swift_beginAccess();
  if ((*(v11 + 8) - 1) >= 3)
  {
    v13 = *(v11 + 24);
    sub_1D8190DB4();
    sub_1D7E19F24(v13);

    if (v13)
    {

      v12 = v13(v14);
      sub_1D7E0E10C(v13);
      sub_1D7E0E10C(v13);
      return v12;
    }

    if (sub_1D7F60D74() >= 2 && sub_1D7F65CEC(a5, a6))
    {
      sub_1D7E0A1A8(0, &unk_1EDBB2FD0);
      v16 = a4;
      sub_1D8190DB4();
      v17 = a3;
      return sub_1D8191C44();
    }
  }

  return 0;
}

uint64_t sub_1D7F65060(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = v3;

  v4 = OUTLINED_FUNCTION_20_10();
  v2(v4);
}

void sub_1D7F650EC(uint64_t a1, uint64_t a2)
{
  sub_1D7E0A1A8(0, &qword_1EDBB3208);
  v3 = sub_1D8191304();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_1D7F65168()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_1D7F64EF4(0, 0xE000000000000000, 0, 0, 0, 0);

  return v2;
}

Swift::Void __swiftcall SectionViewController.setSectionButton(isCollapsed:animated:)(Swift::Bool isCollapsed, Swift::Bool animated)
{
  v5 = &v2[OBJC_IVAR____TtC5TeaUI21SectionViewController_presentation];
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if ((*(v5 + 1) - 1) >= 3)
  {
    if (animated)
    {
      v6 = sub_1D7F61DF0();
      CollapsingButton.isCollapsed.setter(isCollapsed);
    }

    else
    {
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v2;
      *(v8 + 24) = isCollapsed;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1D7F661B8;
      *(v9 + 24) = v8;
      aBlock[4] = sub_1D7E74D6C;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D7E74D74;
      aBlock[3] = &block_descriptor_14;
      v10 = _Block_copy(aBlock);
      v11 = v2;

      [v7 performWithoutAnimation_];
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

void sub_1D7F653AC(uint64_t a1, char a2)
{
  v3 = sub_1D7F61DF0();
  CollapsingButton.isCollapsed.setter(a2);
}

void SectionViewController.configureToolbarItem(_:image:identifier:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = v3 + OBJC_IVAR____TtC5TeaUI21SectionViewController_dataSource;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_8;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  if ((*(v9 + 8))(v4, ObjectType, v9) < 1)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v35 = *(v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController_toolbarManager + 8);
    swift_getObjectType();
    aBlock = a1;
    v36 = *(v35 + 88);
    type metadata accessor for MenuToolbarItem();
    OUTLINED_FUNCTION_0_55();
    v39 = sub_1D7F66F10(v37, v38);
    v47 = OUTLINED_FUNCTION_18_11(v39, v40, v41, v42, v43, v44, v45, v46, v61, v62, a1);
    v36(v47);
    return;
  }

  v11 = sub_1D7F60EF0();
  v12 = (*(v9 + 16))(v4, v11, ObjectType, v9);
  v14 = v13;
  OUTLINED_FUNCTION_0_8();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = OUTLINED_FUNCTION_24_6();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v17 = a3;

  v18 = a2;
  v19 = sub_1D7F64EF4(0, 0xE000000000000000, a2, 0, sub_1D7F661C4, v16);

  if (v19)
  {
    v20 = *(v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController_toolbarManager + 8);
    v21 = swift_getObjectType();
    v70 = a1;
    aBlock = v19;
    v65 = v12;
    v66 = v14;
    v22 = *(v20 + 80);
    v23 = type metadata accessor for MenuToolbarItem();
    OUTLINED_FUNCTION_0_55();
    v26 = sub_1D7F66F10(v24, v25);
    v63 = v19;
    v22(&v70, &aBlock, v4, v23, v26, v21, v20);
    v27 = aBlock;

    if (sub_1D8190B24())
    {
      v28 = sub_1D7F61DF0();
      sub_1D7E0A1A8(0, &unk_1EDBB2FD0);
      sub_1D7F661D0(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1D81A50A0;
      v30 = objc_opt_self();
      OUTLINED_FUNCTION_0_8();
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v68 = sub_1D7F66220;
      v69 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v65 = 1107296256;
      v66 = sub_1D7F65060;
      v67 = &block_descriptor_19_0;
      v32 = _Block_copy(&aBlock);

      v33 = [v30 elementWithUncachedProvider_];
      _Block_release(v32);
      *(v29 + 32) = v33;
      isa = UIMenu.init(children:)(v29).super.super.isa;
      [v28 setMenu_];
    }

    swift_unknownObjectRelease();
  }

  else
  {

    v48 = *(v4 + OBJC_IVAR____TtC5TeaUI21SectionViewController_toolbarManager + 8);
    swift_getObjectType();
    aBlock = a1;
    v49 = *(v48 + 88);
    type metadata accessor for MenuToolbarItem();
    OUTLINED_FUNCTION_0_55();
    v52 = sub_1D7F66F10(v50, v51);
    v60 = OUTLINED_FUNCTION_18_11(v52, v53, v54, v55, v56, v57, v58, v59, v61, v62, a1);
    v49(v60);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D7F658B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = sub_1D8190BD4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8190C34();
  v26 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
    v25 = sub_1D8191AB4();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a3;
    v17[4] = a4;
    v17[5] = a5;
    aBlock[4] = sub_1D7F66A88;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7E64940;
    aBlock[3] = &block_descriptor_59;
    v18 = _Block_copy(aBlock);
    v24 = v12;
    v19 = v18;
    v20 = a5;
    v21 = v16;

    v22 = a4;

    sub_1D8190BF4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D7F66F10(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
    sub_1D7F66AB4(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D7EBCDB4();
    sub_1D8192004();
    v23 = v25;
    MEMORY[0x1DA713CE0](0, v14, v11, v19);
    _Block_release(v19);

    (*(v9 + 8))(v11, v8);
    return (*(v26 + 8))(v14, v24);
  }

  return result;
}

uint64_t sub_1D7F65BF4(void (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, OUTLINED_FUNCTION_7(), v8 = sub_1D7F64EF4(v4, v5, v6, v7, 0, 0), v3, v8))
  {
    v9 = [v8 children];

    sub_1D7E0A1A8(0, &qword_1EDBB3208);
    v10 = sub_1D8191314();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  a1(v10);
}

uint64_t sub_1D7F65CEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + OBJC_IVAR____TtC5TeaUI21SectionViewController_dataSource;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v5 + 8))(v2);
  if (v6 < 1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v7 = v6;
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D7F08E34();
  v8 = 0;
  v9 = v29;
  v24 = *(v5 + 16);
  do
  {
    v10 = v3;
    v11 = v3;
    v12 = v5;
    v13 = v24(v11, v8, ObjectType, v5);
    v15 = v14;
    v16 = *(v29 + 16);
    if (v16 >= *(v29 + 24) >> 1)
    {
      sub_1D7F08E34();
    }

    ++v8;
    *(v29 + 16) = v16 + 1;
    v17 = v29 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v15;
    v5 = v12;
    v3 = v10;
  }

  while (v7 != v8);
  v30 = MEMORY[0x1E69E7CC0];
  sub_1D81922A4();
  v28 = *(v9 + 16);
  sub_1D7E0A1A8(0, &qword_1EDBB2F18);
  v18 = 0;
  v19 = v9 + 40;
  do
  {
    if (v28 == v18)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v18 >= *(v9 + 16))
    {
      goto LABEL_17;
    }

    sub_1D8190DB4();
    sub_1D7F60EF0();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v18;
    v21[4] = a1;
    v21[5] = a2;
    sub_1D7E19F24(a1);
    sub_1D8191CF4();
    sub_1D8192274();
    sub_1D81922B4();
    sub_1D81922C4();
    sub_1D8192284();
    ++v18;
    v19 += 16;
  }

  while (v16 + 1 != v18);

  if (!(v30 >> 62))
  {
    sub_1D8190DB4();
    sub_1D81926A4();
    sub_1D7E0A1A8(0, &qword_1EDBB3208);
    swift_unknownObjectRelease();

    return v30;
  }

LABEL_18:
  sub_1D7E0A1A8(0, &qword_1EDBB3208);
  sub_1D8190DB4();
  v22 = sub_1D81923B4();
  swift_unknownObjectRelease();
  swift_bridgeObjectRelease_n();
  return v22;
}

void sub_1D7F66078(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1D7F60F3C();
    v8 = &v7[OBJC_IVAR____TtC5TeaUI21SectionViewController_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 1);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(v7, a3, ObjectType, v9);
      swift_unknownObjectRelease();
    }

    if (a4)
    {
      a4(a3);
    }
  }
}

char *SectionViewController.responder.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI21SectionViewController_currentSection + 8];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC5TeaUI21SectionViewController_currentSection + 8];
  }

  else
  {
    v2 = v0;
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

void sub_1D7F661D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7F66AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7F66B18(uint64_t a1)
{
  sub_1D7F66B74();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7F66B74()
{
  if (!qword_1EDBB34F8)
  {
    sub_1D7E0631C(255, &qword_1EDBB3500);
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB34F8);
    }
  }
}

void sub_1D7F66BDC(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for Key();
  sub_1D7F66F10(&qword_1EDBB30F0, type metadata accessor for Key);
  v5 = sub_1D8190D44();

  [a3 setTitleTextAttributes:v5 forState:a2];
}

void sub_1D7F66CBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation);
  if (v3 && ([v3 respondsToSelector_] & 1) != 0)
  {
    [v3 detached];
  }

  v4 = *(a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation);
  if (v4 && ([*(a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation) respondsToSelector_] & 1) != 0)
  {
    [v4 detached];
  }

  v5 = *(a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation);
  if (v5 && ([*(a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation) respondsToSelector_] & 1) != 0)
  {
    [v5 detached];
  }

  sub_1D7FA62A0();
  sub_1D7FA62AC();
  sub_1D7FA639C();
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_sceneStateManager), *(a2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_sceneStateManager + 24));
  sub_1D7F66F10(&qword_1EDBB93E8, type metadata accessor for BarCompressionManager);
  sub_1D818F634();
  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver:a2 name:*MEMORY[0x1E69DDA58] object:0];
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

void sub_1D7F66EA4()
{
  if (!qword_1EDBB30C0)
  {
    type metadata accessor for Key();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBB30C0);
    }
  }
}

uint64_t sub_1D7F66F10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OnboardingConfiguration.init(steps:presentationStyle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void OnboardingConfiguration.hasStepsToShow.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = *(*v0 + 16);
  v4 = *v0 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v3 == v1)
    {

      return;
    }

    if (v1 >= *(v2 + 16))
    {
      break;
    }

    sub_1D7E0E768(v4, &v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, v13);
    if ((*(v7 + 8))(v6, v7))
    {
      sub_1D7E05450(&v12, v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D7F08EF4(0, *(v5 + 16) + 1, 1);
        v5 = v15;
      }

      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D7F08EF4(v9 > 1, v10 + 1, 1);
        v5 = v15;
      }

      *(v5 + 16) = v10 + 1;
      sub_1D7E05450(v11, v5 + 40 * v10 + 32);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v12);
    }

    v4 += 40;
    ++v1;
  }

  __break(1u);
}

uint64_t sub_1D7F670F0(uint64_t *a1, int a2)
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

uint64_t sub_1D7F67130(uint64_t result, int a2, int a3)
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

void sub_1D7F6717C()
{
  if (*(v0 + 24) == 1)
  {
    swift_getWitnessTable();
    sub_1D8190304();
    sub_1D8190314();
  }
}

uint64_t sub_1D7F6721C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = sub_1D8191E84();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *(v1 + 128);
  swift_beginAccess();
  (*(v4 + 16))(v6, v0 + v7, v3);
  result = __swift_getEnumTagSinglePayload(v6, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    swift_getWitnessTable();
    sub_1D818ECD4();

    return (*(*(v2 - 8) + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1D7F673E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  v4 = sub_1D8191E84();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D7F67490(uint64_t a1)
{
  sub_1D7F6717C();
  v3 = *(*v1 + 128);
  swift_beginAccess();
  v4 = sub_1D8191E84();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_1D7F6721C();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_1D7F675C0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  *(v1 + 24) = 1;
  __swift_storeEnumTagSinglePayload(v1 + v3[16], 1, 1, v4);
  *(v1 + 16) = a1;
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v3[10];
  v9[3] = v4;
  v9[4] = v3[12];
  v9[5] = v3[13];
  v9[6] = v8;

  swift_getWitnessTable();
  sub_1D818EA54();

  (*(v5 + 8))(v7, v4);

  return v1;
}

uint64_t sub_1D7F677F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v30 = a3;
  v9 = sub_1D8190BD4();
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8190C34();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1D8191E84();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v28 - v19;
  if ([objc_opt_self() isMainThread])
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v15 + 16))(v20, a1, a4);
      __swift_storeEnumTagSinglePayload(v20, 0, 1, a4);
      sub_1D7F67490(v20);
    }
  }

  else
  {
    sub_1D7E11E0C();
    v29 = sub_1D8191AB4();
    (*(v15 + 16))(&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
    v22 = (*(v15 + 80) + 56) & ~*(v15 + 80);
    v23 = swift_allocObject();
    v24 = v31;
    *(v23 + 2) = v30;
    *(v23 + 3) = a4;
    v25 = v32;
    *(v23 + 4) = v24;
    *(v23 + 5) = v25;
    *(v23 + 6) = a2;
    (*(v15 + 32))(&v23[v22], &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
    aBlock[4] = sub_1D7F68CEC;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7E64940;
    aBlock[3] = &block_descriptor_15;
    v26 = _Block_copy(aBlock);

    sub_1D8190BF4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D7E28784(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
    sub_1D7E2885C();
    sub_1D7E28784(&qword_1EDBB3340, sub_1D7E2885C);
    sub_1D8192004();
    v27 = v29;
    MEMORY[0x1DA713CE0](0, v14, v11, v26);
    _Block_release(v26);

    (*(v35 + 8))(v11, v9);
    return (*(v33 + 8))(v14, v34);
  }

  return result;
}

uint64_t sub_1D7F67C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D8191E84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*(a4 - 8) + 16))(v8, a2, a4);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, a4);
    sub_1D7F67490(v8);
  }

  return result;
}

uint64_t sub_1D7F67D6C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = sub_1D8191E84();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = *(v1 + 128);
  swift_beginAccess();
  (*(v4 + 16))(v9, &v0[v10], v3);
  LODWORD(v10) = __swift_getEnumTagSinglePayload(v9, 1, v2);
  result = (*(v4 + 8))(v9, v3);
  if (v10 == 1)
  {
    v0[24] = 0;

    swift_getWitnessTable();
    sub_1D818EA44();

    __swift_storeEnumTagSinglePayload(v6, 0, 1, v2);
    result = sub_1D7F67490(v6);
    v0[24] = 1;
  }

  return result;
}

uint64_t sub_1D7F67F74()
{

  v1 = *(*v0 + 128);
  v2 = sub_1D8191E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1D7F68008()
{
  sub_1D7F67F74();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7F6805C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8190304();
  *a1 = result;
  return result;
}

uint64_t sub_1D7F68138(__n128 *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v8;
  v11 = v8[1];
  v12 = *(v8 + 16);
  v13 = OUTLINED_FUNCTION_4_30(a1[1], a1, a2, a3, a4, a5, a6, a7, a8, v16);
  OUTLINED_FUNCTION_0_56();
  WitnessTable = swift_getWitnessTable();
  return a2(v10, v11, v12, v13, WitnessTable);
}

uint64_t UISettingProperty.wrappedValue.getter@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1].n128_i64[0];
  v5 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  v22[2] = OUTLINED_FUNCTION_6_24();
  v23 = v11;
  OUTLINED_FUNCTION_1_44();
  v19 = sub_1D7F68138(a1, v12, v13, v14, v15, v16, v17, v18);
  v20 = *(*v19 + 128);
  swift_beginAccess();
  (*(v7 + 16))(v10, v19 + v20, v5);

  result = __swift_getEnumTagSinglePayload(v10, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(a2, v10, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7F68374(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = v11 - v4;
  (*(v6 + 16))(v11 - v4, v3);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v11[1] = *a2;
  v11[2] = v7;
  v12 = v8;
  OUTLINED_FUNCTION_0_21();
  v9 = type metadata accessor for UISettingProperty();
  UISettingProperty.wrappedValue.setter(v5, v9);
  return sub_1D7F15FF4();
}

uint64_t UISettingProperty.wrappedValue.setter(uint64_t a1, __n128 *a2)
{
  v4 = a2[1].n128_i64[0];
  v5 = sub_1D8191E84();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v18 = OUTLINED_FUNCTION_6_24();
  v19 = v8;
  OUTLINED_FUNCTION_1_44();
  sub_1D7F68138(a2, v9, v10, v11, v12, v13, v14, v15);
  v16 = *(v4 - 8);
  (*(v16 + 16))(v7, a1, v4);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v4);
  sub_1D7F67490(v7);

  return (*(v16 + 8))(a1, v4);
}

void (*UISettingProperty.wrappedValue.modify(void *a1, __n128 *a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[3] = a2;
  v5[4] = a2[1].n128_u64[0];
  OUTLINED_FUNCTION_2();
  *(v6 + 40) = v7;
  v9 = *(v8 + 64);
  v5[6] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = *v2;
  v12 = v2[1];
  v5[7] = v10;
  v5[8] = v11;
  v5[9] = v12;
  v13 = *(v2 + 16);
  *(v5 + 17) = v13;
  *v5 = v11;
  v5[1] = v12;
  *(v5 + 16) = v13;
  UISettingProperty.wrappedValue.getter(a2, v10);
  return sub_1D7F6868C;
}

void sub_1D7F6868C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[3];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    OUTLINED_FUNCTION_2_44();
    OUTLINED_FUNCTION_0_21();
    UISettingProperty.wrappedValue.setter(v3, v7);
    OUTLINED_FUNCTION_2_44();
    sub_1D7F15FF4();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = v2[3];
    OUTLINED_FUNCTION_2_44();
    OUTLINED_FUNCTION_0_21();
    UISettingProperty.wrappedValue.setter(v4, v8);
    OUTLINED_FUNCTION_2_44();
    sub_1D7F15FF4();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t UISettingProperty.projectedValue.getter(float64x2_t *a1)
{
  v14 = OUTLINED_FUNCTION_6_24();
  v15 = v2;
  sub_1D7F68138(v3, MEMORY[0x1E697DD38], v4, v5, v6, v7, v8, v9);
  v12 = a1[1];
  swift_getKeyPath();
  v10 = &v13;
  v16.val[0] = v12;
  v16.val[1] = v12;
  vst2q_f64(v10, v16);
  type metadata accessor for UISettingProperty.Storage();
  OUTLINED_FUNCTION_0_56();
  swift_getWitnessTable();
  sub_1D81903E4();
}

uint64_t sub_1D7F68874@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 128);
  swift_beginAccess();
  v5 = sub_1D8191E84();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1D7F68918(uint64_t a1)
{
  v2 = sub_1D8191E84();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_1D7F67490(v5);
}

uint64_t UISettingProperty.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  OUTLINED_FUNCTION_4_30(*(*a1 + *MEMORY[0x1E69D6EB8]), a1, a2, a3, a4, a5, a6, a7, a8, v13);
  OUTLINED_FUNCTION_0_56();
  swift_getWitnessTable();
  result = sub_1D8190344();
  *a9 = result;
  *(a9 + 8) = v11;
  *(a9 + 16) = v12 & 1;
  return result;
}

uint64_t sub_1D7F68AAC(void *a1)
{
  v5.val[0] = *(*a1 + *MEMORY[0x1E69D6EB8]);
  v5.val[1] = v5.val[0];
  v1 = &v4;
  vst2q_f64(v1, v5);
  type metadata accessor for UISettingProperty.Storage();

  return sub_1D7F67584(v2);
}

Swift::Void __swiftcall UISettingProperty.update()()
{
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_1_44();
  sub_1D7F68138(v0, v1, v2, v3, v4, v5, v6, v7);
  sub_1D7F67D6C();
}

uint64_t sub_1D7F68BA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D7F68C08()
{
  result = sub_1D8191E84();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

TeaUI::SharingPlainTextBuilder __swiftcall SharingPlainTextBuilder.init()()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  return result;
}

Swift::String __swiftcall SharingPlainTextBuilder.toString()()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D8190DB4();
  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t SharingPlainTextBuilder.appendParagraph(_:)(uint64_t a1)
{
  v10 = 10;
  v11 = 0xE100000000000000;
  sub_1D7F425AC(a1, v7);
  v1 = v8;
  if (v8)
  {
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = (*(v2 + 64))(v1, v2);
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_1D7F426C4(v7);
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1DA713260](v3, v5);

  MEMORY[0x1DA713260](10, 0xE100000000000000);
  MEMORY[0x1DA713260](v10, v11);
}

Swift::Void __swiftcall SharingPlainTextBuilder.appendParagraphText(_:)(Swift::String a1)
{
  MEMORY[0x1DA713260](a1._countAndFlagsBits, a1._object);
  MEMORY[0x1DA713260](10, 0xE100000000000000);
  MEMORY[0x1DA713260](10, 0xE100000000000000);
}

Swift::Void __swiftcall SharingPlainTextBuilder.appendLink(_:withURL:)(Swift::String _, Swift::String withURL)
{
  object = withURL._object;
  countAndFlagsBits = withURL._countAndFlagsBits;
  v4 = HIBYTE(_._object) & 0xF;
  if ((_._object & 0x2000000000000000) == 0)
  {
    v4 = _._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || ((v5 = _._object, v6 = _._countAndFlagsBits, _._countAndFlagsBits == withURL._countAndFlagsBits) ? (v7 = _._object == withURL._object) : (v7 = 0), v7 || (sub_1D8192634() & 1) != 0))
  {

    JUMPOUT(0x1DA713260);
  }

  sub_1D8190DB4();
  MEMORY[0x1DA713260](2108704, 0xE300000000000000);
  MEMORY[0x1DA713260](countAndFlagsBits, object);
  MEMORY[0x1DA713260](v6, v5);
}

uint64_t sub_1D7F6900C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id TabBarSplitViewController.isImmersiveSidebarAllowed.getter()
{
  result = [v0 viewIfLoaded];
  if (result)
  {
    v2 = result;
    [result bounds];
    Width = CGRectGetWidth(v5);
    [v2 bounds];
    if (Width / CGRectGetHeight(v6) >= 0.8)
    {

      return 0;
    }

    else
    {
      v4 = [v0 isCollapsed];

      return (v4 ^ 1);
    }
  }

  return result;
}

TeaUI::TabBarSplitViewController::Options sub_1D7F69148@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = TabBarSplitViewController.Options.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D7F69188@<X0>(uint64_t *a1@<X8>)
{
  result = TabBarSplitViewController.Options.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D7F691FC()
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](0);
  return sub_1D8192824();
}

uint64_t sub_1D7F69248(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_1D7F692D0(v2, v1);
}

uint64_t sub_1D7F69284()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D7F692D0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_extendedDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D7F6933C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_extendedDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D7F18A1C;
}

char *TabBarSplitViewController.__allocating_init(tabBarController:options:commandContainer:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  v7 = OUTLINED_FUNCTION_47();
  return TabBarSplitViewController.init(tabBarController:options:commandContainer:)(v7, a2, a3);
}

char *TabBarSplitViewController.init(tabBarController:options:commandContainer:)(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a2;
  *(v3 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_extendedDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_eventManager;
  sub_1D7F75A0C();
  OUTLINED_FUNCTION_8_5();
  *(v3 + v8) = sub_1D818EF74();
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D818EE84();
  sub_1D818EE84();
  sub_1D818EE84();
  *(v3 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_fullscreenTransitionCoverManager) = 0;
  *(v3 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_appearanceViewControllers) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_restoreStateCache;
  sub_1D7F75ABC();
  OUTLINED_FUNCTION_8_5();
  *(v3 + v9) = sub_1D818FC84();
  *(v3 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_hasPerformedInitialLayout) = 0;
  v10 = (v3 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_secondaryNavigationControllerIdentifierBeforeCollapse);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_overlayToolbar;
  *(v4 + v11) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD180]), sel_initWithFrame_);
  *(v4 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_options) = v7;
  *(v4 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_commands) = a3;
  *(v4 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_splitViewFocus) = 1;
  v34 = type metadata accessor for TabBarSplitViewController();

  OUTLINED_FUNCTION_7();
  v14 = objc_msgSendSuper2(v12, v13, v4, v34);
  [v14 setDelegate_];
  v15 = sub_1D7F697D8();
  TabBarController.revoke(tabBarNavigationController:shouldSelectPrimary:)(v15, 1);
  v16 = [a1 tabBar];
  [v16 setHidden_];

  v17 = TabBarController.primaryTabBarNavigationController.getter();
  [v17 setHidesBottomBarWhenPushed_];

  if (v7)
  {
    [v14 ts:1 setPrefersOverlayInRegularWidthPhone:?];
    v18 = [v14 displayModeButtonItem];
    v19 = [v18 target];
    swift_unknownObjectRelease();
  }

  v20 = objc_allocWithZone(type metadata accessor for TabBarContainerController());
  v21 = a1;
  v22 = sub_1D814C600(v21);
  OUTLINED_FUNCTION_0_57();
  v23 = OUTLINED_FUNCTION_27_7();
  sub_1D7E71FB0(v23, v24, v25, v26);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D81A5090;
  *(v27 + 32) = v22;
  *(v27 + 40) = v15;
  v28 = v22;
  v29 = v15;
  v30 = sub_1D8191304();

  [v14 setViewControllers_];

  OUTLINED_FUNCTION_0_8();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for FullscreenTransitionCoverManager();
  swift_allocObject();

  v32 = FullscreenTransitionCoverManager.init(_:)(sub_1D7F765E8, v31);

  *&v14[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_fullscreenTransitionCoverManager] = v32;

  return v14;
}

uint64_t sub_1D7F697D8()
{
  v0 = TabBarController.tabBarNavigationControllers.getter();
  v1 = sub_1D7E36AB8(v0);
  v2 = 0;
  v3 = v0 & 0xC000000000000001;
  while (v1 != v2)
  {
    sub_1D7E33DD8(v2, v3 == 0, v0);
    if (v3)
    {
      v4 = MEMORY[0x1DA714420](v2, v0);
    }

    else
    {
      v4 = *(v0 + 8 * v2 + 32);
    }

    if (__OFADD__(v2, 1))
    {
      __break(1u);
      break;
    }

    v5 = v4;
    v6 = TabBarController.primaryTabBarNavigationController.getter();

    if (v5 != v6)
    {

      return v5;
    }

    ++v2;
  }

  result = sub_1D81923A4();
  __break(1u);
  return result;
}

id sub_1D7F698FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong viewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v3 = sub_1D8191314();

  v4 = sub_1D7E36AB8(v3);

  if (v4 < 2)
  {

    return 0;
  }

  v5 = [v1 viewControllers];
  v6 = sub_1D8191314();

  sub_1D7E33DD8(1, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1DA714420](1, v6);
  }

  else
  {
    v7 = *(v6 + 40);
  }

  v8 = v7;

  return v8;
}

id TabBarSplitViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TabBarSplitViewController.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_extendedDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_eventManager;
  sub_1D7F75A0C();
  OUTLINED_FUNCTION_8_5();
  *(v0 + v2) = sub_1D818EF74();
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D818EE84();
  sub_1D818EE84();
  sub_1D818EE84();
  *(v0 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_fullscreenTransitionCoverManager) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_appearanceViewControllers) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_restoreStateCache;
  sub_1D7F75ABC();
  OUTLINED_FUNCTION_8_5();
  *(v0 + v3) = sub_1D818FC84();
  *(v0 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_hasPerformedInitialLayout) = 0;
  v4 = (v0 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_secondaryNavigationControllerIdentifierBeforeCollapse);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_overlayToolbar;
  *(v1 + v5) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD180]), sel_initWithFrame_);
  sub_1D81923A4();
  __break(1u);
}

id TabBarSplitViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    sub_1D8190EE4();
    OUTLINED_FUNCTION_47();
  }

  else
  {
    v3 = 0;
  }

  v6 = [objc_allocWithZone(v4) initWithNibName:v3 bundle:a3];

  return v6;
}

id TabBarSplitViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStyle_];
}

id TabBarSplitViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabBarSplitViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TabBarSplitViewController.loadView()()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TabBarSplitViewController();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 lightGrayColor];
    v5 = [v3 separatorColor];
    v6 = [v3 ts:v4 dynamicColor:v5 withDarkStyleVariant:?];

    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1D7F6A060()
{
  v0 = OUTLINED_FUNCTION_40_4();
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  OUTLINED_FUNCTION_31();
  v1 = sub_1D8191314();

  v2 = sub_1D7E36AB8(v1);

  v3 = OUTLINED_FUNCTION_40_4();
  v4 = sub_1D8191314();

  if (v2 < 2)
  {
    if (!sub_1D7E36AB8(v4))
    {

      return 0;
    }

    sub_1D7E33DD8(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) == 0)
    {
      v5 = *(v4 + 32);
      goto LABEL_7;
    }

    v9 = 0;
LABEL_13:
    v6 = MEMORY[0x1DA714420](v9, v4);
    goto LABEL_8;
  }

  sub_1D7E33DD8(1, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v9 = 1;
    goto LABEL_13;
  }

  v5 = *(v4 + 40);
LABEL_7:
  v6 = v5;
LABEL_8:
  v7 = v6;

  return v7;
}

uint64_t TabBarSplitViewController.viewControllers.getter()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TabBarSplitViewController();
  v1 = objc_msgSendSuper2(&v4, sel_viewControllers);
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  OUTLINED_FUNCTION_25();
  v2 = sub_1D8191314();

  return v2;
}

uint64_t TabBarSplitViewController.viewControllers.setter()
{
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  OUTLINED_FUNCTION_25();
  v1 = sub_1D8191304();

  v3.receiver = v0;
  v3.super_class = type metadata accessor for TabBarSplitViewController();
  objc_msgSendSuper2(&v3, sel_setViewControllers_, v1);

  return sub_1D7F6A37C();
}

uint64_t sub_1D7F6A37C()
{
  sub_1D7F6A444();
  v1 = [v0 viewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v2 = sub_1D8191314();

  result = sub_1D7E36AB8(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA714420](i, v2);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1D7F6A444()
{
  if (![v0 isViewLoaded])
  {
    return;
  }

  v2 = OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_appearanceViewControllers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = sub_1D7E36AB8(v3);
  if (v4)
  {
    v5 = v4;
    if (v4 < 1)
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_1D8190DB4();
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA714420](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      [v7 ts:0 setAppearanceTransitionsAreDisabled:?];
    }
  }

  *(v0 + v2) = MEMORY[0x1E69E7CC0];

  v1 = &off_1E84F7000;
  v9 = [v0 viewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v0 = sub_1D8191314();

  if (!sub_1D7E36AB8(v0))
  {

    return;
  }

  sub_1D7E33DD8(0, (v0 & 0xC000000000000001) == 0, v0);
  if ((v0 & 0xC000000000000001) == 0)
  {
    v10 = *(v0 + 32);
    goto LABEL_13;
  }

LABEL_28:
  v10 = MEMORY[0x1DA714420](0, v0);
LABEL_13:
  v11 = v10;

  type metadata accessor for TabBarContainerController();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

    return;
  }

  v13 = *(v12 + OBJC_IVAR____TtC5TeaUI25TabBarContainerController_rootViewController);
  v14 = TabBarController.viewControllers.getter();
  if (v14)
  {
    v15 = v14;
    if (sub_1D7E36AB8(v14))
    {
      sub_1D7E33DD8(0, (v15 & 0xC000000000000001) == 0, v15);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1DA714420](0, v15);
      }

      else
      {
        v16 = *(v15 + 32);
      }

      v17 = v16;

      [v17 ts:1 setAppearanceTransitionsAreDisabled:?];
      goto LABEL_23;
    }
  }

  v17 = 0;
LABEL_23:
  v18 = v13;
  [v18 setSelectedViewController_];
  v19 = TabBarController.primaryTabBarNavigationController.getter();
  [v18 setSelectedViewController_];

  v20 = [v18 tabBar];
  [v20 setHidden_];

  v21 = TabBarController.primaryTabBarNavigationController.getter();
  [v21 setHidesBottomBarWhenPushed_];

  v22 = TabBarController.primaryTabBarNavigationController.getter();
  v25.receiver = v22;
  v25.super_class = type metadata accessor for TabBarNavigationController();
  v23 = objc_msgSendSuper2(&v25, v1[311]);
  sub_1D8191314();

  v24 = TabBarController.primaryTabBarNavigationController.getter();
  TabBarNavigationController.viewControllers.setter();

  if (v17)
  {
    [v17 ts:0 setAppearanceTransitionsAreDisabled:?];
  }
}

id TabBarSplitViewController.preferredDisplayMode.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabBarSplitViewController();
  return objc_msgSendSuper2(&v2, sel_preferredDisplayMode);
}

void TabBarSplitViewController.preferredDisplayMode.setter()
{
  OUTLINED_FUNCTION_76_0();
  v2.receiver = v1;
  v2.super_class = type metadata accessor for TabBarSplitViewController();
  objc_msgSendSuper2(&v2, sel_setPreferredDisplayMode_, v0);
  sub_1D7F6A8A8();
}

void sub_1D7F6A8A8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v17 = [v1 window];

    if (v17)
    {
      if (![v0 preferredDisplayMode])
      {
        v3 = [objc_opt_self() mainScreen];
        [v3 bounds];
        v5 = v4;
        v7 = v6;
        v9 = v8;
        v11 = v10;

        [v17 bounds];
        v20.origin.x = v12;
        v20.origin.y = v13;
        v20.size.width = v14;
        v20.size.height = v15;
        v19.origin.x = v5;
        v19.origin.y = v7;
        v19.size.width = v9;
        v19.size.height = v11;
        if (!CGRectEqualToRect(v19, v20))
        {
          if (TabBarSplitViewController.isImmersiveSidebarAllowed.getter())
          {
            v16 = 1;
          }

          else
          {
            v16 = 2;
          }

          [v0 setPreferredDisplayMode_];
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall TabBarSplitViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_113();
  v3 = sub_1D818F5F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_14();
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TabBarSplitViewController();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_);
  OUTLINED_FUNCTION_3_40();
  v5 = OUTLINED_FUNCTION_13_12();
  sub_1D7F76D38(v5, v6, v7, v8);
  *(swift_allocObject() + 16) = xmmword_1D819FAC0;
  sub_1D818F5E4();
  sub_1D818F5D4();
  OUTLINED_FUNCTION_2_45();
  v11 = sub_1D7E2D284(v9, v10);
  OUTLINED_FUNCTION_5_24(v11, &qword_1EDBB33C8);
  sub_1D7E26188();
  OUTLINED_FUNCTION_21_9();
  sub_1D8192004();
  OUTLINED_FUNCTION_0_8();
  swift_allocObject();
  swift_unknownObjectUnownedInit();

  OUTLINED_FUNCTION_53_3();

  (*(v4 + 8))(v2, v3);

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F6AC08(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = swift_unknownObjectUnownedLoadStrong();
  v4 = [v3 childViewControllers];

  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v5 = sub_1D8191314();

  sub_1D7F6ACC0(v5, Strong, a1);
}

unint64_t sub_1D7F6ACC0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  result = sub_1D81920A4();
  v6 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = v5 & 0xC000000000000001;
    swift_retain_n();
    v8 = 0;
    v9 = &protocolRef_TUKeyCommandTraversable;
    v27 = a3;
    do
    {
      if (v7)
      {
        v10 = MEMORY[0x1DA714420](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = swift_dynamicCastObjCProtocolConditional();
      if (v12)
      {
        v13 = v12;
        if ([v12 respondsToSelector_])
        {
          v14 = v9;
          Strong = swift_unknownObjectUnownedLoadStrong();
          v28 = v11;
          v16 = a2;
          v17 = v6;
          v18 = v5;
          v19 = v7;
          v20 = [Strong traitCollection];

          v9 = v14;
          a3 = v27;
          [v13 tabBarSplitViewDidChangeTraitCollectionToTraitCollection_];

          v7 = v19;
          v5 = v18;
          v6 = v17;
          a2 = v16;
        }
      }

      v21 = [v11 presentedViewController];
      if (v21)
      {
        v22 = v21;
        sub_1D7E71FB0(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D81A50A0;
        *(inited + 32) = v22;

        v24 = v22;
        sub_1D7F6ACC0(inited, a2, a3);

        swift_setDeallocating();
        sub_1D7E72768();
      }

      ++v8;
      v25 = [v11 childViewControllers];
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      v26 = sub_1D8191314();

      sub_1D7F6ACC0(v26, a2, a3);
    }

    while (v6 != v8);
  }

  __break(1u);
  return result;
}

void sub_1D7F6AF8C(unint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t, id))
{
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_15:

    return;
  }

  v9 = sub_1D81920A4();
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v9 >= 1)
  {
    v27 = a3;
    v10 = a3;
    v11 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA714420](v11, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = swift_dynamicCastObjCProtocolConditional();
      if (v14)
      {
        v4 = v14;
        if ([v14 respondsToSelector_])
        {
          v15 = v13;
          [v4 tabBarSplitViewDidChangeCollapseStateToCollapseState_];
        }
      }

      v16 = [v13 presentedViewController];
      if (v16)
      {
        v17 = v16;
        OUTLINED_FUNCTION_0_57();
        v18 = OUTLINED_FUNCTION_27_7();
        sub_1D7E71FB0(v18, &qword_1EDBB2BF0, v19, v20);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D81A50A0;
        *(inited + 32) = v17;
        v22 = v10;
        v23 = v17;
        a4(inited, a2, v22);

        swift_setDeallocating();
        v4 = inited;
        sub_1D7E72768();
      }

      ++v11;
      v24 = [v13 childViewControllers];
      v25 = OUTLINED_FUNCTION_113();
      sub_1D7E0A1A8(v25, &qword_1EDBB31B0);
      OUTLINED_FUNCTION_14();
      v26 = sub_1D8191314();

      v4 = v10;
      a4(v26, a2, v4);
    }

    while (v9 != v11);

    a3 = v27;
    goto LABEL_15;
  }

  __break(1u);
}

unint64_t sub_1D7F6B1E4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (result >> 62)
  {
    result = sub_1D81920A4();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    v18 = xmmword_1D81A50A0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA714420](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = swift_dynamicCastObjCProtocolConditional();
      if (v10)
      {
        v11 = v10;
        if ([v10 respondsToSelector_])
        {
          [v11 tabBarSplitViewWillChangeDisplayModeToDisplayMode_];
        }
      }

      v12 = [v9 presentedViewController];
      if (v12)
      {
        v13 = v12;
        sub_1D7E71FB0(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = v18;
        *(inited + 32) = v13;
        v15 = v13;
        sub_1D7F6B1E4(inited, a2, a3);

        swift_setDeallocating();
        sub_1D7E72768();
      }

      ++v7;
      v16 = [v9 childViewControllers];
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      v17 = sub_1D8191314();

      sub_1D7F6B1E4(v17, a2, a3);
    }

    while (v6 != v7);
  }

  return result;
}

unint64_t sub_1D7F6B478(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v23 = a3;
  v24 = a4;
  v8 = result;
  if (result >> 62)
  {
    result = sub_1D81920A4();
    v9 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return result;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA714420](v10, v8);
      }

      else
      {
        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = swift_dynamicCastObjCProtocolConditional();
      if (v13)
      {
        inited = v13;
        if ([v13 respondsToSelector_])
        {
          [inited tabBarSplitViewDidChangeFocusToFocus:v23 action:v24];
        }
      }

      v14 = [v12 presentedViewController];
      if (v14)
      {
        v15 = v14;
        OUTLINED_FUNCTION_0_57();
        v16 = OUTLINED_FUNCTION_27_7();
        sub_1D7E71FB0(v16, &qword_1EDBB2BF0, v17, v18);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D81A50A0;
        *(inited + 32) = v15;
        v19 = v15;
        a5(inited, a2);

        swift_setDeallocating();
        sub_1D7E72768();
      }

      ++v10;
      v20 = [v12 childViewControllers];
      v21 = OUTLINED_FUNCTION_113();
      sub_1D7E0A1A8(v21, &qword_1EDBB31B0);
      OUTLINED_FUNCTION_14();
      v22 = sub_1D8191314();

      a5(v22, a2);
    }

    while (v9 != v10);
  }

  return result;
}

Swift::Void __swiftcall TabBarSplitViewController.viewDidLoad()()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  sub_1D818F5F4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_32_3();
  v17.receiver = v0;
  v17.super_class = type metadata accessor for TabBarSplitViewController();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  v3 = *&v0[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_overlayToolbar];
  [v3 setAlpha_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 addSubview_];

    v6 = [objc_opt_self() defaultCenter];
    if (qword_1EDBAE510 != -1)
    {
      swift_once();
    }

    [v6 addObserver:v1 selector:sel_tabBarNavigationControllerDidPopWithNotification_ name:qword_1EDBAE518 object:0];
    OUTLINED_FUNCTION_3_40();
    v7 = OUTLINED_FUNCTION_13_12();
    sub_1D7F76D38(v7, v8, v9, v10);
    v11 = OUTLINED_FUNCTION_23_7();
    OUTLINED_FUNCTION_37_5(v11, xmmword_1D819FAC0);
    sub_1D818F5D4();
    OUTLINED_FUNCTION_2_45();
    v14 = sub_1D7E2D284(v12, v13);
    OUTLINED_FUNCTION_5_24(v14, &qword_1EDBB33C8);
    sub_1D7E26188();
    OUTLINED_FUNCTION_21_9();
    sub_1D8192004();
    OUTLINED_FUNCTION_0_8();
    swift_allocObject();
    swift_unknownObjectUnownedInit();

    sub_1D818EF44();

    v15 = OUTLINED_FUNCTION_14_0();
    v16(v15);

    OUTLINED_FUNCTION_100();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7F6B9A4()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong isCollapsed];

  v2 = swift_unknownObjectUnownedLoadStrong();
  v3 = [v2 viewControllers];

  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v4 = sub_1D8191314();

  if (v1)
  {
    v5 = sub_1D7E36AB8(v4);

    if (v5 >= 2)
    {
      v6 = swift_unknownObjectUnownedLoadStrong();
      v7 = &v6[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_extendedDelegate];
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      v9 = *(v7 + 1);

      if (v8)
      {
        v10 = swift_unknownObjectUnownedLoadStrong();
        v11 = swift_unknownObjectUnownedLoadStrong();
        v12 = [v11 viewControllers];

        v13 = sub_1D8191314();
        sub_1D7E33DD8(1, (v13 & 0xC000000000000001) == 0, v13);
        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1DA714420](1, v13);
        }

        else
        {
          v14 = *(v13 + 40);
        }

        v15 = v14;

        ObjectType = swift_getObjectType();
        v40 = xmmword_1D81A74D0;
        v41 = 1;
        (*(v9 + 8))(v10, v15, &v40, ObjectType, v9);
LABEL_19:
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (sub_1D7E36AB8(v4))
    {
      sub_1D7E33DD8(0, (v4 & 0xC000000000000001) == 0, v4);
      if ((v4 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1DA714420](0, v4);
      }

      else
      {
        v17 = *(v4 + 32);
      }

      v18 = v17;

      v19 = swift_unknownObjectUnownedLoadStrong();
      v20 = &v19[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_extendedDelegate];
      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      v22 = *(v20 + 1);

      if (v21)
      {
        v23 = swift_getObjectType();
        v24 = swift_unknownObjectUnownedLoadStrong();
        v40 = xmmword_1D81A74D0;
        v41 = 0;
        (*(v22 + 8))(v24, v18, &v40, v23, v22);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }

    v25 = swift_unknownObjectUnownedLoadStrong();
    v26 = [v25 viewControllers];

    v27 = sub_1D8191314();
    v28 = sub_1D7E36AB8(v27);

    if (v28 >= 2)
    {
      v29 = swift_unknownObjectUnownedLoadStrong();
      v30 = &v29[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_extendedDelegate];
      swift_beginAccess();
      v31 = swift_unknownObjectWeakLoadStrong();
      v32 = *(v30 + 1);

      if (v31)
      {
        v10 = swift_unknownObjectUnownedLoadStrong();
        v33 = swift_unknownObjectUnownedLoadStrong();
        v34 = [v33 viewControllers];

        v35 = sub_1D8191314();
        sub_1D7E33DD8(1, (v35 & 0xC000000000000001) == 0, v35);
        if ((v35 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1DA714420](1, v35);
        }

        else
        {
          v36 = *(v35 + 40);
        }

        v15 = v36;

        v37 = swift_getObjectType();
        v38 = xmmword_1D81A74D0;
        v39 = 1;
        (*(v32 + 8))(v10, v15, &v38, v37, v32);
        goto LABEL_19;
      }
    }
  }
}

Swift::Void __swiftcall TabBarSplitViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TabBarSplitViewController();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  sub_1D7F6BE68();
}

uint64_t sub_1D7F6BE68()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_commands);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v4 = qword_1EDBBC918;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDBB36F8;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v2 + 64);
  v18 = v2;
  v10 = MEMORY[0x1E69E7CA8];
  v9(v19, v5, sub_1D7F785D4, v6, sub_1D7F785DC, v7, sub_1D7F785E4, v8, MEMORY[0x1E69E7CA8] + 8, &type metadata for SidebarCommandState, &protocol witness table for SidebarCommandState, ObjectType, v18);

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_1D818ED84();
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v11 = *(v1 + 24);
  v12 = swift_getObjectType();
  v13 = qword_1EDBB3708;
  swift_unknownObjectRetain();
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDBB3710;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 56))(v19, v14, sub_1D7F785EC, v15, sub_1D7F785F4, v16, v10 + 8, v12, v11);

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_1D818ED84();
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

Swift::Void __swiftcall TabBarSplitViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TabBarSplitViewController();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1);
  v3 = [v1 viewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  OUTLINED_FUNCTION_14();
  v4 = sub_1D8191314();

  if (sub_1D7E36AB8(v4))
  {
    sub_1D7E33DD8(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA714420](0, v4);
    }

    else
    {
      v5 = *(v4 + 32);
    }

    v6 = v5;

    v7 = sub_1D808F510(v6);
    [v7 becomeFirstResponder];
  }

  else
  {
  }
}

Swift::Void __swiftcall TabBarSplitViewController.viewDidLayoutSubviews()()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for TabBarSplitViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLayoutSubviews);
  *(v0 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_hasPerformedInitialLayout) = 1;
  sub_1D818EF14();
  if (([v0 isCollapsed] & 1) == 0)
  {
    v1 = [v0 viewControllers];
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    OUTLINED_FUNCTION_25();
    v2 = sub_1D8191314();

    if (sub_1D7E36AB8(v2))
    {
      v3 = OUTLINED_FUNCTION_13_12();
      sub_1D7E33DD8(v3, v4, v5);
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA714420](0, v2);
      }

      else
      {
        v6 = *(v2 + 32);
      }

      v7 = v6;

      type metadata accessor for TabBarContainerController();
      OUTLINED_FUNCTION_25();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC5TeaUI25TabBarContainerController_rootViewController);
        v10 = [v9 tabBar];
        [v10 setHidden_];
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void TabBarSplitViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for TabBarSplitViewController();
  objc_msgSendSuper2(&v11, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  if (*&v3[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_fullscreenTransitionCoverManager])
  {

    sub_1D815F85C(0);

    OUTLINED_FUNCTION_0_8();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10[4] = sub_1D7F76DA8;
    v10[5] = v7;
    OUTLINED_FUNCTION_2_1();
    v10[1] = 1107296256;
    OUTLINED_FUNCTION_16_13();
    v10[2] = v8;
    v10[3] = &block_descriptor_16;
    v9 = _Block_copy(v10);

    [a1 animateAlongsideTransition:0 completion:v9];
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7F6C608()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D7F6C65C();
  }
}

void sub_1D7F6C65C()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 window];

  if (!v4 || (v5 = [v4 windowScene], v4, !v5) || (v6 = objc_msgSend(v5, sel_activationState), v5, v6 != 2))
  {
    if ([v1 preferredDisplayMode] != 1)
    {
      v16 = 1;
      v7 = sub_1D7F6CD48(&v16, 0);
      if (v7)
      {
        v15 = v7;
        v8 = [v7 viewControllers];
        sub_1D7E0A1A8(0, &qword_1EDBB31B0);
        v9 = sub_1D8191314();

        if (sub_1D7E36AB8(v9))
        {
          sub_1D7E33DD8(0, (v9 & 0xC000000000000001) == 0, v9);
          if ((v9 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1DA714420](0, v9);
          }

          else
          {
            v10 = *(v9 + 32);
          }

          v11 = v10;
        }

        else
        {

          v11 = 0;
        }

        v12 = [v15 visibleViewController];
        v13 = v12;
        if (v11)
        {
          if (v12)
          {
            v14 = sub_1D8191CC4();

            if (v14)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }

          v13 = v11;
        }

        else if (!v12)
        {
          goto LABEL_22;
        }

LABEL_21:
        [v1 setPreferredDisplayMode_];
LABEL_22:
      }
    }
  }
}

Swift::Void __swiftcall TabBarSplitViewController.didReceiveMemoryWarning()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for TabBarSplitViewController();
  objc_msgSendSuper2(&v1, sel_didReceiveMemoryWarning);

  sub_1D818FC64();
}

void sub_1D7F6C9AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong toggleSideBarVisibility];
  }
}

uint64_t sub_1D7F6CA08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  TabBarSplitViewController.immersiveSidebarState.getter(&v6);
  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v2 = [v1 presentedViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isBeingDismissed];
  }

  else
  {

    return 1;
  }

  return v4;
}

void TabBarSplitViewController.immersiveSidebarState.getter(char *a1@<X8>)
{
  if ((TabBarSplitViewController.isImmersiveSidebarAllowed.getter() & 1) == 0)
  {
    goto LABEL_7;
  }

  v12[0] = [v1 isCollapsed] ^ 1;
  if (!sub_1D7F6CD48(v12, 0))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_46_5();
  type metadata accessor for TabBarNavigationController();
  OUTLINED_FUNCTION_17_7();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  v5 = v4;
  v6 = OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v7 = *&v5[v6];
  v8 = [v5 topViewController];
  if (v8)
  {
    v9 = v8;
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    OUTLINED_FUNCTION_47();
    v10 = sub_1D8191CC4();

    v7 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 & 1;
LABEL_8:
  *a1 = v11;
}

void sub_1D7F6CBDC(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    LOBYTE(v5) = 0;
    goto LABEL_5;
  }

  v3 = Strong;
  v4 = [Strong displayMode];
  if (v4 < 4)
  {
    v5 = 0x100u >> (8 * v4);

LABEL_5:
    *a1 = v5;
    return;
  }

  sub_1D81923A4();
  __break(1u);
}

void sub_1D7F6CCB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v4 = [Strong isCollapsed] ^ 1;
    v2 = sub_1D7F6CD48(&v4, 0);
    if (v2)
    {
      v3 = v2;
    }
  }
}

uint64_t sub_1D7F6CD48(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  if (v4 != 1 || a2 != 0)
  {
    goto LABEL_15;
  }

  v6 = [v2 viewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v7 = sub_1D8191314();

  v8 = sub_1D7E36AB8(v7);

  if (v8 < 2)
  {
    goto LABEL_15;
  }

  v9 = [v2 viewControllers];
  v10 = sub_1D8191314();

  sub_1D7E33DD8(1, (v10 & 0xC000000000000001) == 0, v10);
  v11 = (v10 & 0xC000000000000001) != 0 ? MEMORY[0x1DA714420](1, v10) : *(v10 + 40);
  v12 = v11;

  v13 = [v12 presentedViewController];

  if (!v13)
  {
    goto LABEL_15;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
LABEL_14:

LABEL_15:
    v19 = v4;
    return sub_1D7F73644(&v19, a2);
  }

  v15 = v14;
  v16 = v13;
  if ([v15 isBeingDismissed])
  {

    goto LABEL_14;
  }

  v17 = [v15 isModalInPresentation];

  if (v17)
  {
    goto LABEL_14;
  }

  return v15;
}

void *sub_1D7F6CF14()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v7 = [result isCollapsed] ^ 1;
    v2 = sub_1D7F6CD48(&v7, 0);
    if (v2)
    {
      v3 = v2;
      v4 = [v2 viewControllers];
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      v5 = sub_1D8191314();

      v6 = sub_1D7E36AB8(v5);

      return (v6 > 1);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7F6D004()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_commands);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v4 = qword_1EDBB3708;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    OUTLINED_FUNCTION_8_7();
  }

  v5 = MEMORY[0x1E69E7CA8];
  (*(v2 + 144))(qword_1EDBB3710, MEMORY[0x1E69E7CA8] + 8, ObjectType, v2);
  swift_unknownObjectRelease();
  v6 = *(v1 + 24);
  v7 = swift_getObjectType();
  v8 = qword_1EDBBC918;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  (*(v6 + 144))(qword_1EDBB36F8, v5 + 8, v7, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D7F6D130()
{
  OUTLINED_FUNCTION_113();
  v2 = sub_1D818E454();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_14();
  sub_1D818E414();
  v6 = v0;
  OUTLINED_FUNCTION_47();
  sub_1D7F6D004();

  return (*(v4 + 8))(v1, v2);
}

void sub_1D7F6D1F4()
{
  sub_1D7F773B4(0, &qword_1EDBBC540);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v26 - v4;
  sub_1D818E434();
  if (!*(&v39 + 1))
  {
    v24 = &qword_1EDBBC780;
    v25 = (MEMORY[0x1E69E7CA0] + 8);
LABEL_13:
    sub_1D7F77534(&v38, v24, v25);
    return;
  }

  type metadata accessor for TabBarNavigationController();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v6 = v35;
  v7 = [v35 topViewController];
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_modalContextCache;
    swift_beginAccess();
    (*(v3 + 16))(v5, v0 + v9, v2);
    v33 = v8;
    sub_1D818EEA4();
    (*(v3 + 8))(v5, v2);
    v38 = v35;
    v39 = v36;
    *v40 = v37[0];
    *&v40[9] = *(v37 + 9);
    v10 = v35;
    if (v35)
    {
      v30 = v8;
      v31 = v9;
      v32 = v6;
      v11 = WORD4(v38) | (BYTE10(v38) << 16);
      v12 = v39;
      v13 = v40[0];
      v14 = *&v40[8];
      v15 = *&v40[16];
      v16 = v40[24];
      if (BYTE8(v38) != 2 && [v35 modalPresentationStyle] == 2)
      {
        v17 = [v10 presentationController];
        if (v17)
        {
          v29 = v17;
          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          if (v18)
          {
            v28 = HIWORD(v11) & 1;
            v27 = (v11 >> 8) & 1;
            v19 = v11 & 1;
            v20 = v18;
            [v18 _setWantsBottomAttachedInCompactHeight_];
            [v20 _setWidthFollowsPreferredContentSizeWhenBottomAttached_];
            [v20 _setShouldDismissWhenTappedOutside_];
          }
        }
      }

      v35 = v12;
      LOBYTE(v36) = v13;
      *(&v36 + 1) = v14;
      *&v37[0] = v15;
      BYTE8(v37[0]) = v16;
      v21 = v10;
      sub_1D7EFB42C(v12, *(&v12 + 1), v13);
      sub_1D7EFB42C(v14, v15, v16);
      TabBarSplitViewController.show(_:context:completion:)(v21, &v35, 0, 0);

      sub_1D7EFB554(v12, *(&v12 + 1), v13);
      sub_1D7EFB554(v14, v15, v16);
      v36 = 0u;
      memset(v37, 0, 25);
      v35 = 0u;
      v22 = v30;
      v34 = v30;
      swift_beginAccess();
      v23 = v22;
      sub_1D818EEB4();
      swift_endAccess();

      v24 = &unk_1ECA0E258;
      v25 = &unk_1F5303CA8;
      goto LABEL_13;
    }
  }
}

void TabBarSplitViewController.show(_:context:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 16);
  v10 = *(a2 + 40);
  swift_beginAccess();
  sub_1D7EFB42C(v5, v6, v9);
  v11 = OUTLINED_FUNCTION_111();
  sub_1D7EFB42C(v11, v12, v10);
  sub_1D7EFB42C(v5, v6, v9);
  v13 = OUTLINED_FUNCTION_111();
  sub_1D7EFB42C(v13, v14, v10);
  sub_1D7F773B4(0, &qword_1EDBBC538);
  v15 = a1;
  sub_1D818EEB4();
  swift_endAccess();
  v25[0] = v5;
  v25[1] = v6;
  v25[2] = v9;
  v25[3] = v7;
  v25[4] = v8;
  v26 = v10;
  sub_1D7F71DFC(v15, v25, a3, a4);
  OUTLINED_FUNCTION_1_45();
  sub_1D7F783FC(v16, v17, v18, v19, v20, v21, v22);
}

Swift::Void __swiftcall TabBarSplitViewController.splitViewControllerDidCollapse(_:)(UISplitViewController *a1)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_46_5();
  v3 = sub_1D818F5F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_3_40();
  v5 = OUTLINED_FUNCTION_13_12();
  sub_1D7F76D38(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_37_5(v9, xmmword_1D819FAC0);
  sub_1D818F5D4();
  OUTLINED_FUNCTION_2_45();
  v12 = sub_1D7E2D284(v10, v11);
  OUTLINED_FUNCTION_5_24(v12, &qword_1EDBB33C8);
  sub_1D7E26188();
  OUTLINED_FUNCTION_21_9();
  sub_1D8192004();
  OUTLINED_FUNCTION_0_8();
  v13 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  OUTLINED_FUNCTION_0_32();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v1;

  v15 = v1;
  OUTLINED_FUNCTION_53_3();

  (*(v4 + 8))(v2, v3);

  OUTLINED_FUNCTION_100();
}

void sub_1D7F6D9F0()
{
  v1 = [v0 viewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v2 = sub_1D8191314();

  v38 = sub_1D7E3A548(v2);

  if (!v38)
  {
    return;
  }

  v3 = [v38 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  v5 = [v0 view];
  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5;
  v7 = [v4 isDescendantOfView_];

  if (v7)
  {
    v8 = [v0 view];
    if (v8)
    {
      v9 = v8;
      v10 = *&v0[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_overlayToolbar];
      [v8 bringSubviewToFront_];

      type metadata accessor for TabBarContainerController();
      if (swift_dynamicCastClass())
      {
        v11 = v38;
        v12 = sub_1D814C57C();
        [v12 intrinsicContentSize];
        v14 = v13;
      }

      else
      {
        [v10 intrinsicContentSize];
        v14 = v15;
      }

      v16 = [v10 constraints];
      if (!v16)
      {
        sub_1D7E0A1A8(0, &qword_1EDBB3160);
        sub_1D8191314();
        v16 = sub_1D8191304();
      }

      v17 = objc_opt_self();
      [v17 deactivateConstraints_];

      sub_1D7E71FB0(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D81A7860;
      v19 = [v10 leadingAnchor];
      v20 = [v38 view];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 leadingAnchor];

        v23 = [v19 constraintEqualToAnchor_];
        *(v18 + 32) = v23;
        v24 = [v10 trailingAnchor];
        v25 = [v38 view];
        if (v25)
        {
          v26 = v25;
          v27 = [v25 trailingAnchor];

          v28 = [v24 constraintEqualToAnchor_];
          *(v18 + 40) = v28;
          v29 = [v10 bottomAnchor];
          v30 = [v38 view];
          if (v30)
          {
            v31 = v30;
            v32 = [v30 layoutMarginsGuide];

            v33 = [v32 bottomAnchor];
            v34 = [v29 constraintEqualToAnchor_];

            *(v18 + 48) = v34;
            v35 = [v10 heightAnchor];
            v36 = [v35 constraintEqualToConstant_];

            *(v18 + 56) = v36;
            sub_1D7E0A1A8(0, &qword_1EDBB3160);
            v37 = sub_1D8191304();

            [v17 activateConstraints_];

            v38 = v37;
            goto LABEL_16;
          }

LABEL_24:
          __break(1u);
          return;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
}

Swift::Void __swiftcall TabBarSplitViewController.splitViewControllerDidExpand(_:)(UISplitViewController *a1)
{
  OUTLINED_FUNCTION_120();
  v4 = v1;
  OUTLINED_FUNCTION_46_5();
  v5 = sub_1D818F5F4();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_14();
  if ([v2 displayMode] == 3)
  {
    v9 = [objc_opt_self() defaultCenter];
    if (qword_1EDBB5590 != -1)
    {
      OUTLINED_FUNCTION_20_11();
    }

    [v9 postNotificationName:qword_1EDBB5598 object:v4];
  }

  OUTLINED_FUNCTION_3_40();
  v10 = OUTLINED_FUNCTION_13_12();
  sub_1D7F76D38(v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_37_5(v14, xmmword_1D819FAC0);
  sub_1D818F5D4();
  OUTLINED_FUNCTION_2_45();
  v17 = sub_1D7E2D284(v15, v16);
  OUTLINED_FUNCTION_5_24(v17, &qword_1EDBB33C8);
  sub_1D7E26188();
  OUTLINED_FUNCTION_21_9();
  sub_1D8192004();
  OUTLINED_FUNCTION_0_8();
  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  OUTLINED_FUNCTION_0_32();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v2;

  v20 = v2;
  sub_1D818EF44();

  (*(v7 + 8))(v3, v5);

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F6E184(uint64_t a1, void *a2, void (*a3)(uint64_t, void *, void *))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1D7F6D9F0();

  v6 = swift_unknownObjectUnownedLoadStrong();
  v7 = swift_unknownObjectUnownedLoadStrong();
  v8 = [v7 childViewControllers];

  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v9 = sub_1D8191314();

  a3(v9, v6, a2);
}

Swift::Bool __swiftcall TabBarSplitViewController.splitViewController(_:collapseSecondary:onto:)(UISplitViewController *_, UIViewController *collapseSecondary, UIViewController *onto)
{
  sub_1D7F773B4(0, &qword_1EDBBC538);
  v111 = v5;
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  v110 = &v97 - v9;
  type metadata accessor for TabBarContainerController();
  OUTLINED_FUNCTION_14();
  v10 = swift_dynamicCastClass();
  if (!v10 || (v11 = v10, v12 = *(v10 + OBJC_IVAR____TtC5TeaUI25TabBarContainerController_rootViewController), v13 = type metadata accessor for TabBarNavigationController(), OUTLINED_FUNCTION_31(), (v14 = swift_dynamicCastClass()) == 0))
  {
    v48 = 0;
LABEL_38:
    LOBYTE(v39) = v48;
    return v39;
  }

  v15 = v14;
  v98 = v11;
  v16 = onto;
  v17 = v12;
  v18 = collapseSecondary;
  v19 = TabBarNavigationController.identifier.getter();
  v20 = v114;
  v21 = &v114[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_secondaryNavigationControllerIdentifierBeforeCollapse];
  *v21 = v19;
  v21[1] = v22;

  sub_1D818FC64();

  v23 = v17;
  v24 = [v23 tabBar];
  [v24 setHidden_];

  v25 = TabBarController.primaryTabBarNavigationController.getter();
  [v25 setHidesBottomBarWhenPushed_];

  v26 = TabBarController.knowsOf(tabBarNavigationController:)();
  v99 = v15;
  if (v26)
  {
    OUTLINED_FUNCTION_43_6();
    v116.receiver = v15;
    v116.super_class = v13;
    v27 = [(UISplitViewController *)&v116 viewControllers];
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    OUTLINED_FUNCTION_25();
    v28 = sub_1D8191314();

    v115 = sub_1D7F6ECE8(1, v28);
    v16 = v29;
    v18 = v30;
    v32 = v31;
    v33 = OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v34 = *&v15[v33];
    v35 = *&v20[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_commands];
    v36 = *(v35 + 16);
    v37 = *(v35 + 24);
    objc_allocWithZone(v13);
    v38 = v34;
    swift_unknownObjectRetain();
    v39 = TabBarNavigationController.init(rootViewController:commandCenter:)(v38, v36, v37);
    v40 = v39;
    v41 = (v32 >> 1) - v18;
    if ((v32 >> 1) != v18)
    {
      if ((v32 >> 1) <= v18)
      {
        goto LABEL_41;
      }

      swift_unknownObjectRetain();
      v16 = (v16 + 8 * v18);
      v18 = &selRef_attemptTransitionToState_animated_;
      do
      {
        isa = v16->super.super.isa;
        v16 = (v16 + 8);
        [v40 pushViewController:isa animated:0];
        --v41;
      }

      while (v41);
      swift_unknownObjectRelease();
    }

    TabBarController.restore(tabBarNavigationController:shouldSelectIndex:)(v40, 1);
    OUTLINED_FUNCTION_44_4();
    if ((sub_1D818EF54() & 1) == 0)
    {
      v43 = TabBarController.primaryTabBarNavigationController.getter();
      v44 = OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController;
      OUTLINED_FUNCTION_7();
      swift_beginAccess();
      v16 = *&v43[v44];

      v45 = *(v35 + 16);
      v18 = *(v35 + 24);
      v46 = objc_allocWithZone(v13);
      swift_unknownObjectRetain();
      v47 = TabBarNavigationController.init(rootViewController:commandCenter:)(v16, v45, v18);
      TabBarController.replace(tabBarNavigationController:)(v47);
    }

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_22_9();
    OUTLINED_FUNCTION_42_5();
    goto LABEL_28;
  }

  v127.receiver = v15;
  v127.super_class = v13;
  v49 = [(UISplitViewController *)&v127 viewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  OUTLINED_FUNCTION_25();
  v50 = sub_1D8191314();

  v51 = sub_1D7E36AB8(v50);
  if (!v51)
  {

    OUTLINED_FUNCTION_22_9();
LABEL_28:
    v81 = [v99 presentedViewController];
    if (v81 || (v81 = [v98 presentedViewController]) != 0)
    {
      v82 = v81;
      v123 = v81;
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      sub_1D7E0631C(0, &qword_1ECA0E1E0);
      v83 = v82;
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
        OUTLINED_FUNCTION_0_32();
        v84 = swift_allocObject();
        *(v84 + 16) = v98;
        *(v84 + 24) = v83;
        v121 = sub_1D7F76E48;
        v122 = v84;
        aBlock = MEMORY[0x1E69E9820];
        v118 = 1107296256;
        v119 = sub_1D7E64940;
        v120 = &block_descriptor_19_1;
        v85 = _Block_copy(&aBlock);
        v86 = v16;
        v83 = v83;

        [v83 dismissViewControllerAnimated:0 completion:v85];
        _Block_release(v85);
      }
    }

    OUTLINED_FUNCTION_44_4();
    if (*(v88 + v87) & 1) == 0 && (OUTLINED_FUNCTION_44_4(), (*(v90 + v89) & 2) != 0) || (v91 = TabBarController.primaryTabBarNavigationController.getter(), v92 = TabBarNavigationController.shouldSelectOnCollapse.getter(), v91, (v92))
    {
      v93 = TabBarController.primaryTabBarNavigationController.getter();
      [v23 setSelectedViewController_];
    }

    v48 = 1;
    OUTLINED_FUNCTION_44_4();
    *(v95 + v94) = 1;
    OUTLINED_FUNCTION_56_4();
    goto LABEL_38;
  }

  v52 = v51;
  v100 = v23;
  OUTLINED_FUNCTION_43_6();
  v53 = v114;
  if (v39 < 1)
  {
    goto LABEL_40;
  }

  v106 = v50 & 0xC000000000000001;
  v107 = OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_presentationContextCache;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_22_9();
  v54 = 0;
  v105 = (v7 + 16);
  v104 = (v7 + 8);
  v101 = &v119;
  v103 = v50;
  v102 = v52;
  while (1)
  {
    if (v106)
    {
      v55 = MEMORY[0x1DA714420](v54, v50);
    }

    else
    {
      v55 = *(v50 + 8 * v54 + 32);
    }

    v56 = v55;
    if ([v55 hidesBottomBarWhenPushed])
    {
      v57 = [v100 tabBar];
      [v57 setHidden_];

      v53 = v114;
    }

    v58 = v110;
    v59 = v111;
    (*v105)(v110, &v53[v107], v111);
    v126 = v56;
    sub_1D818EEA4();
    (*v104)(v58, v59);
    v16 = aBlock;
    v18 = v119;
    v115 = v121;
    v60 = v56;
    sub_1D7F6EF94(v56, &aBlock, &v124);

    if (!v125)
    {

      OUTLINED_FUNCTION_1_45();
      OUTLINED_FUNCTION_28_6(v74, v75, v76, v77, v78, v79, v80);
      OUTLINED_FUNCTION_15_13();
      sub_1D7F78760();
      goto LABEL_25;
    }

    sub_1D7E05450(&v124, &v126);
    v108 = objc_opt_self();
    sub_1D7E0E768(&v126, &v124);
    v61 = swift_allocObject();
    *(v61 + 16) = v53;
    sub_1D7E05450(&v124, v61 + 24);
    *(v61 + 64) = v60;
    v109 = v60;
    v62 = v53;
    OUTLINED_FUNCTION_56_4();
    OUTLINED_FUNCTION_0_32();
    v63 = swift_allocObject();
    v113 = sub_1D7F76E88;
    *(v63 + 16) = sub_1D7F76E88;
    *(v63 + 24) = v61;
    v121 = sub_1D7E74D6C;
    v122 = v63;
    aBlock = MEMORY[0x1E69E9820];
    v118 = 1107296256;
    OUTLINED_FUNCTION_18_12();
    v119 = v64;
    v120 = &block_descriptor_28;
    v65 = _Block_copy(&aBlock);

    [v108 performWithoutAnimation_];
    OUTLINED_FUNCTION_1_45();
    OUTLINED_FUNCTION_28_6(v66, v67, v68, v69, v70, v71, v72);
    _Block_release(v65);

    __swift_destroy_boxed_opaque_existential_1Tm(&v126);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      break;
    }

    v112 = v61;
    v53 = v114;
LABEL_25:
    v50 = v103;
    if (v102 == ++v54)
    {

      OUTLINED_FUNCTION_42_5();
      v23 = v100;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return v39;
}

uint64_t sub_1D7F6ECE8(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_1D7E36AB8(a2);
  v5 = sub_1D8096AD8(0, a1, v4, a2);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_1D7F76C7C(v7, a2);
  result = sub_1D7F76C7C(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
    result = sub_1D8190DB4();
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    sub_1D8190DB4();
    result = v7;
    do
    {
      v9 = result + 1;
      sub_1D81921F4();
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = sub_1D8192414();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D7F6EE4C(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1D7E36AB8(a2);
  v5 = OUTLINED_FUNCTION_46_5();
  v6 = sub_1D8096AD8(v5, a1, v2, a2);
  if (v7)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (v2 < v8)
  {
    goto LABEL_18;
  }

  v9 = OUTLINED_FUNCTION_109();
  sub_1D7F76C7C(v9, v10);
  result = sub_1D7F76C7C(v2, a2);
  if ((a2 & 0xC000000000000001) == 0 || v8 == v2)
  {
    result = sub_1D8190DB4();
  }

  else
  {
    if (v8 >= v2)
    {
      goto LABEL_21;
    }

    type metadata accessor for SwipeActionView();
    sub_1D8190DB4();
    result = v8;
    do
    {
      v12 = result + 1;
      sub_1D81921F4();
      result = v12;
    }

    while (v2 != v12);
  }

  if (a2 >> 62)
  {
LABEL_19:

    OUTLINED_FUNCTION_31();
    v13 = sub_1D8192414();

    return v13;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1D7F6EF94(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((~*(a2 + 16) & 0xFELL) != 0)
  {
    *(a3 + 24) = &type metadata for TabBarSplitViewPresentationContext;
    *(a3 + 32) = &protocol witness table for TabBarSplitViewPresentationContext;
    v15 = swift_allocObject();
    *a3 = v15;
    *(v15 + 16) = v4;
    *(v15 + 24) = v5;
    *(v15 + 32) = v6;
    *(v15 + 40) = v7;
    *(v15 + 48) = v8;
    *(v15 + 56) = v9;
    goto LABEL_21;
  }

  if (!a1)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    goto LABEL_9;
  }

  v11 = *(a2 + 40);
  v12 = *(a2 + 32);
  v13 = *(a2 + 24);
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, qword_1EDBB0758);
  v14 = a1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v7 = v13;
    v8 = v12;
    v9 = v11;
LABEL_9:
    sub_1D7F78760();
    if (a1)
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = v16;
        v31 = v4;
        v30 = a1;
        v18 = [v17 childViewControllers];
        sub_1D7E0A1A8(0, &qword_1EDBB31B0);
        v19 = sub_1D8191314();

        if (sub_1D7E36AB8(v19))
        {
          sub_1D7E33DD8(0, (v19 & 0xC000000000000001) == 0, v19);
          if ((v19 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1DA714420](0, v19);
          }

          else
          {
            v20 = *(v19 + 32);
          }

          v21 = v20;
          v4 = v31;
        }

        else
        {

          v21 = 0;
          v4 = v31;
        }

        v32 = 0uLL;
        v34 = 0;
        v35 = 0;
        v33 = 254;
        v36 = 0;
        sub_1D7F6EF94(v21, &v32);

        goto LABEL_20;
      }

      type metadata accessor for TransitionContainerViewController();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v9;
        v24 = v8;
        v25 = v7;
        v26 = v5;
        v27 = v4;
        v28 = *(v22 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController);
        v32 = 0uLL;
        v34 = 0;
        v35 = 0;
        v33 = 254;
        v36 = 0;
        v21 = a1;
        v29 = v28;
        v4 = v27;
        v5 = v26;
        v7 = v25;
        v8 = v24;
        v9 = v23;
        sub_1D7F6EF94(v29, &v32);
LABEL_20:

        goto LABEL_21;
      }
    }

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    goto LABEL_21;
  }

  v7 = v13;
  v8 = v12;
  v9 = v11;
  if (!*(&v38 + 1))
  {
    goto LABEL_9;
  }

  sub_1D7E05450(&v37, &v32);
  sub_1D7E05450(&v32, a3);
LABEL_21:
  sub_1D7F783FC(v4, v5, v6, v7, v8, v9, sub_1D7EFB42C);
}

void sub_1D7F6F304(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 8))(&v10, 0, v4, v5);
  v8 = v10;
  v9 = v11;
  sub_1D7F6F3C0(&v8, a3, 0, 0, 0, 0);
  v6 = v8;
  v7 = v9;

  sub_1D7EFB554(v6, *(&v6 + 1), v7);
}

void sub_1D7F6F3C0(uint64_t a1, unsigned __int8 *a2, unsigned int a3, void *a4, void (*a5)(), void *a6)
{
  sub_1D7F773B4(0, &qword_1EDBBC538);
  v12 = v11;
  v13 = *(v11 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = *a1;
  LODWORD(v16) = *(a1 + 16);
  v175 = *(a1 + 8);
  switch(v16 >> 5)
  {
    case 1u:
    case 2u:
      v17 = *(a1 + 16);
      if (*a1 - 2 >= 2)
      {
        v18 = v176;
        if (v15)
        {
          LOBYTE(aBlock) = 1;
          v64 = sub_1D7F6CD48(&aBlock, a4);
          if (!v64)
          {
            return;
          }

          v65 = v64;
          sub_1D7F72CC8(a2, v64, a5, a6);
        }

        else
        {
          v19 = [v176 viewControllers];
          sub_1D7E0A1A8(0, &qword_1EDBB31B0);
          v20 = sub_1D8191314();

          if (!sub_1D7E36AB8(v20))
          {
LABEL_42:

            return;
          }

          sub_1D7E33DD8(0, (v20 & 0xC000000000000001) == 0, v20);
          if ((v20 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1DA714420](0, v20);
          }

          else
          {
            v21 = *(v20 + 32);
          }

          v174 = v21;

          type metadata accessor for TabBarContainerController();
          v22 = swift_dynamicCastClass();
          if (!v22)
          {
            goto LABEL_54;
          }

          sub_1D7F72CC8(a2, v22, a5, a6);
        }
      }

      else
      {
        v18 = v176;
        sub_1D7F72CC8(a2, v176, a5, a6);
      }

      v66 = &v18[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_extendedDelegate];
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v67 = *(v66 + 1);
      ObjectType = swift_getObjectType();
      v188 = v15;
      v189 = v175;
      v190 = v17;
      (*(v67 + 8))(v18, a2, &v188, ObjectType, v67);
      goto LABEL_49;
    case 3u:
      v23 = v176;
      v24 = [v176 &selRef:v14 setSelected:?];
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      v13 = sub_1D8191314();

      if (!sub_1D7E36AB8(v13))
      {
        goto LABEL_42;
      }

      sub_1D7E33DD8(0, (v13 & 0xC000000000000001) == 0, v13);
      if ((v13 & 0xC000000000000001) != 0)
      {
        goto LABEL_181;
      }

      v25 = *(v13 + 32);
      goto LABEL_13;
    case 4u:
      if (a5)
      {

        (a5)(v58);
        sub_1D7E418F4(a5, a6);
      }

      v59 = *(v15 + 2);
      if (v59)
      {
        v60 = v15 + 48;
        do
        {
          v61 = *(v60 - 2);
          v62 = *(v60 - 1);
          v63 = *v60;
          v60 += 24;
          aBlock = v61;
          v178 = v62;
          LOBYTE(v179) = v63;
          sub_1D7EFB42C(v61, v62, v63);
          sub_1D7F6F3C0(&aBlock, a2, a3 & 1, a4, 0, 0);
          sub_1D7EFB554(v61, v62, v63);
          --v59;
        }

        while (v59);
      }

      return;
    case 5u:
      v50 = [a2 parentViewController];
      if (v50 && (v51 = v50, v50, v51 == v15))
      {
        v16 = 0;
        v13 = 0;
        if (a5)
        {
LABEL_34:
          (a5)(v52);
        }
      }

      else
      {
        v53 = objc_opt_self();
        v13 = swift_allocObject();
        *(v13 + 16) = v15;
        *(v13 + 24) = a2;
        v23 = swift_allocObject();
        v54 = v16;
        v16 = sub_1D7F783E8;
        *(v23 + 16) = sub_1D7F783E8;
        *(v23 + 24) = v13;
        v181 = sub_1D7EA8F68;
        v182 = v23;
        aBlock = MEMORY[0x1E69E9820];
        v178 = 1107296256;
        v179 = sub_1D7E74D74;
        v180 = &block_descriptor_121;
        v55 = _Block_copy(&aBlock);
        v56 = v15;
        v15 = v55;
        sub_1D7EFB42C(v56, v175, v54);
        v57 = a2;

        [v53 performWithoutAnimation_];
        _Block_release(v15);
        LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

        if (v53)
        {
          goto LABEL_180;
        }

        if (a5)
        {
          goto LABEL_34;
        }
      }

      sub_1D7E418F4(v16, v13);
      return;
    default:
      if (a5)
      {

        (a5)(v35);
        sub_1D7E418F4(a5, a6);
      }

      v36 = swift_allocObject();
      v170 = v16;
      v37 = v16 & 1;
      LOBYTE(aBlock) = v37;
      v38 = sub_1D7F6CD48(&aBlock, a4);
      if (!v38)
      {

        swift_deallocUninitializedObject();
        return;
      }

      break;
  }

  v39 = v38;
  *(v36 + 16) = v38;
  v171 = v15;
  v40 = &selRef_attemptTransitionToState_animated_;
  a5 = v176;
  switch(v175)
  {
    case 0uLL:
    case 3uLL:
      v41 = [v38 presentingViewController];
      if (!v41)
      {
        goto LABEL_28;
      }

      v42 = *(v36 + 16);
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      v43 = v42;
      v44 = sub_1D8191304();
      [v43 setViewControllers_];

      [*(v36 + 16) dismissViewControllerAnimated:0 completion:0];
      LOBYTE(aBlock) = v37;
      v45 = sub_1D7F6CD48(&aBlock, a4);
      if (v45)
      {
        v46 = *(v36 + 16);
        *(v36 + 16) = v45;

LABEL_28:
        switch(v175)
        {
          case 1uLL:
            v39 = *(v36 + 16);
            goto LABEL_125;
          case 2uLL:
            goto LABEL_59;
          case 3uLL:
            v39 = *(v36 + 16);
            goto LABEL_109;
          default:
            v47 = *(v36 + 16);
            v48 = objc_opt_self();
            v49 = v47;

            goto LABEL_136;
        }
      }

      goto LABEL_160;
    case 1uLL:
LABEL_125:
      v109 = [v39 topViewController];
      v110 = sub_1D7F732B4(a2, v109);

      if (v110)
      {
        goto LABEL_160;
      }

      sub_1D7F739E0(v36, v176);
      swift_beginAccess();
      v111 = [*(v36 + 16) viewControllers];
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      v112 = sub_1D8191314();

      sub_1D80D04C0(a2, v112);
      v114 = v113;
      v116 = v115;

      if (v116)
      {

        [*(v36 + 16) showViewController:a2 sender:0];
        goto LABEL_136;
      }

      v117 = [*(v36 + 16) viewControllers];
      v118 = sub_1D8191314();

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v118 < 0 || (v118 & 0x4000000000000000) != 0)
      {
        v118 = sub_1D80E75C4(v118);
      }

      v119 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v114 >= v119)
      {
        __break(1u);
      }

      else
      {
        v120 = v119 - 1;
        v121 = v119 - 1 - v114;
        v122 = (v118 & 0xFFFFFFFFFFFFFF8) + 8 * v114;
        v123 = *(v122 + 0x20);
        sub_1D80E75B8(v122 + 40, v121, v122 + 32);
        *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) = v120;

        v188 = v118;
        v124 = a2;
        MEMORY[0x1DA713500]();
        if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_134;
        }
      }

      sub_1D81913B4();
LABEL_134:
      sub_1D8191404();
      v125 = *(v36 + 16);
      v126 = sub_1D8191304();

      [v125 setViewControllers:v126 animated:{objc_msgSend(objc_opt_self(), sel_areAnimationsEnabled)}];

      goto LABEL_135;
    case 2uLL:
LABEL_59:
      sub_1D7F739E0(v36, v176);
      swift_beginAccess();
      v12 = v36;
      v69 = [*(v36 + 16) viewControllers];
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      v70 = sub_1D8191314();

      v71 = sub_1D7E36AB8(v70);
      v15 = (v70 & 0xC000000000000001);
      if (!v71)
      {
        goto LABEL_164;
      }

      while (2)
      {
        v72 = __OFSUB__(v71--, 1);
        if (v72)
        {
          __break(1u);
        }

        else
        {
          if (v15)
          {
            v73 = MEMORY[0x1DA714420](v71, v70);
LABEL_65:
            v74 = v73;
            v75 = v73;
            LOBYTE(v74) = sub_1D7F732B4(v74, a2);

            if (v74)
            {

              v76 = *(v36 + 16);
              v77 = objc_opt_self();
              v78 = v76;
              v79 = [v78 popToViewController:v75 animated:{objc_msgSend(v77, sel_areAnimationsEnabled)}];

              return;
            }

            if (!v71)
            {
LABEL_164:

              [*(v36 + 16) showViewController:a2 sender:0];
LABEL_135:
              v15 = v171;
LABEL_136:
              LOBYTE(v16) = v170;
              goto LABEL_148;
            }

            continue;
          }

          if ((v71 & 0x8000000000000000) == 0)
          {
            if (v71 < *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v73 = *(v70 + 32 + 8 * v71);
              goto LABEL_65;
            }

LABEL_167:
            __break(1u);
LABEL_168:

            v40 = sub_1D7F74078(v15);
            if (TabBarNavigationController.isValidForCachingRestoreState.getter())
            {
              v184.receiver = a5;
              v184.super_class = v12;

              v137 = objc_msgSendSuper2(&v184, sel_viewControllers);
              v138 = sub_1D8191314();

              v188 = v138;
              v139 = (a5 + OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController);
              swift_beginAccess();
              v140 = *v139;
              swift_getObjectType();
              v183 = v140;
              aBlock = sub_1D818EF94();
              v178 = v141;
              sub_1D818FC54();
            }

            sub_1D7F741FC(v40);
            v142 = (a5 + OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController);
            swift_beginAccess();
            v143 = *v142;
            swift_getObjectType();
            v188 = v143;
            v144 = sub_1D818EF94();
            if (*(*(v172 + OBJC_IVAR____TtC5TeaUI16TabBarController_tabBarOrder) + 16))
            {
              sub_1D7E11428(v144, v145);
              v147 = v146;

              if ((v147 & 1) == 0)
              {
                goto LABEL_184;
              }

              v148 = *v142;
              [a5 dismissViewControllerAnimated:0 completion:0];
              v149 = sub_1D8191304();

              v185.receiver = a5;
              v185.super_class = v12;
              objc_msgSendSuper2(&v185, sel_setViewControllers_, v149);

              sub_1D80D0CE4();
              v150 = *&v176[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_commands];
              v151 = *(v150 + 16);
              v152 = *(v150 + 24);
              objc_allocWithZone(v12);
              v153 = v148;
              swift_unknownObjectRetain();
              v154 = TabBarNavigationController.init(rootViewController:commandCenter:)(v153, v151, v152);
              TabBarController.restore(tabBarNavigationController:shouldSelectIndex:)(v154, 0);

LABEL_185:
              a5 = v176;
              sub_1D7F6BE68();
              a2 = v15;
              v15 = v171;
              LOBYTE(v16) = v170;
              goto LABEL_148;
            }

LABEL_183:

LABEL_184:
            [a5 dismissViewControllerAnimated:0 completion:0];
            v156 = sub_1D8191304();

            v191.receiver = a5;
            v191.super_class = v12;
            objc_msgSendSuper2(&v191, sel_setViewControllers_, v156);

            sub_1D80D0CE4();
            goto LABEL_185;
          }
        }

        break;
      }

      __break(1u);
      goto LABEL_167;
    case 4uLL:
LABEL_109:
      v12 = type metadata accessor for TabBarNavigationController();
      v96 = swift_dynamicCastClass();
      if (!v96)
      {
        goto LABEL_159;
      }

      a5 = v96;
      v97 = v39;
      v98 = [v176 viewControllers];
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      v99 = sub_1D8191314();

      if (sub_1D7E36AB8(v99))
      {
        sub_1D7E33DD8(0, (v99 & 0xC000000000000001) == 0, v99);
        v158 = v36;
        if ((v99 & 0xC000000000000001) != 0)
        {
          v100 = MEMORY[0x1DA714420](0, v99);
        }

        else
        {
          v100 = *(v99 + 32);
        }

        v101 = v100;

        type metadata accessor for TabBarContainerController();
        v102 = swift_dynamicCastClass();
        if (v102)
        {
          v168 = v101;
          v169 = v97;
          v15 = a2;
          v103 = *MEMORY[0x1E69DD930];
          v172 = *(v102 + OBJC_IVAR____TtC5TeaUI25TabBarContainerController_rootViewController);
          static Accessibility.Notifications.blockNotification(_:forInterval:)(v103);
          v192.receiver = a5;
          v192.super_class = v12;
          v104 = objc_msgSendSuper2(&v192, sel_viewControllers);
          v105 = sub_1D8191314();

          v16 = sub_1D7E36AB8(v105);
          a2 = (v105 + 32);
          if (!v16)
          {
            goto LABEL_168;
          }

          while (1)
          {
            v72 = __OFSUB__(v16--, 1);
            if (v72)
            {
              break;
            }

            if ((v105 & 0xC000000000000001) != 0)
            {
              v106 = MEMORY[0x1DA714420](v16, v105);
            }

            else
            {
              if ((v16 & 0x8000000000000000) != 0)
              {
                goto LABEL_174;
              }

              v84 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v16 >= v84)
              {
                goto LABEL_175;
              }

              v106 = *&a2[8 * v16];
            }

            v107 = v106;
            v108 = v106;
            LOBYTE(v107) = sub_1D7F732B4(v107, v15);

            if (v107)
            {

              v127 = *(v36 + 16);
              v128 = objc_opt_self();
              v129 = v127;

              sub_1D7F6BE68();
              goto LABEL_162;
            }

            if (!v16)
            {
              goto LABEL_168;
            }
          }

          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
          goto LABEL_176;
        }

        v97 = v101;
      }

      else
      {
      }

LABEL_159:
      sub_1D7F6BE68();
LABEL_160:

      goto LABEL_162;
    default:
      sub_1D7F739E0(v36, v176);
      swift_beginAccess();
      v158 = v36;
      v80 = [*(v36 + 16) viewControllers];
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      v81 = sub_1D8191314();

      v82 = sub_1D7E36AB8(v81);
      v83 = OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_presentationContextCache;
      sub_1D8190DB4();
      v164 = v83;
      swift_beginAccess();
      v165 = v81 & 0xC000000000000001;
      v161 = v81 & 0xFFFFFFFFFFFFFF8;
      v160 = v81 + 32;
      v163 = (v13 + 16);
      v162 = (v13 + 8);
      v157 = v81;
      v84 = v81;
      LOBYTE(v16) = v170;
      v23 = a3;
      v159 = a2;
      while (2)
      {
        v172 = v84;
        if (!v82)
        {
LABEL_176:
          v155 = v84;

          v188 = v155;
          break;
        }

        v72 = __OFSUB__(v82--, 1);
        if (v72)
        {
          __break(1u);
          goto LABEL_178;
        }

        if (!v165)
        {
          if ((v82 & 0x8000000000000000) == 0)
          {
            if (v82 < *(v161 + 16))
            {
              v85 = *(v160 + 8 * v82);
              goto LABEL_77;
            }

LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            v25 = MEMORY[0x1DA714420](0, v13);
LABEL_13:
            v174 = v25;

            type metadata accessor for TabBarContainerController();
            v26 = swift_dynamicCastClass();
            if (v26)
            {
              v27 = v16;
              v28 = *(v26 + OBJC_IVAR____TtC5TeaUI25TabBarContainerController_rootViewController);
              v29 = sub_1D7F743A0(v15, v175, a2, v28);
              if (v30)
              {
                TabBarController.selectTabBarNavigationController(withIdentifier:popToRoot:)(*&v29, 1);
              }

              v31 = v23 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_extendedDelegate;
              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v33 = *(v31 + 8);
                v34 = swift_getObjectType();
                v188 = v15;
                v189 = v175;
                v190 = v27;
                (*(v33 + 8))(v23, a2, &v188, v34, v33);
                Strong = swift_unknownObjectRelease();
              }

              if (a5)
              {
                (a5)(Strong);
              }
            }

            else
            {
LABEL_54:
            }

            return;
          }

LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        v85 = MEMORY[0x1DA714420](v82, v157);
LABEL_77:
        v86 = v85;
        (*v163)(&selRef_attemptTransitionToState_animated_, &v176[v164], v12);
        v188 = v86;
        sub_1D818EEA4();
        (*v162)(&selRef_attemptTransitionToState_animated_, v12);
        v87 = v179;
        if ((~v179 & 0xFE) != 0)
        {
          v169 = v86;
          v13 = aBlock;
          v88 = v178;
          if (v23)
          {
            a5 = v180;
          }

          else
          {
            a5 = aBlock;
          }

          if (v23)
          {
            v15 = v181;
          }

          else
          {
            v15 = v178;
          }

          if (v23)
          {
            v89 = v182;
          }

          else
          {
            v89 = v179;
          }

          if (v89 >= 0x20u || v15 < 5)
          {
            sub_1D7F783FC(aBlock, v178, v179, v180, v181, v182, sub_1D7EFB554);
          }

          else
          {
            v166 = v180;
            v167 = v181;
            LODWORD(v168) = v182;
            v90 = v171 == a5 && v175 == v15;
            if (v90 || (sub_1D8192634() & 1) != 0)
            {
              if (v172 >> 62)
              {
                if (sub_1D81920A4())
                {
LABEL_96:
                  sub_1D7EFB42C(a5, v15, v89);
                  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
                  if (v172 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
                  {
                    v92 = sub_1D80E75C4(v172);
                  }

                  else
                  {
                    v92 = v172;
                  }

                  v172 = v92;
                  v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (!v93)
                  {
                    __break(1u);
                    goto LABEL_183;
                  }

                  v94 = v93 - 1;
                  v95 = *((v92 & 0xFFFFFFFFFFFFFF8) + 8 * v94 + 0x20);
                  *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) = v94;
                  sub_1D7F783FC(v13, v88, v87, v166, v167, v168, sub_1D7EFB554);
                  sub_1D7EFB554(a5, v15, v89);
LABEL_105:

                  a2 = v159;
                  v15 = v171;
                  LOBYTE(v16) = v170;
                  v23 = a3;
                  v84 = v172;
                  continue;
                }
              }

              else if (*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_96;
              }

              sub_1D7F783FC(v13, v88, v87, v166, v167, v168, sub_1D7EFB554);
              v95 = 0;
              goto LABEL_105;
            }

            sub_1D7EFB42C(a5, v15, v89);

            sub_1D7EFB554(a5, v15, v89);
            sub_1D7F783FC(v13, v88, v87, v166, v167, v168, sub_1D7EFB554);
          }

          v188 = v172;
          a2 = v159;
          v15 = v171;
          LOBYTE(v16) = v170;
        }

        else
        {

          v188 = v172;
        }

        break;
      }

      a5 = v176;
      if (sub_1D7F73E14())
      {
        MEMORY[0x1DA713500]();
        if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D81913B4();
        }

        sub_1D8191404();
        v172 = v188;
        LOBYTE(v16) = v170;
      }

      v130 = [*(v158 + 16) viewControllers];
      v131 = sub_1D8191314();

      LOBYTE(v130) = sub_1D8185C90(v131, v172);

      if (v130)
      {
      }

      else
      {
        v132 = *(v158 + 16);
        v133 = sub_1D8191304();

        [v132 setViewControllers_];
      }

      [*(v158 + 16) showViewController:a2 sender:0];
LABEL_148:
      if (a3 & 1) != 0 && [a5 displayMode] == 3 && (v16)
      {
        if (v175 == 4)
        {
          sub_1D7EFB594(v15, 4uLL);
          sub_1D7EFB594(0, 4uLL);
        }

        else
        {
          sub_1D7EFB42C(v15, v175, v16);
          sub_1D7EFB594(v15, v175);
          sub_1D7EFB594(0, 4uLL);
          [a5 togglePrimaryViewVisibilityAnimated_];
        }
      }

      v134 = a5 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_extendedDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v135 = *(v134 + 1);
        v136 = swift_getObjectType();
        v186[0] = v15;
        v186[1] = v175;
        v187 = v16;
        (*(v135 + 8))(a5, a2, v186, v136, v135);

LABEL_49:
        swift_unknownObjectRelease();
      }

      else
      {
LABEL_162:
      }

      return;
  }
}