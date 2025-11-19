uint64_t sub_270A726B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FB78);
    v2 = sub_270A89360();
    v14 = v2;
    sub_270A892C0();
    if (sub_270A892F0())
    {
      sub_270A4DC8C(0, &qword_28083F120);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_270A72EC4();
        }

        v2 = v14;
        result = sub_270A89220();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_270A892F0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_270A728A0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FC70);
  result = sub_270A89350();
  v4 = result;
  if (*(v2 + 16))
  {
    v32 = v0;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_270A89630();
      sub_270A89650();
      if (v18)
      {
        v21 = v18;
        sub_270A89240();
      }

      if (v19 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v19;
      }

      MEMORY[0x2743AEB10](*&v22);
      if (v20 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v20;
      }

      MEMORY[0x2743AEB10](*&v23);
      result = sub_270A89680();
      v24 = -1 << *(v4 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v11 + 8 * v26);
          if (v30 != -1)
          {
            v12 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v2 + 32);
    if (v31 >= 64)
    {
      bzero((v2 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v31;
    }

    v1 = v32;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_270A72B68()
{
  v1 = v0;
  v35 = sub_270A88840();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC48);
  result = sub_270A89350();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_270A76398(&unk_28083FB50, MEMORY[0x277D77F08]);
      result = sub_270A88F70();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_270A72EC4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FB78);
  result = sub_270A89350();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_270A89220();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_270A730EC(uint64_t a1, uint64_t a2)
{
  sub_270A89220();
  result = sub_270A892B0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_270A73170(void *a1, unint64_t a2, char a3, double a4, double a5)
{
  v6 = v5;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_270A728A0();
    }

    else
    {
      if (v12 > v11)
      {
        sub_270A737C0();
        goto LABEL_28;
      }

      sub_270A73CB0();
    }

    v13 = *v5;
    sub_270A89630();
    sub_270A89650();
    if (a1)
    {
      v14 = a1;
      sub_270A89240();
    }

    if (a4 == 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = a4;
    }

    MEMORY[0x2743AEB10](*&v15);
    if (a5 == 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = a5;
    }

    MEMORY[0x2743AEB10](*&v16);
    v17 = sub_270A89680();
    v18 = -1 << *(v13 + 32);
    a2 = v17 & ~v18;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      do
      {
        v21 = *(v13 + 48) + 24 * a2;
        v22 = *v21;
        v24 = *(v21 + 8);
        v23 = *(v21 + 16);
        if (*v21)
        {
          if (!a1)
          {
            goto LABEL_23;
          }

          sub_270A4DC8C(0, &qword_28083F120);
          v25 = a1;
          v26 = v22;
          v27 = sub_270A89230();

          if ((v27 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else if (a1)
        {
          goto LABEL_23;
        }

        if (v24 == a4 && v23 == a5)
        {
          goto LABEL_31;
        }

LABEL_23:
        a2 = (a2 + 1) & v19;
      }

      while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v28 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v29 = *(v28 + 48) + 24 * a2;
  *v29 = a1;
  *(v29 + 8) = a4;
  *(v29 + 16) = a5;
  v30 = *(v28 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
LABEL_31:
    sub_270A89590();
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v32;
  }
}

uint64_t sub_270A733AC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_270A88840();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_270A72B68();
  }

  else
  {
    if (v11 > v10)
    {
      sub_270A73928();
      goto LABEL_12;
    }

    sub_270A73F4C();
  }

  v12 = *v3;
  sub_270A76398(&unk_28083FB50, MEMORY[0x277D77F08]);
  v13 = sub_270A88F70();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_270A76398(&qword_28083F0E0, MEMORY[0x277D77F08]);
      v21 = sub_270A88FA0();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_270A89590();
  __break(1u);
  return result;
}

void sub_270A73650(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_270A72EC4();
  }

  else
  {
    if (v7 > v6)
    {
      sub_270A73B60();
      goto LABEL_12;
    }

    sub_270A74268();
  }

  v8 = *v3;
  v9 = sub_270A89220();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_270A4DC8C(0, &qword_28083F120);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_270A89230();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_270A89590();
  __break(1u);
}

id sub_270A737C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FC70);
  v2 = *v0;
  v3 = sub_270A89340();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v4 + 48) + v17;
        v21 = *(v18 + 8);
        *v20 = *v18;
        *(v20 + 8) = v21;
        result = v19;
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

void *sub_270A73928()
{
  v1 = v0;
  v2 = sub_270A88840();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC48);
  v6 = *v0;
  v7 = sub_270A89340();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

id sub_270A73B60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FB78);
  v2 = *v0;
  v3 = sub_270A89340();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

uint64_t sub_270A73CB0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FC70);
  result = sub_270A89350();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = *(v2 + 48) + 24 * (v13 | (v5 << 6));
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      sub_270A89630();
      sub_270A89650();
      if (v17)
      {
        v20 = v17;
        sub_270A89240();
      }

      if (v18 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v18;
      }

      MEMORY[0x2743AEB10](*&v21);
      if (v19 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v19;
      }

      MEMORY[0x2743AEB10](*&v22);
      result = sub_270A89680();
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v10 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v10 + 8 * v25);
          if (v29 != -1)
          {
            v11 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_36;
      }

      v11 = __clz(__rbit64((-1 << v24) & ~*(v10 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 24 * v11;
      *v12 = v17;
      *(v12 + 8) = v18;
      *(v12 + 16) = v19;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v30;
        goto LABEL_34;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {

LABEL_34:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_270A73F4C()
{
  v1 = v0;
  v32 = sub_270A88840();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC48);
  v6 = sub_270A89350();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_270A76398(&unk_28083FB50, MEMORY[0x277D77F08]);
      result = sub_270A88F70();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_270A74268()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FB78);
  result = sub_270A89350();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_270A89220();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_270A7447C(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  sub_270A89630();
  sub_270A89650();
  if (a1)
  {
    v9 = a1;
    sub_270A89240();
  }

  if (a2 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a2;
  }

  MEMORY[0x2743AEB10](*&v10);
  if (a3 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = a3;
  }

  MEMORY[0x2743AEB10](*&v11);
  v12 = sub_270A89680();
  v13 = -1 << *(v8 + 32);
  v14 = v12 & ~v13;
  if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 1;
  }

  v28 = v4;
  v15 = ~v13;
  while (1)
  {
    v17 = *(v8 + 48) + 24 * v14;
    v18 = *v17;
    v20 = *(v17 + 8);
    v19 = *(v17 + 16);
    if (*v17)
    {
      break;
    }

    if (!a1)
    {
      goto LABEL_12;
    }

LABEL_16:
    v14 = (v14 + 1) & v15;
    if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 1;
    }
  }

  if (!a1)
  {
    goto LABEL_16;
  }

  sub_270A4DC8C(0, &qword_28083F120);
  v21 = a1;
  v22 = v18;
  v23 = sub_270A89230();

  if ((v23 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v20 != a2 || v19 != a3)
  {
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v28;
  v29 = *v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_270A737C0();
    v26 = v29;
  }

  v27 = *(*(v26 + 48) + 24 * v14);
  sub_270A74930(v14);
  result = v27;
  *v28 = v29;
  return result;
}

uint64_t sub_270A74688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_270A88840();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_270A76398(&unk_28083FB50, MEMORY[0x277D77F08]);
  v31 = a1;
  v10 = sub_270A88F70();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_270A76398(&qword_28083F0E0, MEMORY[0x277D77F08]);
      v19 = sub_270A88FA0();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_270A73928();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_270A74B5C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

unint64_t sub_270A74930(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_270A892A0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v11 = *(v3 + 48) + 24 * v6;
        v12 = *v11;
        v14 = *(v11 + 8);
        v13 = *(v11 + 16);
        sub_270A89630();
        sub_270A89650();
        if (v12)
        {
          v12 = v12;
          sub_270A89240();
        }

        if (v14 == 0.0)
        {
          v15 = 0.0;
        }

        else
        {
          v15 = v14;
        }

        MEMORY[0x2743AEB10](*&v15);
        if (v13 == 0.0)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = v13;
        }

        MEMORY[0x2743AEB10](*&v16);
        v17 = sub_270A89680();

        v18 = v17 & v7;
        if (v2 >= v9)
        {
          if (v18 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v18 >= v9)
        {
          goto LABEL_19;
        }

        if (v2 >= v18)
        {
LABEL_19:
          v19 = *(v3 + 48);
          v20 = v19 + 24 * v2;
          v21 = (v19 + 24 * v6);
          if (v2 != v6 || v20 >= v21 + 24)
          {
            v10 = *v21;
            *(v20 + 16) = *(v21 + 2);
            *v20 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v22 = *(v3 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v24;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_270A74B5C(int64_t a1)
{
  v3 = sub_270A88840();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_270A892A0();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_270A76398(&unk_28083FB50, MEMORY[0x277D77F08]);
        v24 = sub_270A88F70();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

id sub_270A74E64(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_270A892C0();
  sub_270A4DC8C(0, &qword_28083F120);
  sub_270A762E8();
  result = sub_270A89190();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_270A892F0())
      {
        goto LABEL_30;
      }

      sub_270A4DC8C(0, &qword_28083F120);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_270A75080(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_270A88840();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_270A75324(uint64_t a1, uint64_t a2)
{
  v4 = sub_270A88840();
  v5 = *(v4 - 8);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_270A76398(&unk_28083FB50, MEMORY[0x277D77F08]);
      v26 = sub_270A88F70();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_270A76398(&qword_28083F0E0, MEMORY[0x277D77F08]);
        v31 = sub_270A88FA0();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_270A756D4(__int128 *a1, uint64_t a2)
{
  v49 = a1;
  v52 = sub_270A88840();
  v3 = *(v52 - 8);
  v4 = MEMORY[0x28223BE20](v52);
  v48 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC30);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = v41 - v11;
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  v41[1] = v3 + 16;
  v51 = (v3 + 32);
  v44 = v3;
  v45 = a2;
  v47 = (v3 + 8);

  v18 = 0;
  v19 = 0;
  v42 = v10;
  for (i = a2 + 64; ; v12 = i)
  {
    v53 = v18;
    if (!v15)
    {
      break;
    }

    v20 = v19;
LABEL_15:
    v24 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v25 = v24 | (v20 << 6);
    v27 = v44;
    v26 = v45;
    (*(v44 + 16))(v43, *(v45 + 48) + *(v44 + 72) * v25, v52);
    v28 = *(*(v26 + 56) + 8 * v25);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC38);
    v30 = *(v29 + 48);
    v10 = v42;
    (*(v27 + 32))();
    *&v10[v30] = v28;
    (*(*(v29 - 8) + 56))(v10, 0, 1, v29);

    v23 = v50;
LABEL_16:
    sub_270A63318(v10, v23, &qword_28083FC30);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC38);
    if ((*(*(v31 - 8) + 48))(v23, 1, v31) == 1)
    {

      return MEMORY[0x2743AEAF0](v53);
    }

    v32 = *(v31 + 48);
    v33 = v52;
    v34 = v48;
    (*v51)(v48, v23, v52);
    v35 = *(v23 + v32);
    v36 = v49[3];
    v56 = v49[2];
    v57 = v36;
    v58 = *(v49 + 8);
    v37 = v49[1];
    v54 = *v49;
    v55 = v37;
    sub_270A76398(&unk_28083FB50, MEMORY[0x277D77F08]);
    sub_270A88F80();
    (*v47)(v34, v33);
    MEMORY[0x2743AEAF0](*(v35 + 16));
    v38 = *(v35 + 16);
    if (v38)
    {
      v39 = v35 + 40;
      do
      {

        sub_270A89030();

        v39 += 16;
        --v38;
      }

      while (v38);
    }

    result = sub_270A89680();
    v18 = result ^ v53;
  }

  if (v16 <= v19 + 1)
  {
    v21 = v19 + 1;
  }

  else
  {
    v21 = v16;
  }

  v22 = v21 - 1;
  v23 = v50;
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v16)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC38);
      (*(*(v40 - 8) + 56))(v10, 1, 1, v40);
      v15 = 0;
      v19 = v22;
      goto LABEL_16;
    }

    v15 = *(v12 + 8 * v20);
    ++v19;
    if (v15)
    {
      v19 = v20;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_270A75BC4()
{
  v7 = MEMORY[0x277D84FA0];
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  *(v1 + 16) = &v7;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_270A76350;
  *(v2 + 24) = v1;
  aBlock[4] = sub_270A76358;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_270A6E988;
  aBlock[3] = &block_descriptor_0;
  v3 = _Block_copy(aBlock);

  [v0 unkit:v3 enumerateApplicationRecordsEligibleToDeliverNotifications:?];
  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    v5 = v7;

    return v5;
  }

  return result;
}

uint64_t sub_270A75D38()
{
  v0 = [objc_opt_self() currentNotificationSettingsCenter];
  v1 = [v0 notificationSourcesWithFilter_];

  sub_270A4DC8C(0, &qword_28083F120);
  sub_270A762E8();
  v2 = sub_270A89180();

  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_270A892D0();

    if (v3)
    {
      return v2;
    }
  }

  else if (*(v2 + 16))
  {
    return v2;
  }

  if (qword_28122C2A0 != -1)
  {
    swift_once();
  }

  v4 = sub_270A88890();
  __swift_project_value_buffer(v4, qword_28122C340);
  v5 = sub_270A88870();
  v6 = sub_270A891B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_270A33000, v5, v6, "[Loading notification sources] Unable to load UserNotificationsSettings notification sources. Perhaps you are missing an entitlement?", v7, 2u);
    MEMORY[0x2743AF520](v7, -1, -1);
  }

  v2 = sub_270A75BC4();

  v8 = sub_270A88870();
  v9 = sub_270A891A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349056;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v11 = sub_270A892D0();
    }

    else
    {
      v11 = *(v2 + 16);
    }

    *(v10 + 4) = v11;

    _os_log_impl(&dword_270A33000, v8, v9, "[Loading notification sources] Loaded %{public}ld sources from LaunchServices. This might be missing system sources provided by UserNotificationsSettings.", v10, 0xCu);
    MEMORY[0x2743AF520](v10, -1, -1);
  }

  else
  {
  }

  return v2;
}

