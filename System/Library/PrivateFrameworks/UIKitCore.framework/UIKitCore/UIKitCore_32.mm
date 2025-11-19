unint64_t sub_188E76FB4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0);
  sub_18A4A7198();
  result = sub_18A4A7EE8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_188E7706C(uint64_t a1, uint64_t a2)
{
  sub_18A4A7C78();
  result = sub_18A4A7EE8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_188E770F0(uint64_t a1, uint64_t a2)
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  sub_18A4A88E8();
  result = sub_18A4A7EE8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_188E77194(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_188E764A4(v6 + 1, &qword_1EA934A00);
  }

  else
  {
    if (v7 > v6)
    {
      sub_188E7A2D8(&qword_1EA934A00);
      goto LABEL_12;
    }

    sub_188E7D48C(v6 + 1, &qword_1EA934A00);
  }

  v8 = *v3;
  v9 = sub_18A4A7C78();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for PlatterItemView();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_18A4A7C88();

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
  sub_18A4A8798();
  __break(1u);
}

uint64_t sub_188E77324(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_39;
  }

  if (a5)
  {
    sub_188E7395C();
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_188E79944();
      goto LABEL_39;
    }

    sub_188E7AE38();
  }

  v13 = *v5;
  sub_18A4A8888();
  sub_18A4A88A8();
  if (a3 != 0xFF)
  {
    sub_188C18FD0(v26, v10, a2, a3);
  }

  result = sub_18A4A88E8();
  v14 = v13 + 56;
  v15 = -1 << *(v13 + 32);
  a4 = result & ~v15;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    v17 = *(v13 + 48);
    do
    {
      v18 = v17 + 24 * a4;
      v19 = *(v18 + 16);
      if (v19 == 255)
      {
        if (a3 == 0xFF)
        {
          goto LABEL_38;
        }

        goto LABEL_13;
      }

      if (a3 == 0xFF)
      {
        goto LABEL_13;
      }

      result = *v18;
      if (*(v18 + 16) > 2u)
      {
        if (v19 == 3)
        {
          if (a3 != 3)
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v19 != 4)
          {
            if (a3 != 5)
            {
              goto LABEL_13;
            }

LABEL_37:
            if (result == v10)
            {
              goto LABEL_38;
            }

            goto LABEL_13;
          }

          if (a3 != 4)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        if (*(v18 + 16))
        {
          if (v19 == 1)
          {
            if (a3 != 1)
            {
              goto LABEL_13;
            }
          }

          else if (a3 != 2)
          {
            goto LABEL_13;
          }

          goto LABEL_37;
        }

        if (a3)
        {
          goto LABEL_13;
        }
      }

      v20 = result == v10 && *(v18 + 8) == a2;
      if (v20 || (result = sub_18A4A86C8(), (result & 1) != 0))
      {
LABEL_38:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934940);
        result = sub_18A4A8798();
        __break(1u);
        break;
      }

LABEL_13:
      a4 = (a4 + 1) & v16;
    }

    while (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_39:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = v10;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

uint64_t sub_188E77598(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_18A4A3908();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_188E73C58();
  }

  else
  {
    if (v12 > v11)
    {
      sub_188E7A804(MEMORY[0x1E69DBAE8], &qword_1EA934B10);
      goto LABEL_12;
    }

    sub_188E7B134();
  }

  v13 = *v3;
  sub_188E7EBE8(&qword_1EA934B00, MEMORY[0x1E69DBAE8]);
  v14 = sub_18A4A7198();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_188E7EBE8(&qword_1EA934B08, MEMORY[0x1E69DBAE8]);
      v22 = sub_18A4A7248();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

void sub_188E77860(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_188E764A4(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_188E7A2D8(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_188E7D48C(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = sub_18A4A7C78();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_188A34624(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_18A4A7C88();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_18A4A8798();
  __break(1u);
}

uint64_t sub_188E779F0(uint64_t result, uint64_t a2, unint64_t a3, char a4, double a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a4 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a4)
  {
    sub_188E73FB4();
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_188E79EC0();
      goto LABEL_20;
    }

    sub_188E7B450();
  }

  v13 = *v5;
  sub_18A4A8888();
  sub_18A4A7348();
  v14 = 0.0;
  if (a5 != 0.0)
  {
    v14 = a5;
  }

  MEMORY[0x18CFE3810](*&v14);
  result = sub_18A4A88E8();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a3 = result & ~v16;
  if ((*(v13 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = v18 + 24 * a3;
      result = *v19;
      v20 = *(v19 + 16);
      v21 = *v19 == v10 && *(v19 + 8) == a2;
      if (v21 || (result = sub_18A4A86C8(), (result & 1) != 0))
      {
        if (v20 == a5)
        {
          goto LABEL_23;
        }
      }

      a3 = (a3 + 1) & v17;
    }

    while (((*(v15 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_20:
  v22 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v23 = *(v22 + 48) + 24 * a3;
  *v23 = v10;
  *(v23 + 8) = a2;
  *(v23 + 16) = a5;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_23:
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

uint64_t sub_188E77BB4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_188E74244();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_188E7A69C(&qword_1EA934AF8);
      goto LABEL_12;
    }

    sub_188E7B6B8();
  }

  v8 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0);
  result = sub_18A4A7198();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      result = sub_18A4A7248();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

uint64_t sub_188E77D58(uint64_t result, unint64_t a2, char a3)
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
    sub_188E744AC();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_188E7A028();
      a2 = v7;
      goto LABEL_12;
    }

    sub_188E7B8F8();
  }

  v8 = *v3;
  sub_18A4A8888();
  MEMORY[0x18CFE3810](v4);
  result = sub_18A4A88E8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v11 + 48) + 8 * a2) = v4;
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
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

uint64_t sub_188E77EA4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_18A4A29D8();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_188E746FC();
  }

  else
  {
    if (v12 > v11)
    {
      sub_188E7A804(MEMORY[0x1E69695A8], &qword_1EA934AD8);
      goto LABEL_12;
    }

    sub_188E7BB18();
  }

  v13 = *v3;
  sub_188E7EBE8(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
  v14 = sub_18A4A7198();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_188E7EBE8(&qword_1EA930B00, MEMORY[0x1E69695A8]);
      v22 = sub_18A4A7248();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

uint64_t sub_188E7816C(uint64_t result, unint64_t a2, char a3)
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
    sub_188E74A58();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_188E7A418(&qword_1EA934A28);
      a2 = v7;
      goto LABEL_12;
    }

    sub_188E7BE34();
  }

  v8 = *v3;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v4);
  result = sub_18A4A88E8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v11 + 48) + 8 * a2) = v4;
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
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

void sub_188E782CC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_188E764A4(v6 + 1, &qword_1EA934AC8);
  }

  else
  {
    if (v7 > v6)
    {
      sub_188E7A2D8(&qword_1EA934AC8);
      goto LABEL_12;
    }

    sub_188E7D48C(v6 + 1, &qword_1EA934AC8);
  }

  v8 = *v3;
  v9 = sub_18A4A7C78();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0);
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_18A4A7C88();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
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
  sub_18A4A8798();
  __break(1u);
}

uint64_t sub_188E78470(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_188E74CA8();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_188E7A17C();
      goto LABEL_16;
    }

    sub_188E7C054();
  }

  v10 = *v4;
  sub_18A4A8888();
  sub_18A4A7348();
  result = sub_18A4A88E8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_18A4A86C8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

uint64_t sub_188E785F0(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v7 = v6;
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v12 = a6;
    sub_188E74F08(v10 + 1, a4);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_188E7A2D8(a4);
      goto LABEL_16;
    }

    v12 = a6;
    sub_188E7C28C(v10 + 1, a4);
  }

  v13 = *v6;
  sub_18A4A7288();
  sub_18A4A8888();
  sub_18A4A7348();
  v14 = sub_18A4A88E8();

  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v12(0);
    do
    {
      v17 = sub_18A4A7288();
      v19 = v18;
      if (v17 == sub_18A4A7288() && v19 == v20)
      {
        goto LABEL_19;
      }

      v22 = sub_18A4A86C8();

      if (v22)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v23 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + 8 * a2) = v9;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

unint64_t sub_188E787FC(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_188E753C4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_188E7A548();
      result = v7;
      goto LABEL_12;
    }

    sub_188E7C4D8();
  }

  v8 = *v3;
  v9 = sub_18A4A8878();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

void sub_188E78928(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_188E755F8();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_188E7A418(&qword_1EA934AA0);
      a2 = v7;
      goto LABEL_12;
    }

    sub_188E7C6D8();
  }

  v8 = *v3;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  v9 = sub_18A4A88E8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for NSUnderlineStyle(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_18A4A8798();
  __break(1u);
}

uint64_t sub_188E78A98(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_188E75848(v7 + 1, a4);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_188E7A69C(a4);
      goto LABEL_12;
    }

    sub_188E7C8F8(v7 + 1, a4);
  }

  v9 = *v4;
  sub_18A4A8888();
  sub_18A4A7C98();
  result = sub_18A4A88E8();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      result = [*(*(*(v9 + 48) + 8 * a2) + 16) isEqual_];
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v6;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

uint64_t sub_188E78C1C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_18A4A2B48();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_188E75A90();
  }

  else
  {
    if (v12 > v11)
    {
      sub_188E7A804(MEMORY[0x1E6969C28], &qword_1EA934A68);
      goto LABEL_12;
    }

    sub_188E7CB18();
  }

  v13 = *v3;
  sub_188E7EBE8(&qword_1EA92F720, MEMORY[0x1E6969C28]);
  v14 = sub_18A4A7198();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_188E7EBE8(&qword_1EA92F710, MEMORY[0x1E6969C28]);
      v22 = sub_18A4A7248();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

uint64_t sub_188E78EE4(uint64_t a1, unint64_t a2, char a3)
{
  v7 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v33 = a1;
  v32 = v3;
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v31 = v8;
      sub_188E75DEC();
    }

    else
    {
      if (v12 > v11)
      {
        sub_188E7AAB4(_s22RotaryPlaceholderLabelC11TextSegmentVMa, &qword_1EA934A60, &unk_18A64D5A8, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        goto LABEL_18;
      }

      v31 = v8;
      sub_188E7CE34();
    }

    v13 = *v3;
    sub_18A4A8888();
    v14 = *(a1 + 32);
    sub_18A4A7C98();
    v39 = 0;
    v40 = 0xE000000000000000;
    v15 = *a1;
    v16 = *(a1 + 8);
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);
    v35 = *a1;
    v36 = v16;
    v37 = v17;
    v38 = v18;
    type metadata accessor for CGRect(0);
    sub_18A4A82D8();
    sub_18A4A7348();

    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    sub_18A4A7348();
    v21 = sub_18A4A88E8();
    v22 = -1 << *(v13 + 32);
    a2 = v21 & ~v22;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v23 = ~v22;
      v24 = *(v34 + 72);
      do
      {
        sub_188E7EAB8(*(v13 + 48) + v24 * a2, v10, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        v41.origin.x = v15;
        v41.origin.y = v16;
        v41.size.width = v17;
        v41.size.height = v18;
        if (CGRectEqualToRect(*v10, v41) && [*(v10 + 4) isEqualToTextRange_])
        {
          if (*(v10 + 5) == v19 && *(v10 + 6) == v20)
          {
            goto LABEL_21;
          }

          v25 = sub_18A4A86C8();
          sub_188E7EB20(v10, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
          if (v25)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_188E7EB20(v10, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        }

        a2 = (a2 + 1) & v23;
      }

      while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_18:
  v26 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_188E7EB80(v33, *(v26 + 48) + *(v34 + 72) * a2, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_21:
    sub_188E7EB20(v10, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
LABEL_22:
    result = sub_18A4A8798();
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v30;
  }

  return result;
}

uint64_t sub_188E79284(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v28 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
LABEL_13:
    v14 = v8;
    goto LABEL_14;
  }

  if (a3)
  {
    v27 = v9;
    sub_188E76150();
    goto LABEL_8;
  }

  if (v13 <= v12)
  {
    v27 = v9;
    sub_188E7D168();
LABEL_8:
    v15 = *v3;
    sub_18A4A8888();
    sub_18A4A29D8();
    sub_188E7EBE8(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
    sub_18A4A71A8();
    v16 = sub_18A4A88E8();
    v17 = -1 << *(v15 + 32);
    a2 = v16 & ~v17;
    if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v18 = ~v17;
      v14 = v8;
      v19 = *(v8 + 72);
      while (1)
      {
        sub_188E7EAB8(*(v15 + 48) + v19 * a2, v11, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        v20 = _s5UIKit16UITextEffectViewC0C2IDV2eeoiySbAE_AEtFZ_0();
        sub_188E7EB20(v11, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        if (v20)
        {
          goto LABEL_17;
        }

        a2 = (a2 + 1) & v18;
        if (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_13;
  }

  v14 = v8;
  sub_188E7AAB4(type metadata accessor for IntelligenceUI.PromptAmbiguityID, &qword_1EA934A58, &unk_18A64D5A0, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
LABEL_14:
  v21 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_188E7EB80(a1, *(v21 + 48) + *(v14 + 72) * a2, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

uint64_t sub_188E79544(uint64_t result, unint64_t a2, char a3)
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
    sub_188E766C4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_188E7A418(&qword_1EA934A50);
      a2 = v7;
      goto LABEL_12;
    }

    sub_188E7D698();
  }

  v8 = *v3;
  result = sub_18A4A8878();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v11 + 48) + 8 * a2) = v4;
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
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

uint64_t sub_188E79678(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_188E768E8();
  }

  else
  {
    if (v8 > v7)
    {
      sub_188E7ACD0();
      goto LABEL_12;
    }

    sub_188E7D888();
  }

  v9 = *v3;
  sub_18A4A8888();
  v10 = *a1;
  MEMORY[0x18CFE37E0](*a1);
  v11 = sub_18A4A88E8();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      sub_188E7DC94(*(v9 + 48) + 16 * a2, v20);
      v14 = v20[0];
      sub_188E7DD4C(v20);
      if (v14 == v10)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_188E7DCF0(a1, *(v15 + 48) + 16 * a2);
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

void *sub_188E797F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349F8);
  v2 = *v0;
  v3 = sub_18A4A8058();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
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

void *sub_188E79944()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A08);
  v2 = *v0;
  v3 = sub_18A4A8058();
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
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_188C46860(v19, v20, v22);
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

void *sub_188E79AAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349D0);
  v2 = *v0;
  v3 = sub_18A4A8058();
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

void *sub_188E79C04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349C0);
  v2 = *v0;
  v3 = sub_18A4A8058();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

void *sub_188E79D58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A40);
  v2 = *v0;
  v3 = sub_18A4A8058();
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
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v19;
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

void *sub_188E79EC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A18);
  v2 = *v0;
  v3 = sub_18A4A8058();
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
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
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

