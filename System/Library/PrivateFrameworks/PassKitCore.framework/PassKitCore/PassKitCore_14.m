uint64_t sub_1AD4AF578(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_1ADB06D20();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
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
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_1ADB07090();
      sub_1ADB06460();
      result = sub_1ADB070D0();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
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

uint64_t sub_1AD4AF828(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_1ADB06D20();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
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
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1ADB07090();
      sub_1ADB06460();
      result = sub_1ADB070D0();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1AD4AFAC8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1ADB061A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B908);
  v40 = a2;
  result = sub_1ADB06D20();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1AD4B3998(&qword_1EB59A1E0, MEMORY[0x1E69C8648]);
      result = sub_1ADB062D0();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
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
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1AD4AFE88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB599FF8);
  v34 = a2;
  result = sub_1ADB06D20();
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

      sub_1ADB07090();
      sub_1ADB06460();
      result = sub_1ADB070D0();
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

uint64_t sub_1AD4B0128(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1ADB06B20() + 1) & ~v5;
    do
    {
      sub_1ADB07090();

      sub_1ADB06460();
      v10 = sub_1ADB070D0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
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

uint64_t sub_1AD4B02D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1ADB06B20() + 1) & ~v5;
    do
    {
      sub_1ADB07090();

      sub_1ADB06460();
      v9 = sub_1ADB070D0();

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

void sub_1AD4B0488(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1ADB06B20() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1ADB063B0();
      sub_1ADB07090();
      v11 = v10;
      sub_1ADB06460();
      v12 = sub_1ADB070D0();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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
}

uint64_t sub_1AD4B0650(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1ADB06B20() + 1) & ~v5;
    do
    {
      sub_1ADB07090();

      sub_1ADB06460();
      v10 = sub_1ADB070D0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (24 * v3 < (24 * v6) || v16 >= v17 + 24 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
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

void *sub_1AD4B0848()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A020);
  v2 = *v0;
  v3 = sub_1ADB06D10();
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
        sub_1AD3C94C4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1AD41C9D0(v25, (*(v4 + 56) + v22));
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

void *sub_1AD4B09EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A048);
  v2 = *v0;
  v3 = sub_1ADB06D10();
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
        v21 = v20[1];
        v17 *= 24;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = *(v4 + 56) + v17;
        *v26 = v22;
        *(v26 + 8) = v23;
        *(v26 + 16) = v24;

        result = sub_1AD426AE8(v22, v23, v24);
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

void *sub_1AD4B0B84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A028);
  v2 = *v0;
  v3 = sub_1ADB06D10();
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

void *sub_1AD4B0CFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A058);
  v2 = *v0;
  v3 = sub_1ADB06D10();
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

        result = sub_1AD3C7528(v22, *(&v22 + 1));
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

void *sub_1AD4B0E80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B918);
  v2 = *v0;
  v3 = sub_1ADB06D10();
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

id sub_1AD4B0FCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B910);
  v2 = *v0;
  v3 = sub_1ADB06D10();
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
        sub_1AD3C94C4(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1AD41C9D0(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_1AD4B114C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B920);
  v2 = *v0;
  v3 = sub_1ADB06D10();
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

void *sub_1AD4B1298()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A040);
  v2 = *v0;
  v3 = sub_1ADB06D10();
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

        result = sub_1AD426AD0(v23, v24, v26);
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

id sub_1AD4B1444(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1ADB06D10();
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

void *sub_1AD4B15B4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1ADB06D10();
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

char *sub_1AD4B1714()
{
  v1 = v0;
  v31 = sub_1ADB061A0();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B908);
  v3 = *v0;
  v4 = sub_1ADB06D10();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

void *sub_1AD4B1984()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB599FF8);
  v2 = *v0;
  v3 = sub_1ADB06D10();
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

void sub_1AD4B1AEC(void *a1, uint64_t a2, char *a3)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 64);
  v6 = *a3;
  if (a1 && v3)
  {
    v5 = a1;
    sub_1AD3C5F14(v3);
    v3(&v6, v5);
    sub_1AD3C5FB8(v3);
  }

  else if (v4)
  {
    v4();
  }
}

char *sub_1AD4B1B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  (*(*(*(v10 + 88) - 8) + 56))(&v5[*(v10 + 128)], 1, 1, *(v10 + 88));
  v11 = *(*v5 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(&v5[v11], 1, 1, AssociatedTypeWitness);
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  *(v5 + 4) = a3;
  *(v5 + 5) = a4;

  v13 = sub_1ADB07180();
  MEMORY[0x1B26F6530](v13);

  MEMORY[0x1B26F6530](93, 0xE100000000000000);
  v14 = &v5[*(*v5 + 136)];
  *v14 = 91;
  *(v14 + 1) = 0xE100000000000000;
  return v5;
}

uint64_t sub_1AD4B1D44(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 72);

  os_unfair_lock_lock(v6 + 4);
  if (*(a2 + 80) != 2)
  {
    os_unfair_lock_unlock(v6 + 4);
    sub_1AD44C1D8(0);
  }

  swift_beginAccess();
  v7 = *(a2 + 112);
  v8 = *(v7 + 16);

  if (!v8)
  {
LABEL_92:

LABEL_93:
    os_unfair_lock_unlock(v6 + 4);
    sub_1AD44C1D8(0);
  }

  v10 = 0;
  v11 = 32;
  v12 = 1701602409;
  v13 = 0xE400000000000000;
  while (2)
  {
    if (v10 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_97;
    }

    v14 = *(v7 + v11);
    switch(a1)
    {
      case 4u:
        if (v14 != 4)
        {
          goto LABEL_8;
        }

        goto LABEL_86;
      case 5u:
        if (v14 == 5)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 6u:
        if (v14 == 6)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 7u:
        if (v14 == 7)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 8u:
        if (v14 == 8)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 9u:
        if (v14 == 9)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0xAu:
        if (v14 == 10)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0xBu:
        if (v14 == 11)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0xCu:
        if (v14 == 12)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0xDu:
        if (v14 == 13)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0xEu:
        if (v14 == 14)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0xFu:
        if (v14 == 15)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0x10u:
        if (v14 == 16)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0x11u:
        if (v14 == 17)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0x12u:
        if (v14 == 18)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0x13u:
        if (v14 == 19)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0x14u:
        if (v14 != 20)
        {
          goto LABEL_8;
        }

        goto LABEL_86;
      case 0x15u:
        if (v14 == 21)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0x16u:
        if (v14 == 22)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0x17u:
        if (v14 == 23)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0x18u:
        if (v14 == 24)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0x19u:
        if (v14 == 25)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      case 0x1Au:
        if (v14 == 26)
        {
          goto LABEL_86;
        }

        goto LABEL_8;
      default:
        if ((v14 - 4) < 0x17)
        {
          goto LABEL_8;
        }

        if (a1 > 1u)
        {
          if (a1 == 2)
          {
            v15 = 0x746361736E617274;
          }

          else
          {
            v15 = 0x6C69614664616572;
          }

          if (a1 == 2)
          {
            v16 = 0xEB00000000676E69;
          }

          else
          {
            v16 = 0xEB00000000657275;
          }
        }

        else
        {
          if (a1)
          {
            v15 = 0x676E696C6C6F70;
          }

          else
          {
            v15 = 1701602409;
          }

          if (a1)
          {
            v16 = 0xE700000000000000;
          }

          else
          {
            v16 = 0xE400000000000000;
          }
        }

        if (v14 == 2)
        {
          v17 = 0x746361736E617274;
        }

        else
        {
          v17 = 0x6C69614664616572;
        }

        if (v14 == 2)
        {
          v18 = 0xEB00000000676E69;
        }

        else
        {
          v18 = 0xEB00000000657275;
        }

        if (*(v7 + v11))
        {
          v12 = 0x676E696C6C6F70;
          v13 = 0xE700000000000000;
        }

        if (*(v7 + v11) <= 1u)
        {
          v19 = v12;
        }

        else
        {
          v19 = v17;
        }

        if (*(v7 + v11) <= 1u)
        {
          v20 = v13;
        }

        else
        {
          v20 = v18;
        }

        if (v15 != v19 || v16 != v20)
        {
          v21 = sub_1ADB06F50();

          v13 = 0xE400000000000000;
          v12 = 1701602409;
          if (v21)
          {
            goto LABEL_86;
          }

LABEL_8:
          ++v10;
          v11 += 24;
          if (v8 == v10)
          {
            goto LABEL_92;
          }

          continue;
        }

LABEL_86:

        v22 = *(a2 + 104);
        if (v10 < v22)
        {
          goto LABEL_93;
        }

        if ((v22 & 0x8000000000000000) != 0)
        {
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        v23 = *(a2 + 112);
        if (v22 >= *(v23 + 16))
        {
LABEL_98:
          __break(1u);
          return result;
        }

        v24 = *(v23 + 24 * v22 + 32);
        v25 = *(a2 + 96);
        if (v25 > 1000)
        {
          v25 = 0;
        }

        v26 = v25 + 1;
        *(a2 + 96) = v25 + 2;
        v27 = swift_allocObject();
        *(v27 + 16) = sub_1AD4B42F4;
        *(v27 + 24) = a3;
        v28 = swift_allocObject();
        *(v28 + 16) = sub_1AD4B42F4;
        *(v28 + 24) = a3;
        *(a2 + 80) = 1;
        *(a2 + 88) = v26;
        *&v39 = v26;
        BYTE8(v39) = v24;
        BYTE9(v39) = 27;
        BYTE10(v39) = a1;
        v40 = sub_1AD4B42FC;
        v41 = v27;
        v42 = 0u;
        v43 = 0u;
        v44 = sub_1AD4B48D4;
        v45 = v28;
        swift_retain_n();
        sub_1AD4A31F8(&v39);
        v29 = v26;
        v30 = v24;
        v31 = 27;
        v32 = a1;
        v33 = sub_1AD4B42FC;
        v34 = v27;
        v35 = 0u;
        v36 = 0u;
        v37 = sub_1AD4B48D4;
        v38 = v28;
        sub_1AD3D0E3C(&v29, qword_1EB59B928);
    }
  }
}

