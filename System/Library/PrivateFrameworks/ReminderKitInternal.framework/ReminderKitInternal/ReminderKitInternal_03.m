uint64_t sub_23008833C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v31 = a2;
  result = sub_230310BA8();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
      }

      sub_230311358();
      sub_23030F9C8();
      result = sub_2303113A8();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_2300885CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14520);
  v34 = a2;
  result = sub_230310BA8();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_230311358();
      sub_23030F9C8();
      result = sub_2303113A8();
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_23008886C(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_23030EB58();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14500);
  v42 = a2;
  result = sub_230310BA8();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_230311358();
      sub_23030F9C8();
      result = sub_2303113A8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_230088BEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14490);
  v37 = a2;
  result = sub_230310BA8();
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

      sub_230311358();
      sub_23030F9C8();
      result = sub_2303113A8();
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

uint64_t sub_230088EAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14480);
  v34 = a2;
  result = sub_230310BA8();
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

      sub_230311358();
      sub_23030F9C8();
      result = sub_2303113A8();
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

void *sub_230089168()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14528);
  v2 = *v0;
  v3 = sub_230310B98();
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
        sub_23008E1C0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_23004D5CC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_23004B314(v22, (*(v4 + 56) + v17));
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

void *sub_23008930C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146A8);
  v2 = *v0;
  v3 = sub_230310B98();
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
        sub_23004D5CC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23004B314(v25, (*(v4 + 56) + v22));
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

void *sub_2300894B0()
{
  v1 = v0;
  v26 = sub_230310A58();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14698);
  v3 = *v0;
  v4 = sub_230310B98();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_23004D5CC(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_23004B314(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_230089734()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14660);
  v2 = *v0;
  v3 = sub_230310B98();
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

void *sub_2300898B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14680);
  v2 = *v0;
  v3 = sub_230310B98();
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
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

void *sub_230089A38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14478);
  v2 = *v0;
  v3 = sub_230310B98();
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

void *sub_230089BA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14670);
  v2 = *v0;
  v3 = sub_230310B98();
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
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

id sub_230089D30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14470);
  v2 = *v0;
  v3 = sub_230310B98();
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
        sub_23004D5CC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_23004B314(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_230089EB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14658);
  v2 = *v0;
  v3 = sub_230310B98();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void *sub_23008A018()
{
  v1 = v0;
  v29 = sub_23030EEA8();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14640);
  v3 = *v0;
  v4 = sub_230310B98();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_23008A2A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB145F8);
  v2 = *v0;
  v3 = sub_230310B98();
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

void *sub_23008A418(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_230310B98();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 56) + 8 * v15) = v18)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      v18 = *(*(v3 + 56) + 8 * v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_23008A554()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14608);
  v2 = *v0;
  v3 = sub_230310B98();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

void *sub_23008A6DC(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_230310B98();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_23008A828()
{
  v1 = v0;
  v29 = sub_23030EB58();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14628);
  v3 = *v0;
  v4 = sub_230310B98();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_23008AA90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14630);
  v2 = *v0;
  v3 = sub_230310B98();
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

void *sub_23008ABEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB145E8);
  v2 = *v0;
  v3 = sub_230310B98();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_23008AD5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14598);
  v2 = *v0;
  v3 = sub_230310B98();
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

void *sub_23008AED4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB145A0);
  v2 = *v0;
  v3 = sub_230310B98();
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

id sub_23008B060(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_230310B98();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
        result = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_23008B1EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14448);
  v2 = *v0;
  v3 = sub_230310B98();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

id sub_23008B34C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_230310B98();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_23008B4A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB14580);
  v28 = v0;
  v1 = *v0;
  v29 = sub_230310B98();
  if (*(v1 + 16))
  {
    result = (v29 + 64);
    v3 = ((1 << *(v29 + 32)) + 63) >> 6;
    if (v29 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v29 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 24 * v14;
        v16 = *(v1 + 48) + 24 * v14;
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        v14 *= 40;
        v20 = *(v1 + 56) + v14;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v29 + 48) + v15;
        *v26 = v17;
        *(v26 + 8) = v18;
        *(v26 + 16) = v19;
        v27 = *(v29 + 56) + v14;
        *v27 = v21;
        *(v27 + 8) = v22;
        *(v27 + 16) = v23;
        *(v27 + 24) = v24;
        *(v27 + 32) = v25;
        sub_23008E030(v17, v18, v19);
        result = sub_23008E06C(v21, v22, v23, v24, v25);
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v28 = v29;
  }

  return result;
}

id sub_23008B678()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14578);
  v2 = *v0;
  v3 = sub_230310B98();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_23008B7D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14570);
  v2 = *v0;
  v3 = sub_230310B98();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

void *sub_23008B934()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14560);
  v2 = *v0;
  v3 = sub_230310B98();
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

void *sub_23008BAA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14558);
  v2 = *v0;
  v3 = sub_230310B98();
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

void *sub_23008BC28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14540);
  v2 = *v0;
  v3 = sub_230310B98();
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

void *sub_23008BD98(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_230310B98();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_23008BEEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14520);
  v2 = *v0;
  v3 = sub_230310B98();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

char *sub_23008C054()
{
  v1 = v0;
  v35 = sub_23030EB58();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14500);
  v3 = *v0;
  v4 = sub_230310B98();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_23008C2D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14490);
  v2 = *v0;
  v3 = sub_230310B98();
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

void *sub_23008C44C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14480);
  v2 = *v0;
  v3 = sub_230310B98();
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

unint64_t sub_23008C5BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146A8);
    v3 = sub_230310BC8();
    v4 = a1 + 32;

    while (1)
    {
      sub_230055F74(v4, &v13, &qword_27DB146B0);
      v5 = v13;
      v6 = v14;
      result = sub_23005EE00(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23004B314(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void *sub_23008C6EC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146B8);
  v3 = sub_230310BC8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_23006FA30(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
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
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_23006FA30(v4);
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

uint64_t sub_23008C7F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23008C85C()
{
  result = qword_27DB14428;
  if (!qword_27DB14428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14428);
  }

  return result;
}

unint64_t sub_23008C8B4()
{
  result = qword_27DB14430;
  if (!qword_27DB14430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14430);
  }

  return result;
}

uint64_t initializeWithCopy for KMeansAutoTuner.KMeanTuningHistory(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

void *assignWithCopy for KMeansAutoTuner.KMeanTuningHistory(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t assignWithTake for KMeansAutoTuner.KMeanTuningHistory(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for KMeansAutoTuner.KMeanTuningHistory(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for KMeansAutoTuner.KMeanTuningHistory(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23008CB2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14648);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14640);
    v7 = sub_230310BC8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_230055F74(v9, v5, &qword_27DB14648);
      result = sub_230081C64(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_23030EEA8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_23008CD08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB145E8);
    v3 = sub_230310BC8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_230081A54(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_23008CE10(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_230310BC8();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_23005EE00(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_23008CF0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14438);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14440);
    v7 = sub_230310BC8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_230055F74(v9, v5, &qword_27DB14438);
      result = sub_23004BFC0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_230310A58();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_23004B314(&v5[v8], (v7[7] + 32 * v13));
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

unint64_t sub_23008D0F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14660);
    v3 = sub_230310BC8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23005EE00(v5, v6);
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

void *sub_23008D1F4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14658);
  v3 = sub_230310BC8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_23006FA30(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_23006FA30(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23008D308(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14528);
    v3 = sub_230310BC8();
    v4 = a1 + 32;

    while (1)
    {
      sub_230055F74(v4, v13, &qword_27DB14530);
      result = sub_230081C20(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23004B314(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_23008D444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14650);
    v3 = sub_230310BC8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23005EE00(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_23008D558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB145A0);
    v3 = sub_230310BC8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_230059108(v6);
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

unint64_t sub_23008D650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14598);
    v3 = sub_230310BC8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_230059108(v6);
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

unint64_t sub_23008D748(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB145B0);
    v3 = sub_230310BC8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_230059108(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_23008D840(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14518);
    v3 = sub_230310BC8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_23005EE00(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
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

unint64_t sub_23008D944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14508);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14500);
    v7 = sub_230310BC8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_230055F74(v9, v5, &qword_27DB14508);
      v11 = *v5;
      v12 = v5[1];
      result = sub_23005EE00(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_23030EB58();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_23008DB30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB144B8);
    v3 = sub_230310BC8();
    v4 = a1 + 32;

    while (1)
    {
      sub_230055F74(v4, &v11, &qword_27DB144C0);
      v5 = v11;
      result = sub_230082060(v11, &qword_27DB14498);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23004B314(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_23008DC70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB144C8);
    v3 = sub_230310BC8();
    v4 = a1 + 32;

    while (1)
    {
      sub_230055F74(v4, &v11, &qword_27DB144D0);
      v5 = v11;
      result = sub_230082060(v11, &qword_27DB144A8);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23004B314(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_23008DDB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB144D8);
    v3 = sub_230310BC8();
    v4 = a1 + 32;

    while (1)
    {
      sub_230055F74(v4, &v11, &qword_27DB144E0);
      v5 = v11;
      result = sub_230082060(v11, &qword_27DB144A0);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23004B314(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_23008DEF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB144E8);
    v3 = sub_230310BC8();
    v4 = a1 + 32;

    while (1)
    {
      sub_230055F74(v4, &v11, &qword_27DB144F0);
      v5 = v11;
      result = sub_230082060(v11, &qword_27DB144B0);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23004B314(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_23008E030(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = a1;
    v3 = vars8;
  }
}

id sub_23008E06C(void *a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return sub_23008E0E0(a1);
  }

  else
  {
    sub_23008E0C8(a1, a2);
  }
}

id sub_23008E0C8(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_23008E0E0(a1);
  }

  return a1;
}

unint64_t sub_23008E0EC()
{
  result = qword_280C98420;
  if (!qword_280C98420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98420);
  }

  return result;
}

uint64_t sub_23008E140(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v3 = vars8;
  }
}

uint64_t sub_23008E17C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23030EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PromiseError.errorCode.getter()
{
  sub_23008E2DC(v0, v2);
  result = v3;
  if (v3 >= 2)
  {
    __swift_destroy_boxed_opaque_existential_1(&v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    return 2;
  }

  return result;
}

unint64_t PromiseError.errorUserInfo.getter()
{
  v1 = 0xEA00000000006465;
  sub_23008E2DC(v0, &v9);
  if (v10)
  {
    if (v10 == 1)
    {
      v2 = 0x6E6F646E6162612ELL;
    }

    else
    {
      sub_230061914(&v9, v8);
      sub_230061914(&v11, v7);
      sub_230310848();
      MEMORY[0x231911790](0xD000000000000013, 0x800000023033FFF0);
      sub_230310A28();
      MEMORY[0x231911790](0x746567726174202CLL, 0xEA0000000000203ALL);
      sub_230310A28();
      MEMORY[0x231911790](41, 0xE100000000000000);
      v2 = 0;
      v1 = 0xE000000000000000;
      __swift_destroy_boxed_opaque_existential_1(v7);
      __swift_destroy_boxed_opaque_existential_1(v8);
    }
  }

  else
  {
    v2 = 0x6C6C65636E61632ELL;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230315CE0;
  *(inited + 32) = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v4;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  v5 = sub_23008C5BC(inited);
  swift_setDeallocating();
  sub_230095158(inited + 32);
  return v5;
}

uint64_t sub_23008E4F8()
{
  sub_23008E2DC(v0, v2);
  result = v3;
  if (v3 >= 2)
  {
    __swift_destroy_boxed_opaque_existential_1(&v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    return 2;
  }

  return result;
}

uint64_t sub_23008E554(uint64_t a1)
{
  v2 = sub_23009631C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23008E590(uint64_t a1)
{
  v2 = sub_23009631C();

  return MEMORY[0x28211F4A8](a1, v2);
}

void *Promise.__allocating_init(value:)(uint64_t a1)
{
  v3 = sub_2300951C0(a1);
  (*(*(*(v1 + 80) - 8) + 8))(a1);
  return v3;
}

uint64_t Promise.__allocating_init(error:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Promise.init(error:)(a1);
  return v2;
}

uint64_t Promise.init(error:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for Seal();
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  *(v4 + 24) = 0;
  *(v2 + 16) = sub_230125098(v4, a1);
  return v2;
}

uint64_t Promise.__allocating_init(resolver:)(void (*a1)(uint64_t (*)(uint64_t a1), uint64_t, uint64_t (*)(void *a1), uint64_t))
{
  v2 = swift_allocObject();
  Promise.init(resolver:)(a1);
  return v2;
}

uint64_t Promise.init(resolver:)(void (*a1)(uint64_t (*)(uint64_t a1), uint64_t, uint64_t (*)(void *a1), uint64_t))
{
  type metadata accessor for Seal();
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *(v3 + 16) = v4;
  *v4 = 0;
  *(v3 + 24) = 0;
  *(v1 + 16) = sub_230047154(v3);
  swift_retain_n();
  a1(sub_230095204, v1, sub_230095228, v1);

  return v1;
}

uint64_t Promise.__allocating_init(resolver:)(void (*a1)(uint64_t (*)(), uint64_t, uint64_t (*)(), uint64_t, uint64_t (*)(), uint64_t))
{
  v2 = swift_allocObject();
  Promise.init(resolver:)(a1);
  return v2;
}

uint64_t Promise.init(resolver:)(void (*a1)(uint64_t (*)(), uint64_t, uint64_t (*)(), uint64_t, uint64_t (*)(), uint64_t))
{
  type metadata accessor for Seal();
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *(v3 + 16) = v4;
  *v4 = 0;
  *(v3 + 24) = 0;
  *(v1 + 16) = sub_230047154(v3);
  swift_retain_n();
  a1(sub_230096FB0, v1, sub_230096FB4, v1, sub_23009524C, v1);

  return v1;
}

uint64_t Promise.__allocating_init(block:)()
{
  v0 = swift_allocObject();
  Promise.init(resolver:)(sub_230095270);

  return v0;
}

uint64_t sub_23008EA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void (*)(uint64_t a1), void *), uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a7;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;

  a5(sub_230096F10, v13);
}

void sub_23008EAEC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v10 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v13 = sub_230311408();
  MEMORY[0x28223BE20](v13);
  v15 = (&v18 - v14);
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v15;
    a4(*v15);
  }

  else
  {
    (*(v10 + 32))(v12, v15, a6);
    a2(v12);
    (*(v10 + 8))(v12, a6);
  }
}

uint64_t Promise.__allocating_init(_:scheduleOn:)(void *a1, void (*a2)(void *))
{
  v4 = swift_allocObject();
  Promise.init(resolver:)(sub_23009527C);
  a2(a1);

  return v4;
}

uint64_t sub_23008ED6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v13 = *a7;
  v14 = *MEMORY[0x277D85000];
  v15 = swift_allocObject();
  v15[2] = *((v14 & v13) + 0x50);
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a5;
  v15[6] = a6;
  v15[7] = a3;
  v15[8] = a4;

  return sub_23017B724(sub_230096EFC, v15);
}

void sub_23008EE44(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id), uint64_t a7, uint64_t a8)
{
  v21[1] = a7;
  v22 = a6;
  v21[0] = a4;
  v11 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v14 = sub_230311408();
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  (*(v17 + 16))(v21 - v15, a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v16;
    v18 = v23;
    v19 = v23;
    if (swift_dynamicCast())
    {

      (v21[0])();
      v20 = v23;
    }

    else
    {

      v22(v18);
      v20 = v18;
    }
  }

  else
  {
    (*(v11 + 32))(v13, v16, a8);
    a2(v13);
    (*(v11 + 8))(v13, a8);
  }
}

uint64_t sub_23008F094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C8);
  v6 = swift_allocObject();
  *(v6 + 32) = MEMORY[0x277D84F90];
  *(v6 + 40) = 0;
  *(v6 + 48) = -1;
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  *(a2 + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146F8);
  v7 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  swift_unownedRetainStrong();
  *(a3 + 24) = v7;

  swift_unownedRelease();
  return a2;
}

uint64_t sub_23008F168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16A20);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 32) = v7;
  *(v6 + 56) = -1;
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  *(a2 + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146F0);
  v8 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  swift_unownedRetainStrong();
  *(a3 + 24) = v8;

  swift_unownedRelease();
  return a2;
}

