uint64_t sub_1A9826C64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1690, &unk_1A9992840);
  v38 = a2;
  result = sub_1A99774A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1A9977980();
      sub_1A99768D0();
      result = sub_1A99779B0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A9826F0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16C0, &unk_1A9992890);
  v36 = a2;
  result = sub_1A99774A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1A967C4DC(v25, v37);
      }

      else
      {
        sub_1A97AF7EC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1A9977980();
      sub_1A99768D0();
      result = sub_1A99779B0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1A967C4DC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_1A98271C4()
{
  v1 = v0;
  v27 = sub_1A9977460();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B2B30, qword_1A9998490);
  v4 = *v0;
  v5 = sub_1A9977490();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_1A97AF7EC(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = sub_1A967C4DC(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
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

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1A9827470(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_1A99762C0();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_1A9977490();
  v10 = v9;
  if (*(v8 + 16))
  {
    v32 = v5;
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, (v8 + 64), 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v23 *= 16;
        v28 = v37;
        v29 = *(v37 + 48);
        v30 = *(v24 + 32);
        v39 = *(*(v8 + 56) + v23);
        v30(v29 + v25, v26, v27);
        *(*(v28 + 56) + v23) = v39;

        v18 = v40;
      }

      while (v40);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v32;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v8 + 64 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v40 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

char *sub_1A98276F0()
{
  v1 = v0;
  v34 = sub_1A99762C0();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1750, &qword_1A9992928);
  v4 = *v0;
  v5 = sub_1A9977490();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1A9827970()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2B18, &qword_1A9998478);
  v2 = *v0;
  v3 = sub_1A9977490();
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

char *sub_1A9827ADC()
{
  v1 = v0;
  v36 = sub_1A99762C0();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B20, &unk_1A9998480);
  v4 = *v0;
  v5 = sub_1A9977490();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
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

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1A9827D68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1618, &qword_1A99927C8);
  v2 = *v0;
  v3 = sub_1A9977490();
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
        v18 = 40 * v17;
        sub_1A97C1030(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1A97AF7EC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1A967C4DC(v22, (*(v4 + 56) + v17));
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

void *sub_1A9827F0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AF0, &qword_1A9992850);
  v2 = *v0;
  v3 = sub_1A9977490();
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

char *sub_1A982807C()
{
  v1 = v0;
  v36 = sub_1A99762C0();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1670, &qword_1A9992820);
  v4 = *v0;
  v5 = sub_1A9977490();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_1A98282FC()
{
  v1 = v0;
  v43 = sub_1A99763B0();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1A99762C0();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1680, &unk_1A9992830);
  v6 = *v0;
  v7 = sub_1A9977490();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1A9828650()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1640, &qword_1A99927F0);
  v2 = *v0;
  v3 = sub_1A9977490();
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

void *sub_1A98287B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1690, &unk_1A9992840);
  v2 = *v0;
  v3 = sub_1A9977490();
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

void *sub_1A9828928()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16C0, &unk_1A9992890);
  v2 = *v0;
  v3 = sub_1A9977490();
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
        sub_1A97AF7EC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A967C4DC(v25, (*(v4 + 56) + v22));
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

