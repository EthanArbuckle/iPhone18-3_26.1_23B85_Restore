uint64_t sub_2629D2454(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFC0, &qword_262A2B468);
  result = sub_262A2A768();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v23 = *(v8 + 40);
      sub_262A2A998();
      sub_262A2A448();

      result = sub_262A2A9D8();
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

LABEL_35:
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
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2629D26E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFD8, &qword_262A2B480);
  v7 = sub_262A2A768();
  v8 = v7;
  if (!*(v5 + 16))
  {
    goto LABEL_35;
  }

  v33 = v3;
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
  v15 = v7 + 64;
  while (v13)
  {
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_18:
    v24 = v21 | (v9 << 6);
    v25 = *(*(v5 + 48) + v24);
    v34 = *(*(v5 + 56) + 16 * v24);
    if ((a2 & 1) == 0)
    {
    }

    v26 = *(v8 + 40);
    sub_262A2A998();
    sub_262A2A448();

    v16 = sub_262A2A9D8();
    v17 = -1 << *(v8 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v15 + 8 * (v18 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v18) & ~*(v15 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v17) >> 6;
      do
      {
        if (++v19 == v28 && (v27 & 1) != 0)
        {
          goto LABEL_38;
        }

        v29 = v19 == v28;
        if (v19 == v28)
        {
          v19 = 0;
        }

        v27 |= v29;
        v30 = *(v15 + 8 * v19);
      }

      while (v30 == -1);
      v20 = __clz(__rbit64(~v30)) + (v19 << 6);
    }

    *(v15 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v8 + 48) + v20) = v25;
    *(*(v8 + 56) + 16 * v20) = v34;
    ++*(v8 + 16);
  }

  v22 = v9;
  while (1)
  {
    v9 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      JUMPOUT(0x2629D2A60);
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
      goto LABEL_18;
    }
  }

  if (a2)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
LABEL_35:

    goto LABEL_36;
  }

  v3 = v33;
LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2629D2A98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF98, &unk_262A2B440);
  result = sub_262A2A768();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v23 = *(v8 + 40);
      sub_262A2A998();
      sub_262A2A448();

      result = sub_262A2A9D8();
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

LABEL_35:
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
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2629D2D44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF88, &qword_262A2B430);
  result = sub_262A2A768();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v23 = *(v8 + 40);
      sub_262A2A998();
      sub_262A2A448();

      result = sub_262A2A9D8();
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

LABEL_35:
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
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2629D30A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF78, &qword_262A2B420);
  result = sub_262A2A768();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
LABEL_19:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      v26 = *(v8 + 40);
      sub_262A2A998();
      sub_262A2A448();

      result = sub_262A2A9D8();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_11;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_19;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2629D33C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF68, &qword_262A2B410);
  result = sub_262A2A768();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v23 = *(v8 + 40);
      sub_262A2A998();
      sub_262A2A448();

      result = sub_262A2A9D8();
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

LABEL_35:
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
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2629D3658(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFA0, &unk_262A2E6F0);
  v7 = sub_262A2A768();
  v8 = v7;
  if (!*(v5 + 16))
  {
    goto LABEL_35;
  }

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
  v15 = v7 + 64;
  while (v13)
  {
    v22 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_18:
    v25 = v22 | (v9 << 6);
    v26 = *(*(v5 + 48) + v25);
    v27 = (*(v5 + 56) + 32 * v25);
    v36 = v27[1];
    v37 = *v27;
    if ((a2 & 1) == 0)
    {
    }

    v28 = *(v8 + 40);
    sub_262A2A998();
    sub_262A2A448();

    v16 = sub_262A2A9D8();
    v17 = -1 << *(v8 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v15 + 8 * (v18 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v18) & ~*(v15 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = 0;
      v30 = (63 - v17) >> 6;
      do
      {
        if (++v19 == v30 && (v29 & 1) != 0)
        {
          goto LABEL_38;
        }

        v31 = v19 == v30;
        if (v19 == v30)
        {
          v19 = 0;
        }

        v29 |= v31;
        v32 = *(v15 + 8 * v19);
      }

      while (v32 == -1);
      v20 = __clz(__rbit64(~v32)) + (v19 << 6);
    }

    *(v15 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v8 + 48) + v20) = v26;
    v21 = (*(v8 + 56) + 32 * v20);
    *v21 = v37;
    v21[1] = v36;
    ++*(v8 + 16);
  }

  v23 = v9;
  while (1)
  {
    v9 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      JUMPOUT(0x2629D39F4);
    }

    if (v9 >= v14)
    {
      break;
    }

    v24 = v10[v9];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v13 = (v24 - 1) & v24;
      goto LABEL_18;
    }
  }

  if (a2)
  {
    v33 = 1 << *(v5 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
LABEL_35:

    goto LABEL_36;
  }

  v3 = v35;
LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_2629D3A2C()
{
  result = qword_27FF3C6C8;
  if (!qword_27FF3C6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C6C0, &unk_262A2E480);
    sub_2629D3AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C6C8);
  }

  return result;
}

unint64_t sub_2629D3AB0()
{
  result = qword_27FF3C6D0;
  if (!qword_27FF3C6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C6D8, &unk_262A2E7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C6D0);
  }

  return result;
}

unint64_t sub_2629D3B2C()
{
  result = qword_27FF3C6E8;
  if (!qword_27FF3C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C6E8);
  }

  return result;
}

unint64_t sub_2629D3B80()
{
  result = qword_27FF3C6F8;
  if (!qword_27FF3C6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C6F0, &qword_262A2E4A0);
    sub_2629D3C3C();
    sub_2629D3C90(&qword_27FF3C708, sub_2629D3D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C6F8);
  }

  return result;
}

unint64_t sub_2629D3C3C()
{
  result = qword_27FF3C700;
  if (!qword_27FF3C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C700);
  }

  return result;
}

uint64_t sub_2629D3C90(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C710, &qword_262A2E4A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2629D3D08()
{
  result = qword_27FF3C718;
  if (!qword_27FF3C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C718);
  }

  return result;
}

unint64_t sub_2629D3D5C()
{
  result = qword_27FF3C728;
  if (!qword_27FF3C728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C6F0, &qword_262A2E4A0);
    sub_2629D3E18();
    sub_2629D3C90(&qword_27FF3C738, sub_2629D3E6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C728);
  }

  return result;
}

unint64_t sub_2629D3E18()
{
  result = qword_27FF3C730;
  if (!qword_27FF3C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C730);
  }

  return result;
}

unint64_t sub_2629D3E6C()
{
  result = qword_27FF3C740;
  if (!qword_27FF3C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C740);
  }

  return result;
}

unint64_t sub_2629D3EC4()
{
  result = qword_27FF3C748;
  if (!qword_27FF3C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C748);
  }

  return result;
}

uint64_t sub_2629D3F24(uint64_t *a1, int a2)
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

uint64_t sub_2629D3F6C(uint64_t result, int a2, int a3)
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

unint64_t sub_2629D3FCC()
{
  result = qword_27FF3C750;
  if (!qword_27FF3C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C750);
  }

  return result;
}

unint64_t sub_2629D4024()
{
  result = qword_27FF3C758;
  if (!qword_27FF3C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C758);
  }

  return result;
}

unint64_t sub_2629D407C()
{
  result = qword_27FF3C760;
  if (!qword_27FF3C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C760);
  }

  return result;
}

uint64_t sub_2629D40D0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_2629D40E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2629D40F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDCatalogWorkoutReference();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629D4158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDCatalogWorkoutReference();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629D41C0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    result = sub_262A2A988();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 8 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629D4314(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v26 = v9;
  v27 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = *(a2 + 40);
    sub_262A2A998();
    sub_262A2A448();

    v17 = sub_262A2A9D8();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }

    v28 = v12;
    v20 = ~v18;
    while (!*(*(a2 + 48) + v19))
    {
      v21 = 0xE500000000000000;
      v22 = 0x6E61656C63;
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v15 == 1)
      {
        v23 = 0x746963696C707865;
      }

      else
      {
        v23 = 0x6669636570736E75;
      }

      if (v15 == 1)
      {
        v24 = 0xE800000000000000;
      }

      else
      {
        v24 = 0xEB00000000646569;
      }

      if (v22 == v23)
      {
        goto LABEL_28;
      }

LABEL_29:
      v25 = sub_262A2A878();

      if (v25)
      {
        goto LABEL_35;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v19) == 1)
    {
      v21 = 0xE800000000000000;
      v22 = 0x746963696C707865;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    v22 = 0x6669636570736E75;
    v21 = 0xEB00000000646569;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_27:
    v24 = 0xE500000000000000;
    if (v22 != 0x6E61656C63)
    {
      goto LABEL_29;
    }

LABEL_28:
    if (v21 != v24)
    {
      goto LABEL_29;
    }

LABEL_35:
    v9 = v26;
    v3 = v27;
    v8 = v28;
  }

  while (v28);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629D45F4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_262A2A998();

    sub_262A2A448();
    v17 = sub_262A2A9D8();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_262A2A878() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629D47AC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v37 = v9;
  v38 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = *(a2 + 40);
    sub_262A2A998();
    sub_262A2A448();

    v17 = sub_262A2A9D8();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }

    v39 = v12;
    v20 = ~v18;
    while (1)
    {
      v21 = *(*(a2 + 48) + v19);
      if (v21 <= 3)
      {
        break;
      }

      if (*(*(a2 + 48) + v19) <= 5u)
      {
        if (v21 == 4)
        {
          v23 = 0xD000000000000010;
        }

        else
        {
          v23 = 0x6564697270;
        }

        if (v21 == 4)
        {
          v22 = 0x8000000262A31890;
        }

        else
        {
          v22 = 0xE500000000000000;
        }

        if (v15 > 3)
        {
          goto LABEL_36;
        }
      }

      else if (v21 == 6)
      {
        v23 = 0x576D6172676F7270;
        v22 = 0xEE0074756F6B726FLL;
        if (v15 > 3)
        {
          goto LABEL_36;
        }
      }

      else if (v21 == 7)
      {
        v22 = 0xE700000000000000;
        v23 = 0x7261655977656ELL;
        if (v15 > 3)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v23 = 0x6967736B6E616874;
        v22 = 0xEC000000676E6976;
        if (v15 > 3)
        {
          goto LABEL_36;
        }
      }

LABEL_61:
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v36 = 0x796164696C6F68;
        }

        else
        {
          v36 = 0x77654E72616E756CLL;
        }

        if (v15 == 2)
        {
          v33 = 0xE700000000000000;
        }

        else
        {
          v33 = 0xEC00000072616559;
        }

        if (v23 == v36)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v34 = 0x7053747369747261;
        v33 = 0xEF746867696C746FLL;
        if (v15)
        {
          v34 = 0x6565776F6C6C6168;
          v33 = 0xE90000000000006ELL;
        }

        if (v23 == v34)
        {
          goto LABEL_65;
        }
      }

LABEL_66:
      v35 = sub_262A2A878();

      if (v35)
      {
        goto LABEL_82;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }
    }

    v24 = 0x77654E72616E756CLL;
    if (v21 == 2)
    {
      v24 = 0x796164696C6F68;
    }

    v25 = 0xEC00000072616559;
    if (v21 == 2)
    {
      v25 = 0xE700000000000000;
    }

    v26 = 0x7053747369747261;
    if (*(*(a2 + 48) + v19))
    {
      v26 = 0x6565776F6C6C6168;
    }

    v27 = 0xEF746867696C746FLL;
    if (*(*(a2 + 48) + v19))
    {
      v27 = 0xE90000000000006ELL;
    }

    if (*(*(a2 + 48) + v19) <= 1u)
    {
      v23 = v26;
    }

    else
    {
      v23 = v24;
    }

    if (*(*(a2 + 48) + v19) <= 1u)
    {
      v22 = v27;
    }

    else
    {
      v22 = v25;
    }

    if (v15 <= 3)
    {
      goto LABEL_61;
    }

LABEL_36:
    v28 = 0x6967736B6E616874;
    if (v15 == 7)
    {
      v28 = 0x7261655977656ELL;
    }

    v29 = 0xEC000000676E6976;
    if (v15 == 7)
    {
      v29 = 0xE700000000000000;
    }

    if (v15 == 6)
    {
      v28 = 0x576D6172676F7270;
      v29 = 0xEE0074756F6B726FLL;
    }

    v30 = 0xD000000000000010;
    if (v15 != 4)
    {
      v30 = 0x6564697270;
    }

    v31 = 0x8000000262A31890;
    if (v15 != 4)
    {
      v31 = 0xE500000000000000;
    }

    if (v15 <= 5)
    {
      v32 = v30;
    }

    else
    {
      v32 = v28;
    }

    if (v15 <= 5)
    {
      v33 = v31;
    }

    else
    {
      v33 = v29;
    }

    if (v23 != v32)
    {
      goto LABEL_66;
    }

LABEL_65:
    if (v22 != v33)
    {
      goto LABEL_66;
    }

