uint64_t sub_21E90A37C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AC0);
  v34 = a2;
  result = sub_21E92A9C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21E92AB28();
      sub_21E92A4A8();
      result = sub_21E92AB48();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21E90A61C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AE0);
  v37 = a2;
  result = sub_21E92A9C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_21E92AB28();
      sub_21E92A4A8();
      result = sub_21E92AB48();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_21E90A8DC(unint64_t result, uint64_t a2, __int16 a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3 & 1;
  *(v5 + 9) = HIBYTE(a3) & 1;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_21E90A934(unint64_t result, uint64_t a2, __int16 a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = a4[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3 & 1;
  *(v5 + 9) = HIBYTE(a3) & 1;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_21E90A98C(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3 & 1;
  v6 = *(a4 + 80);
  v7 = a5[7] + 168 * result;
  *(v7 + 64) = *(a4 + 64);
  *(v7 + 80) = v6;
  *(v7 + 160) = *(a4 + 160);
  v8 = *(a4 + 144);
  *(v7 + 128) = *(a4 + 128);
  *(v7 + 144) = v8;
  v9 = *(a4 + 112);
  *(v7 + 96) = *(a4 + 96);
  *(v7 + 112) = v9;
  v10 = *(a4 + 16);
  *v7 = *a4;
  *(v7 + 16) = v10;
  v11 = *(a4 + 48);
  *(v7 + 32) = *(a4 + 32);
  *(v7 + 48) = v11;
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_21E90AA10(unint64_t result, uint64_t a2, char a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3 & 1;
  v6 = (a5[7] + 96 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  *(v6 + 73) = *(a4 + 73);
  v8 = a4[4];
  v6[3] = a4[3];
  v6[4] = v8;
  v6[2] = a4[2];
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_21E90AA84(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_21E90AACC(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_21E90AB10(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_21E90AB54(unint64_t result, uint64_t a2, char a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3 & 1;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_21E90ABB8(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5, double a6)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v6 = a5[6] + 16 * result;
  *v6 = a2;
  *(v6 + 8) = a3 & 1;
  v7 = a5[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a6;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_21E90AC14(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void *sub_21E90AC64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B60);
  v2 = *v0;
  v3 = sub_21E92A9B8();
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 9);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 16 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 9) = v18;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_21E90ADDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B58);
  v2 = *v0;
  v3 = sub_21E92A9B8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      LOBYTE(v17) = *(v17 + 9);
      v20 = *(*(v2 + 56) + 8 * v14);
      v21 = *(v4 + 48) + 16 * v14;
      *v21 = v18;
      *(v21 + 8) = v19;
      *(v21 + 9) = v17;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21E90AF44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B70);
  v2 = *v0;
  v3 = sub_21E92A9B8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v23 + 48) = v27)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + 16 * v14;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = 168 * v14;
      v21 = *(v2 + 56) + v20;
      v32 = *(v21 + 128);
      v33 = *(v21 + 144);
      v34 = *(v21 + 160);
      v28 = *(v21 + 64);
      v29 = *(v21 + 80);
      v30 = *(v21 + 96);
      v31 = *(v21 + 112);
      v24 = *v21;
      v25 = *(v21 + 16);
      v26 = *(v21 + 32);
      v27 = *(v21 + 48);
      v22 = *(v4 + 48) + v17;
      *v22 = v19;
      *(v22 + 8) = v18;
      v23 = *(v4 + 56) + v20;
      *(v23 + 128) = v32;
      *(v23 + 144) = v33;
      *(v23 + 160) = v34;
      *(v23 + 64) = v28;
      *(v23 + 80) = v29;
      *(v23 + 96) = v30;
      *(v23 + 112) = v31;
      *v23 = v24;
      *(v23 + 16) = v25;
      *(v23 + 32) = v26;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21E90B114()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B78);
  v2 = *v0;
  v3 = sub_21E92A9B8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v23[2] = v26)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + 16 * v14;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = 96 * v14;
      v21 = (*(v2 + 56) + v20);
      v26 = v21[2];
      v27 = v21[3];
      *v28 = v21[4];
      *&v28[9] = *(v21 + 73);
      v24 = *v21;
      v25 = v21[1];
      v22 = *(v4 + 48) + v17;
      *v22 = v19;
      *(v22 + 8) = v18;
      v23 = (*(v4 + 56) + v20);
      *v23 = v24;
      v23[1] = v25;
      *(v23 + 73) = *&v28[9];
      v23[3] = v27;
      v23[4] = *v28;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21E90B2C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AE8);
  v2 = *v0;
  v3 = sub_21E92A9B8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_21E90B434()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B38);
  v2 = *v0;
  v3 = sub_21E92A9B8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v26[2] = v25)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + 16 * v14;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = 48 * v14;
      v21 = (*(v2 + 56) + v20);
      v22 = *(v4 + 48) + v17;
      v23 = *v21;
      v24 = v21[1];
      v25 = v21[2];
      *v22 = v19;
      *(v22 + 8) = v18;
      v26 = (*(v4 + 56) + v20);
      *v26 = v23;
      v26[1] = v24;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21E90B5AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B48);
  v2 = *v0;
  v3 = sub_21E92A9B8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v24[1] = v22)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = (*(v2 + 56) + v17);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(v4 + 48) + v17;
      *v23 = v19;
      *(v23 + 8) = v18;
      v24 = (*(v4 + 56) + v17);
      *v24 = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_21E90B71C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B50);
  v2 = *v0;
  v3 = sub_21E92A9B8();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
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

void *sub_21E90B878()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED78B0);
  v2 = *v0;
  v3 = sub_21E92A9B8();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

id sub_21E90B9DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B18);
  v2 = *v0;
  v3 = sub_21E92A9B8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_21E90BB48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B68);
  v2 = *v0;
  v3 = sub_21E92A9B8();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_21E90BCA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AE0);
  v2 = *v0;
  v3 = sub_21E92A9B8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

size_t sub_21E90BE1C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B28);
  v10 = *(type metadata accessor for ListDebugHUDModel.ChartItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ListDebugHUDModel.ChartItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21E90BFF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_21E90C0E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED71A8);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_21E90C1F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_21E90C2F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21E90C440(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED8530);
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
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_21E90C550(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B40);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_21E90C650(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v53 = a2;
  v62 = type metadata accessor for ListDebugHUDModel.ChartItem(0);
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B20);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  result = MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = a4 >> 1;
  v54 = a3;
  v20 = v19 - a3;
  if (__OFSUB__(v19, a3))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v51 = v16;
  v21 = *v4;
  v22 = *(*v4 + 16);
  v23 = v22 + v20;
  if (__OFADD__(v22, v20))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v21;
  if (result)
  {
    v24 = *(v21 + 24) >> 1;
    if (v24 >= v23)
    {
      goto LABEL_12;
    }

    if (v22 <= v23)
    {
      v25 = v22 + v20;
    }

    else
    {
      v25 = v22;
    }
  }

  else if (v22 <= v23)
  {
    v25 = v22 + v20;
  }

  else
  {
    v25 = v22;
  }

  result = sub_21E8D52B8(result, v25, 1);
  v21 = *v4;
  v24 = *(*v4 + 24) >> 1;