void *sub_188E7A028()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AE0);
  v2 = *v0;
  v3 = sub_18A4A8058();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_188E7A17C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349F0);
  v2 = *v0;
  v3 = sub_18A4A8058();
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
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

id sub_188E7A2D8(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18A4A8058();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
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
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
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

      v17 = *(v3 + 56 + 8 * v9);
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

void *sub_188E7A418(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18A4A8058();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
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

      v17 = *(v3 + 56 + 8 * v9);
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

void *sub_188E7A548()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AA8);
  v2 = *v0;
  v3 = sub_18A4A8058();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_188E7A69C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18A4A8058();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
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
        *(*(v5 + 48) + 8 * (v15 | (v9 << 6))) = *(*(v3 + 48) + 8 * (v15 | (v9 << 6)));
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

      v17 = *(v3 + 56 + 8 * v9);
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

void *sub_188E7A804(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v2;
  v10 = sub_18A4A8058();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_188E7AAB4(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = v4;
  v8 = a1(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v12 = *v4;
  v13 = sub_18A4A8058();
  v14 = v13;
  if (*(v12 + 16))
  {
    v29 = v7;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = *(v12 + 56);
    v21 = -1;
    if (v19 < 64)
    {
      v21 = ~(-1 << v19);
    }

    v22 = v21 & v20;
    v23 = (v19 + 63) >> 6;
    if ((v21 & v20) != 0)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_17:
        v27 = *(v9 + 72) * (v24 | (v18 << 6));
        sub_188E7EAB8(*(v12 + 48) + v27, v11, a4);
        result = sub_188E7EB80(v11, *(v14 + 48) + v27, a4);
      }

      while (v22);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v29;
        goto LABEL_21;
      }

      v26 = *(v12 + 56 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v14;
  }

  return result;
}

void *sub_188E7ACD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349D8);
  v2 = *v0;
  v3 = sub_18A4A8058();
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
        sub_188E7DC94(*(v2 + 48) + v17, v18);
        result = sub_188E7DCF0(v18, *(v4 + 48) + v17);
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

uint64_t sub_188E7AE38()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A08);
  result = sub_18A4A8068();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_41:
    *v1 = v4;
    return result;
  }

  v32 = v2;
  v5 = 0;
  v6 = v2 + 56;
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
    sub_18A4A8888();
    if (v20 == 255)
    {
      sub_18A4A88A8();
      goto LABEL_30;
    }

    sub_18A4A88A8();
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        MEMORY[0x18CFE37E0](3);
        v22 = v18;
        v23 = v19;
        v24 = 3;
        goto LABEL_26;
      }

      if (v20 == 4)
      {
        MEMORY[0x18CFE37E0](4);
        v22 = v18;
        v23 = v19;
        v24 = 4;
LABEL_26:
        sub_188BB395C(v22, v23, v24);
        sub_18A4A7348();
        goto LABEL_30;
      }

      v21 = 5;
    }

    else
    {
      if (!v20)
      {
        MEMORY[0x18CFE37E0](0);
        v22 = v18;
        v23 = v19;
        v24 = 0;
        goto LABEL_26;
      }

      if (v20 == 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }
    }

    MEMORY[0x18CFE37E0](v21);
    MEMORY[0x18CFE37E0](v18);
LABEL_30:
    result = sub_18A4A88E8();
    v25 = -1 << *(v4 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
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
        v31 = *(v11 + 8 * v27);
        if (v31 != -1)
        {
          v12 = __clz(__rbit64(~v31)) + (v27 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_43;
    }

    v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v4 + 48) + 24 * v12;
    *v13 = v18;
    *(v13 + 8) = v19;
    *(v13 + 16) = v20;
    ++*(v4 + 16);
    v2 = v32;
  }

  v15 = v5;
  while (1)
  {
    v5 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      v1 = v0;
      goto LABEL_41;
    }

    v16 = *(v6 + 8 * v5);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v9 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_188E7B134()
{
  v1 = v0;
  v32 = sub_18A4A3908();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934B10);
  v6 = sub_18A4A8068();
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
      sub_188E7EBE8(&qword_1EA934B00, MEMORY[0x1E69DBAE8]);
      result = sub_18A4A7198();
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

uint64_t sub_188E7B450()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A18);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
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
      sub_18A4A8888();

      sub_18A4A7348();
      if (v19 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v19;
      }

      MEMORY[0x18CFE3810](*&v20);
      result = sub_18A4A88E8();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v10 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v10 + 8 * v23);
          if (v27 != -1)
          {
            v11 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v11 = __clz(__rbit64((-1 << v22) & ~*(v10 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

        v1 = v0;
        goto LABEL_29;
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
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_188E7B6B8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF8);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0);
      result = sub_18A4A7198();
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

        v1 = v0;
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

uint64_t sub_188E7B8F8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AE0);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
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
      sub_18A4A8888();
      MEMORY[0x18CFE3810](v15);
      result = sub_18A4A88E8();
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

        v1 = v0;
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

uint64_t sub_188E7BB18()
{
  v1 = v0;
  v32 = sub_18A4A29D8();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AD8);
  v6 = sub_18A4A8068();
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
      sub_188E7EBE8(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
      result = sub_18A4A7198();
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

uint64_t sub_188E7BE34()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A28);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
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
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v15);
      result = sub_18A4A88E8();
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

        v1 = v0;
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

uint64_t sub_188E7C054()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349F0);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
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
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_18A4A8888();

      sub_18A4A7348();
      result = sub_18A4A88E8();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
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

        v1 = v0;
        goto LABEL_26;
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

uint64_t sub_188E7C28C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_18A4A8068();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = v4 + 56;
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
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_18A4A7288();
      sub_18A4A8888();
      v19 = v18;
      sub_18A4A7348();
      v20 = sub_18A4A88E8();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v19;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v3 = v28;
        goto LABEL_26;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v3 = v6;
  }

  return result;
}

uint64_t sub_188E7C4D8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AA8);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
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
      result = sub_18A4A8878();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_188E7C6D8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AA0);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
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
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v15);
      result = sub_18A4A88E8();
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

        v1 = v0;
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

uint64_t sub_188E7C8F8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_18A4A8068();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      sub_18A4A8888();

      sub_18A4A7C98();
      result = sub_18A4A88E8();
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
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }

  return result;
}

uint64_t sub_188E7CB18()
{
  v1 = v0;
  v32 = sub_18A4A2B48();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A68);
  v6 = sub_18A4A8068();
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
      sub_188E7EBE8(&qword_1EA92F720, MEMORY[0x1E6969C28]);
      result = sub_18A4A7198();
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

uint64_t sub_188E7CE34()
{
  v1 = v0;
  v2 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A60);
  result = sub_18A4A8068();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_188E7EAB8(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      sub_18A4A8888();
      sub_18A4A7C98();
      v31 = 0;
      v32 = 0xE000000000000000;
      v19 = v4[1];
      v29 = *v4;
      v30 = v19;
      type metadata accessor for CGRect(0);
      sub_18A4A82D8();
      sub_18A4A7348();

      sub_18A4A7348();
      result = sub_18A4A88E8();
      v20 = -1 << *(v7 + 32);
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

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_188E7EB80(v4, *(v7 + 48) + v14 * v18, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_188E7D168()
{
  v1 = v0;
  v2 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A58);
  result = sub_18A4A8068();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v30 + 72);
      sub_188E7EAB8(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      sub_18A4A8888();
      sub_18A4A29D8();
      sub_188E7EBE8(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
      sub_18A4A71A8();
      result = sub_18A4A88E8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_188E7EB80(v4, *(v7 + 48) + v15 * v20, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      ++*(v7 + 16);
      v5 = v29;
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

        v1 = v28;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_188E7D48C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_18A4A8068();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_18A4A7C78();
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
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }

  return result;
}

uint64_t sub_188E7D698()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A50);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
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
      result = sub_18A4A8878();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_188E7D888()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349D8);
  result = sub_18A4A8068();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    while (v7)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_15:
      sub_188E7DC94(*(v1 + 48) + 16 * (v11 | (v4 << 6)), v21);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v21[0]);
      result = sub_18A4A88E8();
      v14 = -1 << *(v3 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v9 + 8 * (v15 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *(v9 + 8 * v16);
          if (v20 != -1)
          {
            v10 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v10 = __clz(__rbit64((-1 << v15) & ~*(v9 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      result = sub_188E7DCF0(v21, *(v3 + 48) + 16 * v10);
      ++*(v3 + 16);
    }

    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_24;
      }

      v13 = *(v1 + 56 + 8 * v4);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v7 = (v13 - 1) & v13;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_188E7DAA4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349B8);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
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
      result = sub_18A4A8878();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

id sub_188E7DDA0(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v115 = sub_18A4A3908();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v108 - v16;
  v17 = sub_18A4A3BA8();
  v121 = *(v17 - 8);
  v122 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v120 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_18A4A3CC8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v124 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v108 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v108 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v108 - v32;
  v34 = sub_18A4A3938();
  v118 = *(v34 - 8);
  v119 = v34;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = a3;
  v127 = a3;
  v116 = v20;
  v38 = *(v20 + 56);
  v38(v33, 1, 1, v19, v35);
  (v38)(v30, 1, 1, v19);
  (v38)(v27, 1, 1, v19);
  v117 = v19;
  (v38)(v24, 1, 1, v19);
  v39 = a1;
  v125 = v37;
  v111 = v33;
  sub_18A4A3918();
  v40 = [a2 isCollapsed];
  v41 = &selRef_verticalMenuCornerRadius;
  if (v40)
  {
    goto LABEL_32;
  }

  v42 = [(UISplitViewController *)a2 _topLevelViewControllerForColumn:?];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 viewIfLoaded];
    if (v44)
    {
      v45 = v44;
      result = [a2 view];
      if (!result)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v47 = result;
      v48 = [(UIView *)result _containsView:v45];

      if (v48)
      {
        MEMORY[0x1EEE9AC00](v49);
        *(&v108 - 10) = a2;
        *(&v108 - 9) = v45;
        *(&v108 - 8) = a4;
        *(&v108 - 7) = a5;
        *(&v108 - 6) = a6;
        *(&v108 - 5) = a7;
        *(&v108 - 4) = a1;
        *(&v108 - 3) = sub_188DE7D34;
        *(&v108 - 2) = v126;
        sub_18A4A33C8();
        sub_18A4A38E8();
        v50 = v114;
        v51 = v113;
        v52 = v115;
        (*(v114 + 104))(v113, *MEMORY[0x1E69DBAD8], v115);
        v110 = v39;
        v109 = sub_18A4A3928();
        v53 = v112;
        sub_188E70AC4(v112, v51);
        (*(v50 + 8))(v53, v52);
        v109(v128, 0);
        v39 = v110;
      }
    }

    else
    {
      v45 = v43;
    }
  }

  v54 = [(UISplitViewController *)a2 _topLevelViewControllerForColumn:?];
  if (v54)
  {
    v55 = v54;
    v56 = [v54 viewIfLoaded];
    if (v56)
    {
      v57 = v56;
      result = [a2 view];
      if (!result)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v58 = result;
      v59 = [(UIView *)result _containsView:v57];

      if (v59)
      {
        MEMORY[0x1EEE9AC00](v60);
        *(&v108 - 10) = a2;
        *(&v108 - 9) = v57;
        *(&v108 - 8) = a4;
        *(&v108 - 7) = a5;
        *(&v108 - 6) = a6;
        *(&v108 - 5) = a7;
        *(&v108 - 4) = v39;
        *(&v108 - 3) = sub_188DE7D34;
        *(&v108 - 2) = v126;
        sub_18A4A33C8();
        sub_18A4A38D8();
        v61 = v114;
        v62 = v113;
        v63 = v115;
        (*(v114 + 104))(v113, *MEMORY[0x1E69DBAD0], v115);
        v110 = v39;
        v109 = sub_18A4A3928();
        v64 = v112;
        sub_188E70AC4(v112, v62);
        (*(v61 + 8))(v64, v63);
        v109(v128, 0);
        v39 = v110;
      }
    }

    else
    {
      v57 = v55;
    }
  }

  v65 = [(UISplitViewController *)a2 _topLevelViewControllerForColumn:?];
  if (v65)
  {
    v66 = v65;
    v67 = [v65 viewIfLoaded];
    if (v67)
    {
      v68 = v67;
      result = [a2 view];
      if (!result)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v69 = result;
      v70 = [(UIView *)result _containsView:v68];

      if (v70)
      {
        MEMORY[0x1EEE9AC00](v71);
        *(&v108 - 10) = a2;
        *(&v108 - 9) = v68;
        *(&v108 - 8) = a4;
        *(&v108 - 7) = a5;
        *(&v108 - 6) = a6;
        *(&v108 - 5) = a7;
        *(&v108 - 4) = v39;
        *(&v108 - 3) = sub_188DE7D34;
        *(&v108 - 2) = v126;
        sub_18A4A33C8();
        sub_18A4A38C8();
        v72 = v114;
        v73 = v113;
        v74 = v115;
        (*(v114 + 104))(v113, *MEMORY[0x1E69DBAC8], v115);
        v110 = v39;
        v109 = sub_18A4A3928();
        v75 = v112;
        sub_188E70AC4(v112, v73);
        (*(v72 + 8))(v75, v74);
        v109(v128, 0);
        v39 = v110;
      }
    }

    else
    {
      v68 = v66;
    }
  }

  if (qword_1EA930920 != -1)
  {
    swift_once();
  }

  v40 = [(UISplitViewController *)a2 _topLevelViewControllerForColumn:?];
  if (!v40)
  {
LABEL_32:
    MEMORY[0x1EEE9AC00](v40);
    *(&v108 - 8) = a2;
    *(&v108 - 7) = a4;
    *(&v108 - 6) = a5;
    *(&v108 - 5) = a6;
    *(&v108 - 4) = a7;
    *(&v108 - 3) = v39;
    *(&v108 - 2) = sub_188DE7D34;
    *(&v108 - 1) = v126;
    sub_18A4A33D8();
    result = [a2 v41[41]];
    if (result)
    {
      v88 = result;
      result = [a2 v41[41]];
      if (result)
      {
        v89 = result;
        [result bounds];
        v91 = v90;
        v93 = v92;
        v95 = v94;
        v97 = v96;

        (*(v123 + 16))(v123, v88, v91, v93, v95, v97);
        v99 = v118;
        v98 = v119;
        v100 = v120;
        v101 = v125;
        (*(v118 + 16))(v120, v125, v119);
        (*(v121 + 104))(v100, *MEMORY[0x1E69DBBB8], v122);
        v102 = v124;
        sub_18A4A3748();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150);
        v103 = v116;
        v104 = (*(v116 + 80) + 32) & ~*(v116 + 80);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_18A64BFB0;
        v106 = v105 + v104;
        v107 = v117;
        (*(v103 + 16))(v106, v102, v117);
        sub_18A4A3438();

        (*(v103 + 8))(v102, v107);
        return (*(v99 + 8))(v101, v98);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  v76 = v40;
  v77 = [v40 viewIfLoaded];
  if (!v77)
  {
    v78 = v76;
LABEL_31:

    goto LABEL_32;
  }

  v78 = v77;
  result = [a2 view];
  if (result)
  {
    v79 = result;
    v80 = [(UIView *)result _containsView:v78];

    if (v80)
    {
      MEMORY[0x1EEE9AC00](v81);
      *(&v108 - 10) = a2;
      *(&v108 - 9) = v78;
      *(&v108 - 8) = a4;
      *(&v108 - 7) = a5;
      *(&v108 - 6) = a6;
      *(&v108 - 5) = a7;
      *(&v108 - 4) = v39;
      *(&v108 - 3) = sub_188DE7D34;
      *(&v108 - 2) = v126;
      sub_18A4A33C8();
      sub_18A4A38F8();
      v82 = v114;
      v83 = v113;
      v84 = v115;
      (*(v114 + 104))(v113, *MEMORY[0x1E69DBAE0], v115);
      v85 = sub_18A4A3928();
      v86 = v112;
      sub_188E70AC4(v112, v83);
      v87 = v86;
      v41 = &selRef_verticalMenuCornerRadius;
      (*(v82 + 8))(v87, v84);
      v85(v128, 0);
    }

    goto LABEL_31;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_188E7EAB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_188E7EB20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_188E7EB80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_188E7EBE8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_188E7ECB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UILightBoxView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_188E7EE68()
{
  v1 = [v0 groups];
  sub_188A34624(0, &qword_1ED48C698);
  v2 = sub_18A4A7548();

  v11 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_18A4A7F68();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_188E49A94(v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = [v6 group];

    ++v4;
    if (v9)
    {
      MEMORY[0x18CFE2450]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();
      v5 = v11;
      v4 = v8;
    }
  }

  return v5;
}

void sub_188E7F08C(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = sub_18A4A7F68();
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  sub_18A4A8208();
  if (v4 < 0)
  {
    __break(1u);
    return;
  }

  v5 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_188E49AA8(v5, a1);
    }

    else
    {
      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    [objc_allocWithZone(_UIBarSectionItemGroup) initWithGroup_];

    sub_18A4A81D8();
    sub_18A4A8218();
    sub_18A4A8228();
    sub_18A4A81E8();
  }

  while (v4 != v5);
LABEL_11:

  sub_188A34624(0, &qword_1ED48C698);
  v8 = sub_18A4A7518();

  [v2 setGroups_];
}

uint64_t sub_188E7F3CC()
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0x5372614249555F3CLL, 0xEF206E6F69746365);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0x6D6563616C70203BLL, 0xED0000203A746E65);
  [v0 preferredPlacement];
  type metadata accessor for Placement(0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0x7370756F7267203BLL, 0xEA0000000000203ALL);
  v1 = [v0 groups];
  v2 = sub_188A34624(0, &qword_1ED48C698);
  v3 = sub_18A4A7548();

  v4 = MEMORY[0x18CFE24A0](v3, v2);
  v6 = v5;

  MEMORY[0x18CFE22D0](v4, v6);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

id _UIBarSection.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_188E7F894()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for _UITabCrossFadeTransitionSpec();
  objc_msgSendSuper2(&v12, sel_setDefaultValues);
  v1 = *&v0[OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_compact];
  *(v1 + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadedOutScale) = 0x3FEFC91D14E3BCD3;
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeOut);
  *(v2 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration) = 0x3FC10FF972474539;
  *(v2 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay) = 0x3FC7765FD8ADAB9FLL;
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleOut);
  *(v3 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration) = 0x3FC999999999999ALL;
  *(v3 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay) = 0;
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeIn);
  *(v4 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration) = 0x3FC10FF972474539;
  *(v4 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay) = 0x3FA999999999999ALL;
  v5 = *(v1 + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleIn);
  *(v5 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration) = 0x3FD999999999999ALL;
  result = 0x3FB126E978D4FDF4;
  *(v5 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay) = 0x3FB126E978D4FDF4;
  v7 = *&v0[OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_regular];
  *(v7 + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadedOutScale) = 0x3FEFAE147AE147AELL;
  v8 = *(v7 + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeOut);
  *(v8 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration) = 0x3FC999999999999ALL;
  *(v8 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay) = 0x3FD199999999999ALL;
  v9 = *(v7 + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleOut);
  *(v9 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration) = 0x3FD3333333333333;
  *(v9 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay) = 0;
  v10 = *(v7 + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeIn);
  *(v10 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration) = 0x3FC999999999999ALL;
  *(v10 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay) = 0x3FB3333333333333;
  v11 = *(v7 + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleIn);
  *(v11 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration) = 0x3FE3333333333333;
  *(v11 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay) = 0x3FB999999999999ALL;
  return result;
}