uint64_t sub_270A75F9C(unint64_t a1)
{
  v34 = sub_270A88840();
  v30 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v35 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_270A64680(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
LABEL_28:
    v4 = sub_270A892D0();
    if (v4)
    {
      goto LABEL_3;
    }

    return v3;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_3:
  v5 = 0;
  v32 = a1 & 0xFFFFFFFFFFFFFF8;
  v33 = a1 & 0xC000000000000001;
  v29 = v30 + 16;
  v31 = (v30 + 8);
  while (1)
  {
    if (v33)
    {
      v6 = MEMORY[0x2743AE840](v5, a1);
    }

    else
    {
      if (v5 >= *(v32 + 16))
      {
        goto LABEL_25;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v9 = [v6 sourceIdentifier];
    v10 = sub_270A88FC0();
    v12 = v11;

    v13 = v35;
    MEMORY[0x2743ADD00](v10, v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v3;
    v16 = sub_270A7D2BC(v13);
    v17 = v3[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_26;
    }

    v20 = v15;
    if (v3[3] < v19)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_270A71670();
      v3 = v36;
      if (v20)
      {
        goto LABEL_17;
      }
    }

LABEL_15:
    v3[(v16 >> 6) + 8] |= 1 << v16;
    (*(v30 + 16))(v3[6] + *(v30 + 72) * v16, v35, v34);
    *(v3[7] + 8 * v16) = MEMORY[0x277D84F90];
    v23 = v3[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_27;
    }

    v3[2] = v25;
LABEL_17:
    v26 = (v3[7] + 8 * v16);
    v27 = v7;
    MEMORY[0x2743AE550]();
    if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_270A890F0();
    }

    sub_270A89100();

    (*v31)(v35, v34);
    ++v5;
    if (v8 == v4)
    {
      return v3;
    }
  }

  sub_270A6F920(v19, isUniquelyReferenced_nonNull_native);
  v3 = v36;
  v21 = sub_270A7D2BC(v35);
  if ((v20 & 1) == (v22 & 1))
  {
    v16 = v21;
    if (v20)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  result = sub_270A895A0();
  __break(1u);
  return result;
}

unint64_t sub_270A762E8()
{
  result = qword_28083FB60;
  if (!qword_28083FB60)
  {
    sub_270A4DC8C(255, &qword_28083F120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083FB60);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_270A76398(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_270A763E0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

void sub_270A7644C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__priorityOutcome;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_270A76484(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_270A76490(uint64_t a1, uint64_t a2)
{
  v4 = _s21ShownExperienceRecordVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270A764F4(uint64_t a1, uint64_t a2)
{
  v4 = _s21ShownExperienceRecordVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_270A76558(uint64_t a1, uint64_t a2)
{
  v4 = _s21ShownExperienceRecordVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270A765BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FCB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270A7662C(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    return !a2;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 == result)
    {
      goto LABEL_7;
    }

    return 0;
  }

  result = sub_270A892D0();
  if (v5 != result)
  {
    return 0;
  }

LABEL_7:
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      v44 = v2 & 0xC000000000000001;
      v8 = 4;
      v41 = v2 & 0xFFFFFFFFFFFFFF8;
      v42 = v4;
      v43 = v2;
      while (1)
      {
        v10 = v8 - 4;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2743AE840](v8 - 4, a1);
        }

        else
        {
          if (v10 >= v4[2])
          {
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            v5 = sub_270A892D0();
            goto LABEL_5;
          }

          v11 = *(a1 + 8 * v8);
        }

        v4 = v11;
        if (v44)
        {
          v12 = MEMORY[0x2743AE840](v8 - 4, v2);
        }

        else
        {
          if (v10 >= *(v6 + 16))
          {
            goto LABEL_39;
          }

          v12 = *(v2 + 8 * v8);
        }

        v13 = v12;
        v14 = [v4 sourceIdentifier];
        v15 = sub_270A88FC0();
        v17 = v16;

        v18 = [v13 sourceIdentifier];
        v19 = sub_270A88FC0();
        v21 = v20;

        if (v15 == v19 && v17 == v21)
        {
        }

        else
        {
          v23 = sub_270A89570();

          if ((v23 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        v24 = [v4 displayName];
        v25 = sub_270A88FC0();
        v27 = v26;

        v28 = [v13 displayName];
        v29 = sub_270A88FC0();
        v31 = v30;

        if (v25 == v29 && v27 == v31)
        {
        }

        else
        {
          v32 = sub_270A89570();

          if ((v32 & 1) == 0)
          {
LABEL_37:

            return 0;
          }
        }

        v33 = [v4 bundlePath];
        v34 = sub_270A88FC0();
        v36 = v35;

        v37 = [v13 bundlePath];
        v38 = sub_270A88FC0();
        v40 = v39;

        if (v34 == v38 && v36 == v40)
        {
        }

        else
        {
          v9 = sub_270A89570();

          if ((v9 & 1) == 0)
          {
            return 0;
          }
        }

        ++v8;
        --v5;
        v4 = v42;
        v2 = v43;
        v6 = v41;
        if (!v5)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  __break(1u);
  return result;
}

void sub_270A7699C(uint64_t a1, uint64_t a2)
{
  v4 = sub_270A88840();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v73 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC18);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v12);
  if (!a1 || !a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v81 = &v73 - v13;
  v82 = v14;
  v15 = *(a1 + 64);
  v83 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v74 = (v16 + 63) >> 6;
  v86 = (v5 + 32);
  v79 = v5 + 16;
  v80 = (v5 + 8);

  v19 = 0;
  v87 = a1;
  v77 = a2;
  v78 = v4;
  v75 = v10;
  v76 = v5;
  for (i = v8; ; v8 = i)
  {
    if (v18)
    {
      v20 = v18;
      v21 = v19;
LABEL_19:
      v84 = (v20 - 1) & v20;
      v24 = __clz(__rbit64(v20)) | (v21 << 6);
      (*(v5 + 16))(v10, *(a1 + 48) + *(v5 + 72) * v24, v4);
      v25 = *(*(a1 + 56) + 8 * v24);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC20);
      v27 = *(v26 + 48);
      v28 = *(v5 + 32);
      v29 = v82;
      v28(v82, v10, v4);
      *(v29 + v27) = v25;
      (*(*(v26 - 8) + 56))(v29, 0, 1, v26);

      v8 = i;
    }

    else
    {
      if (v74 <= v19 + 1)
      {
        v22 = v19 + 1;
      }

      else
      {
        v22 = v74;
      }

      v23 = v22 - 1;
      while (1)
      {
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_67;
        }

        if (v21 >= v74)
        {
          break;
        }

        v20 = *(v83 + 8 * v21);
        ++v19;
        if (v20)
        {
          v19 = v21;
          goto LABEL_19;
        }
      }

      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC20);
      v29 = v82;
      (*(*(v72 - 8) + 56))(v82, 1, 1, v72);
      v84 = 0;
      v19 = v23;
    }

    v30 = v81;
    sub_270A63318(v29, v81, &qword_28083FC18);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC20);
    if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
    {

      return;
    }

    v32 = *(v30 + *(v31 + 48));
    (*v86)(v8, v30, v4);
    if (!*(a2 + 16) || (v33 = sub_270A7D2BC(v8), (v34 & 1) == 0))
    {
      (*v80)(v8, v4);
LABEL_61:

      goto LABEL_62;
    }

    v35 = *(*(a2 + 56) + 8 * v33);
    v36 = *v80;

    v36(v8, v4);
    if (v32 >> 62)
    {
      v37 = sub_270A892D0();
    }

    else
    {
      v37 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v35 >> 62)
    {
      if (v37 == sub_270A892D0())
      {
        goto LABEL_27;
      }

LABEL_57:

LABEL_62:

      return;
    }

    if (v37 != *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_57;
    }

LABEL_27:
    if (v37 < 0)
    {
      goto LABEL_68;
    }

    if (v37)
    {
      break;
    }

LABEL_8:

    a1 = v87;
    a2 = v77;
    v4 = v78;
    v10 = v75;
    v5 = v76;
    v18 = v84;
  }

  v90 = v32;
  v91 = v32 & 0xFFFFFFFFFFFFFF8;
  v92 = v35 & 0xC000000000000001;
  v93 = v32 & 0xC000000000000001;
  v88 = v35 & 0xFFFFFFFFFFFFFF8;
  v89 = v35;
  v38 = 4;
  while (1)
  {
    v40 = v38 - 4;
    if (!v93)
    {
      break;
    }

    v41 = MEMORY[0x2743AE840](v38 - 4, v32);
LABEL_35:
    v42 = v41;
    if (v92)
    {
      v43 = MEMORY[0x2743AE840](v38 - 4, v35);
    }

    else
    {
      if (v40 >= *(v88 + 16))
      {
        goto LABEL_66;
      }

      v43 = *(v35 + 8 * v38);
    }

    v44 = v43;
    v45 = [v42 sourceIdentifier];
    v46 = sub_270A88FC0();
    v48 = v47;

    v49 = [v44 sourceIdentifier];
    v50 = sub_270A88FC0();
    v52 = v51;

    if (v46 == v50 && v48 == v52)
    {
    }

    else
    {
      v54 = sub_270A89570();

      if ((v54 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v55 = [v42 displayName];
    v56 = sub_270A88FC0();
    v58 = v57;

    v59 = [v44 displayName];
    v60 = sub_270A88FC0();
    v62 = v61;

    if (v56 == v60 && v58 == v62)
    {
    }

    else
    {
      v63 = sub_270A89570();

      if ((v63 & 1) == 0)
      {
LABEL_58:

        goto LABEL_61;
      }
    }

    v64 = [v42 bundlePath];
    v65 = sub_270A88FC0();
    v67 = v66;

    v68 = [v44 bundlePath];
    v69 = sub_270A88FC0();
    v71 = v70;

    if (v65 == v69 && v67 == v71)
    {

      v35 = v89;
      v32 = v90;
    }

    else
    {
      v39 = sub_270A89570();

      v35 = v89;
      v32 = v90;
      if ((v39 & 1) == 0)
      {

        goto LABEL_61;
      }
    }

    ++v38;
    if (!--v37)
    {
      goto LABEL_8;
    }
  }

  if (v40 < *(v91 + 16))
  {
    v41 = *(v32 + 8 * v38);
    goto LABEL_35;
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

uint64_t sub_270A771AC()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__iconCache) = *(v0 + 24);
}

void __swiftcall UNNotificationOnboardingDefaults.init()(UNNotificationOnboardingDefaults *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_270A77228(uint64_t a1, uint64_t a2)
{
  v4 = sub_270A88760();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = _s21ShownExperienceRecordVMa();
  v156 = *(v159 - 8);
  v8 = MEMORY[0x28223BE20](v159);
  v154 = v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v141 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v145 = v141 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v141 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v164 = (v141 - v19);
  MEMORY[0x28223BE20](v18);
  v155 = v141 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FD00);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v163 = v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v161 = v141 - v24;
  if (qword_28122C2A0 != -1)
  {
    goto LABEL_93;
  }

  while (1)
  {
    v25 = sub_270A88890();
    v162 = __swift_project_value_buffer(v25, qword_28122C340);
    v26 = sub_270A88870();
    v27 = sub_270A891C0();
    v28 = os_log_type_enabled(v26, v27);
    v158 = v17;
    if (v28)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_270A33000, v26, v27, "Begin applying onboarding settings on background thread.", v29, 2u);
      v30 = v29;
      v17 = v158;
      MEMORY[0x2743AF520](v30, -1, -1);
    }

    v31 = OBJC_IVAR___UNNotificationOnboardingDefaults_shownRecords;
    swift_beginAccess();
    v32 = *(a1 + v31);
    if (!*(v32 + 16))
    {
      break;
    }

    v149 = v12;
    v141[1] = a2;
    v142 = v7;
    v143 = v5;
    v144 = v4;
    v33 = *(v32 + 64);
    v160 = v32 + 64;
    v34 = 1 << *(v32 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v4 = v35 & v33;
    v12 = ((v34 + 63) >> 6);
    v152 = 0x8000000270A90970;
    v157 = v32;

    v5 = 0;
    *&v36 = 136446466;
    v150 = v36;
    *&v36 = 136446978;
    v146 = v36;
    a2 = v154;
    v37 = v163;
    while (v4)
    {
      v48 = v5;
LABEL_32:
      v51 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v52 = v51 | (v48 << 6);
      v53 = *(*(v157 + 48) + v52);
      v54 = v155;
      sub_270A76558(*(v157 + 56) + *(v156 + 72) * v52, v155);
      v7 = &unk_270A8F188;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FD08);
      v56 = *(v55 + 48);
      v57 = v163;
      *v163 = v53;
      v37 = v57;
      sub_270A76490(v54, &v57[v56]);
      (*(*(v55 - 8) + 56))(v37, 0, 1, v55);
LABEL_33:
      v58 = v37;
      v59 = v161;
      sub_270A7E6A8(v58, v161);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FD08);
      if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
      {

        v132 = v142;
        sub_270A88740();
        sub_270A88700();
        v134 = v133;
        v135 = sub_270A88870();
        v136 = sub_270A891C0();
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          *v137 = 134349056;
          *(v137 + 4) = v134;
          _os_log_impl(&dword_270A33000, v135, v136, "Finished apply settings in '%{public}f' seconds", v137, 0xCu);
          MEMORY[0x2743AF520](v137, -1, -1);
        }

        (*(v143 + 8))(v132, v144);
        return;
      }

      v61 = *v59;
      v62 = &v59[*(v60 + 48)];
      v63 = v164;
      sub_270A76490(v62, v164);
      a1 = *(v63 + *(v159 + 32));
      if (!a1 || !*(a1 + 16))
      {
        sub_270A76558(v164, a2);
        v80 = sub_270A88870();
        v81 = sub_270A891A0();
        if (!os_log_type_enabled(v80, v81))
        {

          v82 = a2;
          goto LABEL_53;
        }

        a1 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v165 = v7;
        *a1 = v150;
        v38 = sub_270A7A1C4();
        v39 = a2;
        v41 = v40;
        sub_270A7E718(v39);
        v42 = sub_270A4D698(v38, v41, &v165);

        *(a1 + 4) = v42;
        *(a1 + 12) = 2082;
        v43 = 0x7A6972616D6D7573;
        if (v61 != 1)
        {
          v43 = 0x697469726F697270;
        }

        v44 = 0xEE006E6F6974617ALL;
        if (v61 == 1)
        {
          v44 = 0xED00006E6F697461;
        }

        if (v61)
        {
          v45 = v43;
        }

        else
        {
          v45 = 0xD00000000000002FLL;
        }

        if (v61)
        {
          v46 = v44;
        }

        else
        {
          v46 = v152;
        }

        v47 = sub_270A4D698(v45, v46, &v165);

        *(a1 + 14) = v47;
        _os_log_impl(&dword_270A33000, v80, v81, "Failed to apply '%{public}s' for '%{public}s' Record is missing a selection to apply.", a1, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2743AF520](v7, -1, -1);
        MEMORY[0x2743AF520](a1, -1, -1);

LABEL_19:
        a2 = v154;
LABEL_20:
        v17 = v158;
        goto LABEL_21;
      }

      v153 = v61;
      v64 = *v164;
      v65 = [objc_allocWithZone(MEMORY[0x277CF0BB0]) init];
      v66 = v65;
      if (!v64 || !v65)
      {
        v7 = v149;
        sub_270A76558(v164, v149);
        v84 = v64;
        v85 = sub_270A88870();
        v86 = sub_270A891A0();

        if (os_log_type_enabled(v85, v86))
        {
          LODWORD(v148) = v86;
          v151 = v66;
          a1 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          v165 = v147;
          *a1 = v146;
          v87 = sub_270A7A1C4();
          v89 = v88;
          sub_270A7E718(v7);
          v90 = sub_270A4D698(v87, v89, &v165);

          *(a1 + 4) = v90;
          v7 = 2082;
          *(a1 + 12) = 2082;
          v91 = 0x7A6972616D6D7573;
          if (v153 != 1)
          {
            v91 = 0x697469726F697270;
          }

          v92 = 0xEE006E6F6974617ALL;
          if (v153 == 1)
          {
            v92 = 0xED00006E6F697461;
          }

          if (v153)
          {
            v93 = v91;
          }

          else
          {
            v93 = 0xD00000000000002FLL;
          }

          if (v153)
          {
            v94 = v92;
          }

          else
          {
            v94 = v152;
          }

          v95 = sub_270A4D698(v93, v94, &v165);

          *(a1 + 14) = v95;
          *(a1 + 22) = 2082;
          if (v64)
          {
            v7 = &selRef_bundleForClass_;
            v96 = [v84 stringRepresentation];
            v97 = sub_270A88FC0();
            v99 = v98;

            v100 = sub_270A4D698(v97, v99, &v165);

            *(a1 + 24) = v100;
            *(a1 + 32) = 2082;
            v101 = [v84 stringRepresentation];
            v102 = sub_270A88FC0();
            v104 = v103;
          }

          else
          {
            v104 = 0xE300000000000000;
            v129 = sub_270A4D698(7104878, 0xE300000000000000, &v165);

            *(a1 + 24) = v129;
            *(a1 + 32) = 2082;
            v102 = 7104878;
          }

          v130 = sub_270A4D698(v102, v104, &v165);

          *(a1 + 34) = v130;
          _os_log_impl(&dword_270A33000, v85, v148, "Failed to apply '%{public}s' for '%{public}s'. Build(s) are nil. Can't determine if should apply settings. BuildDefaultsWrittenIn:%{public}s Current:%{public}s", a1, 0x2Au);
          v131 = v147;
          swift_arrayDestroy();
          MEMORY[0x2743AF520](v131, -1, -1);
          MEMORY[0x2743AF520](a1, -1, -1);
        }

        else
        {

          sub_270A7E718(v7);
        }

        goto LABEL_19;
      }

      v67 = v64;
      if (![v67 isSameAs_])
      {
        v105 = v145;
        sub_270A76558(v164, v145);
        v106 = v67;
        a1 = sub_270A88870();
        v107 = v105;
        v7 = sub_270A891A0();

        if (os_log_type_enabled(a1, v7))
        {
          v151 = v66;
          v108 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v165 = v148;
          *v108 = v146;
          v109 = sub_270A7A1C4();
          v111 = v110;
          sub_270A7E718(v107);
          v112 = sub_270A4D698(v109, v111, &v165);

          *(v108 + 4) = v112;
          *(v108 + 12) = 2082;
          v113 = 0x7A6972616D6D7573;
          if (v153 != 1)
          {
            v113 = 0x697469726F697270;
          }

          v114 = 0xEE006E6F6974617ALL;
          if (v153 == 1)
          {
            v114 = 0xED00006E6F697461;
          }

          if (v153)
          {
            v115 = v113;
          }

          else
          {
            v115 = 0xD00000000000002FLL;
          }

          if (v153)
          {
            v116 = v114;
          }

          else
          {
            v116 = v152;
          }

          v117 = sub_270A4D698(v115, v116, &v165);

          *(v108 + 14) = v117;
          *(v108 + 22) = 2082;
          v118 = [v106 stringRepresentation];
          v119 = sub_270A88FC0();
          v121 = v120;

          v122 = sub_270A4D698(v119, v121, &v165);

          *(v108 + 24) = v122;
          *(v108 + 32) = 2082;
          v123 = [v106 stringRepresentation];
          v124 = sub_270A88FC0();
          v126 = v125;

          v127 = sub_270A4D698(v124, v126, &v165);

          *(v108 + 34) = v127;
          _os_log_impl(&dword_270A33000, a1, v7, "Cannot to apply '%{public}s' for '%{public}s'. Builds don't match, defaults BuildDefaultsWrittenIn:%{public}s Current:%{public}s", v108, 0x2Au);
          v128 = v148;
          swift_arrayDestroy();
          MEMORY[0x2743AF520](v128, -1, -1);
          MEMORY[0x2743AF520](v108, -1, -1);

          goto LABEL_19;
        }

        v82 = v107;
LABEL_53:
        sub_270A7E718(v82);
        goto LABEL_20;
      }

      sub_270A76558(v164, v17);
      v68 = v17;
      v69 = sub_270A88870();
      v7 = sub_270A891C0();
      if (os_log_type_enabled(v69, v7))
      {
        LODWORD(v148) = v7;
        v151 = v66;
        v7 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v165 = v147;
        *v7 = v150;
        v70 = sub_270A7A1C4();
        v72 = v71;
        sub_270A7E718(v68);
        v73 = sub_270A4D698(v70, v72, &v165);

        *(v7 + 4) = v73;
        *(v7 + 12) = 2082;
        v74 = 0x7A6972616D6D7573;
        if (v153 != 1)
        {
          v74 = 0x697469726F697270;
        }

        v75 = 0xEE006E6F6974617ALL;
        if (v153 == 1)
        {
          v75 = 0xED00006E6F697461;
        }

        if (v153)
        {
          v76 = v74;
        }

        else
        {
          v76 = 0xD00000000000002FLL;
        }

        if (v153)
        {
          v77 = v75;
        }

        else
        {
          v77 = v152;
        }

        v78 = sub_270A4D698(v76, v77, &v165);

        *(v7 + 14) = v78;
        _os_log_impl(&dword_270A33000, v69, v148, "Applying '%{public}s' for '%{public}s'", v7, 0x16u);
        v79 = v147;
        swift_arrayDestroy();
        MEMORY[0x2743AF520](v79, -1, -1);
        MEMORY[0x2743AF520](v7, -1, -1);

        v17 = v158;
        v66 = v151;
      }

      else
      {

        sub_270A7E718(v68);
        v17 = v68;
      }

      sub_270A4F77C(a1);

      a2 = v154;
LABEL_21:
      v37 = v163;
      sub_270A7E718(v164);
    }

    if (v12 <= v5 + 1)
    {
      v49 = (v5 + 1);
    }

    else
    {
      v49 = v12;
    }

    v50 = v49 - 1;
    while (1)
    {
      v48 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v48 >= v12)
      {
        v7 = &unk_270A8F188;
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FD08);
        (*(*(v83 - 8) + 56))(v37, 1, 1, v83);
        v4 = 0;
        v5 = v50;
        goto LABEL_33;
      }

      v4 = *(v160 + 8 * v48);
      ++v5;
      if (v4)
      {
        v5 = v48;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_93:
    swift_once();
  }

  v138 = sub_270A88870();
  v139 = sub_270A891A0();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    *v140 = 0;
    _os_log_impl(&dword_270A33000, v138, v139, "No records to apply", v140, 2u);
    MEMORY[0x2743AF520](v140, -1, -1);
  }
}

id sub_270A7823C(uint64_t a1)
{
  v2 = v1;
  v13[0] = xmmword_28083FC90;

  sub_270A89330();
  if (!*(a1 + 16) || (v4 = sub_270A7D438(v14), (v5 & 1) == 0))
  {
    sub_270A7EB00(v14);
LABEL_6:
    *&v2[OBJC_IVAR___UNNotificationOnboardingDefaults_shownRecords] = MEMORY[0x277D84F98];
    goto LABEL_7;
  }

  sub_270A4D604(*(a1 + 56) + 32 * v4, v13);
  sub_270A7EB00(v14);
  sub_270A64E50(v13, v15);
  sub_270A4D604(v15, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FCC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
    goto LABEL_6;
  }

  v6 = sub_270A78458(*&v13[0]);

  v7 = sub_270A7E50C(v6);

  __swift_destroy_boxed_opaque_existential_0(v15);
  *&v2[OBJC_IVAR___UNNotificationOnboardingDefaults_shownRecords] = v7;
LABEL_7:
  v15[0] = xmmword_28083FCA0;

  sub_270A89330();
  if (!*(a1 + 16) || (v8 = sub_270A7D438(v14), (v9 & 1) == 0))
  {

    sub_270A7EB00(v14);
    goto LABEL_12;
  }

  sub_270A4D604(*(a1 + 56) + 32 * v8, v15);
  sub_270A7EB00(v14);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v10 = v13[0];
LABEL_13:
  v2[OBJC_IVAR___UNNotificationOnboardingDefaults_needsSelectionAppliedToSettings] = v10;
  v12.receiver = v2;
  v12.super_class = UNNotificationOnboardingDefaults;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_270A78458(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FDF0);
    v2 = sub_270A89490();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FCE0);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_270A64E50(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_270A64E50(v29, v30);
    result = sub_270A89310();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_270A64E50(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id UNNotificationOnboardingDefaults.init()()
{
  v1 = sub_270A7DC1C();
  if (!v1)
  {
    v16 = 0u;
    v17 = 0u;
LABEL_9:
    sub_270A4E644(&v16, &qword_28083FCB0);
    goto LABEL_10;
  }

  v2 = v1;

  v3 = sub_270A88FB0();

  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_270A89270();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v16 = v13;
  v17 = v14;
  if (!*(&v14 + 1))
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FCC8);
  if (swift_dynamicCast())
  {
    v5 = sub_270A78458(v13);

    v6 = sub_270A7E50C(v5);

    goto LABEL_11;
  }

LABEL_10:
  v6 = MEMORY[0x277D84F98];
LABEL_11:
  *&v0[OBJC_IVAR___UNNotificationOnboardingDefaults_shownRecords] = v6;
  v7 = sub_270A7DC1C();
  if (!v7)
  {
    v16 = 0u;
    v17 = 0u;
LABEL_19:
    sub_270A4E644(&v16, &qword_28083FCB0);
    goto LABEL_20;
  }

  v8 = v7;

  v9 = sub_270A88FB0();

  v10 = [v8 objectForKey_];

  if (v10)
  {
    sub_270A89270();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v16 = v13;
  v17 = v14;
  if (!*(&v14 + 1))
  {
    goto LABEL_19;
  }

  if (!swift_dynamicCast())
  {
LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  v11 = v13;
LABEL_21:
  v0[OBJC_IVAR___UNNotificationOnboardingDefaults_needsSelectionAppliedToSettings] = v11;
  v15.receiver = v0;
  v15.super_class = UNNotificationOnboardingDefaults;
  return objc_msgSendSuper2(&v15, sel_init, v13);
}

id UNNotificationOnboardingDefaults.save()()
{
  v1 = sub_270A7DC1C();
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR___UNNotificationOnboardingDefaults_needsSelectionAppliedToSettings;
    *(v0 + OBJC_IVAR___UNNotificationOnboardingDefaults_needsSelectionAppliedToSettings) = 1;
    sub_270A78D10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FCE0);
    v4 = sub_270A88F50();

    v5 = sub_270A88FB0();

    [v2 setObject:v4 forKey:v5];

    v6 = *(v0 + v3);

    v7 = sub_270A88FB0();

    [v2 setBool:v6 forKey:v7];

    return 0;
  }

  else
  {
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v9 = sub_270A88890();
    __swift_project_value_buffer(v9, qword_28122C340);
    v10 = sub_270A88870();
    v11 = sub_270A891B0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_270A33000, v10, v11, "Skipping save, cannot get defaults.", v12, 2u);
      MEMORY[0x2743AF520](v12, -1, -1);
    }

    v13 = *MEMORY[0x277CCA5B8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FCD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_270A8EE60;
    *(inited + 32) = sub_270A88FC0();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v15;
    *(inited + 48) = 0xD000000000000023;
    *(inited + 56) = 0x8000000270A91E50;
    v16 = v13;
    sub_270A64D20(inited);
    swift_setDeallocating();
    sub_270A4E644(inited + 32, &qword_28083F730);
    v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v18 = sub_270A88F50();

    v19 = [v17 initWithDomain:v16 code:1 userInfo:v18];

    return v19;
  }
}

uint64_t sub_270A78D10()
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FD08);
  MEMORY[0x28223BE20](v44);
  v2 = &v40 - v1;
  v3 = OBJC_IVAR___UNNotificationOnboardingDefaults_shownRecords;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v43 = 0x8000000270A90970;
  v45 = v4;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v40 = v9;
  v41 = v5;
  v42 = v2;
  while (v8)
  {
LABEL_11:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(v45 + 56);
    v16 = *(*(v45 + 48) + v14);
    v17 = _s21ShownExperienceRecordVMa();
    sub_270A76558(v15 + *(*(v17 - 8) + 72) * v14, &v2[*(v44 + 48)]);
    *v2 = v16;
    v18 = 0x7A6972616D6D7573;
    if (v16 != 1)
    {
      v18 = 0x697469726F697270;
    }

    v19 = 0xED00006E6F697461;
    if (v16 != 1)
    {
      v19 = 0xEE006E6F6974617ALL;
    }

    if (v16)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0xD00000000000002FLL;
    }

    if (v16)
    {
      v21 = v19;
    }

    else
    {
      v21 = v43;
    }

    v22 = sub_270A7C0D4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v11;
    v24 = v20;
    v25 = v20;
    v26 = v21;
    v28 = sub_270A7D244(v25, v21);
    v29 = v11[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_34;
    }

    v32 = v27;
    if (v11[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v11 = v46;
        if (v27)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_270A71E0C();
        v11 = v46;
        if (v32)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_270A705F8(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_270A7D244(v24, v26);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_36;
      }

      v28 = v33;
      v11 = v46;
      if (v32)
      {
LABEL_4:
        *(v11[7] + 8 * v28) = v22;

        goto LABEL_5;
      }
    }

    v11[(v28 >> 6) + 8] |= 1 << v28;
    v35 = (v11[6] + 16 * v28);
    *v35 = v24;
    v35[1] = v26;
    *(v11[7] + 8 * v28) = v22;
    v36 = v11[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_35;
    }

    v11[2] = v38;
LABEL_5:
    v2 = v42;
    sub_270A4E644(v42, &qword_28083FD08);
    v9 = v40;
    v5 = v41;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v11;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_270A895A0();
  __break(1u);
  return result;
}

Swift::Void __swiftcall UNNotificationOnboardingDefaults.encode(with:)(NSCoder with)
{
  sub_270A78D10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FCE0);
  v2 = sub_270A88F50();

  v3 = sub_270A88FB0();

  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];
}

