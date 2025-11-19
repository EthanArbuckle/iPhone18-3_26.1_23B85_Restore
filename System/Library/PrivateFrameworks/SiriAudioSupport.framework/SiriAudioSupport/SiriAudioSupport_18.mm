unint64_t sub_2664533AC(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_2664E0A28() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_2664E0E68();

      sub_2664E0368();
      v15 = sub_2664E0EB8();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2664535A0(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + (result << 6));
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
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

_OWORD *sub_2664535F8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_266318804(a4, (a5[7] + 32 * a1));
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

unint64_t sub_26645367C(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
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

unint64_t sub_2664536C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

_OWORD *sub_266453714(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_266318804(a3, (a4[7] + 32 * a1));
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

unint64_t sub_26645377C(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

uint64_t sub_2664537DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

unint64_t sub_266453890(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

void *sub_2664538FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B60, &qword_2664E9118);
  v2 = *v0;
  v3 = sub_2664E0C78();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_2662C0AE0(&v32, &v31);
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

void *sub_266453AC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D8, &unk_2664E52F8);
  v2 = *v0;
  v3 = sub_2664E0C78();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2662A01E8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_266318804(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_266453C68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
  v2 = *v0;
  v3 = sub_2664E0C78();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_2662A7224(*(v2 + 56) + 32 * v17, v27, &unk_280074250, &unk_2664E3680);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
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

        v1 = v26;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_266453E30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  v2 = *v0;
  v3 = sub_2664E0C78();
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

void *sub_266453FAC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2664E0C78();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_26645410C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FE8, &qword_2664F0860);
  v2 = *v0;
  v3 = sub_2664E0C78();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
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

void *sub_26645429C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F50, &qword_2664ED6B0);
  v2 = *v0;
  v3 = sub_2664E0C78();
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

id sub_26645443C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2664E0C78();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

id sub_266454598()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A70, &unk_2664ED610);
  v2 = *v0;
  v3 = sub_2664E0C78();
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
        sub_2662A01E8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_266318804(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_266454718()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F58, &qword_2664E9078);
  v2 = *v0;
  v3 = sub_2664E0C78();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_266454894(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2664E0C78();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_2664549F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B10, &qword_2664ED698);
  v2 = *v0;
  v3 = sub_2664E0C78();
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

void *sub_266454B8C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_2664E0C78();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

id sub_266454E14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B00, &qword_2664ED680);
  v2 = *v0;
  v3 = sub_2664E0C78();
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
        sub_2662A01E8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_266318804(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_266454F94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A60, &unk_2664ED600);
  v2 = *v0;
  v3 = sub_2664E0C78();
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

void sub_2664550F0(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_2662A7224(a1 + 32, &v46, &unk_2800734F0, &unk_2664E3660);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_266318804(v48, v43);
  v9 = *a3;
  v10 = sub_2662A3E98(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_266450328(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_2662A3E98(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_2664E0DD8();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_266453AC4();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v43);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_266318804(v43, (v22[7] + 32 * v10));
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v26 = a1 + 80;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_2662A7224(v26, &v46, &unk_2800734F0, &unk_2664E3660);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      sub_266318804(v48, v43);
      v30 = *a3;
      v31 = sub_2662A3E98(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_266450328(v35, 1);
        v37 = *a3;
        v31 = sub_2662A3E98(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_266318804(v43, (v39[7] + 32 * v31));
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 48;
      if (v4 == v27)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD00000000000001BLL, 0x80000002664F4320);
  sub_2664E0C28();
  MEMORY[0x2667833B0](39, 0xE100000000000000);
  sub_2664E0C48();
  __break(1u);
}

uint64_t sub_2664554CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2662A8618(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_266455564(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *))
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(v9);
}

uint64_t sub_266455630(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = *(v7 + 16);
  v14(&v20 - v12);
  sub_2662A98AC();
  v15 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266384800(0, v15[2] + 1, 1, v15);
    *a2 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266384800((v17 > 1), v18 + 1, 1, v15);
    *a2 = v15;
  }

  (v14)(v11, v13, a4);
  sub_2664554CC(v18, v11, a2, a4, v21);
  *a2 = v15;
  sub_2662AA89C();
  return (*(v7 + 8))(v13, a4);
}

uint64_t sub_2664557EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  swift_beginAccess();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = a1 + 32;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v10 = v6 + 40 * v5++;
    sub_2662A5550(v10, &v18);
    __swift_project_boxed_opaque_existential_1(&v18, v19);
    DynamicType = swift_getDynamicType();
    v12 = (*a2 + 32);
    v13 = *(*a2 + 16) + 1;
    while (--v13)
    {
      v14 = *v12;
      v12 += 2;
      if (v14 == DynamicType)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v18);
        goto LABEL_6;
      }
    }

    sub_2662A8618(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2662FD220(0, *(v7 + 16) + 1, 1);
      v7 = v20;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_2662FD220((v8 > 1), v9 + 1, 1);
      v7 = v20;
    }

    *(v7 + 16) = v9 + 1;
    sub_2662A8618(v17, v7 + 40 * v9 + 32);
LABEL_6:
    ;
  }

  while (v5 != v4);
  return v7;
}

uint64_t sub_266455964(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v165 = a6;
  v163 = a5;
  v161 = a4;
  v158 = a3;
  v157 = a2;
  v7 = sub_2664DFE38();
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7);
  v153 = v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = *(a1 + 16);
  if (!v155)
  {
    return result;
  }

  v13 = 0;
  v159 = 0;
  v156 = a1 + 32;
  v152 = (v10 + 16);
  v151 = (v10 + 8);
  *&v11 = 136446722;
  v150 = v11;
  v154 = v7;
LABEL_6:
  v160 = v13;
  sub_2662A5550(v156 + 40 * v13, &v181);
  __swift_project_boxed_opaque_existential_1(&v181, v182);
  swift_getDynamicType();
  v14 = (*(v183 + 16))();
  v15 = v182;
  v16 = v183;
  __swift_project_boxed_opaque_existential_1(&v181, v182);
  v17 = (*(v16 + 32))(v157, v158, v15, v16);

  v19 = sub_26639F100(v18);
  LOBYTE(v15) = sub_26639C5D0(v14, v19);

  v167 = v17;
  if (v15)
  {
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v21 = v153;
    (*v152)(v153, v20, v7);
    sub_2662A5550(&v181, &v177);

    v22 = sub_2664DFE18();
    v23 = sub_2664E06D8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      *&v171 = v166;
      *v24 = v150;
      __swift_project_boxed_opaque_existential_1(&v177, *(&v178 + 1));
      *&v174 = swift_getDynamicType();
      *(&v174 + 1) = v179;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A10, &qword_2664ED550);
      v25 = sub_2664E0318();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_1Tm(&v177);
      v28 = sub_2662A320C(v25, v27, &v171);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      v29 = sub_2664E0618();
      v31 = v30;

      v32 = v29;
      v17 = v167;
      v33 = sub_2662A320C(v32, v31, &v171);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2082;
      v34 = *(v17 + 16);
      if (v34)
      {
        v35 = sub_26640C820(*(v17 + 16), 0);
        v164 = sub_266410DDC(&v174, v35 + 4, v34, v17);
        v162 = v174;
        v149[1] = v175;

        sub_2662B793C();
        if (v164 != v34)
        {
          goto LABEL_115;
        }

        v17 = v167;
      }

      else
      {
        v35 = MEMORY[0x277D84F90];
      }

      v36 = MEMORY[0x2667834D0](v35, MEMORY[0x277D837D0]);
      v38 = v37;

      v39 = sub_2662A320C(v36, v38, &v171);

      *(v24 + 24) = v39;
      _os_log_impl(&dword_26629C000, v22, v23, "AppSelectionSignals#asRows expected signal: %{public}s columnKeys: %{public}s to be equal to candidate columns: %{public}s", v24, 0x20u);
      v40 = v166;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v24, -1, -1);

      (*v151)(v153, v7);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v177);
      (*v151)(v21, v7);
    }
  }

  if (!v165)
  {
    v68 = v161;
    v69 = *v161;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *v68;
    v168 = *v68;
    v72 = v17;
    v75 = *(v17 + 64);
    v74 = v17 + 64;
    v73 = v75;
    v76 = 1 << *(v72 + 32);
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    else
    {
      v77 = -1;
    }

    v78 = v77 & v73;
    v79 = (v76 + 63) >> 6;

    v80 = 0;
    if (!v78)
    {
      goto LABEL_43;
    }

LABEL_42:
    v83 = v80;
LABEL_51:
    v86 = __clz(__rbit64(v78));
    v78 &= v78 - 1;
    v87 = v86 | (v83 << 6);
    v88 = (*(v167 + 48) + 16 * v87);
    v90 = *v88;
    v89 = v88[1];
    sub_2662A01E8(*(v167 + 56) + 32 * v87, &v171);
    *&v174 = v90;
    *(&v174 + 1) = v89;
    sub_266318804(&v171, &v175);

    while (1)
    {
      v171 = v174;
      v172 = v175;
      v173 = v176;
      v91 = *(&v174 + 1);
      if (!*(&v174 + 1))
      {
        v178 = 0u;
        v179 = 0u;
        v177 = 0u;
LABEL_102:

        *v161 = v71;
        goto LABEL_5;
      }

      v92 = v171;
      sub_2662A01E8(&v172, &v178);
      *&v177 = v92;
      *(&v177 + 1) = v91;

      sub_2662A9238(&v171, &unk_280073B20, &qword_2664ED6A8);
      v93 = *(&v177 + 1);
      if (!*(&v177 + 1))
      {
        goto LABEL_102;
      }

      v94 = isUniquelyReferenced_nonNull_native;
      v95 = v177;
      sub_266318804(&v178, &v174);
      v96 = sub_2662A3E98(v95, v93);
      v98 = v71[2];
      v99 = (v97 & 1) == 0;
      v100 = __OFADD__(v98, v99);
      v101 = v98 + v99;
      if (v100)
      {
        goto LABEL_112;
      }

      v102 = v97;
      if (v71[3] < v101)
      {
        break;
      }

      if (v94)
      {
        goto LABEL_59;
      }

      v107 = v96;
      sub_266453AC4();
      v96 = v107;
      if (v102)
      {
LABEL_41:
        v71 = v168;
        v81 = 32 * v96;
        sub_2662A01E8(v168[7] + 32 * v96, &v171);
        __swift_destroy_boxed_opaque_existential_1Tm(&v174);

        v82 = v71[7];
        __swift_destroy_boxed_opaque_existential_1Tm((v82 + v81));
        sub_266318804(&v171, (v82 + v81));
        isUniquelyReferenced_nonNull_native = 1;
        if (v78)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      }

LABEL_60:
      v71 = v168;
      v168[(v96 >> 6) + 8] |= 1 << v96;
      v104 = (v71[6] + 16 * v96);
      *v104 = v95;
      v104[1] = v93;
      sub_266318804(&v174, (v71[7] + 32 * v96));
      v105 = v71[2];
      v100 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v100)
      {
        goto LABEL_114;
      }

      v71[2] = v106;
      isUniquelyReferenced_nonNull_native = 1;
      if (v78)
      {
        goto LABEL_42;
      }

LABEL_43:
      if (v79 <= v80 + 1)
      {
        v84 = v80 + 1;
      }

      else
      {
        v84 = v79;
      }

      v85 = v84 - 1;
      while (1)
      {
        v83 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          goto LABEL_105;
        }

        if (v83 >= v79)
        {
          break;
        }

        v78 = *(v74 + 8 * v83);
        ++v80;
        if (v78)
        {
          v80 = v83;
          goto LABEL_51;
        }
      }

      v78 = 0;
      v175 = 0u;
      v176 = 0u;
      v80 = v85;
      v174 = 0u;
    }

    sub_266450328(v101, v94 & 1);
    v96 = sub_2662A3E98(v95, v93);
    if ((v102 & 1) != (v103 & 1))
    {
      goto LABEL_116;
    }

LABEL_59:
    if (v102)
    {
      goto LABEL_41;
    }

    goto LABEL_60;
  }

  v41 = *(v17 + 16);
  if (v41)
  {
    v170 = MEMORY[0x277D84F90];
    sub_2662FD190(0, v41, 0);
    v42 = v170;
    v43 = ~(-1 << *(v17 + 32));
    v167 = v17 + 64;
    v44 = sub_2664E0A18();
    v45 = 0;
    v162 = v17 + 72;
    v164 = v41;
    do
    {
      if (v44 < 0 || v44 >= 1 << *(v17 + 32))
      {
        goto LABEL_106;
      }

      v48 = v44 >> 6;
      if ((*(v167 + 8 * (v44 >> 6)) & (1 << v44)) == 0)
      {
        goto LABEL_107;
      }

      v166 = *(v17 + 36);
      v49 = *(v17 + 56);
      v50 = (*(v17 + 48) + 16 * v44);
      v51 = v17;
      v52 = *v50;
      v53 = v50[1];
      sub_2662A01E8(v49 + 32 * v44, &v175);
      *&v171 = v52;
      *(&v171 + 1) = v53;
      sub_266318804(&v175, &v172);
      v168 = v163;
      v169 = v165;

      MEMORY[0x2667833B0](v52, v53);
      v54 = v168;
      v55 = v169;
      sub_2662A01E8(&v172, &v178);
      *&v177 = v54;
      *(&v177 + 1) = v55;
      sub_2662A9238(&v171, &unk_280073B20, &qword_2664ED6A8);
      v170 = v42;
      v57 = *(v42 + 16);
      v56 = *(v42 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_2662FD190((v56 > 1), v57 + 1, 1);
        v42 = v170;
      }

      *(v42 + 16) = v57 + 1;
      v58 = (v42 + 48 * v57);
      v59 = v177;
      v60 = v179;
      v58[3] = v178;
      v58[4] = v60;
      v58[2] = v59;
      v46 = 1 << *(v51 + 32);
      if (v44 >= v46)
      {
        goto LABEL_108;
      }

      v61 = *(v167 + 8 * v48);
      if ((v61 & (1 << v44)) == 0)
      {
        goto LABEL_109;
      }

      v17 = v51;
      if (v166 != *(v51 + 36))
      {
        goto LABEL_110;
      }

      v62 = v61 & (-2 << (v44 & 0x3F));
      if (v62)
      {
        v46 = __clz(__rbit64(v62)) | v44 & 0x7FFFFFFFFFFFFFC0;
        v47 = v164;
      }

      else
      {
        v63 = v48 << 6;
        v64 = v48 + 1;
        v65 = (v162 + 8 * v48);
        v47 = v164;
        while (v64 < (v46 + 63) >> 6)
        {
          v67 = *v65++;
          v66 = v67;
          v63 += 64;
          ++v64;
          if (v67)
          {
            sub_26634AE1C(v44, v166, 0);
            v46 = __clz(__rbit64(v66)) + v63;
            goto LABEL_21;
          }
        }

        sub_26634AE1C(v44, v166, 0);
      }

LABEL_21:
      ++v45;
      v44 = v46;
    }

    while (v45 != v47);

    if (*(v42 + 16))
    {
      goto LABEL_67;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_67:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D8, &unk_2664E52F8);
      v108 = sub_2664E0C98();
      goto LABEL_70;
    }
  }

  v108 = MEMORY[0x277D84F98];
LABEL_70:
  *&v177 = v108;

  v110 = v159;
  sub_2664550F0(v109, 1, &v177);
  v111 = &v180;
  v159 = v110;
  if (v110)
  {
    goto LABEL_117;
  }

  v112 = v177;
  v113 = v161;
  v114 = *v161;
  v115 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v113;
  v168 = *v113;
  v117 = v112 + 64;
  v118 = 1 << *(v112 + 32);
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  else
  {
    v119 = -1;
  }

  v120 = v119 & *(v112 + 64);
  v121 = (v118 + 63) >> 6;
  v167 = v112;

  v122 = 0;
  if (v120)
  {
    while (1)
    {
      v125 = v122;
LABEL_86:
      v128 = __clz(__rbit64(v120));
      v120 &= v120 - 1;
      v129 = v128 | (v125 << 6);
      v130 = (*(v167 + 48) + 16 * v129);
      v132 = *v130;
      v131 = v130[1];
      sub_2662A01E8(*(v167 + 56) + 32 * v129, &v171);
      *&v174 = v132;
      *(&v174 + 1) = v131;
      sub_266318804(&v171, &v175);

LABEL_87:
      v171 = v174;
      v172 = v175;
      v173 = v176;
      v133 = *(&v174 + 1);
      if (!*(&v174 + 1))
      {
        v178 = 0u;
        v179 = 0u;
        v177 = 0u;
LABEL_4:

        *v161 = v116;
LABEL_5:
        v13 = v160 + 1;
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v181);
        v7 = v154;
        if (v13 == v155)
        {
          return result;
        }

        goto LABEL_6;
      }

      v134 = v171;
      sub_2662A01E8(&v172, &v178);
      *&v177 = v134;
      *(&v177 + 1) = v133;

      sub_2662A9238(&v171, &unk_280073B20, &qword_2664ED6A8);
      v135 = *(&v177 + 1);
      if (!*(&v177 + 1))
      {
        goto LABEL_4;
      }

      v136 = v177;
      sub_266318804(&v178, &v174);
      v137 = sub_2662A3E98(v136, v135);
      v139 = v116[2];
      v140 = (v138 & 1) == 0;
      v100 = __OFADD__(v139, v140);
      v141 = v139 + v140;
      if (v100)
      {
        goto LABEL_111;
      }

      v142 = v138;
      if (v116[3] >= v141)
      {
        if (v115)
        {
          goto LABEL_94;
        }

        v147 = v137;
        sub_266453AC4();
        v137 = v147;
        if ((v142 & 1) == 0)
        {
          goto LABEL_95;
        }

LABEL_76:
        v116 = v168;
        v123 = 32 * v137;
        sub_2662A01E8(v168[7] + 32 * v137, &v171);
        __swift_destroy_boxed_opaque_existential_1Tm(&v174);

        v124 = v116[7];
        __swift_destroy_boxed_opaque_existential_1Tm((v124 + v123));
        sub_266318804(&v171, (v124 + v123));
        v115 = 1;
        if (!v120)
        {
          break;
        }
      }

      else
      {
        sub_266450328(v141, v115 & 1);
        v137 = sub_2662A3E98(v136, v135);
        if ((v142 & 1) != (v143 & 1))
        {
          goto LABEL_116;
        }

LABEL_94:
        if (v142)
        {
          goto LABEL_76;
        }

LABEL_95:
        v116 = v168;
        v168[(v137 >> 6) + 8] |= 1 << v137;
        v144 = (v116[6] + 16 * v137);
        *v144 = v136;
        v144[1] = v135;
        sub_266318804(&v174, (v116[7] + 32 * v137));
        v145 = v116[2];
        v100 = __OFADD__(v145, 1);
        v146 = v145 + 1;
        if (v100)
        {
          goto LABEL_113;
        }

        v116[2] = v146;
        v115 = 1;
        if (!v120)
        {
          break;
        }
      }
    }
  }

  if (v121 <= v122 + 1)
  {
    v126 = v122 + 1;
  }

  else
  {
    v126 = v121;
  }

  v127 = v126 - 1;
  while (1)
  {
    v125 = v122 + 1;
    if (__OFADD__(v122, 1))
    {
      break;
    }

    if (v125 >= v121)
    {
      v120 = 0;
      v175 = 0u;
      v176 = 0u;
      v122 = v127;
      v174 = 0u;
      goto LABEL_87;
    }

    v120 = *(v117 + 8 * v125);
    ++v122;
    if (v120)
    {
      v122 = v125;
      goto LABEL_86;
    }
  }

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
  sub_2664E0DD8();
  __break(1u);