LABEL_12:
  v58 = v9;
  v26 = v21;
  v27 = v24 - *(v21 + 16);
  if (v19 == v54)
  {
    if (v20 <= 0)
    {
      v28 = v54;
      if (v27)
      {
LABEL_15:
        result = swift_unknownObjectRelease();
LABEL_23:
        *v4 = v26;
        return result;
      }

LABEL_21:
      v49 = a1;
      v32 = *(v21 + 16);
      v33 = v59;
      v34 = *(v59 + 56);
      v35 = v62;
      v56 = v59 + 56;
      v57 = v19;
      v55 = v34;
      v34(v18, 1, 1, v62);
      v36 = v51;
      sub_21E8B4BF0(v18, v51, &qword_27CED7B20);
      v60 = *(v33 + 48);
      v61 = v33 + 48;
      if (v60(v36, 1, v35) != 1)
      {
        v50 = v4;
        do
        {
          sub_21E8B4CAC(v36, &qword_27CED7B20);
          v39 = *(v26 + 24);
          if (v32 + 1 > (v39 >> 1))
          {
            sub_21E8D52B8(v39 > 1, v32 + 1, 1);
          }

          v40 = *v4;
          v41 = *(*v4 + 24);
          v42 = *(v59 + 80);
          sub_21E8B4BF0(v18, v13, &qword_27CED7B20);
          v43 = v60(v13, 1, v62);
          v52 = v40;
          if (v43 != 1)
          {
            v44 = v40 + ((v42 + 32) & ~v42);
            if (v32 <= (v41 >> 1))
            {
              v37 = v41 >> 1;
            }

            else
            {
              v37 = v32;
            }

            do
            {
              v47 = v58;
              sub_21E910224(v13, v58, type metadata accessor for ListDebugHUDModel.ChartItem);
              if (v37 == v32)
              {
                sub_21E910358(v47, type metadata accessor for ListDebugHUDModel.ChartItem);
                v32 = v37;
                goto LABEL_26;
              }

              sub_21E8B4CAC(v18, &qword_27CED7B20);
              v48 = *(v59 + 72);
              result = sub_21E910224(v47, v44 + v48 * v32, type metadata accessor for ListDebugHUDModel.ChartItem);
              if (v28 == v57)
              {
                v45 = 1;
                v28 = v57;
              }

              else
              {
                if (v28 < v54 || v28 >= v57)
                {
                  __break(1u);
                  goto LABEL_42;
                }

                sub_21E91028C(v53 + v48 * v28, v18, type metadata accessor for ListDebugHUDModel.ChartItem);
                v45 = 0;
                ++v28;
              }

              v46 = v62;
              v55(v18, v45, 1, v62);
              sub_21E8B4BF0(v18, v13, &qword_27CED7B20);
              ++v32;
            }

            while (v60(v13, 1, v46) != 1);
          }

          sub_21E8B4CAC(v13, &qword_27CED7B20);
          v37 = v32;
LABEL_26:
          v36 = v51;
          v26 = v52;
          *(v52 + 16) = v37;
          sub_21E8B4BF0(v18, v36, &qword_27CED7B20);
          v38 = v60(v36, 1, v62);
          v4 = v50;
        }

        while (v38 != 1);
      }

      sub_21E8B4CAC(v18, &qword_27CED7B20);
      swift_unknownObjectRelease();
      result = sub_21E8B4CAC(v36, &qword_27CED7B20);
      goto LABEL_23;
    }

    goto LABEL_44;
  }

  if (v27 < v20)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  result = swift_arrayInitWithCopy();
  if (v20 <= 0)
  {
LABEL_20:
    v28 = v19;
    if (v20 != v27)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v29 = *(v21 + 16);
  v30 = __OFADD__(v29, v20);
  v31 = v29 + v20;
  if (!v30)
  {
    *(v21 + 16) = v31;
    goto LABEL_20;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_21E90CBD8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21E92AA18();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ListDebugHUDModel.PlotItem(0);
        v6 = sub_21E92A558();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ListDebugHUDModel.PlotItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21E90CFAC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21E90CD04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21E90CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
  v9 = MEMORY[0x28223BE20](v8);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v39 = v18;
    v33 = v19;
    v23 = v18 + v19 * a3;
LABEL_6:
    v37 = v20;
    v38 = a3;
    v35 = v23;
    v36 = v22;
    while (1)
    {
      sub_21E91028C(v23, v17, type metadata accessor for ListDebugHUDModel.PlotItem);
      sub_21E91028C(v20, v13, type metadata accessor for ListDebugHUDModel.PlotItem);
      v24 = *(v8 + 20);
      v25 = *&v17[v24];
      v26 = *&v17[v24 + 8];
      v27 = &v13[v24];
      if (v25 == *v27 && v26 == *(v27 + 1))
      {
        sub_21E910358(v13, type metadata accessor for ListDebugHUDModel.PlotItem);
        result = sub_21E910358(v17, type metadata accessor for ListDebugHUDModel.PlotItem);
LABEL_5:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v22 = v36 - 1;
        v23 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_21E92AA58();
      sub_21E910358(v13, type metadata accessor for ListDebugHUDModel.PlotItem);
      result = sub_21E910358(v17, type metadata accessor for ListDebugHUDModel.PlotItem);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v30 = v40;
      sub_21E910224(v23, v40, type metadata accessor for ListDebugHUDModel.PlotItem);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21E910224(v30, v20, type metadata accessor for ListDebugHUDModel.PlotItem);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21E90CFAC(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v132 = a1;
  v8 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v137 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v144 = &v125 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v145 = &v125 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v143 = &v125 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v142 = (&v125 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v131 = &v125 - v22;
  result = MEMORY[0x28223BE20](v21);
  v130 = &v125 - v25;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_111:
    v29 = *v132;
    if (!*v132)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_143:
      result = sub_21E90E080(v28);
      v28 = result;
    }

    v148 = v28;
    v120 = *(v28 + 16);
    if (v120 >= 2)
    {
      while (*a3)
      {
        v121 = *(v28 + 16 * v120);
        v122 = v28;
        v123 = *(v28 + 16 * (v120 - 1) + 32);
        v28 = *(v28 + 16 * (v120 - 1) + 40);
        sub_21E90DA40(*a3 + *(v9 + 72) * v121, *a3 + *(v9 + 72) * v123, *a3 + *(v9 + 72) * v28, v29);
        if (v5)
        {
        }

        if (v28 < v121)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_21E90E080(v122);
        }

        if (v120 - 2 >= *(v122 + 2))
        {
          goto LABEL_137;
        }

        v124 = &v122[16 * v120];
        *v124 = v121;
        *(v124 + 1) = v28;
        v148 = v122;
        result = sub_21E90DFF4(v120 - 1);
        v28 = v148;
        v120 = *(v148 + 16);
        if (v120 <= 1)
        {
        }
      }

      goto LABEL_147;
    }
  }

  v146 = v24;
  v126 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v134 = a3;
  v127 = v9;
  v147 = v8;
  while (1)
  {
    v29 = v27 + 1;
    if (v27 + 1 >= v26)
    {
      goto LABEL_37;
    }

    v138 = v26;
    a3 = *a3;
    v30 = *(v9 + 72);
    v140 = v27 + 1;
    v31 = v130;
    sub_21E91028C(a3 + v30 * v29, v130, type metadata accessor for ListDebugHUDModel.PlotItem);
    v133 = v27;
    v141 = v30;
    v29 = v131;
    sub_21E91028C(a3 + v30 * v27, v131, type metadata accessor for ListDebugHUDModel.PlotItem);
    v32 = *(v8 + 20);
    v33 = *(v31 + v32);
    v34 = *(v31 + v32 + 8);
    v35 = (v29 + v32);
    v36 = v33 == *v35 && v34 == v35[1];
    v129 = v5;
    LODWORD(v139) = v36 ? 0 : sub_21E92AA58();
    v128 = v28;
    sub_21E910358(v131, type metadata accessor for ListDebugHUDModel.PlotItem);
    result = sub_21E910358(v130, type metadata accessor for ListDebugHUDModel.PlotItem);
    v37 = v133 + 2;
    v38 = v140;
    v39 = v141 * (v133 + 2);
    v40 = a3 + v39;
    v41 = v141 * v140;
    v42 = a3 + v141 * v140;
    do
    {
      v9 = v37;
      v28 = v38;
      v44 = v41;
      v5 = v39;
      if (v37 >= v138)
      {
        break;
      }

      a3 = v142;
      sub_21E91028C(v40, v142, type metadata accessor for ListDebugHUDModel.PlotItem);
      v45 = v143;
      sub_21E91028C(v42, v143, type metadata accessor for ListDebugHUDModel.PlotItem);
      v46 = *(v147 + 20);
      v47 = *(a3 + v46);
      v48 = *(a3 + v46 + 8);
      v49 = (v45 + v46);
      v50 = v47 == *v49 && v48 == v49[1];
      v43 = v50 ? 0 : sub_21E92AA58();
      v29 = type metadata accessor for ListDebugHUDModel.PlotItem;
      sub_21E910358(v143, type metadata accessor for ListDebugHUDModel.PlotItem);
      result = sub_21E910358(v142, type metadata accessor for ListDebugHUDModel.PlotItem);
      v37 = v9 + 1;
      v40 += v141;
      v42 += v141;
      v38 = v28 + 1;
      v41 = v44 + v141;
      v39 = v5 + v141;
    }

    while (((v139 ^ v43) & 1) == 0);
    if (v139)
    {
      v51 = v133;
      if (v9 < v133)
      {
        goto LABEL_140;
      }

      if (v133 >= v9)
      {
        v29 = v9;
        v28 = v128;
        v5 = v129;
        a3 = v134;
        v9 = v127;
        v8 = v147;
        v27 = v133;
        goto LABEL_37;
      }

      v52 = v133 * v141;
      v8 = v147;
      do
      {
        if (v51 != v28)
        {
          v54 = *v134;
          if (!*v134)
          {
            goto LABEL_146;
          }

          sub_21E910224(v54 + v52, v137, type metadata accessor for ListDebugHUDModel.PlotItem);
          if (v52 < v44 || v54 + v52 >= (v54 + v5))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v52 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_21E910224(v137, v54 + v44, type metadata accessor for ListDebugHUDModel.PlotItem);
          v8 = v147;
        }

        ++v51;
        v44 -= v141;
        v5 -= v141;
        v52 += v141;
      }

      while (v51 < v28--);
      v29 = v9;
      v28 = v128;
      v5 = v129;
      a3 = v134;
      v9 = v127;
    }

    else
    {
      v29 = v9;
      v28 = v128;
      v5 = v129;
      a3 = v134;
      v9 = v127;
      v8 = v147;
    }

    v27 = v133;
LABEL_37:
    v55 = a3[1];
    if (v29 < v55)
    {
      if (__OFSUB__(v29, v27))
      {
        goto LABEL_139;
      }

      if (v29 - v27 < v126)
      {
        v56 = v27 + v126;
        if (__OFADD__(v27, v126))
        {
          goto LABEL_141;
        }

        if (v56 >= v55)
        {
          v56 = a3[1];
        }

        if (v56 < v27)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v29 != v56)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v29 < v27)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21E90E178(0, *(v28 + 16) + 1, 1, v28);
      v28 = result;
    }

    v75 = *(v28 + 16);
    v74 = *(v28 + 24);
    v76 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      result = sub_21E90E178((v74 > 1), v75 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 16) = v76;
    v77 = v28 + 16 * v75;
    *(v77 + 32) = v27;
    *(v77 + 40) = v29;
    v140 = v29;
    v29 = *v132;
    if (!*v132)
    {
      goto LABEL_148;
    }

    if (v75)
    {
      while (1)
      {
        v78 = v76 - 1;
        if (v76 >= 4)
        {
          break;
        }

        if (v76 == 3)
        {
          v79 = *(v28 + 32);
          v80 = *(v28 + 40);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_80:
          if (v82)
          {
            goto LABEL_127;
          }

          v95 = (v28 + 16 * v76);
          v97 = *v95;
          v96 = v95[1];
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_130;
          }

          v101 = (v28 + 32 + 16 * v78);
          v103 = *v101;
          v102 = v101[1];
          v89 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v89)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v99, v104))
          {
            goto LABEL_134;
          }

          if (v99 + v104 >= v81)
          {
            if (v81 < v104)
            {
              v78 = v76 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v105 = (v28 + 16 * v76);
        v107 = *v105;
        v106 = v105[1];
        v89 = __OFSUB__(v106, v107);
        v99 = v106 - v107;
        v100 = v89;
LABEL_94:
        if (v100)
        {
          goto LABEL_129;
        }

        v108 = v28 + 16 * v78;
        v110 = *(v108 + 32);
        v109 = *(v108 + 40);
        v89 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v89)
        {
          goto LABEL_132;
        }

        if (v111 < v99)
        {
          goto LABEL_3;
        }

LABEL_101:
        v116 = v78 - 1;
        if (v78 - 1 >= v76)
        {
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
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v117 = *(v28 + 32 + 16 * v116);
        v118 = *(v28 + 32 + 16 * v78 + 8);
        sub_21E90DA40(*a3 + *(v9 + 72) * v117, *a3 + *(v9 + 72) * *(v28 + 32 + 16 * v78), *a3 + *(v9 + 72) * v118, v29);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_21E90E080(v28);
        }

        if (v116 >= *(v28 + 16))
        {
          goto LABEL_124;
        }

        v119 = v28 + 16 * v116;
        *(v119 + 32) = v117;
        *(v119 + 40) = v118;
        v148 = v28;
        result = sub_21E90DFF4(v78);
        v28 = v148;
        v76 = *(v148 + 16);
        if (v76 <= 1)
        {
          goto LABEL_3;
        }
      }

      v83 = v28 + 32 + 16 * v76;
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_125;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_126;
      }

      v90 = (v28 + 16 * v76);
      v92 = *v90;
      v91 = v90[1];
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_128;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_131;
      }

      if (v94 >= v86)
      {
        v112 = (v28 + 32 + 16 * v78);
        v114 = *v112;
        v113 = v112[1];
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_135;
        }

        if (v81 < v115)
        {
          v78 = v76 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v26 = a3[1];
    v27 = v140;
    v8 = v147;
    if (v140 >= v26)
    {
      goto LABEL_111;
    }
  }

  v128 = v28;
  v129 = v5;
  v57 = *a3;
  v58 = *(v9 + 72);
  v59 = *a3 + v58 * (v29 - 1);
  v60 = -v58;
  v133 = v27;
  v61 = v27 - v29;
  v135 = v58;
  v136 = v56;
  v62 = v57 + v29 * v58;
  v63 = v145;
  while (2)
  {
    v139 = v61;
    v140 = v29;
    v138 = v62;
    v64 = v62;
    v141 = v59;
LABEL_49:
    v65 = v146;
    sub_21E91028C(v64, v146, type metadata accessor for ListDebugHUDModel.PlotItem);
    sub_21E91028C(v59, v63, type metadata accessor for ListDebugHUDModel.PlotItem);
    v66 = *(v8 + 20);
    v67 = *(v65 + v66);
    v68 = *(v65 + v66 + 8);
    v69 = (v63 + v66);
    if (v67 == *v69 && v68 == v69[1])
    {
      sub_21E910358(v63, type metadata accessor for ListDebugHUDModel.PlotItem);
      sub_21E910358(v65, type metadata accessor for ListDebugHUDModel.PlotItem);
LABEL_47:
      v29 = v140 + 1;
      v59 = v141 + v135;
      v61 = v139 - 1;
      v62 = v138 + v135;
      if (v140 + 1 != v136)
      {
        continue;
      }

      v29 = v136;
      v28 = v128;
      v5 = v129;
      v27 = v133;
      a3 = v134;
      v9 = v127;
      goto LABEL_60;
    }

    break;
  }

  v71 = sub_21E92AA58();
  sub_21E910358(v63, type metadata accessor for ListDebugHUDModel.PlotItem);
  result = sub_21E910358(v65, type metadata accessor for ListDebugHUDModel.PlotItem);
  if ((v71 & 1) == 0)
  {
    v8 = v147;
    goto LABEL_47;
  }

  v8 = v147;
  if (v57)
  {
    v72 = v144;
    sub_21E910224(v64, v144, type metadata accessor for ListDebugHUDModel.PlotItem);
    swift_arrayInitWithTakeFrontToBack();
    sub_21E910224(v72, v59, type metadata accessor for ListDebugHUDModel.PlotItem);
    v59 += v60;
    v64 += v60;
    v73 = __CFADD__(v61++, 1);
    v63 = v145;
    if (v73)
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_21E90DA40(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = a4;
  v56 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
  v7 = MEMORY[0x28223BE20](v56);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = &v49 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  result = MEMORY[0x28223BE20](v11);
  v16 = &v49 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_72;
  }

  v20 = (a2 - a1) / v18;
  v60 = a1;
  v59 = v57;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (v57 < a2 || a2 + v22 <= v57)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v57 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = v57 + v22;
    if (v22 >= 1)
    {
      v33 = -v18;
      v34 = v57 + v22;
      do
      {
        v50 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v52 = v35;
        v53 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v60 = v35;
            v58 = v50;
            goto LABEL_69;
          }

          v37 = a3;
          v51 = v32;
          v38 = v33;
          v39 = v34 + v33;
          v40 = v34 + v33;
          v41 = v54;
          sub_21E91028C(v40, v54, type metadata accessor for ListDebugHUDModel.PlotItem);
          v42 = v55;
          sub_21E91028C(v36, v55, type metadata accessor for ListDebugHUDModel.PlotItem);
          v43 = *(v56 + 20);
          v44 = *(v41 + v43);
          v45 = *(v41 + v43 + 8);
          v46 = (v42 + v43);
          v47 = v44 == *v46 && v45 == v46[1];
          v48 = v47 ? 0 : sub_21E92AA58();
          v33 = v38;
          a3 = v37 + v38;
          sub_21E910358(v55, type metadata accessor for ListDebugHUDModel.PlotItem);
          sub_21E910358(v54, type metadata accessor for ListDebugHUDModel.PlotItem);
          if (v48)
          {
            break;
          }

          v32 = v39;
          v36 = v53;
          if (v37 < v34 || a3 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v37 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v34 = v39;
          v35 = v52;
          if (v39 <= v57)
          {
            a2 = v52;
            goto LABEL_68;
          }
        }

        a2 = v53;
        if (v37 < v52 || a3 >= v52)
        {
          swift_arrayInitWithTakeFrontToBack();
          v32 = v51;
        }

        else
        {
          v32 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v34 > v57);
    }

LABEL_68:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v21 = v20 * v18;
    if (v57 < a1 || a1 + v21 <= v57)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v57 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v57 + v21;
    v58 = v57 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      while (1)
      {
        sub_21E91028C(a2, v16, type metadata accessor for ListDebugHUDModel.PlotItem);
        sub_21E91028C(v57, v13, type metadata accessor for ListDebugHUDModel.PlotItem);
        v25 = *(v56 + 20);
        v26 = *&v16[v25];
        v27 = *&v16[v25 + 8];
        v28 = &v13[v25];
        if (v26 == *v28 && v27 == *(v28 + 1))
        {
          break;
        }

        v30 = sub_21E92AA58();
        sub_21E910358(v13, type metadata accessor for ListDebugHUDModel.PlotItem);
        sub_21E910358(v16, type metadata accessor for ListDebugHUDModel.PlotItem);
        if ((v30 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < a2 || a1 >= a2 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v18;
LABEL_38:
        a1 += v18;
        v60 = a1;
        if (v57 >= v23 || a2 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_21E910358(v13, type metadata accessor for ListDebugHUDModel.PlotItem);
      sub_21E910358(v16, type metadata accessor for ListDebugHUDModel.PlotItem);
LABEL_30:
      v31 = v57 + v18;
      if (a1 < v57 || a1 >= v31)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v57)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v59 = v31;
      v57 = v31;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_21E90E094(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_21E90DFF4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21E90E080(v3);
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

uint64_t sub_21E90E094(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ListDebugHUDModel.PlotItem(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_21E90E178(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AC8);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_21E90E27C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21E90E3D4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_21E795DB0(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

double sub_21E90E508()
{
  if (qword_280D047F8 != -1)
  {
    swift_once();
  }

  v0 = qword_280D04800;
  if (!qword_280D04800)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  v1 = v0;
  sub_21E9297A8();

  v2 = *&v1[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudCenter];
  swift_getKeyPath();
  sub_21E9297A8();

  v3 = v2 - *&v1[OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudSize] * 0.5;
  swift_getKeyPath();
  sub_21E9297A8();

  swift_getKeyPath();
  sub_21E9297A8();

  swift_getKeyPath();
  sub_21E9297A8();

  return v3;
}

unint64_t sub_21E90E734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED71A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B30);
    v7 = sub_21E92A9E8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21E8B4BF0(v9, v5, &qword_27CED71A0);
      result = sub_21E8F691C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21E929878();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21E90E91C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED78B0);
    v3 = sub_21E92A9E8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_21E8F68D8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21E90EA14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B50);
    v3 = sub_21E92A9E8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_21E8F68D8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21E90EB04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AE8);
    v3 = sub_21E92A9E8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21E795DB0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21E90EC08()
{
  v1 = v0;
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  v2 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__scrollViewObservers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21E92A828())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D64A50](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_21E9296E8();

      ++v5;
      if (v8 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  swift_getKeyPath();
  sub_21E9297A8();

  swift_getKeyPath();
  sub_21E9297C8();

  *(v1 + v2) = MEMORY[0x277D84F90];

  swift_getKeyPath();
  sub_21E9297B8();
}

unint64_t sub_21E90EE4C()
{
  result = qword_280D03E40;
  if (!qword_280D03E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D03E40);
  }

  return result;
}

uint64_t sub_21E90EEF8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItemIndexByLabel) = *(v0 + 24);
}

void sub_21E90EF60()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__notificationCount;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

__n128 sub_21E90EF80()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudCenter) = result;
  return result;
}

__n128 sub_21E90EF98()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__hudSize) = result;
  return result;
}

id keypath_get_142Tm@<X0>(id *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*a1 *a2];
  *a3 = v5;
  a3[1] = v6;
  return result;
}

id keypath_get_158Tm@<X0>(id *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*a1 *a2];
  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

