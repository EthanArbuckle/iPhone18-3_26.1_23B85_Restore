uint64_t sub_1A4336C40(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[64 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[64 * v10];
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v19 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v19 && (sub_1A524EAB4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v19 = v7 == v4;
      v4 += 64;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 64;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v19 = v7 == v6;
    v6 += 64;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v18;
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[64 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[64 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_28:
    v20 = v6 - 64;
    v5 -= 64;
    v21 = v14;
    do
    {
      v22 = *(v21 - 8);
      v23 = *(v21 - 7);
      v21 -= 64;
      v24 = *(v6 - 8) == v22 && *(v6 - 7) == v23;
      if (!v24 && (sub_1A524EAB4() & 1) != 0)
      {
        if (v5 + 64 != v6)
        {
          v28 = *v20;
          v29 = *(v6 - 3);
          v30 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v30;
          *v5 = v28;
          *(v5 + 1) = v29;
        }

        if (v14 <= v4 || (v6 -= 64, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 64 != v14)
      {
        v25 = *v21;
        v26 = *(v21 + 1);
        v27 = *(v21 + 3);
        *(v5 + 2) = *(v21 + 2);
        *(v5 + 3) = v27;
        *v5 = v25;
        *(v5 + 1) = v26;
      }

      v5 -= 64;
      v14 = v21;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0])
  {
    memmove(v6, v4, ((v14 - v4) / 64) << 6);
  }

  return 1;
}

uint64_t sub_1A4336E80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A433B4E4();
  v37 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + (v20 << 6);
      if (v37)
      {
        v23 = *(v22 + 8);
        v24 = *(v22 + 24);
        v39 = *v22;
        v40 = *(v22 + 16);
        v38 = *(v22 + 40);
        v41 = *(v22 + 32);
        v42 = *(v22 + 56);
      }

      else
      {
        v25 = *v22;
        v26 = *(v22 + 16);
        v27 = *(v22 + 48);
        *v45 = *(v22 + 32);
        *&v45[16] = v27;
        v44[0] = v25;
        v44[1] = v26;
        v24 = *(&v26 + 1);
        v41 = *v45;
        v42 = *(&v27 + 1);
        v38 = *&v45[8];
        v23 = *(&v25 + 1);
        v39 = v25;
        v40 = v26;
        sub_1A433B3F4(v44, v43);
      }

      result = sub_1A524EC84();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + (v15 << 6);
      *v16 = v39;
      *(v16 + 8) = v23;
      *(v16 + 16) = v40;
      *(v16 + 24) = v24;
      *(v16 + 32) = v41;
      *(v16 + 40) = v38;
      *(v16 + 56) = v42;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v37)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A4337170(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A524E244() + 1) & ~v5;
    do
    {
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v6);
      result = sub_1A524EC84();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v12 + 8 * v3);
          if (v3 != v6 || v17 >= v13 + 1)
          {
            *v17 = *v13;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + (v3 << 6));
          v20 = (v18 + (v6 << 6));
          if (v3 != v6 || v19 >= v20 + 4)
          {
            v9 = *v20;
            v10 = v20[1];
            v11 = v20[3];
            v19[2] = v20[2];
            v19[3] = v11;
            *v19 = v9;
            v19[1] = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A43372E8(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A3CAB9BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A4336E80(v14, a3 & 1);
      result = sub_1A3CAB9BC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A4337440();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v21 = (v19[7] + (result << 6));
    v22 = *a1;
    v23 = a1[1];
    v24 = a1[3];
    v21[2] = a1[2];
    v21[3] = v24;
    *v21 = v22;
    v21[1] = v23;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + (result << 6);

  return sub_1A433B4AC(a1, v20);
}

void *sub_1A4337440()
{
  v1 = v0;
  sub_1A433B4E4();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = (*(v2 + 56) + (v17 << 6));
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[3];
        v30 = v19[2];
        v31 = v22;
        v28 = v21;
        v29 = v20;
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + (v17 << 6));
        v24 = v28;
        v25 = v29;
        v26 = v31;
        v23[2] = v30;
        v23[3] = v26;
        *v23 = v24;
        v23[1] = v25;
        result = sub_1A433B3F4(&v28, &v27);
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1A43375C4()
{
  v1 = v0;
  v35 = sub_1A52413B4();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1A433B544();
  result = sub_1A524E3B4();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1A4335DB4(&qword_1EB1385B8, MEMORY[0x1E6969AD0]);
      result = sub_1A524C4A4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1A4337914(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1A52413B4();
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
    sub_1A43375C4();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1A4337BB8();
      goto LABEL_12;
    }

    sub_1A4337DE0();
  }

  v13 = *v3;
  sub_1A4335DB4(&qword_1EB1385B8, MEMORY[0x1E6969AD0]);
  v14 = sub_1A524C4A4();
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
      sub_1A4335DB4(&unk_1EB146170, MEMORY[0x1E6969AD0]);
      v22 = sub_1A524C594();
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
  result = sub_1A524EB74();
  __break(1u);
  return result;
}

void *sub_1A4337BB8()
{
  v1 = v0;
  v2 = sub_1A52413B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A433B544();
  v6 = *v0;
  v7 = sub_1A524E3A4();
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

uint64_t sub_1A4337DE0()
{
  v1 = v0;
  v32 = sub_1A52413B4();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1A433B544();
  v6 = sub_1A524E3B4();
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
      sub_1A4335DB4(&qword_1EB1385B8, MEMORY[0x1E6969AD0]);
      result = sub_1A524C4A4();
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

void *sub_1A43380F0(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 12) | (v17 << 6)));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v28[2] = v18[2];
      v28[3] = v19;
      v28[0] = v21;
      v28[1] = v20;
      v22 = *v18;
      v23 = v18[1];
      v24 = v18[3];
      v11[2] = v18[2];
      v11[3] = v24;
      *v11 = v22;
      v11[1] = v23;
      if (v14 == v10)
      {
        sub_1A433B3F4(v28, v27);
        goto LABEL_24;
      }

      v11 += 4;
      sub_1A433B3F4(v28, v27);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

char *sub_1A433828C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C37150(0, &qword_1EB120378, &type metadata for LemonadeTripsFeature.SectionedFeedProvider.TabItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A43383B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_storeEnumTagMultiPayload();
  v11 = sub_1A3CA1BC0(a1, v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4335DFC(v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if ((v11 & 1) == 0)
  {
    v14 = objc_opt_self();
    v15 = sub_1A524CA14();
    v16 = sub_1A524C634();
    v17 = [v14 transientCollectionListWithCollections:v15 title:v16 identifier:0 photoLibrary:*(a2 + 16)];
    v29[0] = v9;
    v18 = v17;

    v19 = *(a2 + 24);
    sub_1A4338F3C(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
    v29[1] = v20;
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    v40 = 2;
    v21 = v18;
    v22 = v19;
    sub_1A3C6C180(&v30);
    v38 = v30;
    v39 = v31;
    sub_1A3C6C18C(&v36);
    v34 = v36;
    v35 = v37;
    LOBYTE(v18) = sub_1A3C5A374();
    v23 = sub_1A3C30368();
    LOBYTE(v15) = sub_1A3C5A374();
    v24 = sub_1A3C5A374();
    v25 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v38, 0, &unk_1F1706C28, 0, 1, &v34, v18 & 1, &v40, v33, v23, v15 & 1, v24 & 1, v25 & 1, 0);
    v31 = 0;
    v30 = 0;
    v32 = 0;
    sub_1A433B638(a1, v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    v26 = (*(v29[0] + 80) + 24) & ~*(v29[0] + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = a2;
    sub_1A3CA2628(v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for LemonadeBookmark.CollectionIdentifier);

    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v21, v19, v41, v33, &v30, sub_1A433B6A0, v27);
  }

  v12 = *(a2 + 16);
  (*(v5 + 104))(v7, *MEMORY[0x1E69C12B0], v4);
  v13 = sub_1A4331DF4(v12, a2, v7, 1, 0);
  (*(v5 + 8))(v7, v4);
  return v13;
}

void sub_1A43387EC(uint64_t a1)
{
  sub_1A433ADB4(0, &qword_1EB124AB8, off_1E7721160);
  v12[1] = *(v2 - 8);
  v12[2] = v2;
  MEMORY[0x1EEE9AC00](v2);
  sub_1A433AF5C(0, &qword_1EB124AD8, off_1E7721110);
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  v12[4] = v4;
  v12[5] = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *MEMORY[0x1E69C12A8];
  v11 = *(v10 + 104);
  v12[3] = v8;
  v11(v8, v9, v6);
  v12[0] = a1;
  sub_1A4331DF4(*(a1 + 16), a1, v8, 0, 1);
  sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524D474();
  sub_1A4338F3C(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
  sub_1A3C37908();
  sub_1A433AE94();
  sub_1A5245F24();
}

void sub_1A4338D2C()
{
  if (!qword_1EB12A2E0)
  {
    sub_1A4338E18();
    sub_1A4335DB4(&unk_1EB128CF0, sub_1A4338E18);
    sub_1A433A748(&qword_1EB128E28, sub_1A4338EAC, sub_1A4339028);
    v0 = type metadata accessor for LemonadeTripsFeature.FeedProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A2E0);
    }
  }
}

uint64_t sub_1A4338E18()
{
  result = qword_1EB128CE8;
  if (!qword_1EB128CE8)
  {
    sub_1A4338EAC();
    sub_1A4335DB4(&qword_1EB128E20, sub_1A4338EAC);
    sub_1A5245EF4();
  }

  return result;
}

uint64_t sub_1A4338EAC()
{
  result = qword_1EB128E18;
  if (!qword_1EB128E18)
  {
    sub_1A4338F3C(255, &qword_1EB129748, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A4338FA4();
    sub_1A5245A54();
  }

  return result;
}

void sub_1A4338F3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A4338FA4()
{
  result = qword_1EB129750;
  if (!qword_1EB129750)
  {
    sub_1A4338F3C(255, &qword_1EB129748, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129750);
  }

  return result;
}

unint64_t sub_1A4339028()
{
  result = qword_1EB129758;
  if (!qword_1EB129758)
  {
    sub_1A4338F3C(255, &qword_1EB129748, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129758);
  }

  return result;
}

void sub_1A43390C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LemonadeShelfPlaceholderView();
    v7 = type metadata accessor for LemonadePlaceholderView();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A4339134(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1A59082D0](v2, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1A3F91438(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1A43391A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A433B4E4();
  v3 = sub_1A524E794();
  v4 = *(a1 + 48);
  *v21 = *(a1 + 32);
  *&v21[16] = v4;
  v5 = *(a1 + 80);
  *&v21[32] = *(a1 + 64);
  *&v21[48] = v5;
  *&v21[64] = *(a1 + 96);
  v6 = *v21;
  result = sub_1A3CAB9BC(*v21);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1A433B638(v21, v20, sub_1A433B5D8);
    return v3;
  }

  v9 = a1 + 104;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v6;
    v10 = (v3[7] + (result << 6));
    v11 = *&v21[8];
    v12 = *&v21[24];
    v13 = *&v21[56];
    v10[2] = *&v21[40];
    v10[3] = v13;
    *v10 = v11;
    v10[1] = v12;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_1A433B638(v21, v20, sub_1A433B5D8);
    v17 = *(v9 + 16);
    *v21 = *v9;
    *&v21[16] = v17;
    v18 = *(v9 + 48);
    *&v21[32] = *(v9 + 32);
    *&v21[48] = v18;
    *&v21[64] = *(v9 + 64);
    v6 = *v21;
    result = sub_1A3CAB9BC(*v21);
    v9 += 72;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1A433931C()
{
  v20 = sub_1A52413B4();
  v23 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v19 = v15 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v18 = v15 - v2;
  v16 = sub_1A5240664();
  v30 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v28 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A5241144();
  v25 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v29 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v17 = v15 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v27 = v15 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v26 = v15 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v21 = v15 - v12;
  v31 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v31);
  v13 = sub_1A52413D4();
  v15[0] = *(v13 - 8);
  v15[1] = v13;
  MEMORY[0x1EEE9AC00](v13);
  v24 = v15 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[2] = "tureFeedTabsBarTitle";
  sub_1A3C38BD4();
  sub_1A3C38BD4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4339FAC()
{
  sub_1A524C634();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5246344();
}

void sub_1A433A090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A433A0FC()
{
  if (!qword_1EB138558)
  {
    sub_1A40F3878();
    sub_1A5243EC4();
    sub_1A4335DB4(&qword_1EB129290, sub_1A40F3878);
    sub_1A4335DB4(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    v0 = sub_1A5242A94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138558);
    }
  }
}

unint64_t sub_1A433A1E8()
{
  result = qword_1EB125A88;
  if (!qword_1EB125A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125A88);
  }

  return result;
}

unint64_t sub_1A433A2A8(uint64_t a1)
{
  result = sub_1A3C441B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A433A310()
{
  result = qword_1EB138570;
  if (!qword_1EB138570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138570);
  }

  return result;
}

unint64_t sub_1A433A368()
{
  result = qword_1EB1259E8;
  if (!qword_1EB1259E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1259E8);
  }

  return result;
}

unint64_t sub_1A433A3F4(uint64_t a1)
{
  result = sub_1A433A41C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A433A41C()
{
  result = qword_1EB12A2C8;
  if (!qword_1EB12A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A2C8);
  }

  return result;
}

unint64_t sub_1A433A4DC()
{
  result = qword_1EB128C40;
  if (!qword_1EB128C40)
  {
    sub_1A4335E5C(255, &qword_1EB128C38, sub_1A4338D2C, off_1E7721230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128C40);
  }

  return result;
}

unint64_t sub_1A433A568()
{
  result = qword_1EB1259F0;
  if (!qword_1EB1259F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1259F0);
  }

  return result;
}

uint64_t sub_1A433A60C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A433A650(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A433A650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A4335E5C(255, &qword_1EB128C38, sub_1A4338D2C, off_1E7721230);
    v7 = v6;
    v8 = sub_1A433A4DC();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A433A748(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A433A7B8()
{
  if (!qword_1EB138580)
  {
    sub_1A43390C4(255, &qword_1EB127DE8, MEMORY[0x1E697F960]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138580);
    }
  }
}

uint64_t sub_1A433A8AC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A433A96C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A433AA50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1A433AA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A433AB24()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A433AB60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A433ABB4()
{
  if (!qword_1EB138590)
  {
    sub_1A4338D2C();
    sub_1A4335DB4(&qword_1EB138548, sub_1A4338D2C);
    v0 = type metadata accessor for LemonadeFeedContents();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138590);
    }
  }
}

unint64_t sub_1A433AC48()
{
  result = qword_1EB138598;
  if (!qword_1EB138598)
  {
    sub_1A433A090(255, &qword_1EB1385A0, sub_1A433A0FC, &type metadata for LemonadeTripsCell, MEMORY[0x1E697F960]);
    sub_1A4335DB4(&qword_1EB138560, sub_1A433A0FC);
    sub_1A433A1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138598);
  }

  return result;
}

unint64_t sub_1A433AD30()
{
  result = qword_1EB125C60;
  if (!qword_1EB125C60)
  {
    sub_1A4338F3C(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125C60);
  }

  return result;
}

void sub_1A433ADB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A433AF5C(255, &qword_1EB124AC8, off_1E7721118);
    v9[0] = v6;
    v9[1] = sub_1A4338E18();
    v9[2] = sub_1A433AEE8();
    v9[3] = sub_1A4335DB4(&unk_1EB128CF0, sub_1A4338E18);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A433AE94()
{
  result = qword_1EB16BA50;
  if (!qword_1EB16BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB16BA50);
  }

  return result;
}

unint64_t sub_1A433AEE8()
{
  result = qword_1EB124AD0;
  if (!qword_1EB124AD0)
  {
    sub_1A433AF5C(255, &qword_1EB124AC8, off_1E7721118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124AD0);
  }

  return result;
}

void sub_1A433AF5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A4338F3C(255, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
    v9[0] = v6;
    v9[1] = &type metadata for LemonadeTripsFeature.SectionedFeedProvider.TabItem;
    v9[2] = sub_1A3C37908();
    v9[3] = sub_1A433AE94();
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A433B244()
{
  result = qword_1EB1385A8;
  if (!qword_1EB1385A8)
  {
    sub_1A433AF5C(255, &qword_1EB124AC8, off_1E7721118);
    sub_1A4338E18();
    sub_1A433AEE8();
    sub_1A4335DB4(&unk_1EB128CF0, sub_1A4338E18);
    sub_1A433AE94();
    sub_1A52460A4();
  }

  return result;
}

void sub_1A433B36C()
{
  sub_1A4338EAC();
  swift_allocObject();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A433B42C(uint64_t a1)
{
  sub_1A3C37150(0, &qword_1EB1385C0, &type metadata for LemonadeTripsFeature.SectionedFeedProvider.TabItem, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A433B4E4()
{
  if (!qword_1EB1385C8)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1385C8);
    }
  }
}

void sub_1A433B544()
{
  if (!qword_1EB146160)
  {
    sub_1A52413B4();
    sub_1A4335DB4(&qword_1EB1385B8, MEMORY[0x1E6969AD0]);
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146160);
    }
  }
}

void sub_1A433B5D8()
{
  if (!qword_1EB1385D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1385D0);
    }
  }
}

uint64_t sub_1A433B638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A433B6A0(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1A4332E60(a1, v4, v5);
}

uint64_t sub_1A433B714(uint64_t a1)
{
  v3 = *(sub_1A5244EE4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v6 + 8);

  return sub_1A43355C0(a1, v1 + v4, v7, v9, v8);
}

void sub_1A433B7C4()
{
  if (!qword_1EB1385E0)
  {
    sub_1A5242D14();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1385E0);
    }
  }
}

unint64_t sub_1A433B840()
{
  result = qword_1EB16BA60;
  if (!qword_1EB16BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB16BA60);
  }

  return result;
}

unint64_t sub_1A433B898()
{
  result = qword_1EB16BA68[0];
  if (!qword_1EB16BA68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16BA68);
  }

  return result;
}

unint64_t sub_1A433B8F0()
{
  result = qword_1EB16BA40;
  if (!qword_1EB16BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB16BA40);
  }

  return result;
}

uint64_t sub_1A433B95C()
{
  v1 = *(v0 + 144);

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));

  return v2;
}