uint64_t sub_23008F240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146E0);
  v6 = swift_allocObject();
  *(v6 + 32) = MEMORY[0x277D84F90];
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = -1;
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  *(a2 + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146E8);
  v7 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  swift_unownedRetainStrong();
  *(a3 + 24) = v7;

  swift_unownedRelease();
  return a2;
}

uint64_t sub_23008F318(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *v6;
  type metadata accessor for DeferredPromise();

  v12 = sub_23004792C(v11);
  v13 = *(v10 + 80);
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a6;
  v14[4] = v12;
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = a6;
  v15[4] = v12;
  v16 = swift_allocObject();
  swift_retain_n();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = a6;
  v17[4] = v16;
  v17[5] = v12;
  v17[6] = a3;
  v17[7] = a4;

  sub_23004796C(a1, 0, 1, sub_230096FA4, v14, sub_230096FB8, v15, sub_230095284, v17);

  result = swift_beginAccess();
  v19 = *(v12 + 16);
  if (v19)
  {

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23008F50C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = *(*a3 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    a4(a1, Strong);
    DeferredPromise.resolve(_:)(v9);
    swift_unknownObjectRelease();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_230095B08();
    v11 = swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 1;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    DeferredPromise.reject(_:)(v11);
  }
}

uint64_t sub_23008F71C(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *v4;
  type metadata accessor for DeferredPromise();

  v11 = sub_23004792C(v10);
  v12 = *(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = v11;

  swift_retain_n();
  sub_23004796C(a1, *&a4, 0, sub_230096ED8, v13, sub_230096EB4, v14, sub_230050514, v15);

  result = swift_beginAccess();
  v17 = *(v11 + 16);
  if (v17)
  {

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23008F8D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *v6;
  type metadata accessor for DeferredPromise();

  v12 = sub_23004792C(v11);
  v13 = *(v10 + 80);
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a6;
  v14[4] = v12;
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = a6;
  v15[4] = v12;
  v16 = swift_allocObject();
  swift_retain_n();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = a6;
  v17[4] = v16;
  v17[5] = v12;
  v17[6] = a3;
  v17[7] = a4;

  sub_23004796C(a1, 0, 1, sub_230096FA4, v14, sub_230096E90, v15, sub_2300952E4, v17);

  result = swift_beginAccess();
  v19 = *(v12 + 16);
  if (v19)
  {

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23008FAC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    a4(a1, Strong);
    v15 = qword_280C9BA30;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = qword_280C9BA38;
    v17 = swift_allocObject();
    v17[2] = a6;
    v17[3] = a7;
    v17[4] = a3;
    v18 = swift_allocObject();
    v18[2] = a6;
    v18[3] = a7;
    v18[4] = a3;
    v19 = swift_allocObject();
    v19[2] = a6;
    v19[3] = a7;
    v19[4] = a3;
    swift_retain_n();
    sub_23004796C(v16, 0, 1, sub_230096E6C, v17, sub_230096FB8, v18, sub_230096E48, v19);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_230095B08();
    v13 = swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    DeferredPromise.reject(_:)(v13);
  }
}

uint64_t sub_23008FD78(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  *(v8 + 16) = *(v7 + 80);
  sub_23004796C(a1, 0, 1, nullsub_1, 0, a2, a3, nullsub_1, v8);
}

uint64_t sub_23008FE60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v13 = *(v10 + 80);
  v12[2] = v13;
  v12[3] = a5;
  v12[4] = v11;
  v12[5] = a3;
  v12[6] = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a5;

  sub_23004796C(a1, 0, 1, nullsub_1, 0, sub_230095314, v12, nullsub_1, v14);
}

uint64_t sub_23008FFD0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a3(a1, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_230090048(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2301253A0(a1, a2, a3);
}

uint64_t sub_230090084(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = *(v10 + 80);
  v12[3] = a5;
  v12[4] = v11;
  v12[5] = a3;
  v12[6] = a4;

  sub_2301253A0(a1, sub_230095324, v12);
}

uint64_t sub_230090190(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2300901FC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2301253C0(a1, a2, a3);
}

uint64_t sub_230090238(void *a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = *(v3 + 80);
  v5 = sub_230047648(a1, sub_230095334, v4);

  return v5;
}

uint64_t Promise<A>.map<A>(on:closure:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_23030FDE8();
  type metadata accessor for DeferredPromise();

  v12 = sub_23004792C(v11);
  v13 = *(v10 + 80);
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a5;
  v14[4] = v12;
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = a5;
  v15[4] = v12;
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = a5;
  v16[4] = v12;
  v16[5] = a2;
  v16[6] = a3;
  swift_retain_n();

  sub_23004796C(a1, 0, 1, sub_230096FA4, v14, sub_230096FB8, v15, sub_23009538C, v16);

  result = swift_beginAccess();
  v18 = *(v12 + 16);
  if (v18)
  {

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2300904A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6)
{
  v8 = *a2;
  v11[2] = a5;
  v12 = *(*(v8 + 80) + 16);
  v13 = a6;
  v14 = a3;
  v15 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14308);
  v16[0] = sub_230058010(sub_230096D58, v11, a5, v12, v9, a6, MEMORY[0x277D84950], v16);
  DeferredPromise.resolve(_:)(v16);
}

uint64_t Promise<A>.compactMap<A>(on:closure:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_23030FDE8();
  type metadata accessor for DeferredPromise();

  v12 = sub_23004792C(v11);
  v13 = *(v10 + 80);
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a5;
  v14[4] = v12;
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = a5;
  v15[4] = v12;
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = a5;
  v16[4] = v12;
  v16[5] = a2;
  v16[6] = a3;
  swift_retain_n();

  sub_23004796C(a1, 0, 1, sub_230096FA4, v14, sub_230096FB8, v15, sub_2300953A4, v16);

  result = swift_beginAccess();
  v18 = *(v12 + 16);
  if (v18)
  {

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2300907BC()
{
  v1[0] = sub_23030FB78();
  DeferredPromise.resolve(_:)(v1);
}

uint64_t Promise<A>.reduce<A>(_:on:nextPartialResult:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v28 = a1;
  v9 = *v6;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DeferredPromise();
  v29 = v6[2];

  v14 = sub_23004792C(v13);
  v15 = *(v9 + 80);
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a6;
  v27 = a6;
  v16[4] = v14;
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = a6;
  v17[4] = v14;
  v18 = *(v10 + 16);
  swift_retain_n();
  v18(v12, v28, a5);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = v15;
  *(v21 + 3) = a5;
  *(v21 + 4) = v27;
  *(v21 + 5) = v14;
  (*(v10 + 32))(&v21[v19], v12, a5);
  v22 = &v21[v20];
  v23 = v31;
  *v22 = v30;
  *(v22 + 1) = v23;

  sub_23004796C(v32, 0, 1, sub_230096FA4, v16, sub_230096FB8, v17, sub_2300953D4, v21);

  result = swift_beginAccess();
  v25 = *(v14 + 16);
  if (v25)
  {

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_230090B64(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7[-v4];
  sub_23030FBD8();
  DeferredPromise.resolve(_:)(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t Promise<A>.reduce<A>(into:on:updateAccumulatingResult:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v28 = a1;
  v9 = *v6;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DeferredPromise();
  v29 = v6[2];

  v14 = sub_23004792C(v13);
  v15 = *(v9 + 80);
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a6;
  v27 = a6;
  v16[4] = v14;
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = a6;
  v17[4] = v14;
  v18 = *(v10 + 16);
  swift_retain_n();
  v18(v12, v28, a5);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = v15;
  *(v21 + 3) = a5;
  *(v21 + 4) = v27;
  *(v21 + 5) = v14;
  (*(v10 + 32))(&v21[v19], v12, a5);
  v22 = &v21[v20];
  v23 = v31;
  *v22 = v30;
  *(v22 + 1) = v23;

  sub_23004796C(v32, 0, 1, sub_230096FA4, v16, sub_230096FB8, v17, sub_2300954C0, v21);

  result = swift_beginAccess();
  v25 = *(v14 + 16);
  if (v25)
  {

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_230090F88(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  (*(v3 + 16))(v6, v9, v2);
  sub_23030FBC8();
  DeferredPromise.resolve(_:)(v8);
  return (*(v3 + 8))(v8, v2);
}

uint64_t Promise<A>.unique<A>(on:uniqueBy:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*v6 + 80);
  swift_getAssociatedTypeWitness();
  sub_23030FDE8();
  type metadata accessor for DeferredPromise();

  v12 = sub_23004792C(v11);
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = v12;
  v15 = swift_allocObject();
  v15[2] = v10;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = v12;
  v15[7] = a2;
  v15[8] = a3;
  swift_retain_n();

  sub_23004796C(a1, 0, 1, sub_230096D34, v13, sub_230096D10, v14, sub_23009554C, v15);

  result = swift_beginAccess();
  v17 = *(v12 + 16);
  if (v17)
  {

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23009136C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = Sequence.unique<A>(by:)(a3, a4, a5, a6, a7, a8);
  DeferredPromise.resolve(_:)(v9);
}

uint64_t static Promise.all<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2303100D8();
  if (v17)
  {
    (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
    v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 2) = *(v3 + 80);
    *(v11 + 3) = a2;
    *(v11 + 4) = a3;
    (*(v7 + 32))(&v11[v10], v9, a2);
    if (qword_280C9BA30 != -1)
    {
      swift_once();
    }

    v12 = qword_280C9BA38;
    sub_23030FDE8();
    v13 = v12;
    v14 = sub_230050C08(v13, sub_230095560, v11);
  }

  else
  {
    sub_23030FDE8();
    type metadata accessor for Promise();
    v17 = sub_23030FD38();
    v14 = sub_2300951C0(&v17);
  }

  return v14;
}

uint64_t sub_230091680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v29 = a2;
  v32 = a1;
  v7 = *(a3 - 8);
  v31 = *(v7 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v27 - v16;
  type metadata accessor for Promise();
  (*(v11 + 16))(v13, v29, a4);
  v18 = v28;
  sub_2303100F8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static Promise.all<A>(_:)(v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v15 + 8))(v17, AssociatedTypeWitness);
  v20 = v30;
  (*(v7 + 16))(v30, v32, a3);
  v21 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a3;
  *(v22 + 3) = a4;
  *(v22 + 4) = v18;
  (*(v7 + 32))(&v22[v21], v20, a3);
  if (qword_280C9BA30 != -1)
  {
    swift_once();
  }

  v23 = qword_280C9BA38;
  sub_23030FDE8();
  v24 = v23;
  v25 = sub_230050C08(v24, sub_230096C78, v22);

  return v25;
}

void *sub_2300919DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23030FDE8();
  type metadata accessor for Promise();
  sub_2300EA6EC(a3, a3);
  v5 = *(a3 - 8);
  swift_allocObject();
  v6 = sub_23030FCF8();
  (*(v5 + 16))(v7, a2, a3);
  sub_2300E9BC0(v6);
  v8 = sub_23030FD28();

  v11 = v8;
  v9 = sub_2300951C0(&v11);

  return v9;
}

uint64_t static Promise.race<A>(_:)()
{
  sub_2303100D8();
  v0 = type metadata accessor for Promise();
  MEMORY[0x28223BE20](v0);
  v1 = swift_allocObject();
  if (v3)
  {
    Promise.init(resolver:)(sub_23009558C);
  }

  else
  {
    Promise.init(resolver:)(nullsub_1);
  }

  return v1;
}

uint64_t sub_230091C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v35 = a5;
  v36 = a3;
  v37 = a4;
  v38 = a1;
  v34[0] = a2;
  v11 = *a6;
  v12 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = v34 - v17;
  v19 = swift_allocObject();
  v34[1] = a6;
  v20 = *(v11 + 80);
  *(v19 + 16) = sub_2300920A8() & 1;
  *(v19 + 24) = v21;
  type metadata accessor for Promise();
  (*(v12 + 16))(v14, v35, a7);
  v22 = v34[0];
  sub_2303100F8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = static Promise.race<A>(_:)(v18, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v16 + 8))(v18, AssociatedTypeWitness);
  v24 = swift_allocObject();
  v24[2] = v20;
  v24[3] = a7;
  v24[4] = a8;
  v24[5] = v19;
  v24[6] = v38;
  v24[7] = v22;
  v25 = qword_280C9BA30;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_280C9BA38;
  sub_230047648(v26, sub_230096A0C, v24);

  v27 = swift_allocObject();
  v27[2] = v20;
  v27[3] = a7;
  v27[4] = a8;
  v27[5] = v19;
  v28 = v36;
  v29 = v37;
  v27[6] = v36;
  v27[7] = v29;

  sub_230065368(v26, sub_230096A38, v27);

  v30 = swift_allocObject();
  v30[2] = v20;
  v30[3] = a7;
  v30[4] = a8;
  v30[5] = v19;
  v30[6] = v38;
  v30[7] = v22;

  v31 = v26;
  sub_230047648(v31, sub_230096A50, v30);

  v32 = swift_allocObject();
  v32[2] = v20;
  v32[3] = a7;
  v32[4] = a8;
  v32[5] = v19;
  v32[6] = v28;
  v32[7] = v29;

  sub_230065368(v31, sub_230096AE4, v32);
}

uint64_t sub_2300920A8()
{
  v7 = sub_230310348();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2303102F8();
  MEMORY[0x28223BE20](v3);
  v4 = sub_23030F4C8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_23004CBA4(0, &qword_280C9C2D0);
  sub_23030F488();
  v8 = MEMORY[0x277D84F90];
  sub_230096BDC(&qword_280C9C2D8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14710);
  sub_230096C24(&qword_280C9C2E8, &qword_27DB14710);
  sub_230310648();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  sub_230310388();
  return 0;
}

uint64_t sub_230092308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = swift_allocObject();
  v8[2] = *(a3 + 16);
  v8[3] = v3;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_230096B3C;
  *(v9 + 24) = v8;
  v13[4] = sub_230060B84;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_23005FEDC;
  v13[3] = &block_descriptor_145;
  v10 = _Block_copy(v13);
  v11 = v7;

  dispatch_sync(v11, v10);

  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_230092470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a3;
  v11[6] = a4;
  v11[7] = a1;
  swift_beginAccess();
  BlockRunner = type metadata accessor for Promise.FirstBlockRunner();
  sub_230092308(a8, v11, BlockRunner);
  return swift_endAccess();
}

uint64_t sub_2300924F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  swift_beginAccess();
  BlockRunner = type metadata accessor for Promise.FirstBlockRunner();
  sub_230092308(a8, v11, BlockRunner);
  return swift_endAccess();
}

uint64_t sub_23009258C(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t))
{
  type metadata accessor for Promise();
  v7 = a1;
  v4 = sub_23030FDE8();
  WitnessTable = swift_getWitnessTable();
  return a2(&v7, v4, WitnessTable);
}

uint64_t static Promise.zip<A, B>(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = *(v3 + 80);
  *(v4 + 24) = a2;
  v5 = qword_280C9BA30;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_280C9BA38;
  v7 = sub_230050C08(v6, sub_230095598, v4);

  return v7;
}

uint64_t sub_230092700(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = *(v4 + 80);
  (*(v5 + 32))(v9 + v8, v7, a3);
  if (qword_280C9BA30 != -1)
  {
    swift_once();
  }

  v10 = qword_280C9BA38;
  swift_getTupleTypeMetadata2();
  v11 = sub_230047648(v10, sub_2300969BC, v9);

  return v11;
}

uint64_t sub_2300928C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a3 - 8) + 16))(a5, a2, a3);
  return (*(*(a4 - 8) + 16))(a5 + v10, a1, a4);
}

