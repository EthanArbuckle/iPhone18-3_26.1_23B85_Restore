uint64_t sub_1890BE4F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938D40);
  v37 = a2;
  result = sub_18A4A8468();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v37 & 1) == 0)
      {
        v25 = v22;
        v26 = v24;
      }

      sub_18A4A8888();
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v27 = 2;
        }

        else
        {
          v27 = 3;
        }

        MEMORY[0x18CFE37E0](v27);
        sub_18A4A7C98();
      }

      else
      {
        MEMORY[0x18CFE37E0](v23 != 0);
        sub_18A4A7288();
        sub_18A4A7348();
      }

      result = sub_18A4A88E8();
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

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_41;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_39;
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

LABEL_39:
  *v3 = v7;
  return result;
}

uint64_t sub_1890BE80C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v37 = a2;
  result = sub_18A4A8468();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v3;
    v36 = v6;
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
      v38 = (v13 - 1) & v13;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(v6 + 56);
      v22 = *(*(v6 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      sub_18A4A7288();
      sub_18A4A8888();
      sub_18A4A7348();
      v26 = sub_18A4A88E8();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v6 = v36;
      v13 = v38;
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
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v4 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1890BEAC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938D20);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (a2)
      {
        sub_188A5EBAC(v21, v31);
      }

      else
      {
        sub_188A53994(v21, v31);
      }

      result = sub_18A4A8878();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_188A5EBAC(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1890BED48(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_18A4A3538();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938E10);
  v39 = a2;
  result = sub_18A4A8468();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1890C8578(&qword_1EA934F58, MEMORY[0x1E69DB9E0]);
      result = sub_18A4A7198();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1890BF124(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C340);
  v30 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v20);
      result = sub_18A4A88E8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1890BF3C8(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v32 = a2;
  result = sub_18A4A8468();
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
      v21 = *(*(v6 + 48) + v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v32 & 1) == 0)
      {
        v23 = v22;
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v21);
      result = sub_18A4A88E8();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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

    if ((v32 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v31 = 1 << *(v6 + 32);
    v4 = v3;
    if (v31 >= 64)
    {
      bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1890BF64C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D00);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(v5 + 56) + 32 * v19;
      if (a2)
      {
        sub_188F166A0(v21, v31);
      }

      else
      {
        sub_188FA952C(v21, v31);
      }

      result = sub_18A4A8878();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_188F166A0(v31, *(v7 + 56) + 32 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1890BF8D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938CE0);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v22 = (*(v5 + 56) + 32 * v20);
      v32 = v22[1];
      v33 = *v22;
      result = sub_18A4A8878();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v33;
      v16[1] = v32;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1890BFB58(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UITextEffectView.EffectID();
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938CD0);
  v37 = a2;
  result = sub_18A4A8468();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 56);
      v38 = *(*(v8 + 48) + 16 * v22);
      v24 = *(v36 + 72);
      v25 = v23 + v24 * v22;
      if (v37)
      {
        sub_1890C8504(v25, v7, type metadata accessor for UITextEffectView.EffectID);
      }

      else
      {
        sub_1890C849C(v25, v7, type metadata accessor for UITextEffectView.EffectID);
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v38);
      MEMORY[0x18CFE37E0](*(&v38 + 1));
      result = sub_18A4A88E8();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v38;
      result = sub_1890C8504(v7, *(v10 + 56) + v24 * v18, type metadata accessor for UITextEffectView.EffectID);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1890BFEDC(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = sub_18A4A29D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v41 = a2;
  result = sub_18A4A8468();
  v13 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v37 = v3;
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
    v38 = (v8 + 16);
    v39 = v11;
    v40 = v8;
    v42 = (v8 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v44 = *(v40 + 72);
      v27 = v26 + v44 * v25;
      if (v41)
      {
        (*v42)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      else
      {
        (*v38)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      sub_1890C8578(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
      result = sub_18A4A7198();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v42)(*(v13 + 48) + v44 * v21, v45, v7);
      *(*(v13 + 56) + 8 * v21) = v43;
      ++*(v13 + 16);
      v11 = v39;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v11 + 32);
    v5 = v37;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v5 = v13;
  return result;
}

uint64_t sub_1890C02B8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = _s8CacheKeyVMa();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C290);
  v39 = a2;
  result = sub_18A4A8468();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v36 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v37 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v39)
      {
        sub_1890C8504(v25, v7, _s8CacheKeyVMa);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      else
      {
        sub_1890C849C(v25, v7, _s8CacheKeyVMa);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      sub_18A4A8888();
      sub_18A4A7348();
      sub_18A4A2DB8();
      sub_188E904A0();
      sub_18A4A71A8();
      result = sub_18A4A88E8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v10 = v36;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v10 = v36;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1890C8504(v7, *(v11 + 48) + v24 * v19, _s8CacheKeyVMa);
      *(*(v11 + 56) + 8 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v10 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1890C066C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E38);
  v35 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {
        v25 = v24;
      }

      sub_18A4A8888();
      sub_18A4A7348();
      result = sub_18A4A88E8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1890C0910(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_18A4A8468();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v3;
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
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_18A4A7C78();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
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

    if (a2)
    {
      v32 = 1 << *(v6 + 32);
      if (v32 >= 64)
      {
        bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v6 + 16) = 0;
    }

    v4 = v33;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1890C0B70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C330);
  v36 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v21 = (*(v5 + 48) + 2 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {
        v25 = v24;
      }

      sub_18A4A8888();
      if (v23)
      {
        if (v23 == 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }
      }

      else
      {
        v26 = 0;
      }

      MEMORY[0x18CFE37E0](v26);
      sub_18A4A88A8();
      if (v22 != 2)
      {
        MEMORY[0x18CFE37E0](v22 & 1);
      }

      result = sub_18A4A88E8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 2 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_42;
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

    if (v36)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1890C0E54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E30);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      result = sub_18A4A8878();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1890C10CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938DF0);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_18A4A8878();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1890C133C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C310);
  v36 = a2;
  result = sub_18A4A8468();
  v10 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v35 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v36)
      {
        sub_1890C8504(v24, v7, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        v37 = *(*(v8 + 56) + 8 * v22);
      }

      else
      {
        sub_1890C849C(v24, v7, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        v37 = *(*(v8 + 56) + 8 * v22);
      }

      sub_18A4A8888();
      sub_18A4A7C98();
      v40 = 0;
      v41 = 0xE000000000000000;
      v25 = v7[1];
      v38 = *v7;
      v39 = v25;
      type metadata accessor for CGRect(0);
      sub_18A4A82D8();
      sub_18A4A7348();

      sub_18A4A7348();
      result = sub_18A4A88E8();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1890C8504(v7, *(v10 + 48) + v23 * v18, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      *(*(v10 + 56) + 8 * v18) = v37;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1890C1710(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C300);
  v46 = a2;
  result = sub_18A4A8468();
  v10 = result;
  if (*(v8 + 16))
  {
    v43 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    v44 = v8;
    while (v15)
    {
      v23 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v26 = v23 | (v11 << 6);
      v27 = *(v45 + 72);
      v28 = *(v8 + 48) + v27 * v26;
      v29 = 72 * v26;
      if (v46)
      {
        sub_1890C8504(v28, v7, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        v30 = *(v8 + 56) + v29;
        v32 = *(v30 + 16);
        v31 = *(v30 + 32);
        v33 = *(v30 + 64);
        v50 = *(v30 + 48);
        v51 = v33;
        v47 = *v30;
        v48 = v32;
        v49 = v31;
      }

      else
      {
        sub_1890C849C(v28, v7, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        sub_188FA95D0(*(v8 + 56) + v29, &v47);
      }

      sub_18A4A8888();
      sub_18A4A29D8();
      sub_1890C8578(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
      sub_18A4A71A8();
      result = sub_18A4A88E8();
      v34 = -1 << *(v10 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v17 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v8 = v44;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v17 + 8 * v36);
          if (v40 != -1)
          {
            v18 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v35) & ~*(v17 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v8 = v44;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1890C8504(v7, *(v10 + 48) + v27 * v18, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      v19 = *(v10 + 56) + 72 * v18;
      v20 = v48;
      v21 = v49;
      v22 = v50;
      *(v19 + 64) = v51;
      *(v19 + 32) = v21;
      *(v19 + 48) = v22;
      *(v19 + 16) = v20;
      *v19 = v47;
      ++*(v10 + 16);
    }

    v24 = v11;
    while (1)
    {
      v11 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v25 = v12[v11];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v15 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v8 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v12, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v41;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1890C1B38(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C2F0);
  v39 = a2;
  result = sub_18A4A8468();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v41 = *(v38 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        sub_1890C8504(v25, v7, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      }

      else
      {
        sub_1890C849C(v25, v7, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      }

      v26 = (*(v8 + 56) + 2 * v23);
      v40 = v26[1];
      v27 = *v26;
      sub_18A4A8888();
      sub_18A4A29D8();
      sub_1890C8578(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
      sub_18A4A71A8();
      result = sub_18A4A88E8();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1890C8504(v7, *(v10 + 48) + v41 * v18, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      v19 = (*(v10 + 56) + 2 * v18);
      *v19 = v27;
      v19[1] = v40;
      ++*(v10 + 16);
      v8 = v37;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1890C1F10(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938DE0);
  v41 = a2;
  result = sub_18A4A8468();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v24 = v21 | (v11 << 6);
      v25 = *(v8 + 48);
      v43 = *(v40 + 72);
      v26 = v25 + v43 * v24;
      if (v41)
      {
        sub_1890C8504(v26, v7, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      }

      else
      {
        sub_1890C849C(v26, v7, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      }

      v27 = (*(v8 + 56) + 16 * v24);
      v28 = *v27;
      v42 = v27[1];
      sub_18A4A8888();
      sub_18A4A29D8();
      sub_1890C8578(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
      sub_18A4A71A8();
      result = sub_18A4A88E8();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1890C8504(v7, *(v10 + 48) + v43 * v18, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      v19 = (*(v10 + 56) + 16 * v18);
      v20 = v42;
      *v19 = v28;
      v19[1] = v20;
      ++*(v10 + 16);
      v8 = v39;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v8 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1890C22E0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938DD0);
  v42 = a2;
  result = sub_18A4A8468();
  v11 = result;
  if (*(v9 + 16))
  {
    v38 = v2;
    v39 = v9;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    v19 = v43;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v40 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v42)
      {
        sub_1890C8504(v26, v19, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        v27 = *(v9 + 56);
        v28 = *(v41 + 72);
        sub_1890C8504(v27 + v28 * v24, v44, type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration);
      }

      else
      {
        sub_1890C849C(v26, v19, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        v29 = *(v9 + 56);
        v28 = *(v41 + 72);
        sub_1890C849C(v29 + v28 * v24, v44, type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration);
      }

      sub_18A4A8888();
      sub_18A4A29D8();
      sub_1890C8578(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
      sub_18A4A71A8();
      result = sub_18A4A88E8();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v19 = v43;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v19 = v43;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_1890C8504(v19, *(v11 + 48) + v25 * v20, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      result = sub_1890C8504(v44, *(v11 + 56) + v28 * v20, type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration);
      ++*(v11 + 16);
      v9 = v39;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1890C2778(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C220);
  v35 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v36 = *(*(v5 + 56) + v21);
      if ((v35 & 1) == 0)
      {

        v25 = v36;
        v26 = *(&v36 + 1);
      }

      sub_18A4A8888();
      sub_18A4A7348();
      result = sub_18A4A88E8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v36;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1890C2A3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B70);
  v38 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
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
      v22 = (*(v5 + 56) + 32 * v20);
      v23 = v22[1];
      v39 = *v22;
      v40 = v21;
      v25 = v22[2];
      v24 = v22[3];
      if ((v38 & 1) == 0)
      {
        v26 = v23;
        v27 = v25;
        v28 = v24;
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v40);
      result = sub_18A4A88E8();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v40;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v39;
      v16[1] = v23;
      v16[2] = v25;
      v16[3] = v24;
      ++*(v7 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1890C2D18(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v31 = a2;
  result = sub_18A4A8468();
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
      v21 = *(*(v6 + 48) + v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v21);
      result = sub_18A4A88E8();
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

uint64_t sub_1890C2FB4(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = sub_18A4A29D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v40 = a2;
  result = sub_18A4A8468();
  v13 = result;
  if (*(v11 + 16))
  {
    v44 = v10;
    v45 = v7;
    v36 = v3;
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
    v37 = (v8 + 16);
    v38 = v8;
    v41 = (v8 + 32);
    v20 = result + 64;
    v39 = v11;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v43 = *(v8 + 72);
      v27 = v26 + v43 * v25;
      if (v40)
      {
        (*v41)(v44, v27, v45);
        v42 = *(*(v11 + 56) + 16 * v25);
      }

      else
      {
        (*v37)(v44, v27, v45);
        v42 = *(*(v11 + 56) + 16 * v25);
      }

      sub_1890C8578(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
      result = sub_18A4A7198();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v8 = v38;
        v11 = v39;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v8 = v38;
      v11 = v39;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v41)(*(v13 + 48) + v43 * v21, v44, v45);
      *(*(v13 + 56) + 16 * v21) = v42;
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v11 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v5 = v13;
  return result;
}

uint64_t sub_1890C338C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938DA8);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        v21 = v30;
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v20);
      result = sub_18A4A88E8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1890C3628(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_18A4A5448();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1D0);
  v39 = a2;
  result = sub_18A4A8468();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1890C8578(&unk_1EA938B20, MEMORY[0x1E697F7A0]);
      result = sub_18A4A7198();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1890C3A04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938DA0);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v21 = *(v5 + 48);
      v22 = (*(v5 + 56) + 32 * v20);
      v23 = *(v21 + 16 * v20 + 8);
      v33 = *(v21 + 16 * v20);
      if (a2)
      {
        sub_188A55538(v22, v34);
      }

      else
      {
        sub_188A55598(v22, v34);
        sub_188E90558(v33, v23);
      }

      sub_18A4A8888();
      if (v23 < 0)
      {
        MEMORY[0x18CFE37E0](1);
        MEMORY[0x18CFE37E0](v33);
        sub_18A4A7E18();
        sub_18A4A71A8();
      }

      else
      {
        MEMORY[0x18CFE37E0](0);
        MEMORY[0x18CFE37E0](v33);
      }

      result = sub_18A4A88E8();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v16 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v16 = v33;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      result = sub_188A55538(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_39;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1890C3D9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890C3E0C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_18917EF5C(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1890C4394((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
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
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
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
      result = sub_188E4B688(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_188E4B688((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
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

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_1890C4394((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_1890C4394(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
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

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_1890C4598(uint64_t a1, void *a2, char *a3, double a4, double a5, double a6, double a7)
{
  v433 = sub_18A4A3BC8();
  v372 = *(v433 - 8);
  MEMORY[0x1EEE9AC00](v433);
  v432 = &v362 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v431 = &v362 - v16;
  v438 = sub_18A4A3BF8();
  v364 = *(v438 - 8);
  MEMORY[0x1EEE9AC00](v438);
  v437 = &v362 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v376 = sub_18A4A3678();
  v375 = *(v376 - 8);
  MEMORY[0x1EEE9AC00](v376);
  v363 = &v362 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v373 = &v362 - v20;
  v379 = sub_18A4A3688();
  v378 = *(v379 - 8);
  MEMORY[0x1EEE9AC00](v379);
  v377 = &v362 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = sub_18A4A2A88();
  v371 = *(v380 - 8);
  MEMORY[0x1EEE9AC00](v380);
  v386 = &v362 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C108);
  MEMORY[0x1EEE9AC00](v370);
  v383 = &v362 - v23;
  v384 = sub_18A4A2AD8();
  v385 = *(v384 - 8);
  MEMORY[0x1EEE9AC00](v384);
  v368 = &v362 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v366 = &v362 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v369 = &v362 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v381 = &v362 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v367 = &v362 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v365 = &v362 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v382 = &v362 - v36;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0);
  MEMORY[0x1EEE9AC00](v396);
  v395 = &v362 - v37;
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C120);
  MEMORY[0x1EEE9AC00](v406);
  v394 = &v362 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C110);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v405 = &v362 - v40;
  v439 = sub_18A4A4258();
  v476 = *(v439 - 8);
  MEMORY[0x1EEE9AC00](v439);
  v404 = &v362 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v436 = sub_18A4A3D18();
  v471 = *(v436 - 8);
  MEMORY[0x1EEE9AC00](v436);
  v403 = &v362 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v411 = &v362 - v44;
  v393 = sub_18A4A3E48();
  v397 = *(v393 - 8);
  MEMORY[0x1EEE9AC00](v393);
  v392 = &v362 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v391 = &v362 - v47;
  v469 = sub_18A4A3BA8();
  v478 = *(v469 - 8);
  MEMORY[0x1EEE9AC00](v469);
  v425 = &v362 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v468 = &v362 - v50;
  v445 = sub_18A4A3888();
  v466 = *(v445 - 1);
  MEMORY[0x1EEE9AC00](v445);
  v473 = &v362 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v417 = &v362 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v426 = &v362 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v430 = &v362 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v435 = &v362 - v59;
  MEMORY[0x1EEE9AC00](v60);
  *&v444 = &v362 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v448 = &v362 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v458 = &v362 - v65;
  v483 = sub_18A4A3CC8();
  v481 = *(v483 - 8);
  MEMORY[0x1EEE9AC00](v483);
  v451 = &v362 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v416 = &v362 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v415 = &v362 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v462 = &v362 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v450 = &v362 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v374 = &v362 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v413 = &v362 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v472 = &v362 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v424 = &v362 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v485 = &v362 - v84;
  v484 = sub_18A4A2B48();
  v464 = *(v484 - 8);
  MEMORY[0x1EEE9AC00](v484);
  v470 = &v362 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v86);
  v429 = &v362 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v443 = &v362 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v480 = &v362 - v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C130);
  MEMORY[0x1EEE9AC00](v92 - 8);
  v410 = &v362 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94);
  v428 = &v362 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v446 = &v362 - v97;
  v465 = sub_18A4A4168();
  v461 = *(v465 - 1);
  MEMORY[0x1EEE9AC00](v465);
  v455 = &v362 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v99);
  v460 = (&v362 - v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340C0);
  MEMORY[0x1EEE9AC00](v101 - 8);
  v482 = (&v362 - v102);
  v479 = sub_18A4A3E68();
  v477 = *(v479 - 1);
  MEMORY[0x1EEE9AC00](v479);
  v459 = (&v362 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v104);
  v467 = &v362 - v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C140);
  MEMORY[0x1EEE9AC00](v106 - 8);
  v409 = &v362 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v108);
  v452 = &v362 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v362 - v111;
  v113 = sub_18A4A4088();
  v114 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v116 = (&v362 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = MEMORY[0x1EEE9AC00](v117);
  v120 = (&v362 - v119);
  v456 = a3;
  v487 = a3;
  v457 = [a2 _collectionViewData];
  if (!v457)
  {
    goto LABEL_130;
  }

  v454 = [a2 collectionViewLayout];
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&v490, v491);
  sub_18A4A3E88();
  v463 = sub_1890B8D28(v120);
  v475 = a2;
  v121 = *(v114 + 1);
  v447 = v120;
  v121(v120, v113);
  __swift_destroy_boxed_opaque_existential_0Tm(&v490);
  v122 = v476[7];
  v414 = v112;
  v408 = v476 + 7;
  v407 = v122;
  v122(v112, 1, 1, v439);
  v474 = a1;
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&v490, v491);
  sub_18A4A3E88();
  v123 = v482;
  sub_18A4A3E98();
  v400 = v121;
  v121(v116, v113);
  v124 = v477;
  v125 = v479;
  v126 = (*(v477 + 6))(v123, 1, v479);
  v402 = v113;
  v401 = v114 + 8;
  if (v126 == 1)
  {
    sub_188A3F5FC(v123, &unk_1EA9340C0);
    __swift_destroy_boxed_opaque_existential_0Tm(&v490);
  }

  else
  {
    v127 = v467;
    (*(v124 + 4))(v467, v123, v125);
    __swift_destroy_boxed_opaque_existential_0Tm(&v490);
    v128 = UICollectionView._appIntentsDataSourcePayloadProvider.getter(&v493);
    if (AssociatedTypeWitness)
    {
      sub_188A5EBAC(&v493, &v490);

      v130 = v460;
      sub_1890E6534(v129, v460);
      __swift_project_boxed_opaque_existential_0(&v490, v491);
      v131 = sub_18A4A4268();
      __swift_project_boxed_opaque_existential_0(&v490, v491);
      v132 = sub_18A4A4278();
      v453 = v131;
      if (v132)
      {
        (*(v124 + 2))(v459, v127, v125);
        sub_188A53994(&v490, &v493);
        v133 = v461;
        (v461->data)(v455, v130, v465);

        v134 = v452;
        sub_18A4A4228();
        (v133->info)(v130, v465);
        (*(v124 + 1))(v127, v125);
        v407(v134, 0, 1, v439);
        sub_1890C3D9C(v134, v414);
      }

      else
      {
        (v461->info)(v130, v465);
        (*(v124 + 1))(v127, v125);
      }

      v135 = v458;
      v136 = v480;
      __swift_destroy_boxed_opaque_existential_0Tm(&v490);
      goto LABEL_11;
    }

    (*(v124 + 1))(v127, v125, v128);
    sub_188A3F5FC(&v493, &unk_1EA93C160);
  }

  v453 = 0;
  v135 = v458;
  v136 = v480;
LABEL_11:
  v137 = __swift_project_boxed_opaque_existential_0(v463 + 5, v463[8]);
  v138 = MEMORY[0x1EEE9AC00](v137);
  (*(v140 + 16))(&v362 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0), v138);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&v493);
  sub_18A4A7458();
  v477 = 0;
  v461 = (v464 + 48);
  v452 = (v464 + 32);
  v460 = (v481 + 56);
  v465 = (v464 + 16);
  v479 = (v481 + 48);
  v141 = (v481 + 32);
  v423 = *MEMORY[0x1E69DBBC0];
  v467 = (v478 + 13);
  v422 = v478 + 1;
  v478 = (v481 + 8);
  v442 = (v466 + 2);
  v441 = *MEMORY[0x1E69DBBA8];
  v440 = (v466 + 1);
  v455 = v456 + 16;
  v427 = (v464 + 56);
  v421 = *MEMORY[0x1E69DBC38];
  v420 = v471 + 13;
  v390 = v397 + 16;
  v419 = (v471 + 1);
  v389 = v397 + 32;
  v388 = v397 + 56;
  v387 = v397 + 8;
  v412 = (v476 + 6);
  v399 = (v476 + 4);
  v398 = "14AA6B49FCAFC5A54255A118E1D87).";
  v471 = (v464 + 8);
  v466 = (v481 + 16);
  v476 = MEMORY[0x1E69E7CC8];
  v418 = xmmword_18A64BFB0;
  v142 = v483;
  v143 = v484;
  v482 = (v481 + 32);
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v493, AssociatedTypeWitness);
    v144 = v446;
    sub_18A4A7D78();
    isa = v461->isa;
    if ((v461->isa)(v144, 1, v143) == 1)
    {
      break;
    }

    v459 = isa;
    v449 = *v452;
    (v449)(v136, v144, v143);
    (*v460)(v135, 1, 1, v142);
    v146 = sub_18A4A2B08();
    v147 = v475;
    v148 = [v475 _cellForItemAtIndexPath_];

    if (v148)
    {
      MEMORY[0x1EEE9AC00](v149);
      *(&v362 - 10) = v147;
      *(&v362 - 9) = v148;
      *(&v362 - 8) = a4;
      *(&v362 - 7) = a5;
      *(&v362 - 6) = a6;
      *(&v362 - 5) = a7;
      *(&v362 - 4) = v474;
      *(&v362 - 3) = sub_188DE7D34;
      *(&v362 - 2) = &v486;
      v150 = v448;
      sub_18A4A33C8();

      v142 = v483;
      sub_188A3F5FC(v135, &unk_1EA934040);
      sub_188A3F704(v150, v135, &unk_1EA934040);
    }

    sub_18907FBC8(v136, v463[3]);
    v151 = sub_18A4A2B08();
    [v147 _globalIndexPathForItemAtIndexPath_];

    v464 = *v465;
    (v464)(v443, v136, v484);
    sub_18A4A3878();
    v152 = v444;
    sub_188A3F29C(v135, v444, &unk_1EA934040);
    v153 = *v479;
    if ((*v479)(v152, 1, v142) == 1)
    {
      sub_188A3F5FC(v152, &unk_1EA934040);
    }

    else
    {
      v154 = v424;
      v434 = *v141;
      v434(v424, v152, v142);
      v155 = v468;
      sub_18A4A3C08();
      v156 = *v467;
      v157 = v425;
      v158 = v469;
      (*v467)(v425, v423, v469);
      v159 = MEMORY[0x18CFDEAE0](v155, v157);
      v114 = v422;
      v160 = *v422;
      (*v422)(v157, v158);
      v160(v155, v158);
      if (v159)
      {
        v161 = v473;
        v162 = v445;
        (*v442)(v155, v473, v445);
        v156(v155, v441, v158);
        sub_18A4A3C18();
        (*v440)(v161, v162);
        sub_188A3F5FC(v458, &unk_1EA934040);
        v142 = v483;
        v434(v485, v154, v483);
        v136 = v480;
        v143 = v484;
        goto LABEL_24;
      }

      v142 = v483;
      (*v478)(v154, v483);
      v135 = v458;
      v136 = v480;
    }

    v163 = sub_18A4A2B08();
    v164 = [(UICollectionViewData *)v457 rectForItemAtIndexPath:v163];
    v166 = v165;
    v168 = v167;
    v170 = v169;

    (*(v456 + 2))(v456, v475, v164, v166, v168, v170);
    v171 = v435;
    sub_188A3F29C(v135, v435, &unk_1EA934040);
    v172 = v153(v171, 1, v142);
    v143 = v484;
    if (v172 == 1)
    {
      sub_188A3F5FC(v171, &unk_1EA934040);
    }

    else
    {
      v173 = v171;
      v174 = v481;
      v175 = *(v481 + 32);
      v176 = v413;
      v175(v413, v173, v483);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150);
      v177 = (*(v174 + 80) + 32) & ~*(v174 + 80);
      v178 = swift_allocObject();
      *(v178 + 16) = v418;
      v175((v178 + v177), v176, v483);
      v142 = v483;
    }

    v179 = v468;
    v180 = v473;
    v114 = v445;
    (*v442)(v468, v473, v445);
    (*v467)(v179, v441, v469);
    sub_18A4A3748();
    (*v440)(v180, v114);
    sub_188A3F5FC(v135, &unk_1EA934040);
LABEL_24:
    v181 = v447;
    if (!v453)
    {
      goto LABEL_41;
    }

    sub_1890E6F70(&v490);
    if (v490)
    {
      v182 = v428;
      (v464)(v428, v136, v143);
      (*v427)(v182, 0, 1, v143);
      v183 = v439;
    }

    else
    {
      v184 = v492;
      v185 = sub_18A4A2B08();
      v186 = [v184 dataSourceIndexPathForPresentationIndexPath_];

      if (v186)
      {
        v114 = v410;
        sub_18A4A2B18();

        v187 = v114;
        v188 = 0;
        v183 = v439;
      }

      else
      {
        v188 = 1;
        v183 = v439;
        v187 = v410;
      }

      (*v427)(v187, v188, 1, v143);
      v189 = v187;
      v182 = v428;
      sub_188A3F704(v189, v428, &unk_1EA93C130);
    }

    sub_1890C3D10(&v490);
    if ((v459)(v182, 1, v143) == 1)
    {
      v190 = v182;
      v191 = &unk_1EA93C130;
LABEL_39:
      sub_188A3F5FC(v190, v191);
      goto LABEL_41;
    }

    v192 = v182;
    v193 = v429;
    (v449)(v429, v192, v143);
    v194 = v411;
    (v464)(v411, v193, v143);
    v195 = *v420;
    (*v420)(v194, v421, v436);
    v196 = v453;
    if (*(v453 + 16) && (v197 = sub_188E8BD28(v194), v183 = v439, (v198 & 1) != 0))
    {
      v199 = v397;
      v200 = *(v196 + 56) + *(v397 + 72) * v197;
      v201 = *(v397 + 16);
      v202 = v392;
      v203 = v393;
      v201(v392, v200, v393);
      v459 = *v419;
      (v459)(v194, v436);
      v204 = v391;
      (*(v199 + 32))(v391, v202, v203);
      v205 = v395;
      v201(v395, v204, v203);
      (*(v199 + 56))(v205, 0, 1, v203);
      v181 = v447;
      sub_18A4A3848();
      sub_18A4A3978();
      v183 = v439;
      (*(v199 + 8))(v204, v203);
    }

    else
    {
      v459 = *v419;
      (v459)(v194, v436);
    }

    v206 = v414;
    v207 = v409;
    v114 = &unk_1EA93C140;
    sub_188A3F29C(v414, v409, &unk_1EA93C140);
    if ((*v412)(v207, 1, v183) == 1)
    {
      v143 = v484;
      (*v471)(v429, v484);
      v190 = v207;
      v191 = &unk_1EA93C140;
      goto LABEL_39;
    }

    v449 = *v399;
    v114 = v404;
    (v449)(v404, v207, v183);
    sub_18A4A3448();
    __swift_project_boxed_opaque_existential_0(v489, v489[3]);
    sub_18A4A3E88();
    v208 = sub_18A4A6E88();
    v209 = v405;
    (*(*(v208 - 8) + 56))(v405, 1, 1, v208);
    v210 = sub_18A4A3958();
    sub_18A4A3838();
    sub_188A3F5FC(v209, &unk_1EA93C110);
    v400(v181, v402);
    v210(v488, 0);
    __swift_destroy_boxed_opaque_existential_0Tm(v489);
    v211 = v403;
    v212 = v429;
    v213 = v195;
    v143 = v484;
    (v464)(v403, v429, v484);
    v214 = v436;
    v213(v211, v421, v436);
    sub_18A4A4248();
    (v459)(v211, v214);
    __swift_destroy_boxed_opaque_existential_0Tm(&v490);
    (*v471)(v212, v143);
    sub_188A3F5FC(v206, &unk_1EA93C140);
    (v449)(v206, v114, v183);
    v407(v206, 0, 1, v183);
LABEL_41:
    if (sub_18A4A2B28() < 1)
    {
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
      _Block_release(v456);
      sub_18A4A87A8();
      __break(1u);

      __break(1u);
      return result;
    }

    v215 = sub_18A4A2B58();
    (*v466)(v472, v485, v142);
    sub_188A55B8C(v477);
    v216 = v476;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v490 = v216;
    v219 = sub_188C4585C(v215);
    v220 = v216[2];
    v221 = (v218 & 1) == 0;
    v222 = v220 + v221;
    if (__OFADD__(v220, v221))
    {
      goto LABEL_126;
    }

    v223 = v218;
    if (v216[3] >= v222)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v218)
        {
          goto LABEL_51;
        }
      }

      else
      {
        sub_188FA6DF4();
        v216 = v490;
        if (v223)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      sub_1890C10CC(v222, isUniquelyReferenced_nonNull_native);
      v216 = v490;
      v224 = sub_188C4585C(v215);
      if ((v223 & 1) != (v225 & 1))
      {
        goto LABEL_131;
      }

      v219 = v224;
      if (v223)
      {
        goto LABEL_51;
      }
    }

    v216[(v219 >> 6) + 8] |= 1 << v219;
    *(v216[6] + 8 * v219) = v215;
    *(v216[7] + 8 * v219) = MEMORY[0x1E69E7CC0];
    v226 = v216[2];
    v227 = __OFADD__(v226, 1);
    v228 = v226 + 1;
    if (v227)
    {
      goto LABEL_127;
    }

    v216[2] = v228;
LABEL_51:
    v229 = v216[7];
    v230 = *(v229 + 8 * v219);
    v231 = swift_isUniquelyReferenced_nonNull_native();
    *(v229 + 8 * v219) = v230;
    if ((v231 & 1) == 0)
    {
      v230 = sub_188DFA260(0, v230[2] + 1, 1, v230);
      *(v229 + 8 * v219) = v230;
    }

    v141 = v482;
    v135 = v458;
    v476 = v216;
    v233 = v230[2];
    v232 = v230[3];
    if (v233 >= v232 >> 1)
    {
      *(v229 + 8 * v219) = sub_188DFA260(v232 > 1, v233 + 1, 1, v230);
    }

    v234 = v481;
    (*(v481 + 8))(v485, v142);
    v235 = v480;
    (*v471)(v480, v143);
    v236 = *(v229 + 8 * v219);
    *(v236 + 16) = v233 + 1;
    v237 = v236 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v233;
    v136 = v235;
    (*(v234 + 32))(v237, v472, v142);
    v477 = sub_188F49350;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v493);
  v238 = (*v412)(v414, 1, v439);
  v239 = v475;
  if (!v238)
  {
    sub_18A4A4238();
  }

  v240 = v476;
  v114 = v476[2];
  if (v114)
  {
    v241 = v477;
    v242 = sub_1890BA4EC(v476[2], 0);
    v485 = sub_1890BA164(&v490, v242 + 4, v114, v240);

    sub_188E036A4();
    if (v485 != v114)
    {
      goto LABEL_129;
    }

    v239 = v475;
    v243 = v241;
  }

  else
  {
    v242 = MEMORY[0x1E69E7CC0];
    v243 = v477;
  }

  *&v490 = v242;
  sub_1890B9A14(&v490);
  v244 = *(v490 + 16);
  v477 = v243;
  if (!v244)
  {

    v304 = [(UICollectionViewData *)v457 numberOfSections];
    v485 = 0;
    v246 = 1;
    v114 = MEMORY[0x1E69E7CC0];
    goto LABEL_104;
  }

  v485 = 0;
  v461 = @"UICollectionElementKindSectionHeader";
  v459 = @"UICollectionElementKindSectionFooter";
  LODWORD(v458) = *MEMORY[0x1E69DBC18];
  v453 = v372 + 104;
  LODWORD(v452) = *MEMORY[0x1E69DBC10];
  v449 = (v372 + 32);
  v447 = (v364 + 16);
  LODWORD(v446) = *MEMORY[0x1E69DBBF8];
  v445 = (v364 + 8);
  v443 = v490;
  v245 = (v490 + 40);
  v114 = MEMORY[0x1E69E7CC0];
  v246 = 1;
  v444 = xmmword_18A64BFA0;
  v247 = 1;
  while (2)
  {
    v472 = v244;
    v480 = v114;
    v248 = *(v245 - 1);
    v465 = v245;

    v249 = [v454 _layoutTypeForSection_];
    v250 = v249;
    v251 = v246 | ~v247;
    v252 = v485;
    v253 = v485 == v249;
    if (v485 == v249)
    {
      v254 = v485;
    }

    else
    {
      v254 = 0;
    }

    if (v246)
    {
      v254 = v249;
    }

    if (v247)
    {
      v252 = v254;
    }

    v485 = v252;
    if (v247)
    {
      v246 = (v246 | v253) ^ 1;
    }

    LODWORD(v473) = v246;
    if ((v251 & 1) == 0)
    {
      v247 = v253;
    }

    LODWORD(v464) = v247;
    v255 = v248;
    [(UICollectionViewData *)v457 numberOfItemsInSection:v248];
    if (v250 == 2)
    {
      v256 = v452;
    }

    else
    {
      v256 = v458;
    }

    v257 = v432;
    v258 = v142;
    v259 = v433;
    (*v453)(v432, v256, v433);
    (*v449)(v431, v257, v259);
    v260 = *v460;
    (*v460)(v448, 1, 1, v258);
    v260(v430, 1, 1, v258);
    v261 = v437;
    sub_18A4A3BB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937BF0);
    v262 = swift_allocObject();
    *(v262 + 16) = v444;
    *(v262 + 32) = v248;
    *(v262 + 40) = 0;
    MEMORY[0x18CFDDA80]();
    v263 = v461;
    v264 = sub_18A4A2B08();
    v265 = [v239 _visibleSupplementaryViewOfKind_atIndexPath_];

    if (v265)
    {
      MEMORY[0x1EEE9AC00](v266);
      *(&v362 - 10) = v239;
      *(&v362 - 9) = v265;
      *(&v362 - 8) = a4;
      *(&v362 - 7) = a5;
      *(&v362 - 6) = a6;
      *(&v362 - 5) = a7;
      *(&v362 - 4) = v474;
      *(&v362 - 3) = sub_188DE7D34;
      *(&v362 - 2) = &v486;
      sub_18A4A33C8();
      sub_18A4A3BE8();
    }

    v267 = v459;
    v268 = sub_18A4A2B08();
    v269 = [v239 _visibleSupplementaryViewOfKind_atIndexPath_];

    v271 = v484;
    if (v269)
    {
      MEMORY[0x1EEE9AC00](v270);
      *(&v362 - 10) = v239;
      *(&v362 - 9) = v269;
      *(&v362 - 8) = a4;
      *(&v362 - 7) = a5;
      *(&v362 - 6) = a6;
      *(&v362 - 5) = a7;
      *(&v362 - 4) = v474;
      *(&v362 - 3) = sub_188DE7D34;
      *(&v362 - 2) = &v486;
      sub_18A4A33C8();
      sub_18A4A3BD8();
    }

    [v454 _layoutFrameForSection_];
    x = v496.origin.x;
    y = v496.origin.y;
    width = v496.size.width;
    height = v496.size.height;
    if (CGRectIsNull(v496))
    {
      [v239 contentSize];
      width = v276;
      height = v277;
      x = 0.0;
      y = 0.0;
    }

    v278 = v438;
    v279 = v467;
    (*(v456 + 2))(v456, v239, x, y, width, height);
    v280 = v468;
    (*v447)(v468, v261, v278);
    (*v279)(v280, v446, v469);
    sub_18A4A3748();
    v281 = [v239 _orthogonalScrollViewForSectionIndex_];
    if (v281)
    {
      v282 = v281;
      MEMORY[0x1EEE9AC00](v281);
      *(&v362 - 10) = v239;
      *(&v362 - 9) = v283;
      *(&v362 - 8) = a4;
      *(&v362 - 7) = a5;
      *(&v362 - 6) = a6;
      *(&v362 - 5) = a7;
      *(&v362 - 4) = v474;
      *(&v362 - 3) = sub_188DE7D34;
      *(&v362 - 2) = &v486;
      v284 = v426;
      sub_18A4A33C8();
      v285 = v417;
      sub_188A3F29C(v284, v417, &unk_1EA934040);
      v142 = v483;
      if ((*v479)(v285, 1, v483) == 1)
      {

        sub_188A3F5FC(v284, &unk_1EA934040);
        (*v471)(v470, v271);
        (*v445)(v261, v278);
        sub_188A3F5FC(v285, &unk_1EA934040);
        goto LABEL_90;
      }

      v287 = *v482;
      (*v482)(v415, v285, v142);
      (*v466)(v416, v462, v142);
      v288 = sub_18A4A3778();
      v290 = v289;
      v291 = *v289;
      v292 = swift_isUniquelyReferenced_nonNull_native();
      *v290 = v291;
      if ((v292 & 1) == 0)
      {
        v291 = sub_188DFA260(0, v291[2] + 1, 1, v291);
        *v290 = v291;
      }

      v293 = v426;
      v295 = v291[2];
      v294 = v291[3];
      if (v295 >= v294 >> 1)
      {
        v291 = sub_188DFA260(v294 > 1, v295 + 1, 1, v291);
        *v290 = v291;
      }

      v291[2] = v295 + 1;
      v296 = v481;
      v297 = v291 + ((*(v296 + 80) + 32) & ~*(v296 + 80)) + *(v481 + 72) * v295;
      v142 = v483;
      v286 = v482;
      v287(v297, v416, v483);
      v288(&v490, 0);

      sub_188A3F5FC(v293, &unk_1EA934040);
      v298 = v462;
      (*(v296 + 8))(v462, v142);
      (*v471)(v470, v484);
      (*v445)(v437, v438);
      v287(v298, v415, v142);
      v239 = v475;
    }

    else
    {
      (*v471)(v470, v271);
      (*v445)(v261, v278);
      v142 = v483;
LABEL_90:
      v286 = v482;
    }

    v299 = *v286;
    v300 = v450;
    (*v286)(v450, v462, v142);
    (*v466)(v451, v300, v142);
    v114 = v480;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = sub_188DFA260(0, *(v114 + 2) + 1, 1, v114);
    }

    v302 = *(v114 + 2);
    v301 = *(v114 + 3);
    if (v302 >= v301 >> 1)
    {
      v114 = sub_188DFA260(v301 > 1, v302 + 1, 1, v114);
    }

    v303 = v481;
    (*(v481 + 8))(v450, v142);
    *(v114 + 2) = v302 + 1;
    v299(&v114[((*(v303 + 80) + 32) & ~*(v303 + 80)) + *(v303 + 72) * v302], v451, v142);
    v245 = v465 + 2;
    v244 = v472 - 1;
    v246 = v473;
    v247 = v464;
    if (v472 != 1)
    {
      continue;
    }

    break;
  }

  v304 = [(UICollectionViewData *)v457 numberOfSections];
  if ((v247 & 1) == 0)
  {
    v305 = v239;

    v306 = v373;
    v307 = v469;
    v308 = v468;
    goto LABEL_116;
  }

LABEL_104:
  if (v304 < 0)
  {
    goto LABEL_128;
  }

  LODWORD(v473) = v246;
  v480 = v114;
  v309 = v365;
  v482 = v304;
  sub_18A4A2A98();
  v310 = v367;
  sub_1890B4CAC(v476);
  v311 = v385;
  v312 = *(v385 + 16);
  v313 = v384;
  v312(v381, v309, v384);
  v312(v366, v309, v313);
  v312(v368, v310, v313);
  v314 = MEMORY[0x1E6969B50];
  sub_1890C8578(&qword_1EA92F728, MEMORY[0x1E6969B50]);
  v315 = v369;
  sub_18A4A7E48();
  sub_18A4A7E38();
  v316 = *(v311 + 8);
  v316(v315, v313);
  v316(v310, v313);
  v317 = v309;
  v318 = v316;
  v385 = v311 + 8;
  v316(v317, v313);
  sub_18A4A2AA8();
  sub_1890C8578(&qword_1EA92F730, v314);
  v319 = v386;
  sub_18A4A7878();
  sub_1890C8578(&qword_1EA92F738, MEMORY[0x1E6969B18]);
  v320 = v380;
  LOBYTE(v312) = sub_18A4A7248();
  v321 = *(v371 + 8);
  v322 = v320;
  v323 = (v371 + 8);
  v321(v319, v322);
  if (v312)
  {
    v324 = v485;
    v325 = v473;
    v306 = v373;
    goto LABEL_119;
  }

  v479 = v318;
  v484 = v323 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v326 = v323;
  v327 = sub_18A4A78C8();
  v329 = *v328;
  v327(&v490, 0);
  sub_18A4A7888();
  v330 = [v454 _layoutTypeForSection_];
  v324 = v330;
  if (v473)
  {
    v331 = v386;
    sub_18A4A7878();
    sub_1890C8578(&qword_1EA92F738, MEMORY[0x1E6969B18]);
    v332 = v326;
    v333 = v380;
    v334 = sub_18A4A7248();
    v321 = *v332;
    (*v332)(v331, v333);
    if (v334)
    {
      v325 = 0;
LABEL_118:
      v306 = v373;
      v318 = v479;
LABEL_119:
      sub_188A3F5FC(v383, &qword_1EA93C108);
      v318(v382, v384);
      [(UICollectionViewData *)v457 numberOfItems];
      v305 = v475;
      v307 = v469;
      v308 = v468;
      if (v325)
      {
        goto LABEL_120;
      }

      v346 = MEMORY[0x1E69DBC10];
      if (v324 != 2)
      {
        v346 = MEMORY[0x1E69DBC18];
      }

      v347 = v363;
      (*(v372 + 104))(v363, *v346, v433);
      v348 = v375;
      v349 = v376;
      (*(v375 + 104))(v347, *MEMORY[0x1E69DBA98], v376);
      (*(v348 + 32))(v306, v347, v349);
      goto LABEL_124;
    }

    v336 = sub_18A4A78C8();
    v485 = *v337;
    v336(&v490, 0);
    v335 = v380;
    sub_18A4A7888();
    v330 = [v454 _layoutTypeForSection_];
    v485 = v324;
  }

  else
  {
    v335 = v380;
  }

  v338 = v384;
  v339 = v383;
  if (v485 == v330)
  {
    while (1)
    {
      v340 = v386;
      sub_18A4A7878();
      v341 = sub_18A4A7248();
      v321(v340, v335);
      if (v341)
      {
        break;
      }

      v342 = sub_18A4A78C8();
      v344 = *v343;
      v342(&v490, 0);
      sub_18A4A7888();
      v345 = [v454 _layoutTypeForSection_];
      if (v485 != v345)
      {
        goto LABEL_115;
      }
    }

    v325 = 0;
    v324 = v485;
    goto LABEL_118;
  }

LABEL_115:
  sub_188A3F5FC(v339, &qword_1EA93C108);
  (v479)(v382, v338);
  v305 = v475;
  v306 = v373;
  v307 = v469;
  v308 = v468;
LABEL_116:
  [(UICollectionViewData *)v457 numberOfItems];
LABEL_120:
  (*(v375 + 104))(v306, *MEMORY[0x1E69DBA90], v376);
LABEL_124:
  v350 = v377;
  v351 = sub_18A4A3668();
  MEMORY[0x1EEE9AC00](v351);
  *(&v362 - 8) = v305;
  *(&v362 - 7) = a4;
  *(&v362 - 6) = a5;
  *(&v362 - 5) = a6;
  *(&v362 - 4) = a7;
  *(&v362 - 3) = v474;
  *(&v362 - 2) = sub_188DE7D34;
  *(&v362 - 1) = &v486;
  sub_18A4A33D8();
  [v305 contentSize];
  (*(v456 + 2))(v456, v305, 0.0, 0.0, v352, v353);
  v354 = v378;
  v355 = v379;
  (*(v378 + 16))(v308, v350, v379);
  (*v467)(v308, *MEMORY[0x1E69DBB90], v307);
  v356 = v374;
  sub_18A4A3748();
  sub_18A4A3988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150);
  v357 = v481;
  v358 = (*(v481 + 80) + 32) & ~*(v481 + 80);
  v359 = swift_allocObject();
  *(v359 + 16) = v418;
  v360 = v483;
  (*(v357 + 16))(v359 + v358, v356, v483);
  sub_18A4A3438();

  (*(v357 + 8))(v356, v360);
  (*(v354 + 8))(v350, v355);
  sub_188A3F5FC(v414, &unk_1EA93C140);
  return sub_188A55B8C(v477);
}

uint64_t sub_1890C849C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1890C8504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1890C8578(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1890C85D4(uint64_t a1, uint64_t a2)
{
  sub_188A34624(0, &qword_1ED48FC30);
  v3 = sub_18A4A7518();
  v4 = (*(a2 + 16))(a2, v3);

  return v4;
}

void sub_1890C8668()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_18A4A7258();
    v3 = [v1 BOOLForKey_];

    byte_1EA994DD0 = v3;
  }

  else
  {
    __break(1u);
  }
}

_UINavigationBarVisualProviderModernIOSSwiftClassProvider __swiftcall _UINavigationBarVisualProviderModernIOSSwiftClassProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1890C87FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationBar];

    [v2 setNeedsLayout];
  }
}

void sub_1890C8878()
{
  v1 = [v0 stack];
  v2 = [v1 topEntry];

  v3 = 0.0;
  if (!v2)
  {
    return;
  }

  v4 = [v2 isSearchActive];
  v5 = [(_UINavigationBarItemStackEntry *)v2 _typedStorage];
  v6 = v4 ? sub_18901F25C() : sub_18901F250();
  v7 = v6;

  if (!v7)
  {
    return;
  }

  swift_beginAccess();
  v8 = *(v7 + 400);
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_21:

    return;
  }

  v9 = sub_18A4A7F68();
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_8:
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
        v14 = sub_188E4A488(v10, v8);
      }

      else
      {
        v14 = *(v8 + 8 * v10 + 32);
      }

      v15 = 0.0;
      if ((v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] & 1) == 0)
      {
        v15 = *&v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];
      }

      ++v10;
      v11 = *&v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight];
      v12 = v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_prefersExpanded];

      if (v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = v15;
      }

      v3 = v3 + v13;
    }

    while (v9 != v10);
  }
}

