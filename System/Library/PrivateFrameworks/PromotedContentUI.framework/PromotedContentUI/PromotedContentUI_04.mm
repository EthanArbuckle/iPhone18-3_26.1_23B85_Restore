unint64_t sub_1C19EFF20(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1C19EF154();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1C19F0724();
      result = v7;
      goto LABEL_12;
    }

    sub_1C19F1340();
  }

  v8 = *v3;
  v9 = sub_1C1A6FD9C();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C1A6FD2C();
  __break(1u);
  return result;
}

uint64_t sub_1C19F004C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1C1A6D6EC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C19EF388();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1C19F088C(MEMORY[0x1E6969C28], &qword_1EBF043F0);
      goto LABEL_12;
    }

    sub_1C19F1540();
  }

  v13 = *v3;
  sub_1C19F247C(&qword_1EDE623A8, MEMORY[0x1E6969C28]);
  v14 = sub_1C1A6F34C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1C19F247C(&qword_1EDE623A0, MEMORY[0x1E6969C28]);
      v22 = sub_1C1A6F38C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C1A6FD2C();
  __break(1u);
  return result;
}

uint64_t sub_1C19F0314(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1C19EF6E4();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C19F0AC4();
      goto LABEL_16;
    }

    sub_1C19F185C();
  }

  v10 = *v4;
  sub_1C1A6FDAC();
  sub_1C1A6F45C();
  result = sub_1C1A6FDDC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1C1A6FCEC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1C1A6FD2C();
  __break(1u);
  return result;
}

void *sub_1C19F0494()
{
  v1 = v0;
  sub_1C19A9E58(&qword_1EBF04400);
  v2 = *v0;
  v3 = sub_1C1A6FA7C();
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

id sub_1C19F05D4()
{
  v1 = v0;
  sub_1C19A9E58(&qword_1EBF043F8);
  v2 = *v0;
  v3 = sub_1C1A6FA7C();
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

void *sub_1C19F0724()
{
  v1 = v0;
  sub_1C19A9E58(&qword_1EBF04408);
  v2 = *v0;
  v3 = sub_1C1A6FA7C();
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

void *sub_1C19F088C(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  sub_1C19A9E58(a2);
  v9 = *v2;
  v10 = sub_1C1A6FA7C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_1C19F0AC4()
{
  v1 = v0;
  sub_1C19A9E58(&qword_1EBF04410);
  v2 = *v0;
  v3 = sub_1C1A6FA7C();
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

uint64_t sub_1C19F0C20()
{
  v1 = v0;
  v32 = sub_1C1A6D93C();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1C19A9E58(&qword_1EBF043E0);
  v6 = sub_1C1A6FA8C();
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1C19F247C(&qword_1EDE62390, MEMORY[0x1E69C5E30]);
      result = sub_1C1A6F34C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1C19F0F3C()
{
  v1 = v0;
  v2 = *v0;
  sub_1C19A9E58(&qword_1EBF04400);
  result = sub_1C1A6FA8C();
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
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1C1A6FD9C();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C19F112C()
{
  v1 = v0;
  v2 = *v0;
  sub_1C19A9E58(&qword_1EBF043F8);
  result = sub_1C1A6FA8C();
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
      result = sub_1C1A6F7AC();
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

uint64_t sub_1C19F1340()
{
  v1 = v0;
  v2 = *v0;
  sub_1C19A9E58(&qword_1EBF04408);
  result = sub_1C1A6FA8C();
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
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1C1A6FD9C();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C19F1540()
{
  v1 = v0;
  v32 = sub_1C1A6D6EC();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1C19A9E58(&qword_1EBF043F0);
  v6 = sub_1C1A6FA8C();
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1C19F247C(&qword_1EDE623A8, MEMORY[0x1E6969C28]);
      result = sub_1C1A6F34C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1C19F185C()
{
  v1 = v0;
  v2 = *v0;
  sub_1C19A9E58(&qword_1EBF04410);
  result = sub_1C1A6FA8C();
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
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1C1A6FDAC();

      sub_1C1A6F45C();
      result = sub_1C1A6FDDC();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
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

uint64_t sub_1C19F1A94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a4;
  v56 = a5;
  v53 = a2;
  v54 = a3;
  v8 = sub_1C1A6E4BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v47 - v12;
  v13 = sub_1C19A9E58(&qword_1EBF03E48);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - v18;
  v20 = *(v9 + 16);
  v57 = a6;
  v49 = v20;
  v50 = v9 + 16;
  (v20)(&v47 - v18, a6, v8, v17);
  v21 = v9;
  v22 = *(v9 + 56);
  v58 = v19;
  v23 = v8;
  v22(v19, 0, 1, v8);
  type metadata accessor for AppStoreAd();
  v24 = swift_allocObject();
  *(v24 + 80) = 0;
  *(v24 + 88) = 0;
  *(v24 + 96) = 4;
  *(v24 + 104) = 0;
  *(v24 + 112) = 0;
  *(v24 + 16) = a1;
  v25 = a1;
  v26 = sub_1C19E93F8();
  *(v24 + 24) = v26;
  if ([v25 serverUnfilledReason] == 200)
  {
    v27 = 4;
  }

  else
  {
    v27 = 3;
  }

  swift_beginAccess();
  *(v24 + 96) = v27;
  if (v26)
  {
    v28 = v26;
    v29 = sub_1C1A6E7EC();
    v31 = v30;

    v48 = v29;
    *(v24 + 32) = v29;
    *(v24 + 40) = v31;
    v32 = v31;
    v33 = v28;
    v34 = sub_1C1A6E80C();
    v36 = v35;

    if (v36)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v48 = 0;
    *(v24 + 32) = 0;
    *(v24 + 40) = 0xE000000000000000;
    v32 = 0xE000000000000000;
  }

  v34 = 0;
  v36 = 0xE000000000000000;
LABEL_9:
  v47 = v34;
  *(v24 + 48) = v34;
  *(v24 + 56) = v36;
  swift_beginAccess();
  v37 = v54;
  *(v24 + 80) = v53;
  *(v24 + 88) = v37;
  v38 = v56;
  *(v24 + 64) = v55;
  *(v24 + 72) = v38;
  v39 = v58;
  sub_1C1990FA8(v58, v24 + OBJC_IVAR____TtC17PromotedContentUI10AppStoreAd_frequencyStorageType, &qword_1EBF03E48);
  sub_1C1990FA8(v39, v15, &qword_1EBF03E48);
  v40 = v21;
  if ((*(v21 + 48))(v15, 1, v23) == 1)
  {

    sub_1C1991140(v15, &qword_1EBF03E48);
  }

  else
  {
    v41 = v52;
    (*(v21 + 32))(v52, v15, v23);
    v56 = type metadata accessor for VisibilityTimingTracker();

    v42 = [v25 metricsHelper];
    swift_getObjectType();
    v43 = v51;
    v49(v51, v41, v23);
    v44 = sub_1C19E5124(v48, v32, v47, v36, v42, v43);

    (*(v40 + 8))(v41, v23);
    *(v24 + 104) = v44;
  }

  sub_1C1A6E73C();
  sub_1C1A6E72C();
  sub_1C1A69A38();
  v45 = [v25 journeyIdentifier];
  sub_1C1A6F3CC();

  sub_1C1A6E70C();

  sub_1C1991140(v58, &qword_1EBF03E48);
  (*(v40 + 8))(v57, v23);
  return v24;
}

uint64_t sub_1C19F1F78(uint64_t a1)
{
  v2 = sub_1C1A6D93C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1C19F247C(&qword_1EDE62390, MEMORY[0x1E69C5E30]);
  result = MEMORY[0x1C69050C0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_1C19EDCA0(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

__n128 sub_1C19F2114@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + *(*v1 + 136);
  v3 = *(v2 + 32);
  result = *v2;
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1C19F219C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C19F24C4();
  result = MEMORY[0x1C69050C0](v2, MEMORY[0x1E69E7DE0], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1C19EE298(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1C19F2210(uint64_t a1)
{
  v2 = sub_1C1A6D6EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1C19F247C(&qword_1EDE623A8, MEMORY[0x1E6969C28]);
  result = MEMORY[0x1C69050C0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_1C19EE38C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1C19F23BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C19F240C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF038A8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C19F247C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C19F24C4()
{
  result = qword_1EDE63960;
  if (!qword_1EDE63960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE63960);
  }

  return result;
}

uint64_t sub_1C19F2518(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1C69050C0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C19EE66C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_1C19F2644()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if ((v2 - 1) >= 2)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 159.1875;
  }

  v80 = objc_opt_self();
  sub_1C19A9E58(&qword_1EBF03E88);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1A75930;
  v5 = sub_1C19AF868();
  v6 = [v5 leadingAnchor];

  v7 = [v0 contentView];
  v8 = [v7 &off_1E8148528 + 1];

  v9 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v9;
  v10 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView;
  v11 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView] topAnchor];
  v12 = [v0 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v4 + 40) = v14;
  v15 = [*&v0[v10] trailingAnchor];
  v16 = [v0 contentView];
  v17 = [v16 &selRef_didImpress + 4];

  v18 = [v15 constraintEqualToAnchor_];
  *(v4 + 48) = v18;
  v19 = [*&v0[v10] heightAnchor];
  v20 = [v19 constraintEqualToConstant_];

  *(v4 + 56) = v20;
  v21 = sub_1C19AF980();
  v22 = [v21 leadingAnchor];

  v23 = [v0 contentView];
  v24 = [v23 leadingAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v4 + 64) = v25;
  v26 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView;
  v27 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView] topAnchor];
  v28 = [*&v0[v10] bottomAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v4 + 72) = v29;
  v30 = [*&v0[v26] trailingAnchor];
  v31 = [v0 contentView];
  v32 = [v31 trailingAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v4 + 80) = v33;
  v34 = [*&v0[v26] &selRef_addUnfilledReason_ + 5];
  v35 = [v0 contentView];
  v36 = [v35 &selRef_addUnfilledReason_ + 5];

  v37 = [v34 constraintEqualToAnchor_];
  *(v4 + 88) = v37;
  v38 = sub_1C19AF98C();
  v39 = [v38 leadingAnchor];

  v40 = [*&v0[v26] leadingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:12.0];

  *(v4 + 96) = v41;
  v42 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel;
  v43 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel] topAnchor];
  v44 = [*&v0[v26] topAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:12.0];

  *(v4 + 104) = v45;
  v46 = [*&v0[v42] trailingAnchor];
  v47 = [*&v0[v26] trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-12.0];

  *(v4 + 112) = v48;
  v49 = [*&v0[v42] &selRef_addUnfilledReason_ + 5];
  v50 = [*&v0[v26] &selRef_addUnfilledReason_ + 5];
  v51 = [v49 constraintEqualToAnchor:v50 constant:-12.0];

  *(v4 + 120) = v51;
  v52 = sub_1C19AF9EC();
  v53 = [v52 leadingAnchor];

  v54 = [*&v0[v26] leadingAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v4 + 128) = v55;
  v56 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView;
  v57 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView] topAnchor];
  v58 = [*&v0[v26] topAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v4 + 136) = v59;
  v60 = [*&v0[v56] trailingAnchor];
  v61 = [*&v0[v26] trailingAnchor];
  v62 = [v60 constraintEqualToAnchor_];

  *(v4 + 144) = v62;
  v63 = [*&v0[v56] bottomAnchor];
  v64 = [*&v0[v26] bottomAnchor];
  v65 = [v63 constraintEqualToAnchor_];

  *(v4 + 152) = v65;
  v66 = sub_1C19AFAB0();
  v67 = [v66 leadingAnchor];

  v68 = [*&v0[v26] leadingAnchor];
  v69 = [v67 constraintEqualToAnchor_];

  *(v4 + 160) = v69;
  v70 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView;
  v71 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView] topAnchor];
  v72 = [*&v0[v26] topAnchor];
  v73 = [v71 constraintEqualToAnchor_];

  *(v4 + 168) = v73;
  v74 = [*&v0[v70] trailingAnchor];
  v75 = [*&v0[v26] trailingAnchor];
  v76 = [v74 constraintEqualToAnchor_];

  *(v4 + 176) = v76;
  v77 = [*&v0[v70] bottomAnchor];
  v78 = [*&v0[v26] bottomAnchor];
  v79 = [v77 constraintEqualToAnchor_];

  *(v4 + 184) = v79;
  sub_1C19C2864();
  v81 = sub_1C1A6F50C();

  [v80 activateConstraints_];
}

id sub_1C19F2F6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumCarouselCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t StartupType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1C19F2FD8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1C19F3000@<X0>(uint64_t *a1@<X8>)
{
  sub_1C19F34DC();
  sub_1C1A6F68C();
  v2 = sub_1C1A6D7AC();
  swift_allocObject();
  v3 = sub_1C1A6D79C();
  v4 = sub_1C1A6F11C();
  v23 = v4;
  v24 = sub_1C19F3528(qword_1EDE639A0, MEMORY[0x1E6986020]);
  v5 = sub_1C19927E8(v22);
  (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E6986008], v4);
  v6 = sub_1C1A6F16C();
  v17 = v6;
  v18 = MEMORY[0x1E6986060];
  v7 = sub_1C19927E8(v16);
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E6986058], v6);
  v20 = sub_1C1A6F15C();
  v21 = MEMORY[0x1E6986050];
  sub_1C19927E8(v19);
  sub_1C1A6F14C();
  v8 = sub_1C1A6F13C();
  swift_allocObject();
  v9 = sub_1C1A6F12C();
  v23 = v8;
  v24 = sub_1C19F3528(&qword_1EDE63998, MEMORY[0x1E6986048]);
  v22[0] = v9;
  v10 = sub_1C1A6D72C();
  swift_allocObject();
  v11 = sub_1C1A6D71C();
  v23 = v2;
  v24 = MEMORY[0x1E6986120];
  v22[0] = v3;
  v20 = v10;
  v21 = MEMORY[0x1E69860F0];
  v19[0] = v11;
  v12 = sub_1C1A6D7CC();
  swift_allocObject();

  v13 = sub_1C1A6D7BC();
  v17 = v12;
  v18 = MEMORY[0x1E6986128];
  v16[0] = v13;
  v15[3] = v2;
  v15[4] = MEMORY[0x1E6986118];
  v15[0] = v3;
  sub_1C1993C3C(v22, v19, v16, v15, a1);

  sub_1C199935C(v15);
  sub_1C199935C(v16);
  sub_1C199935C(v19);
  return sub_1C199935C(v22);
}

uint64_t static PromotedContentUIModule.start()()
{
  if (qword_1EDE63FF8 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t static PromotedContentUIModule.start(startupType:)(uint64_t result)
{
  qword_1EDE63E80 = result;
  if (qword_1EDE63FF8 != -1)
  {
    return swift_once();
  }

  return result;
}

id PromotedContentUIModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PromotedContentUIModule.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromotedContentUIModule();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PromotedContentUIModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromotedContentUIModule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C19F3474()
{
  result = qword_1EBF04418;
  if (!qword_1EBF04418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04418);
  }

  return result;
}

unint64_t sub_1C19F34DC()
{
  result = qword_1EDE63970;
  if (!qword_1EDE63970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE63970);
  }

  return result;
}

uint64_t sub_1C19F3528(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C19F35FC()
{
  v100 = objc_opt_self();
  sub_1C19A9E58(&qword_1EBF03E88);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C1A75AC0;
  v2 = sub_1C19AF868();
  v3 = [v2 leadingAnchor];

  v4 = [v0 contentView];
  v5 = [v4 &off_1E8148528 + 1];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView;
  v8 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView] topAnchor];
  v9 = [v0 contentView];
  v10 = [v9 topAnchor];

  v11 = [v8 &selRef:v10 preferredFontForTextStyle:? + 5];
  *(v1 + 40) = v11;
  v12 = [*&v0[v7] trailingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 &selRef_didImpress + 4];

  v15 = [v12 &selRef:v14 preferredFontForTextStyle:? + 5];
  *(v1 + 48) = v15;
  v16 = [*&v0[v7] bottomAnchor];
  v17 = sub_1C19AF980();
  v18 = [v17 topAnchor];

  v19 = [v16 &selRef:v18 preferredFontForTextStyle:? + 5];
  *(v1 + 56) = v19;
  v20 = [*&v0[v7] heightAnchor];
  v21 = [*&v0[v7] widthAnchor];
  v22 = [v20 &selRef:v21 preferredFontForTextStyle:? + 5];

  *(v1 + 64) = v22;
  v23 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView;
  v24 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView] leadingAnchor];
  v25 = [v0 contentView];
  v26 = [v25 leadingAnchor];

  v27 = [v24 &selRef:v26 preferredFontForTextStyle:? + 5];
  *(v1 + 72) = v27;
  v28 = [*&v0[v23] topAnchor];
  v29 = [*&v0[v7] bottomAnchor];
  v30 = [v28 &selRef:v29 preferredFontForTextStyle:? + 5];

  *(v1 + 80) = v30;
  v31 = [*&v0[v23] trailingAnchor];
  v32 = [v0 contentView];
  v33 = [v32 trailingAnchor];

  v34 = [v31 &selRef:v33 preferredFontForTextStyle:? + 5];
  *(v1 + 88) = v34;
  v35 = [*&v0[v23] bottomAnchor];
  v36 = [v0 contentView];
  v37 = [v36 bottomAnchor];

  v38 = [v35 &selRef:v37 preferredFontForTextStyle:? + 5];
  *(v1 + 96) = v38;
  v39 = [*&v0[v23] heightAnchor];
  v40 = [v39 constraintGreaterThanOrEqualToConstant_];

  *(v1 + 104) = v40;
  v41 = sub_1C19AF98C();
  v42 = [v41 leadingAnchor];

  v43 = [*&v0[v23] leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:12.0];

  *(v1 + 112) = v44;
  v45 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel;
  v46 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel] topAnchor];
  v47 = [*&v0[v23] topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:12.0];

  *(v1 + 120) = v48;
  v49 = [*&v0[v45] trailingAnchor];
  v50 = sub_1C19B139C();
  v51 = [v50 leadingAnchor];

  v52 = [v49 constraintEqualToAnchor:v51 constant:-12.0];
  *(v1 + 128) = v52;
  v53 = [*&v0[v45] bottomAnchor];
  v54 = [*&v0[v23] bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:-12.0];

  *(v1 + 136) = v55;
  v56 = OBJC_IVAR____TtC17PromotedContentUI29CTACarouselCollectionViewCell____lazy_storage___button;
  v57 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI29CTACarouselCollectionViewCell____lazy_storage___button] trailingAnchor];
  v58 = [*&v0[v23] trailingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:-12.0];

  *(v1 + 144) = v59;
  v60 = [*&v0[v56] centerYAnchor];
  v61 = [*&v0[v23] centerYAnchor];
  v62 = [v60 constraintEqualToAnchor_];

  *(v1 + 152) = v62;
  v63 = [*&v0[v56] heightAnchor];
  v64 = [v63 constraintEqualToConstant_];

  *(v1 + 160) = v64;
  v65 = sub_1C19AF9EC();
  v66 = [v65 leadingAnchor];

  v67 = [*&v0[v23] leadingAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v1 + 168) = v68;
  v69 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView;
  v70 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView] topAnchor];
  v71 = [*&v0[v23] topAnchor];
  v72 = [v70 constraintEqualToAnchor_];

  *(v1 + 176) = v72;
  v73 = [*&v0[v69] trailingAnchor];
  v74 = [*&v0[v23] trailingAnchor];
  v75 = [v73 constraintEqualToAnchor_];

  *(v1 + 184) = v75;
  v76 = [*&v0[v69] bottomAnchor];
  v77 = [*&v0[v23] bottomAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(v1 + 192) = v78;
  v79 = sub_1C19AFAB0();
  v80 = [v79 leadingAnchor];

  v81 = [*&v0[v23] leadingAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  *(v1 + 200) = v82;
  v83 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView;
  v84 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView] topAnchor];
  v85 = [*&v0[v23] topAnchor];
  v86 = [v84 constraintEqualToAnchor_];

  *(v1 + 208) = v86;
  v87 = [*&v0[v83] trailingAnchor];
  v88 = [*&v0[v23] trailingAnchor];
  v89 = [v87 constraintEqualToAnchor_];

  *(v1 + 216) = v89;
  v90 = [*&v0[v83] bottomAnchor];
  v91 = [*&v0[v23] bottomAnchor];
  v92 = [v90 constraintEqualToAnchor_];

  *(v1 + 224) = v92;
  sub_1C19C2864();
  v93 = sub_1C1A6F50C();

  [v100 activateConstraints_];

  LODWORD(v94) = 1144750080;
  [*&v0[v56] setContentHuggingPriority:0 forAxis:v94];
  LODWORD(v95) = 1132068864;
  [*&v0[v45] setContentHuggingPriority:0 forAxis:v95];
  LODWORD(v96) = 1144750080;
  [*&v0[v56] setContentCompressionResistancePriority:0 forAxis:v96];
  v97 = *&v0[v45];
  LODWORD(v98) = 1132068864;

  return [v97 setContentCompressionResistancePriority:0 forAxis:v98];
}

