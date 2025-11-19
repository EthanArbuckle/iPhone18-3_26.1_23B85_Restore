uint64_t sub_1BD2AAE68(uint64_t result, unint64_t a2, char a3)
{
  v27 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_49;
  }

  if (a3)
  {
    sub_1BD2A8DB4();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1BD534E78();
      goto LABEL_49;
    }

    sub_1BD2AD310();
  }

  v7 = *v3;
  sub_1BE053D04();
  sub_1BE052524();

  result = sub_1BE053D64();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v26 = ~v8;
    do
    {
      v9 = *(*(v7 + 48) + a2);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v10 = 0xD00000000000002ALL;
          v11 = 0x80000001BE117FC0;
        }

        else
        {
          if (v9 == 4)
          {
            v10 = 0xD000000000000028;
          }

          else
          {
            v10 = 0xD000000000000017;
          }

          if (v9 == 4)
          {
            v11 = 0x80000001BE117FF0;
          }

          else
          {
            v11 = 0x80000001BE118020;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v9 == 1)
        {
          v10 = 0x616C696176616E75;
        }

        else
        {
          v10 = 0xD000000000000016;
        }

        if (v9 == 1)
        {
          v11 = 0xEF73736150656C62;
        }

        else
        {
          v11 = 0x80000001BE117FA0;
        }
      }

      else
      {
        v10 = 0xD000000000000015;
        v11 = 0x80000001BE117F70;
      }

      v12 = 0xD00000000000002ALL;
      v13 = 0xD000000000000028;
      if (v27 == 4)
      {
        v14 = 0x80000001BE117FF0;
      }

      else
      {
        v13 = 0xD000000000000017;
        v14 = 0x80000001BE118020;
      }

      if (v27 == 3)
      {
        v15 = 0x80000001BE117FC0;
      }

      else
      {
        v12 = v13;
        v15 = v14;
      }

      v16 = 0x616C696176616E75;
      if (v27 != 1)
      {
        v16 = 0xD000000000000016;
      }

      v17 = 0xEF73736150656C62;
      if (v27 != 1)
      {
        v17 = 0x80000001BE117FA0;
      }

      if (!v27)
      {
        v16 = 0xD000000000000015;
        v17 = 0x80000001BE117F70;
      }

      v18 = v27 <= 2u ? v16 : v12;
      v19 = v27 <= 2u ? v17 : v15;
      if (v10 == v18 && v11 == v19)
      {
        goto LABEL_52;
      }

      v20 = sub_1BE053B84();

      if (v20)
      {
        goto LABEL_53;
      }

      a2 = (a2 + 1) & v26;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_49:
  v21 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = v27;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_52:

LABEL_53:
  result = sub_1BE053C04();
  __break(1u);
  return result;
}

void sub_1BD2AB1E0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BD2A90F8(v6 + 1, &qword_1EBD406D8);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1BD534FBC();
      goto LABEL_12;
    }

    sub_1BD2AD624(v6 + 1, &qword_1EBD406D8);
  }

  v8 = *v3;
  v9 = sub_1BE053064();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1BD0E5E8C(0, &qword_1EBD406D0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1BE053074();

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
  sub_1BE053C04();
  __break(1u);
}

void sub_1BD2AB370(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BD2A90F8(v6 + 1, &qword_1EBD406E8);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1BD534FD0();
      goto LABEL_12;
    }

    sub_1BD2AD624(v6 + 1, &qword_1EBD406E8);
  }

  v8 = *v3;
  v9 = sub_1BE053064();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1BD0E5E8C(0, &qword_1EBD406E0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1BE053074();

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
  sub_1BE053C04();
  __break(1u);
}

uint64_t sub_1BD2AB500()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40658);
  result = sub_1BE0537E4();
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
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1BE053D04();
      sub_1BE052524();

      result = sub_1BE053D64();
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
      *(*(v4 + 48) + v11) = v15;
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

uint64_t sub_1BD2AB798()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40640);
  result = sub_1BE0537E4();
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
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1BE053D04();
      sub_1BE052524();

      result = sub_1BE053D64();
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
      *(*(v4 + 48) + v11) = v15;
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

uint64_t sub_1BD2ABA1C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39880);
  result = sub_1BE0537E4();
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
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_16:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_1BE053D04();
      sub_1BE052434();
      sub_1BE052524();

      result = sub_1BE053D64();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BD2ABD38(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1BE0537E4();
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
      sub_1BE052434();
      sub_1BE053D04();
      v19 = v18;
      sub_1BE052524();
      v20 = sub_1BE053D64();

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

uint64_t sub_1BD2ABF84()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39888);
  result = sub_1BE0537E4();
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
      sub_1BE053D04();
      sub_1BE048C84();
      sub_1BE052524();
      result = sub_1BE053D64();
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

uint64_t sub_1BD2AC1BC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1BE0537E4();
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
      sub_1BE053D04();
      MEMORY[0x1BFB40DA0](v17);
      result = sub_1BE053D64();
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

uint64_t sub_1BD2AC3D4()
{
  v1 = v0;
  v2 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v45, v5);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AvailablePass(0);
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v47 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD406F8);
  result = sub_1BE0537E4();
  v13 = result;
  if (!*(v11 + 16))
  {

LABEL_33:
    *v1 = v13;
    return result;
  }

  v40 = v0;
  v14 = 0;
  v15 = v11 + 56;
  v16 = 1 << *(v11 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v11 + 56);
  v19 = (v16 + 63) >> 6;
  v20 = result + 56;
  v42 = v11;
  v43 = v7;
  while (v18)
  {
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_15:
    v25 = *(v11 + 48);
    v46 = *(v44 + 72);
    v26 = v47;
    sub_1BD133398(v25 + v46 * (v22 | (v14 << 6)), v47, type metadata accessor for AvailablePass);
    sub_1BE053D04();
    sub_1BD133398(v26, v7, type metadata accessor for WrappedPass);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v28 = *v7;
      result = [*v7 uniqueID];
      if (!result)
      {
        goto LABEL_37;
      }

LABEL_20:
      v29 = result;
      sub_1BE052434();

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v28 = *v7;
      result = [*v7 passIdentifier];
      if (!result)
      {
        goto LABEL_36;
      }

      goto LABEL_20;
    }

    v30 = v7;
    v31 = v41;
    sub_1BD2AF470(v30, v41, type metadata accessor for PlaceholderPass);
    sub_1BE048C84();
    sub_1BD2AF4D8(v31, type metadata accessor for PlaceholderPass);
LABEL_22:
    sub_1BE052524();

    result = sub_1BE053D64();
    v32 = -1 << *(v13 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    v7 = v43;
    if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v32) >> 6;
      v11 = v42;
      while (++v34 != v36 || (v35 & 1) == 0)
      {
        v37 = v34 == v36;
        if (v34 == v36)
        {
          v34 = 0;
        }

        v35 |= v37;
        v38 = *(v20 + 8 * v34);
        if (v38 != -1)
        {
          v21 = __clz(__rbit64(~v38)) + (v34 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_35;
    }

    v21 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    v11 = v42;
LABEL_7:
    *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    result = sub_1BD2AF470(v47, *(v13 + 48) + v21 * v46, type metadata accessor for AvailablePass);
    ++*(v13 + 16);
  }

  v23 = v14;
  while (1)
  {
    v14 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v14 >= v19)
    {

      v1 = v40;
      goto LABEL_33;
    }

    v24 = *(v15 + 8 * v14);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v18 = (v24 - 1) & v24;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1BD2AC844()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD40708);
  result = sub_1BE0537E4();
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
      result = sub_1BE053CF4();
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

uint64_t sub_1BD2ACA34()
{
  v1 = v0;
  v33 = sub_1BE04AFE4();
  v2 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD406F0);
  v7 = sub_1BE0537E4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v0;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v2 + 16;
    v32 = v2;
    v15 = v7 + 56;
    v29 = (v2 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1BD2AF428(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
      result = sub_1BE052284();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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

uint64_t sub_1BD2ACD50()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40680);
  result = sub_1BE0537E4();
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
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_16:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_1BE053D04();
      sub_1BE052524();

      result = sub_1BE053D64();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BD2ACFF4()
{
  v1 = v0;
  v33 = sub_1BE049B44();
  v2 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40698);
  v7 = sub_1BE0537E4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v0;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v2 + 16;
    v32 = v2;
    v15 = v7 + 56;
    v29 = (v2 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1BD2AF428(&qword_1EBD40688, MEMORY[0x1E6967B20]);
      result = sub_1BE052284();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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

uint64_t sub_1BD2AD310()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40670);
  result = sub_1BE0537E4();
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
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_16:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_1BE053D04();
      sub_1BE052524();

      result = sub_1BE053D64();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BD2AD624(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1BE0537E4();
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
      result = sub_1BE053064();
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

uint64_t sub_1BD2AD830(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v67 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v7 = a1;
  v49 = 0;
  v8 = *(a1 + 56);
  v57 = a1 + 56;
  v9 = -1 << *(a1 + 32);
  v54 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v8;
  v55 = (63 - v9) >> 6;
  v59 = 0x80000001BE117610;
  v60 = (a2 + 56);
  sub_1BE048C84();
  v58 = 0;
LABEL_6:
  while (2)
  {
    if (!v11)
    {
      v13 = v58;
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v55)
        {
          goto LABEL_76;
        }

        v11 = *(v57 + 8 * v14);
        ++v13;
        if (v11)
        {
          v58 = v14;
          goto LABEL_12;
        }
      }

LABEL_79:
      __break(1u);
LABEL_80:
      v44 = v12;
      sub_1BE048964();
      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_38;
      }

      v45 = swift_slowAlloc();
      memcpy(v45, v60, v44);
      v46 = v49;
      v47 = sub_1BD2AE66C(v45, v50, v6, v2, &v62);

      if (!v46)
      {

        MEMORY[0x1BFB45F20](v45, -1, -1);
        v54 = v64;
        v58 = v65;
        v6 = v47;
        goto LABEL_76;
      }

      result = MEMORY[0x1BFB45F20](v45, -1, -1);
      __break(1u);
      return result;
    }

LABEL_12:
    v15 = *(*(v7 + 48) + (__clz(__rbit64(v11)) | (v58 << 6)));
    sub_1BE053D04();
    v11 &= v11 - 1;
    sub_1BE052524();

    v16 = sub_1BE053D64();
    v17 = -1 << *(v6 + 32);
    v2 = v16 & ~v17;
    v3 = v2 >> 6;
    v5 = 1 << v2;
    if (((1 << v2) & *(v60 + (v2 >> 6))) == 0)
    {
      continue;
    }

    break;
  }

  v56 = v7;
  v4 = ~v17;
  while (1)
  {
    if (*(*(v6 + 48) + v2))
    {
      if (*(*(v6 + 48) + v2) == 1)
      {
        v18 = 0x726F4B6874756F73;
        v19 = 0xEE00415049506165;
        if (v15)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v18 = 0xD000000000000010;
        v19 = v59;
        if (v15)
        {
LABEL_17:
          if (v15 == 1)
          {
            v20 = 0x726F4B6874756F73;
          }

          else
          {
            v20 = 0xD000000000000010;
          }

          if (v15 == 1)
          {
            v21 = 0xEE00415049506165;
          }

          else
          {
            v21 = v59;
          }

          if (v18 != v20)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
      v19 = 0xE400000000000000;
      v18 = 1919968359;
      if (v15)
      {
        goto LABEL_17;
      }
    }

    v21 = 0xE400000000000000;
    if (v18 != 1919968359)
    {
      goto LABEL_28;
    }

LABEL_27:
    if (v19 == v21)
    {
      v64 = v54;
      v65 = v58;
      v66 = v11;
      v4 = v56;
      v62 = v56;
      v63 = v57;

      goto LABEL_37;
    }

LABEL_28:
    v22 = sub_1BE053B84();

    if (v22)
    {
      break;
    }

    v2 = (v2 + 1) & v4;
    v3 = v2 >> 6;
    v5 = 1 << v2;
    if ((*(v60 + (v2 >> 6)) & (1 << v2)) == 0)
    {
      v7 = v56;
      goto LABEL_6;
    }
  }

  v64 = v54;
  v65 = v58;
  v66 = v11;
  v4 = v56;
  v62 = v56;
  v63 = v57;
LABEL_37:
  v25 = *(v6 + 32);
  v50 = ((1 << v25) + 63) >> 6;
  v12 = 8 * v50;
  if ((v25 & 0x3Fu) > 0xD)
  {
    goto LABEL_80;
  }

LABEL_38:
  v51 = &v48;
  MEMORY[0x1EEE9AC00](v23, v24);
  v2 = &v48 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v2, v60, v26);
  v27 = *(v2 + 8 * v3) & ~v5;
  v28 = *(v6 + 16);
  v53 = v2;
  *(v2 + 8 * v3) = v27;
  v29 = v28 - 1;
LABEL_39:
  v52 = v29;
LABEL_40:
  while (2)
  {
    if (v11)
    {
LABEL_46:
      v3 = *(*(v4 + 48) + (__clz(__rbit64(v11)) | (v58 << 6)));
      sub_1BE053D04();
      v11 &= v11 - 1;
      sub_1BE052524();

      v2 = &v61;
      v32 = sub_1BE053D64();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v5 = v34 >> 6;
      v35 = 1 << v34;
      if (((1 << v34) & *(v60 + (v34 >> 6))) == 0)
      {
        continue;
      }

      v36 = ~v33;
      while (1)
      {
        if (*(*(v6 + 48) + v34))
        {
          if (*(*(v6 + 48) + v34) == 1)
          {
            v37 = 0x726F4B6874756F73;
            v2 = 0xEE00415049506165;
            if (v3)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v37 = 0xD000000000000010;
            v2 = v59;
            if (v3)
            {
LABEL_51:
              if (v3 == 1)
              {
                v38 = 0x726F4B6874756F73;
              }

              else
              {
                v38 = 0xD000000000000010;
              }

              if (v3 == 1)
              {
                v39 = 0xEE00415049506165;
              }

              else
              {
                v39 = v59;
              }

              if (v37 != v38)
              {
                goto LABEL_62;
              }

              goto LABEL_61;
            }
          }
        }

        else
        {
          v2 = 0xE400000000000000;
          v37 = 1919968359;
          if (v3)
          {
            goto LABEL_51;
          }
        }

        v39 = 0xE400000000000000;
        if (v37 != 1919968359)
        {
          goto LABEL_62;
        }

LABEL_61:
        if (v2 == v39)
        {

LABEL_68:
          v41 = v53[v5];
          v53[v5] = v41 & ~v35;
          v4 = v56;
          if ((v41 & v35) != 0)
          {
            v29 = v52 - 1;
            if (__OFSUB__(v52, 1))
            {
              __break(1u);
            }

            if (v52 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_76;
            }

            goto LABEL_39;
          }

          goto LABEL_40;
        }

LABEL_62:
        v40 = sub_1BE053B84();

        if (v40)
        {
          goto LABEL_68;
        }

        v34 = (v34 + 1) & v36;
        v5 = v34 >> 6;
        v35 = 1 << v34;
        if ((*(v60 + (v34 >> 6)) & (1 << v34)) == 0)
        {
          v4 = v56;
          goto LABEL_40;
        }
      }
    }

    break;
  }

  v30 = v58;
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v31 >= v55)
    {
      break;
    }

    v11 = *(v57 + 8 * v31);
    ++v30;
    if (v11)
    {
      v58 = v31;
      goto LABEL_46;
    }
  }

  if (v55 <= v58 + 1)
  {
    v42 = v58 + 1;
  }

  else
  {
    v42 = v55;
  }

  v58 = v42 - 1;
  v6 = sub_1BD2AEC20(v53, v50, v52, v6);
LABEL_76:
  sub_1BD0D45FC();
  return v6;
}

uint64_t sub_1BD2ADFEC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v78 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v61 = 0;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = -1;
  v7 = -1 << *(a1 + 32);
  v70 = ~v7;
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v10 = (63 - v7) >> 6;
  v72 = (a2 + 56);
  v11 = sub_1BE048C84();
  v13 = 0;
  v66 = v10;
  v68 = v11;
  v67 = v5;
  if (v9)
  {
LABEL_11:
    while (1)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(v11 + 48) + ((v13 << 9) | (8 * v16)));
      v73 = v11;
      v74 = v5;
      v75 = v70;
      v76 = v13;
      v71 = v13;
      v77 = v9;
      sub_1BE052434();
      sub_1BE053D04();
      v69 = v17;
      sub_1BE052524();
      v18 = sub_1BE053D64();

      v19 = -1 << *(v3 + 32);
      v5 = v18 & ~v19;
      v2 = v5 >> 6;
      v6 = 1 << v5;
      if (((1 << v5) & v72[v5 >> 6]) != 0)
      {
        break;
      }

LABEL_19:

      v11 = v68;
      v5 = v67;
      v10 = v66;
      v13 = v71;
      v6 = -1;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v20 = ~v19;
    while (1)
    {
      v21 = sub_1BE052434();
      v23 = v22;
      if (v21 == sub_1BE052434() && v23 == v24)
      {

        goto LABEL_25;
      }

      v26 = sub_1BE053B84();

      if (v26)
      {
        break;
      }

      v5 = (v5 + 1) & v20;
      v2 = v5 >> 6;
      v6 = 1 << v5;
      if (((1 << v5) & v72[v5 >> 6]) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_25:
    v29 = *(v3 + 32);
    v62 = ((1 << v29) + 63) >> 6;
    v12 = 8 * v62;
    if ((v29 & 0x3Fu) <= 0xD)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_6:
    v14 = v13;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_54;
      }

      v9 = *(v5 + 8 * v15);
      ++v14;
      if (v9)
      {
        v13 = v15;
        goto LABEL_11;
      }
    }

LABEL_57:
    __break(1u);
  }

  v55 = v12;
  sub_1BE048964();
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_26:
    v63 = &v60;
    MEMORY[0x1EEE9AC00](v27, v28);
    v5 = &v60 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v5, v72, v30);
    v31 = *(v5 + 8 * v2) & ~v6;
    v32 = *(v3 + 16);
    v65 = v5;
    *(v5 + 8 * v2) = v31;
    v33 = v32 - 1;
    v34 = v68;
    v35 = v67;
    v36 = v66;
    v37 = v71;