id sub_188E7FAE0()
{
  v1 = OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_regular;
  type metadata accessor for _UITabCrossFadeTransitionAnimationSpec();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v0[v1] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_compact;
  *&v0[v3] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for _UITabCrossFadeTransitionSpec();
  return objc_msgSendSuper2(&v5, sel_initWithDefaultValues);
}

id sub_188E7FDBC()
{
  *&v0[OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadedOutScale] = 0;
  v1 = OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeOut;
  type metadata accessor for _UIDurationBounceAnimationSpec();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v0[v1] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleOut;
  *&v0[v3] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeIn;
  *&v0[v4] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v5 = OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleIn;
  *&v0[v5] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for _UITabCrossFadeTransitionAnimationSpec();
  return objc_msgSendSuper2(&v7, sel_initWithDefaultValues);
}

id sub_188E80078(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_188E800D4(void *a1)
{
  v3 = &OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_compact;
  if ([a1 userInterfaceIdiom] && objc_msgSend(a1, sel_horizontalSizeClass) != 1)
  {
    v3 = &OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_regular;
  }

  return *(v1 + *v3);
}

void sub_188E8013C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFA0;
  v1 = sub_18A4A7258();
  v2 = sub_18A4A7258();
  v3 = objc_opt_self();
  v4 = [v3 rowWithTitle:v1 childSettingsKeyPath:v2];

  if (v4)
  {
    v5 = sub_188A34624(0, &qword_1EA934BA8);
    *(v0 + 56) = v5;
    *(v0 + 32) = v4;
    v6 = sub_18A4A7258();
    v7 = sub_18A4A7258();
    v8 = [v3 rowWithTitle:v6 childSettingsKeyPath:v7];

    if (v8)
    {
      *(v0 + 88) = v5;
      *(v0 + 64) = v8;
      v9 = sub_18A4A7258();
      v10 = sub_18A4A7518();

      [objc_opt_self() moduleWithTitle:v9 contents:v10];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_188E8030C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFA0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A64C6E0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v2 childSettingsKeyPath:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = sub_188A34624(0, &qword_1EA934BA8);
  *(v1 + 56) = v6;
  *(v1 + 32) = v5;
  v7 = sub_18A4A7258();
  v8 = sub_18A4A7258();
  v9 = [v4 rowWithTitle:v7 childSettingsKeyPath:v8];

  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 88) = v6;
  *(v1 + 64) = v9;
  v10 = sub_18A4A7258();
  v11 = sub_18A4A7258();
  v12 = [v4 rowWithTitle:v10 childSettingsKeyPath:v11];

  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v1 + 120) = v6;
  *(v1 + 96) = v12;
  v13 = sub_18A4A7258();
  v14 = sub_18A4A7258();
  v15 = [v4 rowWithTitle:v13 childSettingsKeyPath:v14];

  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = objc_opt_self();
  *(v1 + 152) = v6;
  *(v1 + 128) = v15;
  v17 = sub_18A4A7518();

  v18 = sub_18A4A7258();
  v19 = [v16 sectionWithRows:v17 title:v18];

  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = sub_188A34624(0, &qword_1EA934B98);
  *(v0 + 56) = v20;
  *(v0 + 32) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18A64BFB0;
  v22 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v23 = sub_18A4A7258();
  v24 = [objc_opt_self() rowWithTitle:v23 action:v22];

  if (!v24)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v21 + 56) = sub_188A34624(0, &qword_1EA934BA0);
  *(v21 + 32) = v24;
  v25 = sub_18A4A7518();

  v26 = [v16 sectionWithRows_];

  if (v26)
  {
    *(v0 + 88) = v20;
    *(v0 + 64) = v26;
    v27 = sub_18A4A7258();
    v28 = sub_18A4A7518();

    [v16 moduleWithTitle:v27 contents:v28];

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_188E807A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFA0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A64D660;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v2 valueKeyPath:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_188A34624(0, &qword_1EA934B90);
  *(v1 + 56) = v6;
  *(v1 + 32) = v5;
  v7 = sub_18A4A7258();
  v8 = sub_18A4A7258();
  v9 = [v4 rowWithTitle:v7 valueKeyPath:v8];

  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v1 + 88) = v6;
  *(v1 + 64) = v9;
  v10 = sub_18A4A7258();
  v11 = sub_18A4A7258();
  v12 = [v4 rowWithTitle:v10 valueKeyPath:v11];

  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = objc_opt_self();
  *(v1 + 120) = v6;
  *(v1 + 96) = v12;
  v14 = sub_18A4A7518();

  v15 = sub_18A4A7258();
  v16 = [v13 sectionWithRows:v14 title:v15];

  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = sub_188A34624(0, &qword_1EA934B98);
  *(v0 + 56) = v17;
  *(v0 + 32) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18A64BFB0;
  v19 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v20 = sub_18A4A7258();
  v21 = [objc_opt_self() rowWithTitle:v20 action:v19];

  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v18 + 56) = sub_188A34624(0, &qword_1EA934BA0);
  *(v18 + 32) = v21;
  v22 = sub_18A4A7518();

  v23 = [v13 sectionWithRows_];

  if (v23)
  {
    *(v0 + 88) = v17;
    *(v0 + 64) = v23;
    v24 = sub_18A4A7258();
    v25 = sub_18A4A7518();

    [v13 moduleWithTitle:v24 contents:v25];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_188E80BB4(uint64_t a1, void *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  if (v9 > 2)
  {
    if (*(a1 + 56) > 4u)
    {
      if (v9 != 5)
      {
        v32 = v4 | v2;
        v33 = *&v7 | v6 | v8;
        if (v32 | *&v3 | v5 | v33)
        {
          v34 = v32 | v5 | v33;
          if (*&v3 != 1 || v34)
          {
            if (*&v3 != 2 || v34)
            {
              if (*(a2 + 56) != 6 || *a2 != 3)
              {
                goto LABEL_54;
              }
            }

            else if (*(a2 + 56) != 6 || *a2 != 2)
            {
              goto LABEL_54;
            }
          }

          else if (*(a2 + 56) != 6 || *a2 != 1)
          {
            goto LABEL_54;
          }

          v36 = vorrq_s8(*(a2 + 3), *(a2 + 5));
          if (*&vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL)) | a2[2] | a2[1])
          {
LABEL_54:
            v10 = 0;
            return v10 & 1;
          }
        }

        else
        {
          if (*(a2 + 56) != 6)
          {
            goto LABEL_54;
          }

          v35 = vorrq_s8(*(a2 + 3), *(a2 + 5));
          if (*&vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL)) | a2[2] | a2[1] | *a2)
          {
            goto LABEL_54;
          }
        }

        v10 = 1;
        return v10 & 1;
      }

      v16 = *(*&v3 + 32);
      v43[2] = *(*&v3 + 16);
      v43[3] = v16;
      v17 = *(*&v3 + 64);
      v43[4] = *(*&v3 + 48);
      v18 = *(*&v3 + 80);
      v19 = *(*&v3 + 96);
      v38 = v17;
      v39 = v18;
      v40[0] = v19;
      *(v40 + 9) = *(*&v3 + 105);
      if (*(a2 + 56) != 5)
      {
        goto LABEL_54;
      }

      v20 = *a2;
      v21 = *(*a2 + 32);
      v43[5] = *(*a2 + 16);
      v43[6] = v21;
      v22 = v20[4];
      v43[7] = v20[3];
      v23 = v20[5];
      v24 = v20[6];
      v41 = v22;
      v42 = v23;
      v43[0] = v24;
      *(v43 + 9) = *(v20 + 105);
      if ((sub_18A4A7A08() & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v9 == 3)
      {
        if (*(a2 + 56) == 3)
        {
          v10 = (*(**&v3 + 88))(*a2);
          return v10 & 1;
        }

        goto LABEL_54;
      }

      v27 = *(*&v3 + 16);
      v28 = *(*&v3 + 32);
      v29 = *(*&v3 + 64);
      v38 = *(*&v3 + 48);
      v39 = v29;
      v40[0] = *(*&v3 + 80);
      *(v40 + 9) = *(*&v3 + 89);
      if (*(a2 + 56) != 4)
      {
        goto LABEL_54;
      }

      v30 = *a2;
      v31 = *(*a2 + 64);
      v41 = *(*a2 + 48);
      v42 = v31;
      v43[0] = *(v30 + 80);
      *(v43 + 9) = *(v30 + 89);
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v27, *(v30 + 16)), vceqq_f64(v28, *(v30 + 32))))) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    v10 = sub_188E80BB4(&v38, &v41);
    return v10 & 1;
  }

  if (*(a1 + 56))
  {
    if (v9 != 1)
    {
      if (*(a2 + 56) == 2)
      {
        sub_188A34624(0, &qword_1ED490230);
        v10 = sub_18A4A7C88();
        return v10 & 1;
      }

      goto LABEL_54;
    }

    if (*(a2 + 56) != 1)
    {
      goto LABEL_54;
    }

    v12 = a2[5];
    v11 = a2[6];
    v13 = *(a2 + 4);
    v14 = CGRectEqualToRect(*a1, *a2);
    v15 = v13 == v7 && v14;
    if (v6 != v12)
    {
      v15 = 0;
    }

    if (v8 == v11)
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    if (*(a2 + 56))
    {
      goto LABEL_54;
    }

    v26 = v2 == a2[1] && v4 == a2[2];
    v10 = *a2 == v3 && v26;
  }

  return v10 & 1;
}

double static UIShape.capsule.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 6;
  return result;
}

double static UIShape.circle.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 6;
  return result;
}

uint64_t static UIShape.fixedRect(_:cornerRadius:cornerCurve:maskedCorners:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  *(a3 + 32) = a8;
  *(a3 + 40) = result;
  *(a3 + 48) = a2;
  *(a3 + 56) = 1;
  return result;
}

void static UIShape.fixedRect(_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1;
  *(a1 + 56) = 1;
}

id static UIShape.path(_:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 56) = 2;
  return a1;
}