uint64_t sub_1890C8B30(id a1)
{
  v2 = a1;
  if (a1)
  {
    v3 = [a1 _stackEntry];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 isSearchActive];

      if (!v5)
      {
LABEL_14:
        v10 = v2;
        goto LABEL_15;
      }

      v2 = v2;
      v6 = [v1 navigationBar];
      v7 = [v6 _effectiveDelegate];

      if (v7)
      {
        if ([v7 respondsToSelector_])
        {
          v8 = [v7 _effectiveSearchControllerForSearchBarGivenTopNavigationItem_];
          swift_unknownObjectRelease();

          if (!v8)
          {
            goto LABEL_13;
          }

          goto LABEL_11;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v8 = [v2 _searchControllerIfAllowed];

        if (v8)
        {
LABEL_11:
          LOBYTE(v5) = [v8 hidesNavigationBarDuringPresentation];

          goto LABEL_14;
        }
      }
    }

LABEL_13:
    LOBYTE(v5) = 0;
    goto LABEL_14;
  }

  v9 = [v1 stack];
  v10 = [v9 topItem];

  if (!v10)
  {
LABEL_18:
    v12 = 0;
    return v12 & 1;
  }

  LOBYTE(v5) = 0;
LABEL_15:
  v11 = v2;
  if (!sub_188B2941C() || (v5 & 1) != 0)
  {

    goto LABEL_18;
  }

  v14 = [v1 stack];
  v15 = [v14 effectiveDisplayModeForItemInCurrentStack_];

  v12 = sub_188B3B828(v15);
  if (v15 == 3)
  {
    v16 = sub_188B9BE44(v10);

    v12 &= v16 != 1;
  }

  else
  {
  }

  return v12 & 1;
}