uint64_t sub_1A433B9A4()
{
  sub_1A433BDAC(0, &qword_1EB1264F8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  qword_1EB165D98 = result;
  return result;
}

uint64_t sub_1A433B9EC(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  sub_1A433BA3C(a1, a2);
  return v4;
}

void sub_1A433BA3C(uint64_t a1, void *a2)
{
  *(v2 + 72) = 0;
  *(v2 + 76) = 1;
  sub_1A433BDAC(0, &qword_1EB126500);
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 121) = 0u;
  v5 = swift_allocObject();
  *(v5 + 20) = 0;
  *(v5 + 16) = 0;
  *(v2 + 144) = v5;
  v6 = *a1;
  v16 = *(a1 + 32);
  v7 = v16;
  v8 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v8;
  *(v2 + 48) = v7;
  *(v2 + 56) = a2;
  v9 = v6;
  sub_1A433BB7C(&v16, &v15);
  v10 = qword_1EB165D90;
  v11 = a2;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB165D98;

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);
  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v14;
    os_unfair_lock_unlock((v12 + 24));

    sub_1A3F2D650(&v16);

    *(v2 + 64) = v14;
  }
}

uint64_t sub_1A433BB7C(uint64_t a1, uint64_t a2)
{
  sub_1A3F2D6AC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1A433BBE0()
{
  v1 = *(v0 + 144);

  os_unfair_lock_lock((v1 + 20));
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 20));

  result = swift_beginAccess();
  if ((*(v0 + 76) & 1) == 0)
  {
    return [*(v0 + 56) cancelImageRequest_];
  }

  return result;
}

uint64_t sub_1A433BC60@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a7;
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_1A433BC74()
{
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1A433BD08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1A433BD50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A433BDAC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v3 = sub_1A524E4E4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

char *sub_1A433BE0C(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1A4357F7C(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1A433BEB8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A433D92C(a1);
  return v2;
}

uint64_t sub_1A433BEF8()
{
  v1 = *v0;
  v21 = *(*v0 + 88);
  v2 = *(v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v20 - v6;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524CCB4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = *(v0 + *(*v0 + 104));
  (*(v4 + 16))(v7, v0 + *(*v0 + 96), AssociatedTypeWitness);
  v13 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v16 = v21;
  *(v15 + 4) = v2;
  *(v15 + 5) = v16;
  (*(v4 + 32))(&v15[v13], v7, AssociatedTypeWitness);
  *&v15[v14] = v12;

  v17 = sub_1A3D4D930(0, 0, v10, &unk_1A5331168, v15);
  v18 = sub_1A3EE1368(v17, MEMORY[0x1E69E7CA8] + 8);

  *(v0 + *(*v0 + 112)) = v18;
}

uint64_t sub_1A433C198()
{
  v1 = v0;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 112);
  if (*(v0 + v5))
  {

    sub_1A5247884();
  }

  *(v0 + v5) = 0;

  v6 = sub_1A524CCB4();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;

  sub_1A3D4D930(0, 0, v4, &unk_1A5331178, v7);
}

uint64_t sub_1A433C300()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 104));
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A433C338, v1, 0);
}

uint64_t sub_1A433C338()
{
  sub_1A433C398();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A433C398()
{
  v1 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry();
  v2 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v3 = sub_1A524CAB4();
  v4 = MEMORY[0x1E69E6168];
  v5 = sub_1A3C3DFB4(v3, v2, v1, MEMORY[0x1E69E6168]);

  swift_beginAccess();
  v0[15] = v5;

  v6 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry();
  swift_getTupleTypeMetadata2();
  v7 = sub_1A524CAB4();
  v8 = sub_1A3C3DFB4(v7, v2, v6, v4);

  swift_beginAccess();
  v0[16] = v8;

  v9 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LivePhotoEntry();
  swift_getTupleTypeMetadata2();
  v10 = sub_1A524CAB4();
  v11 = sub_1A3C3DFB4(v10, v2, v9, v4);

  swift_beginAccess();
  v0[17] = v11;
}

uint64_t sub_1A433C578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = swift_getAssociatedTypeWitness();
  v5[6] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  v6 = sub_1A524CD54();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_1A524CD44();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A433C74C, 0, 0);
}

uint64_t sub_1A433C74C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = *(v4 + 48);
  v6 = swift_checkMetadataState();
  v5(v6, v4);
  sub_1A524CD24();
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_1A433C86C;
  v8 = v0[10];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v8);
}

uint64_t sub_1A433C86C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A433C968, 0, 0);
}

uint64_t sub_1A433C968()
{
  v1 = v0[2];
  v0[14] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_1A433CA64;

    return sub_1A433CBF0(v1);
  }

  else
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1A433CA64()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 104) = v3;
  *v3 = v2;
  v3[1] = sub_1A433C86C;
  v4 = *(v1 + 80);

  return MEMORY[0x1EEE6D9C8](v1 + 16, 0, 0, v4);
}

uint64_t sub_1A433CBF0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *v1;
  v4 = sub_1A52411C4();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = *(v3 + 88);
  v2[11] = *(v3 + 80);
  v2[12] = swift_getAssociatedTypeWitness();
  v2[13] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[14] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v2[15] = v6;
  v2[16] = *(v6 + 64);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A433CDD4, v1, 0);
}

void sub_1A433CDD4()
{
  v1 = *(v0[2].i64[1] + 112);
  v0[1].i64[0] = v0[2].i64[0];
  v0[9].i64[1] = v1;
  *(swift_task_alloc() + 16) = vextq_s8(v0[5], v0[5], 8uLL);
  sub_1A524CB74();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A433D2D8()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1A433D3E8, v1, 0);
}

uint64_t sub_1A433D3E8()
{
  v1 = v0[20];
  (*(v0[15] + 8))(v0[17], v0[14]);
  if (v1 == sub_1A524CAF4())
  {
LABEL_2:

    v2 = v0[1];

    return v2();
  }

  else
  {
    while (1)
    {
      v4 = v0[20];
      v5 = sub_1A524CAD4();
      sub_1A524CA64();
      if (v5)
      {
        result = (*(v0[15] + 16))(v0[18], v0[4] + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * v4, v0[14]);
      }

      else
      {
        v22 = v0[16];
        result = sub_1A524E474();
        if (v22 != 8)
        {
          goto LABEL_22;
        }

        v23 = v0[18];
        v24 = v0[14];
        v25 = v0[15];
        v0[3] = result;
        (*(v25 + 16))(v23, v0 + 3, v24);
        result = swift_unknownObjectRelease();
      }

      v0[20] = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v6 = v0[19];
      (*(v0[15] + 32))(v0[17], v0[18], v0[14]);
      swift_getAssociatedConformanceWitness();
      sub_1A524E424();
      if (!*(v6 + 16))
      {
        break;
      }

      v7 = v0[19];
      sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
      v8 = sub_1A524C4A4();
      v9 = -1 << *(v7 + 32);
      v10 = v8 & ~v9;
      if (((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10) & 1) == 0)
      {
        break;
      }

      v11 = ~v9;
      v12 = v0[7];
      v13 = *(v12 + 72);
      v14 = *(v12 + 16);
      v15 = v0[19];
      while (1)
      {
        v16 = v0[8];
        v18 = v0[6];
        v17 = v0[7];
        v14(v16, *(v15 + 48) + v10 * v13, v18);
        sub_1A435C7C0(&unk_1EB12AFB0, MEMORY[0x1E69695A8]);
        v19 = sub_1A524C594();
        v20 = *(v17 + 8);
        v20(v16, v18);
        if (v19)
        {
          break;
        }

        v15 = v0[19];
        v10 = (v10 + 1) & v11;
        if (((*(v15 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v20(v0[9], v0[6]);
      v21 = v0[20];
      (*(v0[15] + 8))(v0[17], v0[14]);
      if (v21 == sub_1A524CAF4())
      {
        goto LABEL_2;
      }
    }

LABEL_18:
    (*(v0[7] + 8))(v0[9], v0[6]);
    v26 = swift_task_alloc();
    v0[21] = v26;
    *v26 = v0;
    v26[1] = sub_1A433D2D8;
    v27 = v0[17];

    return sub_1A433DD4C(v27);
  }
}

uint64_t sub_1A433D840(uint64_t result)
{
  if (v1[4])
  {
    return 1;
  }

  if (*(result + 32))
  {
    return 0;
  }

  if (*(v1 + 33))
  {
    return 1;
  }

  if (*(result + 33))
  {
    return 0;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v2 = 0;
      goto LABEL_19;
    }

    v7 = v2 + 16;
    v5 = *(v2 + 16);
    v6 = *(v7 + 8);
    v8 = __OFSUB__(v6, v5);
    v2 = v6 - v5;
    if (!v8)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v2 = BYTE6(v3);
    goto LABEL_19;
  }

  v8 = __OFSUB__(HIDWORD(v2), v2);
  LODWORD(v2) = HIDWORD(v2) - v2;
  if (v8)
  {
    __break(1u);
    goto LABEL_31;
  }

  v2 = v2;
LABEL_19:
  v9 = *result;
  v10 = *(result + 8);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      v9 = 0;
      return v9 < v2;
    }

    v14 = v9 + 16;
    v12 = *(v9 + 16);
    v13 = *(v14 + 8);
    v8 = __OFSUB__(v13, v12);
    v9 = v13 - v12;
    if (!v8)
    {
      return v9 < v2;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v9 = BYTE6(v10);
    return v9 < v2;
  }

  v8 = __OFSUB__(HIDWORD(v9), v9);
  LODWORD(v9) = HIDWORD(v9) - v9;
  if (!v8)
  {
    v9 = v9;
    return v9 < v2;
  }

LABEL_31:
  __break(1u);
  return result;
}

char *sub_1A433D92C(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 14) = MEMORY[0x1E69E7CD0];
  v3 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry();
  v4 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v5 = sub_1A524CAB4();
  v6 = MEMORY[0x1E69E6168];
  v7 = sub_1A3C3DFB4(v5, v4, v3, MEMORY[0x1E69E6168]);

  *(v1 + 15) = v7;
  v8 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry();
  swift_getTupleTypeMetadata2();
  v9 = sub_1A524CAB4();
  v10 = sub_1A3C3DFB4(v9, v4, v8, v6);

  *(v1 + 16) = v10;
  v11 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LivePhotoEntry();
  swift_getTupleTypeMetadata2();
  v12 = sub_1A524CAB4();
  v13 = sub_1A3C3DFB4(v12, v4, v11, v6);

  *(v1 + 17) = v13;
  v14 = *(*v1 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&v1[v14], a1, AssociatedTypeWitness);
  return v1;
}

uint64_t sub_1A433DB34(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A52411C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8]), v7 = sub_1A524C4A4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1A435C7C0(&unk_1EB12AFB0, MEMORY[0x1E69695A8]);
      v15 = sub_1A524C594();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1A433DD4C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getAssociatedTypeWitness();
  v2[15] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[16] = AssociatedTypeWitness;
  v2[17] = *(AssociatedTypeWitness - 8);
  v2[18] = swift_task_alloc();
  v4 = sub_1A52411C4();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A433DF2C, v1, 0);
}

void sub_1A433DF2C()
{
  *(v0 + 200) = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1A524E424();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A433E2B8()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_1A433EB6C;
  }

  else
  {
    v4 = sub_1A433E3E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A433E3E4()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v6;
  *(v0 + 48) = *(v0 + 88);
  v7 = sub_1A524D264();
  v8 = *v2;
  v1(v4, v3, v5);
  v9 = os_log_type_enabled(v8, v7);
  v10 = *(v0 + 208);
  v11 = *(v0 + 168);
  v12 = *(v0 + 152);
  if (v9)
  {
    v8;
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    *v13 = 136446466;
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    v10(v11, v12);
    sub_1A3C2EF94();
  }

  v10(*(v0 + 168), *(v0 + 152));
  v14 = *(v0 + 32);
  if (v14 == 2)
  {
    v18 = swift_task_alloc();
    *(v0 + 272) = v18;
    *v18 = v0;
    v18[1] = sub_1A433E94C;
    v19 = *(v0 + 96);

    return sub_1A433FDCC(v19, v0 + 16);
  }

  else if (v14 == 3)
  {
    v15 = swift_task_alloc();
    *(v0 + 280) = v15;
    *v15 = v0;
    v15[1] = sub_1A433EA5C;
    v16 = *(v0 + 96);

    return sub_1A434026C(v16, v0 + 16);
  }

  else
  {
    v20 = *(v0 + 34);
    v21 = *(v0 + 33);
    v22 = swift_task_alloc();
    *(v0 + 264) = v22;
    if (v20)
    {
      v23 = 0x10000;
    }

    else
    {
      v23 = 0;
    }

    if (v21)
    {
      v24 = 256;
    }

    else
    {
      v24 = 0;
    }

    v25 = v23 & 0xFFFFFFFE | v14 & 1;
    *v22 = v0;
    v22[1] = sub_1A433E78C;
    v26 = *(v0 + 96);

    return sub_1A433F8A4(v26, v0 + 16, v25 | v24);
  }
}

uint64_t sub_1A433E78C()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1A433E89C, v1, 0);
}

uint64_t sub_1A433E89C()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[19];
  sub_1A435BFA0((v0 + 2));
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A433E94C()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1A435CD3C, v1, 0);
}

uint64_t sub_1A433EA5C()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1A435CD3C, v1, 0);
}

uint64_t sub_1A433EB6C()
{
  v1 = v0[28];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[12];
  v6 = sub_1A524D244();
  v7 = *v1;
  (*(v3 + 16))(v2, v5, v4);
  v8 = os_log_type_enabled(v7, v6);
  v24 = v0[32];
  v9 = v0[26];
  if (v8)
  {
    v10 = v0[23];
    v11 = v0[18];
    v23 = v0[19];
    v13 = v0[16];
    v12 = v0[17];
    v7;
    v14 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v14 = 136446466;
    sub_1A524E424();
    (*(v12 + 8))(v11, v13);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    v9(v10, v23);
    sub_1A3C2EF94();
  }

  v15 = v0[24];
  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[16];
  v19 = *(v0[17] + 8);
  v20 = v7;
  v19(v17, v18);

  v9(v15, v16);

  v21 = v0[1];

  return v21();
}

void sub_1A433EE84()
{
  swift_beginAccess();
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry();
  sub_1A524C454();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A433F04C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A435C2D8(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A435A6E8();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_1A435C808(a1, sub_1A435C2D8);
    v15 = sub_1A3CAB9BC(a2);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A4357048(sub_1A435A6E8, sub_1A435A750);
        v19 = v23;
      }

      (*(v11 + 32))(v8, *(v19 + 56) + *(v11 + 72) * v17, v10);
      sub_1A4356C58(v17, v19, sub_1A435A6E8);
      *v3 = v19;
      (*(v11 + 56))(v8, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v8, 1, 1, v10);
    }

    return sub_1A435C808(v8, sub_1A435C2D8);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = sub_1A4356E0C(v14, a2, v20, sub_1A435A6E8, sub_1A435A750, sub_1A435A6E8);
    *v3 = v23;
  }

  return result;
}

uint64_t sub_1A433F314(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A435AC30(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A435A544();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_1A435C808(a1, sub_1A435AC30);
    v15 = sub_1A3CAB9BC(a2);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A4357048(sub_1A435A544, sub_1A435A5C4);
        v19 = v23;
      }

      (*(v11 + 32))(v8, *(v19 + 56) + *(v11 + 72) * v17, v10);
      sub_1A4356C58(v17, v19, sub_1A435A544);
      *v3 = v19;
      (*(v11 + 56))(v8, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v8, 1, 1, v10);
    }

    return sub_1A435C808(v8, sub_1A435AC30);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = sub_1A4356E0C(v14, a2, v20, sub_1A435A544, sub_1A435A5C4, sub_1A435A544);
    *v3 = v23;
  }

  return result;
}

uint64_t sub_1A433F5DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A435AA6C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4359E34();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_1A435C808(a1, sub_1A435AA6C);
    v15 = sub_1A3CAB9BC(a2);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A4357048(sub_1A4359E34, sub_1A4359ED4);
        v19 = v23;
      }

      (*(v11 + 32))(v8, *(v19 + 56) + *(v11 + 72) * v17, v10);
      sub_1A4356C58(v17, v19, sub_1A4359E34);
      *v3 = v19;
      (*(v11 + 56))(v8, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v8, 1, 1, v10);
    }

    return sub_1A435C808(v8, sub_1A435AA6C);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = sub_1A4356E0C(v14, a2, v20, sub_1A4359E34, sub_1A4359ED4, sub_1A4359E34);
    *v3 = v23;
  }

  return result;
}

uint64_t sub_1A433F8A4(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 112) = a3;
  *(v4 + 16) = a1;
  v5 = sub_1A52411C4();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_getAssociatedTypeWitness();
  *(v4 + 72) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 80) = AssociatedTypeWitness;
  *(v4 + 88) = *(AssociatedTypeWitness - 8);
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A433FA68, v3, 0);
}

void sub_1A433FA68()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[2];
  v5 = sub_1A524D264();
  v6 = *sub_1A486DB9C();
  (*(v1 + 16))(v2, v4, v3);
  v7 = os_log_type_enabled(v6, v5);
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  if (v7)
  {
    v11 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    v6;
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    *v13 = 136446210;
    swift_getAssociatedConformanceWitness();
    sub_1A524E424();
    (*(v9 + 8))(v8, v10);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v11 + 8))(v12, v14);
    sub_1A3C2EF94();
  }

  (*(v9 + 8))(v0[12], v0[10]);
  sub_1A434070C();
}

uint64_t sub_1A433FD58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A433FDCC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A52411C4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_getAssociatedTypeWitness();
  v3[9] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v3[11] = *(AssociatedTypeWitness - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A433FF8C, v2, 0);
}

void sub_1A433FF8C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[2];
  v5 = sub_1A524D264();
  v6 = *sub_1A486DB9C();
  (*(v1 + 16))(v2, v4, v3);
  v7 = os_log_type_enabled(v6, v5);
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  if (v7)
  {
    v11 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    v6;
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    *v13 = 136446210;
    swift_getAssociatedConformanceWitness();
    sub_1A524E424();
    (*(v9 + 8))(v8, v10);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v11 + 8))(v12, v14);
    sub_1A3C2EF94();
  }

  (*(v9 + 8))(v0[12], v0[10]);
  sub_1A43481AC();
}

uint64_t sub_1A434026C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A52411C4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_getAssociatedTypeWitness();
  v3[9] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v3[11] = *(AssociatedTypeWitness - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A434042C, v2, 0);
}

void sub_1A434042C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[2];
  v5 = sub_1A524D264();
  v6 = *sub_1A486DB9C();
  (*(v1 + 16))(v2, v4, v3);
  v7 = os_log_type_enabled(v6, v5);
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  if (v7)
  {
    v11 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    v6;
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    *v13 = 136446210;
    swift_getAssociatedConformanceWitness();
    sub_1A524E424();
    (*(v9 + 8))(v8, v10);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v11 + 8))(v12, v14);
    sub_1A3C2EF94();
  }

  (*(v9 + 8))(v0[12], v0[10]);
  sub_1A4350A5C();
}

uint64_t sub_1A434069C()
{
  v1 = *(v0 + 32);
  sub_1A4350BB8(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6DFA0](sub_1A435CD1C, v1, 0);
}