uint64_t UIShape.inset(by:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = v2[1];
  v10[0] = *v2;
  v10[1] = v5;
  v11[0] = v2[2];
  *(v11 + 9) = *(v2 + 41);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a2;
  *(v6 + 32) = a2;
  *(v6 + 40) = a2;
  v7 = v2[1];
  *(v6 + 48) = *v2;
  *(v6 + 64) = v7;
  *(v6 + 80) = v2[2];
  *(v6 + 89) = *(v2 + 41);
  *a1 = v6;
  *(a1 + 56) = 4;
  return sub_188B20550(v10, &v9);
}

uint64_t UIShape.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _UIShapeProviderBox();
  (*(v6 + 16))(v8, a1, a2);
  v9 = sub_188E8115C(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  *(a3 + 56) = 3;
  return result;
}

uint64_t sub_188E8115C(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 104) - 8) + 32))(v2 + *(*v2 + 120), a1);
  return v2;
}

uint64_t static UIShape.== infix(_:_:)(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_188E80BB4(v5, v7) & 1;
}

uint64_t UIShape.resolve(in:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v82 = a1[4];
  v83 = v4;
  *v84 = a1[6];
  *&v84[9] = *(a1 + 105);
  v5 = a1[1];
  v81[3] = *a1;
  v81[4] = v5;
  v6 = a1[3];
  v81[5] = a1[2];
  v81[6] = v6;
  v7 = *(v2 + 41);
  v9 = v2[1];
  v8 = v2[2];
  *v85 = *v2;
  *&v85[16] = v9;
  *v86 = v8;
  *&v86[9] = v7;
  if (v84[24])
  {
    v10 = *(&v82 + 1);
  }

  else
  {
    v10 = *&v82;
  }

  if (v84[24])
  {
    v11 = *&v83;
  }

  else
  {
    v11 = *(&v82 + 1);
  }

  if (v84[24])
  {
    v12 = *(&v83 + 1);
  }

  else
  {
    v12 = *&v83;
  }

  if (v84[24])
  {
    v13 = *v84;
  }

  else
  {
    v13 = *(&v83 + 1);
  }

  v14 = *v85;
  v15 = *&v86[8];
  LOBYTE(v16) = v86[24];
  if (v86[24] <= 2u)
  {
    if (v86[24])
    {
      if (v86[24] == 1)
      {
        LOBYTE(v16) = 0;
        v12 = *&v85[16];
        v13 = *&v85[24];
        v21 = *v86;
        v11 = *&v85[8];
      }

      else
      {
        sub_188B20550(v85, &v75);
        [*&v14 bounds];
        v11 = *&v15;
        v12 = v27;
        v13 = v28;
        LOBYTE(v16) = 1;
        LOBYTE(v75) = 1;
      }
    }

    else
    {
      v21 = *v85;
      v14 = v10;
      v15 = *&v85[8];
    }
  }

  else if (v86[24] > 4u)
  {
    if (v86[24] == 5)
    {
      v22 = *(*v85 + 32);
      v81[0] = *(*v85 + 16);
      v81[1] = v22;
      v23 = *(*v85 + 64);
      v81[2] = *(*v85 + 48);
      v24 = *(*v85 + 80);
      v25 = *(*v85 + 96);
      v69 = v23;
      v70 = v24;
      v71[0] = v25;
      *(v71 + 9) = *(*v85 + 105);
      sub_188B20550(v85, &v75);
      UIShape.resolve(in:)(&v75, a1);
      sub_188E81B18(v81, v67);
      v72 = v78;
      v73 = v79;
      *v74 = *v80;
      *&v74[9] = *&v80[9];
      v69 = v75;
      v70 = v76;
      v71[0] = v77[0];
      v71[1] = v77[1];
      sub_188E81D2C(&v69);
      v78 = v67[4];
      v79 = v67[5];
      *v80 = v68[0];
      *&v80[9] = *(v68 + 9);
      v75 = v67[0];
      v76 = v67[1];
      v77[0] = v67[2];
      v77[1] = v67[3];
      sub_188E81D5C(&v78, v66);
      sub_188E81D2C(&v75);
      sub_188B2040C(v85);
      goto LABEL_22;
    }

    v49 = vorrq_s8(vdupq_laneq_s64(*&v85[8], 1), *&v85[8]).u64[0];
    if (v49 | *v85 | *&v85[24] | *v86 | *&v86[8] | *&v86[16])
    {
      v16 = v49 | *&v85[24] | *v86 | *&v86[8] | *&v86[16];
      if (*v85 != 1 || v16)
      {
        if (*v85 != 2 || v16)
        {
          v89.origin.x = v10;
          v89.origin.y = v11;
          v89.size.width = v12;
          v89.size.height = v13;
          Width = CGRectGetWidth(v89);
          v90.origin.x = v10;
          v90.origin.y = v11;
          v90.size.width = v12;
          v90.size.height = v13;
          Height = CGRectGetHeight(v90);
          if (Height < Width)
          {
            Width = Height;
          }

          v60 = UIRectCenteredRect(0.0, 0.0, Width, Width, v10, v11, v12);
          v11 = v61;
          v12 = v62;
          v13 = v63;
          LOBYTE(v16) = 0;
          v21 = Width * 0.5;
          LOBYTE(v75) = 0;
          v14 = v60;
        }

        else
        {
          v87.origin.x = v10;
          v87.origin.y = v11;
          v87.size.width = v12;
          v87.size.height = v13;
          v56 = CGRectGetWidth(v87);
          v88.origin.x = v10;
          v88.origin.y = v11;
          v88.size.width = v12;
          v88.size.height = v13;
          v57 = CGRectGetHeight(v88);
          LOBYTE(v16) = 0;
          if (v57 >= v56)
          {
            v57 = v56;
          }

          v21 = v57 * 0.5;
          v14 = v10;
        }

        v15 = xmmword_18A64D710;
      }

      else
      {
        v14 = v10;
        v15 = xmmword_18A64D710;
        v21 = 0.0;
      }
    }

    else
    {
      sub_188E81D5C(&v82, &v75);
      v11 = *(&v82 + 1);
      v14 = *&v82;
      v13 = *(&v83 + 1);
      v12 = *&v83;
      v21 = *v84;
      v15 = *&v84[8];
      LOBYTE(v16) = v84[24];
    }
  }

  else
  {
    if (v86[24] == 3)
    {
      v17 = a1[5];
      v78 = a1[4];
      v79 = v17;
      *v80 = a1[6];
      *&v80[9] = *(a1 + 105);
      v18 = a1[1];
      v75 = *a1;
      v76 = v18;
      v19 = a1[3];
      v77[0] = a1[2];
      v77[1] = v19;
      v20 = *(**v85 + 80);
      sub_188B20550(v85, &v69);
      v20(&v69, &v75);
      sub_188B2040C(v85);
      v78 = v72;
      v79 = v73;
      *v80 = *v74;
      *&v80[9] = *&v74[9];
      v75 = v69;
      v76 = v70;
      v77[0] = v71[0];
      v77[1] = v71[1];
      sub_188E81D5C(&v78, v67);
      sub_188E81D2C(&v75);
LABEL_22:
      v11 = *(&v78 + 1);
      v14 = *&v78;
      v13 = *(&v79 + 1);
      v12 = *&v79;
      v21 = *v80;
      v15 = *&v80[8];
      LOBYTE(v16) = v80[24];
      goto LABEL_54;
    }

    v30 = *(*v85 + 16);
    v29 = *(*v85 + 24);
    v32 = *(*v85 + 32);
    v31 = *(*v85 + 40);
    v33 = *(*v85 + 64);
    v69 = *(*v85 + 48);
    v70 = v33;
    v71[0] = *(*v85 + 80);
    *(v71 + 9) = *(*v85 + 89);
    sub_188B20550(v85, &v75);
    UIShape.resolve(in:)(&v75, a1);
    v36 = *(&v78 + 1);
    v35 = *&v78;
    v38 = v79;
    v37 = *v80;
    v39 = *&v80[8];
    v40 = *&v80[16];
    if (v80[24])
    {
      v41 = v78;
      v42 = UIRectInset(v36, *&v38, *(&v38 + 1), v37, v30, v31, v32, v29);
      v44 = v43;
      v46 = v45;
      v37 = v47;
      v48 = 1;
      LOBYTE(v69) = 1;
    }

    else
    {
      v50 = UIRectInset(*&v78, *(&v78 + 1), *&v79, *(&v79 + 1), v30, v31, v32, v29);
      v42 = v51;
      v44 = v52;
      v46 = v53;
      if (v37 > 0.0)
      {
        if (v32 >= v30)
        {
          v54 = v30;
        }

        else
        {
          v54 = v32;
        }

        if (v29 < v54)
        {
          v54 = v29;
        }

        if (v31 < v54)
        {
          v54 = v31;
        }

        v55 = v37 - v54;
        if (v55 < 0.0)
        {
          v37 = 0.0;
        }

        else
        {
          v37 = v55;
        }
      }

      v48 = 0;
      v35 = v50;
    }

    sub_188B20550(&v75, &v69);
    sub_188E81D2C(&v75);
    v69 = v75;
    v70 = v76;
    v71[0] = v77[0];
    *(v71 + 9) = *(v77 + 9);
    *&v72 = v35;
    *(&v72 + 1) = v42;
    *&v73 = v44;
    *(&v73 + 1) = v46;
    *v74 = v37;
    *&v74[8] = v39;
    *&v74[16] = v40;
    v74[24] = v48;
    sub_188E81D5C(&v72, v67);
    sub_188E81D2C(&v69);
    sub_188B2040C(v85);
    v11 = *(&v72 + 1);
    v14 = *&v72;
    v13 = *(&v73 + 1);
    v12 = *&v73;
    v21 = *v74;
    v15 = *&v74[8];
    LOBYTE(v16) = v74[24];
  }

LABEL_54:
  v64 = *&v85[16];
  *a2 = *v85;
  *(a2 + 16) = v64;
  *(a2 + 32) = *v86;
  *(a2 + 41) = *&v86[9];
  *(a2 + 64) = v14;
  *(a2 + 72) = v11;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  *(a2 + 96) = v21;
  *(a2 + 104) = v15;
  *(a2 + 120) = v16;
  return sub_188B20550(v85, &v75);
}

uint64_t UIShape.ResolutionContext.contentShape.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[6];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 105);
  v5 = *(v16 + 9);
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_188E81D94(v11, &v10);
}

__n128 UIShape.ResolutionContext.contentShape.setter(uint64_t a1)
{
  v3 = v1[5];
  v10[4] = v1[4];
  v10[5] = v3;
  v11[0] = v1[6];
  *(v11 + 9) = *(v1 + 105);
  v4 = v1[1];
  v10[0] = *v1;
  v10[1] = v4;
  v5 = v1[3];
  v10[2] = v1[2];
  v10[3] = v5;
  sub_188E81DCC(v10);
  v6 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v6;
  v1[6] = *(a1 + 96);
  *(v1 + 105) = *(a1 + 105);
  v7 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v9;
  return result;
}

double UIShape.Resolved.boundingRect.getter()
{
  if (*(v0 + 120))
  {
    return *(v0 + 72);
  }

  else
  {
    return *(v0 + 64);
  }
}

uint64_t UIShape.Resolved.inset(by:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v11 = *(v5 + 16);
  v33[0] = *v5;
  v33[1] = v11;
  v34[0] = *(v5 + 32);
  *(v34 + 9) = *(v5 + 41);
  v12 = *(v5 + 64);
  v14 = *(v5 + 72);
  v13 = *(v5 + 80);
  v16 = *(v5 + 88);
  v15 = *(v5 + 96);
  v31 = *(v5 + 104);
  if (*(v5 + 120))
  {
    v17 = *&v12;
    v18 = UIRectInset(v14, v13, v16, v15, a2, a5, a4, a3);
    v15 = v21;
    v22 = 1;
    v32[0] = 1;
  }

  else
  {
    v23 = UIRectInset(v12, v14, v13, v16, a2, a5, a4, a3);
    v18 = v24;
    v19 = v25;
    v20 = v26;
    if (v15 > 0.0)
    {
      if (a4 >= a2)
      {
        v27 = a2;
      }

      else
      {
        v27 = a4;
      }

      if (v27 > a3)
      {
        v27 = a3;
      }

      if (v27 > a5)
      {
        v27 = a5;
      }

      v28 = v15 - v27;
      if (v28 < 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v28;
      }
    }

    v22 = 0;
    v12 = v23;
  }

  v29 = *(v5 + 16);
  *a1 = *v5;
  *(a1 + 16) = v29;
  *(a1 + 32) = *(v5 + 32);
  *(a1 + 41) = *(v5 + 41);
  *(a1 + 64) = v12;
  *(a1 + 72) = v18;
  *(a1 + 80) = v19;
  *(a1 + 88) = v20;
  *(a1 + 96) = v15;
  *(a1 + 104) = v31;
  *(a1 + 120) = v22;
  return sub_188B20550(v33, v32);
}

uint64_t sub_188E81B18@<X0>(CGFloat *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v10 = v2[1];
  v33 = *v2;
  v34 = v10;
  v35[0] = v2[2];
  *(v35 + 9) = *(v2 + 41);
  v11 = *(v2 + 105);
  v13 = v2[5];
  v12 = v2[6];
  v14 = v2[4];
  v36[0] = v14;
  v36[1] = v13;
  *v37 = v12;
  *&v37[9] = v11;
  v15 = v14;
  v16 = v13;
  size = *&v12;
  size_8 = *&v37[8];
  if (HIBYTE(v11))
  {
    v27 = *(&v13 + 1);
    [v14 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E890);
    swift_dynamicCast();
    v17 = *&v32;
    v31.a = v5;
    v31.b = v4;
    v31.c = v6;
    v31.d = v7;
    v31.tx = v9;
    v31.ty = v8;
    [v32 applyTransform_];
    v31.a = v5;
    v31.b = v4;
    v31.c = v6;
    v31.d = v7;
    v31.tx = v9;
    v31.ty = v8;
    v38.origin.x = *(&v15 + 1);
    *&v38.origin.y = v16;
    v38.size.width = v27;
    v38.size.height = size;
    v39 = CGRectApplyAffineTransform(v38, &v31);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    sub_188E85138(v36);
    v22 = 1;
    LOBYTE(v31.a) = 1;
  }

  else
  {
    v23 = v14;
    v31.a = v5;
    v31.b = v4;
    v31.c = v6;
    v31.d = v7;
    v31.tx = v9;
    v31.ty = v8;
    v24 = *(&v14 + 1);
    v40 = CGRectApplyAffineTransform(*(&v13 - 1), &v31);
    v28 = v40.origin.x;
    v40.origin.x = v9;
    x = v40.origin.y;
    y = v40.size.width;
    width = v40.size.height;
    v31.a = v5;
    v31.b = v4;
    v31.c = v6;
    v31.d = v7;
    v31.tx = v40.origin.x;
    v31.ty = v8;
    v40.origin.x = size;
    v40.origin.y = size;
    *&height = *&CGSizeApplyAffineTransform(v40.origin, &v31);
    v22 = 0;
    LOBYTE(v31.a) = 0;
    v17 = v28;
  }

  v25 = v34;
  *a2 = v33;
  *(a2 + 16) = v25;
  *(a2 + 32) = v35[0];
  *(a2 + 41) = *(v35 + 9);
  *(a2 + 64) = v17;
  *(a2 + 72) = x;
  *(a2 + 80) = y;
  *(a2 + 88) = width;
  *(a2 + 96) = height;
  *(a2 + 104) = size_8;
  *(a2 + 120) = v22;
  return sub_188B20550(&v33, &v31);
}