uint64_t sub_1A9828ACC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A98296DC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1A9828B38(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1A9828B38(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A9977720();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A9976B10();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A9828D34(v7, v8, a1, v4);
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
    return sub_1A9828C30(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A9828C30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1A97F0528();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
LABEL_5:
    v9 = (v6 + 16 * v4);
    v10 = *v9;
    v11 = v9[1];
    v19 = v7;
    v12 = v8;
    while (1)
    {
      v17 = *(v12 - 2);
      v18 = *(v12 - 1);
      result = sub_1A9977180();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v8 += 2;
        v7 = v19 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v13 = *v12;
      v14 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v14;
      *(v12 - 2) = v13;
      v12 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A9828D34(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v97 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v94 = v10;
        v13 = (*v7 + 16 * v12);
        v14 = 16 * v11;
        v15 = v11;
        v16 = (*v7 + 16 * v11);
        v17 = *v16;
        v18 = v16[1];
        v19 = v16 + 5;
        v105 = *v13;
        v107 = v13[1];
        v5 = sub_1A97F0528();
        result = sub_1A9977180();
        v20 = result;
        v96 = v15;
        v21 = v15 + 2;
        while (v8 != v21)
        {
          v106 = *(v19 - 1);
          v108 = *v19;
          v101 = *(v19 - 3);
          v103 = *(v19 - 2);
          result = sub_1A9977180();
          ++v21;
          v19 += 2;
          if ((v20 == -1) == (result != -1))
          {
            v8 = v21 - 1;
            break;
          }
        }

        v11 = v96;
        if (v20 == -1)
        {
          if (v8 < v96)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return result;
          }

          if (v96 < v8)
          {
            v22 = 0;
            v23 = 16 * v8;
            v24 = v96;
            do
            {
              if (v24 != v8 + v22 - 1)
              {
                v29 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v25 = (v29 + v14);
                v26 = v29 + v23;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v24;
              --v22;
              v23 -= 16;
              v14 += 16;
            }

            while (v24 < v8 + v22);
          }
        }

        v7 = a3;
        v10 = v94;
      }

      v30 = v7[1];
      if (v8 < v30)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v30)
          {
            v30 = v11 + a4;
          }

          if (v30 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v30)
          {
            v99 = v30;
            v95 = v10;
            v92 = v6;
            v31 = *v7;
            v5 = sub_1A97F0528();
            v32 = (v31 + 16 * v8);
            v33 = v11 - v8;
            do
            {
              v34 = (v31 + 16 * v8);
              v35 = *v34;
              v36 = v34[1];
              v37 = v33;
              v38 = v32;
              do
              {
                v102 = *(v38 - 2);
                v104 = *(v38 - 1);
                result = sub_1A9977180();
                if (result != -1)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_121;
                }

                v39 = *v38;
                v40 = v38[1];
                *v38 = *(v38 - 1);
                *(v38 - 1) = v40;
                *(v38 - 2) = v39;
                v38 -= 2;
              }

              while (!__CFADD__(v37++, 1));
              ++v8;
              v32 += 2;
              --v33;
            }

            while (v8 != v99);
            v6 = v92;
            v7 = a3;
            v8 = v99;
            v10 = v95;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A97AEC88(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v43 = *(v10 + 2);
      v42 = *(v10 + 3);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        result = sub_1A97AEC88((v42 > 1), v43 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v44;
      v45 = &v10[16 * v43];
      *(v45 + 4) = v11;
      *(v45 + 5) = v8;
      v5 = *v97;
      if (!*v97)
      {
        goto LABEL_125;
      }

      v100 = v8;
      if (v43)
      {
        while (1)
        {
          v46 = v44 - 1;
          if (v44 >= 4)
          {
            break;
          }

          if (v44 == 3)
          {
            v47 = *(v10 + 4);
            v48 = *(v10 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_57:
            if (v50)
            {
              goto LABEL_104;
            }

            v63 = &v10[16 * v44];
            v65 = *v63;
            v64 = *(v63 + 1);
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_107;
            }

            v69 = &v10[16 * v46 + 32];
            v71 = *v69;
            v70 = *(v69 + 1);
            v57 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v57)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v67, v72))
            {
              goto LABEL_111;
            }

            if (v67 + v72 >= v49)
            {
              if (v49 < v72)
              {
                v46 = v44 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v73 = &v10[16 * v44];
          v75 = *v73;
          v74 = *(v73 + 1);
          v57 = __OFSUB__(v74, v75);
          v67 = v74 - v75;
          v68 = v57;
LABEL_71:
          if (v68)
          {
            goto LABEL_106;
          }

          v76 = &v10[16 * v46];
          v78 = *(v76 + 4);
          v77 = *(v76 + 5);
          v57 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v57)
          {
            goto LABEL_109;
          }

          if (v79 < v67)
          {
            goto LABEL_3;
          }

LABEL_78:
          v84 = v46 - 1;
          if (v46 - 1 >= v44)
          {
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
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v85 = *&v10[16 * v84 + 32];
          v86 = *&v10[16 * v46 + 40];
          sub_1A9829398((*v7 + 16 * v85), (*v7 + 16 * *&v10[16 * v46 + 32]), (*v7 + 16 * v86), v5);
          if (v6)
          {
          }

          if (v86 < v85)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1A98296B4(v10);
          }

          if (v84 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v87 = &v10[16 * v84];
          *(v87 + 4) = v85;
          *(v87 + 5) = v86;
          result = sub_1A9829628(v46);
          v44 = *(v10 + 2);
          if (v44 <= 1)
          {
            goto LABEL_3;
          }
        }

        v51 = &v10[16 * v44 + 32];
        v52 = *(v51 - 64);
        v53 = *(v51 - 56);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_102;
        }

        v56 = *(v51 - 48);
        v55 = *(v51 - 40);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_103;
        }

        v58 = &v10[16 * v44];
        v60 = *v58;
        v59 = *(v58 + 1);
        v57 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v57)
        {
          goto LABEL_105;
        }

        v57 = __OFADD__(v49, v61);
        v62 = v49 + v61;
        if (v57)
        {
          goto LABEL_108;
        }

        if (v62 >= v54)
        {
          v80 = &v10[16 * v46 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v57 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v57)
          {
            goto LABEL_112;
          }

          if (v49 < v83)
          {
            v46 = v44 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v100;
      if (v100 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_88:
  v5 = v10;
  v10 = *v97;
  if (!*v97)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_1A98296B4(v5);
    v5 = result;
  }

  v88 = *(v5 + 16);
  if (v88 >= 2)
  {
    while (*v7)
    {
      v89 = *(v5 + 16 * v88);
      v90 = *(v5 + 16 * (v88 - 1) + 40);
      sub_1A9829398((*v7 + 16 * v89), (*v7 + 16 * *(v5 + 16 * (v88 - 1) + 32)), (*v7 + 16 * v90), v10);
      if (v6)
      {
      }

      if (v90 < v89)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A98296B4(v5);
      }

      if (v88 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v91 = (v5 + 16 * v88);
      *v91 = v89;
      v91[1] = v90;
      result = sub_1A9829628(v88 - 1);
      v88 = *(v5 + 16);
      if (v88 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_1A9829398(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      sub_1A97F0528();
LABEL_27:
      v22 = v6 - 16;
      v5 -= 16;
      v17 = v14;
      do
      {
        v18 = v5 + 16;
        v19 = *(v17 - 2);
        v20 = *(v17 - 1);
        v17 -= 16;
        v24 = *(v6 - 2);
        v26 = *(v6 - 1);
        if (sub_1A9977180() == -1)
        {
          if (v18 != v6)
          {
            *v5 = *v22;
          }

          if (v14 <= v4 || (v6 -= 16, v22 <= v7))
          {
            v6 = v22;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v18 != v14)
        {
          *v5 = *v17;
        }

        v5 -= 16;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      sub_1A97F0528();
      while (1)
      {
        v27 = *v6;
        v28 = *(v6 + 1);
        v23 = *v4;
        v25 = *(v4 + 1);
        if (sub_1A9977180() != -1)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1A9829628(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A98296B4(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_1A98296F0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 144 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 144 * a3;
  v13 = (v7 + 32 + 144 * a2);
  v14 = 144 * v12;
  v15 = &v13[144 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1A98297C4(uint64_t a1, unint64_t a2)
{
  v79 = 47;
  v80 = 0xE100000000000000;
  v74[2] = &v79;

  v5 = sub_1A97ADE50(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A97B2400, v74, a1, a2, v4);
  v6 = sub_1A97BFD80(MEMORY[0x1E69E7CC0]);
  v7 = v5;
  if (!*(v5 + 16))
  {
    goto LABEL_19;
  }

  v69 = *(v5 + 16);
  v71 = v5;
  v72 = v6;
  v8 = *(v5 + 32);
  v9 = v7[5];
  v10 = v7[6];
  v11 = v7[7];
  v79 = 124;
  v80 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v79;

  v13 = sub_1A97AE210(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A982B490, v66, v8, v9, v10, v12);
  v68[1] = 0;
  v14 = *(v13 + 2);
  if (v14)
  {
    v79 = MEMORY[0x1E69E7CC0];
    v15 = v13;
    sub_1A97BD628(0, v14, 0);
    result = v15;
    v17 = 0;
    v18 = v79;
    v19 = (v15 + 56);
    *&v73 = v15;
    while (v17 < *(result + 16))
    {
      v20 = v14;
      v21 = *(v19 - 3);
      v22 = *(v19 - 2);
      v24 = *(v19 - 1);
      v23 = *v19;

      v25 = MEMORY[0x1AC589540](v21, v22, v24, v23);
      v27 = v26;

      v79 = v18;
      v29 = *(v18 + 16);
      v28 = *(v18 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1A97BD628((v28 > 1), v29 + 1, 1);
        v18 = v79;
      }

      ++v17;
      *(v18 + 16) = v29 + 1;
      v30 = v18 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v19 += 4;
      v14 = v20;
      result = v73;
      if (v20 == v17)
      {
        v31 = v18;

        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_10:
  *&v77 = 0xD000000000000019;
  *(&v77 + 1) = 0x80000001A99E4E60;
  sub_1A9977250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2A80, &qword_1A9998400);
  inited = swift_initStackObject();
  v73 = xmmword_1A9996D60;
  *(inited + 16) = xmmword_1A9996D60;
  *(inited + 32) = 0x6F69736E65747865;
  v70 = inited + 32;
  *(inited + 40) = 0xEE00736D6574496ELL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2A88, &qword_1A9998408);
  v33 = swift_allocObject();
  *(v33 + 16) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A90, &qword_1A9998410);
  v34 = swift_initStackObject();
  *(v34 + 16) = v73;
  *(v34 + 32) = 0x656D686361747461;
  *(v34 + 40) = 0xEB0000000073746ELL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B4F60, &qword_1A9998418);
  v35 = swift_allocObject();
  *(v35 + 16) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AE0, &qword_1A9998460);
  v36 = swift_initStackObject();
  *(v36 + 16) = v73;
  *(v36 + 32) = 0xD000000000000019;
  v37 = v36 + 32;
  *(v36 + 40) = 0x80000001A99E27C0;
  *(v36 + 48) = v31;
  v38 = sub_1A97BF200(v36);
  swift_setDeallocating();
  sub_1A97B06FC(v37, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v35 + 32) = v38;
  *(v34 + 48) = v35;
  v39 = sub_1A97BF214(v34);
  swift_setDeallocating();
  sub_1A97B06FC(v34 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  *(v33 + 32) = v39;
  *(inited + 48) = v33;
  v40 = sub_1A97BF228(inited);
  swift_setDeallocating();
  sub_1A97B06FC(v70, &qword_1EB3B2AB0, &qword_1A9998430);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2AB8, &qword_1A9998438);
  *&v77 = v40;
  sub_1A967C4DC(&v77, v76);
  v41 = v72;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v41;
  sub_1A97E34E4(v76, &v79, isUniquelyReferenced_nonNull_native);
  sub_1A97C108C(&v79);
  v6 = v75;
  result = v71;
  if (*(v71 + 16) != 2)
  {
LABEL_19:

    return v6;
  }

  if (v69 <= 2)
  {
    v43 = (v71 + 32 * v69);
    v44 = *v43;
    v45 = v43[1];
    v46 = v43[2];
    v47 = v43[3];

    v79 = 124;
    v80 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v48);
    v67 = &v79;
    v49 = sub_1A97AE210(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A982B490, v66, v44, v45, v46, v68);
    v50 = *(v49 + 2);
    if (v50)
    {
      v72 = v6;
      v79 = MEMORY[0x1E69E7CC0];
      v51 = v49;
      sub_1A97BD628(0, v50, 0);
      result = v51;
      v52 = 0;
      v53 = v79;
      v54 = (v51 + 56);
      *&v73 = result;
      while (v52 < *(result + 16))
      {
        v55 = *(v54 - 3);
        v56 = *(v54 - 2);
        v57 = *(v54 - 1);
        v58 = *v54;

        v59 = MEMORY[0x1AC589540](v55, v56, v57, v58);
        v61 = v60;

        v79 = v53;
        v63 = *(v53 + 16);
        v62 = *(v53 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_1A97BD628((v62 > 1), v63 + 1, 1);
          v53 = v79;
        }

        ++v52;
        *(v53 + 16) = v63 + 1;
        v64 = v53 + 16 * v63;
        *(v64 + 32) = v59;
        *(v64 + 40) = v61;
        v54 += 4;
        result = v73;
        if (v50 == v52)
        {

          v6 = v72;
          goto LABEL_21;
        }
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v53 = MEMORY[0x1E69E7CC0];
LABEL_21:
    *&v77 = 0xD000000000000014;
    *(&v77 + 1) = 0x80000001A99E4E80;
    sub_1A9977250();
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    *&v77 = v53;
    sub_1A967C4DC(&v77, v76);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v6;
    sub_1A97E34E4(v76, &v79, v65);
    sub_1A97C108C(&v79);
    return v75;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1A9829EB0(uint64_t a1)
{
  v51 = 0xD000000000000019;
  v52 = 0x80000001A99E4E60;
  sub_1A9977250();
  if (*(a1 + 16) && (v2 = sub_1A97BCF30(v50), (v3 & 1) != 0))
  {
    sub_1A97AF7EC(*(a1 + 56) + 32 * v2, &v51);
    sub_1A97C108C(v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1650, &qword_1A9992800);
    if (swift_dynamicCast())
    {
      v4 = v48;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_1A97C108C(v50);
    v4 = 0;
  }

  v51 = 0xD000000000000014;
  v52 = 0x80000001A99E4E80;
  sub_1A9977250();
  if (*(a1 + 16) && (v5 = sub_1A97BCF30(v50), (v6 & 1) != 0))
  {
    sub_1A97AF7EC(*(a1 + 56) + 32 * v5, &v51);
    sub_1A97C108C(v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    if (swift_dynamicCast())
    {
      v7 = v48;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_1A97C108C(v50);
    v7 = 0;
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  if (v4)
  {
    strcpy(v47, "extensionItems");
    HIBYTE(v47[1]) = -18;
    sub_1A9977250();
    if (*(v4 + 2) && (v8 = sub_1A97BCF30(v50), (v9 & 1) != 0))
    {
      sub_1A97AF7EC(*(v4 + 7) + 32 * v8, &v51);
      sub_1A97C108C(v50);

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B00, &unk_1A9998468);
      v11 = MEMORY[0x1E69E7CA0];
      if (swift_dynamicCast())
      {
        v12 = v47[0];
        v13 = *(v47[0] + 16);
        if (v13)
        {
          v14 = 0;
          v15 = v47[0] + 32;
          v16 = MEMORY[0x1E69E7CC0];
          v45 = v47[0] + 32;
          v46 = v7;
          v43 = v47[0];
          v44 = v10;
          v42 = *(v47[0] + 16);
          while (v14 < *(v12 + 16))
          {
            v17 = *(v15 + 8 * v14);
            strcpy(v47, "attachments");
            HIDWORD(v47[1]) = -352321536;

            sub_1A9977250();
            if (*(v17 + 16) && (v18 = sub_1A97BCF30(v50), (v19 & 1) != 0))
            {
              sub_1A97AF7EC(*(v17 + 56) + 32 * v18, &v51);
              sub_1A97C108C(v50);

              if (swift_dynamicCast())
              {
                v20 = v47[0];
                v21 = *(v47[0] + 16);
                if (v21)
                {
                  v22 = 32;
                  do
                  {
                    v23 = *(v20 + v22);
                    v47[0] = 0xD000000000000019;
                    v47[1] = 0x80000001A99E27C0;

                    sub_1A9977250();
                    if (*(v23 + 16) && (v24 = sub_1A97BCF30(v50), (v25 & 1) != 0))
                    {
                      sub_1A97AF7EC(*(v23 + 56) + 32 * v24, &v51);
                      sub_1A97C108C(v50);

                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
                      if (swift_dynamicCast())
                      {
                        v26 = v11;
                        v10 = v47[0];
                        v27 = *(v47[0] + 16);
                        v28 = *(v16 + 2);
                        v29 = v28 + v27;
                        if (__OFADD__(v28, v27))
                        {
                          goto LABEL_57;
                        }

                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        if (!isUniquelyReferenced_nonNull_native || v29 > *(v16 + 3) >> 1)
                        {
                          if (v28 <= v29)
                          {
                            v31 = v28 + v27;
                          }

                          else
                          {
                            v31 = v28;
                          }

                          v16 = sub_1A97AE618(isUniquelyReferenced_nonNull_native, v31, 1, v16);
                        }

                        v11 = v26;
                        if (*(v47[0] + 16))
                        {
                          if ((*(v16 + 3) >> 1) - *(v16 + 2) < v27)
                          {
                            goto LABEL_59;
                          }

                          swift_arrayInitWithCopy();

                          if (v27)
                          {
                            v32 = *(v16 + 2);
                            v33 = __OFADD__(v32, v27);
                            v34 = v32 + v27;
                            v10 = 0x80000001A99E27C0;
                            if (v33)
                            {
                              goto LABEL_60;
                            }

                            *(v16 + 2) = v34;
                          }
                        }

                        else
                        {

                          v10 = 0x80000001A99E27C0;
                          if (v27)
                          {
                            goto LABEL_58;
                          }
                        }
                      }
                    }

                    else
                    {

                      sub_1A97C108C(v50);
                    }

                    v22 += 8;
                    --v21;
                  }

                  while (v21);

                  v15 = v45;
                  v7 = v46;
                  v12 = v43;
                  v10 = v44;
                  v13 = v42;
                }

                else
                {

                  v15 = v45;
                  v7 = v46;
                }
              }
            }

            else
            {

              sub_1A97C108C(v50);
            }

            if (++v14 == v13)
            {

              goto LABEL_51;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);

          __break(1u);
          return result;
        }
      }
    }

    else
    {

      sub_1A97C108C(v50);
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_51:
  v50[0] = v16;

  sub_1A9828ACC(v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97AF974(&qword_1EB3AB6D0, &unk_1EB3B2AC0, &qword_1A9990580);
  v35 = sub_1A9976760();
  v37 = v36;

  MEMORY[0x1AC5895B0](v35, v37);

  MEMORY[0x1AC5895B0](47, 0xE100000000000000);
  if (v7)
  {
    v50[0] = v7;

    sub_1A9828ACC(v50);

    v38 = sub_1A9976760();
    v40 = v39;

    MEMORY[0x1AC5895B0](v38, v40);
  }

  return v48;
}

uint64_t sub_1A982A590()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A982A5DC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1A981E514(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_1A982A5E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1A982A610()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[3];
  v7 = sub_1A981B92C(v2, v3, v4, 1, 0, 1, v5);
  v8 = *v1;
  *v1 = v7;
}

unint64_t sub_1A982A66C()
{
  result = qword_1EB3B28E0;
  if (!qword_1EB3B28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B28E0);
  }

  return result;
}

uint64_t sub_1A982A734()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A97B2988;

  return sub_1A98242BC(v2, v3, v4);
}

uint64_t sub_1A982A7E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A97B2988;

  return sub_1A98A666C(v2, v3, v5);
}

uint64_t sub_1A982A8A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2988;

  return sub_1A98A6754(a1, v4, v5, v7);
}

uint64_t objectdestroy_113Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A982A9BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A97B2988;

  return sub_1A9823D2C(v2, v3, v4);
}

uint64_t sub_1A982AA70()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A97B2988;

  return sub_1A98235E4(v2, v3, v5, v4);
}

uint64_t sub_1A982AB30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A97B2988;

  return sub_1A9822C2C(v2, v3, v4);
}

uint64_t objectdestroy_156Tm()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A982AC2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A97B2638;

  return sub_1A9821760(v2, v3, v4);
}

uint64_t objectdestroy_117Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1A982AD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_1A99777E0() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1A982ADC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = sub_1A982AD20(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = 16 * result;
    while (v10 < v11)
    {
      v15 = *(v6 + v12 + 48);
      v16 = *(v6 + v12 + 56);
      if (v15 != a2 || v16 != a3)
      {
        v18 = *(v6 + v12 + 48);
        v19 = *(v6 + v12 + 56);
        result = sub_1A99777E0();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v20 = (v6 + 32 + 16 * v9);
            v21 = v20[1];
            v24 = *v20;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1A98296C8(v6);
            }

            v22 = v6 + 16 * v9;
            v23 = *(v22 + 40);
            *(v22 + 32) = v15;
            *(v22 + 40) = v16;

            if (v10 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v13 = v6 + v12;
            v14 = *(v6 + v12 + 56);
            *(v13 + 48) = v24;
            *(v13 + 56) = v21;

            *a1 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 16;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A982AF38(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1A982AFF8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1A97AE618(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1A982AF38(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1A982B0B8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  if (a1)
  {
    v8[4] = a1;
    v8[5] = a2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1A9820470;
    v8[3] = &block_descriptor_197;
    v5 = _Block_copy(v8);
    swift_unknownObjectRetain();
    sub_1A967C510(a1);
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
    swift_unknownObjectRetain();
    v5 = 0;
  }

  [v3 setNotificationBlock_];
  _Block_release(v5);
  return swift_unknownObjectRelease();
}

uint64_t sub_1A982B1C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2988;

  return sub_1A9819B40(a1, v4, v5, v6);
}

uint64_t sub_1A982B2D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2988;

  return sub_1A981F8D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1A982B3C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Deque._Storage._buffer.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Deque._Storage.description.getter(uint64_t a1)
{
  sub_1A99772B0();

  v2 = sub_1A9977B00();
  MEMORY[0x1AC5895B0](v2);

  MEMORY[0x1AC5895B0](0x61726F74535F2E3ELL, 0xEA00000000006567);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v3 = _DequeBufferHeader.description.getter();
  MEMORY[0x1AC5895B0](v3);

  return 0x3C6575716544;
}

uint64_t Deque._Storage.init()()
{
  if (qword_1EB3AC4E0 != -1)
  {
    swift_once();
  }

  return sub_1A99774C0();
}

uint64_t Deque._Storage.init(minimumCapacity:)()
{
  type metadata accessor for _DequeBuffer();
  sub_1A9977310();

  return sub_1A99774C0();
}

uint64_t sub_1A982B914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a4;
  v14 = a5;
  v15 = a1;
  v16 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(a6, v12, a3, &type metadata for _DequeBufferHeader, a4, v10, a5, MEMORY[0x1E69E7288], &v17);
}

Swift::Bool __swiftcall Deque._Storage.isUnique()()
{
  v1 = *(v0 + 16);
  sub_1A99774E0();

  return sub_1A99774D0();
}

Swift::Void __swiftcall Deque._Storage.ensureUnique()()
{
  v1 = *(v0 + 16);
  sub_1A99774E0();
  if ((sub_1A99774D0() & 1) == 0)
  {

    Deque._Storage._makeUniqueCopy()();
  }
}

Swift::Void __swiftcall Deque._Storage._makeUniqueCopy()()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(v0 + 16);
  v12 = v4;
  v7 = v4;
  v8 = v0;
  v9 = sub_1A982C1CC;
  v10 = &v11;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A982C04C, v6, v3, &type metadata for _DequeBufferHeader, v4, v5, v2, MEMORY[0x1E69E7288], v13);

  *v1 = v14;
}

Swift::Int __swiftcall Deque._Storage._growCapacity(to:linearly:)(Swift::Int to, Swift::Bool linearly)
{
  if (linearly)
  {
    sub_1A982DD1C(sub_1A97AD9A0, 0, v2, &type metadata for _DequeBufferHeader, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v8);
    v5 = v9;
    goto LABEL_7;
  }

  result = sub_1A982DD1C(sub_1A97AD9A0, 0, v2, &type metadata for _DequeBufferHeader, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v8);
  v7 = ceil(v9 * 1.5);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = v7;
LABEL_7:
  if (v5 <= to)
  {
    return to;
  }

  else
  {
    return v5;
  }
}

Swift::Void __swiftcall Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(Swift::Int minimumCapacity, Swift::Bool linearGrowth)
{
  v6 = *(v2 + 16);
  sub_1A99774E0();
  v7 = sub_1A99774D0();
  sub_1A982DD1C(sub_1A97AD9A0, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v8);
  if (v9 < minimumCapacity || (v7 & 1) == 0)
  {
    Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(minimumCapacity, linearGrowth);
  }
}

Swift::Void __swiftcall Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(Swift::Int minimumCapacity, Swift::Bool linearGrowth)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(v2 + 16);
  v9 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v3, &type metadata for _DequeBufferHeader, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v24);
  if (v27 >= minimumCapacity)
  {
    v15 = MEMORY[0x1EEE9AC00](v9);
    v24 = v8;
    MEMORY[0x1EEE9AC00](v15);
    v20 = v8;
    v21 = v4;
    v22 = sub_1A982C09C;
    v23 = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A982C1B4, v19, v7, &type metadata for _DequeBufferHeader, v8, v17, v4, MEMORY[0x1E69E7288], v26);
  }

  else
  {
    sub_1A99774E0();
    v10 = sub_1A99774D0();
    v11 = *v3;
    v12 = Deque._Storage._growCapacity(to:linearly:)(minimumCapacity, linearGrowth);
    v24 = v8;
    v25 = MEMORY[0x1EEE9AC00](v12);
    MEMORY[0x1EEE9AC00](v25);
    v20 = v8;
    v21 = v4;
    if (v10)
    {
      v22 = sub_1A982C10C;
      v23 = v13;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A982DE20(sub_1A982C1B4, v19, v11, &type metadata for _DequeBufferHeader, v8, v14, v4, MEMORY[0x1E69E7288], v26);
    }

    else
    {
      v22 = sub_1A982C0D0;
      v23 = v13;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A982DE20(sub_1A982C1B4, v19, v11, &type metadata for _DequeBufferHeader, v8, v18, v4, MEMORY[0x1E69E7288], v26);
    }
  }

  *v3 = v27;
}

uint64_t sub_1A982C00C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A9977320();
  a1[1] = 0;
  a1[2] = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1A982C064(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  result = v6();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_1A982C09C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Deque._UnsafeHandle.copyElements()(a1, a2, *(v3 + 16));
  *a3 = result;
  return result;
}

uint64_t sub_1A982C0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Deque._UnsafeHandle.copyElements(minimumCapacity:)(*(v3 + 24), a1, a2, *(v3 + 16));
  *a3 = result;
  return result;
}

uint64_t sub_1A982C10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Deque._UnsafeHandle.moveElements(minimumCapacity:)(*(v3 + 24), a1, a2, *(v3 + 16));
  *a3 = result;
  return result;
}

uint64_t sub_1A982C148()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Deque<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[6] = a4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A99770A0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9977A80();
  v24 = Deque.makeIterator()(a2, a3);
  v25 = v17;
  v26 = v18;
  v23 = type metadata accessor for Deque.Iterator();
  Deque.Iterator.next()(v23, v15);
  v21 = *(v8 + 48);
  v22 = v8 + 48;
  if (v21(v15, 1, a3) != 1)
  {
    v20 = *(v8 + 32);
    do
    {
      v20(v11, v15, a3);
      __swift_mutable_project_boxed_opaque_existential_1(v27, v27[3]);
      sub_1A9977790();
      (*(v8 + 8))(v11, a3);
      if (v4)
      {
        break;
      }

      Deque.Iterator.next()(v23, v15);
    }

    while (v21(v15, 1, a3) != 1);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
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

void *Deque<A>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = Deque.init()(v10);
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9977A50();
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v13 = sub_1A9977760();
    if ((v14 & 1) == 0)
    {
      v15 = v13;
      type metadata accessor for Deque();
      Deque.reserveCapacity(_:)(v15);
    }

    __swift_project_boxed_opaque_existential_1(v19, v20);
    while ((sub_1A9977780() & 1) == 0)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      sub_1A9977770();
      v16 = type metadata accessor for Deque();
      Deque.append(_:)(v9, v16);
      (*(v6 + 8))(v9, a2);
      __swift_project_boxed_opaque_existential_1(v19, v20);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v12 = v21;
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v12;
}

void *sub_1A982C6F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = Deque<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1A982C7A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  (*(v16 + 16))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1A984F65C(a1, v13, a2);
  if (v2)
  {
    v18 = *(v6 + 32);
    v18(v10, v13, v5);
    v19 = a1[4];
    if (sub_1A99777A0())
    {
      return (*(v6 + 8))(v10, v5);
    }

    else
    {
      swift_allocError();
      return (v18)(v20, v10, v5);
    }
  }

  return result;
}

uint64_t Deque.popFirst()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v13);
  if (v14 < 1)
  {
    v10 = 1;
  }

  else
  {
    sub_1A99774E0();
    v5 = sub_1A99774D0();
    if ((v5 & 1) == 0)
    {
      type metadata accessor for Deque._Storage();
      Deque._Storage._makeUniqueCopy()();
    }

    v6 = *v2;
    v7 = MEMORY[0x1EEE9AC00](v5);
    v13 = v4;
    MEMORY[0x1EEE9AC00](v7);
    v12[2] = v4;
    v12[3] = v4;
    v12[4] = sub_1A982CE14;
    v12[5] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A982CE40, v12, v6, &type metadata for _DequeBufferHeader, v4, v9, v4, MEMORY[0x1E69E7288], &v14);
    v10 = 0;
  }

  return (*(*(v4 - 8) + 56))(a2, v10, 1, v4);
}

uint64_t Deque.init(unsafeUninitializedCapacity:initializingWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = Deque._Storage.init(minimumCapacity:)();
  v17 = a4;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v13 = a4;
  v14 = sub_1A982CE68;
  v15 = &v16;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9817544, v12, v9, &type metadata for _DequeBufferHeader, a4, v10, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v21);

  if (v4)
  {
  }

  return v9;
}

uint64_t *sub_1A982CC88(uint64_t *result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  result[2] = 0;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    Deque._UnsafeHandle.buffer(for:)(0, a3, result, a2, a6);
    v12[0] = sub_1A99770E0();
    v12[1] = v11;
    a4(v12, &v13);
    return sub_1A982CD48(&v13, a3, v10, a2, v12, a6);
  }

  return result;
}

uint64_t *sub_1A982CD48(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (*result > a2)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 < 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  Deque._UnsafeHandle.buffer(for:)(0, a2, a3, a4, a6);
  sub_1A99770E0();
  v10 = v9;
  v11 = *a5;
  v12 = a5[1];
  v13 = sub_1A99770B0();
  result = sub_1A99770B0();
  if (v13)
  {
    if (!result)
    {
      goto LABEL_13;
    }

    if (v13 == result)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (!result)
  {
LABEL_8:
    if (a5[1] == v10)
    {
      *(a3 + 8) = *v8;
      return result;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t Deque.prepend(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v14);
  v6 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A99774E0();
    v7 = sub_1A99774D0();
    v8 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v14);
    if (v16 < v6 || (v7 & 1) == 0)
    {
      type metadata accessor for Deque._Storage();
      Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v6, 0);
    }

    v9 = *v2;
    v10 = MEMORY[0x1EEE9AC00](v8);
    v14 = v4;
    v15 = a1;
    MEMORY[0x1EEE9AC00](v10);
    v13[2] = v4;
    v13[3] = sub_1A982D08C;
    v13[4] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    return sub_1A982DE20(sub_1A9817714, v13, v9, &type metadata for _DequeBufferHeader, v4, v12, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v16);
  }

  return result;
}

uint64_t Deque.prepend<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a2 + 16);
  v22 = v9;
  v23 = a3;
  v24 = a4;
  v10 = *(a4 + 8);
  result = sub_1A9976A10();
  if (LOBYTE(v25[0]) == 1)
  {
    result = sub_1A9976E60();
    if (result >= 1)
    {
      v12 = result;
      result = sub_1A982DD1C(sub_1A982B85C, 0, *v4, &type metadata for _DequeBufferHeader, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v21);
      v13 = v25[0] + v12;
      if (__OFADD__(v25[0], v12))
      {
        __break(1u);
      }

      else
      {
        sub_1A99774E0();
        v14 = sub_1A99774D0();
        v15 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v5, &type metadata for _DequeBufferHeader, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v21);
        if (v25[0] < v13 || (v14 & 1) == 0)
        {
          type metadata accessor for Deque._Storage();
          Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v13, 0);
        }

        v16 = *v5;
        v17 = MEMORY[0x1EEE9AC00](v15);
        v20[8] = v9;
        v20[9] = a3;
        v20[10] = a4;
        v20[11] = v12;
        v21 = a1;
        MEMORY[0x1EEE9AC00](v17);
        v20[2] = v9;
        v20[3] = sub_1A982D50C;
        v20[4] = v18;
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
        return sub_1A982DE20(sub_1A9817714, v20, v16, &type metadata for _DequeBufferHeader, v9, v19, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v25);
      }
    }
  }

  return result;
}

{
  v5 = v4;
  v10 = *(a2 + 16);
  v22 = v10;
  v23 = a3;
  v24 = a4;
  v25 = v5;
  result = sub_1A9976A10();
  if (v26 == 1)
  {
    sub_1A982DD1C(sub_1A982B85C, 0, *v5, &type metadata for _DequeBufferHeader, v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v20);
    Deque.append<A>(contentsOf:)(a1, a2, a3, a4);
    v12 = *v5;
    v13 = sub_1A982DD1C(sub_1A982B85C, 0, *v5, &type metadata for _DequeBufferHeader, v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v20);
    v14 = MEMORY[0x1EEE9AC00](v13);
    v19[8] = v10;
    v19[9] = a3;
    v19[10] = a4;
    v19[11] = v26;
    v20 = v16;
    v21 = v15;
    MEMORY[0x1EEE9AC00](v14);
    v19[2] = v10;
    v19[3] = sub_1A982DAA0;
    v19[4] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    return sub_1A982DE20(sub_1A9817714, v19, v12, &type metadata for _DequeBufferHeader, v10, v18, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v26);
  }

  return result;
}

uint64_t sub_1A982D3A0(Sharing::_DequeSlot *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a4;
  v25 = a7;
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Deque._UnsafeHandle.availableSegments()(v12, v15, v23);
  v16 = type metadata accessor for _UnsafeMutableWrappedBuffer();
  _UnsafeMutableWrappedBuffer.suffix(_:)(a3, v16, v24);
  (*(v10 + 16))(v14, v22, a6);
  result = _UnsafeMutableWrappedBuffer.initialize<A>(from:)(v14, v16, a6, v25);
  position = a1[1].position;
  v19 = __OFADD__(position, a3);
  v20 = position + a3;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a1[1].position = v20;
    if (!__OFSUB__(0, a3))
    {
      result = Deque._UnsafeHandle.slot(_:offsetBy:)(a1[2], -a3).position;
      a1[2].position = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A982D76C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a1;
  v15 = *a3;

  sub_1A982DD1C(sub_1A982B85C, 0, v15, &type metadata for _DequeBufferHeader, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v25);

  v17 = v29 + a2;
  if (__OFADD__(v29, a2))
  {
    __break(1u);
  }

  else
  {
    v26 = a7;
    v27 = a8;
    sub_1A99774E0();
    v18 = sub_1A99774D0();
    v19 = sub_1A982DD1C(sub_1A97AD9A0, 0, *a3, &type metadata for _DequeBufferHeader, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v25);
    if (v29 < v17 || (v18 & 1) == 0)
    {
      type metadata accessor for Deque._Storage();
      Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v17, 0);
    }

    v20 = *a3;
    v21 = MEMORY[0x1EEE9AC00](v19);
    v24[8] = a4;
    v24[9] = a5;
    v24[10] = a6;
    v24[11] = v28;
    v25 = a2;
    MEMORY[0x1EEE9AC00](v21);
    v24[2] = a4;
    v24[3] = v26;
    v24[4] = v22;

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(v27, v24, v20, &type metadata for _DequeBufferHeader, a4, v23, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v29);
  }

  return result;
}

uint64_t sub_1A982DA04(Sharing::_DequeSlot *a1, uint64_t a2, Swift::Int forOffset, Swift::Int a4, uint64_t a5, uint64_t a6)
{
  result = Deque._UnsafeHandle.slot(forOffset:)(forOffset).position;
  v12.position = a1->position;
  a1[1].position = a1->position;
  a1[2].position = result;
  v13 = __OFSUB__(v12.position, a5);
  v14 = v12.position - a5;
  if (v13)
  {
    __break(1u);
    goto LABEL_6;
  }

  v15 = a4 + v14;
  if (__OFADD__(a4, v14))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v15 >= a4)
  {
    return Deque._UnsafeHandle.closeGap(offsets:)(a4, v15, a1, a2, a6);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1A982DAA0(Sharing::_DequeSlot *a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1A982DA04(a1, a2, v2[5], v2[6], v2[7], v2[2]);
}

uint64_t Deque.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v14);
  v6 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A99774E0();
    v7 = sub_1A99774D0();
    v8 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v14);
    if (v16 < v6 || (v7 & 1) == 0)
    {
      type metadata accessor for Deque._Storage();
      Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v6, 0);
    }

    v9 = *v2;
    v10 = MEMORY[0x1EEE9AC00](v8);
    v14 = v4;
    v15 = a1;
    MEMORY[0x1EEE9AC00](v10);
    v13[2] = v4;
    v13[3] = sub_1A98319D8;
    v13[4] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    return sub_1A982DE20(sub_1A9817544, v13, v9, &type metadata for _DequeBufferHeader, v4, v12, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v16);
  }

  return result;
}