LABEL_27:
    v64 = v33;
    while (v9)
    {
LABEL_35:
      v40 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v41 = *(*(v34 + 48) + ((v37 << 9) | (8 * v40)));
      v73 = v34;
      v74 = v35;
      v75 = v70;
      v76 = v37;
      v71 = v37;
      v77 = v9;
      sub_1BE052434();
      sub_1BE053D04();
      v69 = v41;
      sub_1BE052524();
      v5 = sub_1BE053D64();

      v42 = -1 << *(v3 + 32);
      v43 = v5 & ~v42;
      v6 = v43 >> 6;
      v2 = 1 << v43;
      if (((1 << v43) & v72[v43 >> 6]) != 0)
      {
        v44 = ~v42;
        while (1)
        {
          v45 = sub_1BE052434();
          v47 = v46;
          v48 = sub_1BE052434();
          v5 = v49;
          if (v45 == v48 && v47 == v49)
          {

            goto LABEL_46;
          }

          v51 = sub_1BE053B84();

          if (v51)
          {
            break;
          }

          v43 = (v43 + 1) & v44;
          v6 = v43 >> 6;
          v2 = 1 << v43;
          if (((1 << v43) & v72[v43 >> 6]) == 0)
          {
            goto LABEL_28;
          }
        }

LABEL_46:
        v52 = v65[v6];
        v65[v6] = v52 & ~v2;
        v34 = v68;
        v35 = v67;
        v36 = v66;
        v37 = v71;
        if ((v52 & v2) != 0)
        {
          v33 = v64 - 1;
          if (__OFSUB__(v64, 1))
          {
            __break(1u);
          }

          if (v64 == 1)
          {

            v3 = MEMORY[0x1E69E7CD0];
            goto LABEL_54;
          }

          goto LABEL_27;
        }
      }

      else
      {
LABEL_28:

        v34 = v68;
        v35 = v67;
        v36 = v66;
        v37 = v71;
      }
    }

    v38 = v37;
    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v39 >= v36)
      {
        break;
      }

      v9 = *(v35 + 8 * v39);
      ++v38;
      if (v9)
      {
        v37 = v39;
        goto LABEL_35;
      }
    }

    if (v36 <= v37 + 1)
    {
      v53 = v37 + 1;
    }

    else
    {
      v53 = v36;
    }

    v73 = v34;
    v74 = v35;
    v75 = v70;
    v76 = v53 - 1;
    v77 = 0;
    v3 = sub_1BD2AEE90(v65, v62, v64, v3);
    goto LABEL_54;
  }

  v56 = swift_slowAlloc();
  memcpy(v56, v72, v55);
  v57 = v61;
  sub_1BD2AE994(v56, v62, v3, v5, &v73);
  v59 = v58;

  if (!v57)
  {

    MEMORY[0x1BFB45F20](v56, -1, -1);
    v3 = v59;
LABEL_54:
    sub_1BD0D45FC();
    return v3;
  }

  result = MEMORY[0x1BFB45F20](v56, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1BD2AE66C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v28 = result;
  v6 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v30 = a3 + 56;
LABEL_2:
  v27 = v7;
LABEL_3:
  while (2)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3];