uint64_t UIShape.Resolved.shape.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_188B20550(v7, &v6);
}

BOOL sub_188E81E48(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_188E849EC(v5, v7);
}

id UIShape.Resolved.path.getter()
{
  v1 = *(v0 + 64);
  if (*(v0 + 120))
  {

    return v1;
  }

  else
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 64);
    v10 = objc_opt_self();
    if (v6 == 0.0)
    {
      v11 = [v10 bezierPathWithRect_];

      return v11;
    }

    else
    {
      result = [v10 _roundedRectBezierPath_withRoundedCorners_cornerRadius_segments_legacyCorners_];
      if (!result)
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t UIShape.Resolved.inset(by:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = *(v2 + 16);
  v25[0] = *v2;
  v25[1] = v5;
  v26[0] = *(v2 + 32);
  *(v26 + 9) = *(v2 + 41);
  v6 = *(v2 + 64);
  v8 = *(v2 + 72);
  v7 = *(v2 + 80);
  v10 = *(v2 + 88);
  v9 = *(v2 + 96);
  v23 = *(v2 + 104);
  if (*(v2 + 120))
  {
    v11 = *&v6;
    v12 = UIRectInset(v8, v7, v10, v9, a2, a2, a2, a2);
    v16 = 1;
    v24[0] = 1;
  }

  else
  {
    v17 = UIRectInset(v6, v8, v7, v10, a2, a2, a2, a2);
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v16 = 0;
    v15 = v9 - a2;
    if (v9 - a2 < 0.0)
    {
      v15 = 0.0;
    }

    if (v9 <= 0.0)
    {
      v15 = v9;
    }

    v6 = v17;
  }

  v21 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v21;
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 41) = *(v2 + 41);
  *(a1 + 64) = v6;
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  *(a1 + 104) = v23;
  *(a1 + 120) = v16;
  return sub_188B20550(v25, v24);
}