uint64_t *sub_1AD4B225C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59A810);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v3[9] = v11;
  v3[10] = 2;
  v3[12] = 0;
  v3[13] = 0;
  v3[11] = 0;
  v12 = *(v6 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A858);
  swift_getTupleTypeMetadata2();
  v3[14] = sub_1ADB06250();
  v3[15] = sub_1ADB06240();
  (*(*(v12 - 8) + 56))(v3 + *(*v3 + 176), 1, 1, v12);
  v13 = (v3 + *(*v3 + 184));
  *v13 = 0;
  v13[1] = 0;
  v14 = (v3 + *(*v3 + 192));
  *v14 = 0;
  v14[1] = 0;
  v15 = (v3 + *(*v3 + 200));
  *v15 = 0;
  v15[1] = 0;
  v16 = (v3 + *(*v3 + 208));
  *v16 = 0;
  v16[1] = 0;
  v17 = (v3 + *(*v3 + 216));
  *v17 = 0;
  v17[1] = 0;
  v3[2] = a1;
  v3[3] = v7;
  v3[4] = v8;
  v3[5] = v9;
  *(v3 + 48) = v10;
  if (v10 > 3)
  {

    if (v10 == 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = 5;
    }

    sub_1AD3DF24C(v7, v8, v9, v19);
    goto LABEL_10;
  }

  if ((v10 - 1) < 3)
  {
    v18 = objc_allocWithZone(PKSecureElementProvisioningState);

    v7 = [v18 init];
LABEL_10:
    v3[7] = v7;
    v3[8] = a3;
    return v3;
  }

  sub_1AD3DF24C(v7, v8, v9, 0);
  result = [v7 state];
  if (result)
  {
    v21 = result;
    sub_1AD3CC2E0(v7, v8, v9, 0);
    v7 = v21;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1AD4B2520(BOOL *a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = (v2 & 0xFE) == 2;
  v4 = (v2 & 0xFE) != 2;
  v5 = v2 & 1;
  if (v3)
  {
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
}

void *sub_1AD4B2544@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v6);
  if (!v2)
  {
    v5 = BYTE1(v6);
    *a1 = v6;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_1AD4B2594()
{
  result = qword_1EB59B448[0];
  if (!qword_1EB59B448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB59B448);
  }

  return result;
}

void sub_1AD4B25F8()
{
  swift_getTupleTypeMetadata2();
  if (v0 <= 0x3F)
  {
    sub_1AD4B29C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1AD4B2680(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = 8;
  if (((*(*(*(a3 + 16) - 8) + 80) + 1) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64) > 8)
  {
    v3 = ((*(*(*(a3 + 16) - 8) + 80) + 1) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1AD4B27D4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 80) + 1) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1AD4B29C8()
{
  if (!qword_1EB59B4D0[0])
  {
    sub_1AD3D3200(255, &qword_1EB599EB0);
    v0 = sub_1ADB06A20();
    if (!v1)
    {
      atomic_store(v0, qword_1EB59B4D0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11PassKitCore33ProvisioningOperationRunnerResultO(uint64_t a1)
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

uint64_t sub_1AD4B2B60()
{
  result = sub_1ADB06A20();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1AD4B2C98()
{
  result = sub_1ADB06A20();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1ADB06A20();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1AD4B2E5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[16])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  if (*a1 >= 2u && (v4 = (v3 & 0xFE) + 2147483646, (v4 & 0x7FFFFFFE) != 0))
  {
    return (v4 & 0x7FFFFFFE | v3 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AD4B2EB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1AD4B2EFC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

void *sub_1AD4B2F18(void *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_1AD4B2F54()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1ADB06A20();
    if (v1 <= 0x3F)
    {
      sub_1AD4B3460();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1AD4B300C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v5 + 84);
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 64);
  if (v7)
  {
    v12 = *(v5 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v11 + v10;
  v14 = v12 + 7;
  if (v9 < a2)
  {
    v15 = ((((((((v14 + ((v12 + v10 + ((v13 + ((v10 + 8) & ~v10)) & ~v10)) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v16 = a2 - v9;
    v17 = v15 & 0xFFFFFFF8;
    if ((v15 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = v16 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_26;
        }
      }
    }

    else if (v20)
    {
      v21 = *(a1 + v15);
      if (v21)
      {
LABEL_26:
        v22 = v21 - 1;
        if (v17)
        {
          v22 = 0;
          LODWORD(v17) = *a1;
        }

        return v9 + (v17 | v22) + 1;
      }
    }
  }

  v24 = ~v10;
  v25 = (a1 + v10 + 8) & ~v10;
  if (v7 >= 0x7FFFFFFE)
  {
    v26 = *(v6 + 48);

    return v26(v25);
  }

  v27 = (v13 + v25) & v24;
  if (v8 == v9)
  {
    if (v7 >= 2)
    {
      v29 = (*(v6 + 48))(v27);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *((v14 + ((v27 + v10 + v12) & v24)) & 0xFFFFFFFFFFFFFFF8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  if ((v28 + 1) >= 2)
  {
    return v28;
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_1AD4B3210(_DWORD *result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  v12 = v11 + v10;
  v13 = (v11 + v10 + ((v10 + 8) & ~v10)) & ~v10;
  if (!v7)
  {
    ++v11;
  }

  v14 = ((((((((v11 + 7 + ((v11 + v10 + v13) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v15 = a3 - v9;
    if (((((((((v11 + 7 + ((v11 + v10 + v13) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v5 = v17;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((v11 + 7 + ((v11 + v10 + v13) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a2 - v9;
    }

    else
    {
      v18 = 1;
    }

    if (((((((((v11 + 7 + ((v11 + v10 + v13) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v19 = ~v9 + a2;
      v20 = result;
      bzero(result, ((((((((v11 + 7 + ((v11 + v10 + v13) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v20;
      *v20 = v19;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v14) = v18;
      }

      else
      {
        *(result + v14) = v18;
      }
    }

    else if (v5)
    {
      *(result + v14) = v18;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v14) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_39;
    }

    *(result + v14) = 0;
  }

  else if (v5)
  {
    *(result + v14) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return result;
  }

LABEL_39:
  v21 = ~v10;
  result = ((result + v10 + 8) & ~v10);
  if (v7 < 0x7FFFFFFE)
  {
    result = ((result + v12) & v21);
    if (v8 != v9)
    {
      v23 = ((v11 + 7 + ((result + v10 + v11) & v21)) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v23 = 0;
        v23[1] = 0;
        *v23 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v23 = a2;
      }

      return result;
    }

    v22 = *(v6 + 56);
    a2 = (a2 + 1);
  }

  else
  {
    v22 = *(v6 + 56);
  }

  return v22(result, a2);
}

void sub_1AD4B3460()
{
  if (!qword_1EB59B8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59B8E0);
    v0 = sub_1ADB06A20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB59B8D8);
    }
  }
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t (*sub_1AD4B3790())()
{
  (*(v0 + 16))(&v2);
  *(swift_allocObject() + 16) = v2;
  return sub_1AD4B37F8;
}

uint64_t sub_1AD4B3800@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = (*(v1 + 16))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a1 = sub_1AD4B3868;
  a1[1] = result;
  return result;
}

uint64_t sub_1AD4B38A0(uint64_t a1, char a2)
{
  v3 = *(v2 + 32);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t sub_1AD4B38D8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t objectdestroy_129Tm()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AD4B3998(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AD4B3A24(uint64_t a1)
{
  v3 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A858);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, *(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8)) & 1;
}

BOOL sub_1AD4B3AB0(uint64_t a1)
{
  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A858);
  return *(a1 + *(swift_getTupleTypeMetadata2() + 48)) == v3;
}

uint64_t sub_1AD4B3B28()
{
  v1 = *(type metadata accessor for ProvisioningOperationComposer.PerformContext() - 8);
  v2 = *(v0 + 32);
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1AD4A4348(v2, v3);
}

uint64_t sub_1AD4B3B90()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1AD4A492C(*(v0 + 32), v0 + v1, *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1AD4B3C70(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for ProvisioningOperationComposer.PerformContext() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_1AD4B3D08()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ProvisioningOperationComposer.PerformContext();
  v4 = *(v2 - 8);
  result = v2 - 8;
  v5 = *(v4 + 64);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = (v0 + *(result + 64) + v6);
  if (*v7)
  {
    return (*v7)(v0 + ((v6 + v5 + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)), 0);
  }

  return result;
}

uint64_t sub_1AD4B3DE0()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for ProvisioningOperationComposer.PerformContext() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v5 = *(v0 + 32);
  v6 = *(v0 + ((*(*(v1 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1AD4A8C18(v5, v0 + v3, v0 + v4, v6, v1);
}

void sub_1AD4B3EE8()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for ProvisioningOperationComposer.PerformContext() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  sub_1AD4A8A3C(v4, v0 + v3, v5);
}

uint64_t sub_1AD4B4004(uint64_t a1)
{
  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A858);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, *(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8)) & 1;
}

uint64_t objectdestroy_166Tm()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ProvisioningOperationComposer.PerformContext();
  v3 = *(*(v2 - 1) + 80);
  v12 = *(*(v2 - 1) + 64);
  v11 = (v3 + 32) & ~v3;
  v4 = v0 + v11;
  v5 = *(v1 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v11 + v2[9], v1);
  v7 = v2[10];
  v8 = *(v5 + 48);
  if (!v8(v0 + v11 + v7, 1, v1))
  {
    v6(v4 + v7, v1);
  }

  v9 = v2[11];
  if (!v8(v4 + v9, 1, v1))
  {
    v6(v4 + v9, v1);
  }

  if (*(v4 + v2[12]))
  {
  }

  if (*(v4 + v2[13]))
  {
  }

  if (*(v4 + v2[14]))
  {
  }

  if (*(v4 + v2[15]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v11 + v12, v3 | 7);
}

uint64_t sub_1AD4B427C()
{
  v1 = type metadata accessor for ProvisioningOperationComposer.PerformContext();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 68) + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_1AD4B4328()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 72);
  v5[2] = *(v0 + 56);
  v5[3] = v3;
  v5[4] = *(v0 + 88);
  v5[0] = *(v0 + 24);
  v5[1] = v2;
  return sub_1AD4A405C(v1, v5);
}

uint64_t sub_1AD4B4370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB59B928);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD4B4410()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v2;
  v6[2] = *(v0 + 48);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v9 = *(v1 + 80);
  v7 = v3;
  v8 = v4;
  if (v3)
  {
    return v3(v6 + 8, 1);
  }

  return result;
}

uint64_t sub_1AD4B4470()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v2;
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v1 + 80);
  v10 = *(v1 + 64);
  v11 = v5;
  v8 = v3;
  v9 = v4;
  if (v3)
  {
    return v3(v7 + 8, 0);
  }

  return result;
}

uint64_t sub_1AD4B44C8()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 96);
  if (v1)
  {
    return v1(&v3, 0);
  }

  return result;
}

uint64_t sub_1AD4B4510()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 112);
  v3 = *(v0 + 40);
  v4 = *(v0 + 72);
  v6[2] = *(v0 + 56);
  v6[3] = v4;
  v6[4] = *(v0 + 88);
  v6[0] = *(v0 + 24);
  v6[1] = v3;
  return sub_1AD4A8B34(v1, v6, *(v0 + 104), v2);
}

uint64_t objectdestroy_141Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1AD4B45D0()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) invalidate];

  dispatch_group_leave(v1);
}

uint64_t objectdestroy_135Tm()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_219Tm(uint64_t a1)
{
  if (v1[4])
  {
  }

  if (v1[6])
  {
  }

  if (v1[8])
  {
  }

  if (v1[10])
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1AD4B46F0()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1AD4B4720()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AD4B4774(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59B9B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AppIntentUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppIntentUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppIntentUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AppIntentUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppIntentUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s11PassKitCore18AppIntentUtilitiesC23pkBillPayAmountTypeFrom4typeSo06PKBillijK0VSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001ADBA1330 == a2 || (sub_1ADB06F50() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x506D756D696E696DLL && a2 == 0xEE00746E656D7961 || (sub_1ADB06F50() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x796150726568746FLL && a2 == 0xEC000000746E656DLL)
  {
    return 3;
  }

  if (sub_1ADB06F50())
  {
    return 3;
  }

  return 0;
}

unint64_t sub_1AD4B4CA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A020);
    v3 = sub_1ADB06D30();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AD4B5360(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1AD425BEC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1AD41C9D0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id _s11PassKitCore18AppIntentUtilitiesC9associate14searchableItem013withEntityForA0ySo012CSSearchableI0C_So6PKPassCtFZ_0(void *a1, void *a2)
{
  v3 = [a1 attributeSet];
  result = [a2 uniqueID];
  if (result)
  {
    v5 = result;
    sub_1ADB063B0();

    v6 = [a2 localizedDescription];
    sub_1ADB063B0();

    sub_1AD499C10();
    sub_1ADB06AA0();

    sub_1AD4B4CA0(MEMORY[0x1E69E7CC0]);
    sub_1ADB06970();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s11PassKitCore18AppIntentUtilitiesC9associate14searchableItem20withEntityForAccountySo012CSSearchableI0C_So9PKAccountCtFZ_0(void *a1, id a2)
{
  if ([a2 type] == 4)
  {
    v4 = [a1 attributeSet];
    v5 = [a2 accountIdentifier];
    if (v5)
    {
      v6 = v5;
      sub_1ADB063B0();

      v7 = [a1 attributeSet];
      v8 = [v7 displayName];

      if (v8)
      {
        sub_1ADB063B0();
      }

      sub_1AD4B4CA0(MEMORY[0x1E69E7CC0]);
      sub_1ADB06970();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1EB598178 != -1)
    {
      swift_once();
    }

    v9 = sub_1ADB05FA0();
    __swift_project_value_buffer(v9, qword_1EB59AA90);
    oslog = sub_1ADB05F80();
    v10 = sub_1ADB06850();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1AD337000, oslog, v10, "Wrong account type to associate with WalletAccountEntity", v11, 2u);
      MEMORY[0x1B26F9F20](v11, -1, -1);
    }
  }
}

id _s11PassKitCore18AppIntentUtilitiesC9associate14searchableItem24withEntityForTransactionySo012CSSearchableI0C_So09PKPaymentM0CtFZ_0(void *a1, void *a2)
{
  v4 = [objc_opt_self() presentationInformationForTransaction:a2 transactionSource:0 secondaryTransactionSource:0 familyMember:0 account:0 deviceName:0 context:2];
  v5 = [a1 attributeSet];
  result = [a2 identifier];
  if (result)
  {
    v7 = result;
    sub_1ADB063B0();

    v8 = [v4 primaryString];
    if (v8)
    {
      v9 = v8;
      sub_1ADB063B0();
    }

    sub_1AD4B4CA0(MEMORY[0x1E69E7CC0]);
    sub_1ADB06970();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AD4B5360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5989C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD4B53D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1ADB063B0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4(v5, v7, a3);
}

__n128 ProvisioningStepEnable.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a2[1].n128_u64[0];
  v8 = a2[1].n128_u8[8];
  *(v6 + 16) = a1;
  result = *a2;
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = a3;
  return result;
}

uint64_t ProvisioningStepEnable.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t ProvisioningStepEnable.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t ProvisioningStepEnable.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_1AD4B556C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningStepEnable();
  v8 = swift_allocObject();
  v9 = a2[1].n128_u64[0];
  v10 = a2[1].n128_u8[8];
  *(v8 + 16) = a1;
  result = *a2;
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 56) = a3;
  *a4 = v8;
  return result;
}

uint64_t sub_1AD4B560C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a7;
    v17[4] = a8;

    sub_1AD4B58B8(a2, a3, 0, a4, a5, a6, sub_1AD4B78E8, v17);
  }

  return result;
}

void sub_1AD4B570C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [*(v4 + 56) sid];
  if (!v8)
  {
    sub_1ADB063B0();
    v8 = sub_1ADB06370();
  }

  v9 = *(v4 + 16);
  swift_beginAccess();
  v10 = [objc_allocWithZone(PKProvisioningUtility) initWithDestinationWebService:*(v9 + 72) managingWebService:*(v9 + 48)];
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a3;
  aBlock[4] = sub_1AD4B78B0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD4B7970;
  aBlock[3] = &block_descriptor_39_0;
  v13 = _Block_copy(aBlock);

  [v10 requestProvisioning:a1 sid:v8 completion:v13];
  _Block_release(v13);
}

void sub_1AD4B58B8(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = a1;
  [a1 setEligibilityResponse_];
  v101 = v13;
  if (a2)
  {
    v107 = a6;
    v14 = a2;
    v15 = [v14 paymentSetupFieldWithIdentifier_];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 submissionString];

      if (!v17)
      {
        sub_1ADB063B0();
        v17 = sub_1ADB06370();
      }
    }

    else
    {
      v17 = 0;
    }

    [v13 setCardSecurityCode_];

    v18 = [v14 paymentSetupFieldWithIdentifier_];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 submissionString];

      if (!v20)
      {
        sub_1ADB063B0();
        v20 = sub_1ADB06370();
      }
    }

    else
    {
      v20 = 0;
    }

    [v13 setCardholderName_];

    v21 = [v14 submissionValuesForDestination_];
    if (v21)
    {
      v22 = v21;
      sub_1ADB06280();

      v23 = sub_1ADB06260();
    }

    else
    {
      v23 = 0;
    }

    [v13 setDynamicFieldParameters_];

    v24 = [v14 secureSubmissionValuesForDestination_];
    if (v24)
    {
      v25 = v24;
      sub_1ADB06280();

      v26 = sub_1ADB06260();
    }

    else
    {
      v26 = 0;
    }

    [v13 setEncryptedDynamicFieldParameters_];

    v27 = [v14 encryptedPerFieldSubmissionValuesForDestination_];
    if (v27)
    {
      sub_1AD3D3200(0, &qword_1EB59BA48);
      sub_1ADB06280();

      v27 = sub_1ADB06260();
    }

    [v13 setEncryptedPerFieldDynamicFieldParameters_];

    v28 = [v14 paymentSetupFieldWithIdentifier_];
    if (v28)
    {

      [v13 setTapToProvisionData_];
    }
  }

  if (a3)
  {
    v29 = a3;
    v30 = [v29 activationData];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1ADB05D70();
      v34 = v33;

      v35 = sub_1ADB05D50();
      [v13 setActivationData_];

      sub_1AD3C757C(v32, v34);
    }
  }

  v36 = v9[48];
  v37 = *(v9 + 3);
  if (v36)
  {
    v38 = 0;
  }

  else
  {
    v39 = v37;
    v38 = v37;
  }

  aBlock = v37;
  v110 = *(v9 + 2);
  LOBYTE(v111) = v36;
  ProvisioningCredentialsConfiguration.Credential.transferType.getter(v114);
  if (v114[0] == 2)
  {
    goto LABEL_29;
  }

  if ((v114[0] & 1) == 0)
  {
    goto LABEL_29;
  }

  if (!v38)
  {
    goto LABEL_29;
  }

  v42 = [v38 remoteCredential];
  if (!v42)
  {
    goto LABEL_29;
  }

  v43 = v42;
  v44 = [v42 transferableFromDevices];
  if (!v44)
  {

    goto LABEL_29;
  }

  v45 = v44;
  sub_1AD3D3200(0, qword_1EB59C5A0);
  v46 = sub_1ADB06610();

  if (v46 >> 62)
  {
LABEL_103:
    if (sub_1ADB06D00())
    {
      goto LABEL_39;
    }

LABEL_104:

    goto LABEL_29;
  }

  if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_104;
  }

LABEL_39:
  if ((v46 & 0xC000000000000001) != 0)
  {
    v47 = MEMORY[0x1B26F6CC0](0, v46);
  }

  else
  {
    if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_107;
    }

    v47 = *(v46 + 32);
  }

  v48 = v47;

  v49 = [v48 identifier];
  if (!v49)
  {
    sub_1ADB063B0();
    v49 = sub_1ADB06370();
  }

  [v13 setTransferFromDevice_];

  [v13 setRemoveFromSourceDevice_];
LABEL_29:
  v40 = *(v9 + 3);
  v41 = v9[48];
  if (v41 > 2)
  {
    if (v41 - 4 < 2)
    {
      goto LABEL_48;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_62;
    }

    goto LABEL_47;
  }

  if (!v9[48])
  {
    if ([*(v9 + 3) isShareableCredential] & 1) != 0 || (objc_msgSend(v40, sel_isIdentityCredential))
    {
      goto LABEL_62;
    }

    v54 = [v40 accountCredential];
    if (v54)
    {
      v55 = v54;
      v56 = [v54 sharingInstanceIdentifier];

      if (v56)
      {

        goto LABEL_62;
      }
    }

LABEL_47:
    v41 = v9[48];
    v40 = *(v9 + 3);
    goto LABEL_48;
  }

  if (v41 != 1)
  {
    goto LABEL_62;
  }

LABEL_48:
  if (v41 - 2 < 4)
  {
LABEL_49:
    [v13 setStyle_];
    goto LABEL_63;
  }

  if (v41)
  {
    v53 = v40;
    goto LABEL_61;
  }

  v50 = [v40 issuerProvisioningExtensionCredential];
  if (!v50)
  {
    goto LABEL_49;
  }

  v51 = v50;
  v52 = [v50 entry];

  if (!v52)
  {
LABEL_107:
    __break(1u);
    return;
  }

  v53 = [v52 addRequestConfiguration];

  if (!v53)
  {
    goto LABEL_49;
  }

LABEL_61:
  v57 = [v53 style];

  if (v57 != 1)
  {
    goto LABEL_49;
  }

LABEL_62:
  [v13 setStyle_];
  [v13 setDisableDeviceScore_];
LABEL_63:
  v58 = *(v9 + 2);
  if (*(v58 + 33) != -16384)
  {
    goto LABEL_75;
  }

  v59 = *(v9 + 3);
  v60 = v9[48];
  if (v60 > 2)
  {
    if (v60 == 3)
    {
      objc_opt_self();
      v61 = swift_dynamicCastObjCClass() == 0;
      goto LABEL_76;
    }

    goto LABEL_69;
  }

  if (!v9[48])
  {
    if ([*(v9 + 3) isShareableCredential] & 1) != 0 || (objc_msgSend(v59, sel_isIdentityCredential))
    {
      goto LABEL_75;
    }

    v62 = [v59 accountCredential];
    if (!v62)
    {
      goto LABEL_69;
    }

    v63 = v62;
    v64 = [v62 sharingInstanceIdentifier];

    if (!v64)
    {
      goto LABEL_69;
    }

LABEL_75:
    v61 = 0;
    goto LABEL_76;
  }

  if (v60 != 1)
  {
    goto LABEL_75;
  }

LABEL_69:
  v61 = 1;
LABEL_76:
  [v13 setSendReducedDeviceData_];
  if (*(v58 + 32) == 1)
  {
    v65 = 0;
  }

  else
  {
    v66 = *(v58 + 33);
    v67 = v66 >> 14;
    v68 = (v66 >> 14) - 2;
    v69 = v66 ^ 1;
    v65 = (v66 & 0xFE) == 0;
    if (!v67)
    {
      v65 = v69;
    }

    if (v68 < 2)
    {
      v65 = 0;
    }
  }

  [v13 setIncludeExternalDestinationDevices_];
  v70 = *(v9 + 7);
  if ([v70 hasNonce])
  {
    v71 = [v70 useNonce];
    [v13 setNonce_];
  }

  v72 = [objc_allocWithZone(PKAsyncUnaryOperationComposer) init];
  v104 = swift_allocObject();
  *(v104 + 16) = 0;
  swift_beginAccess();
  v103 = *(v58 + 64);
  v73 = *(v58 + 72);
  v102 = *(v58 + 80);
  v106 = v102;
  v105 = v73;
  v74 = [v13 encryptedPerFieldDynamicFieldParameters];
  v97 = v38;
  v108 = v72;
  if (v74)
  {
    v75 = v74;
    sub_1AD3D3200(0, &qword_1EB59BA48);
    v43 = sub_1ADB06280();
  }

  else
  {
    v43 = sub_1AD426614(MEMORY[0x1E69E7CC0]);
  }

  v76 = 0;
  v13 = (v43 + 64);
  v77 = 1 << *(v43 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v46 = v78 & *(v43 + 64);
  v38 = ((v77 + 63) >> 6);
  if (v46)
  {
    while (1)
    {
      v79 = v76;
LABEL_95:
      v80 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v81 = *(*(v43 + 56) + ((v79 << 9) | (8 * v80)));
      v82 = swift_allocObject();
      *(v82 + 16) = v103;
      v9 = v105;
      *(v82 + 24) = v105;
      *(v82 + 32) = v102;
      *(v82 + 40) = v81;
      *(v82 + 48) = v104;
      v112 = sub_1AD4B7838;
      v113 = v82;
      aBlock = MEMORY[0x1E69E9820];
      *&v110 = 1107296256;
      *(&v110 + 1) = sub_1AD433EF4;
      v111 = &block_descriptor_26;
      v83 = _Block_copy(&aBlock);
      v84 = v81;
      v85 = v105;
      v86 = v106;
      v87 = v84;

      [v72 addOperation_];
      _Block_release(v83);

      if (!v46)
      {
        goto LABEL_91;
      }
    }
  }

  while (1)
  {
LABEL_91:
    v79 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      __break(1u);
      goto LABEL_103;
    }

    if (v79 >= v38)
    {
      break;
    }

    v46 = *(v13 + v79);
    ++v76;
    if (v46)
    {
      v76 = v79;
      goto LABEL_95;
    }
  }

  if (a5)
  {
    v88 = swift_allocObject();
    *(v88 + 16) = a5;
    *(v88 + 24) = v101;
    v112 = sub_1AD4B788C;
    v113 = v88;
    aBlock = MEMORY[0x1E69E9820];
    *&v110 = 1107296256;
    *(&v110 + 1) = sub_1AD433EF4;
    v111 = &block_descriptor_18_0;
    v89 = _Block_copy(&aBlock);
    v90 = a5;
    v91 = v101;

    [v108 addOperation_];
    _Block_release(v89);
  }

  v92 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v93 = swift_allocObject();
  v93[2] = v104;
  v93[3] = a7;
  v93[4] = a8;
  v93[5] = v101;
  v112 = sub_1AD4B7880;
  v113 = v93;
  aBlock = MEMORY[0x1E69E9820];
  *&v110 = 1107296256;
  *(&v110 + 1) = sub_1AD434CF8;
  v111 = &block_descriptor_12_3;
  v94 = _Block_copy(&aBlock);

  v95 = v101;

  v96 = [v108 evaluateWithInput:v92 completion:v94];
  _Block_release(v94);

  swift_unknownObjectRelease();
}

void sub_1AD4B65E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    v11[2] = a5;
    v11[3] = a3;
    v11[4] = a4;
    v11[5] = a2;
    v14[4] = sub_1AD4B78DC;
    v14[5] = v11;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1AD471E08;
    v14[3] = &block_descriptor_58;
    v12 = _Block_copy(v14);

    v13 = a2;

    [v10 backgroundProvisionInProgressForFeature:4 withCompletion:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AD4B6718(char a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
LABEL_9:
    a3(a5, a1 & 1);
    return;
  }

  v22 = a3;
  v9 = PKPassKitBundle();
  if (v9)
  {
    v10 = v9;
    v11 = sub_1ADB06370();
    v12 = sub_1ADB06370();
    v13 = sub_1ADB06370();
    v5 = [v10 localizedStringForKey:v11 value:v12 table:v13];

    if (!v5)
    {
      sub_1ADB063B0();
      v5 = sub_1ADB06370();
    }

    v14 = PKPassKitBundle();
    if (v14)
    {
      v15 = v14;
      v16 = sub_1ADB06370();
      v17 = sub_1ADB06370();
      v18 = sub_1ADB06370();
      v19 = [v15 localizedStringForKey:v16 value:v17 table:v18];

      if (!v19)
      {
        sub_1ADB063B0();
        v19 = sub_1ADB06370();
      }

      v20 = [objc_opt_self() errorWithTitle:v5 message:v19 severity:5];
      swift_beginAccess();
      v21 = *(a2 + 16);
      *(a2 + 16) = v20;

      a3 = v22;
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1AD4B6960(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (*(Strong + 48))
    {
LABEL_3:
      v14 = 0;
LABEL_4:
      v15 = *(v13 + 16);
      swift_beginAccess();
      v16 = [objc_allocWithZone(PKPaymentCloudStoreZoneCreationManager) initWithWebService_];
      v17 = swift_allocObject();
      *(v17 + 16) = v14;
      *(v17 + 24) = a7;
      *(v17 + 32) = a3;
      *(v17 + 40) = a4;
      *(v17 + 48) = a2;
      v25[4] = sub_1AD4B78CC;
      v25[5] = v17;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 1107296256;
      v25[2] = sub_1AD471E08;
      v25[3] = &block_descriptor_52;
      v18 = _Block_copy(v25);

      v19 = a2;

      [v16 triggerCloudStoreZoneCreationIfNeededForEligibilityResponse:a6 completion:v18];
      _Block_release(v18);

      return;
    }

    v20 = *(Strong + 24);
    v21 = *(Strong + 32);
    v22 = *(Strong + 40);
    v23 = v20;
    if ([v23 isAppleBalanceCredential])
    {
      sub_1AD3CC2E0(v20, v21, v22, 0);
    }

    else
    {
      v24 = [v23 credentialType];
      sub_1AD3CC2E0(v20, v21, v22, 0);
      if (v24 != 135)
      {
        goto LABEL_3;
      }
    }

    if (*(v13 + 48))
    {
      v14 = 1;
    }

    else
    {
      v14 = [*(v13 + 24) isRemoteCredential] ^ 1;
    }

    goto LABEL_4;
  }
}

uint64_t sub_1AD4B6B88(char a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, BOOL), uint64_t a5, uint64_t a6)
{
  v8 = a2 ^ 1 | a1;
  if ((v8 & 1) == 0)
  {
    v10 = [objc_opt_self() errorWithCommonType:1 severity:5];
    swift_beginAccess();
    v11 = *(a3 + 16);
    *(a3 + 16) = v10;

    swift_beginAccess();
    v12 = *(a3 + 16);
    if (v12)
    {
      v13 = v12;
      v14 = sub_1ADB06370();
      [v13 addInternalDebugDescription_];
    }
  }

  return a4(a6, (v8 & 1) == 0);
}

void sub_1AD4B6C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6, void (*a7)(uint64_t))
{
  v10 = swift_beginAccess();
  v11 = *(a4 + 16);
  if (v11)
  {
    v12 = v11;
    a5(v11, 1);
  }

  else
  {
    a7(v10);
  }
}

void sub_1AD4B6D28(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  if (a2)
  {
    a4(a1, 1);
  }

  else
  {
    sub_1AD4B570C(a1, a4, a5);
  }
}

void sub_1AD4B6D6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9)
{
  v14 = swift_allocObject();
  v14[2] = a8;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a2;
  v14[6] = a9;
  v18[4] = sub_1AD4B78A0;
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1AD4B7970;
  v18[3] = &block_descriptor_30_2;
  v15 = _Block_copy(v18);
  v16 = a8;

  v17 = a2;

  [a6 paymentProvisioningNonceOfType:0 completion:v15];
  _Block_release(v15);
}

uint64_t sub_1AD4B6E88(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 && (v12 = [a1 nonce]) != 0 && (v13 = v12, v14 = objc_msgSend(v12, sel_pk_decodeHexadecimal), v13, v14))
  {
    v15 = sub_1ADB05D70();
    v17 = v16;

    v18 = sub_1ADB05D50();
    [a3 setNonce_];

    a4(a6, 0);

    return sub_1AD3C757C(v15, v17);
  }

  else
  {
    if (a2)
    {
      v20 = sub_1ADB05CB0();
    }

    else
    {
      v20 = 0;
    }

    v21 = [objc_opt_self() errorWithUnderlyingError:v20 defaultSeverity:4];

    swift_beginAccess();
    v22 = *(a7 + 16);
    *(a7 + 16) = v21;

    swift_beginAccess();
    v23 = *(a7 + 16);
    if (v23)
    {
      v24 = v23;
      v25 = sub_1ADB06370();
      [v24 addInternalDebugDescription_];
    }

    return a4(a6, 1);
  }
}

void sub_1AD4B7074(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = swift_allocObject();
  v11[2] = a6;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a2;
  v15[4] = sub_1AD4B7894;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1AD4B53D0;
  v15[3] = &block_descriptor_24_4;
  v12 = _Block_copy(v15);
  v13 = a6;

  v14 = a2;

  [a5 waitForAssessmentWithTimeout:5 startTimeoutFromAssessmentStart:1 continueBlock:v12];
  _Block_release(v12);
}

uint64_t sub_1AD4B717C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, void), uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v10 = sub_1ADB06370();
  }

  else
  {
    v10 = 0;
  }

  [a4 setOdiAssessment_];

  return a5(a7, 0);
}

void sub_1AD4B71F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6, void *a7)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  if (v10)
  {
    v11 = v10;
    a5(v10, 1);
  }

  else
  {
    a5(a7, 0);
  }
}

uint64_t sub_1AD4B727C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v8 = sub_1ADB06040();
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1ADB06060();
  v11 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v14 = sub_1ADB068B0();
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v17 = v22;
  v16[4] = a2;
  v16[5] = v17;
  v16[6] = a5;
  aBlock[4] = sub_1AD4B78BC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_46_0;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = a2;

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD3D76F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD3D7750();
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v13, v10, v18);
  _Block_release(v18);

  (*(v23 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v24);
}

uint64_t sub_1AD4B758C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 56);
    if (a2)
    {
      v9 = v8;
      v10 = [a2 nonce];
      if (v10)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = v8;
    }

    v10 = 0;
LABEL_7:
    [v8 setNonce_];

    if (a2)
    {
      if (!a3)
      {
        v12 = a2;
        v13 = a2;
        v14 = 0;
LABEL_13:
        a4(v13, v14);
      }
    }

    else if (!a3)
    {
      v15 = 0;
      goto LABEL_12;
    }

    v15 = sub_1ADB05CB0();
LABEL_12:
    v16 = [objc_opt_self() errorWithUnderlyingError:v15 defaultSeverity:5];

    v17 = sub_1ADB06370();
    [v16 addInternalDebugDescription_];

    v12 = v16;
    v13 = v16;
    v14 = 1;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1AD4B771C(char a1, uint64_t (*a2)(void))
{
  if ((a1 & 1) != 0 && !*(v2 + 48))
  {
    v3 = a2;
    v4 = [*(v2 + 24) appleBalanceCredential];
    a2 = v3;
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      swift_beginAccess();
      [*(v6 + 16) triggerWatchProvisioningForAppleBalanceCredential_];

      a2 = v3;
    }
  }

  return a2();
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AD4B78E8(uint64_t a1, char a2)
{
  v3 = *(v2 + 24);
  if (a2)
  {
    v3(a1, 1);
  }

  else
  {
    sub_1AD4B570C(a1, v3, *(v2 + 32));
  }
}

id ProvisioningCarKeyStepFindSource.__allocating_init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  *&v7[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_continuityManager] = 0;
  v10 = &v7[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_completion];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v7[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_context] = a1;
  v11 = &v7[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_credential];
  *v11 = *a2;
  *(v11 + 2) = v8;
  v11[24] = v9;
  *&v7[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_sharedState] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  return objc_msgSendSuper2(&v13, sel_init);
}

id ProvisioningCarKeyStepFindSource.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *&v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_continuityManager] = 0;
  v5 = &v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_completion];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_context] = a1;
  LOBYTE(v5) = *(a2 + 24);
  v6 = &v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_credential];
  *v6 = *a2;
  *(v6 + 2) = v4;
  v6[24] = v5;
  *&v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_sharedState] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for ProvisioningCarKeyStepFindSource();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1AD4B7AD0()
{
  v1 = 0xD000000000000036;
  v2 = v0 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_credential;
  if (*(v0 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_credential + 24))
  {
    return 0xD00000000000003ALL;
  }

  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = [*v2 underlyingPaymentPass];
  if (!v7)
  {
    sub_1AD3CC2E0(v4, v5, v6, 0);
    return 0xD00000000000003ALL;
  }

  v8 = v7;
  v9 = [objc_opt_self() isOwnerPass_];
  sub_1AD3CC2E0(v4, v5, v6, 0);

  if (!v9)
  {
    return 0xD00000000000003ALL;
  }

  if (v9 == 1)
  {
    return v1;
  }

  if (v9 == 2)
  {
    return 0xD000000000000037;
  }

  result = sub_1ADB06CE0();
  __break(1u);
  return result;
}

void sub_1AD4B7C24()
{
  v1 = PKPassKitBundle();
  if (!v1)
  {
    __break(1u);
LABEL_9:

    __break(1u);
    return;
  }

  v2 = v1;
  v3 = sub_1ADB06370();
  v4 = sub_1ADB06370();
  v5 = sub_1ADB06370();
  v0 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  if (!v0)
  {
    sub_1ADB063B0();
    v0 = sub_1ADB06370();
  }

  sub_1AD4B7AD0();
  v6 = PKPassKitBundle();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = sub_1ADB06370();

  v9 = sub_1ADB06370();
  v10 = sub_1ADB06370();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  if (!v11)
  {
    sub_1ADB063B0();
    v11 = sub_1ADB06370();
  }

  [objc_opt_self() errorWithTitle:v0 message:v11 severity:4];
}

id ProvisioningCarKeyStepFindSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningCarKeyStepFindSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningCarKeyStepFindSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AD4B7F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  Source = type metadata accessor for ProvisioningCarKeyStepFindSource();
  v9 = objc_allocWithZone(Source);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  *&v9[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_continuityManager] = 0;
  v12 = &v9[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_completion];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v9[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_context] = a1;
  v13 = &v9[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_credential];
  *v13 = *a2;
  *(v13 + 2) = v10;
  v13[24] = v11;
  *&v9[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_sharedState] = a3;
  v15.receiver = v9;
  v15.super_class = Source;
  result = objc_msgSendSuper2(&v15, sel_init);
  *a4 = result;
  return result;
}

uint64_t sub_1AD4B8024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *v3;
  v6 = OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_continuityManager;
  v7 = *(*v3 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_continuityManager);
  if (v7)
  {
    v8 = v7;
    sub_1AD430C48();

    v7 = *(v5 + v6);
  }

  *(v5 + v6) = 0;

  return a3();
}

uint64_t ProvisioningCarKeyStepFindSource.terminateOperation(success:output:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_continuityManager;
  v6 = *(v3 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_continuityManager);
  if (v6)
  {
    v7 = v6;
    sub_1AD430C48();

    v6 = *(v3 + v5);
  }

  *(v3 + v5) = 0;

  return a3();
}

double sub_1AD4B8128@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

double static ProvisioningCarKeyStepFindSource.unarchive(outputData:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
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

uint64_t sub_1AD4B8170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AD4B81B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AD4B8264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AD4B82A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AD4B82EC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 33) = a2;
  return result;
}

id sub_1AD4B8324()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_context);
  if (*(v1 + 40))
  {
    return 0;
  }

  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  swift_beginAccess();
  if (*(v1 + 64) != 1 || *(v0 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_credential + 24))
  {
    return 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_credential);
  v5 = v2;
  v6 = v3;
  v7 = [v4 remoteCredential];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 paymentPass];
  if (!v9)
  {

LABEL_11:
    return 0;
  }

  v10 = v9;
  result = [v6 targetDevice];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  if ([result respondsToSelector_])
  {
    v13 = v6;
    v14 = [v10 uniqueID];
    if (v14)
    {
      v15 = v14;
      sub_1ADB063B0();

      v16 = sub_1ADB06370();
    }

    else
    {
      v16 = 0;
    }

    v17 = [v12 paymentWebService:v13 passWithUniqueID:v16];
    swift_unknownObjectRelease();

    if (v17)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_1AD4B8534(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    aBlock[4] = sub_1AD4B9D44;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD3D96E8;
    aBlock[3] = &block_descriptor_23_2;
    v9 = _Block_copy(aBlock);
    v10 = a1;
    v11 = a3;

    [v7 bootstrapSetupAssistantProximityChannelWithTemplateSession:v10 completion:v9];
    _Block_release(v9);
  }

  else
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v15 = sub_1ADB05FA0();
    __swift_project_value_buffer(v15, qword_1EB59AB68);

    v16 = a2;
    v17 = sub_1ADB05F80();
    v18 = sub_1ADB06860();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_1AD3CA88C(a4, a5, aBlock);
      *(v19 + 12) = 2080;
      aBlock[6] = a2;
      v21 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BA78);
      v22 = sub_1ADB06420();
      v24 = sub_1AD3CA88C(v22, v23, aBlock);

      *(v19 + 14) = v24;
      _os_log_impl(&dword_1AD337000, v17, v18, "[%s] Failed to create template session with error: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26F9F20](v20, -1, -1);
      MEMORY[0x1B26F9F20](v19, -1, -1);
    }

    sub_1AD4B87DC(0);
  }
}

void sub_1AD4B87DC(char a1)
{
  v2 = v1;
  v4 = [*(v1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_sharedState) sid];
  v5 = sub_1ADB063B0();
  v7 = v6;

  sub_1AD3DAB68();

  v8 = sub_1ADB068B0();
  v9 = objc_allocWithZone(type metadata accessor for ProvisioningContinuityCarClientManager());
  v10 = sub_1AD432424(v5, v7, v8);
  if ((a1 & 1) == 0)
  {
    v13 = *(v2 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_context);
    if ((*(v13 + 33) & 0xC000) != 0x8000)
    {
      v12 = 0;
      v11 = 1;
      goto LABEL_11;
    }

    v14 = v10;
    v15 = *(v13 + 48);
    v16 = *(v13 + 56);
    v17 = v15;
    v18 = [v17 targetDevice];
    if (v18)
    {
      v19 = v18;

      v16 = [v19 deviceRegion];
      swift_unknownObjectRelease();
      v20 = [*(v13 + 48) context];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 configuration];

        if (v22)
        {
          v23 = [v22 provisioningProximityVerificationInSetupAssistantEnabledForRegion_];

          v11 = 2;
          if (!v23)
          {
            v11 = 0;
          }

          v12 = v23 ^ 1;
          v10 = v14;
          goto LABEL_11;
        }

LABEL_16:

        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v11 = 0;
  v12 = 1;
  *(*&v10[OBJC_IVAR____TtC11PassKitCore38ProvisioningContinuityCarClientManager_coordinator] + 32) = 1;
LABEL_11:
  v24 = &v10[OBJC_IVAR____TtC11PassKitCore38ProvisioningContinuityCarClientManager_proximityVerificationType];
  *v24 = v11;
  v24[8] = v12;
  v25 = *(v2 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_continuityManager);
  *(v2 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_continuityManager) = v10;
  v26 = v10;

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = v5;
  v28[4] = v7;
  v28[5] = v26;
  v29 = v26;

  sub_1AD432550(sub_1AD4B9D6C, v28);
}

void sub_1AD4B8A84(unint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a2)
    {
      sub_1AD4B7C24();
      v14 = v13;
      sub_1AD4B9D7C();
      v15 = swift_allocError();
      *v16 = a1;
      sub_1AD4335B0(a1);
      v17 = sub_1ADB05CB0();

      [v14 setUnderlyingError_];
      v33 = v14;
      v34 = 0;
      v35 = 0;
      v36 = 256;
      v18 = v14;
      sub_1AD4B8DFC(&v33);
    }

    else
    {

      if (PKSharingForceSilentAuth())
      {
        if (qword_1EB5981C0 != -1)
        {
          swift_once();
        }

        v19 = sub_1ADB05FA0();
        __swift_project_value_buffer(v19, qword_1EB59AB68);

        v20 = sub_1ADB05F80();
        v21 = sub_1ADB06860();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *&v33 = v23;
          *v22 = 136315138;
          *(v22 + 4) = sub_1AD3CA88C(a4, a5, &v33);
          _os_log_impl(&dword_1AD337000, v20, v21, "[%s] Forcing silent auth", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v23);
          MEMORY[0x1B26F9F20](v23, -1, -1);
          MEMORY[0x1B26F9F20](v22, -1, -1);
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1B26F6CC0](0, a1);
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v24 = *(a1 + 32);
        }

        v25 = v24;
        sub_1AD4B9DDC(a1, 0);
        v26 = [v25 uniqueID];
        sub_1ADB063B0();

        v27 = sub_1AD430AA0();

        if (v27)
        {
          sub_1AD432C88(1, 0, 1);
          *&v33 = v25;
          *(&v33 + 1) = v27;
          v34 = 0;
          v35 = 0;
          v36 = 1;
          v28 = v25;
          v29 = v27;
          sub_1AD4B8DFC(&v33);
        }

        else
        {
          sub_1AD4B7C24();
          v33 = v31;
          v34 = 0;
          v35 = 0;
          v36 = 256;
          v32 = v31;
          sub_1AD4B8DFC(&v33);
        }
      }

      else
      {
        *&v33 = a1;
        *(&v33 + 1) = a6;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v30 = a6;
        sub_1AD4B8DFC(&v33);
      }
    }

    sub_1AD4B9DD0(v33, *(&v33 + 1), v34, v35, v36, SHIBYTE(v36));
  }
}

uint64_t sub_1AD4B8DFC(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1ADB06040();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = sub_1ADB06060();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = a1[1];
  v22 = *a1;
  v23 = v12;
  v24 = *(a1 + 16);
  sub_1AD3DAB68();
  v13 = sub_1ADB068B0();
  v14 = swift_allocObject();
  v15 = v23;
  *(v14 + 24) = v22;
  *(v14 + 16) = v2;
  *(v14 + 40) = v15;
  *(v14 + 56) = v24;
  aBlock[4] = sub_1AD4B9DE8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_35_0;
  v16 = _Block_copy(aBlock);
  v17 = v2;
  sub_1AD4B9DF4(&v22, v20);

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD3D76F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD3D7750();
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v11, v7, v16);
  _Block_release(v16);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1AD4B90B4(uint64_t result, uint64_t a2)
{
  v2 = (result + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_completion);
  v3 = *(result + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_completion);
  if (v3)
  {
    *v2 = 0;
    v2[1] = 0;
    v4 = *(a2 + 16);
    v5[0] = *a2;
    v5[1] = v4;
    v6 = *(a2 + 32);
    v3(v5);
    return sub_1AD3C5FB8(v3);
  }

  return result;
}

void sub_1AD4B911C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1ADB05E30();
  v92 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A0D8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v90 - v15;
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  v93 = a3;
  *(v17 + 4) = a4;
  v18 = *&a1[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_sharedState];

  v94 = a4;

  v19 = [v18 sid];
  v20 = sub_1ADB063B0();
  v22 = v21;

  if (a1[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_credential + 24] || (v31 = [*&a1[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_credential] localAppletSubcredentialPassCredential]) == 0)
  {
    v23 = sub_1AD4B8324();
    if (v23)
    {
      v24 = v23;
      if (qword_1EB5981C0 != -1)
      {
        swift_once();
      }

      v25 = sub_1ADB05FA0();
      __swift_project_value_buffer(v25, qword_1EB59AB68);

      v26 = sub_1ADB05F80();
      v27 = sub_1ADB06860();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        aBlock = v29;
        *v28 = 136315138;
        v30 = sub_1AD3CA88C(v20, v22, &aBlock);

        *(v28 + 4) = v30;
        _os_log_impl(&dword_1AD337000, v26, v27, "[%s] Using local phone pass for watch", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x1B26F9F20](v29, -1, -1);
        MEMORY[0x1B26F9F20](v28, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v49 = *(a2 + 24);
        ObjectType = swift_getObjectType();
        aBlock = v24;
        v96 = 0;
        v97 = 0;
        v98 = 0;
        LOWORD(v99) = 3;
        v51 = *(v49 + 24);
        v52 = v24;
        v51(&aBlock, v93, v94, ObjectType, v49);

        goto LABEL_20;
      }
    }

    else
    {
      v41 = &a1[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_completion];
      v42 = *&a1[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_completion];
      *v41 = sub_1AD4B9CA4;
      v41[1] = v17;

      sub_1AD3C5FB8(v42);
      v43 = *&a1[OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindSource_context];
      swift_beginAccess();
      v44 = *(v43 + 152);
      if (v44)
      {
        v45 = swift_allocObject();
        v45[2] = a1;
        v45[3] = v20;
        v45[4] = v22;
        v99 = sub_1AD4B9CB0;
        v100 = v45;
        aBlock = MEMORY[0x1E69E9820];
        v96 = 1107296256;
        v97 = sub_1AD3C8BB0;
        v98 = &block_descriptor_27;
        v46 = _Block_copy(&aBlock);
        v47 = v44;
        v48 = a1;

        [v47 fetchMessageSessionWithCompletion_];
        _Block_release(v46);
      }

      else
      {

        sub_1AD4B87DC(0);
      }
    }

    return;
  }

  v91 = v31;
  v32 = [v31 credentialToShare];
  if (!v32)
  {

    __break(1u);
    goto LABEL_47;
  }

  v33 = v32;

  if (([v33 isSharedCredential] & 1) != 0 && !PKAppletSubcredentialSupportsSharingInAChain(v33))
  {
    v61 = [v33 originatorIDSHandle];
    if (v61)
    {
      v62 = v61;
      v63 = sub_1ADB063B0();
      v65 = v64;

      v66 = [v33 sharingSessionIdentifier];
      if (v66)
      {
        v67 = v66;
        sub_1ADB05E10();

        a1 = v92;
        (*(v92 + 7))(v14, 0, 1, v8);
      }

      else
      {
        a1 = v92;
        (*(v92 + 7))(v14, 1, 1, v8);
      }

      sub_1AD4B9CD4(v14, v16);
      if (!(*(a1 + 6))(v16, 1, v8))
      {
        v92 = v63;
        (*(a1 + 2))(v10, v16, v8);
        sub_1AD428500(v16);
        v85 = sub_1ADB05E00();
        v87 = v86;
        (*(a1 + 1))(v10, v8);
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v36 = v33;
          v88 = *(a2 + 24);
          v89 = swift_getObjectType();
          aBlock = v92;
          v96 = v65;
          v97 = v85;
          v98 = v87;
          LOWORD(v99) = 2;
          (*(v88 + 24))(&aBlock, v93, v94, v89, v88);

          goto LABEL_14;
        }

        goto LABEL_29;
      }

      sub_1AD428500(v16);
    }

    v92 = v33;
    v68 = PKPassKitBundle();
    if (v68)
    {
      v69 = v68;
      v70 = sub_1ADB06370();
      v71 = sub_1ADB06370();
      v72 = sub_1ADB06370();
      a1 = [v69 localizedStringForKey:v70 value:v71 table:v72];

      if (!a1)
      {
        sub_1ADB063B0();
        a1 = sub_1ADB06370();
      }

      v73 = PKPassKitBundle();
      if (v73)
      {
        v74 = v73;
        v75 = sub_1ADB06370();
        v76 = sub_1ADB06370();
        v77 = sub_1ADB06370();
        v78 = [v74 localizedStringForKey:v75 value:v76 table:v77];

        if (!v78)
        {
          sub_1ADB063B0();
          v78 = sub_1ADB06370();
        }

        v79 = [objc_opt_self() errorWithTitle:a1 message:v78 severity:5];
        v80 = sub_1ADB06370();
        [v79 addInternalDebugDescription_];

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v81 = *(a2 + 24);
          v82 = swift_getObjectType();
          aBlock = v79;
          v96 = 0;
          v97 = 0;
          v98 = 0;
          LOWORD(v99) = 256;
          v83 = *(v81 + 24);
          v84 = v79;
          v83(&aBlock, v93, v94, v82, v81);

          goto LABEL_20;
        }

        return;
      }

LABEL_48:

      __break(1u);
      return;
    }

LABEL_47:

    __break(1u);
    goto LABEL_48;
  }

  v34 = [v91 paymentPass];
  if (v34)
  {
    v35 = v34;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v36 = v33;
      v37 = *(a2 + 24);
      v38 = swift_getObjectType();
      aBlock = v35;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      LOWORD(v99) = 3;
      v39 = *(v37 + 24);
      v40 = v35;
      v39(&aBlock, v93, v94, v38, v37);

LABEL_14:
LABEL_20:
      swift_unknownObjectRelease();
      return;
    }

LABEL_29:
    return;
  }

  v53 = v33;
  sub_1AD4B7C24();
  v55 = v54;
  v56 = sub_1ADB06370();
  [v55 addInternalDebugDescription_];

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v57 = *(a2 + 24);
    v58 = swift_getObjectType();
    aBlock = v55;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    LOWORD(v99) = 256;
    v59 = *(v57 + 24);
    v60 = v55;
    v59(&aBlock, v93, v94, v58, v57);

    goto LABEL_20;
  }
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD4B9CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A0D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AD4B9D7C()
{
  result = qword_1EB59BA80;
  if (!qword_1EB59BA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59BA80);
  }

  return result;
}

void sub_1AD4B9DD0(id a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    sub_1AD452868(a1, a2, a3, a4, a5);
  }
}

void sub_1AD4B9DDC(id a1, char a2)
{
  if (a2)
  {
    sub_1AD43352C(a1);
  }

  else
  {
  }
}

uint64_t sub_1AD4B9E7C@<X0>(uint64_t a1@<X8>)
{
  sub_1ADB05970();
  swift_allocObject();
  sub_1ADB05960();
  v2 = type metadata accessor for NearbyPeerPaymentSenderRequestMetadata();
  sub_1AD4BCFDC(&qword_1EB59BAB0, type metadata accessor for NearbyPeerPaymentSenderRequestMetadata);
  sub_1ADB05950();

  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

id sub_1AD4BA0D0()
{
  v1 = OBJC_IVAR____PKNearbyPeerPaymentReceiverCoordinator____lazy_storage___amountFormatter;
  v2 = *(v0 + OBJC_IVAR____PKNearbyPeerPaymentReceiverCoordinator____lazy_storage___amountFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____PKNearbyPeerPaymentReceiverCoordinator____lazy_storage___amountFormatter);
  }

  else
  {
    v4 = _s11PassKitCore17NearbyPeerPaymentO15amountFormatterSo08NSNumberH0CvgZ_0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id NearbyPeerPaymentReceiverCoordinator.__allocating_init(senderMetadata:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____PKNearbyPeerPaymentReceiverCoordinator_peerPaymentAccount;
    v9 = [result account];

    *&v5[v8] = v9;
    *&v5[OBJC_IVAR____PKNearbyPeerPaymentReceiverCoordinator____lazy_storage___amountFormatter] = 0;
    v10 = &v5[OBJC_IVAR____PKNearbyPeerPaymentReceiverCoordinator_senderMetadata];
    *v10 = a1;
    *(v10 + 1) = a2;
    v11.receiver = v5;
    v11.super_class = v2;
    return objc_msgSendSuper2(&v11, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NearbyPeerPaymentReceiverCoordinator.init(senderMetadata:)(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____PKNearbyPeerPaymentReceiverCoordinator_peerPaymentAccount;
    v8 = [result account];

    *&v2[v7] = v8;
    *&v2[OBJC_IVAR____PKNearbyPeerPaymentReceiverCoordinator____lazy_storage___amountFormatter] = 0;
    v9 = &v2[OBJC_IVAR____PKNearbyPeerPaymentReceiverCoordinator_senderMetadata];
    *v9 = a1;
    *(v9 + 1) = a2;
    v10.receiver = v2;
    v10.super_class = type metadata accessor for NearbyPeerPaymentReceiverCoordinator();
    return objc_msgSendSuper2(&v10, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AD4BA568(int a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 1);
  _Block_release(v3);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1AD4BA5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AD4BA690;

  return sub_1AD4BAD04(a1, a2, a3);
}

uint64_t sub_1AD4BA690(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 24) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AD4BA7E0, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_1AD4BA7E0()
{
  v1 = *(v0 + 8);

  return v1(0, 0xF000000000000000);
}

uint64_t sub_1AD4BA9D8(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_1ADB063B0();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1AD4BAAC4;

  return sub_1AD4BAD04(v10, v7, v9);
}

uint64_t sub_1AD4BAAC4(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v6[7] = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AD4BAC74, 0, 0);
  }

  else
  {
    v8 = v6[2];
    v7 = v6[3];

    v9 = sub_1ADB05D50();
    sub_1AD3C757C(a1, a2);
    v10 = v6[4];
    (v10)[2](v10, v9);

    _Block_release(v10);
    v11 = v6[1];

    return v11();
  }
}

uint64_t sub_1AD4BAC74()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  v3 = *(v0 + 32);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1AD4BAD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AD4BAD28, 0, 0);
}

uint64_t sub_1AD4BAD28()
{
  v1 = v0[3];
  v2 = (v0[6] + OBJC_IVAR____PKNearbyPeerPaymentReceiverCoordinator_senderMetadata);
  v3 = *v2;
  v4 = v2[1];
  v5 = type metadata accessor for NearbyPeerPaymentReceiverResponseMetadata();
  v0[7] = v5;
  objc_allocWithZone(v5);

  sub_1AD3C7528(v3, v4);
  v6 = v1;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1AD4BAE28;
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  return NearbyPeerPaymentReceiverResponseMetadata.init(nonce:nearbyMetadata:appearanceData:)(v9, v8, v3, v4, v10);
}

uint64_t sub_1AD4BAE28(uint64_t a1)
{
  v3 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AD4BAF5C, 0, 0);
  }
}

uint64_t sub_1AD4BAF5C()
{
  v2 = v0[9];
  v1 = v0[10];
  sub_1ADB059D0();
  swift_allocObject();
  sub_1ADB059C0();
  v0[2] = v2;
  sub_1AD4BCFDC(&qword_1EB59BAA0, type metadata accessor for NearbyPeerPaymentReceiverResponseMetadata);
  v3 = sub_1ADB059B0();
  if (v1)
  {

    return sub_1ADB06CE0();
  }

  else
  {
    v6 = v0[9];
    v7 = v3;
    v8 = v4;

    v9 = v0[1];

    return v9(v7, v8);
  }
}

uint64_t sub_1AD4BB0D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AD4BB184;

  return (sub_1AD4BC228)(a1, a2);
}

uint64_t sub_1AD4BB184(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1AD4BB408(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = sub_1ADB05D70();
  v10 = v9;

  v3[4] = v8;
  v3[5] = v10;
  v11 = swift_task_alloc();
  v3[6] = v11;
  *v11 = v3;
  v11[1] = sub_1AD4BB4F4;

  return sub_1AD4BC228(v8, v10);
}

uint64_t sub_1AD4BB4F4(char a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  sub_1AD3C757C(v4, v3);

  v5[2](v5, a1 & 1);
  _Block_release(v5);
  v7 = *(v9 + 8);

  return v7();
}

void sub_1AD4BB678(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BAA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for NearbyPeerPaymentSenderRequestMetadata();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v15 = objc_opt_self();
  if ([v15 useMock])
  {
    v16 = [v15 mockSignature];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1ADB063B0();
      v20 = v19;

      if (v13 != v18 || v14 != v20)
      {
        sub_1ADB06F50();
      }
    }
  }

  else
  {
    sub_1AD4B9E7C(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1AD3D0E3C(v8, &qword_1EB59BAA8);
    }

    else
    {
      sub_1AD4BC468(v8, v12);
      v22 = *(v12 + 6);
      v42 = *(v12 + 5);
      v23 = sub_1AD4BA0D0();
      v24 = sub_1ADB06A00();
      v25 = sub_1ADB06370();
      v26 = PKCurrencyAmountMake(v24, v25);

      if (v26)
      {
        v27 = [(PKCurrencyAmount *)v26 amount];

        v28 = [v23 stringForObjectValue_];
        if (v28)
        {
          v29 = sub_1ADB063B0();
          v31 = v30;

          v43 = v42;
          v44 = v22;

          MEMORY[0x1B26F6530](v29, v31);

          MEMORY[0x1B26F6530](a2, a3);

          v33 = v43;
          v32 = v44;
          if (qword_1EB598130 != -1)
          {
            swift_once();
          }

          v34 = sub_1ADB05FA0();
          __swift_project_value_buffer(v34, qword_1EB59A9D0);

          v35 = sub_1ADB05F80();
          v36 = sub_1ADB06860();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v43 = v38;
            *v37 = 136315138;
            *(v37 + 4) = sub_1AD3CA88C(v33, v32, &v43);
            _os_log_impl(&dword_1AD337000, v35, v36, "NearbyPeerPayment: validating transaction string: %s", v37, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v38);
            MEMORY[0x1B26F9F20](v38, -1, -1);
            MEMORY[0x1B26F9F20](v37, -1, -1);
          }

          v39 = sub_1ADB06370();

          v40 = sub_1ADB06370();
          PKPeerPaymentSignatureIsValid(v39, v40);

          sub_1AD4BC4CC(v12);
        }

        else
        {
          sub_1AD4BC4CC(v12);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id NearbyPeerPaymentReceiverCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NearbyPeerPaymentReceiverCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentReceiverCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AD4BBC20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1AD3D0F70;

  return v6();
}

uint64_t sub_1AD4BBD08(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1AD3CF220;

  return v7();
}

uint64_t sub_1AD4BBDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1AD4BCC40(a3, v23 - v10);
  v12 = sub_1ADB06720();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1AD3D0E3C(v11, &qword_1EB598840);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1ADB06710();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1ADB066C0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1ADB06430() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1AD3D0E3C(a3, &qword_1EB598840);

    return v21;
  }

LABEL_8:
  sub_1AD3D0E3C(a3, &qword_1EB598840);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

void _s11PassKitCore36NearbyPeerPaymentReceiverCoordinatorC06nearbyG10IsEligibleSbyFZ_0()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v1 = v0;
  v2 = [v0 account];

  if (v2)
  {
    v3 = [objc_opt_self() sharedInstance];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 associatedPassUniqueID];
      v6 = [v4 passWithUniqueID_];

      if (v6)
      {
        v7 = [v6 paymentPass];

        PKPeerPaymentIsEligibleForDeviceTapPayment(v2, v7);
        return;
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }
}

uint64_t sub_1AD4BC228(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AD4BC248, 0, 0);
}

uint64_t sub_1AD4BC248()
{
  sub_1ADB05970();
  swift_allocObject();
  sub_1ADB05960();
  sub_1AD3CB65C();
  sub_1ADB05950();
  v1 = v0[4];
  v2 = v0[5];

  sub_1AD3C757C(v1, v2);

  v3 = v0[1];

  return v3(1);
}

uint64_t sub_1AD4BC468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentSenderRequestMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD4BC4CC(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentSenderRequestMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of NearbyPeerPaymentReceiverCoordinator.nearbyReceiverRequiresConfirmation(contactID:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AD4BB184;

  return v9(a1, a2);
}

uint64_t dispatch thunk of NearbyPeerPaymentReceiverCoordinator.recipientMetadata(appearanceData:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x90);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AD4BC7D4;

  return v11(a1, a2, a3);
}

uint64_t sub_1AD4BC7D4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of NearbyPeerPaymentReceiverCoordinator.recipientMetadataThrowing(appearanceData:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x98);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AD3CB3F4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of NearbyPeerPaymentReceiverCoordinator.validateTransaction(result:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AD4BD024;

  return v9(a1, a2);
}

uint64_t sub_1AD4BCB8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AD3D0F70;

  return sub_1AD4BB408(v2, v3, v4);
}

uint64_t sub_1AD4BCC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD4BCCB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AD3D0F70;

  return sub_1AD4591F0(a1, v4);
}

uint64_t sub_1AD4BCD68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AD3CF220;

  return sub_1AD4591F0(a1, v4);
}