id UNNotificationOnboardingDefaults.init(coder:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FBE8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_270A8EE50;
  *(v4 + 32) = sub_270A4DC8C(0, &qword_28083FC00);
  *(v4 + 40) = sub_270A4DC8C(0, &qword_28083FC08);
  *(v4 + 48) = sub_270A4DC8C(0, &unk_28083FCF0);
  *(v4 + 56) = sub_270A4DC8C(0, &unk_28083FBF0);

  sub_270A89210();

  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FCC8);
    if (swift_dynamicCast())
    {
      v5 = sub_270A78458(v16);

      v6 = sub_270A7E50C(v5);

      *&v2[OBJC_IVAR___UNNotificationOnboardingDefaults_shownRecords] = v6;

      v7 = sub_270A88FB0();

      LOBYTE(v5) = [a1 decodeBoolForKey_];

      v2[OBJC_IVAR___UNNotificationOnboardingDefaults_needsSelectionAppliedToSettings] = v5;
      v15.receiver = v2;
      v15.super_class = UNNotificationOnboardingDefaults;
      v8 = objc_msgSendSuper2(&v15, sel_init);

      return v8;
    }
  }

  else
  {
    sub_270A4E644(v17, &qword_28083FCB0);
  }

  if (qword_28122C2A0 != -1)
  {
    swift_once();
  }

  v10 = sub_270A88890();
  __swift_project_value_buffer(v10, qword_28122C340);
  v11 = sub_270A88870();
  v12 = sub_270A891A0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_270A33000, v11, v12, "Cannot decode shownRecordsDictionary", v13, 2u);
    MEMORY[0x2743AF520](v13, -1, -1);
  }

  type metadata accessor for UNNotificationOnboardingDefaults(v14);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t UNNotificationOnboardingDefaults.isEqual(_:)(uint64_t a1)
{
  v3 = _s21ShownExperienceRecordVMa();
  v79 = *(v3 - 8);
  v80 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v70 - v7);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v70 - v10);
  MEMORY[0x28223BE20](v9);
  v76 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FD00);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v70 - v17;
  v18 = sub_270A4E700(a1, v82, &qword_28083FCB0);
  if (!v83)
  {
    sub_270A4E644(v82, &qword_28083FCB0);
    return 0;
  }

  type metadata accessor for UNNotificationOnboardingDefaults(v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v74 = v16;
  v75 = v81;
  v19 = OBJC_IVAR___UNNotificationOnboardingDefaults_shownRecords;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v72 = OBJC_IVAR___UNNotificationOnboardingDefaults_shownRecords;
  v73 = v20;
  v25 = (v22 + 63) >> 6;

  v27 = 0;
  v71 = v11;
  while (v24)
  {
    v28 = v27;
LABEL_19:
    v32 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v33 = v32 | (v28 << 6);
    v34 = *(*(v73 + 48) + v33);
    v35 = v76;
    sub_270A76558(*(v73 + 56) + *(v79 + 72) * v33, v76);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FD08);
    v37 = *(v36 + 48);
    v38 = v74;
    *v74 = v34;
    v31 = v38;
    sub_270A76490(v35, &v38[v37]);
    (*(*(v36 - 8) + 56))(v31, 0, 1, v36);
LABEL_20:
    v39 = v78;
    sub_270A7E6A8(v31, v78);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FD08);
    if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
    {

      return 1;
    }

    v41 = *v39;
    v42 = v71;
    sub_270A76490(&v39[*(v40 + 48)], v71);
    v43 = v75;
    v44 = v72;
    swift_beginAccess();
    v45 = *&v43[v44];
    if (!*(v45 + 16) || (v46 = sub_270A7D354(v41), (v47 & 1) == 0))
    {
      swift_endAccess();

      sub_270A7E718(v42);

      return 0;
    }

    v48 = *(v45 + 56) + *(v79 + 72) * v46;
    v49 = v77;
    sub_270A76558(v48, v77);
    sub_270A76490(v49, v8);
    swift_endAccess();
    v50 = *v8;
    v51 = *v42;
    if (*v8)
    {
      if (!v51)
      {
        goto LABEL_47;
      }

      sub_270A4DC8C(0, &unk_28083FD10);
      v52 = v51;
      v53 = v50;
      v54 = sub_270A89230();

      if ((v54 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (v51)
    {
      goto LABEL_47;
    }

    if ((sub_270A88720() & 1) == 0)
    {
      goto LABEL_47;
    }

    v55 = v80[6];
    v56 = (v8 + v55);
    v57 = *(v8 + v55 + 8);
    v58 = (v42 + v55);
    v59 = v58[1];
    if (v57)
    {
      if (!v59 || (*v56 != *v58 || v57 != v59) && (sub_270A89570() & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (v59)
    {
      goto LABEL_47;
    }

    v60 = v80[7];
    v61 = (v8 + v60);
    v62 = *(v8 + v60 + 8);
    v63 = (v42 + v60);
    v64 = *(v42 + v60 + 8);
    if (v62)
    {
      if (!v64)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (*v61 != *v63)
      {
        LOBYTE(v64) = 1;
      }

      if (v64)
      {
LABEL_47:
        sub_270A7E718(v8);
        sub_270A7E718(v42);

        return 0;
      }
    }

    v65 = v80[8];
    v66 = *(v8 + v65);
    v67 = *(v42 + v65);
    if (v66)
    {
      if (!v67)
      {
        goto LABEL_47;
      }

      v68 = sub_270A7CC74(v66, v67);

      if ((v68 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (v67)
    {
      goto LABEL_47;
    }

    sub_270A7E718(v8);
    result = sub_270A7E718(v42);
  }

  if (v25 <= v27 + 1)
  {
    v29 = v27 + 1;
  }

  else
  {
    v29 = v25;
  }

  v30 = v29 - 1;
  v31 = v74;
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v25)
    {
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FD08);
      (*(*(v69 - 8) + 56))(v31, 1, 1, v69);
      v24 = 0;
      v27 = v30;
      goto LABEL_20;
    }

    v24 = *(v21 + 8 * v28);
    ++v27;
    if (v24)
    {
      v27 = v28;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t UNNotificationOnboardingDefaults.description.getter()
{
  v1 = _s21ShownExperienceRecordVMa();
  v42 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v41 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FD00);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v47 = 0;
  v48 = 0xE000000000000000;
  v12 = OBJC_IVAR___UNNotificationOnboardingDefaults_shownRecords;
  swift_beginAccess();
  v13 = *(v0 + v12);
  v14 = v4;
  v15 = v13 + 64;
  v16 = 1 << *(v13 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v13 + 64);
  v19 = (v16 + 63) >> 6;
  v39 = 0x8000000270A90970;
  v43 = v13;

  v21 = 0;
  v40 = v4;
  v44 = v9;
  while (v18)
  {
    v25 = v21;
LABEL_16:
    v28 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v29 = v28 | (v25 << 6);
    v30 = *(*(v43 + 48) + v29);
    v31 = v41;
    sub_270A76558(*(v43 + 56) + *(v42 + 72) * v29, v41);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FD08);
    v33 = *(v32 + 48);
    v34 = v44;
    *v44 = v30;
    v9 = v34;
    sub_270A76490(v31, &v34[v33]);
    (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
    v14 = v40;
LABEL_17:
    sub_270A7E6A8(v9, v11);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FD08);
    if ((*(*(v35 - 8) + 48))(v11, 1, v35) == 1)
    {

      return v47;
    }

    v36 = *v11;
    sub_270A76490(&v11[*(v35 + 48)], v14);
    v45 = 0;
    v46 = 0xE000000000000000;
    if (v36)
    {
      if (v36 == 1)
      {
        v22 = 0x7A6972616D6D7573;
      }

      else
      {
        v22 = 0x697469726F697270;
      }

      if (v36 == 1)
      {
        v23 = 0xED00006E6F697461;
      }

      else
      {
        v23 = 0xEE006E6F6974617ALL;
      }
    }

    else
    {
      v22 = 0xD00000000000002FLL;
      v23 = v39;
    }

    MEMORY[0x2743AE510](v22, v23);

    MEMORY[0x2743AE510](58, 0xE100000000000000);
    v24 = sub_270A7A1C4();
    MEMORY[0x2743AE510](v24);

    MEMORY[0x2743AE510](v45, v46);

    result = sub_270A7E718(v14);
    v9 = v44;
  }

  if (v19 <= v21 + 1)
  {
    v26 = v21 + 1;
  }

  else
  {
    v26 = v19;
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v25 >= v19)
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FD08);
      (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
      v18 = 0;
      v21 = v27;
      goto LABEL_17;
    }

    v18 = *(v15 + 8 * v25);
    ++v21;
    if (v18)
    {
      v21 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_270A7A1C4()
{
  v1 = v0;
  v2 = 7104878;
  if (*v0)
  {
    v3 = [*v0 stringRepresentation];
    v4 = sub_270A88FC0();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x2743AE510](v4, v6);

  MEMORY[0x2743AE510](44, 0xE100000000000000);
  MEMORY[0x2743AE510](0x3D646C697562, 0xE600000000000000);

  v7 = _s21ShownExperienceRecordVMa();
  v8 = (v1 + v7[6]);
  if (v8[1])
  {
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v10 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x2743AE510](v9, v10);

  MEMORY[0x2743AE510](44, 0xE100000000000000);
  MEMORY[0x2743AE510](0x3D656C646E7562, 0xE700000000000000);

  v11 = v1 + v7[7];
  if (v11[8])
  {
    v12 = 0xE300000000000000;
    v13 = 7104878;
  }

  else
  {
    v14 = *v11;
    if (v14 == 2)
    {
      v12 = 0xE800000000000000;
      v13 = 0x6465727265666564;
    }

    else if (v14 == 1)
    {
      v12 = 0xE800000000000000;
      v13 = 0x6574656C706D6F63;
    }

    else
    {
      if (v14)
      {
        result = sub_270A89450();
        __break(1u);
        return result;
      }

      v12 = 0xEA00000000006574;
      v13 = 0x656C706D6F636E69;
    }
  }

  MEMORY[0x2743AE510](v13, v12);

  MEMORY[0x2743AE510](44, 0xE100000000000000);
  MEMORY[0x2743AE510](0x3D656D6F6374756FLL, 0xE800000000000000);

  sub_270A88760();
  sub_270A7EC2C(&unk_28083FDA0, MEMORY[0x277CC9578]);
  v15 = sub_270A89550();
  MEMORY[0x2743AE510](v15);

  MEMORY[0x2743AE510](44, 0xE100000000000000);
  MEMORY[0x2743AE510](0x3D65746164, 0xE500000000000000);

  sub_270A89380();

  v16 = *(v1 + v7[8]);
  if (v16)
  {
    v2 = MEMORY[0x2743AE590](v16, &type metadata for NotificationOnboardingSettingsSelection);
    v18 = v17;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  MEMORY[0x2743AE510](v2, v18);

  MEMORY[0x2743AE510](93, 0xE100000000000000);
  MEMORY[0x2743AE510](0xD000000000000012, 0x8000000270A91F60);

  return 0xD000000000000017;
}

uint64_t sub_270A7A5B0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED00006E6F697461;
  v3 = 0x7A6972616D6D7573;
  v4 = *a1;
  v5 = 0x697469726F697270;
  v6 = 0xEE006E6F6974617ALL;
  if (v4 == 1)
  {
    v5 = 0x7A6972616D6D7573;
    v6 = 0xED00006E6F697461;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000002FLL;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000270A90970;
  }

  if (*a2 != 1)
  {
    v3 = 0x697469726F697270;
    v2 = 0xEE006E6F6974617ALL;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD00000000000002FLL;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000270A90970;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_270A89570();
  }

  return v11 & 1;
}

uint64_t sub_270A7A6CC()
{
  sub_270A89630();
  sub_270A89030();

  return sub_270A89680();
}

uint64_t sub_270A7A78C()
{
  sub_270A89030();
}

uint64_t sub_270A7A838()
{
  sub_270A89630();
  sub_270A89030();

  return sub_270A89680();
}

uint64_t sub_270A7A8F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270A7E4C0();
  *a1 = result;
  return result;
}

void sub_270A7A924(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697461;
  v4 = 0x7A6972616D6D7573;
  if (v2 != 1)
  {
    v4 = 0x697469726F697270;
    v3 = 0xEE006E6F6974617ALL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD00000000000002FLL;
  }

  if (v5)
  {
    v3 = 0x8000000270A90970;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_270A7A9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CF0BB0]) init];
  if (!v6)
  {
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v7 = sub_270A88890();
    __swift_project_value_buffer(v7, qword_28122C340);
    v8 = sub_270A88870();
    v9 = sub_270A891A0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_270A33000, v8, v9, "Failed to get build version", v10, 2u);
      MEMORY[0x2743AF520](v10, -1, -1);
    }

    v6 = 0;
  }

  *a3 = v6;
  v11 = [objc_allocWithZone(MEMORY[0x277CF0CD0]) init];
  v12 = [v11 bundleIdentifier];

  if (v12)
  {
    v13 = sub_270A88FC0();
    v15 = v14;

    v16 = _s21ShownExperienceRecordVMa();
    v17 = (a3 + v16[6]);
    *v17 = v13;
    v17[1] = v15;
  }

  else
  {
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v18 = sub_270A88890();
    __swift_project_value_buffer(v18, qword_28122C340);
    v19 = sub_270A88870();
    v20 = sub_270A891A0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_270A33000, v19, v20, "Failed to get bundle identifier for current process", v21, 2u);
      MEMORY[0x2743AF520](v21, -1, -1);
    }

    v16 = _s21ShownExperienceRecordVMa();
    v22 = (a3 + v16[6]);
    *v22 = 0;
    v22[1] = 0;
  }

  _s21ShownExperienceRecordVMa();
  result = sub_270A88740();
  v24 = a3 + v16[7];
  *v24 = a1;
  v24[8] = 0;
  *(a3 + v16[8]) = a2;
  return result;
}

