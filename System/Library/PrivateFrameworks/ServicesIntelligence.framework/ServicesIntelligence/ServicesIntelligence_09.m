unint64_t sub_230DB5954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_230E698C0() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_230E698C0() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_230DB5A54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AA38, &qword_230E75D30);
  v39 = a2;
  result = sub_230E69630();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 32 * v22;
      v27 = *v26;
      v42 = *(v26 + 8);
      v41 = *(v26 + 16);
      v40 = *(v26 + 24);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 32 * v16;
      *v18 = v27;
      *(v18 + 8) = v42;
      *(v18 + 16) = v41;
      *(v18 + 24) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_230DB5D54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AA28, &qword_230E6BAC8);
  v39 = a2;
  result = sub_230E69630();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 24 * v22);
      v26 = v25[1];
      v40 = *v25;
      v41 = *v23;
      v27 = v25[2];
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v41;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v40;
      v18[1] = v26;
      v18[2] = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_230DB602C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A920, &unk_230E6B9C0);
  v40 = a2;
  result = sub_230E69630();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v42 = *v23;
      v25 = *(v5 + 56) + 24 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if ((v40 & 1) == 0)
      {

        sub_230D0DCD8(v26, v27, v28);
      }

      v29 = *(v8 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      *(v18 + 16) = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_230DB6320(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v42 = a2;
  result = sub_230E69630();
  v10 = result;
  if (*(v7 + 16))
  {
    v40 = v5;
    v41 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v24 = v21 | (v11 << 6);
      v25 = *(v7 + 56);
      v26 = *(v7 + 48) + 32 * v24;
      v27 = *v26;
      v28 = *(v26 + 16);
      v43 = *(v26 + 8);
      v29 = *(v26 + 24);
      v30 = *(v25 + 8 * v24);
      if ((v42 & 1) == 0)
      {
      }

      v31 = *(v10 + 40);
      sub_230E699B0();
      sub_230E69100();

      sub_230E69100();
      sub_230E69100();

      result = sub_230E699D0();
      v32 = -1 << *(v10 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v19 = v30;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v17 + 8 * v34);
          if (v38 != -1)
          {
            v18 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v19 = v30;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v20 = *(v10 + 48) + 32 * v18;
      *v20 = v27;
      *(v20 + 8) = v43;
      *(v20 + 16) = v28;
      *(v20 + 24) = v29;
      *(*(v10 + 56) + 8 * v18) = v19;
      ++*(v10 + 16);
      v7 = v41;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v5 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v7 + 32);
    v5 = v40;
    if (v39 >= 64)
    {
      bzero(v12, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v39;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_230DB674C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AA20, &qword_230E6BAC0);
  v38 = a2;
  result = sub_230E69630();
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
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
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

uint64_t sub_230DB69F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A978, &qword_230E78E90);
  v36 = a2;
  result = sub_230E69630();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_230D0DD0C(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_230DB6CB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A938, &qword_230E75CA0);
  v45 = a2;
  result = sub_230E69630();
  v8 = result;
  if (*(v5 + 16))
  {
    v44 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + (v24 << 7);
      if (v45)
      {
        v51 = *(v28 + 48);
        v52 = *(v28 + 64);
        v53[0] = *(v28 + 80);
        *(v53 + 9) = *(v28 + 89);
        v48 = *v28;
        v49 = *(v28 + 16);
        v50 = *(v28 + 32);
        v46 = *(v28 + 112);
        v47 = *(v28 + 120);
      }

      else
      {
        v30 = *(v28 + 32);
        v29 = *(v28 + 48);
        v31 = *v28;
        v55 = *(v28 + 16);
        v56 = v30;
        v54 = v31;
        v33 = *(v28 + 80);
        v32 = *(v28 + 96);
        v34 = *(v28 + 64);
        *&v59[25] = *(v28 + 105);
        *v59 = v33;
        *&v59[16] = v32;
        v57 = v29;
        v58 = v34;
        v47 = v59[40];
        v46 = *&v59[32];

        sub_230D5827C(&v54, &v48);
        v52 = v58;
        v53[0] = *v59;
        *(v53 + 9) = *&v59[9];
        v48 = v54;
        v49 = v55;
        v50 = v56;
        v51 = v57;
      }

      v35 = *(v8 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v36 = -1 << *(v8 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v15 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v15 + 8 * v38);
          if (v42 != -1)
          {
            v16 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v37) & ~*(v15 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v58 = v52;
      *v59 = v53[0];
      *&v59[9] = *(v53 + 9);
      v54 = v48;
      v55 = v49;
      v17 = v51;
      v56 = v50;
      v57 = v51;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = (*(v8 + 48) + 16 * v16);
      *v18 = v26;
      v18[1] = v27;
      v19 = *(v8 + 56) + (v16 << 7);
      *(v19 + 32) = v56;
      *(v19 + 16) = v55;
      *v19 = v54;
      *(v19 + 96) = *&v59[16];
      *(v19 + 80) = *v59;
      v20 = v58;
      *(v19 + 48) = v17;
      *(v19 + 64) = v20;
      *(v19 + 112) = v46;
      *(v19 + 120) = v47;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_230DB7074(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A928, &unk_230E75CC0);
  v36 = a2;
  result = sub_230E69630();
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
        sub_230D0E394(v25, v37);
      }

      else
      {
        sub_230D82664(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
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
      result = sub_230D0E394(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_230DB732C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9D0, &qword_230E6BA70);
  v42 = a2;
  result = sub_230E69630();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = *v27;
      v29 = v27[1];
      if ((v42 & 1) == 0)
      {
        v30 = v24[1];
      }

      v31 = *(v8 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v28;
      v19[1] = v29;
      ++*(v8 + 16);
      v5 = v41;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_230DB763C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = a2;
  result = sub_230E69630();
  v10 = result;
  if (*(v7 + 16))
  {
    v41 = v5;
    v42 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v24 = v21 | (v11 << 6);
      v25 = (*(v7 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = (*(v7 + 56) + 32 * v24);
      v29 = v28[1];
      v30 = v28[2];
      v31 = v28[3];
      v44 = v30;
      v45 = *v28;
      if ((v43 & 1) == 0)
      {
      }

      v32 = *(v10 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v33 = -1 << *(v10 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v17 + 8 * v35);
          if (v39 != -1)
          {
            v18 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      v20 = (*(v10 + 56) + 32 * v18);
      *v20 = v45;
      v20[1] = v29;
      v20[2] = v44;
      v20[3] = v31;
      ++*(v10 + 16);
      v7 = v42;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v5 = v41;
      goto LABEL_35;
    }

    v40 = 1 << *(v7 + 32);
    v5 = v41;
    if (v40 >= 64)
    {
      bzero(v12, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v40;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_230DB7918(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = a2;
  result = sub_230E69630();
  v10 = result;
  if (*(v7 + 16))
  {
    v41 = v5;
    v42 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v24 = v21 | (v11 << 6);
      v25 = (*(v7 + 48) + 16 * v24);
      v26 = v25[1];
      v27 = (*(v7 + 56) + 48 * v24);
      v46 = *v27;
      v47 = *v25;
      v28 = v27[1];
      v29 = v27[3];
      v30 = v27[4];
      v31 = v27[5];
      v44 = v30;
      v45 = v27[2];
      if ((v43 & 1) == 0)
      {
      }

      v32 = *(v10 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v33 = -1 << *(v10 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v17 + 8 * v35);
          if (v39 != -1)
          {
            v18 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v47;
      v19[1] = v26;
      v20 = (*(v10 + 56) + 48 * v18);
      *v20 = v46;
      v20[1] = v28;
      v20[2] = v45;
      v20[3] = v29;
      v20[4] = v44;
      v20[5] = v31;
      ++*(v10 + 16);
      v7 = v42;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v5 = v41;
      goto LABEL_35;
    }

    v40 = 1 << *(v7 + 32);
    v5 = v41;
    if (v40 >= 64)
    {
      bzero(v12, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v40;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_230DB7C08(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9C0, &qword_230E6BA60);
  v39 = a2;
  result = sub_230E69630();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 24 * v22;
      v27 = *v26;
      v40 = *(v26 + 8);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v27;
      *(v18 + 8) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_230DB7ED0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9C8, &qword_230E6BA68);
  v42 = a2;
  result = sub_230E69630();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = *v27;
      v29 = v27[1];
      if ((v42 & 1) == 0)
      {
        v30 = v24[1];
      }

      v31 = *(v8 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v28;
      v19[1] = v29;
      ++*(v8 + 16);
      v5 = v41;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_230DB8198(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9A8, &unk_230E75D00);
  v37 = a2;
  result = sub_230E69630();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_230DB843C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9B8, &unk_230E75CE0);
  v40 = a2;
  result = sub_230E69630();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_230DB86FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C458, &unk_230E75CD0);
  v33 = a2;
  result = sub_230E69630();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_230E699B0();
      sub_230E69100();

      result = sub_230E699D0();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
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
        goto LABEL_37;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_230DB89E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9B0, &unk_230E6BA50);
  v38 = a2;
  result = sub_230E69630();
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
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[3];
      v40 = v23[2];
      v39 = *(v22 + v21);
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_230E699B0();
      sub_230E69100();
      sub_230E69100();
      result = sub_230E699D0();
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
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v40;
      v17[3] = v26;
      *(*(v8 + 56) + v16) = v39;
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

uint64_t sub_230DB8CBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A948, &unk_230E75CB0);
  v39 = a2;
  result = sub_230E69630();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_230DB8F64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A980, &qword_230E6BA20);
  v46 = a2;
  result = sub_230E69630();
  v8 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v44 = v5;
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
    v45 = result;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v47 = (v13 - 1) & v13;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v50 = *v25;
      v27 = *(v5 + 56) + 48 * v24;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      v31 = *(v27 + 24);
      v49 = *(v27 + 32);
      if ((v46 & 1) == 0)
      {
      }

      v48 = v30;
      v32 = v29;
      v33 = v28;
      v34 = *(v45 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v8 = v45;
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v17 = v48;
        v18 = v31;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v15 + 8 * v37);
          if (v41 != -1)
          {
            v16 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v17 = v48;
      v18 = v31;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = (*(v45 + 48) + 16 * v16);
      *v19 = v50;
      v19[1] = v26;
      v20 = *(v45 + 56) + 48 * v16;
      *v20 = v33;
      *(v20 + 8) = v32;
      *(v20 + 16) = v17;
      *(v20 + 24) = v18;
      *(v20 + 32) = v49;
      ++*(v45 + 16);
      v5 = v44;
      v13 = v47;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_35;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v10, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_230DB928C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C450, &qword_230E75CA8);
  v42 = a2;
  result = sub_230E69630();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 104 * v22;
      if (v42)
      {
        v45 = *(v26 + 16);
        v48 = *(v26 + 24);
        v43 = *(v26 + 8);
        v44 = *(v26 + 32);
        v46 = *v26;
        v47 = *(v26 + 48);
        v49 = *(v26 + 64);
        v50 = *(v26 + 40);
        v51 = *(v26 + 72);
        v54 = *(v26 + 88);
        v52 = *(v26 + 56);
        v53 = *(v26 + 96);
      }

      else
      {
        v28 = *(v26 + 16);
        v27 = *(v26 + 32);
        v56 = *v26;
        v57 = v28;
        v58 = v27;
        v30 = *(v26 + 64);
        v29 = *(v26 + 80);
        v31 = *(v26 + 48);
        v61 = *(v26 + 96);
        *v60 = v30;
        *&v60[16] = v29;
        v59 = v31;
        v53 = v61;
        v54 = *(&v29 + 1);
        v51 = *&v60[8];
        v52 = *(&v31 + 1);
        v49 = v30;
        v50 = *(&v58 + 1);
        v47 = v31;
        v48 = *(&v57 + 1);
        v45 = v57;
        v43 = *(&v56 + 1);
        v46 = v56;
        v44 = v58;

        sub_230DBB6FC(&v56, v55);
      }

      v32 = *(v8 + 40);
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v33 = -1 << *(v8 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v15 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v15 + 8 * v35);
          if (v39 != -1)
          {
            v16 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v34) & ~*(v15 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 104 * v16;
      *v18 = v46;
      *(v18 + 8) = v43;
      *(v18 + 16) = v45;
      *(v18 + 24) = v48;
      *(v18 + 32) = v44;
      *(v18 + 40) = v50;
      *(v18 + 48) = v47;
      *(v18 + 56) = v52;
      *(v18 + 64) = v49;
      *(v18 + 72) = v51;
      *(v18 + 88) = v54;
      *(v18 + 96) = v53;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_230DB9644()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AA38, &qword_230E75D30);
  v2 = *v0;
  v3 = sub_230E69620();
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
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        LOBYTE(v22) = *(v22 + 24);
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v25;
        *(v27 + 24) = v22;
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

void *sub_230DB97F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AA28, &qword_230E6BAC8);
  v2 = *v0;
  v3 = sub_230E69620();
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

void *sub_230DB9990()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A920, &unk_230E6B9C0);
  v2 = *v0;
  v3 = sub_230E69620();
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
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_230D0DCD8(v23, v24, v26);
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

void *sub_230DB9B3C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_230E69620();
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
        v20 = *(v4 + 48) + 32 * v19;
        v21 = *v20;
        v23 = *(v20 + 8);
        v22 = *(v20 + 16);
        LOBYTE(v20) = *(v20 + 24);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = *(v6 + 48) + 32 * v19;
        *v25 = v21;
        *(v25 + 8) = v23;
        *(v25 + 16) = v22;
        *(v25 + 24) = v20;
        *(*(v6 + 56) + 8 * v19) = v24;
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

void *sub_230DB9CAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AA20, &qword_230E6BAC0);
  v2 = *v0;
  v3 = sub_230E69620();
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

void *sub_230DB9E1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A978, &qword_230E78E90);
  v2 = *v0;
  v3 = sub_230E69620();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_230D0DD0C(v22, *(&v22 + 1));
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

void *sub_230DB9FA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A938, &qword_230E75CA0);
  v2 = *v0;
  v3 = sub_230E69620();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_230D5827C(&v37, &v36))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = *(v2 + 56);
      v19 = (*(v2 + 48) + 16 * v16);
      v21 = *v19;
      v20 = v19[1];
      v16 <<= 7;
      v23 = *(v18 + v16 + 80);
      v22 = *(v18 + v16 + 96);
      v24 = *(v18 + v16 + 64);
      *(v43 + 9) = *(v18 + v16 + 105);
      v42 = v23;
      v43[0] = v22;
      v41 = v24;
      v26 = *(v18 + v16);
      v25 = *(v18 + v16 + 16);
      v27 = *(v18 + v16 + 48);
      v39 = *(v18 + v16 + 32);
      v40 = v27;
      v37 = v26;
      v38 = v25;
      v28 = (*(v4 + 48) + v17);
      *v28 = v21;
      v28[1] = v20;
      v29 = (*(v4 + 56) + v16);
      v30 = v37;
      v31 = v38;
      v32 = v40;
      v29[2] = v39;
      v29[3] = v32;
      *v29 = v30;
      v29[1] = v31;
      v33 = v41;
      v34 = v42;
      v35 = v43[0];
      *(v29 + 105) = *(v43 + 9);
      v29[5] = v34;
      v29[6] = v35;
      v29[4] = v33;
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

void *sub_230DBA17C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A928, &unk_230E75CC0);
  v2 = *v0;
  v3 = sub_230E69620();
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
        sub_230D82664(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_230D0E394(v25, (*(v4 + 56) + v22));
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

void *sub_230DBA320()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9D0, &qword_230E6BA70);
  v2 = *v0;
  v3 = sub_230E69620();
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

void *sub_230DBA4E8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_230E69620();
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
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v19 *= 32;
        v24 = (*(v4 + 56) + v19);
        v25 = *v24;
        v26 = v24[1];
        v28 = v24[2];
        v27 = v24[3];
        v29 = (*(v6 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        v30 = (*(v6 + 56) + v19);
        *v30 = v25;
        v30[1] = v26;
        v30[2] = v28;
        v30[3] = v27;
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

void *sub_230DBA678(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_230E69620();
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
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v19 *= 48;
        v24 = (*(v4 + 56) + v19);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = v24[3];
        v30 = v24[4];
        v29 = v24[5];
        v31 = (*(v6 + 48) + v20);
        *v31 = v22;
        v31[1] = v23;
        v32 = (*(v6 + 56) + v19);
        *v32 = v25;
        v32[1] = v26;
        v32[2] = v27;
        v32[3] = v28;
        v32[4] = v30;
        v32[5] = v29;
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

void *sub_230DBA810()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9C0, &qword_230E6BA60);
  v2 = *v0;
  v3 = sub_230E69620();
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
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = (*(v4 + 48) + v18);
        v25 = *(v22 + 8);
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v25;
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

void *sub_230DBA998()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9C8, &qword_230E6BA68);
  v2 = *v0;
  v3 = sub_230E69620();
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
        v18 = *(v2 + 56);
        v19 = (*(v2 + 48) + v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = *(v18 + v17);
        v23 = *(v18 + v17 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v21;
        v24[1] = v20;
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

void *sub_230DBAB18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9A8, &unk_230E75D00);
  v2 = *v0;
  v3 = sub_230E69620();
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

void *sub_230DBAC80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9B8, &unk_230E75CE0);
  v2 = *v0;
  v3 = sub_230E69620();
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

void *sub_230DBADF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C458, &unk_230E75CD0);
  v2 = *v0;
  v3 = sub_230E69620();
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

void *sub_230DBAF54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9B0, &unk_230E6BA50);
  v2 = *v0;
  v3 = sub_230E69620();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = v20;
        v23[1] = v19;
        v23[2] = v21;
        v23[3] = v22;
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

id sub_230DBB0CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A948, &unk_230E75CB0);
  v2 = *v0;
  v3 = sub_230E69620();
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

void *sub_230DBB23C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A980, &qword_230E6BA20);
  v27 = v0;
  v1 = *v0;
  v28 = sub_230E69620();
  if (*(v1 + 16))
  {
    result = (v28 + 64);
    v3 = ((1 << *(v28 + 32)) + 63) >> 6;
    if (v28 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v28 + 16) = *(v1 + 16);
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
        v15 = 16 * v14;
        v16 = (*(v1 + 48) + 16 * v14);
        v17 = *v16;
        v18 = v16[1];
        v14 *= 48;
        v19 = *(v1 + 56) + v14;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = (*(v28 + 48) + v15);
        v25 = *(v19 + 32);
        *v24 = v17;
        v24[1] = v18;
        v26 = *(v28 + 56) + v14;
        *v26 = v20;
        *(v26 + 8) = v21;
        *(v26 + 16) = v22;
        *(v26 + 24) = v23;
        *(v26 + 32) = v25;
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

    *v27 = v28;
  }

  return result;
}

void *sub_230DBB414()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C450, &qword_230E75CA8);
  v2 = *v0;
  v3 = sub_230E69620();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_230DBB6FC(&v35, v34))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 104;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 64);
      v22 = *(v21 + 80);
      v24 = *(v21 + 48);
      v41 = *(v21 + 96);
      v39 = v23;
      v40 = v22;
      v38 = v24;
      v26 = *(v21 + 16);
      v25 = *(v21 + 32);
      v35 = *v21;
      v36 = v26;
      v37 = v25;
      v27 = (*(v4 + 48) + v17);
      *v27 = v20;
      v27[1] = v19;
      v28 = *(v4 + 56) + v16;
      v29 = v35;
      v30 = v37;
      *(v28 + 16) = v36;
      *(v28 + 32) = v30;
      *v28 = v29;
      v31 = v38;
      v32 = v39;
      v33 = v40;
      *(v28 + 96) = v41;
      *(v28 + 64) = v32;
      *(v28 + 80) = v33;
      *(v28 + 48) = v31;
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