uint64_t sub_1AD4BCE20()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1AD3D0F70;

  return sub_1AD4BA9D8(v2, v3, v5, v4);
}

uint64_t objectdestroyTm_3()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AD4BCF28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1AD3CF220;

  return sub_1AD4BA568(v2, v3);
}

uint64_t sub_1AD4BCFDC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AD4BD128(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1AD4BD184(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____PKRemoteNetworkPaymentCoordinator_wrapper;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1AD4BD21C;
}

void sub_1AD4BD21C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id RemoteNetworkPaymentCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteNetworkPaymentCoordinator.init()()
{
  *&v0[OBJC_IVAR____PKRemoteNetworkPaymentCoordinator_paymentSession] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteNetworkPaymentCoordinator();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_1AD4BD3A4(void *a1, void *a2)
{
  v217 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE30);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v205 = &v196 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v202 = &v196 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v203 = &v196 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v208 = &v196 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v207 = &v196 - v12;
  v13 = sub_1ADB05A20();
  v210 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v196 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v196 - v17;
  v19 = sub_1ADB059F0();
  *&v209 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v196 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BAC8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v196 - v23;
  v214 = sub_1ADB05AC0();
  v215 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v213 = &v196 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_1ADB05D20();
  v211 = *(v212 - 8);
  v26 = MEMORY[0x1EEE9AC00](v212);
  v204 = &v196 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v206 = &v196 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v216 = &v196 - v30;
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v31 = sub_1ADB05FA0();
  v219 = __swift_project_value_buffer(v31, qword_1EB59AA18);
  v32 = sub_1ADB05F80();
  v33 = sub_1ADB06830();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1AD337000, v32, v33, "Coordinator: Handling NSUserActivity", v34, 2u);
    MEMORY[0x1B26F9F20](v34, -1, -1);
  }

  v35 = OBJC_IVAR____PKRemoteNetworkPaymentCoordinator_paymentSession;
  if (*(v218 + OBJC_IVAR____PKRemoteNetworkPaymentCoordinator_paymentSession))
  {
    v219 = sub_1ADB05F80();
    v36 = sub_1ADB06850();
    if (os_log_type_enabled(v219, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1AD337000, v219, v36, "Coordinator: Already handling remote payment request, skipping", v37, 2u);
      MEMORY[0x1B26F9F20](v37, -1, -1);
    }

    v38 = &v231;
LABEL_9:
    v39 = *(v38 - 32);

    return;
  }

  if ((PKIsPhone() & 1) == 0 && !PKIsPad())
  {
    v50 = sub_1ADB05F80();
    v51 = sub_1ADB06850();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v227 = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_1AD3CA88C(0xD00000000000001FLL, 0x80000001ADBA1930, &v227);
      _os_log_impl(&dword_1AD337000, v50, v51, "Coordinator: presentUnsupportedError: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1B26F9F20](v53, -1, -1);
      MEMORY[0x1B26F9F20](v52, -1, -1);
    }

    v54 = sub_1AD499D88(0xD00000000000001FLL, 0x80000001ADBA1930, 7u);
    v55 = v217;

    sub_1AD4BFB60(v54, v55, 0.0);
    return;
  }

  v200 = objc_opt_self();
  v40 = [v200 sharedService];
  if (!v40)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v41 = v40;
  v42 = [objc_opt_self() remoteNetworkPaymentFeatureWithWebService_];

  if (v42)
  {
    v201 = v42;
    if (([v201 enabled] & 1) == 0)
    {
      v56 = sub_1ADB05F80();
      v57 = sub_1ADB06850();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v227 = v59;
        *v58 = 136315138;
        *(v58 + 4) = sub_1AD3CA88C(0xD000000000000027, 0x80000001ADBA1AF0, &v227);
        _os_log_impl(&dword_1AD337000, v56, v57, "Coordinator: presentUnavailableError: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x1B26F9F20](v59, -1, -1);
        MEMORY[0x1B26F9F20](v58, -1, -1);
      }

      v60 = sub_1AD499D88(0xD000000000000027, 0x80000001ADBA1AF0, 8u);
      sub_1AD4BFB60(v60, v217, 0.0);

      v38 = v222;
      goto LABEL_9;
    }
  }

  v43 = [a1 webpageURL];
  if (!v43)
  {
    goto LABEL_39;
  }

  v201 = v42;
  v44 = v43;
  sub_1ADB05D00();

  v45 = [a1 activityType];
  v46 = sub_1ADB063B0();
  v48 = v47;

  if (v46 == sub_1ADB063B0() && v48 == v49)
  {
  }

  else
  {
    v61 = sub_1ADB06F50();

    if ((v61 & 1) == 0)
    {
      (*(v211 + 8))(v216, v212);
      goto LABEL_38;
    }
  }

  v62 = v216;
  sub_1ADB05A40();
  v63 = v215;
  v64 = v214;
  if ((*(v215 + 48))(v24, 1, v214) == 1)
  {
    (*(v211 + 8))(v62, v212);
    sub_1AD3D0E3C(v24, &qword_1EB59BAC8);
LABEL_38:
    v42 = v201;
LABEL_39:
    v70 = sub_1ADB05F80();
    v71 = sub_1ADB06850();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = v42;
      v74 = swift_slowAlloc();
      *&v227 = v74;
      *v72 = 136315138;
      *(v72 + 4) = sub_1AD3CA88C(0xD00000000000002BLL, 0x80000001ADBA1950, &v227);
      _os_log_impl(&dword_1AD337000, v70, v71, "Coordinator: presentInvalidTokenError: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      v75 = v74;
      v42 = v73;
      MEMORY[0x1B26F9F20](v75, -1, -1);
      MEMORY[0x1B26F9F20](v72, -1, -1);
    }

    v76 = sub_1AD499D88(0xD00000000000002BLL, 0x80000001ADBA1950, 9u);
    sub_1AD4BFB60(v76, v217, 0.0);

    return;
  }

  (*(v63 + 32))(v213, v24, v64);
  v65 = sub_1ADB05A60();
  v67 = v66;
  v68 = sub_1ADB063B0();
  if (!v67)
  {

    goto LABEL_47;
  }

  if (v65 != v68 || v67 != v69)
  {
    v77 = sub_1ADB06F50();

    if (v77)
    {
      goto LABEL_44;
    }

LABEL_47:
    *&v227 = 0;
    *(&v227 + 1) = 0xE000000000000000;
    sub_1ADB06C10();

    *&v227 = 0xD000000000000027;
    *(&v227 + 1) = 0x80000001ADBA1980;
    sub_1AD4C02B0(&qword_1EB59AE38, MEMORY[0x1E6968FB0]);
    v84 = v216;
LABEL_81:
    v128 = v212;
    v129 = sub_1ADB06EF0();
    MEMORY[0x1B26F6530](v129);

    v130 = v227;

    v131 = sub_1ADB05F80();
    v132 = sub_1ADB06850();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *&v227 = v134;
      *v133 = 136315138;
      *(v133 + 4) = sub_1AD3CA88C(v130, *(&v130 + 1), &v227);
      _os_log_impl(&dword_1AD337000, v131, v132, "Coordinator: presentInvalidTokenError: %s", v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v134);
      MEMORY[0x1B26F9F20](v134, -1, -1);
      v135 = v133;
      v84 = v216;
      MEMORY[0x1B26F9F20](v135, -1, -1);
    }

    v136 = v211;
    v137 = v215;

    v138 = sub_1AD499D88(v130, *(&v130 + 1), 9u);
    sub_1AD4BFB60(v138, v217, 0.0);

    (*(v137 + 8))(v213, v214);
    (*(v136 + 8))(v84, v128);
    return;
  }