id sub_1C19F4118()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LargeCTACarouselCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C19F4170(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for CarouselElement();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1A6D6EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C1A52444();
  v17 = [v16 indexPathForCell_];

  if (v17)
  {
    sub_1C1A6D6CC();

    v18 = *(v4 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_elements);
    v19 = sub_1C1A6D6DC();
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v18 + 16))
    {
      sub_1C19F4614(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v11);
      [*(v4 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___collectionView) convertPoint:v4 toCoordinateSpace:{a2, a3}];
      v22 = sub_1C1A41660(v20, v21);
      sub_1C1A5BAC8(v22, v24, v23 & 1, *v11);
      v25 = *&v11[*(v8 + 36)];
      if (v25)
      {
        v26 = v25;
        v27 = v26;
LABEL_6:
        sub_1C1A41A98(v26);

LABEL_21:
        sub_1C19F4678(v11);
        (*(v13 + 8))(v15, v12);
        return;
      }

      v29 = *(v4 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation);
      if (v29)
      {
        v30 = v29;
        v27 = sub_1C1A6DB4C();

        if (v27)
        {
          if (qword_1EDE63990 != -1)
          {
            swift_once();
          }

          v31 = sub_1C1A6F1BC();
          sub_1C1994600(v31, qword_1EDE665F0);
          v32 = sub_1C1A6F19C();
          v33 = sub_1C1A6F66C();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = 0;
            _os_log_impl(&dword_1C198D000, v32, v33, "Element does not contain a tap action. Falling back to global action.", v34, 2u);
            MEMORY[0x1C6906260](v34, -1, -1);
          }

          v26 = v27;
          goto LABEL_6;
        }
      }

      if (qword_1EDE63990 == -1)
      {
LABEL_18:
        v35 = sub_1C1A6F1BC();
        sub_1C1994600(v35, qword_1EDE665F0);
        v36 = sub_1C1A6F19C();
        v37 = sub_1C1A6F66C();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_1C198D000, v36, v37, "Element nor data representation contain a tap action.", v38, 2u);
          MEMORY[0x1C6906260](v38, -1, -1);
        }

        goto LABEL_21;
      }

LABEL_24:
      swift_once();
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_24;
  }

  sub_1C1A6F66C();
  sub_1C199E4CC();
  v40 = sub_1C1A6F8EC();
  sub_1C1A6F18C();
  v28 = v40;
}

uint64_t sub_1C19F4614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarouselElement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C19F4678(uint64_t a1)
{
  v2 = type metadata accessor for CarouselElement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C19F4A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C1A6D62C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C1994048((v4 + 16), *(v4 + 40));
  v9 = sub_1C1A6ED5C();
  v11 = v10;
  sub_1C1A6D61C();
  v12 = objc_allocWithZone(sub_1C1A6E9EC());
  v13 = sub_1C1A6E98C();
  sub_1C1A6EB6C();
  v14 = sub_1C1A6EA7C();

  switch(a4)
  {
    case 1025:
      v15 = 1;
      break;
    case 1031:
      v15 = 2;
      break;
    case 1058:
      v15 = 0;
      break;
    default:
      v15 = 3;
      break;
  }

  return sub_1C1A06F5C(v14, v9, v11, a1, a2, v15);
}

uint64_t sub_1C19F4BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C19F4A10(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_1C19F4BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C1A6D62C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1C1A6D9BC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x1E69C5EA8])
  {
    v17 = 1058;
  }

  else if (v16 == *MEMORY[0x1E69C5EB8])
  {
    v17 = 1057;
  }

  else if (v16 == *MEMORY[0x1E69C5EA0])
  {
    v17 = 1031;
  }

  else
  {
    (*(v12 + 8))(v15, v11);
    v17 = 1025;
  }

  sub_1C1A6D61C();
  v18 = objc_allocWithZone(sub_1C1A6E9EC());
  v19 = sub_1C1A6E98C();
  sub_1C1A6EB6C();
  v20 = sub_1C1A6EA7C();

  switch(v17)
  {
    case 1025:
      v21 = 1;
      break;
    case 1031:
      v21 = 2;
      break;
    case 1058:
      v21 = 0;
      break;
    default:
      v21 = 3;
      break;
  }

  return sub_1C1A06F5C(v20, a4, a5, a2, a3, v21);
}

__n128 sub_1C19F4E88(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C19F4EA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1C19F4EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MetricsViewImpressionInfo.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C1A6D5DC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for MetricsViewImpressionInfo()
{
  result = qword_1EDE62A00;
  if (!qword_1EDE62A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static MetricsViewImpressionInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1C1A6D58C() & 1) != 0 && (v4 = type metadata accessor for MetricsViewImpressionInfo(), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C19F50AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1C1A6D58C() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C19F5140()
{
  result = sub_1C1A6D5DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C19F5214(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v27 = *v2;
  v3 = sub_1C1A6D62C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  sub_1C1A6D61C();
  v10 = sub_1C1A6D5EC();
  v12 = v11;
  v13 = *(v4 + 8);
  v13(v9, v3);
  sub_1C1A6D61C();
  v14 = sub_1C1A6D5EC();
  v16 = v15;
  v13(v6, v3);
  v17 = sub_1C19E5F0C();
  v19 = v18;
  type metadata accessor for AppStoreRequestTask();
  v20 = swift_allocObject();
  *(v20 + 96) = 0;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v20 + 104) = 0;
  *(v20 + 112) = 0;
  *(v20 + 120) = 0;
  sub_1C1A6D5CC();
  *(v20 + 16) = v10;
  *(v20 + 24) = v12;
  *(v20 + 48) = v14;
  *(v20 + 56) = v16;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;
  *(v20 + 80) = 7005;
  v21 = swift_allocObject();
  v21[2] = v25;
  v21[3] = v26;
  v21[4] = v20;
  v28 = sub_1C19F56E4;
  v29 = v21;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v33 = 0x80;

  v22 = sub_1C1A6DB5C();

  *(v20 + 64) = v22;

  return v20;
}

uint64_t sub_1C19F5474()
{

  sub_1C1A6DB5C();
}

uint64_t sub_1C19F554C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1C19F5714(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF03888);
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(v22 - v6, *MEMORY[0x1E69C5ED0], v5);
  sub_1C19A9E58(&qword_1EBF04440);
  swift_allocObject();
  v8 = sub_1C1A6D96C();
  v9 = sub_1C1A6E00C();
  v10 = sub_1C1A6DFFC();
  v22[6] = v9;
  v22[7] = MEMORY[0x1E69C5F60];
  v22[3] = v10;
  sub_1C19A9E58(&qword_1EBF04448);
  swift_allocObject();
  v11 = sub_1C1A6DE7C();
  sub_1C19A9E58(&qword_1EBF04450);
  v22[1] = sub_1C1A6E69C();
  v22[2] = v11;
  sub_1C19A9E58(&qword_1EBF04458);
  swift_allocObject();
  v12 = sub_1C1A6DC1C();
  v13 = [objc_opt_self() activeClientInfo];
  if (qword_1EDE63320 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDE66578;
  sub_1C19A9E58(&qword_1EBF04460);
  v15 = swift_allocObject();
  v16 = objc_allocWithZone(MEMORY[0x1E69861E0]);
  swift_retain_n();
  v17 = [v16 init];

  *(v15 + 4) = v17;
  v18 = *(*v15 + 120);
  v19 = sub_1C1A6D5DC();
  (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
  v15[*(*v15 + 128)] = 0;
  v20 = &v15[*(*v15 + 136)];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *&v15[*(*v15 + 160)] = 0;
  *&v15[*(*v15 + 168)] = 0;
  *&v15[*(*v15 + 176)] = 0;
  *&v15[*(*v15 + 184)] = 0;
  *&v15[*(*v15 + 192)] = 0;
  *&v15[*(*v15 + 200)] = 0;
  *(v15 + 2) = v8;
  *(v15 + 3) = v12;
  *&v15[*(*v15 + 144)] = v14;
  *&v15[*(*v15 + 152)] = a1;
  *&v15[*(*v15 + 208)] = a2;
  sub_1C19A9E58(&qword_1EBF04468);
  result = swift_allocObject();
  *(result + 16) = v15;
  *(result + 24) = v14;
  return result;
}

id sub_1C19F5B18()
{
  v1 = OBJC_IVAR___APPCPromotedContentView____lazy_storage___attributionView;
  v2 = *(v0 + OBJC_IVAR___APPCPromotedContentView____lazy_storage___attributionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___APPCPromotedContentView____lazy_storage___attributionView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC9F8]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1C19F5BB8()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 nativeScale];
  v3 = v2;

  v4 = [v0 layer];
  if (qword_1EDE62688 != -1)
  {
    swift_once();
  }

  if (qword_1EDE62690)
  {
    v5 = [qword_1EDE62690 CGColor];
  }

  else
  {
    v5 = 0;
  }

  [v4 setBorderColor_];

  v6 = [v0 layer];
  [v6 setBorderWidth_];
}

void sub_1C19F5CF8()
{
  v1 = OBJC_IVAR___APPCPromotedContentView_tapGestureRecognizer;
  [*&v0[OBJC_IVAR___APPCPromotedContentView_tapGestureRecognizer] addTarget:v0 action:sel_tapRecognized_];
  v2 = *&v0[v1];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = &v2[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchDownHandler];
  v5 = *&v2[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchDownHandler];
  *v4 = sub_1C19F6DE4;
  v4[1] = v3;
  v6 = v2;

  sub_1C19A504C(v5);

  v7 = *&v0[v1];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = &v7[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchMovedHandler];
  v10 = *&v7[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchMovedHandler];
  *v9 = sub_1C19F6E0C;
  v9[1] = v8;
  v11 = v7;

  sub_1C19A504C(v10);

  v12 = *&v0[v1];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = &v12[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchUpHandler];
  v15 = *&v12[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchUpHandler];
  *v14 = sub_1C19F72CC;
  v14[1] = v13;
  v16 = v12;

  sub_1C19A504C(v15);

  [*&v0[v1] setCancelsTouchesInView_];
  v0[OBJC_IVAR___APPCPromotedContentView_shouldBlockNavigation] = 0;
  v0[OBJC_IVAR___APPCPromotedContentView_tapWasRecognized] = 0;
  [v0 addGestureRecognizer_];
  v17 = *&v0[v1];
  v18 = *&v0[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView];
  swift_beginAccess();
  v19 = v17;
  sub_1C19EE060(&v21, v18);
  v20 = v21;
  swift_endAccess();
}

void sub_1C19F5F64()
{
  [v0 setIsAccessibilityElement_];
  v1 = [*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] campaignText];
  [v0 setAccessibilityLabel_];
}

uint64_t sub_1C19F5FE0(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1C1A6EA1C();
    v3 = [a2 tapAction];
    if (v3)
    {
      v4 = v3;
      sub_1C1A6EA1C();
    }
  }

  return 1;
}

uint64_t sub_1C19F603C()
{
  sub_1C19A9E58(&qword_1EBF03768);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C1A73CD0;
  *(v1 + 56) = type metadata accessor for PromotedContentView();
  *(v1 + 32) = v0;
  v2 = *&v0[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView];
  *(v1 + 88) = type metadata accessor for PrivacyMarker();
  *(v1 + 64) = v2;
  v3 = v0;
  v4 = v2;
  return v1;
}

uint64_t sub_1C19F60C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C19F6B90(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C19F6164()
{
  v1 = v0;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1C1A6FACC();
  MEMORY[0x1C6904F50](60, 0xE100000000000000);
  v12.receiver = v0;
  v12.super_class = type metadata accessor for PromotedContentView();
  v2 = objc_msgSendSuper2(&v12, sel_description);
  v3 = sub_1C1A6F3CC();
  v5 = v4;

  MEMORY[0x1C6904F50](v3, v5);

  MEMORY[0x1C6904F50](0xD000000000000014, 0x80000001C1A7E770);
  v6 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  sub_1C19A9E58(&qword_1EBF04478);
  sub_1C1A6FB7C();
  MEMORY[0x1C6904F50](0xD00000000000001ELL, 0x80000001C1A7E790);
  v7 = [*&v1[v6] identifier];
  v8 = sub_1C1A6F3CC();
  v10 = v9;

  MEMORY[0x1C6904F50](v8, v10);

  MEMORY[0x1C6904F50](62, 0xE100000000000000);
  return v13;
}

id sub_1C19F62F4()
{
  result = [*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) bestRepresentation];
  if (result)
  {
    [result adSize];
    v3 = v2;
    swift_unknownObjectRelease();
    return v3;
  }

  return result;
}

id PromotedContentView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PromotedContentView.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_1C1A6D62C();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  sub_1C1A6F65C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v8 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C1A73A30;
  v10 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v11 = [*&v1[OBJC_IVAR___APPCPromotedContentView_promotedContent] journeyIdentifier];
  v12 = sub_1C1A6F3CC();
  v14 = v13;

  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1C199E518();
  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  sub_1C1A6F18C();

  v15 = [*&v1[v10] bestRepresentation];
  if (v15)
  {
    v16 = [v15 id];
    swift_unknownObjectRelease();
    sub_1C1A6D60C();

    v18 = v23;
    v17 = v24;
    (*(v23 + 32))(v7, v4, v24);
    v19 = objc_opt_self();
    sub_1C1A6D5EC();
    v20 = sub_1C1A6F39C();

    [v19 invalidateProxyDemultiplexerSessionForId_];

    (*(v18 + 8))(v7, v17);
  }

  v21 = type metadata accessor for PromotedContentView();
  v25.receiver = v1;
  v25.super_class = v21;
  return objc_msgSendSuper2(&v25, sel_dealloc);
}

void sub_1C19F67F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, SEL *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC17PromotedContentUI10DimmerView_dimmed) = a4;
    v8 = Strong;
    v9 = [objc_opt_self() *a5];
    [v8 setBackgroundColor_];
  }
}

id PromotedContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_1C19F6A2C()
{
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = [v1 mainBundle];
  sub_1C198FB8C(0, &qword_1EDE62678);
  v4 = sub_1C1A6F7BC();

  if (v4)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v5 = sub_1C1A6F39C();
    v6 = [objc_opt_self() colorNamed:v5 inBundle:v2 compatibleWithTraitCollection:0];

    qword_1EDE62690 = v6;
  }
}

uint64_t sub_1C19F6B90(uint64_t result)
{
  if ((result - 306) < 0xFFFFFFFFFFFFFFFALL)
  {
    return 0;
  }

  return result;
}

void _s17PromotedContentUI0aB4ViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR___APPCPromotedContentView_dimmerView;
  type metadata accessor for DimmerView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR___APPCPromotedContentView_expandedAdTapGestureRecognizer) = 0;
  v2 = v0 + OBJC_IVAR___APPCPromotedContentView_expandedAdFrame;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  *(v0 + OBJC_IVAR___APPCPromotedContentView_visiblePercentage) = 0;
  *(v0 + OBJC_IVAR___APPCPromotedContentView_lastPerformedAction) = 0;
  *(v0 + OBJC_IVAR___APPCPromotedContentView_shouldBlockNavigation) = 0;
  *(v0 + OBJC_IVAR___APPCPromotedContentView_tapWasRecognized) = 0;
  *(v0 + OBJC_IVAR___APPCPromotedContentView_storeProductRequester) = 0;
  *(v0 + OBJC_IVAR___APPCPromotedContentView_interactionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___APPCPromotedContentView_readiness) = 300;
  *(v0 + OBJC_IVAR___APPCPromotedContentView_videoTapAction) = 0;
  v3 = OBJC_IVAR___APPCPromotedContentView_videoActionTimestamp;
  v4 = sub_1C1A6F25C();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR___APPCPromotedContentView_videoMoreLocation;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v0 + OBJC_IVAR___APPCPromotedContentView_shouldCollapseOnRotation) = 0;
  *(v0 + OBJC_IVAR___APPCPromotedContentView____lazy_storage___attributionView) = 0;
  v6 = v0 + OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition;
  *v6 = 0;
  *(v6 + 8) = 1;
  sub_1C1A6FB8C();
  __break(1u);
}

unint64_t sub_1C19F6D90()
{
  result = qword_1EBF044F0[0];
  if (!qword_1EBF044F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBF044F0);
  }

  return result;
}

void *sub_1C19F6E34(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v30[3] = sub_1C198FB8C(0, &qword_1EDE62708);
  v30[4] = &off_1F4141E80;
  v30[0] = a4;
  v10 = OBJC_IVAR___APPCPromotedContentView_dimmerView;
  type metadata accessor for DimmerView();
  *&a5[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&a5[OBJC_IVAR___APPCPromotedContentView_expandedAdTapGestureRecognizer] = 0;
  v11 = &a5[OBJC_IVAR___APPCPromotedContentView_expandedAdFrame];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  *&a5[OBJC_IVAR___APPCPromotedContentView_visiblePercentage] = 0;
  *&a5[OBJC_IVAR___APPCPromotedContentView_lastPerformedAction] = 0;
  a5[OBJC_IVAR___APPCPromotedContentView_shouldBlockNavigation] = 0;
  a5[OBJC_IVAR___APPCPromotedContentView_tapWasRecognized] = 0;
  *&a5[OBJC_IVAR___APPCPromotedContentView_storeProductRequester] = 0;
  *&a5[OBJC_IVAR___APPCPromotedContentView_interactionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR___APPCPromotedContentView_readiness] = 300;
  *&a5[OBJC_IVAR___APPCPromotedContentView_videoTapAction] = 0;
  v12 = OBJC_IVAR___APPCPromotedContentView_videoActionTimestamp;
  v13 = sub_1C1A6F25C();
  (*(*(v13 - 8) + 56))(&a5[v12], 1, 1, v13);
  v14 = &a5[OBJC_IVAR___APPCPromotedContentView_videoMoreLocation];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  a5[OBJC_IVAR___APPCPromotedContentView_shouldCollapseOnRotation] = 0;
  *&a5[OBJC_IVAR___APPCPromotedContentView____lazy_storage___attributionView] = 0;
  v15 = &a5[OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition];
  *v15 = 0;
  v15[8] = 1;
  *&a5[OBJC_IVAR___APPCPromotedContentView_promotedContent] = a1;
  if (a3)
  {
    swift_unknownObjectRetain();
    v16 = a3;
  }

  else
  {
    v17 = objc_allocWithZone(type metadata accessor for PrivacyMarker());
    swift_unknownObjectRetain();
    v16 = [v17 init];
  }

  *&a5[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView] = v16;
  a5[OBJC_IVAR___APPCPromotedContentView_customPrivacyHandling] = a3 != 0;
  v18 = objc_allocWithZone(type metadata accessor for TapGestureRecognizer());
  v19 = a3;
  v20 = [v18 init];
  *&a5[OBJC_IVAR___APPCPromotedContentView_tapGestureRecognizer] = v20;
  sub_1C1A6EB6C();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    v21 = sub_1C1A6EB5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 101;
  }

  *&a5[OBJC_IVAR___APPCPromotedContentView_placement] = v21;
  sub_1C19992F8(v30, &a5[OBJC_IVAR___APPCPromotedContentView_urlOpener]);
  v29.receiver = a5;
  v29.super_class = type metadata accessor for PromotedContentView();
  v22 = objc_msgSendSuper2(&v29, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 clearColor];
  [v24 setBackgroundColor_];

  v26 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v24) + 0x310))();
  v27 = [objc_opt_self() defaultCenter];
  [v27 addObserver:v24 selector:sel_sizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];

  (*((*v26 & *v24) + 0x320))();
  sub_1C199935C(v30);
  return v24;
}

