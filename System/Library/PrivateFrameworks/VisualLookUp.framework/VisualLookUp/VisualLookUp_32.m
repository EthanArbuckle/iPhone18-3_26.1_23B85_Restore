uint64_t sub_1D9C0D60C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54510);
  v30 = a2;
  result = sub_1D9C7E53C();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();

      result = sub_1D9C7E93C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9C0D9F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52188);
  v34 = a2;
  result = sub_1D9C7E53C();
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 40 * v20;
      v23 = *(v22 + 8);
      v24 = *(v22 + 24);
      v36 = *(v22 + 16);
      v37 = *v22;
      v35 = *(v22 + 32);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D9C7E8DC();
      sub_1D9A15C94(v21);
      sub_1D9C7DD6C();

      result = sub_1D9C7E93C();
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
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v37;
      *(v16 + 8) = v23;
      *(v16 + 16) = v36;
      *(v16 + 24) = v24;
      *(v16 + 32) = v35;
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

uint64_t sub_1D9C0DCD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520B8);
  v34 = a2;
  result = sub_1D9C7E53C();
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

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();
      result = sub_1D9C7E93C();
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

uint64_t sub_1D9C0DF78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54500);
  result = sub_1D9C7E53C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
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
      v21 = *(*(v5 + 56) + 4 * v19);
      sub_1D9C7E8DC();
      sub_1D9A15C94(v20);
      sub_1D9C7DD6C();

      result = sub_1D9C7E93C();
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
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9C0E214(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v31 = a2;
  result = sub_1D9C7E53C();
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

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();

      result = sub_1D9C7E93C();
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

uint64_t sub_1D9C0E500(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_1D9C7E53C();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(v6 + 48) + 32 * v21;
      v36 = *(v22 + 16);
      v37 = *v22;
      v23 = *(*(v6 + 56) + 8 * v21);
      if ((a2 & 1) == 0)
      {
      }

      sub_1D9C7E8DC();
      v38.size.width = v36.x;
      v38.origin = v37;
      v38.size.height = v36.y;
      MinX = CGRectGetMinX(v38);
      if (MinX == 0.0)
      {
        MinX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinX);
      v39.size.width = v36.x;
      v39.origin = v37;
      v39.size.height = v36.y;
      MaxX = CGRectGetMaxX(v39);
      if (MaxX == 0.0)
      {
        MaxX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxX);
      v40.size.width = v36.x;
      v40.origin = v37;
      v40.size.height = v36.y;
      MinY = CGRectGetMinY(v40);
      if (MinY == 0.0)
      {
        MinY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinY);
      v41.size.width = v36.x;
      v41.origin = v37;
      v41.size.height = v36.y;
      MaxY = CGRectGetMaxY(v41);
      if (MaxY == 0.0)
      {
        MaxY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxY);
      result = sub_1D9C7E93C();
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
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v37;
      v17[1] = v36;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_43;
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
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_41;
    }

    v35 = 1 << *(v6 + 32);
    v4 = v3;
    if (v35 >= 64)
    {
      bzero((v6 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v6 + 16) = 0;
  }

LABEL_41:
  *v4 = v8;
  return result;
}

uint64_t sub_1D9C0E82C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521A8);
  v34 = a2;
  result = sub_1D9C7E53C();
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

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();
      result = sub_1D9C7E93C();
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

uint64_t sub_1D9C0EAD4(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v31 = a2;
  result = sub_1D9C7E53C();
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

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();

      result = sub_1D9C7E93C();
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

uint64_t sub_1D9C0EDDC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52070);
  result = sub_1D9C7E53C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1D9C7E8DC();
      sub_1D9C03CBC(v20);
      sub_1D9C7DD6C();

      result = sub_1D9C7E93C();
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
      *(*(v7 + 48) + v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9C0F078(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52078);
  v32 = a2;
  result = sub_1D9C7E53C();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v33 = *v22;
      if ((v32 & 1) == 0)
      {
      }

      sub_1D9C7E8DC();
      sub_1D9C03CBC(v21);
      sub_1D9C7DD6C();

      result = sub_1D9C7E93C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v33;
      v16[1] = v23;
      ++*(v7 + 16);
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9C0F334(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D9C7E36C() + 1) & ~v5;
    do
    {
      sub_1D9C7E8DC();

      sub_1D9C7DD6C();
      v9 = sub_1D9C7E93C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D9C0F4E4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D9C7E36C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 48) + 32 * v6;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      sub_1D9C7E8DC();
      v32.origin.x = v10;
      v32.origin.y = v11;
      v32.size.width = v12;
      v32.size.height = v13;
      MinX = CGRectGetMinX(v32);
      if (MinX == 0.0)
      {
        MinX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinX);
      v33.origin.x = v10;
      v33.origin.y = v11;
      v33.size.width = v12;
      v33.size.height = v13;
      MaxX = CGRectGetMaxX(v33);
      if (MaxX == 0.0)
      {
        MaxX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxX);
      v34.origin.x = v10;
      v34.origin.y = v11;
      v34.size.width = v12;
      v34.size.height = v13;
      MinY = CGRectGetMinY(v34);
      if (MinY == 0.0)
      {
        MinY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinY);
      v35.origin.x = v10;
      v35.origin.y = v11;
      v35.size.width = v12;
      v35.size.height = v13;
      MaxY = CGRectGetMaxY(v35);
      if (MaxY == 0.0)
      {
        MaxY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxY);
      result = sub_1D9C7E93C();
      v18 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v18 < v8)
      {
        goto LABEL_18;
      }

LABEL_19:
      v19 = *(a2 + 48);
      v20 = (v19 + 32 * v3);
      v21 = (v19 + 32 * v6);
      if (v3 != v6 || v20 >= v21 + 2)
      {
        v22 = v21[1];
        *v20 = *v21;
        v20[1] = v22;
      }

      v23 = *(a2 + 56);
      v24 = *(*(type metadata accessor for VisualUnderstanding.ImageRegion() - 8) + 72);
      v25 = v24 * v3;
      result = v23 + v24 * v3;
      v26 = v24 * v6;
      v27 = v23 + v24 * v6 + v24;
      if (v25 < v26 || result >= v27)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v25 == v26)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if (v18 < v8)
    {
      goto LABEL_5;
    }