LABEL_44:
  *&v227 = sub_1ADB05A80();
  *(&v227 + 1) = v78;
  sub_1ADB059E0();
  sub_1AD499C10();
  v79 = sub_1ADB06A90();
  v81 = v80;
  (*(v209 + 8))(v21, v19);

  v82 = sub_1ADB063B0();
  v84 = v216;
  v198 = v79;
  if (v79 == v82 && v81 == v83)
  {
  }

  else
  {
    v85 = sub_1ADB06F50();

    if ((v85 & 1) == 0)
    {

      *&v227 = 0;
      *(&v227 + 1) = 0xE000000000000000;
      sub_1ADB06C10();

      v95 = 0x80000001ADBA19B0;
      v96 = 0xD000000000000027;
LABEL_80:
      *&v227 = v96;
      *(&v227 + 1) = v95;
      sub_1AD4C02B0(&qword_1EB59AE38, MEMORY[0x1E6968FB0]);
      goto LABEL_81;
    }
  }

  if (PKRemoteNetworkPaymentDisableEntitlementCheck())
  {
    v86 = sub_1ADB05F80();
    v87 = sub_1ADB06830();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_1AD337000, v86, v87, "Coordinator: Bypassing payment user activity entitlement check", v88, 2u);
      MEMORY[0x1B26F9F20](v88, -1, -1);
    }
  }

  else if (([v217 hasEntitlement_] & 1) == 0)
  {

    *&v227 = 0;
    *(&v227 + 1) = 0xE000000000000000;
    sub_1ADB06C10();
    MEMORY[0x1B26F6530](0xD00000000000003BLL, 0x80000001ADBA19E0);
    v97 = sub_1ADB063B0();
    MEMORY[0x1B26F6530](v97);

    v98 = v227;

    v99 = sub_1ADB05F80();
    v100 = sub_1ADB06850();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *&v227 = v102;
      *v101 = 136315138;
      *(v101 + 4) = sub_1AD3CA88C(v98, *(&v98 + 1), &v227);
      _os_log_impl(&dword_1AD337000, v99, v100, "Coordinator: presentUnsupportedError: %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v102);
      MEMORY[0x1B26F9F20](v102, -1, -1);
      MEMORY[0x1B26F9F20](v101, -1, -1);
    }

    v103 = v211;
    v104 = v212;
    v105 = v215;

    v106 = sub_1AD499D88(v98, *(&v98 + 1), 7u);
    sub_1AD4BFB60(v106, v217, 0.0);

    (*(v105 + 8))(v213, v214);
    (*(v103 + 8))(v216, v104);
    return;
  }

  v199 = v81;
  v89 = sub_1ADB05A30();
  if (!v89)
  {
LABEL_79:

    *&v227 = 0;
    *(&v227 + 1) = 0xE000000000000000;
    sub_1ADB06C10();

    v95 = 0x80000001ADBA1A20;
    v96 = 0xD000000000000024;
    goto LABEL_80;
  }

  v90 = v89;
  *&v209 = *(v89 + 16);
  if (!v209)
  {
LABEL_62:

    v84 = v216;
    goto LABEL_79;
  }

  v91 = 0;
  v92 = (v210 + 8);
  while (1)
  {
    if (v91 >= *(v90 + 16))
    {
      __break(1u);
      goto LABEL_108;
    }

    (*(v210 + 16))(v16, v90 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v91, v13);
    if (sub_1ADB05A00() == 116 && v93 == 0xE100000000000000)
    {
      break;
    }

    v94 = sub_1ADB06F50();

    if (v94)
    {
      goto LABEL_68;
    }

    ++v91;
    (*v92)(v16, v13);
    if (v209 == v91)
    {
      goto LABEL_62;
    }
  }