uint64_t sub_270A7AC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FBE0);
  MEMORY[0x28223BE20](v3 - 8);
  v168 = &v160[-v4];
  v174 = sub_270A88840();
  v166 = *(v174 - 8);
  v5 = MEMORY[0x28223BE20](v174);
  v165 = &v160[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v164 = &v160[-v8];
  MEMORY[0x28223BE20](v7);
  v167 = &v160[-v9];
  v10 = sub_270A88760();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v169 = &v160[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FDE0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v160[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v160[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v160[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v160[-v23];
  v172 = _s21ShownExperienceRecordVMa();
  v170 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v175 = v19;
  v176 = &v160[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16) && (v26 = sub_270A7D244(1702125924, 0xE400000000000000), (v27 & 1) != 0))
  {
    v28 = a1;
    sub_270A4D604(*(a1 + 56) + 32 * v26, v179);
    v29 = swift_dynamicCast();
    v30 = *(v11 + 56);
    v31 = v29 ^ 1u;
    v32 = v24;
  }

  else
  {
    v28 = a1;
    v30 = *(v11 + 56);
    v32 = v24;
    v31 = 1;
  }

  v163 = v30;
  (v30)(v32, v31, 1, v10);
  sub_270A4E700(v24, v22, &unk_28083FDE0);
  v173 = v11;
  v33 = *(v11 + 48);
  v34 = v33(v22, 1, v10);
  sub_270A4E644(v22, &unk_28083FDE0);
  v35 = v34 == 1;
  v36 = v10;
  v37 = v176;
  v38 = v28;
  if (v35)
  {
    if (*(v28 + 16))
    {
      v39 = sub_270A7D244(1702125924, 0xE400000000000000);
      if (v40)
      {
        sub_270A4D604(*(v28 + 56) + 32 * v39, v179);
        if (swift_dynamicCast())
        {
          v162 = v28;
          v41 = v36;
          v42 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v43 = sub_270A88FB0();
          [v42 setDateFormat_];

          v44 = sub_270A88FB0();

          v45 = [v42 dateFromString_];

          if (v45)
          {
            v46 = v175;
            sub_270A88730();

            v47 = 0;
            v42 = v45;
          }

          else
          {
            v47 = 1;
            v46 = v175;
          }

          v48 = v163;

          v49 = v47;
          v36 = v41;
          (v48)(v46, v49, 1, v41);
          sub_270A7ECD8(v46, v24);
          v37 = v176;
          v38 = v162;
        }
      }
    }
  }

  v175 = v24;
  sub_270A4E700(v24, v16, &unk_28083FDE0);
  if (v33(v16, 1, v36) != 1)
  {
    v59 = v173;
    v60 = v169;
    (*(v173 + 32))(v169, v16, v36);
    v50 = v172;
    (*(v59 + 16))(&v37[*(v172 + 20)], v60, v36);
    v61 = v175;
    if (v38[2] && (v62 = sub_270A7D244(0x646C697562, 0xE500000000000000), (v63 & 1) != 0) && (sub_270A4D604(v38[7] + 32 * v62, v179), (swift_dynamicCast() & 1) != 0))
    {
      v65 = v177;
      v64 = v178;
      v66 = objc_allocWithZone(MEMORY[0x277CF0BB0]);
      v67 = sub_270A88FB0();
      v68 = [v66 initWithString_];

      if (v68)
      {

        *v37 = v68;
        if (!v38[2])
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

      if (qword_28122C2A0 != -1)
      {
        swift_once();
      }

      v138 = sub_270A88890();
      __swift_project_value_buffer(v138, qword_28122C340);

      v139 = sub_270A88870();
      v140 = sub_270A891A0();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v163 = v36;
        v142 = v141;
        v143 = v38;
        v144 = swift_slowAlloc();
        v179[0] = v144;
        *v142 = 136446210;
        v145 = sub_270A4D698(v65, v64, v179);

        *(v142 + 4) = v145;
        _os_log_impl(&dword_270A33000, v139, v140, "Cannot convert string, '%{public}s', to BSBuildVersion for previously stored ShownExperienceRecord.", v142, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v144);
        v146 = v144;
        v38 = v143;
        MEMORY[0x2743AF520](v146, -1, -1);
        v147 = v142;
        v36 = v163;
        v37 = v176;
        MEMORY[0x2743AF520](v147, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_28122C2A0 != -1)
      {
        swift_once();
      }

      v69 = sub_270A88890();
      __swift_project_value_buffer(v69, qword_28122C340);
      v70 = sub_270A88870();
      v71 = sub_270A891A0();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_270A33000, v70, v71, "Build string is unavailable for previously stored ShownExperienceRecord.", v72, 2u);
        MEMORY[0x2743AF520](v72, -1, -1);
      }
    }

    *v37 = 0;
    if (!v38[2])
    {
      goto LABEL_35;
    }

LABEL_31:
    v73 = sub_270A7D244(0x656C646E7562, 0xE600000000000000);
    if (v74)
    {
      sub_270A4D604(v38[7] + 32 * v73, v179);
      if (swift_dynamicCast())
      {
        v75 = v178;
        v76 = &v37[*(v50 + 24)];
        *v76 = v177;
        v76[1] = v75;
        if (!v38[2])
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }
    }

LABEL_35:
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v77 = sub_270A88890();
    __swift_project_value_buffer(v77, qword_28122C340);
    v78 = sub_270A88870();
    v79 = sub_270A891A0();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_270A33000, v78, v79, "Bundle is unavailable for previously stored ShownExperienceRecord.", v80, 2u);
      MEMORY[0x2743AF520](v80, -1, -1);
    }

    v81 = &v37[*(v50 + 24)];
    *v81 = 0;
    *(v81 + 1) = 0;
    if (!v38[2])
    {
      goto LABEL_44;
    }

LABEL_40:
    v82 = sub_270A7D244(0x656D6F6374756FLL, 0xE700000000000000);
    if (v83)
    {
      sub_270A4D604(v38[7] + 32 * v82, v179);
      if (swift_dynamicCast())
      {
        v85 = v177;
        v84 = v178;

        v86 = sub_270A894A0();

        if (v86 > 2)
        {
          if (qword_28122C2A0 != -1)
          {
            swift_once();
          }

          v128 = sub_270A88890();
          __swift_project_value_buffer(v128, qword_28122C340);

          v129 = sub_270A88870();
          v130 = sub_270A891A0();

          if (os_log_type_enabled(v129, v130))
          {
            v131 = v36;
            v132 = swift_slowAlloc();
            v133 = v38;
            v134 = swift_slowAlloc();
            v179[0] = v134;
            *v132 = 136446210;
            v135 = sub_270A4D698(v85, v84, v179);

            *(v132 + 4) = v135;
            _os_log_impl(&dword_270A33000, v129, v130, "Cannot convert string, '%{public}s', to Outcome for previously stored ShownExperienceRecord.", v132, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v134);
            v136 = v134;
            v38 = v133;
            MEMORY[0x2743AF520](v136, -1, -1);
            v137 = v132;
            v36 = v131;
            v37 = v176;
            MEMORY[0x2743AF520](v137, -1, -1);
          }

          else
          {
          }

          v86 = 0;
          v87 = 1;
          v59 = v173;
        }

        else
        {

          v87 = 0;
        }

LABEL_49:
        v92 = &v37[*(v50 + 28)];
        *v92 = v86;
        v92[8] = v87;
        if (!v38[2])
        {
          goto LABEL_76;
        }

        v93 = sub_270A7D244(0xD000000000000011, 0x8000000270A92000);
        if (v94)
        {
          sub_270A4D604(v38[7] + 32 * v93, v179);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FBB0);
          if (swift_dynamicCast())
          {

            v95 = 0;
            v96 = v177;
            v97 = *(v177 + 16);
            v98 = MEMORY[0x277D84F90];
LABEL_53:
            v99 = (v96 + 40 + 16 * v95);
            while (1)
            {
              if (v97 == v95)
              {

                (*(v173 + 8))(v169, v36);
                v61 = v175;
                v37 = v176;
                *&v176[*(v50 + 32)] = v98;
                goto LABEL_82;
              }

              if (v95 >= *(v96 + 16))
              {
                break;
              }

              ++v95;
              v100 = v99 + 2;
              v102 = *(v99 - 1);
              v101 = *v99;

              v103 = sub_270A507C0(v102, v101);
              v99 = v100;
              if (v103 != 1)
              {
                v104 = v103;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v98 = sub_270A6EFB4(0, *(v98 + 2) + 1, 1, v98);
                }

                v106 = *(v98 + 2);
                v105 = *(v98 + 3);
                if (v106 >= v105 >> 1)
                {
                  v98 = sub_270A6EFB4((v105 > 1), v106 + 1, 1, v98);
                }

                *(v98 + 2) = v106 + 1;
                *&v98[8 * v106 + 32] = v104;
                goto LABEL_53;
              }
            }

            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }
        }

        if (v38[2] && (v107 = sub_270A7D244(0x6F697463656C6573, 0xE90000000000006ELL), (v108 & 1) != 0))
        {
          sub_270A4D604(v38[7] + 32 * v107, v179);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FBB0);
          if (swift_dynamicCast())
          {
            v109 = v177;
            v163 = *(v177 + 16);
            if (v163)
            {
              v110 = v59;
              v111 = 0;
              v162 = (v166 + 48);
              v50 = v166 + 32;
              v112 = v177 + 40;
              v161 = 1;
              v113 = MEMORY[0x277D84F90];
              while (v111 < *(v109 + 16))
              {
                v114 = v109;
                v115 = v36;

                v116 = v168;
                sub_270A88820();
                v117 = v174;
                if ((*v162)(v116, 1, v174) == 1)
                {
                  sub_270A4E644(v116, &qword_28083FBE0);
                  v161 = 0;
                }

                else
                {
                  v118 = *v50;
                  v119 = v165;
                  (*v50)(v165, v116, v117);
                  v120 = v164;
                  v118(v164, v119, v117);
                  v118(v167, v120, v117);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v113 = sub_270A6ECD0(0, v113[2] + 1, 1, v113);
                  }

                  v122 = v113[2];
                  v121 = v113[3];
                  if (v122 >= v121 >> 1)
                  {
                    v113 = sub_270A6ECD0(v121 > 1, v122 + 1, 1, v113);
                  }

                  v113[2] = v122 + 1;
                  v118(v113 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v122, v167, v174);
                  v36 = v115;
                  v110 = v173;
                }

                ++v111;
                v112 += 16;
                v109 = v114;
                if (v163 == v111)
                {
                  v61 = v175;
                  v59 = v110;
                  if (v161)
                  {
                    v50 = v172;
                    goto LABEL_100;
                  }

                  v50 = v172;
                  v37 = v176;
                  *&v176[*(v172 + 32)] = 0;
                  if (qword_28122C2A0 != -1)
                  {
                    swift_once();
                  }

                  v149 = sub_270A88890();
                  __swift_project_value_buffer(v149, qword_28122C340);

                  v150 = sub_270A88870();
                  v151 = sub_270A891A0();

                  if (os_log_type_enabled(v150, v151))
                  {
                    v152 = swift_slowAlloc();
                    v153 = swift_slowAlloc();
                    v163 = v36;
                    v154 = v153;
                    v179[0] = v153;
                    *v152 = 136446210;
                    v155 = MEMORY[0x2743AE590](v114, MEMORY[0x277D837D0]);
                    v156 = v59;
                    v158 = v157;

                    v159 = sub_270A4D698(v155, v158, v179);

                    *(v152 + 4) = v159;
                    _os_log_impl(&dword_270A33000, v150, v151, "Failed to map %{public}s", v152, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v154);
                    MEMORY[0x2743AF520](v154, -1, -1);
                    MEMORY[0x2743AF520](v152, -1, -1);

                    (*(v156 + 8))(v169, v163);
                    v37 = v176;
                  }

                  else
                  {

                    (*(v59 + 8))(v169, v36);
                  }

                  goto LABEL_82;
                }
              }

              goto LABEL_107;
            }

            v113 = MEMORY[0x277D84F90];
LABEL_100:
            v37 = v176;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FBC0);
            v148 = swift_allocObject();
            *(v148 + 16) = xmmword_270A8EE60;
            *(v148 + 32) = v113;
            (*(v59 + 8))(v169, v36);
            *&v37[*(v50 + 32)] = v148;
LABEL_82:
            sub_270A4E644(v61, &unk_28083FDE0);
            v58 = v171;
            sub_270A76490(v37, v171);
            v57 = 0;
            return (*(v170 + 56))(v58, v57, 1, v50);
          }
        }

        else
        {
LABEL_76:
        }

        if (qword_28122C2A0 != -1)
        {
          swift_once();
        }

        v123 = sub_270A88890();
        __swift_project_value_buffer(v123, qword_28122C340);
        v124 = sub_270A88870();
        v125 = sub_270A891A0();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          *v126 = 0;
          _os_log_impl(&dword_270A33000, v124, v125, "No selection persisted.", v126, 2u);
          MEMORY[0x2743AF520](v126, -1, -1);
        }

        (*(v59 + 8))(v169, v36);
        *&v37[*(v50 + 32)] = 0;
        goto LABEL_82;
      }
    }

LABEL_44:
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v88 = sub_270A88890();
    __swift_project_value_buffer(v88, qword_28122C340);
    v89 = sub_270A88870();
    v90 = sub_270A891A0();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_270A33000, v89, v90, "Outcome string is unavailable for previously stored ShownExperienceRecord.", v91, 2u);
      MEMORY[0x2743AF520](v91, -1, -1);
    }

    v86 = 0;
    v87 = 1;
    goto LABEL_49;
  }

  sub_270A4E644(v16, &unk_28083FDE0);
  v50 = v172;
  if (qword_28122C2A0 != -1)
  {
LABEL_108:
    swift_once();
  }

  v51 = sub_270A88890();
  __swift_project_value_buffer(v51, qword_28122C340);
  v52 = sub_270A88870();
  v53 = sub_270A891A0();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v175;
  if (v54)
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_270A33000, v52, v53, "Date is unavailable for previously stored ShownExperienceRecord.", v56, 2u);
    MEMORY[0x2743AF520](v56, -1, -1);
  }

  sub_270A4E644(v55, &unk_28083FDE0);
  v57 = 1;
  v58 = v171;
  return (*(v170 + 56))(v58, v57, 1, v50);
}

