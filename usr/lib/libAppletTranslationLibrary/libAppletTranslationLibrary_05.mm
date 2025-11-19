void *sub_22EF9E594()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E750, &qword_22EFBD268);
  v2 = *v0;
  v3 = sub_22EFB669C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_22EF9E6EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E740, &qword_22EFBD258);
  v2 = *v0;
  v3 = sub_22EFB669C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_22EF9E82C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6C0, &qword_22EFBD1D8);
  v2 = *v0;
  v3 = sub_22EFB669C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_22EF70B68(v18, *(&v18 + 1));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_22EF9E988()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E758, &qword_22EFBD270);
  v2 = *v0;
  v3 = sub_22EFB669C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
        sub_22EF70B68(v19, v20);
        result = sub_22EF70B68(v21, v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_22EF9EB0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6D8, &qword_22EFBD1E8);
  v25 = v0;
  v1 = *v0;
  v2 = sub_22EFB669C();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 56);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 56 + 8 * v5)
    {
      result = memmove(result, (v1 + 56), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 56);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = 56 * (v13 | (v7 << 6));
        v17 = *(v1 + 48) + v16;
        v18 = *v17;
        v19 = *(v17 + 24);
        v20 = *(v17 + 32);
        v21 = *(v17 + 40);
        v22 = *(v17 + 48);
        v23 = *(v3 + 48) + v16;
        v24 = *(v17 + 8);
        *v23 = *v17;
        *(v23 + 8) = v24;
        *(v23 + 24) = v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        *(v23 + 48) = v22;
        sub_22EF70B68(v18, v24);
        sub_22EF70B68(v19, v20);
        result = sub_22EF70B68(v21, v22);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 56 + 8 * v7);
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

    *v25 = v3;
  }

  return result;
}

uint64_t sub_22EF9ECB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E750, &qword_22EFBD268);
  result = sub_22EFB66AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_22EFB68DC();
      if (v19)
      {
        MEMORY[0x2318FB660](0);

        sub_22EFB64CC();
      }

      else
      {
        MEMORY[0x2318FB660](1);
      }

      result = sub_22EFB691C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_31;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22EF9EF0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E740, &qword_22EFBD258);
  result = sub_22EFB66AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      result = MEMORY[0x2318FB640](*(v6 + 40), v17, 1);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_22EF9F100(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6C0, &qword_22EFBD1D8);
  result = sub_22EFB66AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_22EFB68DC();
      sub_22EF70B68(v19, v20);
      sub_22EFB61EC();
      result = sub_22EFB691C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22EF9F33C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E758, &qword_22EFBD270);
  result = sub_22EFB66AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v35 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      sub_22EFB68DC();
      sub_22EF70B68(v20, v21);
      sub_22EF70B68(v22, v23);
      sub_22EFB61EC();
      sub_22EFB61EC();
      MEMORY[0x2318FB660](v24);
      result = sub_22EFB691C();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v23;
      *(v15 + 32) = v24;
      ++*(v6 + 16);
      v3 = v34;
      v11 = v35;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22EF9F5DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6D8, &qword_22EFBD1E8);
  result = sub_22EFB66AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v34 = v1;
    v35 = (v9 + 63) >> 6;
    v12 = result + 56;
    v36 = v3 + 56;
    v37 = v3;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
LABEL_17:
      v18 = (*(v3 + 48) + 56 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v22 = v18[2];
      v21 = v18[3];
      v24 = v18[4];
      v23 = v18[5];
      v25 = v18[6];
      v26 = *(v6 + 40);
      sub_22EFB68DC();
      sub_22EF70B68(v19, v20);
      sub_22EF70B68(v21, v24);
      sub_22EF70B68(v23, v25);
      sub_22EFB61EC();
      MEMORY[0x2318FB660](v22);
      result = sub_22EFB691C();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 56 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v22;
      v14[3] = v21;
      v11 = v38;
      v14[4] = v24;
      v14[5] = v23;
      v14[6] = v25;
      ++*(v6 + 16);
      v8 = v36;
      v3 = v37;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v35)
      {

        v2 = v34;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22EF9F87C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_22EFB617C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_22EF9F9B4(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EF9F9B4(uint64_t a1, uint64_t a2)
{
  result = sub_22EFB603C();
  if (!result || (result = sub_22EFB605C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22EFB604C();
      return sub_22EFB617C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22EF9FA48@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  if (result)
  {
    v14 = result;
    v15 = a2 - result - a3;
    if (__OFSUB__(a2 - result, a3))
    {
      __break(1u);
    }

    else
    {
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E770, &unk_22EFBD290) + 48);
      swift_unknownObjectRetain();
      result = sub_22EFAA814(a8, (a3 + v14), v15, a4, a5, a6, a7);
      *(a8 + v16) = result;
    }
  }

  else
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E770, &unk_22EFBD290) + 48);
    *a8 = a4;
    a8[1] = a5;
    a8[2] = a6;
    a8[3] = a7;
    a8[4] = a6;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E778, &unk_22EFBD450) + 44);
    v19 = sub_22EFB622C();
    (*(*(v19 - 8) + 56))(a8 + v18, 1, 1, v19);
    *(a8 + v17) = 0;
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_22EF9FB94(unint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = sub_22EFA06D8(*a1, a2);
  v8 = v6;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_22EFB67CC();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_22EFB67CC())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2318FB480](v9, v5);
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v11 = *(v5 + 8 * v9 + 32);

LABEL_16:
    v12 = *a2;
    v13 = *(v11 + 32);
    v14 = *(v11 + 40);

    LOBYTE(v14) = sub_22EF87D54(v13, v14, v12);

    if ((v14 & 1) == 0)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x2318FB480](v8, v5);
          v16 = MEMORY[0x2318FB480](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v17)
          {
            goto LABEL_46;
          }

          if (v9 >= v17)
          {
            goto LABEL_47;
          }

          v15 = *(v5 + 32 + 8 * v8);
          v16 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_22EFA0D3C(v5);
          v18 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v5 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v16;

        if ((v5 & 0x8000000000000000) != 0 || v18)
        {
          v5 = sub_22EFA0D3C(v5);
          v19 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_38:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v9 >= *(v19 + 16))
        {
          goto LABEL_44;
        }

        v21 = v19 + 8 * v9;
        v22 = *(v21 + 32);
        *(v21 + 32) = v15;

        *a1 = v5;
      }

LABEL_8:
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_43;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_22EFB67CC();
}

uint64_t sub_22EF9FE04(unint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  result = sub_22EFA07F0(*a1, a2);
  v9 = v3;
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_22EFB67CC();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = result;
  v26 = a1;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
LABEL_55:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_22EFB67CC())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2318FB480](v10, v6);
      v12 = result;
      v13 = *a2;
      if (!*a2)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v12 = *(v6 + 8 * v10 + 32);

      v13 = *a2;
      if (!*a2)
      {
        goto LABEL_55;
      }
    }

    v14 = *(v12 + 24);
    v27[0] = *(v12 + 16);
    v27[1] = v14;
    MEMORY[0x28223BE20](result);
    v25[2] = v27;

    v15 = v9;
    v16 = sub_22EF837E0(sub_22EFA8440, v25, v13);
    v28 = v15;

    if (v16)
    {
      break;
    }

    v9 = v28;
LABEL_9:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_47;
    }
  }

  if (v2 == v10)
  {
    v9 = v28;
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_48;
    }

    goto LABEL_9;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x2318FB480](v2, v6);
    v18 = MEMORY[0x2318FB480](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v19)
    {
      goto LABEL_51;
    }

    if (v10 >= v19)
    {
      goto LABEL_52;
    }

    v17 = *(v6 + 32 + 8 * v2);
    v18 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_22EFA0D3C(v6);
    v20 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v20)
  {
    v9 = v28;
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_35;
  }

  v6 = sub_22EFA0D3C(v6);
  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  v9 = v28;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_35:
    if (v10 >= *(v21 + 16))
    {
      goto LABEL_49;
    }

    v23 = v21 + 8 * v10;
    v24 = *(v23 + 32);
    *(v23 + 32) = v17;

    *v26 = v6;
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_48;
    }

    goto LABEL_9;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return sub_22EFB67CC();
}

uint64_t sub_22EFA011C(unint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  v6 = *a1 >> 62;
  if (v6)
  {
    goto LABEL_69;
  }

  v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      goto LABEL_58;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2318FB480](v8, v4);
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
        goto LABEL_65;
      }

      v10 = *(v4 + 8 * v8 + 32);
    }

    if (*(v11 + 162) != 1 || (*(v11 + 104) & 1) != 0)
    {
      break;
    }

    if (a2)
    {
    }

    else
    {
      v12 = *(v11 + 80);

      if (v12 == 1)
      {
        goto LABEL_17;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_66;
    }
  }

LABEL_17:
  v13 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  while (1)
  {
    if (v4 >> 62)
    {
      if (v13 == sub_22EFB67CC())
      {
        return v8;
      }
    }

    else if (v13 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    v5 = v4 & 0xC000000000000001;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x2318FB480](v13, v4);
    }

    else
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        v7 = sub_22EFB67CC();
        goto LABEL_3;
      }

      if (v13 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v14 = *(v4 + 8 * v13 + 32);
    }

    if (*(v15 + 162) != 1 || (*(v15 + 104) & 1) != 0)
    {
LABEL_20:

      goto LABEL_21;
    }

    if (a2)
    {
      break;
    }

    v17 = *(v15 + 80);

    if (v17 != 1)
    {
      goto LABEL_33;
    }

LABEL_21:
    v9 = __OFADD__(v13++, 1);
    if (v9)
    {
      goto LABEL_64;
    }
  }

LABEL_33:
  if (v8 == v13)
  {
    goto LABEL_50;
  }

  if (v5)
  {
    v5 = MEMORY[0x2318FB480](v8, v4);
    v6 = MEMORY[0x2318FB480](v13, v4);
  }

  else
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      return result;
    }

    v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= v18)
    {
      goto LABEL_71;
    }

    if (v13 >= v18)
    {
      goto LABEL_72;
    }

    v5 = *(v4 + 32 + 8 * v8);
    v6 = *(v4 + 32 + 8 * v13);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = sub_22EFA0D3C(v4);
    v19 = (v4 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v4 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
  *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v6;

  if ((v4 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_57;
    }

LABEL_48:
    if (v13 >= *(v20 + 16))
    {
      goto LABEL_68;
    }

    v22 = v20 + 8 * v13;
    v23 = *(v22 + 32);
    *(v22 + 32) = v5;

    *a1 = v4;
LABEL_50:
    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_67;
    }

    goto LABEL_21;
  }

  v4 = sub_22EFA0D3C(v4);
  v20 = v4 & 0xFFFFFFFFFFFFFF8;
  if ((v13 & 0x8000000000000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  if (!v6)
  {
    return *(v5 + 16);
  }

  return sub_22EFB67CC();
}

uint64_t sub_22EFA0404(unint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  v6 = *a1 >> 62;
  if (v6)
  {
    goto LABEL_70;
  }

  v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = 0;
  while (v7 != v8)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2318FB480](v8, v4);
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
        goto LABEL_63;
      }

      v10 = *(v4 + 8 * v8 + 32);
    }

    if (*(v11 + 104) == 1)
    {

LABEL_19:
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      while (2)
      {
        if (v4 >> 62)
        {
          if (v14 == sub_22EFB67CC())
          {
            return v8;
          }
        }

        else if (v14 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v8;
        }

        v5 = v4 & 0xC000000000000001;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x2318FB480](v14, v4);
        }

        else
        {
          if ((v14 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            v7 = sub_22EFB67CC();
            goto LABEL_3;
          }

          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v15 = *(v4 + 8 * v14 + 32);
        }

        if (*(v16 + 104) == 1)
        {
LABEL_22:
        }

        else
        {
          if (a2)
          {

            goto LABEL_34;
          }

          v17 = *(v16 + 80);

          if (v17 != 1)
          {
LABEL_34:
            if (v8 != v14)
            {
              if (v5)
              {
                v5 = MEMORY[0x2318FB480](v8, v4);
                v6 = MEMORY[0x2318FB480](v14, v4);
              }

              else
              {
                if ((v8 & 0x8000000000000000) != 0)
                {
                  goto LABEL_67;
                }

                v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v8 >= v18)
                {
                  goto LABEL_68;
                }

                if (v14 >= v18)
                {
                  goto LABEL_69;
                }

                v5 = *(v4 + 32 + 8 * v8);
                v6 = *(v4 + 32 + 8 * v14);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
              {
                v4 = sub_22EFA0D3C(v4);
                v19 = (v4 >> 62) & 1;
              }

              else
              {
                LODWORD(v19) = 0;
              }

              v20 = v4 & 0xFFFFFFFFFFFFFF8;
              v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
              *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v6;

              if ((v4 & 0x8000000000000000) != 0 || v19)
              {
                v4 = sub_22EFA0D3C(v4);
                v20 = v4 & 0xFFFFFFFFFFFFFF8;
                if ((v14 & 0x8000000000000000) != 0)
                {
LABEL_58:
                  __break(1u);
                  return sub_22EFB67CC();
                }
              }

              else if ((v14 & 0x8000000000000000) != 0)
              {
                goto LABEL_58;
              }

              if (v14 >= *(v20 + 16))
              {
                goto LABEL_66;
              }

              v22 = v20 + 8 * v14;
              v23 = *(v22 + 32);
              *(v22 + 32) = v5;

              *a1 = v4;
            }

            v9 = __OFADD__(v8++, 1);
            if (v9)
            {
              goto LABEL_65;
            }
          }
        }

        v9 = __OFADD__(v14++, 1);
        if (v9)
        {
          goto LABEL_62;
        }

        continue;
      }
    }

    if (a2)
    {
    }

    else
    {
      v12 = *(v11 + 80);

      if (v12 == 1)
      {
        goto LABEL_19;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_64;
    }
  }

  if (v6)
  {
    return sub_22EFB67CC();
  }

  return *(v5 + 16);
}