LABEL_68:

  v107 = v210 + 32;
  (*(v210 + 32))(v18, v16, v13);
  v108 = sub_1ADB05A10();
  v110 = v109;
  (*(v107 - 24))(v18, v13);
  v84 = v216;
  v111 = v208;
  if (!v110)
  {
    goto LABEL_79;
  }

  sub_1AD4BFD60(v108, v110, &v223);
  if (*(&v223 + 1))
  {
    v112 = *(&v225 + 1);
    v113 = v226;
    v227 = v223;
    v228 = v224;
    v229 = v225;
    v230 = v226;
    v114 = v211;
    if ((BYTE1(v224) & 1) == 0 && !v228)
    {
      v196 = v224;
      v197 = v225;
      v209 = v223;
      v115 = v200;
      v116 = [v200 sharedService];
      if (!v116)
      {
        goto LABEL_109;
      }

      v117 = v116;
      v118 = [v116 context];

      if (v118)
      {
        LODWORD(v210) = [v118 devSigned];

        v119 = *(v114 + 56);
        v119(v207, 1, 1, v212);
        v120 = [v115 sharedService];
        if (!v120)
        {
          goto LABEL_111;
        }

        v121 = v120;
        v122 = [v120 context];

        if (v122)
        {

          v123 = [v122 configuration];

          v124 = v207;
          if (v123)
          {
            v125 = PKCurrentRegion();
            v126 = [v123 paymentRelayServiceURLForRegion_];

            if (v126)
            {
              sub_1ADB05D00();

              v127 = 0;
            }

            else
            {
              v127 = 1;
            }

            v124 = v207;
            sub_1AD3D0E3C(v207, &qword_1EB59AE30);
            v160 = v127;
            v161 = v212;
            v119(v111, v160, 1, v212);
            sub_1AD3DF33C(v111, v124);
            v162 = v203;
            sub_1AD429174(v124, v203);
            if ((*(v211 + 48))(v162, 1, v161) == 1)
            {
              sub_1AD3D0E3C(v162, &qword_1EB59AE30);
              v163 = sub_1ADB06370();
              v164 = [v123 paymentRelayServiceURLForRegion_];

              if (v164)
              {
                v165 = v202;
                sub_1ADB05D00();

                v124 = v207;
                sub_1AD3D0E3C(v207, &qword_1EB59AE30);
                v166 = 0;
              }

              else
              {
                v124 = v207;
                sub_1AD3D0E3C(v207, &qword_1EB59AE30);

                v166 = 1;
                v165 = v202;
              }

              v119(v165, v166, 1, v212);
              sub_1AD3DF33C(v165, v124);
            }

            else
            {

              sub_1AD3D0E3C(v162, &qword_1EB59AE30);
            }
          }

          v167 = v205;
          sub_1AD429174(v124, v205);
          v168 = v211;
          v169 = v212;
          if ((*(v211 + 48))(v167, 1, v212) == 1)
          {
            v170 = 0;
          }

          else
          {
            v170 = sub_1ADB05CE0();
            (*(v168 + 8))(v167, v169);
          }

          v171 = PKRemoteNetworkPaymentWebsocketURL(v210, v170);

          if (v171)
          {
            sub_1ADB05D00();

            v221[1] = v196;
            v221[0] = v209;
            v222[0] = v197;
            v222[1] = v112;
            v222[2] = v113;
            sub_1AD47AD44(v221, v220);
            v172 = sub_1ADB05F80();
            v173 = sub_1ADB06860();
            sub_1AD3D0E3C(&v223, &qword_1EB59BAD0);
            if (os_log_type_enabled(v172, v173))
            {
              v174 = swift_slowAlloc();
              v175 = swift_slowAlloc();
              v220[0] = v175;
              *v174 = 136315138;
              v176 = v227;

              v177 = sub_1AD3CA88C(v176, *(&v176 + 1), v220);

              *(v174 + 4) = v177;
              _os_log_impl(&dword_1AD337000, v172, v173, "Coordinator: Payment user activity handled, remote identifier: %s", v174, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v175);
              MEMORY[0x1B26F9F20](v175, -1, -1);
              MEMORY[0x1B26F9F20](v174, -1, -1);
            }

            v178 = v212;
            v179 = v215;
            v180 = v216;
            v181 = v204;
            v182 = v206;
            (*(v168 + 16))(v204, v206, v212);
            v183 = objc_allocWithZone(type metadata accessor for RemoteNetworkPaymentSession());
            v184 = v217;
            v185 = sub_1AD47A584(&v227, v198, v199, v181, v184);

            v186 = *(v218 + v35);
            *(v218 + v35) = v185;
            v187 = v185;

            *&v187[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_delegate + 8] = &off_1F226EEF8;
            swift_unknownObjectWeakAssign();
            sub_1AD474C64();

            v188 = *(v168 + 8);
            v188(v182, v178);
            sub_1AD3D0E3C(v207, &qword_1EB59AE30);
            (*(v179 + 8))(v213, v214);
            v188(v180, v178);
          }

          else
          {

            sub_1AD3D0E3C(&v223, &qword_1EB59BAD0);
            v189 = sub_1ADB05F80();
            v190 = sub_1ADB06850();
            v191 = os_log_type_enabled(v189, v190);
            v192 = v212;
            if (v191)
            {
              v193 = swift_slowAlloc();
              v194 = swift_slowAlloc();
              *&v221[0] = v194;
              *v193 = 136315138;
              *(v193 + 4) = sub_1AD3CA88C(0xD000000000000028, 0x80000001ADBA1AC0, v221);
              _os_log_impl(&dword_1AD337000, v189, v190, "Coordinator: presentUnavailableError: %s", v193, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v194);
              MEMORY[0x1B26F9F20](v194, -1, -1);
              MEMORY[0x1B26F9F20](v193, -1, -1);
            }

            v195 = sub_1AD499D88(0xD000000000000028, 0x80000001ADBA1AC0, 8u);
            sub_1AD4BFB60(v195, v217, 0.0);

            sub_1AD3D0E3C(v207, &qword_1EB59AE30);
            (*(v215 + 8))(v213, v214);
            (*(v168 + 8))(v216, v192);
          }

          return;
        }

LABEL_112:
        __break(1u);
        return;
      }

LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    *&v221[0] = 0;
    *(&v221[0] + 1) = 0xE000000000000000;
    sub_1ADB06C10();

    *&v221[0] = 0xD00000000000002CLL;
    *(&v221[0] + 1) = 0x80000001ADBA1A90;
    v149 = v227;

    MEMORY[0x1B26F6530](v149, *(&v149 + 1));
    sub_1AD3D0E3C(&v223, &qword_1EB59BAD0);

    v150 = v221[0];

    v151 = sub_1ADB05F80();
    v152 = sub_1ADB06850();

    v153 = os_log_type_enabled(v151, v152);
    v154 = v212;
    if (v153)
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      *&v221[0] = v156;
      *v155 = 136315138;
      *(v155 + 4) = sub_1AD3CA88C(v150, *(&v150 + 1), v221);
      _os_log_impl(&dword_1AD337000, v151, v152, "Coordinator: presentNewerOSRequiredError: %s", v155, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v156);
      MEMORY[0x1B26F9F20](v156, -1, -1);
      v157 = v155;
      v84 = v216;
      MEMORY[0x1B26F9F20](v157, -1, -1);
    }

    v158 = v215;

    v159 = sub_1AD499D88(v150, *(&v150 + 1), 4u);
    sub_1AD4BFB60(v159, v217, 0.0);

    (*(v158 + 8))(v213, v214);
    (*(v114 + 8))(v84, v154);
  }

  else
  {

    *&v227 = 0;
    *(&v227 + 1) = 0xE000000000000000;
    sub_1ADB06C10();
    MEMORY[0x1B26F6530](0xD00000000000003BLL, 0x80000001ADBA1A50);
    MEMORY[0x1B26F6530](v108, v110);

    v139 = v227;

    v140 = sub_1ADB05F80();
    v141 = sub_1ADB06850();

    v142 = os_log_type_enabled(v140, v141);
    v143 = v211;
    if (v142)
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *&v227 = v145;
      *v144 = 136315138;
      *(v144 + 4) = sub_1AD3CA88C(v139, *(&v139 + 1), &v227);
      _os_log_impl(&dword_1AD337000, v140, v141, "Coordinator: presentInvalidTokenError: %s", v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v145);
      MEMORY[0x1B26F9F20](v145, -1, -1);
      v146 = v144;
      v84 = v216;
      MEMORY[0x1B26F9F20](v146, -1, -1);
    }

    v147 = v215;

    v148 = sub_1AD499D88(v139, *(&v139 + 1), 9u);
    sub_1AD4BFB60(v148, v217, 0.0);

    (*(v147 + 8))(v213, v214);
    (*(v143 + 8))(v84, v212);
  }
}