uint64_t type metadata accessor for IPSQLManager()
{
  result = qword_27DB5C438;
  if (!qword_27DB5C438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DBB648()
{
  result = sub_230E68D80();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_230DBB758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C460, &qword_230E75CF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230DBB7D4()
{
  result = qword_27DB5C468;
  if (!qword_27DB5C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C468);
  }

  return result;
}

uint64_t sub_230DBB8C8(uint64_t *a1, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = a2();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v6 = swift_allocObject();
    v11 = *a3;
    sub_230E68D70();
    v12 = *(v3 + v4);
    *(v3 + v4) = v6;
  }

  return v6;
}

uint64_t sub_230DBB9D0(uint64_t *a1, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = *(v3 + 16);
    v9 = a2();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v6 = swift_allocObject();
    v12 = *a3;

    sub_230E68D70();
    *(v6 + 16) = v8;
    v13 = *(v3 + v4);
    *(v3 + v4) = v6;
  }

  return v6;
}

uint64_t sub_230DBBAA8(uint64_t a1)
{
  sub_230E68D70();
  *(v1 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___locationProvider) = 0;
  *(v1 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___commuteProvider) = 0;
  *(v1 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___workoutProvider) = 0;
  *(v1 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___timeProvider) = 0;
  *(v1 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___mediaProvider) = 0;
  *(v1 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___appUsageProvider) = 0;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_230DBBB5C()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator_logger;
  v3 = sub_230E68D80();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___locationProvider);

  v5 = *(v0 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___commuteProvider);

  v6 = *(v0 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___workoutProvider);

  v7 = *(v0 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___timeProvider);

  v8 = *(v0 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___mediaProvider);

  v9 = *(v0 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___appUsageProvider);

  return v0;
}