unint64_t sub_22EFA06D8(unint64_t a1, uint64_t *a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_22EFB67CC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2318FB480](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = *a2;
    v9 = *(v7 + 32);
    v10 = *(v7 + 40);

    LOBYTE(v10) = sub_22EF87D54(v9, v10, v8);

    if (v10)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_22EFA07F0(unint64_t a1, uint64_t *a2)
{
  v14 = a2;
  if (a1 >> 62)
  {
LABEL_18:
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_22EFB67CC();
  }

  else
  {
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2318FB480](v4, a1);
      v5 = result;
    }

    else
    {
      if (v4 >= *(v12 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v7 = *v14;
    if (!*v14)
    {
      break;
    }

    v8 = *(v5 + 24);
    v13[0] = *(v5 + 16);
    v13[1] = v8;
    MEMORY[0x28223BE20](result);
    v11[2] = v13;

    v9 = sub_22EF837E0(sub_22EFA8440, v11, v7);

    if ((v9 & 1) == 0)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EFA098C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_22EFA0A40(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_22EFB67CC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_22EF943F4(v3, 0);
  sub_22EFA0AD4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22EFA0AD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22EFB67CC();
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
      result = sub_22EFB67CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22EF70E20(&qword_27DA9E6D0, &qword_27DA9E6C8, &qword_22EFBD1E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6C8, &qword_22EFBD1E0);
            v9 = sub_22EFA0C78(v13, i, a3);
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
        type metadata accessor for ExpressMode.PassConfig();
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

uint64_t (*sub_22EFA0C78(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2318FB480](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_22EFA0CF8;
  }

  __break(1u);
  return result;
}

uint64_t sub_22EFA0D3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22EFB67CC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_22EFB671C();
}

unint64_t sub_22EFA0DA0(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_22EFA0DF0(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_22EFA0E5C()
{
  result = qword_281477D98;
  if (!qword_281477D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281477D98);
  }

  return result;
}

uint64_t sub_22EFA0FD8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_22EFB603C();
  v8 = result;
  if (result)
  {
    result = sub_22EFB605C();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_22EFB604C();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

void sub_22EFA1090(void *a1)
{
  v98 = *MEMORY[0x277D85DE8];
  *&v92 = sub_22EFB648C();
  *(&v92 + 1) = v2;
  v3 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
  }

  else
  {
    v92 = 0u;
    v95 = 0u;
  }

  v96 = v92;
  v97 = v95;
  if (*(&v95 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E620, &qword_22EFBCD50);
    if (!swift_dynamicCast())
    {
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      sub_22EFB66DC();

      *&v96 = 0xD00000000000001ALL;
      *(&v96 + 1) = 0x800000022EFC6D20;
      goto LABEL_40;
    }

    v4 = v90;
  }

  else
  {
    sub_22EF7CFF8(&v96, &qword_27DA9E4B0, &qword_22EFBBE60);
    v4 = 0;
  }

  *&v93 = sub_22EFB648C();
  *(&v93 + 1) = v5;
  v6 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
  }

  else
  {
    v93 = 0u;
    v95 = 0u;
  }

  v96 = v93;
  v97 = v95;
  if (*(&v95 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E620, &qword_22EFBCD50);
    if (!swift_dynamicCast())
    {

      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      *&v96 = 0;
      *(&v96 + 1) = 0xE000000000000000;
      sub_22EFB66DC();

      *&v96 = 0xD00000000000001ALL;
      *(&v96 + 1) = 0x800000022EFC6D20;
      goto LABEL_40;
    }

    v7 = v90;
  }

  else
  {
    sub_22EF7CFF8(&v96, &qword_27DA9E4B0, &qword_22EFBBE60);
    v7 = 0;
  }

  *&v94 = sub_22EFB648C();
  *(&v94 + 1) = v8;
  v9 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v96 = v94;
  v97 = v95;
  if (*(&v95 + 1))
  {
    v10 = swift_dynamicCast();
    if (!v10)
    {
      goto LABEL_39;
    }

    v11 = v91;
    v86 = v90;
    if (!v4)
    {
LABEL_23:
      if (!v7)
      {
        goto LABEL_57;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v10 = sub_22EF7CFF8(&v96, &qword_27DA9E4B0, &qword_22EFBBE60);
    v86 = 0;
    v11 = 0xF000000000000000;
    if (!v4)
    {
      goto LABEL_23;
    }
  }

  v12 = *(v4 + 16);

  v13 = (v4 + 40);
  v14 = -1;
  while (v14 - v12 != -1)
  {
    if (++v14 >= *(v4 + 16))
    {
      __break(1u);
LABEL_144:
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
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
    }

    v10 = *(v13 - 1);
    v9 = *v13;
    v16 = *v13 >> 62;
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_70;
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = __OFSUB__(v17, v18);
      v15 = v17 - v18;
      if (v19)
      {
        __break(1u);
LABEL_39:

        sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
        *&v96 = 0;
        *(&v96 + 1) = 0xE000000000000000;
        sub_22EFB66DC();

        *&v96 = 0xD00000000000001ALL;
        *(&v96 + 1) = 0x800000022EFC6D20;
LABEL_40:
        v20 = sub_22EFB683C();
        MEMORY[0x2318FB260](v20);

        sub_22EF74470(v96, *(&v96 + 1), 8, 0);
        swift_willThrow();

        goto LABEL_142;
      }
    }

    else if (v16)
    {
      LODWORD(v15) = HIDWORD(v10) - v10;
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_146;
      }

      v15 = v15;
    }

    else
    {
      sub_22EF708C8(v10, *v13);
      v15 = BYTE6(v9);
    }

    v13 += 2;
    if (v15 != 3)
    {
      goto LABEL_55;
    }
  }

  if (v7)
  {
LABEL_42:
    v21 = *(v7 + 16);

    v22 = (v7 + 40);
    v23 = -1;
    while (v23 - v21 != -1)
    {
      if (++v23 >= *(v7 + 16))
      {
        goto LABEL_144;
      }

      v25 = *(v22 - 1);
      v9 = *v22;
      v26 = *v22 >> 62;
      if (v26 > 1)
      {
        if (v26 != 2)
        {
          v36 = *(v22 - 1);
          swift_bridgeObjectRelease_n();

          sub_22EF708C8(v36, v9);
          goto LABEL_72;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        v19 = __OFSUB__(v27, v28);
        v24 = v27 - v28;
        if (v19)
        {
          __break(1u);
LABEL_55:
          swift_bridgeObjectRelease_n();

LABEL_72:
          sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
          *&v96 = 0;
          *(&v96 + 1) = 0xE000000000000000;
          sub_22EFB66DC();

          *&v96 = 0xD00000000000001ALL;
          *(&v96 + 1) = 0x800000022EFC6D20;
          v37 = sub_22EFB683C();
          MEMORY[0x2318FB260](v37);

          sub_22EF74470(v96, *(&v96 + 1), 8, 0);
          swift_willThrow();

          v38 = v86;
LABEL_73:
          sub_22EF708B4(v38, v11);
LABEL_142:
          v82 = *MEMORY[0x277D85DE8];
          return;
        }
      }

      else if (v26)
      {
        LODWORD(v24) = HIDWORD(v25) - v25;
        if (__OFSUB__(HIDWORD(v25), v25))
        {
          goto LABEL_149;
        }

        v24 = v24;
      }

      else
      {
        sub_22EF708C8(v25, *v22);
        v24 = BYTE6(v9);
      }

      v22 += 2;
      if (v24 != 3)
      {
        goto LABEL_55;
      }
    }
  }

LABEL_57:
  if (v11 >> 60 == 15)
  {
    v83 = v11;
    v84 = a1;
    if (v7)
    {
      v29 = v7;
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    v87 = v29;

LABEL_126:
    v65 = (v30 + 40);
    v66 = -*(v30 + 16);
    v67 = -1;
    v89 = v30;
    while (v66 + v67 != -1)
    {
      if (++v67 >= *(v30 + 16))
      {
        goto LABEL_145;
      }

      v68 = *(v65 - 1);
      v69 = *v65;
      sub_22EF70B68(v68, *v65);
      if (qword_281477D68 != -1)
      {
        swift_once();
      }

      v65 += 2;
      v70 = *(qword_281477D70 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_reservedTCIs);

      v71 = sub_22EF87D54(v68, v69, v70);

      sub_22EF708C8(v68, v69);
      v30 = v89;
      if (v71)
      {

        sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
        *&v96 = 0;
        *(&v96 + 1) = 0xE000000000000000;
        sub_22EFB66DC();

        strcpy(&v96, "PrimaryTCIs ");
        BYTE13(v96) = 0;
        HIWORD(v96) = -5120;
        v80 = MEMORY[0x2318FB2C0](v89, MEMORY[0x277CC9318]);
        MEMORY[0x2318FB260](v80);

        MEMORY[0x2318FB260](0xD000000000000016, 0x800000022EFC6D00);
        sub_22EF74470(v96, *(&v96 + 1), 8, 0);
LABEL_141:
        swift_willThrow();

        sub_22EF708B4(v86, v83);

        goto LABEL_142;
      }
    }

    v72 = v87;
    v73 = (v87 + 40);
    v74 = -*(v87 + 16);
    v75 = -1;
    while (v74 + v75 != -1)
    {
      if (++v75 >= *(v72 + 16))
      {
        goto LABEL_148;
      }

      v76 = *(v73 - 1);
      v77 = *v73;
      sub_22EF70B68(v76, *v73);
      if (qword_281477D68 != -1)
      {
        swift_once();
      }

      v73 += 2;
      v78 = *(qword_281477D70 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_reservedTCIs);

      v79 = sub_22EF87D54(v76, v77, v78);

      sub_22EF708C8(v76, v77);
      v72 = v87;
      if (v79)
      {
        sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
        *&v96 = 0;
        *(&v96 + 1) = 0xE000000000000000;
        sub_22EFB66DC();

        *&v96 = 0x2073494354787541;
        *(&v96 + 1) = 0xE800000000000000;
        v81 = MEMORY[0x2318FB2C0](v87, MEMORY[0x277CC9318]);
        MEMORY[0x2318FB260](v81);

        MEMORY[0x2318FB260](0xD000000000000016, 0x800000022EFC6D00);
        sub_22EF74470(v96, *(&v96 + 1), 8, 0);
        goto LABEL_141;
      }
    }

    sub_22EF708B4(v86, v83);
    goto LABEL_142;
  }

  v31 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v31 != 2)
    {

      v56 = v86;
      sub_22EF708B4(v86, v11);
      goto LABEL_123;
    }

    v34 = *(v86 + 16);
    v33 = *(v86 + 24);
    v19 = __OFSUB__(v33, v34);
    v32 = v33 - v34;
    if (v19)
    {
      __break(1u);
LABEL_70:
      v35 = v10;
      swift_bridgeObjectRelease_n();

      sub_22EF708C8(v35, v9);
      goto LABEL_72;
    }
  }

  else if (v31)
  {
    LODWORD(v32) = HIDWORD(v86) - v86;
    if (__OFSUB__(HIDWORD(v86), v86))
    {
      goto LABEL_158;
    }

    v32 = v32;
  }

  else
  {
    sub_22EF708B4(v86, v11);
    v32 = BYTE6(v11);
  }

  if (v32 != 5)
  {

    v56 = v86;
LABEL_123:
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_22EFB66DC();

    *&v96 = 0xD00000000000001ALL;
    *(&v96 + 1) = 0x800000022EFC6D20;
    v64 = sub_22EFB683C();
    MEMORY[0x2318FB260](v64);

    sub_22EF74470(v96, *(&v96 + 1), 8, 0);
    swift_willThrow();

    v38 = v56;
    goto LABEL_73;
  }

  v84 = a1;
  v39 = MEMORY[0x277D84F90];
  if (v4)
  {
    v40 = v4;
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    v41 = v7;
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v87 = v41;
  v88 = v40;

  sub_22EF70CB0(v86, v11);
  v42 = 0;
  v43 = v39;
LABEL_84:
  if (v42 <= 0x28)
  {
    v44 = 40;
  }

  else
  {
    v44 = v42;
  }

  v85 = v43;
  while (1)
  {
    if (v42 == 40)
    {
      v57 = *(v43 + 16);
      v83 = v11;
      if (v57)
      {
        *&v96 = MEMORY[0x277D84F90];
        sub_22EF9ABA8(0, v57, 0);
        v58 = v85;
        v59 = 32;
        v60 = v96;
        do
        {
          v61 = *(v58 + v59);
          if ((v61 & 0x8000000000000000) != 0)
          {
            goto LABEL_150;
          }

          if (v61 > 0xFF)
          {
            goto LABEL_151;
          }

          *&v96 = v60;
          v63 = *(v60 + 16);
          v62 = *(v60 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_22EF9ABA8((v62 > 1), v63 + 1, 1);
            v58 = v85;
            v60 = v96;
          }

          *(v60 + 16) = v63 + 1;
          *(v60 + v63 + 32) = v61;
          v59 += 8;
          --v57;
        }

        while (v57);
        sub_22EF708B4(v86, v11);
      }

      else
      {

        sub_22EF708B4(v86, v11);
      }

      v30 = v88;
      goto LABEL_126;
    }

    if (v44 == v42)
    {
      goto LABEL_147;
    }

    v47 = v42 >> 3;
    if (v31 == 2)
    {
      if (v47 < *(v86 + 16))
      {
        goto LABEL_152;
      }

      if (v47 >= *(v86 + 24))
      {
        goto LABEL_155;
      }

      v52 = sub_22EFB603C();
      if (!v52)
      {
        goto LABEL_160;
      }

      v49 = v52;
      v53 = sub_22EFB605C();
      v51 = v47 - v53;
      if (__OFSUB__(v47, v53))
      {
        goto LABEL_157;
      }

      goto LABEL_88;
    }

    if (v31 != 1)
    {
      if (v47 >= BYTE6(v11))
      {
        goto LABEL_153;
      }

      *&v96 = v86;
      WORD4(v96) = v11;
      BYTE10(v96) = BYTE2(v11);
      BYTE11(v96) = BYTE3(v11);
      BYTE12(v96) = BYTE4(v11);
      BYTE13(v96) = BYTE5(v11);
      v45 = *(&v96 + v47);
      goto LABEL_89;
    }

    if (v47 < v86 || v47 >= v86 >> 32)
    {
      goto LABEL_154;
    }

    v48 = sub_22EFB603C();
    if (!v48)
    {
      break;
    }

    v49 = v48;
    v50 = sub_22EFB605C();
    v51 = v47 - v50;
    if (__OFSUB__(v47, v50))
    {
      goto LABEL_156;
    }

LABEL_88:
    v45 = *(v49 + v51);
    v43 = v85;
LABEL_89:
    v46 = v42++ & 7;
    if ((v45 >> v46))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22EF9AB48(0, *(v43 + 16) + 1, 1);
      }

      v55 = *(v43 + 16);
      v54 = *(v43 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_22EF9AB48((v54 > 1), v55 + 1, 1);
      }

      *(v43 + 16) = v55 + 1;
      *(v43 + 8 * v55 + 32) = v42 - 1;
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
}

void sub_22EFA1FE4(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_22EFB648C() == a1 && v6 == a2)
  {
    goto LABEL_7;
  }

  v8 = sub_22EFB684C();

  if (v8)
  {
    goto LABEL_8;
  }

  if (sub_22EFB648C() == a1 && v9 == a2)
  {
    goto LABEL_7;
  }

  v10 = sub_22EFB684C();

  if (v10)
  {
    goto LABEL_8;
  }

  if (sub_22EFB648C() == a1 && v11 == a2)
  {
    goto LABEL_7;
  }

  v12 = sub_22EFB684C();

  if (v12)
  {
    goto LABEL_8;
  }

  if (sub_22EFB648C() == a1 && v13 == a2)
  {
LABEL_7:

LABEL_8:

    return;
  }

  v14 = sub_22EFB684C();

  if (v14)
  {
    goto LABEL_8;
  }

  if (sub_22EFB648C() == a1 && v15 == a2)
  {

LABEL_24:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E610, &qword_22EFBCD40);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22EFBBCB0;
    *(v17 + 32) = sub_22EFAB164(&unk_2843B69F0);
    *(v17 + 40) = v18;
    *(v17 + 48) = sub_22EFAB164(&unk_2843B6A18);
    *(v17 + 56) = v19;

    return;
  }

  v16 = sub_22EFB684C();

  if (v16)
  {
    goto LABEL_24;
  }

  if (sub_22EFB648C() == a1 && v20 == a2)
  {
  }

  else
  {
    v21 = sub_22EFB684C();

    if ((v21 & 1) == 0)
    {
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      sub_22EFB66DC();

      v23 = sub_22EFB683C();
      MEMORY[0x2318FB260](v23);

      sub_22EF74470(0xD000000000000023, 0x800000022EFC6CC0, 8, 0);
      swift_willThrow();

      return;
    }
  }

  if (a3)
  {
    sub_22EFA1090(a3);
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    sub_22EFB66DC();

    v22 = sub_22EFB683C();
    MEMORY[0x2318FB260](v22);

    sub_22EF74470(0xD000000000000023, 0x800000022EFC6CC0, 8, 0);
    swift_willThrow();
  }
}

uint64_t sub_22EFA2454(unint64_t a1, int a2)
{
  v114 = a2;
  v127[9] = *MEMORY[0x277D85DE8];
  v127[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_22EFB67CC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      isUniquelyReferenced_nonNull_native = a1 & 0xC000000000000001;
      while (1)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v6 = MEMORY[0x2318FB480](v5, a1);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v9 = v127[0];
            goto LABEL_19;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v6 = *(a1 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_14;
          }
        }

        if (*(v6 + 162) != 1 || (*(v6 + 104) & 1) != 0)
        {
        }

        else
        {
          sub_22EFB673C();
          v8 = *(v127[0] + 16);
          sub_22EFB676C();
          sub_22EFB677C();
          sub_22EFB674C();
        }

        ++v5;
        if (v7 == v4)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_19:
  v10 = sub_22EFAB33C(MEMORY[0x277D84F90]);
  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    goto LABEL_140;
  }

  v11 = *(v9 + 16);
  if (!v11)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v124 = v10;
    v12 = 0;
    v113 = 0;
    v13 = v9 & 0xC000000000000001;
    v123 = v9 + 32;
    v119 = v11;
    v120 = v9;
    v121 = v9 & 0xC000000000000001;
LABEL_24:
    if (!v13)
    {
      if (v12 < *(v9 + 16))
      {
        isUniquelyReferenced_nonNull_native = *(v123 + 8 * v12);

        goto LABEL_28;
      }

LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      v107 = sub_22EFB67CC();
      if (v107 < 0)
      {
        __break(1u);
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    isUniquelyReferenced_nonNull_native = MEMORY[0x2318FB480](v12, v9);
LABEL_28:
    v122 = isUniquelyReferenced_nonNull_native;
    if ((v114 & 1) == 0 && *(isUniquelyReferenced_nonNull_native + 80) == 1)
    {
      v15 = *(isUniquelyReferenced_nonNull_native + 16);
      v14 = *(isUniquelyReferenced_nonNull_native + 24);

      v10 = v124;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v127[0] = v10;
      v17 = sub_22EFA9408(v15, v14);
      v18 = *(v10 + 16);
      v19 = (v16 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        goto LABEL_137;
      }

      v21 = v16;
      if (*(v10 + 24) >= v20)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22EF75EC8();
        }
      }

      else
      {
        sub_22EF75094(v20, isUniquelyReferenced_nonNull_native);
        v10 = v127[0];
        v22 = sub_22EFA9408(v15, v14);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_143;
        }

        v17 = v22;
      }

      isUniquelyReferenced_nonNull_native = v122;
      v10 = v127[0];
      if ((v21 & 1) == 0)
      {
        *(v127[0] + 8 * (v17 >> 6) + 64) |= 1 << v17;
        v24 = (*(v10 + 48) + 16 * v17);
        *v24 = v15;
        v24[1] = v14;
        *(*(v10 + 56) + 8 * v17) = MEMORY[0x277D84FA0];
        v25 = *(v10 + 16);
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_139;
        }

        *(v10 + 16) = v27;
      }

      v124 = v10;
      v28 = *(v10 + 56);
      v29 = *(v28 + 8 * v17);
      v30 = *(v29 + 40);
      sub_22EFB68DC();
      v10 = v127;
      MEMORY[0x2318FB660](1);
      v31 = sub_22EFB691C();
      v32 = v29 + 56;
      v33 = -1 << *(v29 + 32);
      v34 = v31 & ~v33;
      if ((*(v29 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        v36 = *(v29 + 48);
        v13 = v121;
        while (*(v36 + 16 * v34 + 8))
        {
          v34 = (v34 + 1) & v35;
          if (((*(v32 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        v13 = v121;
LABEL_45:
        v37 = *(v28 + 8 * v17);
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v126 = *(v28 + 8 * v17);
        isUniquelyReferenced_nonNull_native = v126;
        *(v28 + 8 * v17) = 0x8000000000000000;
        v39 = *(isUniquelyReferenced_nonNull_native + 16);
        if (*(isUniquelyReferenced_nonNull_native + 24) <= v39)
        {
          if (v38)
          {
            sub_22EF94930(v39 + 1);
          }

          else
          {
            sub_22EF9ECB8(v39 + 1);
          }

          isUniquelyReferenced_nonNull_native = v126;
          v40 = *(v126 + 40);
          sub_22EFB68DC();
          v10 = v127;
          MEMORY[0x2318FB660](1);
          v41 = sub_22EFB691C();
          v42 = -1 << *(isUniquelyReferenced_nonNull_native + 32);
          v34 = v41 & ~v42;
          if ((*(isUniquelyReferenced_nonNull_native + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
          {
            v43 = ~v42;
            do
            {
              if (!*(*(isUniquelyReferenced_nonNull_native + 48) + 16 * v34 + 8))
              {
                goto LABEL_142;
              }

              v34 = (v34 + 1) & v43;
            }

            while (((*(isUniquelyReferenced_nonNull_native + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0);
          }
        }

        else if ((v38 & 1) == 0)
        {
          v10 = &v126;
          sub_22EF9E594();
          isUniquelyReferenced_nonNull_native = v126;
        }

        *(isUniquelyReferenced_nonNull_native + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v34;
        v44 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v34);
        *v44 = 0;
        v44[1] = 0;
        v45 = *(isUniquelyReferenced_nonNull_native + 16);
        v26 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v26)
        {
          goto LABEL_138;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v46;
        *(v28 + 8 * v17) = isUniquelyReferenced_nonNull_native;
        isUniquelyReferenced_nonNull_native = v122;
      }
    }

    v47 = v12 + 1;
    if (v47 == v11)
    {
      break;
    }

    v118 = v47;
    while (1)
    {
      if (v47 >= v11)
      {
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      if (v13)
      {
        v48 = MEMORY[0x2318FB480](v47, v9);
      }

      else
      {
        if (v47 >= *(v9 + 16))
        {
          goto LABEL_132;
        }

        v49 = *(v123 + 8 * v47);
      }

      v50 = *(isUniquelyReferenced_nonNull_native + 80);
      v10 = v48[10];
      switch(v50)
      {
        case 0uLL:
          if (!v10)
          {
            goto LABEL_84;
          }

          goto LABEL_61;
        case 1uLL:
          if (v10 == 1)
          {
            goto LABEL_84;
          }

          goto LABEL_61;
        case 2uLL:
          if (v10 == 2)
          {
            goto LABEL_84;
          }

          goto LABEL_61;
      }

      if (v10 > 2)
      {
        break;
      }

LABEL_61:

LABEL_62:
      if (++v47 == v11)
      {

        v12 = v118;
        goto LABEL_24;
      }
    }

    v52 = *(isUniquelyReferenced_nonNull_native + 88);
    v51 = *(isUniquelyReferenced_nonNull_native + 96);
    v53 = v48[11];
    v54 = v48[12];
    v55 = v48;
    sub_22EFA0DA0(v48[10]);
    sub_22EFA0DA0(v50);
    v125 = v55;
    if (!sub_22EF88178(isUniquelyReferenced_nonNull_native, v50, v52, v51, v55, v10, v53, v54))
    {
      v117 = v51;
      v56 = *(isUniquelyReferenced_nonNull_native + 168);
      if (!v56)
      {
        sub_22EFA0DF0(v10);
        sub_22EFA0DF0(v50);

        v9 = v120;
        v13 = v121;
        goto LABEL_62;
      }

      v115 = v53;
      v116 = v54;
      v57 = v125[21];
      v9 = v120;
      v13 = v121;
      if (v57)
      {
        v112[1] = v52;
        v58 = *(v56 + 32);
        v59 = v58 & 0x3F;
        v60 = ((1 << v58) + 63) >> 6;
        isUniquelyReferenced_nonNull_native = 8 * v60;
        v61 = v56;
        swift_bridgeObjectRetain_n();

        if (v59 <= 0xD || (swift_stdlib_isStackAllocationSafe() & 1) != 0)
        {
          MEMORY[0x28223BE20]();
          v9 = v112 - ((isUniquelyReferenced_nonNull_native + 15) & 0x3FFFFFFFFFFFFFF0);
          bzero(v9, isUniquelyReferenced_nonNull_native);
          v62 = v113;
          sub_22EF9560C(v9, v60, v61, v57);
          v113 = v62;
          if (v62)
          {
            goto LABEL_144;
          }

          v64 = v63;

          sub_22EFA0DF0(v10);
          sub_22EFA0DF0(v50);

          v11 = v119;
          v9 = v120;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_slowAlloc();

          v105 = v113;
          v64 = sub_22EF9557C(isUniquelyReferenced_nonNull_native, v60, v61, v57);

          v106 = &v128;
          v113 = v105;
          if (v105)
          {
            goto LABEL_145;
          }

          MEMORY[0x2318FC200](isUniquelyReferenced_nonNull_native, -1, -1);
          sub_22EFA0DF0(v10);
          sub_22EFA0DF0(v50);
        }

        isUniquelyReferenced_nonNull_native = v122;
        v65 = v64[2];

        v13 = v121;
        v48 = v125;
        if (v65)
        {
          goto LABEL_84;
        }
      }

      else
      {
        sub_22EFA0DF0(v10);
        sub_22EFA0DF0(v50);
      }

      goto LABEL_61;
    }

    sub_22EFA0DF0(v10);
    sub_22EFA0DF0(v50);
    v48 = v125;
LABEL_84:
    v67 = v48[2];
    v66 = v48[3];
    v125 = v48;
    v68 = *(isUniquelyReferenced_nonNull_native + 16);
    v9 = *(isUniquelyReferenced_nonNull_native + 24);

    v10 = v124;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v127[0] = v10;
    v71 = sub_22EFA9408(v68, v9);
    v72 = *(v10 + 16);
    v73 = (v70 & 1) == 0;
    v74 = v72 + v73;
    if (__OFADD__(v72, v73))
    {
      goto LABEL_133;
    }

    isUniquelyReferenced_nonNull_native = v70;
    if (*(v10 + 24) >= v74)
    {
      if (v69)
      {
        v10 = v127[0];
        if ((v70 & 1) == 0)
        {
          goto LABEL_95;
        }
      }

      else
      {
        sub_22EF75EC8();
        v10 = v127[0];
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_95;
        }
      }

LABEL_91:

      goto LABEL_97;
    }

    sub_22EF75094(v74, v69);
    v10 = v127[0];
    v75 = sub_22EFA9408(v68, v9);
    if ((isUniquelyReferenced_nonNull_native & 1) != (v76 & 1))
    {
      goto LABEL_143;
    }

    v71 = v75;
    v10 = v127[0];
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_91;
    }

LABEL_95:
    *(v10 + 8 * (v71 >> 6) + 64) |= 1 << v71;
    v77 = (*(v10 + 48) + 16 * v71);
    *v77 = v68;
    v77[1] = v9;
    *(*(v10 + 56) + 8 * v71) = MEMORY[0x277D84FA0];
    v78 = *(v10 + 16);
    v26 = __OFADD__(v78, 1);
    v79 = v78 + 1;
    if (v26)
    {
      goto LABEL_135;
    }

    *(v10 + 16) = v79;
LABEL_97:
    v124 = v10;
    v80 = *(v10 + 56);
    v81 = *(v80 + 8 * v71);
    v82 = *(v81 + 40);
    sub_22EFB68DC();
    MEMORY[0x2318FB660](0);
    sub_22EFB64CC();
    v83 = sub_22EFB691C();
    v10 = v81 + 56;
    v84 = -1 << *(v81 + 32);
    isUniquelyReferenced_nonNull_native = v83 & ~v84;
    if ((*(v81 + 56 + ((isUniquelyReferenced_nonNull_native >> 3) & 0xFFFFFFFFFFFFFF8)) >> isUniquelyReferenced_nonNull_native))
    {
      v85 = ~v84;
      v86 = *(v81 + 48);
      while (1)
      {
        v87 = (v86 + 16 * isUniquelyReferenced_nonNull_native);
        v88 = v87[1];
        if (v88)
        {
          v89 = *v87 == v67 && v88 == v66;
          if (v89 || (sub_22EFB684C() & 1) != 0)
          {
            break;
          }
        }

        isUniquelyReferenced_nonNull_native = (isUniquelyReferenced_nonNull_native + 1) & v85;
        if (((*(v10 + ((isUniquelyReferenced_nonNull_native >> 3) & 0xFFFFFFFFFFFFFF8)) >> isUniquelyReferenced_nonNull_native) & 1) == 0)
        {
          goto LABEL_107;
        }
      }

      v11 = v119;
      v9 = v120;
LABEL_126:
      v13 = v121;
      isUniquelyReferenced_nonNull_native = v122;
      goto LABEL_62;
    }

LABEL_107:
    v90 = *(v80 + 8 * v71);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v126 = *(v80 + 8 * v71);
    v9 = v126;
    *(v80 + 8 * v71) = 0x8000000000000000;
    v91 = *(v9 + 16);
    v92 = *(v9 + 24);

    if (v92 > v91)
    {
      v11 = v119;
      if ((v10 & 1) == 0)
      {
        v10 = &v126;
        sub_22EF9E594();
        v9 = v126;
      }

      goto LABEL_124;
    }

    v93 = v91 + 1;
    if (v10)
    {
      sub_22EF94930(v93);
    }

    else
    {
      sub_22EF9ECB8(v93);
    }

    v9 = v126;
    v94 = *(v126 + 40);
    sub_22EFB68DC();
    MEMORY[0x2318FB660](0);
    sub_22EFB64CC();
    v95 = sub_22EFB691C();
    v10 = v9 + 56;
    v96 = -1 << *(v9 + 32);
    isUniquelyReferenced_nonNull_native = v95 & ~v96;
    if (((*(v9 + 56 + ((isUniquelyReferenced_nonNull_native >> 3) & 0xFFFFFFFFFFFFFF8)) >> isUniquelyReferenced_nonNull_native) & 1) == 0)
    {
LABEL_123:
      v11 = v119;
LABEL_124:
      *(v9 + ((isUniquelyReferenced_nonNull_native >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << isUniquelyReferenced_nonNull_native;
      v102 = (*(v9 + 48) + 16 * isUniquelyReferenced_nonNull_native);
      *v102 = v67;
      v102[1] = v66;
      v103 = *(v9 + 16);
      v26 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v26)
      {
        goto LABEL_134;
      }

      *(v9 + 16) = v104;
      *(v80 + 8 * v71) = v9;

      v9 = v120;
      goto LABEL_126;
    }

    v97 = ~v96;
    v98 = *(v9 + 48);
    while (1)
    {
      v99 = (v98 + 16 * isUniquelyReferenced_nonNull_native);
      v100 = v99[1];
      if (v100)
      {
        v101 = *v99 == v67 && v100 == v66;
        if (v101 || (sub_22EFB684C() & 1) != 0)
        {
          break;
        }
      }

      isUniquelyReferenced_nonNull_native = (isUniquelyReferenced_nonNull_native + 1) & v97;
      if (((*(v10 + ((isUniquelyReferenced_nonNull_native >> 3) & 0xFFFFFFFFFFFFFF8)) >> isUniquelyReferenced_nonNull_native) & 1) == 0)
      {
        goto LABEL_123;
      }
    }

LABEL_142:
    sub_22EFB686C();
    __break(1u);
LABEL_143:
    sub_22EFB687C();
    __break(1u);
LABEL_144:

    v108 = v113;
    swift_willThrow();

    __break(1u);
LABEL_145:

    v107 = MEMORY[0x2318FC200](isUniquelyReferenced_nonNull_native, -1, -1);
    __break(1u);
LABEL_146:
    v11 = v107;
    if (!v107)
    {
LABEL_147:

      v113 = 0;
      goto LABEL_148;
    }
  }

  v10 = v124;
LABEL_148:
  v109 = sub_22EF834D0(v10);

  v110 = *MEMORY[0x277D85DE8];
  return v109;
}

uint64_t sub_22EFA30DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22EFA0E5C();
  result = MEMORY[0x2318FB300](v2, MEMORY[0x277CC9318], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_22EF70B68(v7, *v5);
      sub_22EF9BDD0(v8, v7, v6);
      sub_22EF708C8(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_22EFA3178(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318FB300](v2, MEMORY[0x277D84B78], MEMORY[0x277D84B88]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_22EF9BCE8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_22EFA31EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ExpressMode.PassConfig();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_22EFB67CC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_22EFB67CC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22EFA32EC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_22EFB67CC();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_22EFB67CC();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_22EF9BC48(result);

  return sub_22EFA31EC(v4, v2, 0);
}

uint64_t sub_22EFA33C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_22EF708B4(a1, a2);
  }

  return a1;
}

void sub_22EFA3414(uint64_t a1, char a2)
{
  if (qword_281477D68 != -1)
  {
    v11 = a1;
    v12 = a2;
    swift_once();
    a2 = v12;
    a1 = v11;
  }

  sub_22EF85014(a1, a2 & 1, 0);
  if (!v2)
  {
    v4 = v3;
    v5 = *(v3 + 16);
    if (v5)
    {
      v13 = MEMORY[0x277D84F90];
      sub_22EFB675C();
      v6 = (v4 + 48);
      do
      {
        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *v6;
        v6 += 3;

        sub_22EF71160(v8, v7, v9);

        sub_22EFB673C();
        v10 = *(v13 + 16);
        sub_22EFB676C();
        sub_22EFB677C();
        sub_22EFB674C();
        --v5;
      }

      while (v5);
    }
  }
}

void sub_22EFA35A4(uint64_t a1, _BYTE *a2, char a3)
{
  LOBYTE(v4) = a3;
  if (qword_281477D68 != -1)
  {
LABEL_25:
    v24 = a1;
    swift_once();
    a1 = v24;
  }

  sub_22EF85014(a1, v4 & 1, 0);
  if (v3)
  {
    return;
  }

  v8 = v7;
  v28 = v6;
  v27 = v4;
  v3 = *(v7 + 16);

  v9 = (v8 + 48);
  v4 = -v3;
  v10 = -1;
  while (v10 - v3 != -1)
  {
    if (++v10 >= *(v8 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v11 = v9 + 3;
    v13 = *(v9 - 1);
    v12 = *v9;

    v15 = sub_22EF71944(v14);

    v9 = v11;
    if (v15)
    {

      swift_bridgeObjectRelease_n();
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      sub_22EF74470(0xD000000000000023, 0x800000022EFC6D40, 8, 0);
      swift_willThrow();
      return;
    }
  }

  v26 = a2;

  v29 = MEMORY[0x277D84F90];
  v16 = v28;
  if (v28 >> 62)
  {
    a1 = sub_22EFB67CC();
    v16 = v28;
    v17 = a1;
    v18 = v27;
    if (a1)
    {
      goto LABEL_10;
    }

LABEL_27:
    v23 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v17 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v18 = v27;
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_10:
  v19 = 0;
  v4 = v16 & 0xC000000000000001;
  v20 = v16 & 0xFFFFFFFFFFFFFF8;
  while (v4)
  {
    v22 = MEMORY[0x2318FB480](v19);
    a2 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      goto LABEL_21;
    }

LABEL_16:
    if ((v18 & 1) != 0 || *(v22 + 80) != 1)
    {
      sub_22EFB673C();
      v21 = *(v29 + 16);
      sub_22EFB676C();
      v18 = v27;
      sub_22EFB677C();
      a1 = sub_22EFB674C();
    }

    else
    {
    }

    ++v19;
    v16 = v28;
    if (a2 == v17)
    {
      goto LABEL_22;
    }
  }

  if (v19 >= *(v20 + 16))
  {
    goto LABEL_24;
  }

  v22 = *(v16 + 8 * v19 + 32);

  a2 = (v19 + 1);
  if (!__OFADD__(v19, 1))
  {
    goto LABEL_16;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  v23 = v29;
LABEL_28:

  v25 = sub_22EF8841C(v23);

  *v26 = v25 & 1;
}

uint64_t sub_22EFA3898(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return v3;
  }

  for (i = (result + 16 * a2 + 8); ; i += 2)
  {
    if (v3 >= v4)
    {
      __break(1u);
      return result;
    }

    result = *(i - 1);
    v6 = *i;
    v7 = *i >> 62;
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (*(result + 16) != *(result + 24))
        {
          break;
        }
      }

      else
      {
        result = sub_22EF708C8(result, *i);
      }

      goto LABEL_4;
    }

    if (!v7)
    {
      result = sub_22EF708C8(result, *i);
      if ((v6 & 0xFF000000000000) != 0)
      {
        return v3;
      }

      goto LABEL_4;
    }

    if (result != result >> 32)
    {
      break;
    }

LABEL_4:
    if (v4 == ++v3)
    {
      return v4;
    }
  }

  if (v7 == 2)
  {
    v8 = *(result + 16);
  }

  return v3;
}

uint64_t sub_22EFA3994(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if (a4 == result)
  {
    if (a6)
    {
      if (a3)
      {
        return 0;
      }

      goto LABEL_65;
    }

    if (a3)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (a4 < a8 || (a9 >> 1) <= a4)
    {
      goto LABEL_68;
    }

    v18 = (a7 + 16 * a4);
    v19 = *v18;
    v20 = v18[1];

    return sub_22EFA098C(a2, a5, v19, v20);
  }

  else
  {
    v12 = result;
    v13 = a9 >> 1;
    if (a4 >= result)
    {
      if (result < a8 || v13 <= result)
      {
        goto LABEL_67;
      }

      if (a3)
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        return result;
      }

      v21 = (a7 + 16 * result);
      v22 = *v21;
      v23 = v21[1];
      v24 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v24 == 2)
        {
          v27 = *(v22 + 24);
        }

        else
        {
          v27 = 0;
        }
      }

      else if (v24)
      {
        v27 = v22 >> 32;
      }

      else
      {
        v27 = BYTE6(v23);
      }

      result = sub_22EFA098C(a2, v27, v22, v23);
      v30 = 1;
      v33 = a4;
      v31 = a5;
      v32 = a6;
    }

    else
    {
      if (a4 < a8 || v13 <= a4)
      {
        goto LABEL_66;
      }

      v14 = (a7 + 16 * a4);
      v16 = *v14;
      v15 = v14[1];
      v17 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v17 == 2)
        {
          result = *(v16 + 24);
        }

        else
        {
          result = 0;
        }
      }

      else if (v17)
      {
        result = v16 >> 32;
      }

      else
      {
        result = BYTE6(v15);
      }

      if (a6)
      {
        goto LABEL_73;
      }

      result = sub_22EFA098C(result, a5, v16, v15);
      v30 = -1;
      v31 = a2;
      v32 = a3;
      v33 = v12;
      v12 = a4;
    }

    if (v12 + 1 < v33)
    {
      v34 = (a7 + 16 * v12 + 24);
      v35 = v12 + 1;
      while (v12 + 1 >= a8 && v35 < v13)
      {
        v36 = *(v34 - 1);
        v37 = *v34 >> 62;
        if (v37 > 1)
        {
          if (v37 == 2)
          {
            v40 = v36 + 16;
            v38 = *(v36 + 16);
            v39 = *(v40 + 8);
            v41 = __OFSUB__(v39, v38);
            v36 = v39 - v38;
            if (v41)
            {
              goto LABEL_63;
            }
          }

          else
          {
            v36 = 0;
          }
        }

        else if (v37)
        {
          v41 = __OFSUB__(HIDWORD(v36), v36);
          LODWORD(v36) = HIDWORD(v36) - v36;
          if (v41)
          {
            goto LABEL_64;
          }

          v36 = v36;
        }

        else
        {
          v36 = BYTE6(*v34);
        }

        v42 = v36 * v30;
        v41 = __OFADD__(result, v42);
        result += v42;
        if (v41)
        {
          goto LABEL_62;
        }

        ++v35;
        v34 += 2;
        if (v33 == v35)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_50:
    if ((v32 & 1) == 0)
    {
      if (v33 < a8 || v33 >= v13)
      {
        goto LABEL_69;
      }

      v43 = (a7 + 16 * v33);
      v44 = *v43;
      v45 = v43[1];
      v46 = v45 >> 62;
      v47 = result;
      if ((v45 >> 62) > 1)
      {
        v48 = 0;
        if (v46 == 2)
        {
          v48 = *(v44 + 16);
        }
      }

      else if (v46)
      {
        v48 = v44;
      }

      else
      {
        v48 = 0;
      }

      v49 = sub_22EFA098C(v48, v31, v44, v45);
      v41 = __OFADD__(v47, v49 * v30);
      result = v47 + v49 * v30;
      if (v41)
      {
        goto LABEL_70;
      }
    }
  }

  return result;
}

void sub_22EFA3C5C(uint64_t a1, void *a2, char *a3, int a4)
{
  LODWORD(v348) = a4;
  v344 = a3;
  v349 = a2;
  v359 = *MEMORY[0x277D85DE8];
  v7 = sub_22EFB63EC();
  v347 = *(v7 - 8);
  v8 = *(v347 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v308 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22EFB62DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v308 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22EF8841C(a1);
  v17 = sub_22EF8A0E4(a1, v16 & 1);
  if (v5)
  {
    goto LABEL_2;
  }

  v20 = v17;
  *&v342 = v4;
  LODWORD(v343) = v16;
  v340 = a1;
  v334 = v15;
  v333 = v10;
  v339 = v7;
  v21 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    LOBYTE(v22) = v343;
    v23 = v11;
    v24 = v12;
    if (v21 != 2)
    {
      goto LABEL_10;
    }

    v27 = *(v17 + 16);
    v26 = *(v17 + 24);
    v28 = __OFSUB__(v26, v27);
    v25 = v26 - v27;
    if (v28)
    {
      goto LABEL_87;
    }

LABEL_9:
    if (v25 < 0x2000)
    {
LABEL_10:
      v332 = v18 >> 62;
      v29 = v18;
      v337 = 0;
      if (qword_27DA9E058 != -1)
      {
        goto LABEL_80;
      }

      goto LABEL_11;
    }

    v101 = v18;
    v354 = 0;
    v355 = 0xE000000000000000;
    v102 = v18 >> 62;
    sub_22EFB66DC();

    v354 = 0xD00000000000002ALL;
    v355 = 0x800000022EFC6EC0;
    if (v102 == 2)
    {
      v104 = *(v20 + 16);
      v103 = *(v20 + 24);
      v105 = v103 - v104;
      if (!__OFSUB__(v103, v104))
      {
LABEL_75:
        sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
        *&__dst = v105;
        v106 = sub_22EFB683C();
        MEMORY[0x2318FB260](v106);

        sub_22EF74470(v354, v355, 8, 0);
        swift_willThrow();
        sub_22EF708C8(v20, v101);
        goto LABEL_2;
      }

      __break(1u);
    }

    if (__OFSUB__(HIDWORD(v20), v20))
    {
      goto LABEL_298;
    }

    v105 = HIDWORD(v20) - v20;
    goto LABEL_75;
  }

  LOBYTE(v22) = v343;
  v23 = v11;
  v24 = v12;
  if (!v21)
  {
    goto LABEL_10;
  }

  LODWORD(v25) = HIDWORD(v17) - v17;
  if (!__OFSUB__(HIDWORD(v17), v17))
  {
    v25 = v25;
    goto LABEL_9;
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  while (2)
  {
    if (sub_22EFB67CC() == 0 || (v343 & 1) == 0)
    {
      goto LABEL_299;
    }

    v70 = sub_22EFB67CC();
    v61 = v340;
    if (!v70)
    {
      v20 = MEMORY[0x277D84F90];
LABEL_91:
      v111 = sub_22EFA30DC(v20);

      v112 = sub_22EF8388C(v111);
      v113 = v112[2];
      v41 = v347;
      if (v113)
      {
        v114 = 0;
        v115 = 0;
        do
        {
          v116 = v114 + 1;
          if (__OFADD__(v114, 1))
          {
            goto LABEL_276;
          }

          v28 = __OFADD__(v115, 15);
          v115 += 15;
          if (v28)
          {
            v115 = 0x7FFFFFFFFFFFFFFFLL;
          }

          ++v114;
        }

        while (v115 < v113);
      }

      else
      {
        v116 = 0;
      }

      v354 = MEMORY[0x277D84F90];
      sub_22EF9AB88(0, v116 & ~(v116 >> 63), 0);
      if ((v116 & 0x8000000000000000) == 0)
      {
        v117 = v354;
        if (v116)
        {
          v118 = 0;
          *&v348 = v112 + 4;
          while (1)
          {
            if (v118 >= v113)
            {
              goto LABEL_279;
            }

            if (v118 == 0x7FFFFFFFFFFFFFF8)
            {
              break;
            }

            v119 = v118 + 15;
            if (v113 >= (v118 + 15))
            {
              v120 = v118 + 15;
            }

            else
            {
              v120 = v113;
            }

            if (v120 < v118)
            {
              goto LABEL_281;
            }

            v121 = v112[2];
            if (v121 < v118 || v121 < v120)
            {
              goto LABEL_282;
            }

            v354 = v117;
            v124 = v117[2];
            v123 = v117[3];

            if (v124 >= v123 >> 1)
            {
              sub_22EF9AB88((v123 > 1), v124 + 1, 1);
              v117 = v354;
            }

            v117[2] = v124 + 1;
            v125 = &v117[4 * v124];
            v126 = v348;
            v125[4] = v112;
            v125[5] = v126;
            v125[6] = v118;
            v125[7] = (2 * v120) | 1;
            v118 += 15;
            if (!--v116)
            {
              if (v119 >= v113)
              {
LABEL_116:

                v41 = v347;
                goto LABEL_117;
              }

LABEL_201:
              *&v348 = v112 + 4;
              v239 = v119;
              while (1)
              {
                v240 = v239 + 15;
                if (__OFADD__(v239, 15))
                {
                  break;
                }

                if (v113 >= v240)
                {
                  v241 = v239 + 15;
                }

                else
                {
                  v241 = v113;
                }

                if (v241 < v239)
                {
                  goto LABEL_284;
                }

                if (v119 < 0)
                {
                  goto LABEL_285;
                }

                v242 = v112[2];
                if (v242 < v239 || v242 < v241)
                {
                  goto LABEL_286;
                }

                v354 = v117;
                v245 = v117[2];
                v244 = v117[3];

                if (v245 >= v244 >> 1)
                {
                  sub_22EF9AB88((v244 > 1), v245 + 1, 1);
                  v117 = v354;
                }

                v117[2] = v245 + 1;
                v246 = &v117[4 * v245];
                v247 = v348;
                v246[4] = v112;
                v246[5] = v247;
                v246[6] = v239;
                v246[7] = (2 * v241) | 1;
                v239 += 15;
                if (v240 >= v113)
                {
                  goto LABEL_116;
                }
              }

LABEL_283:
              __break(1u);
LABEL_284:
              __break(1u);
LABEL_285:
              __break(1u);
LABEL_286:
              __break(1u);
LABEL_287:
              __break(1u);
LABEL_288:
              __break(1u);
LABEL_289:
              __break(1u);
LABEL_290:
              __break(1u);
LABEL_291:
              __break(1u);
LABEL_292:
              __break(1u);
LABEL_293:
              __break(1u);
LABEL_294:
              __break(1u);
LABEL_295:
              __break(1u);
              goto LABEL_296;
            }
          }

LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
          goto LABEL_283;
        }

        if (v113)
        {
          v119 = 0;
          goto LABEL_201;
        }

LABEL_117:
        v22 = v339;
        v315 = v117[2];
        if (v315)
        {
          v127 = 0;
          v320 = v117 + 4;
          *(&v128 + 1) = 10;
          v319 = xmmword_22EFBCE20;
          *&v128 = 16904320;
          v318 = v128;
          v317 = xmmword_22EFBCE30;
          *(&v128 + 1) = 5;
          v313 = xmmword_22EFBB8B0;
          *&v128 = 136315138;
          v308 = v128;
          v341 = xmmword_22EFBB8C0;
          v316 = v117;
          while (1)
          {
            if (v127 >= v117[2])
            {
              goto LABEL_293;
            }

            v331 = v127;
            v129 = &v320[4 * v127];
            v131 = *v129;
            v130 = v129[1];
            v132 = v129[2];
            v133 = v129[3];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E430, &unk_22EFBD190);
            v134 = swift_allocObject();
            *(v134 + 16) = v319;
            *(v134 + 32) = v318;
            swift_unknownObjectRetain();
            v135 = sub_22EFA3898(v130, v132, v133);
            v138 = sub_22EFA3994(v135, v137, v136 & 1, v133 >> 1, 0, 1, v130, v132, v133);
            if ((v138 & 0x8000000000000000) != 0)
            {
              goto LABEL_294;
            }

            v335 = v131;
            if (v138 > 0xFF)
            {
              goto LABEL_295;
            }

            *(v134 + 36) = v138;
            v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E438, &qword_22EFBBC60);
            v356 = v139;
            v357 = sub_22EF70E20(&qword_281477D60, &qword_27DA9E438, &qword_22EFBBC60);
            v354 = v134;
            v140 = __swift_project_boxed_opaque_existential_1(&v354, v139);
            v141 = *v140;
            v142 = *(*v140 + 16);
            if (v142)
            {
              if (v142 <= 0xE)
              {
                *(&v358 + 6) = 0;
                *&v358 = 0;
                BYTE14(v358) = v142;
                memcpy(&v358, (v141 + 32), v142);
                v148 = v358;
                v149 = v314 & 0xF00000000000000 | DWORD2(v358) | ((WORD6(v358) | (BYTE14(v358) << 16)) << 32);
                v314 = v149;
              }

              else
              {
                v143 = sub_22EFB607C();
                v144 = *(v143 + 48);
                v145 = *(v143 + 52);
                swift_allocObject();
                v146 = sub_22EFB602C();
                v147 = v146;
                if (v142 >= 0x7FFFFFFF)
                {
                  sub_22EFB614C();
                  v148 = swift_allocObject();
                  v148[2] = 0;
                  v148[3] = v142;
                  v149 = v147 | 0x8000000000000000;
                }

                else
                {
                  v148 = (v142 << 32);
                  v149 = v146 | 0x4000000000000000;
                }
              }
            }

            else
            {
              v148 = 0;
              v149 = 0xC000000000000000;
            }

            v150 = v335;
            __swift_destroy_boxed_opaque_existential_0Tm(&v354);
            v354 = v148;
            v355 = v149;
            sub_22EF70B68(v148, v149);
            sub_22EF84234(v150, v130, v132, v133);
            sub_22EF708C8(v148, v149);
            v336 = v354;
            v338 = v355;
            v151 = sub_22EFB61BC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E3F0, &unk_22EFBBC40);
            v152 = swift_allocObject();
            *(v152 + 16) = v317;
            sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
            *(v152 + 32) = sub_22EFB660C();
            *(v152 + 40) = sub_22EFB660C();
            *(v152 + 48) = sub_22EFB660C();
            v153 = sub_22EFB653C();

            *&v358 = 0;
            v154 = [v349 transceiveAndCheckSW:v151 inArray:v153 keepingSW:1 error:&v358];

            v155 = v358;
            if (!v154)
            {
              v306 = v155;

              sub_22EFB60EC();

              swift_willThrow();
              sub_22EF708C8(v345, v346);
              sub_22EF708B4(v329, v330);
              sub_22EF708C8(v336, v338);
              swift_unknownObjectRelease();
              goto LABEL_2;
            }

            v156 = sub_22EFB61DC();
            v158 = v157;

            v354 = v156;
            v355 = v158;
            swift_beginAccess();
            v159 = v354;
            v160 = v355;
            sub_22EF70B68(v354, v355);
            v161 = sub_22EFB61BC();
            sub_22EF708C8(v159, v160);
            LODWORD(v159) = GetSW(v161);

            if (v159 == 25618)
            {
              v162 = sub_22EFAB164(&unk_2843B6DB0);
              v164 = v163;
              v165 = sub_22EFB61BC();
              sub_22EF708C8(v162, v164);
              *&v358 = 0;
              v166 = v349;
              v167 = [v349 transceive:v165 error:&v358];

              v168 = v358;
              if (!v167)
              {
                goto LABEL_269;
              }

              v169 = sub_22EFB61DC();
              sub_22EF708C8(v169, v170);

              v171 = sub_22EFB61BC();
              v172 = swift_allocObject();
              *(v172 + 16) = v313;
              *(v172 + 32) = sub_22EFB660C();
              *(v172 + 40) = sub_22EFB660C();
              v173 = sub_22EFB653C();

              *&v358 = 0;
              v174 = [v166 transceiveAndCheckSW:v171 inArray:v173 keepingSW:1 error:&v358];

              v168 = v358;
              if (!v174)
              {
LABEL_269:
                v307 = v168;

                sub_22EFB60EC();

                swift_willThrow();
                sub_22EF708C8(v345, v346);
                sub_22EF708B4(v329, v330);
                sub_22EF708C8(v336, v338);
                swift_unknownObjectRelease();
                v109 = v354;
                v110 = v355;
LABEL_264:
                sub_22EF708C8(v109, v110);
                goto LABEL_2;
              }

              v175 = sub_22EFB61DC();
              v177 = v176;

              v178 = v354;
              v179 = v355;
              v354 = v175;
              v355 = v177;
              sub_22EF708C8(v178, v179);
            }

            v180 = v354;
            v181 = v355;
            sub_22EF70B68(v354, v355);
            v182 = sub_22EFB61BC();
            sub_22EF708C8(v180, v181);
            LODWORD(v180) = GetSW(v182);

            if (v180 == 36864)
            {
              sub_22EF708C8(v336, v338);
LABEL_180:
              swift_unknownObjectRelease();
              sub_22EF708C8(v354, v355);
              v22 = v339;
              goto LABEL_120;
            }

            v183 = sub_22EFB624C();
            v184 = sub_22EFB65DC();
            v185 = os_log_type_enabled(v183, v184);
            v22 = v339;
            if (v185)
            {
              break;
            }

            sub_22EF708C8(v336, v338);

            swift_unknownObjectRelease();
            sub_22EF708C8(v354, v355);
LABEL_120:
            v117 = v316;
            v127 = v331 + 1;
            if (v331 + 1 == v315)
            {
              goto LABEL_181;
            }
          }

          v310 = v184;
          v186 = swift_slowAlloc();
          v187 = swift_slowAlloc();
          v352 = v187;
          *v186 = v308;
          v188 = v355;
          v189 = v355 >> 62;
          v340 = v354;
          v325 = HIDWORD(v354);
          v312 = v183;
          v311 = v186;
          v309 = v187;
          if ((v355 >> 62) > 1)
          {
            if (v189 == 2)
            {
              v191 = v340;
              v193 = *(v340 + 16);
              v192 = *(v340 + 24);
              v190 = v192 - v193;
              if (__OFSUB__(v192, v193))
              {
                goto LABEL_306;
              }

              goto LABEL_148;
            }
          }

          else
          {
            if (!v189)
            {
              v190 = BYTE6(v355);
              goto LABEL_149;
            }

            v191 = v340;
            if (__OFSUB__(v325, v340))
            {
              goto LABEL_307;
            }

            v190 = v325 - v340;
LABEL_148:
            sub_22EF70B68(v191, v355);
LABEL_149:
            if (v190)
            {
              v350 = MEMORY[0x277D84F90];
              sub_22EF9AAC8(0, v190 & ~(v190 >> 63), 0);
              v194 = v340;
              v324 = v340;
              if (v189)
              {
                if (v189 == 2)
                {
                  v195 = *(v340 + 16);
                }

                else
                {
                  v195 = v324;
                }
              }

              else
              {
                v195 = 0;
              }

              *&v348 = v195;
              if ((v190 & 0x8000000000000000) == 0)
              {
                v197 = 0;
                v196 = v350;
                v322 = v340 >> 32;
                v323 = BYTE6(v188);
                v321 = &v358 + v348;
                v343 = v189;
                *&v342 = v190;
                while (1)
                {
                  if (v197 >= v190)
                  {
                    goto LABEL_277;
                  }

                  v198 = v197 + 1;
                  if (__OFADD__(v197, 1))
                  {
LABEL_278:
                    __break(1u);
LABEL_279:
                    __break(1u);
                    goto LABEL_280;
                  }

                  v199 = v348 + v197;
                  if (v189 == 2)
                  {
                    if (v199 < *(v194 + 16))
                    {
                      goto LABEL_288;
                    }

                    if (v199 >= *(v194 + 24))
                    {
                      goto LABEL_290;
                    }

                    v204 = sub_22EFB603C();
                    if (!v204)
                    {
                      goto LABEL_310;
                    }

                    v201 = v204;
                    v205 = sub_22EFB605C();
                    v203 = v199 - v205;
                    if (__OFSUB__(v199, v205))
                    {
                      goto LABEL_292;
                    }
                  }

                  else
                  {
                    if (v189 != 1)
                    {
                      if (v199 >= v323)
                      {
                        goto LABEL_287;
                      }

                      LOWORD(v358) = v194;
                      BYTE2(v358) = BYTE2(v194);
                      BYTE3(v358) = BYTE3(v194);
                      BYTE4(v358) = v325;
                      BYTE5(v358) = BYTE5(v194);
                      BYTE6(v358) = BYTE6(v194);
                      BYTE7(v358) = HIBYTE(v194);
                      WORD4(v358) = v188;
                      BYTE10(v358) = BYTE2(v188);
                      BYTE11(v358) = BYTE3(v188);
                      BYTE12(v358) = BYTE4(v188);
                      BYTE13(v358) = BYTE5(v188);
                      v206 = v321[v197];
                      goto LABEL_175;
                    }

                    if (v199 < v324 || v199 >= v322)
                    {
                      goto LABEL_289;
                    }

                    v200 = sub_22EFB603C();
                    if (!v200)
                    {
                      goto LABEL_309;
                    }

                    v201 = v200;
                    v202 = sub_22EFB605C();
                    v203 = v199 - v202;
                    if (__OFSUB__(v199, v202))
                    {
                      goto LABEL_291;
                    }
                  }

                  v206 = *(v201 + v203);
                  v194 = v340;
LABEL_175:
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
                  v207 = swift_allocObject();
                  *(v207 + 16) = v341;
                  *(v207 + 56) = MEMORY[0x277D84B78];
                  *(v207 + 64) = MEMORY[0x277D84BC0];
                  *(v207 + 32) = v206;
                  v208 = sub_22EFB649C();
                  v210 = v209;
                  v350 = v196;
                  v189 = *(v196 + 16);
                  v211 = *(v196 + 24);
                  if (v189 >= v211 >> 1)
                  {
                    sub_22EF9AAC8((v211 > 1), v189 + 1, 1);
                    v194 = v340;
                    v196 = v350;
                  }

                  *(v196 + 16) = v189 + 1;
                  v212 = v196 + 16 * v189;
                  *(v212 + 32) = v208;
                  *(v212 + 40) = v210;
                  ++v197;
                  v190 = v342;
                  v213 = v198 == v342;
                  v41 = v347;
                  LODWORD(v189) = v343;
                  if (v213)
                  {
                    goto LABEL_179;
                  }
                }
              }

LABEL_305:
              __break(1u);
LABEL_306:
              __break(1u);
LABEL_307:
              __break(1u);
            }
          }

          v196 = MEMORY[0x277D84F90];
LABEL_179:
          *&v358 = v196;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
          sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
          v214 = sub_22EFB646C();
          v216 = v215;
          sub_22EF708C8(v340, v188);

          v217 = sub_22EF9447C(v214, v216, &v352);

          v218 = v311;
          *(v311 + 1) = v217;
          v219 = v312;
          _os_log_impl(&dword_22EEF5000, v312, v310, "Activation parially succeeded, warning : %s", v218, 0xCu);
          v220 = v309;
          __swift_destroy_boxed_opaque_existential_0Tm(v309);
          MEMORY[0x2318FC200](v220, -1, -1);
          MEMORY[0x2318FC200](v218, -1, -1);
          sub_22EF708C8(v336, v338);

          goto LABEL_180;
        }

LABEL_181:

        for (i = 1; ; i = 0)
        {
          v60 = v344;
LABEL_183:
          *v60 = i;
          v55 = v349;
LABEL_184:
          v221 = sub_22EFAB164(&unk_2843B6DD8);
          v223 = v222;
          v347 = v221;
          v224 = sub_22EFB61BC();
          v354 = 0;
          v225 = [v55 transceiveAndCheckSW:v224 error:&v354];

          v226 = v354;
          if (!v225)
          {
            v232 = v226;
            v233 = sub_22EFB60EC();

            swift_willThrow();
            v234 = 0;
            goto LABEL_225;
          }

          v227 = sub_22EFB61DC();
          v229 = v228;

          v230 = v229 >> 62;
          v231 = v346;
          if ((v229 >> 62) > 1)
          {
            if (v230 != 2)
            {
              goto LABEL_198;
            }

            v236 = *(v227 + 16);
            v235 = *(v227 + 24);
            v28 = __OFSUB__(v235, v236);
            v237 = v235 - v236;
            if (v28)
            {
              goto LABEL_303;
            }

            if (v237 != 34)
            {
              goto LABEL_198;
            }
          }

          else if (v230)
          {
            if (__OFSUB__(HIDWORD(v227), v227))
            {
              goto LABEL_304;
            }

            if (HIDWORD(v227) - v227 != 34)
            {
LABEL_198:
              sub_22EF708C8(v227, v229);
              v234 = v337;
              goto LABEL_225;
            }
          }

          else if (BYTE6(v229) != 34)
          {
            goto LABEL_198;
          }

          if (v230 == 2)
          {
            v238 = *(v227 + 24);
          }

          else
          {
            if (v230 != 1)
            {
              v238 = BYTE6(v229);
              goto LABEL_219;
            }

            v238 = v227 >> 32;
          }

          sub_22EF70B68(v227, v229);
LABEL_219:
          v344 = v223;
          if (v238 < 2)
          {
            goto LABEL_311;
          }

          *&v348 = sub_22EFB618C();
          v343 = v248;
          sub_22EF708C8(v227, v229);
          sub_22EFA80DC(&qword_27DA9E418, MEMORY[0x277CC5540]);
          v249 = v333;
          sub_22EFB62BC();
          v250 = v345;
          sub_22EF70B68(v345, v231);
          v251 = v337;
          sub_22EFA9AB8(v250, v231, v249);
          v252 = v231;
          v234 = v251;
          sub_22EF708C8(v250, v252);
          v253 = v334;
          sub_22EFB62AC();
          (*(v41 + 8))(v249, v22);
          v254 = v328;
          v356 = v328;
          v357 = sub_22EFA80DC(&qword_27DA9E420, MEMORY[0x277CC5290]);
          v255 = __swift_allocate_boxed_opaque_existential_1(&v354);
          v256 = v327;
          (*(v327 + 16))(v255, v253, v254);
          __swift_project_boxed_opaque_existential_1(&v354, v356);
          sub_22EFB608C();
          (*(v256 + 8))(v253, v254);
          v257 = v358;
          __swift_destroy_boxed_opaque_existential_0Tm(&v354);
          v258 = v348;
          v259 = v343;
          LOBYTE(v254) = sub_22EF6E8C0(v348, v343, v257, *(&v257 + 1));
          sub_22EF708C8(v257, *(&v257 + 1));
          sub_22EF708C8(v258, v259);
          if (v254)
          {
            v260 = sub_22EFB624C();
            v261 = sub_22EFB65EC();
            v262 = os_log_type_enabled(v260, v261);
            v263 = v344;
            if (v262)
            {
              v264 = swift_slowAlloc();
              *v264 = 0;
              _os_log_impl(&dword_22EEF5000, v260, v261, "SE is already up to date with latest config", v264, 2u);
              MEMORY[0x2318FC200](v264, -1, -1);
            }

            sub_22EF708C8(v345, v346);
            sub_22EF708B4(v329, v330);
            sub_22EF708C8(v347, v263);
            sub_22EF708C8(v227, v229);

            goto LABEL_2;
          }

          sub_22EF708C8(v227, v229);
          v223 = v344;
LABEL_225:
          v337 = v234;
          if (v332 <= 1)
          {
            if (!v332)
            {
              v265 = v346;
              v266 = BYTE6(v346);
              goto LABEL_236;
            }

            goto LABEL_232;
          }

          if (v332 == 2)
          {
            v268 = *(v345 + 16);
            v267 = *(v345 + 24);
            v266 = v267 - v268;
            if (__OFSUB__(v267, v268))
            {
              __break(1u);
LABEL_232:
              if (__OFSUB__(HIDWORD(v345), v345))
              {
                goto LABEL_302;
              }

              v266 = HIDWORD(v345) - v345;
            }
          }

          else
          {
            v266 = 0;
          }

          v265 = v346;
LABEL_236:
          *&v358 = sub_22EFAB164(&unk_2843B6E00);
          *(&v358 + 1) = v269;
          if (v266 < 0)
          {
LABEL_296:
            __break(1u);
          }

          else if (!(v266 >> 16))
          {
            LOWORD(v352) = bswap32(v266) >> 16;
            v356 = MEMORY[0x277D838B0];
            v357 = MEMORY[0x277CC9C18];
            v354 = &v352;
            v355 = &v352 + 2;
            v270 = __swift_project_boxed_opaque_existential_1(&v354, MEMORY[0x277D838B0]);
            v272 = *v270;
            v271 = v270[1];
            sub_22EFB617C();
            __swift_destroy_boxed_opaque_existential_0Tm(&v354);
            v274 = *(&v358 + 1);
            v273 = v358;
            v275 = sub_22EFB61BC();
            v354 = 0;
            v276 = [v349 transceiveAndCheckSW:v275 error:&v354];

            v277 = v354;
            if (!v276)
            {
              v304 = v277;
              sub_22EFB60EC();

              swift_willThrow();
              sub_22EF708C8(v345, v265);
              sub_22EF708B4(v329, v330);
              sub_22EF708C8(v347, v223);
              v109 = v273;
              v110 = v274;
              goto LABEL_264;
            }

            v278 = sub_22EFB61DC();
            sub_22EF708C8(v278, v279);

            v280 = sub_22EFB607C();
            v281 = *(v280 + 48);
            v282 = *(v280 + 52);
            swift_allocObject();
            v283 = sub_22EFB606C() | 0x4000000000000000;
            v352 = 0;
            v353 = v283;
            if (!v266)
            {
              sub_22EF708B4(v329, v330);
              sub_22EF708C8(v347, v223);
              v303 = 0;
LABEL_266:
              sub_22EF708C8(v345, v265);
              sub_22EF708C8(v303, v283);
              sub_22EF708C8(v273, v274);
LABEL_2:
              v19 = *MEMORY[0x277D85DE8];
              return;
            }

            v344 = v223;
            sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
            v284 = 0;
            v348 = xmmword_22EFBB8B0;
            while (2)
            {
              if (__OFADD__(v284, 255))
              {
                v285 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v285 = v284 + 255;
              }

              v286 = v266 - v284;
              if (__OFSUB__(v266, v284))
              {
                __break(1u);
LABEL_272:
                __break(1u);
LABEL_273:
                __break(1u);
LABEL_274:
                __break(1u);
LABEL_275:
                __break(1u);
LABEL_276:
                __break(1u);
LABEL_277:
                __break(1u);
                goto LABEL_278;
              }

              if (v286 >= 255)
              {
                v287 = 255;
              }

              else
              {
                v287 = v266 - v284;
              }

              v288 = v353 >> 62;
              if ((v353 >> 62) > 1)
              {
                if (v288 != 2)
                {
                  goto LABEL_255;
                }

                v289 = *(v352 + 16);
                v290 = *(v352 + 24);
              }

              else
              {
                if (!v288)
                {
                  goto LABEL_255;
                }

                v289 = v352;
                v290 = v352 >> 32;
              }

              if (v290 < v289)
              {
                goto LABEL_272;
              }

LABEL_255:
              sub_22EFB616C();
              sub_22EFB617C();
              if (v286 < 0)
              {
                goto LABEL_273;
              }

              if (v353 >> 62 == 2)
              {
                v291 = *(v352 + 24);
              }

              v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5F8, &unk_22EFBD1A0);
              v356 = v292;
              v357 = sub_22EF70E20(&qword_281477D58, &qword_27DA9E5F8, &unk_22EFBD1A0);
              LOBYTE(v354) = v287;
              LOBYTE(v350) = *__swift_project_boxed_opaque_existential_1(&v354, v292);
              sub_22EFB616C();
              __swift_destroy_boxed_opaque_existential_0Tm(&v354);
              if (__OFADD__(v284, v287))
              {
                goto LABEL_274;
              }

              if (v284 + v287 < v284)
              {
                goto LABEL_275;
              }

              v293 = sub_22EFB618C();
              v295 = v294;
              sub_22EFB61FC();
              sub_22EF708C8(v293, v295);
              v296 = sub_22EFB61BC();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E3F0, &unk_22EFBBC40);
              v297 = swift_allocObject();
              *(v297 + 16) = v348;
              *(v297 + 32) = sub_22EFB660C();
              *(v297 + 40) = sub_22EFB660C();
              v298 = sub_22EFB653C();

              v354 = 0;
              v299 = [v349 transceiveAndCheckSW:v296 inArray:v298 error:&v354];

              v300 = v354;
              if (!v299)
              {
                v305 = v300;
                sub_22EFB60EC();

                swift_willThrow();
                sub_22EF708C8(v345, v346);
                sub_22EF708B4(v329, v330);
                sub_22EF708C8(v347, v344);
                sub_22EF708C8(v352, v353);
                v110 = *(&v358 + 1);
                v109 = v358;
                goto LABEL_264;
              }

              v301 = sub_22EFB61DC();
              sub_22EF708C8(v301, v302);

              v284 = v285;
              if (v285 >= v266)
              {
                sub_22EF708B4(v329, v330);
                sub_22EF708C8(v347, v344);
                v303 = v352;
                v283 = v353;
                v274 = *(&v358 + 1);
                v273 = v358;
                v265 = v346;
                goto LABEL_266;
              }

              continue;
            }
          }

          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          v22 = v339;
          v41 = v347;
        }
      }

LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
      goto LABEL_305;
    }

LABEL_23:
    v352 = MEMORY[0x277D84F90];
    sub_22EF9AB68(0, v70 & ~(v70 >> 63), 0);
    if (v70 < 0)
    {
      __break(1u);
      goto LABEL_301;
    }

    v71 = 0;
    v20 = v352;
    v343 = v61 & 0xC000000000000001;
    v342 = xmmword_22EFBBCB0;
    *&v341 = v70;
    while (1)
    {
      if (v343)
      {
        v29 = MEMORY[0x2318FB480](v71, v61);
      }

      else
      {
        v29 = *(v61 + 8 * v71 + 32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E430, &unk_22EFBD190);
      v72 = swift_allocObject();
      v73 = v72;
      *(v72 + 16) = v342;
      *(v72 + 32) = 79;
      v74 = *(v29 + 32);
      v75 = *(v29 + 40);
      v76 = v75 >> 62;
      if ((v75 >> 62) > 1)
      {
        if (v76 != 2)
        {
          LOBYTE(v74) = 0;
          goto LABEL_41;
        }

        v79 = v74 + 16;
        v77 = *(v74 + 16);
        v78 = *(v79 + 8);
        v28 = __OFSUB__(v78, v77);
        v74 = v78 - v77;
        if (v28)
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }
      }

      else
      {
        if (!v76)
        {
          v74 = HIWORD(v75);
          goto LABEL_41;
        }

        v28 = __OFSUB__(HIDWORD(v74), v74);
        LODWORD(v74) = HIDWORD(v74) - v74;
        if (v28)
        {
          goto LABEL_81;
        }

        v74 = v74;
      }

      if ((v74 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v74 > 0xFF)
      {
        goto LABEL_79;
      }

LABEL_41:
      *(v72 + 33) = v74;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E438, &qword_22EFBBC60);
      v356 = v80;
      v357 = sub_22EF70E20(&qword_281477D60, &qword_27DA9E438, &qword_22EFBBC60);
      v354 = v73;
      v81 = __swift_project_boxed_opaque_existential_1(&v354, v80);
      v82 = *v81;
      v83 = *(*v81 + 16);
      *&v348 = v20;
      if (v83)
      {
        if (v83 <= 0xE)
        {
          *(&__dst + 6) = 0;
          *&__dst = 0;
          BYTE14(__dst) = v83;
          memcpy(&__dst, (v82 + 32), v83);
          v89 = __dst;
          v90 = v338 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
          v338 = v90;
        }

        else
        {
          v84 = sub_22EFB607C();
          v85 = *(v84 + 48);
          v86 = *(v84 + 52);
          swift_allocObject();
          v87 = sub_22EFB602C();
          v88 = v87;
          if (v83 >= 0x7FFFFFFF)
          {
            sub_22EFB614C();
            v89 = swift_allocObject();
            *(v89 + 16) = 0;
            *(v89 + 24) = v83;
            v90 = v88 | 0x8000000000000000;
          }

          else
          {
            v89 = v83 << 32;
            v90 = v87 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v89 = 0;
        v90 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v354);
      v22 = *(v29 + 32);
      v91 = *(v29 + 40);
      *&__dst = v89;
      *(&__dst + 1) = v90;
      v356 = MEMORY[0x277CC9318];
      v357 = MEMORY[0x277CC9300];
      v354 = v22;
      v355 = v91;
      v92 = __swift_project_boxed_opaque_existential_1(&v354, MEMORY[0x277CC9318]);
      v93 = *v92;
      v23 = v92[1];
      v94 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v94 != 2)
        {
          *(&v358 + 6) = 0;
          *&v358 = 0;
          sub_22EF70B68(v89, v90);
          sub_22EF70B68(v22, v91);
          goto LABEL_63;
        }

        v95 = *(v93 + 16);
        v24 = *(v93 + 24);
        sub_22EF70B68(v89, v90);
        sub_22EF70B68(v22, v91);
        v22 = sub_22EFB603C();
        if (v22)
        {
          v96 = sub_22EFB605C();
          if (__OFSUB__(v95, v96))
          {
            goto LABEL_84;
          }

          LOBYTE(v22) = v95 - v96 + v22;
        }

        if (__OFSUB__(v24, v95))
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (!v94)
        {
          *&v358 = *v92;
          WORD4(v358) = v23;
          BYTE10(v358) = BYTE2(v23);
          BYTE11(v358) = BYTE3(v23);
          BYTE12(v358) = BYTE4(v23);
          BYTE13(v358) = BYTE5(v23);
          v23 = &v358 + BYTE6(v23);
          sub_22EF70B68(v89, v90);
          sub_22EF70B68(v22, v91);
LABEL_63:
          sub_22EFB617C();

          sub_22EF708C8(v89, v90);
          goto LABEL_64;
        }

        v24 = v93;
        if (v93 >> 32 < v93)
        {
          goto LABEL_82;
        }

        sub_22EF70B68(v89, v90);
        sub_22EF70B68(v22, v91);
        v22 = sub_22EFB603C();
        if (v22 && __OFSUB__(v24, sub_22EFB605C()))
        {
          goto LABEL_85;
        }
      }

      sub_22EFB604C();
      sub_22EFB617C();

      sub_22EF708C8(v89, v90);
      v61 = v340;
LABEL_64:
      __swift_destroy_boxed_opaque_existential_0Tm(&v354);
      v97 = __dst;
      v20 = v348;
      v352 = v348;
      v99 = *(v348 + 16);
      v98 = *(v348 + 24);
      v22 = v341;
      if (v99 >= v98 >> 1)
      {
        v348 = __dst;
        sub_22EF9AB68((v98 > 1), v99 + 1, 1);
        v97 = v348;
        v20 = v352;
      }

      ++v71;
      *(v20 + 16) = v99 + 1;
      *(v20 + 16 * v99 + 32) = v97;
      if (v22 == v71)
      {
        goto LABEL_91;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    swift_once();
LABEL_11:
    v30 = sub_22EFB626C();
    v31 = __swift_project_value_buffer(v30, qword_27DAA03B8);
    sub_22EF70B68(v20, v29);
    v32 = sub_22EFB624C();
    v33 = v20;
    v34 = sub_22EFB65BC();
    sub_22EF708C8(v33, v29);
    v35 = os_log_type_enabled(v32, v34);
    v345 = v33;
    v346 = v29;
    v328 = v23;
    v327 = v24;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v354 = v37;
      *v36 = 136315138;
      v38 = sub_22EFB61CC();
      v40 = sub_22EF9447C(v38, v39, &v354);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_22EEF5000, v32, v34, "Serialized configuration %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x2318FC200](v37, -1, -1);
      MEMORY[0x2318FC200](v36, -1, -1);
    }

    v41 = v347;
    v42 = sub_22EFB624C();
    v43 = sub_22EFB65EC();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v348;
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 67109632;
      *(v46 + 4) = v22 & 1;
      *(v46 + 8) = 1024;
      *(v46 + 10) = *v344;
      *(v46 + 14) = 1024;
      *(v46 + 16) = v45 & 1;
      _os_log_impl(&dword_22EEF5000, v42, v43, "Configuring SE on fastPath %{BOOL}d have %{BOOL}d activate %{BOOL}d", v46, 0x14u);
      MEMORY[0x2318FC200](v46, -1, -1);
    }

    v47 = sub_22EF7E630(0xD000000000000012, 0x800000022EFC6DB0);
    if (v48 >> 60 != 15)
    {
      v24 = v47;
      v23 = v48;
      v49 = sub_22EFB61BC();
      v50 = SelectByNameCmd(v49);

      v51 = sub_22EFB61DC();
      v53 = v52;

      v54 = sub_22EFB61BC();
      sub_22EF708C8(v51, v53);
      v354 = 0;
      v55 = v349;
      v56 = [v349 transceiveAndCheckSW:v54 error:&v354];

      v57 = v354;
      if (!v56)
      {
        v100 = v57;
        sub_22EFB60EC();

        swift_willThrow();
        sub_22EF708C8(v345, v346);
        sub_22EF708B4(v24, v23);
        goto LABEL_2;
      }

      v326 = v31;
      v329 = v24;
      v330 = v23;
      v58 = sub_22EFB61DC();
      sub_22EF708C8(v58, v59);

      sub_22EF8FDE8(v55);
      v22 = v339;
      if ((v348 & 1) == 0)
      {
        goto LABEL_184;
      }

      v60 = v344;
      v61 = v340;
      if (*v344 == 1)
      {
        v62 = sub_22EFAB164(&unk_2843B6D88);
        v64 = v63;
        v65 = sub_22EFB61BC();
        v354 = 0;
        v66 = [v349 transceiveAndCheckSW:v65 error:&v354];

        v67 = v354;
        if (!v66)
        {
          v108 = v67;
          sub_22EFB60EC();

          swift_willThrow();
          sub_22EF708C8(v345, v346);
          sub_22EF708B4(v329, v330);
          v109 = v62;
          v110 = v64;
          goto LABEL_264;
        }

        v68 = sub_22EFB61DC();
        v23 = v69;
        sub_22EF708C8(v62, v64);
        sub_22EF708C8(v68, v23);

        v22 = v339;
        v60 = v344;
      }

      if (v61 >> 62)
      {
        continue;
      }

      v70 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((v343 & (v70 != 0)) == 0)
      {
        i = 0;
        goto LABEL_183;
      }

      goto LABEL_23;
    }

    break;
  }

  __break(1u);
LABEL_309:
  __break(1u);
LABEL_310:
  __break(1u);
LABEL_311:
  __break(1u);
}

void sub_22EFA60A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, char a7)
{
  LOBYTE(v8) = a7;
  LOBYTE(v9) = a6;
  v141[1] = *MEMORY[0x277D85DE8];
  if (qword_281477D68 == -1)
  {
    goto LABEL_2;
  }

LABEL_206:
  v98 = a1;
  swift_once();
  a1 = v98;
LABEL_2:
  sub_22EF85014(a1, v8 & 1, 0);
  v134 = v7;
  if (v7)
  {
    goto LABEL_227;
  }

  v15 = v13;
  v16 = v14;
  v124 = v9;
  v125 = a5;
  v126 = a2;
  v128 = v12;
  v7 = *(v14 + 16);

  v17 = (v16 + 48);
  a2 = -v7;
  a5 = -1;
  while (a5 - v7 != -1)
  {
    if (++a5 >= *(v16 + 16))
    {
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
      goto LABEL_206;
    }

    v9 = v17 + 3;
    v19 = *(v17 - 1);
    v18 = *v17;

    v21 = sub_22EF71944(v20);

    v17 = v9;
    if (v21)
    {

      swift_bridgeObjectRelease_n();
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      v22 = 0x800000022EFC6D40;
      v23 = 0xD000000000000023;
LABEL_200:
      sub_22EF74470(v23, v22, 8, 0);
      swift_willThrow();
      goto LABEL_227;
    }
  }

  v131 = v15 >> 62;
  if (v15 >> 62)
  {
    goto LABEL_210;
  }

  v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {

    v135 = v16;
    v136 = v15;
    if (!v24)
    {
      goto LABEL_27;
    }

    v25 = 0;
    a2 = v15 & 0xC000000000000001;
    a5 = v15 & 0xFFFFFFFFFFFFFF8;
    while (a2)
    {
      v26 = MEMORY[0x2318FB480](v25, v15);
      v9 = (v25 + 1);
      if (__OFADD__(v25, 1))
      {
        goto LABEL_26;
      }

LABEL_17:
      v27 = *(v26 + 112);
      v28 = *(v26 + 120);
      v29 = v28 >> 62;
      if ((v28 >> 62) <= 1)
      {
        if (v29)
        {

          if (v27 == v27 >> 32)
          {
            goto LABEL_194;
          }
        }

        else
        {

          if ((v28 & 0xFF000000000000) == 0)
          {
            goto LABEL_194;
          }
        }

        goto LABEL_13;
      }

      if (v29 != 2)
      {

        swift_bridgeObjectRelease_n();

        goto LABEL_199;
      }

      v31 = *(v27 + 16);
      v30 = *(v27 + 24);

      if (v31 == v30)
      {
LABEL_194:

        swift_bridgeObjectRelease_n();

LABEL_199:
        sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
        v23 = 0xD00000000000003ELL;
        v22 = 0x800000022EFC6D70;
        goto LABEL_200;
      }

LABEL_13:
      ++v25;
      v16 = v135;
      v15 = v136;
      if (v9 == v24)
      {
        goto LABEL_27;
      }
    }

    if (v25 >= *(a5 + 16))
    {
      goto LABEL_203;
    }

    v26 = *(v15 + 8 * v25 + 32);

    v9 = (v25 + 1);
    if (!__OFADD__(v25, 1))
    {
      goto LABEL_17;
    }

LABEL_26:
    __break(1u);
LABEL_27:

    v140[0] = MEMORY[0x277D84F90];
    if (v131)
    {
      a1 = sub_22EFB67CC();
      v32 = a1;
    }

    else
    {
      v32 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = MEMORY[0x277D84F90];
    if (!v32)
    {
      goto LABEL_43;
    }

    v34 = 0;
    a2 = v15 & 0xC000000000000001;
    v35 = v15 & 0xFFFFFFFFFFFFFF8;
    while (2)
    {
      if (a2)
      {
        v15 = MEMORY[0x2318FB480](v34, v15);
        v9 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
          break;
        }

        goto LABEL_37;
      }

      if (v34 >= *(v35 + 16))
      {
        goto LABEL_202;
      }

      v15 = *(v15 + 8 * v34 + 32);

      v9 = (v34 + 1);
      if (!__OFADD__(v34, 1))
      {
LABEL_37:
        if (*(v15 + 162))
        {
          sub_22EFB673C();
          a5 = *(v140[0] + 16);
          sub_22EFB676C();
          sub_22EFB677C();
          a1 = sub_22EFB674C();
        }

        else
        {
        }

        ++v34;
        v15 = v136;
        if (v9 == v32)
        {
          goto LABEL_42;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_42:
    v33 = v140[0];
    v16 = v135;
LABEL_43:
    v129 = v33;
    v138 = v33;
    v141[0] = 0;
    a2 = a4;
    v9 = (a4 >> 60);
    if (a4 >> 60 != 15)
    {
      goto LABEL_62;
    }

    v7 = v134;
    a1 = sub_22EFA0404(&v138, v8 & 1);
    v36 = v134;
    if (!(v138 >> 62))
    {
      v37 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37 >= a1)
      {
        goto LABEL_46;
      }

LABEL_214:
      __break(1u);
LABEL_215:
      swift_once();
      goto LABEL_63;
    }

LABEL_213:
    v99 = v36;
    v100 = a1;
    v37 = sub_22EFB67CC();
    a1 = v100;
    v36 = v99;
    if (v37 < a1)
    {
      goto LABEL_214;
    }

LABEL_46:
    a1 = sub_22EFA32EC(a1, v37);
    v140[0] = MEMORY[0x277D84F90];
    if (v131)
    {
      a1 = sub_22EFB67CC();
      a5 = a1;
      if (!a1)
      {
LABEL_197:
        v54 = MEMORY[0x277D84F90];
        goto LABEL_223;
      }
    }

    else
    {
      a5 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a5)
      {
        goto LABEL_197;
      }
    }

    v134 = v36;
    v38 = 0;
    v39 = v15 & 0xC000000000000001;
    a2 = v15 & 0xFFFFFFFFFFFFFF8;
    while (2)
    {
      if (v39)
      {
        v16 = MEMORY[0x2318FB480](v38, v15);
        v9 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
          break;
        }

        goto LABEL_54;
      }

      if (v38 >= *(a2 + 16))
      {
        goto LABEL_204;
      }

      v16 = *(v15 + 8 * v38 + 32);

      v9 = (v38 + 1);
      if (!__OFADD__(v38, 1))
      {
LABEL_54:
        if (*(v16 + 161) != 1 || (*(v16 + 104) & 1) != 0 || (v8 & 1) == 0 && *(v16 + 80) == 1)
        {
        }

        else
        {
          sub_22EFB673C();
          v40 = *(v140[0] + 16);
          sub_22EFB676C();
          v15 = v136;
          sub_22EFB677C();
          a1 = sub_22EFB674C();
        }

        ++v38;
        if (v9 == a5)
        {
          v54 = v140[0];
          v36 = v134;
          goto LABEL_223;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_62:
    a5 = a3;
    sub_22EF70B68(a3, a2);
    if (qword_27DA9E058 != -1)
    {
      goto LABEL_215;
    }

LABEL_63:
    v41 = sub_22EFB626C();
    __swift_project_value_buffer(v41, qword_27DAA03B8);
    sub_22EF70B68(a5, a2);
    v36 = sub_22EFB624C();
    v42 = sub_22EFB65EC();
    sub_22EF708B4(a5, a2);
    if (os_log_type_enabled(v36, v42))
    {
      v8 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v140[0] = v43;
      *v8 = 136315138;
      v7 = v134;
      a5 = sub_22EF83154(a5, a2);
      *v139 = a5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      v44 = v42;
      sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
      v45 = sub_22EFB646C();
      v47 = v46;

      v48 = sub_22EF9447C(v45, v47, v140);

      *(v8 + 4) = v48;
      _os_log_impl(&dword_22EEF5000, v36, v44, "inSession with AID: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x2318FC200](v43, -1, -1);
      MEMORY[0x2318FC200](v8, -1, -1);
    }

    v141[0] = MEMORY[0x277D84F90];
    v9 = v129;
    if (v129 < 0 || (v129 & 0x4000000000000000) != 0)
    {
      v49 = sub_22EFB67CC();
      a2 = a3;
      if (!v49)
      {
LABEL_217:
        v101 = sub_22EFB624C();
        v54 = sub_22EFB65EC();
        if (!os_log_type_enabled(v101, v54))
        {
          goto LABEL_220;
        }

        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v140[0] = v103;
        *v102 = 136315138;
        swift_beginAccess();
        if (v141[0])
        {

          v105 = MEMORY[0x2318FB2C0](v104, MEMORY[0x277D837D0]);
          v107 = v106;

          a5 = sub_22EF9447C(v105, v107, v140);

          *(v102 + 4) = a5;
          _os_log_impl(&dword_22EEF5000, v101, v54, "inSession with pass unique IDs: %s", v102, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v103);
          MEMORY[0x2318FC200](v103, -1, -1);
          MEMORY[0x2318FC200](v102, -1, -1);
LABEL_220:

          v108 = sub_22EF9FE04(&v138, v141);
          v36 = v134;
          if (v138 >> 62)
          {
            goto LABEL_245;
          }

          v109 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v109 >= v108)
          {
            goto LABEL_222;
          }

LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          swift_once();
          goto LABEL_229;
        }

LABEL_263:
        __break(1u);
        return;
      }
    }

    else
    {
      v49 = *(v129 + 16);
      a2 = a3;
      if (!v49)
      {
        goto LABEL_217;
      }
    }

    v15 = 0;
    v130 = v49;
    v131 = v129 & 0xC000000000000001;
    v50 = __OFSUB__(HIDWORD(a2), a2);
    v123 = v50;
    v51 = a2 != 0;
    if (a4 != 0xC000000000000000)
    {
      v51 = 1;
    }

    v127 = v51;
    a5 = a4 >> 62;
    v122 = HIDWORD(a2) - a2;
    v52 = a4 == 0xC000000000000000 && a2 == 0;
    v121 = v52;
LABEL_79:
    if (v131)
    {
      a1 = MEMORY[0x2318FB480](v15, v9);
      v8 = a1;
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_205;
      }

      goto LABEL_85;
    }

    if (v15 >= v9[2])
    {
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      v24 = sub_22EFB67CC();
      continue;
    }

    break;
  }

  v8 = v9[v15 + 4];

  v16 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    goto LABEL_205;
  }

LABEL_85:
  v53 = *(v8 + 32);
  v54 = *(v8 + 40);
  v55 = v54 >> 62;
  if (v54 >> 62 != 3)
  {
    if (v55 <= 1)
    {
      if (v55)
      {
        LODWORD(v59) = HIDWORD(v53) - v53;
        if (__OFSUB__(HIDWORD(v53), v53))
        {
          goto LABEL_212;
        }

        v59 = v59;
        if (a5 <= 1)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v59 = BYTE6(v54);
        if (a5 <= 1)
        {
          goto LABEL_104;
        }
      }

LABEL_108:
      if (a5 == 2)
      {
        v65 = *(a2 + 16);
        v64 = *(a2 + 24);
        v62 = __OFSUB__(v64, v65);
        v63 = v64 - v65;
        if (v62)
        {
          goto LABEL_209;
        }

        goto LABEL_110;
      }

      if (!v59)
      {
        goto LABEL_169;
      }

      goto LABEL_135;
    }

    if (v55 != 2)
    {
      goto LABEL_107;
    }

    v61 = *(v53 + 16);
    v60 = *(v53 + 24);
    v62 = __OFSUB__(v60, v61);
    v59 = v60 - v61;
    if (!v62)
    {
      if (a5 > 1)
      {
        goto LABEL_108;
      }

      goto LABEL_104;
    }

    __break(1u);
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  if (v53)
  {
    v56 = 0;
  }

  else
  {
    v56 = v54 == 0xC000000000000000;
  }

  v58 = !v56 || a4 >> 62 != 3;
  if (((v58 | v127) & 1) == 0)
  {
    goto LABEL_169;
  }

LABEL_107:
  v59 = 0;
  if (a5 > 1)
  {
    goto LABEL_108;
  }

LABEL_104:
  v63 = BYTE6(a4);
  if (a5)
  {
    v63 = v122;
    if (v123)
    {
      goto LABEL_208;
    }
  }

LABEL_110:
  if (v59 == v63)
  {
    if (v59 < 1)
    {
      goto LABEL_169;
    }

    if (v55 > 1)
    {
      if (v55 == 2)
      {
        v66 = *(v53 + 16);
        v67 = *(v53 + 24);
        v36 = sub_22EFB603C();
        if (v36)
        {
          v68 = sub_22EFB605C();
          if (__OFSUB__(v66, v68))
          {
            goto LABEL_253;
          }

          v36 += v66 - v68;
        }

        if (__OFSUB__(v67, v66))
        {
          goto LABEL_250;
        }

        sub_22EFB604C();
        a2 = a3;
        v7 = v134;
        sub_22EF92D44(v36, a3, a4, v140);
        v9 = v129;
        if (v140[0])
        {
          goto LABEL_169;
        }
      }

      else
      {
        memset(v140, 0, 14);
LABEL_134:
        v7 = v134;
        sub_22EF92D44(v140, a2, a4, v139);
        if (v139[0])
        {
          goto LABEL_169;
        }
      }
    }

    else
    {
      if (!v55)
      {
        v140[0] = *(v8 + 32);
        LOWORD(v140[1]) = v54;
        BYTE2(v140[1]) = BYTE2(v54);
        BYTE3(v140[1]) = BYTE3(v54);
        BYTE4(v140[1]) = BYTE4(v54);
        BYTE5(v140[1]) = BYTE5(v54);
        goto LABEL_134;
      }

      v69 = v53;
      if (v53 >> 32 < v53)
      {
        goto LABEL_249;
      }

      v36 = sub_22EFB603C();
      if (v36)
      {
        v70 = sub_22EFB605C();
        if (__OFSUB__(v69, v70))
        {
          goto LABEL_254;
        }

        v36 += v69 - v70;
      }

      v9 = v129;
      sub_22EFB604C();
      a2 = a3;
      v7 = v134;
      sub_22EF92D44(v36, a3, a4, v140);
      if (v140[0])
      {
LABEL_169:
        v82 = v141[0];
        if (!v141[0])
        {
          __break(1u);
          goto LABEL_263;
        }

        v83 = *(v8 + 16);
        v36 = *(v8 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_22EF7DED0(0, *(v82 + 2) + 1, 1, v82);
        }

        v85 = *(v82 + 2);
        v84 = *(v82 + 3);
        if (v85 >= v84 >> 1)
        {
          v82 = sub_22EF7DED0((v84 > 1), v85 + 1, 1, v82);
        }

        *(v82 + 2) = v85 + 1;
        v86 = &v82[16 * v85];
        *(v86 + 4) = v83;
        *(v86 + 5) = v36;
        v141[0] = v82;
        a2 = a3;
        v9 = v129;
        goto LABEL_78;
      }
    }
  }

LABEL_135:
  v36 = *(v8 + 128);
  v54 = *(v8 + 136);
  if (v54 >> 60 == 15)
  {
    sub_22EF70CB0(a2, a4);
    sub_22EF70CB0(v36, v54);

    sub_22EF708B4(v36, v54);
    sub_22EF708B4(a2, a4);
    goto LABEL_78;
  }

  v71 = v54 >> 62;
  if (v54 >> 62 == 3)
  {
    v72 = 0;
    if (a5 == 3 && !v36 && v54 == 0xC000000000000000)
    {
      if (v121)
      {
        sub_22EF70CB0(0, 0xC000000000000000);
        sub_22EF70CB0(0, 0xC000000000000000);
        v73 = 0;
        v74 = 0xC000000000000000;
LABEL_168:
        sub_22EF708B4(v73, v74);
        sub_22EF708B4(v36, v54);
        goto LABEL_169;
      }

LABEL_167:
      sub_22EF70CB0(a2, a4);
      sub_22EF70CB0(v36, v54);
      v73 = a2;
      v74 = a4;
      goto LABEL_168;
    }

LABEL_157:
    if (a5 <= 1)
    {
      goto LABEL_158;
    }

LABEL_145:
    if (a5 == 2)
    {
      v76 = *(a2 + 16);
      v75 = *(a2 + 24);
      v62 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v62)
      {
        goto LABEL_248;
      }

      goto LABEL_160;
    }

    if (!v72)
    {
      goto LABEL_167;
    }

LABEL_165:
    sub_22EF70CB0(a2, a4);
    sub_22EF70CB0(v36, v54);
    sub_22EF708B4(a2, a4);
    sub_22EF708B4(v36, v54);
LABEL_166:

LABEL_78:
    ++v15;
    v56 = v16 == v130;
    v16 = v135;
    if (v56)
    {
      goto LABEL_217;
    }

    goto LABEL_79;
  }

  if (v71 > 1)
  {
    if (v71 == 2)
    {
      v79 = *(v36 + 16);
      v78 = *(v36 + 24);
      v62 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      if (v62)
      {
        goto LABEL_252;
      }

      goto LABEL_157;
    }

    v72 = 0;
    if (a5 <= 1)
    {
      goto LABEL_158;
    }

    goto LABEL_145;
  }

  if (v71)
  {
    LODWORD(v72) = HIDWORD(v36) - v36;
    if (__OFSUB__(HIDWORD(v36), v36))
    {
      goto LABEL_251;
    }

    v72 = v72;
    goto LABEL_157;
  }

  v72 = BYTE6(v54);
  if (a5 > 1)
  {
    goto LABEL_145;
  }

LABEL_158:
  v77 = BYTE6(a4);
  if (a5)
  {
    v77 = v122;
    if (v123)
    {
      goto LABEL_247;
    }
  }

LABEL_160:
  if (v72 != v77)
  {
    goto LABEL_165;
  }

  if (v72 < 1)
  {
    goto LABEL_167;
  }

  if (v71 <= 1)
  {
    if (!v71)
    {
      v140[0] = *(v8 + 128);
      LOWORD(v140[1]) = v54;
      BYTE2(v140[1]) = BYTE2(v54);
      BYTE3(v140[1]) = BYTE3(v54);
      BYTE4(v140[1]) = BYTE4(v54);
      BYTE5(v140[1]) = BYTE5(v54);
      sub_22EF70CB0(a2, a4);
      sub_22EF70CB0(v36, v54);
      sub_22EF70CB0(a3, a4);
      sub_22EF70CB0(v36, v54);
      v7 = v134;
      sub_22EF92D44(v140, a3, a4, v139);
      sub_22EF708B4(a3, a4);
      sub_22EF708B4(v36, v54);
      v80 = a3;
      v81 = a4;
      a2 = a3;
      goto LABEL_187;
    }

    if (v36 >> 32 < v36)
    {
      goto LABEL_255;
    }

    sub_22EF70CB0(a3, a4);
    sub_22EF70CB0(v36, v54);
    sub_22EF70CB0(a3, a4);
    sub_22EF70CB0(v36, v54);
    v93 = sub_22EFB603C();
    if (v93)
    {
      v94 = sub_22EFB605C();
      if (__OFSUB__(v36, v94))
      {
        goto LABEL_259;
      }

      v93 += v36 - v94;
    }

    v9 = v129;
    sub_22EFB604C();
    v95 = v93;
    a2 = a3;
    v7 = v134;
    sub_22EF92D44(v95, a3, a4, v140);
    sub_22EF708B4(a3, a4);
    sub_22EF708B4(v36, v54);
    sub_22EF708B4(a3, a4);
    v96 = v140[0];
LABEL_188:
    sub_22EF708B4(v36, v54);
    if (v96)
    {
      goto LABEL_169;
    }

    goto LABEL_166;
  }

  if (v71 != 2)
  {
    memset(v140, 0, 14);
    sub_22EF70CB0(a2, a4);
    sub_22EF70CB0(v36, v54);
    sub_22EF70CB0(a2, a4);
    sub_22EF70CB0(v36, v54);
    v7 = v134;
    sub_22EF92D44(v140, a2, a4, v139);
    sub_22EF708B4(a2, a4);
    sub_22EF708B4(v36, v54);
    v80 = a2;
    v81 = a4;
LABEL_187:
    sub_22EF708B4(v80, v81);
    v96 = v139[0];
    goto LABEL_188;
  }

  v87 = *(v36 + 16);
  v120 = *(v36 + 24);
  sub_22EF70CB0(a2, a4);
  sub_22EF70CB0(v36, v54);
  sub_22EF70CB0(a2, a4);
  sub_22EF70CB0(v36, v54);
  v88 = sub_22EFB603C();
  if (!v88)
  {
    v91 = v87;
    v92 = 0;
LABEL_191:
    if (__OFSUB__(v120, v91))
    {
      goto LABEL_256;
    }

    sub_22EFB604C();
    a2 = a3;
    v7 = v134;
    sub_22EF92D44(v92, a3, a4, v140);
    sub_22EF708B4(a3, a4);
    sub_22EF708B4(v36, v54);
    sub_22EF708B4(a3, a4);
    v97 = v140[0];
    sub_22EF708B4(v36, v54);
    v9 = v129;
    if (v97)
    {
      goto LABEL_169;
    }

    goto LABEL_166;
  }

  v89 = v88;
  v90 = sub_22EFB605C();
  if (!__OFSUB__(v87, v90))
  {
    v91 = v87;
    v92 = v87 - v90 + v89;
    goto LABEL_191;
  }

  __break(1u);
LABEL_259:
  __break(1u);
  while (2)
  {
    v108 = sub_22EFB67CC();
    v36 = v108;
    v111 = v128;
    if (!v108)
    {
      goto LABEL_261;
    }

LABEL_233:
    v54 = 0;
    a2 = v111 & 0xC000000000000001;
    v112 = v111 & 0xFFFFFFFFFFFFFF8;
    v113 = MEMORY[0x277D84FA0];
    while (2)
    {
      if (a2)
      {
        v108 = MEMORY[0x2318FB480](v54);
        v115 = v108;
        v116 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        goto LABEL_239;
      }

      if (v54 >= *(v112 + 16))
      {
        goto LABEL_244;
      }

      v115 = *(v111 + 8 * v54 + 32);

      v116 = v54 + 1;
      if (!__OFADD__(v54, 1))
      {
LABEL_239:
        v117 = *(v115 + 168);
        if (v117)
        {
          v114 = *(v115 + 168);
        }

        else
        {
          v117 = v113;
        }

        v108 = sub_22EF9B7D0(v117);
        ++v54;
        v111 = v128;
        if (v116 == v36)
        {
          goto LABEL_261;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    v118 = v36;
    v119 = v108;
    v109 = sub_22EFB67CC();
    v108 = v119;
    v36 = v118;
    if (v109 < v108)
    {
      goto LABEL_246;
    }

LABEL_222:
    sub_22EFA32EC(v108, v109);
    sub_22EF708B4(a2, a4);
    v54 = 0;
LABEL_223:
    a5 = v138;
    sub_22EFA3C5C(v138, v126, v125, v124 & 1);
    if (v36 || a4 >> 60 != 15 || (swift_beginAccess(), v141[0]))
    {

      goto LABEL_227;
    }

    if (qword_27DA9E390 != -1)
    {
      goto LABEL_257;
    }

LABEL_229:
    sub_22EF84BEC(a5, v54, v126);
    if (v36)
    {

      goto LABEL_227;
    }

    v137 = MEMORY[0x277D84F90];
    v111 = v128;
    if (v128 >> 62)
    {
      continue;
    }

    break;
  }

  v36 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v36)
  {
    goto LABEL_233;
  }

LABEL_261:

  sub_22EF70644(v126, v137);

LABEL_227:
  v110 = *MEMORY[0x277D85DE8];
}

void sub_22EFA75CC(void *a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22EF7E630(0xD000000000000012, 0x800000022EFC6DB0);
  if (v3 >> 60 == 15)
  {
    __break(1u);
  }

  v4 = v2;
  v5 = v3;
  v6 = sub_22EFB61BC();
  sub_22EF708B4(v4, v5);
  v7 = SelectByNameCmd(v6);

  v8 = sub_22EFB61DC();
  v10 = v9;

  v11 = sub_22EFB61BC();
  sub_22EF708C8(v8, v10);
  v24[0] = 0;
  v12 = [a1 transceive:v11 error:v24];

  v13 = v24[0];
  if (v12)
  {
    v14 = sub_22EFB61DC();
    sub_22EF708C8(v14, v15);
  }

  else
  {
    v16 = v13;
    v17 = sub_22EFB60EC();

    swift_willThrow();
    if (qword_27DA9E058 != -1)
    {
      swift_once();
    }

    v18 = sub_22EFB626C();
    __swift_project_value_buffer(v18, qword_27DAA03B8);
    v19 = sub_22EFB624C();
    v20 = sub_22EFB65CC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_22EF9447C(0xD000000000000083, 0x800000022EFC6DD0, v24);
      _os_log_impl(&dword_22EEF5000, v19, v20, "Function: %s -- Failed to transceive select CRS", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x2318FC200](v22, -1, -1);
      MEMORY[0x2318FC200](v21, -1, -1);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_22EFA783C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  LOBYTE(v7) = a6;
  LOBYTE(v8) = a5;
  if (qword_281477D68 != -1)
  {
    goto LABEL_83;
  }

LABEL_2:
  sub_22EF85014(a1, v7 & 1, a3);
  if (v6)
  {
    return;
  }

  v15 = v14;
  v49 = v7;
  v50 = a4;
  v52 = v8;
  v51 = a3;
  v53 = v12;
  v54 = v13;
  v6 = *(v14 + 16);

  v16 = (v15 + 48);
  a3 = -v6;
  a4 = -1;
  while (a4 - v6 != -1)
  {
    if (++a4 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_79;
    }

    v17 = v16 + 3;
    v19 = *(v16 - 1);
    v18 = *v16;

    LOBYTE(v7) = sub_22EF71944(v20);

    v16 = v17;
    if (v7)
    {

      swift_bridgeObjectRelease_n();
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      v21 = 0x800000022EFC6D40;
      v22 = 0xD000000000000023;
      goto LABEL_57;
    }
  }

  v8 = v54;
  v48 = a2;
  if (v54 >> 62)
  {
    v23 = sub_22EFB67CC();
  }

  else
  {
    v23 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v23)
  {
LABEL_28:

    v57 = v8;
    v55 = MEMORY[0x277D84F90];
    a2 = v53;
    if (v53 >> 62)
    {
      goto LABEL_86;
    }

    v29 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_30:

    v30 = MEMORY[0x277D84F90];
    if (v29)
    {
      v7 = 0;
      a4 = a2 & 0xC000000000000001;
      a3 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (a4)
        {
          v31 = MEMORY[0x2318FB480](v7, a2);
          v8 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_41:
            __break(1u);
LABEL_42:
            v8 = v54;
            v30 = v55;
            break;
          }
        }

        else
        {
          if (v7 >= *(a3 + 16))
          {
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            v45 = a1;
            swift_once();
            a1 = v45;
            goto LABEL_2;
          }

          v31 = *(a2 + 8 * v7 + 32);

          v8 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_41;
          }
        }

        if (*(v31 + 161))
        {
          sub_22EFB673C();
          v32 = *(v55 + 16);
          sub_22EFB676C();
          a2 = v53;
          sub_22EFB677C();
          a1 = sub_22EFB674C();
        }

        else
        {
        }

        ++v7;
        if (v8 == v29)
        {
          goto LABEL_42;
        }
      }
    }

    v56 = v30;
    a3 = v48;
    v6 = 0;
    v33 = v50;
    v34 = v52;
    if (v51)
    {
      if (v52)
      {
        *v50 = 1;
      }

      a2 = v8;
LABEL_53:
      sub_22EFA3C5C(a2, v48, v33, v34 & 1);
      if (qword_27DA9E390 == -1)
      {
LABEL_54:
        v39 = v56;
        sub_22EF84BEC(a2, v56, v48);
        if (v51)
        {
        }

        else
        {
          v55 = MEMORY[0x277D84F90];
          if (v53 >> 62)
          {
            v40 = sub_22EFB67CC();
          }

          else
          {
            v40 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v40)
          {
            v52 = v39;
            v41 = 0;
            while (1)
            {
              if ((v53 & 0xC000000000000001) != 0)
              {
                v6 = MEMORY[0x2318FB480](v41, v53);
                v8 = v41 + 1;
                if (__OFADD__(v41, 1))
                {
LABEL_76:
                  __break(1u);
LABEL_77:
                  v44 = v55;
                  a3 = v48;
                  goto LABEL_80;
                }
              }

              else
              {
                if (v41 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_86:
                  v29 = sub_22EFB67CC();
                  goto LABEL_30;
                }

                v6 = *(v53 + 8 * v41 + 32);

                v8 = v41 + 1;
                if (__OFADD__(v41, 1))
                {
                  goto LABEL_76;
                }
              }

              v42 = *(v6 + 168);
              if (v42)
              {
                v43 = *(v6 + 168);
              }

              else
              {
                v42 = MEMORY[0x277D84FA0];
              }

              sub_22EF9B7D0(v42);
              ++v41;
              if (v8 == v40)
              {
                goto LABEL_77;
              }
            }
          }

LABEL_79:
          v44 = MEMORY[0x277D84F90];
LABEL_80:

          sub_22EF70644(a3, v44);
        }

        sub_22EFA75CC(a3);
        return;
      }

LABEL_89:
      swift_once();
      goto LABEL_54;
    }

    v35 = sub_22EFA011C(&v57, v49 & 1);
    if (v57 >> 62)
    {
      v46 = v35;
      v36 = sub_22EFB67CC();
      v35 = v46;
      if (v36 >= v46)
      {
LABEL_50:
        sub_22EFA32EC(v35, v36);
        v37 = sub_22EFA0404(&v56, v49 & 1);
        if (v56 >> 62)
        {
          v47 = v37;
          v38 = sub_22EFB67CC();
          v37 = v47;
          if (v38 >= v47)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v38 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v38 >= v37)
          {
LABEL_52:
            sub_22EFA32EC(v37, v38);
            a2 = v57;
            v33 = v50;
            v34 = v52;
            goto LABEL_53;
          }
        }

        __break(1u);
        return;
      }
    }

    else
    {
      v36 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36 >= v35)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
    goto LABEL_89;
  }

  v24 = 0;
  a2 = v54 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v54 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2318FB480](v24, v8);
      a3 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v24 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      v7 = *(v8 + 8 * v24 + 32);

      a3 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    a4 = *(v7 + 112);
    v25 = *(v7 + 120);
    v26 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      break;
    }

    if (!v26)
    {

      v27 = (v25 & 0xFF000000000000) == 0;
      goto LABEL_22;
    }

    v28 = a4;
    a4 >>= 32;
LABEL_21:
    v27 = v28 == a4;
LABEL_22:
    v8 = v54;
    if (v27)
    {

      swift_bridgeObjectRelease_n();

      goto LABEL_56;
    }

    ++v24;
    if (a3 == v23)
    {
      goto LABEL_28;
    }
  }

  if (v26 == 2)
  {
    v28 = *(a4 + 16);
    a4 = *(a4 + 24);

    goto LABEL_21;
  }

  swift_bridgeObjectRelease_n();

LABEL_56:
  sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
  v22 = 0xD00000000000003ELL;
  v21 = 0x800000022EFC6D70;
LABEL_57:
  sub_22EF74470(v22, v21, 8, 0);
  swift_willThrow();
}

uint64_t sub_22EFA7FAC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a2 >> 60 != 15)
  {
    sub_22EF708C8(result, a2);
    sub_22EF708C8(a4, a5);

    return sub_22EF708C8(a6, a7);
  }

  return result;
}