void sub_1AD4BF31C(char a1, void *a2, uint64_t a3)
{
  v33 = a3;
  v5 = sub_1ADB06040();
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ADB06060();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1ADB06080();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v31 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  if (a1)
  {
    sub_1AD3DAB68();
    v32 = sub_1ADB068B0();
    sub_1ADB06070();
    sub_1ADB06090();
    v21 = *(v12 + 8);
    v21(v15, v11);
    sub_1ADB06090();
    v21(v18, v11);
    v22 = swift_allocObject();
    v23 = v33;
    *(v22 + 16) = a2;
    *(v22 + 24) = v23;
    aBlock[4] = sub_1AD4C02A0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD471DC4;
    aBlock[3] = &block_descriptor_22_0;
    v24 = _Block_copy(aBlock);
    v25 = a2;

    sub_1ADB06050();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1AD4C02B0(&qword_1EB598900, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
    sub_1AD3D7750();
    sub_1ADB06B00();
    v26 = v32;
    MEMORY[0x1B26F6930](v20, v10, v7, v24);
    _Block_release(v24);

    (v36[1].isa)(v7, v5);
    (*(v34 + 8))(v10, v35);
    v21(v20, v11);
  }

  else
  {
    if (qword_1EB598150 != -1)
    {
      swift_once();
    }

    v27 = sub_1ADB05FA0();
    __swift_project_value_buffer(v27, qword_1EB59AA18);
    v36 = sub_1ADB05F80();
    v28 = sub_1ADB06850();
    if (os_log_type_enabled(v36, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1AD337000, v36, v28, "Coordinator: presentErrorMessage: Authorization coordinator failed to present", v29, 2u);
      MEMORY[0x1B26F9F20](v29, -1, -1);
    }

    v30 = v36;
  }
}

id RemoteNetworkPaymentCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteNetworkPaymentCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1AD4BF8F4(char a1)
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v2 = sub_1ADB05FA0();
  __swift_project_value_buffer(v2, qword_1EB59AA18);
  v3 = sub_1ADB05F80();
  v4 = sub_1ADB06830();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_1AD337000, v3, v4, "Coordinator: Presented payment sheet? %{BOOL}d", v5, 8u);
    MEMORY[0x1B26F9F20](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong handleRemoteNetworkPaymentCoordinatorDidPresentPaymentSheet_];
}

void sub_1AD4BFA30()
{
  v1 = v0;
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v2 = sub_1ADB05FA0();
  __swift_project_value_buffer(v2, qword_1EB59AA18);
  v3 = sub_1ADB05F80();
  v4 = sub_1ADB06830();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v3, v4, "Coordinator: Complete called", v5, 2u);
    MEMORY[0x1B26F9F20](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong handleRemoteNetworkPaymentCoordinatorComplete];

  v7 = *(v1 + OBJC_IVAR____PKRemoteNetworkPaymentCoordinator_paymentSession);
  *(v1 + OBJC_IVAR____PKRemoteNetworkPaymentCoordinator_paymentSession) = 0;
}

void sub_1AD4BFB60(uint64_t a1, uint64_t a2, double a3)
{
  v6 = [objc_allocWithZone(PKPaymentAuthorizationCoordinator) initWithRemotePaymentRequestPromised];
  if (v6)
  {
    v7 = v6;
    [v6 setRemoteNetworkPaymentInvokingProcess_];
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = v7;
    *(v8 + 32) = a1;
    aBlock[4] = sub_1AD4C027C;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD471E08;
    aBlock[3] = &block_descriptor_28;
    v9 = _Block_copy(aBlock);
    v10 = v7;

    [v10 presentWithCompletion_];
    _Block_release(v9);
  }

  else
  {
    if (qword_1EB598150 != -1)
    {
      swift_once();
    }

    v11 = sub_1ADB05FA0();
    __swift_project_value_buffer(v11, qword_1EB59AA18);
    oslog = sub_1ADB05F80();
    v12 = sub_1ADB06850();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1AD337000, oslog, v12, "Coordinator: presentErrorMessage: Unable to create authorization coordinator", v13, 2u);
      MEMORY[0x1B26F9F20](v13, -1, -1);
    }
  }
}

uint64_t sub_1AD4BFD60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{

  result = sub_1AD45B8A4(a1, a2, v10);
  v7 = v10[1];
  v8 = v10[2];
  v9 = v11;
  *a3 = v10[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v8;
  *(a3 + 48) = v9;
  return result;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD4C02B0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 ProvisioningCarKeyStepLegacyURLRedemption.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a2[1].n128_u64[0];
  v8 = a2[1].n128_u8[8];
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0;
  *(v6 + 16) = a1;
  result = *a2;
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = a3;
  return result;
}

uint64_t ProvisioningCarKeyStepLegacyURLRedemption.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t ProvisioningCarKeyStepLegacyURLRedemption.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  sub_1AD3C5FB8(*(v0 + 64));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ProvisioningCarKeyStepLegacyURLRedemption.__deallocating_deinit()
{
  ProvisioningCarKeyStepLegacyURLRedemption.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1AD4C042C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningCarKeyStepLegacyURLRedemption();
  v8 = swift_allocObject();
  result = ProvisioningCarKeyStepLegacyURLRedemption.init(context:credential:sharedState:)(a1, a2, a3);
  *a4 = v8;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11PassKitCore41ProvisioningCarKeyStepLegacyURLRedemptionC16RedemptionResultO(uint64_t a1)
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

void sub_1AD4C0510(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
    v10 = qword_1EB5981C0;
    v11 = a1;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = sub_1ADB05FA0();
    __swift_project_value_buffer(v12, qword_1EB59AB68);

    v13 = sub_1ADB05F80();
    v14 = sub_1ADB06850();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1AD3CA88C(a4, a5, aBlock);
      _os_log_impl(&dword_1AD337000, v13, v14, "[%s] Fetched invitation from url", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1B26F9F20](v16, -1, -1);
      MEMORY[0x1B26F9F20](v15, -1, -1);
    }

    v17 = [a7 targetDevice];
    if (v17)
    {
      v18 = v17;
      if ([v17 respondsToSelector_])
      {
        v19 = swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();
        v20 = v11;

        v21 = swift_allocObject();
        v21[2] = v19;
        v21[3] = a4;
        v21[4] = a5;
        aBlock[4] = sub_1AD4C2F18;
        aBlock[5] = v21;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1AD4B7970;
        aBlock[3] = &block_descriptor_42_2;
        v22 = _Block_copy(aBlock);

        [v18 acceptCarKeyShareForMessage:v20 activationCode:0 completion:v22];
        _Block_release(v22);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (a2)
    {
      v23 = sub_1ADB05CB0();
    }

    else
    {
      v23 = 0;
    }

    v24 = [objc_opt_self() errorWithUnderlyingError:v23 defaultSeverity:5];

    v25 = sub_1ADB06370();
    [v24 addInternalDebugDescription_];

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v26 = v24;
      sub_1AD4C0904(v24, 1);
    }

    else
    {
    }
  }
}

uint64_t sub_1AD4C0904(void *a1, char a2)
{
  v4 = sub_1ADB06040();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1ADB06060();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v10 = sub_1ADB068B0();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  aBlock[4] = sub_1AD4C2F50;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_25;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD4C2A08(&qword_1EB598900, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD41E8DC(&qword_1EB598910, &qword_1EB59BB30);
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v9, v6, v13);
  _Block_release(v13);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

void sub_1AD4C0C14(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1 && (v11 = [a1 subcredential]) != 0)
    {
      v12 = v11;
      if (qword_1EB5981C0 != -1)
      {
        swift_once();
      }

      v13 = sub_1ADB05FA0();
      __swift_project_value_buffer(v13, qword_1EB59AB68);

      v14 = v12;
      v15 = sub_1ADB05F80();
      v16 = sub_1ADB06850();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v39 = v18;
        *v17 = 136315394;
        *(v17 + 4) = sub_1AD3CA88C(a4, a5, &v39);
        *(v17 + 12) = 2080;
        v19 = [v14 identifier];

        if (!v19)
        {
          __break(1u);
          return;
        }

        v20 = sub_1ADB063B0();
        v22 = v21;

        v23 = sub_1AD3CA88C(v20, v22, &v39);

        *(v17 + 14) = v23;
        _os_log_impl(&dword_1AD337000, v15, v16, "[%s] Accepted invitation for subcredential: '%s'", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B26F9F20](v18, -1, -1);
        MEMORY[0x1B26F9F20](v17, -1, -1);
      }

      else
      {
      }

      v34 = *(v10 + 80);
      *(v10 + 80) = v12;
      v35 = v14;

      sub_1AD4C1094();
    }

    else
    {
      if (qword_1EB5981C0 != -1)
      {
        swift_once();
      }

      v24 = sub_1ADB05FA0();
      __swift_project_value_buffer(v24, qword_1EB59AB68);

      v25 = a2;
      v26 = sub_1ADB05F80();
      v27 = sub_1ADB06850();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v39 = v30;
        *v28 = 136315394;
        *(v28 + 4) = sub_1AD3CA88C(a4, a5, &v39);
        *(v28 + 12) = 2112;
        if (a2)
        {
          v31 = a2;
          v32 = _swift_stdlib_bridgeErrorToNSError();
          v33 = v32;
        }

        else
        {
          v32 = 0;
          v33 = 0;
        }

        *(v28 + 14) = v32;
        *v29 = v33;
        _os_log_impl(&dword_1AD337000, v26, v27, "[%s] Failed to  accept invitation with error: '%@'", v28, 0x16u);
        sub_1AD3D0E3C(v29, &unk_1EB59A340);
        MEMORY[0x1B26F9F20](v29, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x1B26F9F20](v30, -1, -1);
        MEMORY[0x1B26F9F20](v28, -1, -1);
      }

      if (a2)
      {
        v36 = sub_1ADB05CB0();
      }

      else
      {
        v36 = 0;
      }

      v37 = [objc_opt_self() errorWithUnderlyingError:v36 defaultSeverity:5];

      v38 = sub_1ADB06370();
      [v37 addInternalDebugDescription_];

      v35 = v37;
      sub_1AD4C0904(v37, 1);
    }
  }
}

