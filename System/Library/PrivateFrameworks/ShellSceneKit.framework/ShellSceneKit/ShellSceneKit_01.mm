uint64_t sub_265FCDB68(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265FEC470() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x266775CE0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
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
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

id sub_265FCDCDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055640, &unk_265FEFC90);
  v2 = *v0;
  v3 = sub_265FEC600();
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
        v19 = *(*(v2 + 56) + 4 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 4 * v17) = v19;
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

id sub_265FCDE38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055190, &qword_265FEEF60);
  v2 = *v0;
  v3 = sub_265FEC600();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;

        result = *(&v18 + 1);
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

void *sub_265FCDFB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551D0, &unk_265FEFC60);
  v2 = *v0;
  v3 = sub_265FEC600();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 24 * v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v19;
        *(v21 + 16) = v22;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_265FC23C0();
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

void *sub_265FCE130()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551C8, &unk_265FEEFD0);
  v2 = *v0;
  v3 = sub_265FEC600();
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
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *(v19 + 8);
        v17 *= 16;
        v21 = *(v4 + 48) + v18;
        v22 = *(*(v2 + 56) + v17);
        v23 = *(v19 + 16);
        *v21 = *v19;
        *(v21 + 8) = v20;
        *(v21 + 16) = v23;
        *(*(v4 + 56) + v17) = v22;
        sub_265FC23C0();
        result = swift_unknownObjectRetain();
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

void *sub_265FCE2C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551D8, &unk_265FEEFE0);
  v2 = *v0;
  v3 = sub_265FEC600();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_265FCF134(&v28, &v27))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 4 * v16;
      v18 = *(*(v2 + 48) + 4 * v16);
      v16 *= 80;
      v19 = (*(v2 + 56) + v16);
      v21 = v19[1];
      v20 = v19[2];
      v22 = v19[3];
      *(v31 + 10) = *(v19 + 58);
      v31[0] = v22;
      v28 = *v19;
      v29 = v21;
      v30 = v20;
      *(*(v4 + 48) + v17) = v18;
      v23 = (*(v4 + 56) + v16);
      *v23 = v28;
      v24 = v29;
      v25 = v30;
      v26 = v31[0];
      *(v23 + 58) = *(v31 + 10);
      v23[2] = v25;
      v23[3] = v26;
      v23[1] = v24;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

id sub_265FCE47C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551E0, &unk_265FEFC70);
  v2 = *v0;
  v3 = sub_265FEC600();
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
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_265FCE5D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551E8, &qword_265FEEFF0);
  v2 = *v0;
  v3 = sub_265FEC600();
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
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
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

unint64_t sub_265FCE734(int a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_265FDA61C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_265FCBF04(v13, a3 & 1);
      v17 = *v4;
      result = sub_265FDA61C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_265FCF0EC(0, &unk_280055180, 0x277D0ACF0);
        result = sub_265FEC710();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_265FCDCDC();
      result = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    *(v19[7] + 4 * result) = a1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + 4 * result) = a1;
  v20 = v19[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;

  return a2;
}