void sub_1A434070C()
{
  swift_beginAccess();
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4340868(uint64_t a1, _OWORD *a2, int a3)
{
  v14 = a3;
  v12 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry.ImageAttachment();
  MEMORY[0x1EEE9AC00](v12);
  v11[11] = v11 - v6;
  v7 = sub_1A52411C4();
  v11[8] = *(v7 - 8);
  v11[9] = v7;
  MEMORY[0x1EEE9AC00](v7);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11[10] = v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  swift_beginAccess();
  if (!*(*(v3 + 176) + 16))
  {
    swift_beginAccess();
    v11[7] = a2;
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
    sub_1A3DBD9A0();
    sub_1A524CBF4();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4342B10(a1, a2, v14 & 0x10101);
}

uint64_t sub_1A4340ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A4340EFC, v3, 0);
}

uint64_t sub_1A4340EFC()
{
  v1 = [*(v0 + 24) uuid];
  if (v1)
  {
    v4 = v1;
    sub_1A524C674();

    sub_1A434070C();
  }

  __break(1u);
  return MEMORY[0x1EEE6DFA0](0, v2, v3);
}

uint64_t sub_1A4340FB8()
{
  v1 = *(v0 + 40);
  sub_1A4341088(*(v0 + 32));

  return MEMORY[0x1EEE6DFA0](sub_1A4341028, v1, 0);
}

uint64_t sub_1A4341028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4341088(uint64_t a1)
{
  sub_1A435C30C();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v9 = v1;
  v10 = a1;
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69E8790], v4);
  return sub_1A524CEC4();
}

uint64_t sub_1A4341188(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A43411AC, v2, 0);
}

uint64_t sub_1A43411AC()
{
  v1 = [*(v0 + 16) uuid];
  if (v1)
  {
    v4 = v1;
    sub_1A524C674();

    sub_1A434070C();
  }

  __break(1u);
  return MEMORY[0x1EEE6DFA0](0, v2, v3);
}

uint64_t sub_1A4341268()
{
  v1 = *(v0 + 32);
  sub_1A43412D4(*(v0 + 24));

  return MEMORY[0x1EEE6DFA0](sub_1A3E8D0BC, v1, 0);
}

uint64_t sub_1A43412D4(uint64_t a1)
{
  sub_1A435C2D8(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A435A6E8();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  swift_beginAccess();
  v14 = *(v1 + 176);
  if (!*(v14 + 16))
  {
    return swift_endAccess();
  }

  v15 = sub_1A3CAB9BC(a1);
  if ((v16 & 1) == 0)
  {
    return swift_endAccess();
  }

  (*(v8 + 16))(v10, *(v14 + 56) + *(v8 + 72) * v15, v7);
  (*(v8 + 32))(v13, v10, v7);
  swift_endAccess();
  (*(v8 + 56))(v5, 1, 1, v7);
  swift_beginAccess();
  sub_1A433F04C(v5, a1);
  swift_endAccess();
  v18[1] = 0;
  sub_1A524CE84();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1A43414F8(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = v5;
  *(v6 + 51) = a4;
  *(v6 + 50) = a3;
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A4341524, v5, 0);
}

id sub_1A4341524()
{
  result = [*(v0 + 64) uuid];
  if (result)
  {
    v2 = result;
    sub_1A524C674();

    sub_1A434070C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4341620()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_1A43417C4;
  }

  else
  {
    v4 = sub_1A434174C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A434174C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 48);
  *v1 = v2;
  *(v1 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A43417C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4341828(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 51) = a3;
  *(v5 + 50) = a2;
  *(v5 + 56) = a1;
  *(v5 + 80) = *v4;
  *(v5 + 88) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1A43418A4, v4, 0);
}

uint64_t sub_1A43418A4()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 51);
  v5 = *(v0 + 50);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  *(v6 + 32) = v5;
  *(v6 + 33) = v4;
  v7 = swift_allocObject();
  *(v0 + 104) = v7;
  swift_weakInit();
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v8[2] = *(v1 + 80);
  v8[3] = *(v1 + 88);
  v8[4] = v7;
  v8[5] = v3;
  WitnessTable = swift_getWitnessTable();
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  v11 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
  *v10 = v0;
  v10[1] = sub_1A4341A38;

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_1A53317E8, v6, sub_1A435B910, v8, v2, WitnessTable, v11);
}

uint64_t sub_1A4341A38()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_1A4341BB0;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1A4341B7C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A4341B7C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  v3 = *(v0 + 49);
  v4 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  *(v1 + 33) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1A4341BB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4341C28(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 128) = MEMORY[0x1E69E7CC0];
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 16711680;
  *(v4 + 176) = sub_1A4359C40(v5, sub_1A435A664, sub_1A435A750, sub_1A435A7B8, sub_1A435A6E8);
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
  sub_1A3DBD9A0();
  sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v7 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v8 = sub_1A524CAB4();
  v9 = sub_1A3C3DFB4(v8, v7, TupleTypeMetadata3, MEMORY[0x1E69E6540]);

  *(v4 + 184) = v9;
  *(v4 + 192) = v5;
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry.ImageAttachment();
  *(v4 + 200) = sub_1A524CAB4();
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  return v4;
}

void sub_1A4341E08(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[2] = a2;
  v13 = *MEMORY[0x1E69E9840];
  v9 = sub_1A52411C4();
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1A5240E64();
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v3);
  v8[3] = v8 - v4;
  sub_1A435B518(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = [objc_opt_self() defaultManager];
  if (a1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError();
  swift_getWitnessTable();
  swift_allocError();
  *v7 = 3;
  swift_willThrow();
}

uint64_t sub_1A4342370()
{
  v31 = *v0;
  sub_1A435A7D0(0);
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v32 = v0;
  v4 = v0[22];
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(v0[22] + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v36 = v0[22];
  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  *&v14 = 134349056;
  v33 = v14;
  v34 = v3;
  while (v10)
  {
LABEL_10:
    v16 = __clz(__rbit64(v10)) | (v13 << 6);
    v17 = *(v36 + 56);
    v18 = *(*(v36 + 48) + 8 * v16);
    sub_1A435A6E8();
    (*(*(v19 - 8) + 16))(v3 + *(v35 + 48), v17 + *(*(v19 - 8) + 72) * v16, v19);
    *v3 = v18;
    v20 = sub_1A524D264();
    v21 = *sub_1A486DB9C();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = v21;
      v23 = swift_slowAlloc();
      *v23 = v33;
      *(v23 + 4) = v18;
      _os_log_impl(&dword_1A3C1C000, v22, v20, "Journal: [%{public}ld] Cancel from deinit for image", v23, 0xCu);
      MEMORY[0x1A590EEC0](v23, -1, -1);
    }

    v10 &= v10 - 1;
    v38 = 0;
    v3 = v34;
    sub_1A524CE84();
    result = sub_1A435C808(v3, sub_1A435A7D0);
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      v24 = v32;
      v25 = swift_beginAccess();
      v37 = v24[23];
      MEMORY[0x1EEE9AC00](v25);
      v26 = *(v31 + 88);
      *(&v31 - 2) = *(v31 + 80);
      *(&v31 - 1) = v26;
      MEMORY[0x1EEE9AC00](v27);
      *(&v31 - 4) = v28;
      *(&v31 - 3) = v29;
      *(&v31 - 2) = sub_1A435A858;
      *(&v31 - 1) = v30;
      type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
      sub_1A3DBD9A0();
      sub_1A524CBF4();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v10 = *(v6 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A43427A4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
  sub_1A3DBD9A0();
  v8 = sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = *(TupleTypeMetadata3 - 8);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v13 = v21 - v12;
  (*(*(v8 - 8) + 16))(v21 - v12, a2, v8, v11);
  v13[*(TupleTypeMetadata3 + 48)] = a3;
  v13[*(TupleTypeMetadata3 + 64)] = a4;
  v14 = sub_1A524D264();
  v15 = *sub_1A486DB9C();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = v15;
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    *(v17 + 4) = a1;
    _os_log_impl(&dword_1A3C1C000, v16, v14, "Journal: [%{public}ld] Cancel from deinit for image data", v17, 0xCu);
    MEMORY[0x1A590EEC0](v17, -1, -1);
  }

  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError();
  swift_getWitnessTable();
  v18 = swift_allocError();
  *v19 = 0;
  v21[1] = v18;
  sub_1A524CBD4();
  return (*(v10 + 8))(v13, TupleTypeMetadata3);
}

uint64_t sub_1A4342A00(char *a1, uint64_t (*a2)(uint64_t, char *, void, void))
{
  v4 = *a1;
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
  sub_1A3DBD9A0();
  sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)], a1[*(TupleTypeMetadata2 + 48) + *(TupleTypeMetadata3 + 48)], a1[*(TupleTypeMetadata2 + 48) + *(TupleTypeMetadata3 + 64)]);
}

uint64_t sub_1A4342AE4()
{
  sub_1A4342370();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1A4342B10(uint64_t a1, _OWORD *a2, int a3)
{
  v32 = a3;
  v33 = a2;
  v5 = *v3;
  v31 = *(*v3 + 88);
  v30 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v27 - v9;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v13;
  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v28 = v3;
  swift_weakInit();
  v16 = v3[15];
  v27 = v3[14];
  (*(v7 + 16))(v10, a1, AssociatedTypeWitness);
  v17 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 26) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v31;
  *(v20 + 4) = v30;
  *(v20 + 5) = v21;
  (*(v7 + 32))(&v20[v17], v10, AssociatedTypeWitness);
  v22 = &v20[v18];
  *v22 = v27;
  *(v22 + 1) = v16;
  v23 = v32;
  v22[16] = v32 & 1;
  v22[17] = BYTE1(v23) & 1;
  v22[18] = BYTE2(v23) & 1;
  *&v20[v19] = v15;
  v24 = &v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8];
  v25 = v33;
  v26 = v33[1];
  *v24 = *v33;
  *(v24 + 1) = v26;
  *(v24 + 4) = *(v25 + 4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4342EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v8 + 296) = a8;
  *(v8 + 304) = v13;
  *(v8 + 536) = a7;
  *(v8 + 280) = a5;
  *(v8 + 288) = a6;
  *(v8 + 272) = a4;
  v9 = sub_1A52411C4();
  *(v8 + 312) = v9;
  *(v8 + 320) = *(v9 - 8);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_getAssociatedTypeWitness();
  *(v8 + 344) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 352) = AssociatedTypeWitness;
  *(v8 + 360) = *(AssociatedTypeWitness - 8);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4343080, 0, 0);
}

uint64_t sub_1A4343080()
{
  v1 = v0[48];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[34];
  v5 = sub_1A524D264();
  v6 = sub_1A486DB9C();
  v0[49] = v6;
  v7 = *v6;
  v8 = *(v2 + 16);
  v0[50] = v8;
  v0[51] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v4, v3);
  v9 = os_log_type_enabled(v7, v5);
  v10 = v0[48];
  v12 = v0[44];
  v11 = v0[45];
  if (v9)
  {
    v14 = v0[40];
    v13 = v0[41];
    v22 = v0[39];
    v7;
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    *v15 = 136446466;
    swift_getAssociatedConformanceWitness();
    sub_1A524E424();
    (*(v11 + 8))(v10, v12);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v14 + 8))(v13, v22);
    sub_1A3C2EF94();
  }

  v16 = *(v11 + 8);
  v16(v0[48], v0[44]);
  v0[52] = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[53] = AssociatedConformanceWitness;
  v23 = (*(AssociatedConformanceWitness + 16) + **(AssociatedConformanceWitness + 16));
  v18 = swift_task_alloc();
  v0[54] = v18;
  v19 = sub_1A435C204();
  *v18 = v0;
  v18[1] = sub_1A434340C;
  v20 = v0[44];

  return v23(v0 + 31, &type metadata for OneUpSharePlayImageDataItem, &type metadata for OneUpSharePlayImageDataItem, v19, v20, AssociatedConformanceWitness);
}

uint64_t sub_1A434340C()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_1A4344798;
  }

  else
  {
    v2 = sub_1A4343520;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4343520()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  *(v0 + 448) = v2;
  *(v0 + 456) = v3;
  sub_1A524CDD4();
  *(v0 + 464) = v1;
  if (v1)
  {
    v4 = v2;
    v5 = v3;
LABEL_10:
    sub_1A3C59280(v4, v5);
    *(v0 + 512) = v1;
    v23 = *(v0 + 400);
    v24 = *(v0 + 392);
    v25 = *(v0 + 368);
    v26 = *(v0 + 352);
    v27 = *(v0 + 272);
    v28 = sub_1A524D244();
    v29 = *v24;
    v23(v25, v27, v26);
    if (os_log_type_enabled(v29, v28))
    {
      v30 = *(v0 + 368);
      v49 = *(v0 + 416);
      v31 = *(v0 + 352);
      v33 = *(v0 + 320);
      v32 = *(v0 + 328);
      v34 = *(v0 + 312);
      v29;
      v35 = swift_slowAlloc();
      swift_slowAlloc();
      swift_slowAlloc();
      *v35 = 136446722;
      sub_1A524E424();
      v49(v30, v31);
      sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
      sub_1A524EA44();
      (*(v33 + 8))(v32, v34);
      sub_1A3C2EF94();
    }

    (*(v0 + 416))(*(v0 + 368), *(v0 + 352));
    if (*(v0 + 536))
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      *(v0 + 520) = Strong;
      if (Strong)
      {
        v22 = Strong;
        v40 = sub_1A4344364;
LABEL_22:
        v21 = v40;
        goto LABEL_23;
      }

      swift_beginAccess();
      v41 = swift_weakLoadStrong();
      *(v0 + 528) = v41;
      if (v41)
      {
        v22 = v41;
        v40 = sub_1A4344684;
        goto LABEL_22;
      }

      v36 = *(v0 + 512);
    }

    else
    {
      v36 = v1;
    }

    goto LABEL_14;
  }

  v6 = *(v0 + 400);
  v7 = *(v0 + 392);
  v8 = *(v0 + 376);
  v9 = *(v0 + 352);
  v10 = *(v0 + 272);
  v11 = sub_1A524D264();
  v12 = *v7;
  v6(v8, v10, v9);
  if (os_log_type_enabled(v12, v11))
  {
    v13 = *(v0 + 376);
    v14 = *(v0 + 352);
    v16 = *(v0 + 320);
    v15 = *(v0 + 328);
    v50 = *(v0 + 416);
    v51 = *(v0 + 312);
    v12;
    v17 = swift_slowAlloc();
    swift_slowAlloc();
    *v17 = 136446466;
    sub_1A524E424();
    v50(v13, v14);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v16 + 8))(v15, v51);
    sub_1A3C2EF94();
  }

  (*(v0 + 416))(*(v0 + 376), *(v0 + 352));
  if (*(v0 + 536))
  {
    swift_beginAccess();
    v18 = swift_weakLoadStrong();
    *(v0 + 472) = v18;
    if (v18)
    {
      v19 = v18;
      v20 = *(v0 + 304);
      *(v0 + 480) = *(v20 + 24);
      *(v0 + 488) = *(v20 + 32);
      sub_1A3D602A8(v2, v3);
      v21 = sub_1A4343C48;
      v22 = v19;
LABEL_23:

      return MEMORY[0x1EEE6DFA0](v21, v22, 0);
    }
  }

  v1 = *(v0 + 464);
  sub_1A524CDD4();
  if (v1)
  {
    v4 = *(v0 + 448);
    v5 = *(v0 + 456);
    goto LABEL_10;
  }

  swift_beginAccess();
  v42 = swift_weakLoadStrong();
  *(v0 + 496) = v42;
  v43 = *(v0 + 448);
  v44 = *(v0 + 456);
  if (!v42)
  {
    sub_1A3C59280(v43, v44);
LABEL_14:

    v37 = *(v0 + 8);

    return v37();
  }

  v45 = *(v0 + 536);
  sub_1A3D602A8(v43, v44);
  v46 = swift_task_alloc();
  *(v0 + 504) = v46;
  *v46 = v0;
  v46[1] = sub_1A4344180;
  v48 = *(v0 + 448);
  v47 = *(v0 + 456);

  return sub_1A43450D4(v48, v47, v45 & 1, BYTE1(v45) & 1);
}

uint64_t sub_1A4343CE8()
{
  v1 = *(v0 + 464);
  sub_1A524CDD4();
  if (v1)
  {
    sub_1A3C59280(*(v0 + 448), *(v0 + 456));
    *(v0 + 512) = v1;
    v2 = *(v0 + 400);
    v3 = *(v0 + 392);
    v4 = *(v0 + 368);
    v5 = *(v0 + 352);
    v6 = *(v0 + 272);
    v7 = sub_1A524D244();
    v8 = *v3;
    v2(v4, v6, v5);
    if (os_log_type_enabled(v8, v7))
    {
      v9 = *(v0 + 368);
      v29 = *(v0 + 416);
      v10 = *(v0 + 352);
      v12 = *(v0 + 320);
      v11 = *(v0 + 328);
      v13 = *(v0 + 312);
      v8;
      v14 = swift_slowAlloc();
      swift_slowAlloc();
      swift_slowAlloc();
      *v14 = 136446722;
      sub_1A524E424();
      v29(v9, v10);
      sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
      sub_1A524EA44();
      (*(v12 + 8))(v11, v13);
      sub_1A3C2EF94();
    }

    (*(v0 + 416))(*(v0 + 368), *(v0 + 352));
    if (*(v0 + 536))
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      *(v0 + 520) = Strong;
      if (Strong)
      {
        v25 = Strong;
        v26 = sub_1A4344364;
LABEL_19:

        return MEMORY[0x1EEE6DFA0](v26, v25, 0);
      }

      swift_beginAccess();
      v28 = swift_weakLoadStrong();
      *(v0 + 528) = v28;
      if (v28)
      {
        v25 = v28;
        v26 = sub_1A4344684;
        goto LABEL_19;
      }

      v15 = *(v0 + 512);
    }

    else
    {
      v15 = v1;
    }

    goto LABEL_14;
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  *(v0 + 496) = v16;
  v17 = *(v0 + 448);
  v18 = *(v0 + 456);
  if (!v16)
  {
    sub_1A3C59280(v17, v18);
LABEL_14:

    v27 = *(v0 + 8);

    return v27();
  }

  v19 = *(v0 + 536);
  sub_1A3D602A8(v17, v18);
  v20 = swift_task_alloc();
  *(v0 + 504) = v20;
  *v20 = v0;
  v20[1] = sub_1A4344180;
  v22 = *(v0 + 448);
  v21 = *(v0 + 456);

  return sub_1A43450D4(v22, v21, v19 & 1, BYTE1(v19) & 1);
}

uint64_t sub_1A4344180()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);

  sub_1A3C59280(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1A43442D4, 0, 0);
}

uint64_t sub_1A43442D4()
{
  sub_1A3C59280(v0[56], v0[57]);

  v1 = v0[1];

  return v1();
}

