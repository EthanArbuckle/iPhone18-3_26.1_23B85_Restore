uint64_t sub_21CFA3214(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE454F0, &qword_21D0241E0);
  v38 = a2;
  result = sub_21D022A54();
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
      sub_21D022C04();
      sub_21D022614();
      result = sub_21D022C24();
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

uint64_t sub_21CFA34BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE454F8, &qword_21D0241E8);
  v38 = a2;
  result = sub_21D022A54();
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
      sub_21D022C04();
      sub_21D022614();
      result = sub_21D022C24();
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

uint64_t sub_21CFA3764(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21D022974() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_21D022C04();

      sub_21D022614();
      v13 = sub_21D022C24();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
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

uint64_t sub_21CFA3914(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21D022974() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_21D022C04();

      sub_21D022614();
      v13 = sub_21D022C24();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
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

uint64_t sub_21CFA3AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21CF9D320(a3, a4);
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
      sub_21CFA2CB4(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_21CF9D320(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_21D022B54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21CFA410C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_21CFA3C74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_21CF9D320(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_21CFA2F74(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_21CF9D320(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_21D022B54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_21CFA4284(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_21CFA3E14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21CF9D320(a2, a3);
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
      sub_21CFA3214(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_21CF9D320(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_21D022B54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21CFA43E4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_21CFA3F90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21CF9D320(a2, a3);
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
      sub_21CFA34BC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_21CF9D320(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_21D022B54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21CFA4554();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_21CFA410C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45510, &qword_21D024200);
  v2 = *v0;
  v3 = sub_21D022A44();
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

void *sub_21CFA4284(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21D022A44();
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

void *sub_21CFA43E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE454F0, &qword_21D0241E0);
  v2 = *v0;
  v3 = sub_21D022A44();
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

void *sub_21CFA4554()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE454F8, &qword_21D0241E8);
  v2 = *v0;
  v3 = sub_21D022A44();
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

uint64_t sub_21CFA46C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CF83390;

  return sub_21CFA0930(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CFA478C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CF95398;

  return sub_21CFA11F4(a1, v4, v5, v6);
}

uint64_t sub_21CFA484C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CFA4894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 8);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = sub_21CF83390;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_21CFA4A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = *(a11 + 16);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v11 + 16) = v20;
  *v20 = v11;
  v20[1] = sub_21CF83390;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

PrivateMLClient::PrivateMLClientErrorCode_optional __swiftcall PrivateMLClientErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t PrivateMLClientErrorCode.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_21CFA4BDC()
{
  v1 = *v0;
  sub_21D022C04();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x223D3A6E0](v2);
  return sub_21D022C24();
}

uint64_t sub_21CFA4C2C()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x223D3A6E0](v1);
}

uint64_t sub_21CFA4C64()
{
  v1 = *v0;
  sub_21D022C04();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x223D3A6E0](v2);
  return sub_21D022C24();
}

void *sub_21CFA4CB0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_21CFA4CD0(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t PrivateMLClientError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEDED0];
  v3 = sub_21D022064();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_21CFA4D9C()
{
  result = qword_27CE455C0;
  if (!qword_27CE455C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE455C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateMLClientErrorCode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrivateMLClientErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21CFA4F74(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21CFB493C(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_21CFB493C(v4 > 1, v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45258, &unk_21D023570) - 8);
  result = sub_21CF7F260(a1, v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5);
  *v1 = v3;
  return result;
}

uint64_t sub_21CFA509C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_21D022B24();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_21CFA52A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x800000021D02D2F0;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x800000021D02D310;
    }

    v5 = 0x800000021D02D2B0;
    if (a1 != 3)
    {
      v5 = 0x800000021D02D2D0;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_21D022B24();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x800000021D02D2F0;
    }

    else
    {
      v10 = 0x800000021D02D310;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x800000021D02D2B0;
    }

    else
    {
      v10 = 0x800000021D02D2D0;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_21CFA5478(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = sub_21D022B24();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

unint64_t PrivateMLRequest.Response.CompletionReason.description.getter()
{
  v1 = 0x526E776F6E6B6E75;
  v2 = 0xD000000000000017;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_21CFA56F8()
{
  v1 = 0x526E776F6E6B6E75;
  v2 = 0xD000000000000017;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t PrivateMLRequest.Response.makeAsyncEventsIterator(transparencyReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PrivateMLRequest(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455C8, &unk_21D0246A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20[-1] - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A8, &qword_21D023940);
  sub_21D0227B4();
  v14 = type metadata accessor for PrivateMLRequest.Response(0);
  sub_21CFB519C(v2 + *(v14 + 20), v8, type metadata accessor for PrivateMLRequest);
  sub_21CF8F87C(a1, v20);
  v15 = type metadata accessor for PrivateMLRequest.Response.AsyncEventsIterator(0);
  v16 = v15[6];
  v17 = *(v10 + 56);
  v17(a2 + v16, 1, 1, v9);
  sub_21CF7F200(a2 + v16, &qword_27CE455D0, &qword_21D0246B0);
  (*(v10 + 16))(a2 + v16, v13, v9);
  v17(a2 + v16, 0, 1, v9);
  sub_21CFB519C(v8, a2 + v15[5], type metadata accessor for PrivateMLRequest);
  sub_21CF8F87C(v20, a2 + v15[7]);
  sub_21D022494();
  __swift_destroy_boxed_opaque_existential_0(v20);
  sub_21CFB513C(v8, type metadata accessor for PrivateMLRequest);
  return (*(v10 + 8))(v13, v9);
}

uint64_t PrivateMLRequest.Response.AsyncEventsIterator.next()(uint64_t a1)
{
  v2[342] = v1;
  v2[341] = a1;
  v3 = *(*(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse(0) - 8) + 64) + 15;
  v2[343] = swift_task_alloc();
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached(0);
  v2[344] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[345] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455D8, &qword_21D0246C0) - 8) + 64) + 15;
  v2[346] = swift_task_alloc();
  v2[347] = swift_task_alloc();
  v7 = type metadata accessor for PrivateMLClientAlertService();
  v2[348] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[349] = swift_task_alloc();
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse(0);
  v2[350] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[351] = swift_task_alloc();
  v2[352] = swift_task_alloc();
  v2[353] = swift_task_alloc();
  v2[354] = swift_task_alloc();
  v2[355] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8) - 8) + 64) + 15;
  v2[356] = swift_task_alloc();
  v2[357] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45258, &unk_21D023570);
  v2[358] = v12;
  v13 = *(v12 - 8);
  v2[359] = v13;
  v14 = *(v13 + 64) + 15;
  v2[360] = swift_task_alloc();
  v2[361] = swift_task_alloc();
  v2[362] = swift_task_alloc();
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
  v2[363] = v15;
  v16 = *(v15 - 8);
  v2[364] = v16;
  v17 = *(v16 + 64) + 15;
  v2[365] = swift_task_alloc();
  v2[366] = swift_task_alloc();
  v2[367] = swift_task_alloc();
  v2[368] = swift_task_alloc();
  v2[369] = swift_task_alloc();
  v2[370] = swift_task_alloc();
  v2[371] = swift_task_alloc();
  v2[372] = swift_task_alloc();
  v2[373] = swift_task_alloc();
  v2[374] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45248, &unk_21D023560) - 8) + 64) + 15;
  v2[375] = swift_task_alloc();
  v2[376] = swift_task_alloc();
  v2[377] = swift_task_alloc();
  v2[378] = swift_task_alloc();
  v19 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo(0);
  v2[379] = v19;
  v20 = *(v19 - 8);
  v2[380] = v20;
  v21 = *(v20 + 64) + 15;
  v2[381] = swift_task_alloc();
  v2[382] = swift_task_alloc();
  v2[383] = swift_task_alloc();
  v2[384] = swift_task_alloc();
  v2[385] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E8, &unk_21D0246D0) - 8) + 64) + 15;
  v2[386] = swift_task_alloc();
  v2[387] = swift_task_alloc();
  v2[388] = swift_task_alloc();
  v2[389] = swift_task_alloc();
  v2[390] = swift_task_alloc();
  v2[391] = swift_task_alloc();
  v2[392] = swift_task_alloc();
  v23 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse(0);
  v2[393] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v2[394] = swift_task_alloc();
  v25 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(0);
  v2[395] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v2[396] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45200, &qword_21D023518) - 8) + 64) + 15;
  v2[397] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45240, &unk_21D0246E0) - 8) + 64) + 15;
  v2[398] = swift_task_alloc();
  v29 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v2[399] = v29;
  v30 = *(v29 - 8);
  v2[400] = v30;
  v31 = *(v30 + 64) + 15;
  v2[401] = swift_task_alloc();
  v2[402] = swift_task_alloc();
  v2[403] = swift_task_alloc();
  v2[404] = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F0, &unk_21D026C00) - 8) + 64) + 15;
  v2[405] = swift_task_alloc();
  v2[406] = swift_task_alloc();
  v2[407] = swift_task_alloc();
  v2[408] = swift_task_alloc();
  v2[409] = swift_task_alloc();
  v33 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse(0);
  v2[410] = v33;
  v34 = *(*(v33 - 8) + 64) + 15;
  v2[411] = swift_task_alloc();
  v2[412] = swift_task_alloc();
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0) - 8) + 64) + 15;
  v2[413] = swift_task_alloc();
  v36 = *(*(sub_21D021D34() - 8) + 64) + 15;
  v2[414] = swift_task_alloc();
  Response = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse(0);
  v2[415] = Response;
  v38 = *(*(Response - 8) + 64) + 15;
  v2[416] = swift_task_alloc();
  v39 = sub_21D0224A4();
  v2[417] = v39;
  v40 = *(v39 - 8);
  v2[418] = v40;
  v41 = *(v40 + 64) + 15;
  v2[419] = swift_task_alloc();
  v2[420] = swift_task_alloc();
  v2[421] = swift_task_alloc();
  v2[422] = swift_task_alloc();
  v2[423] = swift_task_alloc();
  v2[424] = swift_task_alloc();
  v2[425] = swift_task_alloc();
  v2[426] = swift_task_alloc();
  v2[427] = swift_task_alloc();
  v2[428] = swift_task_alloc();
  v2[429] = swift_task_alloc();
  v2[430] = swift_task_alloc();
  v2[431] = swift_task_alloc();
  v2[432] = swift_task_alloc();
  v2[433] = swift_task_alloc();
  v2[434] = swift_task_alloc();
  v2[435] = swift_task_alloc();
  v2[436] = swift_task_alloc();
  v2[437] = swift_task_alloc();
  v2[438] = swift_task_alloc();
  v2[439] = swift_task_alloc();
  v2[440] = swift_task_alloc();
  v2[441] = swift_task_alloc();
  v2[442] = swift_task_alloc();
  v2[443] = swift_task_alloc();
  v2[444] = swift_task_alloc();
  v2[445] = swift_task_alloc();
  v2[446] = swift_task_alloc();
  v2[447] = swift_task_alloc();
  v2[448] = swift_task_alloc();
  v2[449] = swift_task_alloc();
  v2[450] = swift_task_alloc();
  v2[451] = swift_task_alloc();
  v2[452] = swift_task_alloc();
  v2[453] = swift_task_alloc();
  v42 = sub_21D021A74();
  v2[454] = v42;
  v43 = *(v42 - 8);
  v2[455] = v43;
  v44 = *(v43 + 64) + 15;
  v2[456] = swift_task_alloc();
  v2[457] = swift_task_alloc();
  v2[458] = swift_task_alloc();
  v2[459] = swift_task_alloc();
  v2[460] = swift_task_alloc();
  v2[461] = swift_task_alloc();
  v2[462] = swift_task_alloc();
  v2[463] = swift_task_alloc();
  v2[464] = swift_task_alloc();
  v2[465] = swift_task_alloc();
  v2[466] = swift_task_alloc();
  v2[467] = swift_task_alloc();
  v2[468] = swift_task_alloc();
  v2[469] = swift_task_alloc();
  v2[470] = swift_task_alloc();
  v2[471] = swift_task_alloc();
  v2[472] = swift_task_alloc();
  v2[473] = swift_task_alloc();
  v2[474] = swift_task_alloc();
  v2[475] = swift_task_alloc();
  v2[476] = swift_task_alloc();
  v2[477] = swift_task_alloc();
  v2[478] = swift_task_alloc();
  v2[479] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CFA64D8, 0, 0);
}

uint64_t sub_21CFA64D8()
{
  v168 = v0;
  v1 = *(v0 + 3832);
  v2 = *(v0 + 3824);
  v3 = *(v0 + 3640);
  v4 = *(v0 + 3632);
  v5 = *(v0 + 3624);
  v6 = *(v0 + 3344);
  v7 = *(v0 + 3336);
  v8 = *(v0 + 2736);
  v9 = type metadata accessor for PrivateMLRequest.Response.AsyncEventsIterator(0);
  *(v0 + 3840) = v9;
  v165 = v9;
  v10 = *(v9 + 20);
  *(v0 + 2268) = v10;
  v11 = *(v3 + 16);
  *(v0 + 3848) = v11;
  *(v0 + 3856) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v1, v8 + v10, v4);
  v12 = *(v6 + 16);
  *(v0 + 3864) = v12;
  *(v0 + 3872) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v5, v8, v7);
  v11(v2, v1, v4);
  v13 = sub_21D022484();
  v14 = sub_21D0228D4();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 3824);
  v17 = *(v0 + 3640);
  v18 = *(v0 + 3632);
  v19 = *(v0 + 3624);
  v20 = *(v0 + 3344);
  v21 = *(v0 + 3336);
  if (v15)
  {
    v22 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v167 = v163;
    *v22 = 136315138;
    sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
    v159 = v21;
    v161 = v19;
    v23 = sub_21D022B04();
    v25 = v24;
    v157 = v14;
    v26 = *(v17 + 8);
    v26(v16, v18);
    v27 = sub_21CF9703C(v23, v25, &v167);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_21CF72000, v13, v157, "%s waiting for next response data", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v163);
    MEMORY[0x223D3ADE0](v163, -1, -1);
    MEMORY[0x223D3ADE0](v22, -1, -1);

    v28 = *(v20 + 8);
    v28(v161, v159);
  }

  else
  {

    v26 = *(v17 + 8);
    v26(v16, v18);
    v28 = *(v20 + 8);
    v28(v19, v21);
  }

  *(v0 + 3888) = v26;
  *(v0 + 3880) = v28;
  v29 = *(v0 + 2736);
  v30 = *(v165 + 24);
  *(v0 + 2348) = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455C8, &unk_21D0246A0);
  *(v0 + 3896) = v31;
  v32 = *(v31 - 8);
  *(v0 + 3904) = v32;
  if ((*(v32 + 48))(v29 + v30, 1, v31))
  {
    v33 = *(v0 + 3640) + 8;
    v26(*(v0 + 3832), *(v0 + 3632));
    v34 = *(v0 + 3904);
    v35 = *(v0 + 3896);
    v36 = *(v0 + 2348);
    v37 = *(v0 + 2736);
    v38 = *(v0 + 2728);
    sub_21CF7F200(v37 + v36, &qword_27CE455D0, &qword_21D0246B0);
    (*(v34 + 56))(v37 + v36, 1, 1, v35);
    v39 = type metadata accessor for PrivateMLRequest.Response.Event(0);
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
    v40 = *(v0 + 3832);
    v41 = *(v0 + 3824);
    v42 = *(v0 + 3816);
    v43 = *(v0 + 3808);
    v44 = *(v0 + 3800);
    v45 = *(v0 + 3792);
    v46 = *(v0 + 3784);
    v47 = *(v0 + 3776);
    v48 = *(v0 + 3768);
    v49 = *(v0 + 3760);
    v54 = *(v0 + 3752);
    v55 = *(v0 + 3744);
    v56 = *(v0 + 3736);
    v57 = *(v0 + 3728);
    v58 = *(v0 + 3720);
    v59 = *(v0 + 3712);
    v60 = *(v0 + 3704);
    v61 = *(v0 + 3696);
    v62 = *(v0 + 3688);
    v63 = *(v0 + 3680);
    v64 = *(v0 + 3672);
    v65 = *(v0 + 3664);
    v66 = *(v0 + 3656);
    v67 = *(v0 + 3648);
    v68 = *(v0 + 3624);
    v69 = *(v0 + 3616);
    v70 = *(v0 + 3608);
    v71 = *(v0 + 3600);
    v72 = *(v0 + 3592);
    v73 = *(v0 + 3584);
    v74 = *(v0 + 3576);
    v75 = *(v0 + 3568);
    v76 = *(v0 + 3560);
    v77 = *(v0 + 3552);
    v78 = *(v0 + 3544);
    v79 = *(v0 + 3536);
    v80 = *(v0 + 3528);
    v81 = *(v0 + 3520);
    v82 = *(v0 + 3512);
    v83 = *(v0 + 3504);
    v84 = *(v0 + 3496);
    v85 = *(v0 + 3488);
    v86 = *(v0 + 3480);
    v87 = *(v0 + 3472);
    v88 = *(v0 + 3464);
    v89 = *(v0 + 3456);
    v90 = *(v0 + 3448);
    v91 = *(v0 + 3440);
    v92 = *(v0 + 3432);
    v93 = *(v0 + 3424);
    v94 = *(v0 + 3416);
    v95 = *(v0 + 3408);
    v96 = *(v0 + 3400);
    v97 = *(v0 + 3392);
    v98 = *(v0 + 3384);
    v99 = *(v0 + 3376);
    v100 = *(v0 + 3368);
    v101 = *(v0 + 3360);
    v102 = *(v0 + 3352);
    v103 = *(v0 + 3328);
    v104 = *(v0 + 3312);
    v105 = *(v0 + 3304);
    v106 = *(v0 + 3296);
    v107 = *(v0 + 3288);
    v108 = *(v0 + 3272);
    v109 = *(v0 + 3264);
    v110 = *(v0 + 3256);
    v111 = *(v0 + 3248);
    v112 = *(v0 + 3240);
    v113 = *(v0 + 3232);
    v114 = *(v0 + 3224);
    v115 = *(v0 + 3216);
    v116 = *(v0 + 3208);
    v117 = *(v0 + 3184);
    v118 = *(v0 + 3176);
    v119 = *(v0 + 3168);
    v120 = *(v0 + 3152);
    v121 = *(v0 + 3136);
    v122 = *(v0 + 3128);
    v123 = *(v0 + 3120);
    v124 = *(v0 + 3112);
    v125 = *(v0 + 3104);
    v126 = *(v0 + 3096);
    v127 = *(v0 + 3088);
    v128 = *(v0 + 3080);
    v129 = *(v0 + 3072);
    v130 = *(v0 + 3064);
    v131 = *(v0 + 3056);
    v132 = *(v0 + 3048);
    v133 = *(v0 + 3024);
    v134 = *(v0 + 3016);
    v135 = *(v0 + 3008);
    v136 = *(v0 + 3000);
    v137 = *(v0 + 2992);
    v138 = *(v0 + 2984);
    v139 = *(v0 + 2976);
    v140 = *(v0 + 2968);
    v141 = *(v0 + 2960);
    v142 = *(v0 + 2952);
    v143 = *(v0 + 2944);
    v144 = *(v0 + 2936);
    v145 = *(v0 + 2928);
    v146 = *(v0 + 2920);
    v147 = *(v0 + 2896);
    v148 = *(v0 + 2888);
    v149 = *(v0 + 2880);
    v150 = *(v0 + 2856);
    v151 = *(v0 + 2848);
    v152 = *(v0 + 2840);
    v153 = *(v0 + 2832);
    v154 = *(v0 + 2824);
    v155 = *(v0 + 2816);
    v156 = *(v0 + 2808);
    v158 = *(v0 + 2792);
    v160 = *(v0 + 2776);
    v162 = *(v0 + 2768);
    v164 = *(v0 + 2760);
    v166 = *(v0 + 2744);

    v50 = *(v0 + 8);

    return v50();
  }

  else
  {
    v52 = *(MEMORY[0x277D858C0] + 4);
    v53 = swift_task_alloc();
    *(v0 + 3912) = v53;
    *v53 = v0;
    v53[1] = sub_21CFA6FD0;

    return MEMORY[0x2822005B0](v0 + 2712, v31);
  }
}