unint64_t sub_265FCE898(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_265FDA660(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_265FCC168(v16, a4 & 1);
      v20 = *v5;
      result = sub_265FDA660(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_265FEC710();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_265FCDE38();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 4 * result) = a3;
    v26 = (v22[7] + 16 * result);
    *v26 = a1;
    v26[1] = a2;
    v27 = v22[2];
    v15 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v15)
    {
      v22[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v25 = *v23;
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_265FCEA00(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_265FDA6A8(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_265FCC3EC(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_265FDA6A8(a2, a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_265FEC710();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_265FCDFB4();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7];
    v26 = *(v25 + 8 * v13);
    *(v25 + 8 * v13) = a1;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = v24[6] + 24 * v13;
  *v28 = a2;
  *(v28 + 8) = a3;
  *(v28 + 16) = a4;
  *(v24[7] + 8 * v13) = a1;
  v29 = v24[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v30;

  return sub_265FC23C0();
}

unint64_t sub_265FCEB98(uint64_t a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_265FDA660(a2);
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
      sub_265FCCFB0(v14, a3 & 1);
      v18 = *v4;
      result = sub_265FDA660(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_265FEC710();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_265FCE5D8();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 4 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_265FCECE4(uint64_t a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_265FDA660(a2);
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
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 4 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_265FCE47C();
    result = v17;
    goto LABEL_8;
  }

  sub_265FCCD44(v14, a3 & 1);
  v18 = *v4;
  result = sub_265FDA660(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_265FEC710();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_265FCEE2C(_OWORD *a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_265FDA660(a2);
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
      sub_265FCCA0C(v14, a3 & 1);
      v18 = *v4;
      result = sub_265FDA660(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_265FEC710();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_265FCE2C0();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 4 * result) = a2;
    v22 = (v20[7] + 80 * result);
    *v22 = *a1;
    v23 = a1[1];
    v24 = a1[2];
    v25 = a1[3];
    *(v22 + 58) = *(a1 + 58);
    v22[2] = v24;
    v22[3] = v25;
    v22[1] = v23;
    v26 = v20[2];
    v13 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v13)
    {
      v20[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7] + 80 * result;

  return sub_265FCF36C(a1, v21);
}

uint64_t sub_265FCEFE8()
{
  sub_265FCF0EC(0, &unk_2800551B0, 0x277CD9E40);
  sub_265FCF0EC(0, &unk_280055710, 0x277CD9E58);
  swift_getKeyPath();
  sub_265FCF438(&qword_2800551C0, &unk_280055720, &qword_265FEEFA8);
  sub_265FEBF30();
}

uint64_t sub_265FCF0EC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_265FCF190(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = [v3 displayId];
  v5 = OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_connectedHardware;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16) && (v7 = sub_265FDA660(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 16 * v7 + 8);
    swift_endAccess();
    return v9;
  }

  else
  {
    swift_endAccess();
    sub_265FEC550();
    MEMORY[0x2667756D0](0xD000000000000026, 0x8000000265FF1410);
    [v3 displayId];
    v11 = sub_265FEC6B0();
    MEMORY[0x2667756D0](v11);

    MEMORY[0x2667756D0](0xD000000000000015, 0x8000000265FF13C0);
    v12 = *(v2 + v5);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055178, &unk_265FEEF50);
    v13 = sub_265FEC090();
    v15 = v14;

    MEMORY[0x2667756D0](v13, v15);

    result = sub_265FEC5E0();
    __break(1u);
  }

  return result;
}

unint64_t sub_265FCF3C8()
{
  result = qword_2800551F0;
  if (!qword_2800551F0)
  {
    sub_265FCF0EC(255, &unk_280055180, 0x277D0ACF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800551F0);
  }

  return result;
}

uint64_t sub_265FCF438(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_265FCF484()
{
  v0 = [objc_opt_self() currentProcess];
  v1 = [v0 isApplication];

  byte_280055210 = v1;
}

uint64_t sub_265FCF4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055218, &qword_265FEF000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v15 - v9;
  v11 = sub_265FEC270();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = sub_265FEC290();
  result = sub_265FD0338(v10);
  *a3 = v13;
  return result;
}

uint64_t sub_265FCF610(uint64_t a1, int *a2)
{
  v2[2] = sub_265FEC250();
  v2[3] = sub_265FEC240();
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_265FCF720;

  return v7();
}

uint64_t sub_265FCF720()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_265FEC230();

  return MEMORY[0x2822009F8](sub_265FCF85C, v5, v4);
}

uint64_t sub_265FCF85C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_265FCF8BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_265FEC250();
  v4[3] = sub_265FEC240();
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_265FCF9CC;

  return v9();
}

uint64_t sub_265FCF9CC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_265FEC230();

  return MEMORY[0x2822009F8](sub_265FD0580, v5, v4);
}

uint64_t sub_265FCFB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055218, &qword_265FEF000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_265FD03A0(a3, v28 - v12);
  v14 = sub_265FEC270();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_265FD0338(v13);
  }

  else
  {
    sub_265FEC260();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_265FEC230();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_265FEC110() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_265FD0338(a3);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_265FD0338(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_265FCFDC8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265FCFEC0;

  return v7(a1);
}

uint64_t sub_265FCFEC0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_265FCFFB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055218, &qword_265FEF000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v16[-v7];
  if (qword_2800547E8 != -1)
  {
    swift_once();
  }

  if (byte_280055210 == 1 && [objc_opt_self() isMainThread])
  {
    v9 = sub_265FEC250();
    MEMORY[0x28223BE20](v9, v10);
    *&v16[-16] = a1;
    *&v16[-8] = a2;
    sub_265FE1E5C(sub_265FD0270, &v16[-32], "ShellSceneKit/Task+Utils.swift", 30);
  }

  else
  {
    v12 = sub_265FEC270();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    sub_265FEC250();

    v13 = sub_265FEC240();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = a1;
    v14[5] = a2;
    sub_265FCFB08(0, 0, v8, &unk_265FEF010, v14);
  }
}

uint64_t sub_265FD01B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_265FC66D0;

  return sub_265FCF8BC(a1, v4, v5, v7);
}

uint64_t sub_265FD028C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265FC658C;

  return sub_265FCF610(a1, v5);
}

uint64_t sub_265FD0338(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055218, &qword_265FEF000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265FD03A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055218, &qword_265FEF000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265FD0410(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265FC66D0;

  return sub_265FCFDC8(a1, v5);
}

uint64_t sub_265FD04C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265FC658C;

  return sub_265FCFDC8(a1, v5);
}

id sub_265FD0584(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 < 0)
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = *(a2 + 9);
    v8 = [objc_allocWithZone(MEMORY[0x277D0ACE8]) initWithConfiguration_];
    v9 = sub_265FEC0D0();
    [v8 setUniqueIdentifier_];

    if (v3)
    {
      [v8 setUIKitMainLike];
      if ((v3 & 0x100) == 0)
      {
LABEL_7:
        if (v7 == 2)
        {
LABEL_9:
          v10 = sub_265FD7354();

          return v10;
        }

LABEL_8:
        [v8 setCloningSupported_];
        goto LABEL_9;
      }
    }

    else if ((v3 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    [v8 setExpectsSecureRendering];
    if (v7 == 2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return v2;
}

id sub_265FD0790()
{
  result = [v0 CADisplay];
  if (!result)
  {
    sub_265FEC550();

    v2 = [v0 description];
    v3 = sub_265FEC0E0();
    v5 = v4;

    MEMORY[0x2667756D0](v3, v5);

    result = sub_265FEC5E0();
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13ShellSceneKit7ProfileV15DisplayIdentityVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (v1 >> 1) & 0x3F00 | v1 & 0xFE;
  v3 = 0x4000 - (v2 | (v1 >> 15));
  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265FD08BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_265FD0904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_265FD0968(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 72);
  if ((~v3 & 0xFEFE) != 0)
  {
    v4 = *(v1 + 56);
    v5 = *(v1 + 64);
    sub_265FE0D40(v4, v5, *(v1 + 72), *v1, *(v1 + 8), *(v1 + 16), &v11);
    if (v19 == 1)
    {
      sub_265FC2440(&v11);
      *&v11 = 0;
      *(&v11 + 1) = 0xE000000000000000;
      sub_265FEC550();

      *&v11 = v4;
      *(&v11 + 1) = v5;
      LOWORD(v12) = v3;
      v10 = Profile.DisplayIdentity.description.getter();
      MEMORY[0x2667756D0](v10);

      sub_265FEC5E0();
      __break(1u);
    }

    else
    {
      v6 = v18;
      a1[6] = v17;
      a1[7] = v6;
      a1[8] = v19;
      v7 = v14;
      a1[2] = v13;
      a1[3] = v7;
      v8 = v16;
      a1[4] = v15;
      a1[5] = v8;
      v9 = v12;
      *a1 = v11;
      a1[1] = v9;
    }
  }

  else
  {
    a1[6] = 0u;
    a1[7] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    a1[8] = xmmword_265FEF050;
  }
}

uint64_t sub_265FD0AC4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = MEMORY[0x277D84F90];
  *&v194 = sub_265FD21A0(MEMORY[0x277D84F90]);
  *(&v194 + 1) = v6;
  *&v195 = v7;
  sub_265FE48DC(v5);
  *(&v195 + 1) = v8;
  *&v196 = v9;
  sub_265FE48DC(v5);
  *(&v196 + 1) = v10;
  *v197 = v11;
  *&v197[16] = 0;
  *&v197[24] = -258;
  sub_265FE48DC(v5);
  *&v188 = v12;
  *(&v188 + 1) = v13;
  sub_265FE48DC(v5);
  *&v189 = v14;
  *(&v189 + 1) = v15;
  sub_265FE48DC(v5);
  *&v190 = v16;
  *(&v190 + 1) = v17;
  sub_265FE48DC(v5);
  v192 = 0uLL;
  *v193 = -258;
  *&v193[16] = 0;
  *&v193[8] = 0;
  *&v193[24] = -258;
  v18 = *v2;
  v19 = v2[1];
  v186 = *v2;
  v187 = v19;
  v20 = *(a1 + 16);

  v157 = v20;
  if (!v20)
  {
LABEL_152:

    *&v191 = v18;
    *(&v191 + 1) = v19;

    v117 = *&v197[8];
    v116 = *&v197[16];
    v118 = *&v197[24];
    v120 = v3[7];
    v119 = v3[8];
    v121 = *(v3 + 36);
    if ((~*&v197[24] & 0xFFFFFEFE) == 0)
    {
      sub_265FD246C(*&v197[8], *&v197[16], *&v197[24]);
      sub_265FD246C(v120, v119, v121);

      if ((~v121 & 0xFFFFFEFE) == 0)
      {
        goto LABEL_175;
      }

      goto LABEL_157;
    }

    if ((~v121 & 0xFFFFFEFE) == 0)
    {
      sub_265FD246C(*&v197[8], *&v197[16], *&v197[24]);
      sub_265FD246C(v120, v119, v121);
      sub_265FD246C(v117, v116, v118);

      sub_265FC23C8();
LABEL_157:
      sub_265FD2458(v117, v116, v118);
      v122 = v120;
      v123 = v119;
      v124 = v121;
LABEL_165:
      sub_265FD2458(v122, v123, v124);
      v125 = v3[7];
      v126 = v3[8];
      v127 = v192;
      v128 = *(v3 + 36);
      v129 = *v193;
      sub_265FD246C(v125, v126, v128);
      sub_265FD2458(v127, *(&v127 + 1), v129);
      *&v192 = v125;
      *(&v192 + 1) = v126;
      *v193 = v128;
      v130 = *&v193[8];
      v131 = *&v193[16];
      v132 = *&v193[24];
      sub_265FD246C(v117, v116, v118);
      sub_265FD2458(v130, v131, v132);
      *&v193[8] = v117;
      *&v193[16] = v116;
      *&v193[24] = v118;
LABEL_176:
      v160 = v196;
      v161[0] = *v197;
      *(v161 + 10) = *&v197[10];
      v158 = v194;
      v159 = v195;
      v139 = *(v3 + 3);
      v162[2] = *(v3 + 2);
      v163[0] = v139;
      *(v163 + 10) = *(v3 + 58);
      v140 = *(v3 + 1);
      v162[0] = *v3;
      v162[1] = v140;
      sub_265FCF134(&v158, &v180);
      sub_265FD2480(v162);
      v141 = v161[0];
      *(v3 + 2) = v160;
      *(v3 + 3) = v141;
      *(v3 + 58) = *(v161 + 10);
      v142 = v159;
      *v3 = v158;
      *(v3 + 1) = v142;
      v144 = v192;
      v143 = *v193;
      v176 = v192;
      *v177 = *v193;
      *&v177[10] = *&v193[10];
      v146 = v188;
      v145 = v189;
      v172 = v188;
      v173 = v189;
      v148 = v190;
      v147 = v191;
      v174 = v190;
      v175 = v191;
      v149 = *&v193[10];
      *(a2 + 90) = *&v193[10];
      a2[4] = v144;
      a2[5] = v143;
      a2[2] = v148;
      a2[3] = v147;
      *a2 = v146;
      a2[1] = v145;
      v180 = v146;
      v181 = v145;
      v182 = v148;
      v183 = v147;
      v184 = v144;
      v185[0] = v143;
      *(v185 + 10) = v149;
      sub_265FD24B0(&v172, &v164);
      sub_265FD24E8(&v180);
      v166 = v196;
      *v167 = *v197;
      *&v167[10] = *&v197[10];
      v164 = v194;
      v165 = v195;
      return sub_265FD2480(&v164);
    }

    if (*&v197[24] < 0)
    {
      if (v121 < 0)
      {
        if (*&v197[8] == v120 && *&v197[16] == v119)
        {
          sub_265FD246C(*&v197[8], *&v197[16], *&v197[24]);
          sub_265FD246C(v117, v116, v121);
          sub_265FD246C(v117, v116, v118);
          sub_265FD2458(v117, v116, v121);
        }

        else
        {
          v136 = v3[7];
          v137 = v3[8];
          v138 = sub_265FEC6C0();
          sub_265FD246C(v117, v116, v118);
          sub_265FD246C(v120, v119, v121);
          sub_265FD246C(v117, v116, v118);
          sub_265FD2458(v120, v119, v121);

          if ((v138 & 1) == 0)
          {
            goto LABEL_164;
          }
        }

        if (((v118 ^ v121) & 1) == 0 && (((v118 ^ v121) >> 8) & 1) == 0)
        {
          goto LABEL_174;
        }

LABEL_164:
        sub_265FC23C8();
        v122 = v117;
        v123 = v116;
        v124 = v118;
        goto LABEL_165;
      }
    }

    else if ((v121 & 0x80000000) == 0)
    {
      if (*&v197[8] == __PAIR128__(v119, v120))
      {
        sub_265FD246C(*&v197[8], *&v197[16], *&v197[24]);
        sub_265FD246C(v117, v116, v121);
        sub_265FD246C(v117, v116, v118);
        sub_265FD2458(v117, v116, v121);

LABEL_174:
        sub_265FC23C8();
LABEL_175:
        sub_265FD2458(v117, v116, v118);
        goto LABEL_176;
      }

      v133 = v3[7];
      v134 = v3[8];
      v135 = sub_265FEC6C0();
      sub_265FD246C(v117, v116, v118);
      sub_265FD246C(v120, v119, v121);
      sub_265FD246C(v117, v116, v118);
      sub_265FD2458(v120, v119, v121);

      if (v135)
      {
        goto LABEL_174;
      }

      goto LABEL_164;
    }

    sub_265FD246C(*&v197[8], *&v197[16], *&v197[24]);
    sub_265FD246C(v120, v119, v121);
    sub_265FD246C(v117, v116, v118);
    sub_265FD2458(v120, v119, v121);

    goto LABEL_164;
  }

  v155 = v19;
  v156 = v18;
  v21 = 0;
  while (v21 < *(a1 + 16))
  {
    sub_265FC24A8(a1 + 32 + 144 * v21, &v180);
    sub_265FE0D40(v180, *(&v180 + 1), v181, v194, *(&v194 + 1), v195, &v172);
    v23 = v179;
    sub_265FC2440(&v172);
    if (v23 != 1)
    {
      goto LABEL_178;
    }

    v24 = v180;
    v25 = v181;
    sub_265FC24A8(&v180, &v172);
    sub_265FC23C0();
    sub_265FBF4AC(&v172, v24, *(&v24 + 1), v25);
    v26 = BYTE2(v181);
    v27 = v180;
    v28 = v181;
    if (BYTE2(v181) == 1)
    {
      v29 = v196;
      v30 = *(v196 + 16);
      if (*(&v195 + 1))
      {

        sub_265FC0994(v27, *(&v27 + 1), v28, v29 + 32, v30, (v24 + 16));
        v32 = v31;

        if ((v32 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      else if (v30)
      {
        v37 = (v196 + 48);
        do
        {
          v38 = *(v37 - 2);
          v39 = *(v37 - 1);
          v40 = *v37;
          if ((v40 & 0x80000000) != 0)
          {
            if (v28 < 0)
            {
              v42 = v38 == v27 && v39 == *(&v27 + 1);
              if (v42 || (sub_265FEC6C0()) && ((v28 ^ v40) & 1) == 0 && (((v28 ^ v40) >> 8) & 1) == 0)
              {
                goto LABEL_56;
              }
            }
          }

          else if ((v28 & 0x80000000) == 0)
          {
            v41 = v38 == v27 && v39 == *(&v27 + 1);
            if (v41 || (sub_265FEC6C0() & 1) != 0)
            {
              goto LABEL_56;
            }
          }

          v37 += 12;
          --v30;
        }

        while (v30);
      }

      sub_265FBFE5C(v27, *(&v27 + 1), v28);
LABEL_56:
      v49 = v180;
      v50 = *&v197[8];
      v51 = *&v197[16];
      v52 = v181;
      v53 = *&v197[24];
      sub_265FC23C0();
      sub_265FD2458(v50, v51, v53);
      *&v197[8] = v49;
      *&v197[24] = v52;
      goto LABEL_58;
    }

    v33 = *v197;
    v34 = *(*v197 + 16);
    if (!*(&v196 + 1))
    {
      if (v34)
      {
        v43 = (*v197 + 48);
        do
        {
          v44 = *(v43 - 2);
          v45 = *(v43 - 1);
          v46 = *v43;
          if ((v46 & 0x80000000) != 0)
          {
            if (v28 < 0)
            {
              v48 = v44 == v27 && v45 == *(&v27 + 1);
              if (v48 || (sub_265FEC6C0()) && ((v28 ^ v46) & 1) == 0 && (((v28 ^ v46) >> 8) & 1) == 0)
              {
                goto LABEL_58;
              }
            }
          }

          else if ((v28 & 0x80000000) == 0)
          {
            v47 = v44 == v27 && v45 == *(&v27 + 1);
            if (v47 || (sub_265FEC6C0() & 1) != 0)
            {
              goto LABEL_58;
            }
          }

          v43 += 12;
          --v34;
        }

        while (v34);
      }

LABEL_57:
      sub_265FBFE5C(v27, *(&v27 + 1), v28);
      goto LABEL_58;
    }

    sub_265FC0994(v27, *(&v27 + 1), v28, v33 + 32, v34, (v24 + 16));
    v36 = v35;

    if (v36)
    {
      goto LABEL_57;
    }

LABEL_58:
    sub_265FE0D40(v180, *(&v180 + 1), v181, v156, v155, v3[2], &v164);
    if (v171 != 1)
    {
      *&v177[16] = v169;
      v178 = v170;
      v179 = v171;
      v174 = v166;
      v175 = *v167;
      v176 = *&v167[16];
      *v177 = v168;
      v172 = v164;
      v173 = v165;
      if (BYTE2(v165) == 1)
      {
        if ((v26 & 1) == 0)
        {
          v60 = v180;
          v61 = v181;
          v62 = v190;
          v63 = *(*(&v190 + 1) + 16);
          if (v190)
          {

            sub_265FC0994(v60, *(&v60 + 1), v61, *(&v62 + 1) + 32, v63, (v62 + 16));
            v65 = v64;

            if ((v65 & 1) == 0)
            {
              goto LABEL_127;
            }
          }

          else if (v63)
          {
            v90 = (*(&v190 + 1) + 48);
            do
            {
              v91 = *(v90 - 2);
              v92 = *(v90 - 1);
              v93 = *v90;
              if ((v93 & 0x80000000) != 0)
              {
                if (v61 < 0)
                {
                  v95 = v91 == v60 && v92 == *(&v60 + 1);
                  if (v95 || (sub_265FEC6C0()) && ((v61 ^ v93) & 1) == 0 && (((v61 ^ v93) >> 8) & 1) == 0)
                  {
                    goto LABEL_127;
                  }
                }
              }

              else if ((v61 & 0x80000000) == 0)
              {
                v94 = v91 == v60 && v92 == *(&v60 + 1);
                if (v94 || (sub_265FEC6C0() & 1) != 0)
                {
                  goto LABEL_127;
                }
              }

              v90 += 12;
              --v63;
            }

            while (v63);
          }

          v98 = *(&v60 + 1);
          v97 = v60;
          v99 = v61;
LABEL_126:
          sub_265FBFE5C(v97, v98, v99);
        }
      }

      else if (v26)
      {
        v66 = v180;
        v67 = v181;
        v68 = v189;
        v69 = *(*(&v189 + 1) + 16);
        if (v189)
        {

          sub_265FC0994(v66, *(&v66 + 1), v67, *(&v68 + 1) + 32, v69, (v68 + 16));
          v71 = v70;

          if ((v71 & 1) == 0)
          {
            goto LABEL_127;
          }
        }

        else
        {
          sub_265FE46EC(v180, *(&v180 + 1), v181, *(&v189 + 1) + 32, v69);
          if ((v96 & 1) == 0)
          {
            goto LABEL_127;
          }
        }

        v98 = *(&v66 + 1);
        v97 = v66;
        v99 = v67;
        goto LABEL_126;
      }

LABEL_127:
      sub_265FC2504(&v172);
      goto LABEL_128;
    }

    sub_265FC2440(&v164);
    v54 = v180;
    v55 = v181;
    v56 = v188;
    v57 = *(*(&v188 + 1) + 16);
    if (!v188)
    {
      if (v57)
      {
        v72 = (*(&v188 + 1) + 48);
        do
        {
          v73 = *(v72 - 2);
          v74 = *(v72 - 1);
          v75 = *v72;
          if ((v75 & 0x80000000) != 0)
          {
            if (v55 < 0)
            {
              v77 = v73 == v54 && v74 == *(&v54 + 1);
              if (v77 || (sub_265FEC6C0()) && ((v55 ^ v75) & 1) == 0 && (((v55 ^ v75) >> 8) & 1) == 0)
              {
                goto LABEL_92;
              }
            }
          }

          else if ((v55 & 0x80000000) == 0)
          {
            v76 = v73 == v54 && v74 == *(&v54 + 1);
            if (v76 || (sub_265FEC6C0() & 1) != 0)
            {
              goto LABEL_92;
            }
          }

          v72 += 12;
          --v57;
        }

        while (v57);
      }

LABEL_91:
      sub_265FBFE5C(v54, *(&v54 + 1), v55);
      goto LABEL_92;
    }

    sub_265FC0994(v54, *(&v54 + 1), v55, *(&v56 + 1) + 32, v57, (v56 + 16));
    v59 = v58;

    if (v59)
    {
      goto LABEL_91;
    }

LABEL_92:
    v78 = v180;
    v79 = v181;
    if (v26)
    {
      v80 = v189;
      v81 = *(*(&v189 + 1) + 16);
      if (v189)
      {

        sub_265FC0994(v78, *(&v78 + 1), v79, *(&v80 + 1) + 32, v81, (v80 + 16));
        v83 = v82;

        if ((v83 & 1) == 0)
        {
          goto LABEL_128;
        }

        goto LABEL_102;
      }

      sub_265FE46EC(v180, *(&v180 + 1), v181, *(&v189 + 1) + 32, v81);
      if (v88)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v84 = v190;
      v85 = *(*(&v190 + 1) + 16);
      if (v190)
      {

        sub_265FC0994(v78, *(&v78 + 1), v79, *(&v84 + 1) + 32, v85, (v84 + 16));
        v87 = v86;

        if ((v87 & 1) == 0)
        {
          goto LABEL_128;
        }

LABEL_102:
        sub_265FBFE5C(v78, *(&v78 + 1), v79);
        goto LABEL_128;
      }

      sub_265FE46EC(v180, *(&v180 + 1), v181, *(&v190 + 1) + 32, v85);
      if (v89)
      {
        goto LABEL_102;
      }
    }

LABEL_128:
    v101 = *(&v180 + 1);
    v100 = v180;
    v102 = v181;
    v103 = v186;
    v104 = v187;
    v105 = *(v187 + 16);
    if (v186)
    {

      v106 = sub_265FC0994(v100, v101, v102, v104 + 32, v105, (v103 + 16));
      v108 = v107;
      v22 = v109;

      if ((v108 & 1) == 0)
      {
LABEL_4:
        sub_265FC0D0C(v106, v22, &v172);
        sub_265FC23C8();
      }
    }

    else if (v105)
    {
      v106 = 0;
      v110 = (v187 + 48);
      do
      {
        v111 = *(v110 - 2);
        v112 = *(v110 - 1);
        v113 = *v110;
        if ((v113 & 0x80000000) != 0)
        {
          if (v102 < 0)
          {
            v115 = v111 == v100 && v112 == v101;
            if (v115 || (sub_265FEC6C0()) && ((v102 ^ v113) & 1) == 0 && (((v102 ^ v113) >> 8) & 1) == 0)
            {
LABEL_3:
              v22 = 0;
              goto LABEL_4;
            }
          }
        }

        else if ((v102 & 0x80000000) == 0)
        {
          v114 = v111 == v100 && v112 == v101;
          if (v114 || (sub_265FEC6C0() & 1) != 0)
          {
            goto LABEL_3;
          }
        }

        v110 += 12;
        ++v106;
      }

      while (v105 != v106);
    }

    ++v21;
    sub_265FC2504(&v180);
    if (v21 == v157)
    {
      v18 = v186;
      v19 = v187;
      goto LABEL_152;
    }
  }

  __break(1u);
LABEL_178:
  *&v172 = 0;
  *(&v172 + 1) = 0xE000000000000000;
  sub_265FEC550();

  *&v164 = 0xD00000000000002FLL;
  *(&v164 + 1) = 0x8000000265FF1590;
  v172 = v180;
  LOWORD(v173) = v181;
  sub_265FC23C0();
  v151 = Profile.DisplayIdentity.description.getter();
  v153 = v152;
  sub_265FC23C8();
  MEMORY[0x2667756D0](v151, v153);

  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

void *sub_265FD1984(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055240, &qword_265FEF170);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_265FD1A0C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_265FEC4A0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_265FD1984(v3, 0);
  sub_265FD1C98((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_265FD1AA0(uint64_t result, char a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t))
{
  if (result < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = v4;
  v9 = result;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if (isUniquelyReferenced_nonNull_native && v9 <= *(v11 + 24) >> 1)
  {
    v14 = *v7;
    if (*v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v11 + 16) > v9)
    {
      v18 = *(v11 + 16);
    }

    a3();
    v11 = *v10;
    v14 = *v7;
    if (*v7)
    {
LABEL_5:
      swift_beginAccess();
      v15 = *(v14 + 16) & 0x3FLL;
      v16 = MEMORY[0x2667755A0](v9);
      if (a2)
      {
        v17 = v16;
        if (v15 >= v16)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v20 = v16;
        swift_beginAccess();
        v16 = v20;
        v17 = *(v14 + 24) & 0x3FLL;
        if (v15 >= v16)
        {
          goto LABEL_19;
        }
      }

LABEL_15:
      if (v17 <= v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = v17;
      }

      goto LABEL_29;
    }
  }

  v16 = MEMORY[0x2667755A0](v9);
  v15 = 0;
  if (a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v16 > 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v21 = *(v11 + 16);
  if (v17 <= v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = v17;
  }

  result = MEMORY[0x2667755A0](*(v11 + 16));
  if (result <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = result;
  }

  if (v23 < v15)
  {
    if (v17 <= v23)
    {
      v19 = v23;
    }

    else
    {
      v19 = v17;
    }

LABEL_29:
    v24 = a4(v11, v19, 0, v17);

    *v7 = v24;
    return result;
  }

  if (!v14 || (v25 = *v7, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v26 = *v7;
    if (*v7)
    {
      goto LABEL_34;
    }

LABEL_38:
    if (!v17)
    {
      return result;
    }

    __break(1u);
    goto LABEL_40;
  }

  if (!*v7)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v27 = *v7;
  v26 = sub_265FEC010();

  *v7 = v26;
  if (!v26)
  {
    goto LABEL_38;
  }

LABEL_34:
  result = swift_beginAccess();
  if ((*(v26 + 24) & 0x3FLL) != v17)
  {
    *(v26 + 24) = *(v26 + 24) & 0xFFFFFFFFFFFFFFC0 | v17 & 0x3F;
  }

  return result;
}

uint64_t sub_265FD1C98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_265FEC4A0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_265FEC4A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_265FD2588(&qword_280055238, &qword_280055230, &qword_265FEF168);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055230, &qword_265FEF168);
            v9 = sub_265FE50EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_265FC20E0();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_265FD1E28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_265FEC4A0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_265FEC4A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_265FD2588(qword_280055250, &qword_280055248, &qword_265FEF178);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055248, &qword_265FEF178);
            v9 = sub_265FE516C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SSKDisplayProfile(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_265FD1FB8(uint64_t a1)
{
  v17 = MEMORY[0x277D84F90];
  v16 = sub_265FD1A0C(MEMORY[0x277D84F90]);
  v2 = *(a1 + 16);
  sub_265FD1AA0(v2, 0, sub_265FBFFF8, sub_265FC0458);
  sub_265FEC5A0();
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  while (1)
  {
    v7 = (v4 + 24 * v3);
    v9 = *v7;
    v8 = v7[1];
    v10 = v7[2];
    v11 = *(v17 + 16);
    if (v11)
    {
      break;
    }

LABEL_12:

    v14 = v10;
    ++v3;
    sub_265FBFCD0(v9, v8);
    v5 = v10;
    sub_265FEC580();
    v6 = *(v16 + 16);
    sub_265FEC5B0();
    sub_265FEC5C0();
    sub_265FEC590();

    if (v3 == v2)
    {
      return 0;
    }
  }

  v12 = (v17 + 40);
  while (1)
  {
    v13 = *(v12 - 1) == v9 && *v12 == v8;
    if (v13 || (sub_265FEC6C0() & 1) != 0)
    {
      break;
    }

    v12 += 2;
    if (!--v11)
    {
      goto LABEL_12;
    }
  }

  result = v10;
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_265FD21A0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v43 = 0;
  v44 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_265FD1AA0(v3, 0, sub_265FC0018, sub_265FC0470);
  v42 = v2;
  sub_265FC0038(0, v3, 0);
  if (!v3)
  {
    return v43;
  }

  v4 = 0;
  v28 = a1 + 32;
  while (1)
  {
    sub_265FD2518(v28 + 168 * v4, v31);
    v5 = v31[0];
    v6 = v31[1];
    v7 = v32;
    v30[2] = v35;
    v30[3] = v36;
    v30[7] = v40;
    v30[8] = v41;
    v30[4] = v37;
    v30[5] = v38;
    v30[6] = v39;
    v30[0] = v33;
    v30[1] = v34;
    v8 = v43;
    v9 = v44;
    v10 = *(v44 + 16);
    if (!v43)
    {
      if (v10)
      {
        v14 = (v44 + 48);
        while (1)
        {
          result = *(v14 - 2);
          v15 = *(v14 - 1);
          v16 = *v14;
          if ((v16 & 0x80000000) != 0)
          {
            if (v7 < 0)
            {
              v18 = result == v5 && v15 == v6;
              if (v18 || (result = sub_265FEC6C0(), (result & 1) != 0))
              {
                if (((v7 ^ v16) & 1) == 0 && (((v7 ^ v16) >> 8) & 1) == 0)
                {
                  goto LABEL_32;
                }
              }
            }
          }

          else if ((v7 & 0x80000000) == 0)
          {
            if (result == v5 && v15 == v6)
            {
              goto LABEL_32;
            }

            result = sub_265FEC6C0();
            if (result)
            {
              goto LABEL_32;
            }
          }

          v14 += 12;
          if (!--v10)
          {
            goto LABEL_26;
          }
        }
      }

      goto LABEL_26;
    }

    sub_265FC0994(v5, v6, v7, v9 + 32, v10, (v8 + 16));
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      break;
    }

LABEL_26:
    sub_265FBFE5C(v5, v6, v7);
    sub_265FC24A8(v30, v29);
    v42 = v2;
    v20 = *(v2 + 16);
    v19 = *(v2 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_265FC0038((v19 > 1), v20 + 1, 1);
      sub_265FC23C8();
      v2 = v42;
    }

    else
    {
      sub_265FC23C8();
    }

    ++v4;
    sub_265FC2504(v30);
    *(v2 + 16) = v20 + 1;
    v21 = (v2 + 144 * v20);
    v22 = v29[4];
    v24 = v29[1];
    v23 = v29[2];
    v21[5] = v29[3];
    v21[6] = v22;
    v21[3] = v24;
    v21[4] = v23;
    v25 = v29[8];
    v27 = v29[5];
    v26 = v29[6];
    v21[9] = v29[7];
    v21[10] = v25;
    v21[7] = v27;
    v21[8] = v26;
    v21[2] = v29[0];
    if (v4 == v3)
    {
      return v43;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_265FD2458(uint64_t a1, uint64_t a2, int a3)
{
  if ((~a3 & 0xFEFE) != 0)
  {
    return sub_265FC23C8();
  }

  return result;
}

uint64_t sub_265FD246C(uint64_t a1, uint64_t a2, int a3)
{
  if ((~a3 & 0xFEFE) != 0)
  {
    return sub_265FC23C0();
  }

  return result;
}

uint64_t sub_265FD2518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055228, "lM");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265FD2588(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_265FD2608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
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

uint64_t sub_265FD2650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265FD27D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_265FD283C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_265FD28AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_265FD291C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = nullsub_1(*v1, v1[1]);

  return v3;
}

uint64_t sub_265FD2960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_265FD29D4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_265FD29E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  else
  {
    return sub_265FEC6C0();
  }
}

uint64_t sub_265FD2A20(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return sub_265FEC6E0();
}

uint64_t sub_265FD2AA0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_265FD2ADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_265FD2B24(uint64_t result, int a2, int a3)
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

uint64_t sub_265FD2B78(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_265FD2BE8()
{
  v1 = v0;
  v2 = *v0;
  sub_265FD3158(0);
  v3 = v0[3];
  v0[3] = 0;

  swift_beginAccess();
  v4 = v0[2];
  if ((v4 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = v0[2];
    }

    sub_265FEC490();
    sub_265FCF0EC(0, &qword_280054BD0, 0x277D0AAC8);
    sub_265FD4EE0();
    result = sub_265FEC2F0();
    v4 = v52;
    v7 = v53;
    v9 = v54;
    v8 = v55;
    v10 = v56;
  }

  else
  {
    v11 = -1 << *(v4 + 32);
    v7 = v4 + 56;
    v9 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v4 + 56);

    v8 = 0;
  }

  v35 = v9;
  v14 = (v9 + 64) >> 6;
  v36 = v2 - 8;
  v38 = v1;
  v37 = v4;
  v43 = v7;
  while (v4 < 0)
  {
    v20 = sub_265FEC4C0();
    if (!v20)
    {
      return sub_265FCF430();
    }

    v48[0] = v20;
    sub_265FCF0EC(0, &qword_280054BD0, 0x277D0AAC8);
    swift_dynamicCast();
    v19 = v49[0];
    v17 = v8;
    v18 = v10;
    if (!v49[0])
    {
      return sub_265FCF430();
    }

LABEL_22:
    v44 = v18;
    v50 = v2;
    v21 = sub_265FD4070(&qword_2800552F8);
    v51 = v21;
    v49[0] = v1;
    type metadata accessor for TransformSceneExtension();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    type metadata accessor for TransformSceneExtension.HostComponent();
    v23 = swift_getObjCClassFromMetadata();

    v24 = [v19 componentForExtension:ObjCClassFromMetadata ofClass:{v23, v35, v36}];
    if (!v24)
    {

LABEL_11:
      v10 = v44;
      goto LABEL_12;
    }

    v48[0] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055310, &qword_265FEF6D8);
    swift_dynamicCast();
    v25 = v45;
    if (!v45)
    {

      v7 = v43;
      goto LABEL_11;
    }

    v26 = *__swift_project_boxed_opaque_existential_1(v49, v50);
    v48[3] = v2;
    v48[4] = v21;
    v48[0] = v26;
    v41 = __swift_project_boxed_opaque_existential_1(v48, v2);
    swift_beginAccess();
    v27 = sub_265FEC440();
    v42 = &v35;
    v40 = v27;
    v39 = *(v27 - 8);
    v28 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20]();
    v29 = v2;
    v31 = &v35 - v30;
    v32 = *(v21 + 8);

    sub_265FEC310();
    swift_endAccess();
    v33 = *(v29 - 8);
    if ((*(v33 + 48))(v31, 1, v29) == 1)
    {

      (*(v39 + 8))(v31, v40);
      v47 = 0;
      v46 = 0u;
      v45 = 0u;
    }

    else
    {
      *(&v46 + 1) = v29;
      v47 = v21;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v45);
      (*(v33 + 32))(boxed_opaque_existential_1, v31, v29);
    }

    v2 = v29;
    v10 = v44;
    sub_265FD4F48(&v45);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v1 = v38;
    v4 = v37;
    v7 = v43;
LABEL_12:
    result = __swift_destroy_boxed_opaque_existential_0(v49);
    v8 = v17;
  }

  v15 = v8;
  v16 = v10;
  v17 = v8;
  if (v10)
  {
LABEL_18:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v4 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      return sub_265FCF430();
    }

    goto LABEL_22;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      return sub_265FCF430();
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void sub_265FD3158(char *a1)
{
  if (a1)
  {
    v2 = *&a1[OBJC_IVAR____TtC13ShellSceneKit27RootScenePresentationBinder_rootWindow];
    v3 = a1;
    v4 = [v2 layer];
    v5 = [v4 context];

    if (v5)
    {
      v75 = [v5 contextId];
    }

    else
    {
      v75 = 0;
    }

    swift_beginAccess();
    v13 = *(v1 + 16);
    if ((v13 & 0xC000000000000001) != 0)
    {
      if (v13 < 0)
      {
        v14 = *(v1 + 16);
      }

      sub_265FEC490();
      sub_265FCF0EC(0, &qword_280054BD0, 0x277D0AAC8);
      sub_265FD4EE0();
      sub_265FEC2F0();
      v13 = v91;
      v15 = v92;
      v16 = v93;
      v17 = v94;
      v18 = v95;
    }

    else
    {
      v19 = -1 << *(v13 + 32);
      v15 = v13 + 56;
      v16 = ~v19;
      v20 = -v19;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v18 = v21 & *(v13 + 56);
      v22 = *(v1 + 16);

      v17 = 0;
    }

    v23 = (v16 + 64) >> 6;
    v82 = v13;
    v76 = v5;
    v77 = v3;
    while (1)
    {
      if (v13 < 0)
      {
        v31 = sub_265FEC4C0();
        if (!v31)
        {
          goto LABEL_62;
        }

        v86 = v31;
        sub_265FCF0EC(0, &qword_280054BD0, 0x277D0AAC8);
        swift_dynamicCast();
        v30 = aBlock;
        v28 = v17;
        v29 = v18;
        if (!aBlock)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v26 = v17;
        v27 = v18;
        v28 = v17;
        if (!v18)
        {
          while (1)
          {
            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v28 >= v23)
            {
              goto LABEL_62;
            }

            v27 = *(v15 + 8 * v28);
            ++v26;
            if (v27)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
          goto LABEL_65;
        }

LABEL_26:
        v29 = (v27 - 1) & v27;
        v30 = *(*(v13 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
        if (!v30)
        {
          goto LABEL_62;
        }
      }

      v84 = v29;
      [v3 addScene_];
      v32 = [v30 definition];
      v33 = [v32 clientIdentity];

      LODWORD(v32) = [v33 isLocal];
      if (v32)
      {
        type metadata accessor for BacklightSupportSceneExtension();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        type metadata accessor for BacklightSupportSceneExtension.HostComponent();
        v35 = [v30 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()];
        if (v35)
        {
          *&aBlock = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055320, &qword_265FEE6F0);
          swift_dynamicCast();
          if (v86)
          {
            v36 = [v86 hostScene];
            if (!v36)
            {
              goto LABEL_70;
            }

            v37 = v36;
            v38 = swift_allocObject();
            *(v38 + 16) = v75;
            *(v38 + 20) = v5 == 0;
            v39 = swift_allocObject();
            *(v39 + 16) = sub_265FD4FFC;
            *(v39 + 24) = v38;
            *&v89 = sub_265FD5000;
            *(&v89 + 1) = v39;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v88 = sub_265FBCE10;
            *(&v88 + 1) = &block_descriptor_19;
            v40 = _Block_copy(&aBlock);

            [v37 updateSettingsWithBlock_];

            v41 = v40;
            v5 = v76;
            _Block_release(v41);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            v3 = v77;
            v13 = v82;
            if (isEscapingClosureAtFileLocation)
            {
              goto LABEL_66;
            }
          }
        }
      }

      type metadata accessor for TransformSceneExtension();
      v43 = swift_getObjCClassFromMetadata();
      type metadata accessor for TransformSceneExtension.HostComponent();
      v44 = [v30 componentForExtension:v43 ofClass:swift_getObjCClassFromMetadata()];
      v45 = 0uLL;
      if (v44)
      {
        *&aBlock = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055310, &qword_265FEF6D8);
        swift_dynamicCast();
        if (v86)
        {
          v46 = *&v86[OBJC_IVAR____TtCC13ShellSceneKit23TransformSceneExtension13HostComponent_scene];
          if (!v46)
          {
            goto LABEL_70;
          }

          v47 = v46;
          v48 = [v47 settings];
          if (!swift_dynamicCastObjCProtocolConditional())
          {

            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            sub_265FEC550();

            *&aBlock = 0xD00000000000002BLL;
            *(&aBlock + 1) = 0x8000000265FF1690;
            v70 = [v47 settings];
            v71 = [v70 description];
            v72 = sub_265FEC0E0();
            v74 = v73;

            MEMORY[0x2667756D0](v72, v74);

            goto LABEL_70;
          }

          swift_getObjectType();
          sub_265FE9E5C(&v96);
          v80 = v97;
          v81 = v96;
          v79 = v98;

          v25 = v80;
          v24 = v81;
          v45 = v79;
          v13 = v82;
          v18 = v84;
        }

        else
        {
          v24 = xmmword_265FEF5F0;
          v25 = xmmword_265FEF5E0;
          v13 = v82;
          v18 = v84;
          v45 = 0uLL;
        }
      }

      else
      {
        v24 = xmmword_265FEF5F0;
        v25 = xmmword_265FEF5E0;
        v18 = v84;
      }

      aBlock = v24;
      v88 = v25;
      v89 = v45;
      [v3 setTransform:&aBlock forScene:v30];

      v17 = v28;
    }
  }

  v3 = *(v1 + 24);
  if (!v3)
  {
    return;
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *(v1 + 16);
    }

    v8 = v3;

    sub_265FEC490();
    sub_265FCF0EC(0, &qword_280054BD0, 0x277D0AAC8);
    sub_265FD4EE0();
    sub_265FEC2F0();
    v9 = *(&aBlock + 1);
    v6 = aBlock;
    v11 = *(&v88 + 1);
    v10 = v88;
    v12 = v89;
  }

  else
  {
    v49 = -1 << *(v6 + 32);
    v9 = v6 + 56;
    v10 = ~v49;
    v50 = -v49;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v12 = v51 & *(v6 + 56);
    v52 = v3;

    v11 = 0;
  }

  v53 = (v10 + 64) >> 6;
  v54 = &unk_279BC1000;
  v78 = v3;
  v83 = v6;
  while (1)
  {
    if (v6 < 0)
    {
      v60 = sub_265FEC4C0();
      if (!v60)
      {
        goto LABEL_62;
      }

      v90 = v60;
      sub_265FCF0EC(0, &qword_280054BD0, 0x277D0AAC8);
      swift_dynamicCast();
      v59 = v96;
      v57 = v11;
      v58 = v12;
      if (!v96)
      {
        goto LABEL_62;
      }

      goto LABEL_57;
    }

    v55 = v11;
    v56 = v12;
    v57 = v11;
    if (!v12)
    {
      break;
    }

LABEL_53:
    v58 = (v56 - 1) & v56;
    v59 = *(*(v6 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v56)))));
    if (!v59)
    {
      goto LABEL_62;
    }

LABEL_57:
    v85 = v58;
    [v3 v54[176]];
    type metadata accessor for BacklightSupportSceneExtension();
    v61 = swift_getObjCClassFromMetadata();
    type metadata accessor for BacklightSupportSceneExtension.HostComponent();
    v62 = [v59 componentForExtension:v61 ofClass:swift_getObjCClassFromMetadata()];
    if (v62 && (*&v96 = v62, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055320, &qword_265FEE6F0), swift_dynamicCast(), (v63 = v90) != 0))
    {
      v64 = [v90 hostScene];
      if (!v64)
      {
        goto LABEL_70;
      }

      v65 = v64;
      v66 = swift_allocObject();
      *(v66 + 16) = 0;
      *(v66 + 20) = 1;
      v67 = swift_allocObject();
      *(v67 + 16) = sub_265FD4FB0;
      *(v67 + 24) = v66;
      *&v98 = sub_265FD4FB4;
      *(&v98 + 1) = v67;
      *&v96 = MEMORY[0x277D85DD0];
      *(&v96 + 1) = 1107296256;
      *&v97 = sub_265FBCE10;
      *(&v97 + 1) = &block_descriptor_0;
      v68 = _Block_copy(&v96);

      [v65 updateSettingsWithBlock_];

      _Block_release(v68);
      v69 = swift_isEscapingClosureAtFileLocation();

      v11 = v57;
      v6 = v83;
      v12 = v85;
      v3 = v78;
      v54 = &unk_279BC1000;
      if (v69)
      {
        __break(1u);
LABEL_62:
        sub_265FCF430();

        return;
      }
    }

    else
    {

      v11 = v57;
      v12 = v85;
    }
  }

  while (1)
  {
    v57 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v57 >= v53)
    {
      goto LABEL_62;
    }

    v56 = *(v9 + 8 * v57);
    ++v55;
    if (v56)
    {
      goto LABEL_53;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_70:
  sub_265FEC5E0();
  __break(1u);
}

void sub_265FD3CD8(void *a1)
{
  v2 = v1;
  sub_265FD4CEC(v1);
  swift_beginAccess();
  v4 = a1;
  sub_265FD40F8(v25, v4, &qword_280054BD0, 0x277D0AAC8, &qword_2800552F0, &qword_265FF03F0);
  swift_endAccess();

  v5 = *(v1 + 24);
  if (v5)
  {
    [v5 addScene_];
  }

  v6 = [v4 definition];
  v7 = [v6 clientIdentity];

  LODWORD(v6) = [v7 isLocal];
  if (v6)
  {
    v8 = *(v2 + 24);
    if (v8 && (v9 = [*(v8 + OBJC_IVAR____TtC13ShellSceneKit27RootScenePresentationBinder_rootWindow) layer], v10 = objc_msgSend(v9, sel_context), v9, v10))
    {
      LODWORD(v12) = [v10 contextId];

      v11 = 0;
      v12 = v12;
    }

    else
    {
      v12 = 0;
      v11 = 1;
    }

    v13 = sub_265FC5F74();
    if (v13)
    {
      v14 = v13;
      LOBYTE(v26[0]) = v11;
      sub_265FDCF5C(v12 | (v11 << 32));
    }
  }

  v15 = *(v2 + 24);
  if (v15)
  {
    v16 = v15;
    v17 = sub_265FDBC1C();
    if (v17)
    {
      v18 = v17;
      sub_265FE9890(v26);
      v23 = v26[1];
      v24 = v26[0];
      v22 = v26[2];

      v20 = v22;
      v19 = v23;
      v21 = v24;
    }

    else
    {
      v19 = xmmword_265FEF5E0;
      v21 = xmmword_265FEF5F0;
      v20 = 0uLL;
    }

    v25[0] = v21;
    v25[1] = v19;
    v25[2] = v20;
    [v16 setTransform:v25 forScene:{v4, v22, v23, v24}];
  }
}

uint64_t sub_265FD3F08()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_265FD3F6C()
{
  v1 = *v0;
  sub_265FEC780();
  MEMORY[0x266775D10](v1);
  return sub_265FEC7B0();
}

uint64_t sub_265FD3FB4()
{
  v1 = *v0;
  sub_265FEC780();
  MEMORY[0x266775D10](v1);
  return sub_265FEC7B0();
}

uint64_t sub_265FD402C(uint64_t a1)
{
  result = sub_265FD4070(&unk_2800552E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_265FD4070(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _HostingContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_265FD40F8(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_265FEC4B0();

    if (v17)
    {

      sub_265FCF0EC(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_265FEC4A0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_265FD436C(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_265FD456C(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_265FD478C(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_265FCF0EC(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_265FEC410();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_265FEC420();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_265FD4810(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_265FD436C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_265FEC520();
    v24 = v10;
    sub_265FEC490();
    if (sub_265FEC4C0())
    {
      sub_265FCF0EC(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_265FD456C(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_265FEC410();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_265FEC4C0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_265FD456C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_265FEC510();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_265FEC410();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_265FD478C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_265FEC410();
  v5 = -1 << *(a2 + 32);
  result = sub_265FEC480();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_265FD4810(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_265FD456C(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_265FD49A0(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_265FD4AE0(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_265FEC410();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_265FCF0EC(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_265FEC420();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_265FEC700();
  __break(1u);
}

id sub_265FD49A0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_265FEC500();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_265FD4AE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_265FEC510();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_265FEC410();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_265FD4CEC(uint64_t a1)
{
  v2 = type metadata accessor for _HostingContext();
  v17[3] = v2;
  v3 = sub_265FD4070(&qword_2800552F8);
  v17[4] = v3;
  v17[0] = a1;

  v4 = sub_265FDBC1C();
  if (v4)
  {
    v5 = v4;
    v6 = *__swift_project_boxed_opaque_existential_1(v17, v2);
    v16[3] = v2;
    v16[4] = v3;
    v16[0] = v6;
    v7 = __swift_project_boxed_opaque_existential_1(v16, v2);
    v15 = &v15;
    v8 = *(v2 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7, v7);
    v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    (*(v8 + 16))(v16 - v10 + 16);
    v11 = swift_beginAccess();
    MEMORY[0x28223BE20](v11, v12);
    v13 = *(v3 + 8);

    sub_265FEC300();
    swift_endAccess();

    (*(v8 + 8))(v16 - v10 + 16, v2);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

unint64_t sub_265FD4EE0()
{
  result = qword_280055300;
  if (!qword_280055300)
  {
    sub_265FCF0EC(255, &qword_280054BD0, 0x277D0AAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055300);
  }

  return result;
}

uint64_t sub_265FD4F48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055820, qword_265FF0670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ConnectionContext.createLocalScene(identifier:specification:configureParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = [objc_opt_self() localIdentity];
  v15 = (*(a7 + 8))(a1, a2, a3, v14, a4, a5, a6, a7);

  return v15;
}

uint64_t sub_265FD5110(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_265FBFC04();
  sub_265FEBF40();
}

uint64_t sub_265FD517C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_getKeyPath();
  sub_265FBFC04();
  sub_265FEBF30();
}

uint64_t sub_265FD5214()
{
  v0 = sub_265FEC060();
  __swift_allocate_value_buffer(v0, qword_280055350);
  __swift_project_value_buffer(v0, qword_280055350);
  return sub_265FEC050();
}

void sub_265FD5298()
{
  v1 = [*(*(v0 + 56) + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace) allScenes];
  sub_265FC20E0();
  v2 = sub_265FEC1F0();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (v3 >= 1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x266775AE0](0, v2);
      }

      else
      {
        v4 = *(v2 + 32);
      }

      v5 = v4;

      sub_265FD6FEC(0);
      v6 = swift_allocObject();
      *(v6 + 16) = sub_265FD6FDC;
      *(v6 + 24) = v0;
      v20 = sub_265FD5000;
      v21 = v6;
      v7 = MEMORY[0x277D85DD0];
      aBlock = MEMORY[0x277D85DD0];
      v17 = 1107296256;
      v18 = sub_265FBCE10;
      v19 = &block_descriptor_33;
      v8 = _Block_copy(&aBlock);

      [v5 updateSettingsWithBlock_];

      _Block_release(v8);
      LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

      if ((v5 & 1) == 0)
      {
        v9 = v3 - 1;
        if (v3 == 1)
        {
LABEL_15:

          v15 = sub_265FD6FDC;
          goto LABEL_19;
        }

        v10 = 5;
        while (1)
        {
          v11 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x266775AE0](v10 - 4, v2) : *(v2 + 8 * v10);
          v12 = v11;

          sub_265FD6FEC(sub_265FD6FDC);
          v13 = swift_allocObject();
          *(v13 + 16) = sub_265FD6FDC;
          *(v13 + 24) = v0;
          v20 = sub_265FD5000;
          v21 = v13;
          aBlock = v7;
          v17 = 1107296256;
          v18 = sub_265FBCE10;
          v19 = &block_descriptor_33;
          v14 = _Block_copy(&aBlock);

          [v12 updateSettingsWithBlock_];

          _Block_release(v14);
          LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

          if (v12)
          {
            break;
          }

          ++v10;
          if (!--v9)
          {
            goto LABEL_15;
          }
        }
      }

      __break(1u);
LABEL_17:
      v3 = sub_265FEC4A0();
      if (!v3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    v15 = 0;
LABEL_19:
    sub_265FD6FEC(v15);
  }
}

uint64_t sub_265FD55F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265FD5688(a1);
    v10 = *(a5 + 128);
    (*(a5 + 120))(a1, a2, a3);
  }

  return result;
}

void sub_265FD5688(void *a1)
{
  v2 = v1;
  type metadata accessor for TransformSceneExtension();
  [a1 addExtension_];
  type metadata accessor for ProfileActivationSceneExtension();
  [a1 addExtension_];
  type metadata accessor for BacklightSupportSceneExtension();
  [a1 addExtension_];
  swift_beginAccess();
  sub_265FD6E58(v1 + 64, v18);
  v4 = v19;
  sub_265FD6FFC(v18, &qword_280055368, &unk_265FF03D0);
  if (v4)
  {
    type metadata accessor for SceneLevelExtension();
    [a1 addExtension_];
    v5 = *(v1 + 88);
    if (v5)
    {
      v6 = *__swift_project_boxed_opaque_existential_1((v1 + 64), v5);
      sub_265FD3CD8(a1);
    }
  }

  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  sub_265FD6E58(v2 + 64, v18);
  v10 = v19 != 0;
  sub_265FC23C0();
  sub_265FD6FFC(v18, &qword_280055368, &unk_265FF03D0);
  v11 = type metadata accessor for ProfileActivation();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier];
  *v13 = v7;
  v13[1] = v8;
  v12[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_inControl] = v10;
  v17.receiver = v12;
  v17.super_class = v11;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = sub_265FC5F38();
  if (v15)
  {
    v16 = v15;
    sub_265FE80B0(v14);
  }
}

uint64_t sub_265FD5848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  sub_265FEC250();
  v3[12] = sub_265FEC240();
  v5 = sub_265FEC230();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_265FD58E0, v5, v4);
}

uint64_t sub_265FD58E0()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[11];
    v5 = *(v4 + 104);
    v6 = *(v4 + 112);
    v0[5] = _s5StateCMa();
    v0[6] = &off_2877AF170;
    v0[2] = v3;

    v12 = (v5 + *v5);
    v7 = v5[1];
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_265FD5A68;

    return v12(v0 + 2);
  }

  else
  {
    v10 = v0[12];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_265FD5A68()
{
  v2 = *v1;
  v3 = (*v1)[16];
  v8 = *v1;
  (*v1)[17] = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_265FD5BF0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_265FD5B84;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_265FD5B84()
{
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_265FD5BF0()
{
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_2800547F0 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = sub_265FEC060();
  __swift_project_value_buffer(v3, qword_280055350);
  v4 = v2;
  v5 = sub_265FEC040();
  v6 = sub_265FEC380();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  v9 = v0[15];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_265FBB000, v5, v6, "onConnect task unhandled error: %@", v10, 0xCu);
    sub_265FD6FFC(v11, &unk_280055370, &qword_265FEEF40);
    MEMORY[0x2667764A0](v11, -1, -1);
    MEMORY[0x2667764A0](v10, -1, -1);
  }

  else
  {
    v14 = v0[15];
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_265FD5DB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_265FC23C8();

  v4 = *(v0 + 48);

  sub_265FD6FFC(v0 + 64, &qword_280055368, &unk_265FF03D0);

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_265FD5E48()
{
  v1 = [*(v0[7] + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace) allScenes];
  sub_265FC20E0();
  v2 = sub_265FEC1F0();

  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_265FEC4A0();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      type metadata accessor for SceneLevelExtension();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      type metadata accessor for ProfileActivationSceneExtension();
      v32 = swift_getObjCClassFromMetadata();
      type metadata accessor for ProfileActivationSceneExtension.HostComponent();
      v5 = swift_getObjCClassFromMetadata();
      v6 = 0;
      v33 = v2 & 0xC000000000000001;
      v30 = v0[2];
      v31 = v5;
      v29 = v0[3];
      v24 = v2 & 0xFFFFFFFFFFFFFF8;
      v23 = v0;
      v28 = *(v0 + 16);
      v26 = v3;
      v27 = v2;
      v25 = ObjCClassFromMetadata;
      while (1)
      {
        if (v33)
        {
          v7 = MEMORY[0x266775AE0](v6, v2);
        }

        else
        {
          if (v6 >= *(v24 + 16))
          {
            goto LABEL_18;
          }

          v7 = *(v2 + 8 * v6 + 32);
        }

        v0 = v7;
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        [v7 removeExtension_];
        v9 = type metadata accessor for ProfileActivation();
        v10 = objc_allocWithZone(v9);
        v11 = &v10[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier];
        *v11 = v30;
        v11[1] = v29;
        v10[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_inControl] = 0;
        sub_265FC23C0();
        v39.receiver = v10;
        v39.super_class = v9;
        v12 = objc_msgSendSuper2(&v39, sel_init);
        v13 = [v0 componentForExtension:v32 ofClass:v31];
        if (v13 && (*&aBlock = v13, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F40, &qword_265FEE6F8), swift_dynamicCast(), (v14 = v38) != 0))
        {
          v15 = *&v38[OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent_scene];
          if (!v15)
          {
            result = sub_265FEC5E0();
            __break(1u);
            return result;
          }

          v16 = swift_allocObject();
          *(v16 + 16) = v12;
          v17 = swift_allocObject();
          *(v17 + 16) = sub_265FD7090;
          *(v17 + 24) = v16;
          v36 = sub_265FD5000;
          v37 = v17;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v35 = sub_265FBCE10;
          *(&v35 + 1) = &block_descriptor_26;
          v18 = _Block_copy(&aBlock);
          v19 = v15;
          v20 = v12;

          [v19 updateSettingsWithBlock_];

          _Block_release(v18);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          v3 = v26;
          v2 = v27;
          ObjCClassFromMetadata = v25;
          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
LABEL_16:

            v0 = v23;
            goto LABEL_21;
          }
        }

        else
        {
        }

        ++v6;
        if (v8 == v3)
        {
          goto LABEL_16;
        }
      }
    }
  }

LABEL_21:
  v36 = 0;
  aBlock = 0u;
  v35 = 0u;
  swift_beginAccess();
  sub_265FD6F6C(&aBlock, (v0 + 8));
  return swift_endAccess();
}

id sub_265FD6298()
{
  if (v0[6])
  {
    v1 = v0[6];

    sub_265FEC280();
  }

  isEscapingClosureAtFileLocation = v0[7];
  v3 = OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace;
  v4 = [*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace) allScenes];
  sub_265FC20E0();
  v5 = sub_265FEC1F0();

  if (v5 >> 62)
  {
LABEL_24:
    v6 = sub_265FEC4A0();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v6;
  if (v6)
  {
    v23 = v3;
    v24 = isEscapingClosureAtFileLocation;
    type metadata accessor for ProfileActivationSceneExtension();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    type metadata accessor for ProfileActivationSceneExtension.HostComponent();
    v7 = swift_getObjCClassFromMetadata();
    v8 = 0;
    v33 = v5 & 0xC000000000000001;
    v25 = v5 & 0xFFFFFFFFFFFFFF8;
    v30 = v0[2];
    v31 = v7;
    v29 = v0[3];
    v28 = *(v0 + 16);
    v3 = v27;
    v26 = v5;
    while (1)
    {
      if (v33)
      {
        v9 = MEMORY[0x266775AE0](v8, v5);
      }

      else
      {
        if (v8 >= *(v25 + 16))
        {
          goto LABEL_23;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v12 = type metadata accessor for ProfileActivation();
      v13 = objc_allocWithZone(v12);
      v14 = &v13[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier];
      *v14 = v30;
      v14[1] = v29;
      v13[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_inControl] = 0;
      sub_265FC23C0();
      v36.receiver = v13;
      v36.super_class = v12;
      v0 = objc_msgSendSuper2(&v36, sel_init);
      v15 = [v10 componentForExtension:ObjCClassFromMetadata ofClass:v31];
      if (v15 && (aBlock[0] = v15, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F40, &qword_265FEE6F8), swift_dynamicCast(), (v16 = v35) != 0))
      {
        v17 = *&v35[OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent_scene];
        if (!v17)
        {
          result = sub_265FEC5E0();
          __break(1u);
          return result;
        }

        v18 = swift_allocObject();
        *(v18 + 16) = v0;
        v19 = swift_allocObject();
        *(v19 + 16) = sub_265FD6F64;
        *(v19 + 24) = v18;
        aBlock[4] = sub_265FD4FB4;
        aBlock[5] = v19;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_265FBCE10;
        aBlock[3] = &block_descriptor_15;
        v20 = _Block_copy(aBlock);
        v21 = v17;
        v0 = v0;

        [v21 updateSettingsWithBlock_];

        _Block_release(v20);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        v5 = v26;
        v3 = v27;
        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
LABEL_19:

          v3 = v23;
          isEscapingClosureAtFileLocation = v24;
          return [*(isEscapingClosureAtFileLocation + v3) invalidate];
        }
      }

      else
      {
      }

      [v10 invalidate];

      ++v8;
      if (v11 == v3)
      {
        goto LABEL_19;
      }
    }
  }

  return [*(isEscapingClosureAtFileLocation + v3) invalidate];
}

id sub_265FD66E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = sub_265FEC2B0();
  v14[2] = v14;
  v6 = *(v4 + 56);
  MEMORY[0x28223BE20](v5, v7);
  v8 = *&v6[OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace];
  v9 = sub_265FEC0D0();
  v10 = [v8 sceneWithIdentifier_];

  KeyPath = swift_getKeyPath();
  if (v10)
  {
    v15 = v6;
    sub_265FBFC04();
    sub_265FEBF40();
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath, v12);
    v14[3] = v6;
    sub_265FC20E0();
    sub_265FBFC04();
    sub_265FEBF30();

    v10 = v15;
  }

  sub_265FD5688(v10);
  return v10;
}

id sub_265FD68EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = sub_265FEC2B0();
  v14[2] = v14;
  v6 = *(v4 + 56);
  MEMORY[0x28223BE20](v5, v7);
  v8 = *&v6[OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace];
  v9 = sub_265FEC0D0();
  v10 = [v8 sceneWithIdentifier_];

  KeyPath = swift_getKeyPath();
  if (v10)
  {
    v15 = v6;
    sub_265FBFC04();
    sub_265FEBF40();
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath, v12);
    v14[3] = v6;
    sub_265FC20E0();
    sub_265FBFC04();
    sub_265FEBF30();

    v10 = v15;
  }

  sub_265FD5688(v10);
  return v10;
}

uint64_t sub_265FD6AF0(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  a2();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_265FD6EC8;
  *(v6 + 24) = a4;
  v9[4] = sub_265FBFC6C;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_265FC25BC;
  v9[3] = &block_descriptor_1;
  v7 = _Block_copy(v9);

  [a1 updateSettingsWithBlock_];
  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

id sub_265FD6C84()
{
  v1 = *v0;
  sub_265FEC2B0();
  v2 = *(v1 + 56);
  swift_getKeyPath();
  sub_265FBFC04();
  sub_265FEBF40();

  v3 = *(v2 + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace);
  v4 = sub_265FEC0D0();
  v5 = [v3 sceneWithIdentifier_];

  return v5;
}

uint64_t sub_265FD6D74()
{
  v1 = *v0;
  sub_265FEC2B0();
  v2 = [*(*(v1 + 56) + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace) allScenes];
  sub_265FC20E0();
  v3 = sub_265FEC1F0();

  return v3;
}

uint64_t sub_265FD6E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055368, &unk_265FF03D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_265FD6EC8(void *a1)
{
  [a1 setDisplayConfiguration_];
  [*(v1 + 40) bounds];

  return [a1 setFrame_];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265FD6F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055368, &unk_265FF03D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_265FD6FEC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_265FD6FFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Display.RefreshRateCriteria.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 == 2)
  {
    strcpy(v8, "refreshRate: ");
    HIWORD(v8[1]) = -4864;
    v3 = sub_265FEC2C0();
  }

  else
  {
    sub_265FEC550();

    strcpy(v8, "refreshRate: ");
    HIWORD(v8[1]) = -4864;
    v5 = sub_265FEC2C0();
    MEMORY[0x2667756D0](v5);

    MEMORY[0x2667756D0](0xD000000000000015, 0x8000000265FF17F0);
    if (v2)
    {
      v3 = 1702195828;
    }

    else
    {
      v3 = 0x65736C6166;
    }

    if (v2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    v4 = v6;
  }

  MEMORY[0x2667756D0](v3, v4);

  return v8[0];
}

uint64_t Display.RefreshRateCriteria.init(_:allowFrameDoubling:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  return result;
}

uint64_t static Display.RefreshRateCriteria.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 8);
    v3 = *(a2 + 8);
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_265FD720C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 8);
    v3 = *(a2 + 8);
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

double sub_265FD7274@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = 2;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s19RefreshRateCriteriaVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t _s19RefreshRateCriteriaVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

id sub_265FD7354()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [v0 buildConfigurationWithError_];
  v2 = v5[0];
  if (v5[0])
  {
    swift_willThrow();
    v2;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

id FBScene.context.getter()
{
  result = sub_265FC5F74();
  if (result)
  {
    v1 = result;
    v2 = sub_265FDCDE4();

    if ((v2 & 0x100000000) != 0)
    {
      return 0;
    }

    else
    {
      return [objc_opt_self() contextWithId_];
    }
  }

  return result;
}

id static DefaultDisplayTransformer.defaultRegistry.getter()
{
  if (qword_28156BE28 != -1)
  {
    swift_once();
  }

  v1 = qword_28156BE30;

  return v1;
}

id DefaultDisplayTransformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DefaultDisplayTransformer.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t DefaultDisplayTransformer.transform(_:)(void *a1)
{
  if (qword_28156BE28 != -1)
  {
    swift_once();
  }

  type metadata accessor for DefaultDisplayTransformerRegistry();
  swift_dynamicCastClassUnconditional();
  return sub_265FD75EC(a1);
}

uint64_t sub_265FD75EC(void *a1)
{
  v8 = MEMORY[0x277D84FA0];
  v9 = MEMORY[0x277D84FA0];
  v3 = [a1 identity];
  v4 = *(v1 + OBJC_IVAR____TtC13ShellSceneKitP33_EE17DF9A05593657B985954F049B576633DefaultDisplayTransformerRegistry_lockState);
  os_unfair_lock_lock((v4 + 24));
  sub_265FD7C2C((v4 + 16), a1, v3, &v8, &v9);
  os_unfair_lock_unlock((v4 + 24));
  sub_265FD40B0(v7, a1);

  v5 = v9;

  return v5;
}

id sub_265FD77A8()
{
  result = [objc_allocWithZone(type metadata accessor for DefaultDisplayTransformerRegistry()) init];
  qword_28156BE30 = result;
  return result;
}

id sub_265FD7834(uint64_t a1)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = objc_allocWithZone(MEMORY[0x277CF0CE8]);

  swift_unknownObjectRetain();
  v6 = sub_265FEC0D0();
  v7 = sub_265FEC0D0();
  aBlock[4] = sub_265FD83CC;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265FD82FC;
  aBlock[3] = &block_descriptor_2;
  v8 = _Block_copy(aBlock);
  v9 = [v5 initWithIdentifier:v6 forReason:v7 invalidationBlock:v8];

  _Block_release(v8);

  v10 = *(v1 + OBJC_IVAR____TtC13ShellSceneKitP33_EE17DF9A05593657B985954F049B576633DefaultDisplayTransformerRegistry_lockState);
  os_unfair_lock_lock((v10 + 24));
  sub_265FD83EC((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  return v9;
}

void sub_265FD7A0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC13ShellSceneKitP33_EE17DF9A05593657B985954F049B576633DefaultDisplayTransformerRegistry_lockState);
    v2 = Strong;

    MEMORY[0x28223BE20](v3, v4);
    os_unfair_lock_lock((v1 + 24));
    sub_265FD845C((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }

  v5 = [objc_opt_self() sharedInstance];
  [v5 updateTransformsWithCompletion_];
}

id sub_265FD7B0C(id *a1, uint64_t a2)
{
  v3 = *a1;
  if (![*a1 containsObject_])
  {
    return [v3 addObject_];
  }

  sub_265FD8408();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 2;
  return swift_willThrow();
}

uint64_t sub_265FD7C2C(id *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v9 = [*a1 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055460, &qword_265FEF8F8);
  v10 = sub_265FEC1F0();

  v63 = v10;
  if (v10 >> 62)
  {
    goto LABEL_46;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
  }

LABEL_3:
  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  v55 = v10 + 32;
  v56 = v10 & 0xFFFFFFFFFFFFFF8;
  v58 = a5;
  v59 = v6;
  v57 = a4;
  v60 = v10 & 0xC000000000000001;
  v61 = result;
  while (1)
  {
    if (v13)
    {
      v14 = v12;
      v15 = MEMORY[0x266775AE0](v12, v10);
      v16 = v12 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_45;
      }

      goto LABEL_10;
    }

    if (v12 >= *(v56 + 16))
    {
      break;
    }

    v17 = *(v55 + 8 * v12);
    v15 = swift_unknownObjectRetain();
    v18 = __OFADD__(v12, 1);
    v16 = v12 + 1;
    if (v18)
    {
      goto LABEL_45;
    }

LABEL_10:
    v62 = v16;
    v19 = [v15 transformDisplayConfiguration_];
    sub_265FCF0EC(0, &qword_28156BE10, 0x277D0ACE0);
    sub_265FD8364();
    v20 = sub_265FEC2E0();

    if ((v20 & 0xC000000000000001) != 0)
    {
      sub_265FEC490();
      sub_265FEC2F0();
      v20 = v69;
      v21 = v70;
      v22 = v71;
      v23 = v72;
      v24 = v73;
    }

    else
    {
      v23 = 0;
      v25 = -1 << *(v20 + 32);
      v21 = v20 + 56;
      v26 = ~v25;
      v27 = -v25;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v24 = v28 & *(v20 + 56);
      v22 = v26;
    }

    v29 = (v22 + 64) >> 6;
    v65 = v29;
    v66 = v21;
    if (v20 < 0)
    {
LABEL_17:
      if (!sub_265FEC4C0())
      {
        goto LABEL_39;
      }

      swift_dynamicCast();
      v30 = v74;
      v31 = v23;
      v32 = v24;
      if (!v74)
      {
        goto LABEL_39;
      }

      goto LABEL_25;
    }

    while (1)
    {
      v33 = v23;
      v34 = v24;
      v31 = v23;
      if (!v24)
      {
        while (1)
        {
          v31 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v31 >= v29)
          {
            goto LABEL_39;
          }

          v34 = *(v21 + 8 * v31);
          ++v33;
          if (v34)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        result = sub_265FEC4A0();
        v10 = v63;
        if (!result)
        {
        }

        goto LABEL_3;
      }

LABEL_24:
      v32 = (v34 - 1) & v34;
      v30 = *(*(v20 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v34)))));
      if (!v30)
      {
        break;
      }

LABEL_25:
      v67 = v32;
      v68 = v30;
      v35 = [v30 identity];
      sub_265FCF0EC(0, &qword_280055468, 0x277D82BB8);
      v36 = [v35 rootIdentity];
      v37 = sub_265FEC420();

      if ((v37 & 1) == 0)
      {

        v53 = 0;
        goto LABEL_43;
      }

      v38 = *a4;
      if ((*a4 & 0xC000000000000001) != 0)
      {
        if (v38 < 0)
        {
          v39 = *a4;
        }

        v40 = *a4;

        v41 = v20;
        v42 = v35;
        v43 = sub_265FEC4D0();

        v20 = v41;

        if (v43)
        {

          v53 = 1;
LABEL_43:
          sub_265FD8408();
          swift_allocError();
          *v54 = v68;
          *(v54 + 8) = v53;
          swift_willThrow();

          swift_unknownObjectRelease();
          return sub_265FCF430();
        }
      }

      else if (*(v38 + 16))
      {
        sub_265FCF0EC(0, &unk_280055180, 0x277D0ACF0);
        v44 = *(v38 + 40);

        v45 = sub_265FEC410();
        v46 = -1 << *(v38 + 32);
        v47 = v45 & ~v46;
        if ((*(v38 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
        {
          v48 = ~v46;
          while (1)
          {
            v49 = *(*(v38 + 48) + 8 * v47);
            v50 = sub_265FEC420();

            if (v50)
            {
              break;
            }

            v47 = (v47 + 1) & v48;
            if (((*(v38 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          v53 = 1;
          goto LABEL_43;
        }

LABEL_36:

        a5 = v58;
        v6 = v59;
        a4 = v57;
      }

      v51 = v35;
      sub_265FD40D4(&v74, v51);

      v52 = v68;
      sub_265FD40B0(&v74, v52);

      v23 = v31;
      v21 = v66;
      v24 = v67;
      v29 = v65;
      if (v20 < 0)
      {
        goto LABEL_17;
      }
    }

LABEL_39:
    sub_265FCF430();
    swift_unknownObjectRelease();
    v13 = v60;
    result = v61;
    v12 = v62;
    v10 = v63;
    if (v62 == v61)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_265FD82FC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

unint64_t sub_265FD8364()
{
  result = qword_28156BE00;
  if (!qword_28156BE00)
  {
    sub_265FCF0EC(255, &qword_28156BE10, 0x277D0ACE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156BE00);
  }

  return result;
}

void sub_265FD83CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_265FD7A0C();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_265FD8408()
{
  result = qword_280055458;
  if (!qword_280055458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055458);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13ShellSceneKit33DefaultDisplayTransformerRegistry33_EE17DF9A05593657B985954F049B5766LLC0G5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_265FD84B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_265FD84F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_265FD853C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_265FD85EC(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = *a2;
  if (*a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    *a3 = v3;
    return;
  }

  __break(1u);
}

uint64_t sub_265FD863C(void *a1, unsigned int *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

unint64_t sub_265FD8694()
{
  result = qword_280054858;
  if (!qword_280054858)
  {
    type metadata accessor for DisplayPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280054858);
  }

  return result;
}

uint64_t sub_265FD873C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_265FD88B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5391443;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 4672584;
    }

    else
    {
      v4 = 0x79626C6F64;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x3031524448;
    }

    else
    {
      v4 = 5391443;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE300000000000000;
  v8 = 4672584;
  if (a2 != 2)
  {
    v8 = 0x79626C6F64;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x3031524448;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_265FEC6C0();
  }

  return v11 & 1;
}

uint64_t sub_265FD89D0()
{
  v1 = *v0;
  sub_265FEC780();
  sub_265FEC130();

  return sub_265FEC7B0();
}

uint64_t sub_265FD8A78()
{
  *v0;
  *v0;
  *v0;
  sub_265FEC130();
}

uint64_t sub_265FD8B0C()
{
  v1 = *v0;
  sub_265FEC780();
  sub_265FEC130();

  return sub_265FEC7B0();
}

uint64_t sub_265FD8BB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_265FD8EBC();
  *a2 = result;
  return result;
}

void sub_265FD8BE0(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 5391443;
  v4 = 0xE300000000000000;
  v5 = 4672584;
  if (*v1 != 2)
  {
    v5 = 0x79626C6F64;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x3031524448;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t Display.HDRMode.description.getter()
{
  v1 = 5391443;
  v2 = 4672584;
  if (*v0 != 2)
  {
    v2 = 0x79626C6F64;
  }

  if (*v0)
  {
    v1 = 0x3031524448;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t static Display.HDRMode.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = 5391443;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v5 = 0xE300000000000000;
  v6 = 4672584;
  if (v3 != 2)
  {
    v6 = 0x79626C6F64;
    v5 = 0xE500000000000000;
  }

  v7 = 0x3031524448;
  if (*a1)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v7 = 5391443;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE300000000000000;
  v11 = 0xE300000000000000;
  v12 = 4672584;
  if (*a2 != 2)
  {
    v12 = 0x79626C6F64;
    v11 = 0xE500000000000000;
  }

  if (*a2)
  {
    v2 = 0x3031524448;
    v10 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_265FEC6C0();
  }

  return v15 & 1;
}

uint64_t sub_265FD8DE4()
{
  v1 = 5391443;
  v2 = 4672584;
  if (*v0 != 2)
  {
    v2 = 0x79626C6F64;
  }

  if (*v0)
  {
    v1 = 0x3031524448;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_265FD8E68()
{
  result = qword_280055500;
  if (!qword_280055500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055500);
  }

  return result;
}

uint64_t sub_265FD8EBC()
{
  v0 = sub_265FEC640();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id SSKDisplayProfile.init(configuration:)(__int128 *a1)
{
  v8 = *a1;
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = [v5 initWithAnyConfiguration_];
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_265FD8FC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265FEBF00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + OBJC_IVAR___SSKDisplayProfile_configuration + 16);
  v33 = *(v1 + OBJC_IVAR___SSKDisplayProfile_configuration);
  v34 = v9;
  v35 = *(v1 + OBJC_IVAR___SSKDisplayProfile_configuration + 32);
  v36 = v9;
  v37 = *(v1 + OBJC_IVAR___SSKDisplayProfile_configuration + 32);
  v10 = *(&v9 + 1);
  if (*(&v9 + 1))
  {
    v11 = v36;
    sub_265FDB864(&v33, v32);
    v12 = 1;
  }

  else
  {
    sub_265FDB864(&v33, v32);
    sub_265FEBEF0();
    v13 = sub_265FEBEE0();
    v15 = v14;
    (*(v4 + 8))(v8, v3);
    v17 = sub_265FDACAC(6, v13, v15, v16);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v11 = MEMORY[0x2667756A0](v17, v19, v21, v23);
    v10 = v24;

    v12 = *(&v36 + 1) != 0;
  }

  v25 = v12 & v37 | 0x8000;
  v32[0] = 1;
  v31[16] = 1;
  v31[8] = 1;
  v26 = swift_allocObject();
  v27 = v34;
  *(v26 + 16) = v33;
  *(v26 + 32) = v27;
  *(v26 + 48) = v35;
  v28 = swift_allocObject();
  v28[2] = &unk_265FEFCB8;
  v28[3] = 0;
  v28[4] = &unk_265FEFCA8;
  v28[5] = v26;
  *a1 = v11;
  *(a1 + 8) = v10;
  *(a1 + 16) = v25;
  *(a1 + 18) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 513;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1025;
  *(a1 + 88) = 0;
  *(a1 + 96) = 771;
  *(a1 + 104) = &unk_265FEFCB0;
  *(a1 + 112) = v28;
  v29 = swift_allocObject();
  v29[2] = nullsub_1;
  v29[3] = 0;
  v29[4] = sub_265FD9658;
  v29[5] = 0;
  *(a1 + 120) = sub_265FDBA74;
  *(a1 + 128) = v29;
  return sub_265FDBA80(&v36, v32);
}

uint64_t sub_265FD927C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_265FEC250();
  v2[14] = sub_265FEC240();
  v4 = sub_265FEC230();

  return MEMORY[0x2822009F8](sub_265FD9314, v4, v3);
}

uint64_t sub_265FD9314()
{
  v1 = (v0 + 2);
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  v5 = *(v3 + 8);
  v6 = *(v5 + 64);
  v29 = v5 + 64;
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v6;
  v28 = (63 - v8) >> 6;

  v11 = 0;
  v30 = result;
  while (v9)
  {
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v34 = *(*(result + 56) + ((v11 << 9) | (8 * v13)));
    v14 = *(v34 + 16);
    if (v14)
    {
      v31 = v9;
      v32 = v11;

      v15 = 32;
      do
      {
        v39 = v14;
        v16 = v33[12];
        v17 = *(v34 + v15);
        v18 = *(v34 + v15 + 16);
        *(v1 + 32) = *(v34 + v15 + 32);
        *v1 = v17;
        *(v1 + 16) = v18;
        v19 = v33[6];
        v37 = v33[2];
        v38 = v33[4];
        v36 = v33[3];
        v20 = v4;
        v22 = *(v4 + 24);
        v21 = *(v4 + 32);
        __swift_project_boxed_opaque_existential_1(v16, v22);
        v23 = swift_task_alloc();
        *(v23 + 16) = v1;
        v35 = *(v21 + 8);
        sub_265FDBAE4(v1, (v33 + 7));
        v24 = v19;
        v25 = v21;
        v4 = v20;
        v26 = v35(v37, v36, v38, v24, sub_265FDBADC, v23, v22, v25);

        [v26 activate_];

        sub_265FDBB40(v1);
        v15 += 40;
        v14 = v39 - 1;
      }

      while (v39 != 1);

      result = v30;
      v9 = v31;
      v11 = v32;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v28)
    {
      break;
    }

    v9 = *(v29 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v27 = v33[1];

  return v27();
}

uint64_t sub_265FD9570(void *a1, uint64_t a2)
{
  [a1 setClientSettings_];
  v5[4] = sub_265FD8F14;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_265FC25BC;
  v5[3] = &block_descriptor_29;
  v3 = _Block_copy(v5);

  [a1 updateSettingsWithBlock_];
  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t SSKDisplayProfile.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t static SSKDisplayProfile.sceneHostingProfile(with:builder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(SSKDisplayProfile);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v10[4] = sub_265FBFC6C;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_265FBEFF4;
  v10[3] = &block_descriptor_3;
  v8 = _Block_copy(v10);

  [v6 initWithDelegate:a1 builder:v8];
  _Block_release(v8);

  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if ((v8 & 1) == 0)
  {
    return swift_dynamicCastUnknownClassUnconditional();
  }

  __break(1u);
  return result;
}

uint64_t SSKDisplayProfile.appendDescription(toFormatter:)()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_265FDB514;
    *(v4 + 24) = v3;
    v8[4] = sub_265FDB51C;
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_265FD9D04;
    v8[3] = &block_descriptor_9;
    v5 = _Block_copy(v8);
    swift_unknownObjectRetain_n();
    v6 = v0;

    [v2 appendProem:v6 block:v5];
    swift_unknownObjectRelease();
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_265FD9BC8(void *a1, id a2)
{
  v3 = [a2 delegate];
  v4 = sub_265FEC0D0();

  swift_unknownObjectRelease();
  sub_265FD8FC8(v7);
  v5 = sub_265FEC6F0();
  v6 = sub_265FEC0D0();

  swift_unknownObjectRelease();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id SSKDisplayProfile.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_265FDA070(uint64_t a1, void *a2)
{
  v5 = sub_265FEBF00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration;
  *(v2 + OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055608, &qword_265FEFC40);
  inited = swift_initStackObject();
  v33 = xmmword_265FEE990;
  *(inited + 16) = xmmword_265FEE990;
  *(inited + 32) = 0x746C7561666564;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055610, &qword_265FEFC48);
  v13 = swift_allocObject();
  *(v13 + 16) = v33;
  sub_265FEBEF0();
  v14 = sub_265FEBEE0();
  v16 = v15;
  (*(v6 + 8))(v10, v5);
  v18 = sub_265FDACAC(6, v14, v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = MEMORY[0x2667756A0](v18, v20, v22, v24);
  v27 = v26;

  v28 = [objc_opt_self() localIdentity];
  *(v13 + 32) = v25;
  *(v13 + 40) = v27;
  *(v13 + 48) = a2;
  *(v13 + 56) = 0;
  *(v13 + 64) = v28;
  *(inited + 56) = v13;
  v29 = a2;
  v30 = sub_265FDB340(inited);
  swift_setDeallocating();
  sub_265FDB588(inited + 32);
  v31 = *(v11 + 8);
  *(v11 + 8) = v30;
}

uint64_t sub_265FDA36C(char a1)
{
  v3 = sub_265FEBF00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1 + OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration;
  v10 = *(v1 + OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration + 24);
  if (v10)
  {
    v11 = *(v9 + 16);
    v12 = v10;
  }

  else
  {
    sub_265FEBEF0();
    v13 = sub_265FEBEE0();
    v15 = v14;
    (*(v4 + 8))(v8, v3);
    v17 = sub_265FDACAC(6, v13, v15, v16);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v11 = MEMORY[0x2667756A0](v17, v19, v21, v23);
    v12 = v24;

    v25 = *(v9 + 24);
  }

  *(v9 + 16) = v11;
  *(v9 + 24) = v12;
  *(v9 + 32) = a1 & 1;
}

unint64_t sub_265FDA594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_265FEC780();
  sub_265FEC130();
  v8 = sub_265FEC7B0();

  return sub_265FDA774(a1, a2, a3, v8);
}

unint64_t sub_265FDA61C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_265FEC410();

  return sub_265FDA838(a1, v5);
}

unint64_t sub_265FDA660(unsigned int a1)
{
  v3 = MEMORY[0x266775CE0](*(v1 + 40), a1, 4);

  return sub_265FDA90C(a1, v3);
}

unint64_t sub_265FDA6A8(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v3 + 40);
  sub_265FEC780();
  if ((a3 & 0x8000) != 0)
  {
    MEMORY[0x266775D10](1);
    sub_265FEC130();
    sub_265FEC7A0();
    sub_265FEC7A0();
  }

  else
  {
    MEMORY[0x266775D10](0);
    sub_265FEC130();
  }

  v8 = sub_265FEC7B0();

  return sub_265FDA978(a1, a2, a3, v8);
}

unint64_t sub_265FDA774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = (*(v4 + 48) + 24 * v6);
      if (*v10 == a1 && v10[1] == a2)
      {
        break;
      }

      if (sub_265FEC6C0())
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_265FDA838(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_265FCF0EC(0, &unk_280055180, 0x277D0ACF0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_265FEC420();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_265FDA90C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_265FDA978(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(v13 + 8);
      if ((v16 & 0x80000000) != 0)
      {
        if ((a3 & 0x8000) != 0)
        {
          v18 = v14 == a1 && v15 == a2;
          if (v18 || (sub_265FEC6C0()) && ((a3 ^ v16) & 1) == 0 && (((a3 ^ v16) >> 8) & 1) == 0)
          {
            return v7;
          }
        }
      }

      else if ((a3 & 0x8000) == 0)
      {
        v17 = v14 == a1 && v15 == a2;
        if (v17 || (sub_265FEC6C0() & 1) != 0)
        {
          return v7;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_265FDAA90(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055190, &qword_265FEEF60);
  v4 = sub_265FEC620();
  v5 = *(a1 + 32);
  v17 = *(a1 + 40);
  result = sub_265FDA660(v5);
  v7 = v17;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    v16 = v1;
    return v4;
  }

  v9 = (a1 + 64);
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 4 * result) = v5;
    *(v4[7] + 16 * result) = v7;
    v10 = v4[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v4[2] = v12;
    v1 = *(&v7 + 1);
    if (!--v2)
    {
      goto LABEL_8;
    }

    v13 = (v9 + 24);
    v5 = *(v9 - 2);
    v18 = *v9;

    v14 = v1;
    result = sub_265FDA660(v5);
    v9 = v13;
    v7 = v18;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_265FDABBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055640, &unk_265FEFC90);
    v3 = sub_265FEC620();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_265FDA61C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 4 * result) = v5;
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

uint64_t sub_265FDACAC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_265FEC140();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

void *sub_265FDAD48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551E8, &qword_265FEEFF0);
  v3 = sub_265FEC620();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_265FDA660(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_265FDA660(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_265FDAE58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551D8, &unk_265FEEFE0);
  v3 = sub_265FEC620();
  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  *&v23[48] = *(a1 + 80);
  *&v23[64] = v5;
  *&v23[80] = *(a1 + 112);
  v6 = *(a1 + 48);
  *v23 = *(a1 + 32);
  *&v23[16] = v6;
  *&v23[32] = v4;
  v7 = *v23;
  result = sub_265FDA660(*v23);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_265FDB7F4(v23, v22);
    return v3;
  }

  v10 = a1 + 120;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v7;
    v11 = (v3[7] + 80 * result);
    *v11 = *&v23[8];
    v12 = *&v23[24];
    v13 = *&v23[40];
    v14 = *&v23[56];
    *(v11 + 58) = *&v23[66];
    v11[2] = v13;
    v11[3] = v14;
    v11[1] = v12;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_265FDB7F4(v23, v22);
    v18 = *(v10 + 32);
    v19 = *(v10 + 64);
    *&v23[48] = *(v10 + 48);
    *&v23[64] = v19;
    *&v23[80] = *(v10 + 80);
    v20 = *(v10 + 16);
    *v23 = *v10;
    *&v23[16] = v20;
    *&v23[32] = v18;
    v7 = *v23;
    result = sub_265FDA660(*v23);
    v10 += 88;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_265FDAFE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551E0, &unk_265FEFC70);
  v3 = sub_265FEC620();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_265FDA660(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 2);
    v13 = *v8;
    v14 = v5;
    result = sub_265FDA660(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_265FDB0E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551C8, &unk_265FEEFD0);
    v3 = sub_265FEC620();

    for (i = (a1 + 56); ; i = (i + 40))
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 4);
      v14 = *i;
      sub_265FC23C0();
      swift_unknownObjectRetain();
      result = sub_265FDA6A8(v5, v6, v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 24 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v10 + 16) = v7;
      *(v3[7] + 16 * result) = v14;
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

unint64_t sub_265FDB21C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551D0, &unk_265FEFC60);
    v3 = sub_265FEC620();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 4);
      v8 = *i;
      sub_265FC23C0();

      result = sub_265FDA6A8(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_265FDB340(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055620, &qword_265FEFC58);
    v3 = sub_265FEC620();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_265FDA594(v5, v6, v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 24 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v8;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t _sSo17SSKDisplayProfileC13ShellSceneKitE020mirroringMainDisplayB04withABXDSo0aB8Delegate_p_tFZ_0()
{
  sub_265FDB340(MEMORY[0x277D84F90]);
  [objc_allocWithZone(SSKDisplayProfile) initWithAnyConfiguration_];
  swift_unknownObjectRelease();
  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_265FDB51C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_265FDB588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055618, &qword_265FEFC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265FDB5F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_265FDB664(uint64_t a1, char *a2, uint64_t a3)
{
  *&a2[OBJC_IVAR___SSKDisplayProfile_deactivationReasonsWhenActive] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5 = [objc_allocWithZone(type metadata accessor for DisplayProfileConfigurator()) init];
  (*(a3 + 16))(a3, v5);
  v7 = *&v5[OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration];
  v6 = *&v5[OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration + 8];
  v9 = *&v5[OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration + 16];
  v8 = *&v5[OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration + 24];
  v10 = v5[OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration + 32];
  v11 = v5[OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration + 33];

  v12 = &a2[OBJC_IVAR___SSKDisplayProfile_configuration];
  *v12 = v7;
  *(v12 + 1) = v6;
  *(v12 + 2) = v9;
  *(v12 + 3) = v8;
  v12[32] = v10;
  v12[33] = v11;
  v14.receiver = a2;
  v14.super_class = SSKDisplayProfile;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_265FDB788(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_getObjectType();

  return sub_265FDB64C(a1, v3);
}

uint64_t sub_265FDB7F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055630, &unk_265FEFC80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265FDB8C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265FC66D0;

  return sub_265FD927C(a1, v1 + 16);
}

uint64_t sub_265FDB958(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_265FC658C;

  return sub_265FDC2FC(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_17Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));
  a1(*(v2 + 40));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

void FBScene.transform.getter(__int128 *a1@<X8>)
{
  v2 = sub_265FDBC1C();
  if (v2)
  {
    v3 = v2;
    sub_265FE9890(v10);
    v8 = v10[1];
    v9 = v10[0];
    v7 = v10[2];

    v5 = v7;
    v4 = v8;
    v6 = v9;
  }

  else
  {
    v4 = xmmword_265FEF5E0;
    v6 = xmmword_265FEF5F0;
    v5 = 0uLL;
  }

  *a1 = v6;
  a1[1] = v4;
  a1[2] = v5;
}

id sub_265FDBC1C()
{
  type metadata accessor for TransformSceneExtension();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for TransformSceneExtension.HostComponent();
  result = [v0 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()];
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055310, &qword_265FEF6D8);
    swift_dynamicCast();
    return v3;
  }

  return result;
}

void sub_265FDBCCC(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_265FDBC1C();
  if (v4)
  {
    v5 = v4;
    sub_265FE9890(v12);
    v10 = v12[1];
    v11 = v12[0];
    v9 = v12[2];

    v7 = v9;
    v6 = v10;
    v8 = v11;
  }

  else
  {
    v6 = xmmword_265FEF5E0;
    v8 = xmmword_265FEF5F0;
    v7 = 0uLL;
  }

  *a2 = v8;
  a2[1] = v6;
  a2[2] = v7;
}

void sub_265FDBD48(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = a1[2];
  v3 = *a2;
  v4 = sub_265FDBC1C();
  if (v4)
  {
    v5 = v4;
    sub_265FE9A48(v6);
  }
}

void FBScene.transform.setter(_OWORD *a1)
{
  v2 = sub_265FDBC1C();
  if (v2)
  {
    v3 = v2;
    sub_265FE9A48(a1);
  }
}

void (*FBScene.transform.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 192) = v1;
  v5 = sub_265FDBC1C();
  if (v5)
  {
    v6 = v5;
    sub_265FE9890(v4 + 6);
    v12 = v4[7];
    v13 = v4[6];
    v11 = v4[8];

    v8 = v11;
    v7 = v12;
    v9 = v13;
  }

  else
  {
    v7 = xmmword_265FEF5E0;
    v9 = xmmword_265FEF5F0;
    v8 = 0uLL;
  }

  v4[9] = v9;
  v4[10] = v7;
  v4[11] = v8;
  return sub_265FDBEF0;
}

void sub_265FDBEF0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 192);
  if (a2)
  {
    v4 = v2[10];
    *v2 = v2[9];
    v2[1] = v4;
    v2[2] = v2[11];
    v5 = sub_265FDBC1C();
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = v5;
    v7 = v2;
  }

  else
  {
    v7 = v2 + 3;
    v8 = v2[10];
    v2[3] = v2[9];
    v2[4] = v8;
    v2[5] = v2[11];
    v9 = sub_265FDBC1C();
    if (!v9)
    {
      goto LABEL_7;
    }

    v6 = v9;
  }

  sub_265FE9A48(v7);

LABEL_7:

  free(v2);
}

double ManagedProfile.init(identifier:isMainLike:supportsSecureRendering:isActive:preferences:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, void (*a6)(__int128 *)@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 104) = &unk_265FEFCB8;
  *(a7 + 112) = 0;
  *(a7 + 120) = nullsub_1;
  *(a7 + 128) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  if (a4)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  *(a7 + 16) = v8 & 0xFFFE | a3 & 1 | 0x8000;
  *(a7 + 18) = a5;
  *&v12 = 0;
  WORD4(v12) = 513;
  v13 = 0uLL;
  LOBYTE(v14) = 1;
  *(&v14 + 1) = 0;
  *v15 = 0;
  *&v15[8] = 1025;
  *&v15[16] = 0;
  *&v15[24] = 771;
  a6(&v12);
  v9 = v12;
  *(a7 + 40) = v13;
  v10 = *v15;
  *(a7 + 56) = v14;
  *(a7 + 72) = v10;
  result = *&v15[10];
  *(a7 + 82) = *&v15[10];
  *(a7 + 24) = v9;
  return result;
}

uint64_t ManagedProfile.onConnect(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 112);
  v26[0] = *(v3 + 96);
  v26[1] = v8;
  v9 = *(v3 + 16);
  v10 = *(v3 + 48);
  v22 = *(v3 + 32);
  v11 = v22;
  v23 = v10;
  v12 = *(v3 + 48);
  v13 = *(v3 + 80);
  v24 = *(v3 + 64);
  v14 = v24;
  v25 = v13;
  v15 = *(v3 + 16);
  v21[0] = *v3;
  v16 = v21[0];
  v21[1] = v15;
  v17 = *(v3 + 112);
  *(a3 + 96) = v26[0];
  *(a3 + 112) = v17;
  *(a3 + 32) = v11;
  *(a3 + 48) = v12;
  *(a3 + 64) = v14;
  *(a3 + 80) = v7;
  v27 = *(v3 + 128);
  *(a3 + 128) = *(v3 + 128);
  *a3 = v16;
  *(a3 + 16) = v9;
  v18 = swift_allocObject();
  *(v18 + 16) = *(v26 + 8);
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(a3 + 104) = &unk_265FEFCB0;
  *(a3 + 112) = v18;
  sub_265FC7634(v21, v20);
}

uint64_t ManagedProfile.onSceneRequest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 112);
  v25 = *(v3 + 96);
  v9 = v25;
  *v26 = v8;
  v10 = *(v3 + 16);
  v11 = *(v3 + 48);
  v21 = *(v3 + 32);
  v12 = v21;
  v22 = v11;
  v13 = *(v3 + 80);
  v14 = *(v3 + 48);
  v23 = *(v3 + 64);
  v24 = v13;
  v15 = *(v3 + 16);
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  *(a3 + 64) = v23;
  *(a3 + 80) = v7;
  *(a3 + 96) = v9;
  *a3 = v16;
  *(a3 + 16) = v10;
  *&v26[16] = *(v3 + 128);
  *(a3 + 112) = *(v3 + 112);
  *(a3 + 32) = v12;
  *(a3 + 48) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = *&v26[8];
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(a3 + 120) = sub_265FDC8C8;
  *(a3 + 128) = v17;
  sub_265FC7634(v20, v19);
}

double ManagedProfile.init(identity:isActive:preferences:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(__int128 *)@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  *(a4 + 104) = &unk_265FEFCB8;
  *(a4 + 112) = 0;
  *(a4 + 120) = nullsub_1;
  *(a4 + 128) = 0;
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 18) = a2;
  *&v9 = 0;
  WORD4(v9) = 513;
  v10 = 0uLL;
  LOBYTE(v11) = 1;
  *(&v11 + 1) = 0;
  *v12 = 0;
  *&v12[8] = 1025;
  *&v12[16] = 0;
  *&v12[24] = 771;
  a3(&v9);
  v6 = v9;
  *(a4 + 40) = v10;
  v7 = *v12;
  *(a4 + 56) = v11;
  *(a4 + 72) = v7;
  result = *&v12[10];
  *(a4 + 82) = *&v12[10];
  *(a4 + 24) = v6;
  return result;
}

uint64_t sub_265FDC2FC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_265FDC3F8;

  return v10(a1);
}

uint64_t sub_265FDC3F8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v11 = (v2[3] + *v2[3]);
    v7 = *(v2[3] + 4);
    v8 = swift_task_alloc();
    v2[6] = v8;
    *v8 = v4;
    v8[1] = sub_265FDC5CC;
    v9 = v2[4];
    v10 = v2[2];

    return v11(v10);
  }
}

uint64_t sub_265FDC5CC()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_265FDC6C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_265FC66D0;

  return sub_265FDC2FC(a1, v4, v5, v7, v6);
}

uint64_t sub_265FDC77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 112);
  v26[0] = *(v3 + 96);
  v26[1] = v8;
  v9 = *(v3 + 16);
  v10 = *(v3 + 48);
  v22 = *(v3 + 32);
  v11 = v22;
  v23 = v10;
  v12 = *(v3 + 48);
  v13 = *(v3 + 80);
  v24 = *(v3 + 64);
  v14 = v24;
  v25 = v13;
  v15 = *(v3 + 16);
  v21[0] = *v3;
  v16 = v21[0];
  v21[1] = v15;
  v17 = *(v3 + 112);
  *(a3 + 96) = v26[0];
  *(a3 + 112) = v17;
  *(a3 + 32) = v11;
  *(a3 + 48) = v12;
  *(a3 + 64) = v14;
  *(a3 + 80) = v7;
  v27 = *(v3 + 128);
  *(a3 + 128) = *(v3 + 128);
  *a3 = v16;
  *(a3 + 16) = v9;
  v18 = swift_allocObject();
  *(v18 + 16) = *(v26 + 8);
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(a3 + 104) = &unk_265FEFDB8;
  *(a3 + 112) = v18;
  sub_265FC7634(v21, v20);
}

uint64_t sub_265FDC8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 112);
  v25 = *(v3 + 96);
  v9 = v25;
  *v26 = v8;
  v10 = *(v3 + 16);
  v11 = *(v3 + 48);
  v21 = *(v3 + 32);
  v12 = v21;
  v22 = v11;
  v13 = *(v3 + 80);
  v14 = *(v3 + 48);
  v23 = *(v3 + 64);
  v24 = v13;
  v15 = *(v3 + 16);
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  *(a3 + 64) = v23;
  *(a3 + 80) = v7;
  *(a3 + 96) = v9;
  *a3 = v16;
  *(a3 + 16) = v10;
  *&v26[16] = *(v3 + 128);
  *(a3 + 112) = *(v3 + 112);
  *(a3 + 32) = v12;
  *(a3 + 48) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = *&v26[8];
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(a3 + 120) = sub_265FDCB38;
  *(a3 + 128) = v17;
  sub_265FC7634(v20, v19);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_265FDC9DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265FDCA24(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265FDCA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  v9 = *(v3 + 32);
  v8 = *(v3 + 40);
  (*(v3 + 16))();
  return v9(a1, a2, a3);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 ManagedProfile.Preferences.displayPreferences.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 58) = *(v1 + 58);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 ManagedProfile.Preferences.displayPreferences.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v2;
  *(v1 + 58) = *(a1 + 58);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t static ManagedProfile.Preferences.== infix(_:_:)(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v10[0] = v2;
  *(v10 + 10) = *(a1 + 58);
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v4 = a2[3];
  v7[2] = a2[2];
  v8[0] = v4;
  *(v8 + 10) = *(a2 + 58);
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return _s13ShellSceneKit7DisplayV11PreferencesV2eeoiySbAE_AEtFZ_0(v9, v7) & 1;
}

uint64_t sub_265FDCBF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v10[0] = v2;
  *(v10 + 10) = *(a1 + 58);
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v4 = a2[3];
  v7[2] = a2[2];
  v8[0] = v4;
  *(v8 + 10) = *(a2 + 58);
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return _s13ShellSceneKit7DisplayV11PreferencesV2eeoiySbAE_AEtFZ_0(v9, v7) & 1;
}