LABEL_18:
    if (v3 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_28:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D9C0F764(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D9C7E36C() + 1) & ~v5;
    do
    {
      sub_1D9C7E8DC();

      sub_1D9C7DD6C();
      v9 = sub_1D9C7E93C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 4 * v3);
        v16 = (v14 + 4 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D9C0F914(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D9C7E36C() + 1) & ~v5;
    while (1)
    {
      sub_1D9C7E8DC();

      sub_1D9C7DD6C();
      v9 = sub_1D9C7E93C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for LandmarkSignals(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D9C0FB00(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D9C7E36C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1D9C7E8CC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for StorefrontSignals(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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

unint64_t sub_1D9C0FCAC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D9C7E36C() + 1) & ~v5;
    while (1)
    {
      sub_1D9C7E8DC();
      sub_1D9C7DD6C();

      result = sub_1D9C7E93C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D9C10124(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D9C7E36C() + 1) & ~v5;
    while (1)
    {
      sub_1D9C7E8DC();
      sub_1D9C7DD6C();

      result = sub_1D9C7E93C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_1D9C7B80C() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D9C104A0(int64_t a1, uint64_t a2)
{
  v38 = sub_1D9C7B93C();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1D9C7E36C();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1D9C170DC(&qword_1ECB51860, MEMORY[0x1E69695A8]);
      v22 = sub_1D9C7DBCC();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_1D9C107C0(int64_t a1, uint64_t a2)
{
  v38 = sub_1D9C7B93C();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1D9C7E36C();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1D9C170DC(&qword_1ECB51860, MEMORY[0x1E69695A8]);
      v22 = sub_1D9C7DBCC();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_1D9C10AE0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D9C7E36C() + 1) & ~v5;
    do
    {
      sub_1D9C7E8DC();

      sub_1D9C7DD6C();
      v9 = sub_1D9C7E93C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D9C10C90(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D9C7E36C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1D9C7E8DC();
      sub_1D9C03CBC(v9);
      sub_1D9C7DD6C();

      result = sub_1D9C7E93C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D9C10E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D99ED894(a3, a4);
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
      sub_1D9C0759C(v18, a5 & 1);
      v13 = sub_1D99ED894(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1D9C7E84C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D9C12FFC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_1D9C10FC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D99ED894(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D9C07DAC(v16, a4 & 1);
      v11 = sub_1D99ED894(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D9C7E84C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D9C13494();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1D9C1113C(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_1D99EE1AC(a3, a4, a5, a6);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a2 & 1) != 0)
  {
LABEL_7:
    v22 = *v7;
    if (v20)
    {
LABEL_8:
      v23 = v22[7];
      v24 = type metadata accessor for VisualUnderstanding.ImageRegion();
      return sub_1D9C16F80(a1, v23 + *(*(v24 - 8) + 72) * v16, type metadata accessor for VisualUnderstanding.ImageRegion);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a2 & 1) == 0)
  {
    sub_1D9C13C18();
    goto LABEL_7;
  }

  sub_1D9C08C84(v19, a2 & 1);
  v26 = sub_1D99EE1AC(a3, a4, a5, a6);
  if ((v20 & 1) != (v27 & 1))
  {
LABEL_15:
    result = sub_1D9C7E84C();
    __break(1u);
    return result;
  }

  v16 = v26;
  v22 = *v7;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D9C12AD4(v16, a1, v22, a3, a4, a5, a6);
}

unint64_t sub_1D9C112BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v10 = v9;
  v20 = *v9;
  result = sub_1D99EE1AC(a6, a7, a8, a9);
  v23 = *(v20 + 16);
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = v22;
  v28 = *(v20 + 24);
  if (v28 < v26 || (a5 & 1) == 0)
  {
    if (v28 < v26 || (a5 & 1) != 0)
    {
      sub_1D9C09700(v26, a5 & 1);
      result = sub_1D99EE1AC(a6, a7, a8, a9);
      if ((v27 & 1) != (v30 & 1))
      {
LABEL_16:
        result = sub_1D9C7E84C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v29 = result;
      sub_1D9C13FBC();
      result = v29;
    }
  }

  v31 = *v10;
  if ((v27 & 1) == 0)
  {
    v31[(result >> 6) + 8] |= 1 << result;
    v33 = (v31[6] + 32 * result);
    *v33 = a6;
    v33[1] = a7;
    v33[2] = a8;
    v33[3] = a9;
    v34 = (v31[7] + 32 * result);
    *v34 = a1;
    v34[1] = a2;
    v34[2] = a3;
    v34[3] = a4;
    v35 = v31[2];
    v25 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (!v25)
    {
      v31[2] = v36;
      return result;
    }

    goto LABEL_15;
  }

  v32 = (v31[7] + 32 * result);
  *v32 = a1;
  v32[1] = a2;
  v32[2] = a3;
  v32[3] = a4;
}

uint64_t sub_1D9C11494(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D99F0BB0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for StorefrontSignals(0);
      return sub_1D9C16F80(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for StorefrontSignals);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D9C147F8();
    goto LABEL_7;
  }

  sub_1D9C0A488(v13, a3 & 1);
  v20 = sub_1D99F0BB0(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1D9C7E84C();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D9C12C30(v10, a2, a1, v16);
}

unint64_t sub_1D9C115E8(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1D99EE2D4(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D9C0A7D0(v18, a5 & 1);
      result = sub_1D99EE2D4(a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1D9C7E84C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1D9C14A30();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + result) = a4;
    v25 = v23[7] + 24 * result;
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = a3;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v24 = v23[7] + 24 * result;
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3;
}

uint64_t sub_1D9C1175C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D99EE138(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
      return sub_1D9C16F80(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D9C14BA4();
    goto LABEL_7;
  }

  sub_1D9C0ABDC(v13, a3 & 1);
  v20 = sub_1D99EE138(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1D9C7E84C();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D9C12CD8(v10, a2, a1, v16);
}

uint64_t sub_1D9C118D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_1D99ED894(a2, a3);
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
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1D9C0B494(v18, a4 & 1, a5);
      v13 = sub_1D99ED894(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1D9C7E84C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D9C150A0(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a2;
  v25[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;
}

uint64_t sub_1D9C11A78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D99EE004(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D9C15364();
      goto LABEL_7;
    }

    sub_1D9C0BB14(v13, a3 & 1);
    v24 = sub_1D99EE004(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1D9C7E84C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1D9C7B80C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1D9C12D80(v10, a2, a1, v16);
}

uint64_t sub_1D9C11BE0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D9C7B93C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D99EE518(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D9C15734();
      goto LABEL_7;
    }

    sub_1D9C0C2C0(v17, a3 & 1);
    v22 = sub_1D99EE518(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D9C12E2C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D9C7E84C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1D9C11DE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D99ED894(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D9C0CD20(v16, a4 & 1, &qword_1ECB54520);
      v11 = sub_1D99ED894(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_1D9C7E84C();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_1D9C15B4C(&qword_1ECB54520);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8](v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_1D9C11F98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v7 = v6;
  v32 = a1;
  v11 = sub_1D9C7B93C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_1D99EE518(a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 >= v20 && (a4 & 1) == 0)
    {
      sub_1D9C15CBC(v30);
      goto LABEL_9;
    }

    sub_1D9C0C69C(v20, a4 & 1, v30);
    v23 = sub_1D99EE518(a3);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1D9C7E84C();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v32;
  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 16 * v17);
    *v27 = v32;
    v27[1] = a2;
  }

  else
  {
    (*(v12 + 16))(v14, a3, v11);
    return sub_1D9C12EE4(v17, v14, v25, a2, v26);
  }
}

unint64_t sub_1D9C12180(__int128 *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1D99EE1AC(a3, a4, a5, a6);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a2 & 1) == 0)
  {
    if (v22 < v20 || (a2 & 1) != 0)
    {
      sub_1D9C0CFBC(v20, a2 & 1);
      result = sub_1D99EE1AC(a3, a4, a5, a6);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_1D9C7E84C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_1D9C15F3C();
      result = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(result >> 6) + 8] |= 1 << result;
    v27 = (v25[6] + 32 * result);
    *v27 = a3;
    v27[1] = a4;
    v27[2] = a5;
    v27[3] = a6;
    v28 = (v25[7] + 48 * result);
    v29 = *a1;
    v30 = a1[2];
    v28[1] = a1[1];
    v28[2] = v30;
    *v28 = v29;
    v31 = v25[2];
    v19 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v19)
    {
      v25[2] = v32;
      return result;
    }

    goto LABEL_15;
  }

  v26 = v25[7] + 48 * result;

  return sub_1D9C16F24(a1, v26);
}

unint64_t sub_1D9C12314(int a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D99EE138(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1D9C16514();
    result = v17;
    goto LABEL_8;
  }

  sub_1D9C0DF78(v14, a3 & 1);
  result = sub_1D99EE138(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 4 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 4 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

unint64_t sub_1D9C12438(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D99EE138(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1D9C14DDC();
    result = v17;
    goto LABEL_8;
  }

  sub_1D9C0AF58(v14, a3 & 1);
  result = sub_1D99EE138(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

unint64_t sub_1D9C12570(uint64_t a1, unsigned __int8 a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v10 = *v4;
  result = sub_1D99EE458(a2);
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1D9C0E214(v16, a3 & 1, a4);
      result = sub_1D99EE458(a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1D9C7E84C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D9C16660(a4);
      result = v19;
    }
  }

  v21 = *v6;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a2;
    *(v21[7] + 8 * result) = a1;
    v22 = v21[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v15)
    {
      v21[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

unint64_t sub_1D9C126E0(uint64_t a1, unsigned __int8 a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v10 = *v4;
  result = sub_1D99EE05C(a2);
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1D9C0EAD4(v16, a3 & 1, a4);
      result = sub_1D99EE05C(a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1D9C7E84C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D9C16A84(a4);
      result = v19;
    }
  }

  v21 = *v6;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a2;
    *(v21[7] + 8 * result) = a1;
    v22 = v21[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v15)
    {
      v21[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

unint64_t sub_1D9C12850(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D99EE7D4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1D9C16BD0();
    result = v17;
    goto LABEL_8;
  }

  sub_1D9C0EDDC(v14, a3 & 1);
  result = sub_1D99EE7D4(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

unint64_t sub_1D9C12974(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D99EE7D4(a3);
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
      sub_1D9C0F078(v16, a4 & 1);
      result = sub_1D99EE7D4(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1D9C7E84C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D9C16D1C();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_1D9C12AD4(unint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a3[6] + 32 * a1);
  *v10 = a4;
  v10[1] = a5;
  v10[2] = a6;
  v10[3] = a7;
  v11 = a3[7];
  v12 = type metadata accessor for VisualUnderstanding.ImageRegion();
  result = sub_1D9C17050(a2, v11 + *(*(v12 - 8) + 72) * a1, type metadata accessor for VisualUnderstanding.ImageRegion);
  v14 = a3[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v16;
  }

  return result;
}

uint64_t sub_1D9C12B84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for LandmarkSignals(0);
  result = sub_1D9C17050(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for LandmarkSignals);
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

uint64_t sub_1D9C12C30(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for StorefrontSignals(0);
  result = sub_1D9C17050(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for StorefrontSignals);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1D9C12CD8(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  result = sub_1D9C17050(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1D9C12D80(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_1D9C7B80C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1D9C12E2C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D9C7B93C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1D9C12EE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1D9C7B93C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_1D9C12FA4(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
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

void *sub_1D9C12FFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52020);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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

void *sub_1D9C13174()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52248);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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
        sub_1D99A579C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D9A17E50(v25, (*(v4 + 56) + v22));
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

void *sub_1D9C13318()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52080);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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

void *sub_1D9C13494()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52240);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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

void *sub_1D9C13640()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FC8);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
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

void *sub_1D9C1378C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52118);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
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

void *sub_1D9C138D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB544E8);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1D99AE054(&v35, &v34))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + v16);
      v18 = (*(v2 + 56) + 160 * v16);
      v19 = v18[2];
      v20 = v18[3];
      v21 = v18[5];
      v39 = v18[4];
      v40 = v21;
      v38 = v20;
      v23 = v18[7];
      v22 = v18[8];
      v24 = v18[6];
      *(v43 + 13) = *(v18 + 141);
      v42 = v23;
      v43[0] = v22;
      v41 = v24;
      v25 = v18[1];
      v35 = *v18;
      v36 = v25;
      v37 = v19;
      *(*(v4 + 48) + v16) = v17;
      v26 = (*(v4 + 56) + 160 * v16);
      v27 = v36;
      *v26 = v35;
      v26[1] = v27;
      v28 = v37;
      v29 = v38;
      v30 = v40;
      v26[4] = v39;
      v26[5] = v30;
      v26[2] = v28;
      v26[3] = v29;
      v31 = v41;
      v32 = v42;
      v33 = v43[0];
      *(v26 + 141) = *(v43 + 13);
      v26[7] = v32;
      v26[8] = v33;
      v26[6] = v31;
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

void *sub_1D9C13ABC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52110);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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

void *sub_1D9C13C18()
{
  v1 = v0;
  v2 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52168);
  v5 = *v0;
  v6 = sub_1D9C7E52C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 32 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 32 * v20);
        v24 = *(v29 + 72) * v20;
        v25 = *v23;
        v30 = v23[1];
        v31 = v25;
        sub_1D9C16FE8(v22 + v24, v4, type metadata accessor for VisualUnderstanding.ImageRegion);
        v26 = (*(v7 + 48) + v21);
        v27 = v30;
        *v26 = v31;
        v26[1] = v27;
        result = sub_1D9C17050(v4, *(v7 + 56) + v24, type metadata accessor for VisualUnderstanding.ImageRegion);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v28;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1D9C13E54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52148);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

void *sub_1D9C13FBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520B0);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = (*(v2 + 56) + v17);
        v20 = (*(v4 + 48) + v17);
        v21 = v18[1];
        v22 = *v19;
        v24 = v19[1];
        *v20 = *v18;
        v20[1] = v21;
        v23 = (*(v4 + 56) + v17);
        *v23 = v22;
        v23[1] = v24;
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

void *sub_1D9C1419C(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v40 = a4;
  v6 = v4;
  v7 = a1(0);
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v38 = &v37 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v4;
  v10 = sub_1D9C7E52C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v37 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v41 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = v9;
        v30 = *v28;
        v31 = v28[1];
        v32 = v38;
        v33 = *(v39 + 72) * v25;
        v34 = v40;
        sub_1D9C16FE8(v27 + v33, v38, v40);
        v35 = v41;
        v36 = (*(v41 + 48) + v26);
        *v36 = v30;
        v36[1] = v31;
        v9 = v29;
        sub_1D9C17050(v32, *(v35 + 56) + v33, v34);

        v20 = v42;
      }

      while (v42);
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

        v6 = v37;
        v11 = v41;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v42 = (v24 - 1) & v24;
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

char *sub_1D9C14404()
{
  v1 = v0;
  v35 = sub_1D9C7B98C();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520A8);
  v3 = *v0;
  v4 = sub_1D9C7E52C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
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
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

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

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
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

void *sub_1D9C14690()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520D8);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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

void *sub_1D9C147F8()
{
  v1 = v0;
  v2 = type metadata accessor for StorefrontSignals(0);
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520E8);
  v4 = *v0;
  v5 = sub_1D9C7E52C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
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
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_1D9C16FE8(*(v4 + 56) + v23, v26, type metadata accessor for StorefrontSignals);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        result = sub_1D9C17050(v22, *(v24 + 56) + v23, type metadata accessor for StorefrontSignals);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_1D9C14A30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521C0);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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
        v18 = *(v2 + 56) + 24 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v20;
        *(v21 + 8) = v19;
        *(v21 + 16) = v18;
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

void *sub_1D9C14BA4()
{
  v1 = v0;
  v2 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52178);
  v4 = *v0;
  v5 = sub_1D9C7E52C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
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
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_1D9C16FE8(*(v4 + 56) + v23, v26, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
        v24 = v28;
        *(*(v28 + 48) + v20) = v21;
        result = sub_1D9C17050(v22, *(v24 + 56) + v23, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_1D9C14DDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52100);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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

void *sub_1D9C14F28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54508);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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
    for (i = (v9 + 63) >> 6; v11; *(v26 + 48) = v23)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 8 * v14;
      v18 = *(*(v2 + 48) + 8 * v14);
      v19 = 56 * v14;
      v20 = *(v2 + 56) + v19;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 48);
      v24 = *(v20 + 16);
      v25 = *(v20 + 32);
      *(*(v4 + 48) + v17) = v18;
      v26 = *(v4 + 56) + v19;
      *v26 = v21;
      *(v26 + 8) = v22;
      *(v26 + 16) = v24;
      *(v26 + 32) = v25;
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

void *sub_1D9C150A0(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1D9C7E52C();
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

void *sub_1D9C15200()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521D8);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

void *sub_1D9C15364()
{
  v1 = v0;
  v29 = sub_1D9C7B80C();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521B8);
  v3 = *v0;
  v4 = sub_1D9C7E52C();
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

void *sub_1D9C155CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520F0);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
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

char *sub_1D9C15734()
{
  v1 = v0;
  v33 = sub_1D9C7B93C();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52140);
  v3 = *v0;
  v4 = sub_1D9C7E52C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

void *sub_1D9C159F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52180);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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

id sub_1D9C15B4C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1D9C7E52C();
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

void *sub_1D9C15CBC(uint64_t *a1)
{
  v3 = v1;
  v33 = sub_1D9C7B93C();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v1;
  v6 = sub_1D9C7E52C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v37 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v23 = v32;
        v24 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v20 *= 16;
        v25 = v34;
        v26 = *(v34 + 48);
        v27 = *(v21 + 32);
        v36 = *(*(v5 + 56) + v20);
        v27(v26 + v22, v23, v24);
        *(*(v25 + 56) + v20) = v36;

        v15 = v37;
      }

      while (v37);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v29;
        v7 = v34;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v37 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v7;
  }

  return result;
}

void *sub_1D9C15F3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52108);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v17 *= 48;
        v20 = *(v2 + 56) + v17;
        v21 = *(v20 + 32);
        v22 = *(v20 + 40);
        v23 = (*(v4 + 48) + v18);
        v24 = v19[1];
        v25 = *v20;
        v26 = *(v20 + 16);
        *v23 = *v19;
        v23[1] = v24;
        v27 = *(v4 + 56) + v17;
        *v27 = v25;
        *(v27 + 16) = v26;
        *(v27 + 32) = v21;
        *(v27 + 40) = v22;
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

void *sub_1D9C160C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52210);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 24 * v14;
      v18 = *(v17 + 16);
      v19 = *(*(v2 + 56) + 8 * v14);
      v20 = *(v4 + 48) + 24 * v14;
      *v20 = *v17;
      *(v20 + 16) = v18;
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

void *sub_1D9C16228()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52188);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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
        v18 = *(v2 + 56) + 40 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v23 = *(v4 + 56) + 40 * v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
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

void *sub_1D9C163AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520B8);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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

void *sub_1D9C16514()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54500);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
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

void *sub_1D9C16660(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1D9C7E52C();
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
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
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

void *sub_1D9C167AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB544F0);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        v20 = (*(v4 + 48) + 32 * v17);
        v21 = v18[1];
        *v20 = *v18;
        v20[1] = v21;
        *(*(v4 + 56) + 8 * v17) = v19;
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

void *sub_1D9C16914()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521A8);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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

void *sub_1D9C16A84(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1D9C7E52C();
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
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
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

void *sub_1D9C16BD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52070);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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

void *sub_1D9C16D1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52078);
  v2 = *v0;
  v3 = sub_1D9C7E52C();
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