void sub_188E8210C(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[5];
  v48 = a1[4];
  v49 = v5;
  *v50 = a1[6];
  *&v50[9] = *(a1 + 105);
  v6 = v2[5];
  v54 = v2[4];
  v55 = v6;
  *v56 = v2[6];
  *&v56[9] = *(v2 + 105);
  v7 = v2[1];
  v51 = *v2;
  v52 = v7;
  v8 = v2[3];
  v53[0] = v2[2];
  v53[1] = v8;
  if (v56[24])
  {
    v10 = *(&v48 + 1);
    v9 = v48;
    v11 = *(&v49 + 1);
    v12 = *&v49;
    v13 = *v50;
    v15 = *&v50[8];
    v14 = *&v50[16];
    v16 = v2[5];
    v33 = v2[4];
    v34 = v16;
    v35[0] = v2[6];
    *(v35 + 9) = *(v2 + 105);
    v17 = v2[1];
    v29 = *v2;
    v30 = v17;
    v18 = v2[3];
    v31 = v2[2];
    v32 = v18;
    if ((v50[24] & 1) == 0)
    {
      v19 = *&v48;
      v20 = objc_opt_self();
      if (*v50 == 0.0)
      {
        sub_188E81D5C(&v48, v36);
        v21 = [v20 bezierPathWithRect_];
LABEL_11:
        v9 = v21;
        goto LABEL_16;
      }

      sub_188E81D5C(&v48, v36);
      v25 = [v20 _roundedRectBezierPath_withRoundedCorners_cornerRadius_segments_legacyCorners_];
      v9 = v25;
      if (v25)
      {
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_15;
    }

LABEL_7:
    sub_188E81D5C(&v48, v36);
LABEL_16:
    sub_188E828B4(v9, a2);

    return;
  }

  v44 = v54;
  v45 = v55;
  v46 = *v56;
  v47 = *&v56[8];
  v11 = *&v48;
  if (v50[24])
  {
    v9 = v48;
    v22 = v2[5];
    v33 = v2[4];
    v34 = v22;
    v35[0] = v2[6];
    *(v35 + 9) = *(v2 + 105);
    v23 = v2[1];
    v29 = *v2;
    v30 = v23;
    v24 = v2[3];
    v31 = v2[2];
    v32 = v24;
    goto LABEL_7;
  }

  v13 = *(&v48 + 1);
  v12 = *(&v49 + 1);
  v10 = *&v49;
  v19 = *v50;
  v3 = *&v50[8];
  v9 = *&v50[16];
  v40[0] = v48;
  v40[1] = v49;
  v41 = *v50;
  v42 = *&v50[8];
  v43 = *&v50[16];
  sub_188E82438(v40, v36);
  if ((v39 & 1) == 0)
  {
    v26 = v37;
    v27 = v52;
    *a2 = v51;
    *(a2 + 16) = v27;
    *(a2 + 32) = v53[0];
    *(a2 + 41) = *(v53 + 9);
    v28 = v36[1];
    *(a2 + 64) = v36[0];
    *(a2 + 80) = v28;
    *(a2 + 96) = v26;
    *(a2 + 104) = v38;
    *(a2 + 120) = 0;
    sub_188B20550(&v51, &v29);
    return;
  }

  v33 = v54;
  v34 = v55;
  v35[0] = *v56;
  *(v35 + 9) = *&v56[9];
  v29 = v51;
  v30 = v52;
  v31 = v53[0];
  v32 = v53[1];
  v25 = objc_opt_self();
  if (v19 == 0.0)
  {
    v21 = [v25 bezierPathWithRect_];
    goto LABEL_11;
  }

LABEL_15:
  v9 = [v25 _roundedRectBezierPath_withRoundedCorners_cornerRadius_segments_legacyCorners_];
  if (v9)
  {
    goto LABEL_16;
  }

  __break(1u);
}

void sub_188E82438(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  y = *(v2 + 8);
  v6 = *(v2 + 24);
  rect1 = *(v2 + 16);
  v59 = *(v2 + 32);
  v8 = *(v2 + 40);
  v7 = *(v2 + 48);
  v9 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = *(a1 + 32);
  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  v61.origin.x = *a1;
  v61.origin.y = v10;
  v61.size.width = v12;
  v61.size.height = v11;
  if (CGRectIsEmpty(v61))
  {
    v8 = 0;
    v16 = 0;
    v7 = -1;
LABEL_3:
    x = 0.0;
    y = 0.0;
    width = 0.0;
    height = 0.0;
    v20 = 0.0;
    goto LABEL_82;
  }

  v57 = v13;
  v60 = v4;
  v62.origin.x = v4;
  v62.origin.y = y;
  v21 = v12;
  v62.size.width = rect1;
  height = v6;
  v62.size.height = v6;
  v66.origin.x = v9;
  v66.origin.y = v10;
  v66.size.width = v12;
  v66.size.height = v11;
  if (CGRectEqualToRect(v62, v66))
  {
    v20 = v59;
    x = v60;
    width = rect1;
    goto LABEL_6;
  }

  v56 = v9;
  v23 = v9;
  v24 = v10;
  v25 = v12;
  v26 = v11;
  width = rect1;
  v20 = v59;
  if (v14)
  {
    v23 = v56;
    v24 = v10;
    v25 = v12;
    v26 = v11;
    if (v57 > 0.0)
    {
      if (v14)
      {
        if ((v14 & 2) == 0)
        {
          if ((v14 & 4) == 0)
          {
            v27 = 3;
            if ((v14 & 8) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_29;
          }

          v27 = 7;
LABEL_27:
          if ((v14 & 8) == 0 || (v27 & 0xC) == 0xCLL)
          {
            goto LABEL_30;
          }

LABEL_29:
          v27 |= 0xCu;
LABEL_30:
          v23 = UIRectInsetEdges(v27, v56, v10, v12, v11, v57 + v57 / -1.41421356);
          goto LABEL_31;
        }

        v27 = 11;
      }

      else
      {
        if ((v14 & 2) == 0)
        {
          if ((v14 & 4) == 0)
          {
            v27 = 0;
            if ((v14 & 8) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_29;
          }

          v27 = 6;
          goto LABEL_27;
        }

        v27 = 9;
      }

      if ((v14 & 4) != 0)
      {
        v27 = 15;
      }

      goto LABEL_27;
    }
  }

LABEL_31:
  v28 = v59 <= 0.0 || v7 == 0;
  v29 = !v28;
  v30 = v60;
  v31 = y;
  v32 = rect1;
  v33 = height;
  if (!v28)
  {
    v53 = v26;
    r2 = v11;
    v54 = v24;
    if (v7)
    {
      if ((v7 & 2) == 0)
      {
        if ((v7 & 4) == 0)
        {
          v39 = v10;
          v35 = v25;
          v36 = v39;
          v37 = v23;
          v38 = 3;
LABEL_45:
          v40 = v60;
          if ((v7 & 8) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        }

        v38 = 7;
        goto LABEL_53;
      }

      v38 = 11;
    }

    else
    {
      if ((v7 & 2) == 0)
      {
        if ((v7 & 4) == 0)
        {
          v34 = v10;
          v35 = v25;
          v36 = v34;
          v37 = v23;
          v38 = 0;
          goto LABEL_45;
        }

        v38 = 6;
LABEL_53:
        v40 = v60;
        goto LABEL_54;
      }

      v38 = 9;
    }

    v40 = v60;
    if ((v7 & 4) != 0)
    {
      v38 = 15;
    }

LABEL_54:
    v36 = v10;
    v35 = v25;
    v37 = v23;
    if ((v7 & 8) == 0 || (v38 & 0xC) == 0xCLL)
    {
      goto LABEL_57;
    }

LABEL_56:
    v38 |= 0xCu;
LABEL_57:
    v30 = UIRectInsetEdges(v38, v40, y, rect1, height, v59 + v59 / -1.41421356);
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v23 = v37;
    v44 = v36;
    v21 = v12;
    v11 = r2;
    v45 = v44;
    v25 = v35;
    v10 = v45;
    v26 = v53;
    v24 = v54;
  }

  if (CGRectContainsRect(*&v23, *&v30))
  {
    v16 = 0;
    x = v60;
    goto LABEL_82;
  }

  v46 = v21;
  v47 = v60;
  v48 = y;
  v49 = rect1;
  v50 = height;
  if ((v29 & 1) == 0)
  {
    goto LABEL_80;
  }

  if ((v7 & 1) == 0)
  {
    v51 = v60;
    if ((v7 & 2) == 0)
    {
      if ((v7 & 4) == 0)
      {
        v52 = 0;
        if ((v7 & 8) == 0)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      }

      v52 = 6;
      goto LABEL_76;
    }

    v52 = 9;
    goto LABEL_72;
  }

  v51 = v60;
  if ((v7 & 2) != 0)
  {
    v52 = 11;
LABEL_72:
    if ((v7 & 4) != 0)
    {
      v52 = 15;
    }

    goto LABEL_76;
  }

  if ((v7 & 4) == 0)
  {
    v52 = 3;
    if ((v7 & 8) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  v52 = 7;
LABEL_76:
  if ((v7 & 8) == 0 || (v52 & 0xC) == 0xCLL)
  {
    goto LABEL_79;
  }

LABEL_78:
  v52 |= 0xCu;
LABEL_79:
  v47 = UIRectInsetEdges(v52, v51, y, rect1, height, v59 + v59 / -1.41421356);
LABEL_80:
  x = v56;
  v67.origin.x = v56;
  v67.origin.y = v10;
  v67.size.width = v46;
  v67.size.height = v11;
  if (CGRectContainsRect(*&v47, v67))
  {
    v16 = 0;
    y = v10;
    width = v46;
    height = v11;
    v20 = v57;
    v8 = v15;
    v7 = v14;
    goto LABEL_82;
  }

  v63.origin.x = v56;
  v63.origin.y = v10;
  v63.size.width = v46;
  v63.size.height = v11;
  v68.size.width = rect1;
  v68.origin.x = v60;
  v68.origin.y = y;
  v68.size.height = height;
  if (!CGRectContainsRect(v63, v68))
  {
    v8 = 0;
    v7 = 0;
    v16 = 1;
    goto LABEL_3;
  }

  v64.origin.x = v60;
  v64.origin.y = y;
  v64.size.width = rect1;
  v64.size.height = height;
  v69.origin.x = v56;
  v69.origin.y = v10;
  v69.size.width = v46;
  v69.size.height = v11;
  v65 = CGRectIntersection(v64, v69);
  x = v65.origin.x;
  y = v65.origin.y;
  width = v65.size.width;
  height = v65.size.height;
LABEL_6:
  v16 = 0;
  if (v20 >= v57)
  {
    v22 = -1;
  }

  else
  {
    v20 = v57;
    v8 = v15;
    v22 = v14;
  }

  v7 &= v22;
LABEL_82:
  *a2 = x;
  *(a2 + 8) = y;
  *(a2 + 16) = width;
  *(a2 + 24) = height;
  *(a2 + 32) = v20;
  *(a2 + 40) = v8;
  *(a2 + 48) = v7;
  *(a2 + 56) = v16;
}

id sub_188E828B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_18A4A2C58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[5];
  v47 = v2[4];
  v48 = v9;
  v49[0] = v2[6];
  *(v49 + 9) = *(v2 + 105);
  v10 = v2[1];
  v43 = *v2;
  v44 = v10;
  v11 = v2[3];
  v45 = v2[2];
  v46 = v11;
  if (BYTE8(v49[1]))
  {
    v12 = v47;
LABEL_5:
    v19 = v12;
    goto LABEL_6;
  }

  v13 = *(&v47 + 1);
  v14 = v48;
  v16 = v49[0];
  v15 = *&v49[1];
  v17 = *&v47;
  v18 = objc_opt_self();
  if (*&v16 == 0.0)
  {
    v12 = [v18 bezierPathWithRect_];
    goto LABEL_5;
  }

  result = [v18 _roundedRectBezierPath_withRoundedCorners_cornerRadius_segments_legacyCorners_];
  v19 = result;
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_6:
  v20 = [v19 CGPath];

  v21 = [a1 CGPath];
  (*(v6 + 104))(v8, *MEMORY[0x1E695EEB8], v5);
  v22 = a1;
  v23 = sub_18A4A7CE8();

  (*(v6 + 8))(v8, v5);
  v24 = [objc_opt_self() bezierPathWithCGPath_];

  if (BYTE8(v49[1]))
  {
    v25 = *(&v47 + 1);
  }

  else
  {
    v25 = *&v47;
  }

  if (BYTE8(v49[1]))
  {
    v26 = *&v48;
  }

  else
  {
    v26 = *(&v47 + 1);
  }

  if (BYTE8(v49[1]))
  {
    v27 = *(&v48 + 1);
  }

  else
  {
    v27 = *&v48;
  }

  if (BYTE8(v49[1]))
  {
    v28 = *v49;
  }

  else
  {
    v28 = *(&v48 + 1);
  }

  [v22 bounds];
  v52.origin.x = v29;
  v52.origin.y = v30;
  v52.size.width = v31;
  v52.size.height = v32;
  v50.origin.x = v25;
  v50.origin.y = v26;
  v50.size.width = v27;
  v50.size.height = v28;
  v51 = CGRectIntersection(v50, v52);
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  *&v51.origin.y = v48;
  *(a2 + 64) = v47;
  *(a2 + 80) = *&v51.origin.y;
  *(a2 + 96) = v49[0];
  *(a2 + 112) = *&v49[1];
  *&v51.origin.y = v44;
  *a2 = v43;
  *(a2 + 16) = *&v51.origin.y;
  *&v51.origin.y = v46;
  *(a2 + 32) = v45;
  *(a2 + 48) = *&v51.origin.y;
  v40 = 1;
  v41[0] = v47;
  v41[1] = v48;
  v42[0] = v49[0];
  *(v42 + 9) = *(v49 + 9);
  sub_188E81D94(&v43, &v39);
  result = sub_188E85138(v41);
  *(a2 + 64) = v24;
  *(a2 + 72) = x;
  *(a2 + 80) = y;
  *(a2 + 88) = width;
  *(a2 + 96) = height;
  *(a2 + 120) = v40;
  return result;
}

uint64_t sub_188E82C08@<X0>(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[1];
  v31 = *v3;
  v32 = v7;
  v33[0] = v3[2];
  *(v33 + 9) = *(v3 + 41);
  v8 = v3[5];
  v34[0] = v3[4];
  v34[1] = v8;
  *v35 = v3[6];
  *&v35[9] = *(v3 + 105);
  v9 = *&v34[0];
  v11 = v8;
  v10 = *v35;
  v29 = *&v35[8];
  if (v35[24])
  {
    v12 = *&v34[0];
    v13 = [v12 _bezierPathConvertedFromCoordinateSpace_toCoordinateSpace_];
    if (v13)
    {
      v9 = v13;
    }

    else
    {
      v22 = v12;
    }

    [a1 convertRect:a2 toCoordinateSpace:{*(v34 + 1), v11, *v35, *&v35[16]}];
    v15 = v23;
    v17 = v24;
    v19 = v25;
    v10 = v26;
    sub_188E85138(v34);
    v20 = 1;
    v30[0] = 1;
  }

  else
  {
    [a1 convertRect:a2 toCoordinateSpace:{v34[0], v8}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = 0;
    v30[0] = 0;
    v9 = v21;
  }

  v27 = v32;
  *a3 = v31;
  *(a3 + 16) = v27;
  *(a3 + 32) = v33[0];
  *(a3 + 41) = *(v33 + 9);
  *(a3 + 64) = v9;
  *(a3 + 72) = v15;
  *(a3 + 80) = v17;
  *(a3 + 88) = v19;
  *(a3 + 96) = v10;
  *(a3 + 104) = v29;
  *(a3 + 120) = v20;
  return sub_188B20550(&v31, v30);
}

double sub_188E82D9C()
{
  *&xmmword_1EA995070 = 1;
  result = 0.0;
  *(&xmmword_1EA995070 + 8) = 0u;
  unk_1EA995088 = 0u;
  *(&xmmword_1EA995090 + 8) = 0u;
  byte_1EA9950A8 = 6;
  xmmword_1EA9950B0 = 0u;
  unk_1EA9950C0 = 0u;
  xmmword_1EA9950D0 = 0u;
  qword_1EA9950E0 = -1;
  byte_1EA9950E8 = 0;
  return result;
}

double UIShape.ResolutionContext.init(view:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = [a1 layer];
  sub_188E83750(v9);

  v5 = v13;
  a2[4] = v12;
  a2[5] = v5;
  a2[6] = v14[0];
  *(a2 + 105) = *(v14 + 9);
  v6 = v9[1];
  *a2 = v9[0];
  a2[1] = v6;
  result = *&v10;
  v8 = v11;
  a2[2] = v10;
  a2[3] = v8;
  return result;
}

uint64_t sub_188E82FC4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v12 - v6;
  v8 = v5[5];
  v12[4] = v5[4];
  v12[5] = v8;
  v13[0] = v5[6];
  *(v13 + 9) = *(v5 + 105);
  v9 = v5[1];
  v12[0] = *v5;
  v12[1] = v9;
  v10 = v5[3];
  v12[2] = v5[2];
  v12[3] = v10;
  (*(v4 + 16))(v12 - v6, v1 + *(v2 + 120), v3);
  (*(*(v2 + 112) + 16))(v12, v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_188E83128(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = *(v4 + 16);
    v12(v9, &v1[*(v2 + 120)], v3);
    v12(v6, (v11 + *(*v11 + 120)), v3);
    v13 = sub_18A4A7248();
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_188E83344()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));

  return swift_deallocClassInstance();
}

void sub_188E833F0(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v19.origin.x = *v1;
  v19.origin.y = v4;
  v19.size.width = v5;
  v19.size.height = v6;
  Width = CGRectGetWidth(v19);
  v20.origin.x = v3;
  v20.origin.y = v4;
  v20.size.width = v5;
  v20.size.height = v6;
  Height = CGRectGetHeight(v20);
  if (Height >= Width)
  {
    v9 = Width;
  }

  else
  {
    v9 = Height;
  }

  v10 = *(v1 + 48);
  if ((~v10 & 3) == 0 || (*(v1 + 48) & 0xCLL) == 12)
  {
    v21.origin.x = v3;
    v21.origin.y = v4;
    v21.size.width = v5;
    v21.size.height = v6;
    v12 = CGRectGetWidth(v21) * 0.5;
    if (v12 < v9)
    {
      v9 = v12;
    }
  }

  if ((~v10 & 5) == 0 || (v10 & 0xA) == 10)
  {
    v22.origin.x = v3;
    v22.origin.y = v4;
    v22.size.width = v5;
    v22.size.height = v6;
    v14 = CGRectGetHeight(v22) * 0.5;
    if (v14 < v9)
    {
      v9 = v14;
    }
  }

  v15 = *(v1 + 40);
  v16 = *(v1 + 32);
  if (v10 == -1 && v9 <= v16)
  {
    v23.origin.x = v3;
    v23.origin.y = v4;
    v23.size.width = v5;
    v23.size.height = v6;
    v17 = CGRectGetWidth(v23);
    v24.origin.x = v3;
    v24.origin.y = v4;
    v24.size.width = v5;
    v24.size.height = v6;
    if (v17 == CGRectGetHeight(v24))
    {
      v15 = 1;
    }
  }

  if (v9 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v9;
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  if (v18 < 0.0)
  {
    v18 = 0.0;
  }

  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v18;
  *(a1 + 40) = v15;
  *(a1 + 48) = v10;
}

BOOL sub_188E8356C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a2 + 32);
  v7 = *(a2 + 40);
  v6 = *(a2 + 48);
  v8 = CGRectEqualToRect(*a1, *a2);
  result = 0;
  if (v8 && v2 == v5 && v4 == v7)
  {
    return v3 == v6;
  }

  return result;
}

void sub_188E835DC(uint64_t a1@<X8>)
{
  v3 = [v1 mask];
  if (v3)
  {
    v21 = v3;
    sub_188E835DC();
  }

  else
  {
    [v1 cornerRadius];
    if (v4 > 0.0 && [v1 maskedCorners])
    {
      [v1 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [v1 cornerRadius];
      v14 = v13;
      v15 = sub_188FEB9E4([v1 cornerCurve]);
      v16 = sub_188FEBB18([v1 maskedCorners]);
      *a1 = v6;
      *(a1 + 8) = v8;
      *(a1 + 16) = v10;
      *(a1 + 24) = v12;
      *(a1 + 32) = v14;
      *(a1 + 40) = v15;
      *(a1 + 48) = v16;
    }

    else
    {
      [v1 bounds];
      *a1 = v17;
      *(a1 + 8) = v18;
      *(a1 + 16) = v19;
      *(a1 + 24) = v20;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = -1;
    }

    *(a1 + 56) = 1;
  }
}

uint64_t sub_188E83750@<X0>(uint64_t a1@<X8>)
{
  sub_188E835DC(v12);
  [v1 bounds];
  v14 = 0;
  *v8 = 1;
  memset(&v8[8], 0, 48);
  v8[56] = 6;
  *&v9 = v3;
  *(&v9 + 1) = v4;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  *v11 = 0uLL;
  *&v11[16] = -1;
  v11[24] = 0;
  UIShape.resolve(in:)(v8, a1);
  v15[4] = v9;
  v15[5] = v10;
  v16[0] = *v11;
  *(v16 + 9) = *&v11[9];
  v15[0] = *v8;
  v15[1] = *&v8[16];
  v15[2] = *&v8[32];
  v15[3] = *&v8[48];
  sub_188E81DCC(v15);
  v17[0] = v12[0];
  v17[1] = v12[1];
  v18[0] = v13[0];
  *(v18 + 9) = *(v13 + 9);
  return sub_188B2040C(v17);
}

void sub_188E83854(uint64_t a1)
{
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  v7 = *(a1 + 96);
  v6 = *(a1 + 104);
  v8 = *(a1 + 112);
  if (*(a1 + 120) != 1)
  {
    v21.a = *(a1 + 64);
    v21.b = v2;
    v21.c = v5;
    v21.d = v4;
    v21.tx = v7;
    v21.ty = v6;
    v22 = v8;
    sub_188E83AF4();
    return;
  }

  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  v9 = v3;
  [v1 setFrame_];
  [v1 setCornerRadius_];
  if (v2 == 0.0 && v5 == 0.0)
  {
    v10 = v9;
  }

  else
  {
    [v9 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E890);
    swift_dynamicCast();
    v10 = v20;
    CGAffineTransformMakeTranslation(&v21, -v2, -v5);
    [v20 applyTransform_];
  }

  v11 = [v1 mask];
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

LABEL_11:
    v16 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
    v17 = [v10 CGPath];
    [v16 setPath_];

    [v1 setMask_];
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v10 CGPath];
  [v14 setPath_];

LABEL_12:
  sub_188E85168(v3, *&v2, *&v5, *&v4, *&v7, v18, v19, 1);
}

id sub_188E83AF4()
{
  v1 = v0;
  sub_188E833F0(v6);
  [v0 setFrame_];
  v2 = v7;
  if (v7 > 0.0)
  {
    [v0 setMasksToBounds_];
  }

  [v0 setCornerRadius_];
  v3 = MEMORY[0x1E69796E0];
  if (v8 != 1)
  {
    v3 = MEMORY[0x1E69796E8];
  }

  v4 = *v3;
  [v1 setCornerCurve_];

  [v1 setMaskedCorners_];

  return [v1 setMask_];
}

uint64_t sub_188E83BF8()
{
  v1 = v0;
  v2 = [v0 layer];
  sub_188E83750(&v11);

  UIShape.resolve(in:)(&v11, v7);
  v9[4] = v15;
  v9[5] = v16;
  v10[0] = v17[0];
  *(v10 + 9) = *(v17 + 9);
  v9[0] = v11;
  v9[1] = v12;
  v9[2] = v13;
  v9[3] = v14;
  sub_188E81DCC(v9);
  v15 = v7[4];
  v16 = v7[5];
  v17[0] = v8[0];
  *(v17 + 9) = *(v8 + 9);
  v11 = v7[0];
  v12 = v7[1];
  v13 = v7[2];
  v14 = v7[3];
  v3 = [v1 layer];
  v5[4] = v15;
  v5[5] = v16;
  v6[0] = v17[0];
  *(v6 + 9) = *(v17 + 9);
  v5[0] = v11;
  v5[1] = v12;
  v5[2] = v13;
  v5[3] = v14;
  sub_188E83854(v5);

  return sub_188E81D2C(&v11);
}

void sub_188E83D28(__int128 *a1)
{
  v2 = a1[1];
  v42[0] = *a1;
  v42[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  *v43 = a1[2];
  *&v43[9] = *(a1 + 41);
  v5 = v1[1];
  v44[0] = *v1;
  v44[1] = v5;
  v7 = *v1;
  v6 = v1[1];
  *v45 = v1[2];
  *&v45[9] = *(v1 + 41);
  v36 = v7;
  v37 = v6;
  v38 = v1[2];
  *&v35[7] = v4;
  v39 = *(v1 + 6);
  v8 = v45[24];
  *&v35[23] = v3;
  *&v35[39] = a1[2];
  *&v35[55] = *(a1 + 6);
  v9 = v43[24];
  if (v45[24] == 255)
  {
    if (v43[24] == 255)
    {
      v11 = v1[1];
      v28 = *v1;
      v29 = v11;
      *v30 = v1[2];
      *&v30[16] = *(v1 + 6);
      v30[24] = -1;
      sub_188E850C8(v44, v40);
      sub_188E850C8(v42, v40);
      sub_188A3F5FC(&v28, &qword_1EA934C40);
      return;
    }

    sub_188E850C8(v44, &v28);
    sub_188E850C8(v42, &v28);
    goto LABEL_9;
  }

  v10 = v1[2];
  v26 = v1[1];
  *v27 = v10;
  *&v27[16] = *(v1 + 6);
  v25 = *v1;
  v27[24] = v45[24];
  v22 = v25;
  v23 = v26;
  v24[0] = v10;
  *(v24 + 9) = *&v27[9];
  if (v43[24] == 255)
  {
    v28 = v25;
    v29 = v26;
    *v30 = *v27;
    *&v30[9] = *&v27[9];
    sub_188E850C8(v44, v40);
    sub_188E850C8(v42, v40);
    sub_188E850C8(&v25, v40);
    sub_188B2040C(&v28);
LABEL_9:
    v28 = v36;
    v29 = v37;
    *v30 = v38;
    *&v30[16] = v39;
    v30[24] = v8;
    v31 = *v35;
    v32 = *&v35[16];
    *v33 = *&v35[32];
    *&v33[15] = *&v35[47];
    v34 = v9;
    sub_188A3F5FC(&v28, &qword_1EA934C48);
    goto LABEL_10;
  }

  v12 = a1[2];
  v20 = a1[1];
  *v21 = v12;
  *&v21[16] = *(a1 + 6);
  v19 = *a1;
  v21[24] = v43[24];
  v28 = v19;
  v29 = v20;
  *v30 = v12;
  *&v30[9] = *&v21[9];
  *(v41 + 9) = *&v27[9];
  v40[1] = v26;
  v41[0] = *v27;
  v40[0] = v25;
  sub_188E850C8(v44, v16);
  sub_188E850C8(v42, v16);
  sub_188E850C8(&v25, v16);
  v13 = sub_188E80BB4(v40, &v28);
  sub_188A3F5FC(&v19, &qword_1EA934C40);
  v14[0] = v22;
  v14[1] = v23;
  v15[0] = v24[0];
  *(v15 + 9) = *(v24 + 9);
  sub_188B2040C(v14);
  v16[0] = v36;
  v16[1] = v37;
  v16[2] = v38;
  v17 = v39;
  v18 = v8;
  sub_188A3F5FC(v16, &qword_1EA934C40);
  if ((v13 & 1) == 0)
  {
LABEL_10:

    *(v1 + 8) = 0;
  }
}

uint64_t sub_188E84020(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6974616D6F747561;
    case 1:
      return 0x72616C7563726963;
    case 2:
      return 0x6F756E69746E6F63;
  }

  v2 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v2);

  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  return 0x206E776F6E6B6E75;
}

uint64_t sub_188E8410C()
{
  v0 = sub_188E84180();
  MEMORY[0x18CFE22D0](v0);

  return 0x2E65706168534955;
}

uint64_t sub_188E84180()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 56);
  if (v6 <= 2)
  {
    if (*(v0 + 56))
    {
      if (v6 != 1)
      {
        v20 = 0x2868746170;
        v11 = [v1 description];
        v12 = sub_18A4A7288();
        v14 = v13;

        MEMORY[0x18CFE22D0](v12, v14);

        goto LABEL_14;
      }

      v20 = 0;
      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD000000000000018, 0x800000018A68CE90);
      v7 = sub_18A4A76F8();
      MEMORY[0x18CFE22D0](v7);

      MEMORY[0x18CFE22D0](0x72656E726F63202CLL, 0xEF203A6576727543);
      v8 = UICornerCurve.description.getter(v4);
      MEMORY[0x18CFE22D0](v8);

      MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68CE50);
    }

    else
    {
      v20 = 0;
      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD000000000000013, 0x800000018A68CEB0);
      v9 = sub_18A4A76F8();
      MEMORY[0x18CFE22D0](v9);

      MEMORY[0x18CFE22D0](0x72656E726F63202CLL, 0xEF203A6576727543);
      v10 = UICornerCurve.description.getter(v2);
      MEMORY[0x18CFE22D0](v10);

      MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68CE50);
    }

    type metadata accessor for UIRectCorner(0);