uint64_t sub_230DBBC24()
{
  sub_230DBBB5C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonalContextCoordinator()
{
  result = qword_27DB5C4A8;
  if (!qword_27DB5C4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DBBCD0()
{
  result = sub_230E68D80();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Treatment.areaID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Treatment.areaID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Treatment.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Treatment.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Treatment.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Treatment() + 28);
  v4 = sub_230E68910();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Treatment()
{
  result = qword_281566070;
  if (!qword_281566070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Treatment.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Treatment() + 28);
  v4 = sub_230E68910();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Treatment.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Treatment() + 32);
  v4 = sub_230E68910();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Treatment.endDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Treatment() + 32);
  v4 = sub_230E68910();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Treatment.init(areaID:identifier:bucket:startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a5;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v11;
  v12 = type metadata accessor for Treatment();
  v13 = *(v12 + 28);
  v14 = sub_230E68910();
  v17 = *(*(v14 - 8) + 32);
  (v17)((v14 - 8), a8 + v13, a6, v14);
  v15 = a8 + *(v12 + 32);

  return v17(v15, a7, v14);
}

uint64_t sub_230DBC26C()
{
  v1 = *v0;
  v2 = 0x444961657261;
  v3 = 0x74656B637562;
  v4 = 0x7461447472617473;
  if (v1 != 3)
  {
    v4 = 0x65746144646E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230DBC308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DBD978(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230DBC330(uint64_t a1)
{
  v2 = sub_230DBC628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DBC36C(uint64_t a1)
{
  v2 = sub_230DBC628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Treatment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C4B8, &qword_230E75E40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DBC628();
  sub_230E69A50();
  v12 = *v3;
  v13 = v3[1];
  v26 = 0;
  sub_230E69810();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    v25 = 1;
    sub_230E69810();
    v24 = *(v3 + 32);
    v23 = 2;
    sub_230DBC67C();
    sub_230E69850();
    v17 = type metadata accessor for Treatment();
    v18 = *(v17 + 28);
    v22 = 3;
    sub_230E68910();
    sub_230DBD630(&qword_281566888);
    sub_230E69850();
    v19 = *(v17 + 32);
    v21 = 4;
    sub_230E69850();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_230DBC628()
{
  result = qword_281566098;
  if (!qword_281566098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566098);
  }

  return result;
}

unint64_t sub_230DBC67C()
{
  result = qword_281566760;
  if (!qword_281566760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566760);
  }

  return result;
}

uint64_t Treatment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v38 = sub_230E68910();
  v36 = *(v38 - 8);
  v3 = *(v36 + 64);
  v5 = MEMORY[0x28223BE20](v38, v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v33 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C4C0, &qword_230E75E48);
  v37 = *(v40 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v40, v12);
  v14 = v33 - v13;
  v15 = type metadata accessor for Treatment();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DBC628();
  v39 = v14;
  v21 = v41;
  sub_230E69A30();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = v10;
  v34 = v7;
  v23 = v37;
  v22 = v38;
  v47 = 0;
  *v19 = sub_230E69720();
  *(v19 + 1) = v24;
  v33[3] = v24;
  v46 = 1;
  *(v19 + 2) = sub_230E69720();
  *(v19 + 3) = v25;
  v44 = 2;
  sub_230DBCB44();
  v33[2] = 0;
  sub_230E69760();
  v26 = v36;
  v27 = a1;
  v19[32] = v45;
  v43 = 3;
  v28 = sub_230DBD630(&qword_27DB5C4D0);
  v29 = v41;
  v33[1] = v28;
  sub_230E69760();
  v30 = &v19[*(v15 + 28)];
  v41 = *(v26 + 32);
  v41(v30, v29, v22);
  v42 = 4;
  v31 = v34;
  sub_230E69760();
  (*(v23 + 8))(v39, v40);
  v41(&v19[*(v15 + 32)], v31, v22);
  sub_230DBCB98(v19, v35);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_230DBCBFC(v19);
}

unint64_t sub_230DBCB44()
{
  result = qword_27DB5C4C8;
  if (!qword_27DB5C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C4C8);
  }

  return result;
}

uint64_t sub_230DBCB98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Treatment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230DBCBFC(uint64_t a1)
{
  v2 = type metadata accessor for Treatment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230DBCC88()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_230E699B0();
  sub_230E69100();
  sub_230E69100();
  return sub_230E699D0();
}

uint64_t sub_230DBCCF0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_230E69100();

  return sub_230E69100();
}

uint64_t sub_230DBCD40()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_230E699B0();
  sub_230E69100();
  sub_230E69100();
  return sub_230E699D0();
}

uint64_t sub_230DBCDA4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_230E698C0(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_230E698C0();
    }
  }

  return result;
}

ServicesIntelligence::TreatmentBucket_optional __swiftcall TreatmentBucket.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 2) >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = -rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_230DBCE88()
{
  v1 = *v0;
  sub_230E699B0();
  MEMORY[0x23191E2B0](-v1);
  return sub_230E699D0();
}

uint64_t sub_230DBCF00()
{
  v1 = *v0;
  sub_230E699B0();
  MEMORY[0x23191E2B0](-v1);
  return sub_230E699D0();
}

ServicesIntelligence::TreatmentNamespace_optional __swiftcall TreatmentNamespace.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TreatmentNamespace.rawValue.getter()
{
  v1 = 0x7373656E746966;
  if (*v0 != 1)
  {
    v1 = 0x7374736163646F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F74735F707061;
  }
}

uint64_t sub_230DBD0D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x7373656E746966;
  if (v2 != 1)
  {
    v4 = 0x7374736163646F70;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x726F74735F707061;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7373656E746966;
  if (*a2 != 1)
  {
    v8 = 0x7374736163646F70;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x726F74735F707061;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230E698C0();
  }

  return v11 & 1;
}

uint64_t sub_230DBD1D8()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DBD280()
{
  *v0;
  *v0;
  sub_230E69100();
}

uint64_t sub_230DBD314()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230DBD3C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xE700000000000000;
  v5 = 0x7373656E746966;
  if (v2 != 1)
  {
    v5 = 0x7374736163646F70;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x726F74735F707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Treatment.isActive.getter()
{
  v0 = sub_230E68910();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230E68900();
  v6 = type metadata accessor for Treatment();
  v7 = *(v6 + 28);
  sub_230DBD630(&qword_27DB5C3A0);
  if (sub_230E69000())
  {
    v8 = 0;
  }

  else
  {
    v9 = *(v6 + 32);
    v8 = sub_230E69000() ^ 1;
  }

  (*(v1 + 8))(v5, v0);
  return v8 & 1;
}

uint64_t sub_230DBD630(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_230E68910();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230DBD678()
{
  result = qword_27DB5C4D8;
  if (!qword_27DB5C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C4D8);
  }

  return result;
}

unint64_t sub_230DBD6D0()
{
  result = qword_281566520;
  if (!qword_281566520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566520);
  }

  return result;
}

unint64_t sub_230DBD728()
{
  result = qword_27DB5C4E0;
  if (!qword_27DB5C4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C4E8, &qword_230E76030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C4E0);
  }

  return result;
}

uint64_t sub_230DBD7B4()
{
  result = sub_230E68910();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_230DBD874()
{
  result = qword_27DB5C4F0;
  if (!qword_27DB5C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C4F0);
  }

  return result;
}

unint64_t sub_230DBD8CC()
{
  result = qword_281566088;
  if (!qword_281566088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566088);
  }

  return result;
}

unint64_t sub_230DBD924()
{
  result = qword_281566090;
  if (!qword_281566090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566090);
  }

  return result;
}

uint64_t sub_230DBD978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444961657261 && a2 == 0xE600000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74656B637562 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_230DBDB30()
{
  result = qword_27DB5C4F8;
  if (!qword_27DB5C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C4F8);
  }

  return result;
}

unint64_t sub_230DBDB84()
{
  result = qword_281566758;
  if (!qword_281566758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566758);
  }

  return result;
}

unint64_t sub_230DBDBEC()
{
  result = qword_2815664B8;
  if (!qword_2815664B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664B8);
  }

  return result;
}

uint64_t ServicesIntelligenceProvider.fetchActiveTreatments(requestContext:)(uint64_t a1)
{
  *(v2 + 96) = v1;
  v3 = *(a1 + 16);
  *(v2 + 104) = *a1;
  *(v2 + 120) = v3;
  *(v2 + 136) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_230DBDC74, v1, 0);
}

uint64_t sub_230DBDC74()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    *(v0 + 152) = v1;
    *(v0 + 160) = v2;
    v6 = *(v0 + 96);
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1);
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    *v7 = v0;
    v7[1] = sub_230D0571C;
    v8 = *(v0 + 96);

    return (sub_230D76A40)(27, v0 + 16);
  }

  else
  {
    *(v0 + 176) = 27;
    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_230DBDE34;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230DBDE34()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230DBDF44, v2, 0);
}

uint64_t sub_230DBDF44()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  *(v0 + 152) = v3;
  *(v0 + 160) = v7;
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  *(v0 + 16) = v1;
  v12 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v7;

  sub_230D0585C(v12, v11, v10);
  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_230D0571C;
  v14 = *(v0 + 96);

  return (sub_230D76A40)(27, v0 + 16);
}

uint64_t sub_230DBE07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 192) = a2;
  *(v3 + 200) = a3;
  *(v3 + 184) = a1;
  *(v3 + 281) = *a3;
  *(v3 + 208) = *(a3 + 8);
  *(v3 + 282) = *(a3 + 24);
  *(v3 + 224) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230DBE0BC, a2, 0);
}

uint64_t sub_230DBE0BC()
{
  v1 = v0[24];
  v2 = v0[25];
  sub_230E68950();
  sub_230D1CDE0(v2, (v0 + 2));
  sub_230D1CDE0(v2, (v0 + 7));

  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_230DBE1B8;
  v5 = v0[24];
  v4 = v0[25];

  return (sub_230D6F7D0)(39, v4);
}

uint64_t sub_230DBE1B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(v4 + 240) = a1;
  *(v4 + 248) = v1;

  v7 = *(v3 + 200);
  v8 = *(v3 + 192);
  sub_230D1CE3C(v7);
  if (v1)
  {
    v9 = sub_230DBE554;
  }

  else
  {
    v9 = sub_230DBE308;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230DBE308()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 281);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 282) & 1 | (*(v0 + 283) << 8);
  sub_230D1CE3C(v4);
  *(v0 + 280) = 10;
  *(v0 + 96) = v3;
  *(v0 + 104) = v5;
  *(v0 + 112) = v2;
  *(v0 + 120) = v6;
  *(v0 + 128) = v1;
  sub_230D1CDE0(v4, v0 + 136);
  v7 = swift_task_alloc();
  *(v0 + 256) = v7;
  *v7 = v0;
  v7[1] = sub_230DBE408;
  v8 = *(v0 + 240);

  return static SystemDatabase.fetchActiveTreatments(for:using:requestContext:)((v0 + 280), v8, v0 + 96);
}