LABEL_82:
    v9 = v37;
    v3 = v38;
    v8 = v39;
  }

  while (v39);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629D4D50(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(result + 56);
  v207 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v213 = a2 + 56;
  v208 = v8;
  v209 = result;
  if ((v6 & v4) == 0)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 16 * (v9 | (v3 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v2 + 40);
    sub_262A2A998();
    v214 = v15;
    v210 = v10;
    if (v15 > 4)
    {
      if (v15 > 7)
      {
        if (v15 == 8)
        {
          v17 = 8;
        }

        else
        {
          if (v15 == 9)
          {
            MEMORY[0x26672F240](9);

            sub_2629B55DC(v224, v14);
            goto LABEL_35;
          }

          v17 = 10;
        }
      }

      else if (v15 == 5)
      {
        v17 = 5;
      }

      else if (v15 == 6)
      {
        v17 = 6;
      }

      else
      {
        v17 = 7;
      }

      goto LABEL_34;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v17 = 2;
      }

      else if (v15 == 3)
      {
        v17 = 3;
      }

      else
      {
        v17 = 4;
      }

LABEL_34:
      MEMORY[0x26672F240](v17);

      sub_2629B5854(v224, v14);
      goto LABEL_35;
    }

    if (v15)
    {
      MEMORY[0x26672F240](1);

      sub_2629B59B0(v224, v14);
    }

    else
    {
      MEMORY[0x26672F240](0);

      sub_2629B5B40(v224, v14);
    }

LABEL_35:
    v18 = sub_262A2A9D8();
    v19 = -1 << *(v2 + 32);
    v20 = v18 & ~v19;
    v21 = v213;
    v22 = v15;
    if (((*(v213 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_271:

      return 0;
    }

    v23 = ~v19;
    v24 = v14 + 56;
    v211 = ~v19;
    while (1)
    {
      v25 = *(v2 + 48) + 16 * v20;
      result = *v25;
      v26 = *(v25 + 8);
      if (v26 <= 4)
      {
        if (v26 > 1)
        {
          if (v26 == 2)
          {
            if (v22 == 2)
            {
              if (result == v14)
              {
                goto LABEL_268;
              }

              if (*(result + 16) == *(v14 + 16))
              {
                v55 = result + 56;
                v56 = 1 << *(result + 32);
                if (v56 < 64)
                {
                  v57 = ~(-1 << v56);
                }

                else
                {
                  v57 = -1;
                }

                v58 = v57 & *(result + 56);
                v193 = (v56 + 63) >> 6;
                v218 = result;

                v59 = 0;
                while (1)
                {
                  result = v218;
                  if (!v58)
                  {
                    break;
                  }

                  v87 = __clz(__rbit64(v58));
                  v199 = (v58 - 1) & v58;
LABEL_139:
                  v90 = (*(v218 + 48) + 16 * (v87 | (v59 << 6)));
                  v92 = *v90;
                  v91 = v90[1];
                  v93 = *(v14 + 40);
                  sub_262A2A998();

                  sub_262A2A448();
                  v94 = sub_262A2A9D8();
                  v95 = -1 << *(v14 + 32);
                  v96 = v94 & ~v95;
                  if (((*(v24 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
                  {
LABEL_37:

                    v2 = a2;
                    v21 = v213;
                    v22 = v214;
                    v23 = v211;
                    goto LABEL_38;
                  }

                  v97 = ~v95;
                  while (1)
                  {
                    v98 = (*(v14 + 48) + 16 * v96);
                    v99 = *v98 == v92 && v98[1] == v91;
                    if (v99 || (sub_262A2A878() & 1) != 0)
                    {
                      break;
                    }

                    v96 = (v96 + 1) & v97;
                    if (((*(v24 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
                    {
                      goto LABEL_37;
                    }
                  }

                  v2 = a2;
                  v58 = v199;
                }

                v88 = v59;
                while (1)
                {
                  v59 = v88 + 1;
                  if (__OFADD__(v88, 1))
                  {
                    goto LABEL_274;
                  }

                  if (v59 >= v193)
                  {
LABEL_267:

                    goto LABEL_268;
                  }

                  v89 = *(v55 + 8 * v59);
                  ++v88;
                  if (v89)
                  {
                    v87 = __clz(__rbit64(v89));
                    v199 = (v89 - 1) & v89;
                    goto LABEL_139;
                  }
                }
              }
            }
          }

          else if (v26 == 3)
          {
            if (v22 == 3)
            {
              if (result == v14)
              {
                goto LABEL_268;
              }

              if (*(result + 16) == *(v14 + 16))
              {
                v32 = result + 56;
                v33 = 1 << *(result + 32);
                if (v33 < 64)
                {
                  v34 = ~(-1 << v33);
                }

                else
                {
                  v34 = -1;
                }

                v35 = v34 & *(result + 56);
                v192 = (v33 + 63) >> 6;
                v216 = result;

                v36 = 0;
                while (v35)
                {
                  v202 = (v35 - 1) & v35;
                  v126 = __clz(__rbit64(v35)) | (v36 << 6);
                  result = v216;
LABEL_190:
                  v129 = (*(result + 48) + 16 * v126);
                  v131 = *v129;
                  v130 = v129[1];
                  v132 = *(v14 + 40);
                  sub_262A2A998();

                  sub_262A2A448();
                  v133 = sub_262A2A9D8();
                  v134 = -1 << *(v14 + 32);
                  v135 = v133 & ~v134;
                  if (((*(v24 + ((v135 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v135) & 1) == 0)
                  {
                    goto LABEL_37;
                  }

                  v136 = ~v134;
                  while (1)
                  {
                    v137 = (*(v14 + 48) + 16 * v135);
                    v138 = *v137 == v131 && v137[1] == v130;
                    if (v138 || (sub_262A2A878() & 1) != 0)
                    {
                      break;
                    }

                    v135 = (v135 + 1) & v136;
                    if (((*(v24 + ((v135 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v135) & 1) == 0)
                    {
                      goto LABEL_37;
                    }
                  }

                  v2 = a2;
                  v35 = v202;
                }

                v127 = v36;
                result = v216;
                while (1)
                {
                  v36 = v127 + 1;
                  if (__OFADD__(v127, 1))
                  {
                    goto LABEL_279;
                  }

                  if (v36 >= v192)
                  {
                    goto LABEL_267;
                  }

                  v128 = *(v32 + 8 * v36);
                  ++v127;
                  if (v128)
                  {
                    v202 = (v128 - 1) & v128;
                    v126 = __clz(__rbit64(v128)) | (v36 << 6);
                    goto LABEL_190;
                  }
                }
              }
            }
          }

          else if (v22 == 4)
          {
            if (result == v14)
            {
              goto LABEL_268;
            }

            if (*(result + 16) == *(v14 + 16))
            {
              v70 = result + 56;
              v71 = 1 << *(result + 32);
              if (v71 < 64)
              {
                v72 = ~(-1 << v71);
              }

              else
              {
                v72 = -1;
              }

              v73 = v72 & *(result + 56);
              v196 = (v71 + 63) >> 6;
              v221 = result;

              v74 = 0;
              while (v73)
              {
                v203 = (v73 - 1) & v73;
                v139 = __clz(__rbit64(v73)) | (v74 << 6);
                result = v221;
LABEL_207:
                v142 = (*(result + 48) + 16 * v139);
                v144 = *v142;
                v143 = v142[1];
                v145 = *(v14 + 40);
                sub_262A2A998();

                sub_262A2A448();
                v146 = sub_262A2A9D8();
                v147 = -1 << *(v14 + 32);
                v148 = v146 & ~v147;
                if (((*(v24 + ((v148 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v148) & 1) == 0)
                {
                  goto LABEL_37;
                }

                v149 = ~v147;
                while (1)
                {
                  v150 = (*(v14 + 48) + 16 * v148);
                  v151 = *v150 == v144 && v150[1] == v143;
                  if (v151 || (sub_262A2A878() & 1) != 0)
                  {
                    break;
                  }

                  v148 = (v148 + 1) & v149;
                  if (((*(v24 + ((v148 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v148) & 1) == 0)
                  {
                    goto LABEL_37;
                  }
                }

                v2 = a2;
                v73 = v203;
              }

              v140 = v74;
              result = v221;
              while (1)
              {
                v74 = v140 + 1;
                if (__OFADD__(v140, 1))
                {
                  goto LABEL_278;
                }

                if (v74 >= v196)
                {
                  goto LABEL_267;
                }

                v141 = *(v70 + 8 * v74);
                ++v140;
                if (v141)
                {
                  v203 = (v141 - 1) & v141;
                  v139 = __clz(__rbit64(v141)) | (v74 << 6);
                  goto LABEL_207;
                }
              }
            }
          }

          goto LABEL_38;
        }

        if (!v26)
        {
          if (!v22)
          {
            if (result == v14)
            {
              goto LABEL_268;
            }

            if (*(result + 16) == *(v14 + 16))
            {
              v39 = 0;
              v40 = result + 56;
              v41 = 1 << *(result + 32);
              if (v41 < 64)
              {
                v42 = ~(-1 << v41);
              }

              else
              {
                v42 = -1;
              }

              v43 = v42 & *(result + 56);
              v44 = (v41 + 63) >> 6;
              if (!v43)
              {
LABEL_73:
                v46 = v39;
                while (1)
                {
                  v39 = v46 + 1;
                  if (__OFADD__(v46, 1))
                  {
                    goto LABEL_282;
                  }

                  if (v39 >= v44)
                  {
                    goto LABEL_268;
                  }

                  v47 = *(v40 + 8 * v39);
                  ++v46;
                  if (v47)
                  {
                    v45 = __clz(__rbit64(v47));
                    v217 = (v47 - 1) & v47;
                    goto LABEL_78;
                  }
                }
              }

              while (1)
              {
                v45 = __clz(__rbit64(v43));
                v217 = (v43 - 1) & v43;
LABEL_78:
                v48 = *(*(result + 48) + 8 * (v45 | (v39 << 6)));
                v49 = result;
                v50 = *(v14 + 40);
                v51 = sub_262A2A988();
                v52 = -1 << *(v14 + 32);
                v53 = v51 & ~v52;
                v21 = v213;
                v22 = v214;
                v23 = v211;
                if (((*(v24 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
                {
                  break;
                }

                result = v49;
                v54 = ~v52;
                while (*(*(v14 + 48) + 8 * v53) != v48)
                {
                  v53 = (v53 + 1) & v54;
                  if (((*(v24 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
                  {
                    goto LABEL_38;
                  }
                }

                v43 = v217;
                if (!v217)
                {
                  goto LABEL_73;
                }
              }
            }
          }

          goto LABEL_38;
        }

        if (v22 != 1)
        {
          goto LABEL_38;
        }

        v38 = sub_2629D4314(v75, v14);
        goto LABEL_115;
      }

      if (v26 > 7)
      {
        break;
      }

      if (v26 == 5)
      {
        if (v22 == 5)
        {
          if (result == v14)
          {
            goto LABEL_268;
          }

          if (*(result + 16) == *(v14 + 16))
          {
            v60 = result + 56;
            v61 = 1 << *(result + 32);
            if (v61 < 64)
            {
              v62 = ~(-1 << v61);
            }

            else
            {
              v62 = -1;
            }

            v63 = v62 & *(result + 56);
            v194 = (v61 + 63) >> 6;
            v219 = result;

            v64 = 0;
            while (v63)
            {
              v200 = (v63 - 1) & v63;
              v100 = __clz(__rbit64(v63)) | (v64 << 6);
              result = v219;
LABEL_156:
              v103 = (*(result + 48) + 16 * v100);
              v105 = *v103;
              v104 = v103[1];
              v106 = *(v14 + 40);
              sub_262A2A998();

              sub_262A2A448();
              v107 = sub_262A2A9D8();
              v108 = -1 << *(v14 + 32);
              v109 = v107 & ~v108;
              if (((*(v24 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) == 0)
              {
                goto LABEL_37;
              }

              v110 = ~v108;
              while (1)
              {
                v111 = (*(v14 + 48) + 16 * v109);
                v112 = *v111 == v105 && v111[1] == v104;
                if (v112 || (sub_262A2A878() & 1) != 0)
                {
                  break;
                }

                v109 = (v109 + 1) & v110;
                if (((*(v24 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) == 0)
                {
                  goto LABEL_37;
                }
              }

              v2 = a2;
              v63 = v200;
            }

            v101 = v64;
            result = v219;
            while (1)
            {
              v64 = v101 + 1;
              if (__OFADD__(v101, 1))
              {
                goto LABEL_275;
              }

              if (v64 >= v194)
              {
                goto LABEL_267;
              }

              v102 = *(v60 + 8 * v64);
              ++v101;
              if (v102)
              {
                v200 = (v102 - 1) & v102;
                v100 = __clz(__rbit64(v102)) | (v64 << 6);
                goto LABEL_156;
              }
            }
          }
        }
      }

      else if (v26 == 6)
      {
        if (v22 == 6)
        {
          if (result == v14)
          {
            goto LABEL_268;
          }

          if (*(result + 16) == *(v14 + 16))
          {
            v27 = result + 56;
            v28 = 1 << *(result + 32);
            if (v28 < 64)
            {
              v29 = ~(-1 << v28);
            }

            else
            {
              v29 = -1;
            }

            v30 = v29 & *(result + 56);
            v191 = (v28 + 63) >> 6;
            v215 = result;

            v31 = 0;
            while (v30)
            {
              v204 = (v30 - 1) & v30;
              v152 = __clz(__rbit64(v30)) | (v31 << 6);
              result = v215;
LABEL_224:
              v155 = (*(result + 48) + 16 * v152);
              v157 = *v155;
              v156 = v155[1];
              v158 = *(v14 + 40);
              sub_262A2A998();

              sub_262A2A448();
              v159 = sub_262A2A9D8();
              v160 = -1 << *(v14 + 32);
              v161 = v159 & ~v160;
              if (((*(v24 + ((v161 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v161) & 1) == 0)
              {
                goto LABEL_37;
              }

              v162 = ~v160;
              while (1)
              {
                v163 = (*(v14 + 48) + 16 * v161);
                v164 = *v163 == v157 && v163[1] == v156;
                if (v164 || (sub_262A2A878() & 1) != 0)
                {
                  break;
                }

                v161 = (v161 + 1) & v162;
                if (((*(v24 + ((v161 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v161) & 1) == 0)
                {
                  goto LABEL_37;
                }
              }

              v2 = a2;
              v30 = v204;
            }

            v153 = v31;
            result = v215;
            while (1)
            {
              v31 = v153 + 1;
              if (__OFADD__(v153, 1))
              {
                goto LABEL_280;
              }

              if (v31 >= v191)
              {
                goto LABEL_267;
              }

              v154 = *(v27 + 8 * v31);
              ++v153;
              if (v154)
              {
                v204 = (v154 - 1) & v154;
                v152 = __clz(__rbit64(v154)) | (v31 << 6);
                goto LABEL_224;
              }
            }
          }
        }
      }

      else if (v22 == 7)
      {
        if (result == v14)
        {
          goto LABEL_268;
        }

        if (*(result + 16) == *(v14 + 16))
        {
          v77 = result + 56;
          v78 = 1 << *(result + 32);
          if (v78 < 64)
          {
            v79 = ~(-1 << v78);
          }

          else
          {
            v79 = -1;
          }

          v80 = v79 & *(result + 56);
          v197 = (v78 + 63) >> 6;
          v222 = result;

          v81 = 0;
          while (v80)
          {
            v205 = (v80 - 1) & v80;
            v165 = __clz(__rbit64(v80)) | (v81 << 6);
            result = v222;
LABEL_241:
            v168 = (*(result + 48) + 16 * v165);
            v170 = *v168;
            v169 = v168[1];
            v171 = *(v14 + 40);
            sub_262A2A998();

            sub_262A2A448();
            v172 = sub_262A2A9D8();
            v173 = -1 << *(v14 + 32);
            v174 = v172 & ~v173;
            if (((*(v24 + ((v174 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v174) & 1) == 0)
            {
              goto LABEL_37;
            }

            v175 = ~v173;
            while (1)
            {
              v176 = (*(v14 + 48) + 16 * v174);
              v177 = *v176 == v170 && v176[1] == v169;
              if (v177 || (sub_262A2A878() & 1) != 0)
              {
                break;
              }

              v174 = (v174 + 1) & v175;
              if (((*(v24 + ((v174 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v174) & 1) == 0)
              {
                goto LABEL_37;
              }
            }

            v2 = a2;
            v80 = v205;
          }

          v166 = v81;
          result = v222;
          while (1)
          {
            v81 = v166 + 1;
            if (__OFADD__(v166, 1))
            {
              goto LABEL_276;
            }

            if (v81 >= v197)
            {
              goto LABEL_267;
            }

            v167 = *(v77 + 8 * v81);
            ++v166;
            if (v167)
            {
              v205 = (v167 - 1) & v167;
              v165 = __clz(__rbit64(v167)) | (v81 << 6);
              goto LABEL_241;
            }
          }
        }
      }

LABEL_38:
      v20 = (v20 + 1) & v23;
      if (((*(v21 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_271;
      }
    }

    if (v26 == 8)
    {
      if (v22 == 8)
      {
        if (result == v14)
        {
          goto LABEL_268;
        }

        if (*(result + 16) == *(v14 + 16))
        {
          v65 = result + 56;
          v66 = 1 << *(result + 32);
          if (v66 < 64)
          {
            v67 = ~(-1 << v66);
          }

          else
          {
            v67 = -1;
          }

          v68 = v67 & *(result + 56);
          v195 = (v66 + 63) >> 6;
          v220 = result;

          v69 = 0;
          while (v68)
          {
            v201 = (v68 - 1) & v68;
            v113 = __clz(__rbit64(v68)) | (v69 << 6);
            result = v220;
LABEL_173:
            v116 = (*(result + 48) + 16 * v113);
            v118 = *v116;
            v117 = v116[1];
            v119 = *(v14 + 40);
            sub_262A2A998();

            sub_262A2A448();
            v120 = sub_262A2A9D8();
            v121 = -1 << *(v14 + 32);
            v122 = v120 & ~v121;
            if (((*(v24 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122) & 1) == 0)
            {
              goto LABEL_37;
            }

            v123 = ~v121;
            while (1)
            {
              v124 = (*(v14 + 48) + 16 * v122);
              v125 = *v124 == v118 && v124[1] == v117;
              if (v125 || (sub_262A2A878() & 1) != 0)
              {
                break;
              }

              v122 = (v122 + 1) & v123;
              if (((*(v24 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122) & 1) == 0)
              {
                goto LABEL_37;
              }
            }

            v2 = a2;
            v68 = v201;
          }

          v114 = v69;
          result = v220;
          while (1)
          {
            v69 = v114 + 1;
            if (__OFADD__(v114, 1))
            {
              goto LABEL_277;
            }

            if (v69 >= v195)
            {
              goto LABEL_267;
            }

            v115 = *(v65 + 8 * v69);
            ++v114;
            if (v115)
            {
              v201 = (v115 - 1) & v115;
              v113 = __clz(__rbit64(v115)) | (v69 << 6);
              goto LABEL_173;
            }
          }
        }
      }

      goto LABEL_38;
    }

    if (v26 == 9)
    {
      if (v22 != 9)
      {
        goto LABEL_38;
      }

      v38 = sub_2629D47AC(v37, v14);
LABEL_115:
      v76 = v38;

      v23 = v211;
      v22 = v214;
      v21 = v213;
      if (v76)
      {
        goto LABEL_268;
      }

      goto LABEL_38;
    }

    if (v22 != 10)
    {
      goto LABEL_38;
    }

    if (result != v14)
    {
      if (*(result + 16) == *(v14 + 16))
      {
        v82 = result + 56;
        v83 = 1 << *(result + 32);
        if (v83 < 64)
        {
          v84 = ~(-1 << v83);
        }

        else
        {
          v84 = -1;
        }

        v85 = v84 & *(result + 56);
        v198 = (v83 + 63) >> 6;
        v223 = result;

        v86 = 0;
        while (v85)
        {
          v206 = (v85 - 1) & v85;
          v178 = __clz(__rbit64(v85)) | (v86 << 6);
          result = v223;
LABEL_258:
          v181 = (*(result + 48) + 16 * v178);
          v183 = *v181;
          v182 = v181[1];
          v184 = *(v14 + 40);
          sub_262A2A998();

          sub_262A2A448();
          v185 = sub_262A2A9D8();
          v186 = -1 << *(v14 + 32);
          v187 = v185 & ~v186;
          if (((*(v24 + ((v187 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v187) & 1) == 0)
          {
            goto LABEL_37;
          }

          v188 = ~v186;
          while (1)
          {
            v189 = (*(v14 + 48) + 16 * v187);
            v190 = *v189 == v183 && v189[1] == v182;
            if (v190 || (sub_262A2A878() & 1) != 0)
            {
              break;
            }

            v187 = (v187 + 1) & v188;
            if (((*(v24 + ((v187 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v187) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v2 = a2;
          v85 = v206;
        }

        v179 = v86;
        result = v223;
        while (1)
        {
          v86 = v179 + 1;
          if (__OFADD__(v179, 1))
          {
            goto LABEL_281;
          }

          if (v86 >= v198)
          {
            goto LABEL_267;
          }

          v180 = *(v82 + 8 * v86);
          ++v179;
          if (v180)
          {
            v206 = (v180 - 1) & v180;
            v178 = __clz(__rbit64(v180)) | (v86 << 6);
            goto LABEL_258;
          }
        }
      }

      goto LABEL_38;
    }

LABEL_268:

    v8 = v208;
    result = v209;
    v7 = v210;
    if (v210)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v207 + 8 * v3);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_274:
  __break(1u);
LABEL_275:
  __break(1u);
LABEL_276:
  __break(1u);
LABEL_277:
  __break(1u);
LABEL_278:
  __break(1u);
LABEL_279:
  __break(1u);
LABEL_280:
  __break(1u);
LABEL_281:
  __break(1u);
LABEL_282:
  __break(1u);
  return result;
}

uint64_t sub_2629D5E3C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v26 = v7;
  v27 = result;
  v29 = a2;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v6));
    v28 = (v6 - 1) & v6;
LABEL_13:
    v12 = *(result + 48) + 24 * (v9 | (v2 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(a2 + 40);
    v17 = a2;
    sub_262A2A998();
    MEMORY[0x26672F240](v15);

    sub_262A2A448();
    v18 = sub_262A2A9D8();
    v19 = -1 << *(v17 + 32);
    v20 = v18 & ~v19;
    if (((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_33:
      sub_2629B6A68(v13, v14, v15);
      return 0;
    }

    v21 = ~v19;
    v22 = *(v29 + 48);
    while (1)
    {
      v23 = v22 + 24 * v20;
      v24 = *(v23 + 16);
      if (v24 <= 1)
      {
        if (*(v23 + 16))
        {
          if (v15 == 1)
          {
            goto LABEL_25;
          }
        }

        else if (!v15)
        {
          goto LABEL_25;
        }

        goto LABEL_16;
      }

      if (v24 != 2)
      {
        break;
      }

      if (v15 == 2)
      {
        goto LABEL_25;
      }

LABEL_16:
      v20 = (v20 + 1) & v21;
      if (((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (v15 != 3)
    {
      goto LABEL_16;
    }

LABEL_25:
    v25 = *v23 == v13 && *(v23 + 8) == v14;
    if (!v25 && (sub_262A2A878() & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_2629B6A68(v13, v14, v24);
    v7 = v26;
    result = v27;
    v6 = v28;
    a2 = v29;
  }

  while (v28);
LABEL_8:
  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v28 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629D607C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v54 = a2 + 56;
  v44 = result + 56;
  v45 = result;
  v48 = a2;
  v43 = v7;
  if (v6)
  {
LABEL_7:
    v8 = __clz(__rbit64(v6));
    v46 = (v6 - 1) & v6;
LABEL_13:
    v11 = (*(result + 48) + 48 * (v8 | (v2 << 6)));
    v13 = *v11;
    v12 = v11[1];
    v15 = v11[2];
    v14 = v11[3];
    v16 = v11[4];
    v17 = v11[5];
    v18 = *(a2 + 40);
    v19 = a2;
    sub_262A2A998();

    v50 = v14;

    v49 = v16;

    v51 = v17;

    SIDModalityPreference.hash(into:)();
    v20 = sub_262A2A9D8();
    v21 = -1 << *(v19 + 32);
    v22 = v20 & ~v21;
    if ((*(v54 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v52 = ~v21;
      v53 = *(v48 + 48);
      v47 = (v16 + 40);
      do
      {
        v23 = (v53 + 48 * v22);
        result = *v23;
        v24 = v23[2];
        v25 = v23[3];
        v27 = v23[4];
        v26 = v23[5];
        v28 = *v23 == v13 && v23[1] == v12;
        if (v28 || (result = sub_262A2A878(), (result & 1) != 0))
        {
          v29 = *(v24 + 16);
          if (v29 == *(v15 + 16))
          {
            if (v29)
            {
              v30 = v24 == v15;
            }

            else
            {
              v30 = 1;
            }

            if (!v30)
            {
              v31 = (v24 + 32);
              v32 = (v15 + 32);
              while (v29)
              {
                if (*v31 != *v32)
                {
                  goto LABEL_15;
                }

                ++v31;
                ++v32;
                if (!--v29)
                {
                  goto LABEL_30;
                }
              }

              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              goto LABEL_64;
            }

LABEL_30:
            v33 = *(v25 + 16);
            if (v33 == *(v50 + 16))
            {
              if (!v33 || v25 == v50)
              {
LABEL_41:
                v37 = *(v27 + 16);
                if (v37 == *(v49 + 16))
                {
                  if (!v37 || v27 == v49)
                  {
LABEL_52:
                    v41 = *(v26 + 16);
                    if (v41 == *(v51 + 16))
                    {
                      if (!v41 || v26 == v51)
                      {
LABEL_58:

                        v3 = v44;
                        result = v45;
                        a2 = v48;
                        v7 = v43;
                        v6 = v46;
                        if (v46)
                        {
                          goto LABEL_7;
                        }

                        goto LABEL_8;
                      }

                      v42 = 32;
                      while (*(v26 + v42) == *(v51 + v42))
                      {
                        ++v42;
                        if (!--v41)
                        {
                          goto LABEL_58;
                        }
                      }
                    }
                  }

                  else
                  {
                    v38 = (v27 + 40);
                    v39 = v47;
                    while (1)
                    {
                      v40 = *(v38 - 1) == *(v39 - 1) && *v38 == *v39;
                      if (!v40 && (sub_262A2A878() & 1) == 0)
                      {
                        break;
                      }

                      v38 += 2;
                      v39 += 2;
                      if (!--v37)
                      {
                        goto LABEL_52;
                      }
                    }
                  }
                }
              }

              else
              {
                v34 = (v25 + 40);
                v35 = (v50 + 40);
                while (1)
                {
                  v36 = *(v34 - 1) == *(v35 - 1) && *v34 == *v35;
                  if (!v36 && (sub_262A2A878() & 1) == 0)
                  {
                    break;
                  }

                  v34 += 2;
                  v35 += 2;
                  if (!--v33)
                  {
                    goto LABEL_41;
                  }
                }
              }
            }
          }
        }

LABEL_15:
        v22 = (v22 + 1) & v52;
      }

      while (((*(v54 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
    }

    return 0;
  }

LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v46 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_2629D6494(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_262A2A998();
    MEMORY[0x26672F240](v13);
    result = sub_262A2A9D8();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t SIDWorkoutPlanScheduledItem.dictionary()()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6B8, &unk_262A2E7A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262A2E460;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  sub_262A2A6A8();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000262A32440;
  v6 = sub_2629C89E4(v1);
  sub_2629CAF7C(v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6C0, &unk_262A2E480);
  sub_2629D3A2C();
  sub_262A2A6A8();
  *(inited + 144) = 0xD000000000000012;
  *(inited + 152) = 0x8000000262A323C0;

  sub_262A2A6A8();
  v7 = sub_2629AC344(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C080, &qword_262A2E490);
  swift_arrayDestroy();
  return v7;
}

uint64_t SIDWorkoutPlanScheduledItem.modalityIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SIDWorkoutPlanScheduledItem.init(duration:filterProperties:modalityIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_2629D67FC()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_2629D685C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2629D7414(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2629D6890(uint64_t a1)
{
  v2 = sub_2629D7120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629D68CC(uint64_t a1)
{
  v2 = sub_2629D7120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static SIDWorkoutPlanScheduledItem.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if ((sub_2629D5E3C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v2 == v4)
  {
    return 1;
  }

  return sub_262A2A878();
}

uint64_t SIDWorkoutPlanScheduledItem.hash(into:)(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  MEMORY[0x26672F240](*v1);
  sub_2629B5EB8(a1, v3);

  return sub_262A2A448();
}

uint64_t SIDWorkoutPlanScheduledItem.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  sub_2629B5EB8(v6, v2);
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629D6A80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  sub_2629B5EB8(v6, v2);
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629D6AF8(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  MEMORY[0x26672F240](*v1);
  sub_2629B5EB8(a1, v3);

  return sub_262A2A448();
}

uint64_t sub_2629D6B60()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  sub_2629B5EB8(v6, v2);
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629D6BD4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if ((sub_2629D5E3C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v2 == v4)
  {
    return 1;
  }

  return sub_262A2A878();
}

uint64_t SIDWorkoutPlanScheduledItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C798, &qword_262A2E7C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v14[1] = v1[2];
  v15 = v9;
  v14[0] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629D7120();
  sub_262A2AA28();
  v19 = 0;
  sub_262A2A838();
  if (!v2)
  {
    v16 = v15;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C7A8, &qword_262A2E7C8);
    sub_2629D7174(&qword_27FF3C7B0, sub_2629D71EC);
    sub_262A2A848();
    v17 = 2;
    sub_262A2A828();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SIDWorkoutPlanScheduledItem.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C7C0, &qword_262A2E7D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629D7120();
  sub_262A2AA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  v16[0] = sub_262A2A7D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C7A8, &qword_262A2E7C8);
  v18 = 1;
  sub_2629D7174(&qword_27FF3C7C8, sub_2629D7240);
  sub_262A2A7E8();
  v11 = v16[1];
  v17 = 2;
  v12 = sub_262A2A7C8();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v16[0];
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_2629D7120()
{
  result = qword_27FF3C7A0;
  if (!qword_27FF3C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C7A0);
  }

  return result;
}

uint64_t sub_2629D7174(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C7A8, &qword_262A2E7C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2629D71EC()
{
  result = qword_27FF3C7B8;
  if (!qword_27FF3C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C7B8);
  }

  return result;
}

unint64_t sub_2629D7240()
{
  result = qword_27FF3C7D0;
  if (!qword_27FF3C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C7D0);
  }

  return result;
}

unint64_t sub_2629D7298()
{
  result = qword_27FF3C7D8;
  if (!qword_27FF3C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C7D8);
  }

  return result;
}

unint64_t sub_2629D7310()
{
  result = qword_27FF3C7E0;
  if (!qword_27FF3C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C7E0);
  }

  return result;
}

unint64_t sub_2629D7368()
{
  result = qword_27FF3C7E8;
  if (!qword_27FF3C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C7E8);
  }

  return result;
}

unint64_t sub_2629D73C0()
{
  result = qword_27FF3C7F0;
  if (!qword_27FF3C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C7F0);
  }

  return result;
}

uint64_t sub_2629D7414(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_262A2A878() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000262A32440 == a2 || (sub_262A2A878() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000262A323C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_262A2A878();

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

unint64_t SIDWorkoutPlanScheduleFilterProperty.dictionary()(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C7F8, &unk_262A2EA10);
  v6 = a3;
  v7 = MEMORY[0x277D837D0];
  if (v6 <= 1)
  {
    if (v6)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_262A2EA00;

      sub_262A2A6A8();
      *(inited + 96) = v7;
      v9 = 0x6E656D7069757165;
      v10 = 0xE900000000000074;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_262A2EA00;

      sub_262A2A6A8();
      *(inited + 96) = v7;
      v9 = 0x75636F4679646F62;
      v10 = 0xE900000000000073;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_262A2EA00;

    sub_262A2A6A8();
    *(inited + 96) = v7;
    v9 = 0x656D656874;
    v10 = 0xE500000000000000;
LABEL_8:
    *(inited + 72) = v9;
    *(inited + 80) = v10;
    goto LABEL_9;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262A2EA00;

  sub_262A2A6A8();
  *(inited + 96) = v7;
  *(inited + 72) = 0x76654C6C6C696B73;
  *(inited + 80) = 0xEA00000000006C65;
LABEL_9:
  sub_262A2A6A8();
  *(inited + 168) = v7;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  v11 = sub_2629AC47C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C070, &qword_262A2B518);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_2629D7834(uint64_t a1)
{
  v2 = sub_2629D8504();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629D7870(uint64_t a1)
{
  v2 = sub_2629D8504();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2629D78AC()
{
  v1 = 0x75636F4679646F62;
  v2 = 0x76654C6C6C696B73;
  if (*v0 != 2)
  {
    v2 = 0x656D656874;
  }

  if (*v0)
  {
    v1 = 0x6E656D7069757165;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2629D7928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2629D8558(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2629D7950(uint64_t a1)
{
  v2 = sub_2629D83B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629D798C(uint64_t a1)
{
  v2 = sub_2629D83B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2629D79C8(uint64_t a1)
{
  v2 = sub_2629D84B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629D7A04(uint64_t a1)
{
  v2 = sub_2629D84B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2629D7A40(uint64_t a1)
{
  v2 = sub_2629D845C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629D7A7C(uint64_t a1)
{
  v2 = sub_2629D845C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2629D7AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262A2A878();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2629D7B48(uint64_t a1)
{
  v2 = sub_2629D8408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629D7B84(uint64_t a1)
{
  v2 = sub_2629D8408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SIDWorkoutPlanScheduleFilterProperty.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  MEMORY[0x26672F240](a4);

  return sub_262A2A448();
}

uint64_t SIDWorkoutPlanScheduleFilterProperty.hashValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_262A2A998();
  MEMORY[0x26672F240](a3);
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629D7C7C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_262A2A998();
  MEMORY[0x26672F240](v3);
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629D7CE0()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x26672F240](*(v0 + 16));

  return sub_262A2A448();
}

uint64_t sub_2629D7D34()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_262A2A998();
  MEMORY[0x26672F240](v3);
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t SIDWorkoutPlanScheduleFilterProperty.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v44 = a3;
  v45 = a4;
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C800, &qword_262A2EA20);
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v39 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C808, &qword_262A2EA28);
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C810, &qword_262A2EA30);
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C818, &qword_262A2EA38);
  v34 = *(v16 - 8);
  v17 = *(v34 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C820, &qword_262A2EA40);
  v20 = *(v42 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v42);
  v23 = &v34 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629D83B4();
  sub_262A2AA28();
  v25 = (v20 + 8);
  if (v45 > 1u)
  {
    if (v45 == 2)
    {
      v48 = 2;
      sub_2629D845C();
      v27 = v42;
      sub_262A2A808();
      v28 = v38;
      sub_262A2A828();
      (*(v37 + 8))(v11, v28);
      return (*v25)(v23, v27);
    }

    v49 = 3;
    sub_2629D8408();
    v32 = v39;
    v26 = v42;
    sub_262A2A808();
    v33 = v41;
    sub_262A2A828();
    (*(v40 + 8))(v32, v33);
  }

  else
  {
    if (v45)
    {
      v47 = 1;
      sub_2629D84B0();
      v30 = v42;
      sub_262A2A808();
      v31 = v36;
      sub_262A2A828();
      (*(v35 + 8))(v15, v31);
      return (*v25)(v23, v30);
    }

    v46 = 0;
    sub_2629D8504();
    v26 = v42;
    sub_262A2A808();
    sub_262A2A828();
    (*(v34 + 8))(v19, v16);
  }

  return (*v25)(v23, v26);
}

uint64_t SIDWorkoutPlanScheduleFilterProperty.init(from:)(uint64_t *a1)
{
  result = sub_2629D86CC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_2629D82E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2629D86CC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t _s10SIDFitness36SIDWorkoutPlanScheduleFilterPropertyO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 != 2)
      {
        return 0;
      }
    }

    else if (a6 != 3)
    {
      return 0;
    }
  }

  else if (a3)
  {
    if (a6 != 1)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_262A2A878();
  }
}

unint64_t sub_2629D83B4()
{
  result = qword_27FF3C828;
  if (!qword_27FF3C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C828);
  }

  return result;
}

unint64_t sub_2629D8408()
{
  result = qword_27FF3C830;
  if (!qword_27FF3C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C830);
  }

  return result;
}

unint64_t sub_2629D845C()
{
  result = qword_27FF3C838;
  if (!qword_27FF3C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C838);
  }

  return result;
}

unint64_t sub_2629D84B0()
{
  result = qword_27FF3C840;
  if (!qword_27FF3C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C840);
  }

  return result;
}

unint64_t sub_2629D8504()
{
  result = qword_27FF3C848;
  if (!qword_27FF3C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C848);
  }

  return result;
}

uint64_t sub_2629D8558(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75636F4679646F62 && a2 == 0xE900000000000073;
  if (v4 || (sub_262A2A878() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D7069757165 && a2 == 0xE900000000000074 || (sub_262A2A878() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEA00000000006C65 || (sub_262A2A878() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_262A2A878();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2629D86CC(uint64_t *a1)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C8D0, &qword_262A2F170);
  v53 = *(v56 - 8);
  v2 = *(v53 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v45 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C8D8, &qword_262A2F178);
  v52 = *(v50 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v45 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C8E0, &qword_262A2F180);
  v51 = *(v48 - 8);
  v6 = *(v51 + 8);
  MEMORY[0x28223BE20](v48);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C8E8, &qword_262A2F188);
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C8F0, &unk_262A2F190);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2629D83B4();
  v20 = v57;
  sub_262A2AA08();
  if (!v20)
  {
    v46 = v9;
    v47 = 0;
    v9 = v54;
    v21 = v55;
    v22 = v56;
    v57 = v14;
    v23 = v17;
    v24 = sub_262A2A7F8();
    v25 = *(v24 + 16);
    if (!v25 || ((v26 = *(v24 + 32), v25 == 1) ? (v27 = v26 == 4) : (v27 = 1), v27))
    {
      v28 = sub_262A2A718();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C218, qword_262A2BBD8) + 48);
      *v30 = &type metadata for SIDWorkoutPlanScheduleFilterProperty;
      sub_262A2A7A8();
      sub_262A2A708();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v57 + 8))(v23, v13);
      goto LABEL_24;
    }

    if (*(v24 + 32) <= 1u)
    {
      if (*(v24 + 32))
      {
        v60 = 1;
        sub_2629D84B0();
        v32 = v23;
        v39 = v47;
        sub_262A2A798();
        if (!v39)
        {
          v34 = v48;
          v9 = sub_262A2A7C8();
          v35 = v51;
          goto LABEL_22;
        }
      }

      else
      {
        v59 = 0;
        sub_2629D8504();
        v8 = v12;
        v32 = v23;
        v33 = v47;
        sub_262A2A798();
        if (!v33)
        {
          v34 = v46;
          v9 = sub_262A2A7C8();
          v35 = v49;
LABEL_22:
          (*(v35 + 8))(v8, v34);
          (*(v57 + 8))(v32, v13);
          swift_unknownObjectRelease();
          goto LABEL_25;
        }
      }

      (*(v57 + 8))(v32, v13);
LABEL_24:
      swift_unknownObjectRelease();
      goto LABEL_25;
    }

    v36 = v57;
    if (v26 == 2)
    {
      v61 = 2;
      sub_2629D845C();
      v37 = v9;
      v38 = v47;
      sub_262A2A798();
      if (v38)
      {
        (*(v36 + 8))(v23, v13);
        goto LABEL_24;
      }

      v41 = v36;
      v51 = v23;
      v42 = v50;
      v49 = sub_262A2A7C8();
      v44 = v52;
LABEL_26:
      (*(v44 + 8))(v37, v42);
      (*(v41 + 8))(v51, v13);
      swift_unknownObjectRelease();
      v9 = v49;
      goto LABEL_25;
    }

    v62 = 3;
    sub_2629D8408();
    v37 = v21;
    v40 = v47;
    sub_262A2A798();
    if (!v40)
    {
      v41 = v36;
      v51 = v23;
      v42 = v22;
      v49 = sub_262A2A7C8();
      v44 = v53;
      goto LABEL_26;
    }

    (*(v36 + 8))(v23, v13);
    swift_unknownObjectRelease();
  }

LABEL_25:
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  return v9;
}

unint64_t sub_2629D8E10()
{
  result = qword_27FF3C850;
  if (!qword_27FF3C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C850);
  }

  return result;
}

unint64_t sub_2629D8EDC()
{
  result = qword_27FF3C858;
  if (!qword_27FF3C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C858);
  }

  return result;
}

unint64_t sub_2629D8F34()
{
  result = qword_27FF3C860;
  if (!qword_27FF3C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C860);
  }

  return result;
}

unint64_t sub_2629D8F8C()
{
  result = qword_27FF3C868;
  if (!qword_27FF3C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C868);
  }

  return result;
}

unint64_t sub_2629D8FE4()
{
  result = qword_27FF3C870;
  if (!qword_27FF3C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C870);
  }

  return result;
}

unint64_t sub_2629D903C()
{
  result = qword_27FF3C878;
  if (!qword_27FF3C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C878);
  }

  return result;
}

unint64_t sub_2629D9094()
{
  result = qword_27FF3C880;
  if (!qword_27FF3C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C880);
  }

  return result;
}

unint64_t sub_2629D90EC()
{
  result = qword_27FF3C888;
  if (!qword_27FF3C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C888);
  }

  return result;
}

unint64_t sub_2629D9144()
{
  result = qword_27FF3C890;
  if (!qword_27FF3C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C890);
  }

  return result;
}

unint64_t sub_2629D919C()
{
  result = qword_27FF3C898;
  if (!qword_27FF3C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C898);
  }

  return result;
}

unint64_t sub_2629D91F4()
{
  result = qword_27FF3C8A0;
  if (!qword_27FF3C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C8A0);
  }

  return result;
}

unint64_t sub_2629D924C()
{
  result = qword_27FF3C8A8;
  if (!qword_27FF3C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C8A8);
  }

  return result;
}

unint64_t sub_2629D92A4()
{
  result = qword_27FF3C8B0;
  if (!qword_27FF3C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C8B0);
  }

  return result;
}

unint64_t sub_2629D92FC()
{
  result = qword_27FF3C8B8;
  if (!qword_27FF3C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C8B8);
  }

  return result;
}

unint64_t sub_2629D9354()
{
  result = qword_27FF3C8C0;
  if (!qword_27FF3C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C8C0);
  }

  return result;
}

unint64_t sub_2629D93AC()
{
  result = qword_27FF3C8C8;
  if (!qword_27FF3C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C8C8);
  }

  return result;
}

SIDFitness::SIDWorkoutPlanState_optional __swiftcall SIDWorkoutPlanState.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t *sub_2629D9434@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2629D9450()
{
  result = qword_27FF3C8F8;
  if (!qword_27FF3C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C8F8);
  }

  return result;
}

uint64_t SIDWorkoutPlanType.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SIDWorkoutPlanType();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629D9B00(v2, v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return MEMORY[0x26672F240](0);
  }

  sub_2629D9B64(v12, v8);
  MEMORY[0x26672F240](1);
  v14 = *v8;
  v15 = *(v8 + 1);
  sub_262A2A448();
  v16 = *(v8 + 3);
  v17 = *(v8 + 4);
  v18 = *(v8 + 5);
  v19 = *(v8 + 6);
  v20 = *(v8 + 7);
  MEMORY[0x26672F240](*(v8 + 2));
  MEMORY[0x26672F240](v16);
  sub_2629BFB8C(a1, v17);
  MEMORY[0x26672F240](v18);
  MEMORY[0x26672F240](v19);
  sub_2629B602C(a1, v20);
  if (v8[64])
  {
    v21 = v8[64] == 1;
  }

  sub_262A2A448();

  sub_2629BFEE0(a1, *(v8 + 9));
  v22 = *(v4 + 32);
  sub_262A2A018();
  sub_2629D9C10(&qword_27FF3C3D8, MEMORY[0x277CC95F0]);
  sub_262A2A388();
  v23 = &v8[*(v4 + 36)];
  sub_262A2A388();
  return sub_2629D9E2C(v8, type metadata accessor for SIDPersonalizedWorkoutPlan);
}

uint64_t SIDWorkoutPlanType.hashValue.getter()
{
  sub_262A2A998();
  SIDWorkoutPlanType.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629D97A4()
{
  sub_262A2A998();
  SIDWorkoutPlanType.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629D97E8()
{
  sub_262A2A998();
  SIDWorkoutPlanType.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness18SIDWorkoutPlanTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SIDWorkoutPlanType();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C918, ":x");
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  sub_2629D9B00(a1, &v22 - v16);
  sub_2629D9B00(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_2629D9B00(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_2629D9B64(&v17[v18], v8);
      v20 = _s10SIDFitness26SIDPersonalizedWorkoutPlanV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_2629D9E2C(v8, type metadata accessor for SIDPersonalizedWorkoutPlan);
      sub_2629D9E2C(v12, type metadata accessor for SIDPersonalizedWorkoutPlan);
      sub_2629D9E2C(v17, type metadata accessor for SIDWorkoutPlanType);
      return v20 & 1;
    }

    sub_2629D9E2C(v12, type metadata accessor for SIDPersonalizedWorkoutPlan);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_2629D9DC4(v17);
    v20 = 0;
    return v20 & 1;
  }

  sub_2629D9E2C(v17, type metadata accessor for SIDWorkoutPlanType);
  v20 = 1;
  return v20 & 1;
}

uint64_t type metadata accessor for SIDWorkoutPlanType()
{
  result = qword_27FF3C908;
  if (!qword_27FF3C908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629D9B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDWorkoutPlanType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629D9B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629D9C10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2629D9C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2629D9CEC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2629D9D6C()
{
  v0 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_2629D9DC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C918, ":x");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2629D9E2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SIDWorkoutPlanVariation.rawValue.getter()
{
  v1 = 0x6D6F74737563;
  if (*v0 != 1)
  {
    v1 = 0x68637465727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65747369736E6F63;
  }
}

SIDFitness::SIDWorkoutPlanVariation_optional __swiftcall SIDWorkoutPlanVariation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_262A2A788();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2629D9F44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D6F74737563;
  if (v2 != 1)
  {
    v4 = 0x68637465727473;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65747369736E6F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA0000000000746ELL;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D6F74737563;
  if (*a2 != 1)
  {
    v8 = 0x68637465727473;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65747369736E6F63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA0000000000746ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_262A2A878();
  }

  return v11 & 1;
}

void sub_2629DA04C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000746ELL;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74737563;
  if (v2 != 1)
  {
    v5 = 0x68637465727473;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65747369736E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2629DA160()
{
  result = qword_27FF3C920;
  if (!qword_27FF3C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C920);
  }

  return result;
}

uint64_t sub_2629DA1B4()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629DA258()
{
  *v0;
  *v0;
  sub_262A2A448();
}

uint64_t sub_2629DA2E8()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

unint64_t sub_2629DA398()
{
  result = qword_27FF3C928;
  if (!qword_27FF3C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C928);
  }

  return result;
}

unint64_t sub_2629DA3F0()
{
  result = qword_27FF3C930;
  if (!qword_27FF3C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C930);
  }

  return result;
}

unint64_t sub_2629DA444@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2629DA480(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2629DA480(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_2629DA490()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_262A2A998();
  sub_2629BF768(v6, v1);
  sub_2629BF640(v6, v2);
  sub_2629BF530(v6, v4);
  sub_2629BF4C4(v6, v3);
  return sub_262A2A9D8();
}

uint64_t sub_2629DA508(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_2629BF768(a1, v3);
  sub_2629BF640(a1, v4);
  sub_2629BF530(a1, v6);

  return sub_2629BF4C4(a1, v5);
}

uint64_t sub_2629DA56C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_262A2A998();
  sub_2629BF768(v6, v1);
  sub_2629BF640(v6, v2);
  sub_2629BF530(v6, v4);
  sub_2629BF4C4(v6, v3);
  return sub_262A2A9D8();
}

uint64_t sub_2629DA5E0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_2629E7090(*a1, *a2) & 1) == 0 || (sub_2629E71B4(v2, v5) & 1) == 0 || (sub_2629E7408(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_2629E766C(v3, v6);
}

unint64_t sub_2629DA680()
{
  result = qword_27FF3C938;
  if (!qword_27FF3C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C938);
  }

  return result;
}

uint64_t sub_2629DA6D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2629DA71C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2629DA76C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  sub_2629BF458(v4, v1);
  sub_2629BF0E8(v4, v2);
  return sub_262A2A9D8();
}

uint64_t sub_2629DA7C0(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_2629BF458(a1, v3);

  return sub_2629BF0E8(a1, v4);
}

uint64_t sub_2629DA800()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  sub_2629BF458(v4, v1);
  sub_2629BF0E8(v4, v2);
  return sub_262A2A9D8();
}

uint64_t sub_2629DA850(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_2629E6838(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_2629E6908(v2, v3);
}

unint64_t sub_2629DA8B0()
{
  result = qword_27FF3C940;
  if (!qword_27FF3C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C940);
  }

  return result;
}

uint64_t sub_2629DA928(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0B0, &unk_262A30350);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for SIDUserMetadata();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2629DAAC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0B0, &unk_262A30350);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for SIDUserMetadata();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for FitnessPlanUser()
{
  result = qword_27FF3C950;
  if (!qword_27FF3C950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2629DACA0()
{
  sub_2629DAE3C(319, &qword_27FF3C960, type metadata accessor for SIDActiveWorkoutPlan, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2629BA7EC(319, &qword_27FF3C968);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SIDUserMetadata();
      if (v2 <= 0x3F)
      {
        sub_2629DAE3C(319, &qword_27FF3C970, type metadata accessor for SIDUserOnboardingData, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2629BA7EC(319, &qword_27FF3C378);
          if (v4 <= 0x3F)
          {
            sub_2629DAE3C(319, &qword_27FF3C978, type metadata accessor for PreprocessedUserHistoryWithMetadata, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2629DAE3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2629DAEA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 16);
  MEMORY[0x26672F240](v7);
  if (v7)
  {
    v8 = 0;
    do
    {
      v40 = v8;
      v9 = (a2 + 32 + 80 * v8);
      v10 = *v9;
      v43 = v9[1];
      v48 = v9[2];
      v44 = v9[3];
      v47 = v9[4];
      v46 = v9[5];
      v45 = v9[7];
      v41 = v9[8];
      v42 = v9[6];
      v39 = v9[9];

      sub_262A2A448();

      v11 = *(v43 + 16);
      MEMORY[0x26672F240](v11);
      if (v11)
      {
        v12 = (v43 + 32);
        do
        {
          v13 = *v12++;
          MEMORY[0x26672F240](qword_262A2F728[v13]);
          --v11;
        }

        while (v11);
      }

      v14 = *(v48 + 16);
      MEMORY[0x26672F240](v14);
      if (v14)
      {
        v15 = (v48 + 32);
        do
        {
          v16 = *v15++;
          sub_262A2A448();

          --v14;
        }

        while (v14);
      }

      sub_2629BF0E8(a1, v44);
      v17 = *(v47 + 16);
      MEMORY[0x26672F240](v17);
      if (v17)
      {
        v18 = (v47 + 32);
        do
        {
          v19 = *v18++;
          sub_262A2A448();

          --v17;
        }

        while (v17);
      }

      v20 = *(v46 + 16);
      MEMORY[0x26672F240](v20);
      if (v20)
      {
        v21 = (v46 + 32);
        do
        {
          v22 = *v21++;
          sub_262A2A448();

          --v20;
        }

        while (v20);
      }

      v23 = *(v42 + 16);
      MEMORY[0x26672F240](v23);
      if (v23)
      {
        v24 = (v42 + 32);
        do
        {
          v25 = *v24++;
          sub_262A2A448();

          --v23;
        }

        while (v23);
      }

      v26 = *(v45 + 16);
      MEMORY[0x26672F240](v26);
      if (v26)
      {
        v27 = (v45 + 32);
        do
        {
          v28 = *v27++;
          sub_262A2A448();

          --v26;
        }

        while (v26);
      }

      v29 = *(v41 + 16);
      MEMORY[0x26672F240](v29);
      if (v29)
      {
        v30 = (v41 + 32);
        do
        {
          v31 = *v30++;
          MEMORY[0x26672F240](v31);
          --v29;
        }

        while (v29);
      }

      v8 = v40 + 1;
      MEMORY[0x26672F240](v39);
    }

    while (v40 + 1 != v7);
  }

  MEMORY[0x26672F240](qword_262A2F750[a3]);
  MEMORY[0x26672F240](a4);
  v32 = *(a5 + 16);
  result = MEMORY[0x26672F240](v32);
  if (v32)
  {
    v34 = (a5 + 32);
    do
    {
      v35 = *v34++;
      result = MEMORY[0x26672F240](v35);
      --v32;
    }

    while (v32);
  }

  return result;
}

uint64_t sub_2629DB47C()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 8);
  sub_262A2A998();
  sub_2629DAEA0(v6, v1, v4, v2, v3);
  return sub_262A2A9D8();
}

uint64_t sub_2629DB4F0()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 8);
  sub_262A2A998();
  sub_2629DAEA0(v6, v1, v4, v2, v3);
  return sub_262A2A9D8();
}

uint64_t sub_2629DB550(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  if ((sub_2629E8170(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (qword_262A2F750[v2] != qword_262A2F750[v5] || v4 != v7)
  {
    return 0;
  }

  return sub_2629E7920(v3, v6);
}

unint64_t sub_2629DB5F4()
{
  result = qword_27FF3C980;
  if (!qword_27FF3C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C980);
  }

  return result;
}

uint64_t sub_2629DB658(uint64_t a1)
{
  v2 = v1;
  SIDWorkoutModality.rawValue.getter(*v2);
  sub_262A2A448();

  v4 = *(v2 + 8);
  v5 = *(v4 + 16);
  MEMORY[0x26672F240](v5);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      MEMORY[0x26672F240](qword_262A2F858[v7]);
      --v5;
    }

    while (v5);
  }

  sub_2629BF458(a1, *(v2 + 16));
  sub_2629BF0E8(a1, *(v2 + 24));
  sub_2629BF530(a1, *(v2 + 32));
  sub_2629BF768(a1, *(v2 + 40));
  sub_2629BF640(a1, *(v2 + 48));
  sub_2629BF4C4(a1, *(v2 + 56));
  v8 = *(v2 + 64);
  v9 = *(v8 + 16);
  MEMORY[0x26672F240](v9);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      v11 = *v10++;
      MEMORY[0x26672F240](v11);
      --v9;
    }

    while (v9);
  }

  return MEMORY[0x26672F240](*(v2 + 72));
}

uint64_t sub_2629DB760()
{
  sub_262A2A998();
  sub_2629DB658(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629DB7A4()
{
  sub_262A2A998();
  sub_2629DB658(v1);
  return sub_262A2A9D8();
}

BOOL sub_2629DB7E0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_2629DB894(v8, v9);
}

unint64_t sub_2629DB840()
{
  result = qword_27FF3C988;
  if (!qword_27FF3C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C988);
  }

  return result;
}

BOOL sub_2629DB894(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = SIDWorkoutModality.rawValue.getter(*a1);
  v7 = v6;
  if (v5 == SIDWorkoutModality.rawValue.getter(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_262A2A878();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_2629E8034(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (sub_2629E6838(*(a1 + 16), *(a2 + 16)) & 1) != 0 && (sub_2629E6908(*(a1 + 24), *(a2 + 24)) & 1) != 0 && (sub_2629E7408(*(a1 + 32), *(a2 + 32)) & 1) != 0 && (sub_2629E7090(*(a1 + 40), *(a2 + 40)) & 1) != 0 && (sub_2629E71B4(*(a1 + 48), *(a2 + 48)) & 1) != 0 && (sub_2629E766C(*(a1 + 56), *(a2 + 56)) & 1) != 0 && (sub_2629E7920(*(a1 + 64), *(a2 + 64)))
  {
    return *(a1 + 72) == *(a2 + 72);
  }

  return 0;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2629DB9EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2629DBA34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2629DBA98(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + 1);
  sub_262A2A448();
  v6 = v1[2];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x26672F260](*&v6);
  v7 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v8 = v7[6];
  sub_262A29FD8();
  sub_2629DCDAC(&qword_27FF3C4E8, MEMORY[0x277CC9578]);
  sub_262A2A388();
  MEMORY[0x26672F240](*(v2 + v7[7]));
  v9 = (v2 + v7[8]);
  v10 = *v9;
  v11 = v9[1];
  sub_262A2A448();
  sub_2629BF768(a1, *(v2 + v7[9]));
  v12 = *(v2 + v7[10]);
  sub_262A2A448();

  sub_2629BF640(a1, *(v2 + v7[11]));
  MEMORY[0x26672F260](*(v2 + v7[12]));
  v13 = *(v2 + v7[13]);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x26672F260](*&v13);
  v14 = *(v2 + v7[14]);
  sub_262A2A9B8();
  if (v14 != 7)
  {
    MEMORY[0x26672F240](qword_262A2F928[v14]);
  }

  *(v2 + v7[15]);
  sub_262A2A448();

  SIDWorkoutModality.rawValue.getter(*(v2 + v7[16]));
  sub_262A2A448();

  sub_2629BF458(a1, *(v2 + v7[17]));
  if (*(v2 + v7[18]) == 9)
  {
    sub_262A2A9B8();
  }

  else
  {
    sub_262A2A9B8();
    sub_2629BE150();
  }

  sub_2629BF4C4(a1, *(v2 + v7[19]));
  sub_2629BF530(a1, *(v2 + v7[20]));
  sub_2629BF0E8(a1, *(v2 + v7[21]));
  if (*(v2 + v7[22]) == 31)
  {
    sub_262A2A9B8();
  }

  else
  {
    sub_262A2A9B8();
    SIDWorkoutTrainerIdentifier.rawValue.getter();
    sub_262A2A448();
  }

  v15 = *(v2 + v7[23]);

  return sub_2629B55DC(a1, v15);
}

uint64_t sub_2629DBE30()
{
  sub_262A2A998();
  sub_2629DBA98(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629DBE74()
{
  sub_262A2A998();
  sub_2629DBA98(v1);
  return sub_262A2A9D8();
}

uint64_t type metadata accessor for PreprocessedUserHistoryWithMetadata()
{
  result = qword_27FF3C9C0;
  if (!qword_27FF3C9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_2629DBF48()
{
  v0 = *(type metadata accessor for PreprocessedUserHistoryWithMetadata() + 24);
  sub_262A29FD8();
  sub_2629DCDAC(&qword_27FF3C9B8, MEMORY[0x277CC9578]);
  return (sub_262A2A3A8() & 1) == 0;
}

uint64_t sub_2629DBFF0(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v33 = a3;
  v34 = a2;
  v32 = a1;
  v3 = sub_262A2A108();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_262A2A128();
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A8, &qword_262A30A50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  v16 = sub_262A29FD8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v31 = &v30 - v22;
  sub_262A2A0E8();
  result = (*(v4 + 104))(v7, *MEMORY[0x277CC9968], v3);
  if (__OFSUB__(0, v34))
  {
    __break(1u);
  }

  else
  {
    sub_262A29FC8();
    sub_262A2A0C8();
    v34 = *(v17 + 8);
    v34(v21, v16);
    (*(v4 + 8))(v7, v3);
    (*(v8 + 8))(v11, v30);
    v24 = *(v17 + 48);
    if (v24(v15, 1, v16) == 1)
    {
      v25 = v31;
      sub_262A29FC8();
      if (v24(v15, 1, v16) != 1)
      {
        sub_2629DCD24(v15);
      }
    }

    else
    {
      v25 = v31;
      (*(v17 + 32))(v31, v15, v16);
    }

    v35 = 0;
    v36 = 0xE000000000000000;
    sub_262A2A6F8();

    v35 = 0xD00000000000001FLL;
    v36 = 0x8000000262A32530;
    sub_2629DCDAC(&qword_27FF3C9B0, MEMORY[0x277CC9578]);
    v26 = sub_262A2A868();
    MEMORY[0x26672ECF0](v26);

    sub_2629EA8C8(v35, v36);

    MEMORY[0x28223BE20](v27);
    *(&v30 - 2) = v25;
    v28 = v33;

    v29 = sub_262A03C5C(sub_2629DCD8C, (&v30 - 4), v28);
    v34(v25, v16);
    return v29;
  }

  return result;
}

uint64_t sub_2629DC46C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_262A2A878() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v6 = v5[6];
  if ((sub_262A29FB8() & 1) == 0 || *(a1 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  v7 = v5[8];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_262A2A878() & 1) == 0 || (sub_2629E7090(*(a1 + v5[9]), *(a2 + v5[9])) & 1) == 0)
  {
    return 0;
  }

  v12 = 0x6E61656C63;
  v13 = v5[10];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14)
  {
    if (v14 == 1)
    {
      v16 = 0xE800000000000000;
      v17 = 0x746963696C707865;
    }

    else
    {
      v17 = 0x6669636570736E75;
      v16 = 0xEB00000000646569;
    }
  }

  else
  {
    v16 = 0xE500000000000000;
    v17 = 0x6E61656C63;
  }

  if (v15)
  {
    if (v15 == 1)
    {
      v18 = 0xE800000000000000;
      v12 = 0x746963696C707865;
    }

    else
    {
      v12 = 0x6669636570736E75;
      v18 = 0xEB00000000646569;
    }
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  if (v17 == v12 && v16 == v18)
  {
  }

  else
  {
    v19 = sub_262A2A878();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_2629E71B4(*(a1 + v5[11]), *(a2 + v5[11])) & 1) == 0 || *(a1 + v5[12]) != *(a2 + v5[12]) || *(a1 + v5[13]) != *(a2 + v5[13]))
  {
    return 0;
  }

  v20 = v5[14];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 7)
  {
    if (v22 != 7)
    {
      return 0;
    }
  }

  else if (v22 == 7 || qword_262A2F928[v21] != qword_262A2F928[v22])
  {
    return 0;
  }

  if ((sub_2629C9088(*(a1 + v5[15]), *(a2 + v5[15])) & 1) == 0)
  {
    return 0;
  }

  v23 = v5[16];
  v24 = *(a2 + v23);
  v25 = SIDWorkoutModality.rawValue.getter(*(a1 + v23));
  v27 = v26;
  if (v25 == SIDWorkoutModality.rawValue.getter(v24) && v27 == v28)
  {
  }

  else
  {
    v29 = sub_262A2A878();

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_2629E6838(*(a1 + v5[17]), *(a2 + v5[17])) & 1) == 0)
  {
    return 0;
  }

  v30 = v5[18];
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31 == 9)
  {
    if (v32 != 9)
    {
      return 0;
    }
  }

  else if (v32 == 9 || (sub_2629C8C34(v31, v32) & 1) == 0)
  {
    return 0;
  }

  if ((sub_2629E766C(*(a1 + v5[19]), *(a2 + v5[19])) & 1) == 0 || (sub_2629E7408(*(a1 + v5[20]), *(a2 + v5[20])) & 1) == 0 || (sub_2629E6908(*(a1 + v5[21]), *(a2 + v5[21])) & 1) == 0)
  {
    return 0;
  }

  v33 = v5[22];
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  if (v34 == 31)
  {
    if (v35 == 31)
    {
      goto LABEL_60;
    }

    return 0;
  }

  if (v35 == 31)
  {
    return 0;
  }

  v37 = SIDWorkoutTrainerIdentifier.rawValue.getter();
  v39 = v38;
  if (v37 == SIDWorkoutTrainerIdentifier.rawValue.getter() && v39 == v40)
  {
  }

  else
  {
    v41 = sub_262A2A878();

    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_60:
  v42 = v5[23];
  v43 = *(a1 + v42);
  v44 = *(a2 + v42);

  return sub_2629D47AC(v43, v44);
}

void sub_2629DC8A8(uint64_t a1, uint64_t a2, double a3)
{
  v35 = a1;
  v36 = a2;
  v4 = sub_262A2A168();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C998, &qword_262A2F8E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v10 = sub_262A2A058();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_262A2A128();
  v15 = *(v34 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v34);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_262A29F38();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x277CC9830], v10);
  sub_262A2A068();
  (*(v11 + 8))(v14, v10);
  sub_262A2A088();
  sub_262A2A038();
  v24 = sub_262A2A048();
  (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
  sub_262A2A0D8();
  sub_262A2A148();
  sub_262A2A0F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A0, &unk_262A2F8F0);
  v25 = sub_262A2A108();
  v26 = *(v25 - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_262A2B290;
  (*(v26 + 104))(v29 + v28, *MEMORY[0x277CC9968], v25);
  sub_262A15860(v29);
  swift_setDeallocating();
  (*(v26 + 8))(v29 + v28, v25);
  swift_deallocClassInstance();
  v30 = v35 + *(type metadata accessor for PreprocessedUserHistoryWithMetadata() + 24);
  sub_262A2A098();

  (*(v15 + 8))(v18, v34);
  v31 = sub_262A29EF8();
  LOBYTE(v18) = v32;
  (*(v20 + 8))(v23, v19);
  if ((v18 & 1) == 0)
  {
    exp(v31 / -30.0 * a3);
  }
}

uint64_t sub_2629DCD24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A8, &qword_262A30A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2629DCDAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2629DCE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_262A29FD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2629DCEC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_262A29FD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2629DCF6C()
{
  sub_262A29FD8();
  if (v0 <= 0x3F)
  {
    sub_2629DD270(319, &qword_27FF3C9D0, &type metadata for SIDWorkoutBodyFocus, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2629DD270(319, &qword_27FF3C9D8, &type metadata for SIDWorkoutEquipmentIdentifier, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_2629DD270(319, &qword_27FF3C9E0, &type metadata for MediaDuration, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2629DD270(319, &qword_27FF3C9E8, &type metadata for SIDWorkoutMusicGenreIdentifier, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_2629DD270(319, &qword_27FF3C9F0, &type metadata for SIDWorkoutMusicGenreIdentifier, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_2629DD270(319, &qword_27FF3C9F8, &type metadata for SIDWorkoutSkillLevelIdentifier, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_2629DD270(319, &qword_27FF3CA00, &type metadata for SIDWorkoutThemeIdentifier, MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
                {
                  sub_2629DD270(319, &qword_27FF3CA08, &type metadata for SIDWorkoutTrainerIdentifier, MEMORY[0x277D83940]);
                  if (v8 <= 0x3F)
                  {
                    sub_2629DD270(319, &qword_27FF3CA10, &type metadata for SIDWorkoutTrainerIdentifier, MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      sub_2629B69B8();
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

void sub_2629DD270(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2629DD2C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BED8, &qword_262A2B380);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_262A2F960;
  *&v91 = 0x644974726F686F63;
  *(&v91 + 1) = 0xEB0000000022203ALL;
  MEMORY[0x26672ECF0](*v0, v0[1]);
  MEMORY[0x26672ECF0](34, 0xE100000000000000);
  *(v2 + 32) = 0x644974726F686F63;
  *(v2 + 40) = 0xEB0000000022203ALL;
  sub_262A2A6F8();

  *&v91 = 0xD000000000000015;
  *(&v91 + 1) = 0x8000000262A32550;
  v3 = MEMORY[0x26672EDD0](v0[4], MEMORY[0x277D837D0]);
  MEMORY[0x26672ECF0](v3);

  *(v2 + 48) = 0xD000000000000015;
  *(v2 + 56) = 0x8000000262A32550;
  sub_262A2A6F8();

  *&v91 = 0xD000000000000015;
  *(&v91 + 1) = 0x8000000262A32570;
  v4 = MEMORY[0x26672EDD0](v0[5], &type metadata for SIDModalityPreference);
  MEMORY[0x26672ECF0](v4);

  *(v2 + 64) = 0xD000000000000015;
  *(v2 + 72) = 0x8000000262A32570;
  *&v91 = 0x203A64496E616C70;
  *(&v91 + 1) = 0xE800000000000000;
  PlanScaffoldEvent = type metadata accessor for CreatePlanScaffoldEvent();
  v6 = PlanScaffoldEvent[8];
  sub_262A2A018();
  sub_2629B1880();
  v7 = sub_262A2A868();
  MEMORY[0x26672ECF0](v7);

  *(v2 + 80) = 0x203A64496E616C70;
  *(v2 + 88) = 0xE800000000000000;
  v86 = v2;
  *&v91 = 0x657079546E616C70;
  *(&v91 + 1) = 0xEA0000000000203ALL;
  if (*(v1 + PlanScaffoldEvent[9]))
  {
    if (*(v1 + PlanScaffoldEvent[9]) == 1)
    {
      v8 = 0xE600000000000000;
      v9 = 0x6D6F74737543;
    }

    else
    {
      v8 = 0xEB000000006C616FLL;
      v9 = 0x4768637465727453;
    }
  }

  else
  {
    v8 = 0xEA0000000000746ELL;
    v9 = 0x65747369736E6F43;
  }

  MEMORY[0x26672ECF0](v9, v8);

  v10 = *(&v91 + 1);
  v11 = v86;
  *(v86 + 12) = v91;
  *(v11 + 13) = v10;
  *&v91 = 0x203A64496F636572;
  *(&v91 + 1) = 0xE800000000000000;
  v12 = v1 + PlanScaffoldEvent[10];
  v13 = sub_262A2A868();
  MEMORY[0x26672ECF0](v13);

  *(v11 + 14) = 0x203A64496F636572;
  *(v11 + 15) = 0xE800000000000000;
  *&v91 = 0x646C6F6666616373;
  *(&v91 + 1) = 0xEA0000000000203ALL;
  *&v88 = *(v1 + PlanScaffoldEvent[11]);
  v14 = SIDWorkoutPlanSchedule.description.getter();
  v15 = &v91;
  MEMORY[0x26672ECF0](v14);

  v16 = *(&v91 + 1);
  *(v11 + 16) = v91;
  *(v11 + 17) = v16;
  *&v91 = 0;
  *(&v91 + 1) = 0xE000000000000000;
  sub_262A2A6F8();

  v17 = 0xD000000000000012;
  *&v91 = 0xD000000000000014;
  *(&v91 + 1) = 0x8000000262A32590;
  v18 = MEMORY[0x277D837D0];
  v19 = MEMORY[0x26672EDD0](*(v1 + PlanScaffoldEvent[13]), MEMORY[0x277D837D0]);
  MEMORY[0x26672ECF0](v19);

  v20 = *(&v91 + 1);
  *(v11 + 18) = v91;
  *(v11 + 19) = v20;
  *&v91 = 0x617461645F326261;
  *(&v91 + 1) = 0xEA0000000000203ALL;
  v21 = MEMORY[0x26672EDD0](*(v1 + PlanScaffoldEvent[14]), &type metadata for SIDTreatment);
  MEMORY[0x26672ECF0](v21);

  v22 = *(&v91 + 1);
  *(v11 + 20) = v91;
  *(v11 + 21) = v22;
  *&v91 = 0x737961446B656577;
  *(&v91 + 1) = 0xEA0000000000203ALL;
  v23 = MEMORY[0x26672EDD0](*(v1 + PlanScaffoldEvent[15]), v18);
  MEMORY[0x26672ECF0](v23);

  v24 = *(&v91 + 1);
  *(v11 + 22) = v91;
  *(v11 + 23) = v24;
  v25 = *(v1 + PlanScaffoldEvent[12]);
  if (!*(v25 + 16))
  {
    goto LABEL_10;
  }

  v15 = *(v1 + PlanScaffoldEvent[12]);
  v26 = sub_2629CB0BC(0xD000000000000011, 0x8000000262A312C0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_2629ADE10(*(v25 + 56) + 32 * v26, &v88);
  sub_2629AD99C(&v88, &v91);
  *&v88 = 0;
  *(&v88 + 1) = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000013, 0x8000000262A32690);
  sub_262A2A738();
  v29 = *(&v88 + 1);
  v28 = v88;
  v31 = *(v86 + 2);
  v30 = *(v86 + 3);
  v15 = v31 + 1;
  if (v31 < v30 >> 1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v86 = sub_2629A8EB0((v30 > 1), v15, 1, v86);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(&v91);
    v32 = v86;
    *(v86 + 2) = v15;
    v33 = &v32[16 * v31];
    *(v33 + 4) = v28;
    *(v33 + 5) = v29;
LABEL_10:
    if (*(v25 + 16))
    {
      v15 = v25;
      v34 = sub_2629CB0BC(v17 - 2, 0x8000000262A312E0);
      if (v35)
      {
        sub_2629ADE10(*(v25 + 56) + 32 * v34, &v88);
        sub_2629AD99C(&v88, &v91);
        *&v88 = 0;
        *(&v88 + 1) = 0xE000000000000000;
        sub_262A2A6F8();
        MEMORY[0x26672ECF0](0xD000000000000012, 0x8000000262A32670);
        sub_262A2A738();
        v36 = v88;
        v38 = *(v86 + 2);
        v37 = *(v86 + 3);
        v15 = v38 + 1;
        if (v38 >= v37 >> 1)
        {
          v86 = sub_2629A8EB0((v37 > 1), v38 + 1, 1, v86);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v91);
        v39 = v86;
        *(v86 + 2) = v15;
        *&v39[16 * v38 + 32] = v36;
      }
    }

    if (*(v25 + 16))
    {
      v15 = v25;
      v40 = sub_2629CB0BC(0xD000000000000012, 0x8000000262A31300);
      if (v41)
      {
        sub_2629ADE10(*(v25 + 56) + 32 * v40, &v88);
        sub_2629AD99C(&v88, &v91);
        *&v88 = 0;
        *(&v88 + 1) = 0xE000000000000000;
        sub_262A2A6F8();
        MEMORY[0x26672ECF0](v17 + 2, 0x8000000262A32650);
        sub_262A2A738();
        v42 = v88;
        v44 = *(v86 + 2);
        v43 = *(v86 + 3);
        v15 = v44 + 1;
        if (v44 >= v43 >> 1)
        {
          v86 = sub_2629A8EB0((v43 > 1), v44 + 1, 1, v86);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v91);
        v45 = v86;
        *(v86 + 2) = v15;
        *&v45[16 * v44 + 32] = v42;
      }
    }

    if (*(v25 + 16))
    {
      v15 = v25;
      v46 = sub_2629CB0BC(v17 + 1, 0x8000000262A31320);
      if (v47)
      {
        sub_2629ADE10(*(v25 + 56) + 32 * v46, &v88);
        sub_2629AD99C(&v88, &v91);
        *&v88 = 0;
        *(&v88 + 1) = 0xE000000000000000;
        sub_262A2A6F8();
        MEMORY[0x26672ECF0](v17 + 3, 0x8000000262A32630);
        sub_262A2A738();
        v48 = v88;
        v50 = *(v86 + 2);
        v49 = *(v86 + 3);
        v15 = v50 + 1;
        if (v50 >= v49 >> 1)
        {
          v86 = sub_2629A8EB0((v49 > 1), v50 + 1, 1, v86);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v91);
        v51 = v86;
        *(v86 + 2) = v15;
        *&v51[16 * v50 + 32] = v48;
      }
    }

    if (*(v25 + 16))
    {
      v15 = v25;
      v52 = sub_2629CB0BC(0x687469726F676C61, 0xEE0065726F63536DLL);
      if (v53)
      {
        sub_2629ADE10(*(v25 + 56) + 32 * v52, &v88);
        sub_2629AD99C(&v88, &v91);
        *&v88 = 0;
        *(&v88 + 1) = 0xE000000000000000;
        sub_262A2A6F8();
        MEMORY[0x26672ECF0](v17 - 2, 0x8000000262A32610);
        sub_262A2A738();
        v54 = v88;
        v56 = *(v86 + 2);
        v55 = *(v86 + 3);
        v15 = v56 + 1;
        if (v56 >= v55 >> 1)
        {
          v86 = sub_2629A8EB0((v55 > 1), v56 + 1, 1, v86);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v91);
        v57 = v86;
        *(v86 + 2) = v15;
        *&v57[16 * v56 + 32] = v54;
      }
    }

    if (*(v25 + 16))
    {
      v15 = v25;
      v58 = sub_2629CB0BC(0x6E6F43726F727265, 0xEF736E6F69746964);
      if (v59)
      {
        sub_2629ADE10(*(v25 + 56) + 32 * v58, &v88);
        sub_2629AD99C(&v88, &v91);
        *&v88 = 0;
        *(&v88 + 1) = 0xE000000000000000;
        sub_262A2A6F8();
        MEMORY[0x26672ECF0](v17 - 1, 0x8000000262A325F0);
        sub_262A2A738();
        v60 = v88;
        v62 = *(v86 + 2);
        v61 = *(v86 + 3);
        v15 = v62 + 1;
        if (v62 >= v61 >> 1)
        {
          v86 = sub_2629A8EB0((v61 > 1), v62 + 1, 1, v86);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v91);
        v63 = v86;
        *(v86 + 2) = v15;
        *&v63[16 * v62 + 32] = v60;
      }
    }

    v31 = v25 + 64;
    v64 = 1 << *(v25 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v28 = v65 & *(v25 + 64);
    v17 = (v64 + 63) >> 6;
    v85 = v25;

    v25 = 0;
    v29 = 0;
    if (v28)
    {
      break;
    }

LABEL_41:
    if (v17 <= (v25 + 1))
    {
      v66 = v25 + 1;
    }

    else
    {
      v66 = v17;
    }

    v67 = v66 - 1;
    while (1)
    {
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v30 >= v17)
      {
        v28 = 0;
        v89 = 0u;
        v90 = 0u;
        v25 = v67;
        v88 = 0u;
        goto LABEL_50;
      }

      v28 = *(v31 + 8 * v30);
      ++v25;
      if (v28)
      {
        v25 = v30;
        goto LABEL_49;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v30 = v25;
LABEL_49:
    v68 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v69 = v68 | (v30 << 6);
    v70 = (*(v85 + 48) + 16 * v69);
    v72 = *v70;
    v71 = v70[1];
    sub_2629ADE10(*(v85 + 56) + 32 * v69, v87);
    *&v88 = v72;
    *(&v88 + 1) = v71;
    sub_2629AD99C(v87, &v89);

LABEL_50:
    v91 = v88;
    v92[0] = v89;
    v92[1] = v90;
    v73 = *(&v88 + 1);
    if (!*(&v88 + 1))
    {
      break;
    }

    v74 = v91;
    v75 = sub_2629AD99C(v92, &v88);
    *&v87[0] = v74;
    *(&v87[0] + 1) = v73;
    MEMORY[0x28223BE20](v75);
    v84[2] = v87;
    v15 = sub_2629DDF74(sub_2629DE020, v84, &unk_287533420);
    swift_arrayDestroy();
    if (v15)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v88);

      if (!v28)
      {
        goto LABEL_41;
      }
    }

    else
    {
      *&v87[0] = 0;
      *(&v87[0] + 1) = 0xE000000000000000;
      MEMORY[0x26672ECF0](v74, v73);

      MEMORY[0x26672ECF0](8250, 0xE200000000000000);
      sub_262A2A738();
      v76 = v87[0];
      v78 = *(v86 + 2);
      v77 = *(v86 + 3);
      v15 = v78 + 1;
      if (v78 >= v77 >> 1)
      {
        v86 = sub_2629A8EB0((v77 > 1), v78 + 1, 1, v86);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v88);
      v79 = v86;
      *(v86 + 2) = v15;
      *&v79[16 * v78 + 32] = v76;
      if (!v28)
      {
        goto LABEL_41;
      }
    }
  }

  *&v91 = 0;
  *(&v91 + 1) = 0xE000000000000000;
  sub_262A2A6F8();

  *&v91 = 0xD00000000000001DLL;
  *(&v91 + 1) = 0x8000000262A325B0;
  *&v88 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
  sub_2629ADBD8();
  v80 = sub_262A2A398();
  v82 = v81;

  MEMORY[0x26672ECF0](v80, v82);

  MEMORY[0x26672ECF0](10506, 0xE200000000000000);
  return v91;
}

uint64_t sub_2629DDF74(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2629DE020(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_262A2A878() & 1;
  }
}

uint64_t sub_2629DE078()
{
  v1 = v0;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000021, 0x8000000262A326B0);
  v2 = type metadata accessor for PlanDataSetEvent();
  v3 = MEMORY[0x26672EDD0](*(v0 + v2[15]), &type metadata for SIDTreatment);
  MEMORY[0x26672ECF0](v3);

  MEMORY[0x26672ECF0](0xD000000000000018, 0x8000000262A326E0);
  MEMORY[0x26672ECF0](*v1, v1[1]);
  MEMORY[0x26672ECF0](0xD000000000000012, 0x8000000262A32700);
  MEMORY[0x26672ECF0](v1[2], v1[3]);
  MEMORY[0x26672ECF0](0xD00000000000001ELL, 0x8000000262A32720);
  MEMORY[0x26672ECF0](v1[4], v1[5]);
  MEMORY[0x26672ECF0](0xD00000000000001ELL, 0x8000000262A32740);
  MEMORY[0x26672ECF0](v1[6], v1[7]);
  MEMORY[0x26672ECF0](0xD00000000000001ALL, 0x8000000262A32760);
  MEMORY[0x26672ECF0](v1[8], v1[9]);
  MEMORY[0x26672ECF0](0xD000000000000015, 0x8000000262A32780);
  MEMORY[0x26672ECF0](v1[10], v1[11]);
  MEMORY[0x26672ECF0](0xD000000000000013, 0x8000000262A327A0);
  MEMORY[0x26672ECF0](v1[12], v1[13]);
  MEMORY[0x26672ECF0](0x69202020200A2C22, 0xEC00000022203A64);
  v4 = v2[14];
  sub_262A2A018();
  sub_2629B1880();
  v5 = sub_262A2A868();
  MEMORY[0x26672ECF0](v5);

  MEMORY[0x26672ECF0](0xD000000000000010, 0x8000000262A327C0);
  MEMORY[0x26672ECF0](v1[14], v1[15]);
  MEMORY[0x26672ECF0](0xD000000000000017, 0x8000000262A327E0);
  v6 = MEMORY[0x26672EDD0](v1[16], &type metadata for ModelMetadata);
  MEMORY[0x26672ECF0](v6);

  MEMORY[0x26672ECF0](0xD000000000000010, 0x8000000262A32800);
  v7 = v1 + v2[13];
  v8 = sub_262A2A868();
  MEMORY[0x26672ECF0](v8);

  MEMORY[0x26672ECF0](0xD000000000000017, 0x8000000262A32820);
  MEMORY[0x26672ECF0](*(v1 + v2[16]), *(v1 + v2[16] + 8));
  MEMORY[0x26672ECF0](0xD000000000000021, 0x8000000262A32840);
  v9 = MEMORY[0x26672EDD0](*(v1 + v2[17]), MEMORY[0x277D837D0]);
  MEMORY[0x26672ECF0](v9);

  MEMORY[0x26672ECF0](2689570, 0xE300000000000000);
  return 0;
}

uint64_t sub_2629DE3F0()
{
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000041, 0x8000000262A32870);
  v1 = *v0;
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD00000000000001CLL, 0x8000000262A328C0);
  MEMORY[0x26672ECF0](v0[1], v0[2]);
  MEMORY[0x26672ECF0](0xD000000000000029, 0x8000000262A328E0);
  v2 = v0[3];
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD00000000000001CLL, 0x8000000262A32910);
  v26 = v0[4];
  v3 = sub_262A2A868();
  MEMORY[0x26672ECF0](v3);

  MEMORY[0x26672ECF0](0xD000000000000023, 0x8000000262A32930);
  v27 = v0[5];
  v4 = sub_262A2A868();
  MEMORY[0x26672ECF0](v4);

  MEMORY[0x26672ECF0](0xD000000000000016, 0x8000000262A32960);
  if (v0[6])
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v0[6])
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x26672ECF0](v5, v6);

  MEMORY[0x26672ECF0](0xD000000000000014, 0x8000000262A32980);
  v28 = v0[8];
  v7 = sub_262A2A868();
  MEMORY[0x26672ECF0](v7);

  MEMORY[0x26672ECF0](0xD00000000000001CLL, 0x8000000262A329A0);
  v29 = v0[9];
  v8 = sub_262A2A868();
  MEMORY[0x26672ECF0](v8);

  MEMORY[0x26672ECF0](0xD000000000000022, 0x8000000262A329C0);
  v30 = v0[10];
  v9 = sub_262A2A868();
  MEMORY[0x26672ECF0](v9);

  MEMORY[0x26672ECF0](0xD000000000000041, 0x8000000262A329F0);
  v31 = v0[11];
  v10 = sub_262A2A868();
  MEMORY[0x26672ECF0](v10);

  MEMORY[0x26672ECF0](0xD00000000000002ELL, 0x8000000262A32A40);
  v32 = v0[12];
  v11 = sub_262A2A868();
  MEMORY[0x26672ECF0](v11);

  MEMORY[0x26672ECF0](0xD00000000000002ELL, 0x8000000262A32A70);
  v33 = v0[13];
  v12 = sub_262A2A868();
  MEMORY[0x26672ECF0](v12);

  MEMORY[0x26672ECF0](0xD000000000000030, 0x8000000262A32AA0);
  v34 = v0[14];
  v13 = sub_262A2A868();
  MEMORY[0x26672ECF0](v13);

  MEMORY[0x26672ECF0](0xD00000000000002FLL, 0x8000000262A32AE0);
  v35 = v0[15];
  v14 = sub_262A2A868();
  MEMORY[0x26672ECF0](v14);

  MEMORY[0x26672ECF0](0xD00000000000002ALL, 0x8000000262A32B10);
  v36 = v0[16];
  v15 = sub_262A2A868();
  MEMORY[0x26672ECF0](v15);

  MEMORY[0x26672ECF0](0xD00000000000002CLL, 0x8000000262A32B40);
  v37 = v0[17];
  v16 = sub_262A2A868();
  MEMORY[0x26672ECF0](v16);

  MEMORY[0x26672ECF0](0xD000000000000030, 0x8000000262A32B70);
  v17 = v0[18];
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD00000000000001CLL, 0x8000000262A32BB0);
  v18 = v0[19];
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD00000000000002ALL, 0x8000000262A32BD0);
  v19 = v0[20];
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD00000000000002ELL, 0x8000000262A32C00);
  v20 = v0[21];
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD00000000000001ALL, 0x8000000262A32C30);
  v38 = v0[22];
  v21 = sub_262A2A868();
  MEMORY[0x26672ECF0](v21);

  MEMORY[0x26672ECF0](0xD00000000000002ALL, 0x8000000262A32C50);
  v22 = v0[23];
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD000000000000025, 0x8000000262A32C80);
  v23 = v0[24];
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD000000000000027, 0x8000000262A32CB0);
  v24 = v0[25];
  sub_262A2A598();
  MEMORY[0x26672ECF0](10506, 0xE200000000000000);
  return 0;
}

uint64_t sub_2629DEA78()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v2 setDateStyle_];
  [v2 setTimeStyle_];
  v3 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v4 = v0 + v3[6];
  v5 = sub_262A29F88();
  v6 = [v2 stringFromDate_];

  v7 = sub_262A2A3F8();
  v9 = v8;

  BYTE8(v11) = 0;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000003CLL, 0x8000000262A32CE0);
  MEMORY[0x26672ECF0](*v1, v1[1]);
  MEMORY[0x26672ECF0](0xD000000000000010, 0x8000000262A32D20);
  MEMORY[0x26672ECF0](v7, v9);

  MEMORY[0x26672ECF0](0xD000000000000014, 0x8000000262A32D40);
  v12 = *(v1 + v3[7]);
  sub_262A2A738();
  MEMORY[0x26672ECF0](0xD000000000000019, 0x8000000262A32D60);
  *&v11 = *(v1 + v3[16]);
  sub_262A2A738();
  MEMORY[0x26672ECF0](10506, 0xE200000000000000);

  return *(&v11 + 1);
}

uint64_t SIDModalityPreference.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000017, 0x8000000262A32D80);
  MEMORY[0x26672ECF0](v1, v2);
  MEMORY[0x26672ECF0](0x697461727564202CLL, 0xED0000203A736E6FLL);
  v7 = MEMORY[0x26672EDD0](v4, MEMORY[0x277D83B88]);
  MEMORY[0x26672ECF0](v7);

  MEMORY[0x26672ECF0](0x61646B656577202CLL, 0xEC000000203A7379);
  v8 = MEMORY[0x26672EDD0](v6, &type metadata for SIDWeekday);
  MEMORY[0x26672ECF0](v8);

  MEMORY[0x26672ECF0](0x47636973756D202CLL, 0xEF203A7365726E65);
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x26672EDD0](v3, MEMORY[0x277D837D0]);
  MEMORY[0x26672ECF0](v10);

  MEMORY[0x26672ECF0](0x656E69617274202CLL, 0xEC000000203A7372);
  v11 = MEMORY[0x26672EDD0](v5, v9);
  MEMORY[0x26672ECF0](v11);

  MEMORY[0x26672ECF0](10528, 0xE200000000000000);
  return 0;
}

uint64_t SIDPersonalizedPlanResponse.description.getter()
{
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000002ELL, 0x8000000262A32DA0);
  v1 = *v0;
  v2 = type metadata accessor for SIDWorkoutPlanType();
  v3 = MEMORY[0x26672EDD0](v1, v2);
  MEMORY[0x26672ECF0](v3);

  MEMORY[0x26672ECF0](0x63697274656D202CLL, 0xEB00000000203A73);
  LODWORD(v1) = *(type metadata accessor for SIDPersonalizedPlanResponse() + 20);
  type metadata accessor for SIDMetrics();
  sub_262A2A738();
  MEMORY[0x26672ECF0](10506, 0xE200000000000000);
  return 0;
}

uint64_t SIDPersonalizedWorkoutPlan.description.getter()
{
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000028, 0x8000000262A32DD0);
  MEMORY[0x26672ECF0](*v0, *(v0 + 8));
  MEMORY[0x26672ECF0](0xD000000000000012, 0x8000000262A32E00);
  v1 = 0xE600000000000000;
  v2 = 0x6D6F74737543;
  if (*(v0 + 64) != 1)
  {
    v2 = 0x4768637465727453;
    v1 = 0xEB000000006C616FLL;
  }

  if (*(v0 + 64))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x65747369736E6F43;
  }

  if (*(v0 + 64))
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xEA0000000000746ELL;
  }

  MEMORY[0x26672ECF0](v3, v4);

  MEMORY[0x26672ECF0](0xD000000000000010, 0x8000000262A32E20);
  v8 = *(v0 + 16);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 56);
  v5 = SIDWorkoutPlanScaffold.description.getter();
  MEMORY[0x26672ECF0](v5);

  MEMORY[0x26672ECF0](0xD000000000000010, 0x8000000262A32E40);
  *&v8 = *(v0 + 72);
  v6 = SIDWorkoutPlanSchedule.description.getter();
  MEMORY[0x26672ECF0](v6);

  MEMORY[0x26672ECF0](10506, 0xE200000000000000);
  return 0;
}

uint64_t SIDWorkoutModality.name.getter(char a1)
{
  result = 1701998435;
  switch(a1)
  {
    case 1:
      result = 0x676E696C637963;
      break;
    case 2:
      result = 0x65636E6164;
      break;
    case 3:
      result = 1953065320;
      break;
    case 4:
      result = 0x69786F626B63696BLL;
      break;
    case 5:
      result = 0x697461746964656DLL;
      break;
    case 6:
      result = 0x436C7566646E696DLL;
      break;
    case 7:
      result = 0x736574616C6970;
      break;
    case 8:
      result = 0x676E69776F72;
      break;
    case 9:
      result = 0x75526F54656D6974;
      break;
    case 10:
      result = 0x6874676E65727473;
      break;
    case 11:
      result = 0x6C696D6461657274;
      break;
    case 12:
      result = 0x61576F54656D6974;
      break;
    case 13:
      result = 1634168697;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SIDWorkoutPlanScaffold.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v5 = v0[4];
  v4 = v0[5];
  v6 = *(v3 + 16);
  if (v6)
  {
    v27 = v0[5];
    v28 = MEMORY[0x277D84F90];
    v7 = v0[3];
    v8 = v0[1];
    v9 = *v0;
    v10 = v0[4];
    sub_2629CD800(0, v6, 0);
    v11 = v28;
    v12 = (v3 + 40);
    do
    {
      v30 = *(v12 - 1);
      v31 = *v12;
      v32 = v12[1];
      v33 = *(v12 + 4);
      v13 = SIDModalityPreference.description.getter();
      v29 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        v26 = v13;
        v18 = v14;
        sub_2629CD800((v15 > 1), v16 + 1, 1);
        v14 = v18;
        v13 = v26;
        v11 = v29;
      }

      *(v11 + 16) = v16 + 1;
      v17 = v11 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v12 += 3;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
  sub_2629ADBD8();
  v19 = sub_262A2A398();
  v21 = v20;

  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000018, 0x8000000262A32E60);
  sub_2629C1BAC();
  v22 = sub_262A2A5A8();
  MEMORY[0x26672ECF0](v22);

  MEMORY[0x26672ECF0](0xD000000000000017, 0x8000000262A32E80);
  v23 = sub_262A2A868();
  MEMORY[0x26672ECF0](v23);

  MEMORY[0x26672ECF0](0xD000000000000011, 0x8000000262A32EA0);
  sub_262A2A738();
  MEMORY[0x26672ECF0](3026478, 0xE300000000000000);
  sub_262A2A738();
  MEMORY[0x26672ECF0](0, 0xE000000000000000);

  MEMORY[0x26672ECF0](0x576C61746F74202CLL, 0xEE00203A736B6565);
  v24 = sub_262A2A868();
  MEMORY[0x26672ECF0](v24);

  MEMORY[0x26672ECF0](0x202020200A20, 0xE600000000000000);
  MEMORY[0x26672ECF0](v19, v21);

  MEMORY[0x26672ECF0](10506, 0xE200000000000000);
  return 0;
}

uint64_t SIDWorkoutPlanType.plan.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SIDWorkoutPlanType();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629D9B00(v1, v6);
  v7 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2629DF750(v6);
    v9 = 1;
  }

  else
  {
    sub_2629D9B64(v6, a1);
    v9 = 0;
  }

  return (*(v8 + 56))(a1, v9, 1, v7);
}

uint64_t sub_2629DF750(uint64_t a1)
{
  v2 = type metadata accessor for SIDWorkoutPlanType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SIDWorkoutPlanScheduledItem.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000026, 0x8000000262A32EC0);
  MEMORY[0x26672ECF0](v3, v4);
  MEMORY[0x26672ECF0](0x697461727564202CLL, 0xEC000000203A6E6FLL);
  v5 = sub_262A2A868();
  MEMORY[0x26672ECF0](v5);

  MEMORY[0x26672ECF0](0xD000000000000014, 0x8000000262A32EF0);
  sub_2629DF8EC();
  v6 = sub_262A2A5A8();
  MEMORY[0x26672ECF0](v6);

  MEMORY[0x26672ECF0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_2629DF8EC()
{
  result = qword_27FF3CA18;
  if (!qword_27FF3CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA18);
  }

  return result;
}

uint64_t SIDWorkoutPlanScheduleFilterProperty.description.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v3 = 0x76654C6C6C696B73;
    }

    else
    {
      v3 = 0x28656D656874;
    }
  }

  else if (a3)
  {
    v3 = 0x6E656D7069757165;
  }

  else
  {
    v3 = 0x75636F4679646F62;
  }

  v5 = v3;
  MEMORY[0x26672ECF0]();
  MEMORY[0x26672ECF0](41, 0xE100000000000000);
  return v5;
}

uint64_t SIDWorkoutPlanSchedule.itemsByWeekday.getter()
{
  v1 = sub_2629C86E0(*v0);
  if (*(v1 + 16))
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6B0, &unk_262A2E470);
    v3 = sub_262A2A778();
    v1 = v2;
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v5 = v3;
  sub_2629CD9E0(v1, 1, &v5);
  return v5;
}

unint64_t SIDWorkoutPlanSchedule.description.getter()
{
  v1 = *v0;
  sub_262A2A6F8();

  v10 = 0xD000000000000017;
  v11 = 0x8000000262A32F10;
  v2 = sub_2629C86E0(v1);
  if (*(v2 + 16))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6B0, &unk_262A2E470);
    v4 = sub_262A2A778();
    v2 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v9 = v4;
  sub_2629CD9E0(v2, 1, &v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C710, &qword_262A2E4A8);
  sub_2629C1BAC();
  v5 = sub_262A2A348();
  v7 = v6;

  MEMORY[0x26672ECF0](v5, v7);

  MEMORY[0x26672ECF0](41, 0xE100000000000000);
  return v10;
}

uint64_t SIDWorkoutPlanVariation.description.getter()
{
  v1 = 0x6D6F74737543;
  if (*v0 != 1)
  {
    v1 = 0x4768637465727453;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65747369736E6F43;
  }
}

uint64_t sub_2629DFC94()
{
  v1 = 0x6D6F74737543;
  if (*v0 != 1)
  {
    v1 = 0x4768637465727453;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65747369736E6F43;
  }
}

uint64_t SIDCatalogWorkoutReferenceFilter.init(exclusions:inclusions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static SIDCatalogWorkoutReferenceFilter.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_2629D4D50(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_2629D4D50(v2, v3);
}

uint64_t SIDCatalogWorkoutReferenceFilter.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_2629B5C50(a1, v3);

  return sub_2629B5C50(a1, v4);
}

uint64_t SIDCatalogWorkoutReferenceFilter.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  sub_2629B5C50(v4, v1);
  sub_2629B5C50(v4, v2);
  return sub_262A2A9D8();
}

uint64_t sub_2629DFE00()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  sub_2629B5C50(v4, v1);
  sub_2629B5C50(v4, v2);
  return sub_262A2A9D8();
}

uint64_t sub_2629DFE54(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_2629B5C50(a1, v3);

  return sub_2629B5C50(a1, v4);
}

uint64_t sub_2629DFE94()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  sub_2629B5C50(v4, v1);
  sub_2629B5C50(v4, v2);
  return sub_262A2A9D8();
}

uint64_t sub_2629DFEE4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_2629D4D50(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_2629D4D50(v2, v3);
}

unint64_t sub_2629DFF44()
{
  result = qword_27FF3CA20;
  if (!qword_27FF3CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA20);
  }

  return result;
}

uint64_t SIDCatalogWorkoutReferenceFilterProperty.hash(into:)(__int128 *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        v5 = 2;
      }

      else if (a3 == 3)
      {
        v5 = 3;
      }

      else
      {
        v5 = 4;
      }

LABEL_28:
      MEMORY[0x26672F240](v5);

      return sub_2629B5854(a1, a2);
    }

    if (a3)
    {
      MEMORY[0x26672F240](1);

      return sub_2629B59B0(a1, a2);
    }

    else
    {
      MEMORY[0x26672F240](0);

      return sub_2629B5B40(a1, a2);
    }
  }

  else
  {
    if (a3 <= 7u)
    {
      if (a3 == 5)
      {
        v5 = 5;
      }

      else if (a3 == 6)
      {
        v5 = 6;
      }

      else
      {
        v5 = 7;
      }

      goto LABEL_28;
    }

    if (a3 == 8)
    {
      v5 = 8;
      goto LABEL_28;
    }

    if (a3 != 9)
    {
      v5 = 10;
      goto LABEL_28;
    }

    MEMORY[0x26672F240](9);

    return sub_2629B55DC(a1, a2);
  }
}

uint64_t SIDCatalogWorkoutReferenceFilterProperty.hashValue.getter(uint64_t a1, unsigned __int8 a2)
{
  sub_262A2A998();
  SIDCatalogWorkoutReferenceFilterProperty.hash(into:)(v5, a1, a2);
  return sub_262A2A9D8();
}

uint64_t sub_2629E014C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_262A2A998();
  SIDCatalogWorkoutReferenceFilterProperty.hash(into:)(v4, v1, v2);
  return sub_262A2A9D8();
}

uint64_t sub_2629E01A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_262A2A998();
  SIDCatalogWorkoutReferenceFilterProperty.hash(into:)(v4, v1, v2);
  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness40SIDCatalogWorkoutReferenceFilterPropertyO2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        if (a4 == 1)
        {
          return sub_2629D4314(a1, a3);
        }
      }

      else if (!a4)
      {
        return sub_2629D41C0(a1, a3);
      }
    }

    else
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          if (a4 != 3)
          {
            return 0;
          }
        }

        else if (a4 != 4)
        {
          return 0;
        }

        v5 = a3;
        return sub_2629D45F4(a1, v5);
      }

      if (a4 == 2)
      {
        v5 = a3;
        return sub_2629D45F4(a1, v5);
      }
    }
  }

  else if (a2 > 7u)
  {
    if (a2 == 8)
    {
      if (a4 != 8)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (a2 == 9)
    {
      if (a4 == 9)
      {
        return sub_2629D47AC(a1, a3);
      }

      return 0;
    }

    if (a4 == 10)
    {
      v5 = a3;
      return sub_2629D45F4(a1, v5);
    }
  }

  else if (a2 == 5)
  {
    if (a4 == 5)
    {
LABEL_23:
      v5 = a3;
      return sub_2629D45F4(a1, v5);
    }
  }

  else
  {
    if (a2 == 6)
    {
      if (a4 != 6)
      {
        return 0;
      }

      goto LABEL_23;
    }

    if (a4 == 7)
    {
LABEL_31:
      v5 = a3;
      return sub_2629D45F4(a1, v5);
    }
  }

  return 0;
}

unint64_t sub_2629E0334()
{
  result = qword_27FF3CA28;
  if (!qword_27FF3CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA28);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2629E03A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 9))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 8);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2629E03F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 8) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t SIDCatalogWorkoutReferenceSortCriteria.init(property:order:)@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = result & 1;
  a3[1] = a2 & 1;
  return result;
}

uint64_t static SIDCatalogWorkoutReferenceSortCriteria.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a1[1];
  return sub_262A2A178();
}

uint64_t SIDCatalogWorkoutReferenceSortCriteria.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x26672F240](*v0);

  return sub_262A2A188();
}

uint64_t SIDCatalogWorkoutReferenceSortCriteria.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  sub_262A2A188();
  return sub_262A2A9D8();
}

uint64_t sub_2629E0544()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  sub_262A2A188();
  return sub_262A2A9D8();
}

uint64_t sub_2629E05A4()
{
  v1 = v0[1];
  MEMORY[0x26672F240](*v0);

  return sub_262A2A188();
}

uint64_t sub_2629E05F4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  sub_262A2A188();
  return sub_262A2A9D8();
}

uint64_t sub_2629E0650(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a1[1];
  return sub_262A2A178();
}

unint64_t sub_2629E0678()
{
  result = qword_27FF3CA30;
  if (!qword_27FF3CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SIDCatalogWorkoutReferenceSortCriteria(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for SIDCatalogWorkoutReferenceSortCriteria(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t SIDCatalogWorkoutReferenceSortProperty.hashValue.getter(char a1)
{
  sub_262A2A998();
  MEMORY[0x26672F240](a1 & 1);
  return sub_262A2A9D8();
}

unint64_t sub_2629E08B0()
{
  result = qword_27FF3CA38;
  if (!qword_27FF3CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA38);
  }

  return result;
}

uint64_t SIDCatalogWorkoutReferenceQueryRequest.filter.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 SIDCatalogWorkoutReferenceQueryRequest.init(filter:limit:offset:sortCriteria:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X8>)
{
  result = *a1;
  *a5 = *a1;
  a5[1].n128_u64[0] = a2;
  a5[1].n128_u64[1] = a3;
  a5[2].n128_u64[0] = a4;
  return result;
}

uint64_t SIDCatalogWorkoutReferenceQueryRequest.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_2629B5C50(a1, *v1);
  sub_2629B5C50(a1, v3);
  MEMORY[0x26672F240](v4);
  MEMORY[0x26672F240](v5);
  result = MEMORY[0x26672F240](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = (v6 + 33);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v9 += 2;
      MEMORY[0x26672F240](v10);
      result = sub_262A2A188();
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t SIDCatalogWorkoutReferenceQueryRequest.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_262A2A998();
  SIDCatalogWorkoutReferenceQueryRequest.hash(into:)(v4);
  return sub_262A2A9D8();
}

uint64_t sub_2629E0A6C()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_262A2A998();
  SIDCatalogWorkoutReferenceQueryRequest.hash(into:)(v4);
  return sub_262A2A9D8();
}

uint64_t sub_2629E0AC4()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_262A2A998();
  SIDCatalogWorkoutReferenceQueryRequest.hash(into:)(v4);
  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness38SIDCatalogWorkoutReferenceQueryRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];

  if ((sub_2629D4D50(v2, v7) & 1) == 0)
  {

    return 0;
  }

  v14 = v6;
  v12 = sub_2629D4D50(v3, v8);

  if ((v12 & 1) == 0 || v5 != v9 || v4 != v10)
  {
    return 0;
  }

  return sub_2629E7004(v14, v11);
}

unint64_t sub_2629E0C4C()
{
  result = qword_27FF3CA40;
  if (!qword_27FF3CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA40);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2629E0CB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2629E0CFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SIDPersonalizedPlanRequest.init(correlationKey:dataProvider:source:storefrontIdentifier:trigger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = sub_262A2A018();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for SIDPersonalizedPlanRequest();
  result = sub_2629E0E68(a2, a7 + v15[5]);
  *(a7 + v15[6]) = a3 & 1;
  v17 = (a7 + v15[7]);
  *v17 = a4;
  v17[1] = a5;
  *(a7 + v15[8]) = a6;
  return result;
}

uint64_t type metadata accessor for SIDPersonalizedPlanRequest()
{
  result = qword_27FF3CA48;
  if (!qword_27FF3CA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629E0E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDPersonalizedPlanDataProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629E0EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262A2A018();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SIDPersonalizedPlanDataProvider();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2629E1004(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_262A2A018();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SIDPersonalizedPlanDataProvider();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2629E1110()
{
  result = sub_262A2A018();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SIDPersonalizedPlanDataProvider();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

SIDFitness::SIDRequestSource_optional __swiftcall SIDRequestSource.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_262A2A788();

  if (v1 == 1)
  {
    v2.value = SIDFitness_SIDRequestSource_fitnessPlusTab;
  }

  else
  {
    v2.value = SIDFitness_SIDRequestSource_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t SIDRequestSource.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x507373656E746966;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_2629E124C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x507373656E746966;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = 0x8000000262A31C70;
  }

  else
  {
    v5 = 0xEE0062615473756CLL;
  }

  if (*a2)
  {
    v6 = 0x507373656E746966;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (*a2)
  {
    v7 = 0xEE0062615473756CLL;
  }

  else
  {
    v7 = 0x8000000262A31C70;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_262A2A878();
  }

  return v9 & 1;
}

uint64_t sub_2629E1304@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_262A2A788();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2629E1364(unint64_t *a1@<X8>)
{
  v2 = 0x8000000262A31C70;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x507373656E746966;
    v2 = 0xEE0062615473756CLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_2629E13B8()
{
  result = qword_27FF3CA58;
  if (!qword_27FF3CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA58);
  }

  return result;
}

uint64_t sub_2629E140C()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629E14A0()
{
  *v0;
  sub_262A2A448();
}

uint64_t sub_2629E1520()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

unint64_t SIDRequestTrigger.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E65704F707061;
  v2 = 0x6F54736472617761;
  v3 = 0x44676F6C61746163;
  if (a1 != 3)
  {
    v3 = 0x616470556E616C70;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (!a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2629E1680(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = 0x6F54736472617761;
      v5 = 0xEB00000000747361;
      if (*a2 > 1u)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2 == 3)
      {
        v4 = 0x44676F6C61746163;
      }

      else
      {
        v4 = 0x616470556E616C70;
      }

      if (v2 == 3)
      {
        v5 = 0xEE00646574656C65;
      }

      else
      {
        v5 = 0xEB00000000646574;
      }

      if (*a2 > 1u)
      {
        goto LABEL_10;
      }
    }

LABEL_21:
    if (*a2)
    {
      v7 = 0x6E65704F707061;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (*a2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x8000000262A31CA0;
    }

    if (v4 != v7)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (*a1)
  {
    v4 = 0x6E65704F707061;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x8000000262A31CA0;
  }

  if (*a2 <= 1u)
  {
    goto LABEL_21;
  }

LABEL_10:
  if (v3 == 2)
  {
    v8 = 0x6F54736472617761;
    v9 = 7631713;
  }

  else
  {
    if (v3 == 3)
    {
      v6 = 0xEE00646574656C65;
      if (v4 != 0x44676F6C61746163)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    v8 = 0x616470556E616C70;
    v9 = 6579572;
  }

  v6 = v9 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v4 != v8)
  {
LABEL_36:
    v10 = sub_262A2A878();
    goto LABEL_37;
  }

LABEL_34:
  if (v5 != v6)
  {
    goto LABEL_36;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

uint64_t sub_2629E185C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s10SIDFitness17SIDRequestTriggerO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_2629E188C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E65704F707061;
  v5 = 0xEB00000000747361;
  v6 = 0x6F54736472617761;
  v7 = 0xEE00646574656C65;
  v8 = 0x44676F6C61746163;
  if (v2 != 3)
  {
    v8 = 0x616470556E616C70;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x8000000262A31CA0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2629E194C()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629E1A50()
{
  *v0;
  *v0;
  sub_262A2A448();
}

uint64_t sub_2629E1B40()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness17SIDRequestTriggerO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_262A2A788();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2629E1C90()
{
  result = qword_27FF3CA60;
  if (!qword_27FF3CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA60);
  }

  return result;
}

uint64_t SIDPersonalizedPlanResponse.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SIDPersonalizedPlanResponse() + 20);

  return sub_2629E1D8C(v3, a1);
}

uint64_t type metadata accessor for SIDPersonalizedPlanResponse()
{
  result = qword_27FF3CA68;
  if (!qword_27FF3CA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629E1D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDMetrics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SIDPersonalizedPlanResponse.init(workoutPlans:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for SIDPersonalizedPlanResponse() + 20);

  return sub_2629E1E3C(a2, v4);
}

uint64_t sub_2629E1E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDMetrics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629E1EB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SIDMetrics();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2629E1F74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SIDMetrics();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2629E2018()
{
  sub_2629E209C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SIDMetrics();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2629E209C()
{
  if (!qword_27FF3CA78)
  {
    type metadata accessor for SIDWorkoutPlanType();
    v0 = sub_262A2A558();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3CA78);
    }
  }
}

uint64_t SIDArchivedSession.init(workoutIdentifier:percentCompleted:startDate:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  v9 = type metadata accessor for SIDArchivedSession();
  v10 = *(v9 + 24);
  v11 = sub_262A29FD8();
  (*(*(v11 - 8) + 32))(a5 + v10, a3, v11);
  v12 = *(v9 + 28);
  v13 = sub_262A2A168();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a4, v13);
}

uint64_t type metadata accessor for SIDArchivedSession()
{
  result = qword_27FF3CA90;
  if (!qword_27FF3CA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SIDArchivedSession.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_262A2A878()) && *(a1 + 16) == *(a2 + 16))
  {
    v5 = type metadata accessor for SIDArchivedSession();
    v6 = *(v5 + 24);
    if (sub_262A29FB8())
    {
      v7 = *(v5 + 28);

      JUMPOUT(0x26672E9F0);
    }
  }

  return 0;
}

uint64_t SIDArchivedSession.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_262A2A448();
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26672F260](*&v3);
  v4 = type metadata accessor for SIDArchivedSession();
  v5 = *(v4 + 24);
  sub_262A29FD8();
  sub_2629E2778(&qword_27FF3C4E8, MEMORY[0x277CC9578]);
  sub_262A2A388();
  v6 = *(v4 + 28);
  sub_262A2A168();
  sub_2629E2778(&qword_27FF3CA80, MEMORY[0x277CC9A70]);
  return sub_262A2A388();
}

uint64_t SIDArchivedSession.hashValue.getter()
{
  sub_262A2A998();
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_262A2A448();
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26672F260](*&v3);
  v4 = type metadata accessor for SIDArchivedSession();
  v5 = *(v4 + 24);
  sub_262A29FD8();
  sub_2629E2778(&qword_27FF3C4E8, MEMORY[0x277CC9578]);
  sub_262A2A388();
  v6 = *(v4 + 28);
  sub_262A2A168();
  sub_2629E2778(&qword_27FF3CA80, MEMORY[0x277CC9A70]);
  sub_262A2A388();
  return sub_262A2A9D8();
}

uint64_t sub_2629E2508(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 1);
  sub_262A2A448();
  v6 = v2[2];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x26672F260](*&v6);
  v7 = *(a2 + 24);
  sub_262A29FD8();
  sub_2629E2778(&qword_27FF3C4E8, MEMORY[0x277CC9578]);
  sub_262A2A388();
  v8 = *(a2 + 28);
  sub_262A2A168();
  sub_2629E2778(&qword_27FF3CA80, MEMORY[0x277CC9A70]);
  return sub_262A2A388();
}

uint64_t sub_2629E2614(uint64_t a1, uint64_t a2)
{
  sub_262A2A998();
  v4 = *v2;
  v5 = *(v2 + 1);
  sub_262A2A448();
  v6 = v2[2];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x26672F260](*&v6);
  v7 = *(a2 + 24);
  sub_262A29FD8();
  sub_2629E2778(&qword_27FF3C4E8, MEMORY[0x277CC9578]);
  sub_262A2A388();
  v8 = *(a2 + 28);
  sub_262A2A168();
  sub_2629E2778(&qword_27FF3CA80, MEMORY[0x277CC9A70]);
  sub_262A2A388();
  return sub_262A2A9D8();
}

uint64_t sub_2629E2778(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2629E27C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (sub_262A2A878()) && *(a1 + 16) == *(a2 + 16))
  {
    v7 = *(a3 + 24);
    if (sub_262A29FB8())
    {
      v8 = *(a3 + 28);

      JUMPOUT(0x26672E9F0);
    }
  }

  return 0;
}