void sub_1890C8E1C(char *a1, double a2, uint64_t a3, void *a4)
{
  if (*&a1[*a4] != a2)
  {
    *&a1[*a4] = a2;
    v6 = a1;
    v5 = [v6 navigationBar];
    [v5 setNeedsLayout];
  }
}

void sub_1890C8EF0(int a1)
{
  v3 = [v1 navigationBar];
  v4 = [v3 _canDrawContent];

  v5 = (v4 ^ 1) & a1;
  if (v5 != v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__forceScrollEdgeAppearance])
  {
    v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__forceScrollEdgeAppearance] = v5;
    v6 = [v1 stack];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1890DAE14;
    *(v8 + 24) = v7;
    v11[4] = sub_18907CF94;
    v11[5] = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_188C0AC7C;
    v11[3] = &block_descriptor_370;
    v9 = _Block_copy(v11);
    v10 = v1;

    [v6 iterateEntries_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }

    else
    {
      sub_188B2CDC8();
    }
  }
}

void sub_1890C90BC(void *a1)
{
  v2 = [(_UINavigationBarItemStackEntry *)a1 _typedStorage];
  v3 = sub_18901F250();

  if (v3)
  {
    v4 = [a1 item];
    v5 = sub_188B376FC(v4) & 1;

    if (v5 != *(v3 + 240))
    {
      *(v3 + 240) = v5;
      sub_188B386EC();
    }
  }
}