uint64_t sub_265FDCC64()
{
  if (![v0 isValid])
  {
    goto LABEL_9;
  }

  v1 = [v0 clientScene];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [v1 settings];

  v4 = swift_dynamicCastObjCProtocolConditional();
  if (!v4)
  {

LABEL_9:
    result = sub_265FEC5E0();
    __break(1u);
    return result;
  }

  v5 = [v4 contextIdValue];

  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [objc_opt_self() contextWithId_];

  return v7;
}

unint64_t sub_265FDCDE4()
{
  v1 = [v0 hostScene];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [v1 settings];

  v4 = swift_dynamicCastObjCProtocolConditional();
  if (!v4)
  {

LABEL_9:
    result = sub_265FEC5E0();
    __break(1u);
    return result;
  }

  v5 = [v4 contextIdValue];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];

    v8 = v7;
  }

  else
  {

    v8 = 0;
  }

  return v8 | ((v6 == 0) << 32);
}

uint64_t sub_265FDCF5C(uint64_t a1)
{
  v3 = [v1 hostScene];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 20) = BYTE4(a1) & 1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_265FD4FD4;
    *(v6 + 24) = v5;
    aBlock[4] = sub_265FBFC6C;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265FBCE10;
    aBlock[3] = &block_descriptor_4;
    v7 = _Block_copy(aBlock);

    [v4 updateSettingsWithBlock_];

    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