uint64_t sub_1A982DD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16 + ((*(*(v15 - 8) + 80) + 16) & ~*(*(v15 - 8) + 80)), v14);
  if (v9)
  {
    return (*(v11 + 32))(a9, v14, a6);
  }

  return result;
}

uint64_t sub_1A982DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x1EEE9AC00](a1);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v22 = *(v20 + 64);
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_7;
  }

  v25 = *(*(v15 - 8) + 80);
  v26 = __CFADD__(v24, v25 + 1);
  v27 = v24 + v25 + 1;
  if (v26)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = v16(v14 + v21, v14 + ((v27 - 1) & ~v25), v18);
  if (v9)
  {
    return (*(v11 + 32))(a9, v18, a6);
  }

  return result;
}

uint64_t Deque.makeIterator()(uint64_t a1, uint64_t a2)
{

  v4 = sub_1A9833808(v3, a2);

  return v4;
}

uint64_t Deque.Iterator.next()@<X0>(_BOOL8 a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = v2[1];
  if (v5 != v2[2])
  {
    goto LABEL_4;
  }

  a1 = Deque.Iterator._swapSegment()();
  if (a1)
  {
    v5 = v2[1];
LABEL_4:
    v2[1] = v5 + 1;
    v6 = *v2;
    v7 = MEMORY[0x1EEE9AC00](a1);
    v19 = *(v3 + 16);
    v8 = v19;
    v20 = v9;
    MEMORY[0x1EEE9AC00](v7);
    v15 = v19;
    v16 = v19;
    v17 = sub_1A98338D4;
    v18 = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A982CE40, &v14, v6, &type metadata for _DequeBufferHeader, v15, v11, v15, MEMORY[0x1E69E7288], v21);
    return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  }

  v13 = *(*(*(v3 + 16) - 8) + 56);

  return v13(a2, 1, 1);
}

Swift::Void __swiftcall Deque.reserveCapacity(_:)(Swift::Int a1)
{
  v4 = *(v1 + 16);
  sub_1A99774E0();
  v5 = sub_1A99774D0();
  sub_1A982DD1C(sub_1A97AD9A0, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v6);
  if (v7 < a1 || (v5 & 1) == 0)
  {
    type metadata accessor for Deque._Storage();
    Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(a1, 1);
  }
}

uint64_t Deque.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v9 = sub_1A99770A0();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v61 = &v47 - v12;
  v64 = *(v8 - 8);
  v13 = v64[8];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v62 = &v47 - v17;
  v65 = v8;
  v66 = a3;
  v67 = a4;
  v68 = v4;
  result = sub_1A9976A10();
  if (v69[0] == 1)
  {
    v48 = v9;
    v19 = sub_1A9976A00();
    result = sub_1A982DD1C(sub_1A982B85C, 0, *v5, &type metadata for _DequeBufferHeader, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v45);
    v20 = *v69 + v19;
    if (!__OFADD__(*v69, v19))
    {
      v60 = a3;
      v58 = sub_1A99774E0();
      v21 = sub_1A99774D0();
      v22 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v5, &type metadata for _DequeBufferHeader, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v45);
      if (*v69 < v20 || (v21 & 1) == 0)
      {
        type metadata accessor for Deque._Storage();
        Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v20, 0);
      }

      v53 = v5;
      v23 = *v5;
      v24 = MEMORY[0x1EEE9AC00](v22);
      v25 = v60;
      *(&v47 - 4) = v8;
      *(&v47 - 3) = v25;
      MEMORY[0x1EEE9AC00](v24);
      v26 = AssociatedTypeWitness;
      *(&v47 - 4) = v8;
      *(&v47 - 3) = v26;
      v46 = v27;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A982DE20(sub_1A9833998, (&v47 - 6), v23, &type metadata for _DequeBufferHeader, v8, v57, v26, MEMORY[0x1E69E7288], v69);
      v59 = a4;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v29 = v61;
      v56 = AssociatedConformanceWitness;
      sub_1A9977160();
      v30 = v29;
      v54 = v64[6];
      v55 = v64 + 6;
      if (v54(v29, 1, v8) == 1)
      {
LABEL_7:
        (*(v50 + 8))(v30, v48);
        return (*(v49 + 8))(v62, AssociatedTypeWitness);
      }

      v52 = v64[4];
      v64 += 4;
      v51 = (v64 - 3);
      v31 = MEMORY[0x1E69E73E0];
      v32 = MEMORY[0x1E69E6530];
      v33 = MEMORY[0x1E69E7410];
      v52(v15, v30, v8);
      while (1)
      {
        result = sub_1A982DD1C(sub_1A982B85C, 0, v23, &type metadata for _DequeBufferHeader, v8, v31, v32, v33, v45);
        v40 = *v69 + 1;
        if (__OFADD__(*v69, 1))
        {
          break;
        }

        v41 = v53;
        v42 = sub_1A99774D0();
        v43 = v33;
        v44 = v42;
        v34 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v41, &type metadata for _DequeBufferHeader, v8, v31, v32, v43, v45);
        if (*v69 < v40 || (v44 & 1) == 0)
        {
          type metadata accessor for Deque._Storage();
          Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v40, 0);
        }

        v23 = *v41;
        v35 = MEMORY[0x1EEE9AC00](v34);
        v36 = v59;
        v37 = v60;
        *(&v47 - 6) = v8;
        *(&v47 - 5) = v37;
        *(&v47 - 4) = v36;
        *(&v47 - 3) = v15;
        MEMORY[0x1EEE9AC00](v35);
        *(&v47 - 4) = v8;
        *(&v47 - 3) = sub_1A98339BC;
        sub_1A982DE20(sub_1A9817714, (&v47 - 6), v23, &type metadata for _DequeBufferHeader, v8, v57, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v69);
        (*v51)(v15, v8);
        v38 = v61;
        sub_1A9977160();
        v30 = v38;
        v39 = v54(v38, 1, v8);
        v31 = MEMORY[0x1E69E73E0];
        v33 = MEMORY[0x1E69E7410];
        if (v39 == 1)
        {
          goto LABEL_7;
        }

        v52(v15, v30, v8);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