void sub_1890C91D0()
{
  v1 = *(*&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView] + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton);
  if (v1)
  {
    v2 = v1;
    v3 = [v0 stack];
    v4 = [v3 backItem];

    v5 = [v4 _effectiveBackBarButtonItem];
    if (v5)
    {
      v6 = v5;
      if (_UINavigationBarBackButtonShowsContextMenu())
      {
        v7 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22[4] = sub_1890DAEFC;
        v22[5] = v7;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 1107296256;
        v22[2] = sub_188EBD490;
        v22[3] = &block_descriptor_360;
        v8 = _Block_copy(v22);
        v9 = objc_opt_self();

        v10 = [v9 elementWithProvider_];
        _Block_release(v8);

        v11 = [objc_allocWithZone(UIMenuDisplayPreferences) init];
        [v11 setMaximumNumberOfTitleLines_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_18A64B710;
        *(v12 + 32) = v10;
        v13 = objc_allocWithZone(UIMenu);
        v14 = v10;
        v15 = sub_18A4A7258();
        sub_188A34624(0, &qword_1ED48FC30);
        v16 = sub_18A4A7518();

        v17 = [v13 initWithTitle:v15 image:0 imageName:0 identifier:0 options:0 children:v16];

        v18 = v17;
        [v18 setSubtitle_];
        [v18 setPreferredElementSize_];

        [v18 setDisplayPreferences_];
      }

      else
      {
        v18 = 0;
      }

      [v6 setMenu_];
    }

    v19 = [v2 visualProvider];
    v20 = [v19 canUpdateMenuInPlace];

    if (v20)
    {
      v21 = [v2 visualProvider];
      [v21 updateMenu];
    }
  }
}

id sub_1890C958C(id result)
{
  if (result)
  {
    v2 = result;
    v3 = [v1 navigationBar];
    v4 = [v3 _effectiveDelegate];

    if (v4)
    {
      if ([v4 respondsToSelector_])
      {
        v5 = [v4 _effectiveSearchControllerForSearchBarGivenTopNavigationItem_];
        swift_unknownObjectRelease();

        return v5;
      }

      else
      {

        swift_unknownObjectRelease();
        return 0;
      }
    }

    else
    {
      v6 = [v2 _searchControllerIfAllowed];

      return v6;
    }
  }

  return result;
}

void sub_1890C969C()
{
  v1 = v0;
  v119 = *MEMORY[0x1E69E9840];
  v2 = sub_18A4A28E8();
  v110 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C760);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v103 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v103 - v13);
  v15 = [v1 stack];
  v16 = [v15 topEntry];

  if (!v16)
  {
    return;
  }

  v111 = [v16 item];

  if (!v111)
  {
    return;
  }

  v17 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamerSession;
  v18 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamerSession];
  if (v18)
  {
    v19 = &selRef_constrainToReference_;
    v20 = [v18 context];
    if (v20)
    {
      v21 = v20;
      swift_unknownObjectRelease();
      if (v21 == v111)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C770);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_18A64BFB0;
        *(v55 + 56) = sub_188A34624(0, &unk_1ED48CFF8);
        *(v55 + 64) = sub_1890DADAC();
        v56 = v111;
        *(v55 + 32) = v111;
        v57 = v56;
        sub_18A4A29E8();

        return;
      }
    }

    if (*&v1[v17])
    {
      aBlock = 0;
      v113 = 0xE000000000000000;
      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD000000000000030, 0x800000018A6A6310);
      v14 = &selRef_defaultInputMode;
      v92 = [v111 description];
      v93 = sub_18A4A7288();
      v94 = v17;
      v96 = v95;

      MEMORY[0x18CFE22D0](v93, v96);

      MEMORY[0x18CFE22D0](0xD000000000000035, 0x800000018A6A6350);
      v68 = *&v1[v94];
      if (v68)
      {
LABEL_63:
        v118 = [v68 v19[364]];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C768);
        v97 = sub_18A4A72F8();
        MEMORY[0x18CFE22D0](v97);

        MEMORY[0x18CFE22D0](0xD000000000000015, 0x800000018A6A6390);
        v98 = [v1 navigationBar];
        v99 = [v98 v14[377]];
        v100 = sub_18A4A7288();
        v102 = v101;

        MEMORY[0x18CFE22D0](v100, v102);

        MEMORY[0x18CFE22D0](11817, 0xE200000000000000);
        sub_18A4A8398();
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_60;
    }
  }

  v22 = [v111 _renameHandler];
  if (v22)
  {
    v19 = v22;
    v105 = v17;
    v23 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamer;
    v24 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamer];
    if (v24)
    {
      v109 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamer];
    }

    else
    {
      v26 = [objc_allocWithZone(_UINavigationBarTitleRenamer) init];
      [v26 setDelegate_];
      v27 = *&v1[v23];
      v109 = v26;
      *&v1[v23] = v26;
    }

    v107 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
    v28 = *(*&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView] + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_documentProperties);
    v106 = v28;
    if (v28)
    {
      v29 = v24;
      v30 = v28;
      if ([v30 wantsIconRepresentation])
      {
        v31 = [v30 _metadataWrapper];
LABEL_19:
        v33 = v110;
        v34 = [(SEL *)v19 _fileURLForRenaming];
        if (v34)
        {
          v35 = v34;
          sub_18A4A28D8();

          (*(v33 + 56))(v10, 0, 1, v2);
        }

        else
        {
          (*(v33 + 56))(v10, 1, 1, v2);
        }

        sub_188EC213C(v10, v14);
        sub_188A3F29C(v14, v7, &qword_1EA93C760);
        v36 = (*(v33 + 48))(v7, 1, v2);
        v108 = v31;
        if (v36 == 1)
        {
          sub_188A3F5FC(v7, &qword_1EA93C760);
          v37 = [objc_opt_self() _forceOOPRenaming];
          v38 = [v111 title];
          if (!v37)
          {
            v58 = v14;
            if (v38)
            {
              v59 = v38;
              sub_18A4A7288();
            }

            v75 = objc_allocWithZone(_UINavigationBarTitleRenamerSession);
            v14 = v108;
            v73 = sub_18A4A7258();

            v46 = [v75 initWithSuggestedTitle:v73 iconMetadata:v14];
            goto LABEL_48;
          }

          if (v38)
          {
            v39 = v38;
            sub_18A4A7288();
          }

          v58 = v14;
          v68 = [*&v1[v107] _window];
          if (v68)
          {
            v71 = v68;
            v14 = [v68 windowScene];

            if (v14)
            {
              v72 = objc_allocWithZone(_UINavigationBarTitleRenamerRemoteSession);
              v73 = v108;
              v74 = sub_18A4A7258();

              v46 = [v72 initWithSuggestedTitle:v74 iconMetadata:v73 scene:v14];

LABEL_48:
              v49 = 0;
              v50 = v58;
LABEL_49:
              v76 = v46;
              [v76 setContext_];
              [v109 startSession_];
              v77 = *&v1[v105];
              *&v1[v105] = v76;
              v78 = v76;

              v79 = *&v1[v107];
              v80 = *&v79[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession];
              *&v79[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession] = v76;
              v81 = v78;
              v82 = v79;
              if (!v80 || v78 != v80)
              {
                v103 = v19;
                v104 = v50;
                sub_188EBBF0C();
                v83 = *&v82[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renamingContentView];
                if (v83)
                {
                  [v83 setAlpha_];
                }

                v84 = objc_opt_self();
                v85 = swift_allocObject();
                *(v85 + 16) = v82;
                v116 = sub_1890DAE90;
                v117 = v85;
                aBlock = MEMORY[0x1E69E9820];
                v113 = 1107296256;
                v114 = sub_188A4A8F0;
                v115 = &block_descriptor_348;
                v86 = _Block_copy(&aBlock);
                v87 = v82;

                v88 = swift_allocObject();
                *(v88 + 16) = v87;
                v116 = sub_1890DAF04;
                v117 = v88;
                aBlock = MEMORY[0x1E69E9820];
                v113 = 1107296256;
                v114 = sub_188ABD010;
                v115 = &block_descriptor_355;
                v89 = _Block_copy(&aBlock);
                v90 = v87;

                [v84 animateWithDuration:4 delay:v86 options:v89 animations:0.3 completion:0.0];
                _Block_release(v89);
                _Block_release(v86);
                v19 = v103;
                v50 = v104;
              }

              v70 = v50;
              goto LABEL_55;
            }

            goto LABEL_62;
          }

LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v104 = v14;
        (*(v33 + 32))(v4, v7, v2);
        v40 = [*&v1[v107] window];
        v103 = v19;
        if (v40 && (v41 = v40, v42 = [v40 windowScene], v41, v42))
        {
          aBlock = 0;
          v43 = objc_allocWithZone(_UINavigationBarTitleRenamerRemoteSession);
          v44 = v31;
          v45 = sub_18A4A28C8();
          v46 = [v43 initWithFileURL:v45 iconMetadata:v44 error:&aBlock scene:v42];

          v47 = aBlock;
          if (v46)
          {
            v48 = *(v33 + 8);
            v49 = aBlock;
            v48(v4, v2);
            v19 = v103;
            v50 = v104;
            goto LABEL_49;
          }

          v91 = aBlock;
        }

        else
        {
          v47 = 0;
        }

        v19 = objc_opt_self();
        v51 = [(SEL *)v19 mainBundle];
        sub_18A4A25F8();

        if (v47)
        {
          v52 = v47;
          v53 = [v47 localizedDescription];
          sub_18A4A7288();
          v47 = v54;
        }

        else
        {
          v52 = 0;
        }

        v60 = sub_18A4A7258();

        if (v47)
        {
          v61 = sub_18A4A7258();
        }

        else
        {
          v61 = 0;
        }

        v49 = v52;
        v62 = [objc_opt_self() alertControllerWithTitle:v60 message:v61 preferredStyle:1];

        v63 = [(SEL *)v19 mainBundle];
        sub_18A4A25F8();
        v14 = v64;

        v65 = sub_18A4A7258();

        v66 = [objc_opt_self() actionWithTitle:v65 style:0 handler:0];

        [v62 addAction_];
        v67 = [v1 navigationBar];
        v1 = [v67 _viewControllerForAncestor];

        v69 = v108;
        if (v1)
        {
          [v1 presentViewController:v62 animated:1 completion:0];

          (*(v110 + 8))(v4, v2);
          v70 = v104;
LABEL_55:
          sub_188A3F5FC(v70, &qword_1EA93C760);

          return;
        }

LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    else
    {
      v32 = v24;
    }

    v31 = 0;
    goto LABEL_19;
  }

  v25 = v111;
}

void sub_1890CA560()
{
  v1 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamerSession;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamerSession);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamer);
    v14 = *(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamerSession);
    if (v3)
    {
      [v3 endSession_];
      v4 = *(v0 + v1);
    }

    else
    {
      v4 = v2;
    }

    *(v0 + v1) = 0;

    v5 = *(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
    v6 = *&v5[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession];
    *&v5[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession] = 0;
    if (v6)
    {
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      v19 = sub_188EC23B8;
      v20 = v8;
      aBlock = MEMORY[0x1E69E9820];
      v16 = 1107296256;
      v17 = sub_188A4A8F0;
      v18 = &block_descriptor_105;
      v9 = _Block_copy(&aBlock);
      v10 = v5;

      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      v19 = sub_1890DAA18;
      v20 = v11;
      aBlock = MEMORY[0x1E69E9820];
      v16 = 1107296256;
      v17 = sub_188ABD010;
      v18 = &block_descriptor_15_3;
      v12 = _Block_copy(&aBlock);
      v13 = v10;

      [v7 animateWithDuration:4 delay:v9 options:v12 animations:0.3 completion:0.0];
      _Block_release(v12);
      _Block_release(v9);
    }

    else
    {
    }
  }

  else
  {
    sub_18A4A8398();
    __break(1u);
  }
}