id sub_265FDD16C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055800, &unk_265FF0510);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265FEE990;
  *(v4 + 32) = a3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055830, &qword_265FEFEA0);
  v5 = sub_265FEC1E0();

  return v5;
}

void sub_265FDD208(void *a1, uint64_t a2)
{
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    if ((a2 & 0x100000000) != 0)
    {
      v9 = a1;
      v8 = 0;
    }

    else
    {
      v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v7 = a1;
      v8 = [v6 initWithUnsignedInt_];
    }

    [v5 setContextIdValue_];
  }

  else
  {
    sub_265FEC5E0();
    __break(1u);
  }
}

id sub_265FDD300(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = objc_msgSendSuper2(&v6, sel_initWithScene_, a3);
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

id sub_265FDD388(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t SceneRequest.init(sceneIdentifier:specification:initialClientSettings:clientIdentity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t SceneRequest.sceneIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SceneRequest.sceneIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *SceneRequest.initialClientSettings.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t SceneRequest.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_265FEC130();
  sub_265FEC430();
  sub_265FEC7A0();
  if (v4)
  {
    v6 = v4;
    sub_265FEC430();
  }

  return sub_265FEC430();
}

uint64_t SceneRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_265FEC780();
  sub_265FEC130();
  sub_265FEC430();
  sub_265FEC7A0();
  if (v4)
  {
    v6 = v4;
    sub_265FEC430();
  }

  sub_265FEC430();
  return sub_265FEC7B0();
}

uint64_t sub_265FDD77C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_265FEC780();
  sub_265FEC130();
  sub_265FEC430();
  sub_265FEC7A0();
  if (v4)
  {
    v6 = v4;
    sub_265FEC430();
  }

  sub_265FEC430();
  return sub_265FEC7B0();
}