uint64_t sub_230DBE408(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[32];
  v13 = *v2;
  (*v2)[33] = v1;

  if (v1)
  {
    v6 = v4[24];
    v7 = v4[15];
    v8 = v4[16];
    sub_230D666B4(v4[12], v4[13], v4[14]);
    v9 = sub_230DBE6EC;
  }

  else
  {
    v6 = v4[24];
    v4[34] = a1;
    v10 = v4[15];
    v11 = v4[16];
    sub_230D666B4(v4[12], v4[13], v4[14]);
    v9 = sub_230DBE5B8;
  }

  return MEMORY[0x2822009F8](v9, v6, 0);
}

uint64_t sub_230DBE554()
{
  sub_230D1CE3C(v0[25]);
  v1 = v0[31];
  v2 = v0[1];

  return v2();
}

uint64_t sub_230DBE5B8()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[23];
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000040, 0x8000000230E833B0);
  v0[22] = *(v1 + 16);
  v4 = sub_230E69890();
  MEMORY[0x23191DA00](v4);

  MEMORY[0x23191DA00](0xD000000000000012, 0x8000000230E83470);
  sub_230E68950();

  *v3 = v1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_230DBE6EC()
{
  v1 = v0[30];

  v2 = v0[33];
  v3 = v0[1];

  return v3();
}

uint64_t ServicesIntelligenceProvider.fetchActiveTreatments(_:requestContext:)(_BYTE *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(v3 + 104) = *a2;
  *(v3 + 96) = v2;
  *(v3 + 177) = *a1;
  *(v3 + 120) = v4;
  *(v3 + 136) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230DBE78C, v2, 0);
}

uint64_t sub_230DBE78C()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    *(v0 + 152) = v1;
    *(v0 + 160) = v2;
    v6 = *(v0 + 96);
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1);
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    *v7 = v0;
    v7[1] = sub_230DC29D8;
    v8 = *(v0 + 96);
    v9 = *(v0 + 177);

    return (sub_230D771C0)(26, v0 + 16);
  }

  else
  {
    *(v0 + 176) = 26;
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_230DBE950;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230DBE950()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230DBEA60, v2, 0);
}

uint64_t sub_230DBEA60()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  *(v0 + 152) = v3;
  *(v0 + 160) = v7;
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  *(v0 + 16) = v1;
  v12 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v7;

  sub_230D0585C(v12, v11, v10);
  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_230DC29D8;
  v14 = *(v0 + 96);
  v15 = *(v0 + 177);

  return (sub_230D771C0)(26, v0 + 16);
}

uint64_t sub_230DBEB9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 224) = a3;
  *(v4 + 232) = a4;
  *(v4 + 194) = a2;
  *(v4 + 216) = a1;
  *(v4 + 195) = *a4;
  *(v4 + 240) = *(a4 + 8);
  *(v4 + 196) = *(a4 + 24);
  *(v4 + 256) = *(a4 + 32);
  return MEMORY[0x2822009F8](sub_230DBEBE4, a3, 0);
}

uint64_t sub_230DBEBE4()
{
  v1 = *(v0 + 194);
  sub_230E69540();
  MEMORY[0x23191DA00](0xD00000000000003ALL, 0x8000000230E83370);
  if (v1 > 4)
  {
    v10 = 0xE600000000000000;
    v11 = 0x6E6F6D6D6F63;
    v12 = 0x65676175676E616CLL;
    if (v1 != 8)
    {
      v12 = 0x7974697275636573;
    }

    if (v1 != 7)
    {
      v11 = v12;
      v10 = 0xE800000000000000;
    }

    v13 = 0xE800000000000000;
    v14 = 0x7374736163646F70;
    if (v1 != 5)
    {
      v14 = 0x6F65646976;
      v13 = 0xE500000000000000;
    }

    if (v1 <= 6)
    {
      v8 = v14;
    }

    else
    {
      v8 = v11;
    }

    if (v1 <= 6)
    {
      v9 = v13;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
    v3 = 0x6C616E7265746E69;
    v4 = 0xE500000000000000;
    v5 = 0x736B6F6F62;
    v6 = 0xE700000000000000;
    v7 = 0x7373656E746966;
    if (v1 != 3)
    {
      v7 = 0x636973756DLL;
      v6 = 0xE500000000000000;
    }

    if (v1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    if (v1)
    {
      v3 = 1936748641;
      v2 = 0xE400000000000000;
    }

    if (v1 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }

    if (v1 <= 1)
    {
      v9 = v2;
    }

    else
    {
      v9 = v4;
    }
  }

  v16 = *(v0 + 224);
  v15 = *(v0 + 232);
  MEMORY[0x23191DA00](v8, v9);

  sub_230E68950();

  sub_230D1CDE0(v15, v0 + 16);
  sub_230D1CDE0(v15, v0 + 56);

  v17 = swift_task_alloc();
  *(v0 + 264) = v17;
  *v17 = v0;
  v17[1] = sub_230DBEE54;
  v19 = *(v0 + 224);
  v18 = *(v0 + 232);

  return sub_230D6F7D0(39, v18, v19, v19);
}

uint64_t sub_230DBEE54(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v7 = *(v3 + 232);
  v8 = *(v3 + 224);
  sub_230D1CE3C(v7);
  if (v1)
  {
    v9 = sub_230DBF1E0;
  }

  else
  {
    v9 = sub_230DBEFA4;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230DBEFA4()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 195);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v6 = *(v0 + 194);
  v7 = *(v0 + 196) & 1 | (*(v0 + 197) << 8);
  sub_230D1CE3C(v4);
  *(v0 + 193) = v6;
  *(v0 + 96) = v3;
  *(v0 + 104) = v5;
  *(v0 + 112) = v2;
  *(v0 + 120) = v7;
  *(v0 + 128) = v1;
  sub_230D1CDE0(v4, v0 + 136);
  v8 = swift_task_alloc();
  *(v0 + 288) = v8;
  *v8 = v0;
  v8[1] = sub_230DBF0A4;
  v9 = *(v0 + 272);

  return static SystemDatabase.fetchActiveTreatments(for:using:requestContext:)((v0 + 193), v9, v0 + 96);
}

uint64_t sub_230DBF0A4(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[36];
  v12 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {
    v5 = v3[28];
    v6 = v3[15];
    v7 = v3[16];
    sub_230D666B4(v3[12], v3[13], v3[14]);
    v8 = sub_230DBF58C;
  }

  else
  {
    v5 = v3[28];
    v9 = v3[15];
    v10 = v3[16];
    sub_230D666B4(v3[12], v3[13], v3[14]);
    v8 = sub_230DBF320;
  }

  return MEMORY[0x2822009F8](v8, v5, 0);
}

uint64_t sub_230DBF1E0()
{
  sub_230D1CE3C(*(v0 + 232));
  v1 = *(v0 + 280);
  *(v0 + 200) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  if (swift_dynamicCast())
  {
    MEMORY[0x23191E910](v1);
    sub_230DC29B0(*(v0 + 176), *(v0 + 184), *(v0 + 192));
    sub_230DC295C();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
    v4 = *(v0 + 200);
  }

  else
  {
    MEMORY[0x23191E910](*(v0 + 200));
    sub_230DC295C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v4 = v1;
  }

  MEMORY[0x23191E910](v4);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_230DBF320()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 194);
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000040, 0x8000000230E833B0);
  *(v0 + 208) = *(v1 + 16);
  v3 = sub_230E69890();
  MEMORY[0x23191DA00](v3);

  MEMORY[0x23191DA00](0xD000000000000010, 0x8000000230E83400);
  if (v2 > 4)
  {
    v12 = 0xE600000000000000;
    v13 = 0x6E6F6D6D6F63;
    v14 = 0x65676175676E616CLL;
    if (v2 != 8)
    {
      v14 = 0x7974697275636573;
    }

    if (v2 != 7)
    {
      v13 = v14;
      v12 = 0xE800000000000000;
    }

    v15 = 0xE800000000000000;
    v16 = 0x7374736163646F70;
    if (v2 != 5)
    {
      v16 = 0x6F65646976;
      v15 = 0xE500000000000000;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v13;
    }

    if (v2 <= 6)
    {
      v11 = v15;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xE800000000000000;
    v5 = 0x6C616E7265746E69;
    v6 = 0xE500000000000000;
    v7 = 0x736B6F6F62;
    v8 = 0xE700000000000000;
    v9 = 0x7373656E746966;
    if (v2 != 3)
    {
      v9 = 0x636973756DLL;
      v8 = 0xE500000000000000;
    }

    if (v2 != 2)
    {
      v7 = v9;
      v6 = v8;
    }

    if (v2)
    {
      v5 = 1936748641;
      v4 = 0xE400000000000000;
    }

    if (v2 <= 1)
    {
      v10 = v5;
    }

    else
    {
      v10 = v7;
    }

    if (v2 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v6;
    }
  }

  v17 = *(v0 + 296);
  v18 = *(v0 + 272);
  v19 = *(v0 + 216);
  MEMORY[0x23191DA00](v10, v11);

  sub_230E68950();

  *v19 = v17;
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_230DBF58C()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 304);
  *(v0 + 200) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  if (swift_dynamicCast())
  {
    MEMORY[0x23191E910](v2);
    sub_230DC29B0(*(v0 + 176), *(v0 + 184), *(v0 + 192));
    sub_230DC295C();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    v5 = *(v0 + 200);
  }

  else
  {
    MEMORY[0x23191E910](*(v0 + 200));
    sub_230DC295C();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v5 = v2;
  }

  MEMORY[0x23191E910](v5);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t ServicesIntelligenceProvider.refreshTreatments(requestContext:)(uint64_t a1)
{
  *(v2 + 96) = v1;
  v3 = *(a1 + 16);
  *(v2 + 104) = *a1;
  *(v2 + 120) = v3;
  *(v2 + 136) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_230DBF700, v1, 0);
}

uint64_t sub_230DBF700()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    *(v0 + 152) = v1;
    *(v0 + 160) = v2;
    v6 = *(v0 + 96);
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1);
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    *v7 = v0;
    v7[1] = sub_230DBFB08;
    v8 = *(v0 + 96);

    return (sub_230D81D90)(28, v0 + 16);
  }

  else
  {
    *(v0 + 176) = 28;
    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_230DBF8C0;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230DBF8C0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230DBF9D0, v2, 0);
}

uint64_t sub_230DBF9D0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  *(v0 + 152) = v3;
  *(v0 + 160) = v7;
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  *(v0 + 16) = v1;
  v12 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v7;

  sub_230D0585C(v12, v11, v10);
  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_230DBFB08;
  v14 = *(v0 + 96);

  return (sub_230D81D90)(28, v0 + 16);
}