void sub_1890CA850()
{
  v1 = [v0 stack];
  v2 = [v1 topEntry];

  if (v2)
  {
    v14 = [v2 item];
  }

  else
  {
    v14 = 0;
  }

  v3 = [v0 stack];
  v4 = [v3 topItem];

  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [v0 navigationBar];
  v7 = [v6 _effectiveDelegate];

  if (v7)
  {
    if ([v7 respondsToSelector_])
    {
      v8 = [v7 _effectiveSearchControllerForSearchBarGivenTopNavigationItem_];
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    swift_unknownObjectRelease();
    v4 = 0;
LABEL_13:
    v9 = v14;
    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v8 = [v5 _searchControllerIfAllowed];
LABEL_9:

  if (v8)
  {
    v4 = [v8 searchBar];

    v9 = v14;
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v4 = 0;
    v9 = v14;
    if (!v14)
    {
      goto LABEL_20;
    }
  }

LABEL_14:
  v10 = v9;
  v11 = [v0 navigationBar];
  v12 = [v11 _effectiveDelegate];

  if (!v12)
  {
    v13 = [v10 _hasIntegratedSearchBarInNavigationBar];

    goto LABEL_21;
  }

  if ([v12 respondsToSelector_])
  {
    v13 = [v12 _shouldDisplaySearchBarInlineForEffectiveSearchControllerGivenTopNavigationItem_traitCollection_];
    swift_unknownObjectRelease();

    goto LABEL_21;
  }

  swift_unknownObjectRelease();
LABEL_20:
  v13 = 0;
LABEL_21:
  [v4 _setHostedInlineByNavigationBar_];
}

void sub_1890CAB48()
{
  v3 = *(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
  v1 = sub_188AEAF10();
  if (v1)
  {

    v2 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration];
    if (v2)
    {
      if (![v2 isHidden])
      {
        v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isDeferringSearchSuggestionsMenuRefreshForGeometryChange] = 1;
      }
    }
  }
}

void sub_1890CAC28(void *a1)
{
  if (a1)
  {
    v11 = a1;
    v2 = [v1 stack];
    v3 = [v2 topEntry];

    if (v3 && (v4 = [v3 item], v3, v4) && (v5 = v1, sub_188A34624(0, &unk_1ED48CFF8), v11 = v11, v6 = sub_18A4A7C88(), v4, v11, (v6 & 1) != 0) && (v7 = v5, v8 = objc_msgSend(v5, sel_navigationBar), v9 = objc_msgSend(v8, sel__privateDelegate), v8, v9))
    {
      if ([v9 respondsToSelector_])
      {
        swift_unknownObjectRetain();
        v10 = [v7 navigationBar];
        [v9 _navigationBarWillChangeHeightForManualShowOrHideOfSearchScopeBar_];

        swift_unknownObjectRelease_n();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_1890CAFA8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = [v3 stack];
  v7 = [v6 topEntry];

  if (!v7 || (v8 = [v7 isSearchActive], v7, (v8 & 1) == 0))
  {
    v9 = [v3 navigationBar];
    [v9 bounds];
    v11 = v10;
    v13 = v12;

    v14 = &v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_previousBarSize];
    *v14 = v11;
    *(v14 + 1) = v13;
    if (a1 && *(a1 + 80))
    {
      v74 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView;
      v15 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
      if (!v15)
      {

        goto LABEL_31;
      }

      v16 = OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_reparentingHelper;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;

        v19 = v15;
      }

      else
      {
        v24 = qword_1ED48D340;

        v25 = v15;
        if (v24 != -1)
        {
          swift_once();
        }

        if (byte_1EA994DD0 != 1)
        {
          v26 = 1;
LABEL_21:
          v27 = [v3 stack];
          v28 = [v27 topItem];

          if (v28)
          {
            v29 = *&v15[v16];
            v30 = sub_188B9BE44(v28) != 2;
            v31 = *(v29 + OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_contributesToPocketContentRect);
            *(v29 + OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_contributesToPocketContentRect) = v30;
            if (v30 != v31)
            {
              v32 = swift_unknownObjectWeakLoadStrong();
              if (v32)
              {
                v33 = v32;
                [v32 setNeedsLayout];
              }
            }
          }

          else
          {
            v28 = v15;
          }

          if (v26)
          {
            v34 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
            v35 = *(v34 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
            if (v35 && *(v35 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView))
            {
              v36 = 0;
              v37 = 0;
            }

            else
            {
              v36 = 0;
              v37 = *(v34 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 8) != 0;
            }

            v38 = 1.0;
LABEL_34:
            v39 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext;
            if (!*&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext])
            {
              v43 = [v3 navigationBar];
              v44 = [v43 _privateDelegate];

              if (v44)
              {
                if ([v44 respondsToSelector_])
                {
                  v45 = [v44 _navigationBarLayoutIsInInteractiveScroll];
                  swift_unknownObjectRelease();
                  if (v45)
                  {
                    v46 = objc_opt_self();
                    v47 = swift_allocObject();
                    *(v47 + 16) = v3;
                    *(v47 + 24) = v37;
                    *(v47 + 32) = v38;
                    *&aBlock[2] = sub_1890DAB74;
                    *(&aBlock[2] + 1) = v47;
                    *&aBlock[0] = MEMORY[0x1E69E9820];
                    *(&aBlock[0] + 1) = 1107296256;
                    *&aBlock[1] = sub_188A4A8F0;
                    *(&aBlock[1] + 1) = &block_descriptor_153_0;
                    v48 = _Block_copy(aBlock);
                    v49 = v3;

                    [v46 animateWithDuration:v48 animations:0.2];
                    _Block_release(v48);
                    goto LABEL_46;
                  }
                }

                else
                {
                  swift_unknownObjectRelease();
                }
              }
            }

            v40 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
            if (v37 == v40[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_hideTitleElementsForLargeTitle])
            {
              v40[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_hideTitleElementsForLargeTitle] = v37 ^ 1;
              v41 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult;
              memcpy(__dst, &v40[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], sizeof(__dst));
              memmove(v81, &v40[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
              if (sub_188BAAB78(v81) == 1)
              {
                memcpy(aBlock, &v40[v41], 0x20AuLL);
                memcpy(&v40[v41], __dst, 0x20AuLL);
                v42 = v40;
                sub_188A3F5FC(aBlock, &unk_1EA9362C0);
                [v42 setNeedsLayout];
              }

              else
              {
                memcpy(v78, &v40[v41], 0x20AuLL);
                memmove(__src, &v40[v41], 0x20AuLL);
                if (sub_188BAAB78(__src) != 1)
                {
                  memcpy(aBlock, __src, 0x20AuLL);
                  v50 = v40;
                  sub_188A3F29C(v78, v77, &unk_1EA9362C0);
                  sub_188B3CBC4(aBlock, 0);

                  sub_188A3F5FC(v78, &unk_1EA9362C0);
                }
              }
            }

            v51 = *&v3[v74];
            if (v51)
            {
              v52 = type metadata accessor for NavigationBarLargeTitleView();
              v76.receiver = v51;
              v76.super_class = v52;
              v53 = v51;
              objc_msgSendSuper2(&v76, sel_setAlpha_, v38);
              v54 = *&v53[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
              v75.receiver = v53;
              v75.super_class = v52;
              objc_msgSendSuper2(&v75, sel_alpha);
              [v54 setAlpha_];
            }

LABEL_46:
            v55 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
            if ((v36 | v37))
            {
              v56 = 0;
            }

            else
            {
              v56 = *(a1 + 168);
            }

            *(*&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView] + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldPassThroughTouches) = v56;
            if (*&v3[v39])
            {
              goto LABEL_71;
            }

            v57 = [v3 stack];
            v58 = [v57 topItem];

            if (v58 && (v59 = [v58 _weeTitle], v58, v59) && (sub_18A4A7288(), v59, v60 = sub_18A4A7358(), , v60))
            {
              v61 = [v3 navigationBar];
              [v61 bounds];
              v63 = v62;

              [*&v3[v55] frame];
              v64 = v63 - CGRectGetMaxY(v84);
              v65 = *&v3[v74];
              if (v65)
              {
                [*(v65 + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView) restingHeightOfTitleView];
                v67 = v66 - v64;
                v68 = 0.0;
              }

              else
              {
                v68 = 0.0;
                v67 = 0.0 - v64;
              }

              if (v67 > 0.0)
              {
                v68 = 10.0;
                if (v67 <= 10.0)
                {
                  v68 = v67;
                }
              }

              v71 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_weeTitleLabel];
              if (!v71)
              {
                goto LABEL_71;
              }

              v72 = (10.0 - v68) / 10.0;
              if (v72 <= 0.0)
              {
                v72 = 0.0;
              }

              if (v72 <= 1.0)
              {
                v73 = v72;
              }

              else
              {
                v73 = 1.0;
              }

              v70 = v71;
              [v70 setAlpha_];
            }

            else
            {
              v69 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_weeTitleLabel];
              if (!v69)
              {
LABEL_71:

                return;
              }

              v70 = v69;
              [v70 setAlpha_];
            }

            goto LABEL_71;
          }

LABEL_31:
          v36 = 1;
          v38 = 0.0;
          v37 = 1;
          goto LABEL_34;
        }
      }

      [v15 frame];
      v26 = CGRectGetHeight(v83) > 0.0;
      goto LABEL_21;
    }

    if ((a2 & 1) != 0 || !*&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext] || *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion] <= 0)
    {
      v20 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
      if (v20[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_hideTitleElementsForLargeTitle] == 1)
      {
        v20[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_hideTitleElementsForLargeTitle] = 0;
        v21 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult;
        memcpy(__dst, &v20[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], sizeof(__dst));
        memmove(v81, &v20[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
        if (sub_188BAAB78(v81) == 1)
        {
          memcpy(aBlock, &v20[v21], 0x20AuLL);
          memcpy(&v20[v21], __dst, 0x20AuLL);
          v22 = v20;
          sub_188A3F5FC(aBlock, &unk_1EA9362C0);
          [v22 setNeedsLayout];
        }

        else
        {
          memcpy(v78, &v20[v21], 0x20AuLL);
          memmove(__src, &v20[v21], 0x20AuLL);
          if (sub_188BAAB78(__src) != 1)
          {
            memcpy(aBlock, __src, 0x20AuLL);
            v23 = v20;
            sub_188A3F29C(v78, v77, &unk_1EA9362C0);
            sub_188B3CBC4(aBlock, 0);

            sub_188A3F5FC(v78, &unk_1EA9362C0);
          }
        }
      }
    }
  }
}

void sub_1890CB8F4(uint64_t a1, void *a2)
{
  if ((a1 - 5) > 1)
  {
    goto LABEL_72;
  }

  v3 = v2;
  v5 = a1 == 5;
  v6 = [v3 stack];
  v7 = [v6 topEntry];

  [v7 setSearchActive_];
  sub_1890D3E4C(a1, 0, 0);
  v8 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext];
  v101 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext;
  *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext] = v9;
  v10 = v9;

  if (v7)
  {
    v11 = [v7 item];
  }

  else
  {
    v11 = 0;
  }

  v12 = &selRef_minimumContainerInsets;
  v102 = v11;
  v103 = v3;
  if (a1 == 5)
  {
    goto LABEL_57;
  }

  v13 = *(v10 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
  v14 = *(v13 + 224);

  v15 = [v3 navigationBar];
  v16 = [v15 _privateDelegate];

  if (!v16)
  {
    goto LABEL_43;
  }

  sub_188B38ED0(*(v13 + 224));
  swift_beginAccess();
  v17 = *(v13 + 344);
  v18 = v17;
  if (!v17)
  {
    v18 = *(v13 + 352);
    v19 = v18;
  }

  swift_beginAccess();
  v20 = *(v13 + 232);
  v21 = v17;

  sub_188B3A13C(v22, v18, v20);

  swift_beginAccess();
  v23 = *(v13 + 400);
  if (v23 >> 62)
  {
    v24 = sub_18A4A7F68();
    v99 = v16;
    if (!v24)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v99 = v16;
    if (!v24)
    {
      goto LABEL_18;
    }
  }

  if (v24 < 1)
  {
    __break(1u);
    goto LABEL_37;
  }

  v25 = 0;
  v26 = 0.0;
  do
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v27 = sub_188E4A488(v25, v23);
    }

    else
    {
      v27 = *(v23 + 8 * v25 + 32);
    }

    ++v25;
    v28 = &v27[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
    *v28 = v26;
    *(v28 + 8) = 0;
    v29 = *&v27[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

    v26 = v26 + v29;
  }

  while (v24 != v25);

  v3 = v103;
  v12 = &selRef_minimumContainerInsets;
  v16 = v99;
LABEL_18:
  *(v13 + 40) = 1;
  sub_188B386EC();

  v17 = &selRef__modalAnimationFinishedEndIgnoringInteractiveEvents_;
  if (([v16 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

LABEL_56:
    v11 = v102;
    goto LABEL_57;
  }

  swift_unknownObjectRetain();
  v24 = [v3 navigationBar];
  v23 = *(v13 + 400);
  if (v23 >> 62)
  {
LABEL_37:
    v30 = sub_18A4A7F68();
    if (v30)
    {
      goto LABEL_21;
    }

LABEL_38:
    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    goto LABEL_39;
  }

  v30 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_38;
  }

LABEL_21:
  v98 = v24;
  if (v30 < 1)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v31 = 0;
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  do
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v38 = sub_188E4A488(v31, v23);
    }

    else
    {
      v38 = *(v23 + 8 * v31 + 32);
    }

    v39 = 0.0;
    if ((v38[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] & 1) == 0)
    {
      v39 = *&v38[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];
    }

    ++v31;
    v35 = *&v38[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight];
    v34 = v34 + v39;
    v36 = v38[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_prefersExpanded];

    if (v36)
    {
      v37 = v35;
    }

    else
    {
      v37 = v39;
    }

    v33 = v33 + v37;
    v32 = v32 + v35;
  }

  while (v30 != v31);

  v3 = v103;
  v12 = &selRef_minimumContainerInsets;
  v24 = v98;
  v16 = v99;
  v17 = &selRef__modalAnimationFinishedEndIgnoringInteractiveEvents_;
LABEL_39:
  [v16 v17[170]];
  v41 = v40;
  swift_unknownObjectRelease();

  UIFloorToScale(v41, 6.0);
  v11 = v102;
  if (v14 != *(v13 + 224) || v42 != *(v13 + 232) || *(v13 + 40) != 1)
  {
    *(v13 + 224) = v14;
    *(v13 + 232) = v42;
    sub_188B38ED0(v14);
    v43 = *(v13 + 344);
    v44 = v43;
    if (!v43)
    {
      v44 = *(v13 + 352);
      v45 = v44;
    }

    v46 = *(v13 + 232);
    v47 = v43;

    sub_188B3A13C(v48, v44, v46);

    v49 = *(v13 + 400);
    if (v49 >> 62)
    {
      v50 = sub_18A4A7F68();
      if (v50)
      {
LABEL_48:
        if (v50 >= 1)
        {

          v51 = 0;
          v52 = 0.0;
          do
          {
            if ((v49 & 0xC000000000000001) != 0)
            {
              v53 = sub_188E4A488(v51, v49);
            }

            else
            {
              v53 = *(v49 + 8 * v51 + 32);
            }

            ++v51;
            v54 = &v53[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
            *v54 = v52;
            *(v54 + 8) = 0;
            v55 = *&v53[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

            v52 = v52 + v55;
          }

          while (v50 != v51);

          v3 = v103;
          v12 = &selRef_minimumContainerInsets;
          goto LABEL_55;
        }

        goto LABEL_71;
      }
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v50)
      {
        goto LABEL_48;
      }
    }

LABEL_55:
    *(v13 + 40) = 1;
    sub_188B386EC();
    swift_unknownObjectRelease();

    goto LABEL_56;
  }

  swift_unknownObjectRelease();
LABEL_43:

LABEL_57:
  *(v10 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_sharesContentViewLayouts) = 1;
  v56 = [v3 v12[411]];
  [v56 _prepareToAnimateTransition];

  v57 = v3;
  sub_188FF6C44(v10, v57);

  v58 = *(v10 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
  if (*(v10 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_compact) == 1)
  {
    v59 = *(v58 + 112);
    v60 = v59;

    sub_188B2CC14(v59, v11, 1);
    v62 = v61;

    v63 = *(v58 + 112);
    *(v58 + 112) = v62;

    v64 = *(v10 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
    v65 = *(v64 + 112);
    v66 = v65;

    sub_188B2CC14(v65, v11, 1);
    v68 = v67;

    v69 = *(v64 + 112);
    *(v64 + 112) = v68;
  }

  else
  {
    v71 = *(v58 + 104);
    v72 = v71;

    sub_188B2CC14(v71, v11, 0);
    v74 = v73;

    sub_188B4CD90(v74);
    v75 = *(*(v10 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout) + 104);
    v76 = v75;

    sub_188B2CC14(v75, v11, 0);
    v78 = v77;

    sub_188B4CD90(v78);
  }

  v79 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v10) + 0x4B0))(v70);
  v80 = swift_allocObject();
  *(v80 + 16) = v57;
  v81 = swift_allocObject();
  *(v81 + 16) = v10;
  *(v81 + 24) = v57;
  if (a2)
  {
    v82 = v57;
    v83 = v10;
    v84 = v82;
    if ([swift_unknownObjectRetain() isAnimated])
    {
      v85 = swift_allocObject();
      *(v85 + 16) = sub_1890DAD24;
      *(v85 + 24) = v80;
      v108 = sub_188A4A9DC;
      v109 = v85;
      aBlock = MEMORY[0x1E69E9820];
      v105 = 1107296256;
      v106 = sub_188C577F0;
      v107 = &block_descriptor_335_0;
      v86 = _Block_copy(&aBlock);

      v87 = swift_allocObject();
      *(v87 + 16) = sub_1890DAD2C;
      *(v87 + 24) = v81;
      v108 = sub_188E5C7F8;
      v109 = v87;
      aBlock = MEMORY[0x1E69E9820];
      v105 = 1107296256;
      v106 = sub_188C577F0;
      v107 = &block_descriptor_341;
      v88 = _Block_copy(&aBlock);

      [a2 animateAlongsideTransition:v86 completion:v88];

      _Block_release(v88);
      _Block_release(v86);
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v89 = v57;
    v90 = v10;
    v91 = v89;
  }

  v92 = [v57 v12[411]];
  [v92 _sendNavigationBarAnimateTransition];

  v93 = *&v103[v101];
  if (v93)
  {
    v94 = *((*v79 & *v93) + 0x4A8);
    v95 = v93;
    v94();
  }

  sub_188B4C1CC();
  v96 = [v57 v12[411]];
  [v96 layoutIfNeeded];

  (*((*v79 & *v10) + 0x498))();

  v97 = *&v103[v101];
  *&v103[v101] = 0;
}

void sub_1890CC420(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1890CB8F4(a4, a3);
  swift_unknownObjectRelease();
}

void sub_1890CC498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext])
  {
    aBlock = 0;
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000034, 0x800000018A6A6160);
    v5 = [v3 navigationBar];
    v6 = [v5 description];
    v7 = sub_18A4A7288();
    v9 = v8;

    MEMORY[0x18CFE22D0](v7, v9);

    MEMORY[0x18CFE22D0](0xD000000000000024, 0x800000018A6A61A0);
    sub_18A4A29E8();

    return;
  }

  v200 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext;
  v13 = objc_opt_self();
  v201 = [v13 areAnimationsEnabled];
  v205 = v13;
  [v13 setAnimationsEnabled_];
  sub_188B2E094();
  v14 = [v4 stack];
  v15 = [v14 transitionAssistant];

  v16 = &selRef_thinKeycapsFontName;
  v199 = v15;
  if (!v15 || (v204 = [v15 transition]) == 0)
  {
    v17 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
    v18 = *&v4[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
    v19 = [v4 stack];
    v20 = [v19 previousTopItem];

    if (!v20 || (v21 = [v20 style], v20, v21 == -1))
    {
      v21 = 0;
    }

    else if ((v21 - 1) <= 1)
    {
      v22 = [v18 traitCollection];
      v23 = [v22 horizontalSizeClass];

      v123 = v23 == 1;
      v16 = &selRef_thinKeycapsFontName;
      if (v123)
      {
        v21 = 0;
      }

LABEL_15:
      if ((v21 - 1) < 2)
      {
LABEL_25:
        v204 = 3;
        goto LABEL_26;
      }

      v24 = *&v4[v17];
      v25 = [v4 stack];
      v26 = [v25 v16[321]];

      if (!v26 || (v27 = [v26 style], v26, v27 == -1))
      {
        v27 = 0;
      }

      else if ((v27 - 1) <= 1)
      {
        v28 = [v24 traitCollection];
        v29 = v16;
        v30 = [v28 horizontalSizeClass];

        v123 = v30 == 1;
        v16 = v29;
        if (v123)
        {
          v27 = 0;
        }

LABEL_24:
        v204 = a3;
        if ((v27 - 1) >= 2)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_15;
  }

LABEL_26:
  v31 = [v4 stack];
  v32 = [v31 v16[321]];

  v33 = [v32 titleView];
  if (v33)
  {
    v34 = v33;
    v35 = _UINavigationBarCastToAugmentedTitleView(v34);
    if (v35)
    {
      v36 = v35;
      v37 = [v35 _wantsTwoPartTransition];

      if (v37)
      {
LABEL_34:
        v45 = *&v4[v200];
        if (v45)
        {
          *(v45 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPart) = 1;
        }

        v204 = 3;
        goto LABEL_38;
      }
    }

    else
    {
    }
  }

  v38 = [v4 stack];
  v39 = [v38 previousTopItem];

  v40 = [v39 titleView];
  if (v40)
  {
    v41 = v40;
    v42 = _UINavigationBarCastToAugmentedTitleView(v41);
    if (!v42)
    {

      goto LABEL_38;
    }

    v43 = v42;
    v44 = [v42 _wantsTwoPartTransition];

    if (v44)
    {
      goto LABEL_34;
    }
  }

LABEL_38:
  v46 = a3 == 1;
  sub_188B2C99C();
  sub_188B4C1CC();
  v47 = swift_allocObject();
  v47[2] = a1;
  v47[3] = a2;
  v47[4] = v4;
  v48 = v4;
  sub_188A52E38(a1);
  sub_1890D3E4C(v204, sub_1890DAC2C, v47);
  v50 = v49;

  v51 = *&v4[v200];
  *&v4[v200] = v50;
  v52 = v50;

  v52[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_isPushOperation] = v46;
  v53 = [v48 navigationBar];
  [v53 _prepareToAnimateTransition];

  v54 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout;
  v55 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout;
  v56 = *&v52[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout];

  v57 = [v48 navigationBar];
  sub_1891678E4(v56, v57);

  v58 = v48;
  v59 = v52;
  sub_188FF6FC0(v59, v58, v59);

  v60 = *&v58[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
  if (v60 && *(v59 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout))
  {
    [*(v60 + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView) adoptLayout_];
  }

  if (sub_188B2941C())
  {
    v61 = [v58 stack];
    v62 = [v58 stack];
    v63 = [v62 previousTopItem];

    v64 = [v61 effectiveDisplayModeForItemInPreviousStack_];
    v65 = (sub_188B3B828(v64) & 1) != 0 && *(*&v52[v54] + 296) > 0.0;
    v67 = [v58 stack];
    v68 = [v58 stack];
    v69 = [v68 topItem];

    v70 = [v67 effectiveDisplayModeForItemInCurrentStack_];
    v66 = (sub_188B3B828(v70) & 1) != 0 && *(*&v52[v55] + 296) > 0.0;
  }

  else
  {
    v66 = 0;
    v65 = 0;
  }

  v196 = v65;
  *(v59 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithLargeTitle) = v65;
  v195 = v66;
  *(v59 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithLargeTitle) = v66;
  v71 = *&v52[v54];
  v72 = *&v52[v55];
  v73 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__backgroundAlpha;
  v74 = *&v58[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__backgroundAlpha];
  v75 = *(v71 + 16);
  *(v71 + 16) = v74;
  v203 = v71;

  if (v74 != v75)
  {
    sub_188B386EC();
    v74 = *&v58[v73];
  }

  v76 = *(v72 + 16);
  *(v72 + 16) = v74;
  if (v74 != v76)
  {
    sub_188B386EC();
  }

  v194 = v73;
  if (*(v59 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_compact) == 1)
  {
    v77 = *(v203 + 112);
    v78 = v77;
    v79 = [v58 stack];
    v80 = [v79 previousTopItem];

    sub_188B2CC14(v77, v80, 1);
    v82 = v81;

    v83 = *(v72 + 112);
    v84 = v83;
    v85 = v82;
    v86 = [v58 &selRef_spellServer_suggestGuessesForWordRange_inString_language_];
    v87 = [v86 topItem];

    sub_188B2CC14(v83, v87, 1);
    v89 = v88;

    v90 = *(v203 + 112);
    v198 = v82;
    *(v203 + 112) = v82;
    v91 = v89;

    v92 = *(v72 + 112);
    v197 = v89;
    *(v72 + 112) = v89;
  }

  else
  {
    v93 = *(v203 + 104);
    v94 = v93;
    v95 = [v58 stack];
    v96 = [v95 previousTopItem];

    sub_188B2CC14(v93, v96, 0);
    v98 = v97;

    v99 = *(v72 + 104);
    v100 = v99;
    v101 = v98;
    v102 = [v58 &selRef_spellServer_suggestGuessesForWordRange_inString_language_];
    v103 = [v102 topItem];

    sub_188B2CC14(v99, v103, 0);
    v105 = v104;

    v106 = v105;
    v198 = v98;
    sub_188B4CD90(v98);
    v197 = v105;
    sub_188B4CD90(v105);
  }

  v107 = *&v58[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion];
  if (v107 == 1)
  {
    *(v59 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithTransparencyAllowed) = 1;
    v108 = &selRef_minimumContainerInsets;
  }

  else
  {
    if (v58[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_useModernAppearanceAPI] == 1)
    {
      if (v198 && (objc_opt_self(), (v109 = swift_dynamicCastObjCClass()) != 0) && (v110 = [v109 backgroundData2]) != 0)
      {
        v111 = v110;
        v112 = [v110 hasBackground];

        v113 = v112 ^ 1;
      }

      else
      {
        v113 = 1;
      }
    }

    else
    {
      v113 = 0;
    }

    *(v59 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithTransparencyAllowed) = v113;
    if (v58[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_useModernAppearanceAPI])
    {
      v108 = &selRef_minimumContainerInsets;
      if (v197 && (objc_opt_self(), (v114 = swift_dynamicCastObjCClass()) != 0) && (v115 = [v114 backgroundData2]) != 0)
      {
        v116 = v115;
        v117 = [v115 hasBackground];

        LOBYTE(v107) = v117 ^ 1;
      }

      else
      {
        LOBYTE(v107) = 1;
      }
    }

    else
    {
      LOBYTE(v107) = 0;
      v108 = &selRef_minimumContainerInsets;
    }
  }

  *(v59 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithTransparencyAllowed) = v107;
  v118 = [v58 v108[411]];
  [v118 _sendNavigationBarAnimateTransition];

  [v205 setAnimationsEnabled_];
  v119 = [v58 &selRef_spellServer_suggestGuessesForWordRange_inString_language_];
  v120 = [v119 previousTopItem];

  if (v120)
  {
    v121 = [v120 _weeTitle];

    if (v121)
    {
      sub_18A4A7288();

      v122 = sub_18A4A7358();
      v108 = &selRef_minimumContainerInsets;

      v123 = v122 > 0 && v204 == 1;
      v124 = v123;
      if (v124 && v196)
      {
        v125 = swift_allocObject();
        *(v125 + 16) = v58;
        v211 = sub_1890DAC78;
        v212 = v125;
        aBlock = MEMORY[0x1E69E9820];
        v208 = 1107296256;
        v126 = &block_descriptor_290_0;
LABEL_92:
        v209 = sub_188A4A8F0;
        v210 = v126;
        v134 = _Block_copy(&aBlock);
        v135 = v58;

        [v205 animateKeyframesWithDuration:0 delay:v134 options:0 animations:0.0 completion:0.0];
        _Block_release(v134);
        goto LABEL_93;
      }
    }
  }

  v127 = [v58 &selRef_spellServer_suggestGuessesForWordRange_inString_language_];
  v128 = [v127 previousTopItem];

  if (v128)
  {
    v129 = [v128 _weeTitle];

    if (v129)
    {
      sub_18A4A7288();

      v130 = sub_18A4A7358();
      v108 = &selRef_minimumContainerInsets;

      v131 = v130 > 0 && v204 == 2;
      v132 = v131;
      if (v132 && v195)
      {
        v133 = swift_allocObject();
        *(v133 + 16) = v58;
        v211 = sub_1890DAC70;
        v212 = v133;
        aBlock = MEMORY[0x1E69E9820];
        v208 = 1107296256;
        v126 = &block_descriptor_284;
        goto LABEL_92;
      }
    }
  }

LABEL_93:
  [v205 setAnimationsEnabled_];
  sub_188B2C88C(0);
  v136 = [v58 v108[411]];
  [v136 bounds];
  v138 = v137;
  v140 = v139;
  v142 = v141;
  v144 = v143;

  sub_188B2D758(v138, v140, v142, v144);

  sub_1890CAFA8(v145, 0);

  sub_188AEDB34();
  v146 = [v58 v108[411]];
  [v146 layoutIfNeeded];

  v147 = *&v58[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView];
  if (v147 && v58[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground] == 1)
  {
    v148 = *&v58[v194];
    v149 = v147;
    [v149 alpha];
    if (v150 != v148)
    {
      [v149 setAlpha_];
    }
  }

  v151 = *&v58[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
  v152 = objc_opt_self();
  v153 = swift_allocObject();
  *(v153 + 16) = v151;
  *(v153 + 24) = 0;
  v154 = swift_allocObject();
  *(v154 + 16) = sub_1890DAE8C;
  *(v154 + 24) = v153;
  v211 = sub_188E3FE50;
  v212 = v154;
  aBlock = MEMORY[0x1E69E9820];
  v208 = 1107296256;
  v209 = sub_188A4A968;
  v210 = &block_descriptor_251;
  v155 = _Block_copy(&aBlock);
  v156 = v151;

  [(UITraitCollection *)v152 _performWithFallbackEnvironment:v156 block:v155];
  _Block_release(v155);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return;
  }

  v159 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v59) + 0x4B0))(v158);
  [v205 setAnimationsEnabled_];
  v160 = swift_allocObject();
  *(v160 + 16) = v58;
  v161 = swift_allocObject();
  *(v161 + 16) = v199;
  *(v161 + 24) = v58;
  v162 = v58;
  if (!v199)
  {
    goto LABEL_105;
  }

  v163 = v199;
  if (![v163 transitionCoordinator])
  {
    goto LABEL_105;
  }

  v206 = v163;
  objc_opt_self();
  v164 = swift_dynamicCastObjCClass();
  if (!v164)
  {
    swift_unknownObjectRelease();
LABEL_105:
    v171 = *&v4[v200];
    if (v171)
    {
      v172 = *((*v159 & *v171) + 0x4A8);
      v173 = v171;
      v172();
    }

    if (v199)
    {
      v174 = [v199 cancelledTransition] ^ 1;
    }

    else
    {
      v174 = 1;
    }

    sub_1890D11F0(v174);
    v175 = [v162 navigationBar];
    [v175 setNeedsLayout];

    goto LABEL_111;
  }

  v165 = v164;
  v166 = v206;
  if ([v206 shouldAnimateAlongside])
  {
    v167 = swift_allocObject();
    *(v167 + 16) = sub_1890DAC38;
    *(v167 + 24) = v160;
    v211 = sub_188F3AC0C;
    v212 = v167;
    aBlock = MEMORY[0x1E69E9820];
    v208 = 1107296256;
    v209 = sub_188C577F0;
    v210 = &block_descriptor_272;
    v168 = _Block_copy(&aBlock);

    v169 = swift_allocObject();
    *(v169 + 16) = sub_1890DAC40;
    *(v169 + 24) = v161;
    v211 = sub_188A4A9DC;
    v212 = v169;
    aBlock = MEMORY[0x1E69E9820];
    v208 = 1107296256;
    v209 = sub_188C577F0;
    v210 = &block_descriptor_278_0;
    v170 = _Block_copy(&aBlock);

    [v165 _animateAlongsideTransitionInView_systemAnimation_systemCompletion_animation_completion_];

    swift_unknownObjectRelease();

    _Block_release(v170);
    _Block_release(v168);
    return;
  }

  v176 = [v165 _mainContext];
  if (!v176)
  {
    goto LABEL_119;
  }

  v177 = v176;
  objc_opt_self();
  v178 = swift_dynamicCastObjCClass();
  if (!v178)
  {

LABEL_119:
    v189 = *&v4[v200];
    if (v189)
    {
      v190 = *((*v159 & *v189) + 0x4A8);
      v191 = v189;
      v190();

      v166 = v206;
    }

    sub_1890D11F0([v166 cancelledTransition] ^ 1);
    v175 = [v162 navigationBar];
    [v175 setNeedsLayout];

    swift_unknownObjectRelease();

LABEL_111:

    return;
  }

  v179 = v178;
  v180 = *&v4[v200];
  if (v180)
  {
    v181 = *((*v159 & *v180) + 0x4A8);
    v182 = v178;
    v183 = v180;
    v181();

    v179 = v182;
  }

  v202 = v177;
  v184 = v179;
  v185 = [v179 _willCompleteHandler];
  if (v185)
  {
    v186 = v185;
    v187 = swift_allocObject();
    *(v187 + 16) = v186;
    v188 = sub_1890DAC54;
  }

  else
  {
    v188 = 0;
    v187 = 0;
  }

  v192 = swift_allocObject();
  v192[2] = v188;
  v192[3] = v187;
  v192[4] = sub_1890DAC40;
  v192[5] = v161;
  v211 = sub_1890DAC48;
  v212 = v192;
  aBlock = MEMORY[0x1E69E9820];
  v208 = 1107296256;
  v209 = sub_189031424;
  v210 = &block_descriptor_263;
  v193 = _Block_copy(&aBlock);
  sub_188A52E38(v188);

  [v184 _setWillCompleteHandler_];

  swift_unknownObjectRelease();

  _Block_release(v193);
  sub_188A55B8C(v188);
}