uint64_t sub_265FDD828()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_265FEC130();
  sub_265FEC430();
  sub_265FEC7A0();
  if (v4)
  {
    v6 = v4;
    sub_265FEC430();
  }

  return sub_265FEC430();
}

uint64_t sub_265FDD8B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_265FEC780();
  sub_265FEC130();
  sub_265FEC430();
  sub_265FEC7A0();
  if (v4)
  {
    v6 = v4;
    sub_265FEC430();
  }

  sub_265FEC430();
  return sub_265FEC7B0();
}

uint64_t _s13ShellSceneKit0B7RequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_265FEC6C0() & 1) != 0)
  {
    sub_265FCF0EC(0, &qword_280055468, 0x277D82BB8);
    if (sub_265FEC420())
    {
      if (v4)
      {
        if (v6)
        {
          sub_265FCF0EC(0, &qword_280055650, 0x277D0ADB0);
          v9 = v6;
          v10 = v4;
          v11 = sub_265FEC420();

          if (v11)
          {
            return sub_265FEC420() & 1;
          }
        }
      }

      else if (!v6)
      {
        return sub_265FEC420() & 1;
      }
    }
  }

  return 0;
}

unint64_t sub_265FDDA78()
{
  result = qword_280055648;
  if (!qword_280055648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055648);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265FDDAE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_265FDDB28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static HostingGroup.default.getter(void *a1@<X8>)
{
  *a1 = 0x746C7561666564;
  a1[1] = 0xE700000000000000;
  a1[2] = 0;
}

uint64_t HostingGroup.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

ShellSceneKit::HostingGroup __swiftcall HostingGroup.init(_:)(Swift::String a1)
{
  *v1 = a1;
  v1[1]._countAndFlagsBits = 0;
  result.id = a1;
  return result;
}

uint64_t HostingGroup.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_265FEC130();
}