uint64_t sub_1D9C16E84()
{
  v0 = sub_1D9C7E56C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D9C16ED0()
{
  v0 = sub_1D9C7E81C();

  if (v0 >= 0x48)
  {
    return 72;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D9C16F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9C16FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9C17050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9C170DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9C17124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1D9C1716C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D9C171C0(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v113 = a3;
  v120 = a2;
  v8 = sub_1D9C7D8DC();
  v108 = *(v8 - 8);
  v109 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = _s14DetectedResultVMa();
  v114 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v104 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v104 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v110 = &v104 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v121 = &v104 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v111 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v115 = &v104 - v23;
  v24 = type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
  v118 = *(v24 - 8);
  v119 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[7];
  v28 = a1[5];
  v149 = a1[6];
  v150[0] = v27;
  v29 = a1[7];
  v150[1] = a1[8];
  *(&v150[1] + 13) = *(a1 + 141);
  v30 = a1[3];
  v31 = a1[1];
  v145 = a1[2];
  v146 = v30;
  v32 = a1[3];
  v33 = a1[5];
  v147 = a1[4];
  v148 = v33;
  v34 = a1[1];
  v143 = *a1;
  v144 = v34;
  v157 = v149;
  v158 = v29;
  v159[0] = a1[8];
  *(v159 + 13) = *(a1 + 141);
  v153 = v145;
  v154 = v32;
  v155 = v147;
  v156 = v28;
  v151 = v143;
  v152 = v31;
  type metadata accessor for VisualUnderstanding.ImageRegion();
  v106 = a4;
  v35 = swift_projectBox();
  if ((BYTE12(v150[0]) & 1) == 0)
  {
    v58 = a1[7];
    v141 = a1[6];
    v142[0] = v58;
    v142[1] = a1[8];
    *(&v142[1] + 13) = *(a1 + 141);
    v59 = a1[3];
    v137 = a1[2];
    v138 = v59;
    v60 = a1[5];
    v139 = a1[4];
    v140 = v60;
    v61 = a1[1];
    v135 = *a1;
    v136 = v61;
    faiss::NormalizationTransform::~NormalizationTransform(&v135);
    v62 = v142[0];
    a5[6] = v141;
    a5[7] = v62;
    a5[8] = v142[1];
    *(a5 + 141) = *(&v142[1] + 13);
    v63 = v138;
    a5[2] = v137;
    a5[3] = v63;
    v64 = v140;
    a5[4] = v139;
    a5[5] = v64;
    v65 = v136;
    *a5 = v135;
    a5[1] = v65;
    sub_1D99AE054(&v143, v134);
    return;
  }

  v36 = v35;
  v37 = *(v120 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
  swift_beginAccess();
  v38 = *(v37 + 16);
  v39 = v143;
  v40 = sub_1D9A15C94(v143);
  v42 = v41;
  if (!*(v38 + 16))
  {

    goto LABEL_11;
  }

  v43 = v40;
  v120 = a5;

  v44 = sub_1D99ED894(v43, v42);
  v46 = v45;

  if ((v46 & 1) == 0)
  {

    a5 = v120;
    goto LABEL_11;
  }

  v105 = v36;
  sub_1D9C18618(*(v38 + 56) + *(v118 + 72) * v44, v26, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

  v47 = (*&v26[*(v119 + 20)] + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__overlapRatioThreshold);
  swift_beginAccess();
  v48 = *v47;
  sub_1D9C18680(v26, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
  v49 = v122;
  a5 = v120;
  if (v48 <= 0.0)
  {
LABEL_11:
    v141 = v157;
    v142[0] = v158;
    v142[1] = v159[0];
    *(&v142[1] + 13) = *(v159 + 13);
    v137 = v153;
    v138 = v154;
    v139 = v155;
    v140 = v156;
    v135 = v151;
    v136 = v152;
    faiss::NormalizationTransform::~NormalizationTransform(&v135);
    v66 = v142[0];
    a5[6] = v141;
    a5[7] = v66;
    a5[8] = v142[1];
    *(a5 + 141) = *(&v142[1] + 13);
    v67 = v138;
    a5[2] = v137;
    a5[3] = v67;
    v68 = v140;
    a5[4] = v139;
    a5[5] = v68;
    v69 = v136;
    *a5 = v135;
    a5[1] = v69;
    sub_1D99AE054(&v143, v134);
    return;
  }

  LODWORD(v119) = v39;
  sub_1D99AE054(&v143, &v135);

  v51 = sub_1D9C17D3C(v50, &v143, v105, v48);
  sub_1D99AE0B0(&v143);

  v52 = *(v51 + 16);
  if (v52)
  {
    v122 = v49;
    v53 = v114;
    v54 = v51 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    sub_1D9C18618(v54, v121, _s14DetectedResultVMa);
    v55 = v117;
    if (v52 != 1)
    {
      v96 = 1;
      while (v96 < *(v51 + 16))
      {
        sub_1D9C18618(v54 + *(v53 + 72) * v96, v15, _s14DetectedResultVMa);
        v97 = v121;
        if (*(v121 + *(v55 + 32)) >= *&v15[*(v55 + 32)])
        {
          sub_1D9C18680(v15, _s14DetectedResultVMa);
        }

        else
        {
          sub_1D9C18680(v121, _s14DetectedResultVMa);
          sub_1D9B5B840(v15, v97, _s14DetectedResultVMa);
        }

        if (v52 == ++v96)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      return;
    }

LABEL_7:

    v56 = v115;
    sub_1D9B5B840(v121, v115, _s14DetectedResultVMa);
    v57 = 0;
    v49 = v122;
  }

  else
  {

    v57 = 1;
    v55 = v117;
    v53 = v114;
    v56 = v115;
  }

  (*(v53 + 56))(v56, v57, 1, v55);
  v70 = v111;
  sub_1D9C186E0(v56, v111);
  v71 = (*(v53 + 48))(v70, 1, v55);
  a5 = v120;
  v72 = v116;
  if (v71 == 1)
  {
    sub_1D99D3950(v56);
    sub_1D99D3950(v70);
    goto LABEL_11;
  }

  v73 = v110;
  sub_1D9B5B840(v70, v110, _s14DetectedResultVMa);
  v74 = v107;
  static Logger.argos.getter(v107);
  sub_1D9C18618(v73, v112, _s14DetectedResultVMa);
  sub_1D9C18618(v73, v72, _s14DetectedResultVMa);
  sub_1D99AE054(&v143, &v135);

  v75 = sub_1D9C7D8BC();
  v76 = sub_1D9C7E09C();

  sub_1D99AE0B0(&v143);
  LODWORD(v121) = v76;
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v122 = v49;
    v123 = v78;
    v79 = v78;
    *v77 = 136316162;
    v80 = v75;
    v81 = v105;
    swift_beginAccess();
    v82 = *(v81 + 1);
    v135 = *v81;
    v136 = v82;
    v83 = NormalizedRect.loggingDescription.getter();
    v85 = sub_1D9A0E224(v83, v84, &v123);

    *(v77 + 4) = v85;
    *(v77 + 12) = 2080;
    v86 = sub_1D9A15C94(v119);
    v88 = sub_1D9A0E224(v86, v87, &v123);

    *(v77 + 14) = v88;
    *(v77 + 22) = 2080;
    v89 = v112;
    v90 = v112 + *(v55 + 28);
    v91 = *(v90 + 16);
    v92 = *(v90 + 24);

    sub_1D9C18680(v89, _s14DetectedResultVMa);
    v93 = sub_1D9A0E224(v91, v92, &v123);

    *(v77 + 24) = v93;
    *(v77 + 32) = 2048;
    *(v77 + 34) = *(v150 + 1);
    *(v77 + 42) = 2048;
    v94 = *(v116 + *(v117 + 32));
    v55 = v117;
    sub_1D9C18680(v116, _s14DetectedResultVMa);
    *(v77 + 44) = v94;
    _os_log_impl(&dword_1D9962000, v80, v121, "Update %s domain %s detection %s score from %f to %f", v77, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v79, -1, -1);
    v95 = v77;
    a5 = v120;
    MEMORY[0x1DA7405F0](v95, -1, -1);

    (*(v108 + 8))(v74, v109);
    sub_1D99D3950(v115);
  }

  else
  {

    sub_1D9C18680(v116, _s14DetectedResultVMa);
    sub_1D9C18680(v112, _s14DetectedResultVMa);
    (*(v108 + 8))(v74, v109);
    sub_1D99D3950(v56);
  }

  v131 = v148;
  v132 = v149;
  v133 = v150[0];
  v126 = v143;
  v127 = v144;
  v128 = v145;
  v129 = v146;
  v130 = v147;
  *(v125 + 13) = *(&v150[2] + 5);
  v124 = *(v150 + 8);
  v125[0] = *(&v150[1] + 8);
  v98 = v110;
  v99 = *(v110 + *(v55 + 32));
  sub_1D99AE054(&v143, &v135);
  sub_1D9C18680(v98, _s14DetectedResultVMa);
  v139 = v130;
  v140 = v131;
  v141 = v132;
  *&v142[0] = __PAIR64__(v99, v133);
  v135 = v126;
  v136 = v127;
  v137 = v128;
  v138 = v129;
  *(&v142[2] + 5) = *(v125 + 13);
  *(&v142[1] + 8) = v125[0];
  *(v142 + 8) = v124;
  faiss::NormalizationTransform::~NormalizationTransform(&v135);
  v100 = v142[0];
  a5[6] = v141;
  a5[7] = v100;
  a5[8] = v142[1];
  *(a5 + 141) = *(&v142[1] + 13);
  v101 = v138;
  a5[2] = v137;
  a5[3] = v101;
  v102 = v140;
  a5[4] = v139;
  a5[5] = v102;
  v103 = v136;
  *a5 = v135;
  a5[1] = v103;
}

uint64_t sub_1D9C17D3C(uint64_t a1, uint64_t a2, double *a3, float a4)
{
  v51 = a4;
  v7 = _s14DetectedResultVMa();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v14 = *(a1 + 16);
  swift_beginAccess();
  if (v14)
  {
    v15 = *(v8 + 72);
    v48 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v16 = a1 + v48;
    v17 = MEMORY[0x1E69E7CC0];
    v49 = v10;
    v50 = a3;
    while (1)
    {
      sub_1D9C18618(v16, v13, _s14DetectedResultVMa);
      if (*(a2 + 88))
      {
        v18 = &v13[v7[7]];
        v19 = *(v18 + 2) == *(a2 + 96) && *(v18 + 3) == *(a2 + 104);
        if (v19 || (sub_1D9C7E7DC()) && *(a2 + 116) < *&v13[v7[8]])
        {
          v20 = &v13[v7[6]];
          v21 = *v20;
          v22 = v20[1];
          v23 = v20[2];
          v24 = v20[3];
          v25 = a3[1];
          v55 = *a3;
          v27 = a3[2];
          v26 = a3[3];
          v57.origin.x = v21;
          v57.origin.y = v22;
          v57.size.width = v23;
          v57.size.height = v24;
          Width = CGRectGetWidth(v57);
          v52 = v21;
          v58.origin.x = v21;
          v29 = v22;
          v30 = v55;
          v58.origin.y = v29;
          v58.size.width = v23;
          v58.size.height = v24;
          v31 = Width * CGRectGetHeight(v58);
          v59.origin.x = v30;
          v59.origin.y = v25;
          v59.size.width = v27;
          v59.size.height = v26;
          v32 = CGRectGetWidth(v59);
          v53 = v26;
          v54 = v32;
          v60.origin.x = v30;
          v60.origin.y = v25;
          v60.size.width = v27;
          v60.size.height = v26;
          Height = CGRectGetHeight(v60);
          if (v31 <= 0.0 || (v34 = v54 * Height, v34 <= 0.0) || (v54 = v34, v61.origin.x = v52, v65.size.height = v53, v61.origin.y = v29, v61.size.width = v23, v61.size.height = v24, v65.origin.x = v30, v65.origin.y = v25, v65.size.width = v27, v62 = CGRectIntersection(v61, v65), x = v62.origin.x, y = v62.origin.y, v37 = v62.size.width, v38 = v62.size.height, CGRectIsNull(v62)))
          {
            if (v51 < 0.0)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v63.origin.x = x;
            v63.origin.y = y;
            v63.size.width = v37;
            v63.size.height = v38;
            v42 = CGRectGetWidth(v63);
            v64.origin.x = x;
            v64.origin.y = y;
            v64.size.width = v37;
            v64.size.height = v38;
            v43 = v42 * CGRectGetHeight(v64);
            v44 = v54;
            if (v54 >= v31)
            {
              v44 = v31;
            }

            v45 = v43 / v44;
            if (v45 > v51)
            {
LABEL_16:
              sub_1D9B5B840(v13, v10, _s14DetectedResultVMa);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v56 = v17;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D99FE238(0, *(v17 + 16) + 1, 1);
                v17 = v56;
              }

              v41 = *(v17 + 16);
              v40 = *(v17 + 24);
              if (v41 >= v40 >> 1)
              {
                sub_1D99FE238(v40 > 1, v41 + 1, 1);
                v17 = v56;
              }

              *(v17 + 16) = v41 + 1;
              v10 = v49;
              sub_1D9B5B840(v49, v17 + v48 + v41 * v15, _s14DetectedResultVMa);
              a3 = v50;
              goto LABEL_4;
            }
          }
        }
      }

      sub_1D9C18680(v13, _s14DetectedResultVMa);
LABEL_4:
      v16 += v15;
      if (!--v14)
      {
        return v17;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D9C18114(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v49 = v9;
    v51 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v14 = a1 + v51;
    v15 = *(v10 + 72);
    v16 = MEMORY[0x1E69E7CC0];
    v50 = v14;
    v52 = v13;
    while (1)
    {
      v18 = v15;
      sub_1D9C18618(v14, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v19 = *(v12 + 7);

      result = sub_1D9C18680(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v20 = *(v19 + 16);
      v21 = v16[2];
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v22 <= v16[3] >> 1)
      {
        if (*(v19 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v21 <= v22)
        {
          v24 = v21 + v20;
        }

        else
        {
          v24 = v21;
        }

        v16 = sub_1D9AF9018(isUniquelyReferenced_nonNull_native, v24, 1, v16);
        if (*(v19 + 16))
        {
LABEL_14:
          v25 = (v16[3] >> 1) - v16[2];
          result = _s14DetectedResultVMa();
          if (v25 < v20)
          {
            goto LABEL_38;
          }

          swift_arrayInitWithCopy();

          if (v20)
          {
            v26 = v16[2];
            v27 = __OFADD__(v26, v20);
            v28 = v26 + v20;
            if (v27)
            {
              goto LABEL_39;
            }

            v16[2] = v28;
          }

          goto LABEL_4;
        }
      }

      if (v20)
      {
        goto LABEL_37;
      }

LABEL_4:
      v15 = v18;
      v14 += v18;
      if (!--v13)
      {
        v29 = 0;
        v30 = MEMORY[0x1E69E7CC0];
        v47 = v7;
        do
        {
          v32 = v50 + v29 * v15;
          ++v29;
          v33 = swift_allocBox();
          v35 = v34;
          sub_1D9C18618(v32, v34, type metadata accessor for VisualUnderstanding.ImageRegion);
          v36 = swift_beginAccess();
          v37 = *(v35 + 48);
          v38 = *(v37 + 16) + 1;
          v39 = 156;
          while (--v38)
          {
            v40 = *(v37 + v39);
            v39 += 160;
            if (v40)
            {
              MEMORY[0x1EEE9AC00](v36);
              *(&v46 - 4) = v48;
              *(&v46 - 3) = v16;
              *(&v46 - 2) = v33;

              v41 = sub_1D9BE77D4(sub_1D9C185F8, (&v46 - 6), v37);

              *(v35 + 48) = v41;

              sub_1D9C18618(v35, v53, type metadata accessor for VisualUnderstanding.ImageRegion);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v30 = sub_1D9AF8A90(0, v30[2] + 1, 1, v30);
              }

              v43 = v30[2];
              v42 = v30[3];
              v44 = v43 + 1;
              if (v43 >= v42 >> 1)
              {
                v30 = sub_1D9AF8A90(v42 > 1, v43 + 1, 1, v30);
              }

              v31 = v53;
              v7 = v47;
              goto LABEL_20;
            }
          }

          sub_1D9C18618(v35, v7, type metadata accessor for VisualUnderstanding.ImageRegion);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_1D9AF8A90(0, v30[2] + 1, 1, v30);
          }

          v43 = v30[2];
          v45 = v30[3];
          v44 = v43 + 1;
          if (v43 >= v45 >> 1)
          {
            v30 = sub_1D9AF8A90(v45 > 1, v43 + 1, 1, v30);
          }

          v31 = v7;
LABEL_20:
          v30[2] = v44;
          v15 = v18;
          sub_1D9B5B840(v31, v30 + v51 + v43 * v18, type metadata accessor for VisualUnderstanding.ImageRegion);
        }

        while (v29 != v52);

        return v30;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D9C18618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9C18680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9C186E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9C18750(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54530);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9C18CA8();
  sub_1D9C7E96C();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517C0);
  sub_1D99EA1DC(&qword_1EDD2A720);
  sub_1D9C7E74C();
  if (!v4)
  {
    v13 = 1;
    sub_1D9C7E6EC();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D9C18930()
{
  if (*v0)
  {
    return 0x4E52556C65646F6DLL;
  }

  else
  {
    return 0x7365727574616566;
  }
}

uint64_t sub_1D9C18964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365727574616566 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D9C7E7DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4E52556C65646F6DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9C7E7DC();

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

uint64_t sub_1D9C18A40(uint64_t a1)
{
  v2 = sub_1D9C18CA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9C18A7C(uint64_t a1)
{
  v2 = sub_1D9C18CA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9C18AB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D9C1913C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1D9C18B08()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A2ED94(v3, v1);
  sub_1D9C7DD6C();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9C18B6C(uint64_t a1)
{
  sub_1D9A2ED94(a1, *v1);

  return sub_1D9C7DD6C();
}

uint64_t sub_1D9C18BBC()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A2ED94(v3, v1);
  sub_1D9C7DD6C();
  return sub_1D9C7E93C();
}

unint64_t sub_1D9C18C54()
{
  result = qword_1ECB54528;
  if (!qword_1ECB54528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54528);
  }

  return result;
}

unint64_t sub_1D9C18CA8()
{
  result = qword_1EDD2C008;
  if (!qword_1EDD2C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C008);
  }

  return result;
}

id sub_1D9C18CFC(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  sub_1D99CC024();
  v4 = sub_1D9C7DF1C();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1D9C7B70C();

    swift_willThrow();
  }

  return v5;
}

unint64_t sub_1D9C18DE8(void *a1)
{
  v3 = [a1 shape];
  sub_1D99CC024();
  v4 = sub_1D9C7DF2C();

  v5 = [a1 dataType];
  v6 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v7 = sub_1D9C18CFC(v4, v5);
  if (v1)
  {
    return v7;
  }

  result = [a1 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (result)
    {
      v10 = 0;
      v11 = 0.0;
      do
      {
        v12 = v10 + 1;
        v13 = [a1 objectAtIndexedSubscript_];
        [v13 floatValue];
        v15 = v14;

        v16 = [a1 objectAtIndexedSubscript_];
        [v16 floatValue];
        v18 = v17;

        v11 = v11 + (v15 * v18);
        v10 = v12;
      }

      while (v9 != v12);
    }

    else
    {
      v11 = 0.0;
    }

    v19 = sqrtf(v11);
    if (v19 > 1.0e-12)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1.0e-12;
    }

    result = [v7 count];
    if ((result & 0x8000000000000000) == 0)
    {
      v21 = result;
      if (result)
      {
        v22 = 0;
        do
        {
          v23 = [a1 objectAtIndexedSubscript_];
          [v23 floatValue];
          v25 = v24;

          v26 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          *&v27 = v25 / v20;
          v28 = [v26 initWithFloat_];
          [v7 setObject:v28 atIndexedSubscript:v22];

          ++v22;
        }

        while (v21 != v22);
      }

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9C19020(void *a1)
{
  result = [a1 count];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = sub_1D9C7DF5C();
  *(v4 + 16) = v3;
  bzero((v4 + 32), 4 * v3);
  v5 = [a1 objectAtIndexedSubscript_];
  [v5 floatValue];
  v7 = v6;

  if (*(v4 + 16))
  {
    v8 = 0;
    v9 = v3 - 1;
    while (1)
    {
      *(v4 + 4 * v8 + 32) = v7;
      if (v9 == v8)
      {
        break;
      }

      v10 = [a1 objectAtIndexedSubscript_];
      [v10 floatValue];
      v7 = v11;

      if (v8 >= *(v4 + 16))
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    __break(1u);
  }

  return v4;
}

uint64_t sub_1D9C1913C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54538);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1D9C18CA8();
  sub_1D9C7E95C();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517C0);
    v9[7] = 0;
    sub_1D99EA1DC(&qword_1EDD2A718);
    sub_1D9C7E65C();
    v7 = v10;
    v9[6] = 1;
    sub_1D9C7E5FC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_1D9C19378()
{
  result = qword_1ECB54540;
  if (!qword_1ECB54540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54540);
  }

  return result;
}

unint64_t sub_1D9C193D0()
{
  result = qword_1EDD2BFF8;
  if (!qword_1EDD2BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BFF8);
  }

  return result;
}

unint64_t sub_1D9C19428()
{
  result = qword_1EDD2C000;
  if (!qword_1EDD2C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C000);
  }

  return result;
}

void sub_1D9C1947C(uint64_t a1@<X8>)
{
  v4 = *(v1 + 112);
  os_unfair_lock_lock(v4 + 4);
  swift_beginAccess();
  sub_1D99AB100(v1 + 24, &v9, &qword_1ECB53BB0);
  if (v10[24] == 255)
  {
    sub_1D99A6AE0(&v9, &qword_1ECB53BB0);
    v5 = *(v1 + 72);
    if (!v5)
    {
      sub_1D99D2B7C();
      swift_allocError();
      *v8 = 0;
      swift_willThrow();
      goto LABEL_11;
    }

    v5(&v9, v6);
    if (v2)
    {
      *&v11 = v2;
      v12[24] = 1;
      swift_beginAccess();
      v7 = v2;
      sub_1D9A91EA0(&v11, v1 + 24, &qword_1ECB53BB0);
      swift_endAccess();
      swift_willThrow();
      sub_1D9979BF4(v5);
      goto LABEL_11;
    }

    sub_1D9979BF4(v5);
    sub_1D99A17C8(&v9, &v11);
    v12[24] = 0;
    swift_beginAccess();
    sub_1D9A91EA0(&v11, v1 + 24, &qword_1ECB53BB0);
    swift_endAccess();
LABEL_10:
    sub_1D9979B9C(&v9, a1);
    goto LABEL_11;
  }

  v11 = v9;
  *v12 = *v10;
  *&v12[9] = *&v10[9];
  sub_1D99AB100(&v11, &v9, &qword_1ECB54558);
  if ((v10[24] & 1) == 0)
  {
    sub_1D99A6AE0(&v11, &qword_1ECB54558);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
  swift_willThrowTypedImpl();
  sub_1D99A6AE0(&v11, &qword_1ECB54558);
LABEL_11:
  os_unfair_lock_unlock(v4 + 4);
}

void sub_1D9C19728(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v25 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54560);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54568);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  v29 = *(v1 + *(*v1 + 184));
  os_unfair_lock_lock(v29 + 4);
  v17 = *(*v1 + 152);
  swift_beginAccess();
  sub_1D99AB100(v1 + v17, v9, &qword_1ECB54560);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D99A6AE0(v9, &qword_1ECB54560);
    v18 = *(v1 + *(*v1 + 160));
    if (v18)
    {

      v20 = v25;
      v21 = v27;
      v18(v19);
      if (v21)
      {
        *v7 = v21;
        swift_storeEnumTagMultiPayload();
        (*(v11 + 56))(v7, 0, 1, v10);
        swift_beginAccess();
        v22 = v21;
        sub_1D9A91EA0(v7, v1 + v17, &qword_1ECB54560);
        swift_endAccess();
        swift_willThrow();
        sub_1D9979BF4(v18);
      }

      else
      {
        sub_1D9979BF4(v18);
        sub_1D99AB100(v20, v7, &unk_1ECB518D0);
        swift_storeEnumTagMultiPayload();
        (*(v11 + 56))(v7, 0, 1, v10);
        swift_beginAccess();
        sub_1D9A91EA0(v7, v1 + v17, &qword_1ECB54560);
        swift_endAccess();
        sub_1D99B1C20(v20, v26, &unk_1ECB518D0);
      }
    }

    else
    {
      sub_1D99D2B7C();
      swift_allocError();
      *v23 = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1D99B1C20(v9, v16, &qword_1ECB54568);
    sub_1D99AB100(v16, v14, &qword_1ECB54568);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
      swift_willThrowTypedImpl();
      sub_1D99A6AE0(v16, &qword_1ECB54568);
    }

    else
    {
      sub_1D99A6AE0(v16, &qword_1ECB54568);
      sub_1D99B1C20(v14, v26, &unk_1ECB518D0);
    }
  }

  os_unfair_lock_unlock(v29 + 4);
}

uint64_t sub_1D9C19C54(void (*a1)(void, uint64_t), void (*a2)(uint64_t, uint64_t))
{
  v6 = *(v2 + 80);
  os_unfair_lock_lock(v6 + 4);
  swift_beginAccess();
  v7 = *(v2 + 32);
  if (v7 == 255)
  {
    v8 = *(v2 + 40);
    if (v8)
    {
      v9 = v2;
      v2 = *(v2 + 48);

      v8(&v19, v10);
      if (v3)
      {
        v11 = v9;
        v12 = *(v9 + 24);
        v13 = *(v11 + 32);
        v14 = v3;
        *(v11 + 24) = v3;
        *(v11 + 32) = 1;
        a2(v12, v13);
        swift_willThrow();
        a1(v8, v2);
      }

      else
      {
        a1(v8, v2);
        v2 = v19;
        v16 = *(v9 + 24);
        *(v9 + 24) = v19;
        v17 = *(v9 + 32);
        *(v9 + 32) = 0;

        a2(v16, v17);
      }
    }

    else
    {
      sub_1D99D2B7C();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }

  else
  {
    v2 = *(v2 + 24);
    if (v7)
    {
      v19 = v2;
      sub_1D99A40CC(v2, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
      swift_willThrowTypedImpl();
    }

    else
    {
      sub_1D99A40CC(v2, 0);
    }
  }

  os_unfair_lock_unlock(v6 + 4);
  return v2;
}

void sub_1D9C19E68(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54578);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54570);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v29 = *(v1 + *(*v1 + 184));
  os_unfair_lock_lock(v29 + 4);
  v17 = *(*v1 + 152);
  swift_beginAccess();
  sub_1D99AB100(v1 + v17, v9, &qword_1ECB54578);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D99A6AE0(v9, &qword_1ECB54578);
    v18 = *(v1 + *(*v1 + 160));
    if (v18)
    {

      v20 = v25;
      v21 = v27;
      v18(v19);
      if (v21)
      {
        *v6 = v21;
        swift_storeEnumTagMultiPayload();
        (*(v11 + 56))(v6, 0, 1, v10);
        swift_beginAccess();
        v22 = v21;
        sub_1D9A91EA0(v6, v1 + v17, &qword_1ECB54578);
        swift_endAccess();
        swift_willThrow();
        sub_1D9979BF4(v18);
      }

      else
      {
        sub_1D9979BF4(v18);
        sub_1D9C1B594(v20, v6);
        swift_storeEnumTagMultiPayload();
        (*(v11 + 56))(v6, 0, 1, v10);
        swift_beginAccess();
        sub_1D9A91EA0(v6, v1 + v17, &qword_1ECB54578);
        swift_endAccess();
        sub_1D9C1B5F8(v20, v26);
      }
    }

    else
    {
      sub_1D99D2B7C();
      swift_allocError();
      *v23 = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1D99B1C20(v9, v16, &qword_1ECB54570);
    sub_1D99AB100(v16, v13, &qword_1ECB54570);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
      swift_willThrowTypedImpl();
      sub_1D99A6AE0(v16, &qword_1ECB54570);
    }

    else
    {
      sub_1D99A6AE0(v16, &qword_1ECB54570);
      sub_1D9C1B5F8(v13, v26);
    }
  }

  os_unfair_lock_unlock(v29 + 4);
}

id sub_1D9C1A31C()
{
  v2 = *(v0 + 80);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  v3 = *(v0 + 32);
  if (v3 != 255)
  {
    v0 = *(v0 + 24);
    if ((v3 & 1) == 0)
    {
      sub_1D99D2BF4(v0);
      os_unfair_lock_unlock(v2 + 4);
      return v0;
    }

    v17 = v0;
    sub_1D99D2BF4(v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
    swift_willThrowTypedImpl();
LABEL_9:
    os_unfair_lock_unlock(v2 + 4);
    return v0;
  }

  v4 = *(v0 + 40);
  if (!v4)
  {
    sub_1D99D2B7C();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  v5 = v0;
  v0 = *(v0 + 48);

  v4(&v17, v6);
  if (v1)
  {
    v7 = v5;
    v8 = *(v5 + 24);
    v9 = *(v7 + 32);
    v10 = v1;
    *(v7 + 24) = v1;
    *(v7 + 32) = 1;
    sub_1D99D2BD0(v8, v9);
    swift_willThrow();
    sub_1D9979BF4(v4);
    goto LABEL_9;
  }

  sub_1D9979BF4(v4);
  v13 = v17;
  v14 = *(v5 + 24);
  *(v5 + 24) = v17;
  v15 = *(v5 + 32);
  *(v5 + 32) = 0;
  v16 = v13;
  sub_1D99D2BD0(v14, v15);
  os_unfair_lock_unlock(v2 + 4);
  return v16;
}

uint64_t sub_1D9C1A4DC(void (*a1)(void, uint64_t), void (*a2)(uint64_t, uint64_t))
{
  v6 = *(v2 + 80);
  os_unfair_lock_lock(v6 + 4);
  swift_beginAccess();
  v7 = *(v2 + 32);
  if (v7 == 255)
  {
    v8 = *(v2 + 40);
    if (v8)
    {
      v9 = v2;
      v2 = *(v2 + 48);

      v8(&v19, v10);
      if (v3)
      {
        v11 = v9;
        v12 = *(v9 + 24);
        v13 = *(v11 + 32);
        v14 = v3;
        *(v11 + 24) = v3;
        *(v11 + 32) = 1;
        a2(v12, v13);
        swift_willThrow();
        a1(v8, v2);
      }

      else
      {
        a1(v8, v2);
        v2 = v19;
        v16 = *(v9 + 24);
        *(v9 + 24) = v19;
        v17 = *(v9 + 32);
        *(v9 + 32) = 0;

        a2(v16, v17);
      }
    }

    else
    {
      sub_1D99D2B7C();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }

  else
  {
    v2 = *(v2 + 24);
    if (v7)
    {
      v19 = v2;
      sub_1D9C1B588(v2, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
      swift_willThrowTypedImpl();
    }

    else
    {
      sub_1D9C1B588(v2, 0);
    }
  }

  os_unfair_lock_unlock(v6 + 4);
  return v2;
}

uint64_t sub_1D9C1A6F0(void (*a1)(void, uint64_t), void (*a2)(uint64_t, uint64_t, uint64_t))
{
  v6 = v2;
  v7 = *(v2 + 88);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v2 + 40);
  if (v8 == 255)
  {
    v10 = *(v2 + 48);
    if (v10)
    {
      v2 = *(v2 + 56);

      v10(v21, v11);
      if (v3)
      {
        v12 = *(v6 + 32);
        v22 = *(v6 + 24);
        v13 = *(v6 + 40);
        v14 = v3;
        *(v6 + 24) = v3;
        *(v6 + 32) = 0;
        *(v6 + 40) = 1;
        a2(v22, v12, v13);
        swift_willThrow();
        a1(v10, v2);
      }

      else
      {
        a1(v10, v2);
        v2 = v21[0];
        v16 = v21[1];
        v17 = *(v6 + 24);
        v18 = *(v6 + 32);
        *(v6 + 24) = v21[0];
        *(v6 + 32) = v16;
        v19 = *(v6 + 40);
        *(v6 + 40) = 0;
        swift_unknownObjectRetain();
        a2(v17, v18, v19);
      }
    }

    else
    {
      sub_1D99D2B7C();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }

  else
  {
    v2 = *(v2 + 24);
    v9 = *(v6 + 32);
    if (v8)
    {
      v21[0] = *(v6 + 24);
      sub_1D9C1B520(v2, v9, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
      swift_willThrowTypedImpl();
    }

    else
    {
      sub_1D9C1B520(*(v6 + 24), *(v6 + 32), 0);
    }
  }

  os_unfair_lock_unlock(v7 + 4);
  return v2;
}

uint64_t sub_1D9C1A8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = 0;
  *(v3 + 40) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 64) = -1;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51500);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  *(v3 + 104) = a1;
  *(v3 + 112) = v7;

  return sub_1D9B76440();
}

uint64_t sub_1D9C1A98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(*v4 + 152);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  v10 = (v4 + *(*v4 + 160));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v4 + *(*v4 + 168));
  *v11 = 0;
  v11[1] = 0;
  v12 = *(*v4 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51500);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v4 + v12) = v13;
  *v10 = a2;
  v10[1] = a3;
  *(v4 + *(*v4 + 176)) = a1;

  return sub_1D9B76440();
}

uint64_t sub_1D9C1AABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = -1;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51500);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3;
  *(v3 + 80) = a1;
  *(v3 + 88) = v7;

  return sub_1D9B76440();
}

uint64_t sub_1D9C1AB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  *(v3 + 32) = -1;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51500);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = v7;

  return sub_1D9B76440();
}