LABEL_117:
  v148 = *(v111 - 32);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_2664568A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  i = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280F914E8 == -1)
  {
    goto LABEL_2;
  }

LABEL_19:
  swift_once();
LABEL_2:
  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(i, v11, v6);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "AppSelectionSignals#asRows building result row for candidates...", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v7 + 8))(i, v6);
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v7 = v16 & *(a2 + 56);
  v6 = (v15 + 63) >> 6;

  v17 = 0;
  for (i = MEMORY[0x277D84F90]; v7; i[v24 + 4] = v22)
  {
LABEL_11:
    v19 = (*(a2 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v7)))));
    v20 = *v19;
    v21 = v19[1];
    v28 = MEMORY[0x277D84F98];

    sub_266455964(a1, v20, v21, &v28, 0, 0);
    sub_266455964(v26, v20, v21, &v28, 0x5F31657370, 0xE500000000000000);
    sub_266455964(v27, v20, v21, &v28, 0x5F32657370, 0xE500000000000000);

    v22 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_266384E1C(0, i[2] + 1, 1, i);
    }

    v24 = i[2];
    v23 = i[3];
    if (v24 >= v23 >> 1)
    {
      i = sub_266384E1C((v23 > 1), v24 + 1, 1, i);
    }

    v7 &= v7 - 1;
    i[2] = v24 + 1;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v18 >= v6)
    {
      break;
    }

    v7 = *(a2 + 56 + 8 * v18);
    ++v17;
    if (v7)
    {
      v17 = v18;
      goto LABEL_11;
    }
  }

  return i;
}

uint64_t sub_266456C10(_OWORD *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_266455564(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t sub_266456CD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266456DBC(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_26644F2AC(a1, v1 + v4, *v5, *(v5 + 8), &type metadata for SiriSignalsDependentSignalBridge, &off_2877F2808, qword_280F912C0, &qword_280F91D18, &qword_280073A90, &qword_2664ED638, sub_26645A89C);
}

uint64_t objectdestroy_72Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_266456F50()
{
  result = qword_280F8F718;
  if (!qword_280F8F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F718);
  }

  return result;
}

uint64_t sub_266456FCC(uint64_t a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_2662C3928(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t objectdestroy_57Tm()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_266457114(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_26644F2AC(a1, v1 + v4, *v5, *(v5 + 8), &type metadata for SiriSignalsIndependentSignalBridge, &off_2877F27A0, &qword_280F912B8, &qword_280F91D10, &qword_280073AC8, &qword_2664ED658, sub_26645A85C);
}

uint64_t objectdestroy_60Tm()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_2664572F0(void *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  v9 = *(sub_2664DE438() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  sub_26644D7B4(a1, v4[2], v4[3], v4[4], v4[5], v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3, a4);
}

void sub_2664573B4(void *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_26644A7B0(a1, v5, v6, v7, (v1 + v4), v8);
}

uint64_t AppInstalledAs.hashValue.getter()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

unint64_t sub_266457530()
{
  result = qword_280073B70;
  if (!qword_280073B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073B70);
  }

  return result;
}

BOOL sub_266457594(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xEB000000006F6964;
    v9 = 0x6172706D61732D78;
    switch(*v4)
    {
      case 1:
        v9 = 0x6C70706D61732D78;
        v8 = 0xEE007473696C7961;
        break;
      case 2:
        v9 = 0xD000000000000016;
        v8 = 0x80000002664F1710;
        break;
      case 3:
        v9 = 0x656D706D61732D78;
        v8 = 0xED00006D65746964;
        break;
      case 4:
        v9 = 0xD000000000000014;
        v8 = 0x80000002664F1740;
        break;
      case 5:
        v9 = 0xD000000000000017;
        v8 = 0x80000002664F1760;
        break;
      case 6:
        v9 = 0xD000000000000018;
        v8 = 0x80000002664F1780;
        break;
      case 7:
        v9 = 0xD00000000000001FLL;
        v8 = 0x80000002664F17A0;
        break;
      case 8:
        v9 = 0xD000000000000017;
        v8 = 0x80000002664F17C0;
        break;
      case 9:
        v9 = 0xD000000000000016;
        v8 = 0x80000002664F17E0;
        break;
      case 0xA:
        v9 = 0x2D616964656D2D78;
        v8 = 0xEF7972617262696CLL;
        break;
      case 0xB:
        v9 = 0x6574616572632D78;
        v8 = 0xEF6E6F6974617473;
        break;
      case 0xC:
        v9 = 0xD000000000000011;
        v8 = 0x80000002664F1820;
        break;
      case 0xD:
        v9 = 0xD00000000000001ALL;
        v8 = 0x80000002664F1840;
        break;
      case 0xE:
        v9 = 0xD00000000000001ALL;
        v8 = 0x80000002664F1860;
        break;
      case 0xF:
        v8 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    v10 = 0x6172706D61732D78;
    v11 = 0xEB000000006F6964;
    switch(a1)
    {
      case 1:
        v11 = 0xEE007473696C7961;
        if (v9 == 0x6C70706D61732D78)
        {
          goto LABEL_50;
        }

        goto LABEL_2;
      case 2:
        v11 = 0x80000002664F1710;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 3:
        v11 = 0xED00006D65746964;
        if (v9 != 0x656D706D61732D78)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 4:
        v11 = 0x80000002664F1740;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 5:
        v11 = 0x80000002664F1760;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 6:
        v11 = 0x80000002664F1780;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 7:
        v11 = 0x80000002664F17A0;
        if (v9 != 0xD00000000000001FLL)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 8:
        v11 = 0x80000002664F17C0;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 9:
        v11 = 0x80000002664F17E0;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 10:
        v10 = 0x2D616964656D2D78;
        v11 = 0xEF7972617262696CLL;
        goto LABEL_49;
      case 11:
        v11 = 0xEF6E6F6974617473;
        if (v9 != 0x6574616572632D78)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 12:
        v11 = 0x80000002664F1820;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 13:
        v11 = 0x80000002664F1840;
        if (v9 != 0xD00000000000001ALL)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 14:
        v11 = 0x80000002664F1860;
        if (v9 != 0xD00000000000001ALL)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 15:
        v11 = 0xE700000000000000;
        if (v9 != 0x6E776F6E6B6E75)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      default:
LABEL_49:
        if (v9 != v10)
        {
          goto LABEL_2;
        }

LABEL_50:
        if (v8 != v11)
        {
LABEL_2:
          v5 = sub_2664E0D88();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL sub_266457A34(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_2664DEA78() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_26631E4BC();
  }

  while ((sub_2664E0298() & 1) == 0);
  return v4 != v5;
}

BOOL sub_266457B0C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = a1;
  do
  {
    v25 = v2;
    v6 = v2 - 1;
    if (!v2)
    {
      break;
    }

    v7 = *v3;
    if (v7 > 3)
    {
      if (*v3 > 5u)
      {
        if (v7 == 6)
        {
          v12 = 0x62696C656C6F6877;
          v13 = 0xEC00000079726172;
        }

        else
        {
          v13 = 0xE700000000000000;
          v12 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        if (v7 == 4)
        {
          v12 = 1684630645;
        }

        else
        {
          v12 = 0x6867696C746F7073;
        }

        if (v7 == 4)
        {
          v13 = 0xE400000000000000;
        }

        else
        {
          v13 = 0xE900000000000074;
        }
      }
    }

    else
    {
      if (v7 == 2)
      {
        v8 = 0x72657669746C756DLL;
      }

      else
      {
        v8 = 0x65726F7473;
      }

      if (v7 == 2)
      {
        v9 = 0xEA00000000006573;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      if (*v3)
      {
        v10 = 0x636E797369726973;
      }

      else
      {
        v10 = 0x656369766564;
      }

      if (*v3)
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (*v3 <= 1u)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if (*v3 <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }
    }

    v14 = 0x62696C656C6F6877;
    if (v4 != 6)
    {
      v14 = 0x6E776F6E6B6E75;
    }

    v15 = 0xEC00000079726172;
    if (v4 != 6)
    {
      v15 = 0xE700000000000000;
    }

    v16 = 0x6867696C746F7073;
    if (v4 == 4)
    {
      v16 = 1684630645;
    }

    v17 = 0xE900000000000074;
    if (v4 == 4)
    {
      v17 = 0xE400000000000000;
    }

    if (v4 <= 5)
    {
      v14 = v16;
      v15 = v17;
    }

    if (v4 == 2)
    {
      v18 = 0x72657669746C756DLL;
    }

    else
    {
      v18 = 0x65726F7473;
    }

    if (v4 == 2)
    {
      v19 = 0xEA00000000006573;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    if (v4)
    {
      v20 = 0x636E797369726973;
    }

    else
    {
      v20 = 0x656369766564;
    }

    if (v4)
    {
      v21 = 0xE800000000000000;
    }

    else
    {
      v21 = 0xE600000000000000;
    }

    if (v4 <= 1)
    {
      v18 = v20;
      v19 = v21;
    }

    if (v4 <= 3)
    {
      v22 = v18;
    }

    else
    {
      v22 = v14;
    }

    if (v4 <= 3)
    {
      v23 = v19;
    }

    else
    {
      v23 = v15;
    }

    if (v12 == v22 && v13 == v23)
    {

      return v25 != 0;
    }

    v5 = sub_2664E0D88();

    v2 = v6;
    ++v3;
  }

  while ((v5 & 1) == 0);
  return v25 != 0;
}

uint64_t sub_266457D7C(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 40);
    do
    {
      if (*v4)
      {
        if (a2)
        {
          return 1;
        }
      }

      else if ((a2 & 1) == 0 && *(v4 - 1) == a1)
      {
        return 1;
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return 0;
}

BOOL sub_266457DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v12 = *v3;
    v7 = PlaybackCode.rawValue.getter();
    v9 = v8;
    if (v7 == PlaybackCode.rawValue.getter() && v9 == v10)
    {

      return v5 != 0;
    }

    v4 = sub_2664E0D88();

    ++v3;
  }

  while ((v4 & 1) == 0);
  return v5 != 0;
}

uint64_t INIntent.targetBundleIdentifier(userPreferenceProvider:deviceProvider:featureFlagProvider:internalSearchResults:alwaysInferAppFromSearchResults:nowPlaying:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t (*a7)(uint64_t, unint64_t, uint64_t **), uint64_t a8)
{
  v48 = a7;
  v49 = a8;
  v47 = a5;
  v51 = a4;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s16SiriAudioSupport17BundleIdentifiersO05localD10Identifier3forSSSgSo8INIntentC_tFZ_0(v8);
  v16 = 0x80000002664F2F20;
  if (v15)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xD000000000000018;
  }

  v46 = v17;
  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0x80000002664F2F20;
  }

  v52 = v8;
  sub_26645A344();
  v50 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B88, &qword_2664ED798);
  if (swift_dynamicCast())
  {
    v19 = v9;
    v20 = *(&v56 + 1);
    v21 = v57;
    __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
    v22 = (*(v21 + 24))(v20, v21);
    if (v22 && (v23 = v22, v24 = [v22 proxiedThirdPartyAppInfo], v23, v24))
    {
      v25 = [v24 bundleIdentifier];

      if (v25)
      {
        v44 = sub_2664E02C8();
        v27 = v26;
      }

      else
      {
        v44 = 0;
        v27 = 0;
      }

      v9 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(&v55);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v55);
      v44 = 0;
      v27 = 0;
      v9 = v19;
    }
  }

  else
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    sub_2662A9238(&v55, &qword_280073B90, &qword_2664ED7A0);
    v44 = 0;
    v27 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v28, v9);

  v29 = sub_2664DFE18();
  v30 = sub_2664E06C8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v45 = v18;
    v32 = v31;
    v33 = swift_slowAlloc();
    v54 = v33;
    *v32 = 136315394;
    v42 = v9;
    v43 = 0x80000002664F2F20;
    v34 = v46;
    *(v32 + 4) = sub_2662A320C(v46, v45, &v54);
    *(v32 + 12) = 2080;
    v52 = v44;
    v53 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v35 = sub_2664E0938();
    v37 = sub_2662A320C(v35, v36, &v54);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_26629C000, v29, v30, "INIntent#targetBundleIdentifier initial launchId: %s, proxiedBundleId: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v33, -1, -1);
    v38 = v32;
    v18 = v45;
    MEMORY[0x266784AD0](v38, -1, -1);

    v16 = v43;
    (*(v10 + 8))(v13, v42);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
    v34 = v46;
  }

  if (v34 == 0xD000000000000018 && v18 == v16 || (sub_2664E0D88()) && !v27)
  {
    v39 = 0;
  }

  else
  {

    v39 = 2;
  }

  sub_2664594AC(v34, v18, v48, v49, v39, v47 & 1, v50, v51);
}

uint64_t sub_2664594AC(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t **), uint64_t a4, int a5, char a6, uint64_t a7, void *a8)
{
  v48 = a5;
  v49 = a4;
  v50 = a3;
  v12 = sub_2664DFE38();
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v47 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - v20;
  v22 = a1;
  v54[0] = a1;
  v54[1] = a2;
  v52 = v54;
  if ((sub_2662AA720(sub_2662AA7CC, v51, &unk_2877E48F0) & 1) == 0)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = v12;
    v34 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    v35 = v47;
    (*(v47 + 16))(v16, v34, v33);

    v36 = sub_2664DFE18();
    v37 = sub_2664E06C8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v53 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_2662A320C(v22, a2, &v53);
      _os_log_impl(&dword_26629C000, v36, v37, "INIntent#targetBundleIdentifier using provided: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266784AD0](v39, -1, -1);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    (*(v35 + 8))(v16, v33);
    goto LABEL_16;
  }

  if ((a6 & 1) == 0 && (a1 != 0xD000000000000018 || 0x80000002664F2F20 != a2) && (sub_2664E0D88() & 1) == 0)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v40 = v12;
    v41 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    v42 = v47;
    (*(v47 + 16))(v19, v41, v40);

    v43 = sub_2664DFE18();
    v44 = sub_2664E06C8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v53 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_2662A320C(v22, a2, &v53);
      _os_log_impl(&dword_26629C000, v43, v44, "INIntent#targetBundleIdentifier using provided (alwaysInferAppFromSearchResults is false): %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266784AD0](v46, -1, -1);
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    (*(v42 + 8))(v19, v40);
LABEL_16:
    LOBYTE(v53) = v48;
    return v50(v22, a2, &v53);
  }

  v55.value._rawValue = a8;
  v55.is_nil = 0;
  v24 = INIntent.firstPartyResultsBundleIdentifier(internalSearchResults:canUseClassical:)(v55, v23);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = v12;
  v26 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v27 = v47;
  (*(v47 + 16))(v21, v26, v25);

  v28 = sub_2664DFE18();
  v29 = sub_2664E06C8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v53 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_2662A320C(v24._countAndFlagsBits, v24._object, &v53);
    _os_log_impl(&dword_26629C000, v28, v29, "INIntent#targetBundleIdentifier using first party: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x266784AD0](v31, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  (*(v27 + 8))(v21, v25);
  LOBYTE(v53) = v48;
  v50(v24._countAndFlagsBits, v24._object, &v53);
}

uint64_t INIntent.targetBundleIdentifier(userPreferenceProvider:deviceProvider:featureFlagProvider:internalSearchResults:alwaysInferAppFromSearchResults:nowPlaying:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = v7;
  *(v8 + 33) = a6;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 40) = a1;
  return MEMORY[0x2822009F8](sub_266459AE4, 0, 0);
}

uint64_t sub_266459AE4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 33);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = *(v0 + 48);
  *(v6 + 16) = v1;
  *(v6 + 24) = v7;
  *(v6 + 40) = v5;
  *(v6 + 48) = v4;
  *(v6 + 56) = v3;
  *(v6 + 64) = v2;
  v8 = *(MEMORY[0x277D859E0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B98, &qword_2664ED7B0);
  *v9 = v0;
  v9[1] = sub_266459C18;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000093, 0x80000002664F8F70, sub_26645A390, v6, v10);
}

uint64_t sub_266459C18()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_266459D30, 0, 0);
}

uint64_t sub_266459D30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  **(v0 + 40) = *(v0 + 32);
  return (*(v0 + 8))(v1, v2);
}

uint64_t sub_266459D54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  v55 = a7;
  v56 = a6;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BA0, &qword_2664ED7B8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - v17;
  (*(v15 + 16))(&v50 - v17, a1, v14);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  (*(v15 + 32))(v20 + v19, v18, v14);
  v21 = _s16SiriAudioSupport17BundleIdentifiersO05localD10Identifier3forSSSgSo8INIntentC_tFZ_0(a2);
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xD000000000000018;
  }

  v53 = 0x80000002664F2F20;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0x80000002664F2F20;
  }

  v57 = a2;
  sub_26645A344();
  v54 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B88, &qword_2664ED798);
  if (!swift_dynamicCast())
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    sub_2662A9238(&v60, &qword_280073B90, &qword_2664ED7A0);
LABEL_14:
    v31 = 0;
    v29 = 0;
    goto LABEL_18;
  }

  v25 = *(&v61 + 1);
  v26 = v62;
  __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
  v27 = (*(v26 + 24))(v25, v26);
  if (!v27)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v60);
    goto LABEL_14;
  }

  v28 = v27;
  v29 = [v27 proxiedThirdPartyAppInfo];

  if (v29)
  {
    v30 = [v29 bundleIdentifier];

    if (v30)
    {
      v31 = sub_2664E02C8();
      v29 = v32;
    }

    else
    {
      v31 = 0;
      v29 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v60);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v60);
    v31 = 0;
  }