uint64_t sub_270A7C0D4()
{
  v1 = v0;
  v69 = sub_270A88840();
  v60 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s21ShownExperienceRecordVMa();
  v4 = v3[5];
  v5 = sub_270A88760();
  v73 = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v72);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v1 + v4, v5);
  sub_270A64E50(&v72, v71);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = v7;
  sub_270A710F8(v71, 1702125924, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v9 = v70;
  v10 = MEMORY[0x277D837D0];
  if (*v1)
  {
    v11 = *v1;
    v12 = [v11 stringRepresentation];
    v13 = sub_270A88FC0();
    v15 = v14;

    v73 = v10;
    *&v72 = v13;
    *(&v72 + 1) = v15;
    sub_270A64E50(&v72, v71);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v9;
    sub_270A710F8(v71, 0x646C697562, 0xE500000000000000, v16);

    v9 = v70;
  }

  v17 = v1 + v3[7];
  if ((v17[8] & 1) == 0)
  {
    v18 = *v17;
    if (v18)
    {
      if (v18 == 2)
      {
        v19 = 0xE800000000000000;
        v20 = 0x6465727265666564;
      }

      else
      {
        if (v18 != 1)
        {
          result = sub_270A89450();
          __break(1u);
          return result;
        }

        v19 = 0xE800000000000000;
        v20 = 0x6574656C706D6F63;
      }
    }

    else
    {
      v19 = 0xEA00000000006574;
      v20 = 0x656C706D6F636E69;
    }

    v73 = v10;
    *&v72 = v20;
    *(&v72 + 1) = v19;
    sub_270A64E50(&v72, v71);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v9;
    sub_270A710F8(v71, 0x656D6F6374756FLL, 0xE700000000000000, v21);
    v9 = v70;
  }

  v22 = (v1 + v3[6]);
  v23 = v22[1];
  if (v23)
  {
    v24 = *v22;
    v73 = v10;
    *&v72 = v24;
    *(&v72 + 1) = v23;
    sub_270A64E50(&v72, v71);

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v9;
    sub_270A710F8(v71, 0x656C646E7562, 0xE600000000000000, v25);
    v9 = v70;
  }

  v26 = *(v1 + v3[8]);
  if (v26)
  {
    v27 = *(v26 + 16);
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v57 = v9;
      *&v71[0] = MEMORY[0x277D84F90];
      sub_270A50388(0, v27, 0);
      v29 = 0;
      v64 = v26 + 32;
      v30 = *&v71[0];
      v66 = (v60 + 8);
      v67 = v60 + 16;
      v61 = 0x8000000270A90C20;
      v58 = 0x8000000270A908F0;
      v59 = v27;
      do
      {
        v31 = *(v64 + 8 * v29);
        if (v31)
        {
          v65 = v30;
          v32 = *(v31 + 16);
          if (v32)
          {
            v63 = v29;
            *&v72 = v28;

            sub_270A50388(0, v32, 0);
            v33 = v72;
            v34 = *(v60 + 80);
            v62 = v31;
            v35 = v31 + ((v34 + 32) & ~v34);
            v36 = *(v60 + 72);
            v37 = *(v60 + 16);
            do
            {
              v39 = v68;
              v38 = v69;
              v37(v68, v35, v69);
              v40 = sub_270A88830();
              v42 = v41;
              (*v66)(v39, v38);
              *&v72 = v33;
              v44 = *(v33 + 16);
              v43 = *(v33 + 24);
              if (v44 >= v43 >> 1)
              {
                sub_270A50388((v43 > 1), v44 + 1, 1);
                v33 = v72;
              }

              *(v33 + 16) = v44 + 1;
              v45 = v33 + 16 * v44;
              *(v45 + 32) = v40;
              *(v45 + 40) = v42;
              v35 += v36;
              --v32;
            }

            while (v32);
            v28 = MEMORY[0x277D84F90];
            v27 = v59;
            v29 = v63;
          }

          else
          {

            v33 = v28;
          }

          *&v72 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FBB0);
          sub_270A4E7E4(&qword_28083FDB0, &unk_28083FBB0);
          v48 = sub_270A88F90();
          v50 = v49;

          *&v72 = 0xD000000000000020;
          *(&v72 + 1) = v61;
          MEMORY[0x2743AE510](v48, v50);

          MEMORY[0x2743AE510](41, 0xE100000000000000);

          v47 = *(&v72 + 1);
          v46 = v72;
          v30 = v65;
        }

        else
        {
          v46 = 0xD000000000000015;
          v47 = v58;
        }

        *&v71[0] = v30;
        v52 = *(v30 + 16);
        v51 = *(v30 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_270A50388((v51 > 1), v52 + 1, 1);
          v30 = *&v71[0];
        }

        ++v29;
        *(v30 + 16) = v52 + 1;
        v53 = v30 + 16 * v52;
        *(v53 + 32) = v46;
        *(v53 + 40) = v47;
      }

      while (v29 != v27);
      v9 = v57;
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FBB0);
    *&v72 = v30;
    sub_270A64E50(&v72, v71);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v9;
    sub_270A710F8(v71, 0xD000000000000011, 0x8000000270A92000, v54);
    return v70;
  }

  return v9;
}

void sub_270A7C768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FDC0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = _s21ShownExperienceRecordVMa();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_270A7EB54(a1, v32);
  if ((swift_dynamicCast() & 1) != 0 && (v14 = sub_270A894A0(), , v14 <= 2))
  {
    sub_270A4D604(a2, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FCE0);
    if (swift_dynamicCast())
    {
      sub_270A7AC18(v31, v9);
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        sub_270A76490(v9, v13);
        sub_270A76558(v13, v7);
        (*(v11 + 56))(v7, 0, 1, v10);
        sub_270A69EB4(v7, v14);
        sub_270A7E718(v13);
        return;
      }

      sub_270A4E644(v9, &unk_28083FDC0);
    }

    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v15 = sub_270A88890();
    __swift_project_value_buffer(v15, qword_28122C340);
    sub_270A4D604(a2, v32);
    v16 = sub_270A88870();
    v17 = sub_270A891A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      sub_270A4D604(v32, &v31);
      sub_270A4DC8C(0, &qword_28083FBA0);
      if (swift_dynamicCast())
      {
        v20 = v30;
      }

      else
      {
        v20 = 0;
      }

      *(v18 + 4) = v20;
      *v19 = v20;
      __swift_destroy_boxed_opaque_existential_0(v32);
      _os_log_impl(&dword_270A33000, v16, v17, "Cannot create ShownExperienceRecord from '%{public}@'.", v18, 0xCu);
      sub_270A4E644(v19, &unk_28083FDD0);
      MEMORY[0x2743AF520](v19, -1, -1);
      v29 = v18;
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v21 = sub_270A88890();
    __swift_project_value_buffer(v21, qword_28122C340);
    sub_270A7EB54(a1, v32);
    v16 = sub_270A88870();
    v22 = sub_270A891A0();
    if (os_log_type_enabled(v16, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136446210;
      v25 = sub_270A89300();
      v27 = v26;
      sub_270A7EB00(v32);
      v28 = sub_270A4D698(v25, v27, &v31);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_270A33000, v16, v22, "Cannot create NotificationOnboardingExperience from '%{public}s'.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x2743AF520](v24, -1, -1);
      v29 = v23;
LABEL_15:
      MEMORY[0x2743AF520](v29, -1, -1);

      return;
    }

    sub_270A7EB00(v32);
  }
}