id VITextLookupFlowCompatible.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VITextLookupFlowCompatible.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54548);
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC12VisualLookUp26VITextLookupFlowCompatible_flow] = sub_1D9C1AB3C(0, sub_1D9C1AC84, 0);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VITextLookupFlowCompatible();
  return objc_msgSendSuper2(&v2, sel_init);
}

void *sub_1D9C1AC84@<X0>(void *a1@<X8>)
{
  result = sub_1D9AE4E0C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D9C1AD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v5);
  sub_1D9C1A4DC(sub_1D9C1B664, sub_1D9C1B66C);
  sub_1D99E33F8(v9);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_1D9AE2FA8(v9, sub_1D9C1B19C, v6);

  sub_1D9C1B1A8(v9);
  return v7;
}

void sub_1D9C1AFD8(uint64_t a1, char a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = objc_allocWithZone(VITextLookupResult);
    sub_1D9C1B52C();
    v6 = sub_1D9C7DF1C();
    v8 = [v5 initWithSections_];
  }

  else
  {
    v7 = objc_allocWithZone(VITextLookupResult);
    sub_1D9C1B52C();
    v6 = sub_1D9C7DF1C();
    v8 = [v7 initWithSections_];
    a1 = 0;
  }

  a3(v8, a1);
}

id VITextLookupFlowCompatible.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VITextLookupFlowCompatible();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D9C1B248(uint64_t a1, uint64_t a2, const void *a3)
{
  v4 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v4);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  sub_1D9C1A4DC(sub_1D9C1B664, sub_1D9C1B66C);
  sub_1D99E33F8(v9);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D9C1B50C;
  *(v6 + 24) = v5;

  v7 = sub_1D9AE2FA8(v9, sub_1D9C1B670, v6);

  sub_1D9C1B1A8(v9);

  return v7;
}