uint64_t sub_230DBFB08(uint64_t a1)
{
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 96);
  v9 = *v1;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v7 = *(v9 + 8);

  return v7(a1);
}

uint64_t sub_230DBFC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[31] = a2;
  v3[32] = a3;
  v3[30] = a1;
  return MEMORY[0x2822009F8](sub_230DBFC8C, a2, 0);
}

uint64_t sub_230DBFC8C()
{
  sub_230E68950();
  if (sub_230DA3484())
  {
    v1 = *(v0 + 256);
    sub_230D1CDE0(v1, v0 + 16);
    sub_230D1CDE0(v1, v0 + 56);
    v2 = swift_task_alloc();
    *(v0 + 264) = v2;
    *v2 = v0;
    v2[1] = sub_230DBFDDC;
    v4 = *(v0 + 248);
    v3 = *(v0 + 256);

    return sub_230D77A44(29, v3, v4);
  }

  else
  {
    sub_230E68950();
    **(v0 + 240) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_230DBFDDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v9 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {
    v5 = v3[31];
    v6 = sub_230DC0130;
  }

  else
  {
    v7 = v3[31];
    sub_230D1CE3C(v3[32]);
    v6 = sub_230DBFF00;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DBFF00()
{
  v1 = v0[32];
  sub_230D1CE3C(v1);
  sub_230D1CDE0(v1, (v0 + 12));
  sub_230D1CDE0(v1, (v0 + 17));

  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_230DBFFE0;
  v4 = v0[31];
  v3 = v0[32];

  return (sub_230D6F7D0)(39, v3);
}

uint64_t sub_230DBFFE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *(*v2 + 256);
  v7 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  sub_230D1CE3C(v6);
  v8 = *(v3 + 248);
  if (v1)
  {
    v9 = sub_230DC044C;
  }

  else
  {
    v9 = sub_230DC0254;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230DC0130()
{
  v1 = *(v0 + 256);
  sub_230D1CE3C(v1);
  sub_230D1CE3C(v1);
  v2 = *(v0 + 280);
  sub_230E69540();
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000039, 0x8000000230E83230);
  *(v0 + 232) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  sub_230E68950();
  MEMORY[0x23191E910](v2);

  **(v0 + 240) = 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_230DC0254()
{
  sub_230D1CE3C(*(v0 + 256));
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_230DC0310;
  v2 = *(v0 + 296);
  v3 = *(v0 + 272);

  return static SystemDatabase.storeTreatments(_:using:requestContext:)(v3, v2, v0 + 176);
}

uint64_t sub_230DC0310()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 248);
  if (v0)
  {
    v6 = sub_230DC0604;
  }

  else
  {
    v6 = sub_230DC0570;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DC044C()
{
  v1 = *(v0 + 272);
  sub_230D1CE3C(*(v0 + 256));

  v2 = *(v0 + 304);
  sub_230E69540();
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000039, 0x8000000230E83230);
  *(v0 + 232) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  sub_230E68950();
  MEMORY[0x23191E910](v2);

  **(v0 + 240) = 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_230DC0570()
{
  v1 = *(v0 + 296);
  sub_230E68950();

  **(v0 + 240) = 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230DC0604()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 320);
  sub_230E69540();
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000039, 0x8000000230E83230);
  *(v0 + 232) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  sub_230E68950();
  MEMORY[0x23191E910](v2);

  **(v0 + 240) = 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_230DC071C(uint64_t a1)
{
  v1[53] = a1;
  v2 = sub_230E68910();
  v1[54] = v2;
  v3 = *(v2 - 8);
  v1[55] = v3;
  v4 = *(v3 + 64) + 15;
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DC07E8, 0, 0);
}

uint64_t sub_230DC07E8()
{
  v1 = 0xE900000000000065;
  v2 = MEMORY[0x277D84F90];
  sub_230E68950();
  v3 = [objc_allocWithZone(MEMORY[0x277CEE6C0]) initWithCachePolicy_];
  v0[58] = v3;
  sub_230D48880(0, 3, 0);
  if (byte_2845A4EE0)
  {
    if (byte_2845A4EE0 == 1)
    {
      v4 = 0xE700000000000000;
      v5 = 0x7373656E746966;
    }

    else
    {
      v4 = 0xE800000000000000;
      v5 = 0x7374736163646F70;
    }
  }

  else
  {
    v5 = 0x726F74735F707061;
    v4 = 0xE900000000000065;
  }

  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    sub_230D48880((v6 > 1), v7 + 1, 1);
  }

  *(v2 + 16) = v8;
  v9 = v2 + 16 * v7;
  *(v9 + 32) = v5;
  *(v9 + 40) = v4;
  if (byte_2845A4EE1)
  {
    if (byte_2845A4EE1 == 1)
    {
      v10 = 0xE700000000000000;
      v11 = 0x7373656E746966;
    }

    else
    {
      v10 = 0xE800000000000000;
      v11 = 0x7374736163646F70;
    }
  }

  else
  {
    v11 = 0x726F74735F707061;
    v10 = 0xE900000000000065;
  }

  v12 = *(v2 + 24);
  v13 = v7 + 2;
  if (v8 >= v12 >> 1)
  {
    sub_230D48880((v12 > 1), v13, 1);
  }

  *(v2 + 16) = v13;
  v14 = v2 + 16 * v8;
  *(v14 + 32) = v11;
  *(v14 + 40) = v10;
  if (byte_2845A4EE2)
  {
    if (byte_2845A4EE2 == 1)
    {
      v1 = 0xE700000000000000;
      v15 = 0x7373656E746966;
    }

    else
    {
      v1 = 0xE800000000000000;
      v15 = 0x7374736163646F70;
    }
  }

  else
  {
    v15 = 0x726F74735F707061;
  }

  v17 = *(v2 + 16);
  v16 = *(v2 + 24);
  if (v17 >= v16 >> 1)
  {
    sub_230D48880((v16 > 1), v17 + 1, 1);
  }

  *(v2 + 16) = v17 + 1;
  v18 = v2 + 16 * v17;
  *(v18 + 32) = v15;
  *(v18 + 40) = v1;
  sub_230D0ABEC(v2);

  v19 = sub_230E69330();

  v20 = [v3 areasForNamespaces_];
  v0[59] = v20;

  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_230DC0BB0;
  v21 = swift_continuation_init();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C500, &qword_230E76320);
  v0[60] = v22;
  v0[33] = v22;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_230DC29DC;
  v0[29] = &block_descriptor;
  v0[30] = v21;
  [v20 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_230DC0BB0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 488) = v2;
  if (v2)
  {
    v3 = sub_230DC1670;
  }

  else
  {
    v3 = sub_230DC0CC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230DC0CC0()
{
  v1 = *(v0 + 400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
  v2 = sub_230E68F40();
  *(v0 + 496) = 0;
  __break(1u);
  return MEMORY[0x282200938](v2);
}

uint64_t sub_230DC0FD0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 520) = v3;
  if (v3)
  {
    v5 = *(v1 + 496);
    v4 = *(v1 + 504);

    v6 = sub_230DC16F8;
  }

  else
  {
    v6 = sub_230DC10F0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_230DC10F0()
{
  v1 = *(v0 + 408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C508, &qword_230E76328);
  v2 = sub_230E68F40();
  *(v0 + 528) = 0;
  __break(1u);
  return MEMORY[0x282200938](v2);
}

uint64_t sub_230DC12BC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 544) = v3;
  if (v3)
  {
    v4 = *(v1 + 528);
    v5 = *(v1 + 496);

    v6 = sub_230DC1784;
  }

  else
  {
    v6 = sub_230DC13E0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_230DC13E0()
{
  v4 = v0;
  v1 = *(v0 + 416);
  v3 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD20, &qword_230E75CF0);
  result = sub_230E69210();
  __break(1u);
  return result;
}

uint64_t sub_230DC1670()
{
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[59];
  swift_willThrow();

  v4 = v0[61];
  v6 = v0[56];
  v5 = v0[57];

  v7 = v0[1];

  return v7();
}

uint64_t sub_230DC16F8()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[58];
  swift_willThrow();

  v4 = v0[65];
  v6 = v0[56];
  v5 = v0[57];

  v7 = v0[1];

  return v7();
}

uint64_t sub_230DC1784()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[58];
  swift_willThrow();

  v4 = v0[68];
  v6 = v0[56];
  v5 = v0[57];

  v7 = v0[1];

  return v7();
}