LABEL_18:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v33, v9);

  v34 = sub_2664DFE18();
  v35 = v9;
  v36 = sub_2664E06C8();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v52 = v20;
    v38 = v37;
    v39 = swift_slowAlloc();
    v51 = v35;
    v40 = v31;
    v41 = v39;
    v59 = v39;
    *v38 = 136315394;
    *(v38 + 4) = sub_2662A320C(v23, v24, &v59);
    *(v38 + 12) = 2080;
    v57 = v40;
    v58 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v42 = sub_2664E0938();
    v44 = sub_2662A320C(v42, v43, &v59);
    v50 = v13;
    v45 = v23;
    v46 = v44;

    *(v38 + 14) = v46;
    v23 = v45;
    _os_log_impl(&dword_26629C000, v34, v36, "INIntent#targetBundleIdentifier initial launchId: %s, proxiedBundleId: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v41, -1, -1);
    v47 = v38;
    v20 = v52;
    MEMORY[0x266784AD0](v47, -1, -1);

    (*(v10 + 8))(v50, v51);
  }

  else
  {

    (*(v10 + 8))(v13, v35);
  }

  if (v23 == 0xD000000000000018 && v24 == v53 || (sub_2664E0D88()) && !v29)
  {
    v48 = 0;
  }

  else
  {

    v48 = 2;
  }

  sub_2664594AC(v23, v24, sub_26645A3A8, v20, v48, v55 & 1, v54, v56);
}

uint64_t sub_26645A2E8(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BA0, &qword_2664ED7B8);
  return sub_2664E0588();
}

unint64_t sub_26645A344()
{
  result = qword_280F8F560;
  if (!qword_280F8F560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F8F560);
  }

  return result;
}

uint64_t sub_26645A3A8(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BA0, &qword_2664ED7B8) - 8) + 80);

  return sub_26645A2E8(a1, a2, a3);
}

uint64_t sub_26645A444()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1 + 100);
  return sub_2664E0EB8();
}

uint64_t sub_26645A4BC()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1 + 100);
  return sub_2664E0EB8();
}

uint64_t sub_26645A500@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26645A650(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_26645A53C()
{
  result = sub_26638604C(&unk_2877E4980);
  qword_28007CD08 = result;
  return result;
}

SiriAudioSupport::DisambiguateItemsReason_optional __swiftcall DisambiguateItemsReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_26645A57C()
{
  result = qword_280073BA8;
  if (!qword_280073BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073BA8);
  }

  return result;
}

unint64_t sub_26645A5FC()
{
  result = qword_280073BB0;
  if (!qword_280073BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073BB0);
  }

  return result;
}

uint64_t sub_26645A650(uint64_t a1)
{
  if ((a1 - 100) >= 5)
  {
    return 5;
  }

  else
  {
    return a1 - 100;
  }
}

uint64_t sub_26645A66C@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      v8 = MEMORY[0x277D5EE18];
      goto LABEL_13;
    case 2:
      v8 = MEMORY[0x277D5ED98];
      goto LABEL_13;
    case 3:
      v8 = MEMORY[0x277D5ED90];
      goto LABEL_13;
    case 4:
      v8 = MEMORY[0x277D5EDF0];
      goto LABEL_13;
    case 5:
    case 6:
      v8 = MEMORY[0x277D5EE08];
      goto LABEL_13;
    case 7:
      v8 = MEMORY[0x277D5ED58];
      goto LABEL_13;
    case 8:
      v8 = MEMORY[0x277D5EDC0];
      goto LABEL_13;
    case 9:
      v8 = MEMORY[0x277D5EDA0];
      goto LABEL_13;
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xE:
    case 0xF:
      v3 = sub_2664DF248();
      v4 = *(*(v3 - 8) + 56);
      v5 = v3;
      v6 = a1;
      v7 = 1;
      goto LABEL_14;
    case 0xD:
      v8 = MEMORY[0x277D5ED28];
      goto LABEL_13;
    default:
      v8 = MEMORY[0x277D5ED48];
LABEL_13:
      v9 = *v8;
      v10 = sub_2664DF248();
      v12 = *(v10 - 8);
      (*(v12 + 104))(a1, v9, v10);
      v4 = *(v12 + 56);
      v6 = a1;
      v7 = 0;
      v5 = v10;
LABEL_14:

      return v4(v6, v7, 1, v5);
  }
}

uint64_t sub_26645A8F4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

uint64_t FlowClientEventSender.__allocating_init(sirikitEventSender:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_2662D31E4(a1, v2 + 16);
  return v2;
}

uint64_t sub_26645A9C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_2664DE8D8();

  v6 = a3;
  sub_2664DE8B8();
  v7 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  sub_2664DE7E8();
}

uint64_t FlowClientEventSender.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_26645AADC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *v3;
  sub_2664DE8D8();

  v6 = a3;
  sub_2664DE8B8();
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  sub_2664DE7E8();
}

uint64_t sub_26645AC1C(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = a4;
  v11 = sub_2664DFE08();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = &v48 - v14;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2[1];
  v55 = *a2;
  v56 = v20;
  v57[0] = a2[2];
  *(v57 + 15) = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  (*(v16 + 16))(v19, v21, v15);
  v22 = sub_2664DFE18();
  v23 = sub_2664E06C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v48 = v6;
    v25 = v12;
    v26 = a5;
    v27 = a1;
    v28 = a3;
    v29 = v24;
    *v24 = 0;
    _os_log_impl(&dword_26629C000, v22, v23, "RemoteRadioPlaybackHandler#preLoadQueue Radio playback", v24, 2u);
    v30 = v29;
    a3 = v28;
    a1 = v27;
    a5 = v26;
    v12 = v25;
    v6 = v48;
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  (*(v16 + 8))(v19, v15);
  v31 = __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  v32 = swift_allocObject();
  v33 = v56;
  *(v32 + 40) = v55;
  *(v32 + 16) = v49;
  *(v32 + 24) = a5;
  *(v32 + 32) = a1;
  *(v32 + 56) = v33;
  *(v32 + 72) = v57[0];
  *(v32 + 87) = *(v57 + 15);
  *(v32 + 91) = 0;
  *(v32 + 96) = v6;
  *(v32 + 104) = a3;
  v49 = *v31;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26645DF88;
  *(v34 + 24) = v32;

  sub_2662D2A64(&v55, v54);
  v35 = qword_280F91508;

  v36 = a3;

  if (v35 != -1)
  {
    swift_once();
  }

  v37 = qword_280F91D48;
  v38 = v50;
  sub_2664DFDE8();
  v39 = v51;
  v40 = v52;
  v41 = v53;
  (*(v52 + 16))(v51, v38, v53);
  v42 = (*(v40 + 80) + 33) & ~*(v40 + 80);
  v43 = (v12 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = "mediaPlaybackProviderRadioAvailability";
  *(v44 + 24) = 38;
  *(v44 + 32) = 2;
  (*(v40 + 32))(v44 + v42, v39, v41);
  v45 = (v44 + v43);
  *v45 = sub_26645DFDC;
  v45[1] = v34;

  sub_2664E0848();
  sub_2664DFDC8();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_2662C0D38;
  *(v46 + 24) = v44;

  sub_26648D7B8(sub_2662C0DE0, v46, 0, v49);

  return (*(v40 + 8))(v38, v41);
}

void sub_26645B178(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, void *a8)
{
  v108 = a8;
  v106 = a7;
  v110 = a6;
  v107 = a5;
  v109 = a4;
  v111 = a2;
  v112 = a3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v104[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v104[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v104[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v104[-v22];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v104[-v25];
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v104[-v28];
  MEMORY[0x28223BE20](v27);
  v31 = &v104[-v30];
  switch(a1)
  {
    case 0:
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v55 = __swift_project_value_buffer(v9, qword_280F914F0);
      swift_beginAccess();
      v56 = v10[2];
      v56(v26, v55, v9);
      v57 = sub_2664DFE18();
      v58 = sub_2664E06D8();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_26629C000, v57, v58, "RemoteRadioPlaybackHandler#preLoadQueue Radio unavailable", v59, 2u);
        MEMORY[0x266784AD0](v59, -1, -1);
      }

      v60 = v10[1];
      v60(v26, v9);
      v38 = 0x80000002664F90F0;
      v56(v23, v55, v9);
      v61 = sub_2664DFE18();
      v62 = sub_2664E06B8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *&v113 = v64;
        *v63 = 134218498;
        *(v63 + 4) = 6;
        *(v63 + 12) = 2048;
        *(v63 + 14) = 28;
        *(v63 + 22) = 2080;
        *(v63 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F90F0, &v113);
        _os_log_impl(&dword_26629C000, v61, v62, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v63, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        MEMORY[0x266784AD0](v64, -1, -1);
        v65 = v63;
        v38 = 0x80000002664F90F0;
        MEMORY[0x266784AD0](v65, -1, -1);
      }

      v60(v23, v9);
      v44 = xmmword_2664EDB10;
      goto LABEL_25;
    case 2:
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v45 = __swift_project_value_buffer(v9, qword_280F914F0);
      swift_beginAccess();
      v46 = v10[2];
      v46(v20, v45, v9);
      v47 = sub_2664DFE18();
      v48 = sub_2664E06D8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_26629C000, v47, v48, "RemoteRadioPlaybackHandler#preLoadQueue Companion Unavailable", v49, 2u);
        MEMORY[0x266784AD0](v49, -1, -1);
      }

      v50 = v10[1];
      v50(v20, v9);
      v46(v17, v45, v9);
      v51 = sub_2664DFE18();
      v52 = sub_2664E06B8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v113 = v54;
        *v53 = 134218498;
        *(v53 + 4) = 6;
        *(v53 + 12) = 2048;
        *(v53 + 14) = 27;
        *(v53 + 22) = 2080;
        *(v53 + 24) = sub_2662A320C(0xD000000000000014, 0x80000002664F90D0, &v113);
        _os_log_impl(&dword_26629C000, v51, v52, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v53, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x266784AD0](v54, -1, -1);
        MEMORY[0x266784AD0](v53, -1, -1);
      }

      v50(v17, v9);
      v113 = xmmword_2664EDB00;
      v114 = 0x80000002664F90D0;
      goto LABEL_26;
    case 1:
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v32 = __swift_project_value_buffer(v9, qword_280F914F0);
      swift_beginAccess();
      v33 = v10[2];
      v33(v31, v32, v9);
      v34 = sub_2664DFE18();
      v35 = sub_2664E06D8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_26629C000, v34, v35, "RemoteRadioPlaybackHandler#preLoadQueue Network unavailable", v36, 2u);
        MEMORY[0x266784AD0](v36, -1, -1);
      }

      v37 = v10[1];
      v37(v31, v9);
      v38 = 0x80000002664F9110;
      v33(v29, v32, v9);
      v39 = sub_2664DFE18();
      v40 = sub_2664E06B8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *&v113 = v42;
        *v41 = 134218498;
        *(v41 + 4) = 6;
        *(v41 + 12) = 2048;
        *(v41 + 14) = 26;
        *(v41 + 22) = 2080;
        *(v41 + 24) = sub_2662A320C(0xD000000000000012, 0x80000002664F9110, &v113);
        _os_log_impl(&dword_26629C000, v39, v40, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v41, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x266784AD0](v42, -1, -1);
        v43 = v41;
        v38 = 0x80000002664F9110;
        MEMORY[0x266784AD0](v43, -1, -1);
      }

      v37(v29, v9);
      v44 = xmmword_2664EDB20;
LABEL_25:
      v113 = v44;
      v114 = v38;
LABEL_26:
      v115 = 1;
      v111(&v113);
      sub_2662D2F30(v113, *(&v113 + 1), v114, v115);
      return;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v66 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (v10[2])(v14, v66, v9);
  v67 = sub_2664DFE18();
  v68 = sub_2664E06C8();
  v69 = os_log_type_enabled(v67, v68);
  v70 = v109;
  v71 = v107;
  if (v69)
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_26629C000, v67, v68, "RemoteRadioPlaybackHandler#preLoadQueue Setting radio station queue", v72, 2u);
    MEMORY[0x266784AD0](v72, -1, -1);
  }

  (v10[1])(v14, v9);
  v73 = v70[7];
  v74 = v70[8];
  v75 = objc_allocWithZone(MEMORY[0x277D27870]);
  v76 = sub_2664E02A8();
  v77 = [v75 initWithContextID:0 stationStringID:v76];

  v78 = *(v71 + 1);
  v79 = v77;
  [v79 setShouldOverrideManuallyCuratedQueue_];
  if (v70[11])
  {
    v80 = v70[10];
    v81 = sub_2664E02A8();
  }

  else
  {
    v81 = 0;
  }

  [v79 setSiriRecommendationID_];

  swift_beginAccess();
  if (v70[3])
  {
    v82 = v70[2];
    v83 = v70[3];

    v84 = sub_2664E02A8();
  }

  else
  {
    v84 = 0;
  }

  [v79 setSiriAssetInfo_];

  v85 = sub_2664E01A8();
  [v79 setSiriWHAMetricsInfo_];

  v86 = [objc_opt_self() systemMediaApplicationDestination];
  if (*(v71 + 40) && !*(*(v71 + 24) + 16))
  {
    v96 = swift_allocObject();
    v97 = *(v71 + 16);
    *(v96 + 24) = *v71;
    *(v96 + 16) = v106;
    *(v96 + 40) = v97;
    *(v96 + 56) = *(v71 + 32);
    *(v96 + 71) = *(v71 + 47);
    v98 = v108;
    *(v96 + 80) = v79;
    *(v96 + 88) = v98;
    v99 = v111;
    v100 = v112;
    *(v96 + 96) = v70;
    *(v96 + 104) = v99;
    *(v96 + 112) = v100;
    v120 = sub_26645E01C;
    v121 = v96;
    aBlock = MEMORY[0x277D85DD0];
    v117 = 1107296256;
    v118 = sub_2663A0C48;
    v119 = &block_descriptor_33_0;
    v101 = _Block_copy(&aBlock);
    v102 = v79;

    sub_2662D2A64(v71, &v113);
    v103 = v98;

    [v86 resolveWithQueue:v102 routeIdentifiers:0 localPlaybackPermitted:a1 == 4 audioRoutingInfo:v110 & 0x1010101 completion:v101];
    _Block_release(v101);
  }

  else
  {
    v105 = a1 == 4;
    v87 = sub_2664E0488();
    v88 = swift_allocObject();
    *(v88 + 16) = v106;
    *(v88 + 24) = v79;
    v89 = *(v71 + 16);
    *(v88 + 32) = *v71;
    *(v88 + 48) = v89;
    *(v88 + 64) = *(v71 + 32);
    *(v88 + 79) = *(v71 + 47);
    v90 = v108;
    *(v88 + 88) = v108;
    *(v88 + 96) = v70;
    v91 = v112;
    *(v88 + 104) = v111;
    *(v88 + 112) = v91;
    v120 = sub_26645E008;
    v121 = v88;
    aBlock = MEMORY[0x277D85DD0];
    v117 = 1107296256;
    v118 = sub_2663A0C48;
    v119 = &block_descriptor_44;
    v92 = v71;
    v93 = _Block_copy(&aBlock);
    v94 = v79;

    sub_2662D2A64(v92, &v113);
    v95 = v90;

    [v86 resolveWithQueue:v94 hashedRouteIdentifiers:v87 localPlaybackPermitted:v105 audioRoutingInfo:v110 & 0x1010101 completion:v93];
    _Block_release(v93);
  }
}