void sub_1D9C1B514(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

id sub_1D9C1B520(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

unint64_t sub_1D9C1B52C()
{
  result = qword_1EDD2A6B0;
  if (!qword_1EDD2A6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD2A6B0);
  }

  return result;
}

void sub_1D9C1B578(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

id sub_1D9C1B588(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1D9C1B594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9C1B5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9C1B678(void *a1, void *a2, uint64_t a3, void (*a4)(void *))
{
  sub_1D9AFCCA4();
  if (a2)
  {
    sub_1D99A182C();
    v7 = swift_allocError();
    *v8 = a2;
    *(v8 + 8) = 0;
    *(v8 + 16) = 1;
    v12[0] = v7;
    v13 = 1;
    v9 = a2;
  }

  else
  {
    v12[3] = sub_1D99B47C8();
    v12[4] = &off_1F5530540;
    v12[0] = a1;
    v13 = 0;
    v10 = a1;
  }

  a4(v12);
  return sub_1D9C1B73C(v12);
}

uint64_t sub_1D9C1B73C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9C1B7E4(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  if (a2)
  {
    sub_1D99A182C();
    v8 = swift_allocError();
    *v9 = a2;
    *(v9 + 8) = 0;
    *(v9 + 16) = 1;
    v14[0] = v8;
    v15 = 1;
    v10 = a2;
  }

  else
  {
    v14[3] = a5(0);
    v14[4] = a6;
    v14[0] = a1;
    v15 = 0;
  }

  a3(v14);
  return sub_1D9C1B73C(v14);
}

void *sub_1D9C1B898(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if ((a1 & 2) != 0)
  {
    v10 = a6;
    v19 = *(a2 + *(type metadata accessor for MLModelInfo(0) + 40));
    if (!v19 || !*(v19 + 16) || (v20 = sub_1D99ED894(a5, v10), (v21 & 1) == 0))
    {
      sub_1D9C7E40C();

      v22 = a5;
      v23 = v10;
LABEL_16:
      MEMORY[0x1DA73DF90](v22, v23);
      sub_1D9AEA780();
      swift_allocError();
      *v24 = 0xD000000000000017;
      v24[1] = 0x80000001D9CAD080;
      swift_willThrow();
      return v10;
    }

    v10 = *(*(v19 + 56) + 8 * v20);

    if ((a1 & 1) == 0)
    {
      return v10;
    }
  }

  else
  {
    v10 = 0;
    if ((a1 & 1) == 0)
    {
      return v10;
    }
  }

  v11 = *(a2 + *(type metadata accessor for MLModelInfo(0) + 40));
  if (!v11 || !*(v11 + 16) || (v12 = sub_1D99ED894(a3, a4), (v13 & 1) == 0))
  {

    sub_1D9C7E40C();

    v22 = a3;
    v23 = a4;
    goto LABEL_16;
  }

  v14 = *(*(v11 + 56) + 8 * v12);
  if (v10)
  {

    v16 = sub_1D9BDC110(v15, v10);
    if (v6)
    {
    }

    else
    {
      v26 = v16;

      return v26;
    }
  }

  else
  {

    return v14;
  }

  return v10;
}

uint64_t sub_1D9C1BAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9C7D8DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v64 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v11 = 0;
    return v11 & 1;
  }

  v10 = sub_1D9C1B898(a2, a3, 0x6972656767697274, 0xEA0000000000676ELL, 0x74696E676F636572, 0xEB000000006E6F69);
  if (v3)
  {
    return v11 & 1;
  }

  v12 = v10;
  if (!v10)
  {
    v11 = 0;
    return v11 & 1;
  }

  v52[1] = 0;
  result = sub_1D9BDBB08(v10);
  v15 = result;
  v61 = *(result + 16);
  if (!v61)
  {
LABEL_38:

    v11 = 1;
    return v11 & 1;
  }

  v16 = 0;
  v53 = 0x80000001D9CA3A40;
  v54 = a3;
  v57 = (v8 + 8);
  v58 = (v8 + 16);
  v17 = (result + 40);
  *&v14 = 136315138;
  v55 = v14;
  v59 = result;
  v60 = v12;
  v56 = v7;
  while (v16 < *(v15 + 16))
  {
    v18 = *(v17 - 1);
    v19 = *v17;
    v20 = v12[2];

    if (!v20 || (v21 = sub_1D99ED894(v18, v19), (v22 & 1) == 0))
    {
      if (qword_1EDD354B8 != -1)
      {
        swift_once();
      }

      if (byte_1EDD354C0 != 1)
      {
        goto LABEL_34;
      }

      v31 = [objc_opt_self() mainBundle];
      v32 = [v31 bundleIdentifier];

      if (v32)
      {
        v33 = sub_1D9C7DC7C();
        v35 = v34;

        if (v33 == 0xD00000000000002BLL && v53 == v35)
        {
        }

        else
        {
          v37 = sub_1D9C7E7DC();

          if ((v37 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v38 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v38 = &off_1ECB51BA8;
        }
      }

      else
      {
LABEL_24:
        v38 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v38 = &qword_1EDD355A8;
        }
      }

      v40 = *(*v38 + 32);

      v41 = sub_1D9C7DC4C();
      LODWORD(v40) = [v40 BOOLForKey_];

      if (v40)
      {
        v42 = qword_1EDD2C990;
        v43 = v64;
        if (qword_1EDD2C988 != -1)
        {
          swift_once();
          v42 = qword_1EDD2C990;
        }
      }

      else
      {
LABEL_34:
        v42 = qword_1EDD354D8;
        v43 = v64;
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
          v42 = qword_1EDD354D8;
        }
      }

      v44 = __swift_project_value_buffer(v7, v42);
      (*v58)(v43, v44, v7);

      v45 = sub_1D9C7D8BC();
      v46 = sub_1D9C7E09C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = a1;
        v49 = swift_slowAlloc();
        v62 = v49;
        *v47 = v55;
        v50 = sub_1D9A0E224(v18, v19, &v62);

        *(v47 + 4) = v50;
        _os_log_impl(&dword_1D9962000, v45, v46, "No model urn suffix for %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
        v51 = v49;
        a1 = v48;
        v7 = v56;
        MEMORY[0x1DA7405F0](v51, -1, -1);
        MEMORY[0x1DA7405F0](v47, -1, -1);

        result = (*v57)(v64, v7);
      }

      else
      {

        result = (*v57)(v43, v7);
      }

      goto LABEL_9;
    }

    v23 = v21;

    v24 = (v12[7] + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = (v54 + *(type metadata accessor for MLModelInfo(0) + 24));
    v28 = v27[1];
    v62 = *v27;
    v63 = v28;

    MEMORY[0x1DA73DF90](v25, v26);
    v30 = v62;
    v29 = v63;
    if (sub_1D9AEA42C(v62, v63, a1))
    {
    }

    else
    {
      v39 = sub_1D9AEA4B8(v30, v29, a1);

      if (!v39)
      {

        v11 = 0;
        return v11 & 1;
      }
    }

LABEL_9:
    ++v16;
    v17 += 2;
    v12 = v60;
    v15 = v59;
    if (v61 == v16)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9C1C0D4()
{
  v1 = v0;
  v2 = sub_1D9C7DA1C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v4);
  LODWORD(result) = (*(v3 + 88))(v6, v2);
  if (result == *MEMORY[0x1E69E7F48])
  {
    v8 = *(v3 + 96);
    v3 += 96;
    LODWORD(result) = v8(v6, v2);
    v9 = *v6;
    if ((*v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }

    v10 = 1000000000;
    if (is_mul_ok(v9, 0x3B9ACA00uLL))
    {
      return v9 * v10;
    }

    __break(1u);
  }

  if (result != *MEMORY[0x1E69E7F38])
  {
    goto LABEL_9;
  }

  v11 = *(v3 + 96);
  v3 += 96;
  LODWORD(result) = v11(v6, v2);
  v9 = *v6;
  if ((*v6 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = 1000000;
  if (is_mul_ok(v9, 0xF4240uLL))
  {
    return v9 * v10;
  }

  __break(1u);
LABEL_9:
  if (result == *MEMORY[0x1E69E7F30])
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    if ((*v6 & 0x8000000000000000) == 0)
    {
      v10 = 1000;
      if (is_mul_ok(v9, 0x3E8uLL))
      {
        return v9 * v10;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_1D9C7E4EC();
    __break(1u);
    return result;
  }

  if (result != *MEMORY[0x1E69E7F28])
  {
LABEL_17:
    if (result == *MEMORY[0x1E69E7F40])
    {
      return -1;
    }

    goto LABEL_23;
  }

  (*(v3 + 96))(v6, v2);
  result = *v6;
  if ((*v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1D9C1C360(double a1, double a2)
{
  v5 = type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v38 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v40 = (&v37 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v41 = (&v37 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52770);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v37 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v37 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  v22 = *(v2 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
  v23 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__imageResizeConfig;
  swift_beginAccess();
  sub_1D99AB100(v22 + v23, v21, &qword_1ECB52770);
  v24 = *(v6 + 48);
  v25 = v5;
  LODWORD(v5) = v24(v21, 1, v5);
  sub_1D99A6AE0(v21, &qword_1ECB52770);
  if (v5 == 1)
  {
    *&result = 0.0;
  }

  else
  {
    sub_1D99AB100(v22 + v23, v18, &qword_1ECB52770);
    v27 = v25;
    if (v24(v18, 1, v25) == 1)
    {
      v28 = v41;
      *v41 = 0;
      sub_1D9C7D3BC();
      if (v24(v18, 1, v27) != 1)
      {
        sub_1D99A6AE0(v18, &qword_1ECB52770);
      }
    }

    else
    {
      v28 = v41;
      sub_1D9C1E364(v18, v41, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
    }

    v29 = *v28;
    sub_1D9C1D534(v28, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
    if (v29 <= 0)
    {
      goto LABEL_18;
    }

    if (a2 >= a1)
    {
      a2 = a1;
    }

    v30 = v39;
    sub_1D99AB100(v22 + v23, v39, &qword_1ECB52770);
    if (v24(v30, 1, v27) == 1)
    {
      v31 = v40;
      *v40 = 0;
      sub_1D9C7D3BC();
      if (v24(v30, 1, v27) != 1)
      {
        sub_1D99A6AE0(v30, &qword_1ECB52770);
      }
    }

    else
    {
      v31 = v40;
      sub_1D9C1E364(v30, v40, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
    }

    v32 = *v31;
    sub_1D9C1D534(v31, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
    if (a2 <= v32)
    {
LABEL_18:
      *&result = 0.0;
    }

    else
    {
      v33 = v22 + v23;
      v34 = v37;
      sub_1D99AB100(v33, v37, &qword_1ECB52770);
      if (v24(v34, 1, v27) == 1)
      {
        v35 = v38;
        *v38 = 0;
        sub_1D9C7D3BC();
        if (v24(v34, 1, v27) != 1)
        {
          sub_1D99A6AE0(v34, &qword_1ECB52770);
        }
      }

      else
      {
        v35 = v38;
        sub_1D9C1E364(v34, v38, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
      }

      v36 = *v35;
      sub_1D9C1D534(v35, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
      *&result = v36;
    }
  }

  return result;
}

uint64_t sub_1D9C1C880(unsigned __int8 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B78);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v62[-v5];
  v72 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  v65 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v62[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v62[-v9];
  v10 = type metadata accessor for VisualUnderstanding.ImageRegion() - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = *a1;
  v67 = *(a2 + 16);
  if (v67)
  {
    v14 = 0;
    v15 = *(v11 + 80);
    v75 = *(v11 + 72);
    v76 = a2 + ((v15 + 32) & ~v15);
    v64 = 0x80000001D9CA2910;
    v74 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    do
    {
      v77 = v14;
      sub_1D9B717A8(v76 + v75 * v14, v13, type metadata accessor for VisualUnderstanding.ImageRegion);
      v16 = *(v13 + 6);
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = 0;
        v19 = (v16 + 32);
        v78 = v16;
        do
        {
          if (v18 >= *(v16 + 16))
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            JUMPOUT(0);
          }

          v21 = v19[1];
          v80[0] = *v19;
          v80[1] = v21;
          v22 = v19[2];
          v23 = v19[3];
          v24 = v19[5];
          v80[4] = v19[4];
          v80[5] = v24;
          v80[2] = v22;
          v80[3] = v23;
          v25 = v19[6];
          v26 = v19[7];
          v27 = v19[8];
          *(v81 + 13) = *(v19 + 141);
          v80[7] = v26;
          v81[0] = v27;
          v80[6] = v25;
          if (BYTE12(v26) == 1)
          {
            v28 = LOBYTE(v80[0]);
            switch(LOBYTE(v80[0]))
            {
              case 0x14:

                goto LABEL_37;
              default:
                v29 = sub_1D9C7E7DC();
                sub_1D99AE054(v80, &v79);

                if (v29)
                {
LABEL_36:
                  sub_1D99AE0B0(v80);
LABEL_37:
                  sub_1D9C1D534(v74, type metadata accessor for VisualUnderstanding.ImageRegion);
                  return 1;
                }

                switch(v28)
                {
                  case 0:
                  case 1:
                  case 2:
                  case 3:
                  case 4:
                  case 5:
                  case 6:
                  case 7:
                  case 8:
                  case 9:
                  case 10:
                  case 11:
                  case 12:
                  case 13:
                  case 14:
                  case 15:
                  case 16:
                  case 17:
                  case 18:
                  case 19:
                  case 20:
                  case 22:
                  case 23:
                  case 24:
                  case 25:
                  case 26:
                    v20 = sub_1D9C7E7DC();

                    sub_1D99AE0B0(v80);
                    if (v20)
                    {
                      goto LABEL_37;
                    }

                    v16 = v78;
                    break;
                  case 21:

                    goto LABEL_36;
                  default:
                    goto LABEL_41;
                }

                break;
            }
          }

          ++v18;
          v19 += 10;
        }

        while (v17 != v18);
      }

      v14 = v77 + 1;
      v13 = v74;
      sub_1D9C1D534(v74, type metadata accessor for VisualUnderstanding.ImageRegion);
    }

    while (v14 != v67);
  }

  v30 = *(v66 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
  v31 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__enableDomainSelectionOnlyForE5;
  swift_beginAccess();
  if (*(v30 + v31) == 1)
  {
    if (v63 > 1)
    {
    }

    else
    {
      v32 = sub_1D9C7E7DC();

      result = 0;
      if ((v32 & 1) == 0)
      {
        return result;
      }
    }
  }

  swift_beginAccess();
  v34 = *(v30 + 16);
  v35 = *(v34 + 64);
  v75 = v34 + 64;
  v76 = v34;
  v36 = 1 << *(v34 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v35;
  v74 = ((v36 + 63) >> 6);
  v77 = (v65 + 48);
  swift_bridgeObjectRetain_n();
  v39 = 0;
  while (v38)
  {
LABEL_29:
    v43 = __clz(__rbit64(v38)) | (v39 << 6);
    v44 = *(v76 + 56);
    v45 = (*(v76 + 48) + 16 * v43);
    v47 = *v45;
    v46 = v45[1];
    v48 = (type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0) - 8);
    v49 = v44 + *(*v48 + 72) * v43;
    v50 = v70;
    v51 = v68;
    sub_1D9B717A8(v49, &v68[*(v70 + 48)], type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    *v51 = v47;
    v51[1] = v46;
    v52 = v69;
    sub_1D99AB100(v51, v69, &qword_1ECB51AD0);

    v53 = v48[7];
    v78 = &v52[*(v50 + 48)];
    v54 = *&v78[v53];
    v55 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__domainSelectionConfig;
    swift_beginAccess();
    v56 = v73;
    sub_1D99AB100(v54 + v55, v73, &qword_1ECB51B78);
    v57 = *v77;
    v58 = v72;
    if ((*v77)(v56, 1, v72) == 1)
    {
      v40 = v71;
      *v71 = 0;
      v59 = MEMORY[0x1E69E7CC0];
      *(v40 + 1) = MEMORY[0x1E69E7CC0];
      *(v40 + 2) = v59;
      *(v40 + 6) = 0;
      *(v40 + 4) = 0;
      v40[40] = 1;
      sub_1D9C7D3BC();
      sub_1D99A6AE0(v51, &qword_1ECB51AD0);
      v60 = *(v58 + 40);
      v61 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
      (*(*(v61 - 8) + 56))(&v40[v60], 1, 1, v61);
      if (v57(v56, 1, v58) != 1)
      {
        sub_1D99A6AE0(v56, &qword_1ECB51B78);
      }
    }

    else
    {
      sub_1D99A6AE0(v51, &qword_1ECB51AD0);
      v40 = v71;
      sub_1D9C1E364(v56, v71, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
    }

    v38 &= v38 - 1;
    sub_1D9C1D534(v78, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    v41 = *v40;
    sub_1D9C1D534(v40, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
    if (v41)
    {

      return 1;
    }
  }

  while (1)
  {
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_40;
    }

    if (v42 >= v74)
    {
      break;
    }

    v38 = *(v75 + 8 * v42);
    ++v39;
    if (v38)
    {
      v39 = v42;
      goto LABEL_29;
    }
  }

  return 0;
}