uint64_t sub_230DC1810(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_230DC18E8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (!*(*a2 + 16))
  {
    goto LABEL_19;
  }

  v3 = result;
  result = sub_230DA41A0(0x6E656D7461657274, 0xEB00000000644974);
  if ((v4 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_230D82664(*(v2 + 56) + 32 * result, v16);
  sub_230D0E394(v16, v17);
  swift_dynamicCast();
  sub_230D0D278();
  v5 = sub_230E69460();

  if (!v5[2])
  {
  }

  v7 = v5[4];
  v6 = v5[5];

  if (!*(v2 + 16) || (result = sub_230DA41A0(0x74656B637562, 0xE600000000000000), (v8 & 1) == 0) || (sub_230D82664(*(v2 + 56) + 32 * result, v17), result = swift_dynamicCast(), !result))
  {
    v9 = 0;
    v10 = 0;
    if (*(v2 + 16))
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  if ((*&v16[0] + 2) >= 3)
  {
    v10 = 3;
    v9 = 1;
    if (*(v2 + 16))
    {
      goto LABEL_11;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = 0;
  v10 = -LOBYTE(v16[0]);
  if (!*(v2 + 16))
  {
    goto LABEL_18;
  }

LABEL_11:
  result = sub_230DA41A0(0x644961657261, 0xE600000000000000);
  if ((v11 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  sub_230D82664(*(v2 + 56) + 32 * result, v16);
  sub_230D0E394(v16, v17);
  swift_dynamicCast();
  if (v9)
  {
    sub_230E1AAB4(v7, v6, v14, v15, v17);
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v17[0] = *v3;
  sub_230E1BFD4(v10, v7, v6, v14, v15, isUniquelyReferenced_nonNull_native);

  *v3 = *&v17[0];
  return result;
}

void sub_230DC1B94(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v77 = a1;
  v73 = type metadata accessor for Treatment();
  v72 = *(v73 - 8);
  v8 = *(v72 + 64);
  v10 = MEMORY[0x28223BE20](v73, v9);
  v71 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v78 = &v68 - v13;

  v14 = sub_230E69680();

  v76 = v14;
  if (v14 <= 2)
  {
    v15 = MEMORY[0x277D84F90];
    v93 = MEMORY[0x277D84F90];
    v16 = a4 + 56;
    v17 = 1 << *(a4 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(a4 + 56);
    v20 = (v17 + 63) >> 6;

    v21 = 0;
    v81 = a5;
    v82 = a4;
    v79 = v20;
    v80 = a4 + 56;
    if (v19)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_6:
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_49;
      }

      if (v22 >= v20)
      {

        *v77 = v76;
        return;
      }

      v19 = *(v16 + 8 * v22);
      ++v21;
    }

    while (!v19);
    v21 = v22;
LABEL_10:
    v23 = (*(a4 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v19)))));
    v25 = *v23;
    v24 = v23[1];
    v26 = *(a5 + 16);

    if (v26 && (v27 = sub_230DA41A0(v25, v24), (v28 & 1) != 0))
    {
      v29 = *(*(a5 + 56) + 8 * v27);
    }

    else if (v15 >> 62 && sub_230E69610())
    {
      sub_230E1D6C0(v15);
    }

    else
    {
      v30 = MEMORY[0x277D84FA0];
    }

    v87 = v24;
    v83 = v25;
    v85 = v30;
    if ((v30 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_230E694D0();
      sub_230DC2854();
      sub_230DC28A0();
      sub_230E69350();
      v31 = v94;
      v32 = v95;
      v33 = v96;
      v34 = v97;
      v35 = v98;
    }

    else
    {
      v36 = -1 << *(v30 + 32);
      v32 = v30 + 56;
      v33 = ~v36;
      v37 = -v36;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v35 = v38 & *(v30 + 56);
      v34 = 0;
    }

    v19 &= v19 - 1;
    v84 = v33;
    v39 = (v33 + 64) >> 6;
    v86 = v15;
    v88 = v31;
    while (1)
    {
      v40 = v34;
      v41 = v35;
      if (v31 < 0)
      {
LABEL_23:
        v42 = sub_230E694E0();
        if (!v42)
        {
          goto LABEL_43;
        }

        v89 = v42;
        sub_230DC2854();
        swift_dynamicCast();
        v43 = v91;
        v34 = v40;
        v35 = v41;
        if (!v91)
        {
          goto LABEL_43;
        }

        goto LABEL_31;
      }

      while (1)
      {
        v44 = v40;
        v45 = v41;
        v34 = v40;
        if (!v41)
        {
          while (1)
          {
            v34 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              break;
            }

            if (v34 >= v39)
            {
              goto LABEL_43;
            }

            v45 = *(v32 + 8 * v34);
            ++v44;
            if (v45)
            {
              goto LABEL_30;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

LABEL_30:
        v35 = (v45 - 1) & v45;
        v43 = *(*(v31 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v45)))));
        if (!v43)
        {
LABEL_43:

          sub_230D912FC();

          sub_230E3A588(v86);
          a5 = v81;
          a4 = v82;
          v15 = MEMORY[0x277D84F90];
          v20 = v79;
          v16 = v80;
          if (!v19)
          {
            goto LABEL_6;
          }

          goto LABEL_10;
        }

LABEL_31:
        v46 = [v43 identifier];
        v47 = sub_230E69060();
        v49 = v48;

        v91 = v47;
        v92 = v49;
        v89 = 58;
        v90 = 0xE100000000000000;
        sub_230D0D278();
        v50 = sub_230E69460();

        if (v50[2])
        {
          break;
        }

        v40 = v34;
        v41 = v35;
        v31 = v88;
        if (v88 < 0)
        {
          goto LABEL_23;
        }
      }

      v51 = v50[5];
      v75 = v50[4];

      v52 = v74;
      v53 = *(v74 + 16);
      v70 = v51;
      if (v53 && (v54 = v87, , , v68 = sub_230DB4E78(v75, v51, v83, v54), v69 = v55, , , (v69 & 1) != 0))
      {
        v69 = *(*(v52 + 56) + v68);
      }

      else
      {
        v69 = 0;
      }

      v56 = [v43 startDate];
      v57 = v73;
      v58 = v71;
      v59 = &v71[*(v73 + 28)];
      sub_230E688E0();

      v60 = [v43 endDate];
      v61 = v58 + *(v57 + 32);
      sub_230E688E0();

      v62 = v87;
      *v58 = v83;
      *(v58 + 8) = v62;
      v63 = v70;
      *(v58 + 16) = v75;
      *(v58 + 24) = v63;
      *(v58 + 32) = v69;
      sub_230DC28F8(v58, v78);
      v64 = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_230E4A9C4(0, v64[2] + 1, 1, v64);
      }

      v31 = v88;
      v66 = v64[2];
      v65 = v64[3];
      if (v66 >= v65 >> 1)
      {
        v64 = sub_230E4A9C4(v65 > 1, v66 + 1, 1, v64);
      }

      v64[2] = v66 + 1;
      v67 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v86 = v64;
      sub_230DC28F8(v78, v64 + v67 + *(v72 + 72) * v66);
    }
  }

LABEL_50:
  __break(1u);
}

uint64_t sub_230DC2230(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);

  if (!v7)
  {
  }

  v9 = *a3;
  v10 = sub_230DB4DAC(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_230DB86FC(v15, v6 & 1);
    v17 = *a3;
    v10 = sub_230DB4DAC(v8);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_230E69950();
    __break(1u);
  }

  if (v6)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v22 = v10;
  sub_230DBADF8();
  v10 = v22;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x23191E910](v19);
    }

    goto LABEL_28;
  }

LABEL_12:
  v23 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v23[6] + v10) = v8;
  *(v23[7] + 8 * v10) = v7;
  v24 = v23[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_230E69540();
    MEMORY[0x23191DA00](0xD00000000000001BLL, 0x8000000230E82200);
    sub_230E695F0();
    MEMORY[0x23191DA00](39, 0xE100000000000000);
    result = sub_230E69600();
    __break(1u);
    return result;
  }

  v23[2] = v25;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      v7 = *v6;
      v8 = *(v6 - 8);

      if (!v7)
      {
      }

      v27 = *a3;
      v28 = sub_230DB4DAC(v8);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_230DB86FC(v32, 1);
        v33 = *a3;
        v28 = sub_230DB4DAC(v8);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v35[6] + v28) = v8;
      *(v35[7] + 8 * v28) = v7;
      v36 = v35[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v26;
      v35[2] = v37;
      v6 += 2;
      if (v4 == v26)
      {
      }
    }

    goto LABEL_27;
  }
}

uint64_t sub_230DC2594(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v38 = MEMORY[0x277D84F90];
    sub_230D490F0(0, v3, 0);
    v5 = v38;
    v6 = v2 + 64;
    v7 = -1 << *(v2 + 32);
    result = sub_230E694B0();
    v8 = result;
    v9 = 0;
    v35 = *(v2 + 36);
    v30 = v2 + 72;
    v31 = v3;
    v32 = v2 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v2 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (v35 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v34 = v9;
      v12 = (*(v2 + 48) + 16 * v8);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(v2 + 56) + 8 * v8);

      v16 = a2(v36, v13, v14, v15);

      v37 = v16;
      v17 = v36[0];
      v18 = v5;
      v38 = v5;
      v19 = v2;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_230D490F0((v20 > 1), v21 + 1, 1);
        v18 = v38;
      }

      *(v18 + 16) = v21 + 1;
      v22 = v18 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v16;
      v10 = 1 << *(v19 + 32);
      if (v8 >= v10)
      {
        goto LABEL_25;
      }

      v6 = v32;
      v23 = *(v32 + 8 * v11);
      if ((v23 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      v2 = v19;
      v5 = v18;
      if (v35 != *(v2 + 36))
      {
        goto LABEL_27;
      }

      v24 = v23 & (-2 << (v8 & 0x3F));
      if (v24)
      {
        v10 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v11 << 6;
        v26 = v11 + 1;
        v27 = (v30 + 8 * v11);
        while (v26 < (v10 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_230D52C58(v8, v35, 0);
            v10 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_230D52C58(v8, v35, 0);
      }

LABEL_4:
      v9 = v34 + 1;
      v8 = v10;
      if (v34 + 1 == v31)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

unint64_t sub_230DC2854()
{
  result = qword_281565F48;
  if (!qword_281565F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281565F48);
  }

  return result;
}

unint64_t sub_230DC28A0()
{
  result = qword_281565F40;
  if (!qword_281565F40)
  {
    sub_230DC2854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281565F40);
  }

  return result;
}

uint64_t sub_230DC28F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Treatment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_230DC295C()
{
  result = qword_27DB5C518;
  if (!qword_27DB5C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C518);
  }

  return result;
}

uint64_t sub_230DC29B0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
  }

  return result;
}

uint64_t TreatmentError.hashValue.getter()
{
  v1 = *v0;
  sub_230E699B0();
  MEMORY[0x23191E2B0](v1);
  return sub_230E699D0();
}

unint64_t sub_230DC2A70()
{
  result = qword_27DB5C520;
  if (!qword_27DB5C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C520);
  }

  return result;
}

uint64_t sub_230DC2AD4()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

ServicesIntelligence::UseCase_optional __swiftcall UseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t _s20ServicesIntelligence16InferenceUseCaseO8rawValueSSvg_0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x7449756F59726F46;
    if (v1 != 6)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD000000000000011;
    if (v1 == 4)
    {
      v6 = 0x4154656461637261;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 1953719668;
    v3 = 2019850594;
    if (v1 != 2)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0)
    {
      v2 = 0x4647656461637261;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_230DC2E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_230DC3350();
  v9 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140EE8](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_230DC2EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_230DC3350();
  v5 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D38](a1, a2, v4, v5);
}

ServicesIntelligence::InferenceUseCase_optional __swiftcall InferenceUseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_230DC2F94()
{
  result = qword_27DB5C528;
  if (!qword_27DB5C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C528);
  }

  return result;
}

unint64_t sub_230DC2FEC()
{
  result = qword_27DB5C530;
  if (!qword_27DB5C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C530);
  }

  return result;
}

void sub_230DC304C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xEF7265776F546D65;
    v9 = 0x7449756F59726F46;
    if (v2 != 6)
    {
      v9 = 0xD000000000000016;
      v8 = 0x8000000230E80400;
    }

    v10 = 0xEC00000059464741;
    v11 = 0xD000000000000011;
    if (v2 == 4)
    {
      v11 = 0x4154656461637261;
    }

    else
    {
      v10 = 0x8000000230E803D0;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1953719668;
    v5 = 0xE400000000000000;
    v6 = 2019850594;
    if (v2 != 2)
    {
      v6 = 0xD000000000000010;
      v5 = 0x8000000230E803B0;
    }

    if (*v1)
    {
      v4 = 0x4647656461637261;
      v3 = 0xE900000000000059;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_230DC3214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_230DC32FC();
  v9 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140EE8](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_230DC3288(uint64_t a1, uint64_t a2)
{
  v4 = sub_230DC32FC();
  v5 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D38](a1, a2, v4, v5);
}

unint64_t sub_230DC32FC()
{
  result = qword_27DB5C538;
  if (!qword_27DB5C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C538);
  }

  return result;
}