uint64_t sub_21CFA6FD0()
{
  v2 = *(*v1 + 3912);
  v5 = *v1;
  *(*v1 + 3920) = v0;

  if (v0)
  {
    v3 = sub_21CFAF990;
  }

  else
  {
    v3 = sub_21CFA70E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CFA70E4()
{
  v1607 = v0;
  v1 = v0;
  v2 = *(v0 + 2720);
  if (v2 >> 60 == 15)
  {
    v3 = *(v0 + 3640) + 8;
    (*(v0 + 3888))(*(v0 + 3832), *(v0 + 3632));
    v4 = *(v0 + 3904);
    v5 = *(v1 + 3896);
    v6 = *(v1 + 2348);
    v7 = *(v1 + 2736);
    v8 = *(v1 + 2728);
    sub_21CF7F200(v7 + v6, &qword_27CE455D0, &qword_21D0246B0);
    (*(v4 + 56))(v7 + v6, 1, 1, v5);
    v9 = type metadata accessor for PrivateMLRequest.Response.Event(0);
    v10 = *(*(v9 - 8) + 56);
    v11 = v8;
LABEL_3:
    v12 = 1;
LABEL_4:
    v10(v11, v12, 1, v9);
    goto LABEL_5;
  }

  v25 = *(v0 + 2712);
  v26 = *(v0 + 3872);
  v27 = *(v0 + 3864);
  v28 = *(v0 + 3856);
  v29 = *(v1 + 3848);
  v30 = *(v1 + 3832);
  v31 = *(v1 + 3816);
  v32 = *(v1 + 3632);
  v27(*(v1 + 3616), *(v1 + 2736), *(v1 + 3336));
  v29(v31, v30, v32);
  sub_21CF9EDB8(v25, v2);
  sub_21CF8F3E0(v25, v2);
  v33 = sub_21D022484();
  v34 = sub_21D0228D4();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v1 + 3888);
  v1580 = v1;
  if (!v35)
  {
    v1555 = *(v1 + 3880);
    v46 = *(v1 + 3816);
    v47 = v33;
    v48 = *(v1 + 3640);
    v49 = *(v1 + 3632);
    v50 = *(v1 + 3616);
    v51 = *(v1 + 3344);
    v52 = *(v1580 + 3336);
    sub_21CF94FCC(v25, v2);
    v36(v46, v49);
    sub_21CF94FCC(v25, v2);

    v1 = v1580;
    v1555(v50, v52);
    goto LABEL_19;
  }

  v1424 = v25;
  v37 = *(v1 + 3816);
  v1427 = v2;
  v38 = *(v1 + 3640);
  v39 = *(v1 + 3632);
  v40 = swift_slowAlloc();
  v1554 = swift_slowAlloc();
  *&v1598 = v1554;
  *v40 = 136315394;
  sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
  v41 = sub_21D022B04();
  v43 = sub_21CF9703C(v41, v42, &v1598);

  *(v40 + 4) = v43;
  v36(v37, v39);
  *(v40 + 12) = 2048;
  v44 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v25 = v1424;
    if (v44 == 2)
    {
      v54 = *(v1424 + 16);
      v53 = *(v1424 + 24);
      sub_21CF94FCC(v1424, v2);
      v45 = v53 - v54;
      v1 = v1580;
      if (__OFSUB__(v53, v54))
      {
        goto LABEL_374;
      }

      v25 = v1424;
      goto LABEL_18;
    }

    sub_21CF94FCC(v1424, v2);
    v45 = 0;
  }

  else
  {
    v25 = v1424;
    if (v44)
    {
      v53 = HIDWORD(v1424);
      sub_21CF94FCC(v1424, v2);
      LODWORD(v45) = HIDWORD(v1424) - v1424;
      v1 = v1580;
      if (__OFSUB__(HIDWORD(v1424), v1424))
      {
        goto LABEL_375;
      }

      v45 = v45;
      v25 = v1424;
      goto LABEL_18;
    }

    sub_21CF94FCC(v1424, v2);
    v45 = BYTE6(v2);
  }

  v1 = v1580;
LABEL_18:
  v55 = *(v1 + 3880);
  v56 = *(v1 + 3616);
  v57 = *(v1 + 3344);
  v58 = *(v1 + 3336);
  *(v40 + 14) = v45;
  sub_21CF94FCC(v25, v2);
  _os_log_impl(&dword_21CF72000, v33, v34, "%s received next response data %ld", v40, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v1554);
  MEMORY[0x223D3ADE0](v1554, -1, -1);
  MEMORY[0x223D3ADE0](v40, -1, -1);

  v55(v56, v58);
LABEL_19:
  v59 = *(v1 + 3920);
  v60 = *(v1 + 3328);
  v61 = *(v1 + 3320);
  v62 = *(v1 + 3312);
  *&v1600 = 0;
  v1598 = 0u;
  v1599 = 0u;
  sub_21CF8F3E0(v25, v2);
  sub_21D021D24();
  sub_21CFB5744(qword_28121B828, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
  sub_21D021EB4();
  if (v59)
  {
    v63 = *(v1 + 3640) + 8;
    (*(v1 + 3888))(*(v1 + 3832), *(v1 + 3632));
    sub_21CF94FCC(v25, v2);
LABEL_31:
    v124 = *(v1 + 3832);
    v125 = *(v1 + 3824);
    v126 = *(v1 + 3816);
    v127 = v1;
    v128 = *(v1 + 3808);
    v129 = v127[475];
    v130 = v127[474];
    v131 = v127[473];
    v132 = v127[472];
    v133 = v127[471];
    v134 = v127[470];
    v1183 = v127[469];
    v1185 = v127[468];
    v1187 = v127[467];
    v1189 = v127[466];
    v1191 = v127[465];
    v1193 = v127[464];
    v1195 = v127[463];
    v1197 = v127[462];
    v1199 = v127[461];
    v1201 = v127[460];
    v1203 = v127[459];
    v1205 = v127[458];
    v1207 = v127[457];
    v1209 = v127[456];
    v1211 = v127[453];
    v1213 = v127[452];
    v1215 = v127[451];
    v1217 = v127[450];
    v1219 = v127[449];
    v1221 = v127[448];
    v1223 = v127[447];
    v1225 = v127[446];
    v1227 = v127[445];
    v1229 = v127[444];
    v1231 = v127[443];
    v1233 = v127[442];
    v1235 = v127[441];
    v1237 = v127[440];
    v1239 = v127[439];
    v1241 = v127[438];
    v1243 = v127[437];
    v1245 = v127[436];
    v1247 = v127[435];
    v1249 = v127[434];
    v1251 = v127[433];
    v1253 = v127[432];
    v1255 = v127[431];
    v1257 = v127[430];
    v1259 = v127[429];
    v1261 = v127[428];
    v1263 = v127[427];
    v1265 = v127[426];
    v1267 = v127[425];
    v1269 = v127[424];
    v1271 = v127[423];
    v1273 = v127[422];
    v1275 = v127[421];
    v1277 = v127[420];
    v1279 = v127[419];
    v1281 = v127[416];
    v1283 = v127[414];
    v1285 = v127[413];
    v1287 = v127[412];
    v1289 = v127[411];
    v1291 = v127[409];
    v1293 = v127[408];
    v1295 = v127[407];
    v1297 = v127[406];
    v1299 = v127[405];
    v1301 = v127[404];
    v1303 = v127[403];
    v1305 = v127[402];
    v1307 = v127[401];
    v1309 = v127[398];
    v1311 = v127[397];
    v1313 = v127[396];
    v1315 = v127[394];
    v1317 = v127[392];
    v1319 = v127[391];
    v1321 = v127[390];
    v1323 = v127[389];
    v1325 = v127[388];
    v1327 = v127[387];
    v1329 = v127[386];
    v1331 = v127[385];
    v1333 = v127[384];
    v1335 = v127[383];
    v1337 = v127[382];
    v1339 = v127[381];
    v1341 = v127[378];
    v1343 = v127[377];
    v1345 = v127[376];
    v1348 = v127[375];
    v1350 = v127[374];
    v1354 = v127[373];
    v1358 = v127[372];
    v1363 = v127[371];
    v1370 = v127[370];
    v1374 = v127[369];
    v1377 = v127[368];
    v1381 = v127[367];
    v1389 = v127[366];
    v1394 = v127[365];
    v1401 = v127[362];
    v1409 = v127[361];
    v1412 = v127[360];
    v1416 = v127[357];
    v1425 = v127[356];
    v1428 = v127[355];
    v1430 = v127[354];
    logg = v127[353];
    v1453 = v127[352];
    v1461 = v127[351];
    v1476 = v127[349];
    v1488 = v127[347];
    v1511 = v127[346];
    v1533 = v127[345];
    v1581 = v127[343];

    v24 = v127[1];
    goto LABEL_32;
  }

  v64 = *(v1 + 3304);
  sub_21CF7F198(*(v1 + 3328), v64, &qword_27CE455F8, &qword_21D0246F0);
  v65 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v1427 = v2;
  v1424 = v25;
  if ((*(*(v65 - 8) + 48))(v64, 1, v65) == 1)
  {
    v66 = *(v1 + 3872);
    v67 = *(v1 + 3856);
    v68 = *(v1 + 3848);
    v69 = *(v1 + 3832);
    v70 = *(v1 + 3648);
    v71 = *(v1 + 3632);
    (*(v1 + 3864))(*(v1 + 3352), *(v1 + 2736), *(v1 + 3336));
    v68(v70, v69, v71);
    v72 = sub_21D022484();
    v73 = sub_21D0228C4();
    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v1 + 3888);
    v76 = *(v1 + 3880);
    v77 = *(v1 + 3648);
    v78 = *(v1 + 3640);
    v79 = v1;
    v80 = *(v1 + 3632);
    v81 = v79[419];
    v1556 = v79[418];
    v82 = v79[417];
    if (v74)
    {
      v1531 = v79[417];
      v83 = swift_slowAlloc();
      v1510 = v76;
      v84 = swift_slowAlloc();
      *&v1598 = v84;
      *v83 = 136315138;
      sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
      v85 = sub_21D022B04();
      v1486 = v81;
      v87 = sub_21CF9703C(v85, v86, &v1598);

      *(v83 + 4) = v87;
      v75(v77, v80);
      _os_log_impl(&dword_21CF72000, v72, v73, "%s received nil response type", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x223D3ADE0](v84, -1, -1);
      MEMORY[0x223D3ADE0](v83, -1, -1);

      v1510(v1486, v1531);
    }

    else
    {
      v75(v77, v80);

      v76(v81, v82);
    }

    v1 = v1580;
    v115 = *(v1580 + 3904);
    v116 = *(v1580 + 3896);
    v117 = *(v1580 + 2348);
    v118 = *(v1580 + 3888);
    v119 = *(v1580 + 3832);
    v120 = *(v1580 + 3632);
    v121 = *(v1580 + 3328);
    v122 = *(v1580 + 2736);
    sub_21CF7F200(v122 + v117, &qword_27CE455D0, &qword_21D0246B0);
    (*(v115 + 56))(v122 + v117, 1, 1, v116);
    sub_21CF9ED64();
    swift_allocError();
    *v123 = 0u;
    *(v123 + 16) = 0u;
    *(v123 + 32) = 0u;
    *(v123 + 48) = -96;
    swift_willThrow();
    sub_21CF94FCC(v25, v1427);
    sub_21CFB513C(v121, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
    v118(v119, v120);
    goto LABEL_31;
  }

  v88 = *(v1 + 3304);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v1491 = *(v1 + 3872);
      v184 = *(v1 + 3864);
      v1562 = *(v1 + 3856);
      v1536 = *(v1 + 3848);
      v185 = *(v1 + 3832);
      v186 = *(v1 + 3808);
      v187 = *(v1 + 3632);
      v188 = *(v1 + 3608);
      v189 = *(v1 + 3336);
      v190 = *(v1 + 3296);
      v1513 = *(v1 + 3288);
      v191 = *(v1 + 2736);
      sub_21CFB537C(v88, v190, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
      v184(v188, v191, v189);
      v1536(v186, v185, v187);
      sub_21CFB519C(v190, v1513, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
      v192 = sub_21D022484();
      v1537 = sub_21D0228B4();
      v193 = os_log_type_enabled(v192, v1537);
      v194 = *(v1 + 3888);
      v195 = *(v1 + 3880);
      v196 = *(v1 + 3808);
      v197 = *(v1 + 3640);
      v198 = *(v1 + 3632);
      v199 = *(v1 + 3608);
      v1563 = *(v1 + 3344);
      v200 = *(v1 + 3336);
      v201 = *(v1 + 3288);
      if (v193)
      {
        v1454 = *(v1 + 3280);
        v1514 = *(v1 + 3336);
        v202 = swift_slowAlloc();
        v1492 = swift_slowAlloc();
        *&v1598 = v1492;
        *v202 = 136315394;
        sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
        v203 = sub_21D022B04();
        v1462 = v199;
        v205 = sub_21CF9703C(v203, v204, &v1598);

        *(v202 + 4) = v205;
        v194(v196, v198);
        *(v202 + 12) = 2080;
        sub_21CFB5744(qword_28121B968, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
        v206 = sub_21D021EE4();
        v208 = sub_21CF9703C(v206, v207, &v1598);

        *(v202 + 14) = v208;
        sub_21CFB513C(v201, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
        _os_log_impl(&dword_21CF72000, v192, v1537, "%s received inference environment response %s", v202, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v1492, -1, -1);
        MEMORY[0x223D3ADE0](v202, -1, -1);

        v195(v1462, v1514);
      }

      else
      {
        v194(v196, v198);
        sub_21CFB513C(v201, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);

        v195(v199, v200);
      }

      v251 = *(v1 + 3296);
      v252 = *(v1 + 3280);
      v253 = *(v1 + 3272);
      v254 = *(v1 + 3200);
      v255 = *(v1 + 3192);
      sub_21CFB5218((v1 + 16));
      v1582 = *(v1 + 16);
      v1583 = *(v1 + 32);
      v256 = *(v1 + 72);
      v1494 = *(v1 + 64);
      v1539 = *(v1 + 80);
      v1477 = *(v1 + 88);
      v257 = *(v1 + 112);
      v1584 = *(v1 + 48);
      v1585 = *(v1 + 96);
      v258 = *(v1 + 128);
      v259 = *(v1 + 144);
      v1586 = v257;
      v1587 = v258;
      v1588 = v259;
      v260 = *(v252 + 20);
      sub_21CF7F198(v251 + v260, v253, &qword_27CE455F0, &unk_21D026C00);
      v261 = *(v254 + 48);
      LODWORD(v255) = v261(v253, 1, v255);
      sub_21CF7F200(v253, &qword_27CE455F0, &unk_21D026C00);
      v1515 = v256;
      if (v255 == 1)
      {
        v262 = *(v1 + 3872);
        v263 = *(v1 + 3856);
        v264 = *(v1 + 3848);
        v265 = *(v1 + 3832);
        v266 = *(v1 + 3760);
        v267 = *(v1 + 3632);
        (*(v1 + 3864))(*(v1 + 3552), *(v1 + 2736), *(v1 + 3336));
        v264(v266, v265, v267);
        v268 = sub_21D022484();
        v269 = sub_21D0228A4();
        v270 = os_log_type_enabled(v268, v269);
        v271 = *(v1 + 3888);
        v1463 = *(v1 + 3880);
        v272 = *(v1 + 3832);
        v273 = *(v1 + 3760);
        v274 = *(v1 + 3640);
        v275 = *(v1 + 3632);
        log = *(v1 + 3552);
        v1417 = *(v1 + 3344);
        v1431 = *(v1 + 3336);
        v1566 = *(v1 + 3328);
        v1455 = *(v1 + 3296);
        if (v270)
        {
          v276 = swift_slowAlloc();
          v277 = swift_slowAlloc();
          *&v1598 = v277;
          *v276 = 136315138;
          sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
          v278 = sub_21D022B04();
          v280 = sub_21CF9703C(v278, v279, &v1598);

          *(v276 + 4) = v280;
          v271(v273, v275);
          _os_log_impl(&dword_21CF72000, v268, v269, "%s has no environment response", v276, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v277);
          MEMORY[0x223D3ADE0](v277, -1, -1);
          v281 = v276;
          v1 = v1580;
          MEMORY[0x223D3ADE0](v281, -1, -1);
        }

        else
        {

          v271(v273, v275);
        }

        sub_21CF94FCC(v1424, v1427);
        v1463(log, v1431);
        sub_21CFB513C(v1455, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
        sub_21CFB513C(v1566, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
        v271(v272, v275);
        v1410 = 0;
        v1456 = 0;
        loga = 0;
        v1413 = 0;
        v1432 = 0;
      }

      else
      {
        v282 = *(v1 + 3264);
        v283 = *(v1 + 3192);
        sub_21CF7F198(v251 + v260, v282, &qword_27CE455F0, &unk_21D026C00);
        v284 = v261(v282, 1, v283);
        v285 = *(v1 + 3264);
        v286 = *(v1 + 3232);
        v1464 = v260;
        v1567 = v251;
        if (v284 == 1)
        {
          v287 = *(v1 + 3192);
          sub_21D021CE4();
          v288 = v287[5];
          v289 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
          v290 = *(*(v289 - 8) + 56);
          v290(v286 + v288, 1, 1, v289);
          v290(v286 + v287[6], 1, 1, v289);
          v290(v286 + v287[7], 1, 1, v289);
          v290(v286 + v287[8], 1, 1, v289);
          v291 = (v286 + v287[9]);
          *v291 = 0;
          v291[1] = 0;
          v292 = v287[10];
          v293 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
          (*(*(v293 - 8) + 56))(v286 + v292, 1, 1, v293);
          if (v261(v285, 1, v287) != 1)
          {
            sub_21CF7F200(*(v1 + 3264), &qword_27CE455F0, &unk_21D026C00);
          }
        }

        else
        {
          sub_21CFB537C(v285, v286, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
        }

        v392 = *(v1 + 3232);
        v393 = *(v1 + 3184);
        v394 = *(v1 + 2736) + *(v1 + 2268);
        v395 = sub_21D0224D4();
        v396 = *(v395 + 48);
        v397 = *(v395 + 52);
        swift_allocObject();
        sub_21D0224C4();
        v398 = swift_task_alloc();
        *(v398 + 16) = v394;
        *(v398 + 24) = v392;
        sub_21D0224B4();
        v1418 = v261;
        v399 = v1464;
        v400 = *(v1 + 3256);
        v401 = *(v1 + 3232);
        v402 = *(v1 + 3192);
        v403 = *(v1 + 3184);

        v404 = sub_21D022134();
        (*(*(v404 - 8) + 56))(v403, 0, 1, v404);
        sub_21CF7F200(v403, &qword_27CE45240, &unk_21D0246E0);
        sub_21CFB513C(v401, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
        sub_21CF7F198(v1567 + v1464, v400, &qword_27CE455F0, &unk_21D026C00);
        v405 = v1418;
        v406 = v1418(v400, 1, v402);
        v407 = *(v1 + 3256);
        v408 = *(v1 + 3224);
        if (v406 == 1)
        {
          v409 = *(v1 + 3192);
          v410 = *(v1 + 3224);
          sub_21D021CE4();
          v411 = v409[5];
          v412 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
          v413 = *(*(v412 - 8) + 56);
          v413(v408 + v411, 1, 1, v412);
          v413(v408 + v409[6], 1, 1, v412);
          v413(v408 + v409[7], 1, 1, v412);
          v413(v408 + v409[8], 1, 1, v412);
          v414 = (v408 + v409[9]);
          *v414 = 0;
          v414[1] = 0;
          v415 = v409[10];
          v416 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
          v417 = v408 + v415;
          v399 = v1464;
          (*(*(v416 - 8) + 56))(v417, 1, 1, v416);
          if (v1418(v407, 1, v409) != 1)
          {
            sub_21CF7F200(*(v1 + 3256), &qword_27CE455F0, &unk_21D026C00);
          }
        }

        else
        {
          sub_21CFB537C(*(v1 + 3256), *(v1 + 3224), type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
        }

        v418 = *(v1 + 3224);
        v419 = *(v1 + 3192);
        v420 = *(v1 + 3176);
        sub_21CF7F198(v418 + *(v419 + 40), v420, &qword_27CE45200, &qword_21D023518);
        v421 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
        v1395 = *(v421 - 8);
        v1402 = v421;
        v422 = (*(v1395 + 48))(v420, 1);
        sub_21CF7F200(v420, &qword_27CE45200, &qword_21D023518);
        sub_21CFB513C(v418, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
        if (v422 == 1)
        {
          v1371 = v419;
          v423 = *(v1 + 3872);
          v424 = *(v1 + 3856);
          v425 = *(v1 + 3848);
          v426 = *(v1 + 3832);
          v427 = *(v1 + 3784);
          v428 = *(v1 + 3632);
          (*(v1 + 3864))(*(v1 + 3576), *(v1 + 2736), *(v1 + 3336));
          v425(v427, v426, v428);
          v429 = sub_21D022484();
          v430 = sub_21D0228B4();
          v431 = os_log_type_enabled(v429, v430);
          v432 = *(v1 + 3888);
          v433 = *(v1 + 3880);
          v434 = *(v1 + 3784);
          v435 = *(v1 + 3640);
          v436 = *(v1 + 3632);
          v1457 = *(v1 + 3576);
          v1433 = *(v1 + 3344);
          logb = *(v1 + 3336);
          if (v431)
          {
            v437 = swift_slowAlloc();
            v438 = swift_slowAlloc();
            *&v1598 = v438;
            *v437 = 136315138;
            sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
            v439 = sub_21D022B04();
            v1414 = v433;
            v441 = sub_21CF9703C(v439, v440, &v1598);
            v1 = v1580;

            *(v437 + 4) = v441;
            v432(v434, v436);
            _os_log_impl(&dword_21CF72000, v429, v430, "%s has no rendered prompt", v437, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v438);
            MEMORY[0x223D3ADE0](v438, -1, -1);
            v442 = v437;
            v405 = v1418;
            MEMORY[0x223D3ADE0](v442, -1, -1);

            v1414(v1457, logb);
          }

          else
          {
            v432(v434, v436);

            v433(v1457, logb);
          }

          v1410 = 0;
          v531 = 0;
          v532 = 0;
          v1413 = 0;
          v533 = 0;
        }

        else
        {
          v443 = *(v1 + 3248);
          v444 = *(v1 + 3192);
          sub_21CF7F198(v1567 + v399, v443, &qword_27CE455F0, &unk_21D026C00);
          v445 = v1418(v443, 1, v444);
          v446 = *(v1 + 3248);
          v447 = *(v1 + 3216);
          if (v445 == 1)
          {
            v448 = *(v1 + 3192);
            v449 = *(v1 + 3216);
            sub_21D021CE4();
            v450 = v448[5];
            v451 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
            v452 = *(*(v451 - 8) + 56);
            v452(v447 + v450, 1, 1, v451);
            v452(v447 + v448[6], 1, 1, v451);
            v452(v447 + v448[7], 1, 1, v451);
            v452(v447 + v448[8], 1, 1, v451);
            v405 = v1418;
            v453 = (v447 + v448[9]);
            *v453 = 0;
            v453[1] = 0;
            (*(v1395 + 56))(v447 + *(v419 + 40), 1, 1, v1402);
            if (v1418(v446, 1, v448) != 1)
            {
              sub_21CF7F200(*(v1 + 3248), &qword_27CE455F0, &unk_21D026C00);
            }
          }

          else
          {
            sub_21CFB537C(*(v1 + 3248), *(v1 + 3216), type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
          }

          v546 = *(v1 + 3216);
          *&v1598 = 0;
          *(&v1598 + 1) = 0xE000000000000000;
          *&v1599 = MEMORY[0x277D84F90];
          *(&v1599 + 1) = MEMORY[0x277D84F90];
          LOBYTE(v1600) = 2;
          sub_21CF7CDB8(&v1598, v546);
          v1371 = v419;
          v861 = v1598;
          v862 = v1599;
          v863 = v1600;
          sub_21CFB513C(*(v1 + 3216), type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
          v1598 = v861;
          v1599 = v862;
          LOBYTE(v1600) = v863;

          v865 = ServerPromptInfo.asJSONString()();
          if (v864)
          {
            v866 = *(v1 + 3888);
            v867 = *(v1 + 3832);
            v868 = *(v1 + 3640);
            v869 = *(v1 + 3632);
            v870 = *(v1 + 3328);
            v871 = *(v1 + 3296);

            sub_21CF94FCC(v1424, v1427);

            sub_21CFB513C(v871, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
            sub_21CFB513C(v870, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
            v866(v867, v869);
            *(v1 + 160) = v1582;
            *(v1 + 176) = v1583;
            v872 = v1585;
            *(v1 + 192) = v1584;
            *(v1 + 208) = v1494;
            *(v1 + 216) = v1515;
            *(v1 + 224) = v1539;
            *(v1 + 232) = v1477;
            v873 = v1586;
            *(v1 + 240) = v872;
            *(v1 + 256) = v873;
            v874 = v1588;
            *(v1 + 272) = v1587;
            *(v1 + 288) = v874;
            sub_21CF7F200(v1 + 160, &qword_27CE45610, &unk_21D024710);
            goto LABEL_31;
          }

          v1438 = v863;
          v1410 = v861;
          v1413 = *(&v862 + 1);

          if (qword_28121E108[0] != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v914 = *(v1 + 3872);
          v915 = *(v1 + 3864);
          v1382 = *(v1 + 3856);
          v1365 = *(v1 + 3848);
          v916 = *(v1 + 3832);
          v917 = *(v1 + 3632);
          v918 = *(v1 + 3336);
          v919 = *(v1 + 2736);
          if (byte_28121B6B0 == 1)
          {
            v920 = *(v1 + 3800);
            v921 = *(v1 + 3600);
            v1378 = sub_21CF93D10(800, v865._countAndFlagsBits, v865._object);
            v915(v921, v919, v918);
            v1365(v920, v916, v917);
            v922 = sub_21D022484();
            v1366 = sub_21D0228B4();
            v923 = os_log_type_enabled(v922, v1366);
            v924 = *(v1 + 3888);
            v925 = *(v1 + 3880);
            v926 = *(v1 + 3800);
            v927 = *(v1 + 3640);
            v928 = *(v1 + 3632);
            v929 = *(v1 + 3600);
            v1383 = *(v1 + 3344);
            v930 = *(v1 + 3336);
            if (v923)
            {
              v1360 = *(v1 + 3600);
              v931 = swift_slowAlloc();
              v932 = swift_slowAlloc();
              *&v1598 = v932;
              *v931 = 136315138;
              sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
              v933 = sub_21D022B04();
              v1352 = v925;
              v935 = sub_21CF9703C(v933, v934, &v1598);

              *(v931 + 4) = v935;

              v924(v926, v928);
              _os_log_impl(&dword_21CF72000, v922, v1366, "%s server prompt info promptInfo=", v931, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v932);
              MEMORY[0x223D3ADE0](v932, -1, -1);
              MEMORY[0x223D3ADE0](v931, -1, -1);

              v1352(v1360, v930);
            }

            else
            {

              v924(v926, v928);

              v925(v929, v930);
            }

            v405 = v1418;
            v1038 = *(v1378 + 16);
            v1 = v1580;
            if (v1038)
            {
              v1368 = *(v1580 + 3344) + 8;
              v1039 = (v1378 + 40);
              v1040 = 1;
              do
              {
                v1041 = *(v1 + 3872);
                (*(v1 + 3864))(*(v1 + 3592), *(v1 + 2736), *(v1 + 3336));

                v1042 = sub_21D022484();
                v1043 = sub_21D0228B4();
                v1044 = os_log_type_enabled(v1042, v1043);
                v1392 = *(v1 + 3880);
                v1387 = *(v1 + 3592);
                v1045 = *(v1 + 3336);
                if (v1044)
                {
                  v1046 = swift_slowAlloc();
                  v1047 = swift_slowAlloc();
                  *&v1598 = v1047;
                  *v1046 = 134218498;
                  *(v1046 + 4) = v1040;
                  *(v1046 + 12) = 2048;
                  *(v1046 + 14) = *(v1378 + 16);

                  *(v1046 + 22) = 2082;
                  v1049 = *(v1039 - 1);
                  v1048 = *v1039;

                  v1050 = sub_21CF9703C(v1049, v1048, &v1598);
                  v1 = v1580;

                  *(v1046 + 24) = v1050;
                  _os_log_impl(&dword_21CF72000, v1042, v1043, "Section %ld/%ld:%{public}s", v1046, 0x20u);
                  __swift_destroy_boxed_opaque_existential_0(v1047);
                  MEMORY[0x223D3ADE0](v1047, -1, -1);
                  v1051 = v1046;
                  v405 = v1418;
                  MEMORY[0x223D3ADE0](v1051, -1, -1);
                }

                else
                {
                }

                v1392(v1387, v1045);
                v1039 += 2;
                ++v1040;
                --v1038;
              }

              while (v1038);
            }

            v531 = *(&v861 + 1);
            v532 = v862;
            v533 = v1438;
          }

          else
          {
            v1007 = *(v1 + 3792);
            v915(*(v1 + 3584), *(v1 + 2736), *(v1 + 3336));
            v1365(v1007, v916, v917);
            swift_bridgeObjectRetain_n();
            v1008 = sub_21D022484();
            v1009 = sub_21D0228B4();
            v1010 = os_log_type_enabled(v1008, v1009);
            v1361 = *(v1 + 3888);
            v1011 = *(v1 + 3880);
            v1012 = *(v1 + 3792);
            v1013 = *(v1 + 3640);
            v1014 = *(v1 + 3632);
            v1015 = *(v1 + 3584);
            v1367 = *(v1 + 3344);
            v1386 = *(v1 + 3336);
            if (v1010)
            {
              v1356 = *(v1 + 3584);
              v1016 = swift_slowAlloc();
              v1017 = swift_slowAlloc();
              *&v1598 = v1017;
              *v1016 = 136315395;
              sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
              v1018 = sub_21D022B04();
              v1020 = sub_21CF9703C(v1018, v1019, &v1598);

              *(v1016 + 4) = v1020;
              v1 = v1580;
              v1361(v1012, v1014);
              *(v1016 + 12) = 2081;

              v1021 = sub_21CF9703C(v865._countAndFlagsBits, v865._object, &v1598);

              *(v1016 + 14) = v1021;
              swift_bridgeObjectRelease_n();
              _os_log_impl(&dword_21CF72000, v1008, v1009, "%s server prompt info promptInfo=%{private}s", v1016, 0x16u);
              swift_arrayDestroy();
              v1022 = v1017;
              v405 = v1418;
              MEMORY[0x223D3ADE0](v1022, -1, -1);
              MEMORY[0x223D3ADE0](v1016, -1, -1);

              v1011(v1356, v1386);
            }

            else
            {

              v1361(v1012, v1014);
              swift_bridgeObjectRelease_n();

              v1011(v1015, v1386);
            }

            v531 = *(&v861 + 1);
            v532 = v862;
            v533 = v1438;
          }
        }

        v534 = *(v1 + 3240);
        v535 = *(v1 + 3192);
        sub_21CF7F198(v1567 + v1464, v534, &qword_27CE455F0, &unk_21D026C00);
        v536 = v405(v534, 1, v535);
        v537 = *(v1 + 3240);
        v538 = *(v1 + 3208);
        v1456 = v531;
        loga = v532;
        v1432 = v533;
        if (v536 == 1)
        {
          v539 = *(v1 + 3192);
          sub_21D021CE4();
          v540 = v539[5];
          v541 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
          v542 = *(*(v541 - 8) + 56);
          v542(v538 + v540, 1, 1, v541);
          v542(v538 + v539[6], 1, 1, v541);
          v542(v538 + v539[7], 1, 1, v541);
          v542(v538 + v539[8], 1, 1, v541);
          v543 = (v538 + v539[9]);
          *v543 = 0;
          v543[1] = 0;
          (*(v1395 + 56))(v538 + *(v1371 + 40), 1, 1, v1402);
          v544 = v1515;
          if (v405(v537, 1, v539) != 1)
          {
            sub_21CF7F200(*(v1 + 3240), &qword_27CE455F0, &unk_21D026C00);
          }
        }

        else
        {
          sub_21CFB537C(v537, v538, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
          v544 = v1515;
        }

        v545 = *(v1 + 3208);
        v1589 = 0u;
        v1590 = 0u;
        v1591 = 0u;
        v1592 = 0u;
        v1593 = 0u;
        v1594 = 0u;
        v1595 = 0u;
        v1596 = 0u;
        v1597 = 0u;
        sub_21CF7AF4C(&v1589, v545);
        sub_21CFB513C(*(v1 + 3208), type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
        v844 = v1596;
        *(v1 + 1264) = v1595;
        *(v1 + 1280) = v844;
        *(v1 + 1296) = v1597;
        v845 = v1592;
        *(v1 + 1200) = v1591;
        *(v1 + 1216) = v845;
        v846 = v1594;
        *(v1 + 1232) = v1593;
        *(v1 + 1248) = v846;
        v847 = v1590;
        *(v1 + 1168) = v1589;
        *(v1 + 1184) = v847;
        nullsub_1(v1 + 1168);
        *(v1 + 1312) = v1582;
        *(v1 + 1328) = v1583;
        v848 = v1585;
        *(v1 + 1344) = v1584;
        v849 = v1586;
        *(v1 + 1392) = v848;
        *(v1 + 1408) = v849;
        v850 = v1588;
        *(v1 + 1424) = v1587;
        *(v1 + 1360) = v1494;
        *(v1 + 1368) = v544;
        *(v1 + 1376) = v1539;
        *(v1 + 1384) = v1477;
        *(v1 + 1440) = v850;
        sub_21CF7F200(v1 + 1312, &qword_27CE45610, &unk_21D024710);
        v1582 = *(v1 + 1168);
        v1583 = *(v1 + 1184);
        v851 = *(v1 + 1264);
        v1584 = *(v1 + 1200);
        v1585 = *(v1 + 1248);
        v852 = *(v1 + 1280);
        v853 = *(v1 + 1296);
        v1586 = v851;
        v1587 = v852;
        v1588 = v853;
        v854 = *(v1 + 1200);
        *(v1 + 1472) = v1583;
        *(v1 + 1488) = v854;
        v855 = *(v1 + 1216);
        v856 = *(v1 + 1224);
        v857 = *(v1 + 1232);
        v858 = *(v1 + 1240);
        *(v1 + 1456) = v1582;
        *(v1 + 1584) = *(v1 + 1296);
        *(v1 + 1568) = *(v1 + 1280);
        *(v1 + 1552) = *(v1 + 1264);
        *(v1 + 1536) = *(v1 + 1248);
        *(v1 + 1504) = v855;
        *(v1 + 1512) = v856;
        *(v1 + 1520) = v857;
        *(v1 + 1528) = v858;
        v859 = sub_21CFB52AC(v1 + 1456);
        v1477 = v858;
        v1539 = v857;
        v1494 = v855;
        if (v859 == 1)
        {
          object = 0xE200000000000000;
          countAndFlagsBits = 32123;
        }

        else
        {
          v892 = v1586;
          *(v1 + 1104) = v1585;
          v893 = v1585;
          v894 = v1586;
          *(v1 + 1120) = v892;
          v895 = v1588;
          *(v1 + 1136) = v1587;
          v896 = v1587;
          v897 = v1588;
          *(v1 + 1152) = v895;
          *(v1 + 1024) = v1582;
          *(v1 + 1040) = v1583;
          v1598 = v1582;
          v1599 = v1583;
          *(v1 + 1056) = v1584;
          v1600 = v1584;
          v1603 = v893;
          v1604 = v894;
          v1605 = v896;
          v1606 = v897;
          *&v1601 = v855;
          *(&v1601 + 1) = v856;
          *&v1602 = v857;
          *(&v1602 + 1) = v858;
          *(v1 + 1072) = v855;
          *(v1 + 1080) = v856;
          *(v1 + 1088) = v857;
          *(v1 + 1096) = v858;
          sub_21CFB52D0(v1 + 1024, v1 + 880);
          v898 = ServerEnvironmentInfo.asJSONString()();
          if (v899)
          {
            v900 = *(v1 + 3888);
            v901 = *(v1 + 3832);
            v902 = *(v1 + 3640);
            v903 = v858;
            v904 = *(v1 + 3632);
            v905 = *(v1 + 3328);
            v906 = *(v1 + 3296);
            sub_21CFB532C(v1410, v1456);
            sub_21CF94FCC(v1424, v1427);
            v907 = v1605;
            *(v1 + 688) = v1604;
            *(v1 + 704) = v907;
            *(v1 + 720) = v1606;
            v908 = v1601;
            *(v1 + 624) = v1600;
            *(v1 + 640) = v908;
            v909 = v1603;
            *(v1 + 656) = v1602;
            *(v1 + 672) = v909;
            v910 = v1599;
            *(v1 + 592) = v1598;
            *(v1 + 608) = v910;
            sub_21CFB5258(v1 + 592);
            sub_21CFB513C(v906, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
            sub_21CFB513C(v905, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
            v900(v901, v904);
            *(v1 + 736) = v1582;
            *(v1 + 752) = v1583;
            v911 = v1585;
            *(v1 + 768) = v1584;
            *(v1 + 784) = v1494;
            *(v1 + 792) = v856;
            *(v1 + 800) = v857;
            *(v1 + 808) = v903;
            v912 = v1586;
            *(v1 + 816) = v911;
            *(v1 + 832) = v912;
            v913 = v1588;
            *(v1 + 848) = v1587;
            *(v1 + 864) = v913;
            sub_21CF7F200(v1 + 736, &qword_27CE45610, &unk_21D024710);
            goto LABEL_31;
          }

          object = v898._object;
          countAndFlagsBits = v898._countAndFlagsBits;
          v947 = v1605;
          *(v1 + 544) = v1604;
          *(v1 + 560) = v947;
          *(v1 + 576) = v1606;
          v948 = v1601;
          *(v1 + 480) = v1600;
          *(v1 + 496) = v948;
          v949 = v1603;
          *(v1 + 512) = v1602;
          *(v1 + 528) = v949;
          v950 = v1599;
          *(v1 + 448) = v1598;
          *(v1 + 464) = v950;
          sub_21CFB5258(v1 + 448);
        }

        v951 = *(v1 + 3872);
        v952 = *(v1 + 3856);
        v953 = *(v1 + 3848);
        v954 = *(v1 + 3832);
        v955 = *(v1 + 3776);
        v956 = *(v1 + 3632);
        (*(v1 + 3864))(*(v1 + 3568), *(v1 + 2736), *(v1 + 3336));
        v953(v955, v954, v956);
        swift_bridgeObjectRetain_n();
        v957 = sub_21D022484();
        v958 = sub_21D0228A4();
        v959 = os_log_type_enabled(v957, v958);
        v960 = *(v1 + 3888);
        v961 = *(v1 + 3880);
        v962 = *(v1 + 3776);
        v963 = v1;
        v964 = *(v1 + 3640);
        v965 = v963[454];
        v966 = v963[446];
        v1420 = v963[418];
        v1470 = v963[417];
        v1515 = v856;
        if (v959)
        {
          v967 = swift_slowAlloc();
          v1397 = swift_slowAlloc();
          *&v1598 = v1397;
          *v967 = 136315394;
          sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
          v968 = sub_21D022B04();
          v1384 = v961;
          v970 = sub_21CF9703C(v968, v969, &v1598);

          *(v967 + 4) = v970;
          v960(v962, v965);
          *(v967 + 12) = 2080;

          v971 = sub_21CF9703C(countAndFlagsBits, object, &v1598);

          *(v967 + 14) = v971;
          swift_bridgeObjectRelease_n();
          _os_log_impl(&dword_21CF72000, v957, v958, "%s environment %s", v967, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D3ADE0](v1397, -1, -1);
          v972 = v967;
          v856 = v1515;
          MEMORY[0x223D3ADE0](v972, -1, -1);

          v1384(v966, v1470);
        }

        else
        {
          v960(v962, v965);
          swift_bridgeObjectRelease_n();

          v961(v966, v1470);
        }

        v1 = v1580;
        *(v1580 + 304) = v1582;
        *(v1580 + 320) = v1583;
        v973 = v1585;
        *(v1580 + 336) = v1584;
        v974 = v1586;
        *(v1580 + 384) = v973;
        *(v1580 + 400) = v974;
        v975 = v1588;
        *(v1580 + 416) = v1587;
        *(v1580 + 432) = v975;
        *(v1580 + 352) = v1494;
        *(v1580 + 360) = v856;
        *(v1580 + 368) = v1539;
        *(v1580 + 376) = v1477;
        v976 = sub_21CFB52AC(v1580 + 304);
        v977 = *(v1580 + 3832);
        v978 = *(v1580 + 3632);
        if (v976 == 1 || !v856)
        {
          v989 = *(v1580 + 3872);
          v990 = *(v1580 + 3856);
          v991 = *(v1580 + 3848);
          v992 = *(v1580 + 3768);
          (*(v1580 + 3864))(*(v1580 + 3560), *(v1580 + 2736), *(v1580 + 3336));
          v991(v992, v977, v978);
          v993 = sub_21D022484();
          v994 = sub_21D0228A4();
          v995 = os_log_type_enabled(v993, v994);
          v996 = *(v1580 + 3888);
          v1472 = *(v1580 + 3880);
          v997 = *(v1580 + 3832);
          v998 = *(v1580 + 3768);
          v999 = *(v1580 + 3640);
          v1000 = *(v1580 + 3632);
          v1406 = *(v1580 + 3560);
          v1391 = *(v1580 + 3344);
          v1399 = *(v1580 + 3336);
          v1001 = *(v1580 + 3328);
          v1422 = *(v1580 + 3296);
          if (v995)
          {
            v1385 = *(v1580 + 3328);
            v1002 = swift_slowAlloc();
            v1379 = v997;
            v1003 = swift_slowAlloc();
            *&v1598 = v1003;
            *v1002 = 136315138;
            sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
            v1004 = sub_21D022B04();
            v1006 = sub_21CF9703C(v1004, v1005, &v1598);

            *(v1002 + 4) = v1006;

            v996(v998, v1000);
            _os_log_impl(&dword_21CF72000, v993, v994, "%s provided no adapter asset information", v1002, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v1003);
            MEMORY[0x223D3ADE0](v1003, -1, -1);
            MEMORY[0x223D3ADE0](v1002, -1, -1);

            sub_21CF94FCC(v1424, v1427);
            v1472(v1406, v1399);
            sub_21CFB513C(v1422, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
            sub_21CFB513C(v1385, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
            v996(v1379, v1000);
          }

          else
          {

            v996(v998, v1000);

            sub_21CF94FCC(v1424, v1427);
            v1472(v1406, v1399);
            sub_21CFB513C(v1422, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
            sub_21CFB513C(v1001, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
            v996(v997, v1000);
          }
        }

        else
        {
          v1471 = *(v1580 + 3888);
          v979 = *(v1580 + 3840);
          v1421 = *(v1580 + 3640);
          v1405 = *(v1580 + 3328);
          v1398 = *(v1580 + 3296);
          v980 = *(v1580 + 3832);
          v981 = v856;
          v982 = *(v1580 + 2736);

          sub_21CF8F87C(v982 + *(v979 + 28), v1580 + 2272);
          v983 = *(v1580 + 2296);
          v984 = *(v1580 + 2304);
          __swift_project_boxed_opaque_existential_1((v1580 + 2272), v983);
          if (v1477)
          {
            v985 = v1539;
          }

          else
          {
            v985 = 0;
          }

          if (v1477)
          {
            v986 = v1477;
          }

          else
          {
            v986 = 0xE000000000000000;
          }

          v987 = *(v984 + 24);

          v988 = v985;
          v1 = v1580;
          v987(v1494, v981, v988, v986, v983, v984);

          sub_21CF94FCC(v1424, v1427);
          sub_21CFB513C(v1398, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
          sub_21CFB513C(v1405, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
          v1471(v980, v978);
          __swift_destroy_boxed_opaque_existential_0((v1580 + 2272));
        }
      }

      v374 = *(v1 + 2268);
      v375 = *(v1 + 2736);
      v376 = *(v1 + 2728);
      v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45608, &qword_21D024708);
      v378 = (v376 + *(v377 + 48));
      v379 = v376 + *(v377 + 64);
      sub_21CFB519C(v375 + v374, v376, type metadata accessor for PrivateMLRequest);
      *(v1 + 1888) = v1582;
      *(v1 + 1904) = v1583;
      v380 = v1585;
      *(v1 + 1920) = v1584;
      *(v1 + 1936) = v1494;
      *(v1 + 1944) = v1515;
      *(v1 + 1952) = v1539;
      *(v1 + 1960) = v1477;
      v381 = v1588;
      *(v1 + 2000) = v1587;
      *(v1 + 1984) = v1586;
      *(v1 + 1968) = v380;
      *(v1 + 2016) = v381;
      v382 = *(v1 + 2000);
      v383 = *(v1 + 2016);
      v384 = *(v1 + 1984);
      v378[5] = *(v1 + 1968);
      v378[6] = v384;
      v378[7] = v382;
      v378[8] = v383;
      v385 = *(v1 + 1920);
      v387 = *(v1 + 1936);
      v386 = *(v1 + 1952);
      v378[1] = *(v1 + 1904);
      v378[2] = v385;
      v378[3] = v387;
      v378[4] = v386;
      *v378 = *(v1 + 1888);
      *v379 = v1410;
      *(v379 + 8) = v1456;
      *(v379 + 16) = loga;
      *(v379 + 24) = v1413;
      *(v379 + 32) = v1432;
      v388 = type metadata accessor for PrivateMLRequest.Response.Event(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v388 - 8) + 56))(v376, 0, 1, v388);
      *(v1 + 2032) = v1582;
      *(v1 + 2048) = v1583;
      v389 = v1585;
      *(v1 + 2064) = v1584;
      v390 = v1586;
      *(v1 + 2112) = v389;
      *(v1 + 2128) = v390;
      v391 = v1588;
      *(v1 + 2144) = v1587;
      *(v1 + 2080) = v1494;
      *(v1 + 2088) = v1515;
      *(v1 + 2096) = v1539;
      *(v1 + 2104) = v1477;
      *(v1 + 2160) = v391;
      sub_21CF7F198(v1 + 1888, v1 + 1744, &qword_27CE45610, &unk_21D024710);
      sub_21CF7F200(v1 + 2032, &qword_27CE45610, &unk_21D024710);
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v136 = *(v1 + 3872);
      v137 = *(v1 + 3856);
      v138 = *(v1 + 3848);
      v139 = *(v1 + 3832);
      v140 = *(v1 + 3664);
      v141 = *(v1 + 3632);
      (*(v1 + 3864))(*(v1 + 3368), *(v1 + 2736), *(v1 + 3336));
      v138(v140, v139, v141);
      v142 = sub_21D022484();
      v143 = sub_21D0228D4();
      v144 = os_log_type_enabled(v142, v143);
      v145 = *(v1 + 3888);
      v146 = *(v1 + 3880);
      v147 = *(v1 + 3664);
      v148 = *(v1 + 3640);
      v149 = v1;
      v150 = *(v1 + 3632);
      v151 = v149[421];
      v1559 = v149[418];
      v152 = v149[417];
      if (v144)
      {
        v1534 = v149[417];
        v153 = swift_slowAlloc();
        v1512 = v146;
        v154 = swift_slowAlloc();
        *&v1598 = v154;
        *v153 = 136315138;
        sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
        v155 = sub_21D022B04();
        v1489 = v151;
        v157 = sub_21CF9703C(v155, v156, &v1598);

        *(v153 + 4) = v157;
        v145(v147, v150);
        _os_log_impl(&dword_21CF72000, v142, v143, "%s received inference complete response", v153, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v154);
        MEMORY[0x223D3ADE0](v154, -1, -1);
        MEMORY[0x223D3ADE0](v153, -1, -1);

        v1512(v1489, v1534);
      }

      else
      {
        v145(v147, v150);

        v146(v151, v152);
      }

      v1 = v1580;
      v327 = *(v1580 + 3888);
      v328 = *(v1580 + 3832);
      v329 = *(v1580 + 3632);
      v330 = *(v1580 + 3328);
      v331 = *(v1580 + 3304);
      v332 = *(v1580 + 2728);
      sub_21CF94FCC(v25, v1427);
      sub_21CFB513C(v330, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
      v327(v328, v329);
      *v332 = 0;
      v332[1] = 0xE000000000000000;
      v333 = type metadata accessor for PrivateMLRequest.Response.Event(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v333 - 8) + 56))(v332, 0, 1, v333);
      sub_21CFB513C(v331, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      goto LABEL_5;
    }

    v222 = *(v1 + 3872);
    v223 = *(v1580 + 3864);
    v1564 = *(v1580 + 3856);
    v224 = *(v1580 + 3848);
    v225 = *(v1580 + 3832);
    v226 = *(v1580 + 3656);
    v227 = *(v1580 + 3632);
    v228 = *(v1580 + 3360);
    v229 = *(v1580 + 3336);
    v230 = *(v1580 + 2736);
    sub_21CFB537C(v88, *(v1580 + 2744), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
    v223(v228, v230, v229);
    v1 = v1580;
    v224(v226, v225, v227);
    v231 = sub_21D022484();
    v232 = sub_21D0228D4();
    v233 = os_log_type_enabled(v231, v232);
    v234 = *(v1580 + 3888);
    v235 = *(v1580 + 3880);
    v236 = *(v1580 + 3656);
    v237 = *(v1580 + 3640);
    v238 = *(v1580 + 3632);
    v239 = *(v1580 + 3360);
    v1565 = *(v1580 + 3344);
    v240 = *(v1580 + 3336);
    if (v233)
    {
      v1538 = *(v1580 + 3360);
      v241 = swift_slowAlloc();
      v242 = swift_slowAlloc();
      *&v1598 = v242;
      *v241 = 136315138;
      sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
      v243 = sub_21D022B04();
      v1493 = v235;
      v245 = sub_21CF9703C(v243, v244, &v1598);

      *(v241 + 4) = v245;
      v234(v236, v238);
      _os_log_impl(&dword_21CF72000, v231, v232, "%s received next media response", v241, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v242);
      v246 = v242;
      v1 = v1580;
      MEMORY[0x223D3ADE0](v246, -1, -1);
      MEMORY[0x223D3ADE0](v241, -1, -1);

      v1493(v1538, v240);
    }

    else
    {
      v234(v236, v238);

      v235(v239, v240);
    }

    v334 = *(v1 + 2744);
    sub_21CF9E7C4(&v1598);
    v335 = *(v1 + 3888);
    v336 = *(v1 + 3832);
    v337 = *(v1 + 3640);
    v338 = *(v1 + 3632);
    v339 = *(v1 + 3328);
    v340 = *(v1 + 2744);
    v347 = *(v1 + 2728);
    sub_21CF94FCC(v1424, v1427);
    sub_21CFB513C(v340, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
    sub_21CFB513C(v339, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
    v335(v336, v338);
    v348 = v1600;
    v349 = BYTE4(v1600);
    *v347 = v1598;
    *(v347 + 16) = v1599;
    *(v347 + 36) = v349;
    *(v347 + 32) = v348;
    v350 = type metadata accessor for PrivateMLRequest.Response.Event(0);
    swift_storeEnumTagMultiPayload();
    v10 = *(*(v350 - 8) + 56);
    v11 = v347;
LABEL_82:
    v12 = 0;
    v9 = v350;
    goto LABEL_4;
  }

  if (!EnumCaseMultiPayload)
  {
    v158 = *(v1 + 3872);
    v159 = *(v1580 + 3864);
    v1560 = *(v1580 + 3856);
    v160 = *(v1580 + 3848);
    v161 = *(v1580 + 3832);
    v162 = *(v1580 + 3752);
    v163 = *(v1580 + 3632);
    v164 = *(v1580 + 3544);
    v165 = *(v1580 + 3336);
    v166 = *(v1580 + 2736);
    sub_21CFB537C(v88, *(v1580 + 3168), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
    v159(v164, v166, v165);
    v167 = v1580;
    v160(v162, v161, v163);
    v168 = sub_21D022484();
    v169 = sub_21D0228D4();
    v170 = os_log_type_enabled(v168, v169);
    v171 = *(v1580 + 3888);
    v172 = *(v1580 + 3880);
    v173 = *(v1580 + 3752);
    v174 = *(v1580 + 3640);
    v175 = *(v1580 + 3632);
    v176 = *(v1580 + 3544);
    v1561 = *(v1580 + 3344);
    v177 = *(v1580 + 3336);
    if (v170)
    {
      v1535 = *(v1580 + 3544);
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      *&v1598 = v179;
      *v178 = 136315138;
      sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
      v180 = sub_21D022B04();
      v1490 = v172;
      v182 = sub_21CF9703C(v180, v181, &v1598);

      *(v178 + 4) = v182;
      v171(v173, v175);
      _os_log_impl(&dword_21CF72000, v168, v169, "%s received next token response", v178, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v179);
      v183 = v179;
      v167 = v1580;
      MEMORY[0x223D3ADE0](v183, -1, -1);
      MEMORY[0x223D3ADE0](v178, -1, -1);

      v1490(v1535, v177);
    }

    else
    {
      v171(v173, v175);

      v172(v176, v177);
    }

    v247 = v167[396];
    v248 = (v247 + *(v167[395] + 20));
    if (v248[1])
    {
      v249 = *v248;
      v250 = v248[1];
    }

    else
    {
      v249 = 0;
      v250 = 0xE000000000000000;
    }

    v341 = v167[486];
    v342 = v167[479];
    v343 = *(v1580 + 3640);
    v344 = *(v1580 + 3632);
    v345 = *(v1580 + 3328);
    v346 = *(v1580 + 2728);

    sub_21CF94FCC(v1424, v1427);
    sub_21CFB513C(v247, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
    sub_21CFB513C(v345, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
    v1 = v1580;
    v341(v342, v344);
    *v346 = v249;
    v346[1] = v250;
    v350 = type metadata accessor for PrivateMLRequest.Response.Event(0);
    swift_storeEnumTagMultiPayload();
    v10 = *(*(v350 - 8) + 56);
    v11 = v346;
    goto LABEL_82;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v209 = *(v1 + 2840);
    v210 = *(v1 + 2800);
    sub_21CFB537C(v88, v209, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
    v211 = *(v210 + 24);
    v212 = v209 + v211;
    v213 = *(v209 + v211);
    v214 = *(v209 + v211 + 9);
    if (v214)
    {
      v215 = 0;
    }

    else
    {
      v215 = *(v209 + v211);
    }

    if (v214 & 1) != 0 || (*(v212 + 8))
    {
      if (v215)
      {
        if (v215 != 1)
        {
          goto LABEL_107;
        }

        goto LABEL_66;
      }
    }

    else if (v215)
    {
      if (v213 != 1)
      {
        if (v215 != 2)
        {
          v216 = *(v1 + 3888);
          v217 = *(v1 + 3832);
          v218 = *(v1 + 3640);
          v219 = *(v1 + 3632);
          v220 = *(v1 + 3328);
          v221 = *(v1 + 2840);
          sub_21CF94FCC(v25, v2);
          sub_21CFB513C(v221, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
          sub_21CFB513C(v220, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
          v216(v217, v219);
LABEL_279:
          v891 = *(v1 + 2728);
          v9 = type metadata accessor for PrivateMLRequest.Response.Event(0);
          v10 = *(*(v9 - 8) + 56);
          v11 = v891;
          goto LABEL_3;
        }

LABEL_107:
        v480 = *(*(v1 + 2840) + *(*(v1 + 2800) + 40));
        v1519 = v480;
        if (v480 == 2)
        {
LABEL_330:
          v1056 = *(v1 + 3872);
          v1057 = *(v1 + 3856);
          v1058 = *(v1 + 3848);
          v1059 = *(v1 + 3832);
          v1060 = *(v1 + 3680);
          v1061 = *(v1 + 3632);
          v1062 = *(v1 + 2840);
          v1063 = *(v1 + 2816);
          (*(v1 + 3864))(*(v1 + 3400), *(v1 + 2736), *(v1 + 3336));
          v1058(v1060, v1059, v1061);
          sub_21CFB519C(v1062, v1063, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
          v1064 = sub_21D022484();
          v1507 = sub_21D0228C4();
          v1065 = os_log_type_enabled(v1064, v1507);
          v1066 = *(v1 + 3888);
          v1067 = *(v1 + 3880);
          v1068 = *(v1 + 3680);
          v1069 = *(v1 + 3640);
          v1070 = *(v1 + 3632);
          v1071 = *(v1 + 3400);
          v1549 = *(v1 + 3344);
          v1576 = *(v1 + 3336);
          v1072 = *(v1 + 2816);
          if (v1065)
          {
            v1439 = *(v1 + 2808);
            logk = *(v1 + 2800);
            v1482 = *(v1 + 3400);
            v1073 = swift_slowAlloc();
            v1474 = swift_slowAlloc();
            *&v1598 = v1474;
            *v1073 = 136315394;
            sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
            v1074 = sub_21D022B04();
            v1076 = sub_21CF9703C(v1074, v1075, &v1598);

            *(v1073 + 4) = v1076;
            v1066(v1068, v1070);
            *(v1073 + 12) = 2080;
            sub_21CFB519C(v1072, v1439, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
            v1077 = sub_21D0225D4();
            v1079 = sub_21CF9703C(v1077, v1078, &v1598);

            *(v1073 + 14) = v1079;
            sub_21CFB513C(v1072, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
            _os_log_impl(&dword_21CF72000, v1064, v1507, "%s received status response error: %s", v1073, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223D3ADE0](v1474, -1, -1);
            MEMORY[0x223D3ADE0](v1073, -1, -1);

            v1067(v1482, v1576);
          }

          else
          {
            v1066(v1068, v1070);
            sub_21CFB513C(v1072, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);

            v1067(v1071, v1576);
          }

          v1080 = *(v1 + 2776);
          sub_21CF7F198(*(v1 + 2840), v1080, &qword_27CE455D8, &qword_21D0246C0);
          v1081 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails(0);
          v1082 = (*(*(v1081 - 8) + 48))(v1080, 1, v1081);
          v1083 = *(v1 + 3872);
          v1084 = *(v1 + 3864);
          if (v1082 != 1)
          {
            v1577 = *(v1 + 3856);
            v1550 = *(v1 + 3848);
            v1103 = *(v1 + 3832);
            v1104 = *(v1 + 3672);
            v1105 = *(v1 + 3632);
            v1106 = *(v1 + 3392);
            v1107 = *(v1 + 3336);
            v1108 = *(v1 + 2776);
            v1109 = *(v1 + 2768);
            v1110 = *(v1 + 2760);
            v1111 = *(v1580 + 2736);
            sub_21CF7F198(v1108, v1109, &qword_27CE455D8, &qword_21D0246C0);
            sub_21CFB537C(v1109, v1110, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
            v1112 = v1111;
            v1113 = v1580;
            v1084(v1106, v1112, v1107);
            v1550(v1104, v1103, v1105);
            v1114 = sub_21D022484();
            v1115 = sub_21D0228C4();
            v1116 = os_log_type_enabled(v1114, v1115);
            v1117 = *(v1580 + 3888);
            v1118 = *(v1580 + 3880);
            v1119 = *(v1580 + 3672);
            v1120 = *(v1580 + 3640);
            v1121 = *(v1580 + 3632);
            v1122 = *(v1580 + 3392);
            v1578 = *(v1580 + 3344);
            v1123 = *(v1580 + 3336);
            if (v1116)
            {
              v1551 = *(v1580 + 3392);
              v1124 = swift_slowAlloc();
              v1125 = swift_slowAlloc();
              *&v1598 = v1125;
              *v1124 = 136380675;
              sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
              v1126 = sub_21D022B04();
              v1483 = v1118;
              v1128 = sub_21CF9703C(v1126, v1127, &v1598);

              *(v1124 + 4) = v1128;
              v1117(v1119, v1121);
              _os_log_impl(&dword_21CF72000, v1114, v1115, "%{private}s token limit reached", v1124, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v1125);
              v1129 = v1125;
              v1113 = v1580;
              MEMORY[0x223D3ADE0](v1129, -1, -1);
              MEMORY[0x223D3ADE0](v1124, -1, -1);

              v1483(v1551, v1123);
            }

            else
            {
              v1117(v1119, v1121);

              v1118(v1122, v1123);
            }

            if (v1519 == 2 || (v1519 & 1) == 0)
            {
              goto LABEL_356;
            }

            if (qword_28121B6B8 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            if (byte_28121B6C0 == 1)
            {
              v1130 = *(v1113 + 3872);
              (*(v1113 + 3864))(*(v1113 + 3384), *(v1113 + 2736), *(v1113 + 3336));
              v1131 = sub_21D022484();
              v1132 = sub_21D0228A4();
              if (os_log_type_enabled(v1131, v1132))
              {
                v1133 = swift_slowAlloc();
                *v1133 = 0;
                _os_log_impl(&dword_21CF72000, v1131, v1132, "Request feedback for token limit reached", v1133, 2u);
                MEMORY[0x223D3ADE0](v1133, -1, -1);
              }

              v1552 = *(v1113 + 3888);
              v1134 = *(v1113 + 3880);
              v1528 = *(v1113 + 3832);
              v1135 = *(v1113 + 3640);
              v1508 = *(v1113 + 3632);
              v1136 = *(v1580 + 3384);
              v1137 = *(v1580 + 3344);
              v1138 = *(v1580 + 3336);
              v1139 = *(v1580 + 3328);
              v1140 = *(v1580 + 2840);
              v1484 = *(v1580 + 2776);
              v1141 = *(v1580 + 2760);
              v1142 = *(v1580 + 2752);

              v1143 = v1136;
              v1 = v1580;
              v1134(v1143, v1138);
              v1144 = (v1141 + *(v1142 + 28));
              v1145 = (v1141 + *(v1142 + 32));
              v1146 = *v1145;
              v1147 = *(v1145 + 4);
              if (*(v1144 + 4))
              {
                v1148 = 0;
              }

              else
              {
                v1148 = *v1144;
              }

              if (v1147)
              {
                v1149 = 0;
              }

              else
              {
                v1149 = v1146;
              }

              sub_21CF9ED64();
              swift_allocError();
              *v1150 = 1;
              *(v1150 + 8) = v1148;
              *(v1150 + 16) = v1149;
              *(v1150 + 24) = 0;
              *(v1150 + 32) = 0;
              *(v1150 + 40) = 0;
              *(v1150 + 48) = 0x80;
              swift_willThrow();
              sub_21CF94FCC(v1424, v1427);
              sub_21CFB513C(v1141, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
              sub_21CFB513C(v1140, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
              sub_21CFB513C(v1139, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
              v1552(v1528, v1508);
              sub_21CF7F200(v1484, &qword_27CE455D8, &qword_21D0246C0);
            }

            else
            {
LABEL_356:
              v1151 = *(v1113 + 3888);
              v1152 = *(v1113 + 3832);
              v1153 = *(v1580 + 3640);
              v1154 = *(v1580 + 3632);
              v1155 = *(v1580 + 3328);
              v1156 = *(v1580 + 2840);
              v1157 = *(v1580 + 2776);
              v1158 = *(v1580 + 2760);
              v1159 = *(v1580 + 2752);
              v1160 = (v1158 + *(v1159 + 28));
              v1161 = (v1158 + *(v1159 + 32));
              v1162 = *v1161;
              v1163 = *(v1161 + 4);
              if (*(v1160 + 4))
              {
                v1164 = 0;
              }

              else
              {
                v1164 = *v1160;
              }

              if (v1163)
              {
                v1165 = 0;
              }

              else
              {
                v1165 = v1162;
              }

              sub_21CF9ED64();
              swift_allocError();
              *v1166 = v1164;
              *(v1166 + 8) = v1165;
              *(v1166 + 16) = 0u;
              *(v1166 + 32) = 0u;
              *(v1166 + 48) = 64;
              swift_willThrow();
              sub_21CF94FCC(v1424, v1427);
              sub_21CFB513C(v1158, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
              sub_21CFB513C(v1156, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
              sub_21CFB513C(v1155, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
              v1 = v1580;
              v1151(v1152, v1154);
              sub_21CF7F200(v1157, &qword_27CE455D8, &qword_21D0246C0);
            }

            goto LABEL_31;
          }

          v1084(*(v1 + 3376), *(v1 + 2736), *(v1 + 3336));
          v1085 = sub_21D022484();
          v1086 = sub_21D0228D4();
          if (os_log_type_enabled(v1085, v1086))
          {
            v1087 = swift_slowAlloc();
            *v1087 = 0;
            _os_log_impl(&dword_21CF72000, v1085, v1086, "statusResponse does not have statusDetails", v1087, 2u);
            MEMORY[0x223D3ADE0](v1087, -1, -1);
          }

          v1088 = *(v1 + 3880);
          v1089 = *(v1 + 3376);
          v1090 = *(v1 + 3344);
          v1091 = *(v1 + 3336);
          v1092 = *(v1 + 2840);
          v1093 = *(v1 + 2800);
          v1094 = *(v1 + 2776);

          v1088(v1089, v1091);
          sub_21CF7F200(v1094, &qword_27CE455D8, &qword_21D0246C0);
          v1095 = *(v1093 + 28);
          v1096 = (v1092 + *(v1093 + 32));
          v1097 = v1096[1];
          v1098 = (v1092 + v1095);
          v1099 = *(v1092 + v1095 + 8);
          if (!v1097)
          {
            if (v1099)
            {
              v1167 = *v1098;
              v1168 = *(v1092 + v1095 + 8);
            }

            else
            {
              v1167 = 0;
              v1168 = 0xE000000000000000;
            }

            v1176 = *(v1 + 3888);
            v1177 = *(v1 + 3832);
            v1178 = *(v1580 + 3640);
            v1179 = *(v1580 + 3632);
            v1180 = *(v1580 + 3328);
            v1181 = *(v1580 + 2840);
            sub_21CF9ED64();
            swift_allocError();
            *v1182 = v1167;
            *(v1182 + 8) = v1168;
            *(v1182 + 16) = 0u;
            *(v1182 + 32) = 0u;
            *(v1182 + 48) = 0;
            swift_willThrow();

            sub_21CF94FCC(v1424, v1427);
            sub_21CFB513C(v1181, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
            sub_21CFB513C(v1180, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
            v1 = v1580;
            v1176(v1177, v1179);
            goto LABEL_31;
          }

          v1100 = *v1096;
          if (v1099)
          {
            v1101 = *v1098;
            v1102 = *(v1092 + v1095 + 8);
          }

          else
          {
            v1101 = 0;
            v1102 = 0xE000000000000000;
          }

          v1548 = *(v1 + 3888);
          v1529 = *(v1 + 3832);
          v1169 = *(v1580 + 3640);
          v1170 = *(v1580 + 3632);
          v1171 = *(v1580 + 3328);
          v1172 = *(v1580 + 2840);
          v1173 = (v1172 + *(*(v1580 + 2800) + 36));
          if (*(v1173 + 4))
          {
            v1174 = 0;
          }

          else
          {
            v1174 = *v1173;
          }

          sub_21CF9ED64();
          swift_allocError();
          *v1175 = v1101;
          *(v1175 + 8) = v1102;
          *(v1175 + 16) = v1100;
          *(v1175 + 24) = v1097;
          *(v1175 + 32) = v1174;
          *(v1175 + 40) = 0;
          *(v1175 + 48) = 32;
          swift_willThrow();

          sub_21CF94FCC(v1424, v1427);
          sub_21CFB513C(v1172, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
          sub_21CFB513C(v1171, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
          v1 = v1580;
          v1036 = v1529;
          v1037 = v1170;
          goto LABEL_370;
        }

        v481 = *(v1 + 3872);
        v482 = *(v1 + 3864);
        v483 = *(v1 + 3336);
        v484 = *(v1 + 2736);
        if ((v480 & 1) == 0)
        {
          v482(*(v1 + 3408), v484, v483);
          v879 = sub_21D022484();
          v880 = sub_21D0228A4();
          v881 = os_log_type_enabled(v879, v880);
          v882 = *(v1 + 3880);
          v883 = *(v1 + 3408);
          v884 = *(v1 + 3344);
          v885 = *(v1 + 3336);
          if (v881)
          {
            v886 = swift_slowAlloc();
            *v886 = 0;
            _os_log_impl(&dword_21CF72000, v879, v880, "statusResponse trigger radar off.", v886, 2u);
            MEMORY[0x223D3ADE0](v886, -1, -1);
          }

          v882(v883, v885);
          goto LABEL_330;
        }

        v482(*(v1 + 3424), v484, v483);
        v485 = sub_21D022484();
        v486 = sub_21D0228A4();
        if (os_log_type_enabled(v485, v486))
        {
          v487 = swift_slowAlloc();
          *v487 = 0;
          _os_log_impl(&dword_21CF72000, v485, v486, "statusResponse trigger radar on.", v487, 2u);
          MEMORY[0x223D3ADE0](v487, -1, -1);
        }

        v488 = *(v1 + 3880);
        v489 = *(v1 + 3424);
        v490 = *(v1 + 3344);
        v491 = *(v1 + 3336);

        v488(v489, v491);
        if (qword_28121E108[0] != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_28121B6B0 != 1)
        {
          v936 = *(v1 + 3872);
          (*(v1 + 3864))(*(v1 + 3416), *(v1 + 2736), *(v1 + 3336));
          v937 = sub_21D022484();
          v938 = sub_21D0228A4();
          if (os_log_type_enabled(v937, v938))
          {
            v939 = swift_slowAlloc();
            *v939 = 0;
            _os_log_impl(&dword_21CF72000, v937, v938, "Request feedback for error", v939, 2u);
            MEMORY[0x223D3ADE0](v939, -1, -1);
          }

          v940 = *(v1 + 3880);
          v941 = *(v1 + 3416);
          v942 = *(v1 + 3344);
          v943 = *(v1 + 3336);
          v944 = *(v1 + 2840);
          v945 = *(v1 + 2800);

          v940(v941, v943);
          v946 = (v944 + *(v945 + 32));
          if (v946[1])
          {
            v1575 = *v946;
            v1481 = v946[1];
          }

          else
          {
            v1575 = 0;
            v1481 = 0xE000000000000000;
          }

          v1023 = *(v1580 + 2840);
          v1024 = *(v1580 + 2800);
          v1025 = (v1023 + *(v1024 + 28));
          v1026 = v2;
          if (v1025[1])
          {
            v1027 = *v1025;
            v1028 = v1025[1];
          }

          else
          {
            v1027 = 0;
            v1028 = 0xE000000000000000;
          }

          v1 = v1580;
          v1548 = *(v1580 + 3888);
          v1527 = *(v1580 + 3832);
          v1473 = *(v1580 + 3640);
          v1506 = *(v1580 + 3632);
          v1029 = *(v1580 + 3328);
          v1030 = (v1023 + *(v1024 + 36));
          v1031 = *v1030;
          v1032 = *(v1030 + 4);
          if (v1032)
          {
            v1033 = 0;
          }

          else
          {
            v1033 = v1031;
          }

          v1034 = v1032 | 0x60;
          sub_21CF9ED64();
          swift_allocError();
          *v1035 = 1;
          *(v1035 + 8) = v1575;
          *(v1035 + 16) = v1481;
          *(v1035 + 24) = v1027;
          *(v1035 + 32) = v1028;
          *(v1035 + 40) = v1033;
          *(v1035 + 48) = v1034;
          swift_willThrow();

          sub_21CF94FCC(v1424, v1026);
          sub_21CFB513C(v1023, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
          sub_21CFB513C(v1029, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
          v1036 = v1527;
          v1037 = v1506;
LABEL_370:
          v1548(v1036, v1037);
          goto LABEL_31;
        }

        v492 = *(v1 + 2840);
        v493 = *(v1 + 2800);
        *(*(v1 + 2792) + *(*(v1 + 2784) + 20)) = 1547038;
        sub_21D022494();
        *&v1598 = 0;
        *(&v1598 + 1) = 0xE000000000000000;
        sub_21D0229A4();
        MEMORY[0x223D3A110](0x6F44737574617473, 0xED00003A6E69616DLL);
        v494 = (v492 + v493[8]);
        v495 = v494[1];
        if (v495)
        {
          v496 = *v494;
        }

        else
        {
          v496 = 0;
        }

        if (v495)
        {
          v497 = v494[1];
        }

        else
        {
          v497 = 0xE000000000000000;
        }

        MEMORY[0x223D3A110](v496, v497);

        MEMORY[0x223D3A110](0x4D73757461747320, 0xEF3A656761737365);
        v498 = (v492 + v493[7]);
        v499 = v498[1];
        if (v499)
        {
          v500 = *v498;
        }

        else
        {
          v500 = 0;
        }

        if (v499)
        {
          v501 = v498[1];
        }

        else
        {
          v501 = 0xE000000000000000;
        }

        MEMORY[0x223D3A110](v500, v501);

        MEMORY[0x223D3A110](0x4373757461747320, 0xEC0000003A65646FLL);
        v502 = (v492 + v493[9]);
        if (*(v502 + 4))
        {
          v503 = 0;
        }

        else
        {
          v503 = *v502;
        }

        *(v1 + 2220) = v503;
        v504 = sub_21D022B04();
        MEMORY[0x223D3A110](v504);

        MEMORY[0x223D3A110](0, 0xE000000000000000);
        v505 = v1598;
        if (qword_27CE45180 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v506 = *&qword_27CE467A0;
        *(v1 + 2176) = xmmword_27CE46790;
        *(v1 + 2192) = v506;
        *(v1 + 2201) = *(&qword_27CE467A8 + 1);
        sub_21CF7F198(v1 + 2176, v1 + 2224, &qword_27CE45600, &qword_21D0246F8);
        v507 = sub_21D014BC8();
        v509 = v508;
        sub_21CF7F200(v1 + 2176, &qword_27CE45600, &qword_21D0246F8);
        if (v509)
        {
          v510 = HIBYTE(v509) & 0xF;
          if ((v509 & 0x2000000000000000) == 0)
          {
            v510 = v507 & 0xFFFFFFFFFFFFLL;
          }

          if (v510)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453C0, &qword_21D024700);
            v511 = swift_allocObject();
            *(v511 + 16) = xmmword_21D0238C0;
            *(v511 + 32) = v507;
            *(v511 + 40) = v509;
LABEL_329:
            v1052 = *(v1 + 3832);
            v1053 = *(v1 + 2792);
            v1054 = sub_21D021A54();
            sub_21D00F99C(v505, *(&v505 + 1), v1054, v1055, v511);

            sub_21CFB513C(v1053, type metadata accessor for PrivateMLClientAlertService);
            goto LABEL_330;
          }
        }

        v511 = MEMORY[0x277D84F90];
        goto LABEL_329;
      }

LABEL_66:
      v294 = *(v1 + 3872);
      v295 = *(v1 + 3856);
      v296 = *(v1 + 3848);
      v297 = *(v1 + 3832);
      v298 = *(v1 + 3688);
      v299 = *(v1 + 3632);
      v300 = *(v1 + 2840);
      v301 = *(v1 + 2824);
      (*(v1 + 3864))(*(v1 + 3432), *(v1 + 2736), *(v1 + 3336));
      v296(v298, v297, v299);
      sub_21CFB519C(v300, v301, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
      v302 = sub_21D022484();
      v303 = sub_21D0228D4();
      v304 = os_log_type_enabled(v302, v303);
      v1568 = *(v1 + 3888);
      if (v304)
      {
        v305 = *(v1 + 3688);
        v306 = *(v1 + 3640);
        v307 = *(v1 + 3632);
        v1516 = *(v1 + 2824);
        v1495 = *(v1 + 2800);
        v308 = swift_slowAlloc();
        v309 = swift_slowAlloc();
        *&v1598 = v309;
        *v308 = 136315394;
        sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
        v310 = sub_21D022B04();
        v312 = sub_21CF9703C(v310, v311, &v1598);

        *(v308 + 4) = v312;
        v1568(v305, v307);
        *(v308 + 12) = 2080;
        v313 = (v1516 + *(v1495 + 28));
        if (v313[1])
        {
          v314 = *v313;
          v315 = v313[1];
        }

        else
        {
          v314 = 0;
          v315 = 0xE000000000000000;
        }

        v1 = v1580;
        v1574 = *(v1580 + 3888);
        v1469 = *(v1580 + 3880);
        v1526 = *(v1580 + 3832);
        v1505 = *(v1580 + 3632);
        logj = *(v1580 + 3432);
        v887 = *(v1580 + 3344);
        v888 = *(v1580 + 3336);
        v1480 = *(v1580 + 3328);
        v1459 = *(v1580 + 2840);
        v889 = *(v1580 + 2824);

        v890 = sub_21CF9703C(v314, v315, &v1598);

        *(v308 + 14) = v890;
        sub_21CFB513C(v889, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
        _os_log_impl(&dword_21CF72000, v302, v303, "%s received status response ok. %s", v308, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v309, -1, -1);
        MEMORY[0x223D3ADE0](v308, -1, -1);

        sub_21CF94FCC(v1424, v1427);
        v1469(logj, v888);
        sub_21CFB513C(v1459, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
        sub_21CFB513C(v1480, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
        v1574(v1526, v1505);
      }

      else
      {
        v521 = *(v1 + 3880);
        v1543 = *(v1 + 3832);
        v522 = *(v1 + 3688);
        v523 = *(v1 + 3640);
        v524 = *(v1 + 3632);
        v525 = *(v1 + 3432);
        v526 = *(v1 + 3344);
        v527 = *(v1 + 3336);
        v1521 = *(v1 + 3328);
        v528 = *(v1580 + 2840);
        v529 = *(v1580 + 2824);

        sub_21CFB513C(v529, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
        v1568(v522, v524);
        sub_21CF94FCC(v1424, v1427);
        v521(v525, v527);
        v530 = v528;
        v1 = v1580;
        sub_21CFB513C(v530, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
        sub_21CFB513C(v1521, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
        v1568(v1543, v524);
      }

      goto LABEL_279;
    }

    v351 = *(v1 + 3872);
    v352 = *(v1 + 3856);
    v353 = *(v1 + 3848);
    v354 = *(v1 + 3832);
    v355 = *(v1 + 3696);
    v356 = *(v1 + 3632);
    v357 = *(v1 + 2840);
    v358 = *(v1 + 2832);
    (*(v1 + 3864))(*(v1 + 3440), *(v1 + 2736), *(v1 + 3336));
    v353(v355, v354, v356);
    sub_21CFB519C(v357, v358, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
    v359 = sub_21D022484();
    v360 = sub_21D0228D4();
    v361 = os_log_type_enabled(v359, v360);
    v362 = *(v1 + 3888);
    if (v361)
    {
      v363 = *(v1 + 3696);
      v364 = *(v1 + 3640);
      v365 = *(v1 + 3632);
      v1540 = *(v1 + 2832);
      v1517 = *(v1 + 2800);
      v366 = swift_slowAlloc();
      v367 = swift_slowAlloc();
      *&v1598 = v367;
      *v366 = 136315394;
      sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
      v368 = sub_21D022B04();
      v370 = sub_21CF9703C(v368, v369, &v1598);

      *(v366 + 4) = v370;
      v362(v363, v365);
      *(v366 + 12) = 2080;
      v371 = (v1540 + *(v1517 + 28));
      if (v371[1])
      {
        v372 = *v371;
        v373 = v371[1];
      }

      else
      {
        v372 = 0;
        v373 = 0xE000000000000000;
      }

      v1 = v1580;
      v1547 = *(v1580 + 3888);
      v1468 = *(v1580 + 3880);
      v1525 = *(v1580 + 3832);
      v1504 = *(v1580 + 3632);
      logi = *(v1580 + 3440);
      v875 = *(v1580 + 3344);
      v876 = *(v1580 + 3336);
      v1479 = *(v1580 + 3328);
      v1458 = *(v1580 + 2840);
      v877 = *(v1580 + 2832);

      v878 = sub_21CF9703C(v372, v373, &v1598);

      *(v366 + 14) = v878;
      sub_21CFB513C(v877, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
      _os_log_impl(&dword_21CF72000, v359, v360, "%s received status response not set. %s", v366, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v367, -1, -1);
      MEMORY[0x223D3ADE0](v366, -1, -1);

      sub_21CF94FCC(v1424, v1427);
      v1468(logi, v876);
      sub_21CFB513C(v1458, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
      sub_21CFB513C(v1479, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
      v1547(v1525, v1504);
    }

    else
    {
      v1520 = *(v1 + 3880);
      v1570 = *(v1 + 3832);
      v512 = *(v1 + 3696);
      v513 = *(v1 + 3640);
      v514 = *(v1 + 3632);
      v515 = *(v1 + 3440);
      v516 = *(v1 + 3344);
      v517 = *(v1 + 3336);
      v1542 = *(v1 + 3328);
      v518 = *(v1580 + 2840);
      v519 = *(v1580 + 2832);

      sub_21CFB513C(v519, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
      v362(v512, v514);
      sub_21CF94FCC(v1424, v1427);
      v1520(v515, v517);
      v520 = v518;
      v1 = v1580;
      sub_21CFB513C(v520, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
      sub_21CFB513C(v1542, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
      v362(v1570, v514);
    }

    goto LABEL_279;
  }

  v90 = *(v1 + 3872);
  v91 = *(v1580 + 3864);
  v1557 = *(v1580 + 3856);
  v92 = *(v1580 + 3848);
  v93 = *(v1580 + 3832);
  v94 = *(v1580 + 3744);
  v95 = *(v1580 + 3632);
  v96 = *(v1580 + 3536);
  v97 = *(v1580 + 3336);
  v98 = *(v1580 + 2736);
  sub_21CFB537C(v88, *(v1580 + 3152), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
  v91(v96, v98, v97);
  v1 = v1580;
  v92(v94, v93, v95);
  v99 = sub_21D022484();
  v100 = sub_21D0228D4();
  v101 = os_log_type_enabled(v99, v100);
  v102 = *(v1580 + 3888);
  v103 = *(v1580 + 3880);
  v104 = *(v1580 + 3744);
  v105 = *(v1580 + 3640);
  v106 = *(v1580 + 3632);
  v107 = *(v1580 + 3536);
  v1558 = *(v1580 + 3344);
  v108 = *(v1580 + 3336);
  if (v101)
  {
    v1532 = *(v1580 + 3536);
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *&v1598 = v110;
    *v109 = 136315138;
    sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
    v111 = sub_21D022B04();
    v1487 = v103;
    v113 = sub_21CF9703C(v111, v112, &v1598);

    *(v109 + 4) = v113;
    v102(v104, v106);
    _os_log_impl(&dword_21CF72000, v99, v100, "%s received final response", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v110);
    v114 = v110;
    v1 = v1580;
    MEMORY[0x223D3ADE0](v114, -1, -1);
    MEMORY[0x223D3ADE0](v109, -1, -1);

    v1487(v1532, v108);
  }

  else
  {
    v102(v104, v106);

    v103(v107, v108);
  }

  v316 = *(v1 + 3136);
  v317 = *(v1 + 3040);
  v318 = *(v1 + 3032);
  v1375 = *(v1 + 3152);
  v1372 = *(*(v1 + 3144) + 28);
  sub_21CF7F198(v1375 + v1372, v316, &qword_27CE455E8, &unk_21D0246D0);
  v1407 = *(v317 + 48);
  LODWORD(v318) = v1407(v316, 1, v318);
  sub_21CF7F200(v316, &qword_27CE455E8, &unk_21D0246D0);
  v25 = v1427;
  if (v318 != 1)
  {
    v319 = *(v1 + 3128);
    v320 = *(v1 + 3032);
    sub_21CF7F198(v1375 + v1372, v319, &qword_27CE455E8, &unk_21D0246D0);
    if (v1407(v319, 1, v320) == 1)
    {
      v321 = *(v1 + 3080);
      v322 = *(v1 + 3032);
      sub_21D021CE4();
      v323 = *(v322 + 20);
      if (qword_28121BFB8 != -1)
      {
        swift_once();
      }

      v324 = *(v1 + 3128);
      v325 = *(v1 + 3032);
      *(v321 + v323) = qword_28121BFC0;
      v326 = v1407(v324, 1, v325);

      if (v326 != 1)
      {
        sub_21CF7F200(*(v1 + 3128), &qword_27CE455E8, &unk_21D0246D0);
      }
    }

    else
    {
      sub_21CFB537C(*(v1 + 3128), *(v1 + 3080), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
    }

    v454 = *(v1 + 3080);
    sub_21CF7DAF0(*(v1 + 2736) + *(v1 + 2268), *(v1 + 2736));
    sub_21CFB513C(v454, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
  }

  v53 = (v1 + 2432);
  if (qword_28121B2A8 != -1)
  {
    goto LABEL_378;
  }

  while (1)
  {
    swift_beginAccess();
    v455 = unk_28121B2C0;
    *v53 = xmmword_28121B2B0;
    v53[1] = v455;
    *(v53 + 32) = byte_28121B2D0;
    sub_21CF7F198(v53, v1 + 2352, &qword_27CE45288, &qword_21D023970);
    v456 = sub_21D01561C();
    sub_21CF7F200(v53, &qword_27CE45288, &qword_21D023970);
    if ((v456 & 1) == 0)
    {
      break;
    }

    v457 = *(v1 + 3120);
    v458 = *(v1 + 3032);
    sub_21CF7F198(v1375 + v1372, v457, &qword_27CE455E8, &unk_21D0246D0);
    LODWORD(v458) = v1407(v457, 1, v458);
    sub_21CF7F200(v457, &qword_27CE455E8, &unk_21D0246D0);
    if (v458 == 1)
    {
      v459 = *(v1 + 3872);
      v460 = *(v1 + 3856);
      v461 = *(v1 + 3848);
      v462 = *(v1 + 3832);
      v463 = *(v1 + 3736);
      v464 = *(v1 + 3632);
      (*(v1 + 3864))(*(v1 + 3528), *(v1 + 2736), *(v1 + 3336));
      v461(v463, v462, v464);
      v465 = sub_21D022484();
      v466 = sub_21D0228C4();
      v467 = os_log_type_enabled(v465, v466);
      v468 = *(v1 + 3888);
      v469 = *(v1 + 3880);
      v470 = *(v1 + 3736);
      v471 = *(v1 + 3640);
      v472 = *(v1 + 3632);
      v473 = *(v1 + 3528);
      v1541 = *(v1 + 3344);
      v1569 = *(v1 + 3336);
      if (v467)
      {
        v1518 = *(v1 + 3528);
        v474 = swift_slowAlloc();
        v475 = swift_slowAlloc();
        *&v1598 = v475;
        *v474 = 136315138;
        sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
        v476 = sub_21D022B04();
        v1496 = v469;
        v478 = sub_21CF9703C(v476, v477, &v1598);
        v25 = v1427;

        *(v474 + 4) = v478;
        v468(v470, v472);
        _os_log_impl(&dword_21CF72000, v465, v466, "%s contains no debug information", v474, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v475);
        v479 = v475;
        v1 = v1580;
        MEMORY[0x223D3ADE0](v479, -1, -1);
        MEMORY[0x223D3ADE0](v474, -1, -1);

        v1496(v1518, v1569);
      }

      else
      {
        v468(v470, v472);

        v469(v473, v1569);
      }
    }

    v547 = *(v1 + 3112);
    v548 = *(v1 + 3032);
    sub_21CF7F198(v1375 + v1372, v547, &qword_27CE455E8, &unk_21D0246D0);
    if (v1407(v547, 1, v548) == 1)
    {
      v549 = *(v1 + 3072);
      v550 = *(v1 + 3032);
      sub_21D021CE4();
      v551 = *(v550 + 20);
      if (qword_28121BFB8 != -1)
      {
        swift_once();
      }

      v552 = *(v1 + 3112);
      v553 = *(v1 + 3032);
      *(v549 + v551) = qword_28121BFC0;
      v554 = v1407(v552, 1, v553);

      if (v554 != 1)
      {
        sub_21CF7F200(*(v1 + 3112), &qword_27CE455E8, &unk_21D0246D0);
      }
    }

    else
    {
      sub_21CFB537C(*(v1 + 3112), *(v1 + 3072), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
    }

    v555 = *(v1 + 3072);
    v556 = *(v1 + 3024);
    v557 = *(v1 + 2912);
    v558 = *(v1 + 2904);
    v1403 = *(v1 + 3032);
    v559 = *(v555 + *(v1403 + 20));
    v560 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
    swift_beginAccess();
    sub_21CF7F198(v559 + v560, v556, &qword_27CE45248, &unk_21D023560);
    v1364 = *(v557 + 48);
    LODWORD(v558) = v1364(v556, 1, v558);
    sub_21CF7F200(v556, &qword_27CE45248, &unk_21D023560);
    sub_21CFB513C(v555, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
    if (v558 == 1)
    {
      v561 = *(v1 + 3872);
      v562 = *(v1 + 3856);
      v563 = *(v1 + 3848);
      v564 = *(v1 + 3832);
      v565 = *(v1 + 3728);
      v566 = *(v1 + 3632);
      (*(v1 + 3864))(*(v1 + 3520), *(v1 + 2736), *(v1 + 3336));
      v563(v565, v564, v566);
      v567 = sub_21D022484();
      v568 = sub_21D0228C4();
      v569 = os_log_type_enabled(v567, v568);
      v570 = *(v1 + 3888);
      v571 = *(v1 + 3880);
      v572 = *(v1 + 3728);
      v573 = *(v1 + 3640);
      v574 = *(v1 + 3632);
      v575 = *(v1 + 3520);
      v1544 = *(v1 + 3344);
      v1571 = *(v1 + 3336);
      if (v569)
      {
        v1522 = *(v1 + 3520);
        v576 = swift_slowAlloc();
        v577 = swift_slowAlloc();
        *&v1598 = v577;
        *v576 = 136315138;
        sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
        v578 = sub_21D022B04();
        v1497 = v571;
        v580 = sub_21CF9703C(v578, v579, &v1598);
        v25 = v1427;

        *(v576 + 4) = v580;
        v570(v572, v574);
        _os_log_impl(&dword_21CF72000, v567, v568, "%s contains no performance metrics", v576, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v577);
        v581 = v577;
        v1 = v1580;
        MEMORY[0x223D3ADE0](v581, -1, -1);
        MEMORY[0x223D3ADE0](v576, -1, -1);

        v1497(v1522, v1571);
      }

      else
      {
        v570(v572, v574);

        v571(v575, v1571);
      }
    }

    if (qword_27CE451D0 != -1)
    {
      swift_once();
    }

    v582 = *(v1 + 3104);
    v583 = *(v1 + 3032);
    swift_beginAccess();
    v584 = unk_27CE46948;
    *(v1 + 2392) = xmmword_27CE46938;
    *(v1 + 2408) = v584;
    *(v1 + 2424) = byte_27CE46958;
    sub_21CF7F198(v1 + 2392, v1 + 2312, &qword_27CE45260, &unk_21D0244F0);
    v585 = sub_21D0146E4();
    sub_21CF7F200(v1 + 2392, &qword_27CE45260, &unk_21D0244F0);
    *&v1585 = MEMORY[0x277D84F90];
    sub_21CF7F198(v1375 + v1372, v582, &qword_27CE455E8, &unk_21D0246D0);
    if (v1407(v582, 1, v583) == 1)
    {
      v586 = *(v1 + 3064);
      sub_21D021CE4();
      v587 = *(v1403 + 20);
      if (qword_28121BFB8 != -1)
      {
        swift_once();
      }

      v588 = *(v1 + 3104);
      v589 = *(v1 + 3032);
      *(v586 + v587) = qword_28121BFC0;
      v590 = v1407(v588, 1, v589);

      if (v590 != 1)
      {
        sub_21CF7F200(*(v1 + 3104), &qword_27CE455E8, &unk_21D0246D0);
      }
    }

    else
    {
      sub_21CFB537C(*(v1 + 3104), *(v1 + 3064), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
    }

    v591 = *(v1 + 3016);
    v592 = *(v1 + 2904);
    v593 = *(*(v1 + 3064) + *(v1403 + 20));
    v594 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
    swift_beginAccess();
    sub_21CF7F198(v593 + v594, v591, &qword_27CE45248, &unk_21D023560);
    v595 = v1364(v591, 1, v592);
    v596 = *(v1 + 3016);
    v597 = *(v1 + 2992);
    if (v595 == 1)
    {
      v598 = *(v1 + 2904);
      *v597 = MEMORY[0x277D84F90];
      v599 = v597 + v598[5];
      sub_21D021CE4();
      v600 = (v597 + v598[6]);
      *v600 = 0;
      v600[1] = 0;
      v601 = v597 + v598[7];
      *v601 = 0;
      v601[8] = 1;
      if (v1364(v596, 1, v598) != 1)
      {
        sub_21CF7F200(*(v1 + 3016), &qword_27CE45248, &unk_21D023560);
      }
    }

    else
    {
      sub_21CFB537C(*(v1 + 3016), *(v1 + 2992), type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
    }

    v602 = *(v1 + 2992);
    v603 = *(v1 + 2896);
    v604 = *(v1 + 2864);
    sub_21CFB513C(*(v1 + 3064), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
    v1419 = v604;
    v605 = *(v604 + 48);
    sub_21CFB537C(v602, v603, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
    *(v603 + v605) = 0;
    v53 = &v1585;
    sub_21CFA4F74(v603);
    v1478 = v1585;
    if (!*(v1585 + 16))
    {
LABEL_248:

      break;
    }

    v1523 = *(v1 + 3640) + 8;
    v1351 = *(v1 + 2912);
    v1572 = *(v1 + 3344) + 8;
    v1545 = *(v1 + 2904);
    v1346 = v585;
    v1355 = *(v1 + 2872);
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1478 = sub_21CFB5204(v1478);
      }

      v606 = v1478[2];
      if (!v606)
      {
        break;
      }

      v607 = *(v1 + 3872);
      v608 = *(v1 + 3864);
      v1434 = *(v1 + 3856);
      v1396 = *(v1 + 3848);
      v609 = *(v1 + 3832);
      v610 = *(v1 + 3720);
      v611 = *(v1 + 3632);
      v612 = *(v1 + 3512);
      v613 = *(v1 + 3336);
      v614 = *(v1 + 2984);
      v1390 = *(v1 + 2976);
      logh = *(v1 + 2968);
      v615 = *(v1 + 2888);
      v616 = *(v1580 + 2736);
      v617 = v606 - 1;
      v1498 = (*(v1355 + 80) + 32) & ~*(v1355 + 80);
      v1465 = *(v1355 + 72);
      v1478[2] = v617;
      sub_21CF7F260(v1478 + v1498 + v1465 * v617, v615);
      v1359 = *(v615 + *(v1419 + 48));
      sub_21CFB537C(v615, v614, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      v618 = v616;
      v1 = v1580;
      v608(v612, v618, v613);
      v1396(v610, v609, v611);
      sub_21CFB519C(v614, v1390, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      sub_21CFB519C(v614, logh, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      v619 = sub_21D022484();
      v620 = sub_21D0228D4();
      v621 = os_log_type_enabled(v619, v620);
      v622 = *(v1580 + 3888);
      if (v621)
      {
        v623 = *(v1580 + 3720);
        v624 = *(v1580 + 3632);
        v625 = *(v1580 + 2976);
        v626 = swift_slowAlloc();
        v627 = swift_slowAlloc();
        *&v1598 = v627;
        *v626 = 136446722;
        sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
        v628 = sub_21D022B04();
        v630 = sub_21CF9703C(v628, v629, &v1598);

        *(v626 + 4) = v630;
        v622(v623, v624);
        *(v626 + 12) = 2080;
        v631 = (v625 + v1545[6]);
        if (v631[1])
        {
          v632 = *v631;
          v633 = v631[1];
        }

        else
        {
          v632 = 0;
          v633 = 0xE000000000000000;
        }

        v1 = v1580;
        logc = *(v1580 + 3880);
        v1435 = *(v1580 + 3512);
        v641 = *(v1580 + 3336);
        v642 = *(v1580 + 2976);
        v643 = *(v1580 + 2968);

        v644 = sub_21CF9703C(v632, v633, &v1598);

        *(v626 + 14) = v644;
        sub_21CFB513C(v642, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
        *(v626 + 22) = 2048;
        v640 = v1545;
        v645 = v643 + v1545[7];
        if (*(v645 + 8))
        {
          v646 = 0;
        }

        else
        {
          v646 = *v645;
        }

        sub_21CFB513C(v643, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
        *(v626 + 24) = v646;
        _os_log_impl(&dword_21CF72000, v619, v620, "%{public}s performance metrics: %s -  %llu", v626, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v627, -1, -1);
        MEMORY[0x223D3ADE0](v626, -1, -1);

        (logc)(v1435, v641);
      }

      else
      {
        v634 = *(v1580 + 3880);
        v635 = *(v1580 + 3720);
        v636 = *(v1580 + 3632);
        v637 = *(v1580 + 3512);
        v638 = *(v1580 + 3336);
        v639 = *(v1580 + 2976);
        sub_21CFB513C(*(v1580 + 2968), type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
        v622(v635, v636);
        sub_21CFB513C(v639, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);

        v634(v637, v638);
        v640 = v1545;
      }

      v647 = (*(v1 + 2984) + v640[6]);
      v53 = v647[1];
      v25 = v1427;
      if (v53 && 0x800000021D02D410 == v53 && *v647 == 0xD00000000000001FLL)
      {
      }

      else
      {
        v648 = sub_21D022B24();

        if ((v648 & 1) == 0)
        {
          if (v1359 <= v1346)
          {
            v664 = **(v1 + 2984);
            v665 = *(v664 + 16);
            if (v665)
            {
              v53 = (v664 + ((*(v1351 + 80) + 32) & ~*(v1351 + 80)));
              v666 = *(v1351 + 72);
              do
              {
                v667 = *(v1 + 2880);
                v668 = *(v1419 + 48);
                sub_21CFB519C(v53, v667, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
                *(v667 + v668) = v1359 + 1;
                v670 = v1478[2];
                v669 = v1478[3];
                if (v670 >= v669 >> 1)
                {
                  v1478 = sub_21CFB493C(v669 > 1, v670 + 1, 1, v1478);
                }

                v671 = *(v1 + 2880);
                v1478[2] = v670 + 1;
                sub_21CF7F260(v671, v1478 + v1498 + v670 * v1465);
                v53 = (v53 + v666);
                --v665;
              }

              while (v665);
            }
          }

          goto LABEL_173;
        }
      }

      v649 = *(v1 + 3872);
      (*(v1 + 3864))(*(v1 + 3504), *(v1 + 2736), *(v1 + 3336));
      v650 = sub_21D022484();
      v651 = sub_21D0228D4();
      if (os_log_type_enabled(v650, v651))
      {
        v652 = swift_slowAlloc();
        *v652 = 0;
        _os_log_impl(&dword_21CF72000, v650, v651, "Performance metrics for first 10 responses: ", v652, 2u);
        MEMORY[0x223D3ADE0](v652, -1, -1);
      }

      v653 = *(v1 + 3880);
      v654 = *(v1 + 3504);
      v655 = *(v1 + 3336);
      v656 = *(v1 + 3096);
      v657 = *(v1 + 3032);

      v653(v654, v655);
      sub_21CF7F198(v1375 + v1372, v656, &qword_27CE455E8, &unk_21D0246D0);
      if (v1407(v656, 1, v657) == 1)
      {
        v658 = *(v1 + 3056);
        sub_21D021CE4();
        v659 = *(v1403 + 20);
        v660 = v1364;
        if (qword_28121BFB8 != -1)
        {
          swift_once();
        }

        v661 = *(v1 + 3096);
        v662 = *(v1 + 3032);
        *(v658 + v659) = qword_28121BFC0;
        v663 = v1407(v661, 1, v662);

        if (v663 != 1)
        {
          sub_21CF7F200(*(v1 + 3096), &qword_27CE455E8, &unk_21D0246D0);
        }
      }

      else
      {
        sub_21CFB537C(*(v1 + 3096), *(v1 + 3056), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
        v660 = v1364;
      }

      v672 = *(v1 + 3008);
      v673 = *(v1 + 2904);
      v674 = *(*(v1 + 3056) + *(v1403 + 20));
      v675 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
      swift_beginAccess();
      sub_21CF7F198(v674 + v675, v672, &qword_27CE45248, &unk_21D023560);
      v676 = v660(v672, 1, v673);
      v677 = *(v1 + 3008);
      v678 = *(v1 + 2960);
      if (v676 == 1)
      {
        v679 = *(v1 + 2904);
        *v678 = MEMORY[0x277D84F90];
        v680 = v678 + v1545[5];
        sub_21D021CE4();
        v681 = (v678 + v1545[6]);
        *v681 = 0;
        v681[1] = 0;
        v682 = v678 + v1545[7];
        *v682 = 0;
        v682[8] = 1;
        if (v660(v677, 1, v679) != 1)
        {
          sub_21CF7F200(*(v1 + 3008), &qword_27CE45248, &unk_21D023560);
        }
      }

      else
      {
        sub_21CFB537C(*(v1 + 3008), *(v1 + 2960), type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      }

      v53 = *(v1 + 2960);
      sub_21CFB513C(*(v1 + 3056), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
      v683 = *v53;

      sub_21CFB513C(v53, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      sub_21CFB00C8(10, v683);
      v687 = (v686 >> 1) - v685;
      if (v686 >> 1 != v685)
      {
        if ((v686 >> 1) <= v685)
        {
          goto LABEL_376;
        }

        v1466 = *(v1351 + 72);
        v707 = v684 + v685 * v1466;
        do
        {
          v713 = *(v1 + 3872);
          v714 = *(v1 + 3864);
          v715 = *(v1580 + 3856);
          v716 = *(v1580 + 3848);
          v717 = *(v1580 + 3832);
          v718 = *(v1580 + 3712);
          v719 = *(v1580 + 3632);
          v720 = *(v1580 + 2952);
          v721 = *(v1580 + 2944);
          v714(*(v1580 + 3496), *(v1580 + 2736), *(v1580 + 3336));
          v716(v718, v717, v719);
          sub_21CFB519C(v707, v720, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
          sub_21CFB519C(v707, v721, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
          v722 = sub_21D022484();
          v723 = sub_21D0228D4();
          v724 = os_log_type_enabled(v722, v723);
          v1499 = *(v1580 + 3888);
          if (v724)
          {
            logd = v722;
            v725 = *(v1580 + 3712);
            v726 = *(v1580 + 3632);
            v727 = *(v1580 + 2952);
            v25 = swift_slowAlloc();
            v728 = swift_slowAlloc();
            *&v1598 = v728;
            *v25 = 136315650;
            sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
            v729 = sub_21D022B04();
            v731 = sub_21CF9703C(v729, v730, &v1598);

            *(v25 + 4) = v731;
            v1499(v725, v726);
            *(v25 + 12) = 2080;
            v732 = (v727 + v1545[6]);
            if (v732[1])
            {
              v733 = *v732;
              v734 = v732[1];
            }

            else
            {
              v733 = 0;
              v734 = 0xE000000000000000;
            }

            v735 = *(v1580 + 3880);
            v1500 = *(v1580 + 3496);
            v1436 = *(v1580 + 3336);
            v736 = *(v1580 + 2952);
            v737 = *(v1580 + 2944);

            v738 = sub_21CF9703C(v733, v734, &v1598);

            *(v25 + 14) = v738;
            sub_21CFB513C(v736, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            *(v25 + 22) = 2048;
            v739 = v737 + v1545[7];
            if (*(v739 + 8))
            {
              v740 = 0;
            }

            else
            {
              v740 = *v739;
            }

            sub_21CFB513C(v737, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            *(v25 + 24) = v740;
            _os_log_impl(&dword_21CF72000, logd, v723, "%s performance metrics: %s - %llu", v25, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x223D3ADE0](v728, -1, -1);
            MEMORY[0x223D3ADE0](v25, -1, -1);

            v735(v1500, v1436);
          }

          else
          {
            v25 = *(v1580 + 3880);
            v708 = *(v1580 + 3712);
            v709 = *(v1580 + 3632);
            v710 = *(v1580 + 3496);
            v711 = *(v1580 + 3336);
            v712 = *(v1580 + 2952);
            sub_21CFB513C(*(v1580 + 2944), type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);

            sub_21CFB513C(v712, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            v1499(v708, v709);
            (v25)(v710, v711);
          }

          v707 += v1466;
          --v687;
          v1 = v1580;
        }

        while (v687);
      }

      v688 = *(v1 + 3872);
      v689 = *(v1 + 3864);
      v690 = *(v1 + 3488);
      v691 = *(v1 + 3336);
      v692 = *(v1 + 2736);
      swift_unknownObjectRelease();
      v689(v690, v692, v691);
      v693 = sub_21D022484();
      v694 = sub_21D0228D4();
      if (os_log_type_enabled(v693, v694))
      {
        v695 = swift_slowAlloc();
        *v695 = 0;
        _os_log_impl(&dword_21CF72000, v693, v694, "Performance metrics for last 10 responses: ", v695, 2u);
        MEMORY[0x223D3ADE0](v695, -1, -1);
      }

      v696 = *(v1 + 3880);
      v697 = *(v1 + 3488);
      v698 = *(v1 + 3336);
      v699 = *(v1 + 3088);
      v700 = *(v1 + 3032);

      v696(v697, v698);
      sub_21CF7F198(v1375 + v1372, v699, &qword_27CE455E8, &unk_21D0246D0);
      if (v1407(v699, 1, v700) == 1)
      {
        v701 = *(v1 + 3048);
        sub_21D021CE4();
        v702 = *(v1403 + 20);
        v703 = v1364;
        if (qword_28121BFB8 != -1)
        {
          swift_once();
        }

        v704 = *(v1 + 3088);
        v705 = *(v1 + 3032);
        *(v701 + v702) = qword_28121BFC0;
        v706 = v1407(v704, 1, v705);

        if (v706 != 1)
        {
          sub_21CF7F200(*(v1 + 3088), &qword_27CE455E8, &unk_21D0246D0);
        }
      }

      else
      {
        sub_21CFB537C(*(v1 + 3088), *(v1 + 3048), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
        v703 = v1364;
      }

      v741 = *(v1 + 3000);
      v742 = *(v1 + 2904);
      v743 = *(*(v1 + 3048) + *(v1403 + 20));
      v744 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
      swift_beginAccess();
      sub_21CF7F198(v743 + v744, v741, &qword_27CE45248, &unk_21D023560);
      v745 = v703(v741, 1, v742);
      v746 = *(v1 + 3000);
      v747 = *(v1 + 2936);
      if (v745 == 1)
      {
        v748 = *(v1 + 2904);
        *v747 = MEMORY[0x277D84F90];
        v749 = v747 + v1545[5];
        sub_21D021CE4();
        v750 = (v747 + v1545[6]);
        *v750 = 0;
        v750[1] = 0;
        v751 = v747 + v1545[7];
        *v751 = 0;
        v751[8] = 1;
        if (v703(v746, 1, v748) != 1)
        {
          sub_21CF7F200(*(v1 + 3000), &qword_27CE45248, &unk_21D023560);
        }
      }

      else
      {
        sub_21CFB537C(*(v1 + 3000), *(v1 + 2936), type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      }

      v53 = *(v1 + 2936);
      sub_21CFB513C(*(v1 + 3048), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
      v752 = *v53;

      sub_21CFB513C(v53, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      sub_21CFB015C(10, v752);
      v756 = (v755 >> 1) - v754;
      if (v755 >> 1 != v754)
      {
        if ((v755 >> 1) <= v754)
        {
          goto LABEL_377;
        }

        v1467 = *(v1351 + 72);
        v757 = v753 + v754 * v1467;
        do
        {
          v763 = *(v1 + 3872);
          v764 = *(v1 + 3864);
          v765 = *(v1580 + 3856);
          v766 = *(v1580 + 3848);
          v767 = *(v1580 + 3832);
          v768 = *(v1580 + 3704);
          v769 = *(v1580 + 3632);
          v770 = *(v1580 + 2928);
          v771 = *(v1580 + 2920);
          v764(*(v1580 + 3480), *(v1580 + 2736), *(v1580 + 3336));
          v766(v768, v767, v769);
          sub_21CFB519C(v757, v770, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
          sub_21CFB519C(v757, v771, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
          v772 = sub_21D022484();
          v773 = sub_21D0228D4();
          v774 = os_log_type_enabled(v772, v773);
          v1501 = *(v1580 + 3888);
          if (v774)
          {
            loge = v772;
            v775 = *(v1580 + 3704);
            v776 = *(v1580 + 3632);
            v777 = *(v1580 + 2928);
            v778 = swift_slowAlloc();
            v779 = swift_slowAlloc();
            *&v1598 = v779;
            *v778 = 136315650;
            sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
            v780 = sub_21D022B04();
            v782 = sub_21CF9703C(v780, v781, &v1598);

            *(v778 + 4) = v782;
            v1501(v775, v776);
            *(v778 + 12) = 2080;
            v783 = (v777 + v1545[6]);
            if (v783[1])
            {
              v784 = *v783;
              v785 = v783[1];
            }

            else
            {
              v784 = 0;
              v785 = 0xE000000000000000;
            }

            v786 = *(v1580 + 3880);
            v1502 = *(v1580 + 3480);
            v1437 = *(v1580 + 3336);
            v787 = *(v1580 + 2928);
            v788 = *(v1580 + 2920);

            v789 = sub_21CF9703C(v784, v785, &v1598);

            *(v778 + 14) = v789;
            sub_21CFB513C(v787, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            *(v778 + 22) = 2048;
            v790 = v788 + v1545[7];
            if (*(v790 + 8))
            {
              v791 = 0;
            }

            else
            {
              v791 = *v790;
            }

            sub_21CFB513C(v788, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            *(v778 + 24) = v791;
            v53 = loge;
            _os_log_impl(&dword_21CF72000, loge, v773, "%s performance metrics: %s - %llu", v778, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x223D3ADE0](v779, -1, -1);
            MEMORY[0x223D3ADE0](v778, -1, -1);

            v786(v1502, v1437);
          }

          else
          {
            v758 = *(v1580 + 3880);
            v53 = *(v1580 + 3704);
            v759 = *(v1580 + 3632);
            v760 = *(v1580 + 3480);
            v761 = *(v1580 + 3336);
            v762 = *(v1580 + 2928);
            sub_21CFB513C(*(v1580 + 2920), type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);

            sub_21CFB513C(v762, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            v1501(v53, v759);
            v758(v760, v761);
          }

          v757 += v1467;
          --v756;
          v1 = v1580;
        }

        while (v756);
      }

      swift_unknownObjectRelease();
      v25 = v1427;
LABEL_173:
      sub_21CFB513C(*(v1 + 2984), type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      if (!v1478[2])
      {
        goto LABEL_248;
      }
    }

    __break(1u);
LABEL_374:
    __break(1u);
LABEL_375:
    __break(1u);
LABEL_376:
    __break(1u);
LABEL_377:
    __break(1u);
LABEL_378:
    swift_once();
  }

  v792 = *(v1 + 3904);
  v793 = *(v1 + 3896);
  v794 = *(v1 + 2348);
  v795 = *(v1 + 3152);
  v796 = *(v1 + 2856);
  v797 = *(v1 + 2736);
  sub_21CF7F200(v797 + v794, &qword_27CE455D0, &qword_21D0246B0);
  (*(v792 + 56))(v797 + v794, 1, 1, v793);
  sub_21CF7F198(v795, v796, &qword_27CE455E0, &qword_21D0246C8);
  v798 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
  if ((*(*(v798 - 8) + 48))(v796, 1, v798) == 1)
  {
    goto LABEL_250;
  }

  sub_21CF7F198(*(v1 + 2856), *(v1 + 2848), &qword_27CE455E0, &qword_21D0246C8);
  v808 = swift_getEnumCaseMultiPayload();
  if (v808 > 1)
  {
    if (v808 != 2)
    {
      sub_21CFB513C(*(v1 + 2848), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
LABEL_250:
      v799 = *(v1 + 3872);
      (*(v1 + 3864))(*(v1 + 3448), *(v1 + 2736), *(v1 + 3336));
      v800 = sub_21D022484();
      v801 = sub_21D0228D4();
      v802 = os_log_type_enabled(v800, v801);
      v803 = *(v1 + 3880);
      v804 = *(v1 + 3448);
      v805 = *(v1 + 3344);
      v806 = *(v1 + 3336);
      if (v802)
      {
        v807 = swift_slowAlloc();
        *v807 = 0;
        _os_log_impl(&dword_21CF72000, v800, v801, "Final response. Completion reason is unknown", v807, 2u);
        MEMORY[0x223D3ADE0](v807, -1, -1);
      }

      v803(v804, v806);
      goto LABEL_266;
    }

    v824 = *(v1 + 3872);
    (*(v1 + 3864))(*(v1 + 3464), *(v1 + 2736), *(v1 + 3336));
    v825 = sub_21D022484();
    v826 = sub_21D0228D4();
    if (os_log_type_enabled(v825, v826))
    {
      v827 = swift_slowAlloc();
      *v827 = 0;
      _os_log_impl(&dword_21CF72000, v825, v826, "Final response with completion reason encounteredStopSequence", v827, 2u);
      MEMORY[0x223D3ADE0](v827, -1, -1);
    }

    v828 = *(v1 + 3880);
    v829 = *(v1 + 3464);
LABEL_265:
    v833 = *(v1 + 3344);
    v834 = *(v1 + 3336);
    v835 = *(v1 + 2848);

    v828(v829, v834);
    sub_21CFB513C(v835, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
LABEL_266:
    v836 = *(v1 + 3888);
    v837 = *(v1 + 3832);
    v838 = *(v1 + 3640);
    v839 = *(v1 + 3632);
    v840 = *(v1 + 3328);
    v841 = *(v1 + 3152);
    v842 = *(v1 + 2728);
    sub_21CF7F200(*(v1 + 2856), &qword_27CE455E0, &qword_21D0246C8);
    sub_21CF94FCC(v1424, v25);
    sub_21CFB513C(v841, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
    sub_21CFB513C(v840, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
    v836(v837, v839);
    *v842 = 0;
    v842[1] = 0xE000000000000000;
    v843 = type metadata accessor for PrivateMLRequest.Response.Event(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v843 - 8) + 56))(v842, 0, 1, v843);
    goto LABEL_5;
  }

  if (v808)
  {
    v830 = *(v1 + 3872);
    (*(v1 + 3864))(*(v1 + 3456), *(v1 + 2736), *(v1 + 3336));
    v825 = sub_21D022484();
    v831 = sub_21D0228D4();
    if (os_log_type_enabled(v825, v831))
    {
      v832 = swift_slowAlloc();
      *v832 = 0;
      _os_log_impl(&dword_21CF72000, v825, v831, "Final response with completion reason encounteredStopToken", v832, 2u);
      MEMORY[0x223D3ADE0](v832, -1, -1);
    }

    v828 = *(v1 + 3880);
    v829 = *(v1 + 3456);
    goto LABEL_265;
  }

  v809 = *(v1 + 3872);
  (*(v1 + 3864))(*(v1 + 3472), *(v1 + 2736), *(v1 + 3336));
  v810 = sub_21D022484();
  v811 = sub_21D0228D4();
  if (os_log_type_enabled(v810, v811))
  {
    v812 = swift_slowAlloc();
    *v812 = 0;
    _os_log_impl(&dword_21CF72000, v810, v811, "Final response with completion reason outputTokenLimitReached", v812, 2u);
    MEMORY[0x223D3ADE0](v812, -1, -1);
  }

  v1524 = *(v1 + 3888);
  v813 = *(v1 + 3880);
  v1503 = *(v1 + 3832);
  v814 = *(v1 + 3640);
  v815 = *(v1 + 3632);
  v816 = *(v1 + 3472);
  v817 = *(v1 + 3344);
  v818 = *(v1580 + 3336);
  v819 = *(v1580 + 3328);
  v820 = *(v1580 + 3152);
  v1573 = *(v1580 + 2856);
  v1546 = *(v1580 + 2848);
  v821 = *(v1580 + 2728);

  sub_21CF94FCC(v1424, v1427);
  v822 = v818;
  v1 = v1580;
  v813(v816, v822);
  sub_21CFB513C(v820, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
  sub_21CFB513C(v819, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
  v1524(v1503, v815);
  *v821 = 0;
  v823 = type metadata accessor for PrivateMLRequest.Response.Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v823 - 8) + 56))(v821, 0, 1, v823);
  sub_21CFB513C(v1546, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  sub_21CF7F200(v1573, &qword_27CE455E0, &qword_21D0246C8);
LABEL_5:
  v13 = *(v1 + 3832);
  v14 = *(v1 + 3824);
  v15 = v1;
  v16 = *(v1 + 3816);
  v17 = v15[476];
  v18 = v15[475];
  v19 = v15[474];
  v20 = v15[473];
  v21 = v15[472];
  v22 = v15[471];
  v23 = v15[470];
  v1184 = v15[469];
  v1186 = v15[468];
  v1188 = v15[467];
  v1190 = v15[466];
  v1192 = v15[465];
  v1194 = v15[464];
  v1196 = v15[463];
  v1198 = v15[462];
  v1200 = v15[461];
  v1202 = v15[460];
  v1204 = v15[459];
  v1206 = v15[458];
  v1208 = v15[457];
  v1210 = v15[456];
  v1212 = v15[453];
  v1214 = v15[452];
  v1216 = v15[451];
  v1218 = v15[450];
  v1220 = v15[449];
  v1222 = v15[448];
  v1224 = v15[447];
  v1226 = v15[446];
  v1228 = v15[445];
  v1230 = v15[444];
  v1232 = v15[443];
  v1234 = v15[442];
  v1236 = v15[441];
  v1238 = v15[440];
  v1240 = v15[439];
  v1242 = v15[438];
  v1244 = v15[437];
  v1246 = v15[436];
  v1248 = v15[435];
  v1250 = v15[434];
  v1252 = v15[433];
  v1254 = v15[432];
  v1256 = v15[431];
  v1258 = v15[430];
  v1260 = v15[429];
  v1262 = v15[428];
  v1264 = v15[427];
  v1266 = v15[426];
  v1268 = v15[425];
  v1270 = v15[424];
  v1272 = v15[423];
  v1274 = v15[422];
  v1276 = v15[421];
  v1278 = v15[420];
  v1280 = v15[419];
  v1282 = v15[416];
  v1284 = v15[414];
  v1286 = v15[413];
  v1288 = v15[412];
  v1290 = v15[411];
  v1292 = v15[409];
  v1294 = v15[408];
  v1296 = v15[407];
  v1298 = v15[406];
  v1300 = v15[405];
  v1302 = v15[404];
  v1304 = v15[403];
  v1306 = v15[402];
  v1308 = v15[401];
  v1310 = v15[398];
  v1312 = v15[397];
  v1314 = v15[396];
  v1316 = v15[394];
  v1318 = v15[392];
  v1320 = v15[391];
  v1322 = v15[390];
  v1324 = v15[389];
  v1326 = v15[388];
  v1328 = v15[387];
  v1330 = v15[386];
  v1332 = v15[385];
  v1334 = v15[384];
  v1336 = v15[383];
  v1338 = v15[382];
  v1340 = v15[381];
  v1342 = v15[378];
  v1344 = v15[377];
  v1347 = v15[376];
  v1349 = v15[375];
  v1353 = v15[374];
  v1357 = v15[373];
  v1362 = v15[372];
  v1369 = v15[371];
  v1373 = v15[370];
  v1376 = v15[369];
  v1380 = v15[368];
  v1388 = v15[367];
  v1393 = v15[366];
  v1400 = v15[365];
  v1408 = v15[362];
  v1411 = v15[361];
  v1415 = v15[360];
  v1423 = v15[357];
  v1426 = v15[356];
  v1429 = v15[355];
  logf = v15[354];
  v1452 = v15[353];
  v1460 = v15[352];
  v1475 = v15[351];
  v1485 = v15[349];
  v1509 = v15[347];
  v1530 = v15[346];
  v1553 = v15[345];
  v1579 = v15[343];

  v24 = v15[1];
LABEL_32:

  return v24();
}

uint64_t sub_21CFAF990()
{
  v1 = *(v0 + 3640) + 8;
  (*(v0 + 3888))(*(v0 + 3832), *(v0 + 3632));
  v122 = *(v0 + 3920);
  v2 = *(v0 + 3832);
  v3 = *(v0 + 3824);
  v4 = *(v0 + 3816);
  v5 = *(v0 + 3808);
  v6 = *(v0 + 3800);
  v7 = *(v0 + 3792);
  v8 = *(v0 + 3784);
  v9 = *(v0 + 3776);
  v10 = *(v0 + 3768);
  v11 = *(v0 + 3760);
  v14 = *(v0 + 3752);
  v15 = *(v0 + 3744);
  v16 = *(v0 + 3736);
  v17 = *(v0 + 3728);
  v18 = *(v0 + 3720);
  v19 = *(v0 + 3712);
  v20 = *(v0 + 3704);
  v21 = *(v0 + 3696);
  v22 = *(v0 + 3688);
  v23 = *(v0 + 3680);
  v24 = *(v0 + 3672);
  v25 = *(v0 + 3664);
  v26 = *(v0 + 3656);
  v27 = *(v0 + 3648);
  v28 = *(v0 + 3624);
  v29 = *(v0 + 3616);
  v30 = *(v0 + 3608);
  v31 = *(v0 + 3600);
  v32 = *(v0 + 3592);
  v33 = *(v0 + 3584);
  v34 = *(v0 + 3576);
  v35 = *(v0 + 3568);
  v36 = *(v0 + 3560);
  v37 = *(v0 + 3552);
  v38 = *(v0 + 3544);
  v39 = *(v0 + 3536);
  v40 = *(v0 + 3528);
  v41 = *(v0 + 3520);
  v42 = *(v0 + 3512);
  v43 = *(v0 + 3504);
  v44 = *(v0 + 3496);
  v45 = *(v0 + 3488);
  v46 = *(v0 + 3480);
  v47 = *(v0 + 3472);
  v48 = *(v0 + 3464);
  v49 = *(v0 + 3456);
  v50 = *(v0 + 3448);
  v51 = *(v0 + 3440);
  v52 = *(v0 + 3432);
  v53 = *(v0 + 3424);
  v54 = *(v0 + 3416);
  v55 = *(v0 + 3408);
  v56 = *(v0 + 3400);
  v57 = *(v0 + 3392);
  v58 = *(v0 + 3384);
  v59 = *(v0 + 3376);
  v60 = *(v0 + 3368);
  v61 = *(v0 + 3360);
  v62 = *(v0 + 3352);
  v63 = *(v0 + 3328);
  v64 = *(v0 + 3312);
  v65 = *(v0 + 3304);
  v66 = *(v0 + 3296);
  v67 = *(v0 + 3288);
  v68 = *(v0 + 3272);
  v69 = *(v0 + 3264);
  v70 = *(v0 + 3256);
  v71 = *(v0 + 3248);
  v72 = *(v0 + 3240);
  v73 = *(v0 + 3232);
  v74 = *(v0 + 3224);
  v75 = *(v0 + 3216);
  v76 = *(v0 + 3208);
  v77 = *(v0 + 3184);
  v78 = *(v0 + 3176);
  v79 = *(v0 + 3168);
  v80 = *(v0 + 3152);
  v81 = *(v0 + 3136);
  v82 = *(v0 + 3128);
  v83 = *(v0 + 3120);
  v84 = *(v0 + 3112);
  v85 = *(v0 + 3104);
  v86 = *(v0 + 3096);
  v87 = *(v0 + 3088);
  v88 = *(v0 + 3080);
  v89 = *(v0 + 3072);
  v90 = *(v0 + 3064);
  v91 = *(v0 + 3056);
  v92 = *(v0 + 3048);
  v93 = *(v0 + 3024);
  v94 = *(v0 + 3016);
  v95 = *(v0 + 3008);
  v96 = *(v0 + 3000);
  v97 = *(v0 + 2992);
  v98 = *(v0 + 2984);
  v99 = *(v0 + 2976);
  v100 = *(v0 + 2968);
  v101 = *(v0 + 2960);
  v102 = *(v0 + 2952);
  v103 = *(v0 + 2944);
  v104 = *(v0 + 2936);
  v105 = *(v0 + 2928);
  v106 = *(v0 + 2920);
  v107 = *(v0 + 2896);
  v108 = *(v0 + 2888);
  v109 = *(v0 + 2880);
  v110 = *(v0 + 2856);
  v111 = *(v0 + 2848);
  v112 = *(v0 + 2840);
  v113 = *(v0 + 2832);
  v114 = *(v0 + 2824);
  v115 = *(v0 + 2816);
  v116 = *(v0 + 2808);
  v117 = *(v0 + 2792);
  v118 = *(v0 + 2776);
  v119 = *(v0 + 2768);
  v120 = *(v0 + 2760);
  v121 = *(v0 + 2744);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21CFB00C8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0) - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_21CFB015C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_21CFB01E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21CF83390;

  return PrivateMLRequest.Response.AsyncEventsIterator.next()(a1);
}

uint64_t sub_21CFB027C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_21CFB031C;

  return PrivateMLRequest.Response.AsyncEventsIterator.next()(a1);
}

uint64_t sub_21CFB031C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    if (v3[3])
    {
      v4 = v3[4];
      swift_getObjectType();
      v5 = sub_21D022734();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    return MEMORY[0x2822009F8](sub_21CFB048C, v5, v7);
  }

  else
  {
    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_21CFB048C()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45268, &qword_21D023D50);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t PrivateMLRequest.PromptDebugInfo.clientPrompt.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PrivateMLRequest.PromptDebugInfo.clientPrompt.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.PromptDebugInfo.clientDelimieters.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t PrivateMLRequest.PromptDebugInfo.promptTemplateID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PrivateMLRequest.PromptDebugInfo.promptTemplateID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PrivateMLRequest.PromptDebugInfo.promptTemplateVariableBindings.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t PrivateMLRequest.PromptDebugInfo.locale.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t PrivateMLRequest.PromptDebugInfo.init(clientPrompt:clientDelimieters:promptTemplateID:promptTemplateVariableBindings:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  sub_21CF9D5E8(MEMORY[0x277D84F90]);

  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PrivateMLRequest.PromptDebugInfo.asJSONString()()
{
  v1 = v0;
  v2 = sub_21D0225C4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v27[1] = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21D021834();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *v0;
  v29 = v0[1];
  v30 = v8;
  v9 = *(v0 + 4);
  v10 = sub_21D021874();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_21D021864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45618, &unk_21D025B00);
  v13 = *(v6 + 72);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21D0238C0;
  sub_21D021814();
  *&v31 = v15;
  sub_21CFB5744(&qword_28121E0A8, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45620, &qword_21D024720);
  sub_21CFB53E4();
  v28 = *(v1 + 40);
  sub_21D022964();
  sub_21D021844();
  v31 = v30;
  v32 = v29;
  v33 = v9;
  v34 = v28;
  sub_21CFB5448();
  v16 = v35;
  v17 = sub_21D021854();
  if (v16)
  {
  }

  else
  {
    v21 = v17;
    v22 = v18;
    sub_21D0225B4();
    v23 = sub_21D0225A4();
    v25 = v24;
    sub_21CF8F460(v21, v22);

    if (v25)
    {
      v19 = v23;
    }

    else
    {
      v19 = 32123;
    }

    if (v25)
    {
      v20 = v25;
    }

    else
    {
      v20 = 0xE200000000000000;
    }
  }

  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

unint64_t sub_21CFB0A68()
{
  v1 = *v0;
  v2 = 0x7250746E65696C63;
  v3 = 0xD00000000000001ELL;
  if (v1 != 3)
  {
    v3 = 0x656C61636F6CLL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_21CFB0B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CFB6CD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CFB0B4C(uint64_t a1)
{
  v2 = sub_21CFB549C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CFB0B88(uint64_t a1)
{
  v2 = sub_21CFB549C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrivateMLRequest.PromptDebugInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45628, &qword_21D024728);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v21 = v1[3];
  v22 = v10;
  v11 = v1[4];
  v19 = v1[5];
  v20 = v11;
  v18 = v1[6];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21CFB549C();
  sub_21D022C44();
  LOBYTE(v25) = 0;
  v13 = v23;
  sub_21D022AC4();
  if (!v13)
  {
    v14 = v18;
    v15 = v19;
    v25 = v22;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45630, &unk_21D024730);
    sub_21CFB555C(&qword_28121B410);
    sub_21D022AF4();
    LOBYTE(v25) = 2;
    sub_21D022AC4();
    v25 = v15;
    v24 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45338, &qword_21D0238B0);
    sub_21CFB54F0(&qword_28121B428);
    sub_21D022AF4();
    v25 = v14;
    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
    sub_21CFB55CC(&qword_28121B3D0);
    sub_21D022AF4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PrivateMLRequest.PromptDebugInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45640, &qword_21D024748);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v27 = sub_21CF9D5E8(MEMORY[0x277D84F90]);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21CFB549C();
  sub_21D022C34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v29) = 0;
    v11 = sub_21D022A84();
    v14 = v13;
    v15 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45630, &unk_21D024730);
    v28 = 1;
    sub_21CFB555C(&qword_27CE45648);
    sub_21D022AB4();
    v25 = v15;
    v26 = v29;
    LOBYTE(v29) = 2;
    v16 = sub_21D022A84();
    v18 = v17;
    v24 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45338, &qword_21D0238B0);
    v28 = 3;
    sub_21CFB54F0(&qword_27CE45650);
    sub_21D022AB4();

    v27 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
    v28 = 4;
    sub_21CFB55CC(&qword_27CE45658);
    sub_21D022AB4();
    (*(v6 + 8))(v9, v5);
    v19 = v29;
    v20 = v26;
    *a2 = v25;
    a2[1] = v14;
    v21 = v24;
    a2[2] = v20;
    a2[3] = v21;
    v22 = v27;
    a2[4] = v18;
    a2[5] = v22;
    a2[6] = v19;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t PrivateMLRequest.RichVariable.components.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PrivateMLRequest.RichVariable.Component.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (!(v3 >> 6))
  {
    sub_21D0229A4();

    v13 = 0x6E656E6F706D6F43;
    MEMORY[0x223D3A110](v1, v2);
    MEMORY[0x223D3A110](0xD000000000000011, 0x800000021D02DC10);
    if (v3)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v3)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

LABEL_26:
    v10 = v7;
    goto LABEL_27;
  }

  if (v3 >> 6 != 1)
  {
    v13 = 0;
    sub_21D0229A4();
    MEMORY[0x223D3A110](0xD00000000000001FLL, 0x800000021D02DBA0);
    [v1 width];
    v8 = sub_21D022B04();
    MEMORY[0x223D3A110](v8);

    MEMORY[0x223D3A110](0x746867696568202CLL, 0xE90000000000003ALL);
    [v1 height];
    v9 = sub_21D022B04();
    MEMORY[0x223D3A110](v9);

    MEMORY[0x223D3A110](0xD000000000000011, 0x800000021D02DBC0);
    [v1 allocationSize];
    v6 = sub_21D022B04();
LABEL_27:
    MEMORY[0x223D3A110](v6, v10);

    return v13;
  }

  v13 = 0;
  sub_21D0229A4();
  result = MEMORY[0x223D3A110](0xD000000000000021, 0x800000021D02DBE0);
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2 || !__OFSUB__(v1[3], v1[2]))
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else if (!v5)
  {
    goto LABEL_18;
  }

  if (!__OFSUB__(HIDWORD(v1), v1))
  {
LABEL_18:
    v11 = sub_21D022B04();
    MEMORY[0x223D3A110](v11);

    MEMORY[0x223D3A110](0x466567616D692020, 0xEE003A74616D726FLL);
    v12 = 1734701162;
    if ((v3 & 0x3F) != 1)
    {
      v12 = 1718183272;
    }

    if ((v3 & 0x3F) != 0)
    {
      v6 = v12;
    }

    else
    {
      v6 = 6778480;
    }

    if ((v3 & 0x3F) != 0)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t PrivateMLRequest.ImageFormat.description.getter()
{
  v1 = 1734701162;
  if (*v0 != 1)
  {
    v1 = 1718183272;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6778480;
  }
}

uint64_t sub_21CFB1764()
{
  v1 = *v0;
  sub_21D022C04();
  MEMORY[0x223D3A6E0](v1);
  return sub_21D022C24();
}

uint64_t sub_21CFB17AC()
{
  v1 = *v0;
  sub_21D022C04();
  MEMORY[0x223D3A6E0](v1);
  return sub_21D022C24();
}

uint64_t sub_21CFB17F0()
{
  v1 = 1734701162;
  if (*v0 != 1)
  {
    v1 = 1718183272;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6778480;
  }
}

uint64_t PrivateMLRequest.AudioFormat.hashValue.getter()
{
  v1 = *v0;
  sub_21D022C04();
  MEMORY[0x223D3A6E0](v1);
  return sub_21D022C24();
}

uint64_t PrivateMLRequest.SamplingStrategy.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v3 = *v0;
    v5[0] = 0;
    v5[1] = 0xE000000000000000;
    sub_21D0229A4();
    MEMORY[0x223D3A110](0xD00000000000001CLL, 0x800000021D02DC30);
    sub_21D022854();
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    sub_21D0229A4();

    strcpy(v5, "topK (count: ");
    HIWORD(v5[1]) = -4864;
    v2 = sub_21D022B04();
    MEMORY[0x223D3A110](v2);

LABEL_5:
    MEMORY[0x223D3A110](41, 0xE100000000000000);
    return v5[0];
  }

  return 0x78616D677261;
}

uint64_t PrivateMLRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21D021A74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PrivateMLRequest.id.setter(uint64_t a1)
{
  v3 = sub_21D021A74();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PrivateMLRequest.featureIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PrivateMLRequest(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PrivateMLRequest.featureIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.modelName.getter()
{
  v1 = (v0 + *(type metadata accessor for PrivateMLRequest(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PrivateMLRequest.modelName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.modelVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for PrivateMLRequest(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PrivateMLRequest.modelVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.modelAdaptorName.getter()
{
  v1 = (v0 + *(type metadata accessor for PrivateMLRequest(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PrivateMLRequest.modelAdaptorName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.modelAdaptorVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for PrivateMLRequest(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PrivateMLRequest.modelAdaptorVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.draftModelName.getter()
{
  v1 = (v0 + *(type metadata accessor for PrivateMLRequest(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PrivateMLRequest.draftModelName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.draftSteps.setter(int a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t PrivateMLRequest.inferenceID.getter()
{
  v1 = (v0 + *(type metadata accessor for PrivateMLRequest(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PrivateMLRequest.inferenceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.numberOfCompletions.setter(int a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t PrivateMLRequest.topP.setter(float a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t PrivateMLRequest.temperature.setter(float a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t PrivateMLRequest.samplingStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PrivateMLRequest(0);
  v4 = (v1 + *(result + 64));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t PrivateMLRequest.samplingStrategy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for PrivateMLRequest(0);
  v5 = v1 + *(result + 64);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t PrivateMLRequest.maxTokens.setter(uint64_t a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  v4 = v1 + *(result + 68);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t PrivateMLRequest.logProbs.setter(int a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t PrivateMLRequest.lengthPenalty.setter(float a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t PrivateMLRequest.frequencyPenalty.setter(float a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t PrivateMLRequest.randomSeed.setter(uint64_t a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t PrivateMLRequest.sessionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 88);
  v4 = sub_21D021A74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrivateMLRequest.sessionID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 88);
  v4 = sub_21D021A74();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PrivateMLRequest.timeoutSecs.setter(double a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t PrivateMLRequest.stopSequences.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLRequest(0) + 96));
}

uint64_t PrivateMLRequest.stopSequences.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 96);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PrivateMLRequest.metaData.getter()
{
  v1 = v0 + *(type metadata accessor for PrivateMLRequest(0) + 100);
  v2 = *v1;
  sub_21CF9EDB8(*v1, *(v1 + 8));
  return v2;
}

uint64_t PrivateMLRequest.metaData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for PrivateMLRequest(0) + 100);
  result = sub_21CF94FCC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t PrivateMLRequest.taskPriority.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 104);
  v4 = sub_21D022774();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrivateMLRequest.taskPriority.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 104);
  v4 = sub_21D022774();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PrivateMLRequest.tokenizerName.getter()
{
  v1 = (v0 + *(type metadata accessor for PrivateMLRequest(0) + 108));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PrivateMLRequest.tokenizerName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 108));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.inputTokenSize.setter(uint64_t a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t PrivateMLRequest.promptTemplateID.getter()
{
  v1 = (v0 + *(type metadata accessor for PrivateMLRequest(0) + 116));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PrivateMLRequest.promptTemplateID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 116));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.promptTemplateVariableBindings.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLRequest(0) + 120));
}

uint64_t PrivateMLRequest.promptTemplateVariableBindings.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 120);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PrivateMLRequest.locale.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLRequest(0) + 124));
}

uint64_t PrivateMLRequest.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 124);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PrivateMLRequest.richVariableBinding.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLRequest(0) + 128));
}

uint64_t PrivateMLRequest.richVariableBinding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 128);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PrivateMLRequest.bundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PrivateMLRequest(0) + 132));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PrivateMLRequest.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 132));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.originalBundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PrivateMLRequest(0) + 136));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PrivateMLRequest.originalBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 136));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.tmlConstraints.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PrivateMLRequest(0) + 140);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_21CFB5638(v4, v5, v6);
}

uint64_t PrivateMLRequest.tmlConstraints.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for PrivateMLRequest(0) + 140);
  result = sub_21CF9F674(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t PrivateMLRequest.realUserIdentifier.setter(uint64_t a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  v4 = v1 + *(result + 144);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t PrivateMLRequest.promptDebugInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PrivateMLRequest(0) + 148));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;

  return sub_21CFB5664(v4, v5, v6);
}

__n128 PrivateMLRequest.promptDebugInfo.setter(uint64_t a1)
{
  v11 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = (v1 + *(type metadata accessor for PrivateMLRequest(0) + 148));
  v5 = v4[3];
  v6 = v4[4];
  v7 = v4[5];
  v8 = v4[6];
  sub_21CFB56D4(*v4, v4[1], v4[2]);
  v9 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v9;
  result = v11;
  *(v4 + 2) = v11;
  v4[6] = v3;
  return result;
}

uint64_t PrivateMLRequest.init(id:modelName:featureIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a2;
  v51 = a3;
  v10 = sub_21D0224A4();
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PrivateMLRequest(0);
  v16 = (a6 + v15[7]);
  *v16 = 49;
  v16[1] = 0xE100000000000000;
  v17 = (a6 + v15[8]);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (a6 + v15[9]);
  *v18 = 49;
  v18[1] = 0xE100000000000000;
  v19 = (a6 + v15[10]);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  *(a6 + v15[11]) = 0;
  v20 = (a6 + v15[12]);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  *(a6 + v15[13]) = 1;
  *(a6 + v15[14]) = 0;
  *(a6 + v15[15]) = 1065353216;
  v21 = a6 + v15[16];
  *v21 = 0;
  *(v21 + 8) = 2;
  v22 = a6 + v15[17];
  *v22 = 0;
  *(v22 + 4) = 1;
  *(a6 + v15[18]) = 0;
  *(a6 + v15[19]) = 0;
  *(a6 + v15[20]) = 0;
  *(a6 + v15[21]) = 0;
  v23 = a6 + v15[22];
  sub_21D021A64();
  *(a6 + v15[23]) = 0;
  *(a6 + v15[24]) = MEMORY[0x277D84FA0];
  *(a6 + v15[25]) = xmmword_21D024230;
  v24 = a6 + v15[26];
  sub_21D022754();
  v25 = (a6 + v15[27]);
  *v25 = 0xD000000000000032;
  v25[1] = 0x800000021D02DA90;
  *(a6 + v15[28]) = 0;
  v26 = (a6 + v15[29]);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = v15[30];
  v28 = MEMORY[0x277D84F90];
  *(a6 + v27) = sub_21CF9D5E8(MEMORY[0x277D84F90]);
  *(a6 + v15[31]) = v28;
  v29 = v15[32];
  *(a6 + v29) = sub_21CF9DB64(v28);
  v30 = (a6 + v15[33]);
  *v30 = 0;
  v30[1] = 0;
  v31 = (a6 + v15[34]);
  *v31 = 0;
  v31[1] = 0;
  v32 = a6 + v15[35];
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = -1;
  v33 = a6 + v15[36];
  *v33 = 0;
  *(v33 + 4) = 1;
  v34 = a6 + v15[37];
  v35 = sub_21D021A74();
  *v34 = 0u;
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0u;
  *(v34 + 48) = 0;
  v36 = *(v35 - 8);
  v37 = *(v36 + 16);
  v52 = a1;
  v37(a6, a1, v35);
  v38 = (a6 + v15[6]);
  v39 = v51;
  *v38 = v50;
  v38[1] = v39;
  if (!a4 && a5 == 0xE000000000000000 || (sub_21D022B24() & 1) != 0)
  {
    v40 = v48;
    v51 = a4;
    v41 = a5;
    sub_21D022494();
    v42 = sub_21D022484();
    v43 = sub_21D0228C4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_21CF72000, v42, v43, "feature identifier is not provided", v44, 2u);
      MEMORY[0x223D3ADE0](v44, -1, -1);
    }

    (*(v36 + 8))(v52, v35);
    result = (*(v49 + 8))(v14, v40);
    a5 = v41;
    a4 = v51;
  }

  else
  {
    result = (*(v36 + 8))(v52, v35);
  }

  v46 = (a6 + v15[5]);
  *v46 = a4;
  v46[1] = a5;
  return result;
}

unint64_t PrivateMLRequest.PrivateMLRequestError.message.getter()
{
  v1 = *v0;
  v2 = *(v0 + 48);
  v3 = v2 >> 5;
  if (v2 >> 5 <= 2)
  {
    if (v3 <= 1)
    {
      v4 = v0[1];

      return v1;
    }

    sub_21D0229A4();
    MEMORY[0x223D3A110](0xD00000000000003BLL, 0x800000021D02DD50);
    v9 = sub_21D022B04();
    MEMORY[0x223D3A110](v9);

    MEMORY[0x223D3A110](0xD000000000000012, 0x800000021D02DCD0);
LABEL_15:
    v10 = sub_21D022B04();
    MEMORY[0x223D3A110](v10);

    return 0;
  }

  v5 = v0[3];
  if (v3 == 3)
  {
    v1 = v0[3];

    return v1;
  }

  if (v3 == 4)
  {
    sub_21D0229A4();
    MEMORY[0x223D3A110](0xD00000000000002ELL, 0x800000021D02DC70);
    if (v1)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v1)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    MEMORY[0x223D3A110](v6, v7);

    MEMORY[0x223D3A110](0xD000000000000025, 0x800000021D02DCA0);
    v8 = sub_21D022B04();
    MEMORY[0x223D3A110](v8);

    MEMORY[0x223D3A110](0xD000000000000012, 0x800000021D02DCD0);
    goto LABEL_15;
  }

  v12 = v0[2] | v0[1];
  v13 = v0[4] | v0[5];
  if (v2 == 160 && !(v12 | v1 | v5 | v13))
  {
    return 0xD000000000000013;
  }

  if (v2 == 160 && v1 == 1 && !(v12 | v5 | v13))
  {
    return 0xD000000000000014;
  }

  return 0xD000000000000010;
}

uint64_t sub_21CFB3BD0(uint64_t a1)
{
  v2 = sub_21CFB5914();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21CFB3C0C(uint64_t a1)
{
  v2 = sub_21CFB5914();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t _s15PrivateMLClient0A9MLRequestV0aC5ErrorO4codeSivg_0()
{
  v1 = v0[4];
  v2 = *(v0 + 48);
  v3 = v2 >> 5;
  if (v2 >> 5 > 2)
  {
    if (v3 == 3)
    {
      if (v2)
      {
        return 6;
      }

      else
      {
        return v0[5];
      }
    }

    else if (v3 == 4)
    {
      return 7;
    }

    else
    {
      v5 = *v0;
      v6 = v0[3];
      v7 = v0[5] | v1;
      v8 = v0[2] | v0[1];
      if (v2 != 160 || v7 | v5 | v6 | v8)
      {
        if (v7 | v6 | v8)
        {
          v9 = 0;
        }

        else
        {
          v9 = v5 == 1;
        }

        if (v9 && v2 == 160)
        {
          return 5;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      v1 = 2;
    }

    if (v3)
    {
      return v1;
    }

    else
    {
      return 1;
    }
  }
}

unint64_t sub_21CFB3CF8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  return PrivateMLRequest.PrivateMLRequestError.message.getter();
}

unint64_t PrivateMLRequest.PrivateMLRequestError.descriptionWithoutUnderlying.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  return PrivateMLRequest.PrivateMLRequestError.message.getter();
}

uint64_t sub_21CFB3D8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = v3 >> 5;
  v5 = MEMORY[0x277CEDEF0];
  if (v3 >> 5 > 2)
  {
    if (v4 != 3)
    {
      if (v4 != 4 && v3 == 160)
      {
        v7 = *(v1 + 32) | *(v1 + 40) | *v1 | *(v1 + 24) | *(v1 + 16) | *(v1 + 8);
      }

      v5 = MEMORY[0x277CEDED0];
    }
  }

  else
  {
    v6 = MEMORY[0x277CEDEB8];
    if (v4 != 1)
    {
      v6 = MEMORY[0x277CEDED0];
    }

    if (v4)
    {
      v5 = v6;
    }
  }

  v8 = *v5;
  v9 = sub_21D022064();
  v10 = *(*(v9 - 8) + 104);

  return v10(a1, v8, v9);
}

uint64_t PrivateMLRequest.PrivateMLRequestError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = v3 >> 5;
  v5 = MEMORY[0x277CEDEF0];
  if (v3 >> 5 > 2)
  {
    if (v4 != 3)
    {
      if (v4 != 4 && v3 == 160)
      {
        v7 = *(v1 + 32) | *(v1 + 40) | *v1 | *(v1 + 24) | *(v1 + 16) | *(v1 + 8);
      }

      v5 = MEMORY[0x277CEDED0];
    }
  }

  else
  {
    v6 = MEMORY[0x277CEDEB8];
    if (v4 != 1)
    {
      v6 = MEMORY[0x277CEDED0];
    }

    if (v4)
    {
      v5 = v6;
    }
  }

  v8 = *v5;
  v9 = sub_21D022064();
  v10 = *(*(v9 - 8) + 104);

  return v10(a1, v8, v9);
}

unint64_t sub_21CFB3F64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48) >> 5;
  if (v2 == 3)
  {
    v4 = *(v0 + 8);
    v3 = *(v0 + 16);
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 16);
LABEL_5:
    MEMORY[0x223D3A110](v4, v3);
    return 0xD000000000000016;
  }

  return 0xD000000000000015;
}

unint64_t PrivateMLRequest.PrivateMLRequestError.domain.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48) >> 5;
  if (v2 == 3)
  {
    v4 = *(v0 + 8);
    v3 = *(v0 + 16);
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 16);
LABEL_5:
    MEMORY[0x223D3A110](v4, v3);
    return 0xD000000000000016;
  }

  return 0xD000000000000015;
}

uint64_t sub_21CFB40BC()
{
  v1 = *v0;
  v2 = *(v0 + 48) >> 5;
  if (v2 == 3)
  {
    v3 = *v0;
  }

  else
  {
    v3 = 0;
  }

  if (v2 != 4)
  {
    LOBYTE(v1) = v3;
  }

  return v1 & 1;
}

uint64_t PrivateMLRequest.PrivateMLRequestError.requestFeedback.getter()
{
  v1 = *v0;
  v2 = *(v0 + 48) >> 5;
  if (v2 == 3)
  {
    v3 = *v0;
  }

  else
  {
    v3 = 0;
  }

  if (v2 != 4)
  {
    LOBYTE(v1) = v3;
  }

  return v1 & 1;
}

uint64_t sub_21CFB4104(uint64_t a1)
{
  v2 = sub_21CFB58BC();

  return MEMORY[0x2821401D0](a1, v2);
}

void sub_21CFB4140()
{
  sub_21CFB58BC();

  JUMPOUT(0x223D39B70);
}

void sub_21CFB417C()
{
  sub_21CFB58BC();

  JUMPOUT(0x223D39B90);
}

uint64_t PrivateMLRequest.description.getter()
{
  v1 = v0;
  sub_21D0229A4();
  MEMORY[0x223D3A110](540697705, 0xE400000000000000);
  sub_21D021A74();
  sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0]);
  v2 = sub_21D022B04();
  MEMORY[0x223D3A110](v2);

  MEMORY[0x223D3A110](0x614E6C65646F6D20, 0xEC000000203A656DLL);
  v3 = type metadata accessor for PrivateMLRequest(0);
  MEMORY[0x223D3A110](*(v1 + v3[6]), *(v1 + v3[6] + 8));
  MEMORY[0x223D3A110](0x65566C65646F6D20, 0xEF203A6E6F697372);
  MEMORY[0x223D3A110](*(v1 + v3[7]), *(v1 + v3[7] + 8));
  MEMORY[0x223D3A110](0xD000000000000013, 0x800000021D02DDB0);
  MEMORY[0x223D3A110](*(v1 + v3[8]), *(v1 + v3[8] + 8));
  MEMORY[0x223D3A110](0xD000000000000016, 0x800000021D02DDD0);
  MEMORY[0x223D3A110](*(v1 + v3[9]), *(v1 + v3[9] + 8));
  MEMORY[0x223D3A110](32, 0xE100000000000000);
  MEMORY[0x223D3A110](*(v1 + v3[10]), *(v1 + v3[10] + 8));
  MEMORY[0x223D3A110](0x7453746661726420, 0xED0000203A737065);
  v26 = *(v0 + v3[11]);
  v4 = sub_21D022B04();
  MEMORY[0x223D3A110](v4);

  MEMORY[0x223D3A110](0x6E657265666E6920, 0xEE00203A44496563);
  MEMORY[0x223D3A110](*(v1 + v3[12]), *(v1 + v3[12] + 8));
  MEMORY[0x223D3A110](0xD000000000000016, 0x800000021D02DDF0);
  v27 = *(v0 + v3[13]);
  v5 = sub_21D022B04();
  MEMORY[0x223D3A110](v5);

  MEMORY[0x223D3A110](0x203A50706F7420, 0xE700000000000000);
  v6 = *(v0 + v3[14]);
  sub_21D022864();
  MEMORY[0x223D3A110](0x617265706D657420, 0xEE00203A65727574);
  v7 = *(v0 + v3[15]);
  sub_21D022864();
  MEMORY[0x223D3A110](0xD000000000000013, 0x800000021D02DE10);
  v8 = (v0 + v3[16]);
  v28 = *v8;
  v30 = *(v8 + 8);
  v9 = PrivateMLRequest.SamplingStrategy.description.getter();
  MEMORY[0x223D3A110](v9);

  MEMORY[0x223D3A110](0x656B6F5478616D20, 0xEC000000203A736ELL);
  v10 = v0 + v3[17];
  LODWORD(v28) = *v10;
  BYTE4(v28) = *(v10 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45660, &qword_21D02CF90);
  v11 = sub_21D0225D4();
  MEMORY[0x223D3A110](v11);

  MEMORY[0x223D3A110](0x626F7250676F6C20, 0xEB00000000203A73);
  LODWORD(v28) = *(v0 + v3[18]);
  v12 = sub_21D022B04();
  MEMORY[0x223D3A110](v12);

  MEMORY[0x223D3A110](0xD000000000000010, 0x800000021D02DE30);
  v13 = *(v0 + v3[19]);
  sub_21D022864();
  MEMORY[0x223D3A110](0xD000000000000013, 0x800000021D02DE50);
  v14 = *(v0 + v3[20]);
  sub_21D022864();
  MEMORY[0x223D3A110](0x536D6F646E617220, 0xED0000203A646565);
  v29 = *(v0 + v3[21]);
  v15 = sub_21D022B04();
  MEMORY[0x223D3A110](v15);

  MEMORY[0x223D3A110](0x6E6F697373657320, 0xEC000000203A4449);
  v16 = v0 + v3[22];
  v17 = sub_21D022B04();
  MEMORY[0x223D3A110](v17);

  MEMORY[0x223D3A110](0x74756F656D697420, 0xEE00203A73636553);
  v18 = *(v1 + v3[23]);
  sub_21D022854();
  MEMORY[0x223D3A110](0xD000000000000010, 0x800000021D02DE70);
  v19 = *(v1 + v3[24]);
  v20 = sub_21D022874();
  MEMORY[0x223D3A110](v20);

  MEMORY[0x223D3A110](0x6972506B73617420, 0xEF203A797469726FLL);
  v21 = v3[26];
  sub_21D022774();
  sub_21CFB5744(qword_28121B438, MEMORY[0x277D85720]);
  v22 = sub_21D022B04();
  MEMORY[0x223D3A110](v22);

  MEMORY[0x223D3A110](0xD000000000000010, 0x800000021D02DE90);
  MEMORY[0x223D3A110](*(v1 + v3[27]), *(v1 + v3[27] + 8));
  MEMORY[0x223D3A110](0xD000000000000013, 0x800000021D02DEB0);
  MEMORY[0x223D3A110](*(v1 + v3[29]), *(v1 + v3[29] + 8));
  MEMORY[0x223D3A110](0xD000000000000021, 0x800000021D02DED0);
  v23 = *(v1 + v3[30]);
  v24 = sub_21D022534();
  MEMORY[0x223D3A110](v24);

  return 0;
}

size_t sub_21CFB493C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE456C8, &qword_21D0252A8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45258, &unk_21D023570) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45258, &unk_21D023570) - 8);
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

void *sub_21CFB4B2C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE456B8, &unk_21D025290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45460, &unk_21D023D58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21CFB4D00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453C0, &qword_21D024700);
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

char *sub_21CFB4E0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE456C0, &qword_21D0252A0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21CFB4F40(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_21CFB513C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CFB519C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_21CFB5218(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_21D023DD0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  return result;
}

uint64_t sub_21CFB52AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CFB532C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21CFB537C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CFB53E4()
{
  result = qword_28121B400;
  if (!qword_28121B400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45620, &qword_21D024720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121B400);
  }

  return result;
}

unint64_t sub_21CFB5448()
{
  result = qword_28121DC08;
  if (!qword_28121DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121DC08);
  }

  return result;
}

unint64_t sub_21CFB549C()
{
  result = qword_28121DC18;
  if (!qword_28121DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121DC18);
  }

  return result;
}

uint64_t sub_21CFB54F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45338, &qword_21D0238B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CFB555C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45630, &unk_21D024730);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CFB55CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45638, &qword_21D024740);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CFB5638(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_21CFB564C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_21CFB564C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_21CFB5664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21CFB56D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21CFB5744(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21CFB5790()
{
  result = qword_27CE45668;
  if (!qword_27CE45668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45668);
  }

  return result;
}

unint64_t sub_21CFB57E8()
{
  result = qword_27CE45670;
  if (!qword_27CE45670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45670);
  }

  return result;
}

unint64_t sub_21CFB5840()
{
  result = qword_27CE45678;
  if (!qword_27CE45678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45678);
  }

  return result;
}

unint64_t sub_21CFB5894(uint64_t a1)
{
  result = sub_21CFB58BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21CFB58BC()
{
  result = qword_27CE45680;
  if (!qword_27CE45680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45680);
  }

  return result;
}

unint64_t sub_21CFB5914()
{
  result = qword_27CE45688;
  if (!qword_27CE45688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45688);
  }

  return result;
}

unint64_t sub_21CFB596C()
{
  result = qword_27CE45690;
  if (!qword_27CE45690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45690);
  }

  return result;
}

unint64_t sub_21CFB59C4()
{
  result = qword_27CE45698;
  if (!qword_27CE45698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45698);
  }

  return result;
}

void sub_21CFB5A40()
{
  sub_21D021A74();
  if (v0 <= 0x3F)
  {
    sub_21CFB5DD0(319, &qword_28121B0F0, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21CFB5D20();
      if (v2 <= 0x3F)
      {
        sub_21CFB5DD0(319, &qword_28121E0A0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21D022774();
          if (v4 <= 0x3F)
          {
            sub_21CFB5D78(319, &qword_28121B430);
            if (v5 <= 0x3F)
            {
              sub_21CFB5DD0(319, &qword_28121B3D8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_21CFB5D78(319, &qword_28121B418);
                if (v7 <= 0x3F)
                {
                  sub_21CFB5DD0(319, &qword_28121B408, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_21CFB5DD0(319, qword_28121D878, &type metadata for PrivateMLClientModelOptions.TMLConstraints, MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      sub_21CFB5DD0(319, &qword_28121DC00, &type metadata for PrivateMLRequest.PromptDebugInfo, MEMORY[0x277D83D88]);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21CFB5D20()
{
  if (!qword_28121B3A0)
  {
    v0 = sub_21D022884();
    if (!v1)
    {
      atomic_store(v0, &qword_28121B3A0);
    }
  }
}

void sub_21CFB5D78(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21D022544();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21CFB5DD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21CFB5E48()
{
  sub_21CFB5ECC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PrivateMLRequest(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CFB5ECC()
{
  if (!qword_27CE45388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45268, &qword_21D023D50);
    v0 = sub_21D022844();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE45388);
    }
  }
}

uint64_t getEnumTagSinglePayload for PrivateMLRequest.Response.CompletionReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateMLRequest.Response.CompletionReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_21CFB60E0()
{
  sub_21CFB6168();
  if (v0 <= 0x3F)
  {
    sub_21CFB620C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21CFB6168()
{
  if (!qword_28121DBF8)
  {
    type metadata accessor for PrivateMLRequest(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45610, &unk_21D024710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE456A0, &qword_21D024D30);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28121DBF8);
    }
  }
}

ValueMetadata *sub_21CFB620C()
{
  result = qword_28121DBF0;
  if (!qword_28121DBF0)
  {
    result = &type metadata for PrivateMLRequest.Response.CompletionReason;
    atomic_store(&type metadata for PrivateMLRequest.Response.CompletionReason, &qword_28121DBF0);
  }

  return result;
}

void sub_21CFB6264()
{
  sub_21D0224A4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PrivateMLRequest(319);
    if (v1 <= 0x3F)
    {
      sub_21CFB6318();
      if (v2 <= 0x3F)
      {
        sub_21CFB637C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CFB6318()
{
  if (!qword_27CE456A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE455C8, &unk_21D0246A0);
    v0 = sub_21D022924();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE456A8);
    }
  }
}

unint64_t sub_21CFB637C()
{
  result = qword_28121D820;
  if (!qword_28121D820)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28121D820);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21CFB63FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CFB6444(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_21CFB64A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_21CFB64E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CFB6540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 17))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21CFB6590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateMLRequest.MediaMetadata(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for PrivateMLRequest.MediaMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CFB6814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 37))
  {
    return (*a1 + 127);
  }

  v3 = ((*(a1 + 36) >> 7) & 0xFFFFFF81 | (2 * ((*(a1 + 36) >> 1) & 0x3F))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21CFB6868(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0;
      *(result + 36) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_21CFB68CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = a1 + 32;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x7F;
  return result;
}

uint64_t sub_21CFB68E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = a1 + 32;
  v4 = (v3 | (*(result + 4) << 32)) & 0x1FFFFFFFFLL | (a2 << 39);
  *result = v3;
  *(result + 4) = BYTE4(v4);
  return result;
}

uint64_t get_enum_tag_for_layout_string_15PrivateMLClient0A9MLRequestV0aC5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21CFB6964(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 49))
  {
    return (*a1 + 123);
  }

  v3 = ((*(a1 + 48) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 48) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21CFB69B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_21CFB6A34(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 48) = *(result + 48) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = -96;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateMLRequest.PromptDebugInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateMLRequest.PromptDebugInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}