uint64_t sub_26645BEF0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void (*a7)(__int128 *), uint64_t a8)
{
  v96 = a8;
  v95 = a7;
  v91 = a5;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v85 = &v82[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v86 = &v82[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v84 = &v82[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v87 = &v82[-v23];
  MEMORY[0x28223BE20](v22);
  v25 = &v82[-v24];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v90 = a4;
  v26 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v27 = v14[2];
  v94 = v26;
  v93 = v14 + 2;
  v92 = v27;
  v27(v25, v26, v13);
  v28 = sub_2664DFE18();
  v29 = sub_2664E06C8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v14;
    v31 = a1;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_26629C000, v28, v29, "RemoteRadioPlaybackHandler#preLoadQueue [SE Route Logic] Attempting to play radio station queue", v32, 2u);
    v33 = v32;
    a1 = v31;
    v14 = v30;
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  v36 = v14[1];
  v34 = v14 + 1;
  v35 = v36;
  v36(v25, v13);
  v37 = v13;
  v38 = sub_2664AD590(a1, *(a3 + 32), *(a3 + 40));
  v39 = __swift_project_boxed_opaque_existential_1((a2 + 104), *(a2 + 128));
  v83 = *(a3 + 50);
  *&v40 = *(a3 + 8);
  v89 = v40;
  v41 = *(a3 + 16);
  v42 = *(a6 + 104);
  *&v40 = *(a6 + 96);
  v88 = v40;
  v103[3] = &type metadata for PlaybackAttributes;
  v103[4] = &off_2877E7D78;
  v43 = swift_allocObject();
  v103[0] = v43;
  v44 = *(a3 + 16);
  *(v43 + 16) = *a3;
  *(v43 + 32) = v44;
  *(v43 + 48) = *(a3 + 32);
  *(v43 + 63) = *(a3 + 47);
  sub_26637C7BC(v39, &v98);
  sub_2662A5550(v103, v97);
  v45 = swift_allocObject();
  v46 = v101;
  *(v45 + 48) = v100;
  *(v45 + 64) = v46;
  v47 = v99;
  *(v45 + 16) = v98;
  *(v45 + 32) = v47;
  *&v46 = v89;
  *(&v46 + 1) = v41;
  *&v48 = v88;
  *(&v48 + 1) = v42;
  v49 = v102;
  *(v45 + 96) = v46;
  *(v45 + 112) = v48;
  *(v45 + 80) = v49;
  v50 = v96;
  *(v45 + 128) = v95;
  *(v45 + 136) = v50;
  sub_2662A8618(v97, v45 + 144);
  v51 = v90;
  v52 = v91;
  *(v45 + 184) = v90;
  *(v45 + 192) = v52;
  *(v45 + 200) = 0;
  if (!v38)
  {
    v92(v87, v94, v37);
    sub_2662D2A64(a3, &v98);

    v60 = v51;
    v61 = v52;

    v62 = sub_2664DFE18();
    v63 = sub_2664E06D8();
    v64 = v37;
    if (os_log_type_enabled(v62, v63))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_26629C000, v62, v63, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v65, 2u);
      MEMORY[0x266784AD0](v65, -1, -1);
    }

    v35(v87, v64);
    v66 = v85;
    v92(v85, v94, v64);
    v67 = sub_2664DFE18();
    v68 = sub_2664E06B8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v98 = v70;
      *v69 = 134218498;
      *(v69 + 4) = 15;
      *(v69 + 12) = 2048;
      *(v69 + 14) = 13;
      *(v69 + 22) = 2080;
      *(v69 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v98);
      _os_log_impl(&dword_26629C000, v67, v68, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v69, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x266784AD0](v70, -1, -1);
      MEMORY[0x266784AD0](v69, -1, -1);
    }

    v35(v66, v64);
    v98 = xmmword_2664E8DA0;
    *&v99 = 0xE900000000000074;
    BYTE8(v99) = 1;
    v95(&v98);
    goto LABEL_19;
  }

  *&v89 = v34;
  v53 = v37;
  sub_2662D2A64(a3, &v98);

  v54 = v51;
  v55 = v52;

  [v38 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2663CB9A0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v71 = v84;
    v92(v84, v94, v37);
    v72 = sub_2664DFE18();
    v73 = sub_2664E06D8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_26629C000, v72, v73, "Guaranteed cast to mutable RemoteControlDestination failed", v74, 2u);
      MEMORY[0x266784AD0](v74, -1, -1);
    }

    v35(v71, v53);
    v75 = v86;
    v92(v86, v94, v53);
    v76 = sub_2664DFE18();
    v77 = sub_2664E06B8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v98 = v79;
      *v78 = 134218498;
      *(v78 + 4) = 15;
      *(v78 + 12) = 2048;
      *(v78 + 14) = 22;
      *(v78 + 22) = 2080;
      *(v78 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v98);
      _os_log_impl(&dword_26629C000, v76, v77, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v78, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      MEMORY[0x266784AD0](v79, -1, -1);
      MEMORY[0x266784AD0](v78, -1, -1);

      v80 = v86;
    }

    else
    {

      v80 = v75;
    }

    v35(v80, v53);
    v98 = xmmword_2664E8D90;
    *&v99 = 0x80000002664F5AE0;
    BYTE8(v99) = 1;
    v95(&v98);

LABEL_19:

    sub_2662D2F30(v98, *(&v98 + 1), v99, SBYTE8(v99));
    return __swift_destroy_boxed_opaque_existential_1Tm(v103);
  }

  v56 = v97[0];
  [v97[0] setSingleGroup_];
  v57 = v54;
  v58 = v38;

  v59 = v56;
  sub_2664ADBE8(v58, v55, v58, v57, sub_26637C818, v45, v59, v83);

  return __swift_destroy_boxed_opaque_existential_1Tm(v103);
}

uint64_t sub_26645C8C8(void *a1, void (*a2)(void, void), void *a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(__int128 *), uint64_t a8)
{
  v90 = a8;
  v94 = a7;
  v89 = a5;
  v88 = a3;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v83 = &v79[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v82 = &v79[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v81 = &v79[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v85 = &v79[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v79[-v23];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v26 = v13[2];
  v93 = v25;
  v92 = v26;
  v26(v24, v25, v12);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06C8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v91 = a2;
    v30 = v12;
    v31 = a1;
    v32 = v13;
    v33 = v29;
    *v29 = 0;
    _os_log_impl(&dword_26629C000, v27, v28, "RemoteRadioPlaybackHandler#preLoadQueue Attempting to play radio station queue", v29, 2u);
    v34 = v33;
    v13 = v32;
    a1 = v31;
    v12 = v30;
    a2 = v91;
    MEMORY[0x266784AD0](v34, -1, -1);
  }

  v35 = v13[1];
  v84 = v13 + 1;
  v91 = v35;
  v35(v24, v12);
  v36 = __swift_project_boxed_opaque_existential_1(a2 + 13, *(a2 + 16));
  v80 = *(a4 + 50);
  *&v37 = *(a4 + 8);
  v87 = v37;
  v38 = *(a4 + 16);
  v39 = *(a6 + 104);
  *&v37 = *(a6 + 96);
  v86 = v37;
  v101[3] = &type metadata for PlaybackAttributes;
  v101[4] = &off_2877E7D78;
  v40 = swift_allocObject();
  v101[0] = v40;
  v41 = *(a4 + 16);
  *(v40 + 16) = *a4;
  *(v40 + 32) = v41;
  *(v40 + 48) = *(a4 + 32);
  *(v40 + 63) = *(a4 + 47);
  sub_26637C7BC(v36, &v96);
  sub_2662A5550(v101, v95);
  v42 = swift_allocObject();
  v43 = v99;
  *(v42 + 48) = v98;
  *(v42 + 64) = v43;
  v44 = v97;
  *(v42 + 16) = v96;
  *(v42 + 32) = v44;
  *&v43 = v87;
  *(&v43 + 1) = v38;
  *&v45 = v86;
  *(&v45 + 1) = v39;
  v46 = v100;
  *(v42 + 96) = v43;
  *(v42 + 112) = v45;
  *(v42 + 80) = v46;
  v47 = v90;
  *(v42 + 128) = v94;
  *(v42 + 136) = v47;
  sub_2662A8618(v95, v42 + 144);
  v48 = v88;
  v49 = v89;
  *(v42 + 184) = v88;
  *(v42 + 192) = v49;
  *(v42 + 200) = 0;
  if (!a1)
  {
    v92(v85, v93, v12);
    sub_2662D2A64(a4, &v96);

    v57 = v48;
    v58 = v49;

    v59 = sub_2664DFE18();
    v60 = sub_2664E06D8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_26629C000, v59, v60, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v61, 2u);
      MEMORY[0x266784AD0](v61, -1, -1);
    }

    v91(v85, v12);
    v62 = v83;
    v92(v83, v93, v12);
    v63 = sub_2664DFE18();
    v64 = sub_2664E06B8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v96 = v66;
      *v65 = 134218498;
      *(v65 + 4) = 15;
      *(v65 + 12) = 2048;
      *(v65 + 14) = 13;
      *(v65 + 22) = 2080;
      *(v65 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v96);
      _os_log_impl(&dword_26629C000, v63, v64, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v65, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x266784AD0](v66, -1, -1);
      MEMORY[0x266784AD0](v65, -1, -1);
    }

    v91(v62, v12);
    v96 = xmmword_2664E8DA0;
    *&v97 = 0xE900000000000074;
    BYTE8(v97) = 1;
    v94(&v96);
    goto LABEL_19;
  }

  sub_2662D2A64(a4, &v96);

  v50 = v48;
  v51 = v49;
  v52 = a1;

  [v52 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2663CB9A0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v67 = v81;
    v92(v81, v93, v12);
    v68 = sub_2664DFE18();
    v69 = sub_2664E06D8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_26629C000, v68, v69, "Guaranteed cast to mutable RemoteControlDestination failed", v70, 2u);
      MEMORY[0x266784AD0](v70, -1, -1);
    }

    v91(v67, v12);
    v71 = v82;
    v92(v82, v93, v12);
    v72 = sub_2664DFE18();
    v73 = sub_2664E06B8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = v71;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v96 = v76;
      *v75 = 134218498;
      *(v75 + 4) = 15;
      *(v75 + 12) = 2048;
      *(v75 + 14) = 22;
      *(v75 + 22) = 2080;
      *(v75 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v96);
      _os_log_impl(&dword_26629C000, v72, v73, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v75, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x266784AD0](v76, -1, -1);
      MEMORY[0x266784AD0](v75, -1, -1);

      v77 = v74;
    }

    else
    {

      v77 = v71;
    }

    v91(v77, v12);
    v96 = xmmword_2664E8D90;
    *&v97 = 0x80000002664F5AE0;
    BYTE8(v97) = 1;
    v94(&v96);

LABEL_19:

    sub_2662D2F30(v96, *(&v96 + 1), v97, SBYTE8(v97));
    return __swift_destroy_boxed_opaque_existential_1Tm(v101);
  }

  v53 = v95[0];
  [v95[0] setSingleGroup_];
  v54 = v50;
  v55 = v52;

  v56 = v53;
  sub_2664ADBE8(v55, v51, v55, v54, sub_26637F70C, v42, v56, v80);

  return __swift_destroy_boxed_opaque_existential_1Tm(v101);
}

id sub_26645D2A8(void *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);

  v8 = sub_2664DFE18();
  v9 = sub_2664E06D8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_2662A320C(a1[7], a1[8], v23);
    _os_log_impl(&dword_26629C000, v8, v9, "RemoteRadioPlaybackHandler#getPlaybackQueueForAddToUpNext returning radioplaybackQueue for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266784AD0](v11, -1, -1);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v12 = a1[7];
  v13 = a1[8];
  v14 = objc_allocWithZone(MEMORY[0x277D27870]);
  v15 = sub_2664E02A8();
  v16 = [v14 initWithContextID:0 stationStringID:v15];

  swift_beginAccess();
  if (a1[3])
  {
    v17 = a1[2];
    v18 = v16;

    v19 = sub_2664E02A8();
  }

  else
  {
    v20 = v16;
    v19 = 0;
  }

  [v16 setSiriAssetInfo_];

  v21 = [v16 createRemotePlaybackQueue];
  return v21;
}