uint64_t objectdestroy_147Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E90F11C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for ListDebugHUDModel.ChartItem(0);
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D047F8 != -1)
  {
    swift_once();
  }

  v10 = qword_280D04800;
  if (qword_280D04800)
  {
    v27 = v7;
    swift_getKeyPath();
    v30 = v10;
    sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
    v11 = v10;
    sub_21E9297A8();

    v12 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__chartItems;
    swift_beginAccess();
    v13 = *&v11[v12];

    if (*(v13 + 16))
    {
      v14 = sub_21E795DB0(a1, a2);
      if (v15)
      {
        v16 = *(*(v13 + 56) + 8 * v14);
      }

      else
      {
        v16 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v7 = v27;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = CACurrentMediaTime();
  sub_21E929768();
  v18 = &v9[v6[5]];
  *v18 = a1;
  v18[1] = a2;
  *&v9[v6[6]] = v17;
  *&v9[v6[7]] = a3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_21E9244F8(0, v16[2] + 1, 1, v16);
  }

  v20 = v16[2];
  v19 = v16[3];
  if (v20 >= v19 >> 1)
  {
    v16 = sub_21E9244F8(v19 > 1, v20 + 1, 1, v16);
  }

  v16[2] = v20 + 1;
  sub_21E910224(v9, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, type metadata accessor for ListDebugHUDModel.ChartItem);
  v21 = sub_21E8FD898(1000, v16);
  v22 = qword_280D04800;
  if (!qword_280D04800)
  {
  }

  v27 = v21;
  swift_getKeyPath();
  v29 = v22;
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);

  v23 = v22;
  sub_21E9297A8();

  v29 = v23;
  swift_getKeyPath();
  sub_21E9297C8();

  v24 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__chartItems;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *&v23[v24];
  *&v23[v24] = 0x8000000000000000;
  sub_21E8F7D30(v27, a1, a2, isUniquelyReferenced_nonNull_native);

  *&v23[v24] = v28;
  swift_endAccess();
  v29 = v23;
  swift_getKeyPath();
  sub_21E9297B8();
}

size_t sub_21E90F574(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[3] = a4;
  v27[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (qword_280D047F8 != -1)
  {
    swift_once();
  }

  if (!qword_280D04800)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  v10 = qword_280D04800;
  v11 = sub_21E795604(a2, a3);
  sub_21E795EE0(v27, v26);
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  v23[0] = v10;
  swift_getKeyPath();
  sub_21E9297C8();

  v12 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v13 = *&v10[v12];
  result = swift_isUniquelyReferenced_nonNull_native();
  *&v10[v12] = v13;
  if (result)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_21E924DE0(v13);
  v13 = result;
  *&v10[v12] = result;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v11 < v13[2])
  {
    v15 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
    v16 = v13 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)) + *(*(v15 - 8) + 72) * v11;
    sub_21E8B4BF0(v26, v23, &qword_27CED7AF8);
    v17 = v24;
    if (v24)
    {
      v18 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v19 = (*(v18 + 16))(v17, v18);
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
    }

    else
    {
      sub_21E8B4CAC(v23, &qword_27CED7AF8);
      v21 = 0xE500000000000000;
      v19 = 0x3E6C696E3CLL;
    }

    v22 = (v16 + *(v15 + 24));
    *v22 = v19;
    v22[1] = v21;
    sub_21E8B4CAC(v26, &qword_27CED7AF8);
    *&v10[v12] = v13;
    swift_endAccess();

    v23[0] = v10;
    swift_getKeyPath();
    sub_21E9297B8();

    return __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

LABEL_14:
  __break(1u);
  return result;
}

double sub_21E90F8D0@<D0>(uint64_t a1@<X8>)
{
  sub_21E8D9944();
  sub_21E8D9C64();
  sub_21E8D9F7C();
  sub_21E8DA388();
  sub_21E8DA794();
  sub_21E8DABA0();
  sub_21E8DAFAC();
  sub_21E92A1A8();
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *a1 = v3;
  *(a1 + 16) = v4;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

void sub_21E90FA08(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AF0);
  sub_21E929728();
  sub_21E929718();
  v8 = BYTE1(v28);
  if ((v31 & 0x100) != 0)
  {
    goto LABEL_3;
  }

  if ((v28 & 0x100) != 0)
  {
    goto LABEL_6;
  }

  v8 = v28;
  if (v31)
  {
LABEL_3:
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else if ((v28 & 1) == 0 && *&v29 == v26[0] && *(&v29 + 1) == v26[1] && *&v30 == v26[2] && *(&v30 + 1) == *&v27)
  {
    goto LABEL_7;
  }

LABEL_6:
  sub_21E929718();
  if ((v31 & 0x100) != 0)
  {
LABEL_7:

    return;
  }

  v25 = v30;
  v9 = sub_21E795604(a3, a4);
  v10 = 0;
  if (v31)
  {
    v11 = 0;
    v12 = 0;
    *(&v29 + 1) = 0;
    *&v30 = 0;
  }

  else
  {
    type metadata accessor for UIEdgeInsets(0);
    v11 = v13;
    v12 = sub_21E795D68(&unk_280D03EB8, type metadata accessor for UIEdgeInsets);
    v10 = swift_allocObject();
    *(v10 + 16) = v29;
    *(v10 + 32) = v25;
  }

  *&v29 = v10;
  *(&v30 + 1) = v11;
  v31 = v12;
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  *&v26[0] = v7;
  swift_getKeyPath();
  sub_21E9297C8();

  v14 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v15 = *&v7[v14];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v7[v14] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = sub_21E924DE0(v15);
  *&v7[v14] = v15;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (v9 >= v15[2])
  {
LABEL_28:
    __break(1u);
    return;
  }

  v17 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
  v18 = v15 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v9;
  sub_21E8B4BF0(&v29, v26, &qword_27CED7AF8);
  v19 = v27;
  if (*&v27 == 0.0)
  {
    sub_21E8B4CAC(v26, &qword_27CED7AF8);
    v23 = 0xE500000000000000;
    v21 = 0x3E6C696E3CLL;
  }

  else
  {
    v20 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v21 = (*(v20 + 16))(v19, v20);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  v24 = (v18 + *(v17 + 24));
  *v24 = v21;
  v24[1] = v23;
  *&v7[v14] = v15;
  swift_endAccess();

  *&v26[0] = v7;
  swift_getKeyPath();
  sub_21E9297B8();

  sub_21E8B4CAC(&v29, &qword_27CED7AF8);
}

void sub_21E90FE34(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B08);
  sub_21E929728();
  sub_21E929718();
  v8 = v27;
  if ((v31 & 0x100) != 0)
  {
    goto LABEL_3;
  }

  if (v27)
  {
    goto LABEL_6;
  }

  v8 = v26;
  if (v31)
  {
LABEL_3:
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else if ((v26 & 1) == 0 && *&v30 == v25[0] && *(&v30 + 1) == v25[1])
  {
    goto LABEL_7;
  }

LABEL_6:
  sub_21E929718();
  if ((v31 & 0x100) != 0)
  {
LABEL_7:

    return;
  }

  v9 = sub_21E795604(a3, a4);
  if (v31)
  {
    v10 = 0;
    v11 = 0;
    v31 = 0;
    v12 = 0uLL;
  }

  else
  {
    type metadata accessor for CGSize(0);
    v10 = v13;
    v11 = sub_21E795D68(&unk_280D03C60, type metadata accessor for CGSize);
    v12 = v30;
  }

  v30 = v12;
  v32 = v10;
  v33 = v11;
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  *&v25[0] = v7;
  swift_getKeyPath();
  sub_21E9297C8();

  v14 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v15 = *&v7[v14];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v7[v14] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = sub_21E924DE0(v15);
  *&v7[v14] = v15;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v9 >= v15[2])
  {
LABEL_26:
    __break(1u);
    return;
  }

  v17 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
  v18 = v15 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v9;
  sub_21E8B4BF0(&v30, v25, &qword_27CED7AF8);
  v19 = v28;
  if (v28)
  {
    v20 = v29;
    __swift_project_boxed_opaque_existential_1(v25, v28);
    v21 = (*(v20 + 16))(v19, v20);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    sub_21E8B4CAC(v25, &qword_27CED7AF8);
    v23 = 0xE500000000000000;
    v21 = 0x3E6C696E3CLL;
  }

  v24 = (v18 + *(v17 + 24));
  *v24 = v21;
  v24[1] = v23;
  *&v7[v14] = v15;
  swift_endAccess();

  *&v25[0] = v7;
  swift_getKeyPath();
  sub_21E9297B8();

  sub_21E8B4CAC(&v30, &qword_27CED7AF8);
}

uint64_t sub_21E910224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E91028C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E9102F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListDebugHUDModel.ChartItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E910358(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21E9103E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21E910430(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t objectdestroy_205Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_21E910500()
{
  result = qword_27CED7C18;
  if (!qword_27CED7C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7BA8);
    sub_21E91058C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7C18);
  }

  return result;
}

unint64_t sub_21E91058C()
{
  result = qword_27CED7C20;
  if (!qword_27CED7C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7BF8);
    sub_21E910644();
    sub_21E8D919C(&qword_27CED7C38, &qword_27CED7C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7C20);
  }

  return result;
}

unint64_t sub_21E910644()
{
  result = qword_27CED7C28;
  if (!qword_27CED7C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7BB0);
    sub_21E8D919C(&qword_27CED7C30, &qword_27CED7BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7C28);
  }

  return result;
}

void sub_21E9106FC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__isDraggingHUD);
  *(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__isDraggingHUD) = *(v0 + 24);
  sub_21E8FD1B0(v2);
}

unint64_t sub_21E910750()
{
  result = qword_27CED7CD8;
  if (!qword_27CED7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7CD8);
  }

  return result;
}

unint64_t sub_21E9107AC()
{
  result = qword_27CED7CE8;
  if (!qword_27CED7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7CE8);
  }

  return result;
}

unint64_t sub_21E910808()
{
  result = qword_27CED7D00;
  if (!qword_27CED7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7D00);
  }

  return result;
}

unint64_t sub_21E91085C()
{
  result = qword_27CED7D20;
  if (!qword_27CED7D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7CC8);
    type metadata accessor for ListDebugHUDModel(255);
    sub_21E910750();
    sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7D20);
  }

  return result;
}

unint64_t sub_21E910970()
{
  result = qword_27CED7D28;
  if (!qword_27CED7D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7CC0);
    type metadata accessor for ListDebugHUDModel(255);
    sub_21E9107AC();
    sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7D28);
  }

  return result;
}

unint64_t sub_21E910A84()
{
  result = qword_27CED7D40[0];
  if (!qword_27CED7D40[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7CB0);
    sub_21E8D919C(&qword_27CED7CF8, &qword_27CED7CF0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CED7D40);
  }

  return result;
}

void sub_21E910B78(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_21E910B9C()
{
  sub_21E911034();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21E910C24(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      v16 = v15 - 1;
      if (v16 < 0)
      {
        v16 = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21E910DBC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = a2 - 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2;
  }
}

void sub_21E911034()
{
  if (!qword_27CED7DC8)
  {
    v0 = sub_21E92A1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CED7DC8);
    }
  }
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_21E9110B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_21E9110F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21E911164(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21E9111AC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_21E911200()
{
  result = qword_27CED7DD0;
  if (!qword_27CED7DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7C50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7BA0);
    sub_21E910500();
    sub_21E8D919C(&qword_27CED7C48, &qword_27CED7BA0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7DD0);
  }

  return result;
}

id sub_21E911410(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t objectdestroy_239Tm()
{
  sub_21E910B78(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_21E911464(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21E911474(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_21E911494()
{
  result = qword_27CED7E68;
  if (!qword_27CED7E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7E60);
    sub_21E929D58();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7E68);
  }

  return result;
}

unint64_t sub_21E91155C()
{
  result = qword_280D03EF8;
  if (!qword_280D03EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D03EF8);
  }

  return result;
}

uint64_t sub_21E911630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7F20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_276Tm()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ListDebugHUD.TabContainer() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[11], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_21E91187C()
{
  result = qword_27CED7FF8;
  if (!qword_27CED7FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED8000);
    sub_21E929D58();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7FF8);
  }

  return result;
}

uint64_t sub_21E911958(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E911A04()
{
  result = qword_27CED8038;
  if (!qword_27CED8038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED8040);
    sub_21E929D28();
    swift_getOpaqueTypeConformance2();
    sub_21E929D58();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED8038);
  }

  return result;
}

uint64_t sub_21E911B0C(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_21E911B80@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NotificationListLayoutValidator.LayoutState(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21E904C24(a1, v6, a2);
}

unint64_t sub_21E911C00()
{
  result = qword_27CED80A0;
  if (!qword_27CED80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED80A0);
  }

  return result;
}