uint64_t static HostingGroup.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_265FEC6C0();
  }
}

unint64_t sub_265FDDC30()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_265FDDC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_265FEC6C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000265FF1D50 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_265FEC6C0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_265FDDD58(uint64_t a1)
{
  v2 = sub_265FDDF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265FDDD94(uint64_t a1)
{
  v2 = sub_265FDDF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HostingGroup.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055658, "HE");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v14[0] = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265FDDF64();
  sub_265FEC7D0();
  v16 = 0;
  v12 = v14[1];
  sub_265FEC670();
  if (!v12)
  {
    v15 = 1;
    sub_265FEC680();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_265FDDF64()
{
  result = qword_280055660;
  if (!qword_280055660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055660);
  }

  return result;
}

uint64_t HostingGroup.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_265FEC780();
  sub_265FEC130();
  return sub_265FEC7B0();
}

uint64_t HostingGroup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055668, &qword_265FEFFC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265FDDF64();
  sub_265FEC7C0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = 0;
  v12 = sub_265FEC650();
  v14 = v13;
  v15 = v12;
  v19 = 1;
  v16 = sub_265FEC660();
  (*(v6 + 8))(v10, v5);
  *a2 = v15;
  a2[1] = v14;
  a2[2] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_265FDE210()
{
  v1 = *v0;
  v2 = v0[1];
  sub_265FEC780();
  sub_265FEC130();
  return sub_265FEC7B0();
}