uint64_t sub_22EFA80DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22EFA814C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E778, &unk_22EFBD450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EFA81BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E768, &qword_22EFBD288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EFA822C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E768, &qword_22EFBD288);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EFA82C8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22EFB684C() & 1;
  }
}

uint64_t sub_22EFA8330(uint64_t *a1, int a2)
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

uint64_t sub_22EFA8378(uint64_t result, int a2, int a3)
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

unint64_t sub_22EFA83CC()
{
  result = qword_27DA9E7B8;
  if (!qword_27DA9E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E7B8);
  }

  return result;
}

uint64_t sub_22EFA845C(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_22EFAAFAC(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_22EFAB064(v3, v4);
    }

    else
    {
      v6 = sub_22EFAB0E0(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

uint64_t sub_22EFA8518(uint64_t a1)
{
  v49[5] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E768, &qword_22EFBD288);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v44 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E800, &qword_22EFBD430);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E808, &qword_22EFBD438);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - v14;
  v45 = a1;
  *&v46 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E810, &unk_22EFBD440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E788, &qword_22EFBD2A8);
  if (swift_dynamicCast())
  {
    sub_22EEF729C(v47, v49);
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    sub_22EFB608C();
    v47[0] = v46;
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    goto LABEL_42;
  }

  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v16 = sub_22EF7CFF8(v47, &qword_27DA9E790, &qword_22EFBD2B0);
  v47[0] = xmmword_22EFBB8D0;
  MEMORY[0x28223BE20](v16);
  v42[-2] = &v45;
  sub_22EFA9028(sub_22EFACAD4);
  v17 = *&v11[*(v8 + 48)];
  sub_22EFACB94(v11, v15, &qword_27DA9E808, &qword_22EFBD438);
  v18 = *(&v47[0] + 1) >> 62;
  if ((*(&v47[0] + 1) >> 62) <= 1)
  {
    if (!v18)
    {
      if (v17 == BYTE14(v47[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (__OFSUB__(DWORD1(v47[0]), v47[0]))
    {
      goto LABEL_46;
    }

    if (v17 != DWORD1(v47[0]) - LODWORD(v47[0]))
    {
LABEL_13:
      if (v18 == 2)
      {
        v23 = *(*&v47[0] + 24);
      }

      else if (v18 == 1)
      {
        v23 = *&v47[0] >> 32;
      }

      else
      {
        v23 = BYTE14(v47[0]);
      }

      goto LABEL_40;
    }

LABEL_18:
    v42[0] = 0;
    v42[1] = a1;
    v24 = 0;
    memset(v49, 0, 15);
    v25 = *(v12 + 44);
LABEL_19:
    v43 = v24;
    while (1)
    {
      sub_22EFACBFC(&v15[v25], v7, &qword_27DA9E768, &qword_22EFBD288);
      v27 = sub_22EFB622C();
      v28 = *(v27 - 8);
      v29 = *(v28 + 48);
      v30 = v29(v7, 1, v27);
      sub_22EF7CFF8(v7, &qword_27DA9E768, &qword_22EFBD288);
      if (v30 != 1)
      {
        if (v29(&v15[v25], 1, v27) == 1)
        {
          goto LABEL_48;
        }

        sub_22EFACB2C(&qword_27DA9E480, MEMORY[0x277CC92E0]);
        sub_22EFB661C();
        if (BYTE1(v46) != 1)
        {
          v38 = v43;
          *(v49 + v43) = v46;
          v24 = (v38 + 1);
          if ((v24 >> 8))
          {
            goto LABEL_47;
          }

          if ((v38 + 1) == 14)
          {
            *&v46 = v49[0];
            *(&v46 + 6) = *(v49 + 6);
            sub_22EFB617C();
            v24 = 0;
          }

          goto LABEL_19;
        }
      }

      v31 = *(v15 + 1);
      v32 = *(*v15 + 16);
      if (v31 == v32)
      {
        if (v43)
        {
          *&v46 = v49[0];
          *(&v46 + 6) = *(v49 + 6);
          sub_22EFB617C();
        }

        sub_22EF7CFF8(v15, &qword_27DA9E808, &qword_22EFBD438);
        goto LABEL_42;
      }

      if (v31 >= v32)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      v33 = *v15 + 16 * v31;
      v34 = *(v33 + 32);
      v35 = *(v33 + 40);
      *(v15 + 1) = v31 + 1;
      v36 = v35 >> 62;
      if ((v35 >> 62) > 1)
      {
        if (v36 == 2)
        {
          v37 = *(v34 + 16);
LABEL_20:
          sub_22EF70B68(v34, v35);
        }
      }

      else if (v36)
      {
        goto LABEL_20;
      }

      v26 = v44;
      sub_22EFB623C();
      (*(v28 + 56))(v26, 0, 1, v27);
      sub_22EFA822C(v26, &v15[v25]);
    }
  }

  if (v18 == 2)
  {
    v20 = *(*&v47[0] + 16);
    v19 = *(*&v47[0] + 24);
    v21 = __OFSUB__(v19, v20);
    v22 = v19 - v20;
    if (v21)
    {
      goto LABEL_45;
    }

    if (v17 != v22)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    goto LABEL_18;
  }

  v23 = 0;
LABEL_40:
  if (v23 < v17)
  {
    goto LABEL_44;
  }

  sub_22EFB616C();
  sub_22EF7CFF8(v15, &qword_27DA9E808, &qword_22EFBD438);
LABEL_42:
  v39 = v47[0];
  sub_22EF70B68(*&v47[0], *(&v47[0] + 1));

  sub_22EF708C8(v39, *(&v39 + 1));
  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

uint64_t sub_22EFA8B7C()
{
  v17 = sub_22EFB637C();
  v0 = *(v17 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22EFB635C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22EFB636C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22EFB634C();
  __swift_allocate_value_buffer(v14, qword_27DA9E7C0);
  __swift_project_value_buffer(v14, qword_27DA9E7C0);
  (*(v10 + 104))(v13, *MEMORY[0x277CC5450], v9);
  (*(v5 + 104))(v8, *MEMORY[0x277CC5438], v4);
  (*(v0 + 104))(v3, *MEMORY[0x277CC5460], v17);
  return sub_22EFB633C();
}

id sub_22EFA8F84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OpaqueDataService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22EFA8FDC(void (*a1)(uint64_t, uint64_t))
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_22EFA9028(a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EFA9028(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v23 = *MEMORY[0x277D85DE8];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_22EF708C8(v5, v4);
      *&v22 = v5;
      *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_22EFBB8D0;
      sub_22EF708C8(0, 0xC000000000000000);
      result = sub_22EFA932C(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_22EF708C8(v5, v4);
      *&v22 = v5;
      WORD4(v22) = v4;
      BYTE10(v22) = BYTE2(v4);
      BYTE11(v22) = BYTE3(v4);
      BYTE12(v22) = BYTE4(v4);
      BYTE13(v22) = BYTE5(v4);
      BYTE14(v22) = BYTE6(v4);
      result = (a1)(&v22, &v22 + BYTE6(v4));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v2 = v8;
    v2[1] = v9;
    goto LABEL_15;
  }

  if (v6 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    result = (a1)(&v22, &v22);
LABEL_15:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_22EF708C8(v5, v4);
  *&v22 = v5;
  *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_22EFBB8D0;
  sub_22EF708C8(0, 0xC000000000000000);
  sub_22EFB611C();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  result = sub_22EFB603C();
  if (result)
  {
    v13 = result;
    v14 = sub_22EFB605C();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_22EFB604C();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = (a1)(v13 + v15, v13 + v15 + v19);
        *v2 = v22;
        v2[1] = v10 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22EFA92D8(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = a1(0, 0);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_22EFA932C(void (*a1)(uint64_t, uint64_t))
{
  result = sub_22EFB612C();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;
  v6 = *(v1 + 1);

  result = sub_22EFB603C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_22EFB605C();
  v8 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v5 - v4;
  v10 = sub_22EFB604C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v7 + v8, v7 + v8 + v11);
}

uint64_t sub_22EFA9460(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 40);
  sub_22EFB68DC();
  a3(v12, a1, a2);
  v9 = sub_22EFB691C();

  return a4(a1, a2, v9);
}

unint64_t sub_22EFA94F4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22EFB666C();

  return sub_22EFA99F0(a1, v5);
}

unint64_t sub_22EFA9538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22EFB684C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22EFA95F0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v46[3] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v44 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v41 = v14;
    v40 = HIDWORD(a1) - a1;
    v42 = v10;
    v43 = BYTE6(a2);
    v37 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v43;
          if (v13)
          {
            v26 = v40;
            if (v41)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          goto LABEL_61;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        goto LABEL_61;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v46[0] = v17;
          LOWORD(v46[1]) = v16;
          BYTE2(v46[1]) = BYTE2(v16);
          BYTE3(v46[1]) = BYTE3(v16);
          BYTE4(v46[1]) = BYTE4(v16);
          BYTE5(v46[1]) = BYTE5(v16);
          sub_22EF70B68(v17, v16);
          sub_22EF92D44(v46, v9, v8, &v45);
          sub_22EF708C8(v17, v16);
          if (v45)
          {
            goto LABEL_61;
          }

          v10 = v42;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_22EF70B68(v17, v16);
        v31 = sub_22EFB603C();
        if (v31)
        {
          v33 = sub_22EFB605C();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_22EF70B68(v17, v16);
        v31 = sub_22EFB603C();
        if (v31)
        {
          v32 = sub_22EFB605C();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        sub_22EFB604C();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_22EF92D44(v34, a1, a2, v46);
        sub_22EF708C8(v17, v16);
        if (v46[0])
        {
          goto LABEL_61;
        }

        v4 = v37;
        v10 = v42;
        goto LABEL_13;
      }

      memset(v46, 0, 14);
      sub_22EF70B68(v17, v16);
      sub_22EF92D44(v46, v9, v8, &v45);
      sub_22EF708C8(v17, v16);
      if (v45)
      {
        goto LABEL_61;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v44) & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_61:
  v35 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_22EFA99F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22EFACA78(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2318FB3F0](v9, a1);
      sub_22EFA0ECC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_22EFA9AB8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_8:
      sub_22EFB63EC();
      sub_22EFACB2C(&qword_27DA9E418, MEMORY[0x277CC5540]);
      result = sub_22EFB629C();
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_22EFAA124(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5540], &qword_27DA9E418, MEMORY[0x277CC5540]);
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EFA9CDC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_8:
      sub_22EFB63FC();
      sub_22EFACB2C(&qword_27DA9E7F8, MEMORY[0x277CC5550]);
      result = sub_22EFB629C();
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_22EFAA124(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5550], &qword_27DA9E7F8, MEMORY[0x277CC5550]);
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EFA9F00(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_8:
      sub_22EFB640C();
      sub_22EFACB2C(&qword_27DA9E7F0, MEMORY[0x277CC5560]);
      result = sub_22EFB629C();
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_22EFAA124(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_27DA9E7F0, MEMORY[0x277CC5560]);
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EFAA124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_22EFB603C();
  if (!result || (result = sub_22EFB605C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22EFB604C();
      a5(0);
      sub_22EFACB2C(a6, a7);
      return sub_22EFB629C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22EFAA204(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_22EFAA300(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_22EF70B68(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_22EF70B68(v18, *(&v18 + 1));
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

uint64_t sub_22EFAA464(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E768, &qword_22EFBD288);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v46 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E808, &qword_22EFBD438);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v37 - v16;
  v48 = a4;
  *v17 = a4;
  *(v17 + 1) = 0;
  v18 = *(v15 + 52);
  v19 = sub_22EFB622C();
  v20 = *(v19 - 8);
  v44 = *(v20 + 56);
  v45 = v20 + 56;
  result = v44(&v17[v18], 1, 1, v19);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
    goto LABEL_24;
  }

  if (a3 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v41 = a2;
  v42 = a1;
  v22 = 0;
  v23 = 0;
  v49 = (v20 + 48);
  v24 = v48 + 40;
  v25 = 1;
  v38 = v48 + 40;
  v39 = a3;
  while (2)
  {
    v43 = v22;
    v40 = v25;
    for (i = (v24 + 16 * v23); ; i += 2)
    {
      v28 = v47;
      sub_22EFACBFC(&v17[v18], v47, &qword_27DA9E768, &qword_22EFBD288);
      v29 = *v49;
      v30 = (*v49)(v28, 1, v19);
      result = sub_22EF7CFF8(v28, &qword_27DA9E768, &qword_22EFBD288);
      if (v30 != 1)
      {
        result = v29(&v17[v18], 1, v19);
        if (result == 1)
        {
          goto LABEL_28;
        }

        sub_22EFACB2C(&qword_27DA9E480, MEMORY[0x277CC92E0]);
        result = sub_22EFB661C();
        if (v51 != 1)
        {
          break;
        }
      }

      v31 = *(v48 + 16);
      if (v23 == v31)
      {
        goto LABEL_22;
      }

      if (v23 >= v31)
      {
        __break(1u);
        goto LABEL_27;
      }

      v32 = *(i - 1);
      v33 = *i;
      *(v17 + 1) = v23 + 1;
      v34 = v33 >> 62;
      if ((v33 >> 62) > 1)
      {
        if (v34 == 2)
        {
          v35 = *(v32 + 16);
LABEL_6:
          sub_22EF70B68(v32, v33);
        }
      }

      else if (v34)
      {
        goto LABEL_6;
      }

      v27 = v46;
      sub_22EFB623C();
      v44(v27, 0, 1, v19);
      sub_22EFA822C(v27, &v17[v18]);
      ++v23;
    }

    v22 = v40;
    v36 = v41;
    *v41 = v50;
    a3 = v39;
    if (v22 != v39)
    {
      v41 = v36 + 1;
      v25 = v22 + 1;
      v24 = v38;
      if (!__OFADD__(v22, 1))
      {
        continue;
      }

      __break(1u);
LABEL_22:
      a1 = v42;
      a3 = v43;
      goto LABEL_24;
    }

    break;
  }

  a1 = v42;
LABEL_24:
  sub_22EFACB94(v17, a1, &qword_27DA9E808, &qword_22EFBD438);
  return a3;
}

uint64_t sub_22EFAA814(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E768, &qword_22EFBD288);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v55 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v45 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E778, &unk_22EFBD450);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = (&v45 - v22);
  *v23 = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = a7;
  v56 = a6;
  v23[4] = a6;
  v24 = *(v21 + 52);
  v25 = sub_22EFB622C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v59 = v25;
  v53 = v27;
  v54 = v26 + 56;
  result = (v27)(v23 + v24, 1, 1);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_25;
  }

  if (!a3)
  {
    goto LABEL_25;
  }

  if (a3 < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  v48 = a2;
  v49 = a1;
  v29 = 0;
  v58 = (v26 + 48);
  v30 = a7 >> 1;
  v31 = a5 + 8;
  v32 = 1;
  v33 = v56;
  v51 = a7 >> 1;
  v34 = v59;
  v45 = a5 + 8;
  v46 = a3;
  while (2)
  {
    v50 = v29;
    v47 = v32;
    v52 = v33;
    for (i = (v31 + 16 * v33); ; i += 2)
    {
      v37 = v57;
      sub_22EFACBFC(v23 + v24, v57, &qword_27DA9E768, &qword_22EFBD288);
      v38 = *v58;
      v39 = (*v58)(v37, 1, v34);
      result = sub_22EF7CFF8(v37, &qword_27DA9E768, &qword_22EFBD288);
      if (v39 != 1)
      {
        v34 = v59;
        result = v38(v23 + v24, 1, v59);
        if (result == 1)
        {
          goto LABEL_29;
        }

        sub_22EFACB2C(&qword_27DA9E480, MEMORY[0x277CC92E0]);
        result = sub_22EFB661C();
        if (v61 != 1)
        {
          break;
        }
      }

      if (v30 == v33)
      {
        goto LABEL_23;
      }

      if (v52 < v56 || v33 >= v30)
      {
        __break(1u);
        goto LABEL_28;
      }

      v40 = *(i - 1);
      v41 = *i;
      v23[4] = v33 + 1;
      v42 = v41 >> 62;
      if ((v41 >> 62) > 1)
      {
        if (v42 == 2)
        {
          v43 = *(v40 + 16);
LABEL_6:
          sub_22EF70B68(v40, v41);
        }
      }

      else if (v42)
      {
        goto LABEL_6;
      }

      v36 = v55;
      sub_22EFB623C();
      v34 = v59;
      v53(v36, 0, 1, v59);
      sub_22EFA822C(v36, v23 + v24);
      ++v33;
      v30 = v51;
    }

    v29 = v47;
    v44 = v48;
    *v48 = v60;
    a3 = v46;
    if (v29 != v46)
    {
      v48 = v44 + 1;
      v32 = v29 + 1;
      v31 = v45;
      if (!__OFADD__(v29, 1))
      {
        continue;
      }

      __break(1u);
LABEL_23:
      a1 = v49;
      a3 = v50;
      goto LABEL_25;
    }

    break;
  }

  a1 = v49;
LABEL_25:
  sub_22EFACB94(v23, a1, &qword_27DA9E778, &unk_22EFBD450);
  return a3;
}

void *sub_22EFAAC08(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v23 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v23;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v26 = result;
    v27 = a3;
    result = 0;
    v9 = 0;
    v25 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v28 = v9;
      v14 = a4;
      v15 = *(a4 + 48) + 56 * (__clz(__rbit64(v7)) | (v9 << 6));
      v16 = *v15;
      v7 &= v7 - 1;
      v17 = *(v15 + 24);
      v18 = *(v15 + 32);
      v19 = *(v15 + 40);
      v20 = *(v15 + 48);
      v21 = *(v15 + 8);
      *v8 = *v15;
      *(v8 + 8) = v21;
      *(v8 + 24) = v17;
      *(v8 + 32) = v18;
      *(v8 + 40) = v19;
      *(v8 + 48) = v20;
      if (v11 == v27)
      {
        sub_22EF70B68(v16, v21);
        sub_22EF70B68(v17, v18);
        sub_22EF70B68(v19, v20);
        v5 = v25;
        result = v26;
        a4 = v14;
        a3 = v27;
        v23 = v28;
        goto LABEL_24;
      }

      v8 += 56;
      sub_22EF70B68(v16, v21);
      sub_22EF70B68(v17, v18);
      sub_22EF70B68(v19, v20);
      result = v11;
      v22 = __OFADD__(v11++, 1);
      a4 = v14;
      v9 = v28;
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v24 = v9 + 1;
    }

    else
    {
      v24 = v10;
    }

    v23 = v24 - 1;
    a3 = result;
    v5 = v25;
    result = v26;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}