uint64_t sub_26645D578(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v9 = a1[3];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = a3[3];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = a4[3];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_26645D818(*v13, a2, v19, v25, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v27;
}

uint64_t sub_26645D818(uint64_t a1, uint64_t *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v76 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v100[3] = v10;
  v100[4] = &off_2877F3740;
  v100[0] = a1;
  v99[3] = &type metadata for PlaybackStarter;
  v99[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v99[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v98[3] = &type metadata for PlaybackQueueLocationProvider;
  v98[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v98[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v100, v96);
  sub_2662A5550(a2, v95);
  sub_2662A5550(v99, v93);
  sub_2662A5550(v98, v91);
  v17 = v97;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = v94;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = v92;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v21;
  v90[3] = v10;
  v90[4] = &off_2877F3740;
  v90[0] = v35;
  v89[3] = &type metadata for PlaybackStarter;
  v89[4] = &off_2877EE098;
  v36 = swift_allocObject();
  v89[0] = v36;
  v37 = v27[3];
  v36[3] = v27[2];
  v36[4] = v37;
  v36[5] = v27[4];
  v38 = v27[1];
  v36[1] = *v27;
  v36[2] = v38;
  v87 = &type metadata for PlaybackQueueLocationProvider;
  v88 = &off_2877E8100;
  v39 = swift_allocObject();
  *&v86 = v39;
  v40 = v33[3];
  v39[3] = v33[2];
  v39[4] = v40;
  v39[5] = v33[4];
  v41 = v33[1];
  v39[1] = *v33;
  v39[2] = v41;
  sub_2662A5550(v90, a5 + 16);
  sub_2662A5550(v95, a5 + 56);
  sub_2662A5550(v89, a5 + 104);
  sub_2662A5550(v90, v84);
  sub_2662A5550(v95, v83);
  sub_2662A5550(v89, v81);
  v42 = v85;
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  v44 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = (&v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = v82;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = (&v75 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52);
  v54 = *v46;
  v80[3] = v10;
  v80[4] = &off_2877F3740;
  v79 = &off_2877EE098;
  v80[0] = v54;
  v78 = &type metadata for PlaybackStarter;
  v55 = swift_allocObject();
  v77[0] = v55;
  v56 = v52[3];
  v55[3] = v52[2];
  v55[4] = v56;
  v55[5] = v52[4];
  v57 = v52[1];
  v55[1] = *v52;
  v55[2] = v57;
  type metadata accessor for LocalPlaybackHelper();
  v58 = swift_allocObject();
  v59 = __swift_mutable_project_boxed_opaque_existential_1(v80, v10);
  v60 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = (&v75 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = v78;
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  v66 = *(v64[-1].Description + 8);
  MEMORY[0x28223BE20](v65);
  v68 = (&v75 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68);
  v70 = *v62;
  v58[5] = v10;
  v58[6] = &off_2877F3740;
  v58[2] = v70;
  v58[15] = &type metadata for PlaybackStarter;
  v58[16] = &off_2877EE098;
  v71 = swift_allocObject();
  v58[12] = v71;
  v72 = v68[3];
  v71[3] = v68[2];
  v71[4] = v72;
  v71[5] = v68[4];
  v73 = v68[1];
  v71[1] = *v68;
  v71[2] = v73;
  sub_2662A8618(v83, (v58 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  __swift_destroy_boxed_opaque_existential_1Tm(v98);
  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  *(a5 + 96) = v58;
  sub_2662A8618(&v86, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  return a5;
}

void sub_26645DF88(uint64_t a1)
{
  if (*(v1 + 94))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 93))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 92))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_26645B178(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + 40, v4 | *(v1 + 91) | v3 | v2, *(v1 + 96), *(v1 + 104));
}

uint64_t sub_26645DFDC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t SiriAudioLinkServices.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0x69746E655F707061;
  *(result + 24) = 0xEF657079745F7974;
  return result;
}

uint64_t SiriAudioLinkServices.init()()
{
  result = v0;
  *(v0 + 16) = 0x69746E655F707061;
  *(v0 + 24) = 0xEF657079745F7974;
  return result;
}

void sub_26645E0A8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  aBlock[9] = *MEMORY[0x277D85DE8];
  v132 = sub_2664DF198();
  v6 = *(v132 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v132);
  v9 = v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664DFE38();
  v112 = *(v10 - 8);
  v11 = *(v112 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v109 = v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v106 - v15;
  MEMORY[0x28223BE20](v14);
  v110 = v106 - v17;
  v18 = sub_2664DFE88();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v128 = v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2664DFF28();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v127 = v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v29 = *(a1 + 16);
  v111 = v10;
  v125 = v29;
  if (!v29)
  {
    v78 = a2;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v79 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v80 = v112;
    (*(v112 + 16))(v16, v79, v10);
    v81 = sub_2664DFE18();
    v82 = sub_2664E06C8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_26629C000, v81, v82, "SiriAudioLinkServiceConnection#mediaItems no app bundle id for connection policy.", v83, 2u);
      v84 = v83;
      v80 = v112;
      MEMORY[0x266784AD0](v84, -1, -1);
    }

    (*(v80 + 8))(v16, v111);
    v78(MEMORY[0x277D84F90]);
    goto LABEL_32;
  }

  v107 = a2;
  v108 = a3;
  v124 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v30 = v26;
  v31 = v28;
  v32 = v106 - v27;
  sub_2664DFE78();
  v106[0] = sub_2664DFEC8();
  v106[1] = v33;
  v34 = *(v31 + 8);
  v113 = v32;
  v119 = v30;
  v118 = v31 + 8;
  v117 = v34;
  v34(v32, v30);
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  v38 = *(v19 + 16);
  v37 = v19 + 16;
  v123 = v38;
  v131 = v6 + 16;
  v122 = *(v37 + 56);
  v130 = (v6 + 8);
  v116 = (v37 - 8);
  v39 = v6;
  v121 = v18;
  v120 = v37;
  while (2)
  {
    v129 = v36;
    v126 = v35;
    v123(v128, v124 + v122 * v35, v18);
    sub_2664DFE78();
    sub_2664DFF18();
    v40 = sub_2664DF2E8();

    v36 = *(v40 + 16);
    if (!v36)
    {
LABEL_3:

      v117(v127, v119);
      v18 = v121;
      (*v116)(v128, v121);
      v36 = v129;
      goto LABEL_4;
    }

    v41 = 0;
    v43 = *(v114 + 16);
    v42 = *(v114 + 24);
    v44 = v40 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    while (1)
    {
      if (v41 >= *(v40 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v46 = v39;
      (*(v39 + 16))(v9, v44 + *(v39 + 72) * v41, v132);
      v47 = sub_2664DF188();
      if (!v48)
      {
        goto LABEL_8;
      }

      if (v47 == v43 && v48 == v42)
      {
        break;
      }

      v45 = sub_2664E0D88();

      if (v45)
      {
        goto LABEL_14;
      }

LABEL_8:
      ++v41;
      (*v130)(v9, v132);
      v39 = v46;
      if (v36 == v41)
      {
        goto LABEL_3;
      }
    }

LABEL_14:

    v115 = sub_2664DF178();
    (*v130)(v9, v132);
    v49 = v119;
    v50 = v117;
    v117(v127, v119);
    v51 = v113;
    v52 = v128;
    sub_2664DFE78();
    sub_2664DFEF8();
    v50(v51, v49);
    v53 = objc_allocWithZone(MEMORY[0x277D23800]);
    v54 = sub_2664E02A8();

    v55 = sub_2664E02A8();

    v56 = [v53 initWithTypeIdentifier:v54 instanceIdentifier:v55];

    v18 = v121;
    v57 = (*v116)(v52, v121);
    v36 = v129;
    v39 = v46;
    if (v56)
    {
      MEMORY[0x266783490](v57);
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v58 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2664E04C8();
        v39 = v46;
      }

      sub_2664E0518();
      v36 = aBlock[0];
    }

LABEL_4:
    v35 = v126 + 1;
    if (v126 + 1 != v125)
    {
      continue;
    }

    break;
  }

  v59 = objc_opt_self();
  v60 = sub_2664E02A8();

  v43 = [v59 policyWithBundleIdentifier_];

  if (qword_280F914E8 != -1)
  {
LABEL_34:
    swift_once();
  }

  v61 = v111;
  v62 = __swift_project_value_buffer(v111, qword_280F914F0);
  swift_beginAccess();
  v63 = v112;
  v64 = *(v112 + 16);
  v65 = v110;
  v64(v110, v62, v61);

  v66 = sub_2664DFE18();
  v67 = sub_2664E06C8();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    aBlock[0] = v69;
    *v68 = 136315138;
    v70 = sub_2662C1744(0, &qword_280072D18, 0x277D23800);
    v129 = v36;
    v71 = MEMORY[0x2667834D0](v36, v70);
    v73 = v62;
    v74 = v64;
    v75 = v43;
    v76 = sub_2662A320C(v71, v72, aBlock);

    *(v68 + 4) = v76;
    v43 = v75;
    v64 = v74;
    v62 = v73;
    _os_log_impl(&dword_26629C000, v66, v67, "SiriAudioLinkServiceConnection#mediaItems fetching structured data for entities identifiers: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x266784AD0](v69, -1, -1);
    MEMORY[0x266784AD0](v68, -1, -1);

    v77 = *(v112 + 8);
    v77(v110, v111);
  }

  else
  {
    v129 = v36;

    v77 = *(v63 + 8);
    v77(v65, v61);
  }

  v85 = v108;
  aBlock[0] = 0;
  v86 = [v43 connectionWithError_];
  v87 = aBlock[0];
  if (v86)
  {
    v88 = v86;
    sub_2662C1744(0, &qword_280072D18, 0x277D23800);
    v89 = v87;
    v90 = v129;
    v91 = sub_2664E0488();
    v92 = swift_allocObject();
    v92[2] = v107;
    v92[3] = v85;
    v92[4] = v90;
    aBlock[4] = sub_26645F828;
    aBlock[5] = v92;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26645F6DC;
    aBlock[3] = &block_descriptor_45;
    v93 = _Block_copy(aBlock);

    [v88 fetchStructuredDataWithTypeIdentifier:9 forEntityIdentifiers:v91 completionHandler:v93];

    _Block_release(v93);
  }

  else
  {
    v94 = aBlock[0];

    v95 = sub_2664DE1A8();

    swift_willThrow();
    v96 = v111;
    v64(v109, v62, v111);
    v97 = v95;
    v98 = sub_2664DFE18();
    v99 = sub_2664E06C8();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v100 = 138412290;
      v102 = v95;
      v103 = _swift_stdlib_bridgeErrorToNSError();
      *(v100 + 4) = v103;
      *v101 = v103;
      _os_log_impl(&dword_26629C000, v98, v99, "SiriAudioLinkServiceConnection#mediaItems fetchStructuredData failed with error: %@", v100, 0xCu);
      sub_2662E4324(v101);
      MEMORY[0x266784AD0](v101, -1, -1);
      v104 = v100;
      v96 = v111;
      MEMORY[0x266784AD0](v104, -1, -1);
    }

    v77(v109, v96);
    v107(MEMORY[0x277D84F90]);
  }

LABEL_32:
  v105 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26645EDC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4, unint64_t a5)
{
  v78 = a4;
  v79 = a3;
  v7 = sub_2664DFBE8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664DFC48();
  v83 = *(v10 - 8);
  v11 = *(v83 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v82 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = &v71 - v14;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v77 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v71 - v20;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v22 = __swift_project_value_buffer(v15, qword_280F914F0);
    swift_beginAccess();
    v23 = v16[2];
    v76 = v22;
    v75 = v16 + 2;
    v74 = v23;
    v23(v21, v22, v15);

    v24 = sub_2664DFE18();
    v25 = sub_2664E06C8();

    v26 = os_log_type_enabled(v24, v25);
    v85 = v10;
    v84 = a5;
    v90 = a1;
    if (v26)
    {
      v27 = v15;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 136315138;
      v98 = v90;
      v99[0] = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BC8, &qword_2664EDC08);
      v30 = sub_2664E0318();
      v32 = sub_2662A320C(v30, v31, v99);
      v10 = v85;

      *(v28 + 4) = v32;
      a5 = v84;
      _os_log_impl(&dword_26629C000, v24, v25, "SiriAudioLinkServiceConnection#mediaItems structuredData: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x266784AD0](v29, -1, -1);
      v33 = v28;
      v15 = v27;
      a1 = v90;
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    v73 = v16[1];
    v73(v21, v15);
    if (!a1)
    {
      return v79(MEMORY[0x277D84F90]);
    }

    v34 = a5 >> 62 ? sub_2664E0A68() : *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v72 = v15;
    if (!v34)
    {
      break;
    }

    v15 = 0;
    v35 = a5 & 0xC000000000000001;
    v95 = a1 & 0xC000000000000001;
    v96 = a5 & 0xFFFFFFFFFFFFFF8;
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v36 = a1;
    }

    v94 = v36;
    v93 = MEMORY[0x277D84F90];
    v88 = (v83 + 32);
    v81 = v34;
    v80 = v16;
    v89 = a5 & 0xC000000000000001;
    while (1)
    {
      if (v35)
      {
        v37 = MEMORY[0x266783B70](v15, a5);
      }

      else
      {
        if (v15 >= *(v96 + 16))
        {
          goto LABEL_45;
        }

        v37 = *(a5 + 8 * v15 + 32);
      }

      v38 = v37;
      v39 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v95)
      {
        v40 = sub_2664E0C38();
        if (v40)
        {
          v97 = v40;
          sub_2662C1744(0, &qword_280073BB8, 0x277D23958);
          swift_dynamicCast();
          v21 = v98;
          if (v98)
          {
            goto LABEL_24;
          }
        }
      }

      else if (*(a1 + 16))
      {
        v21 = a1;
        v41 = sub_26634DCD8(v37);
        if (v42)
        {
          v21 = *(*(a1 + 56) + 8 * v41);
          if (v21)
          {
LABEL_24:
            v43 = [v21 value];

            sub_2664E09E8();
            swift_unknownObjectRelease();
            sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
            if (swift_dynamicCast())
            {
              v44 = v98;
              v45 = [v98 identifier];
              if (v45)
              {
                v46 = v45;
                v47 = sub_2664E02C8();
                v86 = v48;
                v87 = v47;
              }

              else
              {
                v86 = 0;
                v87 = 0;
              }

              v49 = [v44 title];
              if (v49)
              {
                v50 = v49;
                sub_2664E02C8();
              }

              v51 = [v44 type];
              sub_2663ECB60(v51, v92);
              v52 = [v44 artist];
              if (v52)
              {
                v53 = v52;
                sub_2664E02C8();
              }

              v54 = v82;
              sub_2664DFBF8();

              v55 = *v88;
              v10 = v85;
              (*v88)(v91, v54, v85);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v93 = sub_266385190(0, *(v93 + 2) + 1, 1, v93);
              }

              v16 = v80;
              a5 = v84;
              a1 = v90;
              v57 = *(v93 + 2);
              v56 = *(v93 + 3);
              v21 = (v57 + 1);
              if (v57 >= v56 >> 1)
              {
                v93 = sub_266385190(v56 > 1, v57 + 1, 1, v93);
              }

              v58 = v93;
              *(v93 + 2) = v21;
              v55(&v58[((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v57], v91, v10);
              v34 = v81;
              v35 = v89;
            }

            else
            {

              v35 = v89;
            }

            goto LABEL_12;
          }
        }
      }

LABEL_12:
      ++v15;
      if (v39 == v34)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v93 = MEMORY[0x277D84F90];
LABEL_41:
  v60 = v77;
  v61 = v72;
  v74(v77, v76, v72);
  v62 = v93;

  v63 = sub_2664DFE18();
  v64 = sub_2664E06C8();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v99[0] = v66;
    *v65 = 136315138;
    v67 = MEMORY[0x2667834D0](v93, v10);
    v69 = sub_2662A320C(v67, v68, v99);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_26629C000, v63, v64, "SiriAudioLinkServiceConnection#mediaItems returning mediaItems: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    v70 = v66;
    v62 = v93;
    MEMORY[0x266784AD0](v70, -1, -1);
    MEMORY[0x266784AD0](v65, -1, -1);
  }

  v73(v60, v61);
  v79(v62);
}

uint64_t sub_26645F6DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_2662C1744(0, &qword_280072D18, 0x277D23800);
    sub_2662C1744(0, &qword_280073BB8, 0x277D23958);
    sub_26645F8BC();
    v4 = sub_2664E01C8();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t SiriAudioLinkServices.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SiriAudioLinkServices.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_26645F8BC()
{
  result = qword_280073BC0;
  if (!qword_280073BC0)
  {
    sub_2662C1744(255, &qword_280072D18, 0x277D23800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073BC0);
  }

  return result;
}

uint64_t sub_26645F924(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2662FD038(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2662FD038((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_266318804(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26645FA24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2662FD09C(0, v1, 0);
    v4 = (a1 + 40);
    v2 = v13;
    do
    {
      v10 = *(v4 - 1);
      v5 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F80, &unk_2664EDCC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072900, &qword_2664E4F70);
      swift_dynamicCast();
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2662FD09C((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = v11;
      *(v8 + 40) = v12;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26645FB64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2662FD160(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v11;
    do
    {
      v9 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073AD0, &unk_2664ED660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A10, &qword_2664ED550);
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2662FD160((v6 > 1), v7 + 1, 1);
        v5 = v10;
      }

      *(v11 + 16) = v7 + 1;
      *(v11 + 16 * v7 + 32) = v5;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_26645FC98(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_2664E0A68();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_2662FD038(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x266783B70](i, a1);
        sub_2662C1744(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2662FD038((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_266318804(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_2662C1744(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_2662FD038((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_266318804(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void sub_26645FE84(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_2664E0A68())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BE8, &qword_2664EDCD0);
  v3 = sub_2664E0AF8();
LABEL_6:
  if (sub_2662C1744(0, &qword_280072EE8, 0x277CD5E28) == MEMORY[0x277D837D0])
  {
    if (v2)
    {

      sub_2664E0A58();
      sub_2662C1744(0, &qword_280072508, 0x277CD5E30);
      sub_26639F040(&qword_2800731E8, &qword_280072508, 0x277CD5E30);
      sub_2664E0638();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v31 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v11 = v33 & *(v1 + 56);

      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_2664E0A88())
        {
LABEL_55:
          sub_2662B793C();

          return;
        }

        sub_2662C1744(0, &qword_280072508, 0x277CD5E30);
        swift_dynamicCast();
        v36 = v38;
      }

      else
      {
        if (v11)
        {
          v34 = v10;
        }

        else
        {
          v37 = v10;
          do
          {
            v34 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_58;
            }

            if (v34 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v34);
            ++v37;
          }

          while (!v11);
          v10 = v34;
        }

        v35 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v36 = *(*(v1 + 48) + ((v34 << 9) | (8 * v35)));
      }

      sub_2664629E4(v36);
    }
  }

  if (v2)
  {

    sub_2664E0A58();
    sub_2662C1744(0, &qword_280072508, 0x277CD5E30);
    sub_26639F040(&qword_2800731E8, &qword_280072508, 0x277CD5E30);
    sub_2664E0638();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_2664E0A88())
    {
      goto LABEL_55;
    }

    sub_2662C1744(0, &qword_280072508, 0x277CD5E30);
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = *(v3 + 40);
    v23 = sub_2664E0908();
    v24 = -1 << *(v3 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      do
      {
        if (++v26 == v28 && (v27 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v26);
      }

      while (v30 == -1);
      v17 = __clz(__rbit64(~v30)) + (v26 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_2664603B0(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = a1;
  v8 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_2664E0A68())
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = MEMORY[0x277D84FA0];
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = -1 << *(v7 + 32);
    v11 = v7 + 56;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v7 + 56);

    v33 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BE0, &qword_2664EDCB8);
  v9 = sub_2664E0AF8();
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_2664E0A58();
  sub_2662C1744(0, a2, a3);
  sub_26639F040(a4, a2, a3);
  result = sub_2664E0638();
  v7 = v37;
  v11 = v38;
  v12 = v39;
  v33 = v40;
  v13 = v41;
LABEL_11:
  v17 = v9 + 56;
  while (v7 < 0)
  {
    v21 = sub_2664E0A88();
    if (!v21)
    {
LABEL_34:
      sub_2662B793C();

      return v9;
    }

    *&v34 = v21;
    sub_2662C1744(0, a2, a3);
    swift_dynamicCast();
LABEL_25:
    sub_2662C1744(0, a2, a3);
    swift_dynamicCast();
    v25 = *(v9 + 40);
    result = sub_2664E0A98();
    v26 = -1 << *(v9 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = 0;
      v30 = (63 - v26) >> 6;
      do
      {
        if (++v28 == v30 && (v29 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v31 = v28 == v30;
        if (v28 == v30)
        {
          v28 = 0;
        }

        v29 |= v31;
        v32 = *(v17 + 8 * v28);
      }

      while (v32 == -1);
      v18 = __clz(__rbit64(~v32)) + (v28 << 6);
    }

    *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = *(v9 + 48) + 40 * v18;
    *(v19 + 32) = v36;
    *v19 = v34;
    *(v19 + 16) = v35;
    ++*(v9 + 16);
  }

  if (v13)
  {
    v20 = v33;
LABEL_24:
    v23 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v24 = *(*(v7 + 48) + ((v20 << 9) | (8 * v23)));
    goto LABEL_25;
  }

  v22 = v33;
  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v20 >= ((v12 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v13 = *(v11 + 8 * v20);
    ++v22;
    if (v13)
    {
      v33 = v20;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_266460710(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a5;
  v36 = a4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v41 = *a2;
  v42 = v15;
  v43[0] = *(a2 + 32);
  *(v43 + 15) = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v16, v10);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "MPMediaQueryHandler#queue...", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  v20 = BYTE1(a3) & 1;
  v21 = BYTE2(a3) & 1;
  v35 = a3 & 0x1000000;

  (*(v11 + 8))(v14, v10);
  if (sub_2664C8564(a1))
  {
    v39[0] = v41;
    v39[1] = v42;
    *v40 = v43[0];
    *&v40[15] = *(v43 + 15);
    v22 = swift_allocObject();
    v23 = v42;
    *(v22 + 56) = v41;
    *(v22 + 16) = v36;
    *(v22 + 24) = v37;
    *(v22 + 32) = v6;
    *(v22 + 40) = a1;
    *(v22 + 48) = a3 & 1;
    *(v22 + 49) = v20;
    *(v22 + 50) = v21;
    *(v22 + 51) = HIBYTE(v35);
    *(v22 + 72) = v23;
    *(v22 + 88) = v43[0];
    *(v22 + 103) = *(v43 + 15);

    sub_2662D2A64(&v41, v38);
    sub_2664C604C(v6 + 12, a1, v39, a3 & 0x1010101, sub_266465114, v22);
  }

  else
  {
    v24 = v6[15];
    v25 = v6[16];
    v34 = __swift_project_boxed_opaque_existential_1(v6 + 12, v24);
    v33 = *(&v41 + 1);
    v32 = v42;
    v26 = a1[13];
    v31 = a1[12];
    v27 = swift_allocObject();
    v28 = v42;
    *(v27 + 56) = v41;
    *(v27 + 16) = v36;
    *(v27 + 24) = v37;
    *(v27 + 32) = v6;
    *(v27 + 40) = a1;
    *(v27 + 48) = a3 & 1;
    *(v27 + 49) = v20;
    *(v27 + 50) = v21;
    *(v27 + 51) = HIBYTE(v35);
    *(v27 + 72) = v28;
    *(v27 + 88) = v43[0];
    *(v27 + 103) = *(v43 + 15);
    v29 = *(v25 + 8);

    sub_2662D2A64(&v41, v39);
    v29(v33, v32, v31, v26, sub_266465064, v27, v24, v25);
  }
}

void sub_266460B34(void *a1, uint64_t a2, int a3, __int128 *a4, void (*a5)(__int128 *), uint64_t a6)
{
  v56 = a5;
  v57 = a6;
  v49 = a3;
  v50 = a2;
  v55 = a1;
  v54 = sub_2664DFE08();
  v7 = *(v54 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v54);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v48 = &v46 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - v18;
  v20 = a4[1];
  v61 = *a4;
  v62 = v20;
  v63[0] = a4[2];
  *(v63 + 15) = *(a4 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v47 = v12[2];
  v47(v19, v21, v11);
  v22 = sub_2664DFE18();
  v23 = sub_2664E06C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_26629C000, v22, v23, "MPMediaQueryHandler:queue investigating if library has songs", v24, 2u);
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v25 = v12[1];
  v53 = v12 + 1;
  v25(v19, v11);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v26 = qword_280F91D48;
  sub_2664DFDE8();
  sub_2664E0848();
  sub_2664DFDC8();
  v27 = v55;
  sub_266493A88(v55, &v58);
  sub_2664E0838();
  sub_2664DFDD8();
  (*(v7 + 8))(v10, v54);
  if (v58 == 1)
  {
    v28 = swift_allocObject();
    v29 = v62;
    *(v28 + 56) = v61;
    *(v28 + 16) = v56;
    v30 = v51;
    *(v28 + 24) = v57;
    *(v28 + 32) = v30;
    v31 = v49;
    *(v28 + 40) = v49 & 1;
    *(v28 + 41) = BYTE1(v31) & 1;
    *(v28 + 42) = BYTE2(v31) & 1;
    *(v28 + 43) = HIBYTE(v31) & 1;
    *(v28 + 48) = v27;
    *(v28 + 72) = v29;
    *(v28 + 88) = v63[0];
    *(v28 + 103) = *(v63 + 15);
    v32 = *(*v30 + 192);

    v33 = v27;
    sub_2662D2A64(&v61, &v58);
    v32(v50, v33, sub_266462990, v28);
  }

  else
  {
    v34 = v48;
    v35 = v47;
    v47(v48, v21, v11);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "MPMediaQueryHandler:queue resolved library does not have any songs", v38, 2u);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v25(v34, v11);
    v39 = v52;
    v35(v52, v21, v11);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06B8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v39;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v58 = v44;
      *v43 = 134218498;
      *(v43 + 4) = 11;
      *(v43 + 12) = 2048;
      *(v43 + 14) = 19;
      *(v43 + 22) = 2080;
      *(v43 + 24) = sub_2662A320C(0x62694C7974706D45, 0xEC00000079726172, &v58);
      _os_log_impl(&dword_26629C000, v40, v41, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v43, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x266784AD0](v44, -1, -1);
      MEMORY[0x266784AD0](v43, -1, -1);

      v45 = v42;
    }

    else
    {

      v45 = v39;
    }

    v25(v45, v11);
    v58 = xmmword_2664EDC10;
    v59 = 0xEC00000079726172;
    v60 = 1;
    v56(&v58);
    sub_2664017EC(v58, SDWORD2(v58), v59, v60);
  }
}

void sub_266461204(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, int a6, __int128 *a7)
{
  v49 = a5;
  v50 = a7;
  v48 = a6;
  v51 = a4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v47 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v45 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - v17;
  v19 = *a1;
  v20 = *(a1 + 8);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v54 = v11;
  v52 = *(v11 + 16);
  v52(v18, v21, v10);
  sub_266465164(v19, v20);
  v22 = sub_2664DFE18();
  v23 = sub_2664E06C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v46 = v21;
    v25 = a2;
    v26 = a3;
    v27 = v24;
    *v24 = 67109120;
    *(v24 + 1) = v19 != 1;
    sub_26633C3AC(v19, v20);
    _os_log_impl(&dword_26629C000, v22, v23, "MPMediaQueryHandler:queue using identity: %{BOOL}d", v27, 8u);
    v28 = v27;
    a3 = v26;
    a2 = v25;
    v21 = v46;
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  else
  {
    sub_26633C3AC(v19, v20);
  }

  v29 = *(v54 + 8);
  v29(v18, v10);
  v30 = objc_opt_self();
  if (v19 > 1)
  {
    v31 = [v30 deviceMediaLibraryWithUserIdentity_];
  }

  else
  {
    v31 = [v30 deviceMediaLibrary];
  }

  v32 = v31;
  if (v32)
  {
    v33 = v32;
    sub_266460B34(v32, v49, v48 & 0x1010101, v50, a2, a3);
  }

  else
  {
    v52(v53, v21, v10);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06D8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_26629C000, v34, v35, "MPMediaQueryHandler:queue unexpected error resolving library", v36, 2u);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    v29(v53, v10);
    v37 = v47;
    v52(v47, v21, v10);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06B8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = a2;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v55 = v42;
      *v41 = 134218498;
      *(v41 + 4) = 11;
      *(v41 + 12) = 2048;
      *(v41 + 14) = 31;
      *(v41 + 22) = 2080;
      *(v41 + 24) = sub_2662A320C(0xD00000000000001FLL, 0x80000002664F92E0, &v55);
      _os_log_impl(&dword_26629C000, v38, v39, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v41, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266784AD0](v42, -1, -1);
      v43 = v41;
      a2 = v40;
      MEMORY[0x266784AD0](v43, -1, -1);

      v44 = v47;
    }

    else
    {

      v44 = v37;
    }

    v29(v44, v10);
    v55 = xmmword_2664EDC20;
    v56 = 0x80000002664F92E0;
    v57 = 1;
    a2(&v55);
    sub_2664017EC(v55, SDWORD2(v55), v56, v57);
  }
}

void sub_2664616E4(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, int a6, __int128 *a7)
{
  v66 = a3;
  v13 = sub_2664DFE38();
  v67 = *(v13 - 8);
  v14 = *(v67 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v58 - v18;
  MEMORY[0x28223BE20](v17);
  v23 = &v58 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = qword_280F914E8;
    v26 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    v28 = v67;
    (*(v67 + 16))(v23, v27, v13);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06C8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "MPMediaQueryHandler#queue using x scheme", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v28 + 8))(v23, v13);
    v69 = 0;
    v68 = v24;
    v70 = 0;
    v32 = v26;
    a2(&v68);

LABEL_7:
    sub_2664017EC(v68, SDWORD2(v68), v69, v70);
    return;
  }

  v62 = v21;
  v63 = a7;
  v64 = a4;
  v65 = a2;
  v59 = v20;
  v33 = *a1;
  v34 = *(a1 + 8);
  v35 = *(a1 + 24);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v37 = *(v67 + 16);
  v58 = v36;
  v60 = v37;
  v61 = v67 + 16;
  v37(v19, v36, v13);
  sub_266465164(v33, v34);
  v38 = v35;
  v39 = sub_2664DFE18();
  v40 = sub_2664E06C8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 67109120;
    *(v41 + 4) = v33 != 1;
    sub_26633C3AC(v33, v34);

    _os_log_impl(&dword_26629C000, v39, v40, "MPMediaQueryHandler:queue using identity: %{BOOL}d", v41, 8u);
    MEMORY[0x266784AD0](v41, -1, -1);
  }

  else
  {
    sub_26633C3AC(v33, v34);

    v39 = v38;
  }

  v42 = *(v67 + 8);
  v42(v19, v13);
  v43 = objc_opt_self();
  v44 = v65;
  v45 = v63;
  if (v33 > 1)
  {
    v46 = [v43 deviceMediaLibraryWithUserIdentity_];
  }

  else
  {
    v46 = [v43 deviceMediaLibrary];
  }

  v47 = v46;
  if (!v47)
  {
    v49 = v58;
    v60(v62, v58, v13);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "MPMediaQueryHandler:queue unexpected error resolving library", v52, 2u);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    v42(v62, v13);
    v53 = v59;
    v60(v59, v49, v13);
    v54 = sub_2664DFE18();
    v55 = sub_2664E06B8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v68 = v57;
      *v56 = 134218498;
      *(v56 + 4) = 11;
      *(v56 + 12) = 2048;
      *(v56 + 14) = 31;
      *(v56 + 22) = 2080;
      *(v56 + 24) = sub_2662A320C(0xD00000000000001FLL, 0x80000002664F92E0, &v68);
      _os_log_impl(&dword_26629C000, v54, v55, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v56, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x266784AD0](v57, -1, -1);
      MEMORY[0x266784AD0](v56, -1, -1);
    }

    v42(v53, v13);
    v68 = xmmword_2664EDC20;
    v69 = 0x80000002664F92E0;
    v70 = 1;
    v44(&v68);
    goto LABEL_7;
  }

  v48 = v47;
  sub_266460B34(v47, a5, a6 & 0x1010101, v45, v44, v66);
}

void sub_266461D34(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v53 = a7;
  v51 = a6;
  v50 = a5;
  v52 = a4;
  v57 = a2;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v49 = &v46 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v20 = *(v10 + 16);
  v55 = v19;
  v54 = v20;
  v20(v18, v19, v9);
  v56 = v10;
  sub_2662A7224(a1, v59, &qword_280073BD0, &qword_2664EDCA8);
  v21 = sub_2664DFE18();
  v22 = sub_2664E06E8();
  sub_2662A9238(a1, &qword_280073BD0, &qword_2664EDCA8);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v60[0] = v24;
    *v23 = 136315138;
    v25 = *(a1 + 16);
    *v59 = *a1;
    *&v59[16] = v25;
    *&v59[32] = *(a1 + 32);
    *&v59[48] = *(a1 + 48);
    v47 = v14;
    v48 = v9;
    v26 = a3;
    sub_2662A7224(a1, v58, &qword_280073BD0, &qword_2664EDCA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BD0, &qword_2664EDCA8);
    v27 = sub_2664E0318();
    v29 = sub_2662A320C(v27, v28, v60);
    v14 = v47;

    *(v23 + 4) = v29;
    a3 = v26;
    v9 = v48;
    _os_log_impl(&dword_26629C000, v21, v22, "MPMediaQueryHandler:queue received query attributes: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x266784AD0](v24, -1, -1);
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  v30 = *(v56 + 8);
  v30(v18, v9);
  v31 = *a1;
  if (*a1)
  {
    *v59 = *a1;
    *&v59[40] = *(a1 + 40);
    *&v59[8] = *(a1 + 8);
    *&v59[24] = *(a1 + 24);
    v60[0] = v31;
    v32 = *&v59[40];

    v33 = v52;

    v34 = v53;
    sub_2662D2A64(v53, v58);
    sub_2662A7224(v60, v58, &qword_280073BD8, &qword_2664EDCB0);

    sub_266463DE4(v59, v50 & 0x1010101, v51, v33, v57, a3, v34, v32);

    sub_2662D2B88(v34);
    sub_2662A9238(v60, &qword_280073BD8, &qword_2664EDCB0);
  }

  else
  {
    v56 = a3;
    v35 = v49;
    v54(v49, v55, v9);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06E8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v14;
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "MPMediaQueryHandler:queue unexpected error building query", v39, 2u);
      v40 = v39;
      v14 = v38;
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    v30(v35, v9);
    v54(v14, v55, v9);
    v41 = sub_2664DFE18();
    v42 = v14;
    v43 = sub_2664E06B8();
    if (os_log_type_enabled(v41, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v59 = v45;
      *v44 = 134218498;
      *(v44 + 4) = 11;
      *(v44 + 12) = 2048;
      *(v44 + 14) = 32;
      *(v44 + 22) = 2080;
      *(v44 + 24) = sub_2662A320C(0xD00000000000001CLL, 0x80000002664F9260, v59);
      _os_log_impl(&dword_26629C000, v41, v43, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v44, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x266784AD0](v45, -1, -1);
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    v30(v42, v9);
    *v59 = xmmword_2664EDC30;
    *&v59[16] = 0x80000002664F9260;
    v59[24] = 1;
    v57(v59);
    sub_2664017EC(*v59, *&v59[8], *&v59[16], v59[24]);
  }
}

void *sub_2664623E4(uint64_t *a1, uint64_t *a2, __int128 *a3, uint64_t *a4)
{
  v59 = a3;
  v7 = swift_allocObject();
  v8 = a1[3];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v60[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = a2[3];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v14);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v60[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = a4[3];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(a4, v20);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v60[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v12;
  v27 = type metadata accessor for MediaPlaybackProvider();
  v66[3] = v27;
  v66[4] = &off_2877F3740;
  v66[0] = v26;
  v64 = &type metadata for PlaybackStarter;
  v65 = &off_2877EE098;
  v28 = swift_allocObject();
  v63[0] = v28;
  v29 = v18[3];
  v28[3] = v18[2];
  v28[4] = v29;
  v28[5] = v18[4];
  v30 = v18[1];
  v28[1] = *v18;
  v28[2] = v30;
  v61 = &type metadata for PlaybackQueueLocationProvider;
  v62 = &off_2877E8100;
  v31 = swift_allocObject();
  v60[0] = v31;
  v32 = v24[3];
  v31[3] = v24[2];
  v31[4] = v32;
  v31[5] = v24[4];
  v33 = v24[1];
  v31[1] = *v24;
  v31[2] = v33;
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v66, v27);
  v35 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = (&v60[-1] - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = v64;
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
  v41 = *(v39[-1].Description + 8);
  MEMORY[0x28223BE20](v40);
  v43 = (&v60[-1] - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43);
  v45 = v61;
  v46 = __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
  v47 = *(v45[-1].Description + 8);
  MEMORY[0x28223BE20](v46);
  v49 = (&v60[-1] - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = *v37;
  v7[5] = v27;
  v7[6] = &off_2877F3740;
  v7[2] = v51;
  v7[10] = &type metadata for PlaybackStarter;
  v7[11] = &off_2877EE098;
  v52 = swift_allocObject();
  v7[7] = v52;
  v53 = v43[3];
  v52[3] = v43[2];
  v52[4] = v53;
  v52[5] = v43[4];
  v54 = v43[1];
  v52[1] = *v43;
  v52[2] = v54;
  v7[20] = &type metadata for PlaybackQueueLocationProvider;
  v7[21] = &off_2877E8100;
  v55 = swift_allocObject();
  v7[17] = v55;
  v56 = v49[3];
  v55[3] = v49[2];
  v55[4] = v56;
  v55[5] = v49[4];
  v57 = v49[1];
  v55[1] = *v49;
  v55[2] = v57;
  sub_2662D31E4(v59, (v7 + 12));
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

void sub_266462990(uint64_t a1)
{
  if (*(v1 + 43))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 42))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 41))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_266461D34(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v4 | *(v1 + 40) | v3 | v2, *(v1 + 48), v1 + 56);
}

void sub_2664629E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_2664E0908();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v3 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    sub_2662C1744(0, &qword_280072EE8, 0x277CD5E28);
    while (1)
    {
      v13 = *(*(v3 + 48) + 8 * v8);
      v14 = sub_2664E0918();

      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v6 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = *(v3 + 48);
    v17 = *(v16 + 8 * v8);
    *(v16 + 8 * v8) = a1;
  }

  else
  {
LABEL_5:
    v15 = *(v3 + 16);
    if (v15 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v6 + 8 * v9) = v11 | v10;
      *(*(v3 + 48) + 8 * v8) = a1;
      *(v3 + 16) = v15 + 1;
    }
  }
}

void sub_266462B24(void *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v139 = a5;
  v141 = a4;
  v144 = a3;
  v145 = a2;
  v6 = sub_2664DFE08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_2664DFE38();
  v11 = *(v148 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v148);
  v15 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v140 = &v131 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v131 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v26 = MEMORY[0x28223BE20](&v131 - v25);
  v138 = &v131 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v131 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v131 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v40 = &v131 - v39;
  if (!a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v59 = v148;
    v60 = __swift_project_value_buffer(v148, qword_280F914F0);
    swift_beginAccess();
    v61 = v11[2];
    v61(v40, v60, v59);
    v62 = sub_2664DFE18();
    v63 = sub_2664E06D8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_26629C000, v62, v63, "MPMediaQueryHandler:queue error building query", v64, 2u);
      MEMORY[0x266784AD0](v64, -1, -1);
    }

    v65 = v11[1];
    v66 = v148;
    v65(v40, v148);
    v61(v15, v60, v66);
    v67 = sub_2664DFE18();
    v68 = sub_2664E06B8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v149 = v70;
      *v69 = 134218498;
      *(v69 + 4) = 11;
      *(v69 + 12) = 2048;
      *(v69 + 14) = 32;
      *(v69 + 22) = 2080;
      *(v69 + 24) = sub_2662A320C(0xD000000000000012, 0x80000002664F9280, &v149);
      _os_log_impl(&dword_26629C000, v67, v68, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v69, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x266784AD0](v70, -1, -1);
      MEMORY[0x266784AD0](v69, -1, -1);
    }

    v65(v15, v66);
    v149 = xmmword_2664EDC60;
    v150 = 0x80000002664F9280;
    v151 = 1;
    v145(&v149);
    goto LABEL_46;
  }

  v135 = v35;
  v136 = v34;
  v133 = v38;
  v134 = v37;
  v132 = v36;
  v41 = qword_280F914E8;
  v147 = a1;
  if (v41 != -1)
  {
    swift_once();
  }

  v42 = v148;
  v43 = __swift_project_value_buffer(v148, qword_280F914F0);
  swift_beginAccess();
  v44 = v11[2];
  v142 = v43;
  v143 = v11 + 2;
  v146 = v44;
  v44(v33, v43, v42);
  v45 = sub_2664DFE18();
  v46 = sub_2664E06C8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_26629C000, v45, v46, "MPMediaQueryHandler:queue inspecting if query has items...", v47, 2u);
    v48 = v47;
    v42 = v148;
    MEMORY[0x266784AD0](v48, -1, -1);
  }

  v49 = v11[1];
  v137 = v11 + 1;
  v50 = v49;
  v49(v33, v42);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v51 = qword_280F91D48;
  sub_2664DFDE8();
  sub_2664E0848();
  sub_2664DFDC8();
  sub_26649377C(v147, &v149);
  sub_2664E0838();
  sub_2664DFDD8();
  (*(v7 + 8))(v10, v6);
  if (v149 != 1)
  {
    v71 = v142;
    v146(v20, v142, v42);
    v72 = sub_2664DFE18();
    v73 = sub_2664E06D8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_26629C000, v72, v73, "MPMediaQueryHandler:queue MPMediaQuery#_hasItems is false", v74, 2u);
      MEMORY[0x266784AD0](v74, -1, -1);
    }

    v50(v20, v42);
    v75 = v140;
    v146(v140, v71, v42);
    v76 = sub_2664DFE18();
    v77 = sub_2664E06B8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v149 = v79;
      *v78 = 134218498;
      *(v78 + 4) = 11;
      *(v78 + 12) = 2048;
      *(v78 + 14) = 18;
      *(v78 + 22) = 2080;
      *(v78 + 24) = sub_2662A320C(0x736D6574496F4ELL, 0xE700000000000000, &v149);
      _os_log_impl(&dword_26629C000, v76, v77, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v78, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      MEMORY[0x266784AD0](v79, -1, -1);
      MEMORY[0x266784AD0](v78, -1, -1);
    }

    v50(v75, v42);
    v149 = xmmword_2664EDC40;
    v150 = 0xE700000000000000;
    goto LABEL_25;
  }

  v52 = v142;
  v146(v30, v142, v42);
  v53 = sub_2664DFE18();
  v54 = sub_2664E06C8();
  v55 = v50;
  if (os_log_type_enabled(v53, v54))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_26629C000, v53, v54, "MPMediaQueryHandler:queue items present and playable", v56, 2u);
    v57 = v56;
    v52 = v142;
    MEMORY[0x266784AD0](v57, -1, -1);
  }

  v50(v30, v148);
  v58 = *(v141 + 48);
  if (v58 <= 1 && !*(v141 + 48))
  {
    goto LABEL_30;
  }

  v80 = sub_2664E0D88();

  if (v80)
  {
    goto LABEL_32;
  }

  if (v58 == 3)
  {
LABEL_30:

    goto LABEL_32;
  }

  v81 = sub_2664E0D88();

  if ((v81 & 1) == 0)
  {
    v99 = v135;
    v100 = v52;
    v101 = v148;
    v146(v135, v100, v148);
    v102 = v141;
    sub_2662D2A64(v141, &v149);
    v103 = sub_2664DFE18();
    v104 = sub_2664E06C8();
    sub_2662D2B88(v102);
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v149 = v106;
      *v105 = 136315138;
      v107 = 0xE400000000000000;
      v108 = 0x726574616CLL;
      if (v58 == 1)
      {
        v108 = 1954047342;
      }

      else
      {
        v107 = 0xE500000000000000;
      }

      if (v58 <= 2)
      {
        v109 = v108;
      }

      else
      {
        v109 = 0x726F707075736E75;
      }

      if (v58 <= 2)
      {
        v110 = v107;
      }

      else
      {
        v110 = 0xEB00000000646574;
      }

      v111 = sub_2662A320C(v109, v110, &v149);

      *(v105 + 4) = v111;
      _os_log_impl(&dword_26629C000, v103, v104, "MPMediaQueryHandler:queue non-now location:%s", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      MEMORY[0x266784AD0](v106, -1, -1);
      MEMORY[0x266784AD0](v105, -1, -1);

      v112 = v148;
      v55(v135, v148);
    }

    else
    {

      v55(v99, v101);
      v112 = v101;
    }

    v113 = [v147 items];
    if (v113)
    {
      v114 = v113;
      sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
      v115 = sub_2664E04A8();

      sub_26645FC98(v115, &qword_280072D58, 0x277CD5DE0);

      v116 = sub_2664E0488();
    }

    else
    {
      v116 = 0;
    }

    v117 = v142;
    v118 = [objc_allocWithZone(MEMORY[0x277CD5E38]) initWithEntities:v116 entityType:0];

    if (v118)
    {
      v146(v134, v117, v112);
      v119 = sub_2664DFE18();
      v120 = sub_2664E06C8();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 0;
        _os_log_impl(&dword_26629C000, v119, v120, "MPMediaQueryHandler:queue setting upnext via continuation", v121, 2u);
        MEMORY[0x266784AD0](v121, -1, -1);
      }

      v55(v134, v112);
      v122 = [objc_allocWithZone(MEMORY[0x277D27868]) initWithContextID:0 query:v118];
      v150 = 0;
      v149 = v122;
      v151 = 0;
      v145(&v149);

      goto LABEL_26;
    }

    v146(v133, v117, v112);
    v123 = sub_2664DFE18();
    v124 = sub_2664E06D8();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_26629C000, v123, v124, "MPMediaQueryHandler:queue Unable to build MPMediaQuery from items for upnext", v125, 2u);
      MEMORY[0x266784AD0](v125, -1, -1);
    }

    v55(v133, v112);
    v126 = v132;
    v146(v132, v117, v112);
    v127 = sub_2664DFE18();
    v128 = sub_2664E06B8();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *&v149 = v130;
      *v129 = 134218498;
      *(v129 + 4) = 11;
      *(v129 + 12) = 2048;
      *(v129 + 14) = 11;
      *(v129 + 22) = 2080;
      *(v129 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F92C0, &v149);
      _os_log_impl(&dword_26629C000, v127, v128, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v129, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v130);
      MEMORY[0x266784AD0](v130, -1, -1);
      MEMORY[0x266784AD0](v129, -1, -1);
    }

    v55(v126, v112);
    v149 = xmmword_2664EDC50;
    v150 = 0x80000002664F92C0;