uint64_t static Promise.zip<A, B, C>(_:_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = a2;
  v6[4] = a3;
  v7 = qword_280C9BA30;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_280C9BA38;
  v9 = sub_230050C08(v8, sub_2300955B4, v6);

  return v9;
}

uint64_t sub_230092A90(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10);
  v11 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a4;
  *(v12 + 3) = *(v6 + 80);
  *(v12 + 4) = *(v7 + 80);
  *(v12 + 5) = a3;
  (*(v8 + 32))(&v12[v11], v10, a4);
  v13 = qword_280C9BA30;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_280C9BA38;
  swift_getTupleTypeMetadata3();
  v15 = sub_230050C08(v14, sub_2300968C0, v12);

  return v15;
}

uint64_t sub_230092C88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v27 = a1;
  v28 = v8;
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v26 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v16, v17);
  (*(v9 + 16))(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27, a5);
  v18 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v19 = (v14 + *(v9 + 80) + v18) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  v21 = v28;
  v28 = a2;
  *(v20 + 4) = v21[10];
  (*(v13 + 32))(&v20[v18], v15, a4);
  (*(v9 + 32))(&v20[v19], v26, a5);
  if (qword_280C9BA30 != -1)
  {
    swift_once();
  }

  v22 = qword_280C9BA38;
  swift_getTupleTypeMetadata3();
  v23 = sub_230047648(v22, sub_230096914, v20);

  return v23;
}

uint64_t sub_230092F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = *(TupleTypeMetadata3 + 48);
  v16 = *(TupleTypeMetadata3 + 64);
  (*(*(a4 - 8) + 16))(a7, a2, a4);
  (*(*(a5 - 8) + 16))(a7 + v15, a3, a5);
  return (*(*(a6 - 8) + 16))(a7 + v16, a1, a6);
}

uint64_t static Promise.zip<A, B, C, D>(_:_:_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  v8[2] = *(v7 + 80);
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = qword_280C9BA30;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_280C9BA38;
  v11 = sub_230050C08(v10, sub_2300955D4, v8);

  return v11;
}

uint64_t sub_23009315C(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a2;
  v10 = *a3;
  v25 = *a4;
  v26 = v10;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  v14 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a5;
  v27 = a2;
  v16 = v26;
  v26 = *(v9 + 80);
  *(v15 + 3) = v26;
  v17 = *(v16 + 80);
  v18 = v25;
  *(v15 + 4) = v17;
  v19 = *(v18 + 80);
  *(v15 + 5) = v19;
  *(v15 + 6) = a3;
  *(v15 + 7) = a4;
  (*(v11 + 32))(&v15[v14], v13, a5);
  v20 = qword_280C9BA30;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_280C9BA38;
  v28 = a5;
  v29 = v26;
  v30 = v17;
  v31 = v19;
  swift_getTupleTypeMetadata();
  v22 = sub_230050C08(v21, sub_2300966C4, v15);

  return v22;
}