{
  v5 = v4;
  v9 = *(a2 + 16);
  v22 = v9;
  v23 = a3;
  v24 = a4;
  v10 = *(a4 + 8);
  result = sub_1A9976A10();
  if (LOBYTE(v25[0]) == 1)
  {
    result = sub_1A9976E60();
    if (result >= 1)
    {
      v12 = result;
      result = sub_1A982DD1C(sub_1A982B85C, 0, *v4, &type metadata for _DequeBufferHeader, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v21);
      v13 = v25[0] + v12;
      if (__OFADD__(v25[0], v12))
      {
        __break(1u);
      }

      else
      {
        sub_1A99774E0();
        v14 = sub_1A99774D0();
        v15 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v5, &type metadata for _DequeBufferHeader, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v21);
        if (v25[0] < v13 || (v14 & 1) == 0)
        {
          type metadata accessor for Deque._Storage();
          Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v13, 0);
        }

        v16 = *v5;
        v17 = MEMORY[0x1EEE9AC00](v15);
        v20[8] = v9;
        v20[9] = a3;
        v20[10] = a4;
        v20[11] = v12;
        v21 = a1;
        MEMORY[0x1EEE9AC00](v17);
        v20[2] = v9;
        v20[3] = sub_1A9834A84;
        v20[4] = v18;
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
        return sub_1A982DE20(sub_1A9817714, v20, v16, &type metadata for _DequeBufferHeader, v9, v19, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v25);
      }
    }
  }

  return result;
}

uint64_t Deque.Iterator._storage.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Deque.Iterator.init(_base:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A9833808(a1, a2);

  return v2;
}

uint64_t Deque.Iterator.init(_base:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1A983436C(a1, a2, a3);

  return v3;
}

uint64_t sub_1A982EB88@<X0>(Swift::Int forOffset@<X2>, Sharing::_DequeSlot *a2@<X0>, Swift::Int a3@<X3>, Sharing::_DequeSlot *a4@<X8>)
{
  v8.position = Deque._UnsafeHandle.slot(forOffset:)(forOffset).position;
  position = v8.position;
  v10 = a2[1].position;
  if (v10 != forOffset)
  {
    v8.position = Deque._UnsafeHandle.slot(_:offsetBy:)(a2[2], v10).position;
    if (position >= v8.position)
    {
      v8.position = a2->position;
    }
  }

  a4->position = a3;
  a4[1].position = position;
  a4[2].position = v8.position;
}

Swift::Bool __swiftcall Deque.Iterator._swapSegment()()
{
  v2 = *v1;
  v6 = *(v0 + 16);
  v7 = sub_1A9834440;
  v8 = &v9;

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A98344AC, v5, v2, &type metadata for _DequeBufferHeader, v6, v3, MEMORY[0x1E69E6370], MEMORY[0x1E69E7288], v10);

  return v10[15];
}

uint64_t Deque._copyToContiguousArray()(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A9833C80(a1, a2);

  return v2;
}

uint64_t sub_1A982ED34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a1;
  v15 = a2;
  v9 = a4;
  v10 = sub_1A983553C;
  v11 = &v12;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(sub_1A9817544, v8, a3, &type metadata for _DequeBufferHeader, a4, v6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v16);
}

uint64_t sub_1A982EDF4(void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v30 = a4;
  Deque._UnsafeHandle.segments()(a1, a2, a5, v27);
  v7 = v27[0];
  v8 = v27[1];
  sub_1A9977100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2C60, &qword_1A9998998);
  swift_getWitnessTable();
  sub_1A98354BC();
  v21 = a3;
  sub_1A9976780();
  v22[0] = v7;
  v22[1] = v8;
  v9 = v30;
  v10 = sub_1A99767C0();
  WitnessTable = swift_getWitnessTable();
  result = sub_1A991F468(v22, v23, v24, v25, v26, a5, v10, WitnessTable);
  if (__OFADD__(*v9, v8))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *v9 += v8;
  if (v29)
  {
    return result;
  }

  v13 = v28;
  if (__OFADD__(v8, v28))
  {
    goto LABEL_9;
  }

  if (v8 + v28 < v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v27[2];
  v15 = *v21;
  v16 = v21[1];
  v17 = sub_1A9977110();
  v23 = v14;
  v24 = v13;
  result = sub_1A991F468(&v23, v17, v18, v19, v20, a5, v10, WitnessTable);
  if (__OFADD__(*v9, v13))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *v9 += v13;
  return result;
}

uint64_t sub_1A982EFCC()
{
  sub_1A9976B20();
  if (!v0)
  {

    v1 = sub_1A99772D0();

    if (!v1)
    {
      sub_1A9976B60();
      swift_getWitnessTable();
      v1 = sub_1A9977830();
    }
  }

  return v1;
}

uint64_t Deque._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1A9833B90(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1A982F0D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  Deque._UnsafeHandle.segments()(a1, a2, a5, &v39);
  v9 = v40;
  if (v40 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v40;
  }

  v37 = a3;
  v38 = a4;
  *&v33 = v10;
  sub_1A9977100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2C60, &qword_1A9998998);
  swift_getWitnessTable();
  sub_1A98354BC();
  sub_1A9976780();
  v44 = v35;
  sub_1A99767C0();
  swift_getWitnessTable();
  sub_1A9976EE0();
  v32[0] = v33;
  v32[1] = v34;
  v11 = sub_1A9977960();
  WitnessTable = swift_getWitnessTable();
  result = sub_1A991F468(v32, v44, *(&v35 + 1), v36, *(&v36 + 1), a5, v11, WitnessTable);
  if (v9 >= a4 || (v43 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (__OFSUB__(a4, v10))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v44 = WitnessTable;
  v14 = v42;
  if (a4 - v10 >= v42)
  {
    v15 = v42;
  }

  else
  {
    v15 = a4 - v10;
  }

  if (__OFADD__(v10, v15))
  {
    goto LABEL_15;
  }

  if (v10 + v15 >= v10)
  {
    v16 = v41;
    v10 += v15;
    v17 = sub_1A9977110();
    v30 = v18;
    v31 = v17;
    v28 = v19;
    v21 = v20;
    *&v33 = v16;
    *(&v33 + 1) = v14;
    sub_1A9976EE0();
    v33 = v35;
    v34 = v36;
    sub_1A991F468(&v33, v31, v30, v28, v21, a5, v11, v44);
LABEL_13:

    v23 = sub_1A983436C(v22, v10, a5);
    v25 = v24;
    v27 = v26;

    *a6 = v23;
    a6[1] = v25;
    a6[2] = v27;
    a6[3] = v10;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t Deque.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a2;
  v15 = a4;
  v16 = a5;
  v17 = a1;
  v10 = a4;
  v11 = sub_1A99770A0();
  v12 = sub_1A98344D8;
  v13 = &v14;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(sub_1A9833998, v9, a3, &type metadata for _DequeBufferHeader, a4, v7, v11, MEMORY[0x1E69E7288], &v19);
}

uint64_t sub_1A982F448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  result = a1[2];
  v12 = a1[1] + result;
  if (*a1 < v12)
  {
    v13 = 1;
    return (*(*(a5 - 8) + 56))(a6, v13, 1, a5);
  }

  if (v12 < result)
  {
    __break(1u);
    return result;
  }

  v14 = a5;
  v15 = Deque._UnsafeHandle.buffer(for:)(result, v12, a1, a2, a4);
  result = a3(v15);
  if (!v6)
  {
    v13 = 0;
    a5 = v14;
    return (*(*(a5 - 8) + 56))(a6, v13, 1, a5);
  }

  return result;
}

uint64_t sub_1A982F514@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = Deque.makeIterator()(*v2, *(a1 + 16));
  v6 = v5;
  v8 = v7;

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  return result;
}

uint64_t sub_1A982F570(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1A982F5CC(uint64_t a1)
{
  v2 = sub_1A9833C80(*v1, *(a1 + 16));

  return v2;
}

uint64_t sub_1A982F608(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1A9833B90(a2, a3, *v4, *(a4 + 16));
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  return v12;
}

uint64_t Deque.indices.getter(uint64_t a1, uint64_t a2)
{
  result = sub_1A982DD1C(sub_1A982B85C, 0, a1, &type metadata for _DequeBufferHeader, a2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v3);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall Deque.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Deque.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Int __swiftcall Deque.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Deque.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

Swift::Int __swiftcall Deque.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall Deque.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = sub_1A9834318(_, offsetBy, limitedBy);
  v5 = v4 & 1;
  result.value = v3;
  result.is_nil = v5;
  return result;
}

Swift::Int __swiftcall Deque.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t Deque.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = sub_1A982DD1C(sub_1A982B85C, 0, a2, &type metadata for _DequeBufferHeader, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v10);
    if (v12 > v5)
    {
      v6 = MEMORY[0x1EEE9AC00](result);
      v10 = a3;
      v11 = v5;
      MEMORY[0x1EEE9AC00](v6);
      v9[2] = a3;
      v9[3] = a3;
      v9[4] = sub_1A98344F8;
      v9[5] = v7;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
      return sub_1A982DE20(sub_1A9835628, v9, a2, &type metadata for _DequeBufferHeader, a3, v8, a3, MEMORY[0x1E69E7288], &v12);
    }
  }

  __break(1u);
  return result;
}

uint64_t Deque.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A9833D28(a1, a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void (*Deque.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[2] = v3;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  if (v7)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v11 + 64));
  }

  v13 = result;
  v9[5] = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1A982DD1C(sub_1A982B85C, 0, *v3, &type metadata for _DequeBufferHeader, v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v14);
    if (*v9 > a2)
    {
      v9[1] = Deque._prepareForModify(at:)(v13, a2, a3);
      return sub_1A982FAF4;
    }
  }

  __break(1u);
  return result;
}

void sub_1A982FAF4(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[4];
  v2 = (*a1)[5];
  v4 = (*a1)[3];
  sub_1A982FD44((*a1)[2], (v1 + 1), v2, v1[3]);
  (*(v3 + 8))(v2, v4);
  free(v2);

  free(v1);
}

uint64_t Deque._prepareForModify(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v19[-v8 - 8];
  sub_1A99774E0();
  v10 = sub_1A99774D0();
  if ((v10 & 1) == 0)
  {
    type metadata accessor for Deque._Storage();
    Deque._Storage._makeUniqueCopy()();
  }

  v11 = *v3;
  v12 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  *(&v18 - 4) = v5;
  *(&v18 - 3) = TupleTypeMetadata2;
  v17 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9835610, (&v18 - 6), v11, &type metadata for _DequeBufferHeader, v5, v14, TupleTypeMetadata2, MEMORY[0x1E69E7288], v19);
  v15 = *v9;
  (*(*(v5 - 8) + 32))(a1, &v9[*(TupleTypeMetadata2 + 48)], v5);
  return v15;
}

uint64_t sub_1A982FD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v9;
  (*(v5 + 16))(v8, v11, v12);
  v13 = type metadata accessor for Deque();
  Deque._finalizeModify(_:_:)(v10, v8, v13);
  return (*(v5 + 8))(v8, a4);
}

uint64_t sub_1A982FE40@<X0>(Swift::Int forOffset@<X2>, uint64_t a2@<X3>, Swift::Int *a3@<X8>)
{
  position = Deque._UnsafeHandle.slot(forOffset:)(forOffset).position;
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  *a3 = position;
  v7 = *(*(a2 - 8) + 72);
  return sub_1A9977090();
}

uint64_t Deque._finalizeModify(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  v13 = v5;
  v14 = a1;
  v15 = a2;
  v9 = v5;
  v10 = sub_1A9834594;
  v11 = &v12;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(sub_1A9817714, v8, v4, &type metadata for _DequeBufferHeader, v5, v6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v16);
}

uint64_t sub_1A982FF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a5 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v10 + *(v9 + 72) * v11;
  (*(v9 + 16))(v8, v13, v14);
  return sub_1A9815B18(v8, v12, a5);
}

uint64_t Deque.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1A982DD1C(sub_1A982B85C, 0, a3, &type metadata for _DequeBufferHeader, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v5);
    if (v6 >= a2)
    {
      type metadata accessor for Deque();

      swift_getWitnessTable();
      sub_1A9977940();
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9830170(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a3;
  v6 = a3[1];
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = type metadata accessor for Deque();

  sub_1A98345B4(v7, v8, v9, v5, v6, v10);
}

uint64_t Deque.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5, uint64_t a6)
{
  sub_1A98345B4(a1, a2, a3, a4, a5, a6);
}

uint64_t Deque.replaceSubrange<A>(_:with:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A9833ECC(a1, a2, a3, a4, a5, a6);
  v8 = *(*(a5 - 8) + 8);

  return v8(a3, a5);
}

void (*Deque.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[5] = a4;
  v9[6] = v4;
  v9[3] = a2;
  v9[4] = a3;
  *v9 = Deque.subscript.getter(a2, a3, *v4, *(a4 + 16));
  v10[1] = v11;
  v10[2] = v12;
  return sub_1A9830348;
}

void sub_1A9830348(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[5];
  v5 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[2];
  if (a2)
  {
    v10 = (*a1)[2];

    sub_1A98345B4(v3, v4, v9, v8, v7, v6);

    v11 = v2[2];
  }

  else
  {
    sub_1A98345B4(**a1, v4, v9, v8, v7, v6);
  }

  free(v2);
}

void *sub_1A9830400@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_1A9830418(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t sub_1A9830430@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, *(a1 + 16), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v5);
  *a2 = v6;
  return result;
}

void (*sub_1A98304B4(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_1A9830588(v7, *a2, *v3, *(a3 + 16));
  return sub_1A9830540;
}

void sub_1A9830540(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1A9830588(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v8 = *(a4 - 8);
  *a1 = a4;
  a1[1] = v8;
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  Deque.subscript.getter(a2, a3, a4);
  return sub_1A983065C;
}

void sub_1A983065C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1A98306A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Deque.subscript.getter(*a1, a1[1], *v3, *(a2 + 16));
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t sub_1A98306E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, *(a1 + 16), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v5);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = 0;
    a2[1] = v6;
  }

  return result;
}

void *sub_1A9830870@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1A9830888(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

Swift::Void __swiftcall Deque.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *v3;
  v7 = *(v2 + 16);
  sub_1A982DD1C(sub_1A982B85C, 0, *v3, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v14);
  if (a2 < 0 || v15 <= a1)
  {
    goto LABEL_9;
  }

  sub_1A982DD1C(sub_1A982B85C, 0, v6, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v14);
  if (v15 <= a2)
  {
LABEL_10:
    __break(1u);
    return;
  }

  sub_1A99774E0();
  v8 = sub_1A99774D0();
  if ((v8 & 1) == 0)
  {
    type metadata accessor for Deque._Storage();
    Deque._Storage._makeUniqueCopy()();
  }

  v9 = *v3;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v13[8] = v7;
  v13[9] = a1;
  v14 = a2;
  MEMORY[0x1EEE9AC00](v10);
  v13[2] = v7;
  v13[3] = sub_1A98346DC;
  v13[4] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9817714, v13, v9, &type metadata for _DequeBufferHeader, v7, v12, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v15);
}

uint64_t sub_1A9830AA8(uint64_t *a1, int a2, Swift::Int forOffset, Swift::Int a4)
{
  Deque._UnsafeHandle.slot(forOffset:)(forOffset);
  Deque._UnsafeHandle.slot(forOffset:)(a4);
  v6 = *a1;
  sub_1A99770C0();
  return sub_1A99770D0();
}

uint64_t Deque.withContiguousMutableStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  sub_1A99774E0();
  v9 = sub_1A99774D0();
  if ((v9 & 1) == 0)
  {
    type metadata accessor for Deque._Storage();
    Deque._Storage._makeUniqueCopy()();
  }

  v10 = *v4;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v18[2] = v8;
  v18[3] = a4;
  v18[4] = a1;
  v18[5] = a2;
  MEMORY[0x1EEE9AC00](v11);
  v14[2] = v8;
  v15 = sub_1A99770A0();
  v16 = sub_1A98346FC;
  v17 = v18;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(sub_1A9835610, v14, v10, &type metadata for _DequeBufferHeader, v8, v12, v15, MEMORY[0x1E69E7288], &v19);
}