unint64_t sub_230DC3350()
{
  result = qword_27DB5C540;
  if (!qword_27DB5C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C540);
  }

  return result;
}

uint64_t UseCaseConfiguration.useCase.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UseCaseConfiguration.useCase.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UseCaseConfiguration.workflows.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t static UseCaseConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_230E698C0() & 1) == 0 || (sub_230D0B544(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_230D26A94(v3, v5);
}

uint64_t sub_230DC36A8()
{
  v1 = 0x6E69616D6F64;
  if (*v0 != 1)
  {
    v1 = 0x776F6C666B726F77;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65736143657375;
  }
}

uint64_t sub_230DC3704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DC3F20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230DC372C(uint64_t a1)
{
  v2 = sub_230DC39C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC3768(uint64_t a1)
{
  v2 = sub_230DC39C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UseCaseConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C548, &qword_230E76700);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v19 = *(v1 + 16);
  v16 = v1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC39C0();
  sub_230E69A50();
  v23 = 0;
  v12 = v17;
  sub_230E69810();
  if (!v12)
  {
    v13 = v16;
    v22 = v19;
    v21 = 1;
    sub_230D0D0D4();
    sub_230E69850();
    v18 = v13;
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C558, &qword_230E76708);
    sub_230DC3CB4(&qword_27DB5C560, sub_230D57AA0);
    sub_230E69850();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_230DC39C0()
{
  result = qword_27DB5C550;
  if (!qword_27DB5C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C550);
  }

  return result;
}

uint64_t UseCaseConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C568, &qword_230E76710);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC39C0();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v12 = sub_230E69720();
  v14 = v13;
  v15 = v12;
  v21 = 1;
  sub_230D0D17C();
  sub_230E69760();
  v19 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C558, &qword_230E76708);
  v20 = 2;
  sub_230DC3CB4(&qword_27DB5C570, sub_230D57FA4);
  sub_230E69760();
  (*(v6 + 8))(v10, v5);
  v17 = v18[1];
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 24) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230DC3CB4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C558, &qword_230E76708);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230DC3D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_230E698C0() & 1) == 0 || (sub_230D0B544(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_230D26A94(v3, v5);
}

unint64_t sub_230DC3E1C()
{
  result = qword_27DB5C578;
  if (!qword_27DB5C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C578);
  }

  return result;
}

unint64_t sub_230DC3E74()
{
  result = qword_27DB5C580;
  if (!qword_27DB5C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C580);
  }

  return result;
}

unint64_t sub_230DC3ECC()
{
  result = qword_27DB5C588;
  if (!qword_27DB5C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C588);
  }

  return result;
}

uint64_t sub_230DC3F20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_230DC403C(uint64_t a1)
{
  v2 = sub_230DC4F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC4078(uint64_t a1)
{
  v2 = sub_230DC4F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DC40B4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x45676E6968636163;
    if (v1 != 1)
    {
      v5 = 0xD000000000000018;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6F69747563657865;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    if (v1 != 5)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD000000000000014;
    if (v1 != 3)
    {
      v3 = 0x74757074754F6F6ELL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_230DC41B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DC6488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230DC41E0(uint64_t a1)
{
  v2 = sub_230DC4D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC421C(uint64_t a1)
{
  v2 = sub_230DC4D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DC4258(uint64_t a1)
{
  v2 = sub_230DC4F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC4294(uint64_t a1)
{
  v2 = sub_230DC4F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DC42D0(uint64_t a1)
{
  v2 = sub_230DC4EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC430C(uint64_t a1)
{
  v2 = sub_230DC4EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DC4348(uint64_t a1)
{
  v2 = sub_230DC4E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC4384(uint64_t a1)
{
  v2 = sub_230DC4E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DC43C0(uint64_t a1)
{
  v2 = sub_230DC4E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC43FC(uint64_t a1)
{
  v2 = sub_230DC4E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DC4438(uint64_t a1)
{
  v2 = sub_230DC4DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC4474(uint64_t a1)
{
  v2 = sub_230DC4DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DC44B0(uint64_t a1)
{
  v2 = sub_230DC4D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC44EC(uint64_t a1)
{
  v2 = sub_230DC4D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UseCaseExecutionError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C590, &qword_230E76900);
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v71 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C598, &qword_230E76908);
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v68 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C5A0, &qword_230E76910);
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v65 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C5A8, &qword_230E76918);
  v63 = *(v15 - 8);
  v64 = v15;
  v16 = *(v63 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v62 = &v60 - v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C5B0, &qword_230E76920);
  v61 = *(v76 - 8);
  v19 = *(v61 + 64);
  MEMORY[0x28223BE20](v76, v20);
  v75 = &v60 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C5B8, &qword_230E76928);
  v60 = *(v22 - 8);
  v23 = *(v60 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v60 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C5C0, &qword_230E76930);
  v74 = *(v27 - 8);
  v28 = *(v74 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v60 - v30;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C5C8, &qword_230E76938);
  v80 = *(v77 - 8);
  v32 = *(v80 + 64);
  MEMORY[0x28223BE20](v77, v33);
  v34 = v1[1];
  v78 = *v1;
  v79 = v34;
  v35 = *(v1 + 16);
  v37 = a1[3];
  v36 = a1[4];
  v38 = a1;
  v40 = &v60 - v39;
  __swift_project_boxed_opaque_existential_1(v38, v37);
  sub_230DC4D44();
  v81 = v40;
  sub_230E69A50();
  if (v35 <= 2)
  {
    v46 = v22;
    v47 = v74;
    v48 = v75;
    v49 = v76;
    if (v35)
    {
      if (v35 == 1)
      {
        v83 = 1;
        sub_230DC4F3C();
        v50 = v77;
        v51 = v81;
        sub_230E697A0();
        sub_230E69810();
        (*(v60 + 8))(v26, v46);
      }

      else
      {
        v84 = 2;
        sub_230DC4EE8();
        v59 = v48;
        v50 = v77;
        v51 = v81;
        sub_230E697A0();
        sub_230E69810();
        (*(v61 + 8))(v59, v49);
      }

      return (*(v80 + 8))(v51, v50);
    }

    else
    {
      v82 = 0;
      sub_230DC4F90();
      v56 = v77;
      v57 = v81;
      sub_230E697A0();
      sub_230E69810();
      (*(v47 + 8))(v31, v27);
      return (*(v80 + 8))(v57, v56);
    }
  }

  else if (v35 > 4)
  {
    v52 = v77;
    if (v35 == 5)
    {
      v87 = 5;
      sub_230DC4DEC();
      v53 = v68;
      sub_230E697A0();
      v54 = v70;
      sub_230E69810();
      v55 = v69;
    }

    else
    {
      v88 = 6;
      sub_230DC4D98();
      v53 = v71;
      sub_230E697A0();
      v54 = v73;
      sub_230E69810();
      v55 = v72;
    }

    (*(v55 + 8))(v53, v54);
    return (*(v80 + 8))(v81, v52);
  }

  else
  {
    v41 = v77;
    if (v35 == 3)
    {
      v85 = 3;
      sub_230DC4E94();
      v42 = v62;
      v43 = v81;
      sub_230E697A0();
      v44 = v64;
      sub_230E69810();
      v45 = v63;
    }

    else
    {
      v86 = 4;
      sub_230DC4E40();
      v42 = v65;
      v43 = v81;
      sub_230E697A0();
      v44 = v67;
      sub_230E69810();
      v45 = v66;
    }

    (*(v45 + 8))(v42, v44);
    return (*(v80 + 8))(v43, v41);
  }
}

unint64_t sub_230DC4D44()
{
  result = qword_27DB5C5D0;
  if (!qword_27DB5C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C5D0);
  }

  return result;
}

unint64_t sub_230DC4D98()
{
  result = qword_27DB5C5D8;
  if (!qword_27DB5C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C5D8);
  }

  return result;
}

unint64_t sub_230DC4DEC()
{
  result = qword_27DB5C5E0;
  if (!qword_27DB5C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C5E0);
  }

  return result;
}

unint64_t sub_230DC4E40()
{
  result = qword_27DB5C5E8;
  if (!qword_27DB5C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C5E8);
  }

  return result;
}

unint64_t sub_230DC4E94()
{
  result = qword_27DB5C5F0;
  if (!qword_27DB5C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C5F0);
  }

  return result;
}

unint64_t sub_230DC4EE8()
{
  result = qword_27DB5C5F8;
  if (!qword_27DB5C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C5F8);
  }

  return result;
}

unint64_t sub_230DC4F3C()
{
  result = qword_27DB5C600;
  if (!qword_27DB5C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C600);
  }

  return result;
}

unint64_t sub_230DC4F90()
{
  result = qword_27DB5C608;
  if (!qword_27DB5C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C608);
  }

  return result;
}

uint64_t UseCaseExecutionError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C610, &qword_230E76940);
  v90 = *(v87 - 8);
  v3 = *(v90 + 64);
  MEMORY[0x28223BE20](v87, v4);
  v96 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C618, &qword_230E76948);
  v88 = *(v6 - 8);
  v89 = v6;
  v7 = *(v88 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v92 = &v76 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C620, &qword_230E76950);
  v11 = *(v10 - 8);
  v85 = v10;
  v86 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v95 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C628, &qword_230E76958);
  v83 = *(v15 - 8);
  v84 = v15;
  v16 = *(v83 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v91 = &v76 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C630, &qword_230E76960);
  v81 = *(v82 - 8);
  v19 = *(v81 + 64);
  MEMORY[0x28223BE20](v82, v20);
  v94 = &v76 - v21;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C638, &qword_230E76968);
  v79 = *(v80 - 8);
  v22 = *(v79 + 64);
  MEMORY[0x28223BE20](v80, v23);
  v25 = &v76 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C640, &qword_230E76970);
  v78 = *(v26 - 8);
  v27 = *(v78 + 64);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v76 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C648, &unk_230E76978);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v76 - v35;
  v37 = a1[3];
  v38 = a1[4];
  v97 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_230DC4D44();
  v39 = v98;
  sub_230E69A30();
  if (v39)
  {
    return __swift_destroy_boxed_opaque_existential_1(v97);
  }

  v40 = v30;
  v76 = v26;
  v77 = v25;
  v41 = v94;
  v42 = v95;
  v43 = v96;
  v98 = v32;
  v44 = sub_230E69780();
  v45 = (2 * *(v44 + 16)) | 1;
  v99 = v44;
  v100 = v44 + 32;
  v101 = 0;
  v102 = v45;
  v46 = sub_230D07AC8();
  if (v46 == 7 || v101 != v102 >> 1)
  {
    v50 = sub_230E69580();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950) + 48);
    *v52 = &type metadata for UseCaseExecutionError;
    sub_230E696A0();
    sub_230E69570();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
    swift_willThrow();
    (*(v98 + 8))(v36, v31);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v97);
  }

  v103 = v46;
  if (v46 > 2u)
  {
    if (v46 > 4u)
    {
      v68 = v93;
      v47 = v98;
      if (v46 == 5)
      {
        v104 = 5;
        sub_230DC4DEC();
        v57 = v92;
        sub_230E69690();
        v58 = v89;
        v70 = sub_230E69720();
        v72 = v73;
        (*(v88 + 8))(v57, v58);
      }

      else
      {
        v104 = 6;
        sub_230DC4D98();
        v65 = v43;
        sub_230E69690();
        v66 = v87;
        v70 = sub_230E69720();
        v72 = v75;
        (*(v90 + 8))(v65, v66);
      }

      goto LABEL_21;
    }

    v47 = v98;
    if (v46 == 3)
    {
      v104 = 3;
      sub_230DC4E94();
      v48 = v91;
      sub_230E69690();
      v49 = v84;
      v70 = sub_230E69720();
      v72 = v71;
      (*(v83 + 8))(v48, v49);
    }

    else
    {
      v104 = 4;
      sub_230DC4E40();
      sub_230E69690();
      v64 = v85;
      v70 = sub_230E69720();
      v72 = v74;
      (*(v86 + 8))(v42, v64);
    }

    goto LABEL_20;
  }

  if (v46)
  {
    if (v46 == 1)
    {
      v104 = 1;
      sub_230DC4F3C();
      v55 = v77;
      sub_230E69690();
      v56 = v80;
      v70 = sub_230E69720();
      v72 = v67;
      (*(v79 + 8))(v55, v56);
      v68 = v93;
      v47 = v98;
LABEL_21:
      (*(v47 + 8))(v36, v31);
      swift_unknownObjectRelease();
      v61 = v97;
      goto LABEL_22;
    }

    v104 = 2;
    sub_230DC4EE8();
    sub_230E69690();
    v62 = v82;
    v63 = sub_230E69720();
    v47 = v98;
    v70 = v63;
    v72 = v69;
    (*(v81 + 8))(v41, v62);
LABEL_20:
    v68 = v93;
    goto LABEL_21;
  }

  v104 = 0;
  sub_230DC4F90();
  sub_230E69690();
  v59 = v76;
  v70 = sub_230E69720();
  v72 = v60;
  (*(v78 + 8))(v40, v59);
  (*(v98 + 8))(v36, v31);
  swift_unknownObjectRelease();
  v61 = v97;
  v68 = v93;