uint64_t type metadata accessor for CarouselElement()
{
  result = qword_1EDE61F50;
  if (!qword_1EDE61F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19F7344()
{
  sub_1C1A6D48C();
  if (v0 <= 0x3F)
  {
    sub_1C19C5764();
    if (v1 <= 0x3F)
    {
      sub_1C19F7448(319, &qword_1EDE62370, MEMORY[0x1E69C6120]);
      if (v2 <= 0x3F)
      {
        sub_1C19F7448(319, &qword_1EDE62380, MEMORY[0x1E69C5F18]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C19F7448(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1A6F91C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C19F749C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C199B708();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1C19F758C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  sub_1C19E5374(v0 + *(*v0 + 104));
  sub_1C19A504C(*(v0 + *(*v0 + 112)));

  sub_1C19A504C(*(v0 + *(*v0 + 136)));
  return v0;
}

uint64_t sub_1C19F76AC()
{
  sub_1C19F758C();

  return swift_deallocClassInstance();
}

void sub_1C19F771C(void *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + *(*a1 + 120));

  [v9 lock];
  v10 = a1[3];
  if (v10)
  {
    v11 = *(a1 + *(*a1 + 128));

    if (v11)
    {

      [v9 unlock];
      sub_1C1A6F65C();
      sub_1C199E4CC();
      v12 = sub_1C1A6F8EC();
      sub_1C1A6F18C();

      a2(v11, v10);
      *(a4 + 64) = 0;
    }

    else
    {
      sub_1C1A6F65C();
      sub_1C199E4CC();
      v13 = sub_1C1A6F8EC();
      sub_1C1A6F18C();

      v14 = (a1 + *(*a1 + 136));
      v15 = *v14;
      *v14 = sub_1C19F7A70;
      v14[1] = v8;
      sub_1C19A504C(v15);

      [v9 unlock];
    }
  }

  else
  {
    [v9 unlock];
    sub_1C1A6F66C();
    sub_1C199E4CC();
    v16 = sub_1C1A6F8EC();
    sub_1C1A6F18C();
  }
}

uint64_t sub_1C19F7A7C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];

    swift_unknownObjectRelease();
    *(v0 + 16) = 0;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_1C19F7B54()
{
  v0 = sub_1C1A6F3CC();
  v2 = v1;
  if (v0 == sub_1C1A6F3CC() && v2 == v3)
  {
    goto LABEL_13;
  }

  v5 = sub_1C1A6FCEC();

  result = 25.0;
  if (v5)
  {
    return result;
  }

  v7 = sub_1C1A6F3CC();
  v9 = v8;
  if (v7 == sub_1C1A6F3CC() && v9 == v10)
  {
    goto LABEL_13;
  }

  v12 = sub_1C1A6FCEC();

  if (v12)
  {
    return 25.0;
  }

  v13 = sub_1C1A6F3CC();
  v15 = v14;
  if (v13 == sub_1C1A6F3CC() && v15 == v16)
  {
    goto LABEL_13;
  }

  v17 = sub_1C1A6FCEC();

  if (v17)
  {
    return 25.0;
  }

  v18 = sub_1C1A6F3CC();
  v20 = v19;
  if (v18 == sub_1C1A6F3CC() && v20 == v21)
  {
LABEL_13:

    return 25.0;
  }

  v22 = sub_1C1A6FCEC();

  if (v22)
  {
    return 25.0;
  }

  v23 = sub_1C1A6F3CC();
  v25 = v24;
  if (v23 == sub_1C1A6F3CC() && v25 == v26)
  {

    return 30.0;
  }

  v27 = sub_1C1A6FCEC();

  result = 30.0;
  if ((v27 & 1) == 0)
  {
    v28 = sub_1C1A6F3CC();
    v30 = v29;
    if (v28 == sub_1C1A6F3CC() && v30 == v31)
    {

      return 35.0;
    }

    v32 = sub_1C1A6FCEC();

    if (v32)
    {
      return 35.0;
    }

    v33 = sub_1C1A6F3CC();
    v35 = v34;
    if (v33 == sub_1C1A6F3CC() && v35 == v36)
    {

      return 40.0;
    }

    v37 = sub_1C1A6FCEC();

    if (v37)
    {
      return 40.0;
    }

    v38 = sub_1C1A6F3CC();
    v40 = v39;
    if (v38 == sub_1C1A6F3CC() && v40 == v41)
    {

      return 45.0;
    }

    v42 = sub_1C1A6FCEC();

    if (v42)
    {
      return 45.0;
    }

    v43 = sub_1C1A6F3CC();
    v45 = v44;
    if (v43 == sub_1C1A6F3CC() && v45 == v46)
    {
      goto LABEL_52;
    }

    v47 = sub_1C1A6FCEC();

    if ((v47 & 1) == 0)
    {
      v48 = sub_1C1A6F3CC();
      v50 = v49;
      if (v48 == sub_1C1A6F3CC() && v50 == v51)
      {
        goto LABEL_52;
      }

      v52 = sub_1C1A6FCEC();

      if (v52)
      {
        return 50.0;
      }

      v53 = sub_1C1A6F3CC();
      v55 = v54;
      if (v53 == sub_1C1A6F3CC() && v55 == v56)
      {
        goto LABEL_52;
      }

      v57 = sub_1C1A6FCEC();

      if (v57)
      {
        return 50.0;
      }

      v58 = sub_1C1A6F3CC();
      v60 = v59;
      if (v58 == sub_1C1A6F3CC() && v60 == v61)
      {
LABEL_52:

        return 50.0;
      }

      v62 = sub_1C1A6FCEC();

      if ((v62 & 1) == 0)
      {
        sub_1C1A6F66C();
        sub_1C199E4CC();
        v63 = sub_1C1A6F8EC();
        sub_1C1A6F18C();

        return 25.0;
      }
    }

    return 50.0;
  }

  return result;
}

double sub_1C19F8178(char a1)
{
  v2 = sub_1C1A6F3CC();
  v4 = v3;
  if (v2 == sub_1C1A6F3CC() && v4 == v5)
  {
    goto LABEL_13;
  }

  v7 = sub_1C1A6FCEC();

  if (v7)
  {
LABEL_14:
    v18 = (a1 & 1) == 0;
    result = 69.0;
    v20 = 30.0;
    goto LABEL_15;
  }

  v8 = sub_1C1A6F3CC();
  v10 = v9;
  if (v8 == sub_1C1A6F3CC() && v10 == v11)
  {
LABEL_13:

    goto LABEL_14;
  }

  v13 = sub_1C1A6FCEC();

  if (v13)
  {
    goto LABEL_14;
  }

  v14 = sub_1C1A6F3CC();
  v16 = v15;
  if (v14 == sub_1C1A6F3CC() && v16 == v17)
  {
    goto LABEL_13;
  }

  v21 = sub_1C1A6FCEC();

  if (v21)
  {
    goto LABEL_14;
  }

  v22 = sub_1C1A6F3CC();
  v24 = v23;
  if (v22 == sub_1C1A6F3CC() && v24 == v25)
  {
    goto LABEL_13;
  }

  v26 = sub_1C1A6FCEC();

  if (v26)
  {
    goto LABEL_14;
  }

  v27 = sub_1C1A6F3CC();
  v29 = v28;
  if (v27 == sub_1C1A6F3CC() && v29 == v30)
  {

LABEL_26:
    v18 = (a1 & 1) == 0;
    result = 83.0;
    v32 = 0x4042000000000000;
LABEL_27:
    v20 = *&v32;
LABEL_15:
    if (!v18)
    {
      return v20;
    }

    return result;
  }

  v31 = sub_1C1A6FCEC();

  if (v31)
  {
    goto LABEL_26;
  }

  v33 = sub_1C1A6F3CC();
  v35 = v34;
  if (v33 == sub_1C1A6F3CC() && v35 == v36)
  {

LABEL_32:
    v18 = (a1 & 1) == 0;
    result = 97.0;
    v32 = 0x4045000000000000;
    goto LABEL_27;
  }

  v37 = sub_1C1A6FCEC();

  if (v37)
  {
    goto LABEL_32;
  }

  v38 = sub_1C1A6F3CC();
  v40 = v39;
  if (v38 == sub_1C1A6F3CC() && v40 == v41)
  {

LABEL_37:
    v18 = (a1 & 1) == 0;
    result = 110.0;
    v32 = 0x4048000000000000;
    goto LABEL_27;
  }

  v42 = sub_1C1A6FCEC();

  if (v42)
  {
    goto LABEL_37;
  }

  v43 = sub_1C1A6F3CC();
  v45 = v44;
  if (v43 == sub_1C1A6F3CC() && v45 == v46)
  {

LABEL_42:
    v18 = (a1 & 1) == 0;
    result = 124.0;
    v32 = 0x404B000000000000;
    goto LABEL_27;
  }

  v47 = sub_1C1A6FCEC();

  if (v47)
  {
    goto LABEL_42;
  }

  v48 = sub_1C1A6F3CC();
  v50 = v49;
  if (v48 == sub_1C1A6F3CC() && v50 == v51)
  {
    goto LABEL_45;
  }

  v52 = sub_1C1A6FCEC();

  if ((v52 & 1) == 0)
  {
    v53 = sub_1C1A6F3CC();
    v55 = v54;
    if (v53 == sub_1C1A6F3CC() && v55 == v56)
    {
      goto LABEL_45;
    }

    v57 = sub_1C1A6FCEC();

    if (v57)
    {
      goto LABEL_47;
    }

    v58 = sub_1C1A6F3CC();
    v60 = v59;
    if (v58 == sub_1C1A6F3CC() && v60 == v61)
    {
      goto LABEL_45;
    }

    v62 = sub_1C1A6FCEC();

    if (v62)
    {
      goto LABEL_47;
    }

    v63 = sub_1C1A6F3CC();
    v65 = v64;
    if (v63 == sub_1C1A6F3CC() && v65 == v66)
    {
LABEL_45:

      goto LABEL_47;
    }

    v67 = sub_1C1A6FCEC();

    if ((v67 & 1) == 0)
    {
      sub_1C1A6F66C();
      sub_1C199E4CC();
      v68 = sub_1C1A6F8EC();
      sub_1C1A6F18C();

      goto LABEL_14;
    }
  }

LABEL_47:
  result = 60.0;
  if ((a1 & 1) == 0)
  {
    return 9.0;
  }

  return result;
}

double sub_1C19F87DC(char a1)
{
  v2 = sub_1C1A6F3CC();
  v4 = v3;
  if (v2 == sub_1C1A6F3CC() && v4 == v5)
  {
    goto LABEL_13;
  }

  v7 = sub_1C1A6FCEC();

  if (v7)
  {
    goto LABEL_14;
  }

  v8 = sub_1C1A6F3CC();
  v10 = v9;
  if (v8 == sub_1C1A6F3CC() && v10 == v11)
  {
    goto LABEL_13;
  }

  v13 = sub_1C1A6FCEC();

  if (v13)
  {
LABEL_14:
    v18 = (a1 & 1) == 0;
    result = 66.0;
    v20 = 30.0;
    goto LABEL_15;
  }

  v14 = sub_1C1A6F3CC();
  v16 = v15;
  if (v14 == sub_1C1A6F3CC() && v16 == v17)
  {
LABEL_13:

    goto LABEL_14;
  }

  v21 = sub_1C1A6FCEC();

  if (v21)
  {
    goto LABEL_14;
  }

  v22 = sub_1C1A6F3CC();
  v24 = v23;
  if (v22 == sub_1C1A6F3CC() && v24 == v25)
  {

LABEL_23:
    v18 = (a1 & 1) == 0;
    result = 70.0;
    v20 = 31.0;
    goto LABEL_15;
  }

  v26 = sub_1C1A6FCEC();

  if (v26)
  {
    goto LABEL_23;
  }

  v27 = sub_1C1A6F3CC();
  v29 = v28;
  if (v27 == sub_1C1A6F3CC() && v29 == v30)
  {

LABEL_28:
    v18 = (a1 & 1) == 0;
    result = 73.5;
    v20 = 32.5;
    goto LABEL_15;
  }

  v31 = sub_1C1A6FCEC();

  if (v31)
  {
    goto LABEL_28;
  }

  v32 = sub_1C1A6F3CC();
  v34 = v33;
  if (v32 == sub_1C1A6F3CC() && v34 == v35)
  {

LABEL_33:
    v18 = (a1 & 1) == 0;
    result = 81.0;
    v20 = 34.5;
    goto LABEL_15;
  }

  v36 = sub_1C1A6FCEC();

  if (v36)
  {
    goto LABEL_33;
  }

  v37 = sub_1C1A6F3CC();
  v39 = v38;
  if (v37 == sub_1C1A6F3CC() && v39 == v40)
  {

LABEL_38:
    v18 = (a1 & 1) == 0;
    result = 84.5;
    v20 = 36.0;
    goto LABEL_15;
  }

  v41 = sub_1C1A6FCEC();

  if (v41)
  {
    goto LABEL_38;
  }

  v42 = sub_1C1A6F3CC();
  v44 = v43;
  if (v42 == sub_1C1A6F3CC() && v44 == v45)
  {

LABEL_43:
    v18 = (a1 & 1) == 0;
    result = 99.5;
    v20 = 40.5;
    goto LABEL_15;
  }

  v46 = sub_1C1A6FCEC();

  if (v46)
  {
    goto LABEL_43;
  }

  v47 = sub_1C1A6F3CC();
  v49 = v48;
  if (v47 == sub_1C1A6F3CC() && v49 == v50)
  {

LABEL_48:
    v18 = (a1 & 1) == 0;
    result = 111.5;
    v20 = 44.5;
    goto LABEL_15;
  }

  v51 = sub_1C1A6FCEC();

  if (v51)
  {
    goto LABEL_48;
  }

  v52 = sub_1C1A6F3CC();
  v54 = v53;
  if (v52 == sub_1C1A6F3CC() && v54 == v55)
  {

LABEL_53:
    v18 = (a1 & 1) == 0;
    result = 132.0;
    v20 = 51.0;
    goto LABEL_15;
  }

  v56 = sub_1C1A6FCEC();

  if (v56)
  {
    goto LABEL_53;
  }

  v57 = sub_1C1A6F3CC();
  v59 = v58;
  if (v57 == sub_1C1A6F3CC() && v59 == v60)
  {

LABEL_58:
    v18 = (a1 & 1) == 0;
    result = 148.0;
    v20 = 55.5;
    goto LABEL_15;
  }

  v61 = sub_1C1A6FCEC();

  if (v61)
  {
    goto LABEL_58;
  }

  v62 = sub_1C1A6F3CC();
  v64 = v63;
  if (v62 == sub_1C1A6F3CC() && v64 == v65)
  {
  }

  else
  {
    v66 = sub_1C1A6FCEC();

    if ((v66 & 1) == 0)
    {
      sub_1C1A6F66C();
      sub_1C199E4CC();
      v67 = sub_1C1A6F8EC();
      sub_1C1A6F18C();

      goto LABEL_23;
    }
  }

  v18 = (a1 & 1) == 0;
  result = 167.5;
  v20 = 62.0;
LABEL_15:
  if (!v18)
  {
    return v20;
  }

  return result;
}

id sub_1C19F8F28()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTextAlignment_];
  [v0 setLineBreakMode_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() systemFontOfSize_];
  [v0 setFont_];

  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

uint64_t sub_1C19F902C()
{
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
  }

  else
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
  }

  v4 = v3;

  return v4;
}

void sub_1C19F90C0()
{
  v1 = v0;
  sub_1C1999AD0();
  [*&v0[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView] removeFromSuperview];
  [*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] serverUnfilledReason];
  v2 = sub_1C1A6DF6C();
  if (v2 == sub_1C1A6DF6C())
  {
    v3 = [objc_opt_self() clearColor];
    [v1 setBackgroundColor_];

    [v1 addSubview_];
    [v1 addSubview_];
    v4 = sub_1C19F968C();
    sub_1C1A51684(v4);
    v5 = sub_1C19F97BC();
    sub_1C1A51684(v5);
    v6 = objc_opt_self();
    sub_1C19C2864();
    v7 = sub_1C1A6F50C();

    [v6 activateConstraints_];

    sub_1C19F9250();
  }
}

void sub_1C19F9250()
{
  [*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) serverUnfilledReason];
  v1 = sub_1C1A6DF6C();
  if (v1 == sub_1C1A6DF6C())
  {
    v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_textLabel);
    v3 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_text + 8) ? sub_1C1A6F39C() : 0;
    [v2 setText_];

    v4 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_image);
    if (v4)
    {
      v5 = v4;
      sub_1C19F9958(v5);
    }
  }
}

id sub_1C19F9340()
{
  v1 = v0;
  v2 = sub_1C1A6D62C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*&v1[OBJC_IVAR___APPCPromotedContentView_promotedContent] context];
  if (v7)
  {
    v8 = [v7 identifier];
    swift_unknownObjectRelease();
    sub_1C1A6D60C();

    v9 = sub_1C1A6D5EC();
    v11 = v10;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = 0x80000001C1A7CA00;
    v9 = 0xD000000000000012;
  }

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v12 = sub_1C1A6F1BC();
  sub_1C1994600(v12, qword_1EDE665F0);

  v13 = sub_1C1A6F19C();
  v14 = sub_1C1A6F64C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 67109378;
    *(v15 + 4) = 36;
    *(v15 + 8) = 2080;
    v17 = sub_1C19A1884(v9, v11, &v20);

    *(v15 + 10) = v17;
    _os_log_impl(&dword_1C198D000, v13, v14, "Context ID: %-*s Collapsing sponsorship view for promoted content.", v15, 0x12u);
    sub_1C199935C(v16);
    MEMORY[0x1C6906260](v16, -1, -1);
    MEMORY[0x1C6906260](v15, -1, -1);
  }

  else
  {
  }

  return [v1 setReadiness_];
}

id sub_1C19F95DC()
{
  v1 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_textLabel] text];
  [v0 setAccessibilityLabel_];

  v2 = sub_1C1A6F39C();
  [v0 setAccessibilityIdentifier_];

  return [v0 setIsAccessibilityElement_];
}