void sub_1A4344364()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = *v1;
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[19];
  v7 = v1[20];
  v8 = *(v1 + 84) | (*(v1 + 170) << 16);
  v1[17] = v2;
  v1[18] = 0;
  v1[19] = 0;
  v1[20] = 0;
  *(v1 + 84) = 0;
  *(v1 + 170) = 1;
  sub_1A435A880(v4, v5, v6, v7, v8);
  swift_beginAccess();
  v0[33] = v1[23];
  v9 = *(v3 + 80);
  v0[10] = v9;
  v10 = *(v3 + 88);
  v0[11] = v10;
  v0[12] = v2;
  v0[4] = v9;
  v0[5] = v10;
  v0[6] = sub_1A435C2CC;
  v0[7] = v0 + 8;
  v11 = v2;
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
  sub_1A3DBD9A0();
  sub_1A524CBF4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4344590()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 528) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4344684, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1A4344684()
{
  sub_1A4346224(*(v0 + 512), 1, 1, BYTE1(*(v0 + 536)) & 1);

  return MEMORY[0x1EEE6DFA0](sub_1A4344708, 0, 0);
}

uint64_t sub_1A4344708()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4344798()
{
  v1 = *(v0 + 440);
  *(v0 + 512) = v1;
  v2 = *(v0 + 400);
  v3 = *(v0 + 392);
  v4 = *(v0 + 368);
  v5 = *(v0 + 352);
  v6 = *(v0 + 272);
  v7 = sub_1A524D244();
  v8 = *v3;
  v2(v4, v6, v5);
  if (os_log_type_enabled(v8, v7))
  {
    v9 = *(v0 + 368);
    v21 = *(v0 + 416);
    v10 = *(v0 + 352);
    v12 = *(v0 + 320);
    v11 = *(v0 + 328);
    v13 = *(v0 + 312);
    v8;
    v14 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v14 = 136446722;
    sub_1A524E424();
    v21(v9, v10);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v12 + 8))(v11, v13);
    sub_1A3C2EF94();
  }

  (*(v0 + 416))(*(v0 + 368), *(v0 + 352));
  if (*(v0 + 536))
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 520) = Strong;
    if (Strong)
    {
      v16 = Strong;
      v17 = sub_1A4344364;
LABEL_8:

      return MEMORY[0x1EEE6DFA0](v17, v16, 0);
    }

    swift_beginAccess();
    v18 = swift_weakLoadStrong();
    *(v0 + 528) = v18;
    if (v18)
    {
      v16 = v18;
      v17 = sub_1A4344684;
      goto LABEL_8;
    }

    v1 = *(v0 + 512);
  }

  v19 = *(v0 + 8);

  return v19();
}

void sub_1A4344B5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  v19 = a5;
  v20 = a6;
  v13 = *(v6 + 144);
  v14 = *(v6 + 152);
  v15 = *(v6 + 160);
  v16 = *(v6 + 168);
  if (*(v6 + 170) != 255 && ((*(v6 + 170) << 16) & 0x10000) == 0)
  {
    v21 = *(v6 + 136);
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16 & 0x101;
    if (sub_1A433D840(v18))
    {
      type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
      sub_1A3D602A8(a1, a2);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  if (a6)
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  *(v6 + 136) = a1;
  *(v6 + 144) = a2;
  *(v6 + 152) = a3;
  *(v6 + 160) = a4;
  *(v6 + 170) = 0;
  *(v6 + 168) = v17 & 0xFFFE | a5 & 1;
  sub_1A3D602A8(a1, a2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43450D4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 49) = a4;
  *(v5 + 48) = a3;
  *(v5 + 16) = a1;
  *(v5 + 40) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1A4345128, v4, 0);
}

uint64_t sub_1A4345128()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v2 = sub_1A5240E84();
  v3 = [v1 initWithData_];

  v4 = *(v0 + 49);
  v5 = *(v0 + 48);
  if (v3)
  {
    v6 = v3;
    sub_1A4346224(v3, 0, v5, v4);
  }

  else
  {
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError();
    swift_getWitnessTable();
    v6 = swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = v6;
    sub_1A4346224(v6, 1, v5, v4);
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_1A4345294()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3[8] = v3 - v0;
  v1 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry.ImageAttachment();
  v5 = *(v1 - 8);
  v3[0] = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = v3 - v2;
  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43456D0(void (*a1)(void, void), uint64_t a2, char a3, char a4, uint64_t a5, char **a6)
{
  v71 = a6;
  v72 = a1;
  v10 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
  sub_1A3DBD9A0();
  v73 = v10;
  v11 = sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v74 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v70 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63[-v18];
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v63[-v22];
  v24 = *(v11 - 8);
  (*(v24 + 16))(&v63[-v22], a2, v11, v21);
  v23[*(TupleTypeMetadata3 + 48)] = a3;
  v25 = TupleTypeMetadata3;
  v23[*(TupleTypeMetadata3 + 64)] = a4;
  if (*(a5 + 32))
  {
    v26 = sub_1A524D264();
    v27 = *sub_1A486DB9C();
    v28 = os_log_type_enabled(v27, v26);
    v29 = v72;
    v30 = TupleTypeMetadata3;
    if (v28)
    {
      v31 = v27;
      v32 = swift_slowAlloc();
      *v32 = 134349056;
      *(v32 + 4) = v29;
      v33 = "Journal: [%{public}ld] Image data request immediately available via spatial data";
      v34 = v26;
LABEL_12:
      _os_log_impl(&dword_1A3C1C000, v31, v34, v33, v32, 0xCu);
      MEMORY[0x1A590EEC0](v32, -1, -1);
    }
  }

  else if (*(a5 + 33) & 1) == 0 || (a3)
  {
    v68 = *(a5 + 33);
    v69 = sub_1A524D264();
    v38 = sub_1A486DB9C();
    v39 = *v38;
    if (a4 & 1) != 0 || (a3)
    {
      v50 = *(v74 + 16);
      v50(v19, v23, v25);
      v51 = v16;
      v52 = v25;
      v71 = v51;
      v67 = v50;
      (v50)();
      if (os_log_type_enabled(v39, v69))
      {
        v65 = *(v73 - 8);
        (*(v65 + 16))(v76, a5, v73);
        v66 = v39;
        v53 = swift_slowAlloc();
        *v53 = 134350080;
        *(v53 + 4) = v72;
        *(v53 + 12) = 1024;
        *(v53 + 14) = 0;
        *(v53 + 18) = 1024;
        v54 = v70;
        v67(v70, v19, v52);
        v64 = v54[*(v52 + 48)];
        v72 = *(v24 + 8);
        v72(v54, v11);
        v74 = *(v74 + 8);
        (v74)(v19, v52);
        *(v53 + 20) = v64;
        *(v53 + 24) = 1024;
        *(v53 + 26) = v68 & 1;
        (*(v65 + 8))(a5, v73);
        *(v53 + 30) = 1024;
        v55 = v71;
        v67(v54, v71, v52);
        v56 = v54[*(v52 + 64)];
        v72(v54, v11);
        v57 = v74;
        (v74)(v55, v52);
        *(v53 + 32) = v56;
        v58 = v66;
        _os_log_impl(&dword_1A3C1C000, v66, v69, "Journal: [%{public}ld] New image data does not satisfy request: [isSpatial=%{BOOL}d, request=%{BOOL}d] [isFull=%{BOOL}d, request=%{BOOL}d]", v53, 0x24u);
        MEMORY[0x1A590EEC0](v53, -1, -1);

        return v57(v23, v52);
      }

      else
      {
        v59 = *(v73 - 8);
        v60 = v73;
        (*(v59 + 16))(v76, a5, v73);
        v61 = *(v74 + 8);
        v62 = v39;
        v61(v71, v52);
        v61(v19, v52);
        (*(v59 + 8))(a5, v60);

        return (v61)(v23, v52);
      }
    }

    v40 = os_log_type_enabled(*v38, v69);
    v29 = v72;
    v30 = v25;
    if (v40)
    {
      v31 = v39;
      v32 = swift_slowAlloc();
      *v32 = 134349056;
      *(v32 + 4) = v29;
      v33 = "Journal: [%{public}ld] Image data request immediately available via high quality data";
      v34 = v69;
      goto LABEL_12;
    }
  }

  else
  {
    v35 = sub_1A524D264();
    v36 = *sub_1A486DB9C();
    v37 = os_log_type_enabled(v36, v35);
    v29 = v72;
    v30 = TupleTypeMetadata3;
    if (v37)
    {
      v31 = v36;
      v32 = swift_slowAlloc();
      *v32 = 134349056;
      *(v32 + 4) = v29;
      v33 = "Journal: [%{public}ld] Image data request immediately available via mono data";
      v34 = v35;
      goto LABEL_12;
    }
  }

  v41 = *(a5 + 16);
  v76[0] = *a5;
  v76[1] = v41;
  v77 = *(a5 + 32);
  (*(*(v73 - 8) + 16))(v75, a5);
  sub_1A524CBE4();
  v42 = v71;
  v43 = *v71;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v42 = v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v43 = sub_1A3DD6690(0, *(v43 + 2) + 1, 1, v43);
    *v42 = v43;
  }

  v45 = v74;
  v47 = *(v43 + 2);
  v46 = *(v43 + 3);
  if (v47 >= v46 >> 1)
  {
    *v42 = sub_1A3DD6690((v46 > 1), v47 + 1, 1, v43);
  }

  result = (*(v45 + 8))(v23, v30);
  v49 = *v42;
  *(v49 + 2) = v47 + 1;
  *&v49[8 * v47 + 32] = v29;
  return result;
}

uint64_t sub_1A4345E2C(uint64_t *a1)
{
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
  sub_1A3DBD9A0();
  sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v3 = sub_1A524DF24();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = *a1;
  (*(*(TupleTypeMetadata3 - 8) + 56))(&v8[-v5], 1, 1, TupleTypeMetadata3, v4);
  v9 = v6;
  swift_beginAccess();
  sub_1A524C454();
  sub_1A524C494();
  return swift_endAccess();
}

uint64_t sub_1A4345FB0(uint64_t a1, uint64_t a2, char a3, char a4, void *a5)
{
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
  sub_1A3DBD9A0();
  v10 = sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = *(TupleTypeMetadata3 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v15 = v25 - v14;
  (*(*(v10 - 8) + 16))(v25 - v14, a2, v10, v13);
  v15[*(TupleTypeMetadata3 + 48)] = a3;
  v15[*(TupleTypeMetadata3 + 64)] = a4;
  v16 = sub_1A524D244();
  v17 = *sub_1A486DB9C();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = v17;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 134349314;
    *(v19 + 4) = a1;
    *(v19 + 12) = 2112;
    v21 = a5;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v22;
    *v20 = v22;
    _os_log_impl(&dword_1A3C1C000, v18, v16, "Journal: [%{public}ld] Image data request failure: %@", v19, 0x16u);
    sub_1A435C808(v20, sub_1A3D3F118);
    MEMORY[0x1A590EEC0](v20, -1, -1);
    MEMORY[0x1A590EEC0](v19, -1, -1);
  }

  v25[1] = a5;
  v23 = a5;
  sub_1A524CBD4();
  return (*(v12 + 8))(v15, TupleTypeMetadata3);
}

void sub_1A4346224(void *a1, char a2, int a3, char a4)
{
  v5 = v4;
  LOBYTE(v6) = a4;
  LODWORD(v7) = a3;
  v10 = 0;
  sub_1A435C264();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  *&v105 = &v92[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A435A7D0(0);
  v107 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v92[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v92[-v18];
  v98 = v5;
  if ((a2 & 1) == 0)
  {
    v102 = v13;
    v96 = a1;
    v22 = sub_1A524D264();
    v101 = sub_1A486DB9C();
    v23 = os_log_type_enabled(*v101, v22);
    v97 = v12;
    if (v23)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if ((v7 & 1) == 0)
    {
      v28 = v96;
      sub_1A4317410(v96);
      v104 = 0;
      goto LABEL_19;
    }

    swift_beginAccess();
    v24 = *(v5 + 128);
    v27 = *(v24 + 16);
    v25 = v24 + 16;
    v26 = v27;
    v28 = v96;
    if (v27)
    {
      v29 = v25 + 16 * v26;
      v30 = *v29;
      v31 = *(v29 + 8);
      sub_1A4317410(v96);
      if (v31)
      {
        v32 = v6;
        v6 = v30;
        [v28 size];
        v34 = v33;
        [v28 size];
        v36 = v34 * v35;
        [v6 size];
        v38 = v37;
        [v6 size];
        v40 = v38 * v39;
        sub_1A524D264();
        v41 = *v101;
        if (v40 < v36)
        {
          sub_1A5246DF4();

          v42 = *(v5 + 128);
          v43 = *(v42 + 2);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v5 + 128) = v42;
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v43)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v42 = sub_1A4357F68(v42);
            if (v43)
            {
LABEL_14:
              if (v43 <= *(v42 + 2))
              {
                v42[16 * v43 + 24] = 0;
                *(v5 + 128) = v42;
                swift_endAccess();

                v104 = 1;
                LOBYTE(v6) = v32;
                goto LABEL_19;
              }

LABEL_53:
              __break(1u);
              return;
            }
          }

          __break(1u);
          goto LABEL_53;
        }

        sub_1A5246DF4();

        v104 = 0;
        LOBYTE(v6) = v32;
LABEL_19:
        swift_beginAccess();
        v45 = *(v5 + 128);
        v103 = v28;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *(v5 + 128) = v45;
        if (v46)
        {
          goto LABEL_20;
        }

        goto LABEL_50;
      }
    }

    else
    {
      sub_1A4317410(v96);
    }

    v104 = 1;
    goto LABEL_19;
  }

  LOBYTE(v6) = sub_1A524D244();
  v19 = *sub_1A486DB9C();
  if (os_log_type_enabled(v19, v6))
  {
    v20 = v19;
    v21 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *v21 = 136315138;
    swift_getErrorValue();
    sub_1A524EBE4();
    sub_1A3C2EF94();
  }

  if (v7)
  {
    do
    {
      v94 = v10;
      v45 = 1;
      *(v5 + 171) = 1;
      swift_beginAccess();
      v73 = *(v5 + 176);
      v74 = v73 + 64;
      v75 = 1 << v73[32];
      v76 = -1;
      if (v75 < 64)
      {
        v76 = ~(-1 << v75);
      }

      v10 = v76 & *(v73 + 8);
      v5 = (v75 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v7 = 0;
      *&v77 = 134349056;
      v105 = v77;
      v108 = v73;
      while (v10)
      {
LABEL_43:
        v80 = __clz(__rbit64(v10)) | (v7 << 6);
        v81 = *(v73 + 7);
        v6 = *(*(v73 + 6) + 8 * v80);
        sub_1A435A6E8();
        v12 = v82;
        v83 = *(v82 - 8);
        v84 = v81 + *(v83 + 72) * v80;
        v85 = v106;
        v86 = *(v107 + 48);
        (*(v83 + 16))(&v106[v86], v84, v82);
        *v85 = v6;
        v87 = sub_1A524D264();
        v88 = *sub_1A486DB9C();
        if (os_log_type_enabled(v88, v87))
        {
          v89 = v88;
          v90 = swift_slowAlloc();
          *v90 = v105;
          *(v90 + 4) = v6;
          _os_log_impl(&dword_1A3C1C000, v89, v87, "Journal: [%{public}ld] All image candidates vended", v90, 0xCu);
          v91 = v90;
          v73 = v108;
          MEMORY[0x1A590EEC0](v91, -1, -1);
        }

        v10 &= v10 - 1;
        v109 = 0;
        v78 = v106;
        v45 = &v106[v86];
        sub_1A524CE84();
        sub_1A435C808(v78, sub_1A435A7D0);
      }

      while (1)
      {
        v79 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v79 >= v5)
        {

          *(v98 + 176) = MEMORY[0x1E69E7CC8];

          return;
        }

        v10 = *&v74[8 * v79];
        ++v7;
        if (v10)
        {
          v7 = v79;
          goto LABEL_43;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      v45 = sub_1A43559F4(0, *(v45 + 16) + 1, 1, v45);
      *(v5 + 128) = v45;
LABEL_20:
      v47 = v102;
      v49 = *(v45 + 16);
      v48 = *(v45 + 24);
      v93 = v7;
      if (v49 >= v48 >> 1)
      {
        v45 = sub_1A43559F4((v48 > 1), v49 + 1, 1, v45);
      }

      *(v45 + 16) = v49 + 1;
      v50 = v45 + 16 * v49;
      *(v50 + 32) = v103;
      *(v50 + 40) = v104;
      v100 = v6 & 1;
      *(v50 + 41) = v6 & 1;
      *(v5 + 128) = v45;
      swift_endAccess();
      swift_beginAccess();
      sub_1A4346D30((v5 + 128));
      v94 = v10;
      swift_endAccess();
      swift_beginAccess();
      v51 = *(v5 + 176);
      v6 = (v51 + 64);
      v52 = 1 << *(v51 + 32);
      v53 = -1;
      if (v52 < 64)
      {
        v53 = ~(-1 << v52);
      }

      v7 = v53 & *(v51 + 64);
      v5 = (v52 + 63) >> 6;
      v99 = (v47 + 8);
      v102 = v51;
      swift_bridgeObjectRetain_n();
      v54 = 0;
      *&v55 = 134349056;
      v95 = v55;
      while (v7)
      {
LABEL_31:
        v60 = __clz(__rbit64(v7)) | (v54 << 6);
        v61 = *(v102 + 56);
        v62 = *(*(v102 + 48) + 8 * v60);
        sub_1A435A6E8();
        v10 = v63;
        v64 = *(v63 - 8);
        v65 = v61 + *(v64 + 72) * v60;
        v66 = v108;
        v67 = *(v107 + 48);
        (*(v64 + 16))(&v108[v67], v65, v63);
        *v66 = v62;
        v68 = sub_1A524D264();
        v69 = *v101;
        if (os_log_type_enabled(*v101, v68))
        {
          v70 = v69;
          v71 = swift_slowAlloc();
          *v71 = v95;
          *(v71 + 4) = v62;
          _os_log_impl(&dword_1A3C1C000, v70, v68, "Journal: [%{public}ld] Yielding image candidate", v71, 0xCu);
          v72 = v71;
          v12 = v97;
          MEMORY[0x1A590EEC0](v72, -1, -1);
        }

        v110 = v103;
        v7 &= v7 - 1;
        v111 = v104;
        v112 = v100;
        v56 = v103;
        v57 = v108;
        v45 = &v108[v67];
        v58 = v105;
        sub_1A524CE74();
        (*v99)(v58, v12);
        sub_1A435C808(v57, sub_1A435A7D0);
      }

      while (1)
      {
        v59 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v59 >= v5)
        {
          break;
        }

        v7 = *(v6 + v59);
        ++v54;
        if (v7)
        {
          v54 = v59;
          goto LABEL_31;
        }
      }

      sub_1A400B3A8(v96);
      v5 = v98;
      v10 = v94;
    }

    while ((v93 & 1) != 0);
  }
}