void sub_21E912280(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21E92A828())
  {
    v5 = 0;
    v21 = v3 & 0xFFFFFFFFFFFFFF8;
    v22 = v3 & 0xC000000000000001;
    v20 = v3;
    while (1)
    {
      if (v22)
      {
        v6 = MEMORY[0x223D64A50](v5, v3);
      }

      else
      {
        if (v5 >= *(v21 + 16))
        {
          goto LABEL_13;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 settings];
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      v28 = sub_21E914058;
      v29 = v10;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_21E792C28;
      v27 = &block_descriptor_140;
      v11 = _Block_copy(&aBlock);
      v12 = v7;

      v13 = [v12 name];
      v14 = sub_21E92A458();
      v16 = v15;

      v17 = a1(v14, v16);
      v19 = v18;

      if (v17)
      {
        v28 = v17;
        v29 = v19;
        aBlock = MEMORY[0x277D85DD0];
        v25 = 1107296256;
        v26 = sub_21E799760;
        v27 = &block_descriptor_143_0;
        v17 = _Block_copy(&aBlock);
      }

      v3 = v20;
      [objc_opt_self() _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v17);
      _Block_release(v11);

      ++v5;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_21E912518(void *a1)
{
  v2 = objc_opt_self();
  v3 = [a1 animationBlock];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21E79E1A4;
  *(v5 + 24) = v4;
  v8[4] = sub_21E8C073C;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21E799D8C;
  v8[3] = &block_descriptor_153;
  v6 = _Block_copy(v8);

  [v2 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v6);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E912698(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_21E914050, v4);
}

uint64_t (*sub_21E91272C(uint64_t a1, uint64_t a2, uint64_t a3))(char, char)
{
  if (a2)
  {
    v4 = sub_21E92A428();
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(a3 + 16))(a3, v4);

  if (!v5)
  {
    return 0;
  }

  *(swift_allocObject() + 16) = v5;
  return sub_21E914104;
}

void sub_21E912A74(uint64_t a1, uint64_t (*a2)(), uint64_t a3, uint64_t (*a4)(), uint64_t a5)
{
  v11 = objc_opt_self();
  v21 = a2;
  v22 = a3;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_21E792C28;
  v20 = &block_descriptor_95_0;
  v12 = _Block_copy(&v17);

  v13 = [v11 nc:v12 applyHighFrameRate:?];
  _Block_release(v12);
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v15 = [v5 animator];
    v21 = sub_21E79E1A4;
    v22 = v14;
    v17 = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_21E792C28;
    v20 = &block_descriptor_102;
    v16 = _Block_copy(&v17);

    if (a4)
    {
      v21 = a4;
      v22 = a5;
      v17 = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = sub_21E799760;
      v20 = &block_descriptor_105;
      a4 = _Block_copy(&v17);
    }

    [v15 animateByRetargetingType:a1 animations:v16 completion:a4];
    _Block_release(a4);
    _Block_release(v16);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_21E912DB8(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5, uint64_t (*a6)(), uint64_t a7)
{
  v13 = objc_opt_self();
  v25 = a4;
  v26 = a5;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_21E792C28;
  v24 = &block_descriptor_74;
  v14 = _Block_copy(&aBlock);

  v15 = [v13 nc:v14 applyHighFrameRate:?];
  _Block_release(v14);
  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v17 = [v7 animator];
    v25 = sub_21E79E1A4;
    v26 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_21E792C28;
    v24 = &block_descriptor_81;
    v18 = _Block_copy(&aBlock);

    if (a6)
    {
      v25 = a6;
      v26 = a7;
      aBlock = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v23 = sub_21E799760;
      v24 = &block_descriptor_84;
      a6 = _Block_copy(&aBlock);
    }

    [v17 animateUsingSpringBehavior:a1 tracking:a2 & 1 type:a3 animations:v18 completion:{a6, a1, a3}];
    _Block_release(a6);
    _Block_release(v18);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_21E913130(unint64_t a1, uint64_t (*a2)(), uint64_t a3)
{
  v21 = a3;
  v3 = a1;
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:
    v18 = [v23 animator];
    type metadata accessor for NCDecomposedAnimation(v18);
    v19 = sub_21E92A518();
    if (a2)
    {
      v32 = a2;
      v33 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_21E799760;
      v31 = &block_descriptor_42_1;
      v20 = _Block_copy(&aBlock);
    }

    else
    {
      v20 = 0;
    }

    [v18 animateWithDecomposedAnimations:v19 completion:v20];
    _Block_release(v20);
    swift_unknownObjectRelease();

    return;
  }

LABEL_15:
  v4 = sub_21E92A828();
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  v5 = 0;
  v26 = v3 & 0xFFFFFFFFFFFFFF8;
  v27 = v3 & 0xC000000000000001;
  v25 = v3;
  while (1)
  {
    if (v27)
    {
      v6 = MEMORY[0x223D64A50](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v5 >= *(v26 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(v3 + 8 * v5 + 32);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    v8 = v4;
    v9 = v6;
    v10 = [v6 animationBlock];
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v12 = objc_opt_self();
    v32 = sub_21E792C74;
    v33 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_21E792C28;
    v31 = &block_descriptor_8;
    v13 = _Block_copy(&aBlock);

    v14 = [v12 nc:v13 applyHighFrameRate:?];
    _Block_release(v13);
    if (!v14)
    {
      break;
    }

    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v32 = sub_21E79E1A4;
    v33 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_21E792C28;
    v31 = &block_descriptor_39_2;
    v16 = _Block_copy(&aBlock);

    [v9 setAnimationBlock_];
    _Block_release(v16);

    ++v5;
    v4 = v8;
    v17 = v7 == v8;
    v3 = v25;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

id _sSo16NCSimpleAnimatorC22UserNotificationsUIKitEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_21E913A70(uint64_t (*a1)(uint64_t, char), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v16 = a1;
  v17 = a2;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_21E792C28;
  v15 = &block_descriptor_198;
  v9 = _Block_copy(&v12);

  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v16 = sub_21E914100;
  v17 = v10;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_21E799760;
  v15 = &block_descriptor_204;
  v11 = _Block_copy(&v12);
  sub_21E792C10(a3, a4);

  [v8 _animateByRetargetingAnimations_completion_];
  _Block_release(v11);
  _Block_release(v9);
}

void sub_21E913BE8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, char), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_opt_self();
  v20 = a3;
  v21 = a4;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_21E792C28;
  v19 = &block_descriptor_181;
  v13 = _Block_copy(&v16);

  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  v20 = sub_21E914100;
  v21 = v14;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_21E799760;
  v19 = &block_descriptor_187;
  v15 = _Block_copy(&v16);
  sub_21E792C10(a5, a6);

  [v12 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v15);
  _Block_release(v13);
}

void sub_21E913D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v15 = sub_21E914010;
  v16 = v7;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_21E912698;
  v14 = &block_descriptor_122_0;
  v8 = _Block_copy(&v11);

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v15 = sub_21E914018;
  v16 = v9;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_21E799760;
  v14 = &block_descriptor_128_0;
  v10 = _Block_copy(&v11);
  sub_21E792C10(a2, a3);

  [v6 perform:v8 finalCompletion:v10];
  _Block_release(v10);
  _Block_release(v8);
}

void sub_21E913F14(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21E92A828())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223D64A50](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = [v4 animationBlock];
      v7[2]();
      _Block_release(v7);

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_21E914018(uint64_t result, char a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    return v3(result & 1, a2 & 1);
  }

  return result;
}

uint64_t objectdestroy_124Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id NCNotificationListCountIndicatorViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_21E92A428();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

{
  v4 = v3;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___NCNotificationListCountIndicatorViewController_activeDNDModeConfiguration] = 0;
  *&v3[OBJC_IVAR___NCNotificationListCountIndicatorViewController_count] = 0;
  v7 = &v3[OBJC_IVAR___NCNotificationListCountIndicatorViewController_incomingTitle];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR___NCNotificationListCountIndicatorViewController_edgeInsets];
  v9 = *(MEMORY[0x277D768C8] + 16);
  *v8 = *MEMORY[0x277D768C8];
  *(v8 + 1) = v9;
  v10 = &v3[OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v3[OBJC_IVAR___NCNotificationListCountIndicatorViewController_isHidden] = 1;
  v11 = &v3[OBJC_IVAR___NCNotificationListCountIndicatorViewController_displayStyleSettingEnum];
  *v11 = 0;
  v11[8] = 1;
  v12 = OBJC_IVAR___NCNotificationListCountIndicatorViewController_updateUIPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8190);
  swift_allocObject();
  *&v3[v12] = sub_21E929DA8();
  *&v3[OBJC_IVAR___NCNotificationListCountIndicatorViewController_cancellables] = MEMORY[0x277D84FA0];
  if (a2)
  {
    v13 = sub_21E92A428();
  }

  else
  {
    v13 = 0;
  }

  v17.receiver = v4;
  v17.super_class = NCNotificationListCountIndicatorViewController;
  v14 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, v13, a3);

  v15 = v14;
  sub_21E914374();

  return v15;
}

uint64_t sub_21E914374()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8210);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8218);
  v13 = *(v4 - 8);
  v14 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  v15 = *(v0 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_updateUIPublisher);
  v7 = qword_280D03C90;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_21E92A6B8();
  __swift_project_value_buffer(v8, qword_280D03CA0);
  sub_21E796644(0, &qword_280D03E40);
  v9 = sub_21E92A6C8();
  v16 = v9;
  v10 = sub_21E92A698();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8190);
  sub_21E8D919C(&unk_280D03F08, &qword_27CED8190);
  sub_21E915EB0();
  sub_21E929DC8();
  sub_21E915F18(v3);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21E8D919C(&unk_280D03F28, &qword_27CED8218);
  v11 = v14;
  sub_21E929DD8();

  (*(v13 + 8))(v6, v11);
  swift_beginAccess();
  sub_21E929D78();
  swift_endAccess();
}

id NCNotificationListCountIndicatorViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id sub_21E91478C()
{
  v1 = OBJC_IVAR___NCNotificationListCountIndicatorViewController_cancellables;
  swift_beginAccess();
  v17 = v0;
  v2 = *&v0[v1];
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_21E92A818();
    sub_21E929D98();
    sub_21E915E58();
    result = sub_21E92A608();
    v5 = v20;
    v4 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v2;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_21E8FA42C();

      v19.receiver = v17;
      v19.super_class = NCNotificationListCountIndicatorViewController;
      return objc_msgSendSuper2(&v19, sel_dealloc);
    }

    while (1)
    {
      sub_21E929D88();

      v7 = v14;
      v8 = v15;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_21E92A848())
      {
        sub_21E929D98();
        swift_dynamicCast();
        v14 = v7;
        v15 = v8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall NCNotificationListCountIndicatorViewController.viewDidLoad()()
{
  v5.super_class = NCNotificationListCountIndicatorViewController;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  [v0 loadViewIfNeeded];
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setDelegate_];

    [v0 loadViewIfNeeded];
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setAdjustsFontForContentSizeCategory_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall NCNotificationListCountIndicatorViewController.loadView()()
{
  v1 = [objc_allocWithZone(NCNotificationListCountIndicatorView) initWithFrame_];
  [v0 setView_];
}

void sub_21E914D78(id a1)
{
  v3 = *(v1 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_activeDNDModeConfiguration);
  *(v1 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_activeDNDModeConfiguration) = a1;
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    v7 = 0;
    a1 = a1;
    goto LABEL_7;
  }

  v7 = v3;
  if (!a1 || (sub_21E796644(0, &qword_280D03E30), a1 = a1, v4 = v7, v5 = sub_21E92A788(), v4, (v5 & 1) == 0))
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8190);
    sub_21E8D919C(&unk_280D03F18, &qword_27CED8190);
    sub_21E929DB8();

    v6 = v7;
    goto LABEL_8;
  }

  v6 = v4;
LABEL_8:
}

uint64_t sub_21E914F48(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_displayStyleSettingEnum;
  v3 = *(v1 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_displayStyleSettingEnum);
  v4 = *(v1 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_displayStyleSettingEnum + 8);
  if (result == 1)
  {
    *v2 = 1;
    *(v2 + 8) = 0;
    v5 = v3 == 1;
  }

  else
  {
    if (result)
    {
      *v2 = 2;
      *(v2 + 8) = 0;
      if (v3 != 2)
      {
        v4 = 1;
      }

      if (v4 == 1)
      {
        goto LABEL_8;
      }

      return result;
    }

    *v2 = 0;
    *(v2 + 8) = 0;
    v5 = v3 == 0;
  }

  if (!v5)
  {
    LOBYTE(v4) = 1;
  }

  if (v4)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8190);
    sub_21E8D919C(&unk_280D03F18, &qword_27CED8190);
    return sub_21E929DB8();
  }

  return result;
}

uint64_t sub_21E915118(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5 = (v4 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_edgeInsets);
  v6 = *(v4 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_edgeInsets);
  v7 = *(v4 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_edgeInsets + 16);
  *v5 = a1.f64[0];
  v5[1] = a2;
  v5[2] = a3.f64[0];
  v5[3] = a4;
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, a1), vceqq_f64(v7, a3)))) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8190);
    sub_21E8D919C(&unk_280D03F18, &qword_27CED8190);
    return sub_21E929DB8();
  }

  return result;
}