LABEL_25:
    v151 = 1;
    v145(&v149);
LABEL_26:

LABEL_46:
    sub_2664017EC(v149, SDWORD2(v149), v150, v151);
    return;
  }

LABEL_32:
  v82 = v138;
  v83 = v148;
  v146(v138, v52, v148);
  v84 = sub_2664DFE18();
  v85 = sub_2664E06C8();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_26629C000, v84, v85, "MPMediaQueryHandler:queue creating queue from query...", v86, 2u);
    MEMORY[0x266784AD0](v86, -1, -1);
  }

  v50(v82, v83);
  v87 = objc_allocWithZone(MEMORY[0x277D27868]);
  v88 = [v87 initWithContextID:0 query:v147];
  v89 = v139;
  if (!v139)
  {
    goto LABEL_45;
  }

  if (!(v139 >> 62))
  {
    if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

LABEL_45:
    v150 = 0;
    v149 = v88;
    v151 = 0;
    v98 = v88;
    v145(&v149);

    goto LABEL_46;
  }

  if (!sub_2664E0A68())
  {
    goto LABEL_45;
  }

LABEL_37:
  if ((v89 & 0xC000000000000001) != 0)
  {
    v90 = MEMORY[0x266783B70](0, v89);
    goto LABEL_40;
  }

  if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v90 = *(v89 + 32);