uint64_t sub_2629E287C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_262A29FD8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_262A2A168();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2629E29B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_262A29FD8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_262A2A168();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2629E2AD8()
{
  result = sub_262A29FD8();
  if (v1 <= 0x3F)
  {
    result = sub_262A2A168();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void __swiftcall SIDAwardProgressReference.init(goalValue:metadata:progressValue:required:templateUniqueName:)(SIDFitness::SIDAwardProgressReference *__return_ptr retstr, Swift::Int goalValue, Swift::OpaquePointer metadata, Swift::Int progressValue, Swift::Bool required, Swift::String templateUniqueName)
{
  retstr->goalValue = goalValue;
  retstr->metadata = metadata;
  retstr->progressValue = progressValue;
  retstr->required = required;
  retstr->templateUniqueName = templateUniqueName;
}

uint64_t SIDPersonalizedPlanDataProvider.init(activePlanData:awardData:contextData:fitnessPlusWorkoutHistory:modalityDurations:onboardingData:queryCatalogWorkoutReferences:scheduleBuilder:userMetadata:scaffoldValidator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = *a3;
  v18 = a3[1];
  sub_2629E2E14(a1, a9, &unk_27FF3C0B0, &unk_262A30350);
  v20 = type metadata accessor for SIDPersonalizedPlanDataProvider();
  *(a9 + v20[5]) = a2;
  v21 = (a9 + v20[6]);
  *v21 = v19;
  v21[1] = v18;
  *(a9 + v20[7]) = a4;
  sub_2629E2DB0(a12, a9 + v20[8]);
  *(a9 + v20[9]) = a5;
  sub_2629E2E14(a6, a9 + v20[10], &qword_27FF3C948, &unk_262A30B40);
  v22 = (a9 + v20[11]);
  *v22 = a7;
  v22[1] = a8;
  v23 = (a9 + v20[14]);
  *v23 = a10;
  v23[1] = a11;
  v24 = swift_allocObject();
  *(v24 + 16) = a10;
  *(v24 + 24) = a11;
  v25 = (a9 + v20[13]);
  *v25 = &unk_262A30368;
  v25[1] = v24;
  sub_2629E32BC(a12, a9 + v20[15]);
  v26 = swift_allocObject();
  *(v26 + 16) = a13;
  *(v26 + 24) = a14;
  v27 = (a9 + v20[12]);
  *v27 = &unk_262A30378;
  v27[1] = v26;
  v28 = (a9 + v20[17]);
  *v28 = a13;
  v28[1] = a14;
  v29 = (a9 + v20[16]);
  *v29 = &unk_262A30380;
  v29[1] = 0;
}

uint64_t type metadata accessor for SIDPersonalizedPlanDataProvider()
{
  result = qword_27FF3CAA0;
  if (!qword_27FF3CAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629E2DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDUserMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629E2E14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2629E2E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  v6 = *(*(type metadata accessor for SIDWorkoutPlanScheduleResponse() - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v7 = type metadata accessor for SIDWorkoutPlanScheduleRequest();
  *(v4 + 48) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = *a2;
  *(v4 + 80) = *(a2 + 16);
  *(v4 + 88) = *(a2 + 24);
  *(v4 + 104) = *(a2 + 40);

  return MEMORY[0x2822009F8](sub_2629E2F64, 0, 0);
}

uint64_t sub_2629E2F64()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[3];
  sub_262A2A008();
  v10 = (v7 + *(v8 + 20));
  *v10 = v6;
  v10[1] = v5;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v2;
  v10[5] = v1;
  *(v7 + *(v8 + 24)) = 0;

  v17 = (v9 + *v9);
  v11 = v9[1];
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_2629E30BC;
  v13 = v0[7];
  v15 = v0[4];
  v14 = v0[5];

  return v17(v14, v13);
}

uint64_t sub_2629E30BC()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_2629E4958;
  }

  else
  {
    v3 = sub_2629E4960;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2629E31D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2629E3208(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2629E4964;

  return sub_2629E2E7C(a1, a2, v7, v6);
}

uint64_t sub_2629E32BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDUserMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629E3320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  v5 = type metadata accessor for SIDWorkoutPlanScheduleRequest();
  *(v3 + 32) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = *a1;
  *(v3 + 64) = *(a1 + 16);
  *(v3 + 72) = *(a1 + 24);
  *(v3 + 88) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_2629E33D8, 0, 0);
}

uint64_t sub_2629E33D8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  sub_262A2A008();
  v10 = (v7 + *(v8 + 20));
  *v10 = v6;
  v10[1] = v5;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v2;
  v10[5] = v1;
  *(v7 + *(v8 + 24)) = 0;

  v16 = (v9 + *v9);
  v11 = v9[1];
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_2629E3530;
  v13 = v0[5];
  v14 = v0[3];

  return v16(v13);
}

uint64_t sub_2629E3530()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2629E495C;
  }

  else
  {
    v3 = sub_2629E4954;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2629E3644(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2629E4964;

  return sub_2629E3320(a1, v5, v4);
}

uint64_t SIDPersonalizedPlanDataProvider.init(activePlanData:awardData:contextData:fitnessPlusWorkoutHistory:modalityDurations:onboardingData:queryCatalogWorkoutReferences:scheduleBuilder:userMetadata:scaffoldValidator:scaffoldReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *a3;
  v20 = a3[1];
  sub_2629E2E14(a1, a9, &unk_27FF3C0B0, &unk_262A30350);
  v21 = type metadata accessor for SIDPersonalizedPlanDataProvider();
  *(a9 + v21[5]) = a2;
  v22 = (a9 + v21[6]);
  *v22 = v19;
  v22[1] = v20;
  *(a9 + v21[7]) = a4;
  sub_2629E2DB0(a12, a9 + v21[8]);
  *(a9 + v21[9]) = a5;
  sub_2629E2E14(a6, a9 + v21[10], &qword_27FF3C948, &unk_262A30B40);
  v23 = (a9 + v21[11]);
  *v23 = a7;
  v23[1] = a8;
  v24 = (a9 + v21[14]);
  *v24 = a10;
  v24[1] = a11;
  v25 = swift_allocObject();
  *(v25 + 16) = a10;
  *(v25 + 24) = a11;
  v26 = (a9 + v21[13]);
  *v26 = &unk_262A30390;
  v26[1] = v25;
  sub_2629E32BC(a12, a9 + v21[15]);
  v27 = swift_allocObject();
  *(v27 + 16) = a13;
  *(v27 + 24) = a14;
  v28 = (a9 + v21[12]);
  *v28 = &unk_262A303A0;
  v28[1] = v27;
  v29 = (a9 + v21[17]);
  *v29 = a13;
  v29[1] = a14;
  v30 = (a9 + v21[16]);
  *v30 = a15;
  v30[1] = a16;
}

uint64_t sub_2629E38C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  v6 = *(*(type metadata accessor for SIDWorkoutPlanScheduleResponse() - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v7 = type metadata accessor for SIDWorkoutPlanScheduleRequest();
  *(v4 + 48) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = *a2;
  *(v4 + 80) = *(a2 + 16);
  *(v4 + 88) = *(a2 + 24);
  *(v4 + 104) = *(a2 + 40);

  return MEMORY[0x2822009F8](sub_2629E39AC, 0, 0);
}

uint64_t sub_2629E39AC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[3];
  sub_262A2A008();
  v10 = (v7 + *(v8 + 20));
  *v10 = v6;
  v10[1] = v5;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v2;
  v10[5] = v1;
  *(v7 + *(v8 + 24)) = 0;

  v17 = (v9 + *v9);
  v11 = v9[1];
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_2629E3B04;
  v13 = v0[7];
  v15 = v0[4];
  v14 = v0[5];

  return v17(v14, v13);
}