uint64_t sub_265FDE25C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_265FEC130();
}

uint64_t sub_265FDE264()
{
  v1 = *v0;
  v2 = v0[1];
  sub_265FEC780();
  sub_265FEC130();
  return sub_265FEC7B0();
}

uint64_t sub_265FDE2AC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_265FEC6C0();
  }
}

uint64_t HostingGroup.description.getter()
{
  MEMORY[0x2667756D0](*v0, v0[1]);
  MEMORY[0x2667756D0](93, 0xE100000000000000);
  return 0x3A70756F72675BLL;
}

unint64_t sub_265FDE33C()
{
  result = qword_28156BE38;
  if (!qword_28156BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156BE38);
  }

  return result;
}

uint64_t sub_265FDE390()
{
  MEMORY[0x2667756D0](*v0, v0[1]);
  MEMORY[0x2667756D0](93, 0xE100000000000000);
  return 0x3A70756F72675BLL;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_265FDE400(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_265FDE448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HostingGroup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HostingGroup.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_265FDE5F8()
{
  result = qword_280055670;
  if (!qword_280055670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055670);
  }

  return result;
}

unint64_t sub_265FDE650()
{
  result = qword_280055678;
  if (!qword_280055678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055678);
  }

  return result;
}

unint64_t sub_265FDE6A8()
{
  result = qword_280055680;
  if (!qword_280055680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055680);
  }

  return result;
}

BOOL sub_265FDE6FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if (a4)
  {
    return v7 < v6;
  }

  else
  {
    return v6 < v7;
  }
}

uint64_t sub_265FDE778@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a2;
  v9 = sub_265FEBF00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(type metadata accessor for FBSHardwareSource());
  v16 = a1;
  v17 = sub_265FC9D84(v16);
  *(a5 + 48) = 0;
  *(a5 + 52) = 0;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 32) = nullsub_1;
  *(a5 + 40) = 0;
  v46 = 0;
  v47 = 0xE000000000000000;

  sub_265FEC550();

  v46 = 0xD00000000000002FLL;
  v47 = 0x8000000265FF1170;
  sub_265FEBEF0();
  v18 = sub_265FEBEE0();
  v20 = v19;
  (*(v10 + 8))(v14, v9);
  v22 = sub_265FDACAC(6, v18, v20, v21);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = MEMORY[0x2667756A0](v22, v24, v26, v28);
  v31 = v30;

  MEMORY[0x2667756D0](v29, v31);

  v32 = objc_allocWithZone(MEMORY[0x277D0AAE8]);
  v33 = sub_265FEC0D0();

  v34 = [v32 initWithIdentifier_];

  *(a5 + 24) = v34;
  v35 = objc_allocWithZone(type metadata accessor for SceneWorkspace());
  v36 = sub_265FBEA38(v34);
  swift_getKeyPath();
  v43 = v36;
  v44 = nullsub_1;
  v45 = 0;
  v46 = v36;
  sub_265FE7AF8(&qword_280054B00, type metadata accessor for SceneWorkspace);
  sub_265FEBF30();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055040, &qword_265FEEB58);
  v37 = swift_allocObject();
  sub_265FE5AA8(v17, v36, v42, v37);
  v39 = v38;

  *a5 = v39;
  return result;
}