void sub_1AD4C1094()
{
  v1 = sub_1ADB06040();
  v58 = *(v1 - 8);
  v59 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v55 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1ADB06060();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1ADB06030();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v51 = (v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v50 = v44 - v8;
  v48 = sub_1ADB06080();
  v45 = *(v48 - 8);
  v9 = MEMORY[0x1EEE9AC00](v48);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v44 - v12;
  v14 = sub_1ADB068D0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [*(v0 + 56) sid];
  v19 = sub_1ADB063B0();
  v46 = v20;
  v47 = v19;

  v44[1] = sub_1AD3D3200(0, &unk_1EB59BB10);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v21 = sub_1ADB068B0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD4C2A08(&unk_1EB599FB0, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BB20);
  sub_1AD41E8DC(&unk_1EB599FC0, &unk_1EB59BB20);
  sub_1ADB06B00();
  v22 = sub_1ADB068E0();

  (*(v15 + 8))(v17, v14);
  ObjectType = swift_getObjectType();
  sub_1ADB06070();
  sub_1ADB06090();
  v24 = *(v45 + 8);
  v25 = v48;
  v24(v11, v48);
  v26 = v50;
  sub_1AD508F64(v50);
  v27 = v51;
  sub_1AD508FD8(v51);
  v28 = v27;
  MEMORY[0x1B26F69C0](v13, v26, v27, ObjectType);
  v29 = *(v52 + 8);
  v30 = v28;
  v31 = v53;
  v29(v30, v53);
  v29(v26, v31);
  v24(v13, v25);
  v32 = swift_allocObject();
  v33 = v49;
  swift_weakInit();
  v34 = swift_allocObject();
  v35 = v46;
  v34[2] = v47;
  v34[3] = v35;
  v34[4] = v32;
  aBlock[4] = sub_1AD4C2F24;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_49;
  v36 = _Block_copy(aBlock);

  v37 = v54;
  sub_1AD509050();
  v38 = v55;
  sub_1AD509054();
  sub_1ADB06900();
  _Block_release(v36);
  (*(v58 + 8))(v38, v59);
  (*(v56 + 8))(v37, v57);

  *(v33 + 88) = v22;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1ADB06920();
  v39 = [objc_allocWithZone(PKPassLibrary) init];
  v40 = *(v33 + 96);
  *(v33 + 96) = v39;

  v41 = objc_opt_self();
  v42 = [v41 defaultCenter];
  [v42 addObserver:v33 selector:sel_passLibraryDidChangeWithNotification_ name:@"PKPassLibraryDidChangeNotification" object:0];

  v43 = [v41 defaultCenter];
  [v43 addObserver:v33 selector:sel_passLibraryDidChangeWithNotification_ name:@"PKPassLibraryRemotePaymentPassesDidChange" object:0];
  swift_unknownObjectRelease();
}

uint64_t sub_1AD4C1790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (*(result + 88))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1ADB06910();
      swift_unknownObjectRelease();
      v6[11] = 0;
      swift_unknownObjectRelease();
    }

    v7 = v6[12];
    v6[12] = 0;

    v8 = objc_opt_self();
    v9 = [v8 defaultCenter];
    [v9 removeObserver:v6 name:@"PKPassLibraryDidChangeNotification" object:0];

    v10 = [v8 defaultCenter];
    [v10 removeObserver:v6 name:@"PKPassLibraryRemotePaymentPassesDidChange" object:0];

    v11 = v6[8];
    if (v11)
    {

      v11(a2, a3);
      sub_1AD3C5FB8(v11);
      v12 = v6[8];
    }

    else
    {
      v12 = 0;
    }

    v6[8] = 0;
    v6[9] = 0;
    sub_1AD3C5FB8(v12);
  }

  return result;
}

void sub_1AD4C1918(uint64_t a1, unint64_t a2)
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1ADB05FA0();
  __swift_project_value_buffer(v4, qword_1EB59AB68);

  v5 = sub_1ADB05F80();
  v6 = sub_1ADB06850();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1AD3CA88C(a1, a2, v12);
    _os_log_impl(&dword_1AD337000, v5, v6, "[%s] ProvisioningCarKeyStepLegacyURLRedemption: Timed out waiting for activation", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B26F9F20](v8, -1, -1);
    MEMORY[0x1B26F9F20](v7, -1, -1);
  }

  v9 = [objc_opt_self() errorWithSeverity_];
  v10 = sub_1ADB06370();
  [v9 addInternalDebugDescription_];

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v11 = v9;
    sub_1AD4C0904(v9, 1);
  }
}

uint64_t sub_1AD4C1B14(void *a1)
{
  v2 = v1;
  v132 = sub_1ADB06040();
  v4 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1ADB06060();
  v6 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v129 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 userInfo];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = sub_1ADB06280();

  v142 = @"PKPassLibraryAddedPassesUserInfo";
  type metadata accessor for PKPassLibraryNotificationKey(0);
  sub_1AD4C2A08(&qword_1EB598580, type metadata accessor for PKPassLibraryNotificationKey);
  v11 = @"PKPassLibraryAddedPassesUserInfo";
  sub_1ADB06BD0();
  if (!*(v10 + 16) || (v12 = sub_1AD42BE34(aBlock), (v13 & 1) == 0))
  {

    sub_1AD42E1DC(aBlock);
LABEL_10:
    v147 = 0u;
    v148 = 0u;
    return sub_1AD3D0E3C(&v147, &unk_1EB59AE90);
  }

  sub_1AD3C94C4(*(v10 + 56) + 32 * v12, &v147);
  sub_1AD42E1DC(aBlock);

  if (!*(&v148 + 1))
  {
    return sub_1AD3D0E3C(&v147, &unk_1EB59AE90);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BAD8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v15 = aBlock[0];
  v16 = *(v2 + 80);
  if (!v16)
  {
  }

  v17 = &selRef_fidoAssertion;
  v104 = v16;
  v18 = [v104 identifier];
  if (v18)
  {
    v20 = v18;
    v121 = sub_1ADB063B0();
    v22 = v21;
  }

  else
  {
    v121 = 0;
    v22 = 0;
  }

  if (v15 >> 62)
  {
    goto LABEL_86;
  }

  v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
LABEL_87:
  }

LABEL_16:
  v24 = 0;
  v109 = v15 & 0xC000000000000001;
  v108 = v15 & 0xFFFFFFFFFFFFFF8;
  v107 = v15 + 32;
  v125 = v141;
  v124 = (v4 + 8);
  v123 = (v6 + 8);
  *&v19 = 136315138;
  v113 = v19;
  v122 = xmmword_1ADB789F0;
  v127 = v2;
  v106 = v15;
  v126 = v22;
  v105 = v23;
  while (1)
  {
    if (v109)
    {
      v25 = MEMORY[0x1B26F6CC0](v24, v15);
    }

    else
    {
      if (v24 >= *(v108 + 16))
      {
        goto LABEL_85;
      }

      v25 = *(v107 + 8 * v24);
    }

    v128 = v25;
    v26 = __OFADD__(v24, 1);
    v27 = v24 + 1;
    if (v26)
    {
      goto LABEL_84;
    }

    result = [v128 devicePaymentApplications];
    if (!result)
    {
      break;
    }

    v28 = result;
    v111 = v27;
    v29 = sub_1AD3D3200(0, &unk_1EB59BAE0);
    sub_1AD4C2994(&qword_1EB599EF0, &unk_1EB59BAE0);
    v15 = sub_1ADB06790();

    v112 = v29;
    if ((v15 & 0xC000000000000001) != 0)
    {
      sub_1ADB06B40();
      sub_1ADB067C0();
      v15 = v142;
      v30 = v143;
      v31 = v144;
      v32 = v145;
      v33 = v146;
    }

    else
    {
      v32 = 0;
      v34 = -1 << *(v15 + 32);
      v30 = v15 + 56;
      v35 = ~v34;
      v36 = -v34;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      else
      {
        v37 = -1;
      }

      v33 = v37 & *(v15 + 56);
      v31 = v35;
    }

    v110 = v31;
    v38 = (v31 + 64) >> 6;
    v116 = v30;
    v114 = v38;
    v115 = v15;
LABEL_31:
    if ((v15 & 0x8000000000000000) != 0)
    {
      v45 = sub_1ADB06B90();
      if (v45)
      {
        v139 = v45;
        swift_dynamicCast();
        v44 = aBlock[0];
        v120 = v32;
        v119 = v33;
        if (aBlock[0])
        {
LABEL_40:
          v118 = v44;
          result = [v44 subcredentials];
          if (!result)
          {
            __break(1u);
            break;
          }

          v46 = result;
          v47 = sub_1AD3D3200(0, &unk_1EB59BAF0);
          sub_1AD4C2994(&unk_1EB59C360, &unk_1EB59BAF0);
          v4 = sub_1ADB06790();

          if ((v4 & 0xC000000000000001) != 0)
          {
            sub_1ADB06B40();
            sub_1ADB067C0();
            v6 = *(&v147 + 1);
            v4 = v147;
            v15 = *(&v148 + 1);
            v48 = v148;
            v49 = v149;
          }

          else
          {
            v15 = 0;
            v50 = -1 << *(v4 + 32);
            v6 = v4 + 56;
            v48 = ~v50;
            v51 = -v50;
            if (v51 < 64)
            {
              v52 = ~(-1 << v51);
            }

            else
            {
              v52 = -1;
            }

            v49 = v52 & *(v4 + 56);
          }

          v117 = v48;
          v53 = (v48 + 64) >> 6;
          v134 = v4;
          v136 = v53;
          v135 = v47;
          v133 = v6;
          while (2)
          {
            if (v4 < 0)
            {
              v58 = sub_1ADB06B90();
              if (!v58 || (v139 = v58, swift_dynamicCast(), v57 = aBlock[0], v56 = v15, v138 = v49, !aBlock[0]))
              {
LABEL_30:
                sub_1AD41C998();

                v32 = v120;
                v33 = v119;
                v15 = v115;
                v30 = v116;
                v38 = v114;
                goto LABEL_31;
              }
            }

            else
            {
              v54 = v15;
              v55 = v49;
              v56 = v15;
              if (!v49)
              {
                while (1)
                {
                  v56 = v54 + 1;
                  if (__OFADD__(v54, 1))
                  {
                    break;
                  }

                  if (v56 >= v53)
                  {
                    goto LABEL_30;
                  }

                  v55 = *(v6 + 8 * v56);
                  ++v54;
                  if (v55)
                  {
                    goto LABEL_56;
                  }
                }

                __break(1u);
LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
LABEL_85:
                __break(1u);
LABEL_86:
                v23 = sub_1ADB06D00();
                if (!v23)
                {
                  goto LABEL_87;
                }

                goto LABEL_16;
              }

LABEL_56:
              v138 = (v55 - 1) & v55;
              v57 = *(*(v4 + 48) + ((v56 << 9) | (8 * __clz(__rbit64(v55)))));
              if (!v57)
              {
                goto LABEL_30;
              }
            }

            v59 = v17[511];
            v137 = v57;
            v60 = [v57 v59];
            if (v60)
            {
              v61 = v60;
              v62 = sub_1ADB063B0();
              v64 = v63;

              if (v22)
              {
                if (v62 == v121 && v22 == v64)
                {

                  goto LABEL_71;
                }

                v66 = sub_1ADB06F50();

                if (v66)
                {
LABEL_71:
                  if (qword_1EB5981C0 != -1)
                  {
                    swift_once();
                  }

                  v67 = sub_1ADB05FA0();
                  __swift_project_value_buffer(v67, qword_1EB59AB68);

                  v68 = sub_1ADB05F80();
                  v69 = sub_1ADB06860();

                  if (os_log_type_enabled(v68, v69))
                  {
                    v70 = swift_slowAlloc();
                    v71 = swift_slowAlloc();
                    aBlock[0] = v71;
                    *v70 = v113;
                    v72 = [*(v2 + 56) sid];
                    v73 = sub_1ADB063B0();
                    v75 = v74;

                    v76 = sub_1AD3CA88C(v73, v75, aBlock);

                    *(v70 + 4) = v76;
                    _os_log_impl(&dword_1AD337000, v68, v69, "[%s] Received pass for newly provisioned subcredential", v70, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v71);
                    MEMORY[0x1B26F9F20](v71, -1, -1);
                    MEMORY[0x1B26F9F20](v70, -1, -1);
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BB00);
                  inited = swift_initStackObject();
                  *(inited + 16) = v122;
                  v78 = v128;
                  *(inited + 32) = v128;
                  v79 = v78;
                  v80 = MEMORY[0x1E69E7CC0];
                  v81 = sub_1AD42674C(MEMORY[0x1E69E7CC0]);
                  if (v80 >> 62 && sub_1ADB06D00())
                  {
                    result = [v79 uniqueID];
                    if (!result)
                    {
                      goto LABEL_91;
                    }

                    v97 = result;
                    v98 = sub_1ADB063B0();
                    v100 = v99;

                    v101 = MEMORY[0x1E69E7CC8];
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    aBlock[0] = v101;
                    sub_1AD4ECB74(MEMORY[0x1E69E7CC0], v98, v100, isUniquelyReferenced_nonNull_native);

                    v82 = aBlock[0];
                  }

                  else
                  {
                    v82 = MEMORY[0x1E69E7CC8];
                  }

                  v83 = objc_allocWithZone(type metadata accessor for SEProvisionedPasses());
                  SEProvisionedPasses.init(primaryPass:passes:moreInfoItemsForPass:externalProvisioningMode:suppressMakeDefaultOfferForPass:isExpressModeSetupOptional:isExpressEnabled:)(v79, inited, v82, 0, 2, v81, 0, 0);
                  v85 = v84;
                  sub_1AD3D3200(0, &qword_1EB59A670);
                  v86 = v85;
                  v87 = sub_1ADB068B0();
                  v88 = swift_allocObject();
                  v89 = v127;
                  swift_weakInit();
                  v90 = swift_allocObject();
                  *(v90 + 16) = v88;
                  *(v90 + 24) = v85;
                  *(v90 + 32) = 0;
                  v141[2] = sub_1AD4C29E4;
                  v141[3] = v90;
                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 1107296256;
                  v141[0] = sub_1AD471DC4;
                  v141[1] = &block_descriptor_29;
                  v91 = _Block_copy(aBlock);
                  v92 = v86;

                  v93 = v129;
                  sub_1ADB06050();
                  aBlock[0] = MEMORY[0x1E69E7CC0];
                  sub_1AD4C2A08(&qword_1EB598900, MEMORY[0x1E69E7F60]);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
                  sub_1AD41E8DC(&qword_1EB598910, &qword_1EB59BB30);
                  v94 = v131;
                  v95 = v132;
                  sub_1ADB06B00();
                  MEMORY[0x1B26F6950](0, v93, v94, v91);

                  _Block_release(v91);
                  v96 = v94;
                  v2 = v89;
                  (*v124)(v96, v95);
                  (*v123)(v93, v130);
                  v15 = v56;
                  v49 = v138;
                  v17 = &selRef_fidoAssertion;
                  v22 = v126;
                  v4 = v134;
                  v6 = v133;
                  goto LABEL_50;
                }
              }

              else
              {
              }
            }

            else if (!v22)
            {
              goto LABEL_71;
            }

            v15 = v56;
            v49 = v138;
LABEL_50:
            v53 = v136;
            continue;
          }
        }
      }
    }

    else
    {
      v39 = v32;
      v40 = v33;
      v41 = v32;
      if (v33)
      {
LABEL_36:
        v42 = __clz(__rbit64(v40));
        v119 = (v40 - 1) & v40;
        v43 = *(v15 + 48);
        v120 = v41;
        v44 = *(v43 + ((v41 << 9) | (8 * v42)));
        if (v44)
        {
          goto LABEL_40;
        }
      }

      else
      {
        while (1)
        {
          v41 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_83;
          }

          if (v41 >= v38)
          {
            break;
          }

          v40 = *(v30 + 8 * v41);
          ++v39;
          if (v40)
          {
            goto LABEL_36;
          }
        }
      }
    }

    sub_1AD41C998();

    v24 = v111;
    v15 = v106;
    if (v111 == v105)
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