uint64_t sub_270A7CC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_270A88840();
  v31 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = a1 + 32;
  v14 = a2 + 32;
  v15 = (v31 + 8);
  v25 = a1 + 32;
  v26 = v11;
  v24 = a2 + 32;
  v27 = v31 + 16;
  while (v12 != v11)
  {
    result = *(v14 + 8 * v12);
    v32 = *(v13 + 8 * v12);
    if (v32)
    {
      if (!result)
      {
        return result;
      }

      v16 = *(v32 + 16);
      if (v16 != *(result + 16))
      {
        return 0;
      }

      if (v16 && v32 != result)
      {
        v17 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v28 = result + v17;
        v29 = v32 + v17;
        v30 = result;

        v18 = 0;
        while (v18 < *(v32 + 16))
        {
          v19 = *(v31 + 72) * v18;
          v20 = *(v31 + 16);
          result = v20(v10, v29 + v19, v4);
          if (v18 >= *(v30 + 16))
          {
            goto LABEL_24;
          }

          v20(v7, v28 + v19, v4);
          sub_270A7EC2C(&qword_28083F0E0, MEMORY[0x277D77F08]);
          v21 = sub_270A88FA0();
          v22 = *v15;
          (*v15)(v7, v4);
          result = (v22)(v10, v4);
          if ((v21 & 1) == 0)
          {

            return 0;
          }

          if (v16 == ++v18)
          {

            v13 = v25;
            v11 = v26;
            v14 = v24;
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
        break;
      }
    }

    else if (result)
    {
      return 0;
    }

LABEL_6:
    if (++v12 == v11)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_270A7CF54(uint64_t a1, uint64_t a2)
{
  v4 = sub_270A88840();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_270A7EC2C(&qword_28083F0E0, MEMORY[0x277D77F08]);
    v21 = sub_270A88FA0();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_270A7D168(void *a1, double a2, double a3)
{
  sub_270A89630();
  sub_270A89650();
  if (a1)
  {
    v6 = a1;
    sub_270A89240();
  }

  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x2743AEB10](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x2743AEB10](*&v8);
  v9 = sub_270A89680();

  return sub_270A7D47C(a1, v9, a2, a3);
}

unint64_t sub_270A7D244(uint64_t a1, uint64_t a2)
{
  sub_270A89630();
  sub_270A89030();
  v4 = sub_270A89680();

  return sub_270A7D5AC(a1, a2, v4);
}

unint64_t sub_270A7D2BC(uint64_t a1)
{
  sub_270A88840();
  sub_270A7EC2C(&unk_28083FB50, MEMORY[0x277D77F08]);
  v2 = sub_270A88F70();

  return sub_270A7D664(a1, v2);
}

unint64_t sub_270A7D354(unsigned __int8 a1)
{
  sub_270A89630();
  sub_270A89030();

  v2 = sub_270A89680();

  return sub_270A7D824(a1, v2);
}

unint64_t sub_270A7D438(uint64_t a1)
{
  v2 = sub_270A89310();

  return sub_270A7D9E4(a1, v2);
}

unint64_t sub_270A7D47C(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a2 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v12 = ~v6;
    do
    {
      v14 = *(v8 + 48) + 24 * v7;
      v15 = *v14;
      v17 = *(v14 + 8);
      v16 = *(v14 + 16);
      if (*v14)
      {
        if (!a1)
        {
          goto LABEL_8;
        }

        sub_270A4DC8C(0, &qword_28083F120);
        v18 = a1;
        v19 = v15;
        v20 = sub_270A89230();

        if ((v20 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (a1)
      {
        goto LABEL_8;
      }

      if (v17 == a3 && v16 == a4)
      {
        return v7;
      }

LABEL_8:
      v7 = (v7 + 1) & v12;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_270A7D5AC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_270A89570())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_270A7D664(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_270A88840();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_270A7EC2C(&qword_28083F0E0, MEMORY[0x277D77F08]);
      v15 = sub_270A88FA0();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_270A7D824(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0x7A6972616D6D7573;
        v8 = 0xED00006E6F697461;
        if (*(*(v2 + 48) + v4) != 1)
        {
          v7 = 0x697469726F697270;
          v8 = 0xEE006E6F6974617ALL;
        }

        v9 = a1;
        if (!a1)
        {
LABEL_16:
          v11 = 0x8000000270A90970;
          if (v7 != 0xD00000000000002FLL)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v7 = 0xD00000000000002FLL;
        v8 = 0x8000000270A90970;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x7A6972616D6D7573;
      }

      else
      {
        v10 = 0x697469726F697270;
      }

      if (v9 == 1)
      {
        v11 = 0xED00006E6F697461;
      }

      else
      {
        v11 = 0xEE006E6F6974617ALL;
      }

      if (v7 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_18:
      v12 = sub_270A89570();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_270A7D9E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_270A7EB54(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2743AE7D0](v9, a1);
      sub_270A7EB00(v9);
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

BOOL sub_270A7DAAC(void **a1, void **a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_270A4DC8C(0, &unk_28083FD10);
    v6 = v5;
    v7 = v4;
    v8 = sub_270A89230();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = _s21ShownExperienceRecordVMa();
  if (sub_270A88720())
  {
    v10 = v9[6];
    v11 = (a1 + v10);
    v12 = *(a1 + v10 + 8);
    v13 = (a2 + v10);
    v14 = v13[1];
    if (v12)
    {
      if (!v14)
      {
        return 0;
      }

      v15 = *v11 == *v13 && v12 == v14;
      if (!v15 && (sub_270A89570() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v14)
    {
      return 0;
    }

    v16 = v9[7];
    v17 = (a1 + v16);
    v18 = *(a1 + v16 + 8);
    v19 = (a2 + v16);
    v20 = *(a2 + v16 + 8);
    if (v18)
    {
      if (!v20)
      {
        return 0;
      }
    }

    else
    {
      if (*v17 != *v19)
      {
        LOBYTE(v20) = 1;
      }

      if (v20)
      {
        return 0;
      }
    }

    v21 = v9[8];
    v22 = *(a1 + v21);
    v23 = *(a2 + v21);
    if (v22)
    {
      if (!v23)
      {
        return 0;
      }

      v24 = sub_270A7CC74(v22, v23);

      return (v24 & 1) != 0;
    }

    if (!v23)
    {
      return 1;
    }
  }

  return 0;
}

id sub_270A7DC1C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v1 = sub_270A88FB0();

  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v3 = sub_270A88890();
    __swift_project_value_buffer(v3, qword_28122C340);
    v4 = sub_270A88870();
    v5 = sub_270A891A0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      v8 = qword_28083FC80;
      v9 = off_28083FC88;

      v10 = sub_270A4D698(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_270A33000, v4, v5, "Cannot access defaults with suite domain '%{public}s'", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x2743AF520](v7, -1, -1);
      MEMORY[0x2743AF520](v6, -1, -1);
    }

    return 0;
  }

  return v2;
}

uint64_t sub_270A7E4C0()
{
  v0 = sub_270A894A0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_270A7E50C(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v15 = MEMORY[0x277D84F98];
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2;
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_270A4E644(v13, &qword_28083FDB8))
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    sub_270A7EB54(*(a1 + 48) + 40 * v12, v13);
    sub_270A4D604(*(a1 + 56) + 32 * v12, v14);
    sub_270A7C768(v13, v14);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v15;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s21ShownExperienceRecordVMa()
{
  result = qword_28083FD30;
  if (!qword_28083FD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_270A7E6A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FD00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270A7E718(uint64_t a1)
{
  v2 = _s21ShownExperienceRecordVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_270A7E7AC()
{
  sub_270A7E878();
  if (v0 <= 0x3F)
  {
    sub_270A88760();
    if (v1 <= 0x3F)
    {
      sub_270A654C4();
      if (v2 <= 0x3F)
      {
        sub_270A7E8E0();
        if (v3 <= 0x3F)
        {
          sub_270A7E938();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_270A7E878()
{
  if (!qword_28083FD40)
  {
    sub_270A4DC8C(255, &unk_28083FD10);
    v0 = sub_270A89250();
    if (!v1)
    {
      atomic_store(v0, &qword_28083FD40);
    }
  }
}

void sub_270A7E8E0()
{
  if (!qword_28083FD50)
  {
    type metadata accessor for NotificationOnboardingOutcome(255);
    v0 = sub_270A89250();
    if (!v1)
    {
      atomic_store(v0, &qword_28083FD50);
    }
  }
}

void sub_270A7E938()
{
  if (!qword_28083FD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28083FD60);
    v0 = sub_270A89250();
    if (!v1)
    {
      atomic_store(v0, &qword_28083FD58);
    }
  }
}

unint64_t sub_270A7E9A0()
{
  result = qword_28083FD70;
  if (!qword_28083FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083FD70);
  }

  return result;
}

uint64_t sub_270A7E9F4()
{
  v0 = sub_270A7DC1C();
  if (!v0)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_9:
    sub_270A4E644(&v7, &qword_28083FCB0);
    return 0;
  }

  v1 = v0;
  v2 = sub_270A88FB0();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_270A89270();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_9;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

void sub_270A7EBB0()
{
  v1 = *(sub_270A88760() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_270A77228(v2, v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_270A7EC2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_270A7ECD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FDE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_270A7ED48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FE40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_270A4E700(a3, v22 - v9, &unk_28083FE40);
  v11 = sub_270A89150();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_270A4E644(v10, &unk_28083FE40);
  }

  else
  {
    sub_270A89140();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_270A89110();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_270A89020() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_270A4E644(a3, &unk_28083FE40);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_270A4E644(a3, &unk_28083FE40);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_270A7EFF4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_270A80088(a1 & 1, a3, a4, a5);
  }
}

uint64_t sub_270A7F07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FE40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_270A4E700(a3, v25 - v10, &unk_28083FE40);
  v12 = sub_270A89150();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_270A4E644(v11, &unk_28083FE40);
  }

  else
  {
    sub_270A89140();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_270A89110();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_270A89020() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_270A4E644(a3, &unk_28083FE40);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_270A4E644(a3, &unk_28083FE40);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_270A7F37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FE40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_270A4E700(a3, v25 - v10, &unk_28083FE40);
  v12 = sub_270A89150();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_270A4E644(v11, &unk_28083FE40);
  }

  else
  {
    sub_270A89140();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_270A89110();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_270A89020() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FE78);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_270A4E644(a3, &unk_28083FE40);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_270A4E644(a3, &unk_28083FE40);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FE78);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_270A7F690(uint64_t a1, uint64_t a2)
{
  v3 = qword_28083F890;
  v4 = *(v2 + qword_28083F890);
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v2;
  v8 = v4;
  sub_270A88BB0();

  sub_270A4DFC0(v25);

  v9 = *(v5 + v3);
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  sub_270A88BB0();

  sub_270A4DFC0(v25);

  v11 = *(v5 + v3);
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  sub_270A88BB0();

  sub_270A4DFC0(v25);

  v13 = *(v5 + v3);
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v13;
  sub_270A88BB0();

  v15 = sub_270A8771C();
  v16 = *(v15 + 32);
  v17 = v16(&type metadata for NotificationSummarizationOnboardingPriorityExplanationView, v15);
  sub_270A4DFC0(v25);

  if (v17)
  {
    v18 = &v17[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__priorityOutcome];
    if ((v17[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__priorityOutcome + 8] & 1) != 0 || *v18 != a1)
    {
      KeyPath = swift_getKeyPath();
      v24 = a2;
      v23[1] = v23;
      MEMORY[0x28223BE20](KeyPath);
      v25 = v17;
      sub_270A875E0(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
      sub_270A88780();

      a2 = v24;
    }

    else
    {
      v18[8] = 0;
    }
  }

  v20 = *(v5 + v3);
  if (v20)
  {
    v21 = v20;
    sub_270A88BB0();

    v22 = v16(&type metadata for NotificationSummarizationOnboardingPriorityExplanationView, v15);
    sub_270A4DFC0(v25);

    [v22 saveWithOutcome_];

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_270A7F99C(uint64_t a1, uint64_t a2)
{
  v3 = qword_28083F890;
  v4 = *(v2 + qword_28083F890);
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v2;
  v8 = v4;
  sub_270A88BB0();

  sub_270A4DFC0(v23);

  v9 = *(v5 + v3);
  if (!v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  sub_270A88BB0();

  v11 = sub_270A870B8();
  v12 = *(v11 + 32);
  v13 = v12(&type metadata for NotificationSummarizationOnboardingSummaryExplanationView, v11);
  sub_270A4DFC0(v23);

  if (v13)
  {
    v14 = &v13[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome];
    if ((v13[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome + 8] & 1) != 0 || *v14 != 2 * (a1 == 2))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v23 = v13;
      sub_270A875E0(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
      sub_270A88780();
    }

    else
    {
      v14[8] = 0;
    }
  }

  v16 = *(v5 + v3);
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = v16;
  sub_270A88BB0();

  sub_270A4DFC0(v23);

  v18 = *(v5 + v3);
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  sub_270A88BB0();

  sub_270A4DFC0(v23);

  v20 = *(v5 + v3);
  if (v20)
  {
    v21 = v20;
    sub_270A88BB0();

    v22 = v12(&type metadata for NotificationSummarizationOnboardingSummaryExplanationView, v11);
    sub_270A4DFC0(v23);

    [v22 saveWithOutcome_];

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_270A7FC84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a1;
  v5 = type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v40 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v40 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v40 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v40 - v18;
  v20 = qword_28083F890;
  v21 = *(v2 + qword_28083F890);
  if (!v21)
  {
    __break(1u);
    goto LABEL_13;
  }

  v22 = v21;
  sub_270A88BB0();

  sub_270A87580(v19, type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView);
  v23 = *(v3 + v20);
  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v43 = v8;
  v44 = v11;
  v24 = v23;
  sub_270A88BB0();

  sub_270A87580(v17, type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView);
  v25 = *(v3 + v20);
  if (!v25)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = v25;
  sub_270A88BB0();

  v27 = sub_270A875E0(&qword_28083FE88, type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView);
  v28 = *(v27 + 32);
  v29 = v28(v5, v27);
  sub_270A87580(v14, type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView);
  if (v29)
  {
    v30 = &v29[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome];
    v31 = v42;
    if ((v29[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome + 8] & 1) != 0 || *v30 != v42)
    {
      KeyPath = swift_getKeyPath();
      v40[1] = v40;
      MEMORY[0x28223BE20](KeyPath);
      v41 = v5;
      v40[-4] = v29;
      v40[-3] = v31;
      LOBYTE(v40[-2]) = 0;
      v45 = v29;
      sub_270A875E0(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
      sub_270A88780();
      v5 = v41;
    }

    else
    {
      v30[8] = 0;
    }
  }

  v33 = *(v3 + v20);
  if (!v33)
  {
    goto LABEL_15;
  }

  v34 = v33;
  v35 = v44;
  sub_270A88BB0();

  sub_270A87580(v35, type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView);
  v36 = *(v3 + v20);
  if (v36)
  {
    v37 = v36;
    v38 = v43;
    sub_270A88BB0();

    v39 = v28(v5, v27);
    sub_270A87580(v38, type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView);
    [v39 saveWithOutcome_];

    return;
  }

LABEL_16:
  __break(1u);
}

id sub_270A80088(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FE40);
  result = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = qword_28083F8B8;
  v12 = *(v4 + qword_28083F8B8);
  if (a1)
  {
    if (!v12)
    {
      v13 = sub_270A89150();
      (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_270A89130();

      v15 = v4;
      v16 = sub_270A89120();
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D85700];
      v17[2] = v16;
      v17[3] = v18;
      v17[4] = v14;

      *(v15 + v11) = sub_270A7ED48(0, 0, v10, a4, v17);
    }
  }

  else
  {
    if (v12)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083EF20);
      sub_270A89160();
    }

    *(v4 + v11) = 0;

    v19 = *(v4 + qword_28083F8B0);

    return [v19 stopAnimation];
  }

  return result;
}

uint64_t sub_270A802A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_270A89430();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_270A89130();
  v4[9] = sub_270A89120();
  v7 = sub_270A89110();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x2822009F8](sub_270A80398, v7, v6);
}

uint64_t sub_270A80398()
{
  sub_270A895D0();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_270A80464;

  return sub_270A831C0(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_270A80464()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_270A879A8;
  }

  else
  {
    v8 = sub_270A879A4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_270A805FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_270A89430();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_270A89130();
  v4[9] = sub_270A89120();
  v7 = sub_270A89110();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x2822009F8](sub_270A806F0, v7, v6);
}

uint64_t sub_270A806F0()
{
  sub_270A895D0();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_270A807BC;

  return sub_270A831C0(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_270A807BC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_270A80A50;
  }

  else
  {
    v8 = sub_270A80954;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_270A80954()
{
  v1 = *(v0 + 104);

  sub_270A89170();
  if (!v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = qword_28083F8B0;
      v4 = Strong;
      [*(Strong + qword_28083F8B0) stopAnimation];
      v5 = *&v4[v3];
      [v5 startAnimation];
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_270A80A50()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_270A80ABC()
{
  v1 = v0;
  v2 = sub_270A886D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v42 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  v12 = [v1 headerView];
  [v12 setAllowFullWidthIcon_];

  v13 = *&v1[qword_28083F888];
  if (v13)
  {
    v43 = v13;
    v14 = [v1 traitCollection];
    [v14 userInterfaceStyle];

    if (qword_28083EE00 != -1)
    {
      swift_once();
    }

    v15 = qword_280842BE0;
    v16 = sub_270A88FB0();
    v17 = sub_270A88FB0();
    v18 = [v15 URLForResource:v16 withExtension:v17];

    if (v18)
    {
      sub_270A886C0();

      (*(v3 + 32))(v11, v9, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F100);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_270A8F2F0;
      v20 = objc_allocWithZone(MEMORY[0x277D37608]);
      v21 = sub_270A88FB0();
      v22 = [v20 initWithStateName:v21 transitionDuration:0.01 transitionSpeed:1.0];

      *(v19 + 32) = v22;
      v23 = objc_allocWithZone(MEMORY[0x277D37608]);
      v24 = sub_270A88FB0();
      v25 = [v23 initWithStateName:v24 transitionDuration:2.0 transitionSpeed:1.0];

      *(v19 + 40) = v25;
      (*(v3 + 16))(v6, v11, v2);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x2743AE840](0, v19);
        }

        else
        {
          v26 = *(v19 + 32);
        }

        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v36 = objc_allocWithZone(MEMORY[0x277D37600]);
      v37 = sub_270A886B0();
      sub_270A4DC8C(0, &unk_28083FE60);
      v38 = sub_270A890B0();

      v39 = [v36 initWithUrlToPackage:v37 animationView:v43 animatedStates:v38 startAtFirstState:v27];

      v40 = *(v3 + 8);
      v40(v6, v2);
      v40(v11, v2);
      v41 = *&v1[qword_28083F8B0];
      *&v1[qword_28083F8B0] = v39;

      return;
    }

    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v31 = sub_270A88890();
    __swift_project_value_buffer(v31, qword_28122C340);
    v32 = sub_270A88870();
    v33 = sub_270A891A0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_270A33000, v32, v33, "Can't load icon. micaAsset is nil.", v34, 2u);
      MEMORY[0x2743AF520](v34, -1, -1);
    }
  }

  else
  {
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v28 = sub_270A88890();
    __swift_project_value_buffer(v28, qword_28122C340);
    v43 = sub_270A88870();
    v29 = sub_270A891A0();
    if (os_log_type_enabled(v43, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_270A33000, v43, v29, "Can't load icon. animationView is nil.", v30, 2u);
      MEMORY[0x2743AF520](v30, -1, -1);
    }
  }

  v35 = v43;
}

uint64_t sub_270A810F0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_270A875E0(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_270A81228@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_270A875E0(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();

  v7 = (v5 + *a2);
  v8 = *v7;
  LOBYTE(v7) = *(v7 + 8);
  *a3 = v8;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_270A81358@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_270A875E0(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();

  v4 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__selectedCategories;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t UNNotificationOnboardingOutcome.init(stringValue:)()
{
  v0 = sub_270A894A0();

  if (v0 == 2)
  {
    return 2;
  }

  else
  {
    return v0 == 1;
  }
}

uint64_t UNNotificationOnboardingOutcome.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x656C706D6F636E69;
    case 2:
      return 0x6465727265666564;
    case 1:
      return 0x6574656C706D6F63;
  }

  result = sub_270A89450();
  __break(1u);
  return result;
}

uint64_t sub_270A81720()
{
  type metadata accessor for NotificationSummarizationOnboardingViewModel();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  swift_getKeyPath();
  v44 = v2;
  sub_270A875E0(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  swift_unknownObjectRetain();
  sub_270A88790();

  if (v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__showsSummaryOnboarding] == 1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v4 + 24) = v2;
    swift_getKeyPath();
    v44 = v2;
    swift_unknownObjectRetain_n();
    sub_270A88790();

    if (v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__showsPriorityOnboarding] == 1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = 0xD00000000000002ALL;
      *(v5 + 24) = 0x8000000270A92300;

      v6 = sub_270A879B0;
      v7 = sub_270A87058;
      v8 = v4;
    }

    else
    {
      v5 = swift_allocObject();
      v8 = 0;
      *(v5 + 16) = 0xD00000000000002ALL;
      *(v5 + 24) = 0x8000000270A92300;
      v6 = sub_270A87060;
      v7 = 1;
    }

    v36 = v8;
    v37 = v6;
    v38 = v7;
    v43[0] = v7;
    v43[1] = v8;
    v43[2] = 0;
    v43[3] = v6;
    v43[4] = v5;
    v10 = swift_allocObject();
    *(v10 + 16) = 0xD00000000000002ELL;
    *(v10 + 24) = 0x8000000270A92330;
    v39[0] = sub_270A87030;
    v39[1] = v3;
    v40 = 1;
    v41 = sub_270A879B0;
    v42 = v10;
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3A8);
    sub_270A88E30();
    v34 = v45;
    v35 = v44;
    if (qword_28083EE00 != -1)
    {
      swift_once();
    }

    v11 = qword_280842BE0;
    v12 = sub_270A88FB0();
    v13 = sub_270A88FB0();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    v15 = sub_270A88FC0();
    v32 = v16;
    v33 = v15;

    v17 = qword_280842BE0;
    v18 = sub_270A88FB0();
    v19 = sub_270A88FB0();
    v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

    v21 = sub_270A88FC0();
    v23 = v22;

    swift_getKeyPath();
    v44 = v2;
    sub_270A88790();

    if (v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__supportsBackButton])
    {
      v24 = "BOARDING_CLOSE_TEXT";
    }

    else
    {
      v24 = "BOARDING_INTRO_DETAIL_TEXT";
    }

    if (v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__supportsBackButton])
    {
      v25 = 0xD000000000000022;
    }

    else
    {
      v25 = 0xD000000000000023;
    }

    if (v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__supportsBackButton])
    {
      v26 = 0;
    }

    else
    {
      v26 = 3;
    }

    v27 = v24 | 0x8000000000000000;
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = v27;
    v44 = v26;
    v45 = 0;
    v46 = 0;
    v47 = sub_270A879B0;
    v48 = v28;
    v29 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FE10));
    sub_270A842CC(0, 0, v35, v34, v33, v32, v21, v23, v39, v43, &v44);
    v9 = v30;
    sub_270A69B50(v26);

    sub_270A69B10(v38, v36, 0, v37);

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = sub_270A86C28(v2);
    swift_unknownObjectRelease();
  }

  return v9;
}

uint64_t sub_270A81CF8(void *a1)
{
  v3 = type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  *&v45 = a1;
  sub_270A875E0(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();

  if (*(a1 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__showsPriorityOnboarding) == 1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = a1;
    swift_retain_n();
    v7 = a1;
    v38 = 1;
    v36 = sub_270A879AC;
    v37 = sub_270A879AC;
  }

  else
  {
    v38 = 0;
    v6 = 0;
    v37 = 1;
    v36 = 2;
  }

  v39 = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000048;
  *(v8 + 24) = 0x8000000270A91CF0;
  *(v5 + *(v3 + 20)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3C0);
  swift_storeEnumTagMultiPayload();
  *v5 = 0;
  v5[1] = 0;
  v9 = *(v3 + 24);
  v44[0] = a1;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3A8);
  sub_270A88E30();
  *(v5 + v9) = v45;
  if (qword_28083EE00 != -1)
  {
    swift_once();
  }

  v10 = qword_280842BE0;
  v11 = sub_270A88FB0();
  v12 = sub_270A88FB0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  v34 = sub_270A88FC0();
  v33 = v14;

  v15 = qword_280842BE0;
  v16 = sub_270A88FB0();
  v17 = sub_270A88FB0();
  v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

  v19 = sub_270A88FC0();
  v21 = v20;

  v23 = v36;
  v22 = v37;
  *&v40 = v36;
  *(&v40 + 1) = v6;
  v41 = v38;
  v42 = sub_270A822D4;
  v43 = 0;
  v44[0] = v37;
  v44[1] = v6;
  v44[2] = 0;
  v44[3] = sub_270A879B0;
  v44[4] = v8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0xD000000000000022;
  *(v24 + 24) = 0x8000000270A923F0;
  v46 = 0;
  v45 = 0uLL;
  v47 = sub_270A879B0;
  v48 = v24;
  v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FE70));
  sub_270A69700(v22);

  sub_270A84A90(v5, v34, v33, v19, v21, &v40, v44, &v45);
  v27 = v26;
  sub_270A69B50(0);

  sub_270A69B50(v22);

  v28 = sub_270A69B50(v23);
  v29 = MEMORY[0x28223BE20](v28);
  *(&v32 - 2) = v35;
  MEMORY[0x28223BE20](v29);
  *(&v32 - 4) = v39;
  *(&v32 - 3) = v30;
  *(&v32 - 2) = v27;
  sub_270A88770();
  sub_270A69B50(v22);
  sub_270A69B50(v23);
  sub_270A69B50(v22);

  return v27;
}

unint64_t sub_270A822D4(void *a1)
{
  v2 = 0xD000000000000043;
  v3 = sub_270A88840();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getKeyPath();
    v7 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel___observationRegistrar;
    v16 = a1;
    sub_270A875E0(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
    v8 = a1;
    v14[1] = v7;
    sub_270A88790();

    v9 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__selectedCategories;
    swift_beginAccess();
    if (*(*&v8[v9] + 16))
    {
      swift_getKeyPath();
      v15 = v8;
      sub_270A88790();

      v10 = *&v8[v9];
      (*(v4 + 104))(v6, *MEMORY[0x277D77EF8], v3);

      v11 = sub_270A6A0E0(v6, v10);

      (*(v4 + 8))(v6, v3);
      if (v11)
      {

        return 0xD000000000000048;
      }

      else
      {
        swift_getKeyPath();
        v15 = v8;
        sub_270A88790();

        v12 = *(*&v8[v9] + 16);

        if (v12 == 3)
        {
          return 0xD000000000000047;
        }

        else
        {
          return 0xD000000000000048;
        }
      }
    }

    else
    {

      return 0xD000000000000043;
    }
  }

  return v2;
}

uint64_t sub_270A825A8()
{
  swift_getKeyPath();
  sub_270A875E0(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();
}

uint64_t (*sub_270A82644(uint64_t a1, void *a2, void *a3))()
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a2;
  v8 = a3;
  return sub_270A871D4;
}

uint64_t sub_270A826B8(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FE40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_270A89150();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v12 = a2;
  v13 = a3;
  sub_270A7F07C(0, 0, v8, &unk_270A8F560, v11);

  v10(v8, 1, 1, v9);
  sub_270A89130();
  v14 = v12;
  v15 = v13;
  v16 = sub_270A89120();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  v17[5] = v14;
  sub_270A7F37C(0, 0, v8, &unk_270A8F570, v17);
}

uint64_t sub_270A82880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_270A828A4, 0, 0);
}

uint64_t sub_270A828A4()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = swift_task_alloc();
  v4 = *(v0 + 24);
  *(v2 + 16) = v4;
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  sub_270A88770();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_270A82980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_270A89130();
  v5[8] = sub_270A89120();
  v7 = sub_270A89110();

  return MEMORY[0x2822009F8](sub_270A82A1C, v7, v6);
}

uint64_t sub_270A82A1C()
{
  v1 = *(v0 + 48);

  v2 = *(v1 + qword_28083F880);
  if (v2 && ([*(v1 + qword_28083F880) respondsToSelector_] & 1) != 0)
  {
    v3 = *(v0 + 56);
    swift_getKeyPath();
    *(v0 + 16) = v3;
    sub_270A875E0(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
    swift_unknownObjectRetain();
    sub_270A88790();

    v4 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__selectedCategories;
    swift_beginAccess();
    v5 = *(*(v3 + v4) + 16);
    sub_270A6B06C();
    if (v6)
    {
      v7 = sub_270A88FB0();
    }

    else
    {
      v7 = 0;
    }

    [v2 onboardingController:*(v0 + 48) canProceed:v5 > 0 nextButtonText:v7];

    swift_unknownObjectRelease();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  **(v0 + 40) = v8;
  v9 = *(v0 + 8);

  return v9();
}

UNNotificationOnboarding __swiftcall UNNotificationOnboarding.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_270A82D34()
{
  if (qword_28083EE00 != -1)
  {
    swift_once();
  }

  v0 = qword_280842BE0;
  v1 = sub_270A88FB0();
  v2 = sub_270A88FB0();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_270A88FC0();
  return v4;
}

uint64_t UNNotificationOnboardingExperience.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x7A6972616D6D7573;
  }

  result = sub_270A89450();
  __break(1u);
  return result;
}

uint64_t sub_270A82EAC()
{
  if (!*v0)
  {
    return 0x7A6972616D6D7573;
  }

  result = sub_270A89450();
  __break(1u);
  return result;
}

uint64_t UNNotificationOnboardingClient.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x64647542696E696DLL;
    case 2:
      return 0xD000000000000014;
    case 1:
      return 0x73676E6974746573;
  }

  result = sub_270A89450();
  __break(1u);
  return result;
}

uint64_t sub_270A8300C()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x656C706D6F636E69;
  }

  if (v1 == 2)
  {
    return 0x6465727265666564;
  }

  if (v1 == 1)
  {
    return 0x6574656C706D6F63;
  }

  result = sub_270A89450();
  __break(1u);
  return result;
}