void sub_1A4346D30(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A4357F68(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1A43572B0(v4);
  *a1 = v2;
}

uint64_t sub_1A4346DA0(uint64_t a1, void *a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 73) = a5;
  *(v5 + 72) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  *(v5 + 40) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A4346DF0, a2, 0);
}

uint64_t sub_1A4346DF0()
{
  sub_1A524CDD4();
  v1 = *(v0 + 32);
  v2 = *(v0 + 73);
  v3 = *(v0 + 72);
  v4 = *(v0 + 24);
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry();
  WitnessTable = swift_getWitnessTable();
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 33) = v2;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  v8 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
  *v7 = v0;
  v7[1] = sub_1A4346FA4;
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v9, v4, WitnessTable, 0xD000000000000045, 0x80000001A53D2C80, sub_1A435B9EC, v6, v8);
}

uint64_t sub_1A4346FA4()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](sub_1A43470E0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1A43470E0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A4347144(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v18 = a1;
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
  sub_1A3DBD9A0();
  v7 = sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(TupleTypeMetadata3 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v17 - v15;
  (*(*(v7 - 8) + 16))(&v17 - v15, a2, v7, v14);
  v16[*(TupleTypeMetadata3 + 48)] = a3;
  v16[*(TupleTypeMetadata3 + 64)] = a4;
  (*(v12 + 16))(v11, v16, TupleTypeMetadata3);
  (*(v12 + 56))(v11, 0, 1, TupleTypeMetadata3);
  v19 = v18;
  swift_beginAccess();
  sub_1A524C454();
  sub_1A524C494();
  swift_endAccess();
  sub_1A4345294();
}

uint64_t sub_1A43473C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A43473E4, 0, 0);
}

uint64_t sub_1A43473E4()
{
  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[5];
    v4 = v2;
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v3;
    _os_log_impl(&dword_1A3C1C000, v4, v1, "Journal: [%{public}ld] Cancelling image data request", v5, 0xCu);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A434752C, Strong, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1A434752C()
{
  sub_1A4347598(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4347598(uint64_t a1)
{
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
  sub_1A3DBD9A0();
  sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v3 = sub_1A524DF24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  v10 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  swift_beginAccess();
  v16[0] = a1;
  sub_1A524C484();
  if ((*(v10 + 48))(v9, 1, TupleTypeMetadata3) == 1)
  {
    (*(v4 + 8))(v9, v3);
    return swift_endAccess();
  }

  else
  {
    (*(v10 + 32))(v13, v9, TupleTypeMetadata3);
    swift_endAccess();
    (*(v10 + 56))(v6, 1, 1, TupleTypeMetadata3);
    v16[0] = a1;
    swift_beginAccess();
    sub_1A524C454();
    sub_1A524C494();
    swift_endAccess();
    sub_1A524CC04();
    sub_1A435C7C0(&qword_1EB138668, MEMORY[0x1E69E8550]);
    v15 = swift_allocError();
    sub_1A524C394();
    v16[1] = v15;
    sub_1A524CBD4();
    return (*(v10 + 8))(v13, TupleTypeMetadata3);
  }
}

void sub_1A4347918(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  sub_1A435C264();
  v16[8] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v16[7] = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + 171) & 1) == 0)
  {
    v9 = sub_1A524D264();
    v10 = *sub_1A486DB9C();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = v10;
      v12 = swift_slowAlloc();
      *v12 = 134349056;
      *(v12 + 4) = a3;
      _os_log_impl(&dword_1A3C1C000, v11, v9, "Journal: [%{public}ld] Queuing image request", v12, 0xCu);
      MEMORY[0x1A590EEC0](v12, -1, -1);
    }

    sub_1A4347D2C(a3, a1);
  }

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = *(v6 + 80);
  v14[3] = *(v6 + 88);
  v14[4] = v13;
  v16[5] = a3;
  v14[5] = a3;
  sub_1A435A6E8();
  v16[9] = v15;
  sub_1A524CE54();
  swift_beginAccess();
  v16[1] = a2;
  v16[10] = a2[16];
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4347D2C(uint64_t a1, uint64_t a2)
{
  sub_1A435C2D8(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A435A6E8();
  v8 = v7;
  v9 = *(v7 - 8);
  (*(v9 + 16))(v6, a2, v7);
  (*(v9 + 56))(v6, 0, 1, v8);
  swift_beginAccess();
  sub_1A433F04C(v6, a1);
  swift_endAccess();
  sub_1A4345294();
}

uint64_t sub_1A4347E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a2;
  v16[7] = v15;
  sub_1A3D4D930(0, 0, v13, a7, v16);
}

uint64_t sub_1A4347FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A4347FD4, 0, 0);
}

uint64_t sub_1A4347FD4()
{
  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[5];
    v4 = v2;
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v3;
    _os_log_impl(&dword_1A3C1C000, v4, v1, "Journal: [%{public}ld] Removing image request due to termination", v5, 0xCu);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A434811C, Strong, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1A434811C()
{
  sub_1A43412D4(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A43481AC()
{
  swift_beginAccess();
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4348308(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A434832C, v2, 0);
}

id sub_1A434832C()
{
  result = [*(v0 + 16) uuid];
  if (result)
  {
    v2 = result;
    sub_1A524C674();

    sub_1A43481AC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A434841C(uint64_t a1)
{
  v4 = *v2;
  v4[7] = v1;

  v5 = v4[4];
  if (v1)
  {
    v6 = sub_1A43485C0;
  }

  else
  {
    v4[8] = a1;
    v6 = sub_1A4348558;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A4348558()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1A43485C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4348624(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v2[6] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1A4348694, v1, 0);
}

uint64_t sub_1A4348694()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  v0[8] = v5;
  swift_weakInit();
  v6 = swift_task_alloc();
  v0[9] = v6;
  v6[2] = *(v1 + 80);
  v6[3] = *(v1 + 88);
  v6[4] = v5;
  v6[5] = v3;
  WitnessTable = swift_getWitnessTable();
  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = sub_1A3C52C70(0, &qword_1EB138628);
  *v8 = v0;
  v8[1] = sub_1A4348820;

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1A5331770, v4, sub_1A435AB54, v6, v2, WitnessTable, v9);
}

uint64_t sub_1A4348820()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1A435CD20;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1A435CD40;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

char *sub_1A4348964(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = qword_1EB1B8710;
  v6 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  v7 = *(*v4 + 120);
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat();
  sub_1A3DBD9A0();
  v8 = sub_1A524ECF4();
  (*(*(v8 - 8) + 56))(&v4[v7], 1, 1, v8);
  v9 = *(*v4 + 128);
  *&v4[v9] = sub_1A4359C40(MEMORY[0x1E69E7CC0], sub_1A435A524, sub_1A435A5C4, sub_1A435A62C, sub_1A435A544);
  *&v4[*(*v4 + 136)] = 0;
  *(v4 + 14) = a1;
  *(v4 + 15) = a2;
  return v4;
}

uint64_t sub_1A4348B34()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v51 = *(*v0 + 88);
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat();
  sub_1A3DBD9A0();
  sub_1A524ECF4();
  v3 = sub_1A524DF24();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = v41 - v4;
  sub_1A435A644(0);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 128);
  swift_beginAccess();
  v45 = v0;
  v41[1] = v8;
  v9 = *(v0 + v8);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v50 = v9;
  result = swift_bridgeObjectRetain_n();
  v16 = 0;
  *&v17 = 134349056;
  v46 = v17;
  v48 = v7;
  while (v13)
  {
LABEL_10:
    v21 = __clz(__rbit64(v13)) | (v16 << 6);
    v22 = *(v50 + 56);
    v23 = *(*(v50 + 48) + 8 * v21);
    sub_1A435A544();
    v25 = *(v24 - 8);
    v26 = v22 + *(v25 + 72) * v21;
    v27 = *(v49 + 48);
    (*(v25 + 16))(v7 + v27, v26, v24);
    *v7 = v23;
    v28 = sub_1A524D264();
    v29 = *sub_1A486DB9C();
    if (os_log_type_enabled(v29, v28))
    {
      v30 = v29;
      v31 = swift_slowAlloc();
      v47 = v27;
      v32 = v2;
      v33 = v31;
      *v31 = v46;
      *(v31 + 4) = v23;
      _os_log_impl(&dword_1A3C1C000, v30, v28, "Journal: [%{public}ld] Cancel from deinit for player item", v31, 0xCu);
      v34 = v33;
      v2 = v32;
      MEMORY[0x1A590EEC0](v34, -1, -1);
    }

    v13 &= v13 - 1;
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError();
    swift_getWitnessTable();
    v18 = swift_allocError();
    *v19 = 0;
    v52 = v18;
    v7 = v48;
    sub_1A524CBD4();
    result = sub_1A435C808(v7, sub_1A435A644);
  }

  while (1)
  {
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v20 >= v14)
    {

      v35 = v45;
      v36 = *(*v45 + 120);
      swift_beginAccess();
      v38 = v42;
      v37 = v43;
      v39 = v44;
      (*(v43 + 16))(v42, v35 + v36, v44);
      sub_1A43596F8(v38);
      v40 = *(v37 + 8);
      v40(v38, v39);

      sub_1A435C808(v35 + qword_1EB1B8710, sub_1A43588E0);
      v40(v35 + v36, v39);

      swift_defaultActor_destroy();
      return v35;
    }

    v13 = *(v10 + 8 * v20);
    ++v16;
    if (v13)
    {
      v16 = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4348FCC()
{
  sub_1A4348B34();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A4348FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[12] = type metadata accessor for OneUpSharePlayStreamingVideoItem(0);
  v7[13] = swift_task_alloc();
  v8 = sub_1A52411C4();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = swift_getAssociatedTypeWitness();
  v7[18] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[19] = AssociatedTypeWitness;
  v7[20] = *(AssociatedTypeWitness - 8);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A43491D8, 0, 0);
}

uint64_t sub_1A43491D8()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[8];
  v5 = sub_1A524D264();
  v6 = sub_1A486DB9C();
  v0[24] = v6;
  v7 = *v6;
  v8 = *(v2 + 16);
  v0[25] = v8;
  v0[26] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v4, v3);
  v9 = os_log_type_enabled(v7, v5);
  v10 = v0[23];
  v12 = v0[19];
  v11 = v0[20];
  if (v9)
  {
    v14 = v0[15];
    v13 = v0[16];
    v21 = v0[14];
    v7;
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    *v15 = 136446466;
    swift_getAssociatedConformanceWitness();
    sub_1A524E424();
    (*(v11 + 8))(v10, v12);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v14 + 8))(v13, v21);
    sub_1A3C2EF94();
  }

  v16 = *(v11 + 8);
  v16(v0[23], v0[19]);
  v0[27] = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[28] = AssociatedConformanceWitness;
  v22 = (*(AssociatedConformanceWitness + 16) + **(AssociatedConformanceWitness + 16));
  v18 = swift_task_alloc();
  v0[29] = v18;
  sub_1A435C7C0(&unk_1EB1391C0, type metadata accessor for OneUpSharePlayStreamingVideoItem);
  *v18 = v0;
  v18[1] = sub_1A434958C;
  v19 = v0[13];

  return v22(v19);
}

uint64_t sub_1A434958C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1A4349FE8;
  }

  else
  {
    v2 = sub_1A43496A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A43496A0()
{
  v1 = v0[30];
  sub_1A524CDD4();
  if (v1)
  {
    sub_1A435C808(v0[13], type metadata accessor for OneUpSharePlayStreamingVideoItem);
    v0[34] = v1;
    v2 = v0[25];
    v3 = v0[24];
    v4 = v0[21];
    v5 = v0[19];
    v6 = v0[8];
    v7 = sub_1A524D244();
    v8 = *v3;
    v2(v4, v6, v5);
    if (os_log_type_enabled(v8, v7))
    {
      v9 = v0[21];
      v34 = v0[27];
      v10 = v0[19];
      v12 = v0[15];
      v11 = v0[16];
      v13 = v0[14];
      v8;
      v14 = swift_slowAlloc();
      swift_slowAlloc();
      swift_slowAlloc();
      *v14 = 136446722;
      sub_1A524E424();
      v34(v9, v10);
      sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
      sub_1A524EA44();
      (*(v12 + 8))(v11, v13);
      sub_1A3C2EF94();
    }

    (v0[27])(v0[21], v0[19]);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[35] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1A4349EDC, Strong, 0);
    }

    goto LABEL_16;
  }

  v15 = v0[25];
  v16 = v0[24];
  v17 = v0[22];
  v18 = v0[19];
  v19 = v0[8];
  v20 = sub_1A524D264();
  v21 = *v16;
  v15(v17, v19, v18);
  if (os_log_type_enabled(v21, v20))
  {
    v22 = v0[22];
    v23 = v0[19];
    v35 = v0[27];
    v24 = v0[15];
    v25 = v0[16];
    v26 = v0[14];
    v21;
    v27 = swift_slowAlloc();
    swift_slowAlloc();
    *v27 = 136446466;
    sub_1A524E424();
    v35(v22, v23);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v24 + 8))(v25, v26);
    sub_1A3C2EF94();
  }

  (v0[27])(v0[22], v0[19]);
  swift_beginAccess();
  v29 = swift_weakLoadStrong();
  v0[31] = v29;
  if (!v29)
  {
    sub_1A435C808(v0[13], type metadata accessor for OneUpSharePlayStreamingVideoItem);
LABEL_16:

    v32 = v0[1];

    return v32();
  }

  v30 = swift_task_alloc();
  v0[32] = v30;
  *v30 = v0;
  v30[1] = sub_1A4349CF8;
  v31 = v0[13];

  return sub_1A434A704(v31);
}