id sub_21E915328(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  [v4 loadViewIfNeeded];
  result = [v4 view];
  if (result)
  {
    v6 = result;
    objc_opt_self();
    v7 = [swift_dynamicCastObjCClassUnconditional() *a3];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21E915470(id result)
{
  v2 = v1[OBJC_IVAR___NCNotificationListCountIndicatorViewController_isHidden];
  v1[OBJC_IVAR___NCNotificationListCountIndicatorViewController_isHidden] = result;
  if (result != 2)
  {
    v3 = result;
    if (v2 == 2 || ((v2 ^ result) & 1) != 0)
    {
      result = [v1 delegate];
      if (result)
      {
        [result notificationListCountIndicatorViewController:v1 didChangeVisibility:(v3 & 1) == 0];

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_21E915514()
{
  v0 = sub_21E92A6B8();
  __swift_allocate_value_buffer(v0, qword_280D03CA0);
  __swift_project_value_buffer(v0, qword_280D03CA0);
  return sub_21E92A6A8();
}

Swift::Void __swiftcall NCNotificationListCountIndicatorViewController.notificationListCountIndicatorViewTapped(_:)(NCNotificationListCountIndicatorView *a1)
{
  v2 = [v1 delegate];
  if (v2)
  {
    [v2 notificationListCountIndicatorViewControllerTapped_];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall NCNotificationListCountIndicatorViewController.notificationListCountIndicatorViewLongPressed(_:presenting:)(NCNotificationListCountIndicatorView *_, UIView *presenting)
{
  v4 = [v2 activeDNDModeConfiguration];
  if (v4)
  {

    v5 = [v2 delegate];
    if (v5)
    {
      [v5 notificationListCountIndicatorViewControllerLongPressed:v2 presentingView:presenting];

      swift_unknownObjectRelease();
    }
  }
}

void sub_21E915790()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21E9157E4();
  }
}

id sub_21E9157E4()
{
  v1 = [v0 activeDNDModeConfiguration];
  if (v1 && (v2 = v1, v3 = [v1 mode], v2, v3))
  {
    v4 = [v3 name];

    v40 = sub_21E92A458();
    v6 = v5;
  }

  else
  {
    v40 = 0;
    v6 = 0;
  }

  v7 = [v0 activeDNDModeConfiguration];
  if (v7 && (v8 = v7, v9 = [v7 mode], v8, v9) && (v10 = objc_msgSend(v9, sel_symbolImageName), v9, v10))
  {
    v38 = sub_21E92A458();
    v12 = v11;
  }

  else
  {
    v38 = 0;
    v12 = 0;
  }

  v13 = &v0[OBJC_IVAR___NCNotificationListCountIndicatorViewController_displayStyleSettingEnum];
  if (v0[OBJC_IVAR___NCNotificationListCountIndicatorViewController_displayStyleSettingEnum + 8])
  {
    v14 = 0;
    v15 = 1;
LABEL_16:
    v39 = v15;
    goto LABEL_17;
  }

  v16 = *v13;
  if (!v6)
  {
    v14 = [v0 count];
    v15 = v16 != 2;
    goto LABEL_16;
  }

  if (v16 == 2)
  {
    v14 = [v0 count];
    v39 = 0;
  }

  else
  {
    v39 = 0;
    v14 = 0;
  }

LABEL_17:
  if (qword_280D03F38 != -1)
  {
    swift_once();
  }

  v17 = sub_21E929A78();
  __swift_project_value_buffer(v17, qword_280D05F40);

  v18 = v0;
  v19 = sub_21E929A58();
  v20 = sub_21E92A648();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = -1;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41 = v23;
    *v22 = 134349570;
    if ((v13[8] & 1) == 0)
    {
      v21 = *v13;
    }

    *(v22 + 4) = v21;

    *(v22 + 12) = 2050;
    *(v22 + 14) = v14;
    *(v22 + 22) = 2082;
    if (v6)
    {
      v24 = v40;
    }

    else
    {
      v24 = 7104878;
    }

    if (v6)
    {
      v25 = v6;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    v26 = sub_21E79841C(v24, v25, &v41);

    *(v22 + 24) = v26;
    _os_log_impl(&dword_21E77E000, v19, v20, "CountIndicatorViewController updating count indicator with displayStyleSettingEnum: %{public}ld; count %{public}ld; title %{public}s", v22, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x223D65FB0](v23, -1, -1);
    MEMORY[0x223D65FB0](v22, -1, -1);
  }

  else
  {
  }

  [v18 loadViewIfNeeded];
  result = [v18 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_48;
  }

  v28 = result;
  objc_opt_self();
  v29 = swift_dynamicCastObjCClassUnconditional();
  if (v6)
  {
    v30 = sub_21E92A428();

    if (v12)
    {
LABEL_33:
      v31 = sub_21E92A428();

      goto LABEL_36;
    }
  }

  else
  {
    v30 = 0;
    if (v12)
    {
      goto LABEL_33;
    }
  }

  v31 = 0;
LABEL_36:
  [v29 updateCount:v14 title:v30 symbolImageName:v31 contentHidden:v39];

  [v18 loadViewIfNeeded];
  result = [v18 view];
  if (!result)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v32 = result;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClassUnconditional();
  v34 = [v18 activeDNDModeConfiguration];
  if (v34 && (v35 = v34, v36 = [v34 mode], v35, v36))
  {

    v37 = 1;
  }

  else
  {
    v37 = 0;
  }

  [v33 setShouldAllowLongPressInteraction_];

  sub_21E915470(v39);
  result = [v18 delegate];
  if (result)
  {
    [result notificationListCountIndicatorViewControllerDidUpdate_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void _sSo46NCNotificationListCountIndicatorViewControllerC22UserNotificationsUIKitE5coderABSgSo7NSCoderC_tcfc_0()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_activeDNDModeConfiguration) = 0;
  *(v0 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_count) = 0;
  v1 = (v0 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_incomingTitle);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_edgeInsets);
  v3 = *(MEMORY[0x277D768C8] + 16);
  *v2 = *MEMORY[0x277D768C8];
  v2[1] = v3;
  v4 = (v0 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame);
  *v4 = 0u;
  v4[1] = 0u;
  *(v0 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_isHidden) = 1;
  v5 = v0 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_displayStyleSettingEnum;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR___NCNotificationListCountIndicatorViewController_updateUIPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8190);
  swift_allocObject();
  *(v0 + v6) = sub_21E929DA8();
  *(v0 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_cancellables) = MEMORY[0x277D84FA0];
  sub_21E92A988();
  __break(1u);
}

unint64_t sub_21E915E58()
{
  result = qword_27CED8208;
  if (!qword_27CED8208)
  {
    sub_21E929D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED8208);
  }

  return result;
}

unint64_t sub_21E915EB0()
{
  result = qword_280D03E50;
  if (!qword_280D03E50)
  {
    sub_21E796644(255, &qword_280D03E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D03E50);
  }

  return result;
}

uint64_t sub_21E915F18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id NCInternalSettingsButtonView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void NCInternalSettingsButtonView.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___NCInternalSettingsButtonView_isDeviceAuthenticated) = 0;
  *(v0 + OBJC_IVAR___NCInternalSettingsButtonView_hostingController) = 0;
  sub_21E92A988();
  __break(1u);
}

CGSize __swiftcall NCInternalSettingsButtonView.sizeThatFits(_:)(CGSize result)
{
  v2 = *(v1 + OBJC_IVAR___NCInternalSettingsButtonView_hostingController);
  if (v2)
  {
    height = result.height;
    width = result.width;
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 sizeThatFits_];
      v8 = v7;
      v10 = v9;

      result.width = v8;
      result.height = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall NCInternalSettingsButtonView.layoutSubviews()()
{
  v9.super_class = NCInternalSettingsButtonView;
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = OBJC_IVAR___NCInternalSettingsButtonView_hostingController;
  v2 = *&v0[OBJC_IVAR___NCInternalSettingsButtonView_hostingController];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = [v2 view];
  if (!v3)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 superview];

  if (v5)
  {
LABEL_4:

    return;
  }

  v6 = [v0 nextResponder];
  if (v6)
  {
    v5 = v6;
    while (1)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        break;
      }

      v8 = [v5 nextResponder];

      v5 = v8;
      if (!v8)
      {
        return;
      }
    }

    [v7 bs:*&v0[v1] addChildViewController:v0 withSuperview:?];
    goto LABEL_4;
  }
}

id sub_21E9164C8()
{
  result = [v0 delegate];
  if (result)
  {
    [result internalSettingsButtonRequestsAuthentication_];

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t type metadata accessor for NCInternalSettingsButtonView()
{
  result = qword_27CED8238;
  if (!qword_27CED8238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CED8238);
  }

  return result;
}

id sub_21E916580()
{
  v1 = v0;
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_21E92A458();
  v6 = v5;

  if (v4 == 0xD000000000000015 && 0x800000021E957880 == v6)
  {

    goto LABEL_9;
  }

  v8 = sub_21E92AA58();

  if (v8)
  {
LABEL_9:
    sub_21E9298E8();
    v9 = sub_21E9298C8();
    goto LABEL_10;
  }

LABEL_7:
  v9 = 0;
LABEL_10:
  *&v1[OBJC_IVAR___NCSummaryServiceGateway_summaryService] = v9;
  v11.receiver = v1;
  v11.super_class = NCSummaryServiceGateway;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_21E9166C8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8250);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  if (qword_280D03F48 != -1)
  {
    swift_once();
  }

  v8 = sub_21E929A78();
  __swift_project_value_buffer(v8, qword_280D03F50);
  v9 = sub_21E929A58();
  v10 = sub_21E92A648();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21E77E000, v9, v10, "SummaryServiceGateway: Donating state dump", v11, 2u);
    MEMORY[0x223D65FB0](v11, -1, -1);
  }

  sub_21E916988(a1, v7);
  if (*(v2 + OBJC_IVAR___NCSummaryServiceGateway_summaryService))
  {
    sub_21E9298D8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21E916988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8258);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8500);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v68 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v61 = &v57 - v15;
  v16 = sub_21E9170CC(a1);
  if (!v16)
  {
    sub_21E918138();
    swift_allocError();
    *v48 = 0;
    *(v48 + 8) = 0;
    *(v48 + 16) = 2;
    return swift_willThrow();
  }

  v17 = v16;
  v59 = a2;
  v18 = sub_21E92A458();
  if (!*(v17 + 16))
  {

    goto LABEL_26;
  }

  v60 = v12;
  v20 = sub_21E795DB0(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_26:

    v49 = sub_21E92A458();
    v51 = v50;
    sub_21E918138();
    swift_allocError();
    *v52 = v49;
    *(v52 + 8) = v51;
    *(v52 + 16) = 0;
    return swift_willThrow();
  }

  sub_21E79872C(*(v17 + 56) + 32 * v20, v70);

  sub_21E8D9170(v70, v71);
  sub_21E79872C(v71, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8268);
  v23 = swift_dynamicCast();
  v25 = v60;
  if ((v23 & 1) == 0)
  {
    v53 = sub_21E92A458();
    v55 = v54;
    sub_21E918138();
    swift_allocError();
    *v56 = v53;
    *(v56 + 8) = v55;
    *(v56 + 16) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(v71);
  }

  result = v72;
  v67 = *(v72 + 16);
  if (!v67)
  {
    v69 = MEMORY[0x277D84F90];
LABEL_30:

    sub_21E929928();
    return __swift_destroy_boxed_opaque_existential_1Tm(v71);
  }

  v27 = 0;
  v64 = (v60 + 56);
  v65 = v72 + 32;
  v63 = (v60 + 48);
  v69 = MEMORY[0x277D84F90];
  v62 = (v60 + 32);
  *&v24 = 138412290;
  v57 = v24;
  v58 = v10;
  v66 = v72;
  while (v27 < *(result + 16))
  {

    sub_21E9173A8(v28, v10);
    if (v4)
    {
      if (qword_280D03F48 != -1)
      {
        swift_once();
      }

      v29 = sub_21E929A78();
      __swift_project_value_buffer(v29, qword_280D03F50);
      v30 = v4;
      v31 = sub_21E929A58();
      v32 = sub_21E92A628();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = v11;
        v35 = v5;
        v36 = swift_slowAlloc();
        *v33 = v57;
        v37 = v4;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v38;
        *v36 = v38;
        _os_log_impl(&dword_21E77E000, v31, v32, "SummaryServiceGateway: Failed to decode section: %@", v33, 0xCu);
        sub_21E8B4CAC(v36, &qword_27CED7360);
        v39 = v36;
        v5 = v35;
        v11 = v34;
        v10 = v58;
        MEMORY[0x223D65FB0](v39, -1, -1);
        v40 = v33;
        v25 = v60;
        MEMORY[0x223D65FB0](v40, -1, -1);
      }

      else
      {
      }

      v4 = 0;
      v41 = 1;
    }

    else
    {
      v41 = 0;
    }

    (*v64)(v10, v41, 1, v11);

    if ((*v63)(v10, 1, v11) == 1)
    {
      sub_21E8B4CAC(v10, &qword_27CED8258);
    }

    else
    {
      v42 = v61;
      v43 = *v62;
      (*v62)(v61, v10, v11);
      v43(v68, v42, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_21E924BB0(0, *(v69 + 2) + 1, 1, v69);
      }

      v45 = *(v69 + 2);
      v44 = *(v69 + 3);
      if (v45 >= v44 >> 1)
      {
        v69 = sub_21E924BB0(v44 > 1, v45 + 1, 1, v69);
      }

      v46 = v68;
      v47 = v69;
      *(v69 + 2) = v45 + 1;
      v43(&v47[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v45], v46, v11);
    }

    ++v27;
    result = v66;
    if (v67 == v27)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for NCSummaryServiceGateway()
{
  result = qword_27CED8248;
  if (!qword_27CED8248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CED8248);
  }

  return result;
}

unint64_t sub_21E9170CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8288);
    v2 = sub_21E92A9E8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_21E91818C(*(a1 + 48) + 40 * v12, v27);
        sub_21E79872C(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_21E91818C(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_21E79872C(v25 + 8, v20);
        sub_21E8B4CAC(v24, &qword_27CED8290);
        v21 = v18;
        sub_21E8D9170(v20, v22);
        v13 = v21;
        sub_21E8D9170(v22, v23);
        sub_21E8D9170(v23, &v21);
        result = sub_21E795DB0(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1Tm(v10);
          result = sub_21E8D9170(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_21E8D9170(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_21E8B4CAC(v24, &qword_27CED8290);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21E9173A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8270);
  v72 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v71 = (v70 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8278);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v70 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8510);
  v77 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v84 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v75 = v70 - v16;
  v17 = sub_21E92A458();
  if (!*(a1 + 16))
  {

    goto LABEL_24;
  }

  v78 = v13;
  v70[0] = v8;
  v70[1] = a2;
  v19 = sub_21E795DB0(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_24:
    v46 = sub_21E92A458();
    v48 = v47;
    sub_21E918138();
    swift_allocError();
    *v49 = v46;
    *(v49 + 8) = v48;
    *(v49 + 16) = 0;
    return swift_willThrow();
  }

  sub_21E79872C(*(a1 + 56) + 32 * v19, v88);
  sub_21E8D9170(v88, v89);
  sub_21E79872C(v89, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8268);
  result = swift_dynamicCast();
  if (!result)
  {
    v50 = sub_21E92A458();
    v52 = v51;
    sub_21E918138();
    swift_allocError();
    *v53 = v50;
    *(v53 + 8) = v52;
    *(v53 + 16) = 1;
    goto LABEL_33;
  }

  v24 = *&v87[0];
  v83 = *(*&v87[0] + 16);
  if (!v83)
  {
    v90 = MEMORY[0x277D84F90];
LABEL_27:

    v54 = sub_21E92A458();
    if (*(a1 + 16))
    {
      v56 = sub_21E795DB0(v54, v55);
      v57 = a1;
      v59 = v58;

      if (v59)
      {
        sub_21E79872C(*(v57 + 56) + 32 * v56, v87);
        sub_21E8D9170(v87, v88);
        sub_21E79872C(v88, v87);
        if (swift_dynamicCast())
        {
          v60 = v86;
          v61 = v71;
          *v71 = v85;
          v61[1] = v60;
          (*(v72 + 104))(v61, *MEMORY[0x277D77F28], v70[0]);
          sub_21E929918();
        }

        else
        {

          v66 = sub_21E92A458();
          v68 = v67;
          sub_21E918138();
          swift_allocError();
          *v69 = v66;
          *(v69 + 8) = v68;
          *(v69 + 16) = 1;
          swift_willThrow();
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v88);
        return __swift_destroy_boxed_opaque_existential_1Tm(v89);
      }
    }

    else
    {
    }

    v62 = sub_21E92A458();
    v64 = v63;
    sub_21E918138();
    swift_allocError();
    *v65 = v62;
    *(v65 + 8) = v64;
    *(v65 + 16) = 0;
LABEL_33:
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(v89);
  }

  v25 = 0;
  v82 = *&v87[0] + 32;
  v80 = (v77 + 48);
  v81 = (v77 + 56);
  v90 = MEMORY[0x277D84F90];
  v79 = (v77 + 32);
  *&v23 = 138412290;
  v73 = v23;
  v26 = v78;
  v76 = *&v87[0];
  v74 = v12;
  while (v25 < *(v24 + 16))
  {

    sub_21E917C04(v27, v12);
    if (v4)
    {
      if (qword_280D03F48 != -1)
      {
        swift_once();
      }

      v28 = sub_21E929A78();
      __swift_project_value_buffer(v28, qword_280D03F50);
      v29 = v4;
      v30 = sub_21E929A58();
      v31 = sub_21E92A628();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = v5;
        v34 = a1;
        v35 = swift_slowAlloc();
        *v32 = v73;
        v36 = v4;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_21E77E000, v30, v31, "SummaryServiceGateway: Failed to decode group: %@", v32, 0xCu);
        sub_21E8B4CAC(v35, &qword_27CED7360);
        v38 = v35;
        a1 = v34;
        v5 = v33;
        v12 = v74;
        MEMORY[0x223D65FB0](v38, -1, -1);
        v39 = v32;
        v24 = v76;
        MEMORY[0x223D65FB0](v39, -1, -1);
      }

      else
      {
      }

      v4 = 0;
      v40 = 1;
      v26 = v78;
    }

    else
    {
      v40 = 0;
    }

    (*v81)(v12, v40, 1, v26);

    if ((*v80)(v12, 1, v26) == 1)
    {
      result = sub_21E8B4CAC(v12, &qword_27CED8278);
    }

    else
    {
      v41 = *v79;
      v42 = v75;
      (*v79)(v75, v12, v26);
      v41(v84, v42, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_21E924BD4(0, v90[2] + 1, 1, v90);
      }

      v44 = v90[2];
      v43 = v90[3];
      if (v44 >= v43 >> 1)
      {
        v90 = sub_21E924BD4(v43 > 1, v44 + 1, 1, v90);
      }

      v45 = v90;
      v90[2] = v44 + 1;
      result = (v41)(v45 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v44, v84, v26);
      v24 = v76;
    }

    if (v83 == ++v25)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E917C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8280);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v49 - v9);
  v11 = sub_21E92A458();
  if (!*(a1 + 16))
  {

    goto LABEL_13;
  }

  v52 = v5;
  v58 = a2;
  v13 = sub_21E795DB0(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_13:
    v31 = sub_21E92A458();
    v33 = v32;
    sub_21E918138();
    swift_allocError();
    *v34 = v31;
    *(v34 + 8) = v33;
    *(v34 + 16) = 0;
    return swift_willThrow();
  }

  sub_21E79872C(*(a1 + 56) + 32 * v13, v56);
  sub_21E8D9170(v56, v57);
  sub_21E79872C(v57, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED7468);
  if (swift_dynamicCast())
  {
    v16 = *&v55[0];
    v17 = sub_21E92A458();
    if (*(a1 + 16))
    {
      v51 = v16;
      v19 = sub_21E795DB0(v17, v18);
      v21 = v20;

      if (v21)
      {
        sub_21E79872C(*(a1 + 56) + 32 * v19, v55);
        sub_21E8D9170(v55, v56);
        sub_21E79872C(v56, v55);
        if (!swift_dynamicCast())
        {

          v44 = sub_21E92A458();
          v46 = v45;
          sub_21E918138();
          swift_allocError();
          *v47 = v44;
          *(v47 + 8) = v46;
          *(v47 + 16) = 1;
          swift_willThrow();
LABEL_23:
          __swift_destroy_boxed_opaque_existential_1Tm(v56);
          return __swift_destroy_boxed_opaque_existential_1Tm(v57);
        }

        v22 = v53;
        v50 = v54;
        v23 = sub_21E92A458();
        if (*(a1 + 16))
        {
          v25 = sub_21E795DB0(v23, v24);
          v27 = v26;

          if (v27)
          {
            sub_21E79872C(*(a1 + 56) + 32 * v25, v55);
            if (swift_dynamicCast())
            {
              v28 = v54;
              if (v54)
              {
                *v10 = v53;
                v10[1] = v28;
                v10[2] = v22;
                v29 = MEMORY[0x277D77F38];
                v30 = 3;
LABEL_22:
                v48 = v52;
                v10[v30] = v50;
                (*(v48 + 104))(v10, *v29, v4);
                (*(v48 + 16))(v7, v10, v4);
                sub_21E929908();
                (*(v48 + 8))(v10, v4);
                goto LABEL_23;
              }
            }
          }
        }

        else
        {
        }

        *v10 = v22;
        v29 = MEMORY[0x277D77F30];
        v30 = 1;
        goto LABEL_22;
      }
    }

    else
    {
    }

    v40 = sub_21E92A458();
    v42 = v41;
    sub_21E918138();
    swift_allocError();
    *v43 = v40;
    *(v43 + 8) = v42;
    *(v43 + 16) = 0;
  }

  else
  {
    v36 = sub_21E92A458();
    v38 = v37;
    sub_21E918138();
    swift_allocError();
    *v39 = v36;
    *(v39 + 8) = v38;
    *(v39 + 16) = 1;
  }

  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(v57);
}