LABEL_12:
    sub_18A4A82D8();
LABEL_14:
    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    return v20;
  }

  if (*(v0 + 56) <= 4u)
  {
    if (v6 == 3)
    {
      v20 = 0;
      MEMORY[0x18CFE22D0](0x72656469766F7270, 0xE900000000000028);
      type metadata accessor for UIShapeProviderBox();
      goto LABEL_12;
    }

    MEMORY[0x18CFE22D0](0x287465736E69, 0xE600000000000000);
    type metadata accessor for UIEdgeInsets(0);
    goto LABEL_16;
  }

  if (v6 == 5)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0x726F66736E617274, 0xEC0000002864656DLL);
    type metadata accessor for CGAffineTransform(0);
LABEL_16:
    sub_18A4A82D8();
    v16 = MEMORY[0x18CFE22D0](8236, 0xE200000000000000);
    v17 = sub_188E84180(v16);
    MEMORY[0x18CFE22D0](v17);

    MEMORY[0x18CFE22D0](0x2E65706168534955, 0xE800000000000000);

    return 0;
  }

  v18 = v4 | *(v0 + 48) | *(v0 + 24);
  if (!(v3 | v2 | v1 | v5 | v18))
  {
    return 0x53746E65746E6F63;
  }

  v19 = v3 | v2 | v5 | v18;
  if (v1 == 1 && !v19)
  {
    return 1952671090;
  }

  if (v1 == 2 && v19 == 0)
  {
    return 0x656C7573706163;
  }

  return 0x656C63726963;
}

unint64_t sub_188E8465C()
{
  sub_18A4A80E8();

  v0 = sub_188E846DC();
  MEMORY[0x18CFE22D0](v0);

  return 0xD000000000000011;
}

uint64_t sub_188E846DC()
{
  if (*(v0 + 56))
  {
    v1 = [*v0 description];
    v2 = sub_18A4A7288();
    v4 = v3;

    MEMORY[0x18CFE22D0](v2, v4);

    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    return 0x2868746170;
  }

  else
  {
    v6 = sub_188E847DC();
    MEMORY[0x18CFE22D0](v6);

    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    return 0x2874636572;
  }
}

uint64_t sub_188E847DC()
{
  MEMORY[0x18CFE22D0](0x203A656D617266, 0xE700000000000000);
  type metadata accessor for CGRect(0);
  sub_18A4A82D8();
  if (*(v0 + 32) != 0.0)
  {
    sub_18A4A80E8();

    v1 = sub_18A4A76F8();
    MEMORY[0x18CFE22D0](v1);

    MEMORY[0x18CFE22D0](0xD000000000000010, 0x800000018A68CE30);

    v2 = *(v0 + 40);
    if (v2)
    {
      sub_18A4A80E8();

      v3 = UICornerCurve.description.getter(v2);
      MEMORY[0x18CFE22D0](v3);

      MEMORY[0x18CFE22D0](0x72656E726F63202CLL, 0xEF203A6576727543);
    }

    if (*(v0 + 48) != -1)
    {
      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68CE50);
      type metadata accessor for UIRectCorner(0);
      sub_18A4A82D8();
      MEMORY[0x18CFE22D0](0, 0xE000000000000000);
    }
  }

  return 0;
}

BOOL sub_188E849EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (*(a1 + 56))
  {
    if (*(a2 + 56))
    {
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      v8 = *(a2 + 24);
      v9 = *(a2 + 32);
      sub_188A34624(0, &qword_1ED490230);
      if (sub_18A4A7C88())
      {
        v18.origin.x = v3;
        v18.origin.y = v2;
        v18.size.width = v5;
        v18.size.height = v4;
        v19.origin.x = v6;
        v19.origin.y = v7;
        v19.size.width = v8;
        v19.size.height = v9;
        return CGRectEqualToRect(v18, v19);
      }
    }

    return 0;
  }

  if (*(a2 + 56))
  {
    return 0;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = *(a2 + 40);
  v13 = *(a2 + 48);
  v15 = *(a2 + 32);
  v16 = CGRectEqualToRect(*a1, *a2);
  v17 = v4 == v15 && v16;
  if (v11 != v14)
  {
    v17 = 0;
  }

  return v12 == v13 && v17;
}

BOOL _s5UIKit7UIShapeV8ResolvedV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  v6 = *(a2 + 72);
  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  v9 = *(a2 + 96);
  if (*(a1 + 120))
  {
    if (*(a2 + 120))
    {
      sub_188A34624(0, &qword_1ED490230);
      if (sub_18A4A7C88())
      {
        v17.origin.x = v2;
        v17.origin.y = v3;
        v17.size.width = v4;
        v17.size.height = v5;
        v18.size.height = v9;
        v18.size.width = v8;
        v18.origin.y = v7;
        v18.origin.x = v6;
        return CGRectEqualToRect(v17, v18);
      }
    }

    return 0;
  }

  if (*(a2 + 120))
  {
    return 0;
  }

  v15 = *(a1 + 112);
  v16 = *(a1 + 104);
  v11 = *(a2 + 104);
  v12 = *(a2 + 112);
  if (!CGRectEqualToRect(*(a1 + 64), *(a2 + 64)))
  {
    return 0;
  }

  v13 = v5 == v9 && v16 == v11;
  return v13 && v15 == v12;
}

unint64_t sub_188E84C24(uint64_t a1)
{
  result = sub_188E84C4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188E84C4C()
{
  result = qword_1EA934BB0[0];
  if (!qword_1EA934BB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA934BB0);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_188E84D04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 121))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 120);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_188E84D4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = -a2;
    }
  }

  return result;
}

uint64_t sub_188E84DF8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_188E84E8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_188E84EE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_188E84F5C(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 6;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_188E84F94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_188E84FDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

unint64_t sub_188E8504C(uint64_t a1)
{
  result = sub_188E85074();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188E85074()
{
  result = qword_1EA934C38;
  if (!qword_1EA934C38)
  {
    type metadata accessor for UIShapeProviderBox();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934C38);
  }

  return result;
}

uint64_t sub_188E850C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_188E85168(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }
}

uint64_t sub_188E85174(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E85194(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

double sub_188E8520C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  os_unfair_lock_lock((v7 + 20));
  v8 = *(v7 + 19);
  os_unfair_lock_unlock((v7 + 20));
  if (v8)
  {
    os_unfair_lock_lock((a4 + 20));
    if (*(a4 + 16))
    {
      os_unfair_lock_unlock((a4 + 20));
    }

    else
    {
      *(a4 + 16) = 1;
      os_unfair_lock_unlock((a4 + 20));
      v9 = swift_allocObject();
      v9[2] = a4;
      v9[3] = a2;
      v9[4] = a3;

      sub_188A32084(sub_188E8627C, v9);
    }
  }

  else
  {
    sub_18920BD00(a2, a3);
  }

  return 0.0;
}

uint64_t sub_188E85338()
{
  if ([v0 __swiftTransformer])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_188A55538(v5, &v6);
    _s29AnimatablePropertyTransformerCMa();
    swift_dynamicCast();
    return v2;
  }

  else
  {
    sub_188A553EC(v5);
    return 0;
  }
}

void sub_188E853EC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v10 = Strong;
  v11 = _UISolariumEnabled();

  if (v11 && v10 != a2)
  {
    __break(1u);
LABEL_5:
    swift_weakAssign();
  }

  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_188AADBA0(v53, a1, a5);
  swift_unknownObjectRelease();
  swift_endAccess();
  v12 = 0;
  v13 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueChangedCallback];
  v14 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueChangedCallback + 8];
  v53[0] = 0;
  if ((a3[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueCallbackRan] & 1) != 0 || !v13)
  {
LABEL_28:
    sub_188A55B8C(v12);
    return;
  }

  a3[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueCallbackRan] = 1;
  if (a3[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_unsafe])
  {
    v15 = swift_allocObject();
    v15[2] = v53;
    v15[3] = v13;
    v15[4] = v14;
    v15[5] = a2;
    v16 = swift_allocObject();
    v12 = sub_188E86364;
    *(v16 + 16) = sub_188E86364;
    *(v16 + 24) = v15;
    v50 = sub_188E3FE50;
    v51 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_188A4A968;
    v49 = &block_descriptor_40;
    v17 = _Block_copy(&aBlock);
    sub_188A52E38(v13);
    sub_188A52E38(v13);

    __UIVIEWSWIFTANIMATABLEPROPERTYTRANSFORMER_IS_EXECUTING_CALLBACK__(v17);
    _Block_release(v17);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if ((v17 & 1) == 0)
    {
LABEL_23:
      v37 = swift_allocObject();
      *(v37 + 16) = a3;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_188E85C70;
      *(v38 + 24) = v37;
      swift_beginAccess();
      v39 = *(a2 + 112);
      v40 = a3;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 112) = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_188E4B69C(0, v39[2] + 1, 1, v39);
        *(a2 + 112) = v39;
      }

      v43 = v39[2];
      v42 = v39[3];
      if (v43 >= v42 >> 1)
      {
        v39 = sub_188E4B69C((v42 > 1), v43 + 1, 1, v39);
      }

      v39[2] = v43 + 1;
      v44 = &v39[2 * v43];
      v44[4] = sub_188E85C88;
      v44[5] = v38;
      *(a2 + 112) = v39;
      swift_endAccess();
      sub_188AA7584();

      sub_188A55B8C(v13);
      goto LABEL_28;
    }

    __break(1u);
  }

  v18 = objc_opt_self();

  v19 = &selRef_convertPoint_toCoordinateSpace_;
  v20 = [v18 currentThread];
  v21 = [v20 threadDictionary];

  aBlock = 0xD000000000000022;
  v47 = 0x800000018A68D0A0;
  v45 = 0x800000018A68D0A0;
  [v21 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v22 = sub_188A81190(MEMORY[0x1E69E7CC0]);
  if (pthread_main_np() != 1)
  {
    v24 = [v18 currentThread];
    v25 = [v24 threadDictionary];

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934CB0);
    v27 = objc_allocWithZone(v26);
    *&v27[*((*MEMORY[0x1E69E7D40] & *v27) + 0x58)] = v22;
    v52.receiver = v27;
    v52.super_class = v26;
    v28 = objc_msgSendSuper2(&v52, sel_init);
    if (qword_1ED48F7A8 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_14;
  }

  v23 = &selRef_convertPoint_toCoordinateSpace_;
  qword_1EA935C88 = v22;

  while (1)
  {
    v25 = swift_allocObject();
    *(v25 + 2) = v53;
    *(v25 + 3) = v13;
    *(v25 + 4) = v14;
    *(v25 + 5) = a2;
    v28 = swift_allocObject();
    v28[2] = sub_188E85C34;
    v28[3] = v25;
    v50 = sub_188E3FE50;
    v51 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_188A4A968;
    v49 = &block_descriptor_24;
    v29 = _Block_copy(&aBlock);
    v19 = v51;
    sub_188A52E38(v13);

    __UIVIEWSWIFTANIMATABLEPROPERTYTRANSFORMER_IS_EXECUTING_CALLBACK__(v29);
    _Block_release(v29);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if ((v29 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_30:
    swift_once();
LABEL_14:
    v23 = v19;
    [v25 setObject:v28 forKey:{qword_1ED48F7B0, v45}];
  }

  v30 = sub_188AAD9E4();
  if (pthread_main_np() == 1)
  {
    qword_1EA935C88 = 0;
  }

  else
  {
    v31 = [v18 v23 + 2729];
    v32 = [v31 threadDictionary];

    if (qword_1ED48F7A8 != -1)
    {
      swift_once();
    }

    [v32 removeObjectForKey_];
  }

  if (v30)
  {
    v33 = [v18 v23 + 2729];
    v34 = [v33 threadDictionary];

    aBlock = 0xD000000000000022;
    v47 = v45;
    [v34 __swift_setObject_forKeyedSubscript_];

    v35 = swift_unknownObjectRelease();
    v36 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_capturedProperties];
    MEMORY[0x1EEE9AC00](v35);

    os_unfair_lock_lock(v36 + 6);
    sub_188E85C38();
    os_unfair_lock_unlock(v36 + 6);

    v12 = 0;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t objectdestroy_16Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_188E85D04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64B710;
  *(inited + 32) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v10 = _s29AnimatablePropertyTransformerCMa();
  v11 = objc_allocWithZone(v10);
  v11[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueCallbackRan] = 0;
  *&v11[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_runningProgresses] = MEMORY[0x1E69E7CD0];
  swift_weakInit();
  v11[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_assertionsChecked] = 0;
  v12 = &v11[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_modelValueChangedCallback];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v11[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueChangedCallback];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v11[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_stabilizedCallback];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v11[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueChangedWithoutAnimationCallback];
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_capturedProperties;
  v17 = a1;

  v18 = sub_188A81190(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934CB8);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v18;
  *&v11[v16] = v19;
  v11[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_unsafe] = 0;
  v20 = *v12;
  *v12 = a2;
  v12[1] = a3;

  sub_188A55B8C(v20);
  v21 = *v13;
  *v13 = sub_188E8636C;
  v13[1] = v9;

  sub_188A55B8C(v21);
  v22 = *v14;
  *v14 = signpost_c2_entryLock_start;
  v14[1] = 0;
  sub_188A55B8C(v22);
  v11[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_clearsCapturedPropertiesOnStabilization] = 1;
  v11[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_executionMode] = 1;
  v30.receiver = v11;
  v30.super_class = v10;
  v23 = objc_msgSendSuper2(&v30, sel_init);
  if ((inited & 0xC000000000000001) != 0)
  {
    v24 = sub_188E49AD0(0, inited);
  }

  else
  {
    v24 = v17;
  }

  v25 = v24;

  v26 = v23;
  [v25 set:v26 :? swiftTransformer:?];

  return v26;
}

uint64_t sub_188E85FDC(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v14 = _s29AnimatablePropertyTransformerCMa();
  v15 = objc_allocWithZone(v14);
  v15[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueCallbackRan] = 0;
  *&v15[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_runningProgresses] = MEMORY[0x1E69E7CD0];
  swift_weakInit();
  v15[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_assertionsChecked] = 0;
  v16 = &v15[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_modelValueChangedCallback];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v15[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueChangedCallback];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v15[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_stabilizedCallback];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v15[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueChangedWithoutAnimationCallback];
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_capturedProperties;

  v21 = sub_188A81190(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934CB8);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = v21;
  *&v15[v20] = v22;
  v15[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_unsafe] = a2;
  v23 = *v16;
  *v16 = a3;
  v16[1] = a4;

  sub_188A55B8C(v23);
  v24 = *v17;
  *v17 = a8;
  v17[1] = v13;

  sub_188A55B8C(v24);
  v25 = *v18;
  *v18 = a9;
  v18[1] = 0;
  sub_188A55B8C(v25);
  v15[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_clearsCapturedPropertiesOnStabilization] = 1;
  v15[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_executionMode] = 1;
  v35.receiver = v15;
  v35.super_class = v14;
  result = objc_msgSendSuper2(&v35, sel_init);
  v27 = result;
  if (!(a1 >> 62))
  {
    v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_3;
    }

LABEL_10:

    return v27;
  }

  result = sub_18A4A7F68();
  v28 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v28 >= 1)
  {
    for (i = 0; i != v28; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v30 = sub_188E49AD0(i, a1);
      }

      else
      {
        v30 = *(a1 + 8 * i + 32);
      }

      v31 = v30;
      [v30 set:v27 :? swiftTransformer:?];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_188E8627C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 20));
  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 20));
  return v2();
}