uint64_t sub_1A4349CF8()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1A434A368;
  }

  else
  {
    v2 = sub_1A4349E2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4349E2C()
{
  sub_1A435C808(*(v0 + 104), type metadata accessor for OneUpSharePlayStreamingVideoItem);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4349EDC()
{
  sub_1A434B674(*(v0 + 272));

  return MEMORY[0x1EEE6DFA0](sub_1A4349F4C, 0, 0);
}

uint64_t sub_1A4349F4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4349FE8()
{
  v1 = v0[30];
  v0[34] = v1;
  v2 = v0[25];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[8];
  v7 = sub_1A524D244();
  v8 = *v3;
  v2(v4, v6, v5);
  if (os_log_type_enabled(v8, v7))
  {
    v9 = v0[21];
    v18 = v0[27];
    v10 = v0[19];
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];
    v8;
    v14 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v14 = 136446722;
    sub_1A524E424();
    v18(v9, v10);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v12 + 8))(v11, v13);
    sub_1A3C2EF94();
  }

  (v0[27])(v0[21], v0[19]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[35] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4349EDC, Strong, 0);
  }

  else
  {

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1A434A368()
{
  sub_1A435C808(v0[13], type metadata accessor for OneUpSharePlayStreamingVideoItem);
  v1 = v0[33];
  v0[34] = v1;
  v2 = v0[25];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[8];
  v7 = sub_1A524D244();
  v8 = *v3;
  v2(v4, v6, v5);
  if (os_log_type_enabled(v8, v7))
  {
    v9 = v0[21];
    v18 = v0[27];
    v10 = v0[19];
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];
    v8;
    v14 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v14 = 136446722;
    sub_1A524E424();
    v18(v9, v10);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v12 + 8))(v11, v13);
    sub_1A3C2EF94();
  }

  (v0[27])(v0[21], v0[19]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[35] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4349EDC, Strong, 0);
  }

  else
  {

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1A434A704(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_1A435A644(0);
  v2[23] = v3;
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat();
  v2[25] = v4;
  sub_1A3DBD9A0();
  v2[26] = sub_1A524ECF4();
  v5 = sub_1A524DF24();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v6 = sub_1A5240E64();
  v2[30] = v6;
  v2[31] = *(v6 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  sub_1A43588E0(0);
  v2[35] = swift_task_alloc();
  v7 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  v2[36] = v7;
  v2[37] = *(v7 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A434A998, v1, 0);
}

uint64_t sub_1A434A998()
{
  sub_1A4359F74(v0[21].isa, v0[39].isa, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  isa = v0[39].isa;
  if (EnumCaseMultiPayload)
  {
    sub_1A435C808(isa, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
  }

  else
  {
    v4 = *isa;
    v3 = *(isa + 8);
    if ((*(isa + 48) & 1) == 0)
    {
      v5 = v0[22].isa;
      v6 = *(*v5 + 128);
      swift_beginAccess();
      if (!*(*(v5 + v6) + 16))
      {
        v52 = sub_1A524D264();
        v53 = sub_1A486DB9C();
        if (os_log_type_enabled(*v53, v52))
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        sub_1A3C59280(v4, v3);

        v54 = v0[36].isa;
        v55 = v0[37].isa;
        v56 = v0[35].isa;
        v57 = v0[22].isa;
        sub_1A4359F74(v0[21].isa, v56, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
        (*(v55 + 7))(v56, 0, 1, v54);
        v58 = qword_1EB1B8710;
        swift_beginAccess();
        sub_1A435CBFC(v56, v57 + v58, sub_1A43588E0);
        swift_endAccess();
LABEL_23:

        v49 = v0[1].isa;

        return v49();
      }
    }

    sub_1A3C59280(v4, v3);
  }

  sub_1A4359F74(v0[21].isa, v0[38].isa, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
  v7 = swift_getEnumCaseMultiPayload();
  if (v7)
  {
    if (v7 == 1)
    {
      (*(v0[31].isa + 4))(v0[34].isa, v0[38].isa, v0[30].isa);
    }
  }

  else
  {
    v8 = v0[38].isa;
    v10 = *(v8 + 1);
    v9 = *(v8 + 2);
    v11 = *v8;
    LOBYTE(v0[8].isa) = *(v8 + 48);
    *&v0[4].isa = v10;
    *&v0[6].isa = v9;
    *&v0[2].isa = v11;
    if ((v0[8].isa & 1) == 0)
    {
      v50 = swift_task_alloc();
      v0[40].isa = v50;
      *v50 = v0;
      *(v50 + 1) = sub_1A434B0B4;
      v51 = v0[32].isa;

      return sub_1A434BB58(v51, &v0[2]);
    }

    v12 = v0[34].isa;
    v13 = *v8;
    v14 = *(v8 + 1);
    v15 = *(v8 + 2);
    *(v12 + 48) = *(v8 + 48);
    *(v12 + 1) = v14;
    *(v12 + 2) = v15;
    *v12 = v13;
  }

  v17 = v0[33].isa;
  v16 = v0[34].isa;
  v19 = v0[28].isa;
  v18 = v0[29].isa;
  v21 = v0[26].isa;
  v20 = v0[27].isa;
  v22 = v0[25].isa;
  v23 = v0[22].isa;
  v61 = v0[23].isa;
  swift_storeEnumTagMultiPayload();
  (*(v17 + 2))(v18, v16, v22);
  swift_storeEnumTagMultiPayload();
  (*(*(v21 - 1) + 56))(v18, 0, 1, v21);
  v24 = *(*v23 + 120);
  swift_beginAccess();
  (*(v19 + 5))(v23 + v24, v18, v20);
  swift_endAccess();
  v25 = *(*v23 + 128);
  log = v0;
  swift_beginAccess();
  v59 = v25;
  v60 = v23;
  v26 = *(v23 + v25);
  v27 = v26 + 64;
  v28 = -1;
  v29 = -1 << *(v26 + 32);
  if (-v29 < 64)
  {
    v28 = ~(-1 << -v29);
  }

  v30 = v28 & *(v26 + 64);
  v31 = (63 - v29) >> 6;
  v62 = v26;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v30; result = sub_1A435C808(v36, sub_1A435A644))
  {
    v34 = i;
    v0 = log;
LABEL_20:
    v35 = v0[34].isa;
    v36 = v0[24].isa;
    v37 = v0[22].isa;
    v38 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v39 = v38 | (v34 << 6);
    v40 = *(v62 + 56);
    v41 = *(*(v62 + 48) + 8 * v39);
    sub_1A435A544();
    v43 = *(v42 - 8);
    v44 = v40 + *(v43 + 72) * v39;
    v45 = *(v61 + 12);
    (*(v43 + 16))(v36 + v45, v44, v42);
    *v36 = v41;
    sub_1A434C490(v41, v36 + v45, v37, v35);
  }

  v0 = log;
  while (1)
  {
    v34 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
      v47 = log[33].isa;
      v46 = log[34].isa;
      v48 = log[25].isa;

      *(v60 + v59) = sub_1A4359C40(MEMORY[0x1E69E7CC0], sub_1A435A524, sub_1A435A5C4, sub_1A435A62C, sub_1A435A544);

      (*(v47 + 1))(v46, v48);
      goto LABEL_23;
    }

    v30 = *(v27 + 8 * v34);
    ++i;
    if (v30)
    {
      i = v34;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A434B0B4()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_1A434B5AC;
  }

  else
  {
    v4 = sub_1A434B1E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A434B1E0()
{
  v1 = v0[34];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  sub_1A435AE04((v0 + 2));
  (*(v3 + 32))(v1, v2, v4);
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[28];
  v7 = v0[29];
  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[25];
  v12 = v0[22];
  v41 = v0[23];
  swift_storeEnumTagMultiPayload();
  (*(v6 + 16))(v7, v5, v11);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  v13 = *(*v12 + 120);
  swift_beginAccess();
  (*(v8 + 40))(v12 + v13, v7, v9);
  swift_endAccess();
  v14 = *(*v12 + 128);
  v43 = v0;
  swift_beginAccess();
  v39 = v14;
  v40 = v12;
  v15 = *(v12 + v14);
  v16 = v15 + 64;
  v17 = -1;
  v18 = -1 << *(v15 + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(v15 + 64);
  v20 = (63 - v18) >> 6;
  v42 = v15;
  result = swift_bridgeObjectRetain_n();
  v22 = 0;
  if (v19)
  {
    while (1)
    {
      v23 = v22;
LABEL_9:
      v24 = v43[34];
      v25 = v43[24];
      v26 = v43[22];
      v27 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v28 = v27 | (v23 << 6);
      v29 = *(v42 + 56);
      v30 = *(*(v42 + 48) + 8 * v28);
      sub_1A435A544();
      v32 = *(v31 - 8);
      v33 = v29 + *(v32 + 72) * v28;
      v34 = *(v41 + 48);
      (*(v32 + 16))(v25 + v34, v33, v31);
      *v25 = v30;
      sub_1A434C490(v30, v25 + v34, v26, v24);
      result = sub_1A435C808(v25, sub_1A435A644);
      if (!v19)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      return result;
    }

    if (v23 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_9;
    }
  }

  v36 = v43[33];
  v35 = v43[34];
  v37 = v43[25];

  *(v40 + v39) = sub_1A4359C40(MEMORY[0x1E69E7CC0], sub_1A435A524, sub_1A435A5C4, sub_1A435A62C, sub_1A435A544);

  (*(v36 + 8))(v35, v37);

  v38 = v43[1];

  return v38();
}

uint64_t sub_1A434B5AC()
{
  sub_1A435AE04(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A434B674(void *a1)
{
  sub_1A435A644(0);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat();
  sub_1A3DBD9A0();
  v6 = sub_1A524ECF4();
  v7 = sub_1A524DF24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  *(&v39 - v9) = a1;
  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(v10, 0, 1, v6);
  v11 = *(*v1 + 120);
  swift_beginAccess();
  v47 = a1;
  v12 = a1;
  (*(v8 + 40))(v1 + v11, v10, v7);
  swift_endAccess();
  v13 = *(*v1 + 128);
  swift_beginAccess();
  v39 = v13;
  v40 = v1;
  v14 = *(v1 + v13);
  v17 = *(v14 + 64);
  v16 = v14 + 64;
  v15 = v17;
  v18 = 1 << *(*(v1 + v13) + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v46 = *(v1 + v13);
  result = swift_bridgeObjectRetain_n();
  v23 = 0;
  *&v24 = 134349314;
  v41 = v24;
  v42 = v5;
  while (v20)
  {
LABEL_10:
    v27 = __clz(__rbit64(v20)) | (v23 << 6);
    v28 = *(v46 + 56);
    v29 = *(*(v46 + 48) + 8 * v27);
    sub_1A435A544();
    v31 = *(v30 - 8);
    v32 = v28 + *(v31 + 72) * v27;
    v33 = *(v45 + 48);
    (*(v31 + 16))(v5 + v33, v32, v30);
    *v5 = v29;
    v34 = sub_1A524D244();
    v35 = *sub_1A486DB9C();
    if (os_log_type_enabled(v35, v34))
    {
      v43 = v35;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44 = v33;
      v48 = v37;
      *v36 = v41;
      *(v36 + 4) = v29;
      *(v36 + 12) = 2080;
      swift_getErrorValue();
      sub_1A524EBE4();
      sub_1A3C2EF94();
    }

    v20 &= v20 - 1;
    v48 = v47;
    v25 = v47;
    sub_1A524CBD4();
    result = sub_1A435C808(v5, sub_1A435A644);
  }

  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v26 >= v21)
    {

      v38 = sub_1A4359C40(MEMORY[0x1E69E7CC0], sub_1A435A524, sub_1A435A5C4, sub_1A435A62C, sub_1A435A544);
      *(v40 + v39) = v38;
    }

    v20 = *(v16 + 8 * v26);
    ++v23;
    if (v20)
    {
      v23 = v26;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A434BB58(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v3[7] = *v2;
  v4 = sub_1A5240E64();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_1A5246D14();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A434BCF4, v2, 0);
}

uint64_t sub_1A434BCF4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[3];
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library();
  sub_1A5246C04();
  sub_1A5246BF4();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  sub_1A4341E08(v6, v4);
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[3];

  v13 = *(v10 + 112);
  v12 = *(v10 + 120);
  LOBYTE(v6) = sub_1A524D264();
  v14 = *sub_1A486DB9C();
  (*(v8 + 16))(v7, v11, v9);
  if (os_log_type_enabled(v14, v6))
  {
    v14;
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    *v15 = 136446466;
    sub_1A3C2EF94();
  }

  v16 = *(v0[9] + 8);
  v16(v0[10], v0[8]);
  v17 = v12;
  v0[14] = v16;
  v18 = v0[5];
  v20 = v0[3];
  v19 = v0[4];
  WitnessTable = swift_getWitnessTable();
  v22 = swift_task_alloc();
  v0[15] = v22;
  v22[2] = v19;
  v22[3] = v13;
  v22[4] = v17;
  v22[5] = v20;
  v23 = swift_task_alloc();
  v0[16] = v23;
  *v23 = v0;
  v23[1] = sub_1A434C104;
  v24 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v23, v18, WitnessTable, 0xD000000000000014, 0x80000001A53D2C60, sub_1A435B228, v22, v24);
}

uint64_t sub_1A434C104()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1A434C314;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1A434C278;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A434C278()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A434C314()
{

  v1 = [objc_opt_self() defaultManager];
  v2 = sub_1A5240D44();
  v0[2] = 0;
  v3 = [v1 removeItemAtURL:v2 error:v0 + 2];

  v4 = v0[2];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v6 = v4;
    v7 = sub_1A5240B84();

    swift_willThrow();
  }

  v8 = v0[14];
  v9 = v0[8];
  v10 = v0[3];
  swift_willThrow();

  v8(v10, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A434C490(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v31 = a4;
  v32 = a1;
  v6 = *a3;
  sub_1A435A544();
  v33 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v6 + 80);
  v28 = *(v6 + 88);
  v10 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat();
  v26 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v17;
  v18 = sub_1A524CCB4();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, v31, v10);
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v33);
  v20 = v28;
  v19 = v29;
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry();
  WitnessTable = swift_getWitnessTable();
  v22 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v23 = (v12 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = a3;
  *(v24 + 3) = WitnessTable;
  *(v24 + 4) = v19;
  *(v24 + 5) = v20;
  *(v24 + 6) = v32;
  *(v24 + 7) = a3;
  (*(v11 + 32))(&v24[v22], v14, v26);
  (*(v8 + 32))(&v24[v23], v27, v33);
  swift_retain_n();
  sub_1A3D4D930(0, 0, v30, &unk_1A53317D8, v24);
}

uint64_t sub_1A434C7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A434C7E4, a5, 0);
}

uint64_t sub_1A434C7E4()
{
  v1 = sub_1A524D264();
  v2 = sub_1A486DB9C();
  v0[8] = v2;
  v3 = *v2;
  if (os_log_type_enabled(*v2, v1))
  {
    v4 = v0[4];
    v5 = v3;
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = v4;
    _os_log_impl(&dword_1A3C1C000, v5, v1, "Journal: [%{public}ld] Satisfying player item", v6, 0xCu);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1A434C908;
  v8 = v0[6];

  return sub_1A434CC30(v8);
}

uint64_t sub_1A434C908(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  v5 = v4[5];
  if (v1)
  {
    v6 = sub_1A434CAC0;
  }

  else
  {
    v4[11] = a1;
    v6 = sub_1A434CA44;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A434CA44()
{
  v0[3] = v0[11];
  sub_1A435A544();
  sub_1A524CBE4();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1A434CAC0()
{
  v1 = v0[8];
  v2 = sub_1A524D264();
  v3 = *v1;
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[10];
    v5 = v0[4];
    v6 = v3;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134349314;
    *(v7 + 4) = v5;
    *(v7 + 12) = 2112;
    v9 = v4;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1A3C1C000, v6, v2, "Journal: [%{public}ld] Error for player item: %@", v7, 0x16u);
    sub_1A435C808(v8, sub_1A3D3F118);
    MEMORY[0x1A590EEC0](v8, -1, -1);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  v0[2] = v0[10];
  sub_1A435A544();
  sub_1A524CBD4();
  v11 = v0[1];

  return v11();
}

uint64_t sub_1A434CC30(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1A5240E64();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A434CD8C, v1, 0);
}

uint64_t sub_1A434CD8C()
{
  (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 72), *(v0 + 120));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1A435ADB0();
      swift_allocError();
      swift_willThrow();
LABEL_16:

      v19 = *(v0 + 8);

      return v19();
    }

    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 136), *(v0 + 88));
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    *v14 = v0;
    v14[1] = sub_1A434D404;
    v15 = *(v0 + 104);

    return sub_1A434E69C(v15);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v2 = *(v0 + 136);
      v4 = v2[1];
      v3 = v2[2];
      v5 = *v2;
      *(v0 + 64) = *(v2 + 48);
      *(v0 + 32) = v4;
      *(v0 + 48) = v3;
      *(v0 + 16) = v5;
      v6 = sub_1A524D264();
      v7 = *sub_1A486DB9C();
      if (os_log_type_enabled(v7, v6))
      {
        v8 = v7;
        v9 = swift_slowAlloc();
        swift_slowAlloc();
        *v9 = 136446210;
        sub_1A3C2EF94();
      }

      v10 = sub_1A5240E84();
      v11 = sub_1A524C634();
      if (*(v0 + 40))
      {
        v12 = sub_1A524C634();
        if (*(v0 + 56))
        {
LABEL_7:
          v13 = sub_1A524C634();
          goto LABEL_21;
        }
      }

      else
      {
        v12 = 0;
        if (*(v0 + 56))
        {
          goto LABEL_7;
        }
      }

      v13 = 0;
LABEL_21:
      v20 = [objc_opt_self() playerItemFromVideoMediaItemMakerData:v10 forAssetUuid:v11 fingerPrint:v12 outOfBandPresentationHints:v13];

      if (v20 || (type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError(), swift_getWitnessTable(), v22 = swift_allocError(), *v23 = 2, swift_willThrow(), !v22))
      {
        sub_1A435AE04(v0 + 16);

        v21 = *(v0 + 8);

        return v21(v20);
      }

      sub_1A435AE04(v0 + 16);
      goto LABEL_16;
    }

    (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 136), *(v0 + 88));
    v17 = swift_task_alloc();
    *(v0 + 144) = v17;
    *v17 = v0;
    v17[1] = sub_1A434D228;
    v18 = *(v0 + 112);

    return sub_1A434E280(v18);
  }
}

uint64_t sub_1A434D228(uint64_t a1)
{
  v4 = *v2;
  v4[19] = v1;

  v5 = v4[10];
  if (v1)
  {
    v6 = sub_1A434D5E0;
  }

  else
  {
    v4[20] = a1;
    v6 = sub_1A434D364;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A434D364()
{
  (*(v0[12] + 8))(v0[14], v0[11]);
  v1 = v0[20];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1A434D404(uint64_t a1)
{
  v4 = *v2;
  v4[22] = v1;

  v5 = v4[10];
  if (v1)
  {
    v6 = sub_1A434D678;
  }

  else
  {
    v4[23] = a1;
    v6 = sub_1A434D540;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A434D540()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[23];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1A434D5E0()
{
  (*(v0[12] + 8))(v0[14], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A434D678()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

void sub_1A434D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a5;
  v18 = a1;
  sub_1A435B234();
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v17 = v9;
  v21 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5240E64();
  MEMORY[0x1EEE9AC00](v15);
  sub_1A435B2A0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v11;
  *(inited + 48) = 1;
  v12 = sub_1A3D756DC(inited);
  swift_setDeallocating();
  sub_1A435B368(inited + 32);
  v20 = sub_1A5240E84();
  v22 = a3;
  v24 = a4;
  v19 = sub_1A524C634();
  v16 = sub_1A5240D44();
  if (*(a2 + 24))
  {
    v14 = sub_1A524C634();
  }

  else
  {
    v14 = 0;
  }

  v13[2] = objc_opt_self();
  sub_1A434DB58(v12);
}

void sub_1A434DB58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A435B4C4(0, &qword_1EB1263C0);
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A434DE28(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = (v10 + 16);
  if (a1)
  {
    v17 = sub_1A524D264();
    v18 = *sub_1A486DB9C();
    (*v16)(v15, a5, v9);
    if (os_log_type_enabled(v18, v17))
    {
      v19 = v18;
      v20 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v20 = 136446466;
      sub_1A3C2EF94();
    }

    (*(v10 + 8))(v15, v9);
    sub_1A435B234();
    return sub_1A524CBE4();
  }

  else
  {
    v21 = sub_1A524D244();
    v22 = *sub_1A486DB9C();
    (*v16)(v12, a5, v9);
    if (os_log_type_enabled(v22, v21))
    {
      v23 = v22;
      v24 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v24 = 136446466;
      sub_1A3C2EF94();
    }

    (*(v10 + 8))(v12, v9);
    v28 = a2;
    v26 = a2;
    sub_1A435B234();
    return sub_1A524CBD4();
  }
}

uint64_t sub_1A434E280(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v2[6] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1A434E2F0, v1, 0);
}

uint64_t sub_1A434E2F0()
{
  v1 = sub_1A524D264();
  v2 = sub_1A486DB9C();
  if (os_log_type_enabled(*v2, v1))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  WitnessTable = swift_getWitnessTable();
  v7 = swift_task_alloc();
  v0[7] = v7;
  v7[2] = *(v3 + 80);
  v7[3] = *(v3 + 88);
  v7[4] = v5;
  v8 = swift_task_alloc();
  v0[8] = v8;
  v9 = sub_1A3C52C70(0, &qword_1EB138628);
  *v8 = v0;
  v8[1] = sub_1A434E510;

  return MEMORY[0x1EEE6DE38](v0 + 2, v4, WitnessTable, 0xD00000000000002ELL, 0x80000001A53D2B90, sub_1A435AE58, v7, v9);
}

uint64_t sub_1A434E510()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1A434E638;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1A435CD40;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A434E638()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A434E69C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v2[6] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1A434E70C, v1, 0);
}

uint64_t sub_1A434E70C()
{
  v1 = sub_1A524D264();
  v2 = sub_1A486DB9C();
  if (os_log_type_enabled(*v2, v1))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  WitnessTable = swift_getWitnessTable();
  v7 = swift_task_alloc();
  v0[7] = v7;
  v7[2] = *(v3 + 80);
  v7[3] = *(v3 + 88);
  v7[4] = v5;
  v8 = swift_task_alloc();
  v0[8] = v8;
  v9 = sub_1A3C52C70(0, &qword_1EB138628);
  *v8 = v0;
  v8[1] = sub_1A434E92C;

  return MEMORY[0x1EEE6DE38](v0 + 2, v4, WitnessTable, 0xD000000000000016, 0x80000001A53D2C10, sub_1A435AF5C, v7, v9);
}

uint64_t sub_1A434E92C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1A435CD18;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1A435CD40;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1A434EA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A435A544();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v17 = objc_opt_self();
  v11 = sub_1A5240D44();
  sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
  v12 = sub_1A524C3D4();

  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  (*(v9 + 32))(v14 + v13, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_1A435AE64;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A434EC74;
  aBlock[3] = &block_descriptor_161;
  v15 = _Block_copy(aBlock);

  [v17 buildAVPlayerItemFromVideoURL:v11 infoDictionary:v12 options:0 completion:v15];
  _Block_release(v15);
}

void sub_1A434EC74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, v8, v9);
}

void sub_1A434ED14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A435A544();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = objc_opt_self();
  v12 = sub_1A5240D44();
  (*(v9 + 16))(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  (*(v9 + 32))(v14 + v13, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_1A435AFF0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A434EEF0;
  aBlock[3] = &block_descriptor_87_3;
  v15 = _Block_copy(aBlock);

  [v11 buildAVPlayerItemFromRemoteStreamVideoURL:v12 infoDictionary:0 completion:v15];
  _Block_release(v15);
}

void sub_1A434EEF0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, v6);
}

uint64_t sub_1A434EF74(uint64_t a1, void *a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A434EFBC, a2, 0);
}