LABEL_9:
      v13 = *(*(*a5 + 48) + (__clz(__rbit64(v9)) | (v10 << 6)));
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      sub_1BE053D04();
      sub_1BE052524();

      result = sub_1BE053D64();
      v14 = -1 << *(a3 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      v17 = 1 << v15;
      if (((1 << v15) & *(v30 + 8 * (v15 >> 6))) == 0)
      {
        continue;
      }

      v18 = ~v14;
      while (1)
      {
        if (*(*(a3 + 48) + v15))
        {
          if (*(*(a3 + 48) + v15) == 1)
          {
            v19 = 0x726F4B6874756F73;
            v20 = 0xEE00415049506165;
            if (v13)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v19 = 0xD000000000000010;
            v20 = 0x80000001BE117610;
            if (v13)
            {
LABEL_16:
              if (v13 == 1)
              {
                v21 = 0x726F4B6874756F73;
              }

              else
              {
                v21 = 0xD000000000000010;
              }

              if (v13 == 1)
              {
                v22 = 0xEE00415049506165;
              }

              else
              {
                v22 = 0x80000001BE117610;
              }

              if (v19 != v21)
              {
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v20 = 0xE400000000000000;
          v19 = 1919968359;
          if (v13)
          {
            goto LABEL_16;
          }
        }

        v22 = 0xE400000000000000;
        if (v19 != 1919968359)
        {
          goto LABEL_27;
        }

LABEL_26:
        if (v20 == v22)
        {

LABEL_31:
          v24 = v28[v16];
          v28[v16] = v24 & ~v17;
          if ((v24 & v17) != 0)
          {
            v7 = v27 - 1;
            if (__OFSUB__(v27, 1))
            {
LABEL_40:
              __break(1u);
              return result;
            }

            if (v27 == 1)
            {
              return MEMORY[0x1E69E7CD0];
            }

            goto LABEL_2;
          }

          goto LABEL_3;
        }

LABEL_27:
        v23 = sub_1BE053B84();

        if (v23)
        {
          goto LABEL_31;
        }

        v15 = (v15 + 1) & v18;
        v16 = v15 >> 6;
        v17 = 1 << v15;
        if ((*(v30 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  if (v11 <= v8 + 1)
  {
    v25 = v8 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;
  sub_1BE048964();
  return sub_1BD2AEC20(v28, a2, v27, a3);
}

void sub_1BD2AE994(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v33 = a3 + 56;
  v31 = a5;
  while (2)
  {
    v29 = v7;
    do
    {
      while (1)
      {
        v8 = a5[3];
        v9 = a5[4];
        if (!v9)
        {
          v11 = (a5[2] + 64) >> 6;
          v12 = a5[3];
          while (1)
          {
            v10 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v10 >= v11)
            {
              break;
            }

            v9 = *(a5[1] + 8 * v10);
            ++v12;
            if (v9)
            {
              goto LABEL_10;
            }
          }

          if (v11 <= v8 + 1)
          {
            v27 = v8 + 1;
          }

          else
          {
            v27 = (a5[2] + 64) >> 6;
          }

          a5[3] = v27 - 1;
          a5[4] = 0;
          sub_1BE048964();
          sub_1BD2AEE90(a1, a2, v29, a3);
          return;
        }

        v10 = a5[3];
LABEL_10:
        v13 = *(*(*a5 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
        a5[3] = v10;
        a5[4] = (v9 - 1) & v9;
        sub_1BE052434();
        sub_1BE053D04();
        v32 = v13;
        sub_1BE052524();
        v14 = sub_1BE053D64();

        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v33 + 8 * (v16 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        a5 = v31;
      }

      v19 = ~v15;
      while (1)
      {
        v20 = sub_1BE052434();
        v22 = v21;
        if (v20 == sub_1BE052434() && v22 == v23)
        {

          goto LABEL_21;
        }

        v25 = sub_1BE053B84();

        if (v25)
        {
          break;
        }

        v16 = (v16 + 1) & v19;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v33 + 8 * (v16 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_21:
      a5 = v31;
      v26 = a1[v17];
      a1[v17] = v26 & ~v18;
    }

    while ((v26 & v18) == 0);
    v7 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v29 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1BD2AEC20(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40640);
  result = sub_1BE053804();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_1BE053D04();
    sub_1BE052524();

    result = sub_1BE053D64();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1BD2AEE90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD406A0);
  result = sub_1BE053804();
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
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v29 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_1BE052434();
    sub_1BE053D04();
    v17 = v16;
    sub_1BE052524();
    v18 = sub_1BE053D64();

    v19 = -1 << *(v9 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v28;
    v10 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v29 = (v15 - 1) & v15;
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

uint64_t sub_1BD2AF0FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = sub_1BE053804();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = *(*(v5 + 48) + 8 * (v14 | (v12 << 6)));
    result = sub_1BE053064();
    v18 = -1 << *(v10 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v13 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v10 + 48) + 8 * v21) = v17;
    ++*(v10 + 16);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
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

id sub_1BD2AF2E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
  *&v3[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v3[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_identifier];
  *v7 = 0xD000000000000011;
  *(v7 + 1) = 0x80000001BE1212F0;
  *&v3[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_configuration] = a2;
  sub_1BE052434();
  sub_1BE048964();
  sub_1BE048964();
  v8 = sub_1BE04BB74();

  *&v3[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_reporter] = v8;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1BD2AF428(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD2AF470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD2AF4D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 static LayoutUtilities.divide(rect:slice:remainder:amount:edge:)(uint64_t a1, uint64_t a2, CGRectEdge a3, double a4, double a5, double a6, double a7, CGFloat a8)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(&slice, 0, sizeof(slice));
  memset(&v13, 0, sizeof(v13));
  CGRectDivide(*&a4, &slice, &v13, a8, a3);
  result = v13.origin;
  size = v13.size;
  v12 = slice.size;
  *a1 = slice.origin;
  *(a1 + 16) = v12;
  *a2 = result;
  *(a2 + 16) = size;
  return result;
}

double CGRect.center.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

uint64_t sub_1BD2AF648()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BD2AF6E0@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a1;
  v35 = a7;
  v11 = *(a5 - 8);
  v33 = a6;
  v34 = v11;
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40790);
  v14 = sub_1BE04EBD4();
  v32 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v30 - v20;
  v45 = a3;
  v46 = a4;
  v22 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD407A8);
  sub_1BE0516A4();
  v23 = v44;
  v24 = a2;
  v25 = v31;
  v31(v44);

  v26 = v33;
  v36 = a5;
  v37 = v33;
  v38 = v25;
  v39 = v24;
  v40 = a3;
  v41 = v22;
  sub_1BE051CD4();
  sub_1BD2AFA10();
  sub_1BE050814();
  (*(v34 + 8))(v13, a5);
  v27 = sub_1BD2AFA64();
  v42 = v26;
  v43 = v27;
  swift_getWitnessTable();
  sub_1BD147308(v17);
  v28 = *(v32 + 8);
  v28(v17, v14);
  sub_1BD147308(v21);
  return (v28)(v21, v14);
}

uint64_t sub_1BD2AF9B8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD407A8);
  result = sub_1BE0516A4();
  *a1 = v3;
  return result;
}

unint64_t sub_1BD2AFA10()
{
  result = qword_1EBD40798;
  if (!qword_1EBD40798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40798);
  }

  return result;
}

unint64_t sub_1BD2AFA64()
{
  result = qword_1EBD407A0;
  if (!qword_1EBD407A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD407A0);
  }

  return result;
}

uint64_t sub_1BD2AFADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2AFBCC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD2AFB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2AFBCC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD2AFBA4()
{
  sub_1BD2AFBCC();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD2AFBCC()
{
  result = qword_1EBD407B0;
  if (!qword_1EBD407B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD407B0);
  }

  return result;
}

uint64_t sub_1BD2AFC20()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD2AFC94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

void sub_1BD2AFD08()
{
  v1 = v0;
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v16)
  {

    return;
  }

  if ([*(v1 + OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation_group) type] != 3)
  {
    goto LABEL_11;
  }

  v7 = PKPassKitUIBundle();
  if (!v7)
  {
    __break(1u);
LABEL_11:
    sub_1BE053994();
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = sub_1BE052404();
  v10 = sub_1BE052404();
  v11 = [v8 URLForResource:v9 withExtension:v10];

  if (v11)
  {
    sub_1BE04A9F4();

    v12 = sub_1BE04A9C4();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v12 = 0;
  }

  v13 = PKUIScreenScale();
  v14 = PKUIImageFromPDF(v12, 45.0, 45.0, v13);

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v14;
  sub_1BE048964();
  sub_1BE04D8C4();
}

uint64_t sub_1BD2AFFB4()
{
  v1 = OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation__icon;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation__presentationInformation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD407E8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransactionGroupPresentation()
{
  result = qword_1EBD407C8;
  if (!qword_1EBD407C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD2B010C()
{
  sub_1BD2B01E4();
  if (v0 <= 0x3F)
  {
    sub_1BD2B0248();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD2B01E4()
{
  if (!qword_1EBD4F720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4AB00);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4F720);
    }
  }
}

void sub_1BD2B0248()
{
  if (!qword_1EBD407D8)
  {
    sub_1BD2B02A0();
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD407D8);
    }
  }
}

unint64_t sub_1BD2B02A0()
{
  result = qword_1EBD407E0;
  if (!qword_1EBD407E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD407E0);
  }

  return result;
}

uint64_t sub_1BD2B02EC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TransactionGroupPresentation();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

void sub_1BD2B032C(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation_group) identifier];
  v4 = sub_1BE052434();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1BD2B0390@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD2B0410(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD2B0488@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD2B0508(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  v2 = v1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD2B0580(void *a1)
{
  v3 = sub_1BE04AF64();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v54 = sub_1BE04B104();
  v6 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04B2F4();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v48 - v17;
  v19 = OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation__icon;
  v57 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00);
  sub_1BE04D874();
  (*(v15 + 32))(v1 + v19, v18, v14);
  *(v1 + OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation_group) = a1;
  swift_beginAccess();
  v20 = *(v15 + 8);
  v21 = a1;
  v20(v1 + v19, v14);
  v56 = 0;
  sub_1BE04D874();
  swift_endAccess();
  v22 = [objc_allocWithZone(MEMORY[0x1E69B8EC0]) init];
  swift_beginAccess();
  v56 = v22;
  sub_1BD2B02A0();
  sub_1BE04D874();
  swift_endAccess();
  if ([v21 type] == 3)
  {
    v23 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v24 = v54;
    (*(v6 + 104))(v9, *MEMORY[0x1E6969868], v54);
    sub_1BE04B114();
    (*(v6 + 8))(v9, v24);
    v25 = sub_1BE04B1D4();
    (*(v52 + 8))(v13, v53);
    [v23 setCalendar_];

    v26 = sub_1BE052404();
    [v23 setLocalizedDateFormatFromTemplate_];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v27 = v57;
    v28 = sub_1BE052404();
    v29 = PKLocalizedPeerPaymentString(v28);

    if (v29)
    {
      sub_1BE052434();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v30 = swift_allocObject();
      v54 = xmmword_1BE0B69E0;
      *(v30 + 16) = xmmword_1BE0B69E0;
      v31 = [v21 startDate];
      v32 = v49;
      sub_1BE04AEE4();

      v33 = sub_1BE04AE64();
      (*(v50 + 8))(v32, v51);
      v34 = [v23 stringFromDate_];

      v35 = sub_1BE052434();
      v36 = v21;
      v38 = v37;

      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 64) = sub_1BD110550();
      *(v30 + 32) = v35;
      *(v30 + 40) = v38;
      sub_1BE052454();

      v39 = sub_1BE052404();

      [v27 setPrimaryString_];

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v40 = v57;
      v41 = sub_1BE052404();
      v42 = PKLocalizedString(v41);

      if (v42)
      {
        sub_1BE052434();

        v43 = swift_allocObject();
        *(v43 + 16) = v54;
        v44 = [v36 transactionCount];
        v45 = MEMORY[0x1E69E65A8];
        *(v43 + 56) = MEMORY[0x1E69E6530];
        *(v43 + 64) = v45;
        *(v43 + 32) = v44;
        sub_1BE052454();

        v46 = sub_1BE052404();

        [v40 setSecondaryString_];

        return v55;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD2B0CFC()
{
  v1 = [*(v0 + 40) localizedRecoveryOptions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BE052744();

  if (!*(v3 + 16))
  {

    return 0;
  }

  v4 = *(v3 + 32);
  sub_1BE048C84();

  return v4;
}

uint64_t sub_1BD2B0D8C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 40) userInfo];
  v4 = sub_1BE052244();

  v5 = sub_1BE052434();
  if (*(v4 + 16))
  {
    v7 = sub_1BD148F70(v5, v6);
    v9 = v8;

    if (v9)
    {
      sub_1BD038CD0(*(v4 + 56) + 32 * v7, &v15);

      v10 = sub_1BE04AA64();
      v11 = swift_dynamicCast();
      return (*(*(v10 - 8) + 56))(a1, v11 ^ 1u, 1, v10);
    }
  }

  else
  {
  }

  v13 = sub_1BE04AA64();
  v14 = *(*(v13 - 8) + 56);

  return v14(a1, 1, 1, v13);
}

uint64_t sub_1BD2B0F30()
{
  v1 = *v0;
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD2B0F60()
{
  v1 = *(v0 + 16);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD2B0F98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 33) = a7;
  *(a9 + 34) = a8;
  *(a9 + 40) = result;
  return result;
}

double sub_1BD2B0FB4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1BD2B1EAC(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_1BD2B0FFC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1BD2B1050(v7, v8) & 1;
}

uint64_t sub_1BD2B1050(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0 || ((*(a1 + 33) ^ *(a2 + 33)) & 1) != 0 || ((*(a1 + 34) ^ *(a2 + 34)))
  {
    return 0;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  return sub_1BE053074() & 1;
}

BOOL sub_1BD2B1138(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_1BE052434();
  v5 = v4;

  if (v3 == sub_1BE052434() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1BE053B84();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  return [a1 code] == -2008 || objc_msgSend(a1, sel_code) == -2009 || objc_msgSend(a1, sel_code) == -2015;
}

void sub_1BD2B1238(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v136 - v8;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v136 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v136 - v24;
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v136 - v28;
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v34 = &v136 - v33;
  if (!a2)
  {

LABEL_11:
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
LABEL_12:
    *a3 = v41;
    a3[1] = v42;
    a3[2] = v43;
    a3[3] = v44;
    a3[4] = v45;
    a3[5] = v46;
    return;
  }

  v146 = v32;
  v147 = v31;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {

    goto LABEL_11;
  }

  v141 = v15;
  v144 = v35;
  v36 = [v35 error];
  if (!v36)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v37 = v36;
  v142 = v11;
  v38 = [v36 localizedFailureReason];
  if (v38)
  {
    v39 = v38;
    v145 = sub_1BE052434();
    v148 = v40;
  }

  else
  {
    v145 = 0;
    v148 = 0;
  }

  if (sub_1BD2B1138(v37))
  {

    goto LABEL_11;
  }

  v143 = a1;
  v139 = a2;
  v47 = [v37 domain];
  v48 = sub_1BE052434();
  v50 = v49;

  v140 = *MEMORY[0x1E69BBBC8];
  if (v48 == sub_1BE052434() && v50 == v51)
  {
  }

  else
  {
    v52 = sub_1BE053B84();

    if ((v52 & 1) == 0)
    {
LABEL_36:
      LODWORD(v146) = 0;
      v43 = 0;
      v44 = 0;
LABEL_37:
      v64 = v143;
      v42 = v148;
      goto LABEL_38;
    }
  }

  if ([v37 code] != -2007)
  {
    goto LABEL_36;
  }

  v53 = [v37 userInfo];
  v54 = sub_1BE052244();

  v55 = sub_1BE052434();
  if (!*(v54 + 16))
  {

    goto LABEL_25;
  }

  v137 = sub_1BD148F70(v55, v56);
  v58 = v57;

  if ((v58 & 1) == 0)
  {
LABEL_25:

    v42 = v148;
    LODWORD(v146) = 0;
    v43 = 0;
    v44 = 0;
    v64 = v143;
LABEL_38:
    v41 = v145;
    goto LABEL_39;
  }

  sub_1BD038CD0(*(v54 + 56) + 32 * v137, v150);

  sub_1BD0E5E8C(0, &qword_1EBD45E80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v137 = v149;
  v59 = [v149 domain];
  v60 = sub_1BE052434();
  v62 = v61;

  if (v60 == sub_1BE052434() && v62 == v63)
  {
  }

  else
  {
    v65 = sub_1BE053B84();

    if ((v65 & 1) == 0)
    {

      goto LABEL_36;
    }
  }

  v66 = v137;
  v67 = [v137 code];
  if ((v67 & 0x8000000000000000) != 0)
  {

    goto LABEL_36;
  }

  v41 = v145;
  if (v67 != 2)
  {

    LODWORD(v146) = 0;
    v43 = 0;
    v44 = 0;
    v64 = v143;
    v42 = v148;
    goto LABEL_39;
  }

  v68 = [v143 paymentRequest];
  if (!v68)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v69 = v68;
  v70 = [v68 isVirtualCardEnrollmentRequest];

  if (v70)
  {
    v71 = *MEMORY[0x1E69B8058];
    v72 = v142;
    v73 = *(v142 + 104);
    v73(v34, v71, v147);
    v74 = PKPassKitBundle();
    if (!v74)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v75 = v74;
    v145 = sub_1BE04B6F4();
    v148 = v76;

    v77 = *(v72 + 8);
    v78 = v147;
    v77(v34, v147);
    v73(v29, v71, v78);
    v79 = PKPassKitBundle();
    if (!v79)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v80 = v79;
    v43 = sub_1BE04B6F4();
    v44 = v81;

    v77(v29, v147);
    LODWORD(v146) = 1;
    goto LABEL_37;
  }

  v109 = v143;
  v110 = [v143 paymentRequest];
  if (!v110)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v111 = v110;
  v112 = [v110 originatingURL];

  if (v112)
  {
    sub_1BE04A9F4();

    v113 = sub_1BE04AA64();
    (*(*(v113 - 8) + 56))(v9, 0, 1, v113);
    sub_1BD226BBC(v9);
    v114 = v142;
    (*(v142 + 104))(v25, *MEMORY[0x1E69B8068], v147);
    v115 = PKPassKitBundle();
    if (!v115)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v116 = v115;
    v41 = sub_1BE04B6F4();
    v42 = v117;

    (*(v114 + 8))(v25, v147);
    v43 = 0;
    v44 = 0;
    LODWORD(v146) = 1;
    v64 = v109;
LABEL_39:
    v82 = [v37 domain];
    v83 = sub_1BE052434();
    v85 = v84;

    v86 = sub_1BE052434();
    v138 = v37;
    if (v83 == v86 && v85 == v87)
    {
    }

    else
    {
      v88 = sub_1BE053B84();

      if ((v88 & 1) == 0)
      {
LABEL_47:
        if (v42)
        {
          v92 = v64;
          v95 = 0;
          v96 = v144;
          v97 = v139;
LABEL_53:
          v98 = v146;
LABEL_54:
          v107 = [v96 isClientFailure];

          v108 = 256;
          if (!v107)
          {
            v108 = 0;
          }

          v45 = v95 | v98 | v108;
          v46 = v138;
          goto LABEL_12;
        }

        v100 = v141;
        v99 = v142;
        (*(v142 + 104))(v141, *MEMORY[0x1E69B8068], v147);
        v101 = PKPassKitBundle();
        v97 = v139;
        if (v101)
        {
          v102 = v101;
          v103 = sub_1BE04B6F4();
          v105 = v104;

          v106 = v100;
          v42 = v105;
          v41 = v103;
          (*(v99 + 8))(v106, v147);
          v95 = 0;
          v92 = v143;
          v96 = v144;
          goto LABEL_53;
        }

        goto LABEL_67;
      }
    }

    if ([v37 code] == -9003 || objc_msgSend(v37, sel_code) == -9004)
    {

      v89 = [v37 localizedDescription];
      v41 = sub_1BE052434();
      v42 = v90;

      v91 = [v37 localizedFailureReason];
      v92 = v64;
      if (v91)
      {
        v93 = v91;
        v43 = sub_1BE052434();
        v44 = v94;
      }

      else
      {
        v43 = 0;
        v44 = 0;
      }

      v96 = v144;
      v97 = v139;
      v98 = 0;
      v95 = 0x10000;
      goto LABEL_54;
    }

    goto LABEL_47;
  }

  v118 = sub_1BE04AA64();
  (*(*(v118 - 8) + 56))(v9, 1, 1, v118);
  sub_1BD226BBC(v9);
  v119 = *MEMORY[0x1E69B8068];
  v120 = v142;
  v121 = *(v142 + 104);
  v121(v21, *MEMORY[0x1E69B8068], v147);
  v122 = PKPassKitBundle();
  if (!v122)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v123 = v122;
  v145 = v121;
  LODWORD(v148) = v119;
  sub_1BE04B6F4();

  v136 = *(v120 + 8);
  v136(v21, v147);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_1BE0B69E0;
  v125 = [v109 hostAppLocalizedName];
  if (!v125)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v126 = v125;
  v127 = sub_1BE052434();
  v129 = v128;

  *(v124 + 56) = MEMORY[0x1E69E6158];
  *(v124 + 64) = sub_1BD110550();
  *(v124 + 32) = v127;
  *(v124 + 40) = v129;
  v41 = sub_1BE052454();
  v131 = v130;

  v132 = v146;
  v145(v146, v148, v147);
  v133 = PKPassKitBundle();
  if (v133)
  {
    v134 = v133;
    v43 = sub_1BE04B6F4();
    v44 = v135;

    v136(v132, v147);
    LODWORD(v146) = 1;
    v64 = v143;
    v42 = v131;
    goto LABEL_39;
  }

LABEL_75:
  __break(1u);
}

void sub_1BD2B1EAC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04A844();
  v5 = [v4 domain];
  v6 = sub_1BE052434();
  v8 = v7;

  if (v6 == sub_1BE052434() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_1BE053B84();

    if ((v11 & 1) == 0)
    {

      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
LABEL_12:
      *a2 = v12;
      a2[1] = v13;
      a2[2] = v14;
      a2[3] = v15;
      a2[4] = 0;
      a2[5] = v16;
      return;
    }
  }

  v17 = v4;
  v18 = sub_1BE04A844();

  v19 = PKTitleForDisplayableError();
  if (v19)
  {
    v12 = sub_1BE052434();
    v13 = v20;

    v16 = v17;
    v21 = sub_1BE04A844();

    v22 = MEMORY[0x1BFB42D10](v21);
    if (v22)
    {
      v14 = sub_1BE052434();
      v15 = v23;
    }

    else
    {

      v14 = 0;
      v15 = 0;
    }

    goto LABEL_12;
  }

  __break(1u);
}

unint64_t sub_1BD2B2064()
{
  result = qword_1EBD407F0;
  if (!qword_1EBD407F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD407F0);
  }

  return result;
}

unint64_t sub_1BD2B20BC()
{
  result = qword_1EBD407F8;
  if (!qword_1EBD407F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD407F8);
  }

  return result;
}

uint64_t type metadata accessor for PaymentOfferRewardsAmountEntry()
{
  result = qword_1EBD40800;
  if (!qword_1EBD40800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD2B2184()
{
  sub_1BD0E5E8C(319, &qword_1EBD393D8);
  if (v0 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &unk_1EBD3E570);
    if (v1 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v2 <= 0x3F)
      {
        sub_1BD170C00();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD2B2274(id *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v84, v4);
  v83 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - v8;
  v10 = type metadata accessor for PaymentOfferRewardsAmountEntry();
  v81 = *(v10 - 8);
  v11 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v13 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v66 - v16;
  v18 = sub_1BE04BD74();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v23, *MEMORY[0x1E69B8078], v18, v21);
  v24 = sub_1BE04B714();
  v82 = v25;
  (*(v19 + 8))(v23, v18);
  v26 = [a1[1] monetaryValue];
  v27 = [v26 currency];

  if (v27)
  {
    v76 = sub_1BE052434();
    v75 = v28;

    v70 = MEMORY[0x1BFB403C0](0);
    v69 = v29;
    v68 = v30;
    sub_1BD2B296C();
    v79 = v31;
    v78 = v32;
    v77 = v33;
    sub_1BD2B2D18();
    v74 = v34;
    v73 = v35;
    v72 = v36;
    sub_1BD2B31A4();
    v67 = v37;
    v38 = [*a1 dynamicContent];
    v80 = v24;
    if (v38)
    {
      v39 = v38;
      v40 = [v38 dynamicContentPageForPageType_];
    }

    else
    {
      v40 = 0;
    }

    v71 = [v40 footerContent];

    sub_1BD2B4E6C(a1, v17);
    v41 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v42 = swift_allocObject();
    sub_1BD2B4ED0(v17, v42 + v41);
    sub_1BD2B4E6C(a1, v13);
    v43 = swift_allocObject();
    sub_1BD2B4ED0(v13, v43 + v41);
    v85 = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
    sub_1BE051694();
    v44 = v90;
    *(a2 + 376) = v89;
    *(a2 + 392) = v44;
    *&v85 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC88);
    sub_1BE051694();
    *(a2 + 400) = v89;
    LOBYTE(v85) = 0;
    sub_1BE051694();
    v45 = *(&v89 + 1);
    *(a2 + 416) = v89;
    *(a2 + 424) = v45;
    *(a2 + 432) = sub_1BE04E274() & 1;
    *(a2 + 440) = v46;
    *(a2 + 448) = v47 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40810);
    v48 = type metadata accessor for MultiHyperLinkDetailSheet();
    (*(*(v48 - 8) + 56))(v9, 1, 1, v48);
    sub_1BD0DE19C(v9, v83, &unk_1EBD45160);
    sub_1BE051694();
    sub_1BD0DE53C(v9, &unk_1EBD45160);
    v49 = v82;
    *a2 = v80;
    *(a2 + 8) = v49;
    v50 = v75;
    *(a2 + 16) = v76;
    *(a2 + 24) = v50;
    *&v89 = v70;
    *(&v89 + 1) = v69;
    LODWORD(v90) = v68;
    type metadata accessor for Decimal(0);
    sub_1BE051694();
    v51 = v86;
    *(a2 + 344) = v85;
    *(a2 + 360) = v51;
    v52 = v78;
    *(a2 + 32) = v79;
    *(a2 + 40) = v52;
    *(a2 + 48) = v77;
    *(a2 + 52) = v74;
    *(a2 + 60) = v73;
    *(a2 + 68) = v72;
    *(a2 + 72) = v67;
    sub_1BD2B3958(a1, &v89);
    v53 = sub_1BE04FC94();
    v54 = sub_1BE0501C4();
    LOBYTE(v88[0]) = 1;
    v55 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v56 = v94;
    v57 = v95;
    *(a2 + 144) = v93;
    *(a2 + 160) = v56;
    *(a2 + 176) = v57;
    v58 = v96;
    v59 = v90;
    *(a2 + 80) = v89;
    *(a2 + 96) = v59;
    v60 = v92;
    *(a2 + 112) = v91;
    *(a2 + 128) = v60;
    *(a2 + 192) = v58;
    *(a2 + 196) = v53;
    *(a2 + 200) = v54;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 1;
    *(a2 + 244) = *(v88 + 3);
    v61 = *&v87[3];
    *(a2 + 241) = v88[0];
    *(a2 + 248) = v55;
    *(a2 + 252) = v61;
    *(a2 + 249) = *v87;
    *(a2 + 256) = v62;
    *(a2 + 264) = v63;
    *(a2 + 272) = v64;
    *(a2 + 280) = v65;
    *(a2 + 288) = 0;
    *(a2 + 296) = v71;
    *(a2 + 304) = 0;
    *(a2 + 312) = sub_1BD2B4F54;
    *(a2 + 320) = v42;
    *(a2 + 328) = sub_1BD2B50E0;
    *(a2 + 336) = v43;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD2B296C()
{
  v1 = [v0[1] monetaryValue];
  v2 = &selRef_chatWithHandle_;
  v3 = [v1 currency];

  if (v3)
  {
    v35 = sub_1BE052434();
    v5 = v4;
  }

  else
  {
    v35 = 0;
    v5 = 0;
  }

  v6 = [*v0 userEnteredMinimumAmounts];
  if (!v6)
  {
LABEL_34:

    MEMORY[0x1BFB403B0](v31, 0.01);
    return;
  }

  v7 = v6;
  sub_1BD0E5E8C(0, &qword_1EBD43B00);
  sub_1BD2B5358();
  v8 = sub_1BE052A34();

  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BE052A74();
    v8 = v38;
    v9 = v39;
    v10 = v40;
    v11 = v41;
    v12 = v42;
  }

  else
  {
    v13 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v8 + 56);
    sub_1BE048C84();
    v11 = 0;
  }

  v34 = v10;
  v16 = (v10 + 64) >> 6;
  v36 = v5;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_1BE053744() || (swift_dynamicCast(), v21 = v37, v19 = v11, v20 = v12, !v37))
      {
LABEL_33:
        sub_1BD0D45FC();

        goto LABEL_34;
      }
    }

    else
    {
      v17 = v11;
      v18 = v12;
      v19 = v11;
      if (!v12)
      {
        while (1)
        {
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v19 >= v16)
          {
            goto LABEL_33;
          }

          v18 = *(v9 + 8 * v19);
          ++v17;
          if (v18)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_20:
      v20 = (v18 - 1) & v18;
      v21 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
      if (!v21)
      {
        goto LABEL_33;
      }
    }

    v22 = [v21 v2[487]];
    if (!v22)
    {
      if (!v36)
      {
        goto LABEL_37;
      }

      goto LABEL_14;
    }

    v23 = v22;
    v24 = v8;
    v25 = v2;
    v26 = sub_1BE052434();
    v28 = v27;

    if (!v36)
    {

      v2 = v25;
      v8 = v24;
      goto LABEL_14;
    }

    if (v26 == v35 && v36 == v28)
    {
      break;
    }

    v30 = sub_1BE053B84();

    v2 = v25;
    v8 = v24;
    if (v30)
    {
      goto LABEL_37;
    }

LABEL_14:

    v11 = v19;
    v12 = v20;
  }

LABEL_37:
  sub_1BD0D45FC();

  v32 = [v21 amount];
  if (v32)
  {
    v33 = v32;

    sub_1BE0533F4();

    return;
  }

LABEL_40:
  __break(1u);
}

void sub_1BD2B2D18()
{
  v1 = *(v0 + 8);
  v2 = [v1 monetaryValue];
  v3 = &selRef_chatWithHandle_;
  v4 = [v2 currency];

  if (v4)
  {
    v49 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v49 = 0;
    v6 = 0;
  }

  v7 = [*v0 userEnteredMaximumAmounts];
  if (v7)
  {
    v8 = v7;
    sub_1BD0E5E8C(0, &qword_1EBD43B00);
    sub_1BD2B5358();
    v9 = sub_1BE052A34();

    v48 = v1;
    if ((v9 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1BE0536B4();
      sub_1BE052A74();
      v9 = v52;
      v10 = v53;
      v11 = v54;
      v12 = v55;
      v13 = v56;
    }

    else
    {
      v14 = -1 << *(v9 + 32);
      v10 = v9 + 56;
      v11 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v13 = v16 & *(v9 + 56);
      sub_1BE048C84();
      v12 = 0;
    }

    v17 = (v11 + 64) >> 6;
    v50 = v6;
    while (1)
    {
      if (v9 < 0)
      {
        if (!sub_1BE053744() || (swift_dynamicCast(), v22 = v51, v20 = v12, v21 = v13, !v51))
        {
LABEL_33:
          sub_1BD0D45FC();

          v1 = v48;
          goto LABEL_34;
        }
      }

      else
      {
        v18 = v12;
        v19 = v13;
        v20 = v12;
        if (!v13)
        {
          while (1)
          {
            v20 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v20 >= v17)
            {
              goto LABEL_33;
            }

            v19 = *(v10 + 8 * v20);
            ++v18;
            if (v19)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
          goto LABEL_42;
        }

LABEL_20:
        v21 = (v19 - 1) & v19;
        v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
        if (!v22)
        {
          goto LABEL_33;
        }
      }

      v23 = [v22 v3[487]];
      if (v23)
      {
        v24 = v23;
        v25 = v9;
        v26 = v3;
        v27 = sub_1BE052434();
        v29 = v28;

        if (v50)
        {
          if (v27 == v49 && v50 == v29)
          {

LABEL_38:
            sub_1BD0D45FC();

            v34 = [v22 amount];
            if (!v34)
            {
              goto LABEL_43;
            }

            v35 = v34;

            v36 = sub_1BE0533F4();
            v38 = v37;
            v40 = v39;

            v41 = [v48 monetaryValue];
            v42 = [v41 amount];

            if (v42)
            {
              v43 = sub_1BE0533F4();
              v45 = v44;
              v47 = v46;

              MEMORY[0x1BFB403F0](v43, v45, v47, v36, v38, v40);
              return;
            }

LABEL_44:
            __break(1u);
            return;
          }

          v31 = sub_1BE053B84();

          v3 = v26;
          v9 = v25;
          if (v31)
          {
            goto LABEL_38;
          }
        }

        else
        {

          v3 = v26;
          v9 = v25;
        }
      }

      else if (!v50)
      {
        goto LABEL_38;
      }

      v12 = v20;
      v13 = v21;
    }
  }

LABEL_34:
  v32 = [v1 monetaryValue];
  v33 = [v32 amount];

  if (!v33)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_1BE0533F4();
}

void sub_1BD2B31A4()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B7020;
  (*(v2 + 104))(v5, *MEMORY[0x1E69B8088], v1);
  sub_1BE04B714();
  (*(v2 + 8))(v5, v1);
  v7 = *(v0 + 8);
  v8 = [v7 monetaryValue];
  v9 = [v8 amount];

  if (v9)
  {
    sub_1BE0533F4();

    v10 = sub_1BE053344();
    v11 = [v7 monetaryValue];
    v12 = [v11 currency];

    if (v12)
    {
      sub_1BE052434();
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_1BE052404();

    if (v14)
    {
      v16 = sub_1BE052404();
    }

    else
    {
      v16 = 0;
    }

    v17 = [objc_opt_self() suggestionWithTitle:v15 value:v10 currencyCode:v16];

    if (v17)
    {
      *(v6 + 32) = v17;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD2B344C()
{
  v0 = sub_1BE04E664();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD2B353C();
  type metadata accessor for PaymentOfferRewardsAmountEntry();
  sub_1BD70A050(v4);
  sub_1BE04E654();
  return (*(v1 + 8))(v4, v0);
}

void sub_1BD2B353C()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE0B6CA0;
  v2 = *MEMORY[0x1E69BB6C0];
  v3 = *MEMORY[0x1E69BB6F8];
  *(v1 + 32) = *MEMORY[0x1E69BB6C0];
  *(v1 + 40) = v3;
  type metadata accessor for PKAnalyticsSubject(0);
  v4 = v2;
  v5 = v3;
  v6 = sub_1BE052724();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v8 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v9;
  v10 = *MEMORY[0x1E69BA440];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  v11 = sub_1BE052434();
  v12 = MEMORY[0x1E69BABE8];
  *(inited + 64) = v11;
  *(inited + 72) = v13;
  v14 = *v12;
  *(inited + 80) = *v12;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v15;
  v16 = v8;
  v17 = v10;
  v18 = v14;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD2B5310(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v19 = sub_1BE052224();

  [v0 subjects:v6 sendEvent:v19];
}

void sub_1BD2B3760()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE0B6CA0;
  v2 = *MEMORY[0x1E69BB6C0];
  v3 = *MEMORY[0x1E69BB6F8];
  *(v1 + 32) = *MEMORY[0x1E69BB6C0];
  *(v1 + 40) = v3;
  type metadata accessor for PKAnalyticsSubject(0);
  v4 = v2;
  v5 = v3;
  v6 = sub_1BE052724();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v8 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v9 = sub_1BE052434();
  v10 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v9;
  *(inited + 48) = v11;
  v12 = *v10;
  *(inited + 56) = *v10;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v13;
  v14 = v8;
  v15 = v12;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD2B5310(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v16 = sub_1BE052224();

  [v0 subjects:v6 sendEvent:v16];
}

uint64_t sub_1BD2B3958@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 dynamicContent];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 dynamicContentPageForPageType_];

    if (v6)
    {
      v7 = [v6 title];

      if (v7)
      {
        sub_1BE052434();

        v8 = [v3 dynamicContent];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 dynamicContentPageForPageType_];

          if (v10)
          {
            v11 = [v10 subtitle];

            if (v11)
            {
              sub_1BE052434();

              v12 = sub_1BE04F7B4();
              LOBYTE(v34) = 0;
              sub_1BD2B410C(v57);
              v43 = *&v57[32];
              *v44 = *&v57[48];
              *&v44[9] = *&v57[57];
              v41 = *v57;
              v42 = *&v57[16];
              v47 = *&v57[32];
              *v48 = *&v57[48];
              *&v48[9] = *&v57[57];
              v45 = *v57;
              v46 = *&v57[16];
              sub_1BD0DE19C(&v41, &v53, &qword_1EBD40828);
              sub_1BD0DE53C(&v45, &qword_1EBD40828);

              *&v57[7] = v41;
              *&v57[23] = v42;
              *&v57[39] = v43;
              *&v57[55] = *v44;
              *&v49 = v12;
              *(&v49 + 1) = 0x4000000000000000;
              v50[0] = 0;
              *&v50[1] = *v57;
              *&v50[65] = *&v44[9];
              *&v50[49] = *&v57[48];
              *&v50[33] = *&v57[32];
              *&v50[17] = *&v57[16];
              *v57 = v49;
              *&v57[16] = *v50;
              *&v57[64] = *&v50[48];
              *&v57[80] = *&v50[64];
              LOBYTE(v58) = v44[24];
              *&v57[32] = *&v50[16];
              *&v57[48] = *&v50[32];
              v51 = 0;
              HIBYTE(v59) = 0;
              v13 = &qword_1EBD40838;
              sub_1BD0DE19C(&v49, &v53, &qword_1EBD40838);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40838);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40858);
              sub_1BD0DE4F4(&qword_1EBD40848, &qword_1EBD40838);
              sub_1BD0DE4F4(&qword_1EBD40850, &qword_1EBD40858);
LABEL_13:
              sub_1BE04F9A4();
              *&v54[48] = *&v37[16];
              *&v54[64] = v38;
              *&v54[80] = v39;
              v55 = v40;
              v53 = v34;
              *v54 = v35;
              *&v54[16] = v36;
              *&v54[32] = *v37;
              v52 = 0;
              v56 = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40830);
              sub_1BD2B5190();
              sub_1BE04F9A4();
              result = sub_1BD0DE53C(&v49, v13);
              goto LABEL_16;
            }
          }
        }
      }
    }
  }

  v14 = [v3 dynamicContent];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 dynamicContentPageForPageType_];

    if (v16)
    {
      v17 = [v16 title];

      if (v17)
      {
        sub_1BE052434();

        v18 = sub_1BE04F7B4();
        LOBYTE(v34) = 0;
        sub_1BD2B431C(v57);
        v43 = *&v57[32];
        *v44 = *&v57[48];
        *&v44[16] = *&v57[64];
        *&v44[25] = *&v57[73];
        v41 = *v57;
        v42 = *&v57[16];
        *&v48[25] = *&v57[73];
        v47 = *&v57[32];
        *v48 = *&v57[48];
        *&v48[16] = *&v57[64];
        v45 = *v57;
        v46 = *&v57[16];
        sub_1BD0DE19C(&v41, &v53, &qword_1EBD40860);
        sub_1BD0DE53C(&v45, &qword_1EBD40860);

        *&v57[7] = v41;
        *&v57[23] = v42;
        *&v57[71] = *&v44[16];
        *&v57[55] = *v44;
        *&v57[39] = v43;
        *&v50[1] = *v57;
        *&v50[33] = *&v57[32];
        *&v50[49] = *&v57[48];
        *&v50[65] = *&v57[64];
        *&v49 = v18;
        *(&v49 + 1) = 0x4000000000000000;
        v50[0] = 0;
        *&v50[81] = *&v44[25];
        *&v50[17] = *&v57[16];
        *&v57[64] = *&v50[48];
        *&v57[80] = *&v50[64];
        v58 = *&v50[80];
        LOBYTE(v59) = v44[40];
        *v57 = v49;
        *&v57[16] = *v50;
        *&v57[32] = *&v50[16];
        *&v57[48] = *&v50[32];
        v51 = 1;
        HIBYTE(v59) = 1;
        v13 = &qword_1EBD40858;
        sub_1BD0DE19C(&v49, &v53, &qword_1EBD40858);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40838);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40858);
        sub_1BD0DE4F4(&qword_1EBD40848, &qword_1EBD40838);
        sub_1BD0DE4F4(&qword_1EBD40850, &qword_1EBD40858);
        goto LABEL_13;
      }
    }
  }

  result = sub_1BD2B45B8();
  if (!v20)
  {
    v31 = 0;
    v32 = 0;
    v25 = 0uLL;
    v33 = 16711680;
    v26 = 0uLL;
    v28 = 0uLL;
    v27 = 0uLL;
    v30 = 0uLL;
    v29 = 0uLL;
    goto LABEL_18;
  }

  v21 = result;
  v22 = v20;
  v23 = sub_1BE04F7B4();
  LOBYTE(v45) = 0;
  sub_1BD2B49EC(v21, v22, v57);
  *&v50[16] = *&v57[32];
  *&v50[32] = *&v57[48];
  *&v50[41] = *&v57[57];
  v49 = *v57;
  *v50 = *&v57[16];
  v36 = *&v57[32];
  *v37 = *&v57[48];
  *&v37[9] = *&v57[57];
  v34 = *v57;
  v35 = *&v57[16];
  sub_1BD0DE19C(&v49, &v53, &qword_1EBD40828);
  sub_1BD0DE53C(&v34, &qword_1EBD40828);

  *&v61[64] = *&v50[41];
  *&v61[55] = *&v50[32];
  *&v61[39] = *&v50[16];
  *&v61[23] = *v50;
  *&v61[7] = v49;
  *&v54[33] = *&v61[32];
  *&v54[49] = *&v61[48];
  *&v54[65] = *&v61[64];
  *&v54[17] = *&v61[16];
  v24 = v45;
  LOBYTE(v45) = 1;
  *&v53 = v23;
  *(&v53 + 1) = 0x4000000000000000;
  v54[0] = v24;
  *&v54[1] = *v61;
  v56 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40838);
  sub_1BD2B5190();
  sub_1BD0DE4F4(&qword_1EBD40848, &qword_1EBD40838);
  result = sub_1BE04F9A4();