LABEL_40:
    v91 = v90;
    objc_opt_self();
    v92 = swift_dynamicCastObjCClass();
    if (v92)
    {
      v93 = v92;
      v146(v136, v142, v83);
      v94 = sub_2664DFE18();
      v95 = sub_2664E06C8();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_26629C000, v94, v95, "MPMediaQueryHandler:queue set first item from MPMediaQuery entities", v96, 2u);
        v97 = v96;
        v83 = v148;
        MEMORY[0x266784AD0](v97, -1, -1);
      }

      v50(v136, v83);
      [v88 setFirstItem_];
    }

    goto LABEL_45;
  }

  __break(1u);
}

void sub_266463DE4(void *a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, uint64_t a7, unint64_t a8)
{
  v135 = a7;
  v136 = a8;
  v134 = a6;
  v133 = a5;
  v137 = a4;
  v128 = a3;
  v138 = a2;
  v139 = sub_2664DFE08();
  v9 = *(v139 - 8);
  v10 = *(v9 + 8);
  MEMORY[0x28223BE20](v139);
  v12 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v129 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v143 = &v127 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v132 = &v127 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v142 = &v127 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v141 = &v127 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v130 = &v127 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v127 = &v127 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v140 = &v127 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v131 = &v127 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v127 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v127 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v127 - v40;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v42 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    v43 = v14[2];
    v148 = v14 + 2;
    v149 = v42;
    v147 = v43;
    (v43)(v41, v42, v13);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06C8();
    v46 = os_log_type_enabled(v44, v45);
    v145 = a1;
    if (v46)
    {
      v47 = v14;
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26629C000, v44, v45, "MPMediaQueryHandler#build: building query...", v48, 2u);
      v49 = v48;
      v14 = v47;
      a1 = v145;
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    v51 = v14[1];
    v50 = v14 + 1;
    v146 = v51;
    (v51)(v41, v13);
    v152[0] = *a1;
    v151 = v152[0];
    (v147)(v39, v149, v13);

    v52 = sub_2664DFE18();
    v53 = sub_2664E06C8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_26629C000, v52, v53, "MPMediaQueryHandler#build: only playable items", v54, 2u);
      MEMORY[0x266784AD0](v54, -1, -1);
    }

    (v146)(v39, v13);
    v55 = *MEMORY[0x277CD57A0];
    LOBYTE(v150) = 1;
    v56 = v55;
    v57 = sub_2664E0DB8();
    v58 = objc_opt_self();
    v59 = [v58 predicateWithValue:v57 forProperty:v56];
    swift_unknownObjectRelease();

    MEMORY[0x266783490]();
    if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2664E04C8();
    }

    v144 = v50;
    sub_2664E0518();
    v39 = v151;
    v60 = *__swift_project_boxed_opaque_existential_1((v137 + 16), *(v137 + 40));
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v61 = qword_280F91D48;
    sub_2664DFDE8();
    sub_2664E0848();
    sub_2664DFDC8();
    sub_26648D3D0(v138 & 0x1010101, v60, &v150);
    sub_2664E0838();
    sub_2664DFDD8();
    (*(v9 + 1))(v12, v139);
    v62 = v150;
    if (v150 > 2)
    {
      v72 = v129;
      (v147)(v129, v149, v13);
      v73 = sub_2664DFE18();
      v74 = sub_2664E06C8();
      v75 = os_log_type_enabled(v73, v74);
      v9 = v144;
      v66 = v145;
      v67 = v146;
      if (v75)
      {
        v76 = swift_slowAlloc();
        *v76 = 134217984;
        *(v76 + 4) = v62;
        _os_log_impl(&dword_26629C000, v73, v74, "MPMediaQueryHandler#build: streamingAvailability: %ld allows streaming", v76, 0xCu);
        MEMORY[0x266784AD0](v76, -1, -1);
      }

      (v67)(v72, v13);
    }

    else
    {
      (v147)(v36, v149, v13);
      v63 = sub_2664DFE18();
      v64 = sub_2664E06C8();
      v65 = os_log_type_enabled(v63, v64);
      v9 = v144;
      v66 = v145;
      v67 = v146;
      if (v65)
      {
        v68 = swift_slowAlloc();
        *v68 = 134217984;
        *(v68 + 4) = v62;
        _os_log_impl(&dword_26629C000, v63, v64, "MPMediaQueryHandler#build: streamingAvailability: %ld requires local only", v68, 0xCu);
        MEMORY[0x266784AD0](v68, -1, -1);
      }

      (v67)(v36, v13);
      v69 = *MEMORY[0x277CD5790];
      LOBYTE(v150) = 1;
      v70 = v69;
      v71 = [v58 predicateWithValue:sub_2664E0DB8() forProperty:v70];
      swift_unknownObjectRelease();

      MEMORY[0x266783490]();
      if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v126 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2664E04C8();
      }

      sub_2664E0518();
      v39 = v151;
    }

    v77 = v140;
    v78 = v66[5];
    v139 = v78;
    if (!v78)
    {
      (v147)(v140, v149, v13);

      v85 = sub_2664DFE18();
      v86 = sub_2664E06E8();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v150 = v88;
        *v87 = 136315138;
        v89 = sub_2662C1744(0, &qword_280072EE8, 0x277CD5E28);
        v90 = MEMORY[0x2667834D0](v39, v89);
        v92 = sub_2662A320C(v90, v91, &v150);

        *(v87 + 4) = v92;
        v66 = v145;

        _os_log_impl(&dword_26629C000, v85, v86, "MPMediaQueryHandler#build: building from predicates: %s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v88);
        MEMORY[0x266784AD0](v88, -1, -1);
        MEMORY[0x266784AD0](v87, -1, -1);

        (v67)(v140, v13);
      }

      else
      {

        (v67)(v77, v13);
      }

      v97 = sub_26639ED50(v39);

      sub_2664603B0(v97, &qword_280072EE8, 0x277CD5E28, &qword_280072EF0);

      v98 = objc_allocWithZone(MEMORY[0x277CD5E38]);
      v99 = sub_2664E05F8();

      v12 = [v98 initWithFilterPredicates:v99 library:v128];

      if (v12)
      {
        goto LABEL_47;
      }

      goto LABEL_39;
    }

    v79 = v66[6];
    v80 = v131;
    (v147)(v131, v149, v13);

    v81 = sub_2664DFE18();
    v82 = sub_2664E06E8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 134218240;
      v84 = v78 >> 62 ? sub_2664E0A68() : *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v83 + 4) = v84;
      *(v83 + 12) = 2048;
      *(v83 + 14) = v79;

      _os_log_impl(&dword_26629C000, v81, v82, "MPMediaQueryHandler#build: building from entities:%ld and entityType:%ld", v83, 0x16u);
      MEMORY[0x266784AD0](v83, -1, -1);
    }

    else
    {
    }

    (v67)(v80, v13);
    sub_26645FC98(v78, &qword_280073790, 0x277CD5DD8);
    v93 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    v94 = sub_2664E0488();

    v12 = [v93 initWithEntities:v94 entityType:v79];

    if (v39 >> 62)
    {
      break;
    }

    v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v41)
    {
      goto LABEL_46;
    }

LABEL_29:
    v36 = 0;
    a1 = (v39 & 0xFFFFFFFFFFFFFF8);
    v14 = &selRef_setUniversalStoreIdentifiersWithBlock_;
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v95 = MEMORY[0x266783B70](v36, v39);
      }

      else
      {
        if (v36 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v95 = *(v39 + 8 * v36 + 32);
      }

      v96 = v95;
      v9 = (v36 + 1);
      if (__OFADD__(v36, 1))
      {
        break;
      }

      [v12 addFilterPredicate_];

      ++v36;
      if (v9 == v41)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  v41 = sub_2664E0A68();
  if (v41)
  {
    goto LABEL_29;
  }

LABEL_46:

  v66 = v145;
  v67 = v146;
  if (v12)
  {
LABEL_47:
    if (v66[3])
    {
      v104 = v12;
    }

    else
    {
      v105 = v66[2];
      (v147)(v130, v149, v13);
      v106 = v12;
      v107 = sub_2664DFE18();
      v108 = sub_2664E06C8();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 134217984;
        *(v109 + 4) = v105;
        _os_log_impl(&dword_26629C000, v107, v108, "MPMediaQueryHandler#build: grouping set to %ld", v109, 0xCu);
        v110 = v109;
        v66 = v145;
        MEMORY[0x266784AD0](v110, -1, -1);
      }

      (v67)(v130, v13);
      [v106 setGroupingType_];
    }

    (v147)(v141, v149, v13);
    sub_2662A7224(v152, &v150, &qword_280073BD8, &qword_2664EDCB0);

    v111 = sub_2664DFE18();
    v112 = sub_2664E06C8();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 67109120;
      *(v113 + 4) = v66[1] & 1;
      sub_2662A9238(v152, &qword_280073BD8, &qword_2664EDCB0);

      _os_log_impl(&dword_26629C000, v111, v112, "MPMediaQueryHandler#build: non-library items?:%{BOOL}d", v113, 8u);
      MEMORY[0x266784AD0](v113, -1, -1);
    }

    else
    {
      sub_2662A9238(v152, &qword_280073BD8, &qword_2664EDCB0);
    }

    (v67)(v141, v13);
    [v12 setShouldIncludeNonLibraryEntities_];
    (v147)(v142, v149, v13);
    sub_2662A7224(v152, &v150, &qword_280073BD8, &qword_2664EDCB0);

    v114 = sub_2664DFE18();
    v115 = sub_2664E06C8();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 134217984;
      *(v116 + 4) = v66[4];
      sub_2662A9238(v152, &qword_280073BD8, &qword_2664EDCB0);

      _os_log_impl(&dword_26629C000, v114, v115, "MPMediaQueryHandler#build: setting limit: %ld", v116, 0xCu);
      MEMORY[0x266784AD0](v116, -1, -1);
    }

    else
    {
      sub_2662A9238(v152, &qword_280073BD8, &qword_2664EDCB0);
    }

    v117 = v132;
    (v67)(v142, v13);
    [v12 setEntityLimit_];
    (v147)(v117, v149, v13);
    v118 = sub_2664DFE18();
    v119 = sub_2664E06C8();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_26629C000, v118, v119, "MPMediaQueryHandler#build: ignoring system filter predicates", v120, 2u);
      v121 = v120;
      v117 = v132;
      MEMORY[0x266784AD0](v121, -1, -1);
    }

    (v67)(v117, v13);
    [v12 setIgnoreSystemFilterPredicates_];
    (v147)(v143, v149, v13);
    v122 = sub_2664DFE18();
    v123 = sub_2664E06C8();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_26629C000, v122, v123, "MPMediaQueryHandler#build: completed", v124, 2u);
      MEMORY[0x266784AD0](v124, -1, -1);
    }

    (v67)(v143, v13);
    v125 = v12;
    sub_266462B24(v12, v133, v134, v135, v136);

    return;
  }

LABEL_39:
  v100 = v127;
  (v147)(v127, v149, v13);
  v101 = sub_2664DFE18();
  v102 = sub_2664E06D8();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&dword_26629C000, v101, v102, "MPMediaQueryHandler#build: unexpected nil response from initializer", v103, 2u);
    MEMORY[0x266784AD0](v103, -1, -1);
  }

  (v67)(v100, v13);
  sub_266462B24(0, v133, v134, v135, v136);
}

void sub_266465064(uint64_t a1)
{
  if (*(v1 + 51))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 50))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 49))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_266461204(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v4 | *(v1 + 48) | v3 | v2, (v1 + 56));
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 107, 7);
}

void sub_266465114(uint64_t a1)
{
  if (*(v1 + 51))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 50))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 49))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_2664616E4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v4 | *(v1 + 48) | v3 | v2, (v1 + 56));
}

id sub_266465164(id result, void *a2)
{
  if (result != 1)
  {
    v4 = result;
    v3 = a2;

    return v4;
  }

  return result;
}

uint64_t sub_2664651A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2664651F0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26646525C()
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26646537C()
{
  sub_2664E0368();
}

uint64_t sub_2664654C4()
{
  sub_2664E0368();
}

uint64_t sub_2664655F4()
{
  sub_2664E0368();
}

uint64_t sub_266465778()
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2664658BC()
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2664659D8()
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

SiriAudioSupport::STCAuditStatus_optional __swiftcall STCAuditStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t STCAuditStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6574656C706D6F63;
  v3 = 0xD000000000000013;
  v4 = 0x656C7069746C756DLL;
  if (v1 != 4)
  {
    v4 = 0x656C706D6F636E69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64656C696166;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
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

unint64_t sub_266465C74()
{
  result = qword_280073BF0;
  if (!qword_280073BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073BF0);
  }

  return result;
}

uint64_t sub_266465CD0()
{
  *v0;
  *v0;
  *v0;
  sub_2664E0368();
}