uint64_t sub_21E9180BC()
{
  v0 = sub_21E929A78();
  __swift_allocate_value_buffer(v0, qword_280D03F50);
  __swift_project_value_buffer(v0, qword_280D03F50);
  return sub_21E929A68();
}

unint64_t sub_21E918138()
{
  result = qword_27CED8260;
  if (!qword_27CED8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED8260);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So23NCSummaryServiceGatewayC22UserNotificationsUIKitE22StateDumpDecodingError33_84BB007F547DDF7548F6CB43F53EC588LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21E918218(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21E918260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21E9182A4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

NCPlatformEligibility __swiftcall NCPlatformEligibility.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for NCPlatformEligibility()
{
  result = qword_27CED8298;
  if (!qword_27CED8298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CED8298);
  }

  return result;
}

void sub_21E9183DC()
{
  v9 = v0;
  if ([v0 totalNotificationCount] <= 0)
  {
    v53 = sub_21E7871A0();
    if (!v53 || (v54 = v53, v55 = [v53 count], v54, v55 < 1))
    {
      v56 = &v9[OBJC_IVAR___NCNotificationRootModernList_contentHeight];
      *v56 = 0;
      v56[8] = 1;
      return;
    }
  }

  v229.receiver = v9;
  v229.super_class = NCNotificationRootModernList;
  v10 = objc_msgSendSuper2(&v229, sel_notificationListSections);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7450);
  v11 = sub_21E92A528();

  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x223D64A50](0, v11);
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      __break(1u);
      goto LABEL_174;
    }

    v13 = *(v11 + 32);
    swift_unknownObjectRetain();
  }

  v14 = [v13 listView];
  swift_unknownObjectRelease();
  v228.receiver = v9;
  v228.super_class = NCNotificationRootModernList;
  v4 = &selRef_revealHintingAnimationTension;
  v15 = objc_msgSendSuper2(&v228, sel_rootListView);
  [v15 frame];
  v17 = v16;

  [v14 sizeThatFits_];
  v19 = v18;

  v3 = &v9[OBJC_IVAR___NCNotificationRootModernList_layout];
  *(v3 + 9) = v19;
  v3[80] = 0;
  if (qword_280D041F8 != -1)
  {
    swift_once();
  }

  if (qword_280D05F70)
  {
    v20 = *(v3 + 5);
    v237[4] = *(v3 + 4);
    v237[5] = v20;
    v238 = *(v3 + 12);
    v21 = *(v3 + 1);
    v237[0] = *v3;
    v237[1] = v21;
    v22 = *(v3 + 3);
    v237[2] = *(v3 + 2);
    v237[3] = v22;

    sub_21E78A844(v237, &v221);
    sub_21E7935C0(v237);
    sub_21E78AACC(v237);
  }

  v23 = sub_21E786808(0xA);
  if (v23)
  {
    v24 = v23;
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      [v25 setAvailableHeight_];
    }
  }

  sub_21E7A0E3C(&v230);
  v26 = *(&v233 + 1);
  v225 = v234;
  v226 = v235;
  v227 = v236;
  v221 = v230;
  v222 = v231;
  v223 = v232;
  v224 = v233;
  if (sub_21E91962C())
  {
    sub_21E9197E0();
  }

  else
  {
    sub_21E9195E0();
  }

  v6 = v27;
  v206 = v233;
  v207 = *(&v232 + 1);
  v1 = *(&v231 + 1);
  v208 = v232;
  v220.receiver = v9;
  v220.super_class = NCNotificationRootModernList;
  v28 = objc_msgSendSuper2(&v220, sel_rootListView);
  v29 = [v28 traitCollection];

  LODWORD(v28) = _NCIsNotVerticalSpaceConstrained(v29);
  if (v28)
  {
    v30 = sub_21E7A145C();
    v31 = *(v3 + 12);
    v205 = v26;
    if ((v3[80] & 1) == 0)
    {
      v31 = v31 - *(v3 + 9);
    }

    v5 = v207;
    if (v31 >= 0.0)
    {
      if (v30 >= v31)
      {
        goto LABEL_21;
      }
    }

    else if (v30 >= 0.0)
    {
LABEL_21:
      if (v31 < 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v31;
      }

      v32 = sub_21E7A145C();
LABEL_36:
      v7 = v32;
      v2 = sub_21E7A17C4(0, 1, 1, MEMORY[0x277D84F90]);
      v10 = *(v2 + 2);
      v12 = *(v2 + 3);
      v11 = v10 + 1;
      if (v10 < v12 >> 1)
      {
LABEL_37:
        *(v2 + 2) = v11;
        v57 = &v2[24 * v10];
        v57[32] = 0;
        *(v57 + 5) = v8;
        *(v57 + 6) = v7;
        if ((sub_21E7A130C() & 1) == 0 && (sub_21E7A130C() & 1) == 0 && (sub_21E7A130C() & 1) == 0 && (sub_21E7A130C() & 1) == 0)
        {
          v204 = 0;
          goto LABEL_114;
        }

        v58 = 0.0;
        if (v7 > 0.0)
        {
          v59 = [objc_opt_self() rootSettings];
          v60 = [v59 listAnimationSettings];

          [v60 viewSpacing];
          v62 = v61;

          v58 = v7 + v62 * *(v2 + 2);
        }

        v209.receiver = v9;
        v209.super_class = NCNotificationRootModernList;
        v63 = objc_msgSendSuper2(&v209, v4[20]);
        [v63 visibleRectBottomMarginForRollUnder];
        v65 = v64;

        if (v65 > v58)
        {
          v66 = v65;
        }

        else
        {
          v66 = v58;
        }

        v67 = *(v3 + 12);
        if ((v3[80] & 1) == 0)
        {
          v67 = v67 - *(v3 + 9);
        }

        if (v67 < 0.0)
        {
          v67 = 0.0;
        }

        v68 = v67 - v66;
        v69 = sub_21E786808(0xA);
        if (!v69)
        {
          goto LABEL_59;
        }

        v70 = v69;
        objc_opt_self();
        v71 = swift_dynamicCastObjCClass();
        if (v71)
        {
          v72 = v71;
          if ([v71 count] < 1)
          {
            if (v68 < 0.0)
            {
LABEL_54:
              v74 = [v72 hasNotificationGroupExpanded];

              if ((v74 & 1) == 0)
              {
                v203 = 1;
                if ((*(v1 + 81) & 1) == 0)
                {
                  goto LABEL_81;
                }

LABEL_64:
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670);
                v78 = swift_allocObject();
                *(v78 + 16) = xmmword_21E947B30;
                v79 = sub_21E786808(0xA);
                if (v79)
                {
                  v80 = v79;
                  objc_opt_self();
                  v81 = swift_dynamicCastObjCClass();
                  if (v81)
                  {
                    [v81 collapsedHeight];
                    v83 = v82;

                    *(&v214 + 1) = MEMORY[0x277D85048];
                    *&v215 = sub_21E79668C();
                    *&v213 = v83;
                    sub_21E7A17AC(&v213, v78 + 32);
                    goto LABEL_69;
                  }
                }

                *(v78 + 56) = MEMORY[0x277D83B88];
                *(v78 + 64) = MEMORY[0x277D83C10];
                *(v78 + 32) = 0;
LABEL_69:
                v84 = sub_21E786808(0xA);
                if (v84)
                {
                  v85 = v84;
                  objc_opt_self();
                  v86 = swift_dynamicCastObjCClass();
                  if (v86)
                  {
                    [v86 expandedHeight];
                    v88 = v87;

                    *(&v214 + 1) = MEMORY[0x277D85048];
                    *&v215 = sub_21E79668C();
                    *&v213 = v88;
                    sub_21E7A17AC(&v213, v78 + 72);
                    goto LABEL_74;
                  }
                }

                *(v78 + 96) = MEMORY[0x277D83B88];
                *(v78 + 104) = MEMORY[0x277D83C10];
                *(v78 + 72) = 0;
LABEL_74:
                v89 = sub_21E92A468();
                sub_21E7950DC(v89, v90, 0xD000000000000011, 0x800000021E959B90);

                v91 = swift_allocObject();
                *(v91 + 16) = xmmword_21E947520;
                v92 = sub_21E786808(0xA);
                v5 = v207;
                if (v92)
                {
                  v93 = v92;
                  objc_opt_self();
                  v94 = swift_dynamicCastObjCClass();
                  if (v94)
                  {
                    v95 = [v94 listView];

                    if (!v95)
                    {
LABEL_176:
                      __break(1u);
                      return;
                    }

                    [v95 bounds];
                    v97 = v96;
                    v99 = v98;
                    v101 = v100;
                    v103 = v102;

                    v239.origin.x = v97;
                    v239.origin.y = v99;
                    v239.size.width = v101;
                    v239.size.height = v103;
                    Height = CGRectGetHeight(v239);
                    *(&v214 + 1) = MEMORY[0x277D85048];
                    *&v215 = sub_21E79668C();
                    *&v213 = Height;
                    sub_21E7A17AC(&v213, v91 + 32);
                    v5 = v207;
                    goto LABEL_80;
                  }
                }

                *(v91 + 56) = MEMORY[0x277D83B88];
                *(v91 + 64) = MEMORY[0x277D83C10];
                *(v91 + 32) = 0;
LABEL_80:
                v105 = sub_21E92A468();
                sub_21E7950DC(v105, v106, 0xD000000000000017, 0x800000021E959BB0);

LABEL_81:
                sub_21E7A18E0();
                v108 = v66 + v107;
                sub_21E7A18E0();
                v110 = v108 + v109;
                sub_21E7A18E0();
                v112 = v110 + v111;
                sub_21E7A18E0();
                v114 = v112 + v113 + sub_21E91988C();
                if (sub_21E7A130C())
                {
                  v115 = v114 - *(v5 + 24);
                  sub_21E7A1D60();
                  v117 = v115 + v116 - *(v208 + 24);
                  sub_21E7A1D60();
                  v114 = v117 + v118;
                }

                v119 = sub_21E786808(0xA);
                if (v119)
                {
                  v120 = v119;
                  objc_opt_self();
                  v121 = swift_dynamicCastObjCClass();
                  if (v121)
                  {
                    v122 = [v121 forceExpanded];

                    if (v122)
                    {
                      v123 = v114 - *(v1 + 24);
                      sub_21E7A1D60();
                      v125 = v123 + v124;
                      v126 = [objc_opt_self() rootSettings];
                      v127 = [v126 listAnimationSettings];

                      [v127 viewSpacing];
                      v129 = v128;

                      v114 = v125 + v129;
                    }
                  }

                  else
                  {
                  }
                }

                v130 = sub_21E786808(4);
                if (!v130)
                {
                  goto LABEL_94;
                }

                v131 = v130;
                objc_opt_self();
                v132 = swift_dynamicCastObjCClass();
                if (!v132)
                {
LABEL_92:

                  goto LABEL_94;
                }

                v133 = [v132 listView];
                if (v133)
                {
                  v134 = v133;
                  v135 = [v133 isGrouped];

                  if (v135)
                  {
                    goto LABEL_92;
                  }

                  v136 = v114 - *(v206 + 24);
                  sub_21E9195E0();
                  v138 = v137;

                  v114 = v136 + v138;
LABEL_94:
                  v139 = *(v3 + 12);
                  if ((v3[80] & 1) == 0)
                  {
                    v139 = v139 - *(v3 + 9);
                  }

                  if (v139 >= 0.0)
                  {
                    if (v139 > v114)
                    {
LABEL_98:
                      v204 = 0;
                      if (!v203)
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_105;
                    }
                  }

                  else if (v114 < 0.0)
                  {
                    goto LABEL_98;
                  }

                  if (v139 < 0.0)
                  {
                    v140 = 0.0;
                  }

                  else
                  {
                    v140 = v139;
                  }

                  v141 = [objc_opt_self() rootSettings];
                  v142 = [v141 listAnimationSettings];

                  [v142 viewSpacing];
                  v144 = v143;

                  v114 = v140 - v144;
                  v204 = 1;
                  if (!v203)
                  {
                    goto LABEL_110;
                  }

LABEL_105:
                  v145 = sub_21E786808(0xA);
                  if (v145)
                  {
                    v146 = v145;
                    objc_opt_self();
                    v147 = swift_dynamicCastObjCClass();
                    if (v147)
                    {
                      v148 = [v147 forceExpanded];

                      if (!v148)
                      {
                        v149 = v1;
                        v150 = v4;
                        v151 = 3;
LABEL_111:
                        v153 = *(v2 + 2);
                        v152 = *(v2 + 3);
                        if (v153 >= v152 >> 1)
                        {
                          v2 = sub_21E7A17C4((v152 > 1), v153 + 1, 1, v2);
                        }

                        *(v2 + 2) = v153 + 1;
                        v154 = &v2[24 * v153];
                        v154[32] = v151;
                        *(v154 + 5) = v114;
                        *(v154 + 6) = v114;
                        v4 = v150;
                        v1 = v149;
LABEL_114:
                        if (sub_21E7A138C() < 2 || (sub_21E7A130C() & 1) != 0 || (*(v1 + 81) & 1) != 0)
                        {
                          v155 = 0;
                          goto LABEL_118;
                        }

                        v178 = 0.0;
                        if (v7 > 0.0)
                        {
                          v179 = [objc_opt_self() rootSettings];
                          v180 = [v179 listAnimationSettings];

                          [v180 viewSpacing];
                          v182 = v181;

                          v178 = v7 + v182 * *(v2 + 2);
                        }

                        v210.receiver = v9;
                        v210.super_class = NCNotificationRootModernList;
                        v183 = objc_msgSendSuper2(&v210, v4[20]);
                        [v183 visibleRectBottomMarginForRollUnder];
                        v185 = v184;

                        if (v185 <= v178)
                        {
                          v185 = v178;
                        }

                        sub_21E7A1D60();
                        v187 = v185 + v186;
                        sub_21E7A1D60();
                        v189 = v187 + v188;
                        sub_21E7A1D60();
                        v191 = v189 + v190;
                        sub_21E7A1D60();
                        v193 = v191 + v192 + sub_21E91988C();
                        v194 = *(v3 + 12);
                        if (v3[80])
                        {
                          if (v194 >= 0.0)
                          {
                            goto LABEL_154;
                          }
                        }

                        else
                        {
                          v194 = v194 - *(v3 + 9);
                          if (v194 >= 0.0)
                          {
LABEL_154:
                            if (v193 >= v194)
                            {
LABEL_155:
                              v155 = 1;
                              goto LABEL_118;
                            }

LABEL_159:
                            v196 = *(v2 + 2);
                            v195 = *(v2 + 3);
                            v197 = v196 + 1;
                            if (v196 >= v195 >> 1)
                            {
                              v202 = sub_21E7A17C4((v195 > 1), v196 + 1, 1, v2);
                              v197 = v196 + 1;
                              v2 = v202;
                            }

                            v155 = 0;
                            *(v2 + 2) = v197;
                            v198 = &v2[24 * v196];
                            v198[32] = 2;
                            *(v198 + 5) = v193;
                            *(v198 + 6) = v193;
LABEL_118:
                            if ((sub_21E7A130C() & 1) == 0 && ((v204 | v155 | *(v1 + 81)) & 1) == 0 && (sub_21E9195AC() & 1) == 0 && (sub_21E9195AC() & 1) == 0 && (sub_21E9195AC() & 1) == 0)
                            {
LABEL_170:
                              v217 = v225;
                              v218 = v226;
                              v219 = v227;
                              v213 = v221;
                              v214 = v222;
                              v215 = v223;
                              v216 = v224;
                              sub_21E919F50(&v213);
                              return;
                            }

                            v156 = 0.0;
                            if (v7 > 0.0)
                            {
                              v157 = [objc_opt_self() rootSettings];
                              v158 = [v157 listAnimationSettings];

                              [v158 viewSpacing];
                              v160 = v159;

                              v156 = v7 + v160 * *(v2 + 2);
                            }

                            v211.receiver = v9;
                            v211.super_class = NCNotificationRootModernList;
                            v161 = objc_msgSendSuper2(&v211, v4[20]);
                            [v161 visibleRectBottomMarginForRollUnder];
                            v163 = v162;

                            if (v163 <= v156)
                            {
                              v163 = v156;
                            }

                            sub_21E9195E0();
                            v165 = v163 + v164;
                            sub_21E9195E0();
                            v167 = v165 + v166;
                            sub_21E9195E0();
                            v169 = v167 + v168;
                            sub_21E9195E0();
                            v171 = v169 + v170 + sub_21E91988C();
                            if (*(v205 + 81))
                            {
                              v172 = v6 + 20.0 + v171;
                            }

                            else
                            {
                              v172 = v171;
                            }

                            v173 = *(v3 + 9);
                            v174 = *(v3 + 12);
                            if (v3[80])
                            {
                              v175 = *(v3 + 12);
                              if (v174 < 0.0)
                              {
                                v176 = 0.0;
                                if (v172 >= 0.0)
                                {
                                  goto LABEL_167;
                                }

                                v175 = 0.0;
                                v176 = v172;
                                if ((*(v1 + 81) & 1) == 0)
                                {
                                  goto LABEL_167;
                                }

                                goto LABEL_143;
                              }
                            }

                            else
                            {
                              v177 = v174 - v173;
                              if (v174 - v173 < 0.0)
                              {
                                v176 = 0.0;
                                if (v172 < 0.0)
                                {
                                  v175 = 0.0;
                                  v176 = v172;
                                  if (*(v1 + 81))
                                  {
                                    goto LABEL_163;
                                  }
                                }

                                goto LABEL_167;
                              }

                              v175 = v174 - v173;
                            }

                            if (v172 >= v175)
                            {
                              v176 = v175;
                              goto LABEL_167;
                            }

                            v176 = v172;
                            if (*(v1 + 81))
                            {
                              if (v3[80])
                              {
LABEL_143:
                                if (v174 < 0.0)
                                {
                                  v172 = 0.0;
                                }

                                else
                                {
                                  v172 = *(v3 + 12);
                                }

LABEL_166:
                                v176 = v175;
                                goto LABEL_167;
                              }

                              v177 = v174 - v173;
LABEL_163:
                              if (v177 < 0.0)
                              {
                                v172 = 0.0;
                              }

                              else
                              {
                                v172 = v177;
                              }

                              goto LABEL_166;
                            }

LABEL_167:
                            v200 = *(v2 + 2);
                            v199 = *(v2 + 3);
                            if (v200 >= v199 >> 1)
                            {
                              v2 = sub_21E7A17C4((v199 > 1), v200 + 1, 1, v2);
                            }

                            *(v2 + 2) = v200 + 1;
                            v201 = &v2[24 * v200];
                            v201[32] = 4;
                            *(v201 + 5) = v176;
                            *(v201 + 6) = v172;
                            goto LABEL_170;
                          }
                        }

                        if (v193 >= 0.0)
                        {
                          goto LABEL_155;
                        }

                        goto LABEL_159;
                      }
                    }

                    else
                    {
                    }
                  }

LABEL_110:
                  v149 = v1;
                  v150 = v4;
                  v151 = 1;
                  goto LABEL_111;
                }

                __break(1u);
                goto LABEL_176;
              }

LABEL_59:
              v75 = sub_21E786808(0xA);
              if (v75)
              {
                v76 = v75;
                objc_opt_self();
                v77 = swift_dynamicCastObjCClass();
                if (v77)
                {
                  [v77 setAvailableHeight_];
                }
              }

              v203 = 0;
              if ((*(v1 + 81) & 1) == 0)
              {
                goto LABEL_81;
              }

              goto LABEL_64;
            }
          }

          else
          {
            sub_21E8F56CC(1);
            if (v68 < v73)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_174:
      v2 = sub_21E7A17C4((v12 > 1), v11, 1, v2);
      goto LABEL_37;
    }

    v32 = sub_21E7A145C();
    v8 = v32;
    goto LABEL_36;
  }

  v33 = *(v3 + 12);
  if ((v3[80] & 1) == 0)
  {
    v33 = v33 - *(v3 + 9);
  }

  if (v33 < 0.0)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v33;
  }

  sub_21E919840();
  v36 = v35;
  sub_21E9195E0();
  v38 = v36 + v37;
  sub_21E9195E0();
  v40 = v38 + v39;
  v212.receiver = v9;
  v212.super_class = NCNotificationRootModernList;
  v41 = objc_msgSendSuper2(&v212, sel_rootListView);
  [v41 visibleRectBottomMarginForRollUnder];
  v43 = v42;

  sub_21E9195E0();
  v45 = v40 + v43 + v44;
  sub_21E9195E0();
  v47 = v45 + v46;
  sub_21E9195E0();
  v49 = v47 + v48;
  sub_21E9195E0();
  v51 = v6 + v49 + v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED82A0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_21E947520;
  *(v52 + 32) = 4;
  *(v52 + 40) = v34;
  *(v52 + 48) = v51;
  v217 = v234;
  v218 = v235;
  v219 = v236;
  v213 = v230;
  v214 = v231;
  v215 = v232;
  v216 = v233;
  sub_21E919F50(&v213);
}