uint64_t sub_1A9830CB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  result = a1[2];
  v13 = a1[1] + result;
  if (*a1 < v13)
  {
    return (*(*(a5 - 8) + 56))(a6, 1, 1, a5);
  }

  if (v13 < result)
  {
    __break(1u);
  }

  else
  {
    Deque._UnsafeHandle.buffer(for:)(result, v13, a1, a2, a4);
    v14 = sub_1A99770E0();
    v16 = v15;
    v17[0] = v14;
    v17[1] = v15;
    a3(v17);
    if (!v6)
    {
      (*(*(a5 - 8) + 56))(a6, 0, 1, a5);
    }

    return sub_1A9830DF8(v17, v14, v16);
  }

  return result;
}

uint64_t sub_1A9830DF8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_1A99770B0();
  result = sub_1A99770B0();
  if (!v7)
  {
LABEL_5:
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!result)
  {
    goto LABEL_8;
  }

  if (v7 != result)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  if (a1[1] == a3)
  {
    return result;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

void (*sub_1A9830EB4(uint64_t **a1, uint64_t *a2, uint64_t a3))(uint64_t **a1)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[2] = v3;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  if (v7)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v11 + 64));
  }

  v13 = result;
  v9[5] = result;
  v14 = *a2;
  if (*a2 < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1A982DD1C(sub_1A982B85C, 0, *v3, &type metadata for _DequeBufferHeader, v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v15);
    if (v14 < *v9)
    {
      v9[1] = Deque._prepareForModify(at:)(v13, v14, a3);
      return sub_1A982FAF4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9831028(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_1A98345B4(*a1, a1[1], a1[2], *a2, a2[1], a3);
}

void (*sub_1A9831078(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 24) = v3;
  *(v7 + 32) = a3;
  v9 = *a2;
  v10 = a2[1];
  v8[5] = *a2;
  v8[6] = v10;
  *v8 = Deque.subscript.getter(v9, v10, *v3, *(a3 + 16));
  v8[1] = v11;
  v8[2] = v12;
  return sub_1A9831114;
}

void sub_1A9831114(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[5];
  v5 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v9 = (*a1)[2];
  if (a2)
  {
    v10 = (*a1)[2];

    sub_1A98345B4(v3, v4, v9, v6, v5, v8);

    v11 = v2[2];
  }

  else
  {
    sub_1A98345B4(**a1, v4, v9, v6, v5, v8);
  }

  free(v2);
}

Swift::Int sub_1A98312A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v53 = a8;
  v59 = a6;
  v45 = a4;
  v62 = a3;
  v55 = a2;
  v61 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = sub_1A9977430();
  v51 = *(v17 - 8);
  v52 = v17;
  v18 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v50 = &v44 - v19;
  v58 = a13;
  v56 = a12;
  v57 = swift_getAssociatedTypeWitness();
  v20 = *(v57 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v23 = &v44 - v22;
  v24 = sub_1A9977440();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  result = MEMORY[0x1EEE9AC00](v24);
  v29 = &v44 - v28;
  v54 = a5;
  if (a5 < v62)
  {
    __break(1u);
    goto LABEL_11;
  }

  v30 = *(AssociatedConformanceWitness + 8);
  result = sub_1A99767A0();
  if ((result & 1) == 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v48 = v30;
  v60 = a11;
  v31 = *(AssociatedTypeWitness - 8);
  v32 = *(v31 + 16);
  v49 = a7;
  v46 = v31 + 16;
  v47 = v32;
  v32(v29, a7, AssociatedTypeWitness);
  swift_getWitnessTable();
  sub_1A9976F00();
  (*(v25 + 8))(v29, v24);
  v33 = v57;
  v34 = swift_getAssociatedConformanceWitness();
  v36 = v54;
  v35 = v55;
  Deque._UnsafeHandle.uncheckedReplaceInPlace<A>(inOffsets:with:)(v62, v54, v23, &v61->position, v55, v60, v33, v34);
  v37 = *(v20 + 8);
  v62 = v23;
  result = v37(v23, v33);
  v38 = v53;
  if (v53 < 0)
  {
    if (v45 < v36)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    return Deque._UnsafeHandle.uncheckedRemove(offsets:)(v36, v45, v61, v35, v60);
  }

  else if (v53)
  {
    v39 = v49;
    result = sub_1A99767A0();
    if (result)
    {
      v40 = v34;
      v41 = v50;
      v47(v50, v39, AssociatedTypeWitness);
      v42 = v52;
      swift_getWitnessTable();
      v43 = v62;
      sub_1A9976F00();
      (*(v51 + 8))(v41, v42);
      return Deque._UnsafeHandle.uncheckedInsert<A>(contentsOf:count:atOffset:)(v43, v38, v36, v61, v35, v60, v57, v40);
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t Deque.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A983471C(a1, a2, a3);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v5;
}

uint64_t Deque.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1A98317A8(a1, a2, a3, a4, sub_1A9834844);
}

{
  return sub_1A98317A8(a1, a2, a3, a4, sub_1A98348B4);
}

uint64_t sub_1A98317A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5();
  (*(*(a3 - 8) + 8))(a1, a3);
  return v7;
}

uint64_t sub_1A9831814(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    Deque._UnsafeHandle.buffer(for:)(0, a3, result, a2, a5);
    v12 = sub_1A99770E0();
    v14 = v13;
    MEMORY[0x1EEE9AC00](v12);
    v15 = *(a7 + 8);
    result = sub_1A9976A10();
    if (v17 == 1)
    {
      result = _sSr7SharingE13initializeAll14fromContentsOfyqd___t7ElementQyd__RszSlRd__lF_0(a4, v12, v14, a5, a6, a7);
    }

    *(v16 + 8) = a3;
  }

  return result;
}

uint64_t sub_1A9831944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[1] = a2;
  v11[0] = a1;
  v8 = sub_1A99767C0();
  WitnessTable = swift_getWitnessTable();
  return _sSr7SharingE13initializeAll14fromContentsOfyqd___t7ElementQyd__RszSlRd__lF_0(v11, a3, a4, a5, v8, WitnessTable);
}

uint64_t sub_1A9831A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  Deque._UnsafeHandle.availableSegments()(v12, v15, v22);
  (*(v10 + 16))(v14, a2, a3);
  v16 = type metadata accessor for _UnsafeMutableWrappedBuffer();
  result = _UnsafeMutableWrappedBuffer.initialize<A>(fromSequencePrefix:)(a5, v14, v16, a3, a4);
  v18 = *(a1 + 8);
  v19 = __OFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v20;
  }

  return result;
}

uint64_t sub_1A9831B40(Swift::Int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Deque._UnsafeHandle.uncheckedAppend(_:)(a3, a1, a2, a5);
  Deque._UnsafeHandle.availableSegments()(a1, a5, v15);
  v8 = type metadata accessor for _UnsafeMutableWrappedBuffer();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = _UnsafeMutableWrappedBuffer.initialize<A>(fromPrefixOf:)(a4, v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v12 = a1[1];
  v13 = __OFADD__(v12, result);
  v14 = v12 + result;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a1[1] = v14;
  }

  return result;
}

uint64_t sub_1A9831EDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a1;
  v15 = *a3;

  sub_1A982DD1C(sub_1A982B85C, 0, v15, &type metadata for _DequeBufferHeader, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v25);

  v17 = v29 + a2;
  if (__OFADD__(v29, a2))
  {
    __break(1u);
  }

  else
  {
    v26 = a7;
    v27 = a8;
    sub_1A99774E0();
    v18 = sub_1A99774D0();
    v19 = sub_1A982DD1C(sub_1A97AD9A0, 0, *a3, &type metadata for _DequeBufferHeader, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v25);
    if (v29 < v17 || (v18 & 1) == 0)
    {
      type metadata accessor for Deque._Storage();
      Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v17, 0);
    }

    v20 = *a3;
    v21 = MEMORY[0x1EEE9AC00](v19);
    v24[8] = a4;
    v24[9] = a5;
    v24[10] = a6;
    v24[11] = v28;
    v25 = a2;
    MEMORY[0x1EEE9AC00](v21);
    v24[2] = a4;
    v24[3] = v26;
    v24[4] = v22;

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(v27, v24, v20, &type metadata for _DequeBufferHeader, a4, v23, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v29);
  }

  return result;
}

uint64_t sub_1A983212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Deque._UnsafeHandle.availableSegments()(v14, v17, v23);
  v18 = type metadata accessor for _UnsafeMutableWrappedBuffer();
  _UnsafeMutableWrappedBuffer.prefix(_:)(a3, v18, v24);
  (*(v12 + 16))(v16, a4, a6);
  result = _UnsafeMutableWrappedBuffer.initialize<A>(from:)(v16, v18, a6, a7);
  v20 = *(a1 + 8);
  v21 = __OFADD__(v20, a3);
  v22 = v20 + a3;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v22;
  }

  return result;
}

uint64_t Deque.insert(_:at:)(uint64_t result, Swift::Int a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = *v3;
  v7 = *(a3 + 16);
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v3, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v16);
  if (v18 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1A982DD1C(sub_1A982B85C, 0, v6, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v16);
  v8 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_1A99774E0();
  v9 = sub_1A99774D0();
  v10 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v3, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v16);
  if (v18 < v8 || (v9 & 1) == 0)
  {
    type metadata accessor for Deque._Storage();
    Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v8, 0);
  }

  v11 = *v3;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v15[8] = v7;
  v15[9] = a2;
  v16 = v5;
  v17 = v3;
  MEMORY[0x1EEE9AC00](v12);
  v15[2] = v7;
  v15[3] = sub_1A9834AB0;
  v15[4] = v13;

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9817714, v15, v11, &type metadata for _DequeBufferHeader, v7, v14, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v18);
}

uint64_t sub_1A98324FC(Swift::Int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v16)
  {
    return Deque._UnsafeHandle.uncheckedPrepend(_:)(a4, a1, a2, a6);
  }

  v17 = *v13;

  sub_1A982DD1C(sub_1A982B85C, 0, v17, &type metadata for _DequeBufferHeader, a6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v20);

  if (v22 == a3)
  {
    return Deque._UnsafeHandle.uncheckedAppend(_:)(a4, a1, a2, a6);
  }

  Deque._UnsafeHandle.openGap(ofSize:atOffset:)(1, a3, a1, a6, &v22);
  result = sub_1A99770B0();
  if (result)
  {
    v19 = result;
    (*(v11 + 16))(v15, a4, a6);
    return sub_1A9815B18(v15, v19, a6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Deque.insert<A>(contentsOf:at:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A9834AD0(a1, a2, a3, a4, a5);
  v7 = *(*(a4 - 8) + 8);

  return v7(a1, a4);
}

uint64_t sub_1A9832740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(*(a7 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19, v20);
  return Deque._UnsafeHandle.uncheckedInsert<A>(contentsOf:count:atOffset:)(v17, a4, a5, a1, a2, a6, a7, a8);
}

uint64_t Deque.remove(at:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = *(a2 + 16);
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v11);
  if (v12 <= v3)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1A99774E0();
  v5 = sub_1A99774D0();
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Deque._Storage();
    Deque._Storage._makeUniqueCopy()();
  }

  v6 = *v2;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v10[8] = v4;
  v10[9] = v2;
  v11 = v3;
  MEMORY[0x1EEE9AC00](v7);
  v10[2] = v4;
  v10[3] = v4;
  v10[4] = sub_1A9834D80;
  v10[5] = v8;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A982CE40, v10, v6, &type metadata for _DequeBufferHeader, v4, v9, v4, MEMORY[0x1E69E7288], &v12);
}

Swift::Int sub_1A98329FC(Sharing::_DequeSlot *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  result = Deque.subscript.getter(a4, *a3, a5);
  v10 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
    __break(1u);
  }

  else if (v10 >= a4)
  {
    return Deque._UnsafeHandle.uncheckedRemove(offsets:)(a4, v10, a1, a2, a5);
  }

  __break(1u);
  return result;
}

uint64_t Deque.removeSubrange(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = *(a3 + 16);
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v13);
  if (v14 < a2)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1A99774E0();
  v7 = sub_1A99774D0();
  if ((v7 & 1) == 0)
  {
    type metadata accessor for Deque._Storage();
    Deque._Storage._makeUniqueCopy()();
  }

  v8 = *v3;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v12[8] = v6;
  v12[9] = v5;
  v13 = a2;
  MEMORY[0x1EEE9AC00](v9);
  v12[2] = v6;
  v12[3] = sub_1A9834DA0;
  v12[4] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(sub_1A9817714, v12, v8, &type metadata for _DequeBufferHeader, v6, v11, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v14);
}

uint64_t Deque._customRemoveLast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *v2;
  swift_getWitnessTable();
  result = sub_1A9976EF0();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a1 + 16);
    sub_1A99774E0();
    v7 = sub_1A99774D0();
    if ((v7 & 1) == 0)
    {
      type metadata accessor for Deque._Storage();
      Deque._Storage._makeUniqueCopy()();
    }

    v8 = *v2;
    v9 = MEMORY[0x1EEE9AC00](v7);
    v12[8] = v6;
    MEMORY[0x1EEE9AC00](v9);
    v12[2] = v6;
    v12[3] = v6;
    v12[4] = sub_1A9834DD8;
    v12[5] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9835628, v12, v8, &type metadata for _DequeBufferHeader, v6, v11, v6, MEMORY[0x1E69E7288], &v13);
    return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }

  return result;
}

Swift::Bool __swiftcall Deque._customRemoveLast(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = a1;
  v4 = *(v1 + 16);
  LOBYTE(a1) = sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v12);
  if (v14 < v3)
  {
LABEL_7:
    __break(1u);
    return a1;
  }

  sub_1A99774E0();
  v5 = sub_1A99774D0();
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Deque._Storage();
    Deque._Storage._makeUniqueCopy()();
  }

  v6 = *v2;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v12 = v4;
  v13 = v3;
  MEMORY[0x1EEE9AC00](v7);
  v11[2] = v4;
  v11[3] = sub_1A9834E04;
  v11[4] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9817714, v11, v6, &type metadata for _DequeBufferHeader, v4, v9, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v14);
  LOBYTE(a1) = 1;
  return a1;
}

uint64_t Deque.removeFirst()(uint64_t a1)
{
  v11 = *v1;
  swift_getWitnessTable();
  result = sub_1A9976EF0();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 16);
    sub_1A99774E0();
    v5 = sub_1A99774D0();
    if ((v5 & 1) == 0)
    {
      type metadata accessor for Deque._Storage();
      Deque._Storage._makeUniqueCopy()();
    }

    v6 = *v1;
    v7 = MEMORY[0x1EEE9AC00](v5);
    v10[8] = v4;
    MEMORY[0x1EEE9AC00](v7);
    v10[2] = v4;
    v10[3] = v4;
    v10[4] = sub_1A982CE14;
    v10[5] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    return sub_1A982DE20(sub_1A9835628, v10, v6, &type metadata for _DequeBufferHeader, v4, v9, v4, MEMORY[0x1E69E7288], &v11);
  }

  return result;
}

Swift::Void __swiftcall Deque.removeFirst(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v1 + 16);
  sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v11);
  if (v13 < a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1A99774E0();
  v5 = sub_1A99774D0();
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Deque._Storage();
    Deque._Storage._makeUniqueCopy()();
  }

  v6 = *v2;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v11 = v4;
  v12 = a1;
  MEMORY[0x1EEE9AC00](v7);
  v10[2] = v4;
  v10[3] = sub_1A9834E38;
  v10[4] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9817714, v10, v6, &type metadata for _DequeBufferHeader, v4, v9, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v13);
}

Swift::Void __swiftcall Deque.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v3 = v1;
  if (keepingCapacity)
  {
    v4 = *(v1 + 16);
    sub_1A99774E0();
    v5 = sub_1A99774D0();
    if ((v5 & 1) == 0)
    {
      type metadata accessor for Deque._Storage();
      Deque._Storage._makeUniqueCopy()();
    }

    v6 = *v2;
    v7 = MEMORY[0x1EEE9AC00](v5);
    v12[8] = v4;
    MEMORY[0x1EEE9AC00](v7);
    v12[2] = v4;
    v12[3] = sub_1A9834E6C;
    v12[4] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9817714, v12, v6, &type metadata for _DequeBufferHeader, v4, v9, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v13);
  }

  else
  {
    v10 = *v2;

    v11 = *(v3 + 16);
    *v2 = Deque._Storage.init()();
  }
}