uint64_t sub_23009339C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a2;
  v29 = *a2;
  v30 = a3;
  v31 = *a3;
  v9 = *(a6 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v16, v17);
  (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a6);
  v18 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v19 = (v14 + *(v9 + 80) + v18) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = v29;
  v22 = v30;
  *(v20 + 2) = a5;
  *(v20 + 3) = a6;
  v29 = *(v21 + 80);
  *(v20 + 4) = v29;
  v31 = *(v31 + 80);
  *(v20 + 5) = v31;
  *(v20 + 6) = v22;
  (*(v13 + 32))(&v20[v18], v15, a5);
  (*(v9 + 32))(&v20[v19], v28, a6);
  v23 = qword_280C9BA30;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_280C9BA38;
  v32 = a5;
  v33 = a6;
  v34 = v29;
  v35 = v31;
  swift_getTupleTypeMetadata();
  v25 = sub_230050C08(v24, sub_230096718, v20);

  return v25;
}

uint64_t sub_23009367C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a4;
  v35 = a7;
  v42 = a2;
  v36 = a1;
  v37 = *a2;
  v8 = *(a7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v32 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v31 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))();
  v18 = a6;
  (*(v12 + 16))(&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v34, a6);
  v29 = v8;
  v19 = v35;
  (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v35);
  v20 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v21 = (v17 + *(v12 + 80) + v20) & ~*(v12 + 80);
  v22 = (v13 + *(v8 + 80) + v21) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v25 = v30;
  v24 = v31;
  *(v23 + 2) = v30;
  *(v23 + 3) = v18;
  *(v23 + 4) = v19;
  v37 = *(v37 + 80);
  *(v23 + 5) = v37;
  (*(v16 + 32))(&v23[v20], v24, v25);
  (*(v12 + 32))(&v23[v21], v32, v18);
  (*(v29 + 32))(&v23[v22], v33, v19);
  if (qword_280C9BA30 != -1)
  {
    swift_once();
  }

  v26 = qword_280C9BA38;
  v38 = v25;
  v39 = v18;
  v40 = v19;
  v41 = v37;
  swift_getTupleTypeMetadata();
  v27 = sub_230047648(v26, sub_2300967C4, v23);

  return v27;
}

uint64_t sub_230093A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v16 = TupleTypeMetadata[12];
  v17 = TupleTypeMetadata[16];
  v18 = TupleTypeMetadata[20];
  (*(*(a5 - 8) + 16))(a9, a2, a5);
  (*(*(a6 - 8) + 16))(a9 + v16, a3, a6);
  (*(*(a7 - 8) + 16))(a9 + v17, a4, a7);
  return (*(*(a8 - 8) + 16))(a9 + v18, a1, a8);
}

uint64_t static Promise.firstNonNil<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  v8 = sub_2303104C8();
  v21 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v22 = a3;
  v14 = sub_2303100D8();
  v15 = v23;
  if (v23)
  {
    v21 = v8;
    v23(&v23, v14);
    (*(v12 + 16))(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
    v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = v7;
    *(v17 + 3) = a2;
    *(v17 + 4) = v22;
    (*(v12 + 32))(&v17[v16], &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
    if (qword_280C9BA30 != -1)
    {
      swift_once();
    }

    v18 = qword_280C9BA38;
    v19 = sub_230050C08(v18, sub_230095674, v17);

    sub_2300528E4(v15);
  }

  else
  {
    type metadata accessor for Promise();
    (*(*(v7 - 8) + 56))(v11, 1, 1, v7);
    v19 = sub_2300951C0(v11);
    (*(v21 + 8))(v11, v8);
  }

  return v19;
}

void *sub_230093E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v32 = a1;
  v27 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v7;
  v25 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v25 - v8;
  v10 = sub_2303104C8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = *(a3 - 8);
  MEMORY[0x28223BE20](v15);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v17, v32, v10);
  if ((*(v18 + 48))(v17, 1, a3) == 1)
  {
    (*(v11 + 8))(v17, v10);
    type metadata accessor for Promise();
    (*(v27 + 16))(v26, v29, a4);
    sub_2303100F8();
    v21 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v23 = static Promise.firstNonNil<A>(_:)(v9, v21, AssociatedConformanceWitness);
    (*(v28 + 8))(v9, v21);
  }

  else
  {
    (*(v18 + 32))(v20, v17, a3);
    type metadata accessor for Promise();
    (*(v18 + 16))(v14, v20, a3);
    (*(v18 + 56))(v14, 0, 1, a3);
    v23 = sub_2300951C0(v14);
    (*(v11 + 8))(v14, v10);
    (*(v18 + 8))(v20, a3);
  }

  return v23;
}

uint64_t static Promise.firstNonNil(_:)(uint64_t a1)
{
  type metadata accessor for Promise();
  v5 = a1;
  sub_2303104C8();
  type metadata accessor for Promise();
  swift_getFunctionTypeMetadata0();
  v2 = sub_23030FDE8();
  WitnessTable = swift_getWitnessTable();
  return static Promise.firstNonNil<A>(_:)(&v5, v2, WitnessTable);
}

uint64_t static Promise.delay(until:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A30);
  v2 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *(v3 + 16) = v4;
  *v4 = 0;
  *(v3 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C8);
  v5 = swift_allocObject();
  *(v5 + 32) = MEMORY[0x277D84F90];
  *(v5 + 40) = 0;
  *(v5 + 48) = -1;
  *(v5 + 16) = v3;
  *(v5 + 24) = 0;
  *(v2 + 16) = v5;
  swift_retain_n();
  sub_230095720(sub_2300956FC, v2, a1);

  return v2;
}

uint64_t Promise.errorAsNil()()
{
  sub_2303104C8();
  type metadata accessor for Promise();
  v0 = swift_allocObject();
  Promise.init(resolver:)(sub_230095AF4);
  return v0;
}

uint64_t sub_230094470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  v8 = swift_allocObject();
  v9 = *(v7 + 80);
  v8[2] = v9;
  v8[3] = a1;
  v8[4] = a2;
  v10 = qword_280C9BA30;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_280C9BA38;
  sub_230047648(v11, sub_230096698, v8);

  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = a1;
  v12[4] = a2;

  sub_230065368(v11, sub_2300966B8, v12);
}

uint64_t sub_2300945C4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_2303104C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  v11 = *(a4 - 8);
  (*(v11 + 16))(v13 - v9, a1, a4);
  (*(v11 + 56))(v10, 0, 1, a4);
  a2(v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_230094724(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v6 = sub_2303104C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  (*(*(a4 - 8) + 56))(&v11 - v8, 1, 1, a4);
  a2(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t Promise.get()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_2300645FC, 0, 0);
}

uint64_t sub_230094894()
{
  sub_23030FE88();
  sub_230096BDC(&qword_27DB14708, MEMORY[0x277D85678]);
  swift_allocError();
  sub_23030F618();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  sub_23030FE78();
  return sub_23030FE58();
}

uint64_t sub_230094964(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  sub_23030FE78();
  return sub_23030FE58();
}

uint64_t Promise.__allocating_init(task:)()
{
  v0 = swift_allocObject();
  Promise.init(resolver:)(sub_230095AFC);

  return v0;
}

uint64_t sub_230094A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14700);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v22 - v17;
  v19 = sub_23030FEA8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a8;
  v20[5] = a7;
  v20[6] = a1;
  v20[7] = a2;
  v20[8] = a5;
  v20[9] = a6;
  v20[10] = a3;
  v20[11] = a4;

  sub_23014C634(0, 0, v18, &unk_230316360, v20);
}

uint64_t sub_230094BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v18;
  v8[9] = v19;
  v8[6] = a8;
  v8[7] = v17;
  v8[4] = a6;
  v8[5] = a7;
  v8[3] = a5;
  v10 = sub_23030FE88();
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = *(v19 - 8);
  v11 = swift_task_alloc();
  v8[14] = v11;
  v12 = swift_task_alloc();
  v8[15] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14308);
  v8[16] = v13;
  *v12 = v8;
  v12[1] = sub_230094D40;
  v14 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v11, a4, v19, v13, v14);
}

uint64_t sub_230094D40()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_230094EF8;
  }

  else
  {
    v2 = sub_230094E54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230094E54()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 72);
  (*(v0 + 24))(v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230094EF8()
{
  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  v2 = v1;
  v3 = swift_dynamicCast();
  v4 = *(v0 + 136);
  if (v3)
  {
    v5 = *(v0 + 40);
    v6 = (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    v5(v6);
  }

  else
  {
    (*(v0 + 56))(*(v0 + 136));
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_230094FE8(void *a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_2301250E8(a1);
  }

  return result;
}

uint64_t sub_230095060()
{
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_230125250();
  }

  return result;
}

BOOL _s19ReminderKitInternal12PromiseErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_23008E2DC(a1, v6);
  v3 = v7;
  if (v7 >= 2)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    __swift_destroy_boxed_opaque_existential_1(v6);
    v3 = 2;
  }

  sub_23008E2DC(a2, v6);
  v4 = v7;
  if (v7 >= 2)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    __swift_destroy_boxed_opaque_existential_1(v6);
    v4 = 2;
  }

  return v3 == v4;
}

uint64_t sub_230095158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2300951C0(uint64_t a1)
{
  type metadata accessor for Promise();
  swift_allocObject();
  return sub_230063638(a1);
}

uint64_t objectdestroy_5Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2300954D8(uint64_t a1, uint64_t (*a2)(uint64_t, void, char *, void, void, void, void))
{
  v3 = *(*(v2 + 3) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = &v2[(*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8];
  return a2(a1, *(v2 + 5), &v2[v4], *v5, *(v5 + 1), *(v2 + 2), *(v2 + 4));
}

uint64_t objectdestroy_55Tm()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_230095720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_23030F458();
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23030F4C8();
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23030F468();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_23004CBA4(0, &qword_280C9C2D0);
  (*(v12 + 104))(v14, *MEMORY[0x277D851C8], v11);

  v16 = sub_230310398();
  (*(v12 + 8))(v14, v11);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_230065700;
  *(v17 + 24) = v15;
  aBlock[4] = sub_23005FEB4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2300F5280;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);
  sub_23030F488();
  v23 = MEMORY[0x277D84F90];
  sub_230096BDC(&qword_280C9B430, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
  sub_230096C24(&qword_280C9B410, &unk_27DB16A40);
  sub_230310648();
  MEMORY[0x231912080](v21, v10, v7, v18);
  _Block_release(v18);

  (*(v22 + 8))(v7, v5);
  (*(v8 + 8))(v10, v20);
}

unint64_t sub_230095B08()
{
  result = qword_27DB146D0;
  if (!qword_27DB146D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB146D0);
  }

  return result;
}

uint64_t destroy for PromiseError(uint64_t result)
{
  if (*(result + 24) >= 0xFFFFFFFFuLL)
  {
    v2 = result;
    __swift_destroy_boxed_opaque_existential_1(result);

    return __swift_destroy_boxed_opaque_existential_1(v2 + 32);
  }

  return result;
}

__n128 initializeWithCopy for PromiseError(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 < 0xFFFFFFFF)
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    result = *(a2 + 32);
    v8 = *(a2 + 48);
    *(a1 + 32) = result;
    *(a1 + 48) = v8;
  }

  else
  {
    *(a1 + 24) = v2;
    (**(v2 - 8))();
    v5 = *(a2 + 56);
    *(a1 + 56) = v5;
    (**(v5 - 8))(a1 + 32, a2 + 32);
  }

  return result;
}