uint64_t sub_21E9195AC()
{
  v1 = *(v0 + 98);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_21E919AB0(v0);
    *(v0 + 98) = v1 & 1;
  }

  return v1 & 1;
}

void sub_21E9195E0()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 16);
    if (v1)
    {
      [v1 expandedHeight];
    }

    else
    {
      v2 = 0;
    }

    *(v0 + 40) = v2;
    *(v0 + 48) = 0;
  }
}

uint64_t sub_21E91962C()
{
  result = sub_21E786808(0);
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result count];

  if (sub_21E9198C4() >= v3)
  {
    return 0;
  }

  v21.receiver = v0;
  v21.super_class = NCNotificationRootModernList;
  v4 = objc_msgSendSuper2(&v21, sel_rootListView);
  [v4 _verticalVelocity];
  v6 = v5;

  v7 = v6 * 1000.0;
  v20.receiver = v0;
  v20.super_class = NCNotificationRootModernList;
  v8 = objc_msgSendSuper2(&v20, sel_rootListView);
  [v8 contentSize];
  v10 = v9;

  v19.receiver = v0;
  v19.super_class = NCNotificationRootModernList;
  v11 = objc_msgSendSuper2(&v19, sel_rootListView);
  [v11 contentOffset];
  v13 = v12;

  if (v7 >= v10 - v13)
  {
    return 0;
  }

  result = sub_21E786808(0);
  if (!result)
  {
    goto LABEL_13;
  }

  v14 = result;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = [v15 footerView];
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = v16;
  v18 = [v16 superview];

  if (v18)
  {
    v14 = v18;
LABEL_9:

    return 0;
  }

  return 1;
}

void sub_21E9197E0()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 16);
    if (v1)
    {
      v2 = [v1 itemCountWithExpandedGroup] * 500.0;
    }

    else
    {
      v2 = 0.0;
    }

    *(v0 + 72) = v2;
    *(v0 + 80) = 0;
  }
}

void sub_21E919840()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 16);
    if (v1)
    {
      [v1 expandedHeight];
    }

    else
    {
      v2 = *(v0 + 24);
    }

    *(v0 + 48) = v2;
    *(v0 + 56) = 0;
  }
}

double sub_21E91988C()
{
  if ((*(v0 + 96) & 1) == 0)
  {
    return *(v0 + 88);
  }

  result = sub_21E919DBC();
  *(v0 + 88) = result;
  *(v0 + 96) = 0;
  return result;
}

uint64_t sub_21E9198C4()
{
  v9.super_class = NCNotificationRootModernList;
  v0 = objc_msgSendSuper2(&v9, sel_rootListView);
  v1 = [v0 window];

  if (v1)
  {
    [v1 bounds];
    Height = CGRectGetHeight(v10);

    v3 = ceil(Height / 40.0);
    if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v3 > -9.22337204e18)
    {
      if (v3 < 9.22337204e18)
      {
        return v3;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (qword_280D03F40 != -1)
  {
LABEL_13:
    swift_once();
  }

  v5 = sub_21E929A78();
  __swift_project_value_buffer(v5, qword_280D05F58);
  v6 = sub_21E929A58();
  v7 = sub_21E92A628();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21E77E000, v6, v7, "No window found for notification page height estimation!", v8, 2u);
    MEMORY[0x223D65FB0](v8, -1, -1);
  }

  return 50;
}