void sub_266465DEC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x6574656C706D6F63;
  v5 = 0x80000002664F3300;
  v6 = 0xD000000000000013;
  v7 = 0xEE0064656C696146;
  v8 = 0x656C7069746C756DLL;
  if (v2 != 4)
  {
    v8 = 0x656C706D6F636E69;
    v7 = 0xEA00000000006574;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x64656C696166;
  if (v2 != 1)
  {
    v10 = 0xD000000000000013;
    v9 = 0x80000002664F32E0;
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

id sub_266465F28()
{
  type metadata accessor for MediaPlayerPlaybackContextProvider();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277D57638]) init];
  if (result)
  {
    *(v0 + 16) = result;
    v2 = type metadata accessor for AdditionalPlaybackContext();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    v5 = swift_allocObject();
    v6 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
    v7 = sub_2664DF0D8();
    result = (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
    *(v5 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = MEMORY[0x277D84F90];
    *(v5 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 0;
    *(v5 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 0;
    *(v0 + 24) = v5;
    off_280073BF8 = v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static MediaPlayerPlaybackContextProvider.shared.getter()
{
  if (qword_280071C68 != -1)
  {
    swift_once();
  }
}

id sub_266466078()
{
  v1 = *(v0 + 16);
  v2 = sub_266466A84(v1);

  return v2;
}

uint64_t sub_2664660B0()
{
  v1 = *(v0 + 24);

  sub_266466830(v10);

  v2 = type metadata accessor for AdditionalPlaybackContext();
  if (swift_dynamicCast())
  {
    return v9;
  }

  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
  v8 = sub_2664DF0D8();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  result = v6;
  *(v6 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 0;
  *(v6 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 0;
  return result;
}

id sub_266466264()
{
  v1 = [*(v0 + 16) radioStationContext];

  return v1;
}

id sub_2664662B0()
{
  v1 = [*(v0 + 16) playlistContext];

  return v1;
}

id sub_2664662FC()
{
  v1 = [*(v0 + 16) linkId];

  return v1;
}

void sub_266466334(uint64_t a1)
{
  v3 = [*(v1 + 16) radioStationContext];
  if (v3)
  {
    v4 = v3;
    [v3 setLinkId_];
  }
}

id sub_2664663B0()
{
  v1 = [*(v0 + 16) radioStationContext];
  v2 = [v1 linkId];

  return v2;
}

uint64_t sub_266466408(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + 24);
  v8 = sub_2664DF0D8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a1, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
  swift_beginAccess();

  sub_266466C44(v6, v7 + v10);
  swift_endAccess();
}

uint64_t sub_266466544@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
  swift_beginAccess();
  return sub_266466CB4(v3 + v4, a1);
}

uint64_t sub_2664665A0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds);
  *(v2 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = a1;
}

id sub_26646666C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  result = [objc_allocWithZone(MEMORY[0x277D57638]) init];
  if (result)
  {
    v6 = *(v0 + 16);
    *(v0 + 16) = result;

    v7 = *(v0 + 24);
    v8 = sub_2664DF0D8();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
    swift_beginAccess();

    sub_266466C44(v4, v7 + v9);
    swift_endAccess();
    v10 = *(v7 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds);
    *(v7 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = MEMORY[0x277D84F90];

    *(v7 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 0;
    *(v7 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MediaPlayerPlaybackContextProvider.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t MediaPlayerPlaybackContextProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_266466830@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for AdditionalPlaybackContext();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
  v11 = sub_2664DF0D8();
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds;
  *(v9 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = MEMORY[0x277D84F90];
  v13 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult;
  *(v9 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 0;
  v14 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult;
  *(v9 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 0;
  v15 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
  swift_beginAccess();
  sub_266466CB4(v1 + v15, v5);
  swift_beginAccess();
  sub_266466C44(v5, v9 + v10);
  swift_endAccess();
  v16 = *(v9 + v12);
  *(v9 + v12) = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds);

  *(v9 + v13) = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult);
  *(v9 + v14) = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult);
  v18 = v20;
  v20[3] = v6;
  *v18 = v9;
  return result;
}

uint64_t AdditionalPlaybackContext.deinit()
{
  sub_2662ABE1C(v0 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds);

  return v0;
}

id sub_266466A84(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D57638]) init];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 linkId];
    [v3 setLinkId_];

    [v3 setExecutionSource_];
    [v3 setContentSource_];
    [v3 setEndpoint_];
    v5 = [a1 playlistContext];
    [v3 setPlaylistContext_];

    v6 = [a1 radioStationContext];
    [v3 setRadioStationContext_];

    return v3;
  }

  result = [objc_allocWithZone(MEMORY[0x277D57638]) init];
  v3 = result;
  if (result)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AdditionalPlaybackContext()
{
  result = qword_280073C00;
  if (!qword_280073C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266466C44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_266466CB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2664671C4()
{
  sub_2664672A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2664672A8()
{
  if (!qword_280073C10)
  {
    sub_2664DF0D8();
    v0 = sub_2664E0948();
    if (!v1)
    {
      atomic_store(v0, &qword_280073C10);
    }
  }
}

uint64_t sub_266467300()
{
  v0 = sub_2662C3A68(&unk_2877E1930);
  result = swift_arrayDestroy();
  qword_280F91C48 = v0;
  return result;
}

unint64_t sub_26646734C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EBEE0;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x80000002664F1550;
  v6 = MEMORY[0x277D839B0];
  *(inited + 48) = *(v2 + 16);
  *(inited + 72) = v6;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x80000002664F1570;
  if (*(v2 + 24) == a1 && *(v2 + 32) == a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2664E0D88();
  }

  *(inited + 96) = v7 & 1;
  *(inited + 120) = v6;
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x80000002664F1590;
  v8 = *(v2 + 48);
  v9 = MEMORY[0x277D837D0];
  *(inited + 144) = *(v2 + 40);
  *(inited + 152) = v8;
  *(inited + 168) = v9;
  *(inited + 176) = 0xD000000000000025;
  *(inited + 184) = 0x80000002664F15B0;
  v10 = *(v2 + 64);
  *(inited + 192) = *(v2 + 56);
  *(inited + 200) = v10;
  *(inited + 216) = v9;
  *(inited + 224) = 0xD000000000000025;
  *(inited + 232) = 0x80000002664F15E0;
  v11 = MEMORY[0x277D839F8];
  *(inited + 240) = *(v2 + 72);
  *(inited + 264) = v11;
  *(inited + 272) = 0xD000000000000012;
  *(inited + 280) = 0x80000002664F1610;
  v12 = *(v2 + 88);
  *(inited + 288) = *(v2 + 80);
  *(inited + 296) = v12;
  *(inited + 312) = v9;
  *(inited + 320) = 0xD000000000000012;
  *(inited + 328) = 0x80000002664F1630;
  *(inited + 336) = *(v2 + 96);
  *(inited + 360) = v11;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = 0x80000002664F1650;
  v13 = *(v2 + 112);
  *(inited + 384) = *(v2 + 104);
  *(inited + 392) = v13;
  *(inited + 408) = v9;
  *(inited + 416) = 0xD000000000000011;
  *(inited + 424) = 0x80000002664F1670;
  *(inited + 432) = *(v2 + 120);
  *(inited + 456) = v11;
  strcpy((inited + 464), "serverSignals");
  *(inited + 478) = -4864;
  v14 = *(v2 + 128);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  *(inited + 480) = v14;
  *(inited + 504) = v15;
  *(inited + 512) = 0x756F526F69647561;
  *(inited + 520) = 0xEB00000000736574;
  v16 = *(v2 + 136);
  *(inited + 552) = MEMORY[0x277D83B88];
  *(inited + 528) = v16;

  v17 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_26646762C()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[11];

  v5 = v0[14];

  v6 = v0[16];

  return swift_deallocClassInstance();
}

uint64_t sub_2664676C8()
{
  if (qword_280F8F940 != -1)
  {
    swift_once();
  }
}

uint64_t sub_266467724(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(v3 + 32);

  v6 = sub_2664475B4(a1, v4, v5);
  v8 = v7;

  v9 = *(v3 + 32);
  *(v3 + 24) = v6;
  *(v3 + 32) = v8;
}

uint64_t sub_2664677B8(void *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v91 = a3;
  v7 = sub_2664DE438();
  v88 = *(v7 - 8);
  v8 = *(v88 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v90 = sub_26632958C(1018);
  v11 = &_swift_FORCE_LOAD___swiftAVFoundation___SiriAudioSupport;
  v12 = [a1 privatePlayMediaIntentData];
  v89 = a2;
  if (!v12 || (v14 = v12, v15 = [v12 audioSearchResults], v14, !v15))
  {
    v98.value._rawValue = 0;
    v98.is_nil = 0;
    v24 = INIntent.firstPartyResultsBundleIdentifier(internalSearchResults:canUseClassical:)(v98, v13);
    object = v24._object;
    countAndFlagsBits = v24._countAndFlagsBits;
    goto LABEL_14;
  }

  sub_2663D9B50();
  v16 = sub_2664E04A8();

  v97.value._rawValue = v16;
  v97.is_nil = 0;
  v18 = INIntent.firstPartyResultsBundleIdentifier(internalSearchResults:canUseClassical:)(v97, v17);
  object = v18._object;
  countAndFlagsBits = v18._countAndFlagsBits;
  if (!v16)
  {
LABEL_14:
    v85 = 0;
    v16 = 0;
    v22 = 0;
    v92 = 1701869940;
    v93 = 0xE400000000000000;
    v23 = 1;
    goto LABEL_15;
  }

  v11 = (v16 & 0xFFFFFFFFFFFFFF8);
  if (v16 >> 62)
  {
    goto LABEL_70;
  }

  v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v92 = 1701869940;
  v93 = 0xE400000000000000;
  for (result = v19; ; result = sub_2664E0A68())
  {
    v85 = v19 != 0;
    if (result)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {

        v21 = MEMORY[0x266783B70](0, v16);
      }

      else
      {
        if (!*(v11 + 2))
        {
          __break(1u);
          return result;
        }

        v21 = *(v16 + 32);
      }

      v11 = &_swift_FORCE_LOAD___swiftAVFoundation___SiriAudioSupport;
      v22 = [v21 type];

      v23 = 0;
    }

    else
    {
      v23 = 0;
      v22 = 0;
      v11 = &_swift_FORCE_LOAD___swiftAVFoundation___SiriAudioSupport;
    }

LABEL_15:
    v96 = v22;
    v25 = sub_2664E0D48();
    MEMORY[0x2667833B0](v25);

    v83 = v93;
    v84 = v92;
    v92 = 1701869940;
    v93 = 0xE400000000000000;
    if (v23)
    {
      goto LABEL_24;
    }

    if (!(v16 >> 62 ? sub_2664E0A68() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10)))
    {
      goto LABEL_24;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {

      v27 = MEMORY[0x266783B70](0, v16);
    }

    else
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_69;
      }

      v27 = *(v16 + 32);
    }

    v28 = [v27 privateMediaItemValueData];

    if (v28)
    {
      v29 = [v28 ampConfidenceLevel];
    }

    else
    {
LABEL_24:
      v29 = 0;
    }

    v96 = v29;
    v30 = sub_2664E0D48();
    MEMORY[0x2667833B0](v30);

    v31 = v92;
    v82 = v93;
    if (v23)
    {
      goto LABEL_38;
    }

    if (v16 >> 62)
    {
      if (!sub_2664E0A68())
      {
LABEL_37:

        goto LABEL_38;
      }
    }

    else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v32 = *(v16 + 32);
      goto LABEL_31;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    v19 = sub_2664E0A68();
    v92 = 1701869940;
    v93 = 0xE400000000000000;
  }

  v32 = MEMORY[0x266783B70](0, v16);
LABEL_31:
  v33 = v32;

  v34 = [v33 privateMediaItemValueData];

  if (v34)
  {
    v35 = [v34 ampConfidenceScore];

    if (v35)
    {
      [v35 doubleValue];
    }
  }

LABEL_38:
  v36 = Double.rounded(to:)(2);
  v37 = [a1 *(v11 + 456)];
  if (v37 && (v38 = v37, v39 = [v37 internalSignals], v38, v39))
  {
    v80 = sub_2664E04A8();
  }

  else
  {
    v80 = MEMORY[0x277D84F90];
  }

  v81 = v31;
  v40 = [a1 hashedRouteUIDs];
  if (v40)
  {
    v41 = v40;
    v42 = sub_2664E04A8();

    v79 = *(v42 + 16);
  }

  else
  {
    v79 = 0;
  }

  v92 = 1701869940;
  v93 = 0xE400000000000000;
  v43 = [a1 *(v11 + 456)];
  if (v43 && (v44 = v43, v45 = [v43 privateMediaIntentData], v44, v45))
  {
    v46 = [v45 asrConfidenceLevel];
  }

  else
  {
    v46 = 0;
  }

  v96 = v46;
  v47 = sub_2664E0D48();
  MEMORY[0x2667833B0](v47);

  v48 = v92;
  v78[0] = v93;
  v49 = [a1 *(v11 + 456)];
  if (v49)
  {
    v50 = v49;
    v51 = [v49 privateMediaIntentData];

    if (v51)
    {
      v52 = [v51 asrConfidenceScore];

      if (v52)
      {
        [v52 doubleValue];
      }
    }
  }

  v53 = Double.rounded(to:)(2);
  v92 = 1701869940;
  v93 = 0xE400000000000000;
  v54 = [a1 *(v11 + 456)];
  v78[1] = a4;
  if (v54 && (v55 = v54, v56 = [v54 privateMediaIntentData], v55, v56))
  {
    v57 = [v56 nlConfidenceLevel];
  }

  else
  {
    v57 = 0;
  }

  v96 = v57;
  v58 = sub_2664E0D48();
  MEMORY[0x2667833B0](v58);

  v59 = v92;
  v60 = v93;
  v61 = [a1 *(v11 + 456)];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 privateMediaIntentData];

    v64 = v90;
    v65 = v84;
    if (v63)
    {
      v66 = [v63 nlConfidenceScore];

      v67 = v88;
      if (v66)
      {
        [v66 doubleValue];
      }
    }

    else
    {
      v67 = v88;
    }
  }

  else
  {
    v64 = v90;
    v67 = v88;
    v65 = v84;
  }

  v68 = Double.rounded(to:)(2);
  sub_2664DE428();
  sub_2664DE388();
  v70 = v69;
  (*(v67 + 8))(v10, v7);
  v71 = type metadata accessor for PrivateIntentDataSignal();
  v72 = swift_allocObject();
  *(v72 + 16) = v85;
  v73 = object;
  *(v72 + 24) = countAndFlagsBits;
  *(v72 + 32) = v73;
  v74 = v83;
  *(v72 + 40) = v65;
  *(v72 + 48) = v74;
  v75 = v82;
  *(v72 + 56) = v81;
  *(v72 + 64) = v75;
  *(v72 + 72) = v36;
  v76 = v78[0];
  *(v72 + 80) = v48;
  *(v72 + 88) = v76;
  *(v72 + 96) = v53;
  *(v72 + 104) = v59;
  *(v72 + 112) = v60;
  *(v72 + 120) = v68;
  v77 = v79;
  *(v72 + 128) = v80;
  *(v72 + 136) = v77;
  *(v72 + 144) = v70;
  if (v64)
  {

    sub_26636B8D0();
  }

  v94 = v71;
  v95 = &off_2877F2D48;
  v92 = v72;

  v91(&v92);
  __swift_destroy_boxed_opaque_existential_1Tm(&v92);
}

uint64_t sub_2664680A8(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v31 = a1;
  v3 = sub_2664DFE08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = sub_2664DE438();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE428();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C18, &qword_2664EDFF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C20, qword_2664EE000);
  v14 = sub_2664E0318();
  v25 = v15;
  v26 = v14;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v16 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v4 + 16))(v7, v9, v3);
  v17 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v18 = (v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "appSelectionSignalsSignal";
  *(v19 + 24) = 25;
  *(v19 + 32) = 2;
  (*(v4 + 32))(v19 + v17, v7, v3);
  v20 = (v19 + v18);
  v21 = v28;
  *v20 = v27;
  v20[1] = v21;

  sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2664E36F0;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_2662C4094();
  v23 = v25;
  *(v22 + 32) = v26;
  *(v22 + 40) = v23;
  sub_2664DFDC8();

  sub_2664677B8(v31, v13, sub_266352A18, v19);

  (*(v4 + 8))(v9, v3);
  return (*(v29 + 8))(v13, v30);
}

Swift::Double __swiftcall Double.rounded(to:)(Swift::Int to)
{
  v2 = v1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = sub_2664DE518();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_2664DE4B8();
  v18 = sub_2664DE4E8();
  (*(v13 + 8))(v16, v12);
  [v17 setLocale_];

  [v17 setUsesSignificantDigits_];
  [v17 setMaximumSignificantDigits_];
  v19 = sub_2664E02A8();
  [v17 setDecimalSeparator_];

  v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v21 = [v17 stringFromNumber_];

  if (v21)
  {
    v22 = sub_2664E02C8();
    v24 = v23;

    v38 = 0.0;
    if (sub_2664689C4(v22, v24))
    {

      return v38;
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      (*(v5 + 16))(v11, v29, v4);

      v30 = sub_2664DFE18();
      v31 = sub_2664E06D8();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v37 = v33;
        *v32 = 136446210;
        v34 = sub_2662A320C(v22, v24, &v37);

        *(v32 + 4) = v34;
        _os_log_impl(&dword_26629C000, v30, v31, "Double#rounded error converting rounded result %{public}s back to Double", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x266784AD0](v33, -1, -1);
        MEMORY[0x266784AD0](v32, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v11, v4);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v25, v4);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06D8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134349312;
      *(v28 + 4) = v2;
      *(v28 + 12) = 2050;
      *(v28 + 14) = to;
      _os_log_impl(&dword_26629C000, v26, v27, "Double#rounded error converting %{public}f to %{public}ld sig figs", v28, 0x16u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
  }

  return v2;
}

BOOL sub_2664689C4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_2664E0B18();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_266468ABC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_266468B3C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v32 = a4;
  v35 = a3;
  v36 = a2;
  v4 = sub_2664DE438();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  v16 = v9[2];
  v16(v14, v15, v8);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "UserContextSignal#signal got results", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  v20 = v9[1];
  v20(v14, v8);
  sub_266468EB4(v31);
  if (!v21)
  {
    v16(v30, v15, v8);
    v22 = sub_2664DFE18();
    v23 = sub_2664E06D8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26629C000, v22, v23, "UserContextSignal#signal missing, or error coercing INMediaUserContext results to type", v24, 2u);
      MEMORY[0x266784AD0](v24, -1, -1);
    }

    v20(v30, v8);
    v21 = sub_266386688(MEMORY[0x277D84F90]);
  }

  v25 = v21;
  sub_2664DE428();
  sub_2664DE388();
  v27 = v26;
  (*(v33 + 8))(v7, v34);
  v37[3] = &type metadata for UserContextSignal;
  v37[4] = &off_2877F2E40;
  v37[0] = v25;
  v37[1] = v27;
  v36(v37);
  return __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

void sub_266468EB4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073020, &unk_2664EE170);
    v2 = sub_2664E0C98();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v14 = __clz(__rbit64(v5)) | (v13 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(*(a1 + 56) + 8 * v14);
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {
      break;
    }

    v20 = v19;
    v5 &= v5 - 1;

    v21 = v18;
    v22 = sub_2662A3E98(v17, v16);
    if (v23)
    {
      v8 = (v2[6] + 16 * v22);
      v9 = v8[1];
      *v8 = v17;
      v8[1] = v16;
      v10 = v22;

      v11 = v2[7];
      v12 = *(v11 + 8 * v10);
      *(v11 + 8 * v10) = v20;

      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v22;
      v24 = (v2[6] + 16 * v22);
      *v24 = v17;
      v24[1] = v16;
      *(v2[7] + 8 * v22) = v20;
      v25 = v2[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_23;
      }

      v2[2] = v27;
      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v13 = v7;
  }
}