uint64_t sub_1C19F968C()
{
  sub_1C19A9E58(&qword_1EBF03E88);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C1A75FC0;
  v2 = *&v0[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_textLabel];
  v3 = [v2 leadingAnchor];
  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [v2 centerYAnchor];
  v7 = [v0 centerYAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v1 + 40) = v8;
  return v1;
}

uint64_t sub_1C19F97BC()
{
  sub_1C19A9E58(&qword_1EBF03E88);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C1A753A0;
  v2 = *&v0[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_imageView];
  v3 = [v2 centerYAnchor];
  v4 = [v0 centerYAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [v2 leadingAnchor];
  v7 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_textLabel] trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:12.0];

  *(v1 + 40) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v1 + 48) = v11;
  return v1;
}

id sub_1C19F9958(void *a1)
{
  [a1 size];
  if (v3 <= 90.0)
  {
    [a1 size];
    if (v4 <= 30.0)
    {
      v30 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_imageView);
      v31 = [v30 widthAnchor];
      [a1 size];
      v32 = [v31 constraintEqualToConstant_];

      [v32 setActive_];
      v16 = [v30 heightAnchor];
      [a1 size];
      v17 = [v16 constraintEqualToConstant_];
      goto LABEL_19;
    }
  }

  [a1 size];
  if (v5 > 90.0)
  {
    [a1 size];
    if (v6 <= 30.0)
    {
      [a1 size];
      v35 = v34;
      [a1 size];
      v37 = v35 / v36 * 90.0;
      if (v37 > 9.0)
      {
        v19 = v37;
      }

      else
      {
        v19 = 9.0;
      }

      v38 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_imageView);
      v39 = [v38 widthAnchor];
      v40 = [v39 constraintEqualToConstant_];

      [v40 setActive_];
      v29 = [v38 heightAnchor];
LABEL_18:
      v16 = v29;
      v17 = [v16 constraintEqualToConstant_];
      goto LABEL_19;
    }
  }

  [a1 size];
  if (v7 <= 90.0)
  {
    [a1 size];
    if (v8 > 30.0)
    {
      [a1 size];
      v10 = v9;
      [a1 size];
      v12 = v10 / v11 * 30.0;
      v13 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_imageView);
      v14 = [v13 widthAnchor];
      v15 = [v14 constraintEqualToConstant_];

      [v15 setActive_];
      v16 = [v13 heightAnchor];
      v17 = [v16 constraintEqualToConstant_];
LABEL_19:
      v41 = v17;

      [v41 setActive_];
      goto LABEL_20;
    }
  }

  [a1 size];
  if (v18 > 90.0)
  {
    [a1 size];
    v19 = 30.0;
    if (v20 > 30.0)
    {
      [a1 size];
      v22 = v21;
      [a1 size];
      v24 = v22 / v23 * 30.0;
      if (v24 > 90.0)
      {
        v25 = 30.0 / v24;
        v24 = 90.0;
        v19 = fmax(v25 * 90.0, 9.0);
      }

      v26 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_imageView);
      v27 = [v26 widthAnchor];
      v28 = [v27 constraintEqualToConstant_];

      [v28 setActive_];
      v29 = [v26 heightAnchor];
      goto LABEL_18;
    }
  }

LABEL_20:
  v42 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_imageView);

  return [v42 setImage_];
}

void sub_1C19F9D90()
{

  v1 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_image);
}

uint64_t type metadata accessor for SponsorshipAdView()
{
  result = qword_1EDE619C8;
  if (!qword_1EDE619C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlacedAdEvent.init(adInstanceId:pageIdentifier:templateType:missedReasonCode:duplicatePosition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *(a9 + 80) = sub_1C19B6BD8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for PlacedAdEvent();
  result = sub_1C1A6D61C();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  return result;
}

double PlacedAdEvent.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 80);
  if (*(v5 + 16) && (v6 = sub_1C1991010(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_1C19A1A5C(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C19FA044(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_1C19C5408(a1, v7);
  sub_1C19C5408(v7, v6);

  sub_1C19B561C(v6, v3, v4);
  return sub_1C19C5478(v7);
}

uint64_t PlacedAdEvent.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C19C5408(a1, v7);
  sub_1C19B561C(v7, a2, a3);
  return sub_1C19C5478(a1);
}

void (*PlacedAdEvent.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v9 = *(v3 + 80);
  if (*(v9 + 16) && (v10 = sub_1C1991010(a2, a3), (v11 & 1) != 0))
  {
    sub_1C19A1A5C(*(v9 + 56) + 32 * v10, v8);
  }

  else
  {
    *v8 = 0u;
    v8[1] = 0u;
  }

  return sub_1C19FA1C8;
}

void sub_1C19FA1C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 96);
  if (a2)
  {
    sub_1C19C5408(*a1, v2 + 32);
    sub_1C19C5408(v2 + 32, v2 + 64);

    sub_1C19B561C(v2 + 64, v4, v3);
    sub_1C19C5478(v2 + 32);
  }

  else
  {
    sub_1C19C5408(*a1, v2 + 32);

    sub_1C19B561C(v2 + 32, v4, v3);
  }

  sub_1C19C5478(v2);

  free(v2);
}

uint64_t static PlacedAdEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PlacedAdEvent() + 40);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

uint64_t type metadata accessor for PlacedAdEvent()
{
  result = qword_1EDE621D0;
  if (!qword_1EDE621D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19FA354()
{
  sub_1C19FA438(319, &qword_1EDE62740);
  if (v0 <= 0x3F)
  {
    sub_1C19FA438(319, &qword_1EDE60C90);
    if (v1 <= 0x3F)
    {
      sub_1C19B6E10();
      if (v2 <= 0x3F)
      {
        sub_1C1A6D62C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C19FA438(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C1A6F91C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1C19FA524(void *a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1C1A6D1DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1A6D48C();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 navigationType] == -1)
  {
    v16 = [a1 request];
    sub_1C1A6D1AC();

    sub_1C1A6D1CC();
    (*(v8 + 8))(v10, v7);
    if ((*(v12 + 48))(v6, 1, v11) == 1)
    {
      sub_1C19FA898(v6);
      sub_1C1A6F66C();
      sub_1C199E4CC();
      v17 = sub_1C1A6F8EC();
      sub_1C1A6F18C();
    }

    else
    {
      (*(v12 + 32))(v15, v6, v11);
      sub_1C1A6F67C();
      sub_1C199E4CC();
      v18 = sub_1C1A6F8EC();
      sub_1C1A6F18C();

      v19 = sub_1C1A6D41C();
      [v2 webProcessMRAIDJSODidCallOpen_];

      (*(v12 + 8))(v15, v11);
    }
  }

  return 0;
}

uint64_t sub_1C19FA898(uint64_t a1)
{
  v2 = sub_1C19A9E58(&unk_1EBF04600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C19FACD8()
{
  sub_1C19A9384(v0 + 24);

  return swift_deallocClassInstance();
}

double sub_1C19FAD3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = *v2;
      v10 = *(v2 + 1);
      v28 = v10;
      v29 = *v2;
      v11 = v2[1];
      v12 = v2[3];
      v13 = v11;
      v14 = v12;
      Width = CGRectGetWidth(*&v9);
      *&v30.size.width = v28;
      *&v30.origin.x = v29;
      v30.origin.y = v11;
      v30.size.height = v12;
      if (Width * CGRectGetHeight(v30) != 0.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C19AA2C8(0, *(v3 + 16) + 1, 1);
        }

        v5 = v28;
        v4 = v29;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1C19AA2C8((v6 > 1), v7 + 1, 1);
          v5 = v28;
          v4 = v29;
        }

        *(v3 + 16) = v7 + 1;
        v8 = v3 + 32 * v7;
        *(v8 + 32) = v4;
        *(v8 + 48) = v5;
      }

      v2 += 4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1C19FAF10(v3);
  v17 = sub_1C19FB21C(v16, v3);

  v18 = sub_1C19FB4F4(v16, v17);

  v19 = *(v18 + 2);
  if (v19)
  {
    v20 = (v18 + 56);
    v21 = 0.0;
    do
    {
      v22 = *(v20 - 3);
      v23 = *(v20 - 2);
      v24 = *(v20 - 1);
      v25 = *v20;
      v31.origin.x = v22;
      v31.origin.y = v23;
      v31.size.width = v24;
      v31.size.height = *v20;
      v26 = CGRectGetWidth(v31);
      v32.origin.x = v22;
      v32.origin.y = v23;
      v32.size.width = v24;
      v32.size.height = v25;
      v21 = v21 + v26 * CGRectGetHeight(v32);
      v20 += 4;
      --v19;
    }

    while (v19);
  }

  else
  {
    v21 = 0.0;
  }

  return v21;
}

char *sub_1C19FAF10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C19AA288(0, v1, 0);
    v3 = v30;
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      sub_1C19A9E58(&qword_1EBF043D0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C1A73CD0;
      v31.origin.x = v5;
      v31.origin.y = v6;
      v31.size.width = v7;
      v31.size.height = v8;
      *(v9 + 32) = CGRectGetMinX(v31);
      v32.origin.x = v5;
      v32.origin.y = v6;
      v32.size.width = v7;
      v32.size.height = v8;
      *(v9 + 40) = CGRectGetMaxX(v32);
      v30 = v3;
      v11 = *(v3 + 2);
      v10 = *(v3 + 3);
      v12 = (v11 + 1);
      if (v11 >= v10 >> 1)
      {
        sub_1C19AA288((v10 > 1), v11 + 1, 1);
        v3 = v30;
      }

      *(v3 + 2) = v12;
      *&v3[8 * v11 + 32] = v9;
      v4 += 4;
      --v1;
    }

    while (v1);
    goto LABEL_8;
  }

  v3 = MEMORY[0x1E69E7CC0];
  v12 = *(MEMORY[0x1E69E7CC0] + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
LABEL_25:

    v25 = sub_1C19F219C(v13);

    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = sub_1C19E8A30(*(v25 + 16), 0);
      v28 = sub_1C1A5FAC8(&v30, v27 + 4, v26, v25);
      sub_1C19A93FC();
      if (v28 == v26)
      {
LABEL_29:
        v30 = v27;

        sub_1C19FB8A8(&v30);

        return v30;
      }

      __break(1u);
    }

    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

LABEL_8:
  v14 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v14 < *(v3 + 2))
  {
    v15 = *&v3[8 * v14 + 32];
    v16 = *(v15 + 16);
    v17 = *(v13 + 2);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_31;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= *(v13 + 3) >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v13 = sub_1C19CB108(isUniquelyReferenced_nonNull_native, v20, 1, v13);
      if (*(v15 + 16))
      {
LABEL_21:
        v21 = *(v13 + 2);
        if ((*(v13 + 3) >> 1) - v21 < v16)
        {
          goto LABEL_33;
        }

        memcpy(&v13[8 * v21 + 32], (v15 + 32), 8 * v16);

        if (v16)
        {
          v22 = *(v13 + 2);
          v23 = __OFADD__(v22, v16);
          v24 = v22 + v16;
          if (v23)
          {
            goto LABEL_34;
          }

          *(v13 + 2) = v24;
        }

        goto LABEL_10;
      }
    }

    if (v16)
    {
      goto LABEL_32;
    }

LABEL_10:
    if (v12 == ++v14)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C19FB21C(uint64_t a1, uint64_t a2)
{
  v31 = *(a1 + 16);
  if (v31)
  {
    v30 = a1 + 32;

    v3 = 0;
    while (1)
    {
      v5 = *(a2 + 16);
      if (v5)
      {
        break;
      }

      v4 = MEMORY[0x1E69E7CC0];
LABEL_4:
      ++v3;

      a2 = v4;
      if (v3 == v31)
      {
        return v4;
      }
    }

    v6 = *(v30 + 8 * v3);
    v7 = (a2 + 32);
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = *v7;
      v9 = *(v7 + 1);
      v11 = v7[3];
      v33 = *v7;
      v10 = v7[1];
      v34 = v9;
      v12 = v10;
      v13 = v11;
      if (CGRectGetMinX(*&v8) >= v6 || (*&v35.origin.x = v33, *&v35.size.width = v34, v35.origin.y = v10, v35.size.height = v11, v6 >= CGRectGetMaxX(v35)))
      {
        sub_1C19A9E58(&qword_1EBF03780);
        result = swift_allocObject();
        v21 = result;
        *(result + 16) = xmmword_1C1A73A30;
        *(result + 32) = v33;
        *(result + 48) = v34;
        v22 = 1;
      }

      else
      {
        *&v36.origin.x = v33;
        *&v36.size.width = v34;
        v36.origin.y = v10;
        v36.size.height = v11;
        MinX = CGRectGetMinX(v36);
        *&v37.origin.x = v33;
        *&v37.size.width = v34;
        v37.origin.y = v10;
        v37.size.height = v11;
        MinY = CGRectGetMinY(v37);
        *&v38.origin.x = v33;
        *&v38.size.width = v34;
        v38.origin.y = v10;
        v38.size.height = v11;
        v15 = v6 - CGRectGetMinX(v38);
        *&v39.origin.x = v33;
        *&v39.size.width = v34;
        v39.origin.y = v10;
        v39.size.height = v11;
        Height = CGRectGetHeight(v39);
        *&v40.origin.x = v33;
        *&v40.size.width = v34;
        v40.origin.y = v10;
        v40.size.height = v11;
        v17 = CGRectGetMinY(v40);
        *&v41.origin.x = v33;
        *&v41.size.width = v34;
        v41.origin.y = v10;
        v41.size.height = v11;
        v18 = CGRectGetMaxX(v41) - v6;
        *&v42.origin.x = v33;
        *&v42.size.width = v34;
        v42.origin.y = v10;
        v42.size.height = v11;
        v19 = CGRectGetHeight(v42);
        sub_1C19A9E58(&qword_1EBF03780);
        result = swift_allocObject();
        v21 = result;
        *(result + 16) = xmmword_1C1A73CD0;
        *(result + 32) = MinX;
        *(result + 40) = MinY;
        *(result + 48) = v15;
        *(result + 56) = Height;
        *(result + 64) = v6;
        *(result + 72) = v17;
        v22 = 2;
        *(result + 80) = v18;
        *(result + 88) = v19;
      }

      v23 = *(v4 + 16);
      v24 = v23 + v22;
      if (__OFADD__(v23, v22))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0 || v24 > *(v4 + 24) >> 1)
      {
        if (v23 <= v24)
        {
          v25 = v23 + v22;
        }

        else
        {
          v25 = v23;
        }

        result = sub_1C19CAF00(result, v25, 1, v4);
        v4 = result;
      }

      v26 = *(v4 + 16);
      if ((*(v4 + 24) >> 1) - v26 < v22)
      {
        goto LABEL_25;
      }

      memcpy((v4 + 32 * v26 + 32), (v21 + 32), 32 * v22);

      v27 = *(v4 + 16);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (v28)
      {
        goto LABEL_26;
      }

      *(v4 + 16) = v29;
      v7 += 4;
      if (!--v5)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

    return a2;
  }

  return result;
}

char *sub_1C19FB4F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v4 = *(a2 + 16);
  v49 = (a2 + 32);
  v50 = a1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v4)
    {
      v6 = v49;
      v7 = *(v50 + 8 * v3);
      v8 = v4;
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        v13 = *v6;
        v14 = v6[1];
        v15 = *(v6 + 1);
        v16 = *(v6 + 3);
        v51 = v14;
        v55 = *v6;
        if (CGRectGetMinX(*&v13) == v7)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = v9;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C19AA2C8(0, *(v9 + 2) + 1, 1);
            v9 = v59;
          }

          v11 = *(v9 + 2);
          v10 = *(v9 + 3);
          if (v11 >= v10 >> 1)
          {
            sub_1C19AA2C8((v10 > 1), v11 + 1, 1);
            v9 = v59;
          }

          *(v9 + 2) = v11 + 1;
          v12 = &v9[32 * v11];
          *(v12 + 2) = v55;
          *(v12 + 3) = v51;
        }

        v6 += 2;
        --v8;
      }

      while (v8);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v59 = v9;

    sub_1C19FB9DC(&v59);

    v18 = *(v59 + 2);
    if (v18)
    {
      v19 = *(v59 + 2);
      v20 = *(v59 + 3);
      if (v18 == 1)
      {
        v52 = *(v59 + 2);
        v56 = *(v59 + 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1C19CAF00(0, *(v5 + 2) + 1, 1, v5);
        }

        v22 = *(v5 + 2);
        v21 = *(v5 + 3);
        v24 = v52;
        v23 = v56;
        if (v22 >= v21 >> 1)
        {
          v46 = sub_1C19CAF00((v21 > 1), v22 + 1, 1, v5);
          v24 = v52;
          v23 = v56;
          v5 = v46;
        }

        *(v5 + 2) = v22 + 1;
        v25 = &v5[32 * v22];
        *(v25 + 2) = v24;
        *(v25 + 3) = v23;
      }

      else
      {
        height = *(v59 + 7);
        y = *(v59 + 5);
        v28 = (v59 + 56);
        do
        {
          v30 = *(v28 - 3);
          v29 = *(v28 - 2);
          v32 = *(v28 - 1);
          v31 = *v28;
          v62.origin.x = v30;
          v62.origin.y = v29;
          v62.size.width = v32;
          v62.size.height = *v28;
          v53 = *&v19;
          v57 = *&v20;
          v33 = y;
          v34 = height;
          if (CGRectIntersectsRect(v62, *&v19))
          {
            v60.origin.x = v30;
            v60.origin.y = v29;
            v60.size.width = v32;
            v60.size.height = v31;
            v63.origin.x = v53;
            v63.size.width = v57;
            v63.origin.y = y;
            v63.size.height = height;
            v61 = CGRectUnion(v60, v63);
            *&v19 = v61.origin.x;
            y = v61.origin.y;
            *&v20 = v61.size.width;
            height = v61.size.height;
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_1C19CAF00(0, *(v5 + 2) + 1, 1, v5);
            }

            v36 = *(v5 + 2);
            v35 = *(v5 + 3);
            v38 = v53;
            v37 = v57;
            if (v36 >= v35 >> 1)
            {
              v40 = sub_1C19CAF00((v35 > 1), v36 + 1, 1, v5);
              v38 = v53;
              v37 = v57;
              v5 = v40;
            }

            *(v5 + 2) = v36 + 1;
            v39 = &v5[32 * v36];
            v39[4] = v38;
            v39[5] = y;
            v39[6] = v37;
            v39[7] = height;
            *&v19 = v30;
            y = v29;
            *&v20 = v32;
            height = v31;
          }

          v28 += 4;
          --v18;
        }

        while (v18);
        v54 = v19;
        v58 = v20;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1C19CAF00(0, *(v5 + 2) + 1, 1, v5);
        }

        v42 = *(v5 + 2);
        v41 = *(v5 + 3);
        v44 = v54;
        v43 = v58;
        if (v42 >= v41 >> 1)
        {
          v47 = sub_1C19CAF00((v41 > 1), v42 + 1, 1, v5);
          v44 = v54;
          v43 = v58;
          v5 = v47;
        }

        *(v5 + 2) = v42 + 1;
        v45 = &v5[32 * v42];
        *(v45 + 4) = v44;
        v45[5] = y;
        *(v45 + 6) = v43;
        v45[7] = height;
      }
    }

    else
    {
    }

    ++v3;
  }

  while (v3 != v2);
  return v5;
}