uint64_t sub_270A830F8(uint64_t a1)
{
  v2 = sub_270A88910();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_270A88A10();
}

uint64_t sub_270A831C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_270A89420();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_270A832C0, 0, 0);
}

uint64_t sub_270A832C0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_270A89430();
  v5 = sub_270A875E0(&qword_28083FE50, MEMORY[0x277D85928]);
  sub_270A895B0();
  sub_270A875E0(&qword_28083FE58, MEMORY[0x277D858F8]);
  sub_270A89440();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_270A83450;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_270A83450()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (!v0)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_270A8360C, 0, 0);
}

uint64_t sub_270A8360C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_270A83678(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_270A83770;

  return v6(a1);
}

uint64_t sub_270A83770()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_270A83868(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_270A8395C;

  return v5(v2 + 32);
}

uint64_t sub_270A8395C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

void sub_270A83A70(__int128 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v88 = a5;
  v84 = a4;
  v86 = a2;
  v87 = a3;
  v13 = *a6;
  v14 = a6[1];
  v15 = *(a6 + 16);
  v16 = a6[3];
  v17 = a6[4];
  v18 = sub_270A88C00();
  MEMORY[0x28223BE20](v18 - 8);
  v85 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8[qword_28083F880] = 0;
  *&v8[qword_28083F888] = 0;
  *&v8[qword_28083F890] = 0;
  v20 = &v8[qword_28083F898];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = &v8[qword_28083F8A0];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &v8[qword_28083F8A8];
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *&v8[qword_28083F8B0] = 0;
  *&v8[qword_28083F8B8] = 0;
  v23 = *a6;
  v96 = *(a6 + 16);
  v95 = v23;
  *v20 = v13;
  *(v20 + 1) = v14;
  *(v20 + 2) = v15;
  *(v20 + 3) = v16;
  v24 = v88;
  *(v20 + 4) = v17;
  v25 = *(a7 + 16);
  *v21 = *a7;
  *(v21 + 1) = v25;
  *(v21 + 4) = *(a7 + 32);
  *(v22 + 4) = *(a8 + 32);
  v26 = *(a8 + 16);
  *v22 = *a8;
  *(v22 + 1) = v26;

  sub_270A4E700(a8, v90, &unk_28083FA00);
  sub_270A4E700(a7, v90, &unk_28083FA00);
  sub_270A69640(&v95, v90);
  v27 = sub_270A88FB0();
  if (v24)
  {

    v28 = sub_270A88FB0();
  }

  else
  {
    v28 = 0;
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FE90);
  v91.receiver = v8;
  v91.super_class = v29;
  v30 = objc_msgSendSuper2(&v91, sel_initWithTitle_detailText_symbolName_contentLayout_, v27, v28, 0, 3);

  v32 = *a1;
  v31 = *(a1 + 1);
  v33 = *a1;
  v94 = a1[1];
  v34 = *(a1 + 4);
  v92 = *(a1 + 5);
  v93 = v34;
  v35 = a1[1];
  v90[0] = v33;
  v90[1] = v35;
  v90[2] = a1[2];
  v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FE98));
  v37 = v30;
  sub_270A87068(v32);
  sub_270A4E700(&v94, v89, &qword_28083EF40);
  sub_270A4E700(&v93, v89, &qword_28083F3A8);
  sub_270A4E700(&v92, v89, &qword_28083FEA8);
  v38 = sub_270A88B90();
  v39 = qword_28083F890;
  v40 = *&v37[qword_28083F890];
  *&v37[qword_28083F890] = v38;

  v41 = v37;
  v42 = [v41 headerView];
  [v42 setTitleStyle_];

  v43 = [v41 headerView];
  v44 = [v43 animationView];

  v45 = *&v41[qword_28083F888];
  *&v41[qword_28083F888] = v44;

  v46 = *&v37[v39];
  if (!v46)
  {
    __break(1u);
    goto LABEL_14;
  }

  v47 = [v46 view];
  if (!v47)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v48 = v47;
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  [v48 invalidateIntrinsicContentSize];
  v49 = *&v37[v39];
  if (!v49)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v86 = v31;
  v50 = v49;
  sub_270A88BF0();
  sub_270A88B80();

  sub_270A80ABC();
  v51 = *&v37[v39];
  if (!v51)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v52 = v41;
  [v52 addChildViewController_];
  v53 = [v52 contentView];
  [v53 addSubview_];

  v54 = *&v37[v39];
  if (!v54)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v55 = v54;
  [v55 didMoveToParentViewController_];

  v56 = *&v37[v39];
  if (!v56)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v85 = v32;
  v57 = [v56 view];
  if (!v57)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v58 = v57;
  [v57 setTranslatesAutoresizingMaskIntoConstraints_];

  v84 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F100);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_270A8F300;
  v60 = [v48 leadingAnchor];
  v61 = [v52 contentView];
  v62 = [v61 leadingAnchor];

  v63 = [v60 constraintEqualToAnchor_];
  *(v59 + 32) = v63;
  v64 = [v48 trailingAnchor];
  v65 = [v52 contentView];
  v66 = [v65 trailingAnchor];

  v67 = [v64 constraintEqualToAnchor_];
  *(v59 + 40) = v67;
  v68 = [v48 topAnchor];
  v69 = [v52 contentView];
  v70 = [v69 topAnchor];

  v71 = [v68 constraintEqualToAnchor_];
  *(v59 + 48) = v71;
  v72 = [v48 bottomAnchor];
  v73 = [v52 contentView];

  v74 = [v73 bottomAnchor];
  v75 = [v72 constraintEqualToAnchor_];

  *(v59 + 56) = v75;
  sub_270A4DC8C(0, &qword_28083FE30);
  v76 = sub_270A890B0();

  [v84 activateConstraints_];

  v77 = *&v37[v39];
  if (v77)
  {
    v78 = v77;
    sub_270A4DFC0(v85);
    sub_270A4E644(&v94, &qword_28083EF40);
    sub_270A4E644(&v93, &qword_28083F3A8);
    sub_270A4E644(&v92, &qword_28083FEA8);

    v79 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v80 = sub_270A88BA0();
    v82 = *v81;
    *v81 = sub_270A876DC;
    v81[1] = v79;
    sub_270A4DFC0(v82);
    v80(v90, 0);

    sub_270A7F690(0, 0);

    return;
  }

LABEL_20:
  __break(1u);
}

void sub_270A842CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v87 = a4;
  v88 = a8;
  v81[1] = a7;
  v83 = a5;
  v84 = a3;
  v85 = a1;
  v86 = a2;
  v14 = *a9;
  v13 = a9[1];
  v15 = *(a9 + 16);
  v17 = a9[3];
  v16 = a9[4];
  v18 = sub_270A88C00();
  MEMORY[0x28223BE20](v18 - 8);
  v82 = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11[qword_28083F880] = 0;
  *&v11[qword_28083F888] = 0;
  *&v11[qword_28083F890] = 0;
  v20 = &v11[qword_28083F898];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = &v11[qword_28083F8A0];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &v11[qword_28083F8A8];
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *&v11[qword_28083F8B0] = 0;
  *&v11[qword_28083F8B8] = 0;
  v23 = *a9;
  v92 = *(a9 + 16);
  v91 = v23;
  *v20 = v14;
  *(v20 + 1) = v13;
  *(v20 + 2) = v15;
  *(v20 + 3) = v17;
  *(v20 + 4) = v16;
  v24 = *(a10 + 16);
  *v21 = *a10;
  *(v21 + 1) = v24;
  *(v21 + 4) = *(a10 + 32);
  *(v22 + 4) = *(a11 + 32);
  v25 = *(a11 + 16);
  *v22 = *a11;
  *(v22 + 1) = v25;

  sub_270A4E700(a11, v90, &unk_28083FA00);
  v26 = v88;
  sub_270A4E700(a10, v90, &unk_28083FA00);
  sub_270A69640(&v91, v90);
  v83 = a6;
  v27 = sub_270A88FB0();
  if (v26)
  {

    v28 = sub_270A88FB0();
  }

  else
  {
    v28 = 0;
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FE10);
  v89.receiver = v11;
  v89.super_class = v29;
  v30 = objc_msgSendSuper2(&v89, sel_initWithTitle_detailText_symbolName_contentLayout_, v27, v28, 0, 3);

  v31 = v85;
  v90[0] = v85;
  v90[1] = v86;
  v32 = v84;
  v90[2] = v84;
  v90[3] = v87;
  v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FE20));
  v34 = v30;
  sub_270A87068(v31);

  v35 = v32;
  v36 = sub_270A88B90();
  v37 = qword_28083F890;
  v38 = *&v34[qword_28083F890];
  *&v34[qword_28083F890] = v36;

  v39 = v34;
  v40 = [v39 headerView];
  [v40 setTitleStyle_];

  v41 = [v39 headerView];
  v42 = [v41 animationView];

  v43 = *&v39[qword_28083F888];
  *&v39[qword_28083F888] = v42;

  v44 = *&v34[v37];
  if (!v44)
  {
    __break(1u);
    goto LABEL_14;
  }

  v45 = [v44 view];
  if (!v45)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v46 = v45;
  [v45 setTranslatesAutoresizingMaskIntoConstraints_];
  [v46 invalidateIntrinsicContentSize];
  v47 = *&v34[v37];
  if (!v47)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v84 = v35;
  v48 = v47;
  sub_270A88BF0();
  sub_270A88B80();

  sub_270A80ABC();
  v49 = *&v34[v37];
  if (!v49)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v50 = v39;
  [v50 addChildViewController_];
  v51 = [v50 contentView];
  [v51 addSubview_];

  v52 = *&v34[v37];
  if (!v52)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v53 = v52;
  [v53 didMoveToParentViewController_];

  v54 = *&v34[v37];
  if (!v54)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v55 = [v54 view];
  if (!v55)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v56 = v55;
  [v55 setTranslatesAutoresizingMaskIntoConstraints_];

  v82 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F100);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_270A8F300;
  v58 = [v46 leadingAnchor];
  v59 = [v50 contentView];
  v60 = [v59 leadingAnchor];

  v61 = [v58 constraintEqualToAnchor_];
  *(v57 + 32) = v61;
  v62 = [v46 trailingAnchor];
  v63 = [v50 contentView];
  v64 = [v63 trailingAnchor];

  v65 = [v62 constraintEqualToAnchor_];
  *(v57 + 40) = v65;
  v66 = [v46 topAnchor];
  v67 = [v50 contentView];
  v68 = [v67 topAnchor];

  v69 = [v66 constraintEqualToAnchor_];
  *(v57 + 48) = v69;
  v70 = [v46 bottomAnchor];
  v71 = [v50 contentView];

  v72 = [v71 bottomAnchor];
  v73 = [v70 constraintEqualToAnchor_];

  *(v57 + 56) = v73;
  sub_270A4DC8C(0, &qword_28083FE30);
  v74 = sub_270A890B0();

  [v82 activateConstraints_];

  v75 = *&v34[v37];
  if (v75)
  {
    v76 = v75;
    sub_270A4DFC0(v85);

    v77 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v78 = sub_270A88BA0();
    v80 = *v79;
    *v79 = sub_270A87078;
    v79[1] = v77;
    sub_270A4DFC0(v80);
    v78(v90, 0);

    sub_270A7F99C(0, 0);

    return;
  }

LABEL_20:
  __break(1u);
}