uint64_t sub_1890CDC44(char a1)
{
  v2 = v1;
  v38 = 0xD00000000000002FLL;
  v39 = 0x800000018A6A60B0;
  v4 = [v1 stack];
  v5 = [v4 topEntry];

  if (!v5 || (v6 = [(_UINavigationBarItemStackEntry *)v5 _typedStorage], v7 = sub_18901F25C(), v5, v6, !v7))
  {
    if (v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_runningPaletteBasedSearchPresentation])
    {
    }

    v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_runningPaletteBasedSearchPresentation] = 1;
    v9 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
    [*&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView] alpha];
    v11 = v10;
    v12 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView;
    if (*&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView])
    {
      v37.receiver = *&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
      v37.super_class = type metadata accessor for NavigationBarLargeTitleView();
      objc_msgSendSuper2(&v37, sel_alpha);
      v14 = v13;
      if (a1)
      {
LABEL_9:
        v15 = objc_opt_self();
        v16 = swift_allocObject();
        *(v16 + 16) = 0x3FD5555555555555;
        *(v16 + 24) = v2;
        v33 = sub_1890DABC0;
        v34 = v16;
        v29 = MEMORY[0x1E69E9820];
        v30 = 1107296256;
        v31 = sub_188A4A8F0;
        v32 = &block_descriptor_204_0;
        v17 = _Block_copy(&v29);
        v18 = v2;

        v19 = swift_allocObject();
        *(v19 + 2) = v18;
        *(v19 + 3) = v11;
        v19[4] = v14;
        v33 = sub_1890DABCC;
        v34 = v19;
        v29 = MEMORY[0x1E69E9820];
        v30 = 1107296256;
        v20 = &block_descriptor_210;
LABEL_14:
        v31 = sub_188ABD010;
        v32 = v20;
        v27 = _Block_copy(&v29);
        v28 = v18;

        [v15 animateKeyframesWithDuration:0 delay:v17 options:v27 animations:0.0 completion:{0.0, v29, v30}];
        _Block_release(v27);
        _Block_release(v17);
      }
    }

    else
    {
      v14 = 1.0;
      if (a1)
      {
        goto LABEL_9;
      }
    }

    [*&v2[v9] setAlpha_];
    v21 = *&v2[v12];
    if (v21)
    {
      v22 = type metadata accessor for NavigationBarLargeTitleView();
      v36.receiver = v21;
      v36.super_class = v22;
      v23 = v21;
      objc_msgSendSuper2(&v36, sel_setAlpha_, 0.0);
      v24 = *&v23[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
      v35.receiver = v23;
      v35.super_class = v22;
      objc_msgSendSuper2(&v35, sel_alpha);
      [v24 setAlpha_];
    }

    v15 = objc_opt_self();
    v25 = swift_allocObject();
    v25[2] = 0.333333333;
    *(v25 + 3) = v2;
    *(v25 + 4) = v11;
    v25[5] = v14;
    v33 = sub_1890DAB9C;
    v34 = v25;
    v29 = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_188A4A8F0;
    v32 = &block_descriptor_192_1;
    v17 = _Block_copy(&v29);
    v18 = v2;

    v26 = swift_allocObject();
    *(v26 + 16) = v18;
    v33 = sub_1890DABAC;
    v34 = v26;
    v29 = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v20 = &block_descriptor_198_2;
    goto LABEL_14;
  }

  result = os_variant_has_internal_diagnostics();
  if (result)
  {
    result = MEMORY[0x18CFE22D0](0xD000000000000067, 0x800000018A6A60F0);
  }

  __break(1u);
  return result;
}