uint64_t sub_1A434EFBC()
{
  sub_1A524CDD4();
  v1 = v0[4];
  v2 = v0[3];
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry();
  WitnessTable = swift_getWitnessTable();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = sub_1A3C52C70(0, &qword_1EB138628);
  *v5 = v0;
  v5[1] = sub_1A434F148;
  v7 = v0[2];

  return MEMORY[0x1EEE6DE38](v7, v2, WitnessTable, 0xD000000000000019, 0x80000001A53D2B70, sub_1A435AC64, v4, v6);
}

uint64_t sub_1A434F148()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](sub_1A435CD24, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1A434F284(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t a1))
{
  v61 = a3;
  WitnessTable = a1;
  v4 = *a2;
  sub_1A435A544();
  v60 = v5;
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v52 = v6;
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v4[10];
  v50 = v4[11];
  v51 = v9;
  v10 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat();
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v48 - v13;
  sub_1A3DBD9A0();
  v58 = v10;
  v14 = sub_1A524ECF4();
  v15 = sub_1A524DF24();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v19 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v48 - v24;
  v26 = v4[15];
  swift_beginAccess();
  (*(v16 + 16))(v18, &a2[v26], v15);
  if ((*(v19 + 48))(v18, 1, v14) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v27 = sub_1A524D264();
    v28 = *sub_1A486DB9C();
    v29 = os_log_type_enabled(v28, v27);
    v30 = v61;
    if (v29)
    {
      v31 = v28;
      v32 = swift_slowAlloc();
      *v32 = 134349056;
      *(v32 + 4) = v30;
      _os_log_impl(&dword_1A3C1C000, v31, v27, "Journal: [%{public}ld] Player item format not available yet. Queuing request", v32, 0xCu);
      MEMORY[0x1A590EEC0](v32, -1, -1);
    }

    return sub_1A434FC68(v30, WitnessTable);
  }

  else
  {
    (*(v19 + 32))(v25, v18, v14);
    (*(v19 + 16))(v22, v25, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v63 = *v22;
      sub_1A524CBD4();
    }

    else
    {
      v34 = v55;
      v35 = v56;
      v36 = *(v56 + 32);
      v48 = v56 + 32;
      v49 = v36;
      v37 = v58;
      v36(v55, v22, v58);
      v38 = sub_1A524CCB4();
      (*(*(v38 - 8) + 56))(v57, 1, 1, v38);
      (*(v35 + 16))(v54, v34, v37);
      v39 = v53;
      (*(v53 + 16))(v59, WitnessTable, v60);
      v41 = v50;
      v40 = v51;
      type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry();
      WitnessTable = swift_getWitnessTable();
      v42 = (*(v35 + 80) + 64) & ~*(v35 + 80);
      v43 = (v11 + *(v39 + 80) + v42) & ~*(v39 + 80);
      v44 = swift_allocObject();
      v45 = v61;
      v46 = WitnessTable;
      *(v44 + 2) = a2;
      *(v44 + 3) = v46;
      *(v44 + 4) = v40;
      *(v44 + 5) = v41;
      *(v44 + 6) = v45;
      *(v44 + 7) = a2;
      v47 = v58;
      v49(&v44[v42], v54, v58);
      (*(v39 + 32))(&v44[v43], v59, v60);
      swift_retain_n();
      sub_1A3D4D930(0, 0, v57, &unk_1A5331790, v44);

      (*(v56 + 8))(v55, v47);
    }

    return (*(v19 + 8))(v25, v14);
  }
}

uint64_t sub_1A434F8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A434F914, a5, 0);
}

uint64_t sub_1A434F914()
{
  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[4];
    v4 = v2;
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v3;
    _os_log_impl(&dword_1A3C1C000, v4, v1, "Journal: [%{public}ld] Player item format immediately available for request", v5, 0xCu);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1A434FA34;
  v7 = v0[6];

  return sub_1A434CC30(v7);
}

uint64_t sub_1A434FA34(uint64_t a1)
{
  v4 = *v2;
  v4[9] = v1;

  v5 = v4[5];
  if (v1)
  {
    v6 = sub_1A434FBEC;
  }

  else
  {
    v4[10] = a1;
    v6 = sub_1A434FB70;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A434FB70()
{
  v0[3] = v0[10];
  sub_1A435A544();
  sub_1A524CBE4();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1A434FBEC()
{
  v0[2] = v0[9];
  sub_1A435A544();
  sub_1A524CBD4();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1A434FC68(uint64_t (*a1)(uint64_t a1), uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v39 = *v3;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43588E0(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v36 - v17;
  sub_1A435AC30(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A435A544();
  v22 = v21;
  v23 = *(v21 - 8);
  (*(v23 + 16))(v20, a2, v21);
  (*(v23 + 56))(v20, 0, 1, v22);
  swift_beginAccess();
  sub_1A433F314(v20, v41);
  swift_endAccess();
  v24 = qword_1EB1B8710;
  swift_beginAccess();
  sub_1A4359F74(v3 + v24, v12, sub_1A43588E0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v25 = sub_1A43588E0;
    v26 = v12;
  }

  else
  {
    v41 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format;
    v27 = v38;
    sub_1A435B0E8(v12, v38, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
    (*(v14 + 56))(v9, 1, 1, v13);
    swift_beginAccess();
    sub_1A435CBFC(v9, v3 + v24, sub_1A43588E0);
    swift_endAccess();
    v28 = sub_1A524CCB4();
    v29 = v40;
    (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
    v30 = v37;
    sub_1A4359F74(v27, v37, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
    v31 = v39;
    WitnessTable = swift_getWitnessTable();
    v33 = (*(v14 + 80) + 56) & ~*(v14 + 80);
    v34 = swift_allocObject();
    v34[2] = v3;
    v34[3] = WitnessTable;
    v34[4] = *(v31 + 80);
    v34[5] = *(v31 + 88);
    v34[6] = v3;
    sub_1A435B0E8(v30, v34 + v33, v41);
    swift_retain_n();
    sub_1A3D4D930(0, 0, v29, &unk_1A53317B8, v34);

    v25 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format;
    v26 = v27;
  }

  return sub_1A435C808(v26, v25);
}

uint64_t sub_1A4350150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A4350170, 0, 0);
}

uint64_t sub_1A4350170()
{
  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[5];
    v4 = v2;
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v3;
    _os_log_impl(&dword_1A3C1C000, v4, v1, "Journal: [%{public}ld] Player item request cancelled", v5, 0xCu);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A43502B8, Strong, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1A43502B8()
{
  sub_1A4350324(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4350324(uint64_t a1)
{
  sub_1A435AC30(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A435A544();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v14 = *(*v1 + 128);
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (!*(v15 + 16))
  {
    return swift_endAccess();
  }

  v16 = sub_1A3CAB9BC(a1);
  if ((v17 & 1) == 0)
  {
    return swift_endAccess();
  }

  (*(v8 + 16))(v10, *(v15 + 56) + *(v8 + 72) * v16, v7);
  (*(v8 + 32))(v13, v10, v7);
  swift_endAccess();
  (*(v8 + 56))(v5, 1, 1, v7);
  swift_beginAccess();
  sub_1A433F314(v5, a1);
  swift_endAccess();
  sub_1A524CC04();
  sub_1A435C7C0(&qword_1EB138668, MEMORY[0x1E69E8550]);
  v18 = swift_allocError();
  sub_1A524C394();
  v20[1] = v18;
  sub_1A524CBD4();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1A43505C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A43505E4, a4, 0);
}

uint64_t sub_1A43505E4()
{
  v1 = v0[2];
  v0[4] = *(v1 + 112);
  v0[5] = *(v1 + 120);
  v2 = sub_1A524D264();
  v3 = sub_1A486DB9C();
  v0[6] = v3;
  v4 = *v3;
  if (os_log_type_enabled(*v3, v2))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    *v6 = 136446210;
    sub_1A3C2EF94();
  }

  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1A4350764;
  v8 = v0[3];

  return sub_1A434A704(v8);
}

uint64_t sub_1A4350764()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x1EEE6DFA0](sub_1A4350898, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1A4350898()
{
  v1 = v0[6];
  v2 = sub_1A524D244();
  if (os_log_type_enabled(*v1, v2))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = v0[8];
  sub_1A434B674(v3);

  v4 = v0[1];

  return v4();
}

void sub_1A4350A5C()
{
  swift_beginAccess();
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LivePhotoEntry();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4350BB8(uint64_t a1, _OWORD *a2)
{
  v41 = a2;
  v43 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_1A524DF24();
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - v6;
  v8 = sub_1A52411C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = AssociatedTypeWitness;
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  v15 = qword_1EB1B87B8;
  swift_beginAccess();
  if (*(*&v2[v15] + 16))
  {
    sub_1A4359FDC(v43);
  }

  v32 = v11;
  v33 = v9;
  v34 = v5;
  v35 = TupleTypeMetadata2;
  v37 = v7;
  v30[2] = *(v2 + 14);
  v16 = sub_1A524D264();
  v17 = *sub_1A486DB9C();
  v18 = *(v42 + 16);
  v19 = v39;
  v36 = v42 + 16;
  v20 = v18;
  v18(v14, v43, v39);
  v31 = v16;
  if (os_log_type_enabled(v17, v16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(v42 + 8))(v14, v19);
  v21 = v34;
  v22 = v35;
  v23 = v40;
  v24 = v37;
  v25 = &v37[*(v35 + 48)];
  v20(v37, v43, v19);
  v26 = v41;
  v27 = v41[1];
  *v25 = *v41;
  *(v25 + 1) = v27;
  *(v25 + 4) = *(v26 + 32);
  (*(*(v22 - 8) + 56))(v24, 0, 1, v22);
  v28 = *(*v2 + 152);
  swift_beginAccess();
  sub_1A435BF44(v26, v44);
  (*(v23 + 40))(&v2[v28], v24, v21);
  return swift_endAccess();
}

uint64_t sub_1A4351188(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A43511AC, v2, 0);
}

id sub_1A43511AC()
{
  result = [*(v0 + 16) uuid];
  if (result)
  {
    v2 = result;
    sub_1A524C674();

    sub_1A4350A5C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A435129C(uint64_t a1)
{
  v4 = *v2;
  v4[7] = v1;

  v5 = v4[4];
  if (v1)
  {
    v6 = sub_1A435CD38;
  }

  else
  {
    v4[8] = a1;
    v6 = sub_1A435CD34;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A43513D8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v2[6] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1A4351448, v1, 0);
}

uint64_t sub_1A4351448()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  v0[8] = v5;
  swift_weakInit();
  v6 = swift_task_alloc();
  v0[9] = v6;
  v6[2] = *(v1 + 80);
  v6[3] = *(v1 + 88);
  v6[4] = v5;
  v6[5] = v3;
  WitnessTable = swift_getWitnessTable();
  v8 = swift_task_alloc();
  v0[10] = v8;
  sub_1A3C566A4(0, &qword_1EB138600, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  *v8 = v0;
  v8[1] = sub_1A43515F4;

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1A5331750, v4, sub_1A435A990, v6, v2, WitnessTable, v9);
}

uint64_t sub_1A43515F4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1A4351738;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1A3D94024;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A4351738()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1A43517B0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = qword_1EB1B8798;
  v6 = sub_1A5240E64();
  v7 = *(*(v6 - 8) + 56);
  v7(&v4[v5], 1, 1, v6);
  v7(&v4[qword_1EB1B87A0], 1, 1, v6);
  v4[qword_1EB1B87A8] = 0;
  *&v4[qword_1EB1B87B0] = 0;
  v8 = qword_1EB1B87B8;
  *&v4[v8] = sub_1A4359C40(MEMORY[0x1E69E7CC0], sub_1A4359E14, sub_1A4359ED4, sub_1A4359F3C, sub_1A4359E34);
  v9 = *(*v4 + 152);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 56))(&v4[v9], 1, 1, TupleTypeMetadata2);
  *(v4 + 14) = a1;
  *(v4 + 15) = a2;
  return v4;
}

uint64_t sub_1A43519FC()
{
  v43 = *v0;
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v36 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4359F54(0);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = qword_1EB1B87B8;
  swift_beginAccess();
  v37 = v0;
  v35[1] = v6;
  v7 = *&v0[v6];
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v42 = v7;
  result = swift_bridgeObjectRetain_n();
  v14 = 0;
  *&v15 = 134349056;
  v38 = v15;
  v40 = v5;
  while (v11)
  {
LABEL_10:
    v19 = __clz(__rbit64(v11)) | (v14 << 6);
    v20 = *(v42 + 56);
    v21 = *(*(v42 + 48) + 8 * v19);
    sub_1A4359E34();
    v23 = *(v41 + 48);
    (*(*(v22 - 8) + 16))(v5 + v23, v20 + *(*(v22 - 8) + 72) * v19, v22);
    *v5 = v21;
    v44 = *(v43 + 88);
    v24 = sub_1A524D264();
    v25 = *sub_1A486DB9C();
    if (os_log_type_enabled(v25, v24))
    {
      v26 = v25;
      v27 = swift_slowAlloc();
      v39 = v23;
      v28 = v27;
      *v27 = v38;
      *(v27 + 4) = v21;
      _os_log_impl(&dword_1A3C1C000, v26, v24, "Journal: [%{public}ld] Cancel from deinit for live photo", v27, 0xCu);
      MEMORY[0x1A590EEC0](v28, -1, -1);
    }

    v11 &= v11 - 1;
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError();
    swift_getWitnessTable();
    v16 = swift_allocError();
    *v17 = 0;
    v45 = v16;
    v5 = v40;
    sub_1A524CBD4();
    result = sub_1A435C808(v5, sub_1A4359F54);
  }

  while (1)
  {
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v18 >= v12)
    {

      v29 = qword_1EB1B8798;
      v30 = v37;
      swift_beginAccess();
      v31 = v36;
      sub_1A4359F74(&v30[v29], v36, sub_1A3EE53E0);
      sub_1A435A2D8(v31);
      sub_1A435C808(v31, sub_1A3EE53E0);
      v32 = qword_1EB1B87A0;
      swift_beginAccess();
      sub_1A4359F74(&v30[v32], v31, sub_1A3EE53E0);
      sub_1A435A2D8(v31);
      sub_1A435C808(v31, sub_1A3EE53E0);

      sub_1A435C808(&v30[v29], sub_1A3EE53E0);
      sub_1A435C808(&v30[v32], sub_1A3EE53E0);

      v33 = *(*v30 + 152);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      swift_getTupleTypeMetadata2();
      v34 = sub_1A524DF24();
      (*(*(v34 - 8) + 8))(&v30[v33], v34);
      swift_defaultActor_destroy();
      return v30;
    }

    v11 = *(v8 + 8 * v18);
    ++v14;
    if (v11)
    {
      v14 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4351F10()
{
  sub_1A43519FC();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A4351F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[24] = a4;
  v7[25] = a5;
  v8 = sub_1A52411C4();
  v7[28] = v8;
  v7[29] = *(v8 - 8);
  v7[30] = swift_task_alloc();
  v7[31] = swift_getAssociatedTypeWitness();
  v7[32] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[33] = AssociatedTypeWitness;
  v7[34] = *(AssociatedTypeWitness - 8);
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A43520EC, 0, 0);
}

uint64_t sub_1A43520EC()
{
  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[24];
  v5 = sub_1A524D264();
  v6 = sub_1A486DB9C();
  v0[38] = v6;
  v7 = *v6;
  v8 = *(v2 + 16);
  v0[39] = v8;
  v0[40] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v4, v3);
  v9 = os_log_type_enabled(v7, v5);
  v10 = v0[37];
  v12 = v0[33];
  v11 = v0[34];
  if (v9)
  {
    v14 = v0[29];
    v13 = v0[30];
    v22 = v0[28];
    v7;
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    *v15 = 136446466;
    swift_getAssociatedConformanceWitness();
    sub_1A524E424();
    (*(v11 + 8))(v10, v12);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v14 + 8))(v13, v22);
    sub_1A3C2EF94();
  }

  v16 = *(v11 + 8);
  v16(v0[37], v0[33]);
  v0[41] = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[42] = AssociatedConformanceWitness;
  v23 = (*(AssociatedConformanceWitness + 16) + **(AssociatedConformanceWitness + 16));
  v18 = swift_task_alloc();
  v0[43] = v18;
  v19 = sub_1A435CB54();
  *v18 = v0;
  v18[1] = sub_1A4352478;
  v20 = v0[33];

  return v23(v0 + 10, &type metadata for OneUpSharePlayLivePhotoItem, &type metadata for OneUpSharePlayLivePhotoItem, v19, v20, AssociatedConformanceWitness);
}

uint64_t sub_1A4352478()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1A4352E6C;
  }

  else
  {
    v2 = sub_1A435258C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A435258C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v2;
  v3 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v3;
  sub_1A524CDD4();
  if (v1)
  {
    sub_1A435CBA8(v0 + 16);
    *(v0 + 384) = v1;
    v4 = *(v0 + 312);
    v5 = *(v0 + 304);
    v6 = *(v0 + 280);
    v7 = *(v0 + 264);
    v8 = *(v0 + 192);
    v9 = sub_1A524D244();
    v10 = *v5;
    v4(v6, v8, v7);
    if (os_log_type_enabled(v10, v9))
    {
      v11 = *(v0 + 280);
      v35 = *(v0 + 328);
      v12 = *(v0 + 264);
      v14 = *(v0 + 232);
      v13 = *(v0 + 240);
      v15 = *(v0 + 224);
      v10;
      v16 = swift_slowAlloc();
      swift_slowAlloc();
      swift_slowAlloc();
      *v16 = 136446722;
      sub_1A524E424();
      v35(v11, v12);
      sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
      sub_1A524EA44();
      (*(v14 + 8))(v13, v15);
      sub_1A3C2EF94();
    }

    (*(v0 + 328))(*(v0 + 280), *(v0 + 264));
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 392) = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1A4352D6C, Strong, 0);
    }

    goto LABEL_16;
  }

  v17 = *(v0 + 312);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 264);
  v21 = *(v0 + 192);
  v22 = sub_1A524D264();
  v23 = *v18;
  v17(v19, v21, v20);
  if (os_log_type_enabled(v23, v22))
  {
    v24 = *(v0 + 288);
    v25 = *(v0 + 264);
    v36 = *(v0 + 328);
    v26 = *(v0 + 232);
    v27 = *(v0 + 240);
    v28 = *(v0 + 224);
    v23;
    v29 = swift_slowAlloc();
    swift_slowAlloc();
    *v29 = 136446466;
    sub_1A524E424();
    v36(v24, v25);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v26 + 8))(v27, v28);
    sub_1A3C2EF94();
  }

  (*(v0 + 328))(*(v0 + 288), *(v0 + 264));
  swift_beginAccess();
  v31 = swift_weakLoadStrong();
  *(v0 + 360) = v31;
  if (!v31)
  {
    sub_1A435CBA8(v0 + 16);
LABEL_16:

    v33 = *(v0 + 8);

    return v33();
  }

  v32 = swift_task_alloc();
  *(v0 + 368) = v32;
  *v32 = v0;
  v32[1] = sub_1A4352BC0;

  return sub_1A4353568((v0 + 16));
}