uint64_t assignWithCopy for PromiseError(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *(a1 + 24) = v4;
      (**(v4 - 8))(a1, a2);
      v5 = *(a2 + 7);
      *(a1 + 56) = v5;
      (**(v5 - 8))(a1 + 32, (a2 + 2));
      return a1;
    }

LABEL_7:
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = v8;
    *a1 = v6;
    *(a1 + 16) = v7;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(a1 + 32);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(a1, a2);
  __swift_assign_boxed_opaque_existential_0((a1 + 32), a2 + 4);
  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t assignWithTake for PromiseError(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v4 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 32);
LABEL_5:
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    goto LABEL_6;
  }

  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  __swift_destroy_boxed_opaque_existential_1(a1 + 32);
LABEL_6:
  v7 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  return a1;
}

uint64_t getEnumTagSinglePayload for PromiseError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 64))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PromiseError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2300960C4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_2300960DC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t dispatch thunk of Promise.__allocating_init(resolver:)()
{
  return (*(v0 + 112))();
}

{
  return (*(v0 + 120))();
}

uint64_t dispatch thunk of Promise.then<A, B>(on:disposeOn:closure:)()
{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 168))();
}

unint64_t sub_23009631C()
{
  result = qword_27DB146D8;
  if (!qword_27DB146D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB146D8);
  }

  return result;
}

uint64_t sub_230096370(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23009646C;

  return sub_230094BA0(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_23009646C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_230096560()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  sub_23030FE78();

  return sub_230094894();
}

uint64_t sub_2300965F4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  sub_23030FE78();

  return sub_230094964(a1);
}

uint64_t sub_2300967C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = (*(*(v2[2] - 8) + 80) + 48) & ~*(*(v2[2] - 8) + 80);
  v5 = (v4 + *(*(v2[2] - 8) + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  return sub_230093A00(a1, v2 + v4, v2 + v5, v2 + ((v5 + *(*(v3 - 8) + 64) + *(*(v2[4] - 8) + 80)) & ~*(*(v2[4] - 8) + 80)), v2[2], v3, v2[4], v2[5], a2);
}

uint64_t objectdestroy_126Tm()
{

  return swift_deallocObject();
}

uint64_t sub_230096B3C()
{
  v1 = *(v0 + 24);
  if ((*v1 & 1) == 0)
  {
    v2 = *(v0 + 32);
    *v1 = 1;
    return v2();
  }

  return result;
}

uint64_t sub_230096BDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_230096C24(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_230096CCC(uint64_t a1)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  }

  return a1;
}

uint64_t sub_230096D58(uint64_t a1, void *a2)
{
  result = (*(v2 + 40))();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_230096DF4()
{
  result = qword_280C9B9A0[0];
  if (!qword_280C9B9A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C9B9A0);
  }

  return result;
}

uint64_t sub_230096F20(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  v5 = v3;

  return a1;
}

uint64_t sub_230096F60(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void REMStore.invoke<A, B>(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26[2] = *MEMORY[0x277D85DE8];
  v26[0] = 0;
  v9 = [v4 resultFromPerformingInvocation:a1 error:v26];
  v10 = v26[0];
  if (v9)
  {
    v11 = v9;
    v25 = a2;
    swift_getAssociatedTypeWitness();
    v12 = swift_dynamicCastUnknownClass();
    if (v12)
    {
      v13 = v12;
      v26[0] = a1;
      v14 = *(a4 + 24);
      v15 = v10;
      v14(v13, v5, v25, a4);
    }

    else
    {
      v17 = objc_opt_self();
      v26[0] = 0;
      v26[1] = 0xE000000000000000;
      v18 = v10;
      sub_230310848();
      MEMORY[0x231911790](0xD00000000000003ELL, 0x80000002303400A0);
      v19 = [v11 description];
      v20 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v22 = v21;

      MEMORY[0x231911790](v20, v22);

      MEMORY[0x231911790](0x746365707865202CLL, 0xEC000000203A6465);
      v23 = sub_230311508();
      MEMORY[0x231911790](v23);

      MEMORY[0x231911790](0x61636F766E69202CLL, 0xEE00203A6E6F6974);
      swift_getWitnessTable();
      sub_230311018();
      v24 = sub_23030F8B8();

      [v17 internalErrorWithDebugDescription_];

      swift_willThrow();
    }
  }

  else
  {
    v16 = v26[0];
    sub_23030E808();

    swift_willThrow();
  }
}

uint64_t REMStoreInvocationKeySpace.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23009735C()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB147A8);
  v1 = __swift_project_value_buffer(v0, qword_27DB147A8);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void REMRecurrenceFrequency.shortDescription.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1 <= 1)
    {
      return;
    }
  }

  else if (a1 == 2 || a1 == 3 || a1 == 4)
  {
    return;
  }

  if (qword_27DB13AB0 != -1)
  {
    swift_once();
  }

  v1 = sub_23030EF48();
  __swift_project_value_buffer(v1, qword_27DB147A8);
  v2 = MEMORY[0x277D84F90];
  sub_23008C5BC(MEMORY[0x277D84F90]);
  sub_23008C5BC(v2);
  sub_230166680("Unknown REMRecurrenceFrequency", 30, 2);
  __break(1u);
}

void REMRecurrenceFrequency.tinyDescription.getter(unint64_t a1)
{
  if (a1 >= 5)
  {
    if (qword_27DB13AB0 != -1)
    {
      swift_once();
    }

    v1 = sub_23030EF48();
    __swift_project_value_buffer(v1, qword_27DB147A8);
    v2 = MEMORY[0x277D84F90];
    sub_23008C5BC(MEMORY[0x277D84F90]);
    sub_23008C5BC(v2);
    sub_230166680("Unknown REMRecurrenceFrequency", 30, 2);
    __break(1u);
  }
}

unint64_t sub_2300975FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2303167B0;
  *(inited + 32) = 28261;
  *(inited + 40) = 0xE200000000000000;
  v1 = sub_2302A38D0(&unk_2844E84B8);
  swift_arrayDestroy();
  *(inited + 48) = v1;
  *(inited + 56) = 0x736E61482D687ALL;
  *(inited + 64) = 0xE700000000000000;
  v2 = sub_2302A38D0(&unk_2844E99C8);
  swift_arrayDestroy();
  *(inited + 72) = v2;
  v3 = sub_23008CB18(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147C8);
  swift_arrayDestroy();
  return v3;
}

uint64_t Calendar.isDateComponents(_:inSameDayAs:)(uint64_t a1, uint64_t a2)
{
  v25[1] = a2;
  v2 = sub_23030EB58();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v25 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v25 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v25 - v13;
  v15 = objc_allocWithZone(MEMORY[0x277D44600]);
  v16 = sub_23030E668();
  v17 = [v15 initWithDueDateComponents:v16 alarms:0];

  if (v17)
  {
    v18 = [v17 date];

    sub_23030EB18();
    v19 = *(v3 + 32);
    v19(v14, v12, v2);
    v20 = objc_allocWithZone(MEMORY[0x277D44600]);
    v21 = sub_23030E668();
    v17 = [v20 initWithDueDateComponents:v21 alarms:0];

    if (v17)
    {
      v22 = [v17 date];

      sub_23030EB18();
      v19(v9, v6, v2);
      LOBYTE(v17) = sub_23030EDB8();
      v23 = *(v3 + 8);
      v23(v9, v2);
      v23(v14, v2);
    }

    else
    {
      (*(v3 + 8))(v14, v2);
    }
  }

  return v17 & 1;
}

uint64_t Calendar.endOfDay(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_23030EDE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_23030EB58();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(v4 + 104))(v6, *MEMORY[0x277CC9968], v3);
  sub_23030EDA8();
  (*(v4 + 8))(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_230061918(v9, &unk_27DB15AA0);
    return (*(v11 + 16))(v20, a1, v10);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    sub_23030ED48();
    sub_23030EA98();
    v18 = *(v11 + 8);
    v18(v14, v10);
    return (v18)(v16, v10);
  }
}

uint64_t sub_230097CA8@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v5 = sub_23030EDE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_23030EB58();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277CC9998], v5);
  sub_23030ED58();
  (*(v6 + 8))(v8, v5);
  v16 = sub_23030E4B8();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_230061918(v11, &qword_27DB147D0);
    return (*(v13 + 16))(a3, a1, v12);
  }

  else
  {
    v20();
    (*(v17 + 8))(v11, v16);
    return (*(v13 + 32))(a3, v15, v12);
  }
}

uint64_t Calendar.beginningOfNextDay(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_23030ED78();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_23030ED88();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23030ED68();
  v39 = *(v7 - 8);
  v8 = v39;
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v36 - v18;
  v20 = sub_23030E758();
  v41 = *(v20 - 8);
  v42 = v20;
  MEMORY[0x28223BE20](v20);
  v38 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23030EE08();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = sub_23030EE68();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  v40 = v13;
  sub_23030E718();
  v24 = v7;
  (*(v8 + 104))(v10, *MEMORY[0x277CC9878], v7);
  v25 = v43;
  v26 = v44;
  (*(v5 + 104))(v43, *MEMORY[0x277CC9900], v44);
  v27 = v45;
  v28 = v46;
  v29 = v47;
  (*(v46 + 104))(v45, *MEMORY[0x277CC98E8], v47);
  v37 = a1;
  v30 = v38;
  sub_23030EDD8();
  (*(v28 + 8))(v27, v29);
  (*(v5 + 8))(v25, v26);
  (*(v39 + 8))(v10, v24);
  (*(v41 + 8))(v30, v42);
  v31 = sub_23030EB58();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = v40;
  if (v33() != 1)
  {
    return (*(v32 + 32))(v48, v34, v31);
  }

  (*(v32 + 16))(v48, v37, v31);
  result = (v33)(v34, 1, v31);
  if (result != 1)
  {
    return sub_230061918(v34, &unk_27DB15AA0);
  }

  return result;
}

uint64_t Calendar.beginningOfPreviousDay(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v53 = a1;
  v2 = sub_23030ED88();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_23030ED78();
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23030ED68();
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23030EE08();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_23030EB58();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147E0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v39 - v22;
  v24 = sub_23030E758();
  v42 = *(v24 - 8);
  v43 = v24;
  MEMORY[0x28223BE20](v24);
  v41 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 56))(v23, 1, 1, v9);
  v26 = sub_23030EE68();
  (*(*(v26 - 8) + 56))(v20, 1, 1, v26);
  sub_23030E718();
  sub_23030EDC8();
  v40 = v14;
  sub_23030ED48();
  (*(v10 + 8))(v12, v9);
  (*(v55 + 104))(v8, *MEMORY[0x277CC9878], v54);
  v27 = v45;
  v29 = v47;
  v28 = v48;
  (*(v45 + 104))(v47, *MEMORY[0x277CC98F0], v48);
  v30 = v49;
  v31 = v50;
  v32 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x277CC9900], v51);
  v33 = v41;
  sub_23030EDD8();
  (*(v31 + 8))(v30, v32);
  v34 = v27;
  v35 = v44;
  (*(v34 + 8))(v29, v28);
  (*(v55 + 8))(v8, v54);
  v36 = v46;
  (*(v35 + 8))(v40, v46);
  (*(v42 + 8))(v33, v43);
  v37 = *(v35 + 48);
  if (v37(v17, 1, v36) != 1)
  {
    return (*(v35 + 32))(v52, v17, v36);
  }

  (*(v35 + 16))(v52, v53, v36);
  result = (v37)(v17, 1, v36);
  if (result != 1)
  {
    return sub_230061918(v17, &unk_27DB15AA0);
  }

  return result;
}

