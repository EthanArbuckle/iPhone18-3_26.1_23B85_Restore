uint64_t sub_22EF947D0(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22EF7E10C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22EF948BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E430, &unk_22EFBD190);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_22EF94930(uint64_t a1)
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
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      sub_22EFB68DC();
      if (v20)
      {
        MEMORY[0x2318FB660](0);
        sub_22EFB64CC();
      }

      else
      {
        MEMORY[0x2318FB660](1);
      }

      result = sub_22EFB691C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22EF94BAC(uint64_t a1)
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
    v8 = (v3 + 56);
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      result = MEMORY[0x2318FB640](*(v6 + 40), v18, 1);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22EF94DDC(uint64_t a1)
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
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22EFB68DC();
      sub_22EFB61EC();
      result = sub_22EFB691C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22EF9503C(uint64_t a1)
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
    v34 = v2;
    v35 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
      v36 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      sub_22EFB68DC();
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

LABEL_32:
        __break(1u);
        return result;
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
      v3 = v35;
      v11 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22EF952E4(uint64_t a1)
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
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 56 * (v16 | (v7 << 6));
      v34 = *(v19 + 16);
      v35 = *v19;
      v20 = *(v19 + 32);
      v21 = *(v19 + 40);
      v22 = *(v19 + 48);
      v23 = *(v6 + 40);
      sub_22EFB68DC();
      sub_22EFB61EC();
      MEMORY[0x2318FB660](v34);
      result = sub_22EFB691C();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 56 * v14;
      *v15 = v35;
      *(v15 + 16) = v34;
      *(v15 + 32) = v20;
      *(v15 + 40) = v21;
      *(v15 + 48) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void *sub_22EF9557C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_22EF9560C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_22EF9560C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v294 = *MEMORY[0x277D85DE8];
  v279 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_161;
  }

  v239 = 0;
  v5 = 0;
  v205 = a4 + 56;
  v6 = 1 << *(a4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  v204 = (v6 + 63) >> 6;
  v9 = a3;
  v255 = a3 + 56;
  while (2)
  {
    while (2)
    {
      v4 = v9;
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v237 = (v8 - 1) & v8;
      }

      else
      {
        v11 = v5;
        do
        {
          v5 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_320;
          }

          if (v5 >= v204)
          {
            goto LABEL_318;
          }

          v12 = *(v205 + 8 * v5);
          ++v11;
        }

        while (!v12);
        v10 = __clz(__rbit64(v12));
        v237 = (v12 - 1) & v12;
      }

      v227 = v5;
      v13 = (*(a4 + 48) + 56 * (v10 | (v5 << 6)));
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = v13[3];
      v19 = v13[4];
      v18 = v13[5];
      v20 = v13[6];
      v21 = *(v9 + 40);
      sub_22EFB68DC();
      sub_22EF70B68(v14, v15);
      v229 = v19;
      v231 = v17;
      sub_22EF70B68(v17, v19);
      v233 = v20;
      v235 = v18;
      sub_22EF70B68(v18, v20);
      v282 = v15;
      sub_22EFB61EC();
      MEMORY[0x2318FB660](v16);
      v22 = sub_22EFB691C();
      v4 = v9;
      v23 = -1 << *(v9 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      v26 = v255;
      v27 = 1 << v24;
      if (((1 << v24) & *(v255 + 8 * (v24 >> 6))) == 0)
      {
LABEL_6:
        v9 = v4;
        sub_22EF708C8(v14, v282);
        sub_22EF708C8(v231, v229);
        sub_22EF708C8(v235, v233);
        a4 = v279;
        v8 = v237;
        v5 = v227;
        continue;
      }

      break;
    }

    v28 = ~v23;
    v29 = v15 >> 62;
    if (v14)
    {
      v30 = 0;
    }

    else
    {
      v30 = v15 == 0xC000000000000000;
    }

    v31 = !v30;
    v221 = HIDWORD(v14);
    v32 = __OFSUB__(HIDWORD(v14), v14);
    v249 = v32;
    v245 = v16;
    v247 = HIDWORD(v14) - v14;
    v33 = BYTE6(v15);
    v225 = v14;
    v217 = (v14 >> 32) - v14;
    v219 = v14 >> 32;
    v251 = v14;
    v242 = ~v23;
    v276 = v15 >> 62;
    v240 = v31;
    while (1)
    {
      v35 = (*(v4 + 48) + 56 * v24);
      v36 = *v35;
      v37 = v35[1];
      v34 = v35[2];
      v38 = v35[3];
      v40 = v35[4];
      v39 = v35[5];
      v41 = v35[6];
      v42 = v37 >> 62;
      if (v37 >> 62 == 3)
      {
        if (v36)
        {
          v43 = 0;
        }

        else
        {
          v43 = v37 == 0xC000000000000000;
        }

        v45 = !v43 || v29 < 3;
        if (((v45 | v31) & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_50:
        v46 = 0;
        if (v29 <= 1)
        {
          goto LABEL_47;
        }

        goto LABEL_51;
      }

      if (v42 <= 1)
      {
        break;
      }

      if (v42 != 2)
      {
        goto LABEL_50;
      }

      v48 = *(v36 + 16);
      v47 = *(v36 + 24);
      v49 = __OFSUB__(v47, v48);
      v46 = v47 - v48;
      if (v49)
      {
        goto LABEL_328;
      }

      if (v29 <= 1)
      {
        goto LABEL_47;
      }

LABEL_51:
      if (v29 == 2)
      {
        v52 = *(v14 + 16);
        v51 = *(v14 + 24);
        v49 = __OFSUB__(v51, v52);
        v50 = v51 - v52;
        if (v49)
        {
          goto LABEL_324;
        }

        goto LABEL_53;
      }

      if (!v46)
      {
        goto LABEL_26;
      }

LABEL_27:
      v24 = (v24 + 1) & v28;
      v25 = v24 >> 6;
      v27 = 1 << v24;
      if ((*(v26 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
      {
        goto LABEL_6;
      }
    }

    if (!v42)
    {
      v46 = BYTE6(v37);
      if (v29 <= 1)
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    }

    LODWORD(v46) = HIDWORD(v36) - v36;
    if (__OFSUB__(HIDWORD(v36), v36))
    {
      goto LABEL_327;
    }

    v46 = v46;
    if (v29 > 1)
    {
      goto LABEL_51;
    }

LABEL_47:
    v50 = v33;
    if (v29)
    {
      v50 = v247;
      if (v249)
      {
        goto LABEL_323;
      }
    }

LABEL_53:
    if (v46 != v50)
    {
      goto LABEL_27;
    }

    if (v46 < 1)
    {
      goto LABEL_26;
    }

    v280 = v34;
    if (v42 > 1)
    {
      if (v42 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (v29 == 2)
        {
          v208 = *(v14 + 16);
          v202 = *(v14 + 24);
          v257 = v36;
          v82 = v39;
          sub_22EF70B68(v36, v37);
          v260 = v38;
          v267 = v40;
          sub_22EF70B68(v38, v40);
          v270 = v82;
          v273 = v41;
          sub_22EF70B68(v82, v41);
          v83 = sub_22EFB603C();
          if (v83)
          {
            v84 = sub_22EFB605C();
            v85 = v208;
            if (__OFSUB__(v208, v84))
            {
              goto LABEL_358;
            }

            v83 += v208 - v84;
          }

          else
          {
            v85 = v208;
          }

          v96 = v202 - v85;
          if (__OFSUB__(v202, v85))
          {
            goto LABEL_347;
          }

          v97 = sub_22EFB604C();
          if (!v83)
          {
            goto LABEL_383;
          }

          goto LABEL_152;
        }

        if (v29 == 1)
        {
          if (v219 < v225)
          {
            goto LABEL_343;
          }

          v257 = v36;
          v69 = v39;
          sub_22EF70B68(v36, v37);
          v260 = v38;
          v267 = v40;
          sub_22EF70B68(v38, v40);
          v270 = v69;
          v273 = v41;
          sub_22EF70B68(v69, v41);
          v70 = sub_22EFB603C();
          if (!v70)
          {
            goto LABEL_366;
          }

          v71 = v70;
          v72 = sub_22EFB605C();
          if (__OFSUB__(v225, v72))
          {
            goto LABEL_349;
          }

          v57 = (v225 - v72 + v71);
          v58 = sub_22EFB604C();
          if (!v57)
          {
            goto LABEL_367;
          }

LABEL_83:
          if (v58 >= v217)
          {
            v73 = v217;
          }

          else
          {
            v73 = v58;
          }

          v74 = memcmp(__s1, v57, v73);
          sub_22EF708C8(v257, v37);
          sub_22EF708C8(v260, v267);
          sub_22EF708C8(v270, v273);
          v14 = v251;
          v4 = a3;
          goto LABEL_156;
        }

        v75 = v4;
        __s2 = v14;
        v285 = BYTE2(v14);
        v286 = BYTE3(v14);
        v287 = v221;
        v288 = BYTE5(v14);
        v289 = BYTE6(v14);
        v290 = HIBYTE(v14);
        v291 = v282;
        v292 = WORD2(v282);
        v74 = memcmp(__s1, &__s2, v33);
LABEL_144:
        v4 = v75;
        goto LABEL_156;
      }

      v207 = *(v36 + 16);
      v258 = v36;
      v59 = v39;
      sub_22EF70B68(v36, v37);
      v261 = v38;
      v268 = v40;
      sub_22EF70B68(v38, v40);
      v271 = v59;
      v274 = v41;
      sub_22EF70B68(v59, v41);
      v60 = sub_22EFB603C();
      if (v60)
      {
        v61 = v60;
        v62 = sub_22EFB605C();
        if (__OFSUB__(v207, v62))
        {
          goto LABEL_333;
        }

        v63 = (v207 - v62 + v61);
      }

      else
      {
        v63 = 0;
      }

      sub_22EFB604C();
      v75 = a3;
      v14 = v251;
      if (v276 == 2)
      {
        v89 = *(v251 + 16);
        v210 = *(v251 + 24);
        v76 = sub_22EFB603C();
        if (v76)
        {
          v90 = sub_22EFB605C();
          if (__OFSUB__(v89, v90))
          {
            goto LABEL_360;
          }

          v76 += v89 - v90;
        }

        if (__OFSUB__(v210, v89))
        {
          goto LABEL_350;
        }

        v91 = sub_22EFB604C();
        if (v91 >= v210 - v89)
        {
          v79 = v210 - v89;
        }

        else
        {
          v79 = v91;
        }

        if (!v63)
        {
          goto LABEL_391;
        }

        v14 = v251;
        if (!v76)
        {
          goto LABEL_388;
        }

        goto LABEL_140;
      }

      if (v276 == 1)
      {
        if (v219 < v225)
        {
          goto LABEL_345;
        }

        v76 = sub_22EFB603C();
        if (v76)
        {
          v77 = sub_22EFB605C();
          if (__OFSUB__(v225, v77))
          {
            goto LABEL_361;
          }

          v76 += v225 - v77;
        }

        v14 = v251;
        v78 = sub_22EFB604C();
        v79 = v217;
        if (v78 < v217)
        {
          v79 = v78;
        }

        if (!v63)
        {
          goto LABEL_381;
        }

        if (!v76)
        {
          goto LABEL_380;
        }

LABEL_140:
        if (v63 == v76)
        {
          sub_22EF708C8(v258, v37);
          sub_22EF708C8(v261, v268);
          sub_22EF708C8(v271, v274);
          v33 = BYTE6(v282);
          v26 = v255;
          v28 = v242;
          v16 = v245;
          v29 = v276;
          v4 = a3;
          v31 = v240;
          v34 = v280;
LABEL_26:
          if (v34 == v16)
          {
            goto LABEL_158;
          }

          goto LABEL_27;
        }

        v74 = memcmp(v63, v76, v79);
        sub_22EF708C8(v258, v37);
        sub_22EF708C8(v261, v268);
        sub_22EF708C8(v271, v274);
        v4 = a3;
        goto LABEL_156;
      }

      v92 = BYTE6(v282);
      *__s1 = v251;
      __s1[4] = v221;
      *&__s1[5] = *(&v251 + 5);
      __s1[7] = HIBYTE(v251);
      *&__s1[8] = v282;
      *&__s1[12] = WORD2(v282);
      if (!v63)
      {
        goto LABEL_370;
      }

LABEL_143:
      v74 = memcmp(v63, __s1, v92);
      sub_22EF708C8(v258, v37);
      sub_22EF708C8(v261, v268);
      sub_22EF708C8(v271, v274);
      goto LABEL_144;
    }

    if (v42)
    {
      v64 = v36;
      if (v36 > v36 >> 32)
      {
        goto LABEL_330;
      }

      v258 = v36;
      v65 = v39;
      sub_22EF70B68(v36, v37);
      v261 = v38;
      v268 = v40;
      sub_22EF70B68(v38, v40);
      v271 = v65;
      v274 = v41;
      sub_22EF70B68(v65, v41);
      v66 = sub_22EFB603C();
      if (v66)
      {
        v67 = v66;
        v68 = sub_22EFB605C();
        if (__OFSUB__(v64, v68))
        {
          goto LABEL_334;
        }

        v63 = (v64 - v68 + v67);
      }

      else
      {
        v63 = 0;
      }

      sub_22EFB604C();
      v75 = a3;
      v14 = v251;
      if (v276 == 2)
      {
        v93 = *(v251 + 16);
        v211 = *(v251 + 24);
        v76 = sub_22EFB603C();
        if (v76)
        {
          v94 = sub_22EFB605C();
          if (__OFSUB__(v93, v94))
          {
            goto LABEL_362;
          }

          v76 += v93 - v94;
        }

        if (__OFSUB__(v211, v93))
        {
          goto LABEL_352;
        }

        v95 = sub_22EFB604C();
        if (v95 >= v211 - v93)
        {
          v79 = v211 - v93;
        }

        else
        {
          v79 = v95;
        }

        if (!v63)
        {
          goto LABEL_389;
        }

        v14 = v251;
        if (!v76)
        {
          goto LABEL_392;
        }

        goto LABEL_140;
      }

      if (v276 == 1)
      {
        if (v219 < v225)
        {
          goto LABEL_351;
        }

        v76 = sub_22EFB603C();
        if (v76)
        {
          v80 = sub_22EFB605C();
          if (__OFSUB__(v225, v80))
          {
            goto LABEL_363;
          }

          v76 += v225 - v80;
        }

        v14 = v251;
        v81 = sub_22EFB604C();
        v79 = v217;
        if (v81 < v217)
        {
          v79 = v81;
        }

        if (!v63)
        {
          goto LABEL_387;
        }

        if (!v76)
        {
          goto LABEL_390;
        }

        goto LABEL_140;
      }

      v92 = BYTE6(v282);
      *__s1 = v251;
      __s1[4] = v221;
      *&__s1[5] = *(&v251 + 5);
      __s1[7] = HIBYTE(v251);
      *&__s1[8] = v282;
      *&__s1[12] = WORD2(v282);
      if (!v63)
      {
        goto LABEL_386;
      }

      goto LABEL_143;
    }

    *__s1 = v36;
    *&__s1[8] = v37;
    __s1[10] = BYTE2(v37);
    __s1[11] = BYTE3(v37);
    __s1[12] = BYTE4(v37);
    __s1[13] = BYTE5(v37);
    if (v29)
    {
      v273 = v41;
      v267 = v40;
      v270 = v39;
      v257 = v36;
      v260 = v38;
      if (v29 == 1)
      {
        if (v219 < v225)
        {
          goto LABEL_344;
        }

        v53 = v39;
        sub_22EF70B68(v36, v37);
        sub_22EF70B68(v38, v40);
        sub_22EF70B68(v53, v41);
        v54 = sub_22EFB603C();
        if (!v54)
        {
          goto LABEL_369;
        }

        v55 = v54;
        v56 = sub_22EFB605C();
        if (__OFSUB__(v225, v56))
        {
          goto LABEL_348;
        }

        v57 = (v225 - v56 + v55);
        v58 = sub_22EFB604C();
        if (!v57)
        {
          goto LABEL_382;
        }

        goto LABEL_83;
      }

      v209 = *(v14 + 16);
      v203 = *(v14 + 24);
      v86 = v39;
      sub_22EF70B68(v36, v37);
      sub_22EF70B68(v38, v40);
      sub_22EF70B68(v86, v41);
      v83 = sub_22EFB603C();
      if (v83)
      {
        v87 = sub_22EFB605C();
        v88 = v209;
        if (__OFSUB__(v209, v87))
        {
          goto LABEL_357;
        }

        v83 += v209 - v87;
      }

      else
      {
        v88 = v209;
      }

      v96 = v203 - v88;
      if (__OFSUB__(v203, v88))
      {
        goto LABEL_346;
      }

      v97 = sub_22EFB604C();
      if (!v83)
      {
        goto LABEL_384;
      }

LABEL_152:
      if (v97 >= v96)
      {
        v98 = v96;
      }

      else
      {
        v98 = v97;
      }

      v74 = memcmp(__s1, v83, v98);
      sub_22EF708C8(v257, v37);
      sub_22EF708C8(v260, v267);
      sub_22EF708C8(v270, v273);
      v4 = a3;
      v14 = v251;
    }

    else
    {
      __s2 = v14;
      v285 = BYTE2(v14);
      v286 = BYTE3(v14);
      v287 = v221;
      v288 = BYTE5(v14);
      v289 = BYTE6(v14);
      v290 = HIBYTE(v14);
      v291 = v282;
      v292 = WORD2(v282);
      v74 = memcmp(__s1, &__s2, v33);
    }

LABEL_156:
    v33 = BYTE6(v282);
    v26 = v255;
    v28 = v242;
    v16 = v245;
    v29 = v276;
    v31 = v240;
    if (v74 || v280 != v245)
    {
      goto LABEL_27;
    }

LABEL_158:
    v9 = v4;
    sub_22EF708C8(v14, v282);
    sub_22EF708C8(v231, v229);
    sub_22EF708C8(v235, v233);
    a1[v25] |= v27;
    v8 = v237;
    v49 = __OFADD__(v239++, 1);
    a4 = v279;
    v5 = v227;
    if (!v49)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_161:
  v239 = 0;
  v99 = 0;
  v206 = v4 + 56;
  v100 = 1 << *(v4 + 32);
  if (v100 < 64)
  {
    v101 = ~(-1 << v100);
  }

  else
  {
    v101 = -1;
  }

  v102 = v101 & *(v4 + 56);
  v103 = (v100 + 63) >> 6;
  v104 = a4;
  v272 = a4 + 56;
  v220 = v103;
  while (2)
  {
    while (2)
    {
      if (v102)
      {
        v105 = __clz(__rbit64(v102));
        v241 = (v102 - 1) & v102;
        goto LABEL_173;
      }

      v106 = v99;
      while (2)
      {
        v99 = v106 + 1;
        if (__OFADD__(v106, 1))
        {
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          __break(1u);
LABEL_333:
          __break(1u);
LABEL_334:
          __break(1u);
LABEL_335:
          __break(1u);
LABEL_336:
          __break(1u);
LABEL_337:
          __break(1u);
LABEL_338:
          __break(1u);
LABEL_339:
          __break(1u);
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
LABEL_343:
          __break(1u);
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
LABEL_350:
          __break(1u);
LABEL_351:
          __break(1u);
LABEL_352:
          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
LABEL_355:
          __break(1u);
LABEL_356:
          __break(1u);
LABEL_357:
          __break(1u);
LABEL_358:
          __break(1u);
LABEL_359:
          __break(1u);
LABEL_360:
          __break(1u);
LABEL_361:
          __break(1u);
LABEL_362:
          __break(1u);
LABEL_363:
          __break(1u);
        }

        if (v99 >= v103)
        {
          goto LABEL_318;
        }

        v107 = *(v206 + 8 * v99);
        ++v106;
        if (!v107)
        {
          continue;
        }

        break;
      }

      v105 = __clz(__rbit64(v107));
      v241 = (v107 - 1) & v107;
LABEL_173:
      v222 = v105 | (v99 << 6);
      v108 = (*(v4 + 48) + 56 * v222);
      v109 = *v108;
      v110 = v108[1];
      v112 = v108[2];
      v111 = v108[3];
      v114 = v108[4];
      v113 = v108[5];
      v115 = v108[6];
      v116 = *(v104 + 40);
      sub_22EFB68DC();
      sub_22EF70B68(v109, v110);
      v232 = v114;
      v234 = v111;
      sub_22EF70B68(v111, v114);
      v236 = v115;
      v238 = v113;
      sub_22EF70B68(v113, v115);
      sub_22EFB61EC();
      v275 = v112;
      MEMORY[0x2318FB660](v112);
      v117 = sub_22EFB691C();
      v118 = v104;
      v119 = -1 << *(v104 + 32);
      v120 = v117 & ~v119;
      v121 = v272;
      v283 = v110;
      if (((*(v272 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120) & 1) == 0)
      {
LABEL_165:
        v104 = v118;
        sub_22EF708C8(v109, v283);
        sub_22EF708C8(v234, v232);
        sub_22EF708C8(v238, v236);
        v4 = a3;
        v103 = v220;
        v102 = v241;
        continue;
      }

      break;
    }

    v122 = ~v119;
    v123 = v110 >> 62;
    if (v109)
    {
      v124 = 0;
    }

    else
    {
      v124 = v110 == 0xC000000000000000;
    }

    v125 = !v124;
    v226 = HIDWORD(v109);
    v126 = __OFSUB__(HIDWORD(v109), v109);
    v256 = v126;
    __n = HIDWORD(v109) - v109;
    v127 = BYTE6(v110);
    v228 = v109 >> 32;
    v230 = v109;
    v218 = (v109 >> 32) - v109;
    v248 = v109;
    v128 = v112;
    v246 = ~v119;
    v250 = v125;
    v259 = BYTE6(v110);
    v277 = v110 >> 62;
LABEL_187:
    v130 = (*(v118 + 48) + 56 * v120);
    v131 = *v130;
    v132 = v130[1];
    v129 = v130[2];
    v133 = v130[3];
    v135 = v130[4];
    v134 = v130[5];
    v136 = v130[6];
    v137 = v132 >> 62;
    if (v132 >> 62 != 3)
    {
      if (v137 > 1)
      {
        if (v137 != 2)
        {
          goto LABEL_209;
        }

        v143 = *(v131 + 16);
        v142 = *(v131 + 24);
        v49 = __OFSUB__(v142, v143);
        v141 = v142 - v143;
        if (v49)
        {
          goto LABEL_326;
        }

        if (v123 <= 1)
        {
          goto LABEL_206;
        }
      }

      else if (v137)
      {
        LODWORD(v141) = HIDWORD(v131) - v131;
        if (__OFSUB__(HIDWORD(v131), v131))
        {
          goto LABEL_325;
        }

        v141 = v141;
        if (v123 <= 1)
        {
          goto LABEL_206;
        }
      }

      else
      {
        v141 = BYTE6(v132);
        if (v123 <= 1)
        {
          goto LABEL_206;
        }
      }

LABEL_210:
      if (v123 == 2)
      {
        v146 = *(v109 + 16);
        v145 = *(v109 + 24);
        v49 = __OFSUB__(v145, v146);
        v144 = v145 - v146;
        if (v49)
        {
          goto LABEL_321;
        }

        goto LABEL_212;
      }

      if (v141)
      {
        goto LABEL_186;
      }

      goto LABEL_185;
    }

    if (v131)
    {
      v138 = 0;
    }

    else
    {
      v138 = v132 == 0xC000000000000000;
    }

    v140 = !v138 || v123 < 3;
    if (((v140 | v125) & 1) == 0)
    {
      goto LABEL_185;
    }

LABEL_209:
    v141 = 0;
    if (v123 > 1)
    {
      goto LABEL_210;
    }

LABEL_206:
    v144 = v127;
    if (v123)
    {
      v144 = __n;
      if (v256)
      {
        goto LABEL_322;
      }
    }

LABEL_212:
    if (v141 != v144)
    {
      goto LABEL_186;
    }

    if (v141 < 1)
    {
LABEL_185:
      if (v129 == v128)
      {
        goto LABEL_315;
      }

      goto LABEL_186;
    }

    v281 = v129;
    if (v137 <= 1)
    {
      if (!v137)
      {
        *__s1 = v131;
        *&__s1[8] = v132;
        __s1[10] = BYTE2(v132);
        __s1[11] = BYTE3(v132);
        __s1[12] = BYTE4(v132);
        __s1[13] = BYTE5(v132);
        if (!v123)
        {
          __s2 = v109;
          v285 = BYTE2(v109);
          v286 = BYTE3(v109);
          v287 = v226;
          v288 = BYTE5(v109);
          v289 = BYTE6(v109);
          v290 = HIBYTE(v109);
          v291 = v283;
          v292 = WORD2(v283);
          v175 = v121;
          v176 = v118;
          v177 = v129;
          v178 = memcmp(__s1, &__s2, v127);
          v121 = v175;
          v149 = v177;
          v125 = v250;
          v118 = v176;
          v128 = v275;
          if (v178)
          {
            goto LABEL_303;
          }

          goto LABEL_314;
        }

        if (v123 == 1)
        {
          if (v228 < v230)
          {
            goto LABEL_336;
          }

          v262 = v136;
          sub_22EF70B68(v131, v132);
          sub_22EF70B68(v133, v135);
          sub_22EF70B68(v134, v262);
          v147 = sub_22EFA0FD8(v230, v228, v283 & 0x3FFFFFFFFFFFFFFFLL, __s1);
          if (v224)
          {
            goto LABEL_393;
          }

          v148 = v147;
          sub_22EF708C8(v131, v132);
          sub_22EF708C8(v133, v135);
          sub_22EF708C8(v134, v262);
          v128 = v275;
          v118 = v279;
          v149 = v281;
          v122 = v246;
          v125 = v250;
          v121 = v272;
          if ((v148 & 1) == 0)
          {
LABEL_303:
            v127 = v259;
            v123 = v277;
            goto LABEL_186;
          }

LABEL_314:
          v127 = v259;
          v123 = v277;
          if (v149 == v128)
          {
LABEL_315:
            v104 = v118;
            sub_22EF708C8(v109, v283);
            sub_22EF708C8(v234, v232);
            sub_22EF708C8(v238, v236);
            *(a1 + ((v222 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v222;
            v102 = v241;
            v49 = __OFADD__(v239++, 1);
            v4 = a3;
            v103 = v220;
            if (!v49)
            {
              continue;
            }

            __break(1u);
LABEL_318:

            sub_22EF97104(a1, a2, v239, v4);
            v201 = *MEMORY[0x277D85DE8];
            return;
          }

LABEL_186:
          v120 = (v120 + 1) & v122;
          if (((*(v121 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120) & 1) == 0)
          {
            goto LABEL_165;
          }

          goto LABEL_187;
        }

        v253 = *(v109 + 16);
        v266 = *(v109 + 24);
        v183 = v133;
        v184 = v136;
        sub_22EF70B68(v131, v132);
        sub_22EF70B68(v183, v135);
        sub_22EF70B68(v134, v184);
        v185 = sub_22EFA0FD8(v253, v266, v283 & 0x3FFFFFFFFFFFFFFFLL, __s1);
        if (v224)
        {
          goto LABEL_393;
        }

        v186 = v185;
        sub_22EF708C8(v131, v132);
        sub_22EF708C8(v183, v135);
        sub_22EF708C8(v134, v184);
LABEL_300:
        v121 = v272;
        v128 = v275;
        v118 = v279;
        v122 = v246;
LABEL_313:
        v125 = v250;
        v149 = v281;
        if (!v186)
        {
          goto LABEL_303;
        }

        goto LABEL_314;
      }

      if (v131 > v131 >> 32)
      {
        goto LABEL_329;
      }

      v155 = v136;
      sub_22EF70B68(v131, v132);
      v243 = v133;
      v252 = v135;
      sub_22EF70B68(v133, v135);
      v263 = v155;
      v269 = v134;
      sub_22EF70B68(v134, v155);
      v156 = sub_22EFB603C();
      if (v156)
      {
        v157 = v156;
        v158 = sub_22EFB605C();
        if (__OFSUB__(v131, v158))
        {
          goto LABEL_332;
        }

        v154 = (v131 - v158 + v157);
      }

      else
      {
        v154 = 0;
      }

      sub_22EFB604C();
      v167 = v279;
      v168 = v272;
      v109 = v248;
      if (v277 != 2)
      {
        if (v277 == 1)
        {
          if (v228 < v230)
          {
            goto LABEL_341;
          }

          v169 = sub_22EFB603C();
          if (v169)
          {
            v173 = sub_22EFB605C();
            if (__OFSUB__(v230, v173))
            {
              goto LABEL_359;
            }

            v169 += v230 - v173;
          }

          v109 = v248;
          v174 = sub_22EFB604C();
          v172 = v218;
          if (v174 < v218)
          {
            v172 = v174;
          }

          if (!v154)
          {
            goto LABEL_377;
          }

          if (!v169)
          {
            goto LABEL_376;
          }

          goto LABEL_298;
        }

        v192 = v259;
        *__s1 = v248;
        __s1[4] = v226;
        *&__s1[5] = *(&v248 + 5);
        __s1[7] = HIBYTE(v248);
        *&__s1[8] = v283;
        *&__s1[12] = WORD2(v283);
        if (!v154)
        {
          goto LABEL_385;
        }

LABEL_302:
        v197 = memcmp(v154, __s1, v192);
        sub_22EF708C8(v131, v132);
        sub_22EF708C8(v243, v252);
        sub_22EF708C8(v269, v263);
        v128 = v275;
        v118 = v167;
        v122 = v246;
        v125 = v250;
        v149 = v281;
        v121 = v168;
        if (v197)
        {
          goto LABEL_303;
        }

        goto LABEL_314;
      }

      v193 = *(v248 + 16);
      v215 = *(v248 + 24);
      v169 = sub_22EFB603C();
      if (v169)
      {
        v194 = sub_22EFB605C();
        if (__OFSUB__(v193, v194))
        {
          goto LABEL_356;
        }

        v169 += v193 - v194;
      }

      if (__OFSUB__(v215, v193))
      {
        goto LABEL_342;
      }

      v195 = sub_22EFB604C();
      if (v195 >= v215 - v193)
      {
        v172 = v215 - v193;
      }

      else
      {
        v172 = v195;
      }

      if (!v154)
      {
        goto LABEL_372;
      }

      v109 = v248;
      if (!v169)
      {
        goto LABEL_371;
      }

      goto LABEL_298;
    }

    break;
  }

  if (v137 == 2)
  {
    v212 = *(v131 + 16);
    v150 = v136;
    sub_22EF70B68(v131, v132);
    v243 = v133;
    v252 = v135;
    sub_22EF70B68(v133, v135);
    v263 = v150;
    v269 = v134;
    sub_22EF70B68(v134, v150);
    v151 = sub_22EFB603C();
    if (v151)
    {
      v152 = v151;
      v153 = sub_22EFB605C();
      if (__OFSUB__(v212, v153))
      {
        goto LABEL_331;
      }

      v154 = (v212 - v153 + v152);
    }

    else
    {
      v154 = 0;
    }

    sub_22EFB604C();
    v167 = v279;
    v168 = v272;
    v109 = v248;
    if (v277 != 2)
    {
      if (v277 == 1)
      {
        if (v228 < v230)
        {
          goto LABEL_338;
        }

        v169 = sub_22EFB603C();
        if (v169)
        {
          v170 = sub_22EFB605C();
          if (__OFSUB__(v230, v170))
          {
            goto LABEL_355;
          }

          v169 += v230 - v170;
        }

        v109 = v248;
        v171 = sub_22EFB604C();
        v172 = v218;
        if (v171 < v218)
        {
          v172 = v171;
        }

        if (!v154)
        {
          goto LABEL_374;
        }

        if (!v169)
        {
          goto LABEL_373;
        }

        goto LABEL_298;
      }

      v192 = v259;
      *__s1 = v248;
      __s1[4] = v226;
      *&__s1[5] = *(&v248 + 5);
      __s1[7] = HIBYTE(v248);
      *&__s1[8] = v283;
      *&__s1[12] = WORD2(v283);
      if (!v154)
      {
        goto LABEL_368;
      }

      goto LABEL_302;
    }

    v189 = *(v248 + 16);
    v214 = *(v248 + 24);
    v169 = sub_22EFB603C();
    if (v169)
    {
      v190 = sub_22EFB605C();
      if (__OFSUB__(v189, v190))
      {
        goto LABEL_354;
      }

      v169 += v189 - v190;
    }

    if (__OFSUB__(v214, v189))
    {
      goto LABEL_340;
    }

    v191 = sub_22EFB604C();
    if (v191 >= v214 - v189)
    {
      v172 = v214 - v189;
    }

    else
    {
      v172 = v191;
    }

    if (!v154)
    {
      goto LABEL_379;
    }

    v109 = v248;
    if (!v169)
    {
      goto LABEL_378;
    }

LABEL_298:
    if (v154 != v169)
    {
      v196 = memcmp(v154, v169, v172);
      sub_22EF708C8(v131, v132);
      sub_22EF708C8(v243, v252);
      sub_22EF708C8(v269, v263);
      v186 = v196 == 0;
      goto LABEL_300;
    }

    sub_22EF708C8(v131, v132);
    sub_22EF708C8(v243, v252);
    sub_22EF708C8(v269, v263);
    v121 = v272;
    v128 = v275;
    v123 = v277;
    v118 = v279;
    v129 = v281;
    v122 = v246;
    v125 = v250;
    v127 = v259;
    goto LABEL_185;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (v123 == 2)
  {
    v244 = *(v109 + 16);
    v213 = *(v109 + 24);
    v179 = v136;
    sub_22EF70B68(v131, v132);
    sub_22EF70B68(v133, v135);
    v265 = v179;
    sub_22EF70B68(v134, v179);
    v180 = sub_22EFB603C();
    if (v180)
    {
      v181 = sub_22EFB605C();
      v182 = v244;
      if (__OFSUB__(v244, v181))
      {
        goto LABEL_353;
      }

      v180 += v244 - v181;
    }

    else
    {
      v182 = v244;
    }

    v198 = v213 - v182;
    if (__OFSUB__(v213, v182))
    {
      goto LABEL_337;
    }

    v199 = sub_22EFB604C();
    if (!v180)
    {
      goto LABEL_375;
    }

    if (v199 >= v198)
    {
      v200 = v198;
    }

    else
    {
      v200 = v199;
    }

    v166 = memcmp(__s1, v180, v200);
    sub_22EF708C8(v131, v132);
    sub_22EF708C8(v133, v135);
    sub_22EF708C8(v134, v265);
    v118 = v279;
    v121 = v272;
    v109 = v248;
LABEL_311:
    v122 = v246;
LABEL_312:
    v186 = v166 == 0;
    v128 = v275;
    goto LABEL_313;
  }

  if (v123 != 1)
  {
    v187 = v121;
    v188 = v118;
    __s2 = v109;
    v285 = BYTE2(v109);
    v286 = BYTE3(v109);
    v287 = v226;
    v288 = BYTE5(v109);
    v289 = BYTE6(v109);
    v290 = HIBYTE(v109);
    v291 = v283;
    v292 = WORD2(v283);
    v166 = memcmp(__s1, &__s2, v127);
    v118 = v188;
    v121 = v187;
    goto LABEL_312;
  }

  if (v228 < v230)
  {
    goto LABEL_335;
  }

  v159 = v136;
  sub_22EF70B68(v131, v132);
  sub_22EF70B68(v133, v135);
  v264 = v159;
  sub_22EF70B68(v134, v159);
  v160 = sub_22EFB603C();
  if (v160)
  {
    v161 = v160;
    v162 = sub_22EFB605C();
    if (__OFSUB__(v230, v162))
    {
      goto LABEL_339;
    }

    v163 = (v230 - v162 + v161);
    v164 = sub_22EFB604C();
    if (!v163)
    {
      goto LABEL_365;
    }

    if (v164 >= v218)
    {
      v165 = v218;
    }

    else
    {
      v165 = v164;
    }

    v166 = memcmp(__s1, v163, v165);
    sub_22EF708C8(v131, v132);
    sub_22EF708C8(v133, v135);
    sub_22EF708C8(v134, v264);
    v121 = v272;
    v109 = v248;
    v118 = v279;
    goto LABEL_311;
  }

  sub_22EFB604C();
LABEL_365:
  __break(1u);
LABEL_366:
  sub_22EFB604C();
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  sub_22EFB604C();
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
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
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  __break(1u);
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:

  __break(1u);
}

uint64_t sub_22EF97104(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6D8, &qword_22EFBD1E8);
  result = sub_22EFB66BC();
  v8 = a2;
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v37 = v8;
  v38 = v4;
  while (v10)
  {
    v13 = v9;
    v14 = __clz(__rbit64(v10));
    v39 = (v10 - 1) & v10;
    v40 = v5;
LABEL_17:
    v17 = (*(v4 + 48) + 56 * (v14 | (v11 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v21 = v17[2];
    v20 = v17[3];
    v23 = v17[4];
    v22 = v17[5];
    v24 = v17[6];
    v25 = v13;
    v26 = *(v13 + 40);
    sub_22EFB68DC();
    sub_22EF70B68(v18, v19);
    v41 = v20;
    sub_22EF70B68(v20, v23);
    sub_22EF70B68(v22, v24);
    sub_22EFB61EC();
    MEMORY[0x2318FB660](v21);
    result = sub_22EFB691C();
    v9 = v25;
    v27 = -1 << *(v25 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v12 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v25 + 48) + 56 * v30);
    *v35 = v18;
    v35[1] = v19;
    v35[2] = v21;
    v35[3] = v41;
    v35[4] = v23;
    v35[5] = v22;
    v35[6] = v24;
    ++*(v25 + 16);
    v5 = v40 - 1;
    if (__OFSUB__(v40, 1))
    {
      goto LABEL_32;
    }

    v4 = v38;
    v10 = v39;
    v8 = v37;
    if (v40 == 1)
    {
      goto LABEL_6;
    }
  }

  v15 = v11;
  while (1)
  {
    v11 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      goto LABEL_6;
    }

    v16 = a1[v11];
    ++v15;
    if (v16)
    {
      v13 = v9;
      v14 = __clz(__rbit64(v16));
      v39 = (v16 - 1) & v16;
      v40 = v5;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_22EF973B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_22EF94370(*(a1 + 16), 0);
  v4 = sub_22EFAA300(&v6, v3 + 2, v1, a1);

  sub_22EFA0FD0();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22EF9746C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22EFB682C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22EFB656C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22EF97C80(v7, v8, a1, v4);
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
    return sub_22EF9777C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22EF97564(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22EFB682C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ExpressMode.PassConfig();
        v6 = sub_22EFB656C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_22EF98394(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_22EF97890(0, v2, 1, a1);
  }

  return result;
}

void sub_22EF97668(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22EFB682C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22EF70EBC(0, &qword_27DA9E028, 0x277CBEAC0);
        v6 = sub_22EFB656C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_22EF9927C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22EF97AA8(0, v2, 1, a1);
  }
}

uint64_t sub_22EF9777C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 + 16 * a3 - 16;
    v7 = result - a3;
LABEL_4:
    v18 = a3;
    v8 = *(v5 + 16 * a3);
    v16 = v7;
    v17 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = *(v6 + 8);
      v11 = v8;
      sub_22EF70B68(v8, *(&v8 + 1));
      sub_22EF70B68(v9, v10);
      v12 = sub_22EF71F2C(v11, *(&v11 + 1), v9, v10);
      sub_22EF708C8(v9, v10);
      result = sub_22EF708C8(v11, *(&v11 + 1));
      if (v4)
      {
        break;
      }

      if (v12)
      {
        if (!v5)
        {
          __break(1u);
          return result;
        }

        v13 = *v6;
        v8 = *(v6 + 16);
        *v6 = v8;
        *(v6 + 16) = v13;
        v6 -= 16;
        if (!__CFADD__(v7++, 1))
        {
          continue;
        }
      }

      a3 = v18 + 1;
      v6 = v17 + 16;
      v7 = v16 - 1;
      if (v18 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_22EF97890(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = result - a3;
LABEL_6:
    v20 = v4;
    v21 = a3;
    v6 = *(v22 + 8 * a3);
    v19 = v5;
    while (1)
    {
      v23 = v5;
      v7 = *v4;
      v9 = *(v6 + 32);
      v8 = *(v6 + 40);

      sub_22EF83154(v9, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
      v10 = sub_22EFB646C();
      v12 = v11;

      sub_22EF83154(*(v7 + 32), *(v7 + 40));
      v13 = sub_22EFB646C();
      v15 = v14;

      if (v10 == v13 && v12 == v15)
      {

LABEL_5:
        a3 = v21 + 1;
        v4 = v20 + 1;
        v5 = v19 - 1;
        if (v21 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v16 = sub_22EFB684C();

      if ((v16 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      v17 = *v4;
      v6 = v4[1];
      *v4 = v6;
      v4[1] = v17;
      --v4;
      v5 = v23 + 1;
      if (v23 == -1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22EF97AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    v28 = *a4;
    while (2)
    {
      v26 = v6;
      v27 = a3;
      v8 = *(v5 + 8 * a3);
      v25 = v7;
      v9 = v7;
      while (1)
      {
        v31 = v9;
        v10 = *v6;
        v11 = sub_22EFB648C();
        v13 = v12;
        v14 = v8;
        v15 = v10;
        sub_22EF82E7C(v11, v13, &v30);
        if (v4)
        {

          return;
        }

        v16 = v30;
        v17 = sub_22EFB648C();
        sub_22EF82E7C(v17, v18, &v29);

        v19 = v29;
        v20 = sub_22EF71F2C(v16, *(&v16 + 1), v29, *(&v29 + 1));
        sub_22EF708C8(v16, *(&v16 + 1));
        sub_22EF708C8(v19, *(&v19 + 1));

        if ((v20 & 1) == 0)
        {
          break;
        }

        v5 = v28;
        v21 = v31;
        if (!v28)
        {
          __break(1u);
          return;
        }

        v22 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v22;
        v6 -= 8;
        v23 = __CFADD__(v21, 1);
        v9 = v21 + 1;
        if (v23)
        {
          goto LABEL_11;
        }
      }

      v5 = v28;
LABEL_11:
      a3 = v27 + 1;
      v6 = v26 + 8;
      v7 = v25 - 1;
      if (v27 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_22EF97C80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v105 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_91:
    v10 = *v105;
    if (*v105)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_93;
    }

    goto LABEL_131;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v11 >= v7)
    {
      v28 = v11;
    }

    else
    {
      v109 = v7;
      v103 = v9;
      v12 = *v6;
      v13 = (*v6 + 16 * v11);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*v6 + 16 * v10);
      v17 = v5;
      v19 = *v16;
      v18 = v16[1];
      sub_22EF70B68(v14, v15);
      sub_22EF70B68(v19, v18);
      v107 = sub_22EF71F2C(v14, v15, v19, v18);
      if (v17)
      {
        sub_22EF708C8(v19, v18);
        sub_22EF708C8(v14, v15);
      }

      sub_22EF708C8(v19, v18);
      result = sub_22EF708C8(v14, v15);
      v20 = v10 + 2;
      v101 = v10;
      v21 = 16 * v10;
      v22 = (v12 + 16 * v10 + 24);
      while (v109 != v20)
      {
        v23 = v22[1];
        v24 = v22[2];
        v25 = *(v22 - 1);
        v26 = *v22;
        sub_22EF70B68(v23, v24);
        sub_22EF70B68(v25, v26);
        v27 = sub_22EF71F2C(v23, v24, v25, v26);
        sub_22EF708C8(v25, v26);
        result = sub_22EF708C8(v23, v24);
        ++v20;
        v22 += 2;
        if ((v107 ^ v27))
        {
          v28 = (v20 - 1);
          goto LABEL_12;
        }
      }

      v28 = v109;
LABEL_12:
      v5 = 0;
      v6 = a3;
      v10 = v101;
      if (v107)
      {
        v9 = v103;
        if (v28 < v101)
        {
          goto LABEL_125;
        }

        if (v101 < v28)
        {
          v29 = 16 * v28 - 16;
          v30 = v28;
          v31 = v101;
          do
          {
            if (v31 != --v30)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v33 = *(v32 + v21);
              *(v32 + v21) = *(v32 + v29);
              *(v32 + v29) = v33;
            }

            v31 = (v31 + 1);
            v29 -= 16;
            v21 += 16;
          }

          while (v31 < v30);
        }
      }

      else
      {
        v9 = v103;
      }
    }

    v34 = v6[1];
    if (v28 >= v34)
    {
      goto LABEL_30;
    }

    if (__OFSUB__(v28, v10))
    {
      goto LABEL_121;
    }

    if (v28 - v10 >= a4)
    {
      goto LABEL_30;
    }

    if (__OFADD__(v10, a4))
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v10 + a4 >= v34)
    {
      v35 = v6[1];
    }

    else
    {
      v35 = v10 + a4;
    }

    if (v35 < v10)
    {
      goto LABEL_124;
    }

    if (v28 == v35)
    {
LABEL_30:
      v35 = v28;
      if (v28 < v10)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v102 = v10;
      v104 = v9;
      v108 = v5;
      v82 = *v6;
      v83 = *v6 + 16 * v28 - 16;
      v84 = v10 - v28;
      do
      {
        v111 = v28;
        v85 = *(v82 + 16 * v28);
        v98 = v84;
        v99 = v83;
        do
        {
          v86 = *v83;
          v87 = *(v83 + 8);
          v88 = v85;
          sub_22EF70B68(v85, *(&v85 + 1));
          sub_22EF70B68(v86, v87);
          v89 = sub_22EF71F2C(v88, *(&v88 + 1), v86, v87);
          if (v108)
          {
            sub_22EF708C8(v86, v87);
            sub_22EF708C8(v88, *(&v88 + 1));
          }

          v90 = v89;
          sub_22EF708C8(v86, v87);
          result = sub_22EF708C8(v88, *(&v88 + 1));
          if ((v90 & 1) == 0)
          {
            break;
          }

          if (!v82)
          {
            goto LABEL_127;
          }

          v91 = *v83;
          v85 = *(v83 + 16);
          *v83 = v85;
          *(v83 + 16) = v91;
          v83 -= 16;
        }

        while (!__CFADD__(v84++, 1));
        v28 = v111 + 1;
        v83 = v99 + 16;
        v84 = v98 - 1;
      }

      while ((v111 + 1) != v35);
      v6 = a3;
      v5 = 0;
      v10 = v102;
      v9 = v104;
      if (v35 < v102)
      {
        goto LABEL_120;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22EF7DDCC(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v37 = *(v9 + 2);
    v36 = *(v9 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_22EF7DDCC((v36 > 1), v37 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v38;
    v39 = &v9[16 * v37];
    *(v39 + 4) = v10;
    *(v39 + 5) = v35;
    v40 = *v105;
    if (!*v105)
    {
      goto LABEL_130;
    }

    v110 = v35;
    if (v37)
    {
      break;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v110;
    if (v110 >= v7)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v41 = v38 - 1;
    if (v38 >= 4)
    {
      v46 = &v9[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_107;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_108;
      }

      v53 = &v9[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_110;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_113;
      }

      if (v57 >= v49)
      {
        v75 = &v9[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_119;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

    if (v38 == 3)
    {
      v42 = *(v9 + 4);
      v43 = *(v9 + 5);
      v52 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      v45 = v52;
LABEL_50:
      if (v45)
      {
        goto LABEL_109;
      }

      v58 = &v9[16 * v38];
      v60 = *v58;
      v59 = *(v58 + 1);
      v61 = __OFSUB__(v59, v60);
      v62 = v59 - v60;
      v63 = v61;
      if (v61)
      {
        goto LABEL_112;
      }

      v64 = &v9[16 * v41 + 32];
      v66 = *v64;
      v65 = *(v64 + 1);
      v52 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v52)
      {
        goto LABEL_115;
      }

      if (__OFADD__(v62, v67))
      {
        goto LABEL_116;
      }

      if (v62 + v67 >= v44)
      {
        if (v44 < v67)
        {
          v41 = v38 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_64;
    }

    v68 = &v9[16 * v38];
    v70 = *v68;
    v69 = *(v68 + 1);
    v52 = __OFSUB__(v69, v70);
    v62 = v69 - v70;
    v63 = v52;
LABEL_64:
    if (v63)
    {
      goto LABEL_111;
    }

    v71 = &v9[16 * v41];
    v73 = *(v71 + 4);
    v72 = *(v71 + 5);
    v52 = __OFSUB__(v72, v73);
    v74 = v72 - v73;
    if (v52)
    {
      goto LABEL_114;
    }

    if (v74 < v62)
    {
      goto LABEL_3;
    }

LABEL_71:
    v79 = v41 - 1;
    if (v41 - 1 >= v38)
    {
      break;
    }

    if (!*v6)
    {
      goto LABEL_126;
    }

    v80 = *&v9[16 * v79 + 32];
    v10 = *&v9[16 * v41 + 40];
    sub_22EF99B6C((*v6 + 16 * v80), (*v6 + 16 * *&v9[16 * v41 + 32]), (*v6 + 16 * v10), v40);
    if (v5)
    {
    }

    if (v10 < v80)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22EF9AAB4(v9);
    }

    if (v79 >= *(v9 + 2))
    {
      goto LABEL_106;
    }

    v81 = &v9[16 * v79];
    *(v81 + 4) = v80;
    *(v81 + 5) = v10;
    result = sub_22EF9AA28(v41);
    v38 = *(v9 + 2);
    if (v38 <= 1)
    {
      goto LABEL_3;
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
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  result = sub_22EF9AAB4(v9);
  v9 = result;
LABEL_93:
  v93 = *(v9 + 2);
  if (v93 < 2)
  {
  }

  while (1)
  {
    v94 = *v6;
    if (!*v6)
    {
      break;
    }

    v6 = (v93 - 1);
    v95 = *&v9[16 * v93];
    v96 = *&v9[16 * v93 + 24];
    sub_22EF99B6C((v94 + 16 * v95), (v94 + 16 * *&v9[16 * v93 + 16]), (v94 + 16 * v96), v10);
    if (v5)
    {
    }

    if (v96 < v95)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22EF9AAB4(v9);
    }

    if (v93 - 2 >= *(v9 + 2))
    {
      goto LABEL_118;
    }

    v97 = &v9[16 * v93];
    *v97 = v95;
    *(v97 + 1) = v96;
    result = sub_22EF9AA28(v93 - 1);
    v93 = *(v9 + 2);
    v6 = a3;
    if (v93 <= 1)
    {
    }
  }

LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_22EF98394(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v140 = result;
  v168 = *MEMORY[0x277D85DE8];
  v7 = a3[1];
  v8 = MEMORY[0x277D84F90];
  if (v7 < 1)
  {
LABEL_174:
    v10 = *v140;
    if (*v140)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_228;
      }

      goto LABEL_176;
    }

    __break(1u);
    return result;
  }

  v9 = 0;
  while (1)
  {
    v10 = v9 + 1;
    v144 = v8;
    v151 = v9;
    if (v9 + 1 < v7)
    {
      v11 = *v6;
      v160 = *(*v6 + 8 * (v9 + 1));
      v166 = *(v11 + 8 * v9);

      v156 = sub_22EF8B9E0(&v160, &v166);
      if (v5)
      {

        goto LABEL_185;
      }

      v12 = v9 + 2;
      v154 = 8 * v9;
      v155 = v7;
      v13 = v11 + 8 * v9 + 16;
      while (v7 != v12)
      {
        v15 = *(v13 - 8);
        v17 = *(*v13 + 32);
        v16 = *(*v13 + 40);

        v160 = sub_22EF83154(v17, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
        sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
        v18 = sub_22EFB646C();
        v20 = v19;

        v160 = sub_22EF83154(*(v15 + 32), *(v15 + 40));
        v21 = sub_22EFB646C();
        v23 = v22;

        if (v18 == v21 && v20 == v23)
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_22EFB684C();
        }

        ++v12;
        v13 += 8;
        v7 = v155;
        if ((v156 ^ v14))
        {
          v7 = v12 - 1;
          break;
        }
      }

      v6 = a3;
      v5 = 0;
      v8 = v144;
      v24 = v154;
      if (v156)
      {
        v25 = v151;
        if (v7 < v151)
        {
          goto LABEL_231;
        }

        if (v151 < v7)
        {
          v26 = 8 * v7 - 8;
          v27 = v7;
          do
          {
            if (v25 != --v27)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_238;
              }

              v28 = *(v29 + v24);
              *(v29 + v24) = *(v29 + v26);
              *(v29 + v26) = v28;
            }

            ++v25;
            v26 -= 8;
            v24 += 8;
          }

          while (v25 < v27);
        }
      }

      v10 = v7;
    }

    v30 = *(v6 + 8);
    if (v10 >= v30)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v10, v151))
    {
      goto LABEL_227;
    }

    if (v10 - v151 >= a4)
    {
LABEL_34:
      if (v10 < v151)
      {
        goto LABEL_222;
      }

      goto LABEL_35;
    }

    v31 = v151 + a4;
    if (__OFADD__(v151, a4))
    {
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
LABEL_240:
      __break(1u);
    }

    if (v31 >= v30)
    {
      v31 = *(v6 + 8);
    }

    if (v31 < v151)
    {
      goto LABEL_230;
    }

    if (v10 != v31)
    {
      break;
    }

    if (v10 < v151)
    {
      goto LABEL_222;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22EF7DDCC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v33 = *(v8 + 16);
    v32 = *(v8 + 24);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_22EF7DDCC((v32 > 1), v33 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = (v8 + 16 * v33);
    *(v35 + 4) = v151;
    *(v35 + 5) = v10;
    v9 = v10;
    v10 = *v140;
    if (!*v140)
    {
      goto LABEL_240;
    }

    if (v33)
    {
      while (1)
      {
        v36 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_54:
          if (v40)
          {
            goto LABEL_209;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_212;
          }

          v59 = (v8 + 32 + 16 * v36);
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_215;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_216;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v34 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_68:
        if (v58)
        {
          goto LABEL_211;
        }

        v66 = (v8 + 16 * v36);
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_214;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_75:
        v74 = v36 - 1;
        if (v36 - 1 >= v34)
        {
          goto LABEL_204;
        }

        if (!*v6)
        {
          goto LABEL_236;
        }

        v75 = *(v8 + 32 + 16 * v74);
        v76 = *(v8 + 32 + 16 * v36 + 8);
        sub_22EF99F80((*v6 + 8 * v75), (*v6 + 8 * *(v8 + 32 + 16 * v36)), *v6 + 8 * v76, v10);
        if (v5)
        {
          goto LABEL_184;
        }

        if (v76 < v75)
        {
          goto LABEL_205;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22EF9AAB4(v8);
        }

        if (v74 >= *(v8 + 16))
        {
          goto LABEL_206;
        }

        v77 = (v8 + 16 * v74);
        *(v77 + 4) = v75;
        *(v77 + 5) = v76;
        v167 = v8;
        result = sub_22EF9AA28(v36);
        v8 = v167;
        v34 = *(v167 + 2);
        if (v34 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = v8 + 32 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_207;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_208;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_210;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_213;
      }

      if (v52 >= v44)
      {
        v70 = (v8 + 32 + 16 * v36);
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_219;
        }

        if (v39 < v73)
        {
          v36 = v34 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v7 = *(v6 + 8);
    if (v9 >= v7)
    {
      goto LABEL_174;
    }
  }

  v78 = *v6;
  v141 = *v6;
  v138 = v31;
  do
  {
    v142 = v10;
    v79 = *(v78 + 8 * v10);
    v80 = v10;
    while (2)
    {
      v10 = v80 - 1;
      v6 = *(v78 + 8 * (v80 - 1));
      v81 = *(v79 + 32);
      v8 = *(v79 + 40);
      v82 = v8 >> 62;
      v157 = v5;
      v145 = v80 - 1;
      v146 = v80;
      v150 = v6;
      if ((v8 >> 62) > 1)
      {
        if (v82 != 2)
        {
          goto LABEL_98;
        }

        v85 = *(v81 + 16);
        v84 = *(v81 + 24);
        v83 = v84 - v85;
        if (__OFSUB__(v84, v85))
        {
          goto LABEL_224;
        }

        if (!v83)
        {
          goto LABEL_98;
        }
      }

      else if (v82)
      {
        v87 = HIDWORD(v81) - v81;
        if (__OFSUB__(HIDWORD(v81), v81))
        {
          goto LABEL_223;
        }

        v83 = v87;
        if (!v87)
        {
LABEL_98:

          v88 = MEMORY[0x277D84F90];
          v5 = MEMORY[0x277D84F90];
          goto LABEL_124;
        }
      }

      else
      {
        v83 = BYTE6(v8);
        if (!BYTE6(v8))
        {
          goto LABEL_98;
        }
      }

      v166 = MEMORY[0x277D84F90];

      sub_22EF9AAC8(0, v83 & ~(v83 >> 63), 0);
      if (v82)
      {
        if (v82 == 2)
        {
          v86 = *(v81 + 16);
        }

        else
        {
          v86 = v81;
        }
      }

      else
      {
        v86 = 0;
      }

      v158 = v86;
      if (v83 < 0)
      {
        goto LABEL_220;
      }

      v6 = 0;
      v5 = v166;
      v152 = &v160 + v86;
      do
      {
        if (v6 >= v83)
        {
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
          goto LABEL_221;
        }

        v89 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_189;
        }

        v90 = v158 + v6;
        if (v82 == 2)
        {
          if (v90 < *(v81 + 16))
          {
            goto LABEL_192;
          }

          if (v90 >= *(v81 + 24))
          {
            goto LABEL_195;
          }

          v94 = sub_22EFB603C();
          if (!v94)
          {
            goto LABEL_233;
          }

          v10 = v94;
          v95 = sub_22EFB605C();
          v93 = v90 - v95;
          if (__OFSUB__(v90, v95))
          {
            goto LABEL_197;
          }

          goto LABEL_117;
        }

        if (v82 == 1)
        {
          if (v90 < v81 || v90 >= v81 >> 32)
          {
            goto LABEL_194;
          }

          v91 = sub_22EFB603C();
          if (!v91)
          {
            goto LABEL_232;
          }

          v10 = v91;
          v92 = sub_22EFB605C();
          v93 = v90 - v92;
          if (__OFSUB__(v90, v92))
          {
            goto LABEL_196;
          }

LABEL_117:
          v96 = *(v10 + v93);
          LODWORD(v82) = v8 >> 62;
          goto LABEL_120;
        }

        if (v90 >= BYTE6(v8))
        {
          goto LABEL_193;
        }

        v160 = v81;
        v161 = v8;
        v162 = BYTE2(v8);
        v163 = BYTE3(v8);
        v164 = BYTE4(v8);
        v165 = BYTE5(v8);
        v96 = v152[v6];
LABEL_120:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_22EFBB8C0;
        *(v97 + 56) = MEMORY[0x277D84B78];
        *(v97 + 64) = MEMORY[0x277D84BC0];
        *(v97 + 32) = v96;
        v98 = sub_22EFB649C();
        v166 = v5;
        v101 = *(v5 + 16);
        v100 = *(v5 + 24);
        v10 = v101 + 1;
        if (v101 >= v100 >> 1)
        {
          v149 = v98;
          v103 = v99;
          sub_22EF9AAC8((v100 > 1), v101 + 1, 1);
          LODWORD(v82) = v8 >> 62;
          v99 = v103;
          v98 = v149;
          v5 = v166;
        }

        *(v5 + 16) = v10;
        v102 = v5 + 16 * v101;
        *(v102 + 32) = v98;
        *(v102 + 40) = v99;
        ++v6;
      }

      while (v89 != v83);
      v88 = MEMORY[0x277D84F90];
      v6 = v150;
LABEL_124:
      v160 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      v10 = sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
      v147 = sub_22EFB646C();
      v148 = v104;

      v105 = *(v6 + 32);
      v6 = *(v6 + 40);
      v8 = v6 >> 62;
      if ((v6 >> 62) > 1)
      {
        if (v8 == 2)
        {
          v107 = *(v105 + 16);
          v106 = *(v105 + 24);
          v10 = v106 - v107;
          if (__OFSUB__(v106, v107))
          {
            goto LABEL_225;
          }

          if (v10)
          {
            goto LABEL_131;
          }

          goto LABEL_127;
        }

        v5 = v88;
      }

      else
      {
        if (!v8)
        {
          v10 = BYTE6(v6);
          if (!BYTE6(v6))
          {
            goto LABEL_127;
          }

LABEL_131:
          v166 = v88;
          sub_22EF9AAC8(0, v10 & ~(v10 >> 63), 0);
          if (v8)
          {
            if (v8 == 2)
            {
              v108 = *(v105 + 16);
            }

            else
            {
              v108 = v105;
            }
          }

          else
          {
            v108 = 0;
          }

          v159 = v108;
          if ((v10 & 0x8000000000000000) == 0)
          {
            v115 = 0;
            v5 = v166;
            v153 = &v160 + v108;
            while (1)
            {
              if (v115 >= v10)
              {
                goto LABEL_190;
              }

              v116 = v115 + 1;
              if (__OFADD__(v115, 1))
              {
                goto LABEL_191;
              }

              v117 = v159 + v115;
              if (v8 == 2)
              {
                if (v117 < *(v105 + 16))
                {
                  goto LABEL_199;
                }

                if (v117 >= *(v105 + 24))
                {
                  goto LABEL_201;
                }

                v121 = sub_22EFB603C();
                if (!v121)
                {
                  goto LABEL_235;
                }

                v8 = v121;
                v122 = sub_22EFB605C();
                v120 = v117 - v122;
                if (__OFSUB__(v117, v122))
                {
                  goto LABEL_203;
                }
              }

              else
              {
                if (v8 != 1)
                {
                  if (v117 >= BYTE6(v6))
                  {
                    goto LABEL_198;
                  }

                  v160 = v105;
                  v161 = v6;
                  v162 = BYTE2(v6);
                  v163 = BYTE3(v6);
                  v164 = BYTE4(v6);
                  v165 = BYTE5(v6);
                  v123 = v153[v115];
                  goto LABEL_165;
                }

                if (v117 < v105 || v117 >= v105 >> 32)
                {
                  goto LABEL_200;
                }

                v118 = sub_22EFB603C();
                if (!v118)
                {
                  goto LABEL_234;
                }

                v8 = v118;
                v119 = sub_22EFB605C();
                v120 = v117 - v119;
                if (__OFSUB__(v117, v119))
                {
                  goto LABEL_202;
                }
              }

              v123 = *(v8 + v120);
LABEL_165:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
              v124 = swift_allocObject();
              *(v124 + 16) = xmmword_22EFBB8C0;
              *(v124 + 56) = MEMORY[0x277D84B78];
              *(v124 + 64) = MEMORY[0x277D84BC0];
              *(v124 + 32) = v123;
              v125 = sub_22EFB649C();
              v166 = v5;
              v128 = *(v5 + 16);
              v127 = *(v5 + 24);
              if (v128 >= v127 >> 1)
              {
                v137 = v125;
                v130 = v126;
                sub_22EF9AAC8((v127 > 1), v128 + 1, 1);
                v126 = v130;
                v125 = v137;
                v5 = v166;
              }

              *(v5 + 16) = v128 + 1;
              v129 = v5 + 16 * v128;
              *(v129 + 32) = v125;
              *(v129 + 40) = v126;
              ++v115;
              v8 = v6 >> 62;
              if (v116 == v10)
              {
                goto LABEL_138;
              }
            }
          }

LABEL_221:
          __break(1u);
          goto LABEL_222;
        }

        v109 = HIDWORD(v105) - v105;
        if (__OFSUB__(HIDWORD(v105), v105))
        {
          goto LABEL_226;
        }

        v10 = v109;
        if (v109)
        {
          goto LABEL_131;
        }

LABEL_127:
        v5 = v88;
      }

LABEL_138:
      v160 = v5;
      v110 = sub_22EFB646C();
      v112 = v111;

      if (v147 != v110 || v148 != v112)
      {
        v113 = sub_22EFB684C();

        v6 = a3;
        v5 = v157;
        if ((v113 & 1) == 0)
        {
          goto LABEL_170;
        }

        v8 = v144;
        v78 = v141;
        if (!v141)
        {
          goto LABEL_239;
        }

        v79 = *(v141 + 8 * v146);
        *(v141 + 8 * v146) = *(v141 + 8 * v145);
        *(v141 + 8 * v145) = v79;
        v80 = v145;
        v114 = v151;
        if (v145 == v151)
        {
          goto LABEL_171;
        }

        continue;
      }

      break;
    }

    v6 = a3;
    v5 = v157;
LABEL_170:
    v8 = v144;
    v114 = v151;
    v78 = v141;
LABEL_171:
    v10 = v142 + 1;
  }

  while (v142 + 1 != v138);
  v10 = v138;
  if (v138 >= v114)
  {
    goto LABEL_35;
  }

LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  v8 = sub_22EF9AAB4(v8);
LABEL_176:
  v167 = v8;
  v131 = *(v8 + 16);
  if (v131 >= 2)
  {
    while (*v6)
    {
      v132 = v8;
      v8 = v131 - 1;
      v133 = *&v132[16 * v131];
      v134 = *&v132[16 * v131 + 24];
      sub_22EF99F80((*v6 + 8 * v133), (*v6 + 8 * *&v132[16 * v131 + 16]), *v6 + 8 * v134, v10);
      if (v5)
      {
        goto LABEL_184;
      }

      if (v134 < v133)
      {
        goto LABEL_217;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v132 = sub_22EF9AAB4(v132);
      }

      if (v131 - 2 >= *(v132 + 2))
      {
        goto LABEL_218;
      }

      v135 = &v132[16 * v131];
      *v135 = v133;
      *(v135 + 1) = v134;
      v167 = v132;
      sub_22EF9AA28(v8);
      v8 = v167;
      v131 = *(v167 + 2);
      if (v131 <= 1)
      {
        goto LABEL_184;
      }
    }

    goto LABEL_237;
  }

LABEL_184:

LABEL_185:
  v136 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22EF9927C(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_89:
    v7 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_91;
    }

    goto LABEL_131;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v119 = v6;
      v10 = v9;
      v11 = *a3;
      *&v125 = *(*a3 + 8 * v7);
      *&v124 = *(v11 + 8 * v10);
      v12 = v124;
      v13 = v125;
      v14 = v12;
      v117 = sub_22EF8DCD8(&v125, &v124);
      if (v5)
      {

        return;
      }

      v15 = (v10 + 2);
      v111 = v10;
      v114 = 8 * v10;
      v16 = (v11 + 8 * v10 + 16);
      v120 = v8;
      while (1)
      {
        v7 = v119;
        if (v119 == v15)
        {
          break;
        }

        v18 = *(v16 - 1);
        v17 = *v16;
        v19 = sub_22EFB648C();
        v21 = v20;
        v22 = v17;
        v23 = v18;
        sub_22EF82E7C(v19, v21, &v125);

        v24 = *(&v125 + 1);
        v25 = v125;
        v26 = sub_22EFB648C();
        sub_22EF82E7C(v26, v27, &v124);

        v28 = v124;
        v29 = sub_22EF71F2C(v25, v24, v124, *(&v124 + 1));
        sub_22EF708C8(v25, v24);
        sub_22EF708C8(v28, *(&v28 + 1));

        v30 = v117 ^ v29;
        v15 = (v15 + 1);
        ++v16;
        v5 = 0;
        v8 = v120;
        if (v30)
        {
          v7 = (v15 - 1);
          break;
        }
      }

      v9 = v111;
      v31 = v114;
      if (v117)
      {
        if (v7 < v111)
        {
          goto LABEL_125;
        }

        if (v111 < v7)
        {
          v32 = 8 * v7 - 8;
          v33 = v7;
          v34 = v111;
          do
          {
            v33 = (v33 - 1);
            if (v34 != v33)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v36 = *(v35 + v31);
              *(v35 + v31) = *(v35 + v32);
              *(v35 + v32) = v36;
            }

            v34 = (v34 + 1);
            v32 -= 8;
            v31 += 8;
          }

          while (v34 < v33);
        }
      }
    }

    v37 = a3[1];
    if (v7 >= v37)
    {
LABEL_25:
      if (v7 < v9)
      {
        goto LABEL_120;
      }

      goto LABEL_26;
    }

    if (__OFSUB__(v7, v9))
    {
      __break(1u);
LABEL_123:
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
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      return;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_25;
    }

    v38 = (v9 + a4);
    if (__OFADD__(v9, a4))
    {
      goto LABEL_123;
    }

    if (v38 >= v37)
    {
      v38 = a3[1];
    }

    if (v38 < v9)
    {
      goto LABEL_124;
    }

    if (v7 == v38)
    {
      goto LABEL_25;
    }

    v121 = v8;
    v122 = v5;
    v86 = *a3;
    v87 = *a3 + 8 * v7 - 8;
    v112 = v9;
    v88 = v9 - v7;
    v108 = v38;
    v115 = *a3;
    do
    {
      v89 = *(v86 + 8 * v7);
      v109 = v88;
      v110 = v87;
      v118 = v7;
      while (1)
      {
        v90 = *v87;
        v91 = sub_22EFB648C();
        v93 = v92;
        v94 = v89;
        v95 = v90;
        sub_22EF82E7C(v91, v93, &v125);
        if (v122)
        {

          goto LABEL_102;
        }

        v96 = v125;
        v97 = sub_22EFB648C();
        sub_22EF82E7C(v97, v98, &v124);

        v99 = v124;
        v122 = 0;
        v100 = sub_22EF71F2C(v96, *(&v96 + 1), v124, *(&v124 + 1));
        sub_22EF708C8(v96, *(&v96 + 1));
        sub_22EF708C8(v99, *(&v99 + 1));

        if ((v100 & 1) == 0)
        {
          break;
        }

        v8 = v121;
        v101 = v118;
        v86 = v115;
        if (!v115)
        {
          goto LABEL_128;
        }

        v102 = *v87;
        v89 = *(v87 + 8);
        *v87 = v89;
        *(v87 + 8) = v102;
        v87 -= 8;
        if (__CFADD__(v88++, 1))
        {
          goto LABEL_85;
        }
      }

      v8 = v121;
      v101 = v118;
      v86 = v115;
LABEL_85:
      v7 = (v101 + 1);
      v87 = v110 + 8;
      v88 = v109 - 1;
    }

    while (v7 != v108);
    v7 = v108;
    v5 = 0;
    v9 = v112;
    if (v108 < v112)
    {
      goto LABEL_120;
    }

LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_22EF7DDCC(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    v42 = v5;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_22EF7DDCC((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v43 = &v8[16 * v40];
    *(v43 + 4) = v9;
    *(v43 + 5) = v7;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v40)
    {
      break;
    }

LABEL_74:
    v6 = a3[1];
    v5 = v42;
    if (v7 >= v6)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v44 = v41 - 1;
    if (v41 >= 4)
    {
      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_109;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_110;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_112;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_115;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_119;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_45;
    }

    if (v41 == 3)
    {
      v45 = *(v8 + 4);
      v46 = *(v8 + 5);
      v55 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      v48 = v55;
LABEL_45:
      if (v48)
      {
        goto LABEL_111;
      }

      v61 = &v8[16 * v41];
      v63 = *v61;
      v62 = *(v61 + 1);
      v64 = __OFSUB__(v62, v63);
      v65 = v62 - v63;
      v66 = v64;
      if (v64)
      {
        goto LABEL_114;
      }

      v67 = &v8[16 * v44 + 32];
      v69 = *v67;
      v68 = *(v67 + 1);
      v55 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v55)
      {
        goto LABEL_117;
      }

      if (__OFADD__(v65, v70))
      {
        goto LABEL_118;
      }

      if (v65 + v70 >= v47)
      {
        if (v47 < v70)
        {
          v44 = v41 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_59;
    }

    v71 = &v8[16 * v41];
    v73 = *v71;
    v72 = *(v71 + 1);
    v55 = __OFSUB__(v72, v73);
    v65 = v72 - v73;
    v66 = v55;
LABEL_59:
    if (v66)
    {
      goto LABEL_113;
    }

    v74 = &v8[16 * v44];
    v76 = *(v74 + 4);
    v75 = *(v74 + 5);
    v55 = __OFSUB__(v75, v76);
    v77 = v75 - v76;
    if (v55)
    {
      goto LABEL_116;
    }

    if (v77 < v65)
    {
      goto LABEL_74;
    }

LABEL_66:
    v82 = v44 - 1;
    if (v44 - 1 >= v41)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_126;
    }

    v83 = *&v8[16 * v82 + 32];
    v84 = *&v8[16 * v44 + 40];
    sub_22EF9A490((*a3 + 8 * v83), (*a3 + 8 * *&v8[16 * v44 + 32]), (*a3 + 8 * v84), v5);
    if (v42)
    {
      goto LABEL_102;
    }

    if (v84 < v83)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_22EF9AAB4(v8);
    }

    if (v82 >= *(v8 + 2))
    {
      goto LABEL_106;
    }

    v85 = &v8[16 * v82];
    *(v85 + 4) = v83;
    *(v85 + 5) = v84;
    v126 = v8;
    sub_22EF9AA28(v44);
    v8 = v126;
    v41 = *(v126 + 2);
    if (v41 <= 1)
    {
      goto LABEL_74;
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
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v8 = sub_22EF9AAB4(v8);
LABEL_91:
  v126 = v8;
  v104 = *(v8 + 2);
  if (v104 >= 2)
  {
    while (*a3)
    {
      v105 = *&v8[16 * v104];
      v106 = *&v8[16 * v104 + 24];
      sub_22EF9A490((*a3 + 8 * v105), (*a3 + 8 * *&v8[16 * v104 + 16]), (*a3 + 8 * v106), v7);
      if (v5)
      {
        goto LABEL_102;
      }

      if (v106 < v105)
      {
        goto LABEL_107;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_22EF9AAB4(v8);
      }

      if (v104 - 2 >= *(v8 + 2))
      {
        goto LABEL_108;
      }

      v107 = &v8[16 * v104];
      *v107 = v105;
      *(v107 + 1) = v106;
      v126 = v8;
      sub_22EF9AA28(v104 - 1);
      v8 = v126;
      v104 = *(v126 + 2);
      if (v104 <= 1)
      {
        goto LABEL_102;
      }
    }

    goto LABEL_127;
  }

LABEL_102:
}

uint64_t sub_22EF99B6C(uint64_t *__src, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a2 - __src;
  v8 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 >= v11 >> 4)
  {
    if (a4 != a2 || &a2[2 * v12] <= a4)
    {
      memmove(a4, a2, 16 * v12);
    }

    v14 = &v4[2 * v12];
    if (v10 < 16 || v6 <= __src)
    {
      v26 = v6;
      goto LABEL_53;
    }

    v49 = v4;
    while (1)
    {
      v48 = v5;
      v27 = 0;
      v28 = v14;
      v50 = v14;
      __dsta = v6;
      v46 = v6 - 2;
      while (1)
      {
        v29 = &v28[v27];
        v30 = &v28[v27 - 2];
        v31 = *v30;
        v32 = v28[v27 - 1];
        v34 = *(__dsta - 2);
        v33 = *(__dsta - 1);
        sub_22EF70B68(*v30, v32);
        sub_22EF70B68(v34, v33);
        v35 = sub_22EF71F2C(v31, v32, v34, v33);
        sub_22EF708C8(v34, v33);
        if (v53)
        {
          sub_22EF708C8(v31, v32);
          v39 = v49;
          v40 = v50 - v49 + v27 * 8;
          v41 = v40 + 15;
          if (v40 >= 0)
          {
            v41 = v50 - v49 + v27 * 8;
          }

          v42 = v41 >> 4;
          v26 = __dsta;
          if (__dsta < v49 || __dsta >= (v49 + (v41 & 0xFFFFFFFFFFFFFFF0)))
          {
            v38 = 16 * v42;
          }

          else
          {
            if (__dsta == v49)
            {
              return 1;
            }

            v38 = 16 * v42;
          }

          goto LABEL_59;
        }

        sub_22EF708C8(v31, v32);
        if (v35)
        {
          break;
        }

        v4 = v49;
        v28 = v50;
        if (&v48[v27] != v29)
        {
          *&v48[v27 - 2] = *v30;
        }

        v27 -= 2;
        v14 = &v50[v27];
        if (&v50[v27] <= v49)
        {
          v26 = __dsta;
LABEL_53:
          v43 = v14 - v4;
          v44 = v14 - v4 + 15;
          if (v43 >= 0)
          {
            v44 = v43;
          }

          if (v26 >= v4 && v26 < (v4 + (v44 & 0xFFFFFFFFFFFFFFF0)) && v26 == v4)
          {
            return 1;
          }

          v38 = 16 * (v44 >> 4);
          v39 = v4;
LABEL_59:
          memmove(v26, v39, v38);
          return 1;
        }
      }

      v4 = v49;
      v5 = &v48[v27 - 2];
      v26 = v46;
      if (&v48[v27] != __dsta)
      {
        *v5 = *v46;
      }

      v14 = &v50[v27];
      if (&v50[v27] > v49)
      {
        v6 = v46;
        if (v46 > __src)
        {
          continue;
        }
      }

      v14 = &v50[v27];
      goto LABEL_53;
    }
  }

  v13 = __src;
  if (a4 != __src || &__src[2 * v9] <= a4)
  {
    memmove(a4, __src, 16 * v9);
  }

  v14 = &v4[2 * v9];
  if (v7 < 16)
  {
    v26 = v13;
    goto LABEL_53;
  }

  v15 = v53;
  if (v6 >= v5)
  {
LABEL_20:
    v26 = v13;
    goto LABEL_53;
  }

  __dst = &v4[2 * v9];
  while (1)
  {
    v16 = v5;
    v17 = v6;
    v18 = *v6;
    v19 = v6[1];
    v20 = v4;
    v21 = *v4;
    v22 = v4[1];
    sub_22EF70B68(v18, v19);
    sub_22EF70B68(v21, v22);
    v23 = sub_22EF71F2C(v18, v19, v21, v22);
    if (v15)
    {
      break;
    }

    v24 = v23;
    sub_22EF708C8(v21, v22);
    sub_22EF708C8(v18, v19);
    if ((v24 & 1) == 0)
    {
      v25 = v20;
      v4 = v20 + 2;
      v6 = v17;
      v5 = v16;
      if (v13 == v20)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v13 = *v25;
      goto LABEL_18;
    }

    v25 = v17;
    v6 = v17 + 2;
    v5 = v16;
    v4 = v20;
    if (v13 != v17)
    {
      goto LABEL_17;
    }

LABEL_18:
    v13 += 2;
    v14 = __dst;
    v15 = 0;
    if (v4 >= __dst || v6 >= v5)
    {
      goto LABEL_20;
    }
  }

  sub_22EF708C8(v21, v22);
  sub_22EF708C8(v18, v19);
  v36 = __dst - v20 + 15;
  if (__dst - v20 >= 0)
  {
    v36 = __dst - v20;
  }

  v37 = v36 >> 4;
  if (v13 < v20 || v13 >= (v20 + (v36 & 0xFFFFFFFFFFFFFFF0)))
  {
    v38 = 16 * v37;
    v26 = v13;
    v39 = v20;
    goto LABEL_59;
  }

  if (v13 != v20)
  {
    v38 = 16 * v37;
    v26 = v13;
    v39 = v20;
    goto LABEL_59;
  }

  return 1;
}

uint64_t sub_22EF99F80(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if ((a3 - __src) >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    v8 = __src;
    if (a4 != __src || &__src[8 * v14] <= a4)
    {
      memmove(a4, __src, 8 * v14);
    }

    v57 = &v6[8 * v14];
    if (v12 >= 8 && v8 > __dst)
    {
      v56 = v6;
LABEL_29:
      v51 = v8;
      v32 = v8 - 8;
      v33 = (v7 - 8);
      v34 = v57;
      v48 = v8 - 8;
      do
      {
        v54 = v33;
        v35 = *(v34 - 1);
        v49 = v34 - 8;
        v36 = *v32;
        v38 = *(v35 + 32);
        v37 = *(v35 + 40);

        sub_22EF83154(v38, v37);
        v39 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
        sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
        v40 = sub_22EFB646C();
        v42 = v41;

        v58 = v39;
        sub_22EF83154(*(v36 + 32), *(v36 + 40));
        v43 = sub_22EFB646C();
        v45 = v44;

        if (v40 == v43 && v42 == v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_22EFB684C();
        }

        if (v46)
        {
          v7 = v54;
          v6 = v56;
          v5 = v58;
          if (v54 + 1 != v51)
          {
            *v54 = *v48;
          }

          if (v57 <= v56 || (v8 = v48, v48 <= __dst))
          {
            v8 = v48;
            goto LABEL_44;
          }

          goto LABEL_29;
        }

        v6 = v56;
        v5 = v58;
        v34 = v49;
        if (v54 + 1 != v57)
        {
          *v54 = *v49;
        }

        v33 = v54 - 1;
        v57 = v49;
        v32 = v48;
      }

      while (v49 > v56);
      v57 = v49;
      v8 = v51;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v57 = &v6[8 * v11];
    if (v9 >= 8 && __src < v7)
    {
      v16 = __src;
      while (1)
      {
        v50 = v16;
        v52 = v8;
        v55 = v6;
        v17 = *v6;
        v19 = *(*v16 + 32);
        v18 = *(*v16 + 40);

        v20 = v19;
        v21 = v5;
        sub_22EF83154(v20, v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
        sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
        v22 = sub_22EFB646C();
        v24 = v23;

        sub_22EF83154(*(v17 + 32), *(v17 + 40));
        v25 = sub_22EFB646C();
        v27 = v26;

        if (v22 == v25 && v24 == v27)
        {
          break;
        }

        v28 = sub_22EFB684C();

        if ((v28 & 1) == 0)
        {
          goto LABEL_17;
        }

        v29 = v52;
        v30 = v50;
        v16 = v50 + 8;
        v31 = v52 == v50;
LABEL_18:
        v5 = v21;
        if (!v31)
        {
          *v29 = *v30;
        }

        v8 = v29 + 8;
        if (v6 >= v57 || v16 >= v7)
        {
          goto LABEL_44;
        }
      }

LABEL_17:
      v30 = v6;
      v6 += 8;
      v16 = v50;
      v29 = v52;
      v31 = v52 == v55;
      goto LABEL_18;
    }
  }

LABEL_44:
  if (v8 != v6 || v8 >= &v6[(v57 - v6 + (v57 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v8, v6, 8 * ((v57 - v6) / 8));
  }

  return 1;
}

uint64_t sub_22EF9A490(void **__dst, void **__src, void **a3, void **a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (a4 != __src || &__src[v14] <= a4)
    {
      memmove(a4, __src, 8 * v14);
    }

    v66 = &v5[v14];
    if (v12 >= 8 && v7 > v8)
    {
      v31 = -v5;
      v63 = v5;
      v59 = v8;
      v55 = -v5;
      while (1)
      {
        v32 = v7 - 1;
        v33 = v66;
        v34 = v66 + v31;
        v35 = v6 - 1;
        v56 = v7 - 1;
        v57 = v7;
        while (1)
        {
          v58 = v34;
          v61 = v35;
          v36 = *--v33;
          v37 = *v32;
          v38 = sub_22EFB648C();
          v40 = v39;
          v41 = v36;
          v42 = v37;
          sub_22EF82E7C(v38, v40, &v65);
          if (v4)
          {

            v49 = v63;
            if (v7 >= v63 && v7 < (v63 + ((v58 + (v58 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)) && v7 == v63)
            {
              return 1;
            }

            v51 = 8 * (v58 / 8);
            v52 = v7;
            goto LABEL_57;
          }

          v43 = v65;
          v44 = sub_22EFB648C();
          sub_22EF82E7C(v44, v45, &v64);
          v46 = v42;

          v47 = v64;
          v48 = sub_22EF71F2C(v43, *(&v43 + 1), v64, *(&v64 + 1));
          sub_22EF708C8(v43, *(&v43 + 1));
          sub_22EF708C8(v47, *(&v47 + 1));

          if (v48)
          {
            break;
          }

          v32 = v56;
          v7 = v57;
          if (v61 + 1 != v66)
          {
            *v61 = *v33;
          }

          v34 = v58 - 8;
          v35 = v61 - 1;
          v66 = v33;
          if (v33 <= v63)
          {
            v66 = v33;
            v5 = v63;
            goto LABEL_51;
          }
        }

        v6 = v61;
        if (v61 + 1 != v57)
        {
          *v61 = *v56;
        }

        v5 = v63;
        if (v66 > v63)
        {
          v7 = v56;
          v31 = v55;
          if (v56 > v59)
          {
            continue;
          }
        }

        v7 = v56;
        break;
      }
    }

LABEL_51:
    v53 = v66 - v5 + 7;
    if (v66 - v5 >= 0)
    {
      v53 = v66 - v5;
    }

    if (v7 >= v5 && v7 < (v5 + (v53 & 0xFFFFFFFFFFFFFFF8)) && v7 == v5)
    {
      return 1;
    }

    v51 = 8 * (v53 >> 3);
    v52 = v7;
    v49 = v5;
LABEL_57:
    memmove(v52, v49, v51);
    return 1;
  }

  if (a4 != __dst || &__dst[v11] <= a4)
  {
    memmove(a4, __dst, 8 * v11);
  }

  v66 = &v5[v11];
  if (v9 < 8 || v7 >= v6)
  {
LABEL_20:
    v7 = v8;
    goto LABEL_51;
  }

  v60 = v6;
  while (1)
  {
    v15 = *v7;
    v62 = v5;
    v16 = *v5;
    v17 = sub_22EFB648C();
    v19 = v18;
    v20 = v15;
    v21 = v16;
    sub_22EF82E7C(v17, v19, &v65);
    if (v4)
    {
      break;
    }

    v22 = v65;
    v23 = sub_22EFB648C();
    sub_22EF82E7C(v23, v24, &v64);
    v25 = v21;

    v26 = v64;
    v27 = sub_22EF71F2C(v22, *(&v22 + 1), v64, *(&v64 + 1));
    sub_22EF708C8(v22, *(&v22 + 1));
    sub_22EF708C8(v26, *(&v26 + 1));

    if ((v27 & 1) == 0)
    {
      v29 = v62;
      v5 = v62 + 1;
      v30 = v60;
      if (v8 == v62)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v8 = *v29;
      goto LABEL_18;
    }

    v28 = v7;
    v29 = v7++;
    v5 = v62;
    v30 = v60;
    if (v8 != v28)
    {
      goto LABEL_17;
    }

LABEL_18:
    ++v8;
    if (v5 >= v66 || v7 >= v30)
    {
      goto LABEL_20;
    }
  }

  v49 = v5;
  v50 = v66 - v5 + 7;
  if (v66 - v5 >= 0)
  {
    v50 = v66 - v5;
  }

  if (v8 < v5 || v8 >= (v5 + (v50 & 0xFFFFFFFFFFFFFFF8)) || v8 != v5)
  {
    v51 = 8 * (v50 >> 3);
    v52 = v8;
    goto LABEL_57;
  }

  return 1;
}

uint64_t sub_22EF9AA28(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22EF9AAB4(v3);
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

char *sub_22EF9AAC8(char *a1, int64_t a2, char a3)
{
  result = sub_22EF9ABC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EF9AAE8(char *a1, int64_t a2, char a3)
{
  result = sub_22EF9ADFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22EF9AB08(void *a1, int64_t a2, char a3)
{
  result = sub_22EF9AF1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22EF9AB28(void *a1, int64_t a2, char a3)
{
  result = sub_22EF9B06C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EF9AB48(char *a1, int64_t a2, char a3)
{
  result = sub_22EF9B1A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EF9AB68(char *a1, int64_t a2, char a3)
{
  result = sub_22EF9B2A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22EF9AB88(void *a1, int64_t a2, char a3)
{
  result = sub_22EF9B3B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EF9ABA8(char *a1, int64_t a2, char a3)
{
  result = sub_22EF9B4E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EF9ABC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E450, &qword_22EFBBCC0);
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

char *sub_22EF9ACD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E628, &qword_22EFBCD58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EF9ADFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E748, &qword_22EFBD260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EF9AF1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E7A8, &qword_22EFBD2C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E7B0, &unk_22EFBD2D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EF9B06C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6B0, &qword_22EFBD1B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6B8, &unk_22EFBD1C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EF9B1A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E600, &qword_22EFBD1B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_22EF9B2A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E610, &qword_22EFBCD40);
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

void *sub_22EF9B3B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E798, &qword_22EFBD2B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E7A0, &qword_22EFBD2C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EF9B4E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E430, &unk_22EFBD190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_22EF9B5D8(void *result)
{
  v2 = result[2];
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_22EF7DFDC(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22EF9B6DC(uint64_t result)
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
  v7 = *v1;
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

  result = sub_22EF7E200(result, v11, 1, v3);
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

uint64_t sub_22EF9B7D0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v3 + 3) >> 1, v9 < v5))
  {
    if (v4 <= v5)
    {
      v10 = v4 + v2;
    }

    else
    {
      v10 = v4;
    }

    v3 = sub_22EF7E464(isUniquelyReferenced_nonNull_native, v10, 1, v3);
    v9 = *(v3 + 3) >> 1;
  }

  v11 = *(v3 + 2);
  v12 = v9 - v11;
  result = sub_22EFAAC08(&v68, &v3[56 * v11 + 32], v9 - v11, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v15 = *(v3 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
LABEL_19:
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_47;
        }

        if (v19 >= ((v55 + 64) >> 6))
        {
          v29 = 0;
          v30 = 0;
          v25 = 0;
          v33 = 0;
          v31 = 0;
          v32 = 0;
LABEL_44:
          v22 = 0xF000000000000000;
          goto LABEL_45;
        }

        v18 = *(v13 + 8 * v19);
        ++v17;
        if (v18)
        {
          v58 = v14;
          goto LABEL_23;
        }
      }
    }

    *(v3 + 2) = v17;
  }

  if (result != v12)
  {
LABEL_13:
    result = sub_22EFA0FD0();
    *v1 = v3;
    return result;
  }

LABEL_16:
  v14 = *(v3 + 2);
  v13 = v69;
  v57 = v68;
  v17 = v71;
  v54 = v69;
  v55 = v70;
  v18 = v72;
  if (!v72)
  {
    goto LABEL_19;
  }

  v58 = *(v3 + 2);
  v19 = v71;
LABEL_23:
  v20 = (v18 - 1) & v18;
  v21 = (*(v57 + 48) + 56 * (__clz(__rbit64(v18)) | (v19 << 6)));
  v22 = v21[1];
  v23 = v21[3];
  v66 = v21[2];
  v25 = v21[4];
  v24 = v21[5];
  v26 = v21[6];
  v63 = *v21;
  sub_22EF70B68(*v21, v22);
  v27 = v23;
  v28 = v23;
  v29 = v26;
  v30 = v24;
  sub_22EF70B68(v28, v25);
  sub_22EF70B68(v24, v29);
  if (v22 >> 60 == 15)
  {
    v31 = v66;
    v32 = v63;
    v33 = v27;
LABEL_45:
    sub_22EFA7FAC(v32, v22, v31, v33, v25, v30, v29);
    goto LABEL_13;
  }

  v65 = v19;
  v34 = v58;
  v31 = v66;
  v32 = v63;
  v33 = v27;
  while (1)
  {
    v35 = v29;
    v36 = *(v3 + 3);
    v56 = v36 >> 1;
    v37 = v33;
    v38 = v31;
    if ((v36 >> 1) < v34 + 1)
    {
      v51 = v3;
      v52 = v34;
      v53 = sub_22EF7E464((v36 > 1), v34 + 1, 1, v51);
      v34 = v52;
      v3 = v53;
      v56 = *(v53 + 3) >> 1;
    }

    v60 = v37;
    v61 = v35;
    v62 = v30;
    v64 = v25;
    v67 = v38;
    if (v34 < v56)
    {
      break;
    }

LABEL_26:
    *(v3 + 2) = v34;
    v31 = v67;
    v33 = v60;
    v29 = v61;
    v30 = v62;
    v25 = v64;
    if (v22 >> 60 == 15)
    {
      goto LABEL_45;
    }
  }

  while (1)
  {
    v39 = v34;
    sub_22EF70B68(v32, v22);
    sub_22EF70B68(v60, v64);
    sub_22EF70B68(v62, v61);
    result = sub_22EFA7FAC(v32, v22, v67, v60, v64, v62, v61);
    v40 = &v3[56 * v39 + 32];
    *v40 = v32;
    v40[1] = v22;
    v40[2] = v67;
    v40[3] = v60;
    v40[4] = v64;
    v40[5] = v62;
    v40[6] = v61;
    v41 = v39 + 1;
    if (!v20)
    {
      break;
    }

    v59 = v41;
    v42 = v65;
LABEL_37:
    v44 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v45 = (*(v57 + 48) + 56 * (v44 | (v42 << 6)));
    v22 = v45[1];
    v46 = v45[3];
    v67 = v45[2];
    v48 = v45[4];
    v47 = v45[5];
    v49 = v45[6];
    v32 = *v45;
    sub_22EF70B68(*v45, v22);
    v60 = v46;
    v64 = v48;
    sub_22EF70B68(v46, v48);
    v61 = v49;
    v62 = v47;
    sub_22EF70B68(v47, v49);
    v34 = v59;
    if (v22 >> 60 == 15 || v59 >= v56)
    {
      goto LABEL_26;
    }
  }

  v43 = v65;
  while (1)
  {
    v42 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v42 >= ((v55 + 64) >> 6))
    {
      v29 = 0;
      v30 = 0;
      v25 = 0;
      v33 = 0;
      v31 = 0;
      v32 = 0;
      *(v3 + 2) = v41;
      goto LABEL_44;
    }

    v20 = *(v54 + 8 * v42);
    ++v43;
    if (v20)
    {
      v59 = v41;
      v65 = v42;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_22EF9BC48(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_22EFB67CC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_22EFB671C();
  *v1 = result;
  return result;
}

uint64_t sub_22EF9BCE8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x2318FB640](*(*v2 + 40), a2, 1);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_22EF9D11C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22EF9BDD0(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_22EFB68DC();
  sub_22EFB61EC();
  v8 = sub_22EFB691C();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_62:
    v36 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v53 = *v43;
    sub_22EF70B68(a2, a3);
    sub_22EF9D240(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v43 = *v53;
    *a1 = a2;
    a1[1] = a3;
    result = 1;
    goto LABEL_64;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v51 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v48 = v16;
  v47 = a3;
  v49 = v12;
  v50 = BYTE6(a3);
  v45 = v6 + 56;
  v46 = v6;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v15 < 3;
      if (((v23 | v51) & 1) == 0)
      {
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v24 = 0;
      if (v15 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_66;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_67;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v50;
        if (v15)
        {
          v28 = HIDWORD(a2) - a2;
          if (v48)
          {
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
LABEL_71:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_65;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_61;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v53 = v19;
        *&v53[8] = v18;
        v53[10] = BYTE2(v18);
        v53[11] = BYTE3(v18);
        v53[12] = BYTE4(v18);
        v53[13] = BYTE5(v18);
        sub_22EF70B68(v19, v18);
        v12 = v49;
        goto LABEL_60;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_68;
      }

      sub_22EF70B68(v19, v18);
      v33 = sub_22EFB603C();
      if (v33)
      {
        v35 = sub_22EFB605C();
        if (__OFSUB__(v19, v35))
        {
          goto LABEL_71;
        }

        v33 += v19 - v35;
      }

      goto LABEL_57;
    }

    if (v20 != 2)
    {
      break;
    }

    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    sub_22EF70B68(v19, v18);
    v33 = sub_22EFB603C();
    if (v33)
    {
      v34 = sub_22EFB605C();
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_70;
      }

      v33 += v32 - v34;
    }

    if (__OFSUB__(v31, v32))
    {
      goto LABEL_69;
    }

LABEL_57:
    sub_22EFB604C();
    a3 = v47;
    sub_22EF92D44(v33, a2, v47, v53);
    sub_22EF708C8(v19, v18);
    v9 = v45;
    v6 = v46;
    v12 = v49;
    if (v53[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v53[6] = 0;
  *v53 = 0;
  sub_22EF70B68(v19, v18);
LABEL_60:
  sub_22EF92D44(v53, a2, a3, &v52);
  sub_22EF708C8(v19, v18);
  if (!v52)
  {
    goto LABEL_13;
  }

LABEL_61:
  v39 = a2;
  v40 = a3;
LABEL_63:
  sub_22EF708C8(v39, v40);
  v41 = *(*(v6 + 48) + 16 * v11);
  *a1 = v41;
  sub_22EF70B68(v41, *(&v41 + 1));
  result = 0;
LABEL_64:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EF9C258(uint64_t a1, uint64_t a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_22EFB68DC();
  v7 = *a2;
  v6 = *(a2 + 8);
  sub_22EFB61EC();
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  sub_22EFB61EC();
  v78 = a2;
  v91 = *(a2 + 32);
  MEMORY[0x2318FB660]();
  v10 = sub_22EFB691C();
  v11 = v4 + 56;
  v12 = -1 << *(v4 + 32);
  v13 = v10 & ~v12;
  if (((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_127:
    v73 = *v77;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = *v77;
    sub_22EFA8018(v78, v98);
    sub_22EF9D6B8(v78, v13, isUniquelyReferenced_nonNull_native);
    *v77 = v97;
    v75 = *(v78 + 16);
    *a1 = *v78;
    *(a1 + 16) = v75;
    *(a1 + 32) = *(v78 + 32);
    result = 1;
    goto LABEL_128;
  }

  v14 = ~v12;
  if (v7)
  {
    v15 = 0;
  }

  else
  {
    v15 = v6 == 0xC000000000000000;
  }

  v16 = !v15;
  v93 = v16;
  v17 = v6 >> 62;
  v18 = __OFSUB__(HIDWORD(v7), v7);
  v87 = v18;
  v86 = HIDWORD(v7) - v7;
  v83 = v4;
  v84 = v6;
  v92 = BYTE6(v6);
  v19 = v14;
  if (v8)
  {
    v20 = 0;
  }

  else
  {
    v20 = v9 == 0xC000000000000000;
  }

  v21 = !v20;
  v89 = v21;
  v94 = v9 >> 62;
  v22 = __OFSUB__(HIDWORD(v8), v8);
  v81 = v22;
  v80 = v9;
  v88 = BYTE6(v9);
  v82 = v7;
  v85 = v4 + 56;
  v90 = v19;
  v95 = v17;
  while (1)
  {
    v23 = *(v4 + 48) + 40 * v13;
    v25 = *v23;
    v24 = *(v23 + 8);
    v27 = *(v23 + 16);
    v26 = *(v23 + 24);
    v28 = *(v23 + 32);
    v29 = v24 >> 62;
    if (v24 >> 62 == 3)
    {
      if (v25)
      {
        v30 = 0;
      }

      else
      {
        v30 = v24 == 0xC000000000000000;
      }

      v32 = !v30 || v17 < 3;
      if (((v32 | v93) & 1) == 0)
      {
        v96 = v28;
        v33 = 0;
        v34 = 0xC000000000000000;
        goto LABEL_56;
      }

LABEL_46:
      v35 = 0;
      if (v17 <= 1)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }

    if (v29 > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_46;
      }

      v37 = *(v25 + 16);
      v36 = *(v25 + 24);
      v38 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v38)
      {
        goto LABEL_131;
      }

      if (v17 <= 1)
      {
        goto LABEL_43;
      }
    }

    else if (v29)
    {
      LODWORD(v35) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_130;
      }

      v35 = v35;
      if (v17 <= 1)
      {
LABEL_43:
        v39 = v92;
        if (v17)
        {
          v39 = v86;
          if (v87)
          {
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v35 = BYTE6(v24);
      if (v17 <= 1)
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    if (v17 != 2)
    {
      if (v35)
      {
        goto LABEL_23;
      }

LABEL_55:
      v96 = v28;
      v33 = v25;
      v34 = v24;
LABEL_56:
      sub_22EF70B68(v33, v34);
      sub_22EF70B68(v27, v26);
      goto LABEL_57;
    }

    v41 = *(v7 + 16);
    v40 = *(v7 + 24);
    v38 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (v38)
    {
      goto LABEL_129;
    }

LABEL_49:
    if (v35 != v39)
    {
      goto LABEL_23;
    }

    if (v35 < 1)
    {
      goto LABEL_55;
    }

    v96 = v28;
    if (v29 <= 1)
    {
      if (!v29)
      {
        *v98 = v25;
        *&v98[8] = v24;
        v98[10] = BYTE2(v24);
        v98[11] = BYTE3(v24);
        v98[12] = BYTE4(v24);
        v98[13] = BYTE5(v24);
        sub_22EF70B68(v25, v24);
        sub_22EF70B68(v27, v26);
        v11 = v85;
        goto LABEL_115;
      }

      if (v25 >> 32 < v25)
      {
        goto LABEL_136;
      }

      sub_22EF70B68(v25, v24);
      sub_22EF70B68(v27, v26);
      v57 = sub_22EFB603C();
      if (v57)
      {
        v63 = sub_22EFB605C();
        if (__OFSUB__(v25, v63))
        {
          goto LABEL_139;
        }

        v57 += v25 - v63;
      }

LABEL_112:
      sub_22EFB604C();
      v64 = v57;
      v7 = v82;
      sub_22EF92D44(v64, v82, v84, v98);
      v4 = v83;
      v11 = v85;
      v19 = v90;
      if ((v98[0] & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_57;
    }

    if (v29 == 2)
    {
      v56 = *(v25 + 16);
      v55 = *(v25 + 24);
      sub_22EF70B68(v25, v24);
      sub_22EF70B68(v27, v26);
      v57 = sub_22EFB603C();
      if (v57)
      {
        v58 = sub_22EFB605C();
        if (__OFSUB__(v56, v58))
        {
          goto LABEL_138;
        }

        v57 += v56 - v58;
      }

      if (__OFSUB__(v55, v56))
      {
        goto LABEL_137;
      }

      goto LABEL_112;
    }

    *&v98[6] = 0;
    *v98 = 0;
    sub_22EF70B68(v25, v24);
    sub_22EF70B68(v27, v26);
LABEL_115:
    sub_22EF92D44(v98, v7, v84, &v97);
    v19 = v90;
    if ((v97 & 1) == 0)
    {
LABEL_22:
      sub_22EF708C8(v25, v24);
      sub_22EF708C8(v27, v26);
      v17 = v95;
      goto LABEL_23;
    }

LABEL_57:
    v42 = v26 >> 62;
    if (v26 >> 62 == 3)
    {
      if (v27)
      {
        v43 = 0;
      }

      else
      {
        v43 = v26 == 0xC000000000000000;
      }

      v44 = v94;
      v46 = !v43 || v94 < 3;
      if (((v46 | v89) & 1) == 0)
      {
        sub_22EF708C8(v25, v24);
        v47 = 0;
        v48 = 0xC000000000000000;
        goto LABEL_91;
      }

LABEL_79:
      v49 = 0;
      if (v44 <= 1)
      {
        goto LABEL_76;
      }

      goto LABEL_80;
    }

    v44 = v94;
    if (v42 <= 1)
    {
      break;
    }

    if (v42 != 2)
    {
      goto LABEL_79;
    }

    v51 = *(v27 + 16);
    v50 = *(v27 + 24);
    v38 = __OFSUB__(v50, v51);
    v49 = v50 - v51;
    if (v38)
    {
      goto LABEL_135;
    }

    if (v94 <= 1)
    {
      goto LABEL_76;
    }

LABEL_80:
    if (v44 == 2)
    {
      v54 = *(v8 + 16);
      v53 = *(v8 + 24);
      v38 = __OFSUB__(v53, v54);
      v52 = v53 - v54;
      if (v38)
      {
        goto LABEL_132;
      }

      goto LABEL_82;
    }

    if (v49)
    {
      goto LABEL_22;
    }

LABEL_90:
    sub_22EF708C8(v25, v24);
    v47 = v27;
    v48 = v26;
LABEL_91:
    sub_22EF708C8(v47, v48);
    v17 = v95;
    if (v91 == v96)
    {
      goto LABEL_126;
    }

LABEL_23:
    v13 = (v13 + 1) & v19;
    if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_127;
    }
  }

  if (!v42)
  {
    v49 = BYTE6(v26);
    if (v94 <= 1)
    {
      goto LABEL_76;
    }

    goto LABEL_80;
  }

  LODWORD(v49) = HIDWORD(v27) - v27;
  if (__OFSUB__(HIDWORD(v27), v27))
  {
    goto LABEL_134;
  }

  v49 = v49;
  if (v94 > 1)
  {
    goto LABEL_80;
  }

LABEL_76:
  v52 = v88;
  if (v44)
  {
    v52 = HIDWORD(v8) - v8;
    if (v81)
    {
      goto LABEL_133;
    }
  }

LABEL_82:
  if (v49 != v52)
  {
    goto LABEL_22;
  }

  if (v49 < 1)
  {
    goto LABEL_90;
  }

  if (v42 > 1)
  {
    if (v42 == 2)
    {
      v59 = *(v27 + 16);
      v60 = *(v27 + 24);
      v61 = sub_22EFB603C();
      if (v61)
      {
        v62 = sub_22EFB605C();
        if (__OFSUB__(v59, v62))
        {
          goto LABEL_142;
        }

        v61 += v59 - v62;
      }

      if (__OFSUB__(v60, v59))
      {
        goto LABEL_141;
      }

      goto LABEL_121;
    }

    *&v98[6] = 0;
    *v98 = 0;
LABEL_123:
    sub_22EF92D44(v98, v8, v80, &v97);
    sub_22EF708C8(v25, v24);
    sub_22EF708C8(v27, v26);
    v66 = v97;
  }

  else
  {
    if (!v42)
    {
      *v98 = v27;
      *&v98[8] = v26;
      v98[10] = BYTE2(v26);
      v98[11] = BYTE3(v26);
      v98[12] = BYTE4(v26);
      v98[13] = BYTE5(v26);
      goto LABEL_123;
    }

    if (v27 >> 32 < v27)
    {
      goto LABEL_140;
    }

    v61 = sub_22EFB603C();
    if (v61)
    {
      v65 = sub_22EFB605C();
      if (__OFSUB__(v27, v65))
      {
        goto LABEL_143;
      }

      v61 += v27 - v65;
    }

LABEL_121:
    sub_22EFB604C();
    sub_22EF92D44(v61, v8, v80, v98);
    sub_22EF708C8(v25, v24);
    sub_22EF708C8(v27, v26);
    v66 = v98[0];
    v7 = v82;
    v4 = v83;
    v11 = v85;
  }

  v19 = v90;
  v17 = v95;
  if (!v66 || ((v91 ^ v96) & 1) != 0)
  {
    goto LABEL_23;
  }

LABEL_126:
  sub_22EFA8050(v78);
  v67 = *(v4 + 48) + 40 * v13;
  v68 = *v67;
  v69 = *(v67 + 8);
  v70 = *(v67 + 16);
  v71 = *(v67 + 24);
  LOBYTE(v67) = *(v67 + 32);
  *a1 = v68;
  *(a1 + 8) = v69;
  *(a1 + 16) = v70;
  *(a1 + 24) = v71;
  *(a1 + 32) = v67;
  sub_22EF70B68(v68, v69);
  sub_22EF70B68(v70, v71);
  result = 0;
LABEL_128:
  v76 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EF9CB1C(uint64_t a1, uint64_t *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_22EFB68DC();
  v6 = *a2;
  v7 = a2[1];
  sub_22EFB61EC();
  v75 = a2[2];
  MEMORY[0x2318FB660]();
  v8 = sub_22EFB691C();
  v9 = v4 + 56;
  v10 = -1 << *(v4 + 32);
  v11 = v8 & ~v10;
  v64 = a2;
  if ((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    if (v6)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7 == 0xC000000000000000;
    }

    v14 = !v13;
    v15 = v7 >> 62;
    v16 = __OFSUB__(HIDWORD(v6), v6);
    v72 = v16;
    v70 = v7;
    v71 = HIDWORD(v6) - v6;
    v17 = BYTE6(v7);
    v77 = v6;
    v18 = 0;
    v19 = v75;
    v68 = ~v10;
    v69 = v4 + 56;
    v67 = v14;
    v66 = BYTE6(v7);
    v62 = v4;
    while (1)
    {
      v20 = (*(v4 + 48) + 56 * v11);
      v22 = *v20;
      v21 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      v25 = v20[4];
      v26 = v20[5];
      v27 = v20[6];
      v28 = v21 >> 62;
      if (v21 >> 62 != 3)
      {
        break;
      }

      if (v22)
      {
        v29 = 0;
      }

      else
      {
        v29 = v21 == 0xC000000000000000;
      }

      v31 = !v29 || v15 < 3;
      if ((v31 | v14))
      {
        goto LABEL_37;
      }

LABEL_13:
      if (v23 == v19)
      {
        sub_22EF70CFC(v64);
        v53 = *(v4 + 48) + 56 * v11;
        v54 = *v53;
        v55 = *(v53 + 24);
        v56 = *(v53 + 32);
        v57 = *(v53 + 40);
        v58 = *(v53 + 48);
        *a1 = *v53;
        v59 = *(v53 + 8);
        *(a1 + 8) = v59;
        *(a1 + 24) = v55;
        *(a1 + 32) = v56;
        *(a1 + 40) = v57;
        *(a1 + 48) = v58;
        sub_22EF70B68(v54, v59);
        sub_22EF70B68(v55, v56);
        sub_22EF70B68(v57, v58);
        result = 0;
        goto LABEL_65;
      }

LABEL_14:
      v11 = (v11 + 1) & v12;
      if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v34 = *(v22 + 16);
        v33 = *(v22 + 24);
        v35 = __OFSUB__(v33, v34);
        v32 = v33 - v34;
        if (v35)
        {
          goto LABEL_67;
        }

        if (v15 > 1)
        {
          goto LABEL_38;
        }
      }

      else
      {
LABEL_37:
        v32 = 0;
        if (v15 > 1)
        {
LABEL_38:
          if (v15 != 2)
          {
            if (v32)
            {
              goto LABEL_14;
            }

            goto LABEL_13;
          }

          v38 = *(v77 + 16);
          v37 = *(v77 + 24);
          v35 = __OFSUB__(v37, v38);
          v36 = v37 - v38;
          if (v35)
          {
            goto LABEL_66;
          }

LABEL_40:
          if (v32 != v36)
          {
            goto LABEL_14;
          }

          if (v32 < 1)
          {
            goto LABEL_13;
          }

          v76 = v27;
          if (v28 > 1)
          {
            v73 = v26;
            if (v28 != 2)
            {
              *&v79[6] = 0;
              *v79 = 0;
              sub_22EF70B68(v22, v21);
              sub_22EF70B68(v24, v25);
              sub_22EF70B68(v26, v76);
              sub_22EF92D44(v79, v77, v70, &v78);
              sub_22EF708C8(v22, v21);
              sub_22EF708C8(v24, v25);
              v40 = v26;
              v41 = v76;
              goto LABEL_60;
            }

            v74 = v18;
            v42 = *(v22 + 16);
            v61 = *(v22 + 24);
            sub_22EF70B68(v22, v21);
            sub_22EF70B68(v24, v25);
            sub_22EF70B68(v26, v76);
            v43 = sub_22EFB603C();
            if (v43)
            {
              v44 = sub_22EFB605C();
              if (__OFSUB__(v42, v44))
              {
                goto LABEL_71;
              }

              v43 += v42 - v44;
            }

            if (__OFSUB__(v61, v42))
            {
              goto LABEL_70;
            }
          }

          else
          {
            v74 = v18;
            if (!v28)
            {
              *v79 = v22;
              *&v79[8] = v21;
              v79[10] = BYTE2(v21);
              v79[11] = BYTE3(v21);
              v79[12] = BYTE4(v21);
              v79[13] = BYTE5(v21);
              v39 = v27;
              sub_22EF70B68(v22, v21);
              sub_22EF70B68(v24, v25);
              sub_22EF70B68(v26, v39);
              v18 = v74;
              sub_22EF92D44(v79, v77, v70, &v78);
              sub_22EF708C8(v22, v21);
              sub_22EF708C8(v24, v25);
              v40 = v26;
              v41 = v76;
LABEL_60:
              sub_22EF708C8(v40, v41);
              v48 = v78;
LABEL_61:
              v19 = v75;
              v12 = v68;
              v9 = v69;
              v14 = v67;
              v17 = v66;
              if (!v48)
              {
                goto LABEL_14;
              }

              goto LABEL_13;
            }

            if (v22 >> 32 < v22)
            {
              goto LABEL_69;
            }

            v45 = v26;
            v46 = v27;
            sub_22EF70B68(v22, v21);
            sub_22EF70B68(v24, v25);
            v73 = v45;
            sub_22EF70B68(v45, v46);
            v43 = sub_22EFB603C();
            if (v43)
            {
              v47 = sub_22EFB605C();
              if (__OFSUB__(v22, v47))
              {
                goto LABEL_72;
              }

              v43 += v22 - v47;
            }
          }

          sub_22EFB604C();
          v18 = v74;
          sub_22EF92D44(v43, v77, v70, v79);
          sub_22EF708C8(v22, v21);
          sub_22EF708C8(v24, v25);
          sub_22EF708C8(v73, v76);
          v48 = v79[0];
          v4 = v62;
          goto LABEL_61;
        }
      }
    }

    else if (v28)
    {
      LODWORD(v32) = HIDWORD(v22) - v22;
      if (__OFSUB__(HIDWORD(v22), v22))
      {
        goto LABEL_68;
      }

      v32 = v32;
      if (v15 > 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v32 = BYTE6(v21);
      if (v15 > 1)
      {
        goto LABEL_38;
      }
    }

    v36 = v17;
    if (v15)
    {
      v36 = v71;
      if (v72)
      {
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
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
      }
    }

    goto LABEL_40;
  }

LABEL_63:
  v49 = *v63;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v63;
  sub_22EF70CC4(v64, v79);
  sub_22EF9DFAC(v64, v11, isUniquelyReferenced_nonNull_native);
  *v63 = v78;
  v51 = *(v64 + 16);
  *a1 = *v64;
  *(a1 + 16) = v51;
  *(a1 + 32) = *(v64 + 32);
  *(a1 + 48) = *(v64 + 48);
  result = 1;
LABEL_65:
  v60 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EF9D11C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22EF94BAC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22EF9E6EC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22EF9EF0C(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x2318FB640](*(*v3 + 40), v4, 1);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22EFB686C();
  __break(1u);
  return result;
}

uint64_t sub_22EF9D240(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v53 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_22EF94DDC(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_22EF9E82C();
        goto LABEL_68;
      }

      sub_22EF9F100(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    sub_22EFB68DC();
    sub_22EFB61EC();
    result = sub_22EFB691C();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = result & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (v7)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v50 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(v7), v7);
      v47 = v18;
      v46 = HIDWORD(v7) - v7;
      v48 = v14;
      v49 = BYTE6(a2);
      v43 = v7;
      v44 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(v7 + 16);
          v28 = *(v7 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v49;
          if (v17)
          {
            v27 = v46;
            if (v47)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_22EF70B68(v21, v20);
              v35 = sub_22EFB603C();
              if (v35)
              {
                v36 = sub_22EFB605C();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v52[6] = 0;
            *v52 = 0;
            sub_22EF70B68(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_22EF70B68(v21, v20);
              v35 = sub_22EFB603C();
              if (v35)
              {
                v37 = sub_22EFB605C();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              sub_22EFB604C();
              v7 = v43;
              a2 = v44;
              sub_22EF92D44(v35, v43, v44, v52);
              result = sub_22EF708C8(v21, v20);
              v12 = v10 + 56;
              v14 = v48;
              if (v52[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v52 = v21;
            *&v52[8] = v20;
            v52[10] = BYTE2(v20);
            v52[11] = BYTE3(v20);
            v52[12] = BYTE4(v20);
            v52[13] = BYTE5(v20);
            sub_22EF70B68(v21, v20);
            v14 = v48;
          }

          sub_22EF92D44(v52, v7, a2, &v51);
          result = sub_22EF708C8(v21, v20);
          if (v51)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v50) & 1) == 0)
      {
LABEL_67:
        result = sub_22EFB686C();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v45;
  *(*v45 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = v7;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EF9D6B8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v98 = *MEMORY[0x277D85DE8];
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22EF9503C(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_22EF9E988();
        goto LABEL_134;
      }

      sub_22EF9F33C(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_22EFB68DC();
    v11 = *v6;
    v12 = *(v6 + 8);
    sub_22EFB61EC();
    v13 = *(v6 + 16);
    v14 = *(v6 + 24);
    sub_22EFB61EC();
    v87 = *(v6 + 32);
    MEMORY[0x2318FB660]();
    result = sub_22EFB691C();
    v15 = -1 << *(v9 + 32);
    a2 = result & ~v15;
    v95 = v9 + 56;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = v9;
      v94 = ~v15;
      if (v11)
      {
        v17 = 0;
      }

      else
      {
        v17 = v12 == 0xC000000000000000;
      }

      v18 = !v17;
      v91 = v18;
      v19 = v11;
      v20 = v12 >> 62;
      v89 = v19;
      v21 = HIDWORD(v19) - v19;
      v22 = __OFSUB__(HIDWORD(v19), v19);
      v84 = v22;
      v82 = v13;
      v83 = v21;
      v90 = BYTE6(v12);
      if (v13)
      {
        v23 = 0;
      }

      else
      {
        v23 = v14 == 0xC000000000000000;
      }

      v24 = !v23;
      v86 = v24;
      v92 = v14 >> 62;
      v25 = __OFSUB__(HIDWORD(v13), v13);
      v78 = v25;
      v76 = v14;
      v77 = HIDWORD(v13) - v13;
      v85 = BYTE6(v14);
      v79 = v4;
      v80 = v6;
      v81 = v9;
      v26 = v12;
      v88 = v12;
      while (1)
      {
        v27 = *(v16 + 48) + 40 * a2;
        v29 = *v27;
        v28 = *(v27 + 8);
        v31 = *(v27 + 16);
        v30 = *(v27 + 24);
        v32 = *(v27 + 32);
        v33 = v28 >> 62;
        if (v28 >> 62 == 3)
        {
          break;
        }

        if (v33 > 1)
        {
          if (v33 != 2)
          {
            goto LABEL_53;
          }

          v41 = *(v29 + 16);
          v40 = *(v29 + 24);
          v42 = __OFSUB__(v40, v41);
          v39 = v40 - v41;
          if (v42)
          {
            goto LABEL_139;
          }

          if (v20 <= 1)
          {
            goto LABEL_50;
          }
        }

        else if (v33)
        {
          LODWORD(v39) = HIDWORD(v29) - v29;
          if (__OFSUB__(HIDWORD(v29), v29))
          {
            goto LABEL_138;
          }

          v39 = v39;
          if (v20 <= 1)
          {
LABEL_50:
            v43 = v90;
            if (v20)
            {
              v43 = v83;
              if (v84)
              {
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
LABEL_142:
                __break(1u);
LABEL_143:
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
              }
            }

            goto LABEL_56;
          }
        }

        else
        {
          v39 = BYTE6(v28);
          if (v20 <= 1)
          {
            goto LABEL_50;
          }
        }

LABEL_54:
        if (v20 != 2)
        {
          if (v39)
          {
            goto LABEL_30;
          }

LABEL_62:
          v93 = v32;
          v37 = v29;
          v38 = v28;
LABEL_63:
          sub_22EF70B68(v37, v38);
          sub_22EF70B68(v31, v30);
          goto LABEL_64;
        }

        v45 = *(v89 + 16);
        v44 = *(v89 + 24);
        v42 = __OFSUB__(v44, v45);
        v43 = v44 - v45;
        if (v42)
        {
          goto LABEL_136;
        }

LABEL_56:
        if (v39 != v43)
        {
          goto LABEL_30;
        }

        if (v39 < 1)
        {
          goto LABEL_62;
        }

        v93 = v32;
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v59 = *(v29 + 16);
            v60 = *(v29 + 24);
            sub_22EF70B68(v29, v28);
            sub_22EF70B68(v31, v30);
            v61 = sub_22EFB603C();
            if (v61)
            {
              v62 = sub_22EFB605C();
              if (__OFSUB__(v59, v62))
              {
                goto LABEL_146;
              }

              v61 += v59 - v62;
            }

            if (__OFSUB__(v60, v59))
            {
              goto LABEL_145;
            }

LABEL_119:
            sub_22EFB604C();
            sub_22EF92D44(v61, v89, v88, v97);
            v26 = v88;
            v4 = v79;
            v6 = v80;
            v16 = v81;
            if ((v97[0] & 1) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_64;
          }

          *&v97[6] = 0;
          *v97 = 0;
          sub_22EF70B68(v29, v28);
          sub_22EF70B68(v31, v30);
        }

        else
        {
          if (v33)
          {
            if (v29 >> 32 < v29)
            {
              goto LABEL_144;
            }

            sub_22EF70B68(v29, v28);
            sub_22EF70B68(v31, v30);
            v61 = sub_22EFB603C();
            if (v61)
            {
              v67 = sub_22EFB605C();
              if (__OFSUB__(v29, v67))
              {
                goto LABEL_147;
              }

              v61 += v29 - v67;
            }

            goto LABEL_119;
          }

          *v97 = v29;
          *&v97[8] = v28;
          v97[10] = BYTE2(v28);
          v97[11] = BYTE3(v28);
          v97[12] = BYTE4(v28);
          v97[13] = BYTE5(v28);
          sub_22EF70B68(v29, v28);
          sub_22EF70B68(v31, v30);
          v16 = v81;
        }

        sub_22EF92D44(v97, v89, v26, v96);
        v26 = v88;
        if (!v96[0])
        {
LABEL_29:
          sub_22EF708C8(v29, v28);
          result = sub_22EF708C8(v31, v30);
          goto LABEL_30;
        }

LABEL_64:
        v46 = v30 >> 62;
        if (v30 >> 62 == 3)
        {
          if (v31)
          {
            v47 = 0;
          }

          else
          {
            v47 = v30 == 0xC000000000000000;
          }

          v48 = v92;
          v50 = !v47 || v92 < 3;
          if (((v50 | v86) & 1) == 0)
          {
            sub_22EF708C8(v29, v28);
            v51 = 0;
            v52 = 0xC000000000000000;
            goto LABEL_98;
          }

LABEL_86:
          v53 = 0;
          if (v48 <= 1)
          {
            goto LABEL_83;
          }

          goto LABEL_87;
        }

        v48 = v92;
        if (v46 > 1)
        {
          if (v46 != 2)
          {
            goto LABEL_86;
          }

          v55 = *(v31 + 16);
          v54 = *(v31 + 24);
          v42 = __OFSUB__(v54, v55);
          v53 = v54 - v55;
          if (v42)
          {
            goto LABEL_143;
          }

          if (v92 <= 1)
          {
            goto LABEL_83;
          }
        }

        else if (v46)
        {
          LODWORD(v53) = HIDWORD(v31) - v31;
          if (__OFSUB__(HIDWORD(v31), v31))
          {
            goto LABEL_142;
          }

          v53 = v53;
          if (v92 <= 1)
          {
LABEL_83:
            v56 = v85;
            if (v48)
            {
              v56 = v77;
              if (v78)
              {
                goto LABEL_140;
              }
            }

            goto LABEL_89;
          }
        }

        else
        {
          v53 = BYTE6(v30);
          if (v92 <= 1)
          {
            goto LABEL_83;
          }
        }

LABEL_87:
        if (v48 != 2)
        {
          if (v53)
          {
            goto LABEL_29;
          }

LABEL_97:
          sub_22EF708C8(v29, v28);
          v51 = v31;
          v52 = v30;
LABEL_98:
          result = sub_22EF708C8(v51, v52);
          if (v87 == v93)
          {
            goto LABEL_133;
          }

          goto LABEL_30;
        }

        v58 = *(v82 + 16);
        v57 = *(v82 + 24);
        v42 = __OFSUB__(v57, v58);
        v56 = v57 - v58;
        if (v42)
        {
          goto LABEL_141;
        }

LABEL_89:
        if (v53 != v56)
        {
          goto LABEL_29;
        }

        if (v53 < 1)
        {
          goto LABEL_97;
        }

        if (v46 > 1)
        {
          if (v46 != 2)
          {
            *&v97[6] = 0;
            *v97 = 0;
            goto LABEL_130;
          }

          v63 = *(v31 + 16);
          v64 = *(v31 + 24);
          v65 = sub_22EFB603C();
          if (v65)
          {
            v66 = sub_22EFB605C();
            if (__OFSUB__(v63, v66))
            {
              goto LABEL_150;
            }

            v65 += v63 - v66;
          }

          if (__OFSUB__(v64, v63))
          {
            goto LABEL_149;
          }
        }

        else
        {
          if (!v46)
          {
            *v97 = v31;
            *&v97[8] = v30;
            v97[10] = BYTE2(v30);
            v97[11] = BYTE3(v30);
            v97[12] = BYTE4(v30);
            v97[13] = BYTE5(v30);
LABEL_130:
            sub_22EF92D44(v97, v82, v76, v96);
            sub_22EF708C8(v29, v28);
            result = sub_22EF708C8(v31, v30);
            v69 = v96[0];
            goto LABEL_131;
          }

          if (v31 >> 32 < v31)
          {
            goto LABEL_148;
          }

          v65 = sub_22EFB603C();
          if (v65)
          {
            v68 = sub_22EFB605C();
            if (__OFSUB__(v31, v68))
            {
              goto LABEL_151;
            }

            v65 += v31 - v68;
          }
        }

        sub_22EFB604C();
        sub_22EF92D44(v65, v82, v76, v97);
        sub_22EF708C8(v29, v28);
        result = sub_22EF708C8(v31, v30);
        v69 = v97[0];
        v4 = v79;
        v6 = v80;
        v16 = v81;
LABEL_131:
        v26 = v88;
        if (v69 && ((v87 ^ v93) & 1) == 0)
        {
LABEL_133:
          result = sub_22EFB686C();
          __break(1u);
          goto LABEL_134;
        }

LABEL_30:
        a2 = (a2 + 1) & v94;
        if (((*(v95 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_134;
        }
      }

      if (v29)
      {
        v34 = 0;
      }

      else
      {
        v34 = v28 == 0xC000000000000000;
      }

      v36 = !v34 || v20 < 3;
      if (((v36 | v91) & 1) == 0)
      {
        v93 = v32;
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_53:
      v39 = 0;
      if (v20 <= 1)
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }
  }

LABEL_134:
  v70 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v71 = *(v70 + 48) + 40 * a2;
  v72 = *(v6 + 16);
  *v71 = *v6;
  *(v71 + 16) = v72;
  *(v71 + 32) = *(v6 + 32);
  v73 = *(v70 + 16);
  v42 = __OFADD__(v73, 1);
  v74 = v73 + 1;
  if (v42)
  {
    goto LABEL_137;
  }

  *(v70 + 16) = v74;
  v75 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EF9DFAC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v72 = *MEMORY[0x277D85DE8];
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v66 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_73;
  }

  if (a3)
  {
    sub_22EF952E4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22EF9EB0C();
      goto LABEL_73;
    }

    sub_22EF9F5DC(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_22EFB68DC();
  v10 = *v5;
  v11 = v5[1];
  sub_22EFB61EC();
  v64 = v5[2];
  MEMORY[0x2318FB660]();
  result = sub_22EFB691C();
  v12 = v8 + 56;
  v13 = -1 << *(v8 + 32);
  a2 = result & ~v13;
  if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
LABEL_73:
    v49 = *v65;
    *(*v65 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    v50 = *(v49 + 48) + 56 * a2;
    v51 = *(v66 + 16);
    *v50 = *v66;
    *(v50 + 16) = v51;
    *(v50 + 32) = *(v66 + 32);
    *(v50 + 48) = *(v66 + 48);
    v52 = *(v49 + 16);
    v37 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (!v37)
    {
      *(v49 + 16) = v53;
      v54 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }

  v14 = v8;
  v15 = ~v13;
  if (v10)
  {
    v16 = 0;
  }

  else
  {
    v16 = v11 == 0xC000000000000000;
  }

  v17 = !v16;
  v18 = v11 >> 62;
  v19 = __OFSUB__(HIDWORD(v10), v10);
  v63 = v19;
  v61 = v11;
  v62 = HIDWORD(v10) - v10;
  v20 = BYTE6(v11);
  result = 56;
  v56 = v8;
  v57 = BYTE6(v11);
  v67 = v10;
  v21 = v64;
  v59 = ~v13;
  v60 = v8 + 56;
  v58 = v17;
  while (1)
  {
    v22 = (*(v14 + 48) + 56 * a2);
    v23 = *v22;
    v24 = v22[1];
    v26 = v22[2];
    v25 = v22[3];
    v28 = v22[4];
    v27 = v22[5];
    v29 = v22[6];
    v30 = v24 >> 62;
    if (v24 >> 62 == 3)
    {
      if (v23)
      {
        v31 = 0;
      }

      else
      {
        v31 = v24 == 0xC000000000000000;
      }

      v33 = !v31 || v18 < 3;
      if (((v33 | v17) & 1) == 0)
      {
LABEL_19:
        if (v26 == v21)
        {
          break;
        }

        goto LABEL_20;
      }

LABEL_43:
      v34 = 0;
      if (v18 <= 1)
      {
        goto LABEL_40;
      }

      goto LABEL_44;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_43;
      }

      v36 = *(v23 + 16);
      v35 = *(v23 + 24);
      v37 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v37)
      {
        goto LABEL_79;
      }

      if (v18 <= 1)
      {
        goto LABEL_40;
      }
    }

    else if (v30)
    {
      LODWORD(v34) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        goto LABEL_78;
      }

      v34 = v34;
      if (v18 <= 1)
      {
LABEL_40:
        v38 = v20;
        if (v18)
        {
          v38 = v62;
          if (v63)
          {
            goto LABEL_76;
          }
        }

        goto LABEL_46;
      }
    }

    else
    {
      v34 = BYTE6(v24);
      if (v18 <= 1)
      {
        goto LABEL_40;
      }
    }

LABEL_44:
    if (v18 != 2)
    {
      if (!v34)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    v40 = *(v10 + 16);
    v39 = *(v10 + 24);
    v37 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (v37)
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

LABEL_46:
    if (v34 != v38)
    {
      goto LABEL_20;
    }

    if (v34 < 1)
    {
      goto LABEL_19;
    }

    v69 = v27;
    if (v30 > 1)
    {
      v68 = v29;
      if (v30 != 2)
      {
        *&v71[6] = 0;
        *v71 = 0;
        sub_22EF70B68(v23, v24);
        sub_22EF70B68(v25, v28);
        sub_22EF70B68(v69, v29);
        goto LABEL_68;
      }

      v42 = *(v23 + 16);
      v55 = *(v23 + 24);
      sub_22EF70B68(v23, v24);
      sub_22EF70B68(v25, v28);
      sub_22EF70B68(v69, v29);
      v43 = sub_22EFB603C();
      if (v43)
      {
        v44 = sub_22EFB605C();
        if (__OFSUB__(v42, v44))
        {
          goto LABEL_82;
        }

        v43 += v42 - v44;
      }

      if (__OFSUB__(v55, v42))
      {
        goto LABEL_81;
      }

LABEL_66:
      sub_22EFB604C();
      sub_22EF92D44(v43, v67, v61, v71);
      sub_22EF708C8(v23, v24);
      sub_22EF708C8(v25, v28);
      sub_22EF708C8(v69, v68);
      v48 = v71[0];
      v14 = v56;
      goto LABEL_69;
    }

    if (v30)
    {
      if (v23 >> 32 < v23)
      {
        goto LABEL_80;
      }

      v45 = v29;
      v46 = v27;
      sub_22EF70B68(v23, v24);
      sub_22EF70B68(v25, v28);
      v68 = v45;
      sub_22EF70B68(v46, v45);
      v43 = sub_22EFB603C();
      if (v43)
      {
        v47 = sub_22EFB605C();
        if (__OFSUB__(v23, v47))
        {
          goto LABEL_83;
        }

        v43 += v23 - v47;
      }

      goto LABEL_66;
    }

    *v71 = v23;
    *&v71[8] = v24;
    v71[10] = BYTE2(v24);
    v71[11] = BYTE3(v24);
    v71[12] = BYTE4(v24);
    v71[13] = BYTE5(v24);
    v41 = v27;
    sub_22EF70B68(v23, v24);
    sub_22EF70B68(v25, v28);
    sub_22EF70B68(v41, v29);
    v14 = v56;
LABEL_68:
    sub_22EF92D44(v71, v10, v61, &v70);
    sub_22EF708C8(v23, v24);
    sub_22EF708C8(v25, v28);
    sub_22EF708C8(v69, v29);
    v48 = v70;
LABEL_69:
    v21 = v64;
    v15 = v59;
    v12 = v60;
    v17 = v58;
    v20 = v57;
    result = 56;
    if (!v48)
    {
      v10 = v67;
      goto LABEL_20;
    }

    v10 = v67;
    if (v26 == v64)
    {
      break;
    }

LABEL_20:
    a2 = (a2 + 1) & v15;
    if (((*(v12 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  result = sub_22EFB686C();
  __break(1u);
  return result;
}