LABEL_16:
  v25 = *v57;
  v26 = *&v57[16];
  v28 = *&v57[32];
  v27 = *&v57[48];
  v30 = *&v57[64];
  v29 = *&v57[80];
  v32 = *(&v58 + 1);
  v31 = v58;
  v33 = v59 | (v60 << 16);
LABEL_18:
  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 32) = v28;
  *(a2 + 48) = v27;
  *(a2 + 64) = v30;
  *(a2 + 80) = v29;
  *(a2 + 96) = v31;
  *(a2 + 104) = v32;
  *(a2 + 112) = v33;
  *(a2 + 114) = BYTE2(v33);
  return result;
}

uint64_t sub_1BD2B410C@<X0>(uint64_t a1@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  sub_1BE050424();
  v7 = sub_1BE0505F4();
  v25 = v8;
  v26 = v7;
  v24 = v9;
  v27 = v10;

  sub_1BD0DDF10(v2, v4, v6 & 1);

  sub_1BE048C84();
  v11 = sub_1BE0506C4();
  v13 = v12;
  LOBYTE(v4) = v14;
  sub_1BE050324();
  v15 = sub_1BE0505F4();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1BD0DDF10(v11, v13, v4 & 1);

  KeyPath = swift_getKeyPath();
  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v27;
  *(a1 + 32) = v15;
  *(a1 + 40) = v17;
  *(a1 + 48) = v19 & 1;
  *(a1 + 56) = v21;
  *(a1 + 64) = KeyPath;
  *(a1 + 72) = 1;
  sub_1BD0D7F18(v26, v25, v24 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v15, v17, v19 & 1);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD0DDF10(v15, v17, v19 & 1);

  sub_1BD0DDF10(v26, v25, v24 & 1);
}

uint64_t sub_1BD2B431C@<X0>(uint64_t a1@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  sub_1BE050424();
  v7 = sub_1BE0505F4();
  v36 = v8;
  v37 = v7;
  v32 = v9;
  v35 = v10;

  sub_1BD0DDF10(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  sub_1BD2B45B8();
  if (v11)
  {
    v12 = sub_1BE0506C4();
    v14 = v13;
    v16 = v15;
    sub_1BE050324();
    v17 = sub_1BE0505F4();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_1BD0DDF10(v12, v14, v16 & 1);

    v24 = swift_getKeyPath();
    v25 = v21 & 1;
    v26 = v17;
    v27 = v19;
    v28 = v25;
    sub_1BD0D7F18(v17, v19, v25);
    v33 = v23;
    sub_1BE048C84();
    v29 = v24;
    sub_1BE048964();
    v30 = 1;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v33 = 0;
    v29 = 0;
    v30 = 0;
  }

  sub_1BD0D7F18(v37, v36, v32 & 1);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD2B5270(v26, v27, v28, v33);
  sub_1BD2B52C0(v26, v27, v28, v33);
  *a1 = v37;
  *(a1 + 8) = v36;
  *(a1 + 16) = v32 & 1;
  *(a1 + 24) = v35;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = v26;
  *(a1 + 56) = v27;
  *(a1 + 64) = v28;
  *(a1 + 72) = v33;
  *(a1 + 80) = v29;
  *(a1 + 88) = v30;
  sub_1BD2B52C0(v26, v27, v28, v33);
  sub_1BD0DDF10(v37, v36, v32 & 1);
}

uint64_t sub_1BD2B45B8()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE053304();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v12 = [v11 monetaryValue];
  v13 = [v11 type];
  v14 = [v12 minimalFormattedStringValue];
  if (v14)
  {
    v35 = v2;
    v36 = v1;
    v15 = v14;
    v16 = sub_1BE052434();
    v18 = v17;

    if ([v11 type] != 3)
    {
      v19 = [v11 value];
      if (v19)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = 1;
        v20 = v19;
        sub_1BE0533E4();

        if (v41 != 1)
        {
          MEMORY[0x1BFB37210]();
          sub_1BD2B5310(&qword_1EBD45110, MEMORY[0x1E6969FD0]);
          sub_1BE053464();
          (*(v6 + 8))(v10, v5);
          v21 = v38;
          v22 = v39;
          if (v13 == 2)
          {
            v34 = "NTRY_MAXIMUM_AMOUNT";
            v24 = v35;
            v23 = v36;
            v25 = v37;
            (*(v35 + 104))(v37, *MEMORY[0x1E69B8088], v36);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
            v29 = swift_allocObject();
            *(v29 + 16) = xmmword_1BE0B6CA0;
            v30 = MEMORY[0x1E69E6158];
            *(v29 + 56) = MEMORY[0x1E69E6158];
            v31 = sub_1BD110550();
            *(v29 + 32) = v16;
            *(v29 + 40) = v18;
            *(v29 + 96) = v30;
            *(v29 + 104) = v31;
            *(v29 + 64) = v31;
            *(v29 + 72) = v21;
            *(v29 + 80) = v22;
            goto LABEL_10;
          }

          if (v13 == 1)
          {
            v34 = "WARDS_BALANCE_TYPE_MILES";
            v24 = v35;
            v23 = v36;
            v25 = v37;
            (*(v35 + 104))(v37, *MEMORY[0x1E69B8088], v36);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
            v26 = swift_allocObject();
            *(v26 + 16) = xmmword_1BE0B6CA0;
            v27 = MEMORY[0x1E69E6158];
            *(v26 + 56) = MEMORY[0x1E69E6158];
            v28 = sub_1BD110550();
            *(v26 + 32) = v16;
            *(v26 + 40) = v18;
            *(v26 + 96) = v27;
            *(v26 + 104) = v28;
            *(v26 + 64) = v28;
            *(v26 + 72) = v21;
            *(v26 + 80) = v22;
LABEL_10:
            v16 = sub_1BE04B714();

            (*(v24 + 8))(v25, v23);
            return v16;
          }
        }
      }
    }

    return v16;
  }

  return 0;
}

uint64_t sub_1BD2B49EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v43 = a2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B8088], v4, v7);
  v10 = sub_1BE04B714();
  v12 = v11;
  (*(v5 + 8))(v9, v4);
  v46 = v10;
  v47 = v12;
  sub_1BD0DDEBC();
  v13 = sub_1BE0506C4();
  v15 = v14;
  v17 = v16;
  sub_1BE050424();
  v18 = sub_1BE0505F4();
  v39 = v19;
  v40 = v18;
  HIDWORD(v38) = v20;
  v41 = v21;

  sub_1BD0DDF10(v13, v15, v17 & 1);

  v46 = v42;
  v47 = v43;
  sub_1BE048C84();
  v22 = sub_1BE0506C4();
  v24 = v23;
  LOBYTE(v13) = v25;
  sub_1BE050324();
  v26 = sub_1BE0505F4();
  v28 = v27;
  LOBYTE(v10) = v29;
  v31 = v30;

  sub_1BD0DDF10(v22, v24, v13 & 1);

  KeyPath = swift_getKeyPath();
  v33 = BYTE4(v38) & 1;
  LOBYTE(v46) = BYTE4(v38) & 1;
  v45 = BYTE4(v38) & 1;
  v44 = v10 & 1;
  v35 = v39;
  v34 = v40;
  *a3 = v40;
  *(a3 + 8) = v35;
  *(a3 + 16) = v33;
  *(a3 + 24) = v41;
  *(a3 + 32) = v26;
  *(a3 + 40) = v28;
  *(a3 + 48) = v10 & 1;
  *(a3 + 56) = v31;
  *(a3 + 64) = KeyPath;
  *(a3 + 72) = 1;
  v36 = v34;
  sub_1BD0D7F18(v34, v35, v33);
  sub_1BE048C84();
  sub_1BD0D7F18(v26, v28, v10 & 1);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD0DDF10(v26, v28, v10 & 1);

  sub_1BD0DDF10(v36, v35, v46);
}

uint64_t sub_1BD2B4CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40810);
  sub_1BD0DE4F4(&qword_1EBD40818, &qword_1EBD40810);
  sub_1BE04EC04();
  sub_1BD2B4E6C(v4, v8);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_1BD2B4ED0(v8, v10 + v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40820);
  v12 = (a3 + *(result + 36));
  *v12 = sub_1BD2B4F34;
  v12[1] = v10;
  v12[2] = 0;
  v12[3] = 0;
  return result;
}

uint64_t sub_1BD2B4E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferRewardsAmountEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2B4ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferRewardsAmountEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2B4F54()
{
  type metadata accessor for PaymentOfferRewardsAmountEntry();

  return sub_1BD2B344C();
}