void sub_1890CE0D4(void *a1, double a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v15 = sub_1890DABD8;
  v16 = v5;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_188A4A8F0;
  v14 = &block_descriptor_216_0;
  v6 = _Block_copy(&v11);
  v7 = a1;

  [v4 addKeyframeWithRelativeStartTime:v6 relativeDuration:0.0 animations:a2];
  _Block_release(v6);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v15 = sub_1890DABF8;
  v16 = v8;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_188A4A8F0;
  v14 = &block_descriptor_222;
  v9 = _Block_copy(&v11);
  v10 = v7;

  [v4 addKeyframeWithRelativeStartTime:v9 relativeDuration:a2 animations:a2];
  _Block_release(v9);
}

void sub_1890CE280(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView);
  if (v1)
  {
    v2 = type metadata accessor for NavigationBarLargeTitleView();
    v6.receiver = v1;
    v6.super_class = v2;
    v3 = v1;
    objc_msgSendSuper2(&v6, sel_setAlpha_, 0.0);
    v4 = *&v3[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
    v5.receiver = v3;
    v5.super_class = v2;
    objc_msgSendSuper2(&v5, sel_alpha);
    [v4 setAlpha_];
  }
}

void sub_1890CE320(double a1, double a2, uint64_t a3, uint64_t a4)
{
  [*(a4 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView) setAlpha_];
  v6 = *(a4 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView);
  if (v6)
  {
    v7 = type metadata accessor for NavigationBarLargeTitleView();
    v11.receiver = v6;
    v11.super_class = v7;
    v8 = v6;
    objc_msgSendSuper2(&v11, sel_setAlpha_, a2);
    v9 = *&v8[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
    v10.receiver = v8;
    v10.super_class = v7;
    objc_msgSendSuper2(&v10, sel_alpha);
    [v9 setAlpha_];
  }

  *(a4 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_runningPaletteBasedSearchPresentation) = 0;
}

void sub_1890CE3F8(void *a1, double a2, double a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a3;
  v19 = sub_1890DAC00;
  v20 = v9;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_188A4A8F0;
  v18 = &block_descriptor_228;
  v10 = _Block_copy(&v15);
  v11 = a1;

  [v8 addKeyframeWithRelativeStartTime:v10 relativeDuration:a2 + a2 animations:a2];
  _Block_release(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a4;
  v19 = sub_1890DAC20;
  v20 = v12;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_188A4A8F0;
  v18 = &block_descriptor_234;
  v13 = _Block_copy(&v15);
  v14 = v11;

  [v8 addKeyframeWithRelativeStartTime:v13 relativeDuration:a2 animations:a2];
  _Block_release(v13);
}

void sub_1890CE5C0(uint64_t a1, double a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView);
  if (v2)
  {
    v4 = type metadata accessor for NavigationBarLargeTitleView();
    v8.receiver = v2;
    v8.super_class = v4;
    v5 = v2;
    objc_msgSendSuper2(&v8, sel_setAlpha_, a2);
    v6 = *&v5[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
    v7.receiver = v5;
    v7.super_class = v4;
    objc_msgSendSuper2(&v7, sel_alpha);
    [v6 setAlpha_];
  }
}

id sub_1890CE6DC(id a1, CGFloat a2, CGFloat a3)
{
  if (v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isHidden])
  {
    return 0;
  }

  v7 = [v3 navigationBar];

  if (v7 == a1)
  {
    return 0;
  }

  v8 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
  v10 = v8;
  [v9 frame];
  v28.x = a2;
  v28.y = a3;
  if (!CGRectContainsPoint(v30, v28))
  {
    goto LABEL_19;
  }

  [v10 frame];
  v29.x = a2;
  v29.y = a3;
  if (!CGRectContainsPoint(v31, v29))
  {
    goto LABEL_19;
  }

  v11 = [v3 stack];
  v12 = [v11 topEntry];

  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v3;
  v14 = [v12 isSearchActive];
  v15 = [(_UINavigationBarItemStackEntry *)v12 _typedStorage];
  v16 = v14 ? sub_18901F25C() : sub_18901F250();
  v18 = v16;

  if (!v18)
  {
    goto LABEL_19;
  }

  if ((*(v18 + 168) & 1) == 0 || !*(v18 + 56) || !*(v18 + 80))
  {

LABEL_19:

    goto LABEL_20;
  }

  v19 = [v13 navigationBar];
  [v19 convertPoint:v10 toCoordinateSpace:{a2, a3}];
  v21 = v20;
  v23 = v22;

  v24 = [v10 hitTest:0 withEvent:{v21, v23}];
  if (v24)
  {
    v25 = v24;
    sub_188A34624(0, &qword_1ED48F680);
    v26 = sub_18A4A7C88();

    result = v25;
    if ((v26 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
  }

LABEL_20:
  v27 = a1;
  return a1;
}

uint64_t sub_1890CE9B0()
{
  ObjectType = swift_getObjectType();
  if (v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_useModernAppearanceAPI] == 1)
  {
    v2 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView];
    if (v2)
    {
      v3 = [v2 traitCollection];
      v4 = [v3 userInterfaceStyle];

      if (v4 == 2)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v6 = ObjectType;
    v7 = [v0 navigationBar];
    v8 = [v7 barStyle];

    if (v8)
    {
      return 1;
    }

    if (v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground] != 1)
    {
      return 1;
    }

    v9 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView];
    if (v9 && (v10 = [v9 layout]) != 0 && (v11 = v10, objc_msgSend(v10, sel_topInset), v13 = v12, v11, v13 > 0.0))
    {
      return 1;
    }

    else
    {
      v14.receiver = v0;
      v14.super_class = v6;
      return objc_msgSendSuper2(&v14, sel_statusBarStyle);
    }
  }
}

uint64_t sub_1890CED0C()
{
  v1 = [v0 itemForMeasuring];
  if (v1)
  {

    v2 = sub_18A4A7258();
    __UIKIT_SOFT_ASSERT_FAIL(v2);
  }

  v3 = [v0 stack];
  v4 = [v3 topEntry];

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = [v4 isSearchActive];
  v6 = [(_UINavigationBarItemStackEntry *)v4 _typedStorage];
  if (v5)
  {
    v7 = sub_18901F25C();
  }

  else
  {
    v7 = sub_18901F250();
  }

  v8 = v7;

  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = sub_18916A8C8();

    v12 = *(v11 + 16);
    if (v12)
    {
      sub_18A4A8208();
      v13 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        sub_18A4A81D8();
        sub_18A4A8218();
        sub_18A4A8228();
        sub_18A4A81E8();
        v13 += 8;
        --v12;
      }

      while (v12);

      return v10;
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

id sub_1890CEFCC()
{
  v1 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__isActiveTabBarHost;
  v2 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__tabBarHostedView;
  result = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__tabBarHostedView];
  if (v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__isActiveTabBarHost] == 1)
  {
    if (!result)
    {
      return result;
    }

    v4 = v0;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    result = [result floatingTabBarHost];
    if (!result)
    {
      return result;
    }

    v5 = result;
    result = swift_unknownObjectRelease();
    if (v5 != v0)
    {
      return result;
    }

    if (v0[v1])
    {
      return result;
    }

    result = *&v0[v2];
    if (!result)
    {
      return result;
    }

    v4 = 0;
  }

  return [result setFloatingTabBarHost_];
}

void sub_1890CF104(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
  v3 = &v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext];
  v4 = v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 40];
  if (v4 != (a1 & 1))
  {
    v5 = v1;
    v6 = *(v3 + 1);
    v9 = *v3;
    v10[0] = v6;
    *(v10 + 13) = *(v3 + 29);
    v3[40] = v4;
    v7 = v2;
    sub_188B35AD4(&v9);

    v8 = [v5 navigationBar];
    [v8 setNeedsLayout];
  }
}

void sub_1890CF2BC(void *a1, char a2)
{
  v3 = v2;
  v6 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
  v7 = a1;
  v8 = v6;
  if (a2)
  {
    sub_188EBE1B8(a1);
  }

  else
  {
    sub_188EBDDA0(a1);
  }

  v9 = [v3 navigationBar];
  [v9 _accessibility_navigationBarContentsDidChange];
}

uint64_t sub_1890CF424()
{
  v1 = [v0 stack];
  v2 = [v1 topEntry];

  if (!v2)
  {
    return 1;
  }

  v3 = [v2 isSearchActive];
  v4 = [(_UINavigationBarItemStackEntry *)v2 _typedStorage];
  v5 = v3 ? sub_18901F25C() : sub_18901F250();
  v6 = v5;

  if (!v6)
  {
    return 1;
  }

  v7 = *(v6 + 56);
  v8 = v7;

  if (!v7)
  {
    return 1;
  }

  return 0;
}

void sub_1890CF4FC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__staticNavBarButtonItem];
  if (v2)
  {
    v3 = v2;
    if ([v3 _actsAsFakeBackButton] && _UINavigationBarBackButtonShowsContextMenu())
    {
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20[4] = sub_1890DAB84;
      v20[5] = v4;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 1107296256;
      v20[2] = sub_188EBD490;
      v20[3] = &block_descriptor_176_1;
      v5 = _Block_copy(v20);
      v6 = objc_opt_self();

      v7 = [v6 elementWithProvider_];
      _Block_release(v5);

      v8 = [objc_allocWithZone(UIMenuDisplayPreferences) init];
      [v8 setMaximumNumberOfTitleLines_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_18A64B710;
      *(v9 + 32) = v7;
      v10 = objc_allocWithZone(UIMenu);
      v11 = v7;
      v12 = sub_18A4A7258();
      sub_188A34624(0, &qword_1ED48FC30);
      v13 = sub_18A4A7518();

      v14 = [v10 initWithTitle:v12 image:0 imageName:0 identifier:0 options:0 children:v13];

      v15 = v14;
      [v15 setSubtitle_];
      [v15 setPreferredElementSize_];

      [v15 setDisplayPreferences_];
    }

    else
    {
      v15 = 0;
    }

    [v3 setMenu_];
  }

  v16 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
  sub_188B34264();
  sub_188B34820();
  sub_188EBCAEC();
  sub_188B339FC();
  sub_188B33F24();
  sub_188B337B0();
  v17 = *&v16[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost];
  if (v17)
  {
    v18 = *(v17 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
    if (v18)
    {
      [v18 _contentDidChange];
    }
  }

  sub_188AEAB44();

  v19 = [v1 navigationBar];
  [v19 _accessibility_navigationBarContentsDidChange];
}

void sub_1890CF87C()
{
  v1 = v0;
  v2 = [v0 stack];
  v3 = [v2 topEntry];

  if (v3)
  {
    v4 = [(_UINavigationBarItemStackEntry *)v3 _typedStorage];
    v5 = sub_18901F250();

    if (v5)
    {
      v3 = *(v5 + 72);
      v6 = v3;
    }

    else
    {
      v3 = 0;
    }
  }

  v7 = [v1 stack];
  v8 = [v7 topEntry];

  if (v8)
  {
    v9 = [(_UINavigationBarItemStackEntry *)v8 _typedStorage];
    v10 = sub_18901F250();

    if (v10)
    {
      v11 = *(v10 + 72);
      *(v10 + 72) = 0;
    }
  }

  v12 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
  v13 = [*&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView] superview];
  if (!v13)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v14 = [v1 navigationBar];
  sub_188A34624(0, &qword_1ED48F680);
  v15 = sub_18A4A7C88();

  if (v15)
  {

LABEL_11:
    v16 = v3;
    goto LABEL_16;
  }

  if (v3)
  {
    v17 = v22;
    v18 = v3;
    v19 = sub_18A4A7C88();

    if ((v19 & 1) == 0)
    {
      v20 = sub_18A4A7258();
      __UIKIT_SOFT_ASSERT_FAIL(v20);
    }
  }

  v21 = [v1 navigationBar];
  [v21 addSubview_];

  [v3 removeFromSuperview];
  v16 = v22;
LABEL_16:
}