uint64_t sub_265FDEAB0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055218, &qword_265FEF000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v193[-v11];
  v248 = a1;
  if (a3)
  {
    v13 = [*(a1 + 16) displayId];
    swift_beginAccess();
    if (!*(*(v4 + 9) + 16))
    {
      return swift_endAccess();
    }

    sub_265FDA660(v13);
    if ((v14 & 1) == 0)
    {
      return swift_endAccess();
    }

    swift_endAccess();
  }

  v202 = v12;
  v15 = &v226;
  v16 = *(v4 + 2);
  sub_265FCA7C0(a1, &v230);

  v216 = a1;
  v257[4] = v234;
  v257[5] = v235[0];
  v257[6] = v235[1];
  v258 = v236;
  v257[0] = v230;
  v257[1] = v231;
  v257[2] = v232;
  v257[3] = v233;
  v17 = *(a1 + 24);
  v238 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v18, v19);
  *&v193[-32] = &v238;
  *&v193[-24] = v4;
  v191 = v257;
  v192 = &v248;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v216;
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = a2;
  v211 = v17;

  v214 = a2;
  sub_265FEBF10();

  v23 = v216;
  v24 = v238;
  swift_beginAccess();

  sub_265FE079C(&v226, &v230, v24, v23);
  swift_endAccess();
  v246 = v227[1];
  v247[0] = v227[2];
  *(v247 + 10) = *(&v227[2] + 10);
  v244 = v226;
  v245 = v227[0];
  v253 = v234;
  v254[0] = v235[0];
  *(v254 + 10) = *(v235 + 10);
  v249 = v230;
  v250 = v231;
  v251 = v232;
  v252 = v233;
  v227[2] = v247[0];
  *(&v227[2] + 10) = *(v247 + 10);
  sub_265FD0968(&v230);
  if (v237 == 1)
  {
    sub_265FD6FFC(&v230, &unk_280054BE0, &qword_265FF0390);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 1;
    LOBYTE(v255[0]) = 1;
    LOBYTE(v219) = 1;
    LOBYTE(v223) = 1;
    v32 = 1;
    v33 = 1;
    v34 = 3;
    v35 = 4;
    v36 = 2;
    v37 = 3;
  }

  else
  {
    v25 = *(&v231 + 1);
    v208 = v232;
    v242 = *(&v232 + 2);
    v243 = WORD3(v232);
    v209 = v233;
    v210 = *(&v232 + 1);
    v205 = BYTE1(v232);
    v206 = BYTE8(v233);
    v241[0] = *(&v233 + 9);
    *(v241 + 3) = HIDWORD(v233);
    v39 = *(&v234 + 1);
    v207 = v234;
    v33 = LOBYTE(v235[0]);
    v35 = BYTE1(v235[0]);
    v240 = WORD3(v235[0]);
    v239 = *(v235 + 2);
    v40 = *(&v235[0] + 1);
    v41 = LOBYTE(v235[1]);
    v42 = v24;
    v43 = BYTE1(v235[1]);
    sub_265FC2504(&v230);
    v37 = v43;
    v24 = v42;
    v34 = v41;
    v30 = v40;
    v36 = v205;
    v32 = v206;
    v29 = v39;
    v28 = v207;
    v15 = &v226;
    v31 = v208;
    v27 = v209;
    v26 = v210;
  }

  v201 = v25;
  *&v230 = v25;
  v208 = v31;
  BYTE8(v230) = v31;
  v205 = v36;
  BYTE9(v230) = v36;
  *(&v230 + 10) = v242;
  HIWORD(v230) = v243;
  v209 = v27;
  v210 = v26;
  *&v231 = v26;
  *(&v231 + 1) = v27;
  LOBYTE(v232) = v32;
  *(&v232 + 1) = v241[0];
  DWORD1(v232) = *(v241 + 3);
  v207 = v28;
  *(&v232 + 1) = v28;
  v199 = v30;
  v200 = v29;
  *&v233 = v29;
  v197 = v34;
  v198 = v33;
  BYTE8(v233) = v33;
  v195 = v37;
  v196 = v35;
  BYTE9(v233) = v35;
  *(&v233 + 10) = v239;
  HIWORD(v233) = v240;
  *&v234 = v30;
  BYTE8(v234) = v34;
  BYTE9(v234) = v37;
  v203 = sub_265FC41FC(&v230);
  v194 = sub_265FC44C4(v203);
  v204 = v24;
  v206 = v32;
  if (v194)
  {
    sub_265FC4F54();
  }

  else
  {
    sub_265FC5158();
  }

  v44 = LOWORD(v254[0]);
  if ((~LOWORD(v254[0]) & 0xFEFE) != 0)
  {
    v45 = v253;
    swift_beginAccess();
    v46 = *(v4 + 11);
    v15 = *(v46 + 16);
    sub_265FC23C0();
    if (v15 && (v47 = sub_265FDA6A8(v45, *(&v45 + 1), v44), (v48 & 1) != 0))
    {
      v49 = *(*(v46 + 56) + 16 * v47);
      swift_endAccess();
      swift_unknownObjectRetain();
      sub_265FD5E48();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    v50 = *(v4 + 12);
    if (*(v50 + 16) && (v51 = sub_265FDA6A8(v45, *(&v45 + 1), v44), (v52 & 1) != 0))
    {
      v53 = *(*(v50 + 56) + 8 * v51);
      swift_endAccess();

      sub_265FD2458(v45, *(&v45 + 1), v44);
      sub_265FD3158(0);
      v15 = *(v53 + 24);
      *(v53 + 24) = 0;
    }

    else
    {
      swift_endAccess();
      sub_265FD2458(v45, *(&v45 + 1), v44);
    }
  }

  v54 = *(&v252 + 1);
  v259 = *(&v252 + 1);
  v218 = *(*(&v252 + 1) + 16);
  if (v218)
  {
    v260 = v252;
    sub_265FE7B6C(&v260, &v230, &qword_2800556D8, &qword_265FF0398);
    sub_265FE7B6C(&v259, &v230, &qword_2800556E0, &qword_265FF03A0);
    v33 = 0;
    v55 = (v54 + 48);
    *&v217 = v54;
    while (v33 < *(v54 + 16))
    {
      v57 = *(v55 - 2);
      v56 = *(v55 - 1);
      v58 = *v55;
      swift_beginAccess();
      v59 = *(v4 + 11);
      sub_265FC23C0();
      v60 = sub_265FDA6A8(v57, v56, v58);
      if (v61)
      {
        v62 = v60;
        v63 = *(v4 + 11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = *(v4 + 11);
        *&v226 = v65;
        *(v4 + 11) = 0x8000000000000000;
        v15 = v4;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_265FCE130();
          v65 = v226;
        }

        v66 = *(v65 + 48) + 24 * v62;
        v67 = *v66;
        v68 = *(v66 + 8);
        v69 = *(v66 + 16);
        sub_265FC23C8();
        v70 = *(*(v65 + 56) + 16 * v62);
        sub_265FCD780(v62, v65);
        *(v15 + 11) = v65;
        swift_endAccess();
        sub_265FD6298();
        swift_unknownObjectRelease();
        v4 = v15;
      }

      else
      {
        swift_endAccess();
      }

      swift_beginAccess();
      v71 = *(v4 + 12);
      v72 = sub_265FDA6A8(v57, v56, v58);
      if (v73)
      {
        v74 = v72;
        v75 = *(v4 + 12);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        v77 = *(v4 + 12);
        *&v226 = v77;
        *(v4 + 12) = 0x8000000000000000;
        v15 = v4;
        if (!v76)
        {
          sub_265FCDFB4();
          v77 = v226;
        }

        v78 = *(v77 + 48) + 24 * v74;
        v79 = *v78;
        v80 = *(v78 + 8);
        v81 = *(v78 + 16);
        sub_265FC23C8();
        v82 = *(*(v77 + 56) + 8 * v74);
        sub_265FCD524(v74, v77);
        *(v15 + 12) = v77;
        swift_endAccess();
        sub_265FC23C8();
        sub_265FD2BE8();

        v4 = v15;
      }

      else
      {
        swift_endAccess();
        sub_265FC23C8();
      }

      ++v33;
      v55 += 12;
      v54 = v217;
      if (v218 == v33)
      {
        sub_265FD6FFC(&v260, &qword_2800556D8, &qword_265FF0398);
        sub_265FD6FFC(&v259, &qword_2800556E0, &qword_265FF03A0);
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_36:
  v261 = *(&v249 + 1);
  v215 = *(&v249 + 1);
  v262[0] = v249;
  v83 = *(*(&v249 + 1) + 16);
  sub_265FE7B6C(v262, &v230, &qword_2800556D8, &qword_265FF0398);
  sub_265FE7B6C(&v261, &v230, &qword_2800556E0, &qword_265FF03A0);
  v218 = v4;
  v213 = v83;
  if (v83)
  {
    v84 = 0;
    v15 = (v215 + 48);
    v212 = MEMORY[0x277D84F90] >> 62;
    do
    {
      if (v84 >= *(v215 + 16))
      {
        goto LABEL_90;
      }

      v86 = *(v15 - 2);
      v85 = *(v15 - 1);
      v87 = *v15;
      v89 = *(&v244 + 1);
      v88 = v244;
      v33 = v245;
      v90 = *(*(&v244 + 1) + 16);
      if (v244)
      {
        v91 = *(v15 - 2);
        v92 = *(v15 - 1);
        v93 = *v15;
        sub_265FC23C0();

        v94 = sub_265FC0994(v86, v85, v87, v89 + 32, v90, (v88 + 16));
        v96 = v95;

        if (v96)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v94 = sub_265FE46EC(*(v15 - 2), *(v15 - 1), *v15, *(&v244 + 1) + 32, *(*(&v244 + 1) + 16));
        v88 = v97;
        sub_265FC23C0();
        if (v88)
        {
LABEL_95:
          *&v230 = 0;
          *(&v230 + 1) = 0xE000000000000000;
          sub_265FEC550();

          *&v226 = 0xD000000000000026;
          *(&v226 + 1) = 0x8000000265FF1EC0;
          *&v230 = v86;
          *(&v230 + 1) = v85;
          LOWORD(v231) = v87;
          v185 = Profile.DisplayIdentity.description.getter();
          MEMORY[0x2667756D0](v185);

          LODWORD(v192) = 0;
          i = 211;
          goto LABEL_96;
        }
      }

      v98 = v218;
      if ((v94 & 0x8000000000000000) != 0)
      {
        goto LABEL_91;
      }

      if (v94 >= *(v33 + 16))
      {
        goto LABEL_92;
      }

      sub_265FC24A8(v33 + 144 * v94 + 32, &v226);
      sub_265FC23C8();
      v235[1] = v227[5];
      v236 = v228;
      v237 = v229;
      v232 = v227[1];
      v233 = v227[2];
      v234 = v227[3];
      v235[0] = v227[4];
      v230 = v226;
      v231 = v227[0];
      v223 = v226;
      v224 = v227[0];
      v221 = *(&v227[2] + 8);
      v222[0] = *(&v227[3] + 8);
      *(v222 + 10) = *(&v227[4] + 2);
      v219 = *(v227 + 8);
      v220 = *(&v227[1] + 8);
      sub_265FC23C0();
      v99 = sub_265FD0584(&v223, &v219);
      sub_265FC23C8();
      sub_265FE7B6C(&v235[1] + 8, &v219, &qword_280054F70, &qword_265FEE9F0);
      if (!*(&v220 + 1))
      {
        sub_265FD6FFC(&v219, &qword_280054F70, &qword_265FEE9F0);
        LODWORD(v192) = 0;
        v191 = 73;
        goto LABEL_97;
      }

      sub_265FBD900(&v219, &v223);
      v100 = __swift_project_boxed_opaque_existential_1(&v223, v225);
      v255[0] = *v100;
      v101 = *(v100 + 4);
      v103 = *(v100 + 1);
      v102 = *(v100 + 2);
      v255[3] = *(v100 + 3);
      v255[4] = v101;
      v255[1] = v103;
      v255[2] = v102;
      v105 = *(v100 + 6);
      v104 = *(v100 + 7);
      v106 = *(v100 + 5);
      v256 = v100[16];
      v255[6] = v105;
      v255[7] = v104;
      v255[5] = v106;
      _s5StateCMa();
      swift_allocObject();
      v107 = v216;

      sub_265FC7634(v255, &v219);
      *&v217 = v99;
      v108 = sub_265FE27A4(v255, v107, v217);
      __swift_destroy_boxed_opaque_existential_0(&v223);
      v109 = v230;
      v110 = v231;
      swift_beginAccess();
      sub_265FC23C0();

      v111 = *(v98 + 11);
      v112 = swift_isUniquelyReferenced_nonNull_native();
      *&v223 = *(v98 + 11);
      *(v98 + 11) = 0x8000000000000000;
      sub_265FE612C(v108, v109, *(&v109 + 1), v110, v112, &v223);
      sub_265FC23C8();
      *(v98 + 11) = v223;
      swift_endAccess();
      v113 = v230;
      v114 = v231;
      type metadata accessor for _HostingContext();
      v33 = swift_allocObject();
      if (v212 && sub_265FEC4A0())
      {
        sub_265FC23C0();
        sub_265FE62D8(MEMORY[0x277D84F90]);
      }

      else
      {
        sub_265FC23C0();
        v115 = MEMORY[0x277D84FA0];
      }

      ++v84;
      *(v33 + 16) = v115;
      *(v33 + 24) = 0;
      v4 = v218;
      swift_beginAccess();
      v116 = *(v4 + 12);
      v117 = swift_isUniquelyReferenced_nonNull_native();
      *&v223 = *(v4 + 12);
      *(v4 + 12) = 0x8000000000000000;
      sub_265FCEA00(v33, v113, *(&v113 + 1), v114, v117);
      sub_265FC23C8();
      *(v4 + 12) = v223;
      swift_endAccess();

      sub_265FC2504(&v230);
      v15 = (v15 + 24);
    }

    while (v213 != v84);
  }

  sub_265FD6FFC(v262, &qword_2800556D8, &qword_265FF0398);
  sub_265FD6FFC(&v261, &qword_2800556E0, &qword_265FF03A0);
  v33 = *(v216 + 16);
  v15 = &unk_279BC1000;
  v118 = [v33 displayId];
  swift_beginAccess();
  v119 = *(v4 + 8);
  if (*(v119 + 16) && (v120 = sub_265FDA660(v118), (v121 & 1) != 0))
  {
    v122 = *(*(v119 + 56) + 8 * v120);
    swift_endAccess();
    swift_retain_n();
    sub_265FEC280();
  }

  else
  {
    swift_endAccess();
    v122 = 0;
  }

  v221 = v246;
  v222[0] = v247[0];
  *(v222 + 10) = *(v247 + 10);
  v219 = v244;
  v220 = v245;
  sub_265FD0968(&v226);
  if (v229 != 1)
  {
    v213 = v33;
    v235[1] = v227[5];
    v236 = v228;
    v237 = v229;
    v232 = v227[1];
    v233 = v227[2];
    v234 = v227[3];
    v235[0] = v227[4];
    v230 = v226;
    v231 = v227[0];
    v135 = SWORD4(v254[1]);
    v33 = *(&v226 + 1);
    v88 = v226;
    v136 = SLOWORD(v227[0]);
    if ((~SWORD4(v254[1]) & 0xFFFFFEFE) == 0)
    {
      goto LABEL_84;
    }

    v137 = *(&v254[0] + 1);
    v138 = *&v254[1];
    if ((~SLOWORD(v227[0]) & 0xFFFFFEFE) == 0)
    {
      sub_265FD246C(*(&v254[0] + 1), *&v254[1], SWORD4(v254[1]));
      sub_265FC23C0();
      sub_265FD246C(v137, v138, v135);
      sub_265FC23C8();
      sub_265FD2458(v137, v138, v135);
LABEL_103:
      sub_265FD2458(v88, v33, v136);
      *&v226 = 0;
      *(&v226 + 1) = 0xE000000000000000;
      sub_265FEC550();
      v219 = v226;
      v88 = 0xD00000000000001CLL;
      MEMORY[0x2667756D0](0xD00000000000001CLL, 0x8000000265FF1F90);
      *&v226 = v137;
      *(&v226 + 1) = v138;
      LOWORD(v227[0]) = v135;
      sub_265FC23C0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800556E8, &qword_265FF03B8);
      v189 = sub_265FEC100();
      MEMORY[0x2667756D0](v189);

      MEMORY[0x2667756D0](0xD000000000000022, 0x8000000265FF1FB0);
      v226 = v230;
      LOWORD(v227[0]) = v231;
      v190 = Profile.DisplayIdentity.description.getter();
      MEMORY[0x2667756D0](v190);

      LODWORD(v192) = 0;
      i = 230;
      goto LABEL_96;
    }

    if (SWORD4(v254[1]) < 0)
    {
      if (SLOWORD(v227[0]) < 0)
      {
        if (*(v254 + 8) == v226)
        {
          sub_265FD246C(*(&v254[0] + 1), *&v254[1], SWORD4(v254[1]));
          sub_265FC23C0();
          sub_265FD246C(v137, v138, v135);
          sub_265FD2458(v137, v138, v136);
          if (((v135 ^ v136) & 1) == 0 && (((v135 ^ v136) >> 8) & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v148 = sub_265FEC6C0();
          sub_265FD246C(v137, v138, v135);
          sub_265FC23C0();
          sub_265FD246C(v137, v138, v135);
          sub_265FD2458(v88, v33, v136);
          if ((v148 & 1) != 0 && ((v135 ^ v136) & 1) == 0 && (((v135 ^ v136) >> 8) & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        goto LABEL_102;
      }
    }

    else if ((SLOWORD(v227[0]) & 0x80000000) == 0)
    {
      if (*(v254 + 8) == v226)
      {
        sub_265FD246C(*(&v254[0] + 1), *&v254[1], SWORD4(v254[1]));
        sub_265FC23C0();
        sub_265FD246C(v137, v138, v135);
        sub_265FD2458(v137, v138, v136);
LABEL_83:
        sub_265FC23C8();
        sub_265FD2458(v137, v138, v135);
LABEL_84:
        v149 = v218;
        swift_beginAccess();
        v150 = *(v149 + 11);
        if (!*(v150 + 16))
        {
          goto LABEL_98;
        }

        v151 = sub_265FDA6A8(v88, v33, v136);
        if ((v152 & 1) == 0)
        {
          goto LABEL_98;
        }

        v215 = v122;
        v217 = *(*(v150 + 56) + 16 * v151);
        swift_endAccess();
        v153 = v231;
        v154 = v218;
        swift_beginAccess();
        v155 = *(v154 + 12);
        v156 = *(v155 + 16);
        v212 = v217;
        swift_unknownObjectRetain();
        if (v156)
        {
          v157 = sub_265FDA6A8(v88, v33, v153);
          if (v158)
          {
            v159 = *(*(v155 + 56) + 8 * v157);
            swift_endAccess();
            v160 = sub_265FEC270();
            v161 = v202;
            (*(*(v160 - 8) + 56))(v202, 1, 1, v160);
            sub_265FC24A8(&v230, &v226);
            v162 = swift_allocObject();
            v163 = v253;
            *(v162 + 384) = v254[0];
            *(v162 + 394) = *(v254 + 10);
            v164 = v228;
            *(v162 + 160) = v227[5];
            *(v162 + 176) = v164;
            *(v162 + 192) = v229;
            v165 = v227[2];
            *(v162 + 96) = v227[1];
            *(v162 + 112) = v165;
            v166 = v227[4];
            *(v162 + 128) = v227[3];
            *(v162 + 144) = v166;
            v167 = v227[0];
            *(v162 + 64) = v226;
            *(v162 + 80) = v167;
            v168 = v251;
            *(v162 + 352) = v252;
            *(v162 + 368) = v163;
            v169 = v249;
            v170 = v250;
            *(v162 + 288) = v217;
            *(v162 + 304) = v169;
            v171 = v214;
            *(v162 + 16) = v214;
            *(v162 + 24) = v194;
            v172 = v203;
            *(v162 + 32) = v216;
            *(v162 + 40) = v172;
            *(v162 + 48) = v154;
            *(v162 + 56) = v159;
            *(v162 + 208) = v201;
            *(v162 + 216) = v208;
            *(v162 + 217) = v205;
            *(v162 + 218) = v242;
            *(v162 + 222) = v243;
            v173 = v209;
            *(v162 + 224) = v210;
            *(v162 + 232) = v173;
            *(v162 + 240) = v206;
            *(v162 + 241) = v241[0];
            *(v162 + 244) = *(v241 + 3);
            v174 = v200;
            *(v162 + 248) = v207;
            *(v162 + 256) = v174;
            *(v162 + 264) = v198;
            *(v162 + 265) = v196;
            v175 = v239;
            *(v162 + 270) = v240;
            *(v162 + 266) = v175;
            *(v162 + 272) = v199;
            *(v162 + 280) = v197;
            *(v162 + 281) = v195;
            *(v162 + 320) = v170;
            *(v162 + 336) = v168;
            v176 = v211;
            *(v162 + 416) = v211;
            swift_retain_n();
            v177 = v176;

            v178 = v171;
            swift_unknownObjectRetain();
            v179 = v172;

            sub_265FD24B0(&v249, &v226);
            v180 = sub_265FEC290();
            sub_265FD6FFC(v161, &qword_280055218, &qword_265FEF000);
            v181 = v154;
            v182 = [v213 displayId];
            swift_beginAccess();

            v183 = *(v181 + 8);
            v184 = swift_isUniquelyReferenced_nonNull_native();
            *&v219 = *(v181 + 8);
            *(v181 + 8) = 0x8000000000000000;
            sub_265FCEB98(v180, v182, v184);
            *(v181 + 8) = v219;
            swift_endAccess();
            sub_265FE798C(v257);
            sub_265FD2480(&v244);

            sub_265FD24E8(&v249);

            swift_unknownObjectRelease();
            sub_265FC2504(&v230);
          }
        }

        swift_endAccess();
        *&v226 = 0;
        *(&v226 + 1) = 0xE000000000000000;
        sub_265FEC550();

        *&v219 = 0xD000000000000029;
        *(&v219 + 1) = 0x8000000265FF1F60;
        *&v226 = v88;
        *(&v226 + 1) = v33;
        LOWORD(v227[0]) = v153;
        v188 = Profile.DisplayIdentity.description.getter();
        MEMORY[0x2667756D0](v188);

        LODWORD(v192) = 0;
        for (i = 238; ; i = 234)
        {
LABEL_96:
          v191 = i;
LABEL_97:
          sub_265FEC5E0();
          __break(1u);
LABEL_98:
          swift_endAccess();
          *&v226 = 0;
          *(&v226 + 1) = 0xE000000000000000;
          sub_265FEC550();

          *&v219 = 0xD000000000000024;
          *(&v219 + 1) = 0x8000000265FF1F30;
          *&v226 = v88;
          *(&v226 + 1) = v33;
          LOWORD(v227[0]) = v231;
          v187 = Profile.DisplayIdentity.description.getter();
          MEMORY[0x2667756D0](v187);

          LODWORD(v192) = 0;
        }
      }

      v147 = sub_265FEC6C0();
      sub_265FD246C(v137, v138, v135);
      sub_265FC23C0();
      sub_265FD246C(v137, v138, v135);
      sub_265FD2458(v88, v33, v136);
      if (v147)
      {
        goto LABEL_83;
      }

      goto LABEL_102;
    }

    sub_265FD246C(*(&v254[0] + 1), *&v254[1], SWORD4(v254[1]));
    sub_265FC23C0();
    sub_265FD246C(v137, v138, v135);
    sub_265FD2458(v88, v33, v136);
LABEL_102:
    sub_265FC23C8();
    v136 = v135;
    v33 = v138;
    v88 = v137;
    goto LABEL_103;
  }

  sub_265FD6FFC(&v226, &unk_280054BE0, &qword_265FF0390);
  if (qword_2800547D0 != -1)
  {
LABEL_93:
    swift_once();
  }

  v123 = sub_265FEC060();
  v124 = __swift_project_value_buffer(v123, qword_280055050);

  v125 = sub_265FEC040();
  v126 = sub_265FEC390();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    *&v217 = v124;
    v128 = v127;
    v129 = swift_slowAlloc();
    *&v230 = v129;
    *v128 = 136315138;
    LODWORD(v226) = [v33 *(v15 + 144)];
    v130 = sub_265FEC6B0();
    v131 = v33;
    v133 = v132;

    v134 = sub_265FEB534(v130, v133, &v230);
    v33 = v131;
    v15 = &unk_279BC1000;

    *(v128 + 4) = v134;
    _os_log_impl(&dword_265FBB000, v125, v126, "No profile currently driving hardware %s", v128, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v129);
    MEMORY[0x2667764A0](v129, -1, -1);
    MEMORY[0x2667764A0](v128, -1, -1);
  }

  else
  {
  }

  v139 = [v33 *(v15 + 144)];
  swift_beginAccess();
  v140 = sub_265FE47CC(v139);
  swift_endAccess();
  if (v140)
  {
    v141 = v140;
    v142 = sub_265FEC040();
    v143 = sub_265FEC390();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v144 = 138412290;
      *(v144 + 4) = v141;
      *v145 = v140;
      v146 = v141;
      _os_log_impl(&dword_265FBB000, v142, v143, "Removing binder from lookup: %@", v144, 0xCu);
      sub_265FD6FFC(v145, &unk_280055370, &qword_265FEEF40);
      MEMORY[0x2667764A0](v145, -1, -1);
      MEMORY[0x2667764A0](v144, -1, -1);
    }

    [v141 invalidate];
    sub_265FE798C(v257);
  }

  else
  {
    sub_265FE798C(v257);
  }

  sub_265FD2480(&v244);
  sub_265FD24E8(&v249);
}