uint64_t sub_21E919A70(uint64_t a1)
{
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 513;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  *(v1 + 97) = 514;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_21E919AB0(uint64_t a1)
{
  v2 = sub_21E929748();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v12 = v6;
    result = [v12 notificationGroups];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v8 = result;
    sub_21E92A768();

    sub_21E929738();
    while (v16)
    {
      sub_21E8D9170(&v15, &v14);
      sub_21E919F80();
      if (swift_dynamicCast())
      {
        v9 = v13;
        if ([v13 count] < 2)
        {
        }

        else
        {
          v10 = [v9 listView];
          v11 = [v10 isGrouped];

          if ((v11 & 1) == 0)
          {
            (*(v3 + 8))(v5, v2);

            return 1;
          }
        }
      }

      sub_21E929738();
    }

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

uint64_t sub_21E919CB4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21E919D38()
{

  return swift_deallocClassInstance();
}

double sub_21E919DBC()
{

  v0 = sub_21E7A130C();

  v1 = 0.0;
  if (v0)
  {

    v2 = sub_21E7A130C();

    if (v2 & 1) != 0 || (, v3 = sub_21E7A130C(), , (v3))
    {
      v4 = [objc_opt_self() rootSettings];
      v5 = [v4 listAnimationSettings];

      [v5 viewSpacing];
      v7 = v6;

      v1 = v7 + 0.0;
    }
  }

  v8 = sub_21E7A130C();

  if (v8)
  {

    v9 = sub_21E7A130C();

    if (v9)
    {
      v10 = [objc_opt_self() rootSettings];
      v11 = [v10 listAnimationSettings];

      [v11 viewSpacing];
      v13 = v12;

      return v1 + v13;
    }
  }

  return v1;
}

unint64_t sub_21E919F80()
{
  result = qword_280D03DF0;
  if (!qword_280D03DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D03DF0);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21E919FF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_21E91A040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

const char *sub_21E91A0C0()
{
  v1 = "HighlightsLightEffects";
  if (*v0 != 1)
  {
    v1 = "PriorityNotificationFeedback";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "ListAnimationOverhaul";
  }
}

uint64_t sub_21E91A108(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;

    return sub_21E91A2EC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E91A920();
    sub_21E929798();
  }
}

uint64_t sub_21E91A20C(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E91A920();
    sub_21E929798();
  }

  return result;
}

uint64_t sub_21E91A2EC()
{
  swift_getKeyPath();
  sub_21E91A920();
  sub_21E9297A8();

  if (*(v0 + 16) == 1)
  {
    swift_getKeyPath();
    sub_21E9297A8();

    if ((*(v0 + 17) & 1) == 0)
    {
      swift_getKeyPath();
      sub_21E9297A8();

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v2 = *(v0 + 32);
        ObjectType = swift_getObjectType();
        (*(v2 + 8))(v0, ObjectType, v2);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_21E91A418()
{
  swift_getKeyPath();
  sub_21E91A920();
  sub_21E9297A8();

  return *(v0 + 16);
}

uint64_t sub_21E91A488@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E91A920();
  sub_21E9297A8();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_21E91A500()
{
  swift_getKeyPath();
  sub_21E91A920();
  sub_21E9297A8();

  return *(v0 + 17);
}

uint64_t sub_21E91A570@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E91A920();
  sub_21E9297A8();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_21E91A5E8()
{
  swift_getKeyPath();
  sub_21E91A920();
  sub_21E9297A8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_21E91A660@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E91A920();
  sub_21E9297A8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21E91A6E0()
{
  swift_getKeyPath();
  sub_21E91A920();
  sub_21E929798();
}

uint64_t sub_21E91A780()
{
  sub_21E8B1D78(v0 + 24);
  v1 = OBJC_IVAR____TtC22UserNotificationsUIKit27InternalSettingsButtonModel___observationRegistrar;
  v2 = sub_21E9297E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InternalSettingsButtonModel()
{
  result = qword_27CED82B0;
  if (!qword_27CED82B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E91A878()
{
  result = sub_21E9297E8();
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

unint64_t sub_21E91A920()
{
  result = qword_27CED82C0;
  if (!qword_27CED82C0)
  {
    type metadata accessor for InternalSettingsButtonModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED82C0);
  }

  return result;
}

unint64_t sub_21E91A9FC()
{
  result = qword_27CED82C8;
  if (!qword_27CED82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED82C8);
  }

  return result;
}

void sub_21E91AA50()
{
  v1 = v0 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager____lazy_storage___hysteresis;
  if (*(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager____lazy_storage___hysteresis + 8))
  {
    v2 = sub_21E91B6FC();
    [v2 hysteresis];
    v4 = v3;

    *v1 = v4;
    *(v1 + 8) = 0;
  }
}

id sub_21E91AAC0(void *a1)
{
  v1[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_shouldUpdateWithoutAnimation] = 0;
  *&v1[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_exclusionZones] = MEMORY[0x277D84F90];
  v3 = &v1[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager____lazy_storage___hysteresis];
  *v3 = 0;
  v3[8] = 1;
  v1[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_showsDebugView] = 0;
  *&v1[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager____lazy_storage___prototypeSettings] = 0;
  v4 = &v1[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager__rubberbandingOffset];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager__animationOffset];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_currentExclusionIndex] = 0;
  *&v1[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_debugView] = 0;
  v6 = OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_animatableProperty;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  [v7 setVelocityUsableForVFD_];
  *&v1[v6] = v7;
  *&v1[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager____lazy_storage___animationBehavior] = 1;
  v8 = &v1[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_lastOffset];
  *v8 = 0;
  v8[1] = 0;
  *&v1[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_scrollView] = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for ScrollViewExclusionManager();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_21E91C114();

  return v10;
}

void sub_21E91AC34(double a1, double a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_currentExclusionIndex;
  v7 = *&v2[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_currentExclusionIndex];
  v8 = OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_scrollView;
  [*&v2[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_scrollView] adjustedContentInset];
  v10 = *&v2[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_exclusionZones];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v9 = v9 + a2;
    v13 = (v10 + 56);
    while (1)
    {
      v14 = v12 + 1;
      v15 = *(v13 - 2);
      v16 = *v13;
      if (v15 < v9 && v9 < v15 + *v13)
      {
        break;
      }

      v18 = v12;
      if (v9 < v15 + v16 * 0.5)
      {
        goto LABEL_17;
      }

      v13 += 5;
      ++v12;
      if (v11 == v14)
      {
        v18 = v11;
        goto LABEL_17;
      }
    }

    v19 = (v9 - v15) / v16;
    sub_21E91AA50();
    v9 = v20 * 0.5;
    if (fabs(v19 + -0.5) >= v9 || (v18 = v7, v7 != v12) && (v18 = v7, v7 - 1 != v12))
    {
      if (v19 >= 0.5)
      {
        v18 = v12 + 1;
      }

      else
      {
        v18 = v12;
      }
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_17:
  v21 = *&v2[v6];
  if (v2[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_shouldUpdateWithoutAnimation])
  {
    *&v2[v6] = v18;
    sub_21E91B8B4(v21);
    v22 = objc_opt_self();
    v23 = swift_allocObject();
    *(v23 + 16) = v3;
    aBlock[4] = sub_21E91CBB0;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E792C28;
    aBlock[3] = &block_descriptor_65;
    v24 = _Block_copy(aBlock);
    v25 = v3;

    [v22 _performWithoutRetargetingAnimations_];
    _Block_release(v24);
    v26 = &v25[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager__rubberbandingOffset];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v25[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager__animationOffset];
    *v27 = 0;
    *(v27 + 1) = 0;
LABEL_25:
    sub_21E91B7A0();
    goto LABEL_26;
  }

  if (v18 != v21)
  {
    v28 = sub_21E91C634(v9, *&v2[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_lastOffset + 8]);
    v30 = v29;
    v31 = sub_21E91C634(v28, a2);
    sub_21E91C3C4(v31, v30, v33, v32);
    v34 = *&v2[v6];
    *&v2[v6] = v18;
    sub_21E91B8B4(v34);
  }

  v35 = &v2[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager__rubberbandingOffset];
  v36 = [*&v2[v8] traitCollection];
  [v36 displayScale];

  UIPointRoundToScale();
  v38 = v37;
  v40 = v39;
  sub_21E91C634(v37, a2);
  *v35 = 0;
  *(v35 + 1) = v41;
  v42 = [*&v3[v8] traitCollection];
  [v42 displayScale];

  UIPointRoundToScale();
  if (v38 != v44 || v40 != v43)
  {
    goto LABEL_25;
  }

LABEL_26:
  v46 = &v3[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_lastOffset];
  *v46 = a1;
  v46[1] = a2;
}

void sub_21E91AFCC()
{
  v1 = v0;
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v2 = sub_21E929A78();
  __swift_project_value_buffer(v2, qword_280D05F58);
  v3 = sub_21E929A58();
  v4 = sub_21E92A648();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21E77E000, v3, v4, "Invalidating current exclusion index to -1", v5, 2u);
    MEMORY[0x223D65FB0](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_currentExclusionIndex);
  *(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_currentExclusionIndex) = -1;

  sub_21E91B8B4(v6);
}

void sub_21E91B0CC(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = *(a2 + 8);
  [a1 contentOffset];
  v10 = v9;
  v11 = OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_scrollView;
  [*(v4 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_scrollView) adjustedContentInset];
  v13 = OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_exclusionZones;
  v14 = *(v4 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_exclusionZones);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v10 + v12;
    v17 = v14 + 32;
    do
    {
      v18 = *(v17 + 8);
      v19 = *(v17 + 24);
      if (v18 < v16 && v16 < v18 + v19)
      {
        break;
      }

      v17 += 40;
      --v15;
    }

    while (v15);
    if (*(v17 + 32) == 1)
    {
      if (a4 > 0.0)
      {
        v21 = *v17;
        v22 = *(v17 + 16);
LABEL_81:
        MaxY = CGRectGetMaxY(*(&v18 - 1));
        goto LABEL_82;
      }

      if (a4 < 0.0)
      {
        v23 = *v17;
        v24 = *(v17 + 16);
        MaxY = CGRectGetMinY(*(&v18 - 1));
        goto LABEL_82;
      }
    }
  }

  [a1 contentOffset];
  v27 = v26;
  v28 = OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_currentExclusionIndex;
  v29 = *(v4 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_currentExclusionIndex);
  [*(v4 + v11) adjustedContentInset];
  v31 = *(v4 + v13);
  v32 = *(v31 + 16);
  if (!v32)
  {
    v40 = 0;
    goto LABEL_30;
  }

  v33 = 0;
  v34 = v27 + v30;
  v35 = (v31 + 56);
  while (1)
  {
    v36 = v33 + 1;
    v37 = *(v35 - 2);
    v38 = *v35;
    if (v37 < v34 && v34 < v37 + *v35)
    {
      break;
    }

    v40 = v33;
    if (v34 < v37 + v38 * 0.5)
    {
      goto LABEL_30;
    }

    v35 += 5;
    ++v33;
    if (v32 == v36)
    {
      v40 = v32;
      goto LABEL_30;
    }
  }

  v41 = (v34 - v37) / v38;
  sub_21E91AA50();
  if (fabs(v41 + -0.5) < v42 * 0.5)
  {
    if (v29 == v33)
    {
      v40 = v29;
      goto LABEL_30;
    }

    v40 = v29;
    if (v29 - 1 == v33)
    {
      goto LABEL_30;
    }
  }

  if (v41 >= 0.5)
  {
    v40 = v33 + 1;
  }

  else
  {
    v40 = v33;
  }

LABEL_30:
  v43 = *(a2 + 8);
  v44 = *(v4 + v28);
  [*(v4 + v11) adjustedContentInset];
  v46 = *(v4 + v13);
  v47 = *(v46 + 16);
  if (!v47)
  {
    v55 = 0;
    if (!v40)
    {
      goto LABEL_70;
    }

LABEL_49:
    v58 = v55 - v40;
    if (v55 < v40)
    {
      v59 = sub_21E91B5E0(v55, v40);
LABEL_57:
      v61 = *(v59 + 16);
      if (!v61)
      {
LABEL_69:

        goto LABEL_70;
      }

      v62 = 0;
      while (v62 < *(v59 + 16))
      {
        v63 = *(v59 + 8 * v62 + 32);
        if ((v63 & 0x8000000000000000) == 0)
        {
          v64 = *(v4 + v13);
          if (v63 < *(v64 + 16))
          {
            v65 = v64 + 40 * v63;
            if (*(v65 + 64) == 1)
            {
              v67 = *(v65 + 48);
              v66 = *(v65 + 56);
              v69 = *(v65 + 32);
              v68 = *(v65 + 40);
              [a1 contentOffset];
              v71 = v70;
              v86.origin.x = v69;
              v86.origin.y = v68;
              v86.size.width = v67;
              v86.size.height = v66;
              if (v71 < CGRectGetMinY(v86) && a4 > 0.0)
              {

                v90.origin.x = v69;
                v90.origin.y = v68;
                v90.size.width = v67;
                v90.size.height = v66;
                MaxY = CGRectGetMinY(v90);
                goto LABEL_82;
              }

              [a1 contentOffset];
              v73 = v72;
              v87.origin.x = v69;
              v87.origin.y = v68;
              v87.size.width = v67;
              v87.size.height = v66;
              if (CGRectGetMaxY(v87) < v73 && a4 < 0.0)
              {

                v21 = v69;
                v18 = v68;
                v22 = v67;
                v19 = v66;
                goto LABEL_81;
              }
            }
          }
        }

        if (v61 == ++v62)
        {
          goto LABEL_69;
        }
      }

      __break(1u);
      goto LABEL_89;
    }

    if (__OFSUB__(v55, v40))
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v60 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
LABEL_90:
      __break(1u);
      return;
    }

    if (v58 != -1)
    {
      v59 = sub_21E91C9A0(v58 + 1, 0);
      if (sub_21E91CB0C(&v85, v59 + 32, v60, v40, v55) == v60)
      {
        goto LABEL_57;
      }

      __break(1u);
    }

    v59 = MEMORY[0x277D84F90];
    goto LABEL_57;
  }

  v48 = 0;
  v49 = v43 + v45;
  v50 = (v46 + 56);
  while (1)
  {
    v51 = v48 + 1;
    v52 = *(v50 - 2);
    v53 = *v50;
    if (v52 < v49 && v49 < v52 + *v50)
    {
      break;
    }

    v55 = v48;
    if (v49 < v52 + v53 * 0.5)
    {
      goto LABEL_48;
    }

    v50 += 5;
    ++v48;
    if (v47 == v51)
    {
      v55 = v47;
      if (v40 != v47)
      {
        goto LABEL_49;
      }

      goto LABEL_70;
    }
  }

  v56 = (v49 - v52) / v53;
  sub_21E91AA50();
  if (fabs(v56 + -0.5) >= v57 * 0.5)
  {
LABEL_45:
    if (v56 >= 0.5)
    {
      v55 = v48 + 1;
    }

    else
    {
      v55 = v48;
    }

LABEL_48:
    if (v40 == v55)
    {
      goto LABEL_70;
    }

    goto LABEL_49;
  }

  if (v44 != v48)
  {
    v55 = v44;
    if (v44 - 1 == v48)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v55 = v44;
  if (v40 != v44)
  {
    goto LABEL_49;
  }

LABEL_70:
  v74 = *(a2 + 8);
  [*(v4 + v11) adjustedContentInset];
  v76 = *(v4 + v13);
  v77 = *(v76 + 16);
  if (!v77)
  {
    return;
  }

  v78 = v74 + v75;
  for (i = (v76 + 56); ; i += 5)
  {
    v80 = *(i - 2);
    v81 = *i;
    if (v80 < v78 && v78 < v80 + *i)
    {
      break;
    }

    if (!--v77)
    {
      return;
    }
  }

  v83 = *(i - 3);
  v84 = *(i - 1);
  v88.origin.x = v83;
  v88.origin.y = *(i - 2);
  v88.size.width = v84;
  v88.size.height = *i;
  if (v8 >= CGRectGetMidY(v88))
  {
    v21 = v83;
    v18 = v80;
    v22 = v84;
    v19 = v81;
    goto LABEL_81;
  }

  v89.origin.x = v83;
  v89.origin.y = v80;
  v89.size.width = v84;
  v89.size.height = v81;
  MaxY = CGRectGetMinY(v89);
LABEL_82:
  *(a2 + 8) = MaxY;
}