void sub_1890CFB2C(void *a1)
{
  v2 = v1;
  v4 = [v1 stack];
  v5 = [v4 topEntry];

  if (!v5)
  {
    return;
  }

  v18 = v5;
  sub_188AE4B20(v5, 0);

  v6 = [(_UINavigationBarItemStackEntry *)v18 _typedStorage];
  v7 = sub_18901F250();

  if (v7)
  {
    v8 = *(v7 + 72);
    *(v7 + 72) = a1;
    v9 = a1;
  }

  v10 = [v18 isSearchActive];
  v11 = [(_UINavigationBarItemStackEntry *)v18 _typedStorage];
  if (v10)
  {
    v12 = sub_18901F25C();
  }

  else
  {
    v12 = sub_18901F250();
  }

  v13 = v12;

  v14 = [(_UINavigationBarItemStackEntry *)v18 _typedStorage];
  v15 = sub_18901F250();

  if (!v13)
  {
    if (!v15)
    {
LABEL_13:
      v16 = [v2 navigationBar];
      [v16 addSubview_];

      v17 = *&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
      [a1 addSubview_];

      goto LABEL_15;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!v15)
  {
    goto LABEL_14;
  }

  if (v13 == v15)
  {
    goto LABEL_13;
  }

LABEL_15:
}

id sub_1890CFE14()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground) != 1)
  {
    return 0;
  }

  result = *(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView);
  if (result)
  {
    result = [result layout];
    if (result)
    {
      v2 = result;
      v3 = [result disableTinting];

      return v3;
    }
  }

  return result;
}

void sub_1890CFEC4(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground) == 1 && *(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView))
  {
    v3 = [*(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView) layout];
    [v3 setDisableTinting_];
  }

  sub_188B52FC8();
}

uint64_t sub_1890CFFA4(double a1, double a2)
{
  v5 = [v2 stack];
  v6 = [v5 topItem];

  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v8 = [v2 navigationBar];
  v9 = [v8 _effectiveDelegate];

  if (v9)
  {
    if (([v9 respondsToSelector_] & 1) == 0)
    {

      swift_unknownObjectRelease();
      return 1;
    }

    v10 = [v9 _effectiveSearchControllerForSearchBarGivenTopNavigationItem_];
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = [v7 _searchControllerIfAllowed];
  }

  if (v10)
  {
    v11 = [v10 searchBar];

    if (v11)
    {
      v12 = [v2 navigationBar];
      [v12 convertPoint:v11 toCoordinateSpace:{a1, a2}];
      v14 = v13;
      v16 = v15;

      LOBYTE(v12) = [v11 pointInside:0 withEvent:{v14, v16}];
      if (v12)
      {
        return 0;
      }
    }
  }

  return 1;
}

id sub_1890D01BC(double a1, double a2)
{
  v5 = [v2 navigationBar];
  v6 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
  [v5 convertPoint:*&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView] toCoordinateSpace:{a1, a2}];
  v8 = v7;
  v10 = v9;

  v11 = [v2 stack];
  v12 = [v11 topItem];

  if (v12)
  {
    v13 = [v12 _weeTitle];

    if (v13)
    {
      sub_18A4A7288();

      v14 = sub_18A4A7358();

      if (v14 >= 1)
      {
        v15 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_weeTitleLabel;
        v16 = *&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_weeTitleLabel];
        if (v16)
        {
          if (([v16 isHidden] & 1) == 0)
          {
            v17 = *&v2[v15];
            if (v17)
            {
              v18 = v17;
              v19 = [v2 navigationBar];
              [v19 convertPoint:*&v2[v15] toView:{a1, a2}];
              v21 = v20;
              v23 = v22;

              LODWORD(v19) = [v18 pointInside:0 withEvent:{v21, v23}];
              if (v19)
              {
                v24 = [v2 stack];
                v25 = [v24 topItem];

                if (!v25)
                {
                  goto LABEL_34;
                }

                v26 = [v25 _weeTitle];
LABEL_31:
                v65 = v26;

                if (v65)
                {
                  sub_18A4A7288();

                  v80 = UIEdgeInsetsZero;
                  v25 = sub_18A4A7258();

LABEL_35:
                  v63 = [objc_allocWithZone(UIAccessibilityHUDItem) initWithTitle:v25 image:0 imageInsets:{*&v80.top, *&v80.bottom, *&v80.top, *&v80.bottom}];
LABEL_36:
                  v66 = v63;

                  return v66;
                }

                v25 = 0;
LABEL_34:
                v80 = UIEdgeInsetsZero;
                goto LABEL_35;
              }
            }
          }
        }
      }
    }
  }

  v27 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView;
  v28 = *&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView];
  if (v28)
  {
    if (([v28 isHidden] & 1) == 0)
    {
      v29 = *&v2[v27];
      if (v29)
      {
        v30 = v29;
        v31 = [v2 navigationBar];
        [v31 convertPoint:*&v2[v27] toView:{a1, a2}];
        v33 = v32;
        v35 = v34;

        LODWORD(v31) = [v30 pointInside:0 withEvent:{v33, v35}];
        if (v31)
        {
          v36 = *&v2[v27];
          if (v36)
          {
            v37 = [v36 prompt];
            sub_18A4A7288();

            v25 = sub_18A4A7258();
          }

          else
          {
            v25 = 0;
          }

          v63 = [objc_allocWithZone(UIAccessibilityHUDItem) initWithTitle:v25 image:0 imageInsets:{0.0, 0.0, 0.0, 0.0, v79, v81, v82, v83}];
          goto LABEL_36;
        }
      }
    }
  }

  if ([*&v2[v6] pointInside:0 withEvent:{v8, v10}])
  {
    v38 = *&v2[v6];
    v39 = sub_188EC0404(v8, v10);

    return v39;
  }

  v41 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView;
  v42 = *&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
  if (!v42)
  {
    return 0;
  }

  v43 = v42;
  v44 = [v2 navigationBar];
  [v44 convertPoint:*&v2[v41] toView:{a1, a2}];
  v46 = v45;
  v48 = v47;

  LODWORD(v44) = [v43 pointInside:0 withEvent:{v46, v48}];
  if (!v44)
  {
    return 0;
  }

  v49 = *&v2[v41];
  if (!v49 || (v50 = [*(v49 + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView) accessoryView]) == 0)
  {
LABEL_29:
    v64 = [v2 stack];
    v25 = [v64 topItem];

    if (!v25)
    {
      goto LABEL_34;
    }

    v26 = [v25 title];
    goto LABEL_31;
  }

  v51 = v50;
  v52 = [v2 navigationBar];
  [v52 convertPoint:v51 toCoordinateSpace:{a1, a2}];
  v54 = v53;
  v56 = v55;

  v57 = [v51 _largeContentViewerItemAtPoint_];
  if (!v57)
  {

    goto LABEL_29;
  }

  v58 = v57;
  v59 = [v57 largeContentTitle];
  if (v59)
  {
    v60 = v59;
    sub_18A4A7288();
    v62 = v61;
  }

  else
  {
    v62 = 0;
  }

  v67 = [v58 largeContentImage];
  [v58 largeContentImageInsets];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = [v58 scalesLargeContentImage];
  if (v62)
  {
    v77 = sub_18A4A7258();
  }

  else
  {
    v77 = 0;
  }

  v78 = [objc_allocWithZone(UIAccessibilityHUDItem) initWithTitle:v77 image:v67 imageInsets:v76 scaleImage:{v69, v71, v73, v75}];

  swift_unknownObjectRelease();
  return v78;
}

id sub_1890D08AC(double a1, double a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
  v7 = *&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
  v8 = [v3 navigationBar];
  [v8 convertPoint:*&v3[v6] toCoordinateSpace:{a1, a2}];
  v10 = v9;
  v12 = v11;

  v13 = sub_188EC0880(v10, v12);
  if (!v13)
  {
    v14 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
    if (!v14)
    {
      return 0;
    }

    v13 = [*(v14 + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView) accessoryView];
    if (v13)
    {
      v15 = [v3 navigationBar];
      [v15 convertPoint:v13 toCoordinateSpace:{a1, a2}];
      v17 = v16;
      v19 = v18;

      if ([v13 _largeContentViewerItemAtPoint_])
      {
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          v21 = v20;
          v22 = [v20 isEnabled];

          if (v22)
          {
            return v21;
          }
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return 0;
    }
  }

  return v13;
}

double sub_1890D0AB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000018A695820 == a2 || (sub_18A4A86C8() & 1) != 0)
  {
    v4 = sub_18A4A7258();
    v5 = sub_18A4A7258();
    UIKVCAccessProhibited(v4, v5);

    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = sub_18A4A7258();
    v12.receiver = ObjCClassFromMetadata;
    v12.super_class = &OBJC_METACLASS____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift;
    v9 = objc_msgSendSuper2(&v12, sel_valueForUndefinedKey_, v8);

    if (v9)
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    result = *&v10;
    *a3 = v10;
    a3[1] = v11;
  }

  return result;
}

void sub_1890D0D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0xD000000000000011 && 0x800000018A695820 == a3 || (sub_18A4A86C8() & 1) != 0)
  {
    v4 = sub_18A4A7258();
    v15 = sub_18A4A7258();
    UIKVCAccessProhibited(v4, v15);
  }

  else
  {
    sub_188A3F29C(a1, v17, &qword_1EA934050);
    v5 = v18;
    if (v18)
    {
      v6 = __swift_project_boxed_opaque_existential_0(v17, v18);
      v7 = *(v5 - 8);
      v8 = MEMORY[0x1EEE9AC00](v6);
      v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v10, v8);
      v11 = sub_18A4A86A8();
      (*(v7 + 8))(v10, v5);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
    }

    else
    {
      v11 = 0;
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = sub_18A4A7258();
    v16.receiver = ObjCClassFromMetadata;
    v16.super_class = &OBJC_METACLASS____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift;
    objc_msgSendSuper2(&v16, sel_setValue_forUndefinedKey_, v11, v13);
    swift_unknownObjectRelease();
  }
}

uint64_t (*sub_1890D1070())()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v10, sel__immediatelyFinishRunningTransition);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = sub_188A4AA04;
  if (*&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext])
  {
    v4 = objc_opt_self();
    v5 = [v0 navigationBar];
    [v4 removePropertyAnimatorAnimationsInView_];

    v6 = [v0 navigationBar];
    [v6 _removeAllAnimations_];

    v7 = [v0 navigationBar];
    [v7 _removeAllRetargetableAnimations_];

    sub_1890D11F0(1);
    v8 = swift_allocObject();
    *(v8 + 16) = sub_188A4AA04;
    *(v8 + 24) = v2;
    return sub_188A4A9DC;
  }

  return v3;
}

void sub_1890D11F0(char a1)
{
  v2 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext;
  v3 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext];
  if (v3)
  {
    v4 = v1;
    v6 = *&v3[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_completionHandler];
    v7 = v3;

    v8 = [v1 stack];
    v9 = [v8 transitionAssistant];

    sub_188AEC470();
    sub_188B2C99C();
    if (a1)
    {
      v10 = [v4 stack];
      v11 = [v10 topItem];

      v12 = [v4 stack];
      v13 = [v12 backItem];

      sub_188B2A9B4(v11, v13, 0);
      (*((*MEMORY[0x1E69E7D40] & *v7) + 0x498))();
      v14 = *&v4[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
      sub_188AED2B0(__src);
      memcpy(__dst, &v14[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
      memcpy(&v14[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], __src, 0x20AuLL);
      v15 = v14;
      sub_188A3F5FC(__dst, &unk_1EA9362C0);
      [v15 setNeedsLayout];
    }

    else
    {
      v31 = v9;
      v16 = [v4 stack];
      v17 = [v16 previousTopItem];

      v18 = [v4 stack];
      v19 = [v18 previousBackItem];

      sub_188B2A9B4(v17, v19, 0);
      v20 = *&v4[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
      v21 = objc_opt_self();
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      *(v22 + 24) = 0;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_188B51C14;
      *(v23 + 24) = v22;
      __dst[4] = sub_188E3FE50;
      __dst[5] = v23;
      __dst[0] = MEMORY[0x1E69E9820];
      __dst[1] = 1107296256;
      __dst[2] = sub_188A4A968;
      __dst[3] = &block_descriptor_172_0;
      v24 = _Block_copy(__dst);
      v25 = v20;

      [(UITraitCollection *)v21 _performWithFallbackEnvironment:v25 block:v24];
      _Block_release(v24);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if (v21)
      {
        __break(1u);
        return;
      }

      (*((*MEMORY[0x1E69E7D40] & *v7) + 0x4A0))(v26);
      v9 = v31;
    }

    sub_188B2C88C(1);
    v27 = *&v4[v2];
    *&v4[v2] = 0;

    v28 = [v4 navigationBar];
    [v28 invalidateIntrinsicContentSize];

    v29 = [v4 navigationBar];
    [v29 setNeedsLayout];

    v30 = [v4 navigationBar];
    [v30 _sendNavigationBarResize];

    v6(1, v9);
  }
}

void sub_1890D17F4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__tabBarHostedView;
  v5 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__tabBarHostedView];
  if (v5)
  {
    v6 = a1 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_11;
  }

  sub_188A34624(0, &qword_1EA93C6F8);
  v7 = v5;
  v21 = a1;
  v8 = sub_18A4A7C88();

  if (v8)
  {
    v9 = *&v2[v4];
    if (!v9)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v10 = [v9 floatingTabBarHost];
    if (v10)
    {
      v11 = v10;
      swift_unknownObjectRelease();
      if (v11 == v2)
      {
        goto LABEL_24;
      }
    }
  }

  v5 = *&v2[v4];
LABEL_11:
  v12 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isSuppressingTabBar;
  if (v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isSuppressingTabBar] == 1)
  {
    if (v5)
    {
      v13 = [v5 floatingTabBarHost];
      if (v13)
      {
        v14 = v13;
        swift_unknownObjectRelease();
        if (v14 == v2)
        {
          v15 = *&v2[v4];
          if (v15)
          {
            [v15 setSuppressTabBar_];
          }
        }
      }
    }

    v2[v12] = 0;
    v5 = *&v2[v4];
  }

  if (v5)
  {
    v16 = [v5 floatingTabBarHost];
    if (v16)
    {
      v17 = v16;
      swift_unknownObjectRelease();
      if (v17 == v2)
      {
        v18 = *&v2[v4];
        if (v18)
        {
          [v18 setFloatingTabBarHost_];
        }
      }
    }
  }

  v19 = *&v2[v4];
  *&v2[v4] = a1;
  v21 = a1;

  sub_1890CEFCC();
  v20 = [v2 navigationBar];
  [v20 setNeedsLayout];

LABEL_24:
}