uint64_t objectdestroyTm_21()
{
  v1 = (type metadata accessor for PaymentOfferRewardsAmountEntry() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD2B50E0(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(type metadata accessor for PaymentOfferRewardsAmountEntry() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));
  sub_1BD2B353C();
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  v13 = 0;
  v12 = 0;
  v14 = 0;
  v15 = 1;
  return (*(v8 + 16))(v10);
}

unint64_t sub_1BD2B5190()
{
  result = qword_1EBD40840;
  if (!qword_1EBD40840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40830);
    sub_1BD0DE4F4(&qword_1EBD40848, &qword_1EBD40838);
    sub_1BD0DE4F4(&qword_1EBD40850, &qword_1EBD40858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40840);
  }

  return result;
}

uint64_t sub_1BD2B5270(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BD0D7F18(result, a2, a3 & 1);
    sub_1BE048C84();

    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BD2B52C0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BD0DDF10(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BD2B5310(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD2B5358()
{
  result = qword_1EBD45080;
  if (!qword_1EBD45080)
  {
    sub_1BD0E5E8C(255, &qword_1EBD43B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45080);
  }

  return result;
}

unint64_t sub_1BD2B53C0()
{
  result = qword_1EBD40868;
  if (!qword_1EBD40868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40820);
    sub_1BD0DE4F4(&qword_1EBD40870, &qword_1EBD40878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40868);
  }

  return result;
}

id sub_1BD2B5478()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView) userEducationDemoController];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 state];

  return v3;
}

id ApplePayUserEducationDemoStackView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ApplePayUserEducationDemoStackView.init()()
{
  *&v0[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_presentationState] = 1;
  v1 = [objc_allocWithZone(PKPassGroupStackView) initWithFrame_];
  *&v0[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView] = v1;
  result = [objc_allocWithZone(MEMORY[0x1E69B88E0]) init];
  if (result)
  {
    *&v0[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupsController] = result;
    v3 = objc_allocWithZone(type metadata accessor for EducationalMessageView());
    *&v0[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView] = EducationalMessageView.init(with:)(0);
    v24.receiver = v0;
    v24.super_class = type metadata accessor for ApplePayUserEducationDemoStackView();
    v4 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v5 = sub_1BD2B70D0();
    if (v5)
    {
      v6 = v5;
      v7 = *&v4[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupsController];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1BE0B7020;
      *(v8 + 32) = v6;
      sub_1BD0E5E8C(0, &qword_1EBD40650);
      v9 = v7;
      v10 = v6;
      v11 = sub_1BE052724();

      [v9 addLocalPasses_];
    }

    v12 = OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView;
    v13 = *&v4[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView];
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 backgroundColor];
    [v15 setBackgroundColor_];

    [*&v4[v12] setShowsVerticalScrollIndicator_];
    v17 = *&v4[v12];
    v18 = v4;
    [v17 setDelegate_];
    [*&v4[v12] setDatasource_];
    v19 = *&v4[v12];
    v20 = objc_allocWithZone(PKApplePayUserEducationDemoController);
    v21 = v19;
    v22 = [v20 initWithDelegate:v18 method:0];
    [v21 setUserEducationDemoController_];

    sub_1BD2B5D68(0);
    v23 = [*&v4[v12] backgroundColor];
    [v18 setBackgroundColor_];

    [v18 addSubview_];
    [v18 addSubview_];

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD2B58EC()
{
  v25 = *MEMORY[0x1E69E9840];
  v24.receiver = v0;
  v24.super_class = type metadata accessor for ApplePayUserEducationDemoStackView();
  objc_msgSendSuper2(&v24, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [*&v0[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView] setFrame_];
  [objc_opt_self() defaultHorizontalInset];
  v10 = v9;
  [v0 safeAreaInsets];
  v11 = PKEdgeInsetsInsetRectTm(v2, v4, v6, v8, 0.0, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *&v0[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView];
  [v18 sizeThatFits_];
  v20 = v19;
  memset(&slice, 0, sizeof(slice));
  memset(&v22, 0, sizeof(v22));
  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  CGRectDivide(v26, &slice, &v22, v20, CGRectMaxYEdge);
  return [v18 setFrame_];
}

void sub_1BD2B5ABC(char a1)
{
  v2 = ~a1;
  [*(v1 + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView) setPresentationState:3 withContext:0 animated:(a1 & 1) == 0 completion:0];
  if ((v2 & 1) == 0)
  {
    v3 = [objc_allocWithZone(PKPassPresentationContext) init];
    [v3 setFieldDetect_];
    [v3 setPostPayment_];
    [v3 setPresentFanned_];
    v4 = v3;
    sub_1BD2B5BA8(v3);
  }
}

void sub_1BD2B5BA8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView);
  if ([v3 presentationState] != 5)
  {
    [v3 presentDiff:0 completion:0];
    [v3 setModalGroupIndex_];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6[4] = sub_1BD2B7D98;
    v6[5] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1BD976224;
    v6[3] = &block_descriptor_46;
    v5 = _Block_copy(v6);

    [v3 setPresentationState:5 withContext:a1 animated:1 completion:v5];
    _Block_release(v5);
  }
}

void sub_1BD2B5CE0(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a1 & 1) == 0)
    {
      v3 = Strong;
      v4 = [*&Strong[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView] presentationState];
      Strong = v3;
      *&v3[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_presentationState] = v4;
    }
  }
}

void sub_1BD2B5D68(uint64_t a1)
{
  v3 = sub_1BE051F54();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1BE051FA4();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v6);
  v59 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04AA64();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v56 - v20;
  v65 = v1;
  v22 = *&v1[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView];
  v23 = [*&v22[OBJC_IVAR____PKEducationalMessageView_titleLabel] attributedText];
  if (v23)
  {
    goto LABEL_3;
  }

  v23 = [*&v22[OBJC_IVAR____PKEducationalMessageView_messageLabel] text];
  if (v23)
  {
    goto LABEL_3;
  }

  if (*&v22[OBJC_IVAR____PKEducationalMessageView_actionButton])
  {
    goto LABEL_4;
  }

  v23 = [*&v22[OBJC_IVAR____PKEducationalMessageView_imageView] image];
  if (v23)
  {
LABEL_3:

LABEL_4:
    v66 = [v22 isHidden] ^ 1;
    goto LABEL_5;
  }

  v66 = 0;
LABEL_5:
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = [objc_opt_self() secondaryLabelColor];
  v26 = [objc_allocWithZone(PKEducationalMessageViewConfiguration) init];
  v67 = v25;
  [v26 setTitleColor_];
  if (a1 == 3)
  {
    goto LABEL_13;
  }

  if (a1 == 1)
  {
    *(v24 + 16) = 1;
    (*(v13 + 104))(v21, *MEMORY[0x1E69B80D8], v12);
    v27 = PKPassKitBundle();
    if (!v27)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v28 = v27;
    sub_1BE04B6F4();
    v16 = v29;

    v30 = *(v13 + 8);
    v13 += 8;
    v30(v21, v12);
    v31 = sub_1BE052404();

    [v26 setTitle_];

    v32 = PKPassKitUIBundle();
    if (!v32)
    {
LABEL_28:
      __break(1u);
      return;
    }

    v33 = v32;
    v34 = sub_1BE052404();
    v35 = sub_1BE052404();
    v36 = [v33 URLForResource:v34 withExtension:v35];

    if (v36)
    {
      sub_1BE04A9F4();

      v36 = sub_1BE04A9C4();
      (*(v57 + 8))(v11, v58);
    }

    v37 = PKUIScreenScale();
    v12 = PKUIImageFromPDF(v36, 70.0, 70.0, v37);

    if (v12)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_13:
    *(v24 + 16) = 1;
    (*(v13 + 104))(v16, *MEMORY[0x1E69B80D8], v12);
    v38 = PKPassKitBundle();
    if (v38)
    {
      v39 = v38;
      sub_1BE04B6F4();

      (*(v13 + 8))(v16, v12);
      v40 = sub_1BE052404();

      [v26 setTitle_];

      v41 = [objc_opt_self() configurationWithPointSize:3 weight:50.0];
      v42 = sub_1BE052404();
      v12 = [objc_opt_self() systemImageNamed:v42 withConfiguration:v41];

      if (!v12)
      {
        v43 = 0;
        goto LABEL_16;
      }

LABEL_15:
      v43 = [v12 imageWithTintColor:v67 renderingMode:1];

LABEL_16:
      [v26 setImage_];

      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_17:
  v44 = v66;
  if ((v66 & 1) != 0 || *(v24 + 16) == 1)
  {
    v45 = swift_allocObject();
    v46 = v65;
    *(v45 + 16) = v65;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v47 = v46;
    v48 = sub_1BE052D54();
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *(v50 + 24) = v44;
    *(v50 + 32) = v24;
    *(v50 + 40) = sub_1BD2B7DA0;
    *(v50 + 48) = v45;
    *(v50 + 56) = v26;
    aBlock[4] = sub_1BD2B7DA8;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_21;
    v51 = _Block_copy(aBlock);
    sub_1BE048964();
    sub_1BE048964();
    v52 = v26;

    v53 = v59;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v54 = v61;
    v55 = v64;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v53, v54, v51);
    _Block_release(v51);

    (*(v63 + 8))(v54, v55);
    (*(v60 + 8))(v53, v62);
  }

  else
  {
    [v22 setHidden_];
    [v22 setAlpha_];
  }
}

void sub_1BD2B6678(char a1, void (*a2)(), uint64_t a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v13 = sub_1BD2B7DD0;
  v14 = v7;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1BD126964;
  v12 = &block_descriptor_33_0;
  v8 = _Block_copy(&v9);

  if (a2)
  {
    v13 = a2;
    v14 = a3;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_1BD976224;
    v12 = &block_descriptor_36_0;
    a2 = _Block_copy(&v9);
    sub_1BE048964();
  }

  [objc_opt_self() animateWithDuration:v8 animations:a2 completion:0.2];
  _Block_release(a2);
  _Block_release(v8);
}

void sub_1BD2B6804(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView);

    v6 = 0.0;
    if (a2)
    {
      v6 = 1.0;
    }

    [v5 setAlpha_];
  }
}

void sub_1BD2B6898(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, void (*)(uint64_t a1), void *), uint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a2)
    {
      swift_beginAccess();
      if (*(a3 + 16) == 1)
      {
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v14 = swift_allocObject();
        v14[2] = v13;
        v14[3] = a6;
        v14[4] = a4;
        v14[5] = a5;
        sub_1BE048964();
        v15 = a6;
        sub_1BE048964();
        a4(0, sub_1BD2B7DC4, v14);

LABEL_10:

        return;
      }

      swift_beginAccess();
      if ((*(a3 + 16) & 1) == 0)
      {
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1BE048964();
        a4(0, sub_1BD2B7DBC, v18);

        goto LABEL_10;
      }
    }

    else
    {
      swift_beginAccess();
      if (*(a3 + 16) != 1)
      {
        goto LABEL_10;
      }
    }

    v16 = OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView;
    [*&v12[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView] setHidden_];
    v17 = *&v12[v16];
    sub_1BD416E04(a6);

    [v12 setNeedsLayout];
    [v12 layoutIfNeeded];
    a4(1, 0, 0);
    goto LABEL_10;
  }
}

void sub_1BD2B6AD4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, void, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView);
    sub_1BD416E04(a3);

    [v7 setNeedsLayout];
    [v7 layoutIfNeeded];
    a4(1, 0, 0);
  }
}

void sub_1BD2B6B9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView);

    [v2 setHidden_];
  }
}

id ApplePayUserEducationDemoStackView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ApplePayUserEducationDemoStackView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplePayUserEducationDemoStackView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__C::PKPassSuppressedContent __swiftcall ApplePayUserEducationDemoStackView.suppressedContent()()
{
  if (PKIsLowEndDevice())
  {
    return 819;
  }

  else
  {
    return 307;
  }
}

id ApplePayUserEducationDemoStackView.group(at:)(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupsController) groupAtIndex_];

  return v2;
}

Swift::Void __swiftcall ApplePayUserEducationDemoStackView.userEducationDemoControllerRequestsUserRestart()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage) == 2)
    {
      *(Strong + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage) = 1;
      sub_1BD564A24(2);
    }

    swift_unknownObjectRelease();
  }
}

uint64_t ApplePayUserEducationDemoStackView.userEducationDemoControllerDidChange(_:oldState:)(unint64_t a1, unint64_t a2)
{
  sub_1BD2B5D68(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD565620(a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1BD2B70D0()
{
  v120 = *MEMORY[0x1E69E9840];
  v0 = sub_1BE04AFE4();
  *&v108 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  v112 = v4;
  v113 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v104 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v104 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v107 = &v104 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v106 = &v104 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v104 - v25;
  v27 = sub_1BE04AA64();
  v28 = *(v27 - 8);
  v109 = v27;
  v110 = v28;
  MEMORY[0x1EEE9AC00](v27, v29);
  v111 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = PKPassKitUIBundle();
  if (!v31)
  {
    __break(1u);
  }

  v32 = v31;
  v33 = sub_1BE052404();
  v34 = sub_1BE052404();
  v35 = [v32 URLForResource:v33 withExtension:v34];

  if (!v35)
  {
    sub_1BE04D134();
    v51 = sub_1BE04D204();
    v52 = sub_1BE052C34();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1BD026000, v51, v52, "Failed to get URL for user education demo pass", v53, 2u);
      MEMORY[0x1BFB45F20](v53, -1, -1);
    }

    (*(v113 + 8))(v8, v112);
    return 0;
  }

  v36 = v111;
  sub_1BE04A9F4();

  *&v118 = 0;
  v37 = objc_allocWithZone(MEMORY[0x1E69B88C8]);
  v38 = sub_1BE04A9C4();
  v39 = [v37 initWithFileURL:v38 error:&v118 coordinator:0];

  v40 = v118;
  if (v118)
  {
    v41 = v118;
    sub_1BE04D134();
    v42 = v41;
    v43 = sub_1BE04D204();
    v44 = sub_1BE052C34();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = v39;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v42;
      *v47 = v40;
      v48 = v42;
      _os_log_impl(&dword_1BD026000, v43, v44, "Failed to create file accessor for the demo pass. %@", v46, 0xCu);
      sub_1BD1E236C(v47);
      v49 = v47;
      v36 = v111;
      MEMORY[0x1BFB45F20](v49, -1, -1);
      v50 = v46;
      v39 = v45;
      MEMORY[0x1BFB45F20](v50, -1, -1);
    }

    (*(v113 + 8))(v26, v112);
    (*(v110 + 8))(v36, v109);

    return 0;
  }

  if (!v39 || (v54 = [v39 dictionary]) == 0)
  {
    sub_1BE04D134();
    v89 = sub_1BE04D204();
    v90 = sub_1BE052C34();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = v39;
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_1BD026000, v89, v90, "Empty pass dictionary found when creating demo pass", v92, 2u);
      MEMORY[0x1BFB45F20](v92, -1, -1);
    }

    else
    {
    }

    (*(v113 + 8))(v12, v112);
    (*(v110 + 8))(v36, v109);
    return 0;
  }

  v105 = v39;
  v55 = v54;
  v56 = sub_1BE052244();

  *&v116 = sub_1BE052434();
  *(&v116 + 1) = v57;
  v58 = MEMORY[0x1E69E6158];
  sub_1BE0537C4();
  sub_1BE04AFD4();
  v59 = sub_1BE04AF74();
  v61 = v60;
  (*(v108 + 8))(v3, v0);
  v117 = v58;
  *&v116 = v59;
  *(&v116 + 1) = v61;
  sub_1BD1B6140(&v116, v115);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v114 = v56;
  sub_1BD1DAFB0(v115, &v118, isUniquelyReferenced_nonNull_native);
  sub_1BD149CE8(&v118);
  v63 = v114;
  *&v115[0] = sub_1BE052434();
  *(&v115[0] + 1) = v64;
  sub_1BE0537C4();
  if (!*(v63 + 16) || (v65 = sub_1BD149040(&v118), (v66 & 1) == 0))
  {
    sub_1BD149CE8(&v118);
    goto LABEL_27;
  }

  sub_1BD038CD0(*(v63 + 56) + 32 * v65, &v116);
  sub_1BD149CE8(&v118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40A30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  if (!*(*&v115[0] + 16))
  {

    goto LABEL_27;
  }

  sub_1BD038CD0(*&v115[0] + 32, &v118);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52590);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    sub_1BE04D134();
    v93 = sub_1BE04D204();
    v94 = sub_1BE052C34();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_1BD026000, v93, v94, "Empty payment application dictionary found when creating demo pass", v95, 2u);
      MEMORY[0x1BFB45F20](v95, -1, -1);
    }

    (*(v113 + 8))(v16, v112);
    goto LABEL_30;
  }

  v67 = v116;
  v68 = [objc_opt_self() primarySecureElementIdentifier];
  if (!v68)
  {

    v96 = v107;
    sub_1BE04D134();
    v97 = sub_1BE04D204();
    v98 = sub_1BE052C34();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_1BD026000, v97, v98, "Failed to get primary secure element identifier when creating demo pass", v99, 2u);
      MEMORY[0x1BFB45F20](v99, -1, -1);
    }

    (*(v113 + 8))(v96, v112);
LABEL_30:
    (*(v110 + 8))(v36, v109);

    return 0;
  }

  v69 = v68;
  v70 = sub_1BE052434();
  v72 = v71;

  v73 = sub_1BE052434();
  v75 = v74;
  v119 = v58;
  *&v118 = v70;
  *(&v118 + 1) = v72;
  sub_1BD1B6140(&v118, &v116);
  sub_1BE048C84();
  v76 = swift_isUniquelyReferenced_nonNull_native();
  *&v115[0] = v67;
  sub_1BD1DAD20(&v116, v73, v75, v76);

  v77 = *&v115[0];
  *&v116 = sub_1BE052434();
  *(&v116 + 1) = v78;
  sub_1BE0537C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A40);
  v79 = swift_allocObject();
  v108 = xmmword_1BE0B69E0;
  *(v79 + 16) = xmmword_1BE0B69E0;
  *(v79 + 32) = v77;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A48);
  *&v116 = v79;
  sub_1BD1B6140(&v116, v115);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v63;
  sub_1BD1DAFB0(v115, &v118, v80);
  sub_1BD149CE8(&v118);
  v81 = objc_allocWithZone(MEMORY[0x1E69B8D08]);
  v82 = sub_1BE052224();
  v83 = [v81 initWithDictionary:v82 bundle:0];

  if (v83)
  {
    v84 = v105;
    [v83 setDataAccessor_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50);
    v85 = swift_allocObject();
    *(v85 + 16) = v108;
    *(v85 + 56) = v58;
    *(v85 + 32) = v70;
    *(v85 + 40) = v72;
    v86 = v83;
    v87 = sub_1BE052724();

    [v86 updateDevicePaymentApplicationsWithSecureElementIdentifiers_];

    (*(v110 + 8))(v111, v109);

    return v83;
  }

  v100 = v106;
  sub_1BE04D134();
  v101 = sub_1BE04D204();
  v102 = sub_1BE052C34();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&dword_1BD026000, v101, v102, "Failed to create user education demo pass from dictionary", v103, 2u);
    MEMORY[0x1BFB45F20](v103, -1, -1);
  }

  (*(v113 + 8))(v100, v112);
  (*(v110 + 8))(v111, v109);

  return 0;
}