void sub_270A84A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v82 = a2;
  v83 = a5;
  v80[1] = a4;
  v84 = a1;
  v13 = *(a6 + 1);
  v81 = *a6;
  v14 = *(a6 + 16);
  v16 = *(a6 + 3);
  v15 = *(a6 + 4);
  v17 = sub_270A88C00();
  MEMORY[0x28223BE20](v17 - 8);
  v80[2] = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8[qword_28083F880] = 0;
  *&v8[qword_28083F888] = 0;
  *&v8[qword_28083F890] = 0;
  v22 = &v8[qword_28083F898];
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = &v8[qword_28083F8A0];
  *(v23 + 4) = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v24 = &v8[qword_28083F8A8];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *&v8[qword_28083F8B0] = 0;
  *&v8[qword_28083F8B8] = 0;
  v25 = *a6;
  v88 = *(a6 + 16);
  v87 = v25;
  *v22 = v81;
  *(v22 + 1) = v13;
  *(v22 + 2) = v14;
  *(v22 + 3) = v16;
  *(v22 + 4) = v15;
  v26 = *(a7 + 16);
  *v23 = *a7;
  *(v23 + 1) = v26;
  *(v23 + 4) = *(a7 + 32);
  *(v24 + 4) = *(a8 + 32);
  v27 = *(a8 + 16);
  *v24 = *a8;
  *(v24 + 1) = v27;

  v28 = v83;
  sub_270A4E700(a8, v86, &unk_28083FA00);
  sub_270A4E700(a7, v86, &unk_28083FA00);
  sub_270A69640(&v87, v86);
  v82 = a3;
  v29 = sub_270A88FB0();
  if (v28)
  {

    v30 = sub_270A88FB0();
  }

  else
  {
    v30 = 0;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FE70);
  v85.receiver = v8;
  v85.super_class = v31;
  v32 = objc_msgSendSuper2(&v85, sel_initWithTitle_detailText_symbolName_contentLayout_, v29, v30, 0, 3);

  sub_270A874D8(v84, v21, type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView);
  v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FE80));
  v34 = v32;
  v35 = sub_270A88B90();
  v36 = qword_28083F890;
  v37 = *&v34[qword_28083F890];
  *&v34[qword_28083F890] = v35;

  v38 = v34;
  v39 = [v38 headerView];
  [v39 setTitleStyle_];

  v40 = [v38 headerView];
  v41 = [v40 animationView];

  v42 = *&v38[qword_28083F888];
  *&v38[qword_28083F888] = v41;

  v43 = *&v34[v36];
  if (!v43)
  {
    __break(1u);
    goto LABEL_14;
  }

  v44 = [v43 view];
  if (!v44)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v45 = v44;
  [v44 setTranslatesAutoresizingMaskIntoConstraints_];
  [v45 invalidateIntrinsicContentSize];
  v46 = *&v34[v36];
  if (!v46)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v47 = v46;
  sub_270A88BF0();
  sub_270A88B80();

  sub_270A80ABC();
  v48 = *&v34[v36];
  if (!v48)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v49 = v38;
  [v49 addChildViewController_];
  v50 = [v49 contentView];
  [v50 addSubview_];

  v51 = *&v34[v36];
  if (!v51)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v52 = v51;
  [v52 didMoveToParentViewController_];

  v53 = *&v34[v36];
  if (!v53)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v54 = [v53 view];
  if (!v54)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v55 = v54;
  [v54 setTranslatesAutoresizingMaskIntoConstraints_];

  v81 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F100);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_270A8F300;
  v57 = [v45 leadingAnchor];
  v58 = [v49 contentView];
  v59 = [v58 leadingAnchor];

  v60 = [v57 constraintEqualToAnchor_];
  *(v56 + 32) = v60;
  v61 = [v45 trailingAnchor];
  v62 = [v49 contentView];
  v63 = [v62 trailingAnchor];

  v64 = [v61 constraintEqualToAnchor_];
  *(v56 + 40) = v64;
  v65 = [v45 topAnchor];
  v66 = [v49 contentView];
  v67 = [v66 topAnchor];

  v68 = [v65 constraintEqualToAnchor_];
  *(v56 + 48) = v68;
  v69 = [v45 bottomAnchor];
  v70 = [v49 contentView];

  v71 = [v70 bottomAnchor];
  v72 = [v69 constraintEqualToAnchor_];

  *(v56 + 56) = v72;
  sub_270A4DC8C(0, &qword_28083FE30);
  v73 = sub_270A890B0();

  [v81 activateConstraints_];

  v74 = *&v34[v36];
  if (v74)
  {
    v75 = v74;

    v76 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v77 = sub_270A88BA0();
    v79 = *v78;
    *v78 = sub_270A87540;
    v78[1] = v76;
    sub_270A4DFC0(v79);
    v77(v86, 0);

    sub_270A7FC84(0, 0);

    sub_270A87580(v84, type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView);
    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_So24UNNotificationOnboardingC20UserNotificationsKitE6ActionV4KindO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_270A852BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_270A85304(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_270A8535C(int a1)
{
  v57 = a1;
  v1 = _s21ShownExperienceRecordVMa();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v56 = (&v50 - v6);
  MEMORY[0x28223BE20](v5);
  v52 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FDC0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v53 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v55 = &v50 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v54 = &v50 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  v20 = [objc_allocWithZone(UNNotificationOnboardingDefaults) init];
  v21 = OBJC_IVAR___UNNotificationOnboardingDefaults_shownRecords;
  swift_beginAccess();
  v58 = v20;
  v22 = *&v20[v21];
  if (*(v22 + 16))
  {
    v23 = 1;
    v24 = sub_270A7D354(1u);
    if (v25)
    {
      sub_270A874D8(*(v22 + 56) + v2[9] * v24, v17, _s21ShownExperienceRecordVMa);
      v23 = 0;
    }
  }

  else
  {
    v23 = 1;
  }

  v26 = v2[7];
  v26(v17, v23, 1, v1);
  swift_endAccess();
  v27 = v2[6];
  if (v27(v17, 1, v1) == 1)
  {
    v28 = v58;
    swift_beginAccess();
    v29 = *&v28[v21];
    if (*(v29 + 16) && (v30 = sub_270A7D354(0), (v31 & 1) != 0))
    {
      v32 = *(v29 + 56) + v2[9] * v30;
      v33 = v19;
      sub_270A874D8(v32, v19, _s21ShownExperienceRecordVMa);
      v34 = 0;
    }

    else
    {
      v34 = 1;
      v33 = v19;
    }

    v26(v33, v34, 1, v1);
    swift_endAccess();
    v35 = v27(v17, 1, v1);
    if (v35 != 1)
    {
      v35 = sub_270A4E644(v17, &unk_28083FDC0);
    }
  }

  else
  {
    v33 = v19;
    sub_270A76490(v17, v19);
    v35 = (v26)(v19, 0, 1, v1);
  }

  if ((v57 & 1) == 0)
  {
    if ((MEMORY[0x2743ADCC0](v35) & 1) == 0)
    {

      v36 = 0;
      goto LABEL_33;
    }

    v37 = v54;
    sub_270A4E700(v33, v54, &unk_28083FDC0);
    if (v27(v37, 1, v1) == 1)
    {
      sub_270A4E644(v37, &unk_28083FDC0);
      v39 = v55;
      v38 = v56;
    }

    else
    {
      v40 = v52;
      sub_270A76490(v37, v52);
      v41 = v40 + *(v1 + 28);
      v39 = v55;
      v38 = v56;
      if ((*(v41 + 8) & 1) == 0 && !*v41)
      {
        v59[0] = 0;
        v59[1] = 0xE000000000000000;
        sub_270A89380();

        v59[0] = 0xD00000000000001ALL;
        v59[1] = 0x8000000270A92150;
        v49 = sub_270A7A1C4();
        MEMORY[0x2743AE510](v49);

        sub_270A87580(v40, _s21ShownExperienceRecordVMa);
        goto LABEL_15;
      }

      sub_270A87580(v40, _s21ShownExperienceRecordVMa);
    }

    sub_270A4E700(v33, v39, &unk_28083FDC0);
    if (v27(v39, 1, v1) == 1)
    {
      sub_270A4E644(v39, &unk_28083FDC0);
    }

    else
    {
      sub_270A76490(v39, v38);
      if (*v38)
      {
        v42 = *v38;
        if ([v42 majorBuildNumber] < 23)
        {
          v59[0] = 0;
          v59[1] = 0xE000000000000000;
          sub_270A89380();
          MEMORY[0x2743AE510](0xD00000000000004FLL, 0x8000000270A92280);
          v43 = sub_270A7A1C4();
          MEMORY[0x2743AE510](v43);

          sub_270A87580(v38, _s21ShownExperienceRecordVMa);
          goto LABEL_15;
        }

        sub_270A87580(v38, _s21ShownExperienceRecordVMa);
      }

      else
      {
        sub_270A87580(v38, _s21ShownExperienceRecordVMa);
      }
    }

    v44 = v53;
    sub_270A4E700(v33, v53, &unk_28083FDC0);
    if (v27(v44, 1, v1) != 1)
    {
      v45 = v44;
      v46 = v51;
      sub_270A76490(v45, v51);
      v59[0] = 0;
      v59[1] = 0xE000000000000000;
      sub_270A89380();

      strcpy(v59, "Already show. ");
      HIBYTE(v59[1]) = -18;
      v47 = sub_270A7A1C4();
      MEMORY[0x2743AE510](v47);

      sub_270A87580(v46, _s21ShownExperienceRecordVMa);
      v36 = 0;
      goto LABEL_33;
    }

    sub_270A4E644(v44, &unk_28083FDC0);

    goto LABEL_15;
  }

LABEL_15:
  v36 = 1;
LABEL_33:
  sub_270A4E644(v33, &unk_28083FDC0);
  return v36;
}

BOOL sub_270A85B3C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_270A88FB0();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_270A88FB0();
    v4 = [v2 objectForKey_];

    if (v4)
    {
      sub_270A89270();

      swift_unknownObjectRelease();
    }

    else
    {

      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        return v10 == 2;
      }
    }

    else
    {
      sub_270A4E644(v13, &qword_28083FCB0);
    }
  }

  else
  {
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v5 = sub_270A88890();
    __swift_project_value_buffer(v5, qword_28122C340);
    v6 = sub_270A88870();
    v7 = sub_270A891A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_270A33000, v6, v7, "Cannot access defaults with suite domain 'com.apple.bulletinboard'", v8, 2u);
      MEMORY[0x2743AF520](v8, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_270A85D48(int a1)
{
  v58 = a1;
  v1 = _s21ShownExperienceRecordVMa();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v55 = (&v51 - v6);
  MEMORY[0x28223BE20](v5);
  v54 = (&v51 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FDC0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v51 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  v21 = [objc_allocWithZone(UNNotificationOnboardingDefaults) init];
  v22 = OBJC_IVAR___UNNotificationOnboardingDefaults_shownRecords;
  swift_beginAccess();
  v59 = v21;
  v23 = *&v21[v22];
  if (*(v23 + 16) && (v24 = sub_270A7D354(2u), (v25 & 1) != 0))
  {
    sub_270A874D8(*(v23 + 56) + v2[9] * v24, v18, _s21ShownExperienceRecordVMa);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = v2[7];
  v27(v18, v26, 1, v1);
  swift_endAccess();
  v28 = v2[6];
  if (v28(v18, 1, v1) == 1)
  {
    v52 = v15;
    v29 = v28;
    v30 = v59;
    swift_beginAccess();
    v31 = *&v30[v22];
    if (*(v31 + 16) && (v32 = sub_270A7D354(0), (v33 & 1) != 0))
    {
      v34 = *(v31 + 56) + v2[9] * v32;
      v35 = v20;
      sub_270A874D8(v34, v20, _s21ShownExperienceRecordVMa);
      v36 = 0;
    }

    else
    {
      v36 = 1;
      v35 = v20;
    }

    v27(v35, v36, 1, v1);
    swift_endAccess();
    v28 = v29;
    v37 = (v29)(v18, 1, v1);
    v15 = v52;
    if (v37 != 1)
    {
      v37 = sub_270A4E644(v18, &unk_28083FDC0);
    }
  }

  else
  {
    v35 = v20;
    sub_270A76490(v18, v20);
    v37 = (v27)(v20, 0, 1, v1);
  }

  if ((MEMORY[0x2743ADCC0](v37) & 1) == 0 || (v58 & 1) != 0 || sub_270A85B3C())
  {

    v38 = 0;
    goto LABEL_16;
  }

  sub_270A4E700(v35, v15, &unk_28083FDC0);
  v40 = v28;
  if (v28(v15, 1, v1) == 1)
  {
    sub_270A4E644(v15, &unk_28083FDC0);
    v42 = v56;
    v41 = v57;
  }

  else
  {
    v43 = v54;
    sub_270A76490(v15, v54);
    v42 = v56;
    v41 = v57;
    if (*v43)
    {
      v44 = *v43;
      if ([v44 majorBuildNumber] < 23)
      {
        v60[0] = 0;
        v60[1] = 0xE000000000000000;
        sub_270A89380();

        v60[0] = 0xD000000000000029;
        v60[1] = 0x8000000270A92170;
        v45 = sub_270A7A1C4();
        MEMORY[0x2743AE510](v45);

        goto LABEL_34;
      }

      sub_270A87580(v43, _s21ShownExperienceRecordVMa);
    }

    else
    {
      sub_270A87580(v43, _s21ShownExperienceRecordVMa);
    }
  }

  sub_270A4E700(v35, v42, &unk_28083FDC0);
  if (v40(v42, 1, v1) != 1)
  {
    v46 = v55;
    sub_270A76490(v42, v55);
    v47 = v46 + *(v1 + 28);
    if ((*(v47 + 8) & 1) != 0 || *v47)
    {
      sub_270A87580(v55, _s21ShownExperienceRecordVMa);
      goto LABEL_30;
    }

    v60[0] = 0;
    v60[1] = 0xE000000000000000;
    sub_270A89380();

    v60[0] = 0xD00000000000001ALL;
    v60[1] = 0x8000000270A92150;
    v43 = v55;
    v50 = sub_270A7A1C4();
    MEMORY[0x2743AE510](v50);

LABEL_34:

    sub_270A87580(v43, _s21ShownExperienceRecordVMa);
    goto LABEL_35;
  }

  sub_270A4E644(v42, &unk_28083FDC0);
LABEL_30:
  sub_270A4E700(v35, v41, &unk_28083FDC0);
  if (v40(v41, 1, v1) == 1)
  {
    sub_270A4E644(v41, &unk_28083FDC0);

LABEL_35:
    v38 = 1;
    goto LABEL_16;
  }

  v48 = v53;
  sub_270A76490(v41, v53);
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_270A89380();

  strcpy(v60, "Already show. ");
  HIBYTE(v60[1]) = -18;
  v49 = sub_270A7A1C4();
  MEMORY[0x2743AE510](v49);

  sub_270A87580(v48, _s21ShownExperienceRecordVMa);
  v38 = 0;
LABEL_16:
  sub_270A4E644(v35, &unk_28083FDC0);
  return v38;
}

uint64_t sub_270A86540(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v7 = sub_270A7E9F4();
    v8 = UNCCatchMe();
    v37[3] = &type metadata for NotificationsUIFeatureFlags;
    v37[4] = sub_270A87864();
    v9 = swift_allocObject();
    v37[0] = v9;
    *(v9 + 16) = "NotificationsUI";
    *(v9 + 24) = 15;
    *(v9 + 32) = 2;
    *(v9 + 40) = "GreymatterOnboardingiOS";
    *(v9 + 48) = 23;
    *(v9 + 56) = 2;
    v10 = sub_270A887E0();
    __swift_destroy_boxed_opaque_existential_0(v37);
    v36 = sub_270A8535C(a2 == 2);
    v34 = v11;
    v13 = v12;
    v14 = sub_270A85D48(a2 == 2);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v5 = v7;
    if ((v7 & 1) == 0 && v8)
    {
      v5 = v10 & (v36 | v14);
    }

    v35 = v10;
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v20 = sub_270A88890();
    __swift_project_value_buffer(v20, qword_28122C340);

    v21 = sub_270A88870();
    v22 = sub_270A891C0();
    if (os_log_type_enabled(v21, v22))
    {
      v32 = v15;
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37[0] = v31;
      *v23 = 136448514;
      *(v23 + 4) = sub_270A4D698(0x7A6972616D6D7573, 0xED00006E6F697461, v37);
      *(v23 + 12) = 2082;

      v33 = v17;
      if (a2)
      {
        if (a2 == 2)
        {
          v24 = v8;
          v25 = 0xD000000000000014;
          v26 = 0x8000000270A920C0;
        }

        else
        {
          if (a2 != 1)
          {
            goto LABEL_23;
          }

          v24 = v8;
          v26 = 0xE800000000000000;
          v25 = 0x73676E6974746573;
        }
      }

      else
      {
        v24 = v8;
        v26 = 0xE900000000000079;
        v25 = 0x64647542696E696DLL;
      }

      v27 = sub_270A4D698(v25, v26, v37);

      *(v23 + 14) = v27;
      *(v23 + 22) = 1026;
      *(v23 + 24) = v5 & 1;
      *(v23 + 28) = 1024;
      *(v23 + 30) = v7 & 1;
      *(v23 + 34) = 1026;
      *(v23 + 36) = v24;
      *(v23 + 40) = 1026;
      *(v23 + 42) = v35 & 1;
      *(v23 + 46) = 1024;
      *(v23 + 48) = v36 & 1;
      *(v23 + 52) = 2080;
      v28 = sub_270A4D698(v34, v13, v37);

      *(v23 + 54) = v28;
      *(v23 + 62) = 1024;
      *(v23 + 64) = v32 & 1;
      *(v23 + 68) = 2080;
      v29 = sub_270A4D698(v33, v19, v37);

      *(v23 + 70) = v29;
      _os_log_impl(&dword_270A33000, v21, v22, "Should show onboarding experience, '%{public}s', in '%{public}s'? %{BOOL,public}d. Force=%{BOOL}d OR (GreymatterEnabled=%{BOOL,public}d && OnboardingEnabled=%{BOOL,public}d && (WantsSummarization=<%{BOOL}d,%s> || WantsPriority=<%{BOOL}d,%s>))", v23, 0x4Eu);
      swift_arrayDestroy();
      MEMORY[0x2743AF520](v31, -1, -1);
      MEMORY[0x2743AF520](v23, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    return v5 & 1;
  }

  if (qword_28122C2A0 != -1)
  {
    swift_once();
  }

  v2 = sub_270A88890();
  __swift_project_value_buffer(v2, qword_28122C340);
  v3 = sub_270A88870();
  v4 = sub_270A891A0();
  if (os_log_type_enabled(v3, v4))
  {
    swift_slowAlloc();
    swift_slowAlloc();
    while (1)
    {
LABEL_23:
      sub_270A89450();
      __break(1u);
    }
  }

  v5 = 0;
  return v5 & 1;
}

id sub_270A86A0C(int a1)
{
  v2 = sub_270A8535C(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_270A85D48(a1);
  v9 = v8;
  v11 = v10;
  if (qword_28122C2A0 != -1)
  {
    swift_once();
  }

  v12 = sub_270A88890();
  __swift_project_value_buffer(v12, qword_28122C340);

  v13 = sub_270A88870();
  v14 = sub_270A891C0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 67240962;
    *(v15 + 4) = v2 & 1;
    *(v15 + 8) = 2082;
    v17 = sub_270A4D698(v4, v6, &v21);

    *(v15 + 10) = v17;
    *(v15 + 18) = 1026;
    *(v15 + 20) = v7 & 1;
    *(v15 + 24) = 2082;
    v18 = sub_270A4D698(v9, v11, &v21);

    *(v15 + 26) = v18;
    _os_log_impl(&dword_270A33000, v13, v14, "Creating view model. showsSummaryOnboarding: <%{BOOL,public}d,%{public}s>, showsPriorityOnboarding: <%{BOOL,public}d,%{public}s> ", v15, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x2743AF520](v16, -1, -1);
    MEMORY[0x2743AF520](v15, -1, -1);
  }

  else
  {
  }

  v19 = objc_allocWithZone(type metadata accessor for NotificationSummarizationOnboardingViewModel());
  return sub_270A6B5F0(v2 & 1, v7 & 1);
}

uint64_t sub_270A86C28(void *a1)
{
  v37[0] = a1;
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3A8);
  sub_270A88E30();
  v27 = *(&v29[0] + 1);
  v28 = *&v29[0];
  if (qword_28083EE00 != -1)
  {
    swift_once();
  }

  v2 = qword_280842BE0;
  v3 = sub_270A88FB0();
  v4 = sub_270A88FB0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v26 = sub_270A88FC0();
  v7 = v6;

  v8 = qword_280842BE0;
  v9 = sub_270A88FB0();
  v10 = sub_270A88FB0();
  v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

  v12 = sub_270A88FC0();
  v14 = v13;

  v15 = swift_allocObject();
  *(v15 + 16) = 0xD00000000000002ELL;
  *(v15 + 24) = 0x8000000270A92580;
  v16 = swift_allocObject();
  *(v16 + 16) = 0xD00000000000002DLL;
  *(v16 + 24) = 0x8000000270A925B0;
  swift_getKeyPath();
  *&v29[0] = v1;
  sub_270A875E0(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();

  v17 = "BOARDING_INTRO_DETAIL_TEXT";
  if (v1[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__supportsBackButton])
  {
    v17 = "BOARDING_CLOSE_TEXT";
    v18 = 0xD000000000000022;
  }

  else
  {
    v18 = 0xD000000000000023;
  }

  if (v1[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__supportsBackButton])
  {
    v19 = 0;
  }

  else
  {
    v19 = 3;
  }

  v20 = v17 | 0x8000000000000000;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v20;
  v32 = xmmword_270A8F310;
  v33 = 0;
  v34 = sub_270A879B0;
  v35 = v15;
  v37[0] = v19;
  v37[1] = 0;
  v37[2] = 0;
  v37[3] = sub_270A879B0;
  v37[4] = v21;
  memset(v29, 0, sizeof(v29));
  v30 = v28;
  v31 = v27;
  v36[1] = 0;
  v36[2] = 0;
  v36[0] = 1;
  v36[3] = sub_270A879B0;
  v36[4] = v16;
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FE90));
  sub_270A83A70(v29, v26, v7, v12, v14, &v32, v36, v37);
  v24 = v23;
  sub_270A69B50(v19);

  return v24;
}

uint64_t sub_270A87068(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_270A870B8()
{
  result = qword_28083FE38;
  if (!qword_28083FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083FE38);
  }

  return result;
}

uint64_t sub_270A8710C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_270A4DECC;

  return sub_270A805FC(a1, v4, v5, v6);
}

uint64_t sub_270A871E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_270A879A0;

  return sub_270A82880(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_270A872A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_270A4DECC;

  return sub_270A82980(a1, v4, v5, v7, v6);
}

uint64_t sub_270A87368(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_270A879A0;

  return sub_270A83868(a1, v4);
}

uint64_t sub_270A87420(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_270A879A0;

  return sub_270A83678(a1, v4);
}

uint64_t sub_270A874D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_270A87580(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_270A875E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_270A87628(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_270A879A0;

  return sub_270A802A4(a1, v4, v5, v6);
}

unint64_t sub_270A8771C()
{
  result = qword_28083FEB0;
  if (!qword_28083FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083FEB0);
  }

  return result;
}

uint64_t objectdestroy_41Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_270A877B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_270A879A0;

  return sub_270A802A4(a1, v4, v5, v6);
}

unint64_t sub_270A87864()
{
  result = qword_28083FEB8;
  if (!qword_28083FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083FEB8);
  }

  return result;
}

uint64_t sub_270A878B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 17))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270A8790C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_270A8796C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}