uint64_t getEnumTagSinglePayload for UITransitionComponentResponseContext.Key(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

id sub_188E86468@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_configuration;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v9 = *v3;
  v5 = *(v3 + 48);
  *a2 = *v3;
  *(a2 + 8) = v4;
  v6 = *(v3 + 32);
  *(a2 + 16) = *(v3 + 16);
  *(a2 + 32) = v6;
  *(a2 + 48) = v5;
  v7 = v4;

  return v9;
}

id sub_188E864F8(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  v6 = *a2;
  v7 = *a2 + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_configuration;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = v3;
  *(v7 + 8) = v4;
  v10 = *(a1 + 32);
  *(v7 + 16) = *(a1 + 16);
  *(v7 + 32) = v10;
  *(v7 + 48) = v5;
  v11 = v3;
  v12 = v4;

  return [*(v6 + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_fillView) setBackgroundColor_];
}

id sub_188E865C4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_configuration;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v9 = *v3;
  v5 = *(v3 + 48);
  *a1 = *v3;
  *(a1 + 8) = v4;
  v6 = *(v3 + 32);
  *(a1 + 16) = *(v3 + 16);
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  v7 = v4;

  return v9;
}

void sub_188E86650(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  v6 = v1 + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_configuration;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = v3;
  *(v6 + 8) = v4;
  v9 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v9;
  *(v6 + 48) = v5;
  v10 = v3;

  [*(v1 + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_fillView) setBackgroundColor_];
}

void (*sub_188E86710(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_configuration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_188E86798;
}

void sub_188E86798(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_fillView) setBackgroundColor_];
  }

  free(v3);
}

uint64_t sub_188E867FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_idleTimer;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = *(v3 + 24);
  return sub_188A52E38(v4);
}

void sub_188E86864(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2 + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_idleTimer;
  v6 = *(a1 + 24);
  swift_beginAccess();
  v7 = *v5;
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_188A52E38(v2);
  sub_188A55B8C(v7);
  sub_188E8691C();
}

void sub_188E8691C()
{
  v1 = &v0[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_idleTimer];
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v4 = *(v1 + 1);
    v3 = *(v1 + 2);
    v5 = v1[24];

    v6 = [v0 superview];
    if (v6 && (v6, v0[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView__isPaused] != 1))
    {
      v10 = OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_idleTimerImpl;
      if (*&v0[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_idleTimerImpl])
      {
        sub_188A55B8C(v2);
        return;
      }

      v11 = objc_opt_self();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v2;
      *(v13 + 32) = v4;
      *(v13 + 40) = v3;
      *(v13 + 48) = v5 & 1;
      aBlock[4] = sub_188E8AA88;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1890552D0;
      aBlock[3] = &block_descriptor_100;
      v14 = _Block_copy(aBlock);

      v15 = [v11 scheduledTimerWithTimeInterval:v5 & 1 repeats:v14 block:v3];
      sub_188A55B8C(v2);
      _Block_release(v14);
      v9 = *&v0[v10];
      *&v0[v10] = v15;
    }

    else
    {
      v7 = OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_idleTimerImpl;
      v8 = *&v0[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_idleTimerImpl];
      [v8 invalidate];
      sub_188A55B8C(v2);

      v9 = *&v0[v7];
      *&v0[v7] = 0;
    }
  }
}

uint64_t sub_188E86B64@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_idleTimer;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(v3 + 24);
  return sub_188A52E38(v4);
}

void sub_188E86BC8(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = v1 + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_idleTimer;
  swift_beginAccess();
  v5 = *v4;
  *v4 = v6;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_188A55B8C(v5);
  sub_188E8691C();
}

void (*sub_188E86C48(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_188E86CAC;
}

void sub_188E86CAC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_188E8691C();
  }
}

char *UIDirectionalLightEffectView.init(configuration:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[6];
  v6 = &v1[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_idleTimer];
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 0;
  v6[24] = 0;
  v1[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView__isPaused] = 0;
  v7 = OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_fillView;
  *&v1[v7] = [objc_allocWithZone(UIView) initWithFrame_];
  *&v1[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_idleTimerImpl] = 0;
  v8 = &v1[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_configuration];
  *v8 = v3;
  *(v8 + 1) = v4;
  v9 = *(a1 + 2);
  *(v8 + 1) = *(a1 + 1);
  *(v8 + 2) = v9;
  *(v8 + 6) = v5;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for UIDirectionalLightEffectView();
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor_];

  v14 = OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_fillView;
  [v12 addSubview_];
  v15 = *&v12[v14];
  v16 = OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_configuration;
  swift_beginAccess();
  [v15 setBackgroundColor_];

  return v12;
}

void sub_188E86F90(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v9 = sub_188E873E8();
  [v5 addSubview_];
  [v9 bounds];
  v42 = v10;
  [v5 bounds];
  Width = CGRectGetWidth(v60);
  [v5 bounds];
  Height = CGRectGetHeight(v61);
  [v5 bounds];
  v38 = CGRectGetWidth(v62);
  [v5 bounds];
  v11 = CGRectGetHeight(v63);
  v12 = 1.0;
  v13 = 0.5;
  v14 = a4;
  v15 = a4 < 0.5;
  a = 1.0;
  b = 0.0;
  c = 0.0;
  d = 1.0;
  tx = 0.0;
  ty = 0.0;
  if (v15)
  {
    CGAffineTransformMakeRotation(&v56, 3.14159265);
    v13 = 0.5;
    a = v56.a;
    b = v56.b;
    c = v56.c;
    d = v56.d;
    v12 = -1.0;
    tx = v56.tx;
    ty = v56.ty;
  }

  v36 = -(v12 * v42) - v11 * v12 + 0.0;
  v39 = v38 * v13;
  v22 = Height * v14 + v42 * v13 * v12 + 0.0;
  v56.a = a;
  v56.b = b;
  v56.c = c;
  v56.d = d;
  v56.tx = tx;
  v56.ty = ty;
  [v9 setTransform_];
  [v9 setCenter_];
  [v9 setAlpha_];
  v52.a = a;
  v52.b = b;
  v52.c = c;
  v52.d = d;
  v52.tx = tx;
  v52.ty = ty;
  *&v53 = a1;
  *(&v53 + 1) = a2;
  *&v54 = v39;
  *(&v54 + 1) = v37;
  v55 = v9;
  v59 = v9;
  v56 = v52;
  v57 = v53;
  v58 = v54;
  v23 = objc_opt_self();
  v24 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v25 = swift_allocObject();
  v26 = v57;
  *(v25 + 56) = *&v56.tx;
  *(v25 + 72) = v26;
  *(v25 + 88) = v58;
  v27 = *&v56.c;
  *(v25 + 24) = *&v56.a;
  *(v25 + 16) = v24;
  *(v25 + 104) = v59;
  *(v25 + 40) = v27;
  v50 = sub_188E89E18;
  v51 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_188A4A8F0;
  v49 = &block_descriptor_8;
  v28 = _Block_copy(&aBlock);
  sub_188D738F4(a1);
  v29 = v9;
  sub_188E89E24(&v52, v45);

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  v32 = v57;
  *(v31 + 56) = *&v56.tx;
  *(v31 + 72) = v32;
  *(v31 + 88) = v58;
  v33 = *&v56.c;
  *(v31 + 24) = *&v56.a;
  *(v31 + 16) = v30;
  *(v31 + 104) = v59;
  *(v31 + 40) = v33;
  v50 = sub_188E89F1C;
  v51 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_188ABD010;
  v49 = &block_descriptor_12_1;
  v34 = _Block_copy(&aBlock);
  sub_188E89E24(&v52, v45);

  [v23 animateWithDuration:0x20000 delay:v28 options:v34 animations:a5 completion:0.0];
  _Block_release(v34);
  _Block_release(v28);
  sub_188E89F28(&v52);
  v35 = v5;
  sub_188E8A2B4(v35, v35, a3, v14, a5);
}

char *sub_188E873E8()
{
  v1 = v0;
  [v0 bounds];
  v2 = CGRectGetWidth(v12) * 1.4;
  [v0 bounds];
  Width = CGRectGetWidth(v13);
  v4 = [objc_allocWithZone(type metadata accessor for UIDirectionalLightEffectView.WaveView()) initWithFrame_];
  v5 = &v1[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_configuration];
  swift_beginAccess();
  *&v4[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_gradientColors] = *(v5 + 6);

  sub_188E89808();
  v6 = *(v5 + 1);
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = [objc_opt_self() clearColor];
    v6 = 0;
  }

  v8 = *&v4[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillColor];
  *&v4[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillColor] = v7;
  v9 = v6;
  v10 = v7;

  sub_188E896A8();
  return v4;
}

uint64_t sub_188E8752C(void *a1, void *a2, double a3, double a4, double a5)
{
  [a1 bounds];
  v39 = v8;
  [a2 bounds];
  Width = CGRectGetWidth(v58);
  [a2 bounds];
  Height = CGRectGetHeight(v59);
  [a2 bounds];
  v35 = CGRectGetWidth(v60);
  [a2 bounds];
  v9 = CGRectGetHeight(v61);
  v10 = 1.0;
  v11 = 0.5;
  v12 = a4;
  v13 = a4 < 0.5;
  a = 1.0;
  b = 0.0;
  c = 0.0;
  d = 1.0;
  tx = 0.0;
  ty = 0.0;
  if (v13)
  {
    CGAffineTransformMakeRotation(&v54, 3.14159265);
    v11 = 0.5;
    a = v54.a;
    b = v54.b;
    c = v54.c;
    d = v54.d;
    v10 = -1.0;
    tx = v54.tx;
    ty = v54.ty;
  }

  v34 = -(v10 * v39) - v9 * v10 + 0.0;
  v36 = v35 * v11;
  v20 = Height * v12 + v39 * v11 * v10 + 0.0;
  v54.a = a;
  v54.b = b;
  v54.c = c;
  v54.d = d;
  v54.tx = tx;
  v54.ty = ty;
  [a1 setTransform_];
  [a1 setCenter_];
  [a1 setAlpha_];
  v49.a = a;
  v49.b = b;
  v49.c = c;
  v49.d = d;
  v49.tx = tx;
  v49.ty = ty;
  v50 = 0;
  v51 = 0;
  *&v52 = v36;
  *(&v52 + 1) = v34;
  v53 = a1;
  v57 = a1;
  v54 = v49;
  v55 = 0u;
  v56 = v52;
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v23 = swift_allocObject();
  v24 = v55;
  *(v23 + 56) = *&v54.tx;
  *(v23 + 72) = v24;
  *(v23 + 88) = v56;
  v25 = *&v54.c;
  *(v23 + 24) = *&v54.a;
  *(v23 + 16) = v22;
  *(v23 + 104) = v57;
  *(v23 + 40) = v25;
  v47 = sub_188E8AAA8;
  v48 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_188A4A8F0;
  v46 = &block_descriptor_85;
  v26 = _Block_copy(&aBlock);
  v27 = a1;
  sub_188E89E24(&v49, v42);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v30 = v55;
  *(v29 + 56) = *&v54.tx;
  *(v29 + 72) = v30;
  *(v29 + 88) = v56;
  v31 = *&v54.c;
  *(v29 + 24) = *&v54.a;
  *(v29 + 16) = v28;
  *(v29 + 104) = v57;
  *(v29 + 40) = v31;
  v47 = sub_188E8AAB8;
  v48 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_188ABD010;
  v46 = &block_descriptor_93;
  v32 = _Block_copy(&aBlock);
  sub_188E89E24(&v49, v42);

  [v21 animateWithDuration:0x20000 delay:v26 options:v32 animations:a5 completion:0.0];
  _Block_release(v32);
  _Block_release(v26);
  return sub_188E89F28(&v49);
}