uint64_t sub_1BD2B7DF4()
{
  v0 = sub_1BE04DD64();
  __swift_allocate_value_buffer(v0, qword_1EBD40A58);
  v1 = __swift_project_value_buffer(v0, qword_1EBD40A58);
  *v1 = 0xD00000000000001BLL;
  v1[1] = 0x80000001BE11EC10;
  v1[2] = 1;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1BD2B7EA0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v12 - v7;
  if (*(v2 + 24))
  {
    result = sub_1BE053994();
    __break(1u);
  }

  else
  {
    v9 = sub_1BE0528D4();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v2;
    v10[5] = a1;
    v10[6] = a2;
    sub_1BE048964();
    sub_1BE048964();
    *(v2 + 24) = sub_1BDA543A4(0, 0, v8, &unk_1BE0C8B68, v10);
  }

  return result;
}

uint64_t sub_1BD2B802C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_1BE04E0E4();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B08);
  v6[12] = swift_task_alloc();
  v8 = sub_1BE04D214();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B10);
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B18);
  v6[21] = v10;
  v6[22] = *(v10 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2B8278, 0, 0);
}

uint64_t sub_1BD2B8278()
{
  v0[25] = *(v0[6] + 16);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1BD2B831C;
  v2 = v0[24];

  return MEMORY[0x1EEE37F70](v2);
}

uint64_t sub_1BD2B831C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1BD2B96E4;
  }

  else
  {
    v2 = sub_1BD2B8430;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2B8430()
{
  (*(v0[22] + 16))(v0[23], v0[24], v0[21]);
  sub_1BD0DE4F4(&qword_1EBD40B30, &qword_1EBD40B18);
  sub_1BE0529C4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B38);
  v2 = sub_1BD0DE4F4(&qword_1EBD40B40, &qword_1EBD40B38);
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1BD2B8588;

  return MEMORY[0x1EEE6D8C8](v0 + 5, v1, v2);
}

uint64_t sub_1BD2B8588()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1BD2B8A60;
  }

  else
  {
    v2 = sub_1BD2B86BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2B86BC()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[5];
  v0[30] = v4;
  (*(v3 + 8))(v1, v2);
  if (sub_1BE052974())
  {

    v5 = v0[1];

    return v5();
  }

  else if (v4)
  {
    v7 = swift_task_alloc();
    v0[31] = v7;
    *v7 = v0;
    v7[1] = sub_1BD2B8C48;

    return sub_1BD2BAA9C(v4);
  }

  else
  {
    v8 = sub_1BE04B844();
    sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28]);
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69B7F18], v8);
    swift_willThrow();
    sub_1BE04D094();
    v11 = v9;
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C34();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v9;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1BD026000, v12, v13, "NearbyPeerPayment: error taking sharing assertion for transfer session: %@", v14, 0xCu);
      sub_1BD0DE53C(v15, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v15, -1, -1);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    v18 = v0[16];
    v19 = v0[13];
    v20 = v0[14];
    v21 = v0[7];

    (*(v20 + 8))(v18, v19);
    v21(0);

    v22 = swift_task_alloc();
    v0[33] = v22;
    *v22 = v0;
    v22[1] = sub_1BD2B8DE0;
    v23 = v0[20];

    return MEMORY[0x1EEE37FA0](v23);
  }
}

uint64_t sub_1BD2B8A60()
{
  (*(v0[22] + 8))(v0[24], v0[21]);
  v1 = v0[29];
  sub_1BE04D094();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: error taking sharing assertion for transfer session: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[7];

  (*(v11 + 8))(v9, v10);
  v12(0);

  v13 = swift_task_alloc();
  v0[33] = v13;
  *v13 = v0;
  v13[1] = sub_1BD2B8DE0;
  v14 = v0[20];

  return MEMORY[0x1EEE37FA0](v14);
}

uint64_t sub_1BD2B8C48()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD2B98B4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v2 + 264) = v4;
    *v4 = v3;
    v4[1] = sub_1BD2B8DE0;
    v5 = *(v2 + 160);

    return MEMORY[0x1EEE37FA0](v5);
  }
}

uint64_t sub_1BD2B8DE0()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1BD2B9A84;
  }

  else
  {
    v2 = sub_1BD2B8EF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2B8EF4()
{
  sub_1BE04D094();
  v1 = sub_1BE04D204();
  v2 = sub_1BE052C54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BD026000, v1, v2, "NearbyPeerPayment: transfer update monitoring started", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[7];

  (*(v6 + 8))(v4, v5);
  v7(1);
  v0[2] = sub_1BE04DF04();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B20);
  v9 = sub_1BD0DE4F4(&qword_1EBD40B28, &qword_1EBD40B20);
  v10 = swift_task_alloc();
  v0[35] = v10;
  *v10 = v0;
  v10[1] = sub_1BD2B90B8;
  v11 = v0[12];

  return MEMORY[0x1EEE6D8C8](v11, v8, v9);
}

uint64_t sub_1BD2B90B8()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1BD2B9448;
  }

  else
  {
    v2 = sub_1BD2B91CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2B91CC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[18];
LABEL_5:

    (*(v5 + 8))(v4, v6);

    v7 = v0[1];

    return v7();
  }

  (*(v3 + 32))(v0[11], v1, v2);
  if (sub_1BE052974())
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[18];
    (*(v0[10] + 8))(v0[11], v0[9]);
    goto LABEL_5;
  }

  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  v12 = *(v0[6] + 32);
  sub_1BE048964();
  v12(v9);

  (*(v10 + 8))(v9, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B20);
  v14 = sub_1BD0DE4F4(&qword_1EBD40B28, &qword_1EBD40B20);
  v15 = swift_task_alloc();
  v0[35] = v15;
  *v15 = v0;
  v15[1] = sub_1BD2B90B8;
  v16 = v0[12];

  return MEMORY[0x1EEE6D8C8](v16, v13, v14);
}

uint64_t sub_1BD2B9448()
{
  *(v0 + 24) = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1BD2B94DC, 0, 0);
}

uint64_t sub_1BD2B94DC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);
  v4 = v0[36];
  sub_1BE04D094();
  v5 = v4;
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BD026000, v6, v7, "NearbyPeerPayment: error while receiving updates: %@", v8, 0xCu);
    sub_1BD0DE53C(v9, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[13];
  v15 = v0[7];

  (*(v13 + 8))(v12, v14);
  v15(0);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1BD2B96E4()
{
  v1 = v0[27];
  sub_1BE04D094();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: error taking sharing assertion for transfer session: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[7];

  (*(v11 + 8))(v9, v10);
  v12(0);

  v13 = swift_task_alloc();
  v0[33] = v13;
  *v13 = v0;
  v13[1] = sub_1BD2B8DE0;
  v14 = v0[20];

  return MEMORY[0x1EEE37FA0](v14);
}

uint64_t sub_1BD2B98B4()
{
  v1 = v0[32];
  sub_1BE04D094();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: error taking sharing assertion for transfer session: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[7];

  (*(v11 + 8))(v9, v10);
  v12(0);

  v13 = swift_task_alloc();
  v0[33] = v13;
  *v13 = v0;
  v13[1] = sub_1BD2B8DE0;
  v14 = v0[20];

  return MEMORY[0x1EEE37FA0](v14);
}

uint64_t sub_1BD2B9A84()
{
  v1 = v0[34];
  sub_1BE04D094();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: error while receiving updates: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[13];
  v12 = v0[7];

  (*(v10 + 8))(v9, v11);
  v12(0);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BD2B9C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 146) = a5;
  *(v8 + 16) = a4;
  *(v8 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  *(v8 + 48) = swift_task_alloc();
  v9 = sub_1BE04D214();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v8 + 96) = v10;
  *v10 = v8;
  v10[1] = sub_1BD2B9DAC;

  return sub_1BD2BCA80();
}

uint64_t sub_1BD2B9DAC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1BD2BA6A4;
  }

  else
  {
    v2 = sub_1BD2B9EC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2B9EC0()
{
  if (*(v0 + 146) == 1)
  {
    sub_1BE04D094();
    v1 = sub_1BE04D204();
    v2 = sub_1BE052C54();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1BD026000, v1, v2, "NearbyPeerPayment: transfer monitor cancelling session", v3, 2u);
      MEMORY[0x1BFB45F20](v3, -1, -1);
    }

    v4 = *(v0 + 88);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);

    (*(v6 + 8))(v4, v5);
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_1BD2BA158;
    v8 = *(v0 + 24);

    return MEMORY[0x1EEE37F98](v8);
  }

  else
  {
    v9 = *(v0 + 48);
    v10 = *(v0 + 16);
    v11 = sub_1BE0528D4();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    sub_1BE048964();
    v13 = sub_1BD122F00(0, 0, v9, &unk_1BE0C8BC0, v12);
    *(v0 + 128) = v13;
    v14 = swift_task_alloc();
    *(v0 + 136) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970);
    *v14 = v0;
    v14[1] = sub_1BD2BA3D8;
    v16 = MEMORY[0x1E69E73E0];
    v17 = MEMORY[0x1E69E7410];

    return MEMORY[0x1EEE6DA20](v0 + 144, v13, v15, v16, v17);
  }
}

uint64_t sub_1BD2BA158()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1BD2BA834;
  }

  else
  {
    v2 = sub_1BD2BA26C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2BA26C()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = sub_1BE0528D4();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  sub_1BE048964();
  v5 = sub_1BD122F00(0, 0, v1, &unk_1BE0C8BC0, v4);
  v0[16] = v5;
  v6 = swift_task_alloc();
  v0[17] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970);
  *v6 = v0;
  v6[1] = sub_1BD2BA3D8;
  v8 = MEMORY[0x1E69E73E0];
  v9 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v0 + 18, v5, v7, v8, v9);
}

uint64_t sub_1BD2BA3D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD2BA4D4, 0, 0);
}

uint64_t sub_1BD2BA4D4()
{
  v1 = *(v0 + 145);
  if (v1)
  {
    sub_1BE04D094();
    v2 = sub_1BE04D204();
    v3 = sub_1BE052C54();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BD026000, v2, v3, "NearbyPeerPayment: transfer update monitoring stop unsuccessful", v4, 2u);
      MEMORY[0x1BFB45F20](v4, -1, -1);
    }

    v5 = *(v0 + 72);
  }

  else
  {
    sub_1BE04D094();
    v2 = sub_1BE04D204();
    v6 = sub_1BE052C54();
    if (os_log_type_enabled(v2, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v2, v6, "NearbyPeerPayment: transfer update monitoring stopped", v7, 2u);
      MEMORY[0x1BFB45F20](v7, -1, -1);
    }

    v5 = *(v0 + 80);
  }

  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 32);

  (*(v9 + 8))(v5, v8);
  if (v10)
  {
    (*(v0 + 32))(v1 ^ 1u);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1BD2BA6A4()
{
  v1 = v0[13];
  v2 = v0[4];
  if (v2)
  {
    v2(0);
  }

  v3 = v0[6];
  v4 = v0[2];
  v5 = sub_1BE0528D4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  sub_1BE048964();
  v7 = sub_1BD122F00(0, 0, v3, &unk_1BE0C8BC0, v6);
  v0[16] = v7;
  v8 = swift_task_alloc();
  v0[17] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970);
  *v8 = v0;
  v8[1] = sub_1BD2BA3D8;
  v10 = MEMORY[0x1E69E73E0];
  v11 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v0 + 18, v7, v9, v10, v11);
}

uint64_t sub_1BD2BA834()
{
  v1 = v0[15];
  v2 = v0[4];
  if (v2)
  {
    v2(0);
  }

  v3 = v0[6];
  v4 = v0[2];
  v5 = sub_1BE0528D4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  sub_1BE048964();
  v7 = sub_1BD122F00(0, 0, v3, &unk_1BE0C8BC0, v6);
  v0[16] = v7;
  v8 = swift_task_alloc();
  v0[17] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970);
  *v8 = v0;
  v8[1] = sub_1BD2BA3D8;
  v10 = MEMORY[0x1E69E73E0];
  v11 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v0 + 18, v7, v9, v10, v11);
}

uint64_t sub_1BD2BA9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BD2BA9E4, 0, 0);
}

uint64_t sub_1BD2BA9E4()
{
  v1 = *(*(v0 + 24) + 24);
  if (v1)
  {
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    sub_1BE052944();
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD2BAA9C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_1BE04AFE4();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = sub_1BE04DFC4();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = sub_1BE04DF24();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v6 = sub_1BE04DF84();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v7 = sub_1BE04DF64();
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();
  v8 = sub_1BE04D214();
  v2[32] = v8;
  v2[33] = *(v8 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v9 = sub_1BE04DFA4();
  v2[42] = v9;
  v2[43] = *(v9 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BAE34, 0, 0);
}

uint64_t sub_1BD2BAE34()
{
  v94 = v0;
  v1 = v0[12];
  if (!*(v1 + 16))
  {
    sub_1BE04D094();
    v28 = sub_1BE04D204();
    v29 = sub_1BE052C34();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1BD026000, v28, v29, "NearbyPeerPayment: transfer session received nearby sharing interaction without any interactions", v30, 2u);
      MEMORY[0x1BFB45F20](v30, -1, -1);
    }

    v32 = v0[33];
    v31 = v0[34];
    v33 = v0[32];

    (*(v32 + 8))(v31, v33);
    v34 = sub_1BE04B844();
    sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28]);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x1E69B7F18], v34);
    swift_willThrow();
LABEL_25:

    v82 = v0[1];

    return v82();
  }

  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[41];
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[13];
  v9 = *(v4 + 16);
  v4 += 16;
  v10 = (*(v4 + 64) + 32) & ~*(v4 + 64);
  v0[46] = v9;
  v0[47] = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v1 + v10, v3);
  v11 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferSession_transferAssertionId;
  v0[48] = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferSession_transferAssertionId;
  swift_beginAccess();
  sub_1BD0DE19C(v8 + v11, v5, &qword_1EBD39980);
  v12 = *(v7 + 48);
  v0[49] = v12;
  v0[50] = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v6) = v12(v5, 1, v6);
  sub_1BD0DE53C(v5, &qword_1EBD39980);
  if (v6 == 1)
  {
    v14 = v0 + 28;
    v13 = v0[28];
    v16 = v0 + 26;
    v15 = v0[26];
    v18 = v0 + 25;
    v17 = v0[25];
    sub_1BE04DF94();
    if ((*(v15 + 88))(v13, v17) == *MEMORY[0x1E69CDD80])
    {
      v14 = v0 + 31;
      v19 = v0[31];
      v16 = v0 + 30;
      v20 = v0[30];
      v18 = v0 + 29;
      v21 = v0[28];
      v87 = v0[29];
      v90 = v0[23];
      v23 = v0[21];
      v22 = v0[22];
      (*(v0[26] + 96))(v21, v0[25]);
      (*(v20 + 32))(v19, v21, v87);
      sub_1BE04DF54();
      (*(v22 + 104))(v90, *MEMORY[0x1E69CDD50], v23);
      sub_1BD2C7E30(&qword_1EBD40AF8, MEMORY[0x1E69CDD58]);
      sub_1BE0526E4();
      sub_1BE0526E4();
      v24 = v0[23];
      v91 = v0[24];
      v25 = v0[21];
      v26 = v0[22];
      if (v0[8] == v0[10] && v0[9] == v0[11])
      {
        v27 = *(v26 + 8);
        v27(v24, v0[21]);
        v27(v91, v25);

LABEL_16:
        sub_1BE04D094();
        v45 = sub_1BE04D204();
        v46 = sub_1BE052C54();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_1BD026000, v45, v46, "NearbyPeerPayment: nearby sharing interaction of type peerPayment found, grabbing assertion", v47, 2u);
          MEMORY[0x1BFB45F20](v47, -1, -1);
        }

        v48 = v0[37];
        v49 = v0[32];
        v50 = v0[33];

        v51 = *(v50 + 8);
        v0[53] = v51;
        v52 = v51(v48, v49);
        MEMORY[0x1BFB3B000](v52);
        sub_1BE04DFB4();
        v53 = swift_task_alloc();
        v0[54] = v53;
        *v53 = v0;
        v53[1] = sub_1BD2BC160;
        v54 = v0[40];
        v55 = v0[20];

        return MEMORY[0x1EEE37F58](v54, v55);
      }

      v88 = sub_1BE053B84();
      v44 = *(v26 + 8);
      v44(v24, v25);
      v44(v91, v25);

      if (v88)
      {
        goto LABEL_16;
      }
    }

    (*(*v16 + 8))(*v14, *v18);
    v56 = v0[46];
    v57 = v0[44];
    v58 = v0[45];
    v59 = v0[42];
    sub_1BE04D094();
    v56(v57, v58, v59);
    v60 = sub_1BE04D204();
    v61 = sub_1BE052C34();
    v62 = os_log_type_enabled(v60, v61);
    v64 = v0[43];
    v63 = v0[44];
    v65 = v0[42];
    v66 = v0[35];
    v67 = v0[32];
    v68 = v0[33];
    if (v62)
    {
      v92 = v0[32];
      v70 = v0[26];
      v69 = v0[27];
      v84 = v0[25];
      buf = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v93 = v86;
      *buf = 136315138;
      v89 = v66;
      sub_1BE04DF94();
      sub_1BD2C7E30(&qword_1EBD40B00, MEMORY[0x1E69CDD88]);
      v83 = sub_1BE053B24();
      v71 = v65;
      v73 = v72;
      (*(v70 + 8))(v69, v84);
      v74 = v63;
      v75 = *(v64 + 8);
      v75(v74, v71);
      v76 = sub_1BD123690(v83, v73, &v93);

      *(buf + 4) = v76;
      _os_log_impl(&dword_1BD026000, v60, v61, "NearbyPeerPayment: transfer session received nearby sharing interaction in an unexpected state: %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x1BFB45F20](v86, -1, -1);
      MEMORY[0x1BFB45F20](buf, -1, -1);

      (*(v68 + 8))(v89, v92);
    }

    else
    {

      v77 = v63;
      v75 = *(v64 + 8);
      v75(v77, v65);
      (*(v68 + 8))(v66, v67);
    }

    v78 = v0[45];
    v79 = v0[42];
    v80 = sub_1BE04B844();
    sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28]);
    swift_allocError();
    (*(*(v80 - 8) + 104))(v81, *MEMORY[0x1E69B7F18], v80);
    swift_willThrow();
    v75(v78, v79);
    goto LABEL_25;
  }

  sub_1BE04D094();
  v36 = sub_1BE04D204();
  v37 = sub_1BE052C34();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1BD026000, v36, v37, "NearbyPeerPayment: transfer session unexpectadly already has an assertion! Attempting to release", v38, 2u);
    MEMORY[0x1BFB45F20](v38, -1, -1);
  }

  v39 = v0[38];
  v40 = v0[32];
  v41 = v0[33];

  (*(v41 + 8))(v39, v40);
  v42 = swift_task_alloc();
  v0[51] = v42;
  *v42 = v0;
  v42[1] = sub_1BD2BB8C8;

  return sub_1BD2BCA80();
}