uint64_t sub_1A4352BC0()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1A43531E0;
  }

  else
  {

    v2 = sub_1A4352CDC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4352CDC()
{
  sub_1A435CBA8(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4352D6C()
{
  sub_1A4353ED8(*(v0 + 384));

  return MEMORY[0x1EEE6DFA0](sub_1A4352DDC, 0, 0);
}

uint64_t sub_1A4352DDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4352E6C()
{
  v1 = v0[44];
  v0[48] = v1;
  v2 = v0[39];
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[33];
  v6 = v0[24];
  v7 = sub_1A524D244();
  v8 = *v3;
  v2(v4, v6, v5);
  if (os_log_type_enabled(v8, v7))
  {
    v9 = v0[35];
    v18 = v0[41];
    v10 = v0[33];
    v12 = v0[29];
    v11 = v0[30];
    v13 = v0[28];
    v8;
    v14 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v14 = 136446722;
    sub_1A524E424();
    v18(v9, v10);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v12 + 8))(v11, v13);
    sub_1A3C2EF94();
  }

  (v0[41])(v0[35], v0[33]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[49] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4352D6C, Strong, 0);
  }

  else
  {

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1A43531E0()
{
  sub_1A435CBA8((v0 + 2));

  v1 = v0[47];
  v0[48] = v1;
  v2 = v0[39];
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[33];
  v6 = v0[24];
  v7 = sub_1A524D244();
  v8 = *v3;
  v2(v4, v6, v5);
  if (os_log_type_enabled(v8, v7))
  {
    v9 = v0[35];
    v18 = v0[41];
    v10 = v0[33];
    v12 = v0[29];
    v11 = v0[30];
    v13 = v0[28];
    v8;
    v14 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v14 = 136446722;
    sub_1A524E424();
    v18(v9, v10);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v12 + 8))(v11, v13);
    sub_1A3C2EF94();
  }

  (v0[41])(v0[35], v0[33]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[49] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4352D6C, Strong, 0);
  }

  else
  {

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1A4353568(uint64_t *a1)
{
  v2[12] = a1;
  v2[13] = v1;
  sub_1A4359F54(0);
  v2[14] = v4;
  v2[15] = swift_task_alloc();
  sub_1A3EE53E0(0);
  v2[16] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[17] = v5;
  v6 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = swift_task_alloc();
  v2[18] = v10;
  *v10 = v2;
  v10[1] = sub_1A4353698;

  return sub_1A4354228(v5, v6, v7, v9, v8);
}

uint64_t sub_1A4353698()
{
  v2 = *(*v1 + 104);
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1A4353DD8;
  }

  else
  {
    v3 = sub_1A43537C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1A43537C0()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = sub_1A5240E64();
  v0[20] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v0[21] = v6;
  v0[22] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 0, 1, v4);
  v7 = qword_1EB1B8798;
  swift_beginAccess();
  sub_1A435CBFC(v1, v2 + v7, sub_1A3EE53E0);
  swift_endAccess();
  v9 = v3[4];
  v8 = v3[5];
  v10 = v3[6];
  v11 = v3[7];
  v12 = swift_task_alloc();
  v0[23] = v12;
  *v12 = v0;
  v12[1] = sub_1A435391C;
  v13 = v0[16];

  return sub_1A4354228(v13, v9, v8, v10, v11);
}

uint64_t sub_1A435391C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_1A4353E58;
  }

  else
  {
    v4 = sub_1A4353A48;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A4353A48()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v28 = *(v0 + 112);
  (*(v0 + 168))(v1, 0, 1, *(v0 + 160));
  v3 = qword_1EB1B87A0;
  swift_beginAccess();
  sub_1A435CBFC(v1, v2 + v3, sub_1A3EE53E0);
  swift_endAccess();
  *(v2 + qword_1EB1B87A8) = 1;
  v4 = qword_1EB1B87B8;
  swift_beginAccess();
  v26 = v4;
  v27 = v2;
  v5 = *(v2 + v4);
  v6 = v5 + 64;
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  v10 = (63 - v8) >> 6;
  v29 = v5;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v9)
  {
LABEL_10:
    v15 = *(v0 + 120);
    v16 = __clz(__rbit64(v9)) | (v12 << 6);
    v17 = *(v29 + 56);
    v18 = *(*(v29 + 48) + 8 * v16);
    sub_1A4359E34();
    (*(*(v19 - 8) + 16))(&v15[*(v28 + 48)], v17 + *(*(v19 - 8) + 72) * v16, v19);
    *v15 = v18;
    v20 = sub_1A4354968();
    v21 = sub_1A524D264();
    v22 = *sub_1A486DB9C();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = v22;
      v24 = swift_slowAlloc();
      *v24 = 134349056;
      *(v24 + 4) = v18;
      _os_log_impl(&dword_1A3C1C000, v23, v21, "Journal: [%{public}ld] Satisfying live photo", v24, 0xCu);
      MEMORY[0x1A590EEC0](v24, -1, -1);
    }

    v9 &= v9 - 1;
    v13 = *(v0 + 120);
    *(v0 + 88) = v20;
    sub_1A524CBE4();
    result = sub_1A435C808(v13, sub_1A4359F54);
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  *(v27 + v26) = sub_1A4359C40(MEMORY[0x1E69E7CC0], sub_1A4359E14, sub_1A4359ED4, sub_1A4359F3C, sub_1A4359E34);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1A4353DD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4353E58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4353ED8(void *a1)
{
  v44 = a1;
  sub_1A4359F54(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = qword_1EB1B87B8;
  swift_beginAccess();
  v37 = v6;
  v38 = v1;
  v7 = *(v1 + v6);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(v1 + v6) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v43 = *(v1 + v6);
  result = swift_bridgeObjectRetain_n();
  v16 = 0;
  *&v17 = 134349314;
  v39 = v17;
  v40 = v3;
  v42 = v5;
  while (v13)
  {
LABEL_10:
    v20 = __clz(__rbit64(v13)) | (v16 << 6);
    v21 = *(v43 + 56);
    v22 = *(*(v43 + 48) + 8 * v20);
    sub_1A4359E34();
    v24 = *(v23 - 8);
    v25 = v21 + *(v24 + 72) * v20;
    v26 = *(v3 + 48);
    (*(v24 + 16))(v5 + v26, v25, v23);
    *v5 = v22;
    v27 = sub_1A524D264();
    v28 = *sub_1A486DB9C();
    if (os_log_type_enabled(v28, v27))
    {
      v29 = v28;
      v30 = swift_slowAlloc();
      v41 = v26;
      v31 = v30;
      v32 = swift_slowAlloc();
      *v31 = v39;
      *(v31 + 4) = v22;
      *(v31 + 12) = 2112;
      v33 = v44;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v34;
      *v32 = v34;
      _os_log_impl(&dword_1A3C1C000, v29, v27, "Journal: Failure for live photo requestID: %{public}ld | error: %@", v31, 0x16u);
      sub_1A435C808(v32, sub_1A3D3F118);
      v35 = v32;
      v3 = v40;
      MEMORY[0x1A590EEC0](v35, -1, -1);
      MEMORY[0x1A590EEC0](v31, -1, -1);
    }

    v13 &= v13 - 1;
    v45 = v44;
    v18 = v44;
    v5 = v42;
    sub_1A524CBD4();
    result = sub_1A435C808(v5, sub_1A4359F54);
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v14)
    {

      v36 = sub_1A4359C40(MEMORY[0x1E69E7CC0], sub_1A4359E14, sub_1A4359ED4, sub_1A4359F3C, sub_1A4359E34);
      *(v38 + v37) = v36;
    }

    v13 = *(v9 + 8 * v19);
    ++v16;
    if (v13)
    {
      v16 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4354228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *v5;
  v7 = sub_1A5240E64();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4354330, v5, 0);
}

uint64_t sub_1A4354330()
{
  v1 = v0[6];
  v2 = v0[2];
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library();
  sub_1A4341E08(v1, v2);
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[2];
  v7 = sub_1A524D264();
  v33 = sub_1A486DB9C();
  v8 = *v33;
  v34 = *(v4 + 16);
  v34(v3, v6, v5);
  if (os_log_type_enabled(v8, v7))
  {
    v9 = v8;
    v10 = swift_slowAlloc();
    swift_slowAlloc();
    *v10 = 136446466;
    sub_1A3C2EF94();
  }

  v35 = *(v0[10] + 8);
  v35(v0[13], v0[9]);
  v11 = [objc_opt_self() defaultManager];
  sub_1A5240E04();
  v12 = sub_1A524C634();

  v13 = sub_1A5240E84();
  v14 = [v11 createFileAtPath:v12 contents:v13 attributes:0];

  v15 = v0[9];
  v16 = v0[2];
  if (v14)
  {
    v17 = v0[12];
    v18 = sub_1A524D264();
    v19 = *v33;
    v34(v17, v16, v15);
    v20 = os_log_type_enabled(v19, v18);
    v21 = v0[12];
    v22 = v0[9];
    if (v20)
    {
      v23 = v19;
      v24 = swift_slowAlloc();
      swift_slowAlloc();
      *v24 = 136446466;
      sub_1A3C2EF94();
    }
  }

  else
  {
    v25 = v0[11];
    v26 = sub_1A524D244();
    v27 = *v33;
    v34(v25, v16, v15);
    v28 = os_log_type_enabled(v27, v26);
    v21 = v0[11];
    v22 = v0[9];
    if (v28)
    {
      v29 = v27;
      v30 = swift_slowAlloc();
      swift_slowAlloc();
      *v30 = 136446466;
      sub_1A3C2EF94();
    }
  }

  v35(v21, v22);

  v31 = v0[1];

  return v31();
}

char *sub_1A4354968()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  v38 = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  sub_1A3C566A4(0, &qword_1EB138670, sub_1A3EE53E0, MEMORY[0x1E69E6F90]);
  v13 = *(v6 + 72);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v35 = swift_allocObject();
  v15 = v35 + v14;
  v16 = qword_1EB1B8798;
  swift_beginAccess();
  sub_1A4359F74(v0 + v16, v15, sub_1A3EE53E0);
  v17 = qword_1EB1B87A0;
  swift_beginAccess();
  v18 = v0 + v17;
  v19 = v1;
  sub_1A4359F74(v18, v15 + v13, sub_1A3EE53E0);
  sub_1A4359F74(v15, v12, sub_1A3EE53E0);
  sub_1A435B0E8(v12, v9, sub_1A3EE53E0);
  v20 = (v2 + 32);
  v37 = v2;
  v21 = *(v2 + 48);
  v22 = v21(v9, 1, v19);
  v36 = v4;
  if (v22 == 1)
  {
    sub_1A435C808(v9, sub_1A3EE53E0);
    v23 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v33 = *v20;
    v34 = v19;
    v33(v4, v9, v19);
    v23 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1A3ECD488(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1A3ECD488(v24 > 1, v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v25];
    v19 = v34;
    v33(v26, v36, v34);
  }

  sub_1A4359F74(v15 + v13, v12, sub_1A3EE53E0);
  sub_1A435B0E8(v12, v9, sub_1A3EE53E0);
  if (v21(v9, 1, v19) == 1)
  {
    sub_1A435C808(v9, sub_1A3EE53E0);
  }

  else
  {
    v27 = *v20;
    v28 = v36;
    (*v20)(v36, v9, v19);
    v29 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1A3ECD488(0, *(v23 + 2) + 1, 1, v23);
    }

    v31 = *(v23 + 2);
    v30 = *(v23 + 3);
    if (v31 >= v30 >> 1)
    {
      v23 = sub_1A3ECD488(v30 > 1, v31 + 1, 1, v23);
    }

    *(v23 + 2) = v31 + 1;
    v27(&v23[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v31], v28, v29);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

uint64_t sub_1A4354E48(uint64_t a1, void *a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A4354E90, a2, 0);
}

uint64_t sub_1A4354E90()
{
  sub_1A524CDD4();
  v1 = v0[4];
  v2 = v0[3];
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LivePhotoEntry();
  WitnessTable = swift_getWitnessTable();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  sub_1A3C566A4(0, &qword_1EB138600, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  v7 = v6;
  *v5 = v0;
  v5[1] = sub_1A434F148;
  v8 = v0[2];

  return MEMORY[0x1EEE6DE38](v8, v2, WitnessTable, 0xD00000000000001BLL, 0x80000001A53D2B50, sub_1A435AAA0, v4, v7);
}

uint64_t sub_1A435503C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A435AA6C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + qword_1EB1B87A8);
  v10 = sub_1A524D264();
  v11 = *sub_1A486DB9C();
  v12 = os_log_type_enabled(v11, v10);
  if (v9 == 1)
  {
    if (v12)
    {
      v13 = v11;
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      *(v14 + 4) = a3;
      _os_log_impl(&dword_1A3C1C000, v13, v10, "Journal: [%{public}ld] Live photo resources immediately available", v14, 0xCu);
      MEMORY[0x1A590EEC0](v14, -1, -1);
    }

    v21[1] = sub_1A4354968();
    sub_1A4359E34();
    return sub_1A524CBE4();
  }

  else
  {
    if (v12)
    {
      v16 = v11;
      v17 = swift_slowAlloc();
      *v17 = 134349056;
      *(v17 + 4) = a3;
      _os_log_impl(&dword_1A3C1C000, v16, v10, "Journal: [%{public}ld] Live photo resources not available yet. Queuing request", v17, 0xCu);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }

    sub_1A4359E34();
    v19 = v18;
    v20 = *(v18 - 8);
    (*(v20 + 16))(v8, a1, v18);
    (*(v20 + 56))(v8, 0, 1, v19);
    swift_beginAccess();
    sub_1A433F5DC(v8, a3);
    return swift_endAccess();
  }
}

uint64_t sub_1A43552A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A43552C4, 0, 0);
}

uint64_t sub_1A43552C4()
{
  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[5];
    v4 = v2;
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v3;
    _os_log_impl(&dword_1A3C1C000, v4, v1, "Journal: [%{public}ld] Live photo request cancelled", v5, 0xCu);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A435540C, Strong, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1A435540C()
{
  sub_1A4355478(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4355478(uint64_t a1)
{
  sub_1A435AA6C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4359E34();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v14 = qword_1EB1B87B8;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (!*(v15 + 16))
  {
    return swift_endAccess();
  }

  v16 = sub_1A3CAB9BC(a1);
  if ((v17 & 1) == 0)
  {
    return swift_endAccess();
  }

  (*(v8 + 16))(v10, *(v15 + 56) + *(v8 + 72) * v16, v7);
  (*(v8 + 32))(v13, v10, v7);
  swift_endAccess();
  (*(v8 + 56))(v5, 1, 1, v7);
  swift_beginAccess();
  sub_1A433F5DC(v5, a1);
  swift_endAccess();
  sub_1A524CC04();
  sub_1A435C7C0(&qword_1EB138668, MEMORY[0x1E69E8550]);
  v18 = swift_allocError();
  sub_1A524C394();
  v20[1] = v18;
  sub_1A524CBD4();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1A435570C()
{

  v1 = *(*v0 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1A43557E4()
{
  sub_1A435570C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t OneUpSharePlaySessionRecipientJournal.deinit()
{
  v1 = *(*v0 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t OneUpSharePlaySessionRecipientJournal.__deallocating_deinit()
{
  OneUpSharePlaySessionRecipientJournal.deinit();

  return swift_deallocClassInstance();
}

uint64_t OneUpSharePlayVideoSupportError.hashValue.getter()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](0);
  return sub_1A524ECE4();
}

char *sub_1A43559F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D548(0, &qword_1EB1386A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A4355B04(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1A52411C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
  v33 = a2;
  v11 = sub_1A524C4A4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1A435C7C0(&unk_1EB12AFB0, MEMORY[0x1E69695A8]);
      v21 = sub_1A524C594();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1A4356134(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1A4355DE4()
{
  v1 = v0;
  v35 = sub_1A52411C4();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1A435CC64();
  result = sub_1A524E3B4();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
      result = sub_1A524C4A4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1A4356134(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1A52411C4();
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
    sub_1A4355DE4();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1A43563D8();
      goto LABEL_12;
    }

    sub_1A4356600();
  }

  v13 = *v3;
  sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
  v14 = sub_1A524C4A4();
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
      sub_1A435C7C0(&unk_1EB12AFB0, MEMORY[0x1E69695A8]);
      v22 = sub_1A524C594();
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
  result = sub_1A524EB74();
  __break(1u);
  return result;
}

void *sub_1A43563D8()
{
  v1 = v0;
  v2 = sub_1A52411C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A435CC64();
  v6 = *v0;
  v7 = sub_1A524E3A4();
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

uint64_t sub_1A4356600()
{
  v1 = v0;
  v32 = sub_1A52411C4();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1A435CC64();
  v6 = sub_1A524E3B4();
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
      sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
      result = sub_1A524C4A4();
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

uint64_t sub_1A4356910(uint64_t a1, int a2, uint64_t (*a3)(void), void (*a4)(void, __n128))
{
  v6 = v4;
  v43 = a3(0);
  v8 = *(v43 - 8);
  v9 = MEMORY[0x1EEE9AC00](v43);
  v42 = &v38 - v10;
  v11 = *v4;
  a4(0, v9);
  v41 = a2;
  result = sub_1A524E774();
  v13 = result;
  if (*(v11 + 16))
  {
    v38 = v6;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v20 = (v8 + 32);
    v21 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(*(v11 + 48) + 8 * v26);
      v28 = *(v8 + 72);
      v29 = *(v11 + 56) + v28 * v26;
      if (v41)
      {
        (*v20)(v42, v29, v43);
      }

      else
      {
        (*v39)(v42, v29, v43);
      }

      result = sub_1A524EC84();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v13 + 48) + 8 * v22) = v27;
      result = (*v20)(*(v13 + 56) + v28 * v22, v42, v43);
      ++*(v13 + 16);
      v8 = v40;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v11 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v11 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v6 = v13;
  return result;
}

unint64_t sub_1A4356C58(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1A524E244() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v7);
      result = sub_1A524EC84();
      v13 = result & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v11 + 8 * v4);
      if (v4 != v7 || v16 >= v12 + 1)
      {
        *v16 = *v12;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v4;
      result = v17 + v18 * v4;
      v20 = v18 * v7;
      v21 = v17 + v18 * v7 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}