LABEL_22:
  *v68 = v70;
  *(v68 + 8) = v72;
  *(v68 + 16) = v103;
  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t sub_230DC5B2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_230DC5B74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

unint64_t sub_230DC5C4C()
{
  result = qword_27DB5C650;
  if (!qword_27DB5C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C650);
  }

  return result;
}

unint64_t sub_230DC5CA4()
{
  result = qword_27DB5C658;
  if (!qword_27DB5C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C658);
  }

  return result;
}

unint64_t sub_230DC5CFC()
{
  result = qword_27DB5C660;
  if (!qword_27DB5C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C660);
  }

  return result;
}

unint64_t sub_230DC5D54()
{
  result = qword_27DB5C668;
  if (!qword_27DB5C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C668);
  }

  return result;
}

unint64_t sub_230DC5DAC()
{
  result = qword_27DB5C670;
  if (!qword_27DB5C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C670);
  }

  return result;
}

unint64_t sub_230DC5E04()
{
  result = qword_27DB5C678;
  if (!qword_27DB5C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C678);
  }

  return result;
}

unint64_t sub_230DC5E5C()
{
  result = qword_27DB5C680;
  if (!qword_27DB5C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C680);
  }

  return result;
}

unint64_t sub_230DC5EB4()
{
  result = qword_27DB5C688;
  if (!qword_27DB5C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C688);
  }

  return result;
}

unint64_t sub_230DC5F0C()
{
  result = qword_27DB5C690;
  if (!qword_27DB5C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C690);
  }

  return result;
}

unint64_t sub_230DC5F64()
{
  result = qword_27DB5C698;
  if (!qword_27DB5C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C698);
  }

  return result;
}

unint64_t sub_230DC5FBC()
{
  result = qword_27DB5C6A0;
  if (!qword_27DB5C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6A0);
  }

  return result;
}

unint64_t sub_230DC6014()
{
  result = qword_27DB5C6A8;
  if (!qword_27DB5C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6A8);
  }

  return result;
}

unint64_t sub_230DC606C()
{
  result = qword_27DB5C6B0;
  if (!qword_27DB5C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6B0);
  }

  return result;
}

unint64_t sub_230DC60C4()
{
  result = qword_27DB5C6B8;
  if (!qword_27DB5C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6B8);
  }

  return result;
}

unint64_t sub_230DC611C()
{
  result = qword_27DB5C6C0;
  if (!qword_27DB5C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6C0);
  }

  return result;
}

unint64_t sub_230DC6174()
{
  result = qword_27DB5C6C8;
  if (!qword_27DB5C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6C8);
  }

  return result;
}

unint64_t sub_230DC61CC()
{
  result = qword_27DB5C6D0;
  if (!qword_27DB5C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6D0);
  }

  return result;
}

unint64_t sub_230DC6224()
{
  result = qword_27DB5C6D8;
  if (!qword_27DB5C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6D8);
  }

  return result;
}

unint64_t sub_230DC627C()
{
  result = qword_27DB5C6E0;
  if (!qword_27DB5C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6E0);
  }

  return result;
}

unint64_t sub_230DC62D4()
{
  result = qword_27DB5C6E8;
  if (!qword_27DB5C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6E8);
  }

  return result;
}

unint64_t sub_230DC632C()
{
  result = qword_27DB5C6F0;
  if (!qword_27DB5C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6F0);
  }

  return result;
}

unint64_t sub_230DC6384()
{
  result = qword_27DB5C6F8;
  if (!qword_27DB5C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6F8);
  }

  return result;
}

unint64_t sub_230DC63DC()
{
  result = qword_27DB5C700;
  if (!qword_27DB5C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C700);
  }

  return result;
}

unint64_t sub_230DC6434()
{
  result = qword_27DB5C708;
  if (!qword_27DB5C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C708);
  }

  return result;
}

uint64_t sub_230DC6488(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69747563657865 && a2 == 0xEE00726F7272456ELL;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45676E6968636163 && a2 == 0xEC000000726F7272 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E83490 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80D10 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74757074754F6F6ELL && a2 == 0xE800000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000230E834B0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E834D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t UseCaseRequest.useCase.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UseCaseRequest.useCase.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UseCaseRequest.cachingBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

__n128 UseCaseRequest.cachingBehavior.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 24);

  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;
  *(v1 + 48) = v3;
  return result;
}

uint64_t UseCaseRequest.inputPayload.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 56);

  *(v1 + 56) = v2;
  return result;
}

uint64_t UseCaseRequest.processIdentifier.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t UseCaseRequest.processIdentifier.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t UseCaseRequest.treatmentIdentifier.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t UseCaseRequest.treatmentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t UseCaseRequest.init(useCase:cachingBehavior:inputPayload:processIdentifier:treatmentIdentifier:useCache:)@<X0>(_BYTE *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v15 = *a1;
  v27 = a2[1];
  v28 = *a2;
  v16 = *(a2 + 32);
  v17 = *a3;
  if (v15 > 3)
  {
    v18 = 0xEF7265776F546D65;
    v23 = 0x7449756F59726F46;
    if (v15 != 6)
    {
      v23 = 0xD000000000000016;
      v18 = 0x8000000230E80400;
    }

    v24 = 0xEC00000059464741;
    v25 = 0xD000000000000011;
    if (v15 == 4)
    {
      v25 = 0x4154656461637261;
    }

    else
    {
      v24 = 0x8000000230E803D0;
    }

    if (*a1 <= 5u)
    {
      v22 = v25;
    }

    else
    {
      v22 = v23;
    }

    if (*a1 <= 5u)
    {
      v18 = v24;
    }
  }

  else
  {
    v18 = 0xE400000000000000;
    v19 = 1953719668;
    v20 = 0xE400000000000000;
    v21 = 2019850594;
    if (v15 != 2)
    {
      v21 = 0xD000000000000010;
      v20 = 0x8000000230E803B0;
    }

    if (*a1)
    {
      v19 = 0x4647656461637261;
      v18 = 0xE900000000000059;
    }

    if (*a1 <= 1u)
    {
      v22 = v19;
    }

    else
    {
      v22 = v21;
    }

    if (*a1 > 1u)
    {
      v18 = v20;
    }
  }

  *a9 = v22;
  *(a9 + 8) = v18;

  *(a9 + 16) = v28;
  *(a9 + 32) = v27;
  *(a9 + 48) = v16;

  *(a9 + 56) = v17;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5 & 1;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8 & 1;
  return result;
}

uint64_t UseCaseRequest.init(useCase:cachingBehavior:inputPayload:processIdentifier:treatmentIdentifier:useCache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v16 = *(a3 + 32);
  v17 = *a4;
  *a9 = a1;
  *(a9 + 8) = a2;

  v18 = *(a3 + 16);
  *(a9 + 16) = *a3;
  *(a9 + 32) = v18;
  *(a9 + 48) = v16;

  *(a9 + 56) = v17;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6 & 1;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  return result;
}

unint64_t sub_230DC6B78()
{
  v1 = *v0;
  v2 = 0x65736143657375;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x6568636143657375;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x42676E6968636163;
  if (v1 != 1)
  {
    v5 = 0x7961507475706E69;
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

uint64_t sub_230DC6C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DC8D0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230DC6C74(uint64_t a1)
{
  v2 = sub_230DC6FAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC6CB0(uint64_t a1)
{
  v2 = sub_230DC6FAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UseCaseRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C710, &qword_230E77480);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 1);
  v24 = *(v1 + 2);
  v25 = v11;
  v30 = *(v1 + 48);
  v12 = v1[7];
  v22 = v1[8];
  v23 = v12;
  v21 = *(v1 + 72);
  v13 = v1[11];
  v19 = v1[10];
  v20 = v13;
  v18[1] = *(v1 + 96);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC6FAC();
  sub_230E69A50();
  LOBYTE(v27) = 0;
  v15 = v26;
  sub_230E69810();
  if (!v15)
  {
    v16 = v23;
    v28 = v24;
    v27 = v25;
    v29 = v30;
    v31 = 1;
    sub_230DC7000();

    sub_230E69850();

    *&v27 = v16;
    v31 = 2;
    sub_230DC7054();

    sub_230E697F0();

    LOBYTE(v27) = 3;
    sub_230E697D0();
    LOBYTE(v27) = 4;
    sub_230E697B0();
    LOBYTE(v27) = 5;
    sub_230E69820();
  }

  return (*(v4 + 8))(v8, v3);
}