uint64_t sub_1A98333B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Deque.init()(*(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1A98333E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A9833ECC(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t sub_1A983346C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a3 + 16);
  v7 = sub_1A983471C(a1, a2, v6);
  result = (*(*(v6 - 8) + 8))(a1, v6);
  *a4 = v7;
  return result;
}

uint64_t sub_1A98334DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = sub_1A9834844(a1, *(a4 + 16), a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a5 = v8;
  return result;
}

uint64_t sub_1A9833558(uint64_t a1, uint64_t a2)
{
  Deque.append(_:)(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1A98335C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Deque.append<A>(contentsOf:)(a1, a4, a2, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t sub_1A9833658(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void))
{
  a5(a1, *a2);
  v7 = *(*(*(a3 + 16) - 8) + 8);

  return v7(a1);
}

uint64_t sub_1A98336CC(uint64_t a1, Swift::Int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A9834AD0(a1, *a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a1, a3);
}

uint64_t sub_1A9833808(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  v13 = a1;
  v7 = a2;
  v8 = type metadata accessor for Deque.Iterator();
  v9 = sub_1A98355B4;
  v10 = &v11;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9835610, v6, a1, &type metadata for _DequeBufferHeader, a2, v4, v8, MEMORY[0x1E69E7288], v14);
  return v15;
}

uint64_t sub_1A98339BC(Swift::Int *a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1A9831B40(a1, a2, v2[5], v2[6], v2[2]);
}

uint64_t sub_1A98339E0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1A9976770();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_1A9976F50() + 36);
  result = sub_1A9976770();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9833AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1A9976770();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9833B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v9 = a4;
  type metadata accessor for Deque.Iterator();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_1A983549C;
  v12 = &v13;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9833998, v8, a3, &type metadata for _DequeBufferHeader, a4, v6, TupleTypeMetadata2, MEMORY[0x1E69E7288], v18);
  return v19;
}

uint64_t sub_1A9833D28(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = *(a3 + 16);
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v13);
  if (v14 <= a2)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1A99774E0();
  v7 = sub_1A99774D0();
  if ((v7 & 1) == 0)
  {
    type metadata accessor for Deque._Storage();
    Deque._Storage._makeUniqueCopy()();
  }

  v8 = *v3;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v12[8] = v6;
  v12[9] = a2;
  v13 = v5;
  MEMORY[0x1EEE9AC00](v9);
  v12[2] = v6;
  v12[3] = sub_1A983541C;
  v12[4] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(sub_1A9817714, v12, v8, &type metadata for _DequeBufferHeader, v6, v11, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v14);
}

void sub_1A9833ECC(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a3;
  v45 = a5;
  v46 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v42 = v38 - v16;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v47 = v6;
  v17 = *v6;
  v18 = *(a4 + 16);
  sub_1A982DD1C(sub_1A982B85C, 0, *v6, &type metadata for _DequeBufferHeader, v18, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v37);
  if (v48 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v41 = a2;
  v19 = __OFSUB__(a2, a1);
  v20 = a2 - a1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v40 = v11;
  v21 = sub_1A9976E60();
  v22 = v21 - v20;
  if (__OFSUB__(v21, v20))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v21;
  sub_1A982DD1C(sub_1A982B85C, 0, v17, &type metadata for _DequeBufferHeader, v18, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v37);
  v24 = v48 + v22;
  if (__OFADD__(v48, v22))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v39 = v22;
  v43 = AssociatedTypeWitness;
  sub_1A99774E0();
  v25 = v47;
  v26 = sub_1A99774D0();
  sub_1A982DD1C(sub_1A97AD9A0, 0, *v25, &type metadata for _DequeBufferHeader, v18, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v37);
  if (v48 < v24 || (v26 & 1) == 0)
  {
    type metadata accessor for Deque._Storage();
    Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v24, 0);
  }

  if (v23 >= v20)
  {
    v23 = v20;
  }

  v27 = a1 + v23;
  if (!__OFADD__(a1, v23))
  {
    v38[1] = v20;
    v38[2] = 0;
    v29 = v44;
    v28 = v45;
    v30 = a1;
    v31 = v46;
    sub_1A9976E50();
    v32 = v42;
    sub_1A9976E70();
    v33 = v40[1];
    v34 = v33(v15, v43);
    v40 = v38;
    v47 = *v47;
    v35 = MEMORY[0x1EEE9AC00](v34);
    v38[-12] = v18;
    v38[-11] = v28;
    v38[-10] = v31;
    v38[-9] = v30;
    v38[-8] = v41;
    v38[-7] = v27;
    v38[-6] = v29;
    v38[-5] = v32;
    v38[-4] = v39;
    v38[-3] = v23;
    MEMORY[0x1EEE9AC00](v35);
    v38[-4] = v18;
    v38[-3] = sub_1A98353DC;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9817714, &v38[-6], v47, &type metadata for _DequeBufferHeader, v18, v36, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v48);
    v33(v32, v43);
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1A9834318(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A983436C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  v14 = a2;
  v15 = a1;
  v8 = a3;
  v9 = type metadata accessor for Deque.Iterator();
  v10 = sub_1A983555C;
  v11 = &v12;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9833998, v7, a1, &type metadata for _DequeBufferHeader, a3, v5, v9, MEMORY[0x1E69E7288], v16);
  return v17;
}

Sharing::_DequeSlot sub_1A9834440@<X0>(Sharing::_DequeSlot *a1@<X0>, char *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result.position = Deque._UnsafeHandle.slot(_:offsetBy:)(a1[2], a1[1].position).position;
  if (result.position && result.position != v5[1].position)
  {
    v5[1].position = 0;
    v5[2].position = result.position;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1A98344F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6.position = Deque._UnsafeHandle.slot(forOffset:)(*(v2 + 24)).position;
  return (*(*(v5 - 8) + 16))(a2, a1 + *(*(v5 - 8) + 72) * v6.position, v5);
}

void sub_1A98345B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5, uint64_t a6)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1A982DD1C(sub_1A982B85C, 0, *v6, &type metadata for _DequeBufferHeader, *(a6 + 16), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v15);
    if (v16[0] >= a5)
    {
      v16[0] = a1;
      v16[1] = a2;
      v16[2] = a3;
      swift_getWitnessTable();
      v13 = sub_1A9977960();
      WitnessTable = swift_getWitnessTable();
      sub_1A9833ECC(a4, a5, v16, a6, v13, WitnessTable);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1A983471C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = Deque.init(minimumCapacity:)(a2, a3);
    v7 = MEMORY[0x1EEE9AC00](v6);
    v10[8] = a3;
    v10[9] = a2;
    v10[10] = v5;
    MEMORY[0x1EEE9AC00](v7);
    v10[2] = a3;
    v10[3] = sub_1A9835388;
    v10[4] = v8;

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9817714, v10, v6, &type metadata for _DequeBufferHeader, a3, v9, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v11);

    return v6;
  }

  return result;
}

uint64_t sub_1A9834844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = Deque._Storage.init()();
  v7 = type metadata accessor for Deque();
  Deque.append<A>(contentsOf:)(a1, v7, a3, a4);
  return v9;
}

uint64_t sub_1A98348B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A9976E60();
  if (v8 < 1)
  {

    return Deque._Storage.init()();
  }

  else
  {
    v9 = v8;
    v10 = Deque._Storage.init(minimumCapacity:)();
    v11 = MEMORY[0x1EEE9AC00](v10);
    v15[8] = a2;
    v15[9] = a3;
    v15[10] = a4;
    v15[11] = v9;
    v15[12] = a1;
    MEMORY[0x1EEE9AC00](v11);
    v15[2] = a2;
    v15[3] = sub_1A983530C;
    v15[4] = v12;

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9817714, v15, v10, &type metadata for _DequeBufferHeader, a2, v13, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v16);

    return v10;
  }
}

uint64_t sub_1A9834AD0(uint64_t result, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v10 = result;
  v11 = *v6;
  v12 = *(a3 + 16);
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v6, &type metadata for _DequeBufferHeader, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v22);
  if (v25 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = sub_1A9976E60();
  result = sub_1A982DD1C(sub_1A982B85C, 0, v11, &type metadata for _DequeBufferHeader, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v22);
  v14 = v25 + v13;
  if (__OFADD__(v25, v13))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v24 = v10;
  sub_1A99774E0();
  v15 = sub_1A99774D0();
  v16 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v6, &type metadata for _DequeBufferHeader, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v22);
  if (v25 < v14 || (v15 & 1) == 0)
  {
    type metadata accessor for Deque._Storage();
    Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v14, 0);
  }

  v17 = *v6;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v21[8] = v12;
  v21[9] = a4;
  v21[10] = a5;
  v21[11] = v24;
  v22 = v13;
  v23 = a2;
  MEMORY[0x1EEE9AC00](v18);
  v21[2] = v12;
  v21[3] = sub_1A98352E8;
  v21[4] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(sub_1A9817714, v21, v17, &type metadata for _DequeBufferHeader, v12, v20, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v25);
}

unint64_t sub_1A9834F04()
{
  result = qword_1EB3B2BC8;
  if (!qword_1EB3B2BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2BC8);
  }

  return result;
}

uint64_t sub_1A98350B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2BC0, &qword_1A9998670);
    sub_1A9834F04();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A983520C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A9835248(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A9835290(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1A9835364(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1A9831944(a1, a2, v2[5], v2[6], v2[2]);
}

uint64_t sub_1A9835388(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  if (v3 >= 1)
  {
    v4 = v1[4];
    v5 = v1[2];
    v6 = v1[3];
    result = sub_1A9977060();
  }

  *(v2 + 8) = v3;
  return result;
}

uint64_t sub_1A983541C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7.position = Deque._UnsafeHandle.slot(forOffset:)(v4).position;
  return (*(*(v5 - 8) + 24))(a2 + *(*(v5 - 8) + 72) * v7.position, v6, v5);
}

unint64_t sub_1A98354BC()
{
  result = qword_1EB3B2C68[0];
  if (!qword_1EB3B2C68[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2C60, &qword_1A9998998);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3B2C68);
  }

  return result;
}

uint64_t sub_1A98355B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[1] + v3;
  if (*a1 < v4)
  {
    v4 = *a1;
  }

  *a2 = *(v2 + 24);
  a2[1] = v3;
  a2[2] = v4;
}

uint64_t _UnsafeWrappedBuffer.init(first:count:second:count:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A99767B0();
  v4 = v3;
  result = sub_1A99767B0();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = result;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.init(mutating:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = sub_1A99770E0();
  v10 = v9;
  v19 = *(a1 + 1);
  v20 = *(a1 + 32);
  v18[2] = a2;
  sub_1A99767C0();
  sub_1A99770A0();
  v11 = sub_1A9977100();
  result = sub_1A97A4AD0(sub_1A9836C74, v18, MEMORY[0x1E69E73E0], v11, v12, &v21);
  v14 = v21;
  v15 = v22;
  if (v22)
  {
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  if (v22)
  {
    v17 = v23;
  }

  else
  {
    v17 = 1;
  }

  if (!v23)
  {
    v14 = v16;
  }

  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v17;
  return result;
}

uint64_t sub_1A98357E4@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a4)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  if (a5)
  {
    v6 = a3;
  }

  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1 | (a4 == 0);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.assign<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _UnsafeMutableWrappedBuffer.deinitialize()();
  (*(v8 + 16))(v11, a1, a3);
  return _UnsafeMutableWrappedBuffer.initialize<A>(from:)(v11, a2, a3, a4);
}