uint64_t Equatable.tryEqual(_:_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v21 = a6;
  v22 = a2;
  v20[0] = a5;
  v23 = a3;
  v9 = sub_23030E9B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = v7;
  v20[2] = a1;
  result = sub_23030F818();
  if ((result & 1) == 0)
  {
    sub_23030E8B8();
    v14 = sub_23030E8C8();
    v16 = v15;
    (*(v10 + 8))(v12, v9);
    v17 = objc_opt_self();
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_230310848();
    MEMORY[0x231911790](0x7463657078656E55, 0xEB00000000206465);
    sub_230311008();
    MEMORY[0x231911790](540877088, 0xE400000000000000);
    sub_230311008();
    MEMORY[0x231911790](0x656372756F737B20, 0xEA0000000000203ALL);
    MEMORY[0x231911790](v14, v16);

    MEMORY[0x231911790](58, 0xE100000000000000);
    v26 = v21;
    v18 = sub_230310E58();
    MEMORY[0x231911790](v18);

    MEMORY[0x231911790](0x7069726373656420, 0xEE00203A6E6F6974);
    MEMORY[0x231911790](v22, v23);
    MEMORY[0x231911790](125, 0xE100000000000000);
    v19 = sub_23030F8B8();

    [v17 internalErrorWithDebugDescription_];

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_230098F04()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB147E8);
  v1 = __swift_project_value_buffer(v0, qword_27DB147E8);
  if (qword_27DB13B68 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DB4F578);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

ReminderKitInternal::RDUserNotificationCategory_optional __swiftcall RDUserNotificationCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RDUserNotificationCategory.rawValue.getter()
{
  result = 0xD00000000000001FLL;
  switch(*v0)
  {
    case 1:
    case 5:
    case 0xC:
      result = 0xD000000000000023;
      break;
    case 2:
      result = 0xD000000000000034;
      break;
    case 3:
      result = 0xD000000000000028;
      break;
    case 4:
      result = 0xD00000000000002ELL;
      break;
    case 6:
      result = 0xD00000000000002FLL;
      break;
    case 7:
      result = 0xD000000000000031;
      break;
    case 8:
      result = 0xD00000000000003CLL;
      break;
    case 9:
      result = 0xD00000000000003ELL;
      break;
    case 0xA:
      result = 0xD000000000000040;
      break;
    case 0xB:
      result = 0xD000000000000042;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23009917C()
{
  v0 = RDUserNotificationCategory.rawValue.getter();
  v2 = v1;
  if (v0 == RDUserNotificationCategory.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_230311048();
  }

  return v5 & 1;
}

uint64_t sub_230099218()
{
  sub_230311358();
  RDUserNotificationCategory.rawValue.getter();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_230099280()
{
  RDUserNotificationCategory.rawValue.getter();
  sub_23030F9C8();
}

uint64_t sub_2300992E4()
{
  sub_230311358();
  RDUserNotificationCategory.rawValue.getter();
  sub_23030F9C8();

  return sub_2303113A8();
}

unint64_t sub_230099354@<X0>(unint64_t *a1@<X8>)
{
  result = RDUserNotificationCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ReminderKitInternal::RDUserNotificationAction_optional __swiftcall RDUserNotificationAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RDUserNotificationAction.rawValue.getter()
{
  v1 = 0xD00000000000002CLL;
  v2 = *v0;
  if (v2 <= 4)
  {
    v7 = 0xD00000000000002FLL;
    if (v2 == 3)
    {
      v8 = 0xD00000000000002DLL;
    }

    else
    {
      v8 = 0xD00000000000002CLL;
    }

    if (v2 != 2)
    {
      v7 = v8;
    }

    if (!*v0)
    {
      v1 = 0xD00000000000002FLL;
    }

    if (*v0 <= 1u)
    {
      return v1;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v3 = 0xD00000000000003DLL;
    v4 = 0xD00000000000003ALL;
    if (v2 != 9)
    {
      v4 = 0xD000000000000042;
    }

    if (v2 != 8)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000030;
    if (v2 == 6)
    {
      v5 = 0xD000000000000033;
    }

    if (v2 == 5)
    {
      v5 = 0xD000000000000032;
    }

    if (*v0 <= 7u)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_230099528()
{
  sub_230311358();
  sub_2302AE78C();
  return sub_2303113A8();
}

uint64_t sub_230099578()
{
  sub_230311358();
  sub_2302AE78C();
  return sub_2303113A8();
}

unint64_t sub_2300995C8@<X0>(unint64_t *a1@<X8>)
{
  result = RDUserNotificationAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void RDUserNotificationType.init(notificationContent:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 categoryIdentifier];
  v5 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  RDUserNotificationCategory.init(rawValue:)(v8);
  if (v100 > 7u)
  {
    if (v100 - 8 >= 4)
    {
      if (v100 == 12)
      {
        UNNotificationContent.notificationIdentifier.getter(&v100);
        v14 = v101;
        if (v101 != 255)
        {

          v11 = v14 & 1 | 0xA0;
          *a2 = v100;
          goto LABEL_59;
        }

        if (qword_27DB13AB8 != -1)
        {
          swift_once();
        }

        v15 = sub_23030EF48();
        __swift_project_value_buffer(v15, qword_27DB147E8);
        v16 = a1;
        v17 = sub_23030EF38();
        v18 = sub_230310298();

        if (os_log_type_enabled(v17, v18))
        {
          goto LABEL_23;
        }

        goto LABEL_57;
      }

LABEL_18:
      v19 = [a1 categoryIdentifier];
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

      LOBYTE(v19) = sub_23009ADD4();

      if (v19)
      {
        UNNotificationContent.notificationIdentifier.getter(&v100);
        v20 = v101;
        if (v101 != 255)
        {

          v11 = v20 & 1;
          *a2 = v100;
          goto LABEL_59;
        }

        if (qword_27DB13AB8 != -1)
        {
          swift_once();
        }

        v21 = sub_23030EF48();
        __swift_project_value_buffer(v21, qword_27DB147E8);
        v16 = a1;
        v17 = sub_23030EF38();
        v18 = sub_230310298();

        if (os_log_type_enabled(v17, v18))
        {
LABEL_23:
          v22 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *&v100 = v99;
          *v22 = 136315394;
          v23 = [v16 categoryIdentifier];
          v24 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v26 = v25;

          v27 = sub_23004E30C(v24, v26, &v100);

          *(v22 + 4) = v27;
          *(v22 + 12) = 2080;
          v28 = [v16 userInfo];
          sub_23030F658();

          v29 = sub_23030F668();
          v31 = v30;

          v32 = sub_23004E30C(v29, v31, &v100);

          *(v22 + 14) = v32;
          v33 = "No notificationIdentifier found in notification content {categoryID: %s, userInfo: %s}";
LABEL_55:
          _os_log_impl(&dword_230044000, v17, v18, v33, v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x231914180](v99, -1, -1);
          v57 = v22;
          goto LABEL_56;
        }
      }

      else
      {
        if (qword_27DB13AB8 != -1)
        {
          swift_once();
        }

        v48 = sub_23030EF48();
        __swift_project_value_buffer(v48, qword_27DB147E8);
        v16 = a1;
        v17 = sub_23030EF38();
        v49 = sub_230310298();

        if (os_log_type_enabled(v17, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v100 = v51;
          *v50 = 136315138;
          v52 = [v16 categoryIdentifier];
          v53 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v55 = v54;

          v56 = sub_23004E30C(v53, v55, &v100);

          *(v50 + 4) = v56;
          _os_log_impl(&dword_230044000, v17, v49, "Unhandled notification content category {category: %s}", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v51);
          MEMORY[0x231914180](v51, -1, -1);
          v57 = v50;
LABEL_56:
          MEMORY[0x231914180](v57, -1, -1);

LABEL_58:
          *a2 = 0;
          *(a2 + 8) = 0;
          v11 = -2;
          goto LABEL_59;
        }
      }

LABEL_57:

      goto LABEL_58;
    }

    v9 = UNNotificationContent.reminderIDs.getter();
    if (!v9)
    {
      if (qword_27DB13AB8 != -1)
      {
        swift_once();
      }

      v37 = sub_23030EF48();
      __swift_project_value_buffer(v37, qword_27DB147E8);
      v16 = a1;
      v17 = sub_23030EF38();
      v18 = sub_230310298();

      if (os_log_type_enabled(v17, v18))
      {
        v22 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v100 = v99;
        *v22 = 136315394;
        v38 = [v16 categoryIdentifier];
        v39 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v41 = v40;

        v42 = sub_23004E30C(v39, v41, &v100);

        *(v22 + 4) = v42;
        *(v22 + 12) = 2080;
        v43 = [v16 userInfo];
        sub_23030F658();

        v44 = sub_23030F668();
        v46 = v45;

        v47 = sub_23004E30C(v44, v46, &v100);

        *(v22 + 14) = v47;
        v33 = "No reminderIDs found in shared list update notification content. {categoryIdentifier: %s, userInfo: %s}";
        goto LABEL_55;
      }

      goto LABEL_57;
    }

    v10 = v9;

    *a2 = v10;
    *(a2 + 8) = 0;
    v11 = 0x80;
    goto LABEL_59;
  }

  if (v100 > 3u)
  {
    if (v100 - 6 >= 2)
    {
      if (v100 == 4)
      {
        v35 = UNNotificationContent.listID.getter();
        if (v35)
        {
          v36 = v35;

          *a2 = v36;
          *(a2 + 8) = 0;
          v11 = 64;
          goto LABEL_59;
        }

        if (qword_27DB13AB8 != -1)
        {
          swift_once();
        }

        v87 = sub_23030EF48();
        __swift_project_value_buffer(v87, qword_27DB147E8);
        v16 = a1;
        v17 = sub_23030EF38();
        v18 = sub_230310298();

        if (os_log_type_enabled(v17, v18))
        {
          v22 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *&v100 = v99;
          *v22 = 136315394;
          v88 = [v16 categoryIdentifier];
          v89 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v91 = v90;

          v92 = sub_23004E30C(v89, v91, &v100);

          *(v22 + 4) = v92;
          *(v22 + 12) = 2080;
          v93 = [v16 userInfo];
          sub_23030F658();

          v94 = sub_23030F668();
          v96 = v95;

          v97 = sub_23004E30C(v94, v96, &v100);

          *(v22 + 14) = v97;
          v33 = "No listID found in notification content. {categoryIdentifier: %s, userInfo: %s}";
          goto LABEL_55;
        }

        goto LABEL_57;
      }

      v58 = xmmword_2303167F0;
LABEL_40:
      *a2 = v58;
      v11 = -64;
      goto LABEL_59;
    }

    v12 = UNNotificationContent.reminderIDs.getter();
    if (!v12)
    {
      if (qword_27DB13AB8 != -1)
      {
        swift_once();
      }

      v59 = sub_23030EF48();
      __swift_project_value_buffer(v59, qword_27DB147E8);
      v16 = a1;
      v17 = sub_23030EF38();
      v18 = sub_230310298();

      if (os_log_type_enabled(v17, v18))
      {
        v22 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v100 = v99;
        *v22 = 136315394;
        v60 = [v16 categoryIdentifier];
        v61 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v63 = v62;

        v64 = sub_23004E30C(v61, v63, &v100);

        *(v22 + 4) = v64;
        *(v22 + 12) = 2080;
        v65 = [v16 userInfo];
        sub_23030F658();

        v66 = sub_23030F668();
        v68 = v67;

        v69 = sub_23004E30C(v66, v68, &v100);

        *(v22 + 14) = v69;
        v33 = "No reminderIDs found in assignment notification content. {categoryIdentifier: %s, userInfo: %s}";
        goto LABEL_55;
      }

      goto LABEL_57;
    }

    v13 = v12;

    *a2 = v13;
    *(a2 + 8) = 0;
    v11 = 96;
LABEL_59:
    *(a2 + 16) = v11;
    return;
  }

  if (v100 <= 1u)
  {
    if (v100)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  if (v100 != 2)
  {

    v58 = xmmword_230316800;
    goto LABEL_40;
  }

  UNNotificationContent.notificationIdentifier.getter(&v100);
  v34 = v101;
  if (v101 == 255)
  {
LABEL_26:

    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = -64;
    goto LABEL_59;
  }

  v70 = v100;
  if (qword_27DB13AB8 != -1)
  {
    swift_once();
  }

  v71 = v34 & 1 | 0x20;
  v72 = sub_23030EF48();
  __swift_project_value_buffer(v72, qword_27DB147E8);
  v73 = a1;
  v74 = sub_23030EF38();
  v75 = sub_230310298();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *&v100 = v98;
    *v76 = 136315394;
    v77 = [v73 categoryIdentifier];
    v78 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v80 = v79;

    v81 = sub_23004E30C(v78, v80, &v100);

    *(v76 + 4) = v81;
    *(v76 + 12) = 2080;
    v82 = [v73 userInfo];
    sub_23030F658();

    v83 = sub_23030F668();
    v85 = v84;

    v86 = sub_23004E30C(v83, v85, &v100);

    *(v76 + 14) = v86;
    _os_log_impl(&dword_230044000, v74, v75, "No notificationIdentifier found in notification content. {categoryIdentifier: %s, userInfo: %s}", v76, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231914180](v98, -1, -1);
    MEMORY[0x231914180](v76, -1, -1);

    *a2 = v70;
    v11 = v71;
    goto LABEL_59;
  }

  *a2 = v70;
  *(a2 + 16) = v71;
}

uint64_t UNNotificationContent.notificationIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_23030EBB8();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 userInfo];
  v11 = sub_23030F658();

  v26 = 0xD000000000000033;
  v27 = 0x8000000230340140;
  sub_230310768();
  if (*(v11 + 16) && (v12 = sub_230081C20(v28), (v13 & 1) != 0))
  {
    sub_23004D5CC(*(v11 + 56) + 32 * v12, v29);
    sub_23008E21C(v28);

    result = swift_dynamicCast();
    if (result)
    {
      v15 = v27;
      *a1 = v26;
      *(a1 + 8) = v15;
      v16 = 1;
      goto LABEL_13;
    }
  }

  else
  {

    sub_23008E21C(v28);
  }

  v17 = [v2 userInfo];
  v18 = sub_23030F658();

  v26 = 0xD00000000000001FLL;
  v27 = 0x8000000230340180;
  sub_230310768();
  if (*(v18 + 16) && (v19 = sub_230081C20(v28), (v20 & 1) != 0))
  {
    sub_23004D5CC(*(v18 + 56) + 32 * v19, v29);
    sub_23008E21C(v28);

    result = swift_dynamicCast();
    if (result)
    {
      sub_23030EB68();

      v21 = v25;
      if ((*(v25 + 48))(v6, 1, v7) != 1)
      {
        (*(v21 + 32))(v9, v6, v7);
        v22 = objc_opt_self();
        v23 = sub_23030EB88();
        v24 = [v22 objectIDWithUUID_];

        result = (*(v21 + 8))(v9, v7);
        *a1 = v24;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        return result;
      }

      result = sub_230061918(v6, &qword_27DB14800);
    }
  }

  else
  {

    result = sub_23008E21C(v28);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v16 = -1;
LABEL_13:
  *(a1 + 16) = v16;
  return result;
}

id UNNotificationContent.listID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v16 - v2;
  v4 = sub_23030EBB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 userInfo];
  v9 = sub_23030F658();

  v16[1] = 0xD00000000000001BLL;
  v16[2] = 0x80000002303401A0;
  sub_230310768();
  if (*(v9 + 16) && (v10 = sub_230081C20(v17), (v11 & 1) != 0))
  {
    sub_23004D5CC(*(v9 + 56) + 32 * v10, v18);
    sub_23008E21C(v17);

    if (swift_dynamicCast())
    {
      sub_23030EB68();

      if ((*(v5 + 48))(v3, 1, v4) != 1)
      {
        (*(v5 + 32))(v7, v3, v4);
        v13 = objc_opt_self();
        v14 = sub_23030EB88();
        v15 = [v13 objectIDWithUUID_];

        (*(v5 + 8))(v7, v4);
        return v15;
      }

      sub_230061918(v3, &qword_27DB14800);
    }
  }

  else
  {

    sub_23008E21C(v17);
  }

  return 0;
}

unint64_t UNNotificationContent.reminderIDs.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_23030EBB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 userInfo];
  v8 = sub_23030F658();

  v34 = 0xD000000000000020;
  v35 = 0x80000002303401C0;
  sub_230310768();
  if (!*(v8 + 16) || (v9 = sub_230081C20(v36), (v10 & 1) == 0))
  {

    sub_23008E21C(v36);
    return 0;
  }

  sub_23004D5CC(*(v8 + 56) + 32 * v9, v37);
  sub_23008E21C(v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v11 = v34;
  v12 = MEMORY[0x277D84F90];
  v36[0] = MEMORY[0x277D84F90];
  v13 = *(v34 + 16);
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = 0;
  v15 = (v5 + 48);
  v30 = (v5 + 8);
  v31 = (v5 + 32);
  v16 = v34 + 40;
  v27 = v13 - 1;
  v28 = v34 + 40;
  v33 = v34;
  do
  {
    v29 = v12;
    v17 = v16 + 16 * v14;
    v18 = v14;
    while (1)
    {
      if (v18 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v12 = *(v17 - 8);

      sub_23030EB68();
      if ((*v15)(v3, 1, v4) != 1)
      {
        break;
      }

      sub_230061918(v3, &qword_27DB14800);
LABEL_8:
      ++v18;
      v17 += 16;
      v11 = v33;
      if (v13 == v18)
      {
        v12 = v29;
        goto LABEL_20;
      }
    }

    v19 = v15;
    v20 = v4;
    v21 = v32;
    (*v31)(v32, v3, v20);
    v22 = objc_opt_self();
    v12 = sub_23030EB88();
    v23 = [v22 objectIDWithUUID_];

    v24 = v21;
    v4 = v20;
    v15 = v19;
    v25 = (*v30)(v24, v4);
    if (!v23)
    {
      goto LABEL_8;
    }

    MEMORY[0x231911A30](v25);
    if (*((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23030FD18();
    }

    v14 = v18 + 1;
    sub_23030FD68();
    v12 = v36[0];
    v16 = v28;
    v11 = v33;
  }

  while (v27 != v18);
LABEL_20:

  if (v12 >> 62)
  {
LABEL_24:
    if (sub_2303106D8())
    {
      return v12;
    }

LABEL_22:

    return 0;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

  return v12;
}

uint64_t sub_23009ADD4()
{

  v0 = sub_23030FA38();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_23030FA38();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_230311048();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_23030FA38();
      v3 = v5;
    }

    while (v5);
  }

  sub_23030FA38();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void REMNotificationIdentifier.init(reminder:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 daCalendarItemUniqueIdentifier];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v8 = v7;

  v9 = [a1 account];
  v10 = [v9 capabilities];

  LODWORD(v9) = [v10 supportsEventKitSync];
  if (!v9)
  {

LABEL_5:
    v6 = [a1 objectID];

    v8 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  v11 = 1;
LABEL_6:
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
}

void REMNotificationIdentifier.init(requestIdentifier:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v9 = sub_23030EBB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_23030FAC8())
  {
    v13 = sub_23030F9D8();
    v14 = sub_2300A313C(v13, a1, a2);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    MEMORY[0x2319116F0](v14, v16, v18, v20);

    sub_23030EB68();

    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      v33 = objc_opt_self();
      v34 = sub_23030EB88();
      v35 = [v33 objectIDWithUUID_];

      (*(v10 + 8))(v12, v9);
      *a3 = v35;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return;
    }

    sub_230061918(v8, &qword_27DB14800);
    goto LABEL_13;
  }

  if ((sub_23030FAC8() & 1) == 0)
  {
    if (qword_27DB13AB8 != -1)
    {
      swift_once();
    }

    v36 = sub_23030EF48();
    __swift_project_value_buffer(v36, qword_27DB147E8);

    v37 = sub_23030EF38();
    v38 = sub_230310288();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43 = v40;
      *v39 = 136446210;
      v41 = sub_23004E30C(a1, a2, &v43);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_230044000, v37, v38, "Received a REMNotificationIdentifier with unknown prefix: %{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x231914180](v40, -1, -1);
      MEMORY[0x231914180](v39, -1, -1);
    }

    else
    {
    }

LABEL_13:
    *a3 = 0;
    *(a3 + 8) = 0;
    v32 = -1;
    goto LABEL_14;
  }

  v21 = sub_23030F9D8();
  v22 = sub_2300A313C(v21, a1, a2);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = MEMORY[0x2319116F0](v22, v24, v26, v28);
  v31 = v30;

  *a3 = v29;
  *(a3 + 8) = v31;
  v32 = 1;
LABEL_14:
  *(a3 + 16) = v32;
}

uint64_t REMNotificationIdentifier.requestIdentifier.getter()
{
  v1 = sub_23030EBB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 16))
  {
    v6 = *(v0 + 8);
    strcpy(v12, "daCalItemUID-");
    HIWORD(v12[1]) = -4864;
    MEMORY[0x231911790](v5, v6);
  }

  else
  {
    v7 = [v5 uuid];
    sub_23030EBA8();

    v8 = sub_23030EB78();
    v10 = v9;
    (*(v2 + 8))(v4, v1);
    strcpy(v12, "REMObjectID-");
    BYTE5(v12[1]) = 0;
    HIWORD(v12[1]) = -5120;
    MEMORY[0x231911790](v8, v10);
  }

  return v12[0];
}

id REMStore.fetchReminder(notificationIdentifier:includingDueDateDeltaAlerts:)(uint64_t *a1, char a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (*(a1 + 16) == 1)
  {
    v4 = sub_23030F8B8();
    v11[0] = 0;
    v5 = [v2 fetchReminderWithDACalendarItemUniqueIdentifier:v4 inList:0 error:v11];

    v6 = v11[0];
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else if (a2)
  {
    v7 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
    v11[0] = 0;
    v5 = [v2 fetchReminderWithObjectID:v3 fetchOptions:v7 error:v11];

    v6 = v11[0];
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11[0] = 0;
    v8 = [v2 fetchReminderWithObjectID:v3 error:v11];
    v6 = v11[0];
    if (!v8)
    {
LABEL_10:
      v5 = v6;
      sub_23030E808();

      swift_willThrow();
      return v5;
    }

    v5 = v8;
  }

  v9 = v6;
  return v5;
}

uint64_t REMStore.fetchReminders(notificationIdentifiers:)(uint64_t a1)
{
  v27[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 48);
    do
    {
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);
      if (*v4 == 1)
      {
        sub_2300A31EC(v7, v6, 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_23007E928(0, *(v2 + 2) + 1, 1, v2);
        }

        v9 = *(v2 + 2);
        v8 = *(v2 + 3);
        if (v9 >= v8 >> 1)
        {
          v2 = sub_23007E928((v8 > 1), v9 + 1, 1, v2);
        }

        *(v2 + 2) = v9 + 1;
        v5 = &v2[16 * v9];
        *(v5 + 4) = v7;
        *(v5 + 5) = v6;
        sub_2300A31FC(v7, v6, 1);
      }

      else
      {
        sub_2300A31EC(v7, v6, 0);
        v10 = v7;
        MEMORY[0x231911A30]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23030FD18();
        }

        sub_23030FD68();
        sub_2300A31FC(v7, v6, 0);
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  v11 = sub_23030FCC8();

  v27[0] = 0;
  v12 = [v1 fetchRemindersWithDACalendarItemUniqueIdentifiers:v11 inList:0 error:v27];

  v13 = v27[0];
  if (!v12)
  {
    goto LABEL_18;
  }

  sub_23004CBA4(0, &qword_27DB14808);
  v14 = sub_23030F658();
  v15 = v13;

  sub_23004CBA4(0, &qword_280C9C478);
  v16 = sub_23030FCC8();

  v27[0] = 0;
  v17 = [v1 fetchRemindersWithObjectIDs:v16 error:v27];

  v13 = v27[0];
  if (!v17)
  {
    goto LABEL_18;
  }

  sub_23004CD24();
  v18 = sub_23030F658();
  v19 = v13;

  v20 = *(v14 + 16);
  if (v20)
  {
    v21 = sub_23009DBAC(*(v14 + 16), 0);
    v22 = sub_23009E874(v27, v21 + 4, v20, v14);
    sub_230060014();
    if (v22 != v20)
    {
      __break(1u);
LABEL_18:
      v23 = v13;

      sub_23030E808();

      return swift_willThrow();
    }
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v25 = sub_23009D550(v18);

  v27[0] = v21;
  sub_23009D2A4(v25, sub_2302956C8, sub_2302944E0);
  return v27[0];
}

Swift::String __swiftcall REMReminderNextThirdsHour.stringForSnoozingUntil()()
{
  if (v0 >= 4)
  {
    type metadata accessor for REMReminderNextThirdsHour(0);
    v5 = sub_230311258();
    __break(1u);
  }

  else
  {
    v1 = _REMGetLocalizedString();
    v2 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v4 = v3;

    v5 = v2;
    v6 = v4;
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall REMReminderNextThirdsHour.systemImageStringForSnoozingUntil()()
{
  v1 = v0;
  v2 = 0x78616D2E6E7573;
  v3 = 0xE700000000000000;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v3 = 0xEA00000000007372;
      v2 = 0x6174732E6E6F6F6DLL;
      goto LABEL_10;
    }

    if (v1 == 3)
    {
      goto LABEL_10;
    }

LABEL_9:
    type metadata accessor for REMReminderNextThirdsHour(0);
    v2 = sub_230311258();
    __break(1u);
    goto LABEL_10;
  }

  if (!v1)
  {
    goto LABEL_10;
  }

  if (v1 != 1)
  {
    goto LABEL_9;
  }

  v3 = 0xE500000000000000;
  v2 = 0x6B636F6C63;
LABEL_10:
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

void UNMutableNotificationContent.setNotificationIdentifier(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23030EBB8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9 == 255)
  {
    *&v29 = 0xD00000000000001FLL;
    *(&v29 + 1) = 0x8000000230340180;
    sub_230310768();
    v13 = [v2 userInfo];
    v14 = sub_23030F658();

    *&v27[0] = v14;
    sub_2300A11E8(v28, &v29);
    sub_23008E21C(v28);
    sub_230061918(&v29, &qword_27DB14810);
    v15 = sub_23030F638();

    [v2 setUserInfo_];
  }

  else
  {
    v11 = *a1;
    v10 = *(a1 + 8);
    if (v9)
    {
      *&v29 = 0xD000000000000033;
      *(&v29 + 1) = 0x8000000230340140;
      sub_2300A3224(v11, v10, v9);
      sub_2300A31EC(v11, v10, 1);
      v12 = MEMORY[0x277D837D0];
      sub_230310768();
      v30 = v12;
      *&v29 = v11;
      *(&v29 + 1) = v10;
    }

    else
    {
      *&v29 = 0xD00000000000001FLL;
      *(&v29 + 1) = 0x8000000230340180;
      v16 = v6;
      sub_2300A31EC(v11, v10, 0);
      v17 = MEMORY[0x277D837D0];
      sub_230310768();
      v18 = [v11 uuid];
      sub_23030EBA8();

      v19 = sub_23030EB78();
      v21 = v20;
      (*(v5 + 8))(v8, v16);
      v30 = v17;
      *&v29 = v19;
      *(&v29 + 1) = v21;
    }

    v22 = [v2 userInfo];
    v23 = sub_23030F658();

    sub_23004B314(&v29, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v23;
    sub_2300A1610(v27, v28, isUniquelyReferenced_nonNull_native);
    sub_23008E21C(v28);
    v25 = sub_23030F638();

    [v2 setUserInfo_];
    sub_2300A320C(v11, v10, v9);
  }
}

Swift::Void __swiftcall UNMutableNotificationContent.setReminderIDs(_:)(Swift::OpaquePointer_optional a1)
{
  v2 = v1;
  rawValue = a1.value._rawValue;
  v4 = a1.value._rawValue;
  v32 = sub_23030EBB8();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v4)
  {
    goto LABEL_22;
  }

  if (!(rawValue >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_22:
    *&v37 = 0xD000000000000020;
    *(&v37 + 1) = 0x80000002303401C0;
    sub_230310768();
    v26 = [v1 userInfo];
    v27 = sub_23030F658();

    *&v34[0] = v27;
    sub_2300A11E8(v36, &v37);
    sub_23008E21C(v36);
    sub_230061918(&v37, &qword_27DB14810);
LABEL_23:
    v28 = sub_23030F638();

    [v2 setUserInfo_];

    return;
  }

  if (!sub_2303106D8())
  {
    goto LABEL_22;
  }

LABEL_4:
  *&v37 = 0xD000000000000020;
  *(&v37 + 1) = 0x80000002303401C0;
  sub_230310768();
  if (rawValue >> 62)
  {
    v8 = sub_2303106D8();
  }

  else
  {
    v8 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
LABEL_17:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    v38 = v22;
    *&v37 = v9;
    v23 = [v2 userInfo];
    v24 = sub_23030F658();

    v35 = v24;
    if (v22)
    {
      sub_23004B314(&v37, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v24;
      sub_2300A1610(v34, v36, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_230061918(&v37, &qword_27DB14810);
      sub_2300A11E8(v36, v34);
      sub_230061918(v34, &qword_27DB14810);
    }

    sub_23008E21C(v36);
    goto LABEL_23;
  }

  v29 = v1;
  *&v37 = MEMORY[0x277D84F90];
  sub_23009EC34(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v9 = v37;
    v11 = v4;
    v30 = v4 & 0xC000000000000001;
    v31 = v4;
    v12 = (v5 + 8);
    do
    {
      if (v30)
      {
        v13 = MEMORY[0x231912650](v10);
      }

      else
      {
        v13 = *(v11 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = [v13 uuid];
      sub_23030EBA8();

      v16 = sub_23030EB78();
      v18 = v17;

      (*v12)(v7, v32);
      *&v37 = v9;
      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_23009EC34((v19 > 1), v20 + 1, 1);
        v9 = v37;
      }

      ++v10;
      *(v9 + 16) = v20 + 1;
      v21 = v9 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v11 = v31;
    }

    while (v8 != v10);
    v2 = v29;
    goto LABEL_17;
  }

  __break(1u);
}

Swift::Void __swiftcall UNMutableNotificationContent.setListID(_:)(REMObjectID_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v4 = sub_23030EBB8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](isa);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  if (v9)
  {
    v12 = [v9 uuid];
    sub_23030EBA8();

    (*(v5 + 32))(v11, v8, v4);
    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002303401A0;
    v13 = MEMORY[0x277D837D0];
    sub_230310768();
    v14 = sub_23030EB78();
    v27 = v13;
    *&v26 = v14;
    *(&v26 + 1) = v15;
    v16 = [v2 userInfo];
    v17 = sub_23030F658();

    sub_23004B314(&v26, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v17;
    sub_2300A1610(v24, v25, isUniquelyReferenced_nonNull_native);
    sub_23008E21C(v25);
    v19 = sub_23030F638();

    [v2 setUserInfo_];

    (*(v5 + 8))(v11, v4);
  }

  else
  {
    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002303401A0;
    sub_230310768();
    v20 = [v2 userInfo];
    v21 = sub_23030F658();

    *&v24[0] = v21;
    sub_2300A11E8(v25, &v26);
    sub_23008E21C(v25);
    sub_230061918(&v26, &qword_27DB14810);
    v22 = sub_23030F638();

    [v2 setUserInfo_];
  }
}

uint64_t UNNotificationContent.firesBeforeFirstUnlock.getter()
{
  v1 = [v0 userInfo];
  v2 = sub_23030F658();

  v8[0] = 0xD00000000000002BLL;
  v8[1] = 0x80000002303401F0;
  sub_230310768();
  if (*(v2 + 16) && (v3 = sub_230081C20(v7), (v4 & 1) != 0))
  {
    sub_23004D5CC(*(v2 + 56) + 32 * v3, v8);
    sub_23008E21C(v7);

    result = swift_dynamicCast();
    if (result)
    {
      return v6;
    }
  }

  else
  {

    sub_23008E21C(v7);
    return 0;
  }

  return result;
}

Swift::Void __swiftcall UNMutableNotificationContent.setFiresBeforeFirstUnlock(_:)(Swift::Bool a1)
{
  v2 = v1;
  *&v9 = 0xD00000000000002BLL;
  *(&v9 + 1) = 0x80000002303401F0;
  sub_230310768();
  v10 = MEMORY[0x277D839B0];
  LOBYTE(v9) = a1;
  v4 = [v2 userInfo];
  v5 = sub_23030F658();

  sub_23004B314(&v9, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A1610(v8, v11, isUniquelyReferenced_nonNull_native);
  sub_23008E21C(v11);
  v7 = sub_23030F638();

  [v2 setUserInfo_];
}

uint64_t UNNotificationContent.lastRecurringFireDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 userInfo];
  v4 = sub_23030F658();

  sub_230310768();
  if (*(v4 + 16) && (v5 = sub_230081C20(v11), (v6 & 1) != 0))
  {
    sub_23004D5CC(*(v4 + 56) + 32 * v5, v12);
    sub_23008E21C(v11);

    v7 = sub_23030EB58();
    v8 = swift_dynamicCast();
    return (*(*(v7 - 8) + 56))(a1, v8 ^ 1u, 1, v7);
  }

  else
  {

    sub_23008E21C(v11);
    v10 = sub_23030EB58();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

void UNMutableNotificationContent.setLastRecurringFireDate(_:)(uint64_t a1)
{
  v2 = v1;
  *&v12 = 0xD00000000000002ALL;
  *(&v12 + 1) = 0x8000000230340220;
  sub_230310768();
  v4 = sub_23030EB58();
  v13 = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, a1, v4);
  v6 = [v2 userInfo];
  v7 = sub_23030F658();

  v11 = v7;
  if (v13)
  {
    sub_23004B314(&v12, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2300A1610(v10, v14, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_230061918(&v12, &qword_27DB14810);
    sub_2300A11E8(v14, v10);
    sub_230061918(v10, &qword_27DB14810);
  }

  sub_23008E21C(v14);
  v9 = sub_23030F638();

  [v2 setUserInfo_];
}

uint64_t sub_23009CD58(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_23007E928(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23009CE4C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23007EB60(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23009CF38(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_23007F560(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_23030E4F8();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23009D064(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2303106D8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2303106D8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2302956C8();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_230294680(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_23009D180(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_23007F430(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}