uint64_t sub_1AD4C2994(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AD3D3200(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD4C2A08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_16Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

void sub_1AD4C2A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v11 = *(a3 + 56);

  v12 = [v11 sid];
  v35 = sub_1ADB063B0();
  v37 = v13;

  v14 = *(a3 + 16);
  swift_beginAccess();
  v34 = *(v14 + 64);
  v15 = *(v14 + 72);
  v16 = *(v14 + 80);
  v36 = v16;
  v17 = v15;
  v18 = [v17 targetDevice];
  if (!v18)
  {

    __break(1u);
LABEL_19:

    __break(1u);
    return;
  }

  v19 = v18;
  if ([v18 respondsToSelector_])
  {
    v20 = [v19 supportsSharingInAChain];
    swift_unknownObjectRelease();
    if (v20)
    {
      goto LABEL_12;
    }

    if (*(a3 + 48))
    {
      goto LABEL_5;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    if (*(a3 + 48))
    {
LABEL_5:
      v21 = 0;
      goto LABEL_8;
    }
  }

  v21 = *(a3 + 24);
LABEL_8:
  v22 = [v21 localAppletSubcredentialPassCredential];

  if (v22)
  {

    v23 = *(a3 + 64);
    *(a3 + 64) = sub_1AD4C2EA8;
    *(a3 + 72) = v10;

    sub_1AD3C5FB8(v23);
    v24 = [v17 targetDevice];
    if (v24)
    {
      v25 = v24;
      if ([v24 respondsToSelector_])
      {
        v26 = swift_allocObject();
        swift_weakInit();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = v35;
        *(v27 + 32) = v37;
        *(v27 + 40) = v34;
        *(v27 + 48) = v17;
        *(v27 + 56) = v16;
        v28 = v17;
        v29 = v36;

        v30 = sub_1ADB06370();
        aBlock[4] = sub_1AD4C2EB4;
        aBlock[5] = v27;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1AD4B7970;
        aBlock[3] = &block_descriptor_35_1;
        v31 = _Block_copy(aBlock);

        [v25 retrieveShareInvitationForMailboxAddress:v30 completion:v31];
        _Block_release(v31);

        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_15;
    }

    goto LABEL_19;
  }

LABEL_12:

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    (*(v32 + 120))(0, 2, a5, a6, ObjectType, v32);

LABEL_15:
    swift_unknownObjectRelease();
    return;
  }
}

uint64_t objectdestroy_27Tm_0(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

__n128 ProvisioningStepWaitForActivation.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a2[1].n128_u64[0];
  v8 = a2[1].n128_u8[8];
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 16) = a1;
  result = *a2;
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = a3;
  return result;
}

uint64_t ProvisioningStepWaitForActivation.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 16) = a1;
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t ProvisioningStepWaitForActivation.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  sub_1AD3C5FB8(*(v0 + 72));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ProvisioningStepWaitForActivation.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  sub_1AD3C5FB8(*(v0 + 72));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

__n128 sub_1AD4C30A4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningStepWaitForActivation();
  v8 = swift_allocObject();
  v9 = a2[1].n128_u64[0];
  v10 = a2[1].n128_u8[8];
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 16) = a1;
  result = *a2;
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 56) = a3;
  *a4 = v8;
  return result;
}

uint64_t sub_1AD4C3164(uint64_t a1, unint64_t a2)
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1ADB05FA0();
  __swift_project_value_buffer(v4, qword_1EB59AB68);

  v5 = sub_1ADB05F80();
  v6 = sub_1ADB06850();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1AD3CA88C(a1, a2, v10);
    _os_log_impl(&dword_1AD337000, v5, v6, "[%s] ProvisioningStepWaitForActivation: Timed out waiting for activation", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B26F9F20](v8, -1, -1);
    MEMORY[0x1B26F9F20](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1AD4C4874();
  }

  return result;
}

uint64_t sub_1AD4C32E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (*(result + 88))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1ADB06910();
      v1[11] = 0;
      swift_unknownObjectRelease();
      v2 = [objc_opt_self() defaultCenter];
      [v2 removeObserver:v1 name:@"PKPassLibraryDidChangeNotification" object:0];

      v3 = v1[9];
      if (v3)
      {

        v3(0, 0);
        swift_unknownObjectRelease();
        sub_1AD3C5FB8(v3);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v4 = v1[9];
      v1[9] = 0;
      v1[10] = 0;
      sub_1AD3C5FB8(v4);
    }
  }

  return result;
}

uint64_t sub_1AD4C341C(void *a1)
{
  v2 = v1;
  v4 = sub_1ADB06040();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ADB06060();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 userInfo];
  if (!v12)
  {
    goto LABEL_8;
  }

  v24 = v9;
  v25 = v5;
  v13 = v12;
  v14 = sub_1ADB06280();

  aBlock[6] = @"PKPassLibraryReplacementPassesUserInfo";
  type metadata accessor for PKPassLibraryNotificationKey(0);
  sub_1AD4C4B60(&qword_1EB598580, type metadata accessor for PKPassLibraryNotificationKey);
  v15 = @"PKPassLibraryReplacementPassesUserInfo";
  sub_1ADB06BD0();
  if (!*(v14 + 16) || (v16 = sub_1AD42BE34(aBlock), (v17 & 1) == 0))
  {

    sub_1AD42E1DC(aBlock);
LABEL_8:
    v27 = 0u;
    v28 = 0u;
    return sub_1AD4C3E44(&v27);
  }

  sub_1AD3C94C4(*(v14 + 56) + 32 * v16, &v27);
  sub_1AD42E1DC(aBlock);

  if (!*(&v28 + 1))
  {
    return sub_1AD4C3E44(&v27);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BAD8);
  result = swift_dynamicCast();
  if (result)
  {
    v19 = aBlock[0];
    sub_1AD3D3200(0, &qword_1EB59A670);
    v20 = sub_1ADB068B0();
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    *(v21 + 24) = v19;
    aBlock[4] = sub_1AD4C3EAC;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD471DC4;
    aBlock[3] = &block_descriptor_30;
    v22 = _Block_copy(aBlock);

    sub_1ADB06050();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1AD4C4B60(&qword_1EB598900, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
    sub_1AD41E8DC(&qword_1EB598910, &qword_1EB59BB30);
    sub_1ADB06B00();
    MEMORY[0x1B26F6950](0, v11, v7, v22);
    _Block_release(v22);

    (*(v25 + 8))(v7, v4);
    return (*(v24 + 8))(v11, v8);
  }

  return result;
}

void sub_1AD4C3854(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 64);
  if (v4 && (v5 = [v4 uniqueID]) != 0)
  {
    v6 = v5;
    v45 = sub_1ADB063B0();
    v8 = v7;
  }

  else
  {
    v45 = 0;
    v8 = 0;
  }

  if (a2 >> 62)
  {
LABEL_51:
    v9 = sub_1ADB06D00();
    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_7:
      v44 = v3;
      v10 = 0;
      v3 = a2 & 0xC000000000000001;
      do
      {
        if (v3)
        {
          v11 = MEMORY[0x1B26F6CC0](v10, a2);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v11 = *(a2 + 8 * v10 + 32);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }
        }

        v46 = v11;
        v13 = [v11 uniqueID];
        if (v13)
        {
          v14 = v13;
          v15 = sub_1ADB063B0();
          v17 = v16;

          if (v8)
          {
            if (v15 == v45 && v8 == v17)
            {

LABEL_26:

LABEL_27:
              v20 = [v46 contactlessActivationState];
              if (v20 > 2)
              {
                if ((v20 - 3) >= 2)
                {
                  goto LABEL_46;
                }

                if (qword_1EB5981C0 != -1)
                {
                  swift_once();
                }

                v21 = sub_1ADB05FA0();
                __swift_project_value_buffer(v21, qword_1EB59AB68);

                v22 = sub_1ADB05F80();
                v23 = sub_1ADB06860();

                if (os_log_type_enabled(v22, v23))
                {
                  v24 = swift_slowAlloc();
                  v25 = swift_slowAlloc();
                  v47 = v25;
                  *v24 = 136315138;
                  v26 = [*(v44 + 56) sid];
                  v27 = sub_1ADB063B0();
                  v29 = v28;

                  v30 = sub_1AD3CA88C(v27, v29, &v47);

                  *(v24 + 4) = v30;
                  v31 = "[%s] ProvisioningStepWaitForActivation: received terminal pass, giving up waiting.";
                  goto LABEL_44;
                }
              }

              else if (v20)
              {
                if (v20 != 1)
                {
LABEL_46:

                  return;
                }

                if (qword_1EB5981C0 != -1)
                {
                  swift_once();
                }

                v38 = sub_1ADB05FA0();
                __swift_project_value_buffer(v38, qword_1EB59AB68);

                v22 = sub_1ADB05F80();
                v23 = sub_1ADB06860();

                if (os_log_type_enabled(v22, v23))
                {
                  v24 = swift_slowAlloc();
                  v25 = swift_slowAlloc();
                  v47 = v25;
                  *v24 = 136315138;
                  v39 = [*(v44 + 56) sid];
                  v40 = sub_1ADB063B0();
                  v42 = v41;

                  v43 = sub_1AD3CA88C(v40, v42, &v47);

                  *(v24 + 4) = v43;
                  v31 = "[%s] ProvisioningStepWaitForActivation: received pass that requires activation, giving up waiting.";
LABEL_44:
                  _os_log_impl(&dword_1AD337000, v22, v23, v31, v24, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v25);
                  MEMORY[0x1B26F9F20](v25, -1, -1);
                  MEMORY[0x1B26F9F20](v24, -1, -1);
                }
              }

              else
              {
                if (qword_1EB5981C0 != -1)
                {
                  swift_once();
                }

                v32 = sub_1ADB05FA0();
                __swift_project_value_buffer(v32, qword_1EB59AB68);

                v22 = sub_1ADB05F80();
                v23 = sub_1ADB06860();

                if (os_log_type_enabled(v22, v23))
                {
                  v24 = swift_slowAlloc();
                  v25 = swift_slowAlloc();
                  v47 = v25;
                  *v24 = 136315138;
                  v33 = [*(v44 + 56) sid];
                  v34 = sub_1ADB063B0();
                  v36 = v35;

                  v37 = sub_1AD3CA88C(v34, v36, &v47);

                  *(v24 + 4) = v37;
                  v31 = "[%s] ProvisioningStepWaitForActivation: received activated pass";
                  goto LABEL_44;
                }
              }

              sub_1AD4C4874();
              goto LABEL_46;
            }

            v19 = sub_1ADB06F50();

            if (v19)
            {
              goto LABEL_26;
            }
          }

          else
          {
          }
        }

        else if (!v8)
        {
          goto LABEL_27;
        }

        ++v10;
      }

      while (v12 != v9);
    }
  }
}

uint64_t sub_1AD4C3E44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59AE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AD4C3ECC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_1ADB06040();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1ADB06060();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1ADB06030();
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v79 = (&v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v67 - v17;
  v77 = sub_1ADB06080();
  v76 = *(v77 - 8);
  v18 = MEMORY[0x1EEE9AC00](v77);
  v74 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v67 - v20;
  v21 = sub_1ADB068D0();
  v72 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a4;
  v86 = a4;
  v87 = v24;
  v24[4] = a5;
  v25 = *(a2 + 56);

  v26 = [v25 sid];
  v73 = sub_1ADB063B0();
  v28 = v27;

  if (*(*(a2 + 16) + 32) == 1)
  {
    v70 = v28;
    v69 = v11;
    v71 = a2;
    v29 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers;
    swift_beginAccess();
    v30 = *(a1 + v29);
    if (v30[2])
    {
      v68 = v10;
      v31 = v30[4];
      v32 = v30[5];
      v33 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passesForUniqueIdentifier;
      swift_beginAccess();
      v34 = *(a1 + v33);
      if (!*(v34 + 16))
      {
LABEL_17:

        __break(1u);
        return;
      }

      v35 = sub_1AD425BEC(v31, v32);
      v37 = v36;

      if (v37)
      {
        v38 = *(*(v34 + 56) + 8 * v35);

        if ([v38 contactlessActivationState] == 2)
        {
          v39 = v71;
          v40 = *(v71 + 64);
          *(v71 + 64) = v38;
          v86 = v38;

          v41 = *(v39 + 72);
          v42 = v87;
          *(v39 + 72) = sub_1AD42F778;
          *(v39 + 80) = v42;

          sub_1AD3C5FB8(v41);
          sub_1AD3D3200(0, &unk_1EB59BB10);
          sub_1AD3D3200(0, &qword_1EB59A670);
          v43 = sub_1ADB068B0();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1AD4C4B60(&unk_1EB599FB0, MEMORY[0x1E69E80B0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BB20);
          sub_1AD41E8DC(&unk_1EB599FC0, &unk_1EB59BB20);
          sub_1ADB06B00();
          v44 = sub_1ADB068E0();

          (*(v72 + 8))(v23, v21);
          ObjectType = swift_getObjectType();
          v46 = v74;
          sub_1ADB06070();
          v47 = v75;
          sub_1ADB06090();
          v48 = *(v76 + 8);
          v49 = v77;
          v48(v46, v77);
          v50 = v78;
          sub_1AD508F64(v78);
          v51 = v79;
          sub_1AD508FD8(v79);
          MEMORY[0x1B26F69C0](v47, v50, v51, ObjectType);
          v52 = *(v80 + 8);
          v53 = v51;
          v54 = v81;
          v52(v53, v81);
          v52(v50, v54);
          v48(v47, v49);
          v55 = swift_allocObject();
          v56 = v71;
          swift_weakInit();
          v57 = swift_allocObject();
          v58 = v70;
          v57[2] = v73;
          v57[3] = v58;
          v57[4] = v55;
          aBlock[4] = sub_1AD4C4BA8;
          aBlock[5] = v57;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1AD471DC4;
          aBlock[3] = &block_descriptor_26;
          v59 = _Block_copy(aBlock);

          v60 = v82;
          sub_1AD509050();
          v61 = v84;
          sub_1AD509054();
          sub_1ADB06900();
          _Block_release(v59);
          (*(v69 + 8))(v61, v68);
          (*(v83 + 8))(v60, v85);

          *(v56 + 88) = v44;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          sub_1ADB06920();
          v62 = [objc_opt_self() defaultCenter];
          [v62 addObserver:v56 selector:sel_passLibraryDidChangeWithNotification_ name:@"PKPassLibraryDidChangeNotification" object:0];

          swift_unknownObjectRelease();
          return;
        }

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v65 = *(a3 + 24);
          v66 = swift_getObjectType();
          (*(v65 + 8))(0, 0, v86, a5, v66, v65);

          goto LABEL_11;
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v63 = *(a3 + 24);
    v64 = swift_getObjectType();
    (*(v63 + 8))(0, 0, v86, a5, v64, v63);

LABEL_11:
    swift_unknownObjectRelease();
    return;
  }
}