uint64_t sub_1BD2BB8C8()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1BD2BC770;
  }

  else
  {
    v2 = sub_1BD2BB9DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2BB9DC()
{
  v67 = v0;
  v2 = v0 + 28;
  v1 = v0[28];
  v4 = v0 + 26;
  v3 = v0[26];
  v6 = v0 + 25;
  v5 = v0[25];
  sub_1BE04DF94();
  if ((*(v3 + 88))(v1, v5) == *MEMORY[0x1E69CDD80])
  {
    v2 = v0 + 31;
    v7 = v0[31];
    v4 = v0 + 30;
    v8 = v0[30];
    v6 = v0 + 29;
    v9 = v0[28];
    v59 = v0[29];
    v61 = v0[23];
    v11 = v0[21];
    v10 = v0[22];
    (*(v0[26] + 96))(v9, v0[25]);
    (*(v8 + 32))(v7, v9, v59);
    sub_1BE04DF54();
    (*(v10 + 104))(v61, *MEMORY[0x1E69CDD50], v11);
    sub_1BD2C7E30(&qword_1EBD40AF8, MEMORY[0x1E69CDD58]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    v12 = v0[23];
    v64 = v0[24];
    v13 = v0[21];
    v14 = v0[22];
    if (v0[8] == v0[10] && v0[9] == v0[11])
    {
      v15 = *(v14 + 8);
      v15(v12, v0[21]);
      v15(v64, v13);

LABEL_6:
      sub_1BE04D094();
      v17 = sub_1BE04D204();
      v18 = sub_1BE052C54();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1BD026000, v17, v18, "NearbyPeerPayment: nearby sharing interaction of type peerPayment found, grabbing assertion", v19, 2u);
        MEMORY[0x1BFB45F20](v19, -1, -1);
      }

      v20 = v0[37];
      v21 = v0[32];
      v22 = v0[33];

      v23 = *(v22 + 8);
      v0[53] = v23;
      v24 = v23(v20, v21);
      MEMORY[0x1BFB3B000](v24);
      sub_1BE04DFB4();
      v25 = swift_task_alloc();
      v0[54] = v25;
      *v25 = v0;
      v25[1] = sub_1BD2BC160;
      v26 = v0[40];
      v27 = v0[20];

      return MEMORY[0x1EEE37F58](v26, v27);
    }

    v62 = sub_1BE053B84();
    v16 = *(v14 + 8);
    v16(v12, v13);
    v16(v64, v13);

    if (v62)
    {
      goto LABEL_6;
    }
  }

  (*(*v4 + 8))(*v2, *v6);
  v28 = v0[46];
  v29 = v0[44];
  v30 = v0[45];
  v31 = v0[42];
  sub_1BE04D094();
  v28(v29, v30, v31);
  v32 = sub_1BE04D204();
  v33 = sub_1BE052C34();
  v34 = os_log_type_enabled(v32, v33);
  v36 = v0[43];
  v35 = v0[44];
  v37 = v0[42];
  v38 = v0[35];
  v39 = v0[32];
  v40 = v0[33];
  if (v34)
  {
    v65 = v0[32];
    v42 = v0[26];
    v41 = v0[27];
    v57 = v0[25];
    buf = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v66 = v60;
    *buf = 136315138;
    v63 = v38;
    sub_1BE04DF94();
    sub_1BD2C7E30(&qword_1EBD40B00, MEMORY[0x1E69CDD88]);
    v56 = sub_1BE053B24();
    v43 = v37;
    v45 = v44;
    (*(v42 + 8))(v41, v57);
    v46 = v35;
    v47 = *(v36 + 8);
    v47(v46, v43);
    v48 = sub_1BD123690(v56, v45, &v66);

    *(buf + 4) = v48;
    _os_log_impl(&dword_1BD026000, v32, v33, "NearbyPeerPayment: transfer session received nearby sharing interaction in an unexpected state: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x1BFB45F20](v60, -1, -1);
    MEMORY[0x1BFB45F20](buf, -1, -1);

    (*(v40 + 8))(v63, v65);
  }

  else
  {

    v49 = v35;
    v47 = *(v36 + 8);
    v47(v49, v37);
    (*(v40 + 8))(v38, v39);
  }

  v50 = v0[45];
  v51 = v0[42];
  v52 = sub_1BE04B844();
  sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28]);
  swift_allocError();
  (*(*(v52 - 8) + 104))(v53, *MEMORY[0x1E69B7F18], v52);
  swift_willThrow();
  v47(v50, v51);

  v54 = v0[1];

  return v54();
}

uint64_t sub_1BD2BC160()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_1BD2BC8E0;
  }

  else
  {
    v2 = sub_1BD2BC274;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2BC274()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 112);
  if ((*(v0 + 392))(v1, 1, v2) == 1)
  {
    sub_1BD0DE53C(v1, &qword_1EBD39980);
    sub_1BE04D094();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C34();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: Unable to take sharing assertion", v5, 2u);
      MEMORY[0x1BFB45F20](v5, -1, -1);
    }

    v6 = *(v0 + 424);
    v7 = *(v0 + 344);
    v32 = *(v0 + 336);
    v33 = *(v0 + 360);
    v8 = *(v0 + 288);
    v9 = *(v0 + 256);
    v10 = *(v0 + 240);
    v30 = *(v0 + 232);
    v31 = *(v0 + 248);
    v11 = *(v0 + 152);
    v29 = *(v0 + 160);
    v12 = *(v0 + 144);

    v6(v8, v9);
    v13 = sub_1BE04B844();
    sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x1E69B7F18], v13);
    swift_willThrow();
    (*(v11 + 8))(v29, v12);
    (*(v10 + 8))(v31, v30);
    (*(v7 + 8))(v33, v32);

    v15 = *(v0 + 8);
  }

  else
  {
    v28 = *(v0 + 384);
    v16 = *(v0 + 344);
    v25 = *(v0 + 336);
    v26 = *(v0 + 360);
    v17 = *(v0 + 312);
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v20 = *(v0 + 232);
    v21 = *(v0 + 120);
    v22 = *(v0 + 128);
    v27 = *(v0 + 104);
    (*(*(v0 + 152) + 8))();
    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v26, v25);
    v23 = *(v21 + 32);
    v23(v22, v1, v2);
    v23(v17, v22, v2);
    (*(v21 + 56))(v17, 0, 1, v2);
    swift_beginAccess();
    sub_1BD2C7C4C(v17, v27 + v28, &qword_1EBD39980);
    swift_endAccess();

    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t sub_1BD2BC770()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  swift_willThrow();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BD2BC8E0()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BD2BCA80()
{
  v1[8] = v0;
  v2 = sub_1BE04D214();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v3 = sub_1BE04AFE4();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BCBF8, 0, 0);
}

uint64_t sub_1BD2BCBF8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferSession_transferAssertionId;
  v0[19] = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferSession_transferAssertionId;
  swift_beginAccess();
  sub_1BD0DE19C(v4 + v5, v3, &qword_1EBD39980);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1BD0DE53C(v0[15], &qword_1EBD39980);
    sub_1BE04D094();
    v6 = sub_1BE04D204();
    v7 = sub_1BE052C34();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v6, v7, "NearbyPeerPayment: transfer session attempted to release assertion with no id present", v8, 2u);
      MEMORY[0x1BFB45F20](v8, -1, -1);
    }

    (*(v0[10] + 8))(v0[12], v0[9]);

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_1BD2BCE50;
    v12 = v0[18];

    return MEMORY[0x1EEE37F68](v12);
  }
}

uint64_t sub_1BD2BCE50()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1BD2BD120;
  }

  else
  {
    v2 = sub_1BD2BCF64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2BCF64()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[8];
  (*(v0[17] + 56))(v2, 1, 1, v0[16]);
  swift_beginAccess();
  sub_1BD2C7C4C(v2, v3 + v1, &qword_1EBD39980);
  swift_endAccess();
  sub_1BE04D094();
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C54();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  v8 = v0[9];
  v9 = v0[10];
  if (v6)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v4, v5, "NearbyPeerPayment: transfer session released sharing assertion", v10, 2u);
    MEMORY[0x1BFB45F20](v10, -1, -1);
  }

  (*(v9 + 8))(v7, v8);
  (*(v0[17] + 8))(v0[18], v0[16]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD2BD120()
{
  v1 = v0[21];
  sub_1BE04D094();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: transfer session failed to release nearby assertion %@", v6, 0xCu);
    sub_1BD0DE53C(v7, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[16];
  v13 = v0[11];
  v14 = v3;
  v15 = v0[9];
  v16 = v0[10];

  (*(v16 + 8))(v13, v15);
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v17 = v0[1];

  return v17();
}

uint64_t NearbyPeerPaymentTransferSession.deinit()
{

  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferSession_transferAssertionId, &qword_1EBD39980);
  return v0;
}

uint64_t NearbyPeerPaymentTransferSession.__deallocating_deinit()
{

  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferSession_transferAssertionId, &qword_1EBD39980);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD2BD420(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BD2BD480(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1BD2BD514;
}

void sub_1BD2BD514(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1BD2BD598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = sub_1BE04D214();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v10 = sub_1BE04B844();
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B18);
  v8[23] = v11;
  v8[24] = *(v11 - 8);
  v8[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v8[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BD780, 0, 0);
}

uint64_t sub_1BD2BD780()
{
  v1 = v0[26];
  v2 = v0[9];
  v3 = sub_1BE0528D4();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  sub_1BE048964();
  v5 = sub_1BD122C00(0, 0, v1, &unk_1BE0C8BA8, v4);
  v0[27] = v5;
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = sub_1BD2BD8E0;
  v7 = MEMORY[0x1E69E73E0];
  v8 = MEMORY[0x1E69E7410];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA20](v0 + 38, v5, v9, v7, v8);
}

uint64_t sub_1BD2BD8E0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD2BD9DC, 0, 0);
}

uint64_t sub_1BD2BD9DC()
{
  v1 = *(v0 + 96);
  if (*(v0 + 304))
  {
    v1(0);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 72);
    swift_beginAccess();
    *(v5 + 40) = v4;
    swift_unknownObjectWeakAssign();
    v1(1);
    *(v0 + 232) = *(v5 + 16);
    v6 = swift_task_alloc();
    *(v0 + 240) = v6;
    *v6 = v0;
    v6[1] = sub_1BD2BDB68;
    v7 = *(v0 + 200);

    return MEMORY[0x1EEE37F70](v7);
  }
}

uint64_t sub_1BD2BDB68()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1BD2BE8E0;
  }

  else
  {
    v2 = sub_1BD2BDC7C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2BDC7C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = sub_1BE04DF04();
  (*(v2 + 8))(v1, v3);
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B38);
  v6 = sub_1BD0DE4F4(&qword_1EBD40B40, &qword_1EBD40B38);
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = sub_1BD2BDDA4;

  return MEMORY[0x1EEE6D8C8](v0 + 7, v5, v6);
}

uint64_t sub_1BD2BDDA4()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1BD2BE044;
  }

  else
  {
    v2 = sub_1BD2BDEB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2BDEDC()
{
  v1 = v0[34];
  if (!v1)
  {

    goto LABEL_5;
  }

  if (sub_1BE052974())
  {

LABEL_5:

    v2 = v0[1];

    return v2();
  }

  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1BD2BE5CC;

  return sub_1BD2C12AC(v1);
}

uint64_t sub_1BD2BE044()
{
  *(v0 + 64) = *(v0 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BE0D8, 0, 0);
}

uint64_t sub_1BD2BE0D8()
{

  v1 = *(v0 + 264);
  *(v0 + 48) = v1;
  *(v0 + 296) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = *(v0 + 144);

    (*(v6 + 32))(v4, v3, v7);
    sub_1BE04D094();
    v8 = *(v6 + 16);
    v8(v5, v4, v7);
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C54();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = *(v0 + 144);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v15 = 138412290;
      sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28]);
      swift_allocError();
      v8(v16, v13, v14);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = *(v12 + 8);
      v18(v13, v14);
      *(v15 + 4) = v17;
      *v36 = v17;
      _os_log_impl(&dword_1BD026000, v9, v10, "NearbyPeerPayment: NearbyPeerPayment.InternalError while monitoring nearby devices: %@", v15, 0xCu);
      sub_1BD0DE53C(v36, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v36, -1, -1);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    else
    {

      v18 = *(v12 + 8);
      v18(v13, v14);
    }

    v20 = *(v0 + 168);
    v21 = *(v0 + 144);
    (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
    v18(v20, v21);
    v19 = *(v0 + 48);
    goto LABEL_8;
  }

  if (sub_1BE052974())
  {

    v19 = v1;
LABEL_8:

    v22 = *(v0 + 8);

    return v22();
  }

  sub_1BE04D094();
  v24 = v1;
  v25 = sub_1BE04D204();
  v26 = sub_1BE052C54();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v1;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_1BD026000, v25, v26, "NearbyPeerPayment: unexpected error while monitoring nearby devices: %@", v27, 0xCu);
    sub_1BD0DE53C(v28, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v28, -1, -1);
    MEMORY[0x1BFB45F20](v27, -1, -1);
  }

  v32 = *(v0 + 120);
  v31 = *(v0 + 128);
  v33 = *(v0 + 112);

  (*(v32 + 8))(v31, v33);
  sub_1BE04DDC4();
  sub_1BD2C7E30(&qword_1EBD40B48, MEMORY[0x1E69CDC40]);
  v35 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BE7B4, v35, v34);
}

uint64_t sub_1BD2BE5CC()
{
  v2 = *v1;
  *(v2 + 288) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD2BEDCC, 0, 0);
  }

  else
  {

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B38);
    v4 = sub_1BD0DE4F4(&qword_1EBD40B40, &qword_1EBD40B38);
    v5 = swift_task_alloc();
    *(v2 + 256) = v5;
    *v5 = v2;
    v5[1] = sub_1BD2BDDA4;

    return MEMORY[0x1EEE6D8C8](v2 + 56, v3, v4);
  }
}

uint64_t sub_1BD2BE7B4()
{
  sub_1BE04DD84();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BE81C, 0, 0);
}

uint64_t sub_1BD2BE81C()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD2BE8E0()
{
  v1 = *(v0 + 248);
  *(v0 + 48) = v1;
  *(v0 + 296) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = *(v0 + 144);

    (*(v6 + 32))(v4, v3, v7);
    sub_1BE04D094();
    v8 = *(v6 + 16);
    v8(v5, v4, v7);
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C54();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = *(v0 + 144);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v15 = 138412290;
      sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28]);
      swift_allocError();
      v8(v16, v13, v14);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = *(v12 + 8);
      v18(v13, v14);
      *(v15 + 4) = v17;
      *v36 = v17;
      _os_log_impl(&dword_1BD026000, v9, v10, "NearbyPeerPayment: NearbyPeerPayment.InternalError while monitoring nearby devices: %@", v15, 0xCu);
      sub_1BD0DE53C(v36, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v36, -1, -1);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    else
    {

      v18 = *(v12 + 8);
      v18(v13, v14);
    }

    v20 = *(v0 + 168);
    v21 = *(v0 + 144);
    (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
    v18(v20, v21);
    v19 = *(v0 + 48);
    goto LABEL_8;
  }

  if (sub_1BE052974())
  {

    v19 = v1;
LABEL_8:

    v22 = *(v0 + 8);

    return v22();
  }

  sub_1BE04D094();
  v24 = v1;
  v25 = sub_1BE04D204();
  v26 = sub_1BE052C54();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v1;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_1BD026000, v25, v26, "NearbyPeerPayment: unexpected error while monitoring nearby devices: %@", v27, 0xCu);
    sub_1BD0DE53C(v28, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v28, -1, -1);
    MEMORY[0x1BFB45F20](v27, -1, -1);
  }

  v32 = *(v0 + 120);
  v31 = *(v0 + 128);
  v33 = *(v0 + 112);

  (*(v32 + 8))(v31, v33);
  sub_1BE04DDC4();
  sub_1BD2C7E30(&qword_1EBD40B48, MEMORY[0x1E69CDC40]);
  v35 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BE7B4, v35, v34);
}