uint64_t _UnsafeMutableWrappedBuffer.initialize<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v58 = a2;
  v60 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_1A9977430();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v43 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v43 - v15;
  v16 = sub_1A9977440();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - v19;
  v59 = *(AssociatedTypeWitness - 8);
  v21 = v59[8];
  v22 = MEMORY[0x1EEE9AC00](v18);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v43 - v26;
  if (*(v5 + 32))
  {
    v28 = v60;
    _sSr7SharingE13initializeAll14fromContentsOfyqd___t7ElementQyd__RszSlRd__lF_0(v60, *v5, *(v5 + 8), *(v58 + 16), a3, a4);
    v29 = *(*(a3 - 8) + 8);

    return v29(v28, a3);
  }

  else
  {
    v51 = v25;
    v52 = v13;
    v31 = *(v5 + 16);
    v46 = *(v5 + 24);
    v47 = v31;
    sub_1A9976E50();
    v32 = *v5;
    v49 = *(v5 + 8);
    v50 = v32;
    sub_1A9976E70();
    v33 = v59 + 1;
    v48 = v59[1];
    v48(v24, AssociatedTypeWitness);
    v34 = *(AssociatedConformanceWitness + 8);
    result = sub_1A99767A0();
    if (result)
    {
      v35 = v59[2];
      v59 += 2;
      v44 = v35;
      v45 = v33;
      v35(v20, v27, AssociatedTypeWitness);
      swift_getWitnessTable();
      v36 = v56;
      sub_1A9976F00();
      (*(v51 + 8))(v20, v16);
      v37 = *(v58 + 16);
      v38 = v52;
      v51 = swift_getAssociatedConformanceWitness();
      _sSr7SharingE13initializeAll14fromContentsOfyqd___t7ElementQyd__RszSlRd__lF_0(v36, v50, v49, v37, v38, v51);
      v58 = *(v57 + 8);
      (v58)(v36, v38);
      result = sub_1A99767A0();
      if (result)
      {
        v57 = v37;
        v39 = v36;
        v40 = v53;
        v44(v53, v27, AssociatedTypeWitness);
        v41 = v55;
        swift_getWitnessTable();
        v42 = v60;
        sub_1A9976F00();
        (*(v54 + 8))(v40, v41);
        _sSr7SharingE13initializeAll14fromContentsOfyqd___t7ElementQyd__RszSlRd__lF_0(v39, v47, v46, v57, v38, v51);
        (*(*(a3 - 8) + 8))(v42, a3);
        (v58)(v39, v38);
        return (v48)(v27, AssociatedTypeWitness);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.init(first:count:second:count:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A99770C0();
  v4 = v3;
  result = sub_1A99770C0();
  *a1 = v2;
  *(a1 + 8) = v4;
  if (v6)
  {
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v6 == 0;
  return result;
}

Swift::Void __swiftcall _UnsafeMutableWrappedBuffer.deinitialize()()
{
  v2 = *(v0 + 16);
  sub_1A9836CD4(*v1, *(v1 + 8), v2);
  if ((*(v1 + 32) & 1) == 0)
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);

    sub_1A9836CD4(v3, v4, v2);
  }
}

uint64_t _UnsafeMutableWrappedBuffer.suffix(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 8);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v3 + 24);
  }

  v10 = __OFADD__(v6, v9);
  v11 = v6 + v9;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    result = *v3;
    v13 = *(v3 + 16);
    if (v11 <= v12)
    {
LABEL_15:
      *a3 = result;
      *(a3 + 8) = v6;
      *(a3 + 16) = v13;
      *(a3 + 24) = v7;
      *(a3 + 32) = v8 & 1;
      return result;
    }

    if (*(v3 + 32))
    {
      v17 = *v3;
      v20 = *(v3 + 8);
      v14 = *(a2 + 16);
      sub_1A9977100();
      swift_getWitnessTable();
      sub_1A9976750();
      result = sub_1A99770F0();
LABEL_14:
      v8 = 1;
      goto LABEL_15;
    }

    if (v7 >= v12)
    {
      v19 = *(v3 + 16);
      v22 = *(v3 + 24);
      v16 = *(a2 + 16);
      sub_1A9977100();
      swift_getWitnessTable();
      sub_1A9976750();
      result = sub_1A99770F0();
      v13 = 0;
      v7 = 0;
      goto LABEL_14;
    }

    v18 = *v3;
    v21 = *(v3 + 8);
    if (!__OFSUB__(v12, v7))
    {
      v15 = *(a2 + 16);
      sub_1A9977100();
      swift_getWitnessTable();
      sub_1A9976750();
      result = sub_1A99770F0();
      v8 = v7 == 0;
      if (!v7)
      {
        v13 = 0;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.initialize<A>(fromSequencePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v59 = a3;
  v11 = *(a3 + 16);
  v12 = sub_1A99770A0();
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - v15;
  v17 = *(v11 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v14);
  v62 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - v22;
  v58 = *(a4 - 8);
  v24 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a5;
  v27 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v28 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = &v50 - v29;
  v30 = v6[3];
  v63 = v6[2];
  LODWORD(v60) = *(v6 + 32);
  v57 = v27;
  if ((v60 & 1) == 0)
  {
    v31 = v6[1];
    v32 = v31 < sub_1A9976A00();
    v33 = v57;
    if (v32)
    {
      v34 = v58;
      (*(v58 + 16))(v26, a2, a4);
      v35 = v33;
      v36 = a2;
      sub_1A99769E0();
      v37 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v39 = _UnsafeMutableWrappedBuffer.initialize<A>(fromPrefixOf:)(v35, v59, v37, AssociatedConformanceWitness);
      (*(v34 + 8))(v36, a4);
      return v39;
    }
  }

  v40 = *(v58 + 16);
  v55 = a2;
  v40(v26, a2, a4);
  v41 = a4;
  v42 = *v6;
  v43 = v6[1];
  v39 = sub_1A99769F0();
  v54 = v43;
  v44 = v41;
  if (v39 != v43 || (v60 & 1) != 0)
  {
    (*(v58 + 8))(v55, v41);
LABEL_18:
    (*(v56 + 32))(v57, v65, AssociatedTypeWitness);
    return v39;
  }

  if (v30 < 1)
  {
    v30 = 0;
LABEL_15:
    result = (*(v58 + 8))(v55, v44);
    v46 = v30;
  }

  else
  {
    v51 = v41;
    v45 = swift_getAssociatedConformanceWitness();
    v46 = 0;
    v60 = v17 + 16;
    v61 = v45;
    v59 = v17 + 8;
    while (1)
    {
      sub_1A9977160();
      if ((*(v17 + 48))(v16, 1, v11) == 1)
      {
        break;
      }

      (*(v17 + 32))(v23, v16, v11);
      result = sub_1A99770B0();
      if (!result)
      {
        goto LABEL_21;
      }

      v48 = result + *(v17 + 72) * v46;
      v49 = v62;
      (*(v17 + 16))(v62, v23, v11);
      sub_1A9815B18(v49, v48, v11);
      (*(v17 + 8))(v23, v11);
      if (v30 == ++v46)
      {
        v44 = v51;
        goto LABEL_15;
      }
    }

    (*(v58 + 8))(v55, v51);
    result = (*(v52 + 8))(v16, v53);
  }

  v39 = v54 + v46;
  if (!__OFADD__(v54, v46))
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.initialize<A>(fromPrefixOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = *(a2 + 16);
  v6 = sub_1A99770A0();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v30 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  v35 = 0;
  v18 = 0;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v19 = v4[1];
  v36 = *v4;
  v37 = v19;
  v28 = v11 + 8;
  v29 = v11 + 16;
  v27 = v19;
  v20 = v30;
  do
  {
    if (v18 == v37)
    {
      if (v35)
      {
        v18 = v37;
        goto LABEL_15;
      }

      if (v4[4])
      {
        return v37;
      }

      v21 = v4[3];
      if (v21 < 1)
      {
        return v37;
      }

      v18 = 0;
      v36 = v4[2];
      v37 = v21;
      v35 = 1;
    }

    sub_1A9977160();
    if ((*v32)(v10, 1, v5) == 1)
    {
      goto LABEL_12;
    }

    (*v31)(v17, v10, v5);
    result = sub_1A99770B0();
    if (!result)
    {
      goto LABEL_18;
    }

    v22 = result + *(v11 + 72) * v18;
    (*(v11 + 16))(v20, v17, v5);
    sub_1A9815B18(v20, v22, v5);
    result = (*(v11 + 8))(v17, v5);
  }

  while (!__OFADD__(v18++, 1));
  __break(1u);
LABEL_12:
  result = (*(v25 + 8))(v10, v26);
  v37 = v18;
  if ((v35 & 1) == 0)
  {
    return v37;
  }

LABEL_15:
  v37 = v27 + v18;
  if (!__OFADD__(v27, v18))
  {
    return v37;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.prefix(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 8);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v3 + 24);
  }

  v10 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = *v3;
  v12 = *(v3 + 16);
  if (v10 <= result)
  {
LABEL_13:
    *a3 = v11;
    *(a3 + 8) = v6;
    *(a3 + 16) = v12;
    *(a3 + 24) = v7;
    *(a3 + 32) = v8 & 1;
    return result;
  }

  if (v6 >= result)
  {
    v17 = *v3;
    v19 = *(v3 + 8);
    v14 = *(a2 + 16);
    sub_1A9977100();
    swift_getWitnessTable();
    sub_1A9976EE0();
    result = sub_1A99770F0();
    v11 = result;
    v6 = v15;
    v12 = 0;
    v7 = 0;
    v8 = 1;
    goto LABEL_13;
  }

  if ((*(v3 + 32) & 1) == 0)
  {
    v16 = *(v3 + 16);
    v18 = *(v3 + 24);
    if (!__OFSUB__(result, v6))
    {
      v13 = *(a2 + 16);
      sub_1A9977100();
      swift_getWitnessTable();
      sub_1A9976EE0();
      result = sub_1A99770F0();
      v8 = v7 == 0;
      if (v7)
      {
        v12 = result;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t _UnsafeWrappedBuffer.first.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t _UnsafeWrappedBuffer.second.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return result;
}

uint64_t _UnsafeWrappedBuffer.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.init(_:_:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, char a3@<W6>, uint64_t a4@<X8>)
{
  result = sub_1A99770F0();
  if (a2)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  if (a3)
  {
    v10 = a1;
  }

  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3 & 1 | (a2 == 0);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1A99770F0();
  *a3 = a1;
  *(a3 + 8) = a2;
  if (v7)
  {
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
  *(a3 + 32) = v7 == 0;
  return result;
}

uint64_t sub_1A9836C38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1A99770E0();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1A9836C74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *a1;
  v5 = a1[1];
  result = sub_1A99770E0();
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t _s7Sharing20_UnsafeWrappedBufferV5countSivg_0()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v1 = 0;
  }

  v2 = *(v0 + 8);
  result = v2 + v1;
  if (__OFADD__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9836CD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = swift_arrayDestroy();
    if ((a2 * *(*(a3 - 8) + 72)) >> 64 == (a2 * *(*(a3 - 8) + 72)) >> 63)
    {
      return v3;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _sSr7SharingE13initializeAll14fromContentsOfyqd___t7ElementQyd__RszSlRd__lF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A99770A0();
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v33 = &v28 - v15;
  v29 = *(a5 - 8);
  v16 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v21 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v28 - v22;
  v31 = a2;
  v32 = a4;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a2;
  v40 = a3;
  sub_1A9976A10();
  if (v42 != 1)
  {
    return v41;
  }

  (*(v29 + 16))(v18, a1, a5);
  v24 = sub_1A99769F0();
  swift_getAssociatedConformanceWitness();
  v25 = v33;
  sub_1A9977160();
  (*(v30 + 8))(v23, AssociatedTypeWitness);
  v26 = (*(*(v32 - 8) + 48))(v25, 1);
  result = (*(v34 + 8))(v25, v35);
  if (v26 == 1)
  {
    return v24;
  }

  __break(1u);
  return result;
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

uint64_t sub_1A98370A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return result;
  }

  if (v3[6] >= a2)
  {
    v6 = v3[2];
    v7 = v3[5];
    result = sub_1A9977050();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t _emptyDequeStorage.getter()
{
  if (qword_1EB3AC4E0 != -1)
  {
    swift_once();
  }
}

void _DequeBuffer.deinit()
{
  v1 = *(*(*v0 + class metadata base offset for _DequeBuffer) - 8);
  sub_1A9837228(v0 + 2, v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)), *(*v0 + class metadata base offset for _DequeBuffer));

  JUMPOUT(0x1AC589FD0);
}

uint64_t *sub_1A9837228(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  if (__OFADD__(v3, v4))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *result;
  if (*result >= v3 + v4)
  {
    v8 = a2 + *(*(a3 - 8) + 72) * v3;
    v9 = result[1];
    return sub_1A9977070();
  }

  v6 = v5 - v3;
  if (__OFSUB__(v5, v3))
  {
    goto LABEL_9;
  }

  v7 = *(*(a3 - 8) + 72);
  sub_1A9977070();
  result = (v4 - v6);
  if (!__OFSUB__(v4, v6))
  {
    return sub_1A9977070();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _DequeBuffer.__deallocating_deinit()
{
  _DequeBuffer.deinit();

  return swift_deallocClassInstance();
}

uint64_t _DequeBuffer.description.getter()
{
  v1 = *(*v0 + class metadata base offset for _DequeBuffer);
  sub_1A9837384((v0 + 16), &v3);
  return v3;
}

uint64_t sub_1A9837384@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  sub_1A99772B0();

  strcpy(v10, "_DequeStorage<");
  HIBYTE(v10[1]) = -18;
  v4 = sub_1A9977B00();
  MEMORY[0x1AC5895B0](v4);

  MEMORY[0x1AC5895B0](62, 0xE100000000000000);
  v8 = *a1;
  v9 = *(a1 + 2);
  v5 = _DequeBufferHeader.description.getter();
  MEMORY[0x1AC5895B0](v5);

  v7 = v10[1];
  *a2 = v10[0];
  a2[1] = v7;
  return result;
}

void *sub_1A9837494()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2D70, &qword_1A9998A90);
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  qword_1EB3AC4D0 = result;
  return result;
}

uint64_t Deque.customMirror.getter(uint64_t a1)
{
  v2 = sub_1A99779F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2D78, &qword_1A9998A98);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v15 - v9;
  v15[0] = a1;
  v15[1] = a1;
  v11 = *MEMORY[0x1E69E7590];
  v12 = sub_1A99779E0();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  type metadata accessor for Deque();
  swift_getWitnessTable();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  swift_retain_n();
  return sub_1A9977A10();
}

Sharing::_DequeBufferHeader __swiftcall _DequeBufferHeader.init(capacity:count:startSlot:)(Swift::Int capacity, Swift::Int count, Sharing::_DequeSlot startSlot)
{
  v3->position = capacity;
  v3[1].position = count;
  v3[2].position = startSlot.position;
  result.startSlot = startSlot;
  result.count = count;
  result.capacity = capacity;
  return result;
}

uint64_t _DequeBufferHeader.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0x7469636170616328, 0xEB00000000203A79);
  v4 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v4);

  MEMORY[0x1AC5895B0](0x3A746E756F63202CLL, 0xE900000000000020);
  v5 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v5);

  MEMORY[0x1AC5895B0](0x537472617473202CLL, 0xED0000203A746F6CLL);
  v6 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v6);

  MEMORY[0x1AC5895B0](64, 0xE100000000000000);

  MEMORY[0x1AC5895B0](41, 0xE100000000000000);
  return 0;
}

uint64_t getEnumTagSinglePayload for _DequeBufferHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _DequeBufferHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1A9837A1C()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B2D80);
  __swift_project_value_buffer(v0, qword_1EB3B2D80);
  return sub_1A9976490();
}

uint64_t sub_1A9837A9C(uint64_t a1)
{
  v2 = sub_1A98380C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9837AD8(uint64_t a1)
{
  v2 = sub_1A98380C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9837B14()
{
  if (*v0)
  {
    result = 0x726568746FLL;
  }

  else
  {
    result = 0x55706F7244726961;
  }

  *v0;
  return result;
}

uint64_t sub_1A9837B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x55706F7244726961 && a2 == 0xE900000000000049;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A9837C30(uint64_t a1)
{
  v2 = sub_1A9838018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9837C6C(uint64_t a1)
{
  v2 = sub_1A9838018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9837CA8(uint64_t a1)
{
  v2 = sub_1A983806C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9837CE4(uint64_t a1)
{
  v2 = sub_1A983806C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFProximityHandoffClient.Identifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2D98, &qword_1A9998B70);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2DA0, &qword_1A9998B78);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v21 = &v20 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2DA8, &qword_1A9998B80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = v1[1];
  v24 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9838018();
  sub_1A9977AA0();
  if (v15)
  {
    v28 = 1;
    sub_1A983806C();
    sub_1A9977640();
    v17 = v26;
    sub_1A9977690();
    (*(v25 + 8))(v6, v17);
  }

  else
  {
    v27 = 0;
    sub_1A98380C0();
    v19 = v21;
    sub_1A9977640();
    (*(v22 + 8))(v19, v23);
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1A9838018()
{
  result = qword_1EB3B2DB0;
  if (!qword_1EB3B2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2DB0);
  }

  return result;
}

unint64_t sub_1A983806C()
{
  result = qword_1EB3B2DB8;
  if (!qword_1EB3B2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2DB8);
  }

  return result;
}

unint64_t sub_1A98380C0()
{
  result = qword_1EB3B2DC0;
  if (!qword_1EB3B2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2DC0);
  }

  return result;
}

uint64_t SFProximityHandoffClient.Identifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2DC8, &qword_1A9998B88);
  v37 = *(v39 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2DD0, &qword_1A9998B90);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2DD8, &unk_1A9998B98);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A9838018();
  v17 = v40;
  sub_1A9977A70();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v41);
  }

  v35 = v6;
  v18 = v39;
  v40 = v11;
  v19 = sub_1A9977620();
  v20 = (2 * *(v19 + 16)) | 1;
  v42 = v19;
  v43 = v19 + 32;
  v44 = 0;
  v45 = v20;
  v21 = sub_1A97B2970();
  if (v21 == 2 || v44 != v45 >> 1)
  {
    v26 = sub_1A9977300();
    swift_allocError();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
    *v28 = &type metadata for SFProximityHandoffClient.Identifier;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v40 + 8))(v14, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v41);
  }

  if (v21)
  {
    v46 = 1;
    sub_1A983806C();
    sub_1A9977530();
    v22 = v40;
    v23 = v38;
    v24 = sub_1A99775A0();
    v25 = v5;
    v33 = v32;
    (*(v37 + 8))(v25, v18);
    (*(v22 + 8))(v14, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0;
    sub_1A98380C0();
    sub_1A9977530();
    v24 = 0;
    v31 = v40;
    v23 = v38;
    (*(v36 + 8))(v9, v35);
    (*(v31 + 8))(v14, v10);
    swift_unknownObjectRelease();
    v33 = 0;
  }

  *v23 = v24;
  v23[1] = v33;
  return __swift_destroy_boxed_opaque_existential_0Tm(v41);
}

uint64_t SFProximityHandoffClient.clientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = *(v1 + 120);
  a1[1] = v2;
}

void *SFProximityHandoffClient.init(identifier:)(uint64_t *a1)
{
  v27 = sub_1A9976FB0();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A9976FA0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1A9976680();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = *a1;
  v25 = a1[1];
  v26 = v10;
  swift_defaultActor_initialize();
  v24[0] = sub_1A97F1CA0();
  sub_1A9976660();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1A984AC20(&qword_1EB3AC8E0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B26D8, &unk_1A9997EB0);
  sub_1A97AF974(&qword_1EB3AC910, &unk_1EB3B26D8, &unk_1A9997EB0);
  sub_1A99771F0();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8098], v27);
  v11 = v24[1];
  v12 = sub_1A9976FE0();
  v13 = v25;
  v11[15] = v26;
  v11[16] = v13;
  v11[17] = v12;
  v14 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v15 = v12;
  v16 = sub_1A99767E0();
  v17 = [v14 initWithMachServiceName:v16 options:0];

  type metadata accessor for SFXPCConnection();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = 0;
  v19 = v17;
  [v19 sf:v15 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v19 setRemoteObjectInterface_];

  v11[14] = v18;
  v20 = type metadata accessor for SFProximityHandoffClient();
  v29.receiver = v11;
  v29.super_class = v20;
  v21 = objc_msgSendSuper2(&v29, sel_init);
  v22 = v21[14];
  swift_beginAccess();
  [*(v22 + 16) activate];
  return v21;
}