uint64_t sub_1C19FB8A8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C19FCC24(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1C1A6FCBC();
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
          v13[1] = v14;
          --v13;
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
      v7 = sub_1C1A6F54C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C19FBB8C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1C19FB9DC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C19FCC38(v2);
  }

  v3 = *(v2 + 2);
  v24[0] = (v2 + 32);
  v24[1] = v3;
  v4 = sub_1C1A6FCBC();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 - 2);
          v14 = *(v12 - 1);
          v15 = *v12;
          v16 = *(v12 + 1);
          MinY = CGRectGetMinY(*(v12 + 16));
          v25.origin.x = v13;
          v25.origin.y = v14;
          v25.size.width = v15;
          v25.size.height = v16;
          if (MinY >= CGRectGetMinY(v25))
          {
            break;
          }

          v18 = *(v12 + 1);
          v19 = *(v12 + 2);
          v20 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v20;
          *(v12 - 1) = v18;
          *v12 = v19;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for CGRect(0);
      v7 = sub_1C1A6F54C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v22[0] = v7 + 32;
    v22[1] = v6;
    sub_1C19FC0E8(v22, v23, v24, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

uint64_t sub_1C19FBB8C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C19FCC10(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1C19FC72C((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
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
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
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
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
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
      result = sub_1C19CB004(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_1C19CB004((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_1C19FC72C((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
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

void sub_1C19FC0E8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_1C19FCC10(v8);
    }

    v98 = *(v8 + 2);
    if (v98 >= 2)
    {
      while (*a3)
      {
        v99 = *&v8[16 * v98];
        v100 = *&v8[16 * v98 + 24];
        sub_1C19FC920((*a3 + 32 * v99), (*a3 + 32 * *&v8[16 * v98 + 16]), (*a3 + 32 * v100), v5);
        if (v4)
        {
          goto LABEL_99;
        }

        if (v100 < v99)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C19FCC10(v8);
        }

        if (v98 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v101 = &v8[16 * v98];
        *v101 = v99;
        *(v101 + 1) = v100;
        sub_1C19FCB84(v98 - 1);
        v98 = *(v8 + 2);
        if (v98 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
    }

    else
    {
      v10 = 32 * v7;
      v5 = *a3 + 32 * v7;
      v11 = *v5;
      v12 = *(v5 + 8);
      v13 = *(v5 + 16);
      v14 = *(v5 + 24);
      MinY = CGRectGetMinY(*(*a3 + 32 * (v7 + 1)));
      v106.origin.x = v11;
      v106.origin.y = v12;
      v106.size.width = v13;
      v106.size.height = v14;
      v16 = CGRectGetMinY(v106);
      v17 = v7 + 2;
      v18 = v5 + 48;
      while (v6 != v17)
      {
        v5 = MinY < v16;
        v19 = v18 + 32;
        v20 = *(v18 - 16);
        v21 = *(v18 - 8);
        v22 = *v18;
        v23 = *(v18 + 8);
        v24 = CGRectGetMinY(*(v18 + 16));
        v107.origin.x = v20;
        v107.origin.y = v21;
        v107.size.width = v22;
        v107.size.height = v23;
        v25 = v5 ^ (v24 >= CGRectGetMinY(v107));
        ++v17;
        v18 = v19;
        if ((v25 & 1) == 0)
        {
          v6 = v17 - 1;
          break;
        }
      }

      if (MinY < v16)
      {
        if (v6 < v7)
        {
          goto LABEL_118;
        }

        if (v7 < v6)
        {
          v26 = 0;
          v27 = 32 * v6;
          v28 = v7;
          do
          {
            if (v28 != v6 + v26 - 1)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v29 = (v34 + v10);
              v30 = v34 + v27;
              v31 = *v29;
              v32 = v29[1];
              v33 = *(v30 - 16);
              *v29 = *(v30 - 32);
              v29[1] = v33;
              *(v30 - 32) = v31;
              *(v30 - 16) = v32;
            }

            ++v28;
            --v26;
            v27 -= 32;
            v10 += 32;
          }

          while (v28 < v6 + v26);
        }
      }
    }

    v35 = a3[1];
    if (v6 < v35)
    {
      if (__OFSUB__(v6, v7))
      {
        goto LABEL_117;
      }

      if (v6 - v7 < a4)
      {
        if (__OFADD__(v7, a4))
        {
          goto LABEL_119;
        }

        if (v7 + a4 >= v35)
        {
          v7 = a3[1];
        }

        else
        {
          v7 += a4;
        }

        if (v7 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v6 != v7)
        {
          break;
        }
      }
    }

    v7 = v6;
    if (v6 < v9)
    {
      goto LABEL_116;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1C19CB004(0, *(v8 + 2) + 1, 1, v8);
    }

    v37 = *(v8 + 2);
    v36 = *(v8 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v8 = sub_1C19CB004((v36 > 1), v37 + 1, 1, v8);
    }

    *(v8 + 2) = v38;
    v39 = &v8[16 * v37];
    *(v39 + 4) = v9;
    *(v39 + 5) = v7;
    v40 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_48:
          if (v45)
          {
            goto LABEL_105;
          }

          v58 = &v8[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_108;
          }

          v64 = &v8[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_112;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v68 = &v8[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_62:
        if (v63)
        {
          goto LABEL_107;
        }

        v71 = &v8[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_69:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
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

        v5 = *&v8[16 * v79 + 32];
        v80 = *&v8[16 * v41 + 40];
        sub_1C19FC920((*a3 + 32 * v5), (*a3 + 32 * *&v8[16 * v41 + 32]), (*a3 + 32 * v80), v40);
        if (v4)
        {
          goto LABEL_99;
        }

        if (v80 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C19FCC10(v8);
        }

        if (v79 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v81 = &v8[16 * v79];
        *(v81 + 4) = v5;
        *(v81 + 5) = v80;
        sub_1C19FCB84(v41);
        v38 = *(v8 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v8[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_103;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_104;
      }

      v53 = &v8[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_106;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_109;
      }

      if (v57 >= v49)
      {
        v75 = &v8[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_89;
    }
  }

  v82 = *a3;
  v83 = *a3 + 32 * v6 - 32;
  v102 = v9;
  v84 = v9 - v6;
LABEL_80:
  v85 = (v82 + 32 * v6);
  v86 = *v85;
  v87 = v85[1];
  v5 = v84;
  v88 = v83;
  while (1)
  {
    v89 = *v88;
    v90 = *(v88 + 8);
    v91 = *(&v86 + 1);
    v92 = *(&v87 + 1);
    v93 = *(v88 + 16);
    v94 = *(v88 + 24);
    v95 = CGRectGetMinY(*&v86);
    v108.origin.x = v89;
    v108.origin.y = v90;
    v108.size.width = v93;
    v108.size.height = v94;
    if (v95 >= CGRectGetMinY(v108))
    {
LABEL_79:
      ++v6;
      v83 += 32;
      --v84;
      if (v6 != v7)
      {
        goto LABEL_80;
      }

      v9 = v102;
      if (v7 < v102)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v82)
    {
      break;
    }

    v86 = *(v88 + 32);
    v87 = *(v88 + 48);
    v96 = *(v88 + 16);
    *(v88 + 32) = *v88;
    *(v88 + 48) = v96;
    *v88 = v86;
    *(v88 + 16) = v87;
    v88 -= 32;
    if (__CFADD__(v5++, 1))
    {
      goto LABEL_79;
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

uint64_t sub_1C19FC72C(double *__dst, double *__src, double *a3, double *a4)
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
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
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
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1C19FC920(CGRect *__dst, CGRect *__src, CGRect *a3, CGRect *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 32)
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

      x = v4->origin.x;
      y = v4->origin.y;
      width = v4->size.width;
      height = v4->size.height;
      MinY = CGRectGetMinY(*v6);
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      if (MinY < CGRectGetMinY(v34))
      {
        break;
      }

      p_origin = &v4->origin;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    p_origin = &v6->origin;
    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = p_origin[1];
    v7->origin = *p_origin;
    v7->size = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v23 = v6 - 1;
    --v5;
    v24 = v14;
    do
    {
      v25 = v5 + 1;
      v35.origin.x = *(v24 - 32);
      v35.origin.y = *(v24 - 24);
      v24 -= 32;
      v35.size.width = *(v24 + 16);
      v35.size.height = *(v24 + 24);
      v26 = v6[-1].origin.x;
      v27 = v6[-1].origin.y;
      v28 = v6[-1].size.width;
      v29 = v6[-1].size.height;
      v30 = CGRectGetMinY(v35);
      v36.origin.x = v26;
      v36.origin.y = v27;
      v36.size.width = v28;
      v36.size.height = v29;
      if (v30 < CGRectGetMinY(v36))
      {
        if (v25 != v6)
        {
          size = v6[-1].size;
          v5->origin = v23->origin;
          v5->size = size;
        }

        if (v14 <= v4 || (--v6, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v25 != v14)
      {
        v31 = *(v24 + 16);
        v5->origin = *v24;
        v5->size = v31;
      }

      --v5;
      v14 = v24;
    }

    while (v24 > v4);
    v14 = v24;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_1C19FCB84(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C19FCC10(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1C19FCC4C()
{
  v0 = sub_1C1A6E0EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6E11C();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x1E69C5F78])
  {
    sub_1C1996754();
    v5 = sub_1C1A6F78C();
    if (!v5)
    {
      v5 = [objc_opt_self() mainBundle];
    }

    v6 = v5;
  }

  else if (v4 == *MEMORY[0x1E69C5F98])
  {
    sub_1C1996754();
    v7 = sub_1C1A6F78C();
    if (!v7)
    {
      v7 = [objc_opt_self() mainBundle];
    }

    v6 = v7;
  }

  else if (v4 == *MEMORY[0x1E69C5F88])
  {
    sub_1C1996754();
    v8 = sub_1C1A6F78C();
    if (!v8)
    {
      v8 = [objc_opt_self() mainBundle];
    }

    v6 = v8;
  }

  else if (v4 == *MEMORY[0x1E69C5FA0])
  {
    sub_1C1996754();
    v9 = sub_1C1A6F78C();
    if (!v9)
    {
      v9 = [objc_opt_self() mainBundle];
    }

    v6 = v9;
  }

  else if (v4 == *MEMORY[0x1E69C5FA8])
  {
    sub_1C1996754();
    v12 = sub_1C1A6F78C();
    if (!v12)
    {
      v12 = [objc_opt_self() mainBundle];
    }

    v6 = v12;
  }

  else
  {
    if (v4 != *MEMORY[0x1E69C5FB0])
    {
      if (v4 != *MEMORY[0x1E69C5F90])
      {
        if (v4 == *MEMORY[0x1E69C5F80])
        {
          sub_1C1996754();
          v14 = sub_1C1A6F78C();
          if (!v14)
          {
            v14 = [objc_opt_self() mainBundle];
          }

          v6 = v14;
          goto LABEL_18;
        }

        (*(v1 + 8))(v3, v0);
      }

      return 0;
    }

    sub_1C1996754();
    v13 = sub_1C1A6F78C();
    if (!v13)
    {
      v13 = [objc_opt_self() mainBundle];
    }

    v6 = v13;
  }

LABEL_18:
  v10 = sub_1C1A6D31C();

  return v10;
}

void sub_1C19FD224()
{
  v1 = *(v0 + OBJC_IVAR___APPCPromotedContentView_privacyMarkerView);
  [v1 addTarget:v0 action:sel_tappedPrivacyMarker_ forControlEvents:64];
  v2 = OBJC_IVAR___APPrivacyMarker_privacyMarkerType;
  if (*(v1 + OBJC_IVAR___APPrivacyMarker_privacyMarkerType))
  {
    return;
  }

  v3 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  if ([*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) bestRepresentation])
  {
    goto LABEL_9;
  }

  v4 = [*(v0 + v3) representations];
  sub_1C19A9E58(&unk_1EBF04670);
  v5 = sub_1C1A6F51C();

  if (v5 >> 62)
  {
    if (sub_1C1A6F9EC())
    {
      goto LABEL_5;
    }

LABEL_13:

    v11 = 0;
    goto LABEL_14;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C69055B0](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

LABEL_9:
  sub_1C1A6E33C();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v11 = v6;
    swift_unknownObjectRetain();
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  if ([*(v0 + v3) isOutstreamVideoAd])
  {
    if (!v11)
    {
LABEL_25:

      swift_unknownObjectRelease();
      return;
    }

    v7 = v11;
    sub_1C1A6DB1C();
    v8 = sub_1C1A6E1AC();
    v9 = sub_1C1A6E1AC();

    if (v8 == v9)
    {
      *(v1 + v2) = 2;
    }

    else
    {
      v7 = v7;
      sub_1C1A6DB1C();

      v10 = sub_1C1A6E1AC();
      if (v10 != sub_1C1A6E1AC())
      {
LABEL_24:

        goto LABEL_25;
      }

      *(v1 + v2) = 0;
    }

    sub_1C19970C4();
    goto LABEL_24;
  }

  *(v1 + v2) = 0;
  sub_1C19970C4();
  swift_unknownObjectRelease();
}

void sub_1C19FD4BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR___APPCPromotedContentView_interactionDelegate;
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v1 + 8);

    if (v3)
    {
      ObjectType = swift_getObjectType();
      (*(v4 + 24))(ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t PromotedContentView.newsTransparencyViewControllerDidDismiss(_:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___APPCPromotedContentView_interactionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C19FD730()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR___APPCPromotedContentView_interactionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(*(v0 + OBJC_IVAR___APPCPromotedContentView_privacyMarkerView), ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = [*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) transparencyDetailsDictionary];
  v6 = sub_1C1A6F31C();

  sub_1C1A1DC74(v6);

  v7 = objc_allocWithZone(MEMORY[0x1E69DB510]);
  v8 = sub_1C1A6F2FC();

  v9 = [v7 initWithNewsTransparencyDetailsDictionary_];

  [v9 setDelegate_];
  v19 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  v10 = [v19 view];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() systemBackgroundColor];
    [v11 setBackgroundColor_];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = [Strong viewControllerToPresentFrom];
      swift_unknownObjectRelease();
LABEL_8:
      IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1C19FDA5C;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C198FEA4;
      aBlock[3] = &unk_1F4141080;
      v18 = _Block_copy(aBlock);

      [v14 presentViewController:v19 animated:!IsReduceMotionEnabled completion:v18];
      _Block_release(v18);

      return;
    }

    v15 = _s17PromotedContentUI9AppAdViewC010presentingF10Controller3forSo06UIViewH0CSgSo011ASCAdLockupF0C_tF_0();
    if (v15)
    {
      v14 = v15;
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1C19FDA64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1C19FDA80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C19FDAC8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C19FDB30()
{
  sub_1C1A6FDAC();
  sub_1C1A6F45C();

  return sub_1C1A6FDDC();
}

uint64_t sub_1C19FDC68()
{
  sub_1C1A6FDAC();
  sub_1C1A6F45C();

  return sub_1C1A6FDDC();
}

uint64_t sub_1C19FDD9C(void *a1)
{
  v3 = sub_1C19A9E58(&qword_1EBF04680);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1C1994048(a1, a1[3]);
  sub_1C19FE3F4();
  sub_1C1A6FE0C();
  v8[15] = 0;
  sub_1C1A6FC9C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1C1A6FC9C();
  v8[13] = 2;
  sub_1C1A6FC9C();
  v8[12] = 3;
  sub_1C1A6FC9C();
  v8[11] = 4;
  sub_1C1A6FC9C();
  v8[10] = 5;
  sub_1C1A6FC9C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C19FDFB0()
{
  sub_1C1A6F45C();
}

uint64_t sub_1C19FE0D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C19FE448();
  *a1 = result;
  return result;
}

void sub_1C19FE108(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0065676175676ELL;
  v4 = 0x614C656369766544;
  v5 = 0xED00006874646957;
  v6 = 0x72656B72614D6441;
  v7 = 0xEE00746867696548;
  v8 = 0x72656B72614D6441;
  if (v2 != 4)
  {
    v8 = 0xD000000000000015;
    v7 = 0x80000001C1A790C0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x657A6953746E6F46;
  if (v2 != 1)
  {
    v10 = 0x615272656E726F43;
    v9 = 0xEC00000073756964;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1C19FE1F8()
{
  v1 = *v0;
  v2 = 0x614C656369766544;
  v3 = 0x72656B72614D6441;
  v4 = 0x72656B72614D6441;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657A6953746E6F46;
  if (v1 != 1)
  {
    v5 = 0x615272656E726F43;
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

uint64_t sub_1C19FE2E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C19FE448();
  *a1 = result;
  return result;
}

uint64_t sub_1C19FE318(uint64_t a1)
{
  v2 = sub_1C19FE3F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C19FE354(uint64_t a1)
{
  v2 = sub_1C19FE3F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C19FE390@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C19FE494(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

unint64_t sub_1C19FE3F4()
{
  result = qword_1EBF04688;
  if (!qword_1EBF04688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04688);
  }

  return result;
}

uint64_t sub_1C19FE448()
{
  v0 = sub_1C1A6FC0C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C19FE494@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C19A9E58(&qword_1EBF04690);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  sub_1C1994048(a1, a1[3]);
  sub_1C19FE3F4();
  sub_1C1A6FDFC();
  if (v2)
  {
    return sub_1C199935C(a1);
  }

  LOBYTE(v43[0]) = 0;
  v9 = sub_1C1A6FC4C();
  v11 = v10;
  LOBYTE(v43[0]) = 1;
  v34 = sub_1C1A6FC4C();
  v36 = v12;
  LOBYTE(v43[0]) = 2;
  v13 = sub_1C1A6FC4C();
  v35 = v14;
  v30 = v13;
  LOBYTE(v43[0]) = 3;
  v33 = 0;
  v29 = sub_1C1A6FC4C();
  v32 = v15;
  LOBYTE(v43[0]) = 4;
  v28 = sub_1C1A6FC4C();
  v31 = v16;
  v44 = 5;
  v17 = sub_1C1A6FC4C();
  v18 = *(v6 + 8);
  v19 = v17;
  v33 = v20;
  v18(v8, v5);
  *&v37 = v9;
  *(&v37 + 1) = v11;
  *&v38 = v34;
  *(&v38 + 1) = v36;
  *&v39 = v30;
  v21 = v35;
  *(&v39 + 1) = v35;
  *&v40 = v29;
  v22 = v32;
  *(&v40 + 1) = v32;
  *&v41 = v28;
  *(&v41 + 1) = v31;
  *&v42 = v19;
  v23 = v33;
  *(&v42 + 1) = v33;
  sub_1C19FE938(&v37, v43);
  sub_1C199935C(a1);
  v43[0] = v9;
  v43[1] = v11;
  v43[2] = v34;
  v43[3] = v36;
  v43[4] = v30;
  v43[5] = v21;
  v43[6] = v29;
  v43[7] = v22;
  v43[8] = v28;
  v43[9] = v31;
  v43[10] = v19;
  v43[11] = v23;
  result = sub_1C19FE970(v43);
  v25 = v40;
  a2[2] = v39;
  a2[3] = v25;
  v26 = v42;
  a2[4] = v41;
  a2[5] = v26;
  v27 = v38;
  *a2 = v37;
  a2[1] = v27;
  return result;
}

unint64_t sub_1C19FE9B4()
{
  result = qword_1EBF04698;
  if (!qword_1EBF04698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04698);
  }

  return result;
}

unint64_t sub_1C19FEA0C()
{
  result = qword_1EBF046A0;
  if (!qword_1EBF046A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF046A0);
  }

  return result;
}

unint64_t sub_1C19FEA64()
{
  result = qword_1EBF046A8;
  if (!qword_1EBF046A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF046A8);
  }

  return result;
}

uint64_t sub_1C19FEACC()
{
  v1 = sub_1C1A6D94C();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 32);
  [v13 lock];
  v6 = *(v0 + 40);
  v7 = *MEMORY[0x1E69C5E80];
  v8 = *(v2 + 104);
  v8(v5, v7, v1);
  v12 = v6;
  v9 = sub_1C1A6D97C();
  v10 = *(v2 + 8);
  v10(v5, v1);
  if (v9)
  {
    sub_1C19FEC50();
    v8(v5, v7, v1);
    sub_1C1A6D95C();
    v10(v5, v1);
  }

  [v13 unlock];
  return v9 & 1;
}

uint64_t sub_1C19FEC50()
{
  v1 = sub_1C19A9E58(&qword_1EBF03890);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v37 - v2);
  v4 = sub_1C19A9E58(&qword_1EBF03888);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v37 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  sub_1C1A6D98C();
  v14 = (*(v5 + 88))(v13, v4);
  if (v14 == *MEMORY[0x1E69C5EC0])
  {
    (*(v5 + 16))(v10, v13, v4);
    (*(v5 + 96))(v10, v4);
    v15 = sub_1C1A6D88C();
    v16 = *(v15 - 8);
    if ((*(v16 + 88))(v10, v15) == *MEMORY[0x1E69C5E10])
    {
      (*(v16 + 96))(v10, v15);
      v17 = *v10;
      if (*v10 >> 62)
      {
        v18 = sub_1C1A6F9EC();
        if (v18)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
LABEL_5:
          v39 = v13;
          v40 = v4;
          if (v18 >= 1)
          {
            v19 = 0;
            v20 = *MEMORY[0x1E69C5EB0];
            do
            {
              if ((v17 & 0xC000000000000001) != 0)
              {
                MEMORY[0x1C69055B0](v19, v17);
              }

              else
              {
              }

              ++v19;
              *v3 = 10;
              v21 = sub_1C1A6D9BC();
              (*(*(v21 - 8) + 104))(v3, v20, v21);
              swift_storeEnumTagMultiPayload();
              sub_1C1A6DA4C();

              sub_1C19FF2E8(v3);
            }

            while (v18 != v19);

            v13 = v39;
            v4 = v40;
            return (*(v5 + 8))(v13, v4);
          }

          __break(1u);
          goto LABEL_29;
        }
      }
    }

    else
    {
      (*(v16 + 8))(v10, v15);
    }

    return (*(v5 + 8))(v13, v4);
  }

  if (v14 != *MEMORY[0x1E69C5ED8])
  {
    return (*(v5 + 8))(v13, v4);
  }

  v38 = v0;
  (*(v5 + 16))(v7, v13, v4);
  (*(v5 + 96))(v7, v4);

  v22 = *(sub_1C19A9E58(&qword_1EBF038A0) + 48);
  v23 = sub_1C1A6D88C();
  v24 = *(v23 - 8);
  if ((*(v24 + 88))(&v7[v22], v23) != *MEMORY[0x1E69C5E10])
  {
    v30 = v38;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v30 + 24);
      ObjectType = swift_getObjectType();
      (*(v31 + 8))(ObjectType, v31);
      swift_unknownObjectRelease();
    }

    (*(v24 + 8))(&v7[v22], v23);
    return (*(v5 + 8))(v13, v4);
  }

  result = (*(v24 + 96))(&v7[v22], v23);
  v18 = *&v7[v22];
  v39 = v13;
  v40 = v4;
  if (!(v18 >> 62))
  {
    v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

LABEL_29:
  result = sub_1C1A6F9EC();
  v26 = result;
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_15:
  if (v26 >= 1)
  {
    v27 = 0;
    v28 = *MEMORY[0x1E69C5EB0];
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C69055B0](v27, v18);
      }

      else
      {
      }

      ++v27;
      *v3 = 10;
      v29 = sub_1C1A6D9BC();
      (*(*(v29 - 8) + 104))(v3, v28, v29);
      swift_storeEnumTagMultiPayload();
      sub_1C1A6DA4C();

      sub_1C19FF2E8(v3);
    }

    while (v26 != v27);
LABEL_30:

    v33 = v38;
    Strong = swift_unknownObjectWeakLoadStrong();
    v13 = v39;
    v4 = v40;
    if (Strong)
    {
      v35 = *(v33 + 24);
      v36 = swift_getObjectType();
      (*(v35 + 8))(v36, v35);
      swift_unknownObjectRelease();
    }

    return (*(v5 + 8))(v13, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C19FF27C()
{
  sub_1C19A9384(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C19FF2E8(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF03890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C19FF350()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF03E18);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v17 = &v16 - v3;
  v16 = sub_1C1A6D5DC();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE63320 != -1)
  {
    swift_once();
  }

  v7 = OBJC_IVAR____TtC17PromotedContentUI26AppAdRequestContextBuilder_frequencyStorageType;
  v8 = (v0 + OBJC_IVAR____TtC17PromotedContentUI26AppAdRequestContextBuilder_extraAdamId);
  v9 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI26AppAdRequestContextBuilder_extraAdamId);
  v10 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI26AppAdRequestContextBuilder_extraAdamId + 8);

  sub_1C19E64C4(v1 + v7, v9, v10);

  *v8 = 0;
  v8[1] = 0;

  sub_1C1A6EFAC();
  sub_1C1A6EFBC();
  v11 = objc_allocWithZone(sub_1C1A6E8BC());
  v12 = sub_1C1A6E84C();
  sub_1C1A6E87C();

  sub_1C19E68C0();
  sub_1C1A6E85C();

  sub_1C1A6E83C();

  sub_1C1A6D5CC();
  sub_1C1A6E86C();
  (*(v4 + 8))(v6, v16);
  sub_1C1A6E9EC();
  sub_1C1A6E49C();
  sub_1C1A6E82C();
  v13 = sub_1C1A6D62C();
  (*(*(v13 - 8) + 56))(v17, 1, 1, v13);
  v14 = sub_1C1A6E9DC();

  return v14;
}

uint64_t sub_1C19FF634()
{

  v1 = OBJC_IVAR____TtC17PromotedContentUI26AppAdRequestContextBuilder_frequencyStorageType;
  v2 = sub_1C1A6E4BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppAdRequestContextBuilder()
{
  result = qword_1EBF046C8;
  if (!qword_1EBF046C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C19FF750()
{
  result = sub_1C1A6E4BC();
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

uint64_t sub_1C19FF7FC(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC17PromotedContentUI26AppAdRequestContextBuilder_extraAdamId);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C19FF870()
{
  result = swift_checkMetadataState();
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

void sub_1C19FF928(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1C1A6DADC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(v4 + 120);
  if (swift_unknownObjectWeakLoadStrong() && (v10 = *(v9 + 1), ObjectType = swift_getObjectType(), (*(v10 + 16))(v34, ObjectType, v10), swift_unknownObjectRelease(), v34[1]))
  {
    v32 = v6;
    v29 = v34[2];
    v30 = v34[0];
    v27 = v34[4];
    v28 = v34[3];
    v12 = sub_1C1A6F67C();
    v31 = sub_1C199E4CC();
    v13 = sub_1C1A6F8EC();
    if (os_log_type_enabled(v13, v12))
    {

      v14 = swift_slowAlloc();
      v26 = v5;
      v15 = v14;
      *v14 = 134349056;
      *(v14 + 4) = *(a1 + 16);

      _os_log_impl(&dword_1C198D000, v13, v12, "[PCUI] Updating snapshot with %{public}ld contents", v15, 0xCu);
      v16 = v15;
      v5 = v26;
      MEMORY[0x1C6906260](v16, -1, -1);
    }

    sub_1C1A6DABC();
    v17 = sub_1C1A6DC7C();
    v18 = sub_1C1A6F64C();
    v19 = sub_1C1A6F8EC();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136446210;
      if (v17)
      {
        v22 = 0x53534543435553;
      }

      else
      {
        v22 = 0x4552554C494146;
      }

      v23 = sub_1C19A1884(v22, 0xE700000000000000, &v33);

      *(v20 + 4) = v23;
      _os_log_impl(&dword_1C198D000, v19, v18, "[PCUI] Snapshot storage completed. %{public}s", v20, 0xCu);
      sub_1C199935C(v21);
      MEMORY[0x1C6906260](v21, -1, -1);
      MEMORY[0x1C6906260](v20, -1, -1);
    }

    (*(v32 + 8))(v8, v5);
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C199E4CC();
    v32 = sub_1C1A6F8EC();
    sub_1C1A6F18C();
    v24 = v32;
  }
}

id sub_1C19FFD8C()
{
  v1 = v0;
  v164 = *v0;
  v155 = sub_1C1A6D94C();
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v153 = (v124 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = sub_1C1A6D93C();
  v149 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v157 = v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v156 = v124 - v5;
  v6 = sub_1C1A6D8DC();
  v162 = *(v6 - 8);
  v163 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v159 = v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v160 = v124 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v161 = v124 - v11;
  v148 = sub_1C1A6D5DC();
  v143 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v146 = v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v145 = v124 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v144 = v124 - v16;
  v17 = sub_1C19A9E58(&qword_1EBF046D8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v124 - v18;
  v20 = sub_1C1A6DADC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v150 = v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C19A9E58(&qword_1EBF03888);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v124 - v28;
  v152 = v0[3];
  sub_1C1A6D98C();
  (*(v24 + 104))(v26, *MEMORY[0x1E69C5EC8], v23);
  sub_1C1A6D88C();
  sub_1C1A01458();
  v30 = sub_1C1A6D9DC();
  v31 = *(v24 + 8);
  v31(v26, v23);
  result = (v31)(v29, v23);
  if (v30)
  {
    [v1[2] lock];
    v34 = v164[10];
    v33 = v164[11];
    v141 = *(*v1 + 14);
    v142 = v33;
    sub_1C1A6DC9C();
    v35 = v1;
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_1C1991140(v19, &qword_1EBF046D8);
LABEL_45:
      v113 = sub_1C1A6DC8C();
      v114 = sub_1C1A6F67C();
      sub_1C199E4CC();
      v115 = sub_1C1A6F8EC();
      if (os_log_type_enabled(v115, v114))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v166 = v117;
        *v116 = 136446210;
        if (v113)
        {
          v118 = 0;
        }

        else
        {
          v118 = 542396238;
        }

        if (v113)
        {
          v119 = 0xE000000000000000;
        }

        else
        {
          v119 = 0xE400000000000000;
        }

        v120 = sub_1C19A1884(v118, v119, &v166);

        *(v116 + 4) = v120;
        _os_log_impl(&dword_1C198D000, v115, v114, "[PCUI] Client cached content can't be reused. Snapshot was %{public}sremoved successfully.", v116, 0xCu);
        sub_1C199935C(v117);
        MEMORY[0x1C6906260](v117, -1, -1);
        MEMORY[0x1C6906260](v116, -1, -1);
      }

      v121 = v155;
      v122 = v154;
      v123 = v153;
      (*(v154 + 104))(v153, *MEMORY[0x1E69C5E48], v155);
      sub_1C1A6D95C();
      (*(v122 + 8))(v123, v121);
      return [v35[2] unlock];
    }

    v135 = v34;
    v136 = v21;
    v36 = *(v21 + 32);
    v37 = v150;
    v137 = v20;
    v36(v150, v19, v20);
    v164 = (v1 + *(*v1 + 15));
    if (swift_unknownObjectWeakLoadStrong())
    {
      v38 = v164[1];
      ObjectType = swift_getObjectType();
      (*(v38 + 16))(&v167, ObjectType, v38);
      swift_unknownObjectRelease();
      v40 = v168;
      if (v168)
      {
        v127 = v1;
        v41 = v167;
        v42 = v170;
        v171 = v169;
        v43 = sub_1C1A6DAAC();
        v172[0] = v41;
        v172[1] = v40;
        if (v43 == v41 && v40 == v44)
        {

          v45 = v161;
        }

        else
        {
          v46 = sub_1C1A6FCEC();

          v45 = v161;
          if ((v46 & 1) == 0)
          {
            (*(v136 + 8))(v37, v137);
            sub_1C1A014B0(v172);
            v173 = v171;
            sub_1C1A014B0(&v173);
            v174 = v42;
            sub_1C1991140(&v174, &qword_1EBF03DD0);
            v35 = v127;
            goto LABEL_45;
          }
        }

        v47 = sub_1C1A6DACC();
        v173 = v171;
        v35 = v127;
        if (__PAIR128__(v48, v47) == v171)
        {
          sub_1C1A014B0(v172);
          sub_1C1A014B0(&v173);
          v174 = v42;
          sub_1C1991140(&v174, &qword_1EBF03DD0);

LABEL_14:
          v166 = MEMORY[0x1E69E7CC0];
          sub_1C1A6D5CC();
          v50 = sub_1C1A6DA9C();
          v52 = *(v50 + 16);
          if (v52)
          {
            v151 = *(v162 + 16);
            v53 = (*(v162 + 80) + 32) & ~*(v162 + 80);
            v124[1] = v50;
            v54 = v50 + v53;
            v147 = *(v162 + 72);
            v133 = "n>16@0:8";
            v132 = &unk_1C1A763C0;
            v162 += 16;
            v55 = (v162 - 8);
            v126 = (v143 + 8);
            v131 = v149 + 32;
            v139 = (v149 + 8);
            *&v51 = 136446466;
            v125 = v51;
            v140 = MEMORY[0x1E69E7CC0];
            v138 = MEMORY[0x1E69E7CC0];
            v56 = v163;
            v130 = (v162 - 8);
            v151(v45, v50 + v53, v163);
            while (1)
            {
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong && (v58 = v45, v59 = v164[1], v60 = Strong, v61 = swift_getObjectType(), v165 = v60, v62 = sub_1C1A6D8CC(), v63 = *(v59 + 8), v64 = v159, v65 = v61, v56 = v163, v66 = (*(v63 + 16))(v62, v65), swift_unknownObjectRelease(), v62, v67 = v160, !v66))
              {
                v76 = sub_1C1A6F67C();
                sub_1C199E4CC();
                v77 = sub_1C1A6F8EC();
                v78 = v151;
                v151(v67, v58, v56);
                v78(v64, v58, v56);
                v134 = v76;
                v138 = v77;
                if (os_log_type_enabled(v77, v76))
                {
                  v79 = swift_slowAlloc();
                  v129 = swift_slowAlloc();
                  v165 = v129;
                  *v79 = v125;
                  v80 = sub_1C1A6D8CC();
                  v81 = sub_1C1A6EA5C();
                  v83 = v82;

                  v55 = v130;
                  v128 = *v130;
                  v128(v160, v163);
                  v84 = v81;
                  v85 = v159;
                  v86 = sub_1C19A1884(v84, v83, &v165);

                  *(v79 + 4) = v86;
                  *(v79 + 12) = 2050;
                  v87 = sub_1C1A6D8CC();
                  v88 = v145;
                  sub_1C1A6EACC();

                  v89 = v146;
                  sub_1C1A6D5AC();
                  sub_1C1A6D50C();
                  v91 = v90;
                  v92 = *v126;
                  v93 = v89;
                  v94 = v128;
                  v95 = v148;
                  (*v126)(v93, v148);
                  v96 = v95;
                  v56 = v163;
                  v92(v88, v96);
                  v94(v85, v56);
                  *(v79 + 14) = v91;
                  v97 = v138;
                  _os_log_impl(&dword_1C198D000, v138, v134, "[PCUI] Restoring ad %{public}s with remaining TTL %{public}f", v79, 0x16u);
                  v98 = v129;
                  sub_1C199935C(v129);
                  MEMORY[0x1C6906260](v98, -1, -1);
                  MEMORY[0x1C6906260](v79, -1, -1);
                }

                else
                {

                  v55 = v130;
                  v94 = *v130;
                  (*v130)(v64, v56);
                  v94(v67, v56);
                }

                v45 = v161;
                sub_1C1A6D8BC();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v140 = sub_1C19CACC8(0, v140[2] + 1, 1, v140);
                }

                v100 = v140[2];
                v99 = v140[3];
                if (v100 >= v99 >> 1)
                {
                  v140 = sub_1C19CACC8(v99 > 1, v100 + 1, 1, v140);
                }

                v101 = v140;
                v140[2] = v100 + 1;
                (*(v149 + 32))(v101 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v100, v156, v158);
                sub_1C1A6D8CC();
                MEMORY[0x1C6904FB0]();
                if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1C1A6F53C();
                  v56 = v163;
                }

                sub_1C1A6F55C();
                v94(v45, v56);
                v138 = v166;
              }

              else
              {
                v68 = swift_unknownObjectWeakLoadStrong();
                if (v68)
                {
                  v69 = v164[1];
                  v70 = v68;
                  v71 = swift_getObjectType();
                  v165 = v70;
                  v72 = v157;
                  v73 = v161;
                  sub_1C1A6D8BC();
                  v74 = *(v69 + 8);
                  v45 = v73;
                  v75 = v71;
                  v56 = v163;
                  (*(v74 + 24))(v72, 1, v75);
                  (*v139)(v72, v158);
                  swift_unknownObjectRelease();
                  (*v55)(v73, v56);
                }

                else
                {
                  v45 = v161;
                  (*v55)(v161, v56);
                }
              }

              v54 += v147;
              if (!--v52)
              {
                break;
              }

              v151(v45, v54, v56);
            }

            v35 = v127;
            v102 = v138;
          }

          else
          {

            v102 = MEMORY[0x1E69E7CC0];
            v140 = MEMORY[0x1E69E7CC0];
          }

          v103 = v155;
          v104 = v154;
          if (v102 >> 62)
          {
            v105 = sub_1C1A6F9EC();
          }

          else
          {
            v105 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v106 = v150;
          if (v105)
          {
            sub_1C1A6DC3C();
            v107 = sub_1C1A6F67C();
            sub_1C199E4CC();
            v108 = sub_1C1A6F8EC();
            if (os_log_type_enabled(v108, v107))
            {

              v109 = swift_slowAlloc();
              *v109 = 134217984;
              if (v102 >> 62)
              {
                v110 = sub_1C1A6F9EC();
              }

              else
              {
                v110 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              *(v109 + 4) = v110;

              _os_log_impl(&dword_1C198D000, v108, v107, "[PCUI] Successfully restored %ld contents from client's cache.", v109, 0xCu);
              MEMORY[0x1C6906260](v109, -1, -1);

              v106 = v150;
            }

            else
            {
            }

            v112 = v153;
            *v153 = v140;
            (*(v104 + 104))(v112, *MEMORY[0x1E69C5E78], v103);
          }

          else
          {

            sub_1C1A6F67C();
            sub_1C199E4CC();
            v111 = sub_1C1A6F8EC();
            sub_1C1A6F18C();

            v112 = v153;
            (*(v104 + 104))(v153, *MEMORY[0x1E69C5E48], v103);
          }

          sub_1C1A6D95C();
          (*(v104 + 8))(v112, v103);
          (*(v143 + 8))(v144, v148);
          (*(v136 + 8))(v106, v137);
          return [v35[2] unlock];
        }

        v49 = sub_1C1A6FCEC();
        sub_1C1A014B0(v172);
        sub_1C1A014B0(&v173);
        v174 = v42;
        sub_1C1991140(&v174, &qword_1EBF03DD0);

        if (v49)
        {
          goto LABEL_14;
        }
      }
    }

    (*(v136 + 8))(v37, v137);
    goto LABEL_45;
  }

  return result;
}

void sub_1C1A0111C()
{
  v0 = sub_1C1A6DC8C();
  v1 = sub_1C1A6F64C();
  sub_1C199E4CC();
  log = sub_1C1A6F8EC();
  if (os_log_type_enabled(log, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v7 = v3;
    *v2 = 136446210;
    if (v0)
    {
      v4 = 0x53534543435553;
    }

    else
    {
      v4 = 0x4552554C494146;
    }

    v5 = sub_1C19A1884(v4, 0xE700000000000000, &v7);

    *(v2 + 4) = v5;
    _os_log_impl(&dword_1C198D000, log, v1, "[PCUI] Deleted search landing snapshot. %{public}s", v2, 0xCu);
    sub_1C199935C(v3);
    MEMORY[0x1C6906260](v3, -1, -1);
    MEMORY[0x1C6906260](v2, -1, -1);
  }
}

char *sub_1C1A012F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  *&v5[*(*v5 + 120) + 8] = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  (*(*(*(v10 + 80) - 8) + 32))(&v5[*(*v5 + 112)], a3);
  *&v5[*(*v5 + 120) + 8] = a5;
  swift_unknownObjectWeakAssign();
  return v5;
}

char *sub_1C1A013E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SLPCCMSnapshot();
  swift_allocObject();
  return sub_1C1A012F0(a1, a2, a3, a4, a5);
}

unint64_t sub_1C1A01458()
{
  result = qword_1EDE62398;
  if (!qword_1EDE62398)
  {
    sub_1C1A6D88C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE62398);
  }

  return result;
}

uint64_t WebAdView.webView(_:decidePolicyFor:decisionHandler:)(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v96 = a4;
  v97 = a3;
  v7 = sub_1C1A6D48C();
  v94 = *(v7 - 8);
  v95 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v90 - v10;
  v11 = sub_1C1A6D1DC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v90 - v16;
  v18 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v90 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v90 - v25;
  v27 = *&v5[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_webView];
  if (v27 && *(v27 + OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_browserContextControllerDidLoad) == 1)
  {
    v91 = v27;
    v28 = [a2 request];
    sub_1C1A6D1AC();

    v29 = v26;
    sub_1C1A6D1CC();
    (*(v12 + 8))(v17, v11);
    v30 = *&v5[OBJC_IVAR___APPCPromotedContentView_tapGestureRecognizer];
    v31 = *&v5[OBJC_IVAR___APPCPromotedContentView_expandedAdTapGestureRecognizer];
    if (v31)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v33 = v30;
      v34 = v31;
      if (Strong)
      {
        v35 = [Strong viewControllerToPresentFrom];
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = _s17PromotedContentUI9AppAdViewC010presentingF10Controller3forSo06UIViewH0CSgSo011ASCAdLockupF0C_tF_0();
      }

      v56 = [v35 presentedViewController];

      if (v56)
      {
        type metadata accessor for ExpandViewController();
        if (swift_dynamicCastClass())
        {

          v33 = v34;
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      v33 = v30;
    }

    v57 = [a2 navigationType];
    if ((v57 - 1) < 4)
    {
      goto LABEL_18;
    }

    if (v57 == -1)
    {
      v58 = 1;
      goto LABEL_19;
    }

    if (v57)
    {
      sub_1C1A6F64C();
      sub_1C199E4CC();
      v61 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1C1A73A30;
      v63 = [*&v5[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
      v64 = sub_1C1A6F3CC();
      v66 = v65;

      *(v62 + 56) = MEMORY[0x1E69E6158];
      *(v62 + 64) = sub_1C199E518();
      *(v62 + 32) = v64;
      *(v62 + 40) = v66;
      sub_1C1A6F18C();

      goto LABEL_18;
    }

    sub_1C1A03288(v29, v23);
    v60 = v94;
    v59 = v95;
    if ((*(v94 + 48))(v23, 1, v95) == 1)
    {
      sub_1C19FA898(v23);
LABEL_18:
      v58 = 0;
LABEL_19:
      v97(v58);

      return sub_1C19FA898(v29);
    }

    v67 = v93;
    (*(v60 + 32))(v93, v23, v59);
    v68 = sub_1C1A6D45C();
    if (v69)
    {
      if (v68 == 1886680168 && v69 == 0xE400000000000000)
      {
        goto LABEL_34;
      }

      v70 = sub_1C1A6FCEC();

      if (v70)
      {
LABEL_35:
        v73 = OBJC_IVAR___APPCPromotedContentView_shouldBlockNavigation;
        if ((v5[OBJC_IVAR___APPCPromotedContentView_shouldBlockNavigation] & 1) != 0 || (v74 = OBJC_IVAR___APPCPromotedContentView_tapWasRecognized, (v5[OBJC_IVAR___APPCPromotedContentView_tapWasRecognized] & 1) == 0))
        {
          v5[OBJC_IVAR___APPCPromotedContentView_shouldBlockNavigation] = 0;
          v5[OBJC_IVAR___APPCPromotedContentView_tapWasRecognized] = 0;
        }

        else if (sub_1C19C868C())
        {
          v75 = *&v33[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_location];
          v76 = *&v33[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_location + 8];
          v90 = v33;
          v77 = v67;
          v78 = v94;
          v79 = v67;
          v80 = v95;
          (*(v94 + 16))(v92, v79, v95);
          v81 = objc_allocWithZone(sub_1C1A6DE4C());
          v82 = sub_1C1A6DE3C();
          v83 = *&v5[OBJC_IVAR___APPCPromotedContentView_promotedContent];
          swift_unknownObjectRetain();
          [v5 frame];
          sub_1C1A41E28(v82, v83, v75, v76, v84, v85, v86, v87);
          swift_unknownObjectRelease();
          v5[v73] = 0;
          v5[v74] = 0;
          v97(0);

          (*(v78 + 8))(v77, v80);
          return sub_1C19FA898(v29);
        }

        sub_1C1A6F64C();
        sub_1C199E4CC();
        v88 = sub_1C1A6F8EC();
        sub_1C1A6F18C();

        [objc_opt_self() sendEvent_];
        v97(0);

        (*(v94 + 8))(v67, v95);
        return sub_1C19FA898(v29);
      }
    }

    v71 = sub_1C1A6D45C();
    if (v72)
    {
      if (v71 == 0x7370747468 && v72 == 0xE500000000000000)
      {
LABEL_34:

        goto LABEL_35;
      }

      v89 = sub_1C1A6FCEC();

      if (v89)
      {
        goto LABEL_35;
      }
    }

    (*(v60 + 8))(v67, v59);
    goto LABEL_18;
  }

  v98 = 0;
  v99 = 0xE000000000000000;
  sub_1C1A6FACC();
  MEMORY[0x1C6904F50](0xD000000000000027, 0x80000001C1A7F070);
  v36 = [a2 request];
  sub_1C1A6D1AC();

  sub_1C1A6D1CC();
  (*(v12 + 8))(v14, v11);
  v38 = v94;
  v37 = v95;
  if ((*(v94 + 48))(v20, 1, v95) == 1)
  {
    sub_1C19FA898(v20);
    v39 = 0xE700000000000000;
    v40 = 0x4E574F4E4B4E55;
  }

  else
  {
    v41 = sub_1C1A6D40C();
    v39 = v42;
    (*(v38 + 8))(v20, v37);
    v40 = v41;
  }

  MEMORY[0x1C6904F50](v40, v39);

  MEMORY[0x1C6904F50](0xD000000000000032, 0x80000001C1A7F0A0);
  v44 = v98;
  v43 = v99;
  sub_1C1A6F66C();
  sub_1C199E4CC();
  v45 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C1A73CD0;
  v47 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v48 = [*&v5[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
  v49 = sub_1C1A6F3CC();
  v51 = v50;

  v52 = MEMORY[0x1E69E6158];
  *(v46 + 56) = MEMORY[0x1E69E6158];
  v53 = sub_1C199E518();
  *(v46 + 32) = v49;
  *(v46 + 40) = v51;
  *(v46 + 96) = v52;
  *(v46 + 104) = v53;
  *(v46 + 64) = v53;
  *(v46 + 72) = v44;
  *(v46 + 80) = v43;

  sub_1C1A6F18C();

  v54 = [*&v5[v47] diagnosticMetricHelper];
  swift_getObjectType();
  sub_1C1A6E51C();
  swift_unknownObjectRelease();

  return (v97)(0);
}

uint64_t sub_1C1A022A4(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = [a1 _webProcessIdentifier];
    v6 = [a1 window];
    if (v6)
    {

      v7 = 0xE300000000000000;
      v8 = 5457241;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = -1;
  }

  v7 = 0xE200000000000000;
  v8 = 20302;
LABEL_6:
  sub_1C1A6F67C();
  sub_1C199E4CC();
  v9 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1A74AF0;
  v11 = [*(v3 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
  v12 = sub_1C1A6F3CC();
  v14 = v13;

  v15 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1C199E518();
  *(v10 + 64) = v16;
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v17 = MEMORY[0x1E69E7358];
  *(v10 + 96) = MEMORY[0x1E69E72F0];
  *(v10 + 104) = v17;
  *(v10 + 72) = v5;
  *(v10 + 136) = v15;
  *(v10 + 144) = v16;
  *(v10 + 112) = v8;
  *(v10 + 120) = v7;
  v18 = sub_1C19B4750(a2);
  *(v10 + 176) = v15;
  *(v10 + 184) = v16;
  *(v10 + 152) = v18;
  *(v10 + 160) = v19;
  sub_1C1A6F18C();
}

uint64_t _s17PromotedContentUI9WebAdViewC03webF0_29didStartProvisionalNavigationySo05WKWebF0C_So12WKNavigationCSgtF_0()
{
  v1 = sub_1C1A6D5DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6F65C();
  sub_1C199E4CC();
  v5 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C1A73CD0;
  v7 = [*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
  v8 = sub_1C1A6F3CC();
  v10 = v9;

  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1C199E518();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  sub_1C1A6D5CC();
  sub_1C1A6D57C();
  v12 = v11;
  (*(v2 + 8))(v4, v1);
  v13 = MEMORY[0x1E69E6438];
  *(v6 + 96) = MEMORY[0x1E69E63B0];
  *(v6 + 104) = v13;
  *(v6 + 72) = v12;
  sub_1C1A6F18C();
}

uint64_t sub_1C1A02694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v4 = v3;
  v24 = a1;
  v5 = sub_1C1A6D5DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = sub_1C1A6F65C();
  sub_1C199E4CC();
  v9 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1A73CD0;
  v11 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v12 = [*&v3[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
  v13 = sub_1C1A6F3CC();
  v15 = v14;

  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1C199E518();
  *(v10 + 32) = v13;
  *(v10 + 40) = v15;
  sub_1C1A6D5CC();
  sub_1C1A6D57C();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  v18 = MEMORY[0x1E69E6438];
  *(v10 + 96) = MEMORY[0x1E69E63B0];
  *(v10 + 104) = v18;
  *(v10 + 72) = v17;
  sub_1C1A6F18C();

  [v4 setReadiness_];
  v19 = *&v4[v11];
  sub_1C1A6EB6C();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    sub_1C1A6EB0C();
    swift_unknownObjectRelease();
    v19 = *&v4[v11];
  }

  [objc_msgSend(v19 metricsHelper)];
  swift_unknownObjectRelease();
  [*&v4[v11] diagnosticMetricHelper];
  swift_getObjectType();
  swift_getErrorValue();
  sub_1C1A6FD4C();
  sub_1C1A6E51C();
  swift_unknownObjectRelease();
}

void _s17PromotedContentUI9WebAdViewC03webF0_9didFinishySo05WKWebF0C_So12WKNavigationCSgtF_0(void *a1)
{
  v54 = a1;
  v2 = sub_1C1A6D5DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v61) = sub_1C1A6F65C();
  v6 = sub_1C199E4CC();
  v59 = "n>16@0:8";
  v60 = " from a non-main thread.";
  v64 = v6;
  v7 = sub_1C1A6F8EC();
  v63 = sub_1C19A9E58(&unk_1EBF03FD0);
  v8 = swift_allocObject();
  v55 = xmmword_1C1A73CD0;
  *(v8 + 16) = xmmword_1C1A73CD0;
  v9 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v10 = v1;
  v11 = [*&v1[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
  v12 = sub_1C1A6F3CC();
  v14 = v13;

  *(v8 + 56) = MEMORY[0x1E69E6158];
  v62 = sub_1C199E518();
  *(v8 + 64) = v62;
  *(v8 + 32) = v12;
  *(v8 + 40) = v14;
  v15 = v9;
  sub_1C1A6D5CC();
  sub_1C1A6D57C();
  v17 = v16;
  v18 = *(v3 + 8);
  v56 = v5;
  v57 = v3 + 8;
  v58 = v2;
  v19 = v2;
  v20 = v10;
  v18(v5, v19);
  v21 = MEMORY[0x1E69E6438];
  *(v8 + 96) = MEMORY[0x1E69E63B0];
  *(v8 + 104) = v21;
  *(v8 + 72) = v17;
  sub_1C1A6F18C();

  if ([*&v10[v9] discardedDueToPolicy])
  {
    sub_1C1A6F66C();
    v22 = sub_1C1A6F8EC();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C1A73A30;
    v24 = [*&v10[v15] identifier];
    v25 = sub_1C1A6F3CC();
    v27 = v26;

    v28 = v62;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = v28;
    *(v23 + 32) = v25;
    *(v23 + 40) = v27;
    sub_1C1A6F18C();

    [v10 setReadiness_];
  }

  else
  {
    v29 = v62;
    [v20 setReadiness_];
    v61 = v9;
    [objc_msgSend(*&v20[v9] metricsHelper)];
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = [Strong viewControllerToPresentFrom];
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = _s17PromotedContentUI9AppAdViewC010presentingF10Controller3forSo06UIViewH0CSgSo011ASCAdLockupF0C_tF_0();
    }

    v32 = v29;
    v33 = &unk_1E8148000;
    v34 = [v31 presentedViewController];

    if (!v34 || (type metadata accessor for ExpandViewController(), v35 = swift_dynamicCastClass(), v34, !v35))
    {
      v36 = v54;
      [v20 insertSubview:v54 belowSubview:*&v20[OBJC_IVAR___APPCPromotedContentView_dimmerView]];
      v37 = v20;
      if (v20[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_webViewDebugging] == 1)
      {
        v38 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
        [v36 addSubview_];
        v39 = [v36 _webProcessIdentifier];
        v66 = 0x203A44495020;
        v67 = 0xE600000000000000;
        v65 = v39;
        v40 = sub_1C1A6FCCC();
        MEMORY[0x1C6904F50](v40);

        v41 = sub_1C1A6F39C();

        [v38 setText_];

        v33 = &unk_1E8148000;
        v42 = [objc_opt_self() preferredFontForTextStyle_];
        [v38 setFont_];

        v43 = [objc_opt_self() systemRedColor];
        [v38 setTextColor_];

        [v38 sizeToFit];
        v32 = v29;
      }

      sub_1C1A6F65C();
      v44 = sub_1C1A6F8EC();
      v45 = swift_allocObject();
      *(v45 + 16) = v55;
      v46 = [*&v37[v61] v33[288]];
      v47 = sub_1C1A6F3CC();
      v49 = v48;

      *(v45 + 56) = MEMORY[0x1E69E6158];
      *(v45 + 64) = v32;
      *(v45 + 32) = v47;
      *(v45 + 40) = v49;
      v50 = v56;
      sub_1C1A6D5CC();
      sub_1C1A6D57C();
      v52 = v51;
      v53(v50, v58);
      *(v45 + 96) = MEMORY[0x1E69E63B0];
      *(v45 + 104) = MEMORY[0x1E69E6438];
      *(v45 + 72) = v52;
      sub_1C1A6F18C();
    }
  }
}

id _s17PromotedContentUI9WebAdViewC03webfdB19ProcessDidTerminateyySo05WKWebF0CF_0()
{
  v1 = v0;
  sub_1C1A6F64C();
  sub_1C199E4CC();
  v2 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1A73A30;
  v4 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v5 = [*&v1[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
  v6 = sub_1C1A6F3CC();
  v8 = v7;

  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1C199E518();
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  sub_1C1A6F18C();

  v9 = *&v1[v4];
  sub_1C1A6EB6C();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    sub_1C1A6EB0C();
    swift_unknownObjectRelease();
    v9 = *&v1[v4];
  }

  v10 = [v9 diagnosticMetricHelper];
  v11 = sub_1C1A6F39C();
  [v10 loadFailedWithReason:v11 code:1];
  swift_unknownObjectRelease();

  [objc_msgSend(*&v1[v4] metricsHelper)];
  swift_unknownObjectRelease();

  return [v1 setReadiness_];
}

uint64_t sub_1C1A03288(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&unk_1EBF04600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C1A03420()
{
  v1 = v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_style];
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    v5 = &unk_1C1A76490;
    goto LABEL_5;
  }

  v4 = 0.0;
  if (v3 == 2)
  {
    v5 = &unk_1C1A764A8;
LABEL_5:
    v4 = v5[v1];
  }

  sub_1C1A540C4();
  return v4;
}

uint64_t (*sub_1C1A034DC())(uint64_t a1, uint64_t a2)
{
  v1 = *(*v0 + 112);
  v2 = (v0 + v1);
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = *(v0 + v1);
  }

  else
  {
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = *v2;
    v4 = sub_1C1A07864;
    *v2 = sub_1C1A07864;
    v2[1] = v5;

    sub_1C19A504C(v6);
  }

  sub_1C19A2D24(v3);
  return v4;
}

uint64_t sub_1C1A035A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C1A03618(a1, a2);
  }

  return result;
}

id sub_1C1A03618(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 120));
  [v6 lock];
  v7 = *(v2 + *(*v2 + 136));
  if (v7)
  {

    [v6 unlock];
    sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v8 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    v7(a1, a2);

    return sub_1C19A504C(v7);
  }

  else
  {
    sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v10 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    *(v3 + *(*v3 + 128)) = a1;

    return [v6 unlock];
  }
}

uint64_t AppStoreAdUnfilledReason.hashValue.getter()
{
  v1 = *v0;
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](v1);
  return sub_1C1A6FDDC();
}

uint64_t AppStoreTaskCancelReason.hashValue.getter()
{
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](0);
  return sub_1C1A6FDDC();
}

uint64_t static AppStoreModule.shared.getter()
{
  if (qword_1EDE634F8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C1A039B4()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    type metadata accessor for PendingTaskParamsStore();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    sub_1C198FB8C(0, &qword_1EDE63970);
    *(v1 + 16) = sub_1C19CF884();

    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t sub_1C1A03A5C()
{
  if (qword_1EDE63320 != -1)
  {
    swift_once();
  }

  type metadata accessor for SearchAdsFacade();
  sub_1C198FDCC(qword_1EDE61D80, type metadata accessor for SearchAdsFacade);
  sub_1C1A6E54C();
  swift_allocObject();

  result = sub_1C1A6E53C();
  qword_1EDE620B0 = result;
  return result;
}

void sub_1C1A03B30(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + 48);

      [v2 willAccessLocation];
    }
  }
}

uint64_t AppStoreModule.initialize(storeFront:storeFrontLocale:config:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v13 = *a5;
  v11 = sub_1C19B7074(MEMORY[0x1E69E7CC0]);
  AppStoreModule.initialize(storeFront:storeFrontLocale:config:bag:defaultAppRequestMetaFields:)(a1, a2, a3, a4, &v13, a6, v11);
}

void AppStoreModule.initialize(storeFront:storeFrontLocale:config:bag:defaultAppRequestMetaFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v16 = sub_1C1A6F1FC();
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1C1A6F22C();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C1A6F20C();
  v46 = *(v19 - 8);
  v47 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v45 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a5;
  sub_1C198FB8C(0, &qword_1EDE62718);
  v22 = [swift_getObjCClassFromMetadata() sharedInstance];
  v23 = [v22 activeDSIDRecord];

  if (v23)
  {
    v24 = [v23 isProtoU13];

    if (v24)
    {
      sub_1C1A6F65C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v53 = sub_1C1A6F8EC();
      sub_1C1A6F18C();
LABEL_7:
      v28 = v53;

      return;
    }
  }

  aBlock[0] = v21;
  type metadata accessor for AppStoreSettings();
  swift_allocObject();
  swift_unknownObjectRetain();

  v25 = sub_1C1A61D58(a1, a2, a3, a4, a6, a7, aBlock);
  if (*(v8 + 88))
  {
    swift_retain_n();

    v27 = sub_1C1A62624(v26, v25);

    if (v27)
    {

      sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v53 = sub_1C1A6F8EC();
      sub_1C1A6F18C();

      goto LABEL_7;
    }
  }

  else
  {
  }

  *(v8 + 88) = v25;

  *(v8 + 80) = *(v25 + 32) & v21;
  if (qword_1EDE634E8 != -1)
  {
    swift_once();
  }

  if (byte_1EDE634F0 != 1)
  {
    *(v8 + 80) &= 0xCuLL;
  }

  sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v29 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C1A73A30;
  v31 = *(v8 + 80);
  v32 = MEMORY[0x1E69E65A8];
  *(v30 + 56) = MEMORY[0x1E69E6530];
  *(v30 + 64) = v32;
  *(v30 + 32) = v31;
  sub_1C1A6F18C();

  if (*(v8 + 80))
  {
    v33 = byte_1EDE634F0;
    sub_1C1A6F64C();
    v34 = sub_1C1A6F8EC();
    if (v33 == 1)
    {
      v35 = MEMORY[0x1E69E7CC0];
      sub_1C1A6F18C();

      sub_1C198FB8C(0, &qword_1EDE63F38);
      v37 = v45;
      v36 = v46;
      v38 = v47;
      (*(v46 + 104))(v45, *MEMORY[0x1E69E7F88], v47);
      v39 = sub_1C1A6F72C();
      (*(v36 + 8))(v37, v38);
      v40 = swift_allocObject();
      *(v40 + 16) = v8;
      *(v40 + 24) = v25;
      aBlock[4] = sub_1C1A073D8;
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C198FEA4;
      aBlock[3] = &unk_1F41412B8;
      v41 = _Block_copy(aBlock);

      v42 = v48;
      sub_1C1A6F21C();
      v54 = v35;
      sub_1C198FDCC(&qword_1EDE63F68, MEMORY[0x1E69E7F60]);
      sub_1C19A9E58(&qword_1EBF03E28);
      sub_1C19BF710();
      v43 = v50;
      v44 = v53;
      sub_1C1A6F94C();
      MEMORY[0x1C69051C0](0, v42, v43, v41);
      _Block_release(v41);

      (*(v52 + 8))(v43, v44);
      (*(v49 + 8))(v42, v51);
    }

    else
    {
      sub_1C1A6F18C();
    }

    if (qword_1EDE620A8 != -1)
    {
      swift_once();
    }

    sub_1C1A6E52C();
  }

  else
  {
  }
}

void sub_1C1A044DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    sub_1C1A06338(a2);
    v4 = *(a1 + 80);
  }

  if ((v4 & 2) != 0)
  {
    sub_1C1A06554(a2);
  }
}

uint64_t AppStoreModule.getAd(config:appRequestMetaFields:adamId:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v78 = a6;
  v79 = a5;
  v77 = sub_1C1A6D62C();
  v11 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - v15;
  if (!*(v6 + 88))
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v43 = sub_1C1A6F1BC();
    sub_1C1994600(v43, qword_1EDE665F0);
    v44 = sub_1C1A6F19C();
    v45 = sub_1C1A6F66C();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v77;
    if (!v46)
    {
      goto LABEL_17;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    goto LABEL_16;
  }

  v17 = *a1;
  if ((*a1 & ~*(v6 + 80)) != 0)
  {
    sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v50 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1C1A73A30;
    v80 = v17;
    AppStoreConfig.description.getter();
    v53 = v52;
    v55 = v54;
    *(v51 + 56) = MEMORY[0x1E69E6158];
    *(v51 + 64) = sub_1C199E518();
    *(v51 + 32) = v53;
    *(v51 + 40) = v55;
    sub_1C1A6F18C();

    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v56 = sub_1C1A6F1BC();
    sub_1C1994600(v56, qword_1EDE665F0);
    v44 = sub_1C1A6F19C();
    v45 = sub_1C1A6F66C();
    v57 = os_log_type_enabled(v44, v45);
    v47 = v77;
    if (!v57)
    {
      goto LABEL_17;
    }

LABEL_15:
    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "[PCUI] Invalid parameter(s)";
LABEL_16:
    _os_log_impl(&dword_1C198D000, v44, v45, v49, v48, 2u);
    MEMORY[0x1C6906260](v48, -1, -1);
LABEL_17:

    sub_1C1A6D61C();
    v58 = sub_1C1A6D5EC();
    v60 = v59;
    v61 = *(v11 + 8);
    v61(v16, v47);
    if (qword_1EDE63320 != -1)
    {
      swift_once();
    }

    v62 = sub_1C19E5F0C();
    v64 = v63;
    sub_1C1A6D61C();
    v65 = sub_1C1A6D5EC();
    v67 = v66;
    v61(v13, v47);
    type metadata accessor for AppStoreRequestTask();
    v33 = swift_allocObject();
    *(v33 + 96) = 0;
    *(v33 + 64) = 0;
    *(v33 + 72) = 0;
    swift_unknownObjectWeakInit();
    *(v33 + 104) = 0;
    *(v33 + 112) = 0;
    *(v33 + 120) = 0;
    sub_1C1A6D5CC();
    *(v33 + 16) = v65;
    *(v33 + 24) = v67;
    *(v33 + 48) = v58;
    *(v33 + 56) = v60;
    *(v33 + 32) = v62;
    *(v33 + 40) = v64;
    *(v33 + 80) = 0;
    sub_1C1A6EB6C();

    sub_1C1A6D61C();
    v68 = objc_allocWithZone(sub_1C1A6E9EC());
    v69 = sub_1C1A6E98C();
    v70 = sub_1C1A6EA7C();

    v37 = v70;
    v38 = v62;
    v39 = v64;
    v40 = v58;
    v41 = v60;
    v42 = 0;
    goto LABEL_20;
  }

  sub_1C198FB8C(0, &qword_1EDE62718);
  v18 = [swift_getObjCClassFromMetadata() sharedInstance];
  v19 = [v18 activeDSIDRecord];

  if (v19)
  {
    v20 = [v19 isProtoU13];

    if (v20)
    {
      sub_1C1A6F65C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v21 = sub_1C1A6F8EC();
      sub_1C1A6F18C();

      sub_1C1A6D61C();
      v22 = sub_1C1A6D5EC();
      v24 = v23;
      v25 = *(v11 + 8);
      v26 = v77;
      v25(v16, v77);
      if (qword_1EDE63320 != -1)
      {
        swift_once();
      }

      v27 = sub_1C19E5F0C();
      v29 = v28;
      sub_1C1A6D61C();
      v30 = sub_1C1A6D5EC();
      v32 = v31;
      v25(v13, v26);
      type metadata accessor for AppStoreRequestTask();
      v33 = swift_allocObject();
      *(v33 + 96) = 0;
      *(v33 + 64) = 0;
      *(v33 + 72) = 0;
      swift_unknownObjectWeakInit();
      *(v33 + 104) = 0;
      *(v33 + 112) = 0;
      *(v33 + 120) = 0;
      sub_1C1A6D5CC();
      *(v33 + 16) = v30;
      *(v33 + 24) = v32;
      *(v33 + 48) = v22;
      *(v33 + 56) = v24;
      *(v33 + 32) = v27;
      *(v33 + 40) = v29;
      *(v33 + 80) = 0;
      sub_1C1A6EB6C();

      sub_1C1A6D61C();
      v34 = objc_allocWithZone(sub_1C1A6E9EC());
      v35 = sub_1C1A6E98C();
      v36 = sub_1C1A6EA7C();

      v37 = v36;
      v38 = v27;
      v39 = v29;
      v40 = v22;
      v41 = v24;
      v42 = 3;
LABEL_20:
      sub_1C1A06F5C(v37, v38, v39, v40, v41, v42);
      v79();

      return v33;
    }
  }

  if (v17 == 1)
  {
    v73 = v78;
    v72 = v79;

    return sub_1C1A04DE0(v72, v73);
  }

  if (!a2)
  {
LABEL_35:
    v47 = v77;
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v76 = sub_1C1A6F1BC();
    sub_1C1994600(v76, qword_1EDE665F0);
    v44 = sub_1C1A6F19C();
    v45 = sub_1C1A6F66C();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v17 != 2)
  {
    if (a4 && (v17 == 8 || v17 == 4))
    {
      v80 = v17;
      return sub_1C1A05BBC(&v80, a2, a3, a4, v79, v78);
    }

    goto LABEL_35;
  }

  v75 = v78;
  v74 = v79;

  return sub_1C1A052B4(a2, v74, v75);
}

uint64_t sub_1C1A04DE0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v44 = a2;
  v5 = sub_1C1A6D62C();
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v11 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1A73A30;
  v45 = 1;
  AppStoreConfig.description.getter();
  v14 = v13;
  v16 = v15;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1C199E518();
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  sub_1C1A6F18C();

  if (v3[4])
  {
    v17 = v3[5];
    v18 = v3[2];
    swift_unknownObjectRetain();
    [v18 lock];
    ObjectType = swift_getObjectType();
    v20 = (*(v17 + 8))(a1, v44, ObjectType, v17);
    [v18 unlock];
    swift_unknownObjectRelease();
    return v20;
  }

  else
  {
    v22 = v43;
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v23 = sub_1C1A6F1BC();
    sub_1C1994600(v23, qword_1EDE665F0);
    v24 = sub_1C1A6F19C();
    v25 = sub_1C1A6F66C();
    v26 = os_log_type_enabled(v24, v25);
    v42 = a1;
    if (v26)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C198D000, v24, v25, "Can't be used in extension mode.", v27, 2u);
      MEMORY[0x1C6906260](v27, -1, -1);
    }

    sub_1C1A6D61C();
    v28 = sub_1C1A6D5EC();
    v30 = v29;
    v31 = *(v22 + 8);
    v31(v10, v5);
    if (qword_1EDE63320 != -1)
    {
      swift_once();
    }

    v32 = sub_1C19E5F0C();
    v34 = v33;
    sub_1C1A6D61C();
    v35 = sub_1C1A6D5EC();
    v37 = v36;
    v31(v7, v5);
    type metadata accessor for AppStoreRequestTask();
    v38 = swift_allocObject();
    *(v38 + 96) = 0;
    *(v38 + 64) = 0;
    *(v38 + 72) = 0;
    swift_unknownObjectWeakInit();
    *(v38 + 104) = 0;
    *(v38 + 112) = 0;
    *(v38 + 120) = 0;
    sub_1C1A6D5CC();
    *(v38 + 16) = v35;
    *(v38 + 24) = v37;
    *(v38 + 48) = v28;
    *(v38 + 56) = v30;
    *(v38 + 32) = v32;
    *(v38 + 40) = v34;
    *(v38 + 80) = 7005;
    sub_1C1A6EB6C();

    sub_1C1A6D61C();
    v39 = objc_allocWithZone(sub_1C1A6E9EC());
    v40 = sub_1C1A6E98C();
    v41 = sub_1C1A6EA7C();

    sub_1C1A06F5C(v41, v32, v34, v28, v30, 0);
    v42();

    return v38;
  }
}

uint64_t sub_1C1A052B4(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v4 = v3;
  v81 = a1;
  v82 = a3;
  v6 = sub_1C1A6D62C();
  v78 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v70 - v10;
  v12 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v77 = &v70 - v13;
  v14 = sub_1C1A6D5DC();
  v15 = *(v14 - 8);
  v79 = v14;
  v80 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v70 - v18;
  sub_1C1A6F67C();
  v19 = sub_1C198FB8C(0, &qword_1EDE63F30);
  v73 = "n>16@0:8";
  v74 = &unk_1C1A764B0;
  v75 = v19;
  v20 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C1A73A30;
  v83 = 2;
  AppStoreConfig.description.getter();
  v23 = v22;
  v25 = v24;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1C199E518();
  *(v21 + 32) = v23;
  *(v21 + 40) = v25;
  sub_1C1A6F18C();

  v26 = *(v4 + 88);
  if (v26)
  {
    v27 = *(v26 + 17);

    sub_1C1A039B4();
    v28 = v81;
    if (v27)
    {
      v29 = v81;
    }

    else
    {
      v29 = 0;
    }

    sub_1C1A27FDC(v29);

    v30 = swift_allocObject();
    v31 = v82;
    v30[2] = a2;
    v30[3] = v31;
    v30[4] = v4;
    v32 = *(v4 + 64);
    if (v32 && (v33 = v32[3]) != 0)
    {
      v34 = *(*v32 + 104);
      swift_beginAccess();
      v35 = v77;
      sub_1C1990FA8(v32 + v34, v77, &qword_1EBF038A8);
      v36 = v79;
      if ((*(v80 + 48))(v35, 1, v79) == 1)
      {
        swift_retain_n();
        swift_retain_n();
        sub_1C1991140(v35, &qword_1EBF038A8);
      }

      else
      {
        v71 = a2;
        v59 = v76;
        (*(v80 + 32))(v76, v35, v36);
        swift_retain_n();
        swift_retain_n();

        v61 = v80;
        v62 = sub_1C1A27E38(v60, v28);

        if (v62)
        {
          v63 = v72;
          sub_1C1A6D5AC();
          sub_1C1A6D50C();
          v65 = v64;
          v66 = *(v61 + 8);
          v66(v63, v79);
          if (v65 < *(v26 + 24))
          {
            sub_1C1A6F64C();
            v67 = sub_1C1A6F8EC();
            sub_1C1A6F18C();

            v68 = v82;

            sub_1C19F771C(v32, v71, v68, v4);

            v66(v59, v79);
            return v33;
          }
        }

        *(v4 + 64) = 0;

        sub_1C1A6F64C();
        v69 = sub_1C1A6F8EC();
        sub_1C1A6F18C();

        (*(v61 + 8))(v59, v79);
        v28 = v81;
      }
    }

    else
    {
      swift_retain_n();
      swift_retain_n();
    }

    v33 = sub_1C1A06214(v28, v26, sub_1C1A0781C, v30);
  }

  else
  {
    v37 = v78;
    v71 = a2;
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v38 = sub_1C1A6F1BC();
    sub_1C1994600(v38, qword_1EDE665F0);
    v39 = sub_1C1A6F19C();
    v40 = sub_1C1A6F66C();
    v41 = v8;
    v42 = v37;
    if (os_log_type_enabled(v39, v40))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      MEMORY[0x1C6906260](v43, -1, -1);
    }

    sub_1C1A6D61C();
    v44 = sub_1C1A6D5EC();
    v46 = v45;
    v47 = *(v42 + 8);
    v47(v11, v6);
    if (qword_1EDE63320 != -1)
    {
      swift_once();
    }

    v48 = sub_1C19E5F0C();
    v50 = v49;
    sub_1C1A6D61C();
    v51 = sub_1C1A6D5EC();
    v53 = v52;
    v47(v41, v6);
    type metadata accessor for AppStoreRequestTask();
    v33 = swift_allocObject();
    *(v33 + 96) = 0;
    *(v33 + 64) = 0;
    *(v33 + 72) = 0;
    swift_unknownObjectWeakInit();
    *(v33 + 104) = 0;
    *(v33 + 112) = 0;
    *(v33 + 120) = 0;
    sub_1C1A6D5CC();
    *(v33 + 16) = v51;
    *(v33 + 24) = v53;
    *(v33 + 48) = v44;
    *(v33 + 56) = v46;
    *(v33 + 32) = v48;
    *(v33 + 40) = v50;
    *(v33 + 80) = 7006;
    sub_1C1A6EB6C();

    sub_1C1A6D61C();
    v54 = objc_allocWithZone(sub_1C1A6E9EC());
    v55 = sub_1C1A6E98C();
    v56 = sub_1C1A6EA7C();

    v57 = sub_1C1A06F5C(v56, v48, v50, v44, v46, 0);
    v71(v57, v33);
  }

  return v33;
}

uint64_t sub_1C1A05BBC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v65 = a5;
  v66 = a6;
  v63 = a3;
  v64 = a4;
  v62 = a2;
  v9 = sub_1C1A6D62C();
  v61 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  v15 = *a1;
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v16 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C1A73A30;
  v67 = v15;
  AppStoreConfig.description.getter();
  v19 = v18;
  v21 = v20;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1C199E518();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  sub_1C1A6F18C();

  v22 = 7007;
  if (v15 != 4)
  {
    v22 = 7008;
  }

  v23 = *(v7 + 88);
  if (v23)
  {
    v24 = v7;
    v25 = objc_opt_self();

    v26 = [v25 sharedInstance];
    v27 = [v26 locationEnabled];

    v28 = v24;
    if (v27)
    {
      [*(v24 + 48) willAccessLocation];
      if (v15 == 4)
      {
        v29 = 2;
      }

      else
      {
        v29 = 3;
      }

      [*(v24 + 48) willTransmitLocationFor_];
    }

    v31 = v23[5];
    v30 = v23[6];
    v33 = v23[7];
    v32 = v23[8];
    v34 = *(v28 + 96);
    type metadata accessor for AppStoreDynamicDataProvider();
    v35 = swift_allocObject();
    v35[2] = v31;
    v35[3] = v30;
    v35[4] = v33;
    v35[5] = v32;
    v35[6] = 0;
    v35[7] = v34;

    v36 = sub_1C1A3CBC8(v15 != 4, v62, v63, v64, v65, v66);

    return v36;
  }

  else
  {
    v63 = v22;
    v64 = v11;
    v38 = v14;
    v39 = v9;
    v40 = v61;
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v41 = sub_1C1A6F1BC();
    sub_1C1994600(v41, qword_1EDE665F0);
    v42 = sub_1C1A6F19C();
    v43 = sub_1C1A6F66C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      MEMORY[0x1C6906260](v44, -1, -1);
    }

    sub_1C1A6D61C();
    v45 = sub_1C1A6D5EC();
    v47 = v46;
    v48 = *(v40 + 8);
    v48(v38, v39);
    if (qword_1EDE63320 != -1)
    {
      swift_once();
    }

    v49 = sub_1C19E5F0C();
    v51 = v50;
    v52 = v64;
    sub_1C1A6D61C();
    v53 = sub_1C1A6D5EC();
    v55 = v54;
    v48(v52, v39);
    type metadata accessor for AppStoreRequestTask();
    v56 = swift_allocObject();
    *(v56 + 96) = 0;
    *(v56 + 64) = 0;
    *(v56 + 72) = 0;
    swift_unknownObjectWeakInit();
    *(v56 + 104) = 0;
    *(v56 + 112) = 0;
    *(v56 + 120) = 0;
    sub_1C1A6D5CC();
    *(v56 + 16) = v53;
    *(v56 + 24) = v55;
    *(v56 + 48) = v45;
    *(v56 + 56) = v47;
    *(v56 + 32) = v49;
    *(v56 + 40) = v51;
    *(v56 + 80) = v63;
    sub_1C1A6EB6C();

    sub_1C1A6D61C();
    v57 = objc_allocWithZone(sub_1C1A6E9EC());
    v58 = sub_1C1A6E98C();
    v59 = sub_1C1A6EA7C();

    sub_1C1A06F5C(v59, v49, v51, v45, v47, 0);
    v65();

    return v56;
  }
}

uint64_t AppStoreModule.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}