uint64_t sub_1BD2BEDCC()
{

  v1 = *(v0 + 288);
  *(v0 + 48) = v1;
  *(v0 + 296) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = *(v0 + 144);

    (*(v6 + 32))(v4, v3, v7);
    sub_1BE04D094();
    v8 = *(v6 + 16);
    v8(v5, v4, v7);
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C54();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = *(v0 + 144);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v15 = 138412290;
      sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28]);
      swift_allocError();
      v8(v16, v13, v14);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = *(v12 + 8);
      v18(v13, v14);
      *(v15 + 4) = v17;
      *v36 = v17;
      _os_log_impl(&dword_1BD026000, v9, v10, "NearbyPeerPayment: NearbyPeerPayment.InternalError while monitoring nearby devices: %@", v15, 0xCu);
      sub_1BD0DE53C(v36, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v36, -1, -1);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    else
    {

      v18 = *(v12 + 8);
      v18(v13, v14);
    }

    v20 = *(v0 + 168);
    v21 = *(v0 + 144);
    (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
    v18(v20, v21);
    v19 = *(v0 + 48);
    goto LABEL_8;
  }

  if (sub_1BE052974())
  {

    v19 = v1;
LABEL_8:

    v22 = *(v0 + 8);

    return v22();
  }

  sub_1BE04D094();
  v24 = v1;
  v25 = sub_1BE04D204();
  v26 = sub_1BE052C54();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v1;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_1BD026000, v25, v26, "NearbyPeerPayment: unexpected error while monitoring nearby devices: %@", v27, 0xCu);
    sub_1BD0DE53C(v28, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v28, -1, -1);
    MEMORY[0x1BFB45F20](v27, -1, -1);
  }

  v32 = *(v0 + 120);
  v31 = *(v0 + 128);
  v33 = *(v0 + 112);

  (*(v32 + 8))(v31, v33);
  sub_1BE04DDC4();
  sub_1BD2C7E30(&qword_1EBD40B48, MEMORY[0x1E69CDC40]);
  v35 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BE7B4, v35, v34);
}

uint64_t sub_1BD2BF2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1BE04DFD4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1BE04DFF4();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = sub_1BE04D214();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BF444, 0, 0);
}

uint64_t sub_1BD2BF444()
{
  sub_1BE04D094();
  v1 = sub_1BE04D204();
  v2 = sub_1BE052C54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BD026000, v1, v2, "NearbyPeerPayment: start device polling", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];

  v10 = *(v6 + 8);
  v0[13] = v10;
  v10(v4, v5);
  (*(v8 + 104))(v7, *MEMORY[0x1E69CDD98], v9);
  sub_1BE04DFE4();
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_1BD2BF5F0;
  v12 = v0[8];

  return MEMORY[0x1EEE37F60](v12);
}

uint64_t sub_1BD2BF5F0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1BD2BF7A4;
  }

  else
  {
    v2 = sub_1BD2BF704;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2BF704()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD2BF7A4()
{
  v1 = v0[15];
  sub_1BE04D094();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: error while starting device discovery: %@", v6, 0xCu);
    sub_1BD0DE53C(v7, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  v10 = v0[15];
  v11 = v0[13];
  v12 = v0[11];
  v13 = v0[9];

  v11(v12, v13);
  (*(v0[7] + 8))(v0[8], v0[6]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1BD2BF964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 129) = a5;
  *(v8 + 16) = a4;
  *(v8 + 24) = a6;
  v9 = sub_1BE04D214();
  *(v8 + 48) = v9;
  *(v8 + 56) = *(v9 - 8);
  *(v8 + 64) = swift_task_alloc();
  *(v8 + 72) = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980) - 8);
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 + 64);
  *(v8 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BFADC, 0, 0);
}

uint64_t sub_1BD2BFADC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 129);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = sub_1BE0528D4();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_1BD0DE19C(v5, v1, &qword_1EBD39980);
  v8 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v4;
  sub_1BD124200(v1, v9 + v8);
  sub_1BE048964();
  v10 = sub_1BD122C00(0, 0, v2, &unk_1BE0C8BE0, v9);
  *(v0 + 112) = v10;
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_1BD2BFC8C;
  v12 = MEMORY[0x1E69E73E0];
  v13 = MEMORY[0x1E69E7410];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA20](v0 + 128, v10, v14, v12, v13);
}

uint64_t sub_1BD2BFC8C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD2BFD88, 0, 0);
}

uint64_t sub_1BD2BFD88()
{
  v1 = *(v0 + 32);
  if (*(v0 + 128))
  {
    v2 = (v0 + 64);
    v1(0);
    sub_1BE04D094();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C54();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = "NearbyPeerPayment: device discovery monitoring stop unsuccessful";
LABEL_6:
      v6 = *v2;
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v3, v4, v5, v7, 2u);
      MEMORY[0x1BFB45F20](v7, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {
    v2 = (v0 + 72);
    v1(1);
    sub_1BE04D094();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C54();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = "NearbyPeerPayment: device discovery monitoring stopped";
      goto LABEL_6;
    }
  }

  v6 = *v2;
LABEL_8:
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);

  (*(v9 + 8))(v6, v8);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1BD2BFF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 224) = a5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  *(v6 + 56) = swift_task_alloc();
  v7 = sub_1BE04AFE4();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  v8 = sub_1BE04D214();
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A80);
  *(v6 + 120) = swift_task_alloc();
  v9 = sub_1BE04E0B4();
  *(v6 + 128) = v9;
  *(v6 + 136) = *(v9 - 8);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2C0138, 0, 0);
}

uint64_t sub_1BD2C0138()
{
  v39 = v0;
  if (*(*(v0 + 40) + 48))
  {
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    sub_1BE052944();
  }

  if (*(v0 + 224) != 1)
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 40);
  v5 = OBJC_IVAR____TtC9PassKitUI39NearbyPeerPaymentDeviceDiscoverySession_transferID;
  swift_beginAccess();
  sub_1BD0DE19C(v4 + v5, v3, &qword_1EBD40A80);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1BD0DE53C(*(v0 + 120), &qword_1EBD40A80);
LABEL_6:
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    v8 = *(v0 + 56);
    sub_1BD0DE19C(*(v0 + 48), v8, &qword_1EBD39980);
    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      sub_1BD0DE53C(*(v0 + 56), &qword_1EBD39980);
      *(v0 + 200) = *(*(v0 + 40) + 16);
      v9 = swift_task_alloc();
      *(v0 + 208) = v9;
      *v9 = v0;
      v9[1] = sub_1BD2C0B00;

      return MEMORY[0x1EEE37F50](0xD00000000000001BLL, 0x80000001BE11EC10);
    }

    else
    {
      (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
      v10 = swift_task_alloc();
      *(v0 + 184) = v10;
      *v10 = v0;
      v10[1] = sub_1BD2C0920;
      v11 = *(v0 + 80);

      return MEMORY[0x1EEE37F68](v11);
    }
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = *(v0 + 128);
  v15 = *(v0 + 136);
  (*(v15 + 32))(v13, *(v0 + 120), v14);
  sub_1BE04D094();
  (*(v15 + 16))(v12, v13, v14);
  v16 = sub_1BE04D204();
  v17 = sub_1BE052C54();
  v18 = os_log_type_enabled(v16, v17);
  v20 = *(v0 + 136);
  v19 = *(v0 + 144);
  v21 = *(v0 + 128);
  v22 = *(v0 + 112);
  v24 = *(v0 + 88);
  v23 = *(v0 + 96);
  if (v18)
  {
    v37 = *(v0 + 88);
    v25 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v25 = 136315138;
    sub_1BD2C7E30(&unk_1EBD47730, MEMORY[0x1E69CDDE8]);
    v26 = sub_1BE053B24();
    v35 = v22;
    v28 = v27;
    v34 = v17;
    v29 = *(v20 + 8);
    v29(v19, v21);
    v30 = sub_1BD123690(v26, v28, &v38);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_1BD026000, v16, v34, "NearbyPeerPayment: cancelling transfer id: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1BFB45F20](v36, -1, -1);
    MEMORY[0x1BFB45F20](v25, -1, -1);

    (*(v23 + 8))(v35, v37);
  }

  else
  {

    v29 = *(v20 + 8);
    v29(v19, v21);
    (*(v23 + 8))(v22, v24);
  }

  *(v0 + 160) = v29;
  v31 = swift_task_alloc();
  *(v0 + 168) = v31;
  *v31 = v0;
  v31[1] = sub_1BD2C0648;
  v32 = *(v0 + 152);

  return MEMORY[0x1EEE37F98](v32);
}

uint64_t sub_1BD2C0648()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1BD2C0D30;
  }

  else
  {
    v2 = sub_1BD2C075C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2C075C()
{
  (*(v0 + 160))(*(v0 + 152), *(v0 + 128));
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  sub_1BD0DE19C(*(v0 + 48), v3, &qword_1EBD39980);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1BD0DE53C(*(v0 + 56), &qword_1EBD39980);
    *(v0 + 200) = *(*(v0 + 40) + 16);
    v4 = swift_task_alloc();
    *(v0 + 208) = v4;
    *v4 = v0;
    v4[1] = sub_1BD2C0B00;

    return MEMORY[0x1EEE37F50](0xD00000000000001BLL, 0x80000001BE11EC10);
  }

  else
  {
    (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_1BD2C0920;
    v6 = *(v0 + 80);

    return MEMORY[0x1EEE37F68](v6);
  }
}

uint64_t sub_1BD2C0920()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1BD2C0F0C;
  }

  else
  {
    v2 = sub_1BD2C0A34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2C0A34()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v0[25] = *(v0[5] + 16);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1BD2C0B00;

  return MEMORY[0x1EEE37F50](0xD00000000000001BLL, 0x80000001BE11EC10);
}

uint64_t sub_1BD2C0B00()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1BD2C10E8;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    sub_1BE04DDC4();
    sub_1BD2C7E30(&qword_1EBD40B48, MEMORY[0x1E69CDC40]);
    v5 = sub_1BE052844();
    v7 = v6;
    v2 = sub_1BD2C0C78;
    v3 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BD2C0C78()
{
  sub_1BE04DD84();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD2C0D30()
{
  (*(v0 + 160))(*(v0 + 152), *(v0 + 128));
  v1 = *(v0 + 176);
  sub_1BE04D094();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: polling stop error: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1BD2C0F0C()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[24];
  sub_1BE04D094();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: polling stop error: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BD2C10E8()
{
  v1 = v0[27];
  sub_1BE04D094();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: polling stop error: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BD2C12AC(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_1BE04DF14();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = sub_1BE04DFC4();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v5 = sub_1BE04AFE4();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = sub_1BE04DF24();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v7 = sub_1BE04DF64();
  v2[36] = v7;
  v2[37] = *(v7 - 8);
  v2[38] = swift_task_alloc();
  v8 = sub_1BE04D214();
  v2[39] = v8;
  v2[40] = *(v8 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v9 = sub_1BE04DF84();
  v2[46] = v9;
  v2[47] = *(v9 - 8);
  v2[48] = swift_task_alloc();
  v10 = sub_1BE04DFA4();
  v2[49] = v10;
  v2[50] = *(v10 - 8);
  v2[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2C16A0, 0, 0);
}

uint64_t sub_1BD2C16A0()
{
  v111 = v0;
  v1 = v0[15];
  if (!*(v1 + 16))
  {
LABEL_17:

    v54 = v0[1];

    return v54();
  }

  v2 = v0[48];
  v3 = v0[46];
  v4 = v0[47];
  (*(v0[50] + 16))(v0[51], v1 + ((*(v0[50] + 80) + 32) & ~*(v0[50] + 80)), v0[49]);
  sub_1BE04DF94();
  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == *MEMORY[0x1E69CDD70])
  {
    sub_1BE04D094();
    v6 = sub_1BE04D204();
    v7 = sub_1BE052C54();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v6, v7, "NearbyPeerPayment: nearby presence detected", v8, 2u);
      MEMORY[0x1BFB45F20](v8, -1, -1);
    }

    v9 = v0[45];
    v10 = v0[39];
    v11 = v0[40];

    (*(v11 + 8))(v9, v10);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v0[16] + 40);
      ObjectType = swift_getObjectType();
      (*(v12 + 8))(ObjectType, v12);
      swift_unknownObjectRelease();
    }

LABEL_14:
    v49 = v0[50];
    v48 = v0[51];
    v51 = v0[48];
    v50 = v0[49];
    v52 = v0[46];
    v53 = v0[47];
LABEL_15:
    (*(v49 + 8))(v48, v50);
LABEL_16:
    (*(v53 + 8))(v51, v52);
    goto LABEL_17;
  }

  if (v5 != *MEMORY[0x1E69CDD80])
  {
    if (v5 == *MEMORY[0x1E69CDD78])
    {
      v26 = v0[48];
      v28 = v0[20];
      v27 = v0[21];
      v29 = v0[17];
      v30 = v0[18];
      (*(v0[47] + 96))(v26, v0[46]);
      (*(v30 + 32))(v27, v26, v29);
      sub_1BE04D094();
      v31 = *(v30 + 16);
      v31(v28, v27, v29);
      v32 = sub_1BE04D204();
      v33 = sub_1BE052C54();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v0[40];
      v36 = v0[41];
      v37 = v0[39];
      v38 = v0[20];
      if (v34)
      {
        v104 = v33;
        v40 = v0[18];
        v39 = v0[19];
        v108 = v0[39];
        v41 = v0[17];
        v106 = v0[41];
        v42 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v110 = v102;
        *v42 = 136315138;
        v31(v39, v38, v41);
        v43 = sub_1BE0524A4();
        v45 = v44;
        v46 = *(v40 + 8);
        v46(v38, v41);
        v47 = sub_1BD123690(v43, v45, &v110);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_1BD026000, v32, v104, "NearbyPeerPayment: connection interrupted with failure: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v102);
        MEMORY[0x1BFB45F20](v102, -1, -1);
        MEMORY[0x1BFB45F20](v42, -1, -1);

        (*(v35 + 8))(v106, v108);
      }

      else
      {
        v84 = v0[17];
        v85 = v0[18];

        v46 = *(v85 + 8);
        v46(v38, v84);
        (*(v35 + 8))(v36, v37);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v86 = v0[21];
        v87 = *(v0[16] + 40);
        v88 = swift_getObjectType();
        (*(v87 + 24))(v86, v88, v87);
        swift_unknownObjectRelease();
      }

      v53 = v0[50];
      v51 = v0[51];
      v52 = v0[49];
      v46(v0[21], v0[17]);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v14 = v0[48];
  v16 = v0[37];
  v15 = v0[38];
  v17 = v0[36];
  v19 = v0[33];
  v18 = v0[34];
  v20 = v0[32];
  (*(v0[47] + 96))(v14, v0[46]);
  (*(v16 + 32))(v15, v14, v17);
  sub_1BE04DF54();
  (*(v19 + 104))(v18, *MEMORY[0x1E69CDD50], v20);
  sub_1BD2C7E30(&qword_1EBD40AF8, MEMORY[0x1E69CDD58]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v22 = v0[34];
  v21 = v0[35];
  v23 = v0[32];
  v24 = v0[33];
  if (v0[11] == v0[13] && v0[12] == v0[14])
  {
    v25 = *(v24 + 8);
    v25(v0[34], v0[32]);
    v25(v21, v23);
  }

  else
  {
    v56 = sub_1BE053B84();
    v57 = *(v24 + 8);
    v57(v22, v23);
    v57(v21, v23);

    if ((v56 & 1) == 0)
    {
      v53 = v0[50];
      v51 = v0[51];
      v52 = v0[49];
      v49 = v0[37];
      v48 = v0[38];
      v50 = v0[36];
      goto LABEL_15;
    }
  }

  v58 = v0[27];
  v59 = v0[28];
  v60 = v0[26];
  sub_1BE04DF44();
  v61 = *(v59 + 48);
  v0[52] = v61;
  v0[53] = (v59 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v61(v60, 1, v58) == 1)
  {
    v63 = v0[50];
    v62 = v0[51];
    v64 = v0[49];
    v65 = v0[26];
    (*(v0[37] + 8))(v0[38], v0[36]);
    (*(v63 + 8))(v62, v64);
    sub_1BD0DE53C(v65, &qword_1EBD39980);
    goto LABEL_17;
  }

  v66 = v0[31];
  v67 = v0[27];
  v68 = v0[28];
  v69 = v0[26];
  v70 = v0[16];
  v71 = *(v68 + 32);
  v0[54] = v71;
  v0[55] = (v68 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v71(v66, v69, v67);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[56] = Strong;
  v0[57] = *(v70 + 40);
  if (!Strong)
  {
    sub_1BE04D094();
    v89 = sub_1BE04D204();
    v90 = sub_1BE052C34();
    v91 = os_log_type_enabled(v89, v90);
    v93 = v0[50];
    v92 = v0[51];
    v95 = v0[39];
    v94 = v0[40];
    v96 = v0[37];
    v107 = v0[38];
    v109 = v0[49];
    v105 = v0[36];
    v101 = v0[42];
    v103 = v0[31];
    v98 = v0[27];
    v97 = v0[28];
    if (v91)
    {
      v100 = v0[51];
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_1BD026000, v89, v90, "NearbyPeerPayment: Devices connected, but delegate was nil, skipping.", v99, 2u);
      MEMORY[0x1BFB45F20](v99, -1, -1);

      (*(v94 + 8))(v101, v95);
      (*(v97 + 8))(v103, v98);
      (*(v96 + 8))(v107, v105);
      (*(v93 + 8))(v100, v109);
    }

    else
    {

      (*(v94 + 8))(v101, v95);
      (*(v97 + 8))(v103, v98);
      (*(v96 + 8))(v107, v105);
      (*(v93 + 8))(v92, v109);
    }

    goto LABEL_17;
  }

  sub_1BE04D094();
  v73 = sub_1BE04D204();
  v74 = sub_1BE052C54();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_1BD026000, v73, v74, "NearbyPeerPayment: nearby sharing interaction of type peerPayment initiated, grabbing assertion", v75, 2u);
    MEMORY[0x1BFB45F20](v75, -1, -1);
  }

  v76 = v0[44];
  v77 = v0[39];
  v78 = v0[40];

  v79 = *(v78 + 8);
  v0[58] = v79;
  v80 = v79(v76, v77);
  MEMORY[0x1BFB3B000](v80);
  sub_1BE04DFB4();
  v81 = swift_task_alloc();
  v0[59] = v81;
  *v81 = v0;
  v81[1] = sub_1BD2C215C;
  v83 = v0[24];
  v82 = v0[25];

  return MEMORY[0x1EEE37F58](v82, v83);
}