uint64_t SFProximityHandoffClient.deinit()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  [*(v1 + 16) invalidate];
  v2 = *(v0 + 112);

  v3 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SFProximityHandoffClient.__deallocating_deinit()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  [*(v1 + 16) invalidate];
  v2 = *(v0 + 112);

  v3 = *(v0 + 128);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_1A9838B28(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A9838B48, v1, 0);
}

uint64_t sub_1A9838B48()
{
  if (qword_1EB3B0AF8 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1A99764A0();
  v4 = __swift_project_value_buffer(v3, qword_1EB3B2D80);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2DE0, &qword_1A9998BA8);
  (*(*(v3 - 8) + 16))(&v2[v5[11]], v4, v3);
  *v2 = 0xD00000000000001CLL;
  *(v2 + 1) = 0x80000001A99E4FE0;
  v6 = &v2[v5[12]];
  *v6 = &unk_1A9998BB8;
  *(v6 + 1) = v1;
  v7 = &v2[v5[13]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v9 = v0[1];

  return v9();
}

uint64_t sub_1A9838CB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A9838CD0, 0, 0);
}

uint64_t sub_1A9838CD0()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1A97E0474;
  v3 = v0[2];

  return sub_1A9838D80(v3);
}

uint64_t sub_1A9838D80(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A9838DA0, 0, 0);
}

uint64_t sub_1A9838DA0()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFProximityHandoffInvocations.ProximityHandoffInteractions()) init];
  v2 = v1;
  v0[12] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[13] = v4;
  v5 = v0[11];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[14] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[15] = v7;
  v8 = swift_allocObject();
  v0[16] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[17] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984DC60;
  v11[6] = v8;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  v13 = swift_task_alloc();
  v0[18] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2E70, &qword_1A9998D50);
  *v13 = v0;
  v13[1] = sub_1A9838FB4;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984DC8C, v11, v14);
}

uint64_t sub_1A9838FB4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_1A984E084;
  }

  else
  {
    v5 = v2[16];
    v6 = v2[17];
    v7 = v2[15];
    v8 = v2[13];

    v4 = sub_1A984E0A8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A98390F4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98391B8, 0, 0);
}

uint64_t sub_1A98391B8()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate()) init];
  v0[13] = v1;
  v19 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v20 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v20 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v20;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  swift_retain_n();

  v13 = v9;

  v14 = v19;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v20;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984DBD8;
  v15[6] = v12;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_1A9839438;

  return MEMORY[0x1EEE6DE38](v17, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}

uint64_t sub_1A9839438()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v10 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_1A984E060;
  }

  else
  {
    v5 = v2[17];
    v6 = v2[18];
    v7 = v2[16];
    v8 = v2[14];

    v4 = sub_1A984E1D8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A9839578(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983963C, 0, 0);
}

uint64_t sub_1A983963C()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction()) init];
  v0[13] = v1;
  v19 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v20 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v20 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v20;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  swift_retain_n();

  v13 = v9;

  v14 = v19;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v20;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984DA90;
  v15[6] = v12;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_1A9839438;

  return MEMORY[0x1EEE6DE38](v17, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}

uint64_t sub_1A98398BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98398E0, 0, 0);
}

uint64_t sub_1A98398E0()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.StartTempPairing()) init];
  v2 = v1;
  v0[14] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[15] = v4;
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[16] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[17] = v9;
  v10 = swift_allocObject();
  v0[18] = v10;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v7;
  v10[5] = v5;
  v10[6] = v8;
  v10[7] = v2;

  v11 = v9;

  swift_retain_n();
  sub_1A97B40FC(v7, v5);
  v12 = v2;
  v13 = swift_task_alloc();
  v0[19] = v13;
  v13[2] = v3;
  v13[3] = v4;
  v13[4] = v11;
  v13[5] = sub_1A984D8F8;
  v13[6] = v10;
  v14 = *(MEMORY[0x1E69E8920] + 4);
  v15 = swift_task_alloc();
  v0[20] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FE0, &qword_1A99995D8);
  *v15 = v0;
  v15[1] = sub_1A9839B14;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984D954, v13, v16);
}

uint64_t sub_1A9839B14()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v10 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_1A9839CD0;
  }

  else
  {
    v5 = v2[18];
    v6 = v2[19];
    v7 = v2[17];
    v8 = v2[15];

    v4 = sub_1A9839C54;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A9839C54()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);

  *v2 = *(v0 + 64);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A9839CD0()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];

  v7 = v0[1];
  v8 = v0[21];

  return v7();
}

uint64_t sub_1A9839D8C()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.StopTempPairing()) init];
  v2 = v1;
  v0[9] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[10] = v4;
  v5 = v0[8];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[11] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[12] = v7;
  v8 = swift_allocObject();
  v0[13] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[14] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984D8CC;
  v11[6] = v8;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_1A9839F8C;

  return MEMORY[0x1EEE6DE38](v13, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v11, &type metadata for VoidResponse);
}

uint64_t sub_1A9839F8C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1A983A13C;
  }

  else
  {
    v5 = v2[13];
    v6 = v2[14];
    v7 = v2[12];
    v8 = v2[10];

    v4 = sub_1A983A0CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A983A0CC()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A983A13C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];
  v8 = v0[16];

  return v7();
}

uint64_t sub_1A983A1F8()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.TempPairingConnect()) init];
  v2 = v1;
  v0[9] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[10] = v4;
  v5 = v0[8];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[11] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[12] = v7;
  v8 = swift_allocObject();
  v0[13] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[14] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984D738;
  v11[6] = v8;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_1A983A3F8;

  return MEMORY[0x1EEE6DE38](v13, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v11, &type metadata for VoidResponse);
}

uint64_t sub_1A983A3F8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1A984E05C;
  }

  else
  {
    v5 = v2[13];
    v6 = v2[14];
    v7 = v2[12];
    v8 = v2[10];

    v4 = sub_1A984E09C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A983A558()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.TempPairingDisconnect()) init];
  v2 = v1;
  v0[9] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[10] = v4;
  v5 = v0[8];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[11] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[12] = v7;
  v8 = swift_allocObject();
  v0[13] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[14] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984D70C;
  v11[6] = v8;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_1A983A3F8;

  return MEMORY[0x1EEE6DE38](v13, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v11, &type metadata for VoidResponse);
}

uint64_t sub_1A983A758(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(type metadata accessor for SFAirDropSend.Request() - 8);
  v3[11] = v4;
  v3[12] = *(v4 + 64);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983A820, 0, 0);
}

uint64_t sub_1A983A820()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.Send()) init];
  v0[14] = v1;
  v21 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v22 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v22 = 0xD00000000000001BLL;
  }

  v0[15] = v2;
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[16] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[17] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDropSend.Request);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[18] = v12;
  *(v12 + 16) = v22;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDropSend.Request);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  swift_retain_n();

  v13 = v9;

  v14 = v21;
  v15 = swift_task_alloc();
  v0[19] = v15;
  v15[2] = v22;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984D590;
  v15[6] = v12;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[20] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB0, &qword_1A9999580);
  *v17 = v0;
  v17[1] = sub_1A983AABC;
  v19 = v0[8];

  return MEMORY[0x1EEE6DE38](v19, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984D5D0, v15, v18);
}

uint64_t sub_1A983AABC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v10 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_1A984E064;
  }

  else
  {
    v5 = v2[18];
    v6 = v2[19];
    v7 = v2[17];
    v8 = v2[15];

    v4 = sub_1A984E1DC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A983ABFC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFAirDrop.TransferIdentifier() - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983ACC0, 0, 0);
}

uint64_t sub_1A983ACC0()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.Cancel()) init];
  v0[13] = v1;
  v19 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v20 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v20 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDrop.TransferIdentifier);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v20;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDrop.TransferIdentifier);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  swift_retain_n();

  v13 = v9;

  v14 = v19;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v20;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984D538;
  v15[6] = v12;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_1A9839438;

  return MEMORY[0x1EEE6DE38](v17, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}

uint64_t sub_1A983AF44(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A983AF64, 0, 0);
}

uint64_t sub_1A983AF64()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.TransfersMonitor()) init];
  v2 = v1;
  v0[12] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[13] = v4;
  v5 = v0[11];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[14] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[15] = v7;
  v8 = swift_allocObject();
  v0[16] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[17] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984D390;
  v11[6] = v8;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  v13 = swift_task_alloc();
  v0[18] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FA0, &qword_1A9999550);
  *v13 = v0;
  v13[1] = sub_1A9838FB4;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984D3BC, v11, v14);
}

uint64_t sub_1A983B17C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983B240, 0, 0);
}

uint64_t sub_1A983B240()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter()) init];
  v0[13] = v1;
  v19 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v20 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v20 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v20;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  swift_retain_n();

  v13 = v9;

  v14 = v19;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v20;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984D4F8;
  v15[6] = v12;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_1A9839438;

  return MEMORY[0x1EEE6DE38](v17, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}

uint64_t sub_1A983B4E4()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.ResignTransferPresenter()) init];
  v2 = v1;
  v0[9] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[10] = v4;
  v5 = v0[8];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[11] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[12] = v7;
  v8 = swift_allocObject();
  v0[13] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[14] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984D364;
  v11[6] = v8;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_1A983A3F8;

  return MEMORY[0x1EEE6DE38](v13, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v11, &type metadata for VoidResponse);
}

uint64_t sub_1A983B6E4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983B7A8, 0, 0);
}

uint64_t sub_1A983B7A8()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.StartNearbySharingDiscovery()) init];
  v0[13] = v1;
  v19 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v20 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v20 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v20;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  swift_retain_n();

  v13 = v9;

  v14 = v19;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v20;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984D324;
  v15[6] = v12;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_1A983BA2C;

  return MEMORY[0x1EEE6DE38](v17, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}

uint64_t sub_1A983BA2C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v10 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_1A983BBE4;
  }

  else
  {
    v5 = v2[17];
    v6 = v2[18];
    v7 = v2[16];
    v8 = v2[14];

    v4 = sub_1A983BB6C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A983BB6C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A983BBE4()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];

  v8 = v0[1];
  v9 = v0[20];

  return v8();
}

uint64_t sub_1A983BC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A983BCB0, 0, 0);
}

uint64_t sub_1A983BCB0()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.StopNearbySharingDiscovery()) init];
  v2 = v1;
  v0[11] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[12] = v4;
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[13] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[14] = v9;
  v10 = swift_allocObject();
  v0[15] = v10;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v7;
  v10[5] = v5;
  v10[6] = v8;
  v10[7] = v2;
  swift_retain_n();

  v11 = v9;

  v12 = v2;
  v13 = swift_task_alloc();
  v0[16] = v13;
  v13[2] = v3;
  v13[3] = v4;
  v13[4] = v11;
  v13[5] = sub_1A984D2F4;
  v13[6] = v10;
  v14 = *(MEMORY[0x1E69E8920] + 4);
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = sub_1A983BEC8;

  return MEMORY[0x1EEE6DE38](v15, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v13, &type metadata for VoidResponse);
}

uint64_t sub_1A983BEC8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v10 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1A983C078;
  }

  else
  {
    v5 = v2[15];
    v6 = v2[16];
    v7 = v2[14];
    v8 = v2[12];

    v4 = sub_1A983C008;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A983C008()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A983C078()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];

  v7 = v0[1];
  v8 = v0[18];

  return v7();
}

uint64_t sub_1A983C114(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(type metadata accessor for SFAirDrop.NearbySharingAssertionRequest(0) - 8);
  v3[11] = v4;
  v3[12] = *(v4 + 64);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983C1DC, 0, 0);
}

uint64_t sub_1A983C1DC()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.TakeNearbySharingAssertion()) init];
  v0[14] = v1;
  v21 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v22 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v22 = 0xD00000000000001BLL;
  }

  v0[15] = v2;
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[16] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[17] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDrop.NearbySharingAssertionRequest);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[18] = v12;
  *(v12 + 16) = v22;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDrop.NearbySharingAssertionRequest);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  swift_retain_n();

  v13 = v9;

  v14 = v21;
  v15 = swift_task_alloc();
  v0[19] = v15;
  v15[2] = v22;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984D0C0;
  v15[6] = v12;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[20] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  *v17 = v0;
  v17[1] = sub_1A983C478;
  v19 = v0[8];

  return MEMORY[0x1EEE6DE38](v19, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984D100, v15, v18);
}

uint64_t sub_1A983C478()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v10 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_1A983C630;
  }

  else
  {
    v5 = v2[18];
    v6 = v2[19];
    v7 = v2[17];
    v8 = v2[15];

    v4 = sub_1A983C5B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A983C5B8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A983C630()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];

  v8 = v0[1];
  v9 = v0[21];

  return v8();
}

uint64_t sub_1A983C6D8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = sub_1A99762C0();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v3[12] = *(v5 + 64);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983C7A0, 0, 0);
}

uint64_t sub_1A983C7A0()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.ReleaseNearbySharingAssertion()) init];
  v0[14] = v1;
  v23 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v22 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v22 = 0xD00000000000001BLL;
  }

  v0[15] = v2;
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v20 = v5;
  v21 = v3;
  v7 = v0[8];
  v8 = v0[9];
  swift_beginAccess();
  v9 = *(v8 + 24);
  v0[16] = v9;
  swift_beginAccess();
  v10 = *(v8 + 16);
  v0[17] = v10;
  (*(v6 + 16))(v3, v7, v5);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v0[18] = v13;
  *(v13 + 16) = v22;
  *(v13 + 24) = v2;
  (*(v6 + 32))(v13 + v11, v21, v20);
  *(v13 + v12) = v9;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  swift_retain_n();

  v14 = v10;

  v15 = v23;
  v16 = swift_task_alloc();
  v0[19] = v16;
  v16[2] = v22;
  v16[3] = v2;
  v16[4] = v14;
  v16[5] = sub_1A984D084;
  v16[6] = v13;
  v17 = *(MEMORY[0x1E69E8920] + 4);
  v18 = swift_task_alloc();
  v0[20] = v18;
  *v18 = v0;
  v18[1] = sub_1A983AABC;

  return MEMORY[0x1EEE6DE38](v18, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v16, &type metadata for VoidResponse);
}

uint64_t sub_1A983CA24(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A983CA44, 0, 0);
}

uint64_t sub_1A983CA44()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.NearbySharingInteractions()) init];
  v2 = v1;
  v0[12] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[13] = v4;
  v5 = v0[11];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[14] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[15] = v7;
  v8 = swift_allocObject();
  v0[16] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[17] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984CD64;
  v11[6] = v8;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  v13 = swift_task_alloc();
  v0[18] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F78, &qword_1A99994F0);
  *v13 = v0;
  v13[1] = sub_1A983CC5C;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984CD90, v11, v14);
}

uint64_t sub_1A983CC5C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_1A983CE18;
  }

  else
  {
    v5 = v2[16];
    v6 = v2[17];
    v7 = v2[15];
    v8 = v2[13];

    v4 = sub_1A983CD9C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A983CD9C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);

  *v2 = *(v0 + 64);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A983CE18()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];

  v7 = v0[1];
  v8 = v0[19];

  return v7();
}

uint64_t sub_1A983CEB4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983CF78, 0, 0);
}

uint64_t sub_1A983CF78()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.SimulateNearbySharingInteractions()) init];
  v0[13] = v1;
  v19 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v20 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v20 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDrop.NearbySharingInteraction);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v20;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDrop.NearbySharingInteraction);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  swift_retain_n();

  v13 = v9;

  v14 = v19;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v20;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984CD24;
  v15[6] = v12;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_1A9839438;

  return MEMORY[0x1EEE6DE38](v17, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}