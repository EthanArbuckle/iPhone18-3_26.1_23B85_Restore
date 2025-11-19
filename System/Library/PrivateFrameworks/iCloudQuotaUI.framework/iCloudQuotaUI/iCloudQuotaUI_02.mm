uint64_t objectdestroy_13Tm()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2756EB97C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_2756EB9AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE050);
    v2 = sub_2757986E0();
    v14 = v2;
    sub_275798600();
    if (sub_275798670())
    {
      type metadata accessor for ICQFPItem();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_2756EBBE0();
        }

        v2 = v14;
        sub_2756ED254(&qword_2809FED70, type metadata accessor for ICQFPItem);
        result = sub_275797ED0();
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

      while (sub_275798670());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2756EBBE0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE050);
  result = sub_2757986D0();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
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
      type metadata accessor for ICQFPItem();
      sub_2756ED254(&qword_2809FED70, type metadata accessor for ICQFPItem);
      result = sub_275797ED0();
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
      v2 = v25;
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
      bzero(v6, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_2756EBE74(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ICQFPItem();
  sub_2756ED254(&qword_2809FED70, type metadata accessor for ICQFPItem);
  sub_275797ED0();
  result = sub_2757985E0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2756EBF5C(uint64_t result, unint64_t a2, char a3)
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
    sub_2756EBBE0();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_2756EC144();
      goto LABEL_12;
    }

    sub_2756EC294();
  }

  v8 = *v3;
  type metadata accessor for ICQFPItem();
  sub_2756ED254(&qword_2809FED70, type metadata accessor for ICQFPItem);
  result = sub_275797ED0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_2756ED254(&unk_2809FEE40, type metadata accessor for ICQFPItem);
    do
    {
      result = sub_275797F00();
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
  result = sub_2757989C0();
  __break(1u);
  return result;
}

void *sub_2756EC144()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE050);
  v2 = *v0;
  v3 = sub_2757986C0();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_2756EC294()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE050);
  result = sub_2757986D0();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v2;
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
      v13 = __clz(__rbit64(v9));
      v25 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      type metadata accessor for ICQFPItem();
      sub_2756ED254(&qword_2809FED70, type metadata accessor for ICQFPItem);

      result = sub_275797ED0();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v24;
      v9 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v25 = (v15 - 1) & v15;
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

uint64_t sub_2756EC50C()
{

  v1 = sub_275798640();
  v2 = swift_unknownObjectRetain();
  v3 = sub_2756EB9AC(v2, v1);
  v10 = v3;
  type metadata accessor for ICQFPItem();
  sub_2756ED254(&qword_2809FED70, type metadata accessor for ICQFPItem);

  v4 = sub_275797ED0();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_2756ED254(&unk_2809FEE40, type metadata accessor for ICQFPItem);
    while ((sub_275797F00() & 1) == 0)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v8 = *(*(v3 + 48) + 8 * v6);
  sub_2756EC6E8(v6);
  result = sub_275797F00();
  if (result)
  {
    *v0 = v10;
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2756EC6E8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2757985D0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      type metadata accessor for ICQFPItem();
      sub_2756ED254(&qword_2809FED70, type metadata accessor for ICQFPItem);
      do
      {
        v10 = sub_275797ED0() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2756EC8D4()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_2756EC904@<X0>(uint64_t a1@<X8>)
{
  result = sub_275796BE0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2756EC98C(uint64_t a1)
{
  v2 = sub_275797060();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_275796B20();
}

uint64_t sub_2756ECA54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275796C00();
  *a1 = result;
  return result;
}

uint64_t sub_2756ECAAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDFD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_2()
{

  if (*(v0 + 64))
  {
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2756ECB8C()
{
  if (*(v0 + 32))
  {
    return sub_2756E948C();
  }

  v2 = *(v0 + 64);
  if (v2)
  {
    return v2();
  }

  return result;
}

uint64_t sub_2756ECBD0@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(**(*(v1 + 16) + 8) + 104))();
  v4 = [v3 displayName];

  sub_275797F50();
  sub_2756DC79C();
  v5 = sub_2757970D0();
  v7 = v6;
  v9 = v8;
  sub_275797000();
  v10 = sub_2757970A0();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_2756E15EC(v5, v7, v9 & 1);

  KeyPath = swift_getKeyPath();
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE098) + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE0D0) + 28);
  v20 = *MEMORY[0x277CE0B30];
  v21 = sub_275797060();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  result = swift_getKeyPath();
  *v18 = result;
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

unint64_t sub_2756ECDA8()
{
  result = qword_2809FE0A0;
  if (!qword_2809FE0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE098);
    sub_2756ECE60();
    sub_2756CFA44(&qword_2809FE0C8, &qword_2809FE0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE0A0);
  }

  return result;
}

unint64_t sub_2756ECE60()
{
  result = qword_2809FE0A8;
  if (!qword_2809FE0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE0B0);
    sub_2756CFA44(&qword_2809FE0B8, &qword_2809FE0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE0A8);
  }

  return result;
}

unint64_t sub_2756ECF18()
{
  result = qword_2809FE100;
  if (!qword_2809FE100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE0F8);
    sub_2756E10CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE100);
  }

  return result;
}

unint64_t sub_2756ECFA4()
{
  result = qword_2809FE108;
  if (!qword_2809FE108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE0E0);
    sub_2756ED05C();
    sub_2756CFA44(&qword_2809FE128, &qword_2809FE130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE108);
  }

  return result;
}

unint64_t sub_2756ED05C()
{
  result = qword_2809FE110;
  if (!qword_2809FE110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE118);
    sub_2756ED114();
    sub_2756CFA44(&qword_2809FE120, &qword_2809FDBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE110);
  }

  return result;
}

unint64_t sub_2756ED114()
{
  result = qword_2809FDA68;
  if (!qword_2809FDA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDA68);
  }

  return result;
}

unint64_t sub_2756ED198()
{
  result = qword_2809FE138;
  if (!qword_2809FE138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE0F0);
    sub_2756ECF18();
    sub_2756ED254(&qword_2809FDD90, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE138);
  }

  return result;
}

uint64_t sub_2756ED254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2756ED29C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275796A40();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756ED300(uint64_t a1)
{
  v2 = sub_275796A40();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2756ED35C()
{
  sub_2756E12D0();
  v0 = sub_275756884();
  v1 = sub_275795BF0();

  return v1;
}

uint64_t sub_2756ED3E0()
{
  sub_2756E12D0();
  v0 = sub_275756884();
  v1 = sub_275795BF0();

  return v1;
}

uint64_t sub_2756ED474()
{
  sub_2756E12D0();
  v0 = sub_275756884();
  sub_275795BF0();

  v1 = sub_275797F20();

  return v1;
}

uint64_t RemoteExtensionHost.Error.hashValue.getter()
{
  v1 = *v0;
  sub_275798A40();
  MEMORY[0x277C80B70](v1);
  return sub_275798A70();
}

uint64_t sub_2756ED5A4(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_275796280();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_275796080();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_275796090();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_2757960B0();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2756ED79C, 0, 0);
}

uint64_t sub_2756ED79C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = [objc_opt_self() extensionPointID];
  sub_275797F50();

  sub_275796070();
  sub_2757960A0();
  (*(v4 + 16))(v1, v2, v3);
  sub_2756F15FC(&qword_2809FE168, MEMORY[0x277CC5D98]);
  sub_275798200();
  v6 = sub_2756F15FC(&unk_2809FF740, MEMORY[0x277CC5D88]);
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_2756ED958;
  v8 = v0[7];

  return MEMORY[0x282200308](v0 + 2, v8, v6);
}

uint64_t sub_2756ED958()
{
  v2 = *v1;

  v3 = v2[9];
  v4 = v2[8];
  v5 = v2[7];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_2756EDF14;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_2756EDAF0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2756EDAF0()
{
  v50 = v0;
  v1 = v0[2];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  if (v1)
  {
    (*(v4 + 8))(v2, v3);
    v5 = v0[18];
    v6 = v0[14];
    v7 = v0[15];
    if (*(v1 + 16))
    {
      v8 = v0[3];
      v9 = sub_275796110();
      v10 = *(v9 - 8);
      (*(v10 + 16))(v8, v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

      (*(v7 + 8))(v5, v6);
      v11 = 0;
      goto LABEL_9;
    }

    (*(v7 + 8))(v0[18], v0[14]);
  }

  else
  {
    (*(v4 + 8))(v2, v3);
    v12 = v0[17];
    v13 = v0[18];
    v14 = v0[14];
    v15 = v0[15];
    v17 = v0[5];
    v16 = v0[6];
    v18 = v0[4];
    v19 = sub_275700E70();
    (*(v17 + 16))(v16, v19, v18);
    v20 = *(v15 + 16);
    v20(v12, v13, v14);
    v21 = sub_275796270();
    v22 = sub_2757982F0();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[17];
    v24 = v0[18];
    if (v23)
    {
      v27 = v0[15];
      v26 = v0[16];
      v44 = v22;
      v28 = v0[14];
      v46 = v0[5];
      v47 = v0[4];
      v48 = v0[6];
      v45 = v0[18];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v49 = v30;
      *v29 = 136315138;
      v20(v26, v25, v28);
      v31 = sub_275797FA0();
      v33 = v32;
      v34 = *(v27 + 8);
      v34(v25, v28);
      v35 = sub_27562792C(v31, v33, &v49);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_275623000, v21, v44, "Unable to get _AppExtensionQuery result from query %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x277C81E50](v30, -1, -1);
      MEMORY[0x277C81E50](v29, -1, -1);

      (*(v46 + 8))(v48, v47);
      v34(v45, v28);
    }

    else
    {
      v37 = v0[14];
      v36 = v0[15];
      v39 = v0[5];
      v38 = v0[6];
      v40 = v0[4];

      v41 = *(v36 + 8);
      v41(v25, v37);
      (*(v39 + 8))(v38, v40);
      v41(v24, v37);
    }
  }

  v9 = sub_275796110();
  v10 = *(v9 - 8);
  v11 = 1;
LABEL_9:
  (*(v10 + 56))(v0[3], v11, 1, v9);

  v42 = v0[1];

  return v42();
}

uint64_t sub_2756EDF14()
{
  v40 = v0;
  (*(v0[11] + 8))(v0[13], v0[10]);
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = sub_275700E70();
  (*(v6 + 16))(v5, v8, v7);
  v9 = *(v4 + 16);
  v9(v1, v2, v3);
  v10 = sub_275796270();
  v11 = sub_2757982F0();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[17];
  v13 = v0[18];
  if (v12)
  {
    v16 = v0[15];
    v15 = v0[16];
    v34 = v11;
    v17 = v0[14];
    v36 = v0[5];
    v37 = v0[4];
    v38 = v0[6];
    v35 = v0[18];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v39 = v19;
    *v18 = 136315138;
    v9(v15, v14, v17);
    v20 = sub_275797FA0();
    v22 = v21;
    v23 = *(v16 + 8);
    v23(v14, v17);
    v24 = sub_27562792C(v20, v22, &v39);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_275623000, v10, v34, "Unable to get _AppExtensionQuery result from query %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x277C81E50](v19, -1, -1);
    MEMORY[0x277C81E50](v18, -1, -1);

    (*(v36 + 8))(v38, v37);
    v23(v35, v17);
  }

  else
  {
    v26 = v0[14];
    v25 = v0[15];
    v28 = v0[5];
    v27 = v0[6];
    v29 = v0[4];

    v30 = *(v25 + 8);
    v30(v14, v26);
    (*(v28 + 8))(v27, v29);
    v30(v13, v26);
  }

  v31 = sub_275796110();
  (*(*(v31 - 8) + 56))(v0[3], 1, 1, v31);

  v32 = v0[1];

  return v32();
}

uint64_t sub_2756EE230(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2757960D0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE170);
  v4 = swift_task_alloc();
  v2[8] = v4;
  v5 = sub_275796110();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v2[13] = v7;
  *v7 = v2;
  v7[1] = sub_2756EE470;

  return v9(v4);
}

uint64_t sub_2756EE470()
{

  return MEMORY[0x2822009F8](sub_2756EE56C, 0, 0);
}

uint64_t sub_2756EE56C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2756C92B4(v3, &qword_2809FE170);
    sub_2756F13A0();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[7];
    v17 = v0[6];
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];
    (*(v2 + 32))(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    *(swift_allocObject() + 16) = v12;
    v13 = v12;
    sub_2757960C0();
    (*(v11 + 16))(v17, v9, v10);
    v14 = swift_task_alloc();
    v0[14] = v14;
    *v14 = v0;
    v14[1] = sub_2756EE7BC;
    v15 = v0[6];
    v16 = v0[2];

    return MEMORY[0x282116960](v16, v15);
  }
}

uint64_t sub_2756EE7BC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2756EE9AC;
  }

  else
  {
    v2 = sub_2756EE8D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2756EE8D0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  (*(v0[5] + 8))(v0[7], v0[4]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2756EE9AC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  (*(v0[5] + 8))(v0[7], v0[4]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2756EEA80(void *a1)
{
  v27 = a1;
  v1 = sub_2757978A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2757978C0();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275796280();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_275700E70();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_275796270();
  v14 = sub_2757982F0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_27562792C(0xD000000000000027, 0x80000002757B8790, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_27562792C(0x737365636F7270, 0xE700000000000000, aBlock);
    *(v16 + 22) = 2048;
    *(v16 + 24) = 57;
    _os_log_impl(&dword_275623000, v13, v14, "%s: %s - line %ld: Connection to extension has been interrupted!", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x277C81E50](v17, -1, -1);
    v18 = v16;
    v2 = v26;
    MEMORY[0x277C81E50](v18, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_2756CB330();
  v19 = sub_275798340();
  v20 = swift_allocObject();
  v21 = v27;
  *(v20 + 16) = v27;
  aBlock[4] = sub_2756F1B48;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2756F1D58;
  aBlock[3] = &block_descriptor_71;
  v22 = _Block_copy(aBlock);
  v23 = v21;
  sub_2757978B0();
  v30 = MEMORY[0x277D84F90];
  sub_2756F15FC(&qword_2809FD6A8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
  sub_2756C56B4();
  sub_2757985B0();
  MEMORY[0x277C80470](0, v7, v4, v22);
  _Block_release(v22);

  (*(v2 + 8))(v4, v1);
  (*(v28 + 8))(v7, v29);
}

void *sub_2756EEEF8()
{
  v1 = OBJC_IVAR___ICQRemoteExtensionHost_presentingVC;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2756EEF44(uint64_t a1)
{
  v3 = OBJC_IVAR___ICQRemoteExtensionHost_presentingVC;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2756EEFFC()
{
  v1 = (v0 + OBJC_IVAR___ICQRemoteExtensionHost_flowCompletion);
  swift_beginAccess();
  v2 = *v1;
  sub_27562F5C0(*v1);
  return v2;
}

uint64_t sub_2756EF058(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___ICQRemoteExtensionHost_flowCompletion);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_2756D4A30(v6);
}

uint64_t sub_2756EF118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FF730);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_2757981E0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = a1;
  v12 = v3;

  sub_2756F03A8(0, 0, v9, &unk_2757A64A8, v11);
}

uint64_t sub_2756EF244(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[37] = a6;
  v7[38] = a7;
  v7[35] = a4;
  v7[36] = a5;
  v9 = sub_275796280();
  v7[39] = v9;
  v7[40] = *(v9 - 8);
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v10 = sub_275796100();
  v7[43] = v10;
  v7[44] = *(v10 - 8);
  v11 = swift_task_alloc();
  v7[45] = v11;
  v12 = *((*MEMORY[0x277D85000] & *a4) + 0x68);
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  v7[46] = v13;
  *v13 = v7;
  v13[1] = sub_2756EF448;

  return v15(v11);
}

uint64_t sub_2756EF448()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_2756EFC1C;
  }

  else
  {
    v2 = sub_2756EF55C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2756EF55C()
{
  v54 = v0;
  v1 = v0[47];
  v2 = sub_2757960F0();
  if (v1)
  {
    (*(v0[44] + 8))(v0[45], v0[43]);
    v4 = v0[40];
    v3 = v0[41];
    v5 = v0[39];
    v6 = sub_275700E70();
    (*(v4 + 16))(v3, v6, v5);
    v7 = v1;
    v8 = sub_275796270();
    v9 = sub_2757982F0();

    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[40];
    v11 = v0[41];
    v13 = v0[39];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v53 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = sub_2757989F0();
      v18 = sub_27562792C(v16, v17, &v53);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_275623000, v8, v9, "Error starting connection with extension: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x277C81E50](v15, -1, -1);
      MEMORY[0x277C81E50](v14, -1, -1);

      (*(v12 + 8))(v11, v13);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    v36 = v0[36];
    v37 = v1;
    v36(v1);
  }

  else
  {
    v19 = v2;
    v20 = v0[35];
    (*(v0[44] + 8))(v0[45], v0[43]);
    [v19 setExportedObject_];
    v21 = objc_opt_self();
    v22 = [v21 interfaceWithProtocol_];
    [v19 setExportedInterface_];

    v23 = [v21 interfaceWithProtocol_];
    [v19 setRemoteObjectInterface_];

    v24 = swift_allocObject();
    *(v24 + 16) = v20;
    v0[6] = sub_2756F1B14;
    v0[7] = v24;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2756C4584;
    v0[5] = &block_descriptor_53;
    v25 = _Block_copy(v0 + 2);
    v26 = v20;

    [v19 setInterruptionHandler_];
    _Block_release(v25);
    v0[12] = sub_2756F0008;
    v0[13] = 0;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_2756C4584;
    v0[11] = &block_descriptor_56;
    v27 = _Block_copy(v0 + 8);
    [v19 setInvalidationHandler_];
    _Block_release(v27);
    [v19 resume];
    v0[18] = sub_2756F0158;
    v0[19] = 0;
    v0[14] = MEMORY[0x277D85DD0];
    v0[15] = 1107296256;
    v0[16] = sub_2756F0340;
    v0[17] = &block_descriptor_59;
    v28 = _Block_copy(v0 + 14);
    v29 = [v19 remoteObjectProxyWithErrorHandler_];
    _Block_release(v28);
    sub_2757985A0();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE190);
    if (swift_dynamicCast())
    {
      v30 = v0[37];
      v31 = v0[36];
      v32 = v0[34];
      v33 = sub_275797EA0();
      v34 = swift_allocObject();
      *(v34 + 16) = v31;
      *(v34 + 24) = v30;
      v0[24] = sub_2756F1B1C;
      v0[25] = v34;
      v0[20] = MEMORY[0x277D85DD0];
      v0[21] = 1107296256;
      v0[22] = sub_2756C4584;
      v0[23] = &block_descriptor_65;
      v35 = _Block_copy(v0 + 20);

      [v32 startConnectionWithContext:v33 completion:v35];
      _Block_release(v35);

      swift_unknownObjectRelease();
    }

    else
    {
      v38 = v0[42];
      v39 = v0[39];
      v40 = v0[40];
      v41 = sub_275700E70();
      (*(v40 + 16))(v38, v41, v39);
      v42 = sub_275796270();
      v43 = sub_2757982F0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_275623000, v42, v43, "Unable to retrieve proxy to start connection with extension", v44, 2u);
        MEMORY[0x277C81E50](v44, -1, -1);
      }

      v45 = v0[42];
      v46 = v0[39];
      v47 = v0[40];
      v48 = v0[36];

      (*(v47 + 8))(v45, v46);
      sub_2756F13A0();
      v49 = swift_allocError();
      *v50 = 1;
      v48();
    }
  }

  v51 = v0[1];

  return v51();
}

uint64_t sub_2756EFC1C()
{
  v25 = v0;
  v1 = v0[47];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  v5 = sub_275700E70();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_275796270();
  v8 = sub_2757982F0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[40];
    v23 = v0[41];
    v10 = v0[39];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_2757989F0();
    v15 = sub_27562792C(v13, v14, &v24);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_275623000, v7, v8, "Error starting connection with extension: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x277C81E50](v12, -1, -1);
    MEMORY[0x277C81E50](v11, -1, -1);

    (*(v9 + 8))(v23, v10);
  }

  else
  {
    v17 = v0[40];
    v16 = v0[41];
    v18 = v0[39];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[36];
  v20 = v1;
  v19(v1);

  v21 = v0[1];

  return v21();
}

void sub_2756EFE38(void *a1)
{
  v2 = sub_275796280();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_275700E70();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_275796270();
  v8 = sub_2757982F0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_275623000, v7, v8, "Connection to extension interrupted! Dismissing flow.", v9, 2u);
    MEMORY[0x277C81E50](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_2756F13A0();
  v10 = swift_allocError();
  *v11 = 2;
  v12 = sub_275795C40();
  (*((*MEMORY[0x277D85000] & *a1) + 0xB0))();
}

uint64_t sub_2756F0008()
{
  v0 = sub_275796280();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_275700E70();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_275796270();
  v6 = sub_275798310();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_275623000, v5, v6, "Connection to extension invalidated.", v7, 2u);
    MEMORY[0x277C81E50](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2756F0158(void *a1)
{
  v2 = sub_275796280();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_275700E70();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = sub_275796270();
  v9 = sub_2757982F0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_2757989F0();
    v14 = sub_27562792C(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_275623000, v8, v9, "Unable to retrieve proxy to start connection with extension %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x277C81E50](v11, -1, -1);
    MEMORY[0x277C81E50](v10, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_2756F0340(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2756F03A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FF730);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2756DDED4(a3, v25 - v10);
  v12 = sub_2757981E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2756C92B4(v11, &unk_2809FF730);
  }

  else
  {
    sub_2757981D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_275798160();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_275797FD0() + 32;
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

      sub_2756C92B4(a3, &unk_2809FF730);

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

  sub_2756C92B4(a3, &unk_2809FF730);
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

uint64_t sub_2756F0698(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a3;
  v9 = sub_275796280();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_275700E70();
  (*(v10 + 16))(v12, v13, v9);
  v14 = a2;
  v15 = sub_275796270();
  v16 = sub_2757982E0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v14;
    *v19 = v14;
    v20 = v14;
    _os_log_impl(&dword_275623000, v15, v16, "Presenting extension by %@", v18, 0xCu);
    sub_2756C92B4(v19, &qword_2809FEDA0);
    MEMORY[0x277C81E50](v19, -1, -1);
    v21 = v18;
    a1 = v27;
    MEMORY[0x277C81E50](v21, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v22 = swift_allocObject();
  v22[2] = v28;
  v22[3] = a4;
  v22[4] = v5;
  v22[5] = v14;
  v23 = *((*MEMORY[0x277D85000] & *v5) + 0xA0);
  v24 = v14;

  v25 = v5;
  v23(a1, sub_2756F14A8, v22);
}

void sub_2756F0900(void *a1, void (*a2)(void), uint64_t a3, void *a4, void *a5)
{
  v10 = sub_2757978A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2757978C0();
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = a1;
    v19 = sub_275795C40();
    a2();
  }

  else
  {
    v27 = v15;
    sub_2756CB330();
    v20 = v11;
    v26 = sub_275798340();
    v21 = swift_allocObject();
    v21[2] = a4;
    v21[3] = a5;
    v21[4] = a2;
    v21[5] = a3;
    aBlock[4] = sub_2756F188C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2756C4584;
    aBlock[3] = &block_descriptor_36;
    v22 = _Block_copy(aBlock);
    v23 = a4;
    v24 = a5;

    sub_2757978B0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2756F15FC(&qword_2809FD6A8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
    sub_2756C56B4();
    sub_2757985B0();
    v25 = v26;
    MEMORY[0x277C80470](0, v17, v13, v22);
    _Block_release(v22);

    (*(v20 + 8))(v13, v10);
    (*(v27 + 8))(v17, v14);
  }
}

uint64_t sub_2756F0D1C(void *a1)
{
  v3 = sub_2757978A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2757978C0();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2756CB330();
  v10 = sub_275798340();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_2756F14B4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2756C4584;
  aBlock[3] = &block_descriptor_2;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  v14 = v1;

  sub_2757978B0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2756F15FC(&qword_2809FD6A8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
  sub_2756C56B4();
  sub_2757985B0();
  MEMORY[0x277C80470](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

id RemoteExtensionHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteExtensionHost.init()()
{
  *&v0[OBJC_IVAR___ICQRemoteExtensionHost_presentingVC] = 0;
  v1 = &v0[OBJC_IVAR___ICQRemoteExtensionHost_flowCompletion];
  v2 = type metadata accessor for RemoteExtensionHost();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id RemoteExtensionHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteExtensionHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2756F11B0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2756F12A8;

  return v6(a1);
}

uint64_t sub_2756F12A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2756F13A0()
{
  result = qword_2809FF720;
  if (!qword_2809FF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF720);
  }

  return result;
}

uint64_t sub_2756F13FC()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2756DBB90;

  return sub_2756EF244(v6, v7, v8, v2, v3, v5, v4);
}

void sub_2756F14B4()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x70))();
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v3;
    v10[4] = sub_2756F1798;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_2756C4584;
    v10[3] = &block_descriptor_30;
    v7 = _Block_copy(v10);
    v8 = v3;
    v9 = v2;

    [v5 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2756F15FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2756F166C()
{
  result = qword_2809FE188;
  if (!qword_2809FE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE188);
  }

  return result;
}

uint64_t sub_2756F1798()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  if (v4)
  {
    v5 = v4;
    v4(v2);
    sub_2756D4A30(v5);
  }

  (*((*v3 & *v1) + 0x78))(0);
  return (*((*v3 & *v1) + 0x90))(0, 0);
}

void sub_2756F188C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  type metadata accessor for RemoteExtensionHostViewController();
  v5 = v2;
  v10 = RemoteExtensionHostViewController.__allocating_init(host:)(v5);
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *v5) + 0x78);
  v8 = v1;
  v7(v1);
  v9 = *((*v6 & *v5) + 0x90);

  v9(v3, v4);
  [v8 presentViewController:v10 animated:0 completion:0];
}

uint64_t sub_2756F19A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2756DC7F0;

  return sub_2756F11B0(a1, v4);
}

uint64_t sub_2756F1A5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2756DBB90;

  return sub_2756F11B0(a1, v4);
}

void sub_2756F1B48()
{
  v1 = *(v0 + 16);
  v2 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v7[4] = sub_2756F1C64;
    v7[5] = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_2756C4584;
    v7[3] = &block_descriptor_77;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v3 dismissViewControllerAnimated:1 completion:v5];
    _Block_release(v5);
  }
}

void sub_2756F1C64()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x88))();
  if (v1)
  {
    v2 = v1;
    sub_2756F13A0();
    v3 = swift_allocError();
    *v4 = 1;
    v5 = sub_275795C40();
    v2();
    sub_2756D4A30(v2);
  }
}

void sub_2756F1D7C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setView_];

  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];

    v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
    [v0 addChildAndPinToEdgesWithChildViewController_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2756F1EE8()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI29RemoteExtensionViewController____lazy_storage___contentViewController;
  v2 = *(v0 + OBJC_IVAR____TtC13iCloudQuotaUI29RemoteExtensionViewController____lazy_storage___contentViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13iCloudQuotaUI29RemoteExtensionViewController____lazy_storage___contentViewController);
  }

  else
  {
    v4 = sub_2756F1F48();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2756F1F48()
{
  v0 = sub_275796280();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_27578AE14();
  swift_beginAccess();
  result = *v4;
  if (!*v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = [result makeContentViewController];
  if (result)
  {
    return result;
  }

  v6 = sub_275700E70();
  (*(v1 + 16))(v3, v6, v0);
  v7 = sub_275796270();
  v8 = sub_2757982F0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_275623000, v7, v8, "Unable to retrieve content view controller for the remote extension!", v9, 2u);
    MEMORY[0x277C81E50](v9, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  result = swift_beginAccess();
  v10 = *v4;
  if (!*v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_2756F25AC();
  v11 = swift_allocError();
  v12 = v10;
  v13 = sub_275795C40();

  [v12 dismissViewControllerWithError_];
  return [objc_allocWithZone(MEMORY[0x277D75D28]) init];
}

void sub_2756F2170(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13iCloudQuotaUI29RemoteExtensionViewController____lazy_storage___contentViewController);
  *(v1 + OBJC_IVAR____TtC13iCloudQuotaUI29RemoteExtensionViewController____lazy_storage___contentViewController) = a1;
}

void (*sub_2756F2184(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2756F1EE8();
  return sub_2756F21CC;
}

void sub_2756F21CC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13iCloudQuotaUI29RemoteExtensionViewController____lazy_storage___contentViewController);
  *(v1 + OBJC_IVAR____TtC13iCloudQuotaUI29RemoteExtensionViewController____lazy_storage___contentViewController) = v2;
}

id sub_2756F21E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_275797F10();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_2756F225C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC13iCloudQuotaUI29RemoteExtensionViewController____lazy_storage___contentViewController] = 0;
  if (a2)
  {
    v5 = sub_275797F10();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for RemoteExtensionViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_2756F23C4(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_2756F2408(void *a1)
{
  *&v1[OBJC_IVAR____TtC13iCloudQuotaUI29RemoteExtensionViewController____lazy_storage___contentViewController] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RemoteExtensionViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2756F2500()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteExtensionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2756F2548()
{
  result = qword_2809FE1A0;
  if (!qword_2809FE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE1A0);
  }

  return result;
}

unint64_t sub_2756F25AC()
{
  result = qword_2809FE1A8;
  if (!qword_2809FE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE1A8);
  }

  return result;
}

uint64_t ManageStorageAlertButton.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ManageStorageAlertButton.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ManageStorageAlertButton.label.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ManageStorageAlertButton.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2756F2710@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2757966E0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ManageStorageAlertButton.role.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ManageStorageAlertButton(0) + 24);

  return sub_2756F27E0(v3, a1);
}

uint64_t sub_2756F27E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ManageStorageAlertButton.role.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ManageStorageAlertButton(0) + 24);

  return sub_2756F2894(a1, v3);
}

uint64_t sub_2756F2894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756F294C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ManageStorageAlertButton(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2756F4694;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_27562F5C0(v4);
}

uint64_t sub_2756F29E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2756F466C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for ManageStorageAlertButton(0) + 28));
  v8 = *v7;
  sub_27562F5C0(v3);
  result = sub_2756D4A30(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ManageStorageAlertButton.action.getter()
{
  v1 = *(v0 + *(type metadata accessor for ManageStorageAlertButton(0) + 28));
  sub_27562F5C0(v1);
  return v1;
}

uint64_t ManageStorageAlertButton.action.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ManageStorageAlertButton(0) + 28));
  result = sub_2756D4A30(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2756F2B60()
{
  v0 = sub_275795D60();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275795D50();
  v4 = sub_275795D40();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t ManageStorageAlertButton.init(id:label:role:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v16 = type metadata accessor for ManageStorageAlertButton(0);
  v17 = *(v16 + 24);
  v18 = sub_2757966E0();
  (*(*(v18 - 8) + 56))(&a8[v17], 1, 1, v18);
  v19 = &a8[*(v16 + 28)];
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  result = sub_2756F2894(a5, &a8[v17]);
  *v19 = a6;
  *(v19 + 1) = a7;
  return result;
}

uint64_t sub_2756F2D14@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2756F2D20@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2756F2DD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  return v1;
}

uint64_t sub_2756F2E4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_275796630();
}

void (*sub_2756F2EB8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_275796610();
  return sub_2756C368C;
}

uint64_t sub_2756F2FB0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE98);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xA0))(v6);
}

uint64_t sub_2756F30B4()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  sub_2757965F0();
  return swift_endAccess();
}

uint64_t sub_2756F3128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  sub_275796600();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_2756F3260(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE98);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13iCloudQuotaUI18ManageStorageModel__shouldPresentAlert;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  sub_2757965F0();
  swift_endAccess();
  return sub_2756C3A34;
}

uint64_t sub_2756F33D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_2756F342C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xB8);

  return v2(v3);
}

uint64_t sub_2756F34D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI18ManageStorageModel_dialogIcon;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2756F3590@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2756F35EC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xD0);

  return v4(v2, v3);
}

uint64_t sub_2756F36DC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

uint64_t sub_2756F3738(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xE8);

  return v2(v3);
}

uint64_t sub_2756F37E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI18ManageStorageModel_buttons;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2756F389C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2756F38F8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x100);

  return v4(v2, v3);
}

uint64_t sub_2756F3984(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_2756F39E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_2756F3AA0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x110))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2756F3B68()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI18ManageStorageModel_shouldClearOnBack;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2756F3BAC(char a1)
{
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI18ManageStorageModel_shouldClearOnBack;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ManageStorageModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManageStorageModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC13iCloudQuotaUI18ManageStorageModel__shouldPresentAlert;
  v12 = 0;
  sub_2757965E0();
  (*(v2 + 32))(&v0[v5], v4, v1);
  *&v0[OBJC_IVAR____TtC13iCloudQuotaUI18ManageStorageModel_dialogIcon] = 0;
  v6 = &v0[OBJC_IVAR____TtC13iCloudQuotaUI18ManageStorageModel_alertTitle];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC13iCloudQuotaUI18ManageStorageModel_buttons] = MEMORY[0x277D84F90];
  v7 = &v0[OBJC_IVAR____TtC13iCloudQuotaUI18ManageStorageModel_alertMessage];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v0[OBJC_IVAR____TtC13iCloudQuotaUI18ManageStorageModel_shouldClearOnBack] = 0;
  v8 = type metadata accessor for ManageStorageModel(0);
  v11.receiver = v0;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_2756F3E0C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ManageStorageModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManageStorageModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2756F3F6C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ManageStorageModel(0);
  result = sub_2757965C0();
  *a1 = result;
  return result;
}

void sub_2756F3FD4()
{
  sub_2756F4068();
  if (v0 <= 0x3F)
  {
    sub_2756F40C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2756F4068()
{
  if (!qword_2809FE1B0)
  {
    sub_2757966E0();
    v0 = sub_275798550();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FE1B0);
    }
  }
}

void sub_2756F40C0()
{
  if (!qword_2809FE1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE1C0);
    v0 = sub_275798550();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FE1B8);
    }
  }
}

void sub_2756F412C()
{
  sub_2756E3AC4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2756F46CC()
{
  type metadata accessor for ManageStorageAppModel();
  sub_2756F66C8(&qword_2809FE1C8, type metadata accessor for ManageStorageAppModel);

  return sub_275796900();
}

uint64_t sub_2756F4758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE1D0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_2756F4924(a1, a2, &v10 - v5);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = &v6[*(v4 + 36)];
  *v8 = sub_2756F4ED4;
  v8[1] = v7;
  type metadata accessor for ManageStorageDestination();
  v8[2] = 0;
  v8[3] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE1D8);
  sub_2756F50C0();
  sub_2756F66C8(&qword_2809FE220, type metadata accessor for ManageStorageDestination);
  swift_getOpaqueTypeConformance2();
  sub_2757972E0();
  return sub_2756C92B4(v6, &qword_2809FE1D0);
}

uint64_t sub_2756F4924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v37 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2B8);
  MEMORY[0x28223BE20](v35);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE210);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_275795CB0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(**sub_2756D8EF8() + 136);

  v19 = v17(v18);

  if (!v19)
  {
    goto LABEL_4;
  }

  v21 = swift_unknownObjectRelease();
  (*(*a2 + 216))(v21);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v20 = sub_2756C92B4(v12, &qword_2809FD700);
LABEL_4:
    v22 = (*(*a2 + 264))(v20);
    v24 = v23;
    v25 = (*(*a2 + 120))();
    *v5 = v22;
    *(v5 + 1) = v24;
    v5[16] = v25 & 1;
    swift_storeEnumTagMultiPayload();
    sub_2756CFA44(&qword_2809FE208, &qword_2809FE210);
    sub_2756F5288();
    return sub_275796D80();
  }

  (*(v14 + 32))(v16, v12, v13);
  (*(v14 + 16))(v8, v16, v13);
  v27 = type metadata accessor for ManageStorageDestination();
  v28 = (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
  MEMORY[0x28223BE20](v28);
  *(&v32 - 2) = v32;
  *(&v32 - 1) = a2;
  sub_2756F5288();
  sub_2756F66C8(&qword_2809FE220, type metadata accessor for ManageStorageDestination);
  v29 = v33;
  sub_2757968D0();
  v30 = v34;
  v31 = v36;
  (*(v34 + 16))(v5, v29, v36);
  swift_storeEnumTagMultiPayload();
  sub_2756CFA44(&qword_2809FE208, &qword_2809FE210);
  sub_275796D80();
  (*(v30 + 8))(v29, v31);
  return (*(v14 + 8))(v16, v13);
}

uint64_t type metadata accessor for ManageStorageDestination()
{
  result = qword_280A03B60;
  if (!qword_280A03B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2756F4F24(uint64_t a1)
{
  v2 = sub_275795CB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ManageStorageDestination();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2756F56A0(a1, v8);
  (*(v3 + 32))(v5, v8, v2);
  v9 = *(**sub_2756D8EF8() + 200);

  v9(v5, 0x283A20726F727245, 0xE800000000000000);

  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2756F50C0()
{
  result = qword_2809FE1E0;
  if (!qword_2809FE1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE1D0);
    sub_2756F514C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE1E0);
  }

  return result;
}

unint64_t sub_2756F514C()
{
  result = qword_2809FE1E8;
  if (!qword_2809FE1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE1F0);
    sub_2756F51D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE1E8);
  }

  return result;
}

unint64_t sub_2756F51D0()
{
  result = qword_2809FE1F8;
  if (!qword_2809FE1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE200);
    sub_2756CFA44(&qword_2809FE208, &qword_2809FE210);
    sub_2756F5288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE1F8);
  }

  return result;
}

unint64_t sub_2756F5288()
{
  result = qword_2809FE218;
  if (!qword_2809FE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE218);
  }

  return result;
}

uint64_t sub_2756F52DC()
{
  type metadata accessor for ManageStorageAppModel();
  sub_2756F66C8(&qword_2809FE1C8, type metadata accessor for ManageStorageAppModel);

  return sub_2757968F0();
}

uint64_t sub_2756F5358()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE1D0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - v2;
  v5 = *v0;
  v4 = v0[1];
  sub_2756F4924(v5, v4, &v9 - v2);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = &v3[*(v1 + 36)];
  *v7 = sub_2756F6E00;
  *(v7 + 1) = v6;
  type metadata accessor for ManageStorageDestination();
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE1D8);
  sub_2756F50C0();
  sub_2756F66C8(&qword_2809FE220, type metadata accessor for ManageStorageDestination);
  swift_getOpaqueTypeConformance2();
  sub_2757972E0();
  return sub_2756C92B4(v3, &qword_2809FE1D0);
}

uint64_t sub_2756F5520()
{
  v1 = sub_275795CB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ManageStorageDestination();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2756F56A0(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  sub_2756F66C8(&qword_2809FE228, MEMORY[0x277CC9260]);
  sub_275797EE0();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2756F56A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756F5704(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE230);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = *(v5 + 56);
  sub_2756F56A0(a1, &v12 - v6);
  sub_2756F56A0(a2, &v7[v8]);
  LOBYTE(a2) = sub_275795C80();
  v9 = sub_275795CB0();
  v10 = *(*(v9 - 8) + 8);
  v10(&v7[v8], v9);
  v10(v7, v9);
  return a2 & 1;
}

uint64_t sub_2756F5808()
{
  v1 = v0;
  v2 = sub_275795CB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ManageStorageDestination();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275798A40();
  sub_2756F56A0(v1, v8);
  (*(v3 + 32))(v5, v8, v2);
  sub_2756F66C8(&qword_2809FE228, MEMORY[0x277CC9260]);
  sub_275797EE0();
  (*(v3 + 8))(v5, v2);
  return sub_275798A70();
}

uint64_t sub_2756F5998()
{
  v1 = v0;
  v2 = sub_275795CB0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275798A40();
  sub_2756F56A0(v1, v8);
  (*(v3 + 32))(v6, v8, v2);
  sub_2756F66C8(&qword_2809FE228, MEMORY[0x277CC9260]);
  sub_275797EE0();
  (*(v3 + 8))(v6, v2);
  return sub_275798A70();
}

uint64_t sub_2756F5B24()
{
  v1 = sub_275795CB0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2756F56A0(v0, v7);
  (*(v2 + 32))(v5, v7, v1);
  sub_2756F66C8(&qword_2809FE228, MEMORY[0x277CC9260]);
  sub_275797EE0();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_2756F5CA0()
{
  v1 = v0;
  v2 = sub_275795CB0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275798A40();
  sub_2756F56A0(v1, v8);
  (*(v3 + 32))(v6, v8, v2);
  sub_2756F66C8(&qword_2809FE228, MEMORY[0x277CC9260]);
  sub_275797EE0();
  (*(v3 + 8))(v6, v2);
  return sub_275798A70();
}

uint64_t sub_2756F5E6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE238);
  sub_2756F63E4();
  return sub_2757968A0();
}

uint64_t sub_2756F5F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE270);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE260);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2B0);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  if (a2)
  {
    *&v42 = a1;
    *(&v42 + 1) = a2;
    sub_2756DC79C();

    *v18 = sub_2757970D0();
    *(v18 + 1) = v19;
    v18[16] = v20 & 1;
    *(v18 + 3) = v21;
    swift_storeEnumTagMultiPayload();
    sub_2756F64F4();
    sub_275796D80();
LABEL_5:
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE250);
    return (*(*(v32 - 8) + 56))(a4, 0, 1, v32);
  }

  v39 = v15;
  v40 = a4;
  if (v41)
  {
    sub_2757967B0();
    v22 = &v9[*(v7 + 36)];
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE280) + 28);
    v24 = *MEMORY[0x277CDF438];
    v25 = sub_275796720();
    (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
    *v22 = swift_getKeyPath();
    sub_275797820();
    sub_275796A70();
    sub_2756D8BC4(v9, v13, &qword_2809FE270);
    v26 = &v13[*(v10 + 36)];
    v27 = v47;
    *(v26 + 4) = v46;
    *(v26 + 5) = v27;
    *(v26 + 6) = v48;
    v28 = v43;
    *v26 = v42;
    *(v26 + 1) = v28;
    v29 = v45;
    *(v26 + 2) = v44;
    *(v26 + 3) = v29;
    v30 = v13;
    v31 = v39;
    sub_2756D8BC4(v30, v39, &qword_2809FE260);
    sub_2756F6CFC(v31, v18);
    swift_storeEnumTagMultiPayload();
    sub_2756F64F4();
    a4 = v40;
    sub_275796D80();
    sub_2756C92B4(v31, &qword_2809FE260);
    goto LABEL_5;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE250);
  v35 = *(*(v34 - 8) + 56);
  v36 = v34;
  v37 = v40;

  return v35(v37, 1, 1, v36);
}

uint64_t sub_2756F6364@<X0>(uint64_t a1@<X8>)
{
  sub_275796CE0();
  result = sub_2757970B0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_2756F63E4()
{
  result = qword_2809FE240;
  if (!qword_2809FE240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE238);
    sub_2756F6468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE240);
  }

  return result;
}

unint64_t sub_2756F6468()
{
  result = qword_2809FE248;
  if (!qword_2809FE248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE250);
    sub_2756F64F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE248);
  }

  return result;
}

unint64_t sub_2756F64F4()
{
  result = qword_2809FE258;
  if (!qword_2809FE258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE260);
    sub_2756F6580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE258);
  }

  return result;
}

unint64_t sub_2756F6580()
{
  result = qword_2809FE268;
  if (!qword_2809FE268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE270);
    sub_2756CFA44(&qword_2809FDCD8, &qword_2809FDCA0);
    sub_2756CFA44(&qword_2809FE278, &qword_2809FE280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE268);
  }

  return result;
}

uint64_t sub_2756F66C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2756F672C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE238);
  sub_2756F63E4();
  return sub_2757968A0();
}

uint64_t sub_2756F67D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2756F6818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2756F6864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE290);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2756F68DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE290);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_2756F6964(uint64_t a1)
{
  sub_2756F6A1C();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_275795CB0();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_2756F6A1C()
{
  if (!qword_2809FE298)
  {
    v0 = sub_275795CB0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FE298);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2756F6A78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2756F6AD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2756F6B38()
{
  result = qword_2809FE2A0;
  if (!qword_2809FE2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE2A8);
    sub_2756F63E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE2A0);
  }

  return result;
}

uint64_t sub_2756F6C34(uint64_t a1)
{
  v2 = sub_275796720();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x277C7EC20](v4);
}

uint64_t sub_2756F6CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756F6D6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = (*(*v3 + 264))();
  v6 = v5;
  result = (*(*v3 + 120))();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = result & 1;
  return result;
}

uint64_t ManageStorageAppModelStore.__allocating_init(account:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = sub_2756F78C0(MEMORY[0x277D84F90]);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t ManageStorageAppModelStore.init(account:)(uint64_t a1)
{
  v3 = sub_2756F78C0(MEMORY[0x277D84F90]);
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_2756F6E90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = sub_2756F72B4(a1, a2);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    type metadata accessor for ManageStorageAppModel();
    v10 = *(v3 + 16);

    v9 = sub_2756E2B64(v10, a1, a2);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    sub_2756F75D4(v9, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + 24) = v13;
    swift_endAccess();
    return v9;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  return v9;
}

uint64_t sub_2756F6FD0@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*v1 + 128))();
  result = sub_2756F6DFC(v3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t ManageStorageAppModelStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t EnvironmentValues.manageStorageModelStore.getter()
{
  sub_2756F79C4();
  sub_275796C40();
  return v1;
}

uint64_t sub_2756F70D4@<X0>(void *a1@<X8>)
{
  sub_2756F79C4();
  result = sub_275796C40();
  *a1 = v3;
  return result;
}

uint64_t sub_2756F7124()
{
  sub_2756F79C4();

  return sub_275796C50();
}

uint64_t (*EnvironmentValues.manageStorageModelStore.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_2756F79C4();
  sub_275796C40();
  return sub_2756F7220;
}

uint64_t sub_2756F7220(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_275796C50();
  }

  sub_275796C50();
}

unint64_t sub_2756F72B4(uint64_t a1, uint64_t a2)
{
  sub_275798A40();
  sub_275797FF0();
  v4 = sub_275798A70();

  return sub_2756D56F8(a1, a2, v4);
}

uint64_t sub_2756F732C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2D8);
  v34 = a2;
  result = sub_275798860();
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

      sub_275798A40();
      sub_275797FF0();
      result = sub_275798A70();
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

uint64_t sub_2756F75D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2756F72B4(a2, a3);
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
      sub_2756F732C(v16, a4 & 1);
      v11 = sub_2756F72B4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2757989D0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2756F7750();
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

void *sub_2756F7750()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2D8);
  v2 = *v0;
  v3 = sub_275798850();
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

unint64_t sub_2756F78C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2D8);
    v3 = sub_275798870();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2756F72B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2756F79C4()
{
  result = qword_2809FE2C8;
  if (!qword_2809FE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE2C8);
  }

  return result;
}

unint64_t sub_2756F7A9C()
{
  result = qword_2809FE2D0;
  if (!qword_2809FE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE2D0);
  }

  return result;
}

uint64_t BackupRow.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BackupRow.detailLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t BackupRow.alertTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t BackupRow.secondaryAlertTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t BackupRow.id.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t BackupRow.asDecodable.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v63 = v1[2];
  v69 = v1[3];
  v65 = v1[4];
  v70 = v1[5];
  v66 = v1[9];
  v67 = v1[10];
  if (v1[7])
  {
    v59 = v1[6];
    v61 = v1[7];
    v64 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2E0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2E8);
    v5 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
    v6 = *(*(v4 - 8) + 72);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_2757A4FB0;
    v7 = (v60 + v5);
    v8 = *(v4 + 48);
    *v7 = 0x6C6562616CLL;
    v7[1] = 0xE500000000000000;
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 24) = v3;
    *(v7 + v8) = v9;
    v10 = *MEMORY[0x277D232A0];
    v11 = sub_2757963E0();
    v12 = *(*(v11 - 8) + 104);
    v12(v60 + v5 + v8, v10, v11);
    v13 = v6;
    v14 = (v60 + v5 + v6);
    v15 = *(v4 + 48);
    *v14 = 0x614C6C6961746564;
    v14[1] = 0xEB000000006C6562;
    v16 = swift_allocObject();
    *(v16 + 16) = v63;
    *(v16 + 24) = v69;
    *(v14 + v15) = v16;
    v12(v14 + v15, v10, v11);
    v17 = 2 * v13;
    v18 = *(v4 + 48);
    v19 = (v60 + v5 + 2 * v13);
    *v19 = 0x7469547472656C61;
    v19[1] = 0xEA0000000000656CLL;
    v20 = swift_allocObject();
    *(v20 + 16) = v65;
    *(v20 + 24) = v70;
    *(v19 + v18) = v20;
    v12(v19 + v18, v10, v11);
    v21 = v13;
    v22 = v11;
    v23 = (v60 + v5 + v17 + v21);
    v24 = *(v4 + 48);
    *v23 = 0xD000000000000013;
    v23[1] = 0x80000002757B89E0;
    v25 = swift_allocObject();
    *(v25 + 16) = v59;
    *(v25 + 24) = v61;
    *(v23 + v24) = v25;
    v26 = v10;
    v12(v23 + v24, v10, v22);
    v27 = 4 * v21;
    v28 = v21;
    v29 = *(v4 + 48);
    v30 = v60 + v5 + 4 * v21;
    strcpy(v30, "deleteActions");
    *(v30 + 14) = -4864;
    v31 = swift_allocObject();
    *(v31 + 16) = MEMORY[0x277D84F90];
    *(v30 + v29) = v31;
    v12(v30 + v29, *MEMORY[0x277D23278], v22);
    v32 = (v60 + v5 + v27 + v28);
    v33 = *(v4 + 48);
    *v32 = 25705;
    v32[1] = 0xE200000000000000;
    v34 = swift_allocObject();
    *(v34 + 16) = v66;
    *(v34 + 24) = v67;
    *(v32 + v33) = v34;
    v12(v32 + v33, v26, v22);

    v35 = sub_2756FADF0(v60);
  }

  else
  {
    v64 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2E0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2E8);
    v37 = *(*(v36 - 8) + 72);
    v38 = (*(*(v36 - 8) + 80) + 32) & ~*(*(v36 - 8) + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_2757A4FD0;
    v39 = (v62 + v38);
    v40 = *(v36 + 48);
    *v39 = 0x6C6562616CLL;
    *(v39 + 1) = 0xE500000000000000;
    v41 = swift_allocObject();
    *(v41 + 16) = v2;
    *(v41 + 24) = v3;
    *&v39[v40] = v41;
    v42 = *MEMORY[0x277D232A0];
    v22 = sub_2757963E0();
    v43 = *(*(v22 - 8) + 104);
    v43(&v39[v40], v42, v22);
    v44 = &v39[v37];
    v45 = *(v36 + 48);
    *v44 = 0x614C6C6961746564;
    *(v44 + 1) = 0xEB000000006C6562;
    v46 = swift_allocObject();
    *(v46 + 16) = v63;
    *(v46 + 24) = v69;
    *&v44[v45] = v46;
    v43(&v39[v37 + v45], v42, v22);
    v47 = *(v36 + 48);
    v48 = &v39[2 * v37];
    *v48 = 0x7469547472656C61;
    *(v48 + 1) = 0xEA0000000000656CLL;
    v49 = swift_allocObject();
    *(v49 + 16) = v65;
    *(v49 + 24) = v70;
    *&v48[v47] = v49;
    v43(&v48[v47], v42, v22);
    v50 = *(v36 + 48);
    v51 = &v39[3 * v37];
    strcpy(v51, "deleteActions");
    *(v51 + 7) = -4864;
    v52 = swift_allocObject();
    *(v52 + 16) = MEMORY[0x277D84F90];
    *&v51[v50] = v52;
    v43(&v51[v50], *MEMORY[0x277D23278], v22);
    v53 = &v39[4 * v37];
    v54 = *(v36 + 48);
    *v53 = 25705;
    *(v53 + 1) = 0xE200000000000000;
    v55 = swift_allocObject();
    *(v55 + 16) = v66;
    *(v55 + 24) = v67;
    *&v53[v54] = v55;
    v43(&v53[v54], v42, v22);

    v35 = sub_2756FADF0(v62);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v64 + 16) = v35;
  *a1 = v64;
  v56 = *MEMORY[0x277D23270];
  sub_2757963E0();
  v57 = *(*(v22 - 8) + 104);

  return v57(a1, v56, v22);
}

uint64_t static BackupRow.create(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2757963E0();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  sub_275796370();
  sub_275796500();
  swift_allocObject();
  v8 = sub_2757964F0();
  v9 = [objc_allocWithZone(sub_275796480()) init];
  v10 = MEMORY[0x277C7E470](v8, v9);
  return BackupRow.init(from:with:)(v6, v10, a2);
}

uint64_t BackupRow.init(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v206 = a2;
  v183 = a3;
  v4 = sub_275796280();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v166 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v199 = v166 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v198 = v166 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v194 = v166 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v185 = v166 - v19;
  MEMORY[0x28223BE20](v18);
  v193 = v166 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6C0);
  MEMORY[0x28223BE20](v21 - 8);
  v191 = v166 - v22;
  v190 = sub_2757962E0();
  v187 = *(v190 - 8);
  v23 = MEMORY[0x28223BE20](v190);
  v189 = v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v186 = v166 - v25;
  v26 = sub_2757963E0();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v181 = v166 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v195 = v166 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v184 = (v166 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v188 = v166 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v197 = v166 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = v166 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = v166 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = v166 - v44;
  v204 = v27[2];
  v205 = a1;
  v46 = a1;
  v48 = v47;
  v203 = v27 + 2;
  v204(v166 - v44, v46, v47);
  v201 = v27[11];
  v202 = v27 + 11;
  if (v201(v45, v48) != *MEMORY[0x277D23270])
  {
    v91 = sub_275700E70();
    v92 = v5;
    (*(v5 + 16))(v8, v91, v4);
    v93 = sub_2757982F0();
    v94 = sub_275796270();
    if (os_log_type_enabled(v94, v93))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_275623000, v94, v93, "Backup Row: DecodableState type is not a dictionary", v95, 2u);
      MEMORY[0x277C81E50](v95, -1, -1);
    }

    (*(v92 + 8))(v8, v4);
    type metadata accessor for BackupRowError();
    sub_2756FB018(&qword_2809FE2F0, type metadata accessor for BackupRowError);
    swift_allocError();
    v97 = v96;
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8) + 48);
    v99 = v205;
    v204(v97, v205, v48);
    *&v97[v98] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF78);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v100 = v27[1];
    v100(v99, v48);
    return (v100)(v45, v48);
  }

  v182 = v5;
  v192 = v4;
  v200 = v27;
  v50 = v27 + 12;
  v49 = v27[12];
  v49(v45, v48);
  v51 = *v45;
  v52 = *(*v45 + 16);
  if (!*(v52 + 16))
  {
    goto LABEL_24;
  }

  v180 = v49;

  v53 = sub_2756F72B4(0x6C6562616CLL, 0xE500000000000000);
  if ((v54 & 1) == 0)
  {

LABEL_24:
    v101 = sub_275700E70();
    v102 = v182;
    v103 = v192;
    (v182[2])(v11, v101, v192);
    v104 = sub_2757982F0();
    v105 = sub_275796270();
    if (os_log_type_enabled(v105, v104))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_275623000, v105, v104, "Backup Row: failed to parse label", v106, 2u);
      MEMORY[0x277C81E50](v106, -1, -1);
    }

    (v102[1])(v11, v103);
    goto LABEL_27;
  }

  v179 = v50;
  v55 = *(v52 + 56);
  v56 = v200;
  v178 = v200[9];
  v204(v43, v55 + v178 * v53, v48);
  v57 = v201(v43, v48);
  if (v57 != *MEMORY[0x277D232A0])
  {

    (v56[1])(v43, v48);
    goto LABEL_24;
  }

  v177 = v57;
  v180(v43, v48);
  v58 = *v43;
  v60 = *(*v43 + 16);
  v59 = *(v58 + 24);

  if (!*(v52 + 16) || (v61 = sub_2756F72B4(0x614C6C6961746564, 0xEB000000006C6562), (v62 & 1) == 0))
  {

LABEL_30:
    v108 = sub_275700E70();
    v109 = v182;
    v110 = v199;
    v111 = v192;
    (v182[2])(v199, v108, v192);
    v112 = sub_2757982F0();
    v113 = sub_275796270();
    if (os_log_type_enabled(v113, v112))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_275623000, v113, v112, "Backup Row: failed to parse detail label", v114, 2u);
      MEMORY[0x277C81E50](v114, -1, -1);
    }

    (v109[1])(v110, v111);
    goto LABEL_27;
  }

  v204(v40, *(v52 + 56) + v61 * v178, v48);
  v63 = v201(v40, v48);
  if (v63 != v177)
  {

    (v200[1])(v40, v48);
    goto LABEL_30;
  }

  v180(v40, v48);
  v64 = *(*v40 + 16);
  v65 = *(*v40 + 24);

  v66 = v52;
  if (!*(v52 + 16))
  {

    v68 = v182;
LABEL_37:
    v115 = sub_275700E70();
    v116 = v198;
    v117 = v192;
    (v68[2])(v198, v115, v192);
    v118 = sub_2757982F0();
    v119 = sub_275796270();
    if (!os_log_type_enabled(v119, v118))
    {
LABEL_40:

      (v68[1])(v116, v117);
LABEL_27:
      type metadata accessor for BackupRowError();
      sub_2756FB018(&qword_2809FE2F0, type metadata accessor for BackupRowError);
      swift_allocError();
      *v107 = MEMORY[0x277D837D0];
LABEL_28:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (v200[1])(v205, v48);
    }

    v120 = swift_slowAlloc();
    *v120 = 0;
    v121 = "Backup Row: failed to parse alert title";
LABEL_39:
    _os_log_impl(&dword_275623000, v119, v118, v121, v120, 2u);
    MEMORY[0x277C81E50](v120, -1, -1);
    goto LABEL_40;
  }

  v199 = v64;
  v67 = sub_2756F72B4(0x7469547472656C61, 0xEA0000000000656CLL);
  v68 = v182;
  if ((v69 & 1) == 0)
  {

    goto LABEL_37;
  }

  v70 = v197;
  v204(v197, *(v52 + 56) + v67 * v178, v48);
  v71 = v201(v70, v48);
  if (v71 != v177)
  {

    (v200[1])(v70, v48);
    goto LABEL_37;
  }

  v180(v70, v48);
  v72 = *(*v70 + 16);
  v73 = *(*v70 + 24);
  v198 = v72;

  if (!*(v52 + 16) || (v74 = sub_2756F72B4(0x6449656369766564, 0xE800000000000000), (v75 & 1) == 0))
  {

LABEL_42:
    v122 = sub_275700E70();
    v116 = v194;
    v117 = v192;
    (v68[2])(v194, v122, v192);
    v118 = sub_2757982F0();
    v119 = sub_275796270();
    if (!os_log_type_enabled(v119, v118))
    {
      goto LABEL_40;
    }

    v120 = swift_slowAlloc();
    *v120 = 0;
    v121 = "Backup Row: failed to parse id";
    goto LABEL_39;
  }

  v76 = *(v52 + 56) + v74 * v178;
  v77 = v188;
  v204(v188, v76, v48);
  v78 = v201(v77, v48);
  if (v78 != v177)
  {

    (v200[1])(v77, v48);
    goto LABEL_42;
  }

  v180(v77, v48);
  v79 = *(*v77 + 24);
  v170 = *(*v77 + 16);
  v172 = v79;

  if (!*(v66 + 16) || (v80 = sub_2756F72B4(0x63416574656C6564, 0xED0000736E6F6974), (v81 & 1) == 0))
  {

LABEL_61:
    v144 = v192;
    v145 = v185;
    v146 = sub_275700E70();
    (v68[2])(v145, v146, v144);
    v147 = sub_2757982F0();
    v148 = sub_275796270();
    if (os_log_type_enabled(v148, v147))
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      _os_log_impl(&dword_275623000, v148, v147, "Backup Row: failed to parse delete actions array", v149, 2u);
      MEMORY[0x277C81E50](v149, -1, -1);
    }

    (v68[1])(v145, v144);
    type metadata accessor for BackupRowError();
    sub_2756FB018(&qword_2809FE2F0, type metadata accessor for BackupRowError);
    swift_allocError();
    *v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE300);
    goto LABEL_28;
  }

  v169 = v66;
  v82 = *(v66 + 56) + v80 * v178;
  v83 = v184;
  v204(v184, v82, v48);
  if (v201(v83, v48) != *MEMORY[0x277D23278])
  {

    (v200[1])(v83, v48);
    goto LABEL_61;
  }

  v166[0] = v73;
  v167 = v65;
  v168 = v59;
  v166[1] = v51;
  v197 = v48;
  v180(v83, v48);
  v84 = *(*v83 + 16);

  v188 = v84;
  v185 = *(v84 + 2);
  if (!v185)
  {
    v194 = MEMORY[0x277D84F90];
LABEL_66:

    v151 = v169;
    if (*(v169 + 16) && (v152 = sub_2756F72B4(0xD000000000000013, 0x80000002757B89E0), (v153 & 1) != 0))
    {
      v154 = v181;
      v155 = v197;
      v204(v181, *(v151 + 56) + v152 * v178, v197);

      v156 = v200[1];
      v156(v205, v155);

      v157 = v201(v154, v155);
      if (v157 == v177)
      {
        v158 = v181;
        v180(v181, v197);
        v160 = *(*v158 + 16);
        v159 = *(*v158 + 24);

LABEL_72:
        v161 = v183;
        v162 = v168;
        *v183 = v60;
        v161[1] = v162;
        v163 = v167;
        v161[2] = v199;
        v161[3] = v163;
        v164 = v166[0];
        v161[4] = v198;
        v161[5] = v164;
        v161[6] = v160;
        v161[7] = v159;
        v165 = v170;
        v161[8] = v194;
        v161[9] = v165;
        v161[10] = v172;
        return result;
      }

      v156(v181, v197);
    }

    else
    {

      (v200[1])(v205, v197);
    }

    v160 = 0;
    v159 = 0;
    goto LABEL_72;
  }

  v87 = 0;
  v174 = (v182 + 2);
  v173 = (v182 + 1);
  v184 = (v187 + 56);
  v88 = v200;
  v182 = v200 + 1;
  v176 = (v187 + 48);
  v194 = MEMORY[0x277D84F90];
  v175 = (v187 + 32);
  *&v86 = 138412290;
  v171 = v86;
  v89 = v188;
  v90 = v197;
  while (v87 < *(v188 + 2))
  {
    v123 = v89;
    v204(v195, &v89[(*(v88 + 80) + 32) & ~*(v88 + 80)], v90);
    sub_275795AF0();
    swift_allocObject();
    sub_275795AE0();
    sub_2756FB018(&qword_2809FE308, MEMORY[0x277D232B0]);
    v124 = v196;
    v125 = sub_275795AD0();
    if (v124)
    {
      v196 = 0;

      v129 = sub_275700E70();
      (*v174)(v193, v129, v192);
      v130 = sub_2757982F0();
      v131 = sub_275796270();
      if (os_log_type_enabled(v131, v130))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        *v132 = v171;
        v134 = v124;
        v135 = _swift_stdlib_bridgeErrorToNSError();
        *(v132 + 4) = v135;
        *v133 = v135;
        _os_log_impl(&dword_275623000, v131, v130, "Backup Row: failed to parse delete action from array, error: %@", v132, 0xCu);
        sub_2756C92B4(v133, &qword_2809FEDA0);
        MEMORY[0x277C81E50](v133, -1, -1);
        MEMORY[0x277C81E50](v132, -1, -1);
      }

      else
      {
      }

      v90 = v197;
      v143 = v190;
      v142 = v191;
      (*v173)(v193, v192);
      v141 = 1;
      v88 = v200;
    }

    else
    {
      v127 = v125;
      v128 = v126;
      sub_275796360();
      sub_2756FB018(&qword_2809FD778, MEMORY[0x277D231A8]);
      sub_275795AC0();
      v196 = 0;
      sub_2756E782C(v127, v128);

      v141 = 0;
      v90 = v197;
      v88 = v200;
      v143 = v190;
      v142 = v191;
    }

    (*v184)(v142, v141, 1, v143);
    (*v182)(v195, v90);
    if ((*v176)(v142, 1, v143) == 1)
    {
      result = sub_2756C92B4(v142, &qword_2809FD6C0);
    }

    else
    {
      v136 = *v175;
      v137 = v186;
      (*v175)(v186, v142, v143);
      v136(v189, v137, v143);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_2756FAC18(0, *(v194 + 2) + 1, 1, v194);
      }

      v139 = *(v194 + 2);
      v138 = *(v194 + 3);
      if (v139 >= v138 >> 1)
      {
        v194 = sub_2756FAC18(v138 > 1, v139 + 1, 1, v194);
      }

      v140 = v194;
      *(v194 + 2) = v139 + 1;
      result = (v136)(v140 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v139, v189, v143);
      v90 = v197;
      v88 = v200;
    }

    ++v87;
    v89 = &v123[v178];
    if (v185 == v87)
    {
      goto LABEL_66;
    }
  }

  __break(1u);
  return result;
}

uint64_t static BackupRow.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    return 1;
  }

  else
  {
    return sub_275798980();
  }
}

__n128 BackupRow.init(label:detailLabel:alertTitle:secondaryAlertTitle:deleteActions:id:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

uint64_t sub_2756F9C70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x7469547472656C61;
  v6 = 0xEA0000000000656CLL;
  v7 = 0xD000000000000013;
  v8 = 0x80000002757B89E0;
  if (a1 != 4)
  {
    v7 = 0x63416574656C6564;
    v8 = 0xED0000736E6F6974;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6C6562616CLL;
  if (a1 != 1)
  {
    v10 = 0x614C6C6961746564;
    v9 = 0xEB000000006C6562;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xEA0000000000656CLL;
      if (v11 != 0x7469547472656C61)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x80000002757B89E0;
      if (v11 != 0xD000000000000013)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xED0000736E6F6974;
      if (v11 != 0x63416574656C6564)
      {
LABEL_33:
        v14 = sub_275798980();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6C6562616CLL)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xEB000000006C6562;
      if (v11 != 0x614C6C6961746564)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v11 != 25705)
    {
      goto LABEL_33;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_33;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t sub_2756F9E7C()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2756F9F90()
{
  sub_275797FF0();
}

uint64_t sub_2756FA094()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2756FA1A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2756FB5E8();
  *a1 = result;
  return result;
}

void sub_2756FA1D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEA0000000000656CLL;
  v6 = 0x7469547472656C61;
  v7 = 0x80000002757B89E0;
  v8 = 0xD000000000000013;
  if (v2 != 4)
  {
    v8 = 0x63416574656C6564;
    v7 = 0xED0000736E6F6974;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v10 = 0x614C6C6961746564;
    v9 = 0xEB000000006C6562;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2756FA2A0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7469547472656C61;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x63416574656C6564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6562616CLL;
  if (v1 != 1)
  {
    v5 = 0x614C6C6961746564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2756FA368@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2756FB5E8();
  *a1 = result;
  return result;
}

uint64_t sub_2756FA390(uint64_t a1)
{
  v2 = sub_2756FB060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2756FA3CC(uint64_t a1)
{
  v2 = sub_2756FB060();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BackupRow.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = sub_275795D60();
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE310);
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2756FB060();
  sub_275798A80();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v6;
  v11 = v55;
  LOBYTE(v54[0]) = 1;
  v12 = sub_2757988F0();
  v15 = v14;
  v45 = v12;
  LOBYTE(v54[0]) = 2;
  v42 = sub_2757988F0();
  v44 = v16;
  LOBYTE(v54[0]) = 3;
  v17 = sub_2757988F0();
  v43 = v18;
  v39 = v17;
  LOBYTE(v54[0]) = 4;
  v41 = 0;
  v38 = sub_2757988D0();
  v40 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE318);
  LOBYTE(v48) = 5;
  sub_2756FB0B4();
  sub_275798910();
  v37 = v54[0];
  LOBYTE(v54[0]) = 0;
  v20 = sub_2757988D0();
  v22 = v21;
  if (v21)
  {
    v23 = v20;
  }

  else
  {
    v36 = v10;
    sub_275795D50();
    v24 = sub_275795D40();
    v22 = v25;
    v26 = v4;
    v23 = v24;
    (*(v46 + 8))(v36, v26);
  }

  (*(v11 + 8))(v9, v7);
  v46 = v23;
  v27 = v45;
  *&v48 = v45;
  v28 = v42;
  *(&v48 + 1) = v15;
  *&v49 = v42;
  v55 = v15;
  v29 = v44;
  *(&v49 + 1) = v44;
  *&v50 = v39;
  v30 = v43;
  *(&v50 + 1) = v43;
  *&v51 = v38;
  v31 = v40;
  *(&v51 + 1) = v40;
  *&v52 = v37;
  *(&v52 + 1) = v23;
  v53 = v22;
  v32 = v47;
  *(v47 + 80) = v22;
  v33 = v51;
  v32[2] = v50;
  v32[3] = v33;
  v32[4] = v52;
  v34 = v49;
  *v32 = v48;
  v32[1] = v34;
  sub_2756FB168(&v48, v54);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v54[0] = v27;
  v54[1] = v55;
  v54[2] = v28;
  v54[3] = v29;
  v54[4] = v39;
  v54[5] = v30;
  v54[6] = v38;
  v54[7] = v31;
  v54[8] = v37;
  v54[9] = v46;
  v54[10] = v22;
  return sub_2756FB1A0(v54);
}

uint64_t BackupRow.hashValue.getter()
{
  sub_275798A40();
  sub_275797FF0();
  return sub_275798A70();
}

uint64_t sub_2756FA9F0()
{
  sub_275798A40();
  sub_275797FF0();
  return sub_275798A70();
}

uint64_t sub_2756FAA44()
{
  sub_275798A40();
  sub_275797FF0();
  return sub_275798A70();
}

uint64_t sub_2756FAAA4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  a1[1] = v2;
}

uint64_t sub_2756FAAB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2757963E0();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  sub_275796370();
  sub_275796500();
  swift_allocObject();
  v8 = sub_2757964F0();
  v9 = [objc_allocWithZone(sub_275796480()) init];
  v10 = MEMORY[0x277C7E470](v8, v9);
  return BackupRow.init(from:with:)(v6, v10, a2);
}

uint64_t sub_2756FABE8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    return 1;
  }

  else
  {
    return sub_275798980();
  }
}

size_t sub_2756FAC18(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE350);
  v10 = *(sub_2757962E0() - 8);
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
  v15 = *(sub_2757962E0() - 8);
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

unint64_t sub_2756FADF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE358);
    v7 = sub_275798870();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2756FB634(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_2756F72B4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_2757963E0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t type metadata accessor for BackupRowError()
{
  result = qword_280A03F10;
  if (!qword_280A03F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2756FB018(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2756FB060()
{
  result = qword_280A03C00[0];
  if (!qword_280A03C00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A03C00);
  }

  return result;
}

unint64_t sub_2756FB0B4()
{
  result = qword_2809FE320;
  if (!qword_2809FE320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE318);
    sub_2756FB018(&qword_2809FD778, MEMORY[0x277D231A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE320);
  }

  return result;
}

unint64_t sub_2756FB1D4()
{
  result = qword_2809FE328;
  if (!qword_2809FE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE328);
  }

  return result;
}

void sub_2756FB278()
{
  sub_2756FB2EC();
  if (v0 <= 0x3F)
  {
    sub_2756FB380();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2756FB2EC()
{
  if (!qword_2809FE330)
  {
    v0 = sub_2756FB334();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FE330);
    }
  }
}

unint64_t sub_2756FB334()
{
  result = qword_2809FE338;
  if (!qword_2809FE338)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2809FE338);
  }

  return result;
}

void sub_2756FB380()
{
  if (!qword_2809FE340)
  {
    sub_2757963E0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE348);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809FE340);
    }
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2756FB424(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2756FB46C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2756FB4E4()
{
  result = qword_280A040A0[0];
  if (!qword_280A040A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A040A0);
  }

  return result;
}

unint64_t sub_2756FB53C()
{
  result = qword_280A041B0;
  if (!qword_280A041B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A041B0);
  }

  return result;
}

unint64_t sub_2756FB594()
{
  result = qword_280A041B8[0];
  if (!qword_280A041B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A041B8);
  }

  return result;
}

uint64_t sub_2756FB5E8()
{
  v0 = sub_2757988A0();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2756FB634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756FB6DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IconWithBundleIdentifier(0) + 32);
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2756FB758@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IconWithBundleIdentifier(0) + 36);
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2756FB7D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IconWithBundleIdentifier(0) + 40);
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2756FB8E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE368);
  sub_2757975A0();
  return v1;
}

uint64_t sub_2756FB940(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6874646977;
    }

    else
    {
      v3 = 0x746867696568;
    }

    if (v2 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6E65644965707974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEE00726569666974;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE500000000000000;
  v8 = 0x6874646977;
  if (a2 != 2)
  {
    v8 = 0x746867696568;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v6 = 0x6E65644965707974;
    v5 = 0xEE00726569666974;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_275798980();
  }

  return v11 & 1;
}

uint64_t sub_2756FBA84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x78326C7275;
  if (a1 != 5)
  {
    v5 = 0x78336C7275;
  }

  v6 = 0xE600000000000000;
  v7 = 0x746867696568;
  if (a1 != 3)
  {
    v7 = 0x78316C7275;
    v6 = 0xE500000000000000;
  }

  if (a1 > 4u)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xD000000000000010;
  v9 = 0x80000002757B8A20;
  if (a1 != 1)
  {
    v8 = 0x6874646977;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v4 = v8;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v10 = v4;
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
    v11 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0x80000002757B8A20;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x6874646977)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      if (v10 != 25705)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_36;
  }

  if (a2 > 4u)
  {
    v12 = 0xE500000000000000;
    if (a2 == 5)
    {
      v13 = 845967989;
    }

    else
    {
      v13 = 862745205;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x746867696568)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    v12 = 0xE500000000000000;
    v13 = 829190773;
  }

  if (v10 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x7800000000))
  {
LABEL_38:
    v14 = sub_275798980();
    goto LABEL_39;
  }

LABEL_36:
  if (v11 != v12)
  {
    goto LABEL_38;
  }

  v14 = 1;
LABEL_39:

  return v14 & 1;
}

uint64_t sub_2756FBC70()
{
  sub_275797FF0();
}

uint64_t sub_2756FBD68()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2756FBE6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2757009A0();
  *a1 = result;
  return result;
}

void sub_2756FBE9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE500000000000000;
  v6 = 0x78326C7275;
  if (v2 != 5)
  {
    v6 = 0x78336C7275;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746867696568;
  if (v2 != 3)
  {
    v8 = 0x78316C7275;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000002757B8A20;
  v10 = 0xD000000000000010;
  if (v2 != 1)
  {
    v10 = 0x6874646977;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_2756FBF5C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x78326C7275;
  if (v1 != 5)
  {
    v3 = 0x78336C7275;
  }

  v4 = 0x746867696568;
  if (v1 != 3)
  {
    v4 = 0x78316C7275;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6874646977;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2756FC018@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2757009A0();
  *a1 = result;
  return result;
}

uint64_t sub_2756FC040(uint64_t a1)
{
  v2 = sub_2756FCB1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2756FC07C(uint64_t a1)
{
  v2 = sub_2756FCB1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IconWithBundleIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE360);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v54 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v55 = v52 - v6;
  v7 = sub_275796530();
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v56 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = v52 - v12;
  MEMORY[0x28223BE20](v11);
  v60 = v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  v15 = *(v14 - 8);
  v64 = v14;
  v65 = v15;
  MEMORY[0x28223BE20](v14);
  v61 = v52 - v16;
  v17 = sub_275795D60();
  v58 = *(v17 - 8);
  v59 = v17;
  MEMORY[0x28223BE20](v17);
  v66 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE370);
  v67 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v52 - v20;
  v22 = type metadata accessor for IconWithBundleIdentifier(0);
  MEMORY[0x28223BE20](v22);
  v24 = (v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24[2] = MEMORY[0x277D84F90];
  sub_275796500();
  sub_2756FCB70(&qword_2809FD6B8, MEMORY[0x277D23330]);
  v25 = sub_275796AA0();
  v24[3] = v25;
  v24[4] = v26;
  v27 = v24 + *(v22 + 52);
  v72 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE368);
  sub_2757975A0();
  v28 = v71;
  *v27 = v70;
  v68 = v28;
  *(v27 + 1) = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2756FCB1C();
  v29 = v69;
  sub_275798A80();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v30 = v66;
    v52[0] = v22;
    v52[1] = v25;
    v69 = a1;
    v70 = 0;
    v31 = sub_2757988D0();
    v33 = v19;
    if (!v32)
    {
      sub_275795D50();
      v35 = sub_275795D40();
      v37 = v36;
      (*(v58 + 8))(v30, v59);
      v32 = v37;
      v31 = v35;
    }

    v38 = v64;
    v39 = v24;
    *v24 = v31;
    v24[1] = v32;
    v66 = v32;
    v70 = 1;
    sub_2756CFA44(&qword_2809FD908, &qword_2809FD900);
    v40 = v61;
    sub_275798910();
    v41 = v33;
    (*(v65 + 32))(v39 + *(v52[0] + 28), v40, v38);
    v70 = 4;
    sub_2756FCB70(&qword_2809FD770, MEMORY[0x277D23340]);
    v42 = v60;
    v43 = v62;
    v61 = 0;
    sub_275798910();
    v44 = v39 + *(v52[0] + 32);
    v60 = *(v63 + 32);
    (v60)(v44, v42, v43);
    v70 = 5;
    v45 = v57;
    sub_275798910();
    v46 = v43;
    v47 = v45;
    v48 = v60;
    (v60)(v39 + *(v52[0] + 36), v47, v43);
    v70 = 6;
    v49 = v56;
    sub_275798910();
    v48(v39 + *(v52[0] + 40), v49, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE378);
    v70 = 2;
    sub_2756CFA44(&qword_2809FE380, &qword_2809FE378);
    v50 = v55;
    sub_2757988E0();
    sub_2756FCBB8(v50, v39 + *(v52[0] + 44));
    v70 = 3;
    v51 = v54;
    sub_2757988E0();
    (*(v67 + 8))(v21, v41);
    sub_2756FCBB8(v51, v39 + *(v52[0] + 48));
    sub_2756FF254(v39, v53, type metadata accessor for IconWithBundleIdentifier);
    __swift_destroy_boxed_opaque_existential_0(v69);
    return sub_2756FF2BC(v39, type metadata accessor for IconWithBundleIdentifier);
  }
}

unint64_t sub_2756FCB1C()
{
  result = qword_280A04240;
  if (!qword_280A04240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A04240);
  }

  return result;
}

uint64_t sub_2756FCB70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2756FCBB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IconWithBundleIdentifier.unmodifiedBody.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = type metadata accessor for IconWithBundleIdentifier(0);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v25 = v4;
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE360);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  sub_2756C9074(v2 + *(v3 + 44), &v23 - v9, &qword_2809FE360);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE378);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v10, 1, v11) == 1)
  {
    sub_2756C92B4(v10, &qword_2809FE360);
    v14 = 32.0;
  }

  else
  {
    if (!*(v2 + 24))
    {
      goto LABEL_12;
    }

    sub_275796390();

    (*(v12 + 8))(v10, v11);
    v14 = v28;
  }

  sub_2756C9074(v2 + *(v3 + 48), v8, &qword_2809FE360);
  if (v13(v8, 1, v11) == 1)
  {
    sub_2756C92B4(v8, &qword_2809FE360);
    v15 = 32.0;
    if (*(v2 + 24))
    {
LABEL_10:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
      sub_275796390();

      v16 = v27;
      sub_2756FD104(v2, *&v28, v29, v27, v14, v15);

      v17 = v2;
      v18 = v26;
      sub_2756FF254(v17, v26, type metadata accessor for IconWithBundleIdentifier);
      v19 = (*(v24 + 80) + 16) & ~*(v24 + 80);
      v20 = swift_allocObject();
      sub_2756FDFD4(v18, v20 + v19);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE388);
      v22 = (v16 + *(result + 36));
      *v22 = sub_2756FE038;
      v22[1] = v20;
      v22[2] = 0;
      v22[3] = 0;
      return result;
    }
  }

  else if (*(v2 + 24))
  {

    sub_275796390();

    (*(v12 + 8))(v8, v11);
    v15 = v28;
    if (*(v2 + 24))
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  sub_275796500();
  sub_2756FCB70(&qword_2809FD6B8, MEMORY[0x277D23330]);
  result = sub_275796A90();
  __break(1u);
  return result;
}

uint64_t sub_2756FD104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v56 = a3;
  v55 = a2;
  v69 = a4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE440);
  v59 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v58 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v57 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v55 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  v18 = sub_275795CB0();
  v70 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v66 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE470);
  MEMORY[0x28223BE20](v67);
  v21 = &v55 - v20;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE478);
  MEMORY[0x28223BE20](v61);
  v63 = &v55 - v22;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE430);
  MEMORY[0x28223BE20](v68);
  v64 = &v55 - v23;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE398);
  v24 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v26 = &v55 - v25;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE480);
  v27 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v29 = &v55 - v28;
  v30 = (a1 + *(type metadata accessor for IconWithBundleIdentifier(0) + 52));
  v31 = *v30;
  v32 = *(v30 + 1);
  LOBYTE(v72) = v31;
  v73 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE468);
  sub_2757975B0();
  if (v71 == 2 || (v71 & 1) == 0)
  {
    sub_2756FDB68();
    v40 = v70;
    if ((*(v70 + 48))(v17, 1, v18) == 1)
    {
      sub_2756C92B4(v17, &qword_2809FD700);
      v41 = sub_275797480();
      sub_275797820();
      sub_2757967D0();
      v42 = v72;
      v43 = v73;
      v44 = v74;
      v45 = v75;
      *v21 = v41;
      *(v21 + 1) = v42;
      v21[16] = v43;
      *(v21 + 3) = v44;
      v21[32] = v45;
      *(v21 + 40) = v76;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE450);
      sub_275700180();
      sub_2757002A8();
      return sub_275796D80();
    }

    else
    {
      v46 = v66;
      (*(v40 + 32))(v66, v17, v18);
      (*(v40 + 16))(v15, v46, v18);
      (*(v40 + 56))(v15, 0, 1, v18);
      v47 = swift_allocObject();
      *(v47 + 16) = a5;
      *(v47 + 24) = a6;
      v48 = swift_allocObject();
      *(v48 + 16) = a5;
      *(v48 + 24) = a6;
      sub_2756C9074(v15, v57, &qword_2809FD700);
      v49 = swift_allocObject();
      v49[2] = sub_275700A38;
      v49[3] = v47;
      v49[4] = sub_275700A40;
      v49[5] = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE488);
      sub_275700AD4(&qword_2809FE490, &qword_2809FE488, &unk_2757A7498, sub_275700B58);
      v50 = v58;
      sub_275796680();
      sub_2756C92B4(v15, &qword_2809FD700);
      v51 = v59;
      v52 = v65;
      (*(v59 + 16))(v63, v50, v65);
      swift_storeEnumTagMultiPayload();
      v53 = sub_2756CFA44(&qword_2809FE3A0, &qword_2809FE398);
      v72 = v60;
      v73 = v53;
      swift_getOpaqueTypeConformance2();
      sub_2756CFA44(&qword_2809FE438, &qword_2809FE440);
      v54 = v64;
      sub_275796D80();
      sub_27562ADF8(v54, v21);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE450);
      sub_275700180();
      sub_2757002A8();
      sub_275796D80();
      sub_27562AE68(v54);
      (*(v51 + 8))(v50, v52);
      return (*(v70 + 8))(v66, v18);
    }
  }

  else
  {
    v33 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v34 = sub_275797F10();
    [v33 initWithBundleIdentifier_];

    sub_275796170();
    v35 = sub_2756CFA44(&qword_2809FE3A0, &qword_2809FE398);
    v36 = v60;
    sub_275797100();
    (*(v24 + 8))(v26, v36);
    v37 = v62;
    (*(v27 + 16))(v63, v29, v62);
    swift_storeEnumTagMultiPayload();
    v72 = v36;
    v73 = v35;
    swift_getOpaqueTypeConformance2();
    sub_2756CFA44(&qword_2809FE438, &qword_2809FE440);
    v38 = v64;
    sub_275796D80();
    sub_27562ADF8(v38, v21);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE450);
    sub_275700180();
    sub_2757002A8();
    sub_275796D80();
    sub_27562AE68(v38);
    return (*(v27 + 8))(v29, v37);
  }
}

uint64_t sub_2756FDB68()
{
  v1 = sub_275796530();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() mainScreen];
  [v5 scale];
  v7 = v6;
  v8 = v6;

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= 3)
  {
    v11 = type metadata accessor for IconWithBundleIdentifier(0);
    (*(v2 + 16))(v4, v0 + *(v11 + 40), v1);
  }

  else
  {
    v9 = type metadata accessor for IconWithBundleIdentifier(0);
    if (v7 == 2)
    {
      v10 = *(v9 + 36);
    }

    else
    {
      v10 = *(v9 + 32);
    }

    (*(v2 + 16))(v4, v0 + v10, v1);
  }

  if (*(v0 + 24))
  {

    sub_275796520();

    sub_275795CA0();

    return (*(v2 + 8))(v4, v1);
  }

LABEL_15:
  sub_275796500();
  sub_2756FCB70(&qword_2809FD6B8, MEMORY[0x277D23330]);
  result = sub_275796A90();
  __break(1u);
  return result;
}

double sub_2756FDE44@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_275797560();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_275797570();
  (*(v3 + 8))(v5, v2);
  sub_275797820();
  sub_2757967D0();
  *&v9[40] = v12;
  *&v9[24] = v11;
  *&v9[8] = v10;
  v7 = *&v9[18];
  *(a1 + 18) = *&v9[2];
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v7;
  result = *&v9[34];
  *(a1 + 50) = *&v9[34];
  *(a1 + 64) = *&v9[48];
  return result;
}

uint64_t sub_2756FDFD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconWithBundleIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756FE038()
{
  v1 = type metadata accessor for IconWithBundleIdentifier(0);
  if (*(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + 24))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
    sub_275796390();

    v2 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v3 = sub_27570055C();
    if (v3)
    {
    }

    else
    {
      v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

      v5 = sub_275700628(v7, v8, 0);

      if (v5)
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE468);
    return sub_2757975C0();
  }

  else
  {
    sub_275796500();
    sub_2756FCB70(&qword_2809FD6B8, MEMORY[0x277D23330]);
    result = sub_275796A90();
    __break(1u);
  }

  return result;
}

uint64_t sub_2756FE268(uint64_t a1, uint64_t a2)
{
  v4 = sub_2756FCB70(&qword_2809FE3A8, type metadata accessor for IconWithBundleIdentifier);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2756FE2EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2756FCB70(&qword_2809FE3B0, type metadata accessor for IconWithBundleIdentifier);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2756FE368(uint64_t a1)
{
  v2 = sub_2756FCB70(&qword_2809FE3B0, type metadata accessor for IconWithBundleIdentifier);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2756FE3E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2756FCB70(&qword_2809FE460, type metadata accessor for IconWithBundleIdentifier);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t IconWithTypeIdentifier.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2756FE4B8()
{
  if (*(v0 + 24))
  {
  }

  else
  {
    sub_275796500();
    sub_2756FCB70(&qword_2809FD6B8, MEMORY[0x277D23330]);
    result = sub_275796A90();
    __break(1u);
  }

  return result;
}

uint64_t sub_2756FE548()
{
  sub_275796500();
  sub_2756FCB70(&qword_2809FD6B8, MEMORY[0x277D23330]);

  return sub_275796AA0();
}

uint64_t sub_2756FE5C0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_275796500();
  v4 = sub_2756FCB70(&qword_2809FD6B8, MEMORY[0x277D23330]);

  return MEMORY[0x282131550](v1, v2, v3, v4);
}

uint64_t sub_2756FE660@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2756FE7AC()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2756FE868()
{
  sub_275797FF0();
}

uint64_t sub_2756FE910()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2756FE9C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2757009EC();
  *a1 = result;
  return result;
}

void sub_2756FE9F8(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE500000000000000;
  v5 = 0x6874646977;
  if (*v1 != 2)
  {
    v5 = 0x746867696568;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E65644965707974;
    v2 = 0xEE00726569666974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2756FEA70()
{
  v1 = 25705;
  v2 = 0x6874646977;
  if (*v0 != 2)
  {
    v2 = 0x746867696568;
  }

  if (*v0)
  {
    v1 = 0x6E65644965707974;
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

uint64_t sub_2756FEAE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2757009EC();
  *a1 = result;
  return result;
}

uint64_t sub_2756FEB0C(uint64_t a1)
{
  v2 = sub_2756FF200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2756FEB48(uint64_t a1)
{
  v2 = sub_2756FF200();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IconWithTypeIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE360);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v41 = &v34 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = &v34 - v7;
  v8 = sub_275795D60();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE390);
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for IconWithTypeIdentifier(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15[2] = MEMORY[0x277D84F90];
  sub_275796500();
  sub_2756FCB70(&qword_2809FD6B8, MEMORY[0x277D23330]);
  v16 = sub_275796AA0();
  v15[3] = v16;
  v15[4] = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2756FF200();
  v18 = v47;
  sub_275798A80();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v47 = v16;
    v36 = v13;
    v20 = v43;
    v19 = v44;
    v21 = v46;
    v51 = 0;
    v22 = sub_2757988D0();
    v34 = a1;
    v35 = v12;
    if (!v23)
    {
      v25 = v20;
      sub_275795D50();
      v26 = sub_275795D40();
      v28 = v27;
      (*(v39 + 8))(v25, v40);
      v23 = v28;
      v22 = v26;
    }

    v29 = v15;
    *v15 = v22;
    v15[1] = v23;
    v44 = v23;
    v50 = 1;
    sub_2756CFA44(&qword_2809FD908, &qword_2809FD900);
    v30 = v42;
    v31 = v35;
    sub_275798910();
    (*(v19 + 32))(v29 + v36[7], v30, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE378);
    v49 = 2;
    sub_2756CFA44(&qword_2809FE380, &qword_2809FE378);
    v32 = v41;
    sub_2757988E0();
    sub_2756FCBB8(v32, v29 + v36[8]);
    v48 = 3;
    v33 = v38;
    sub_2757988E0();
    (*(v45 + 8))(v31, v10);
    sub_2756FCBB8(v33, v29 + v36[9]);
    sub_2756FF254(v29, v37, type metadata accessor for IconWithTypeIdentifier);
    __swift_destroy_boxed_opaque_existential_0(v34);
    return sub_2756FF2BC(v29, type metadata accessor for IconWithTypeIdentifier);
  }
}

unint64_t sub_2756FF200()
{
  result = qword_280A04248[0];
  if (!qword_280A04248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A04248);
  }

  return result;
}

uint64_t sub_2756FF254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2756FF2BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t IconWithTypeIdentifier.unmodifiedBody.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE398);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v20 = &v19 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE360);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for IconWithTypeIdentifier(0);
  sub_2756C9074(v2 + *(v10 + 32), v9, &qword_2809FE360);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE378);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    sub_2756C92B4(v9, &qword_2809FE360);
  }

  else
  {
    if (!*(v2 + 24))
    {
      goto LABEL_12;
    }

    sub_275796390();

    (*(v12 + 8))(v9, v11);
  }

  sub_2756C9074(v2 + *(v10 + 36), v7, &qword_2809FE360);
  if (v13(v7, 1, v11) == 1)
  {
    sub_2756C92B4(v7, &qword_2809FE360);
    if (*(v2 + 24))
    {
LABEL_10:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
      sub_275796390();

      v14 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v15 = sub_275797F10();

      [v14 initWithType_];

      v16 = v20;
      sub_275796170();
      sub_2756CFA44(&qword_2809FE3A0, &qword_2809FE398);
      v17 = v23;
      sub_275797100();
      return (*(v21 + 8))(v16, v17);
    }
  }

  else if (*(v2 + 24))
  {

    sub_275796390();

    (*(v12 + 8))(v7, v11);
    if (*(v2 + 24))
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  sub_275796500();
  sub_2756FCB70(&qword_2809FD6B8, MEMORY[0x277D23330]);
  result = sub_275796A90();
  __break(1u);
  return result;
}

uint64_t sub_2756FF810()
{
  sub_2756FCB70(&qword_2809FE3A8, type metadata accessor for IconWithBundleIdentifier);
  sub_2756FCB70(&qword_2809FE3B0, type metadata accessor for IconWithBundleIdentifier);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2756FF974()
{
  sub_2756FCB70(&qword_2809FE3C8, type metadata accessor for IconWithTypeIdentifier);
  sub_2756FCB70(&qword_2809FE3D0, type metadata accessor for IconWithTypeIdentifier);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2756FFA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2756FCB70(&qword_2809FE3C8, type metadata accessor for IconWithTypeIdentifier);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2756FFB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2756FCB70(&qword_2809FE3D0, type metadata accessor for IconWithTypeIdentifier);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2756FFBBC(uint64_t a1)
{
  v2 = sub_2756FCB70(&qword_2809FE3D0, type metadata accessor for IconWithTypeIdentifier);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2756FFC38(uint64_t a1, uint64_t a2)
{
  v4 = sub_2756FCB70(&qword_2809FE458, type metadata accessor for IconWithTypeIdentifier);

  return MEMORY[0x282182160](a1, a2, v4);
}

void sub_2756FFD1C()
{
  sub_2756CF50C();
  if (v0 <= 0x3F)
  {
    sub_2756C97C8();
    if (v1 <= 0x3F)
    {
      sub_2756FFE70();
      if (v2 <= 0x3F)
      {
        sub_275796530();
        if (v3 <= 0x3F)
        {
          sub_2756FFEC8(319, &qword_2809FE3F0, &qword_2809FE378, &unk_2757A6F00, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2756FFEC8(319, &qword_2809FE3F8, &qword_2809FE368, &unk_2757A6EF0, MEMORY[0x277CE10B8]);
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

void sub_2756FFE70()
{
  if (!qword_2809FE3E8)
  {
    v0 = sub_2757963A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FE3E8);
    }
  }
}

void sub_2756FFEC8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2756FFF54()
{
  sub_2756CF50C();
  if (v0 <= 0x3F)
  {
    sub_2756C97C8();
    if (v1 <= 0x3F)
    {
      sub_2756FFE70();
      if (v2 <= 0x3F)
      {
        sub_2756FFEC8(319, &qword_2809FE3F0, &qword_2809FE378, &unk_2757A6F00, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_275700044()
{
  result = qword_2809FE400;
  if (!qword_2809FE400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE388);
    sub_2757000D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE400);
  }

  return result;
}

unint64_t sub_2757000D0()
{
  result = qword_2809FE408;
  if (!qword_2809FE408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE410);
    sub_275700AD4(&qword_2809FE418, &qword_2809FE420, &unk_2757A71C0, sub_275700180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE408);
  }

  return result;
}

unint64_t sub_275700180()
{
  result = qword_2809FE428;
  if (!qword_2809FE428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE398);
    sub_2756CFA44(&qword_2809FE3A0, &qword_2809FE398);
    swift_getOpaqueTypeConformance2();
    sub_2756CFA44(&qword_2809FE438, &qword_2809FE440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE428);
  }

  return result;
}

unint64_t sub_2757002A8()
{
  result = qword_2809FE448;
  if (!qword_2809FE448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE448);
  }

  return result;
}

unint64_t sub_275700350()
{
  result = qword_280A048F0[0];
  if (!qword_280A048F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A048F0);
  }

  return result;
}

unint64_t sub_2757003A8()
{
  result = qword_280A04B80[0];
  if (!qword_280A04B80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A04B80);
  }

  return result;
}

unint64_t sub_275700400()
{
  result = qword_280A04C90;
  if (!qword_280A04C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A04C90);
  }

  return result;
}

unint64_t sub_275700458()
{
  result = qword_280A04C98[0];
  if (!qword_280A04C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A04C98);
  }

  return result;
}

unint64_t sub_2757004B0()
{
  result = qword_280A04D20;
  if (!qword_280A04D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A04D20);
  }

  return result;
}

unint64_t sub_275700508()
{
  result = qword_280A04D28[0];
  if (!qword_280A04D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A04D28);
  }

  return result;
}

id sub_27570055C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_275797F10();

  v6[0] = 0;
  v2 = [v0 initWithBundleIdentifierOfSystemPlaceholder:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_275795C50();

    swift_willThrow();
  }

  return v2;
}

id sub_275700628(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_275797F10();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_275795C50();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_275700704@<X0>(void (*a1)(__int128 *__return_ptr)@<X1>, void (*a2)(__int128 *__return_ptr)@<X3>, _OWORD *a3@<X8>)
{
  if (sub_275796960())
  {
    a1(&v25);
    v14 = *v27;
    v15 = *&v27[16];
    v16 = *&v27[32];
    v12 = v25;
    v13 = v26;
    v19 = *v27;
    *v20 = *&v27[16];
    *&v20[16] = *&v27[32];
    v17 = v25;
    v18 = v26;
    sub_2756C9074(&v12, &v21, &qword_2809FE4A0);
    sub_2756C92B4(&v17, &qword_2809FE4A0);
    *v23 = v14;
    *&v23[16] = v15;
    *&v23[32] = v16;
    v21 = v12;
    v22 = v13;
    v24 = 0;
    v23[40] = 0;
    sub_2756C9074(&v12, &v25, &qword_2809FE4A0);
    sub_2756C9074(&v12, &v25, &qword_2809FE4A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE4A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE450);
    sub_275700B58();
    sub_2757002A8();
    sub_275796D80();

    sub_2756C92B4(&v12, &qword_2809FE4A0);
    sub_2756C92B4(&v12, &qword_2809FE4A0);
  }

  else
  {
    a2(&v25);
    LOBYTE(v17) = v26;
    LOBYTE(v12) = v27[0];
    v24 = 1;
    v21 = v25;
    LOBYTE(v22) = v26;
    *(&v22 + 1) = *(&v26 + 1);
    v23[0] = v27[0];
    *&v23[8] = *&v27[8];
    v23[40] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE4A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE450);
    sub_275700B58();
    sub_2757002A8();
    sub_275796D80();
  }

  v7 = *&v27[16];
  v19 = *v27;
  v6 = *v27;
  *v20 = *&v27[16];
  v8 = *&v27[25];
  *&v20[9] = *&v27[25];
  v9 = v26;
  v17 = v25;
  v10 = v25;
  v18 = v26;
  a3[2] = *v27;
  a3[3] = v7;
  *(a3 + 57) = v8;
  *a3 = v10;
  a3[1] = v9;
  *v23 = v6;
  *&v23[16] = v7;
  v21 = v10;
  v22 = v9;
  *&v23[25] = v8;
  sub_2756C9074(&v17, &v12, &qword_2809FE488);
  return sub_2756C92B4(&v21, &qword_2809FE488);
}

uint64_t sub_2757009A0()
{
  v0 = sub_2757988A0();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2757009EC()
{
  v0 = sub_2757988A0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

double sub_275700A40@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_275797480();
  sub_275797820();
  sub_2757967D0();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  return result;
}

uint64_t sub_275700AD4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_2757002A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_275700B58()
{
  result = qword_2809FE498;
  if (!qword_2809FE498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE4A0);
    sub_2756ED114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE498);
  }

  return result;
}

void *sub_275700C10()
{
  result = objc_opt_self();
  v2 = *(v0 + 16);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    v3 = [result stringFromByteCount:v2 countStyle:3];
    v4 = sub_275797F50();

    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_275700CD8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a7;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_275700D00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_275700D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275700DA4()
{
  v0 = sub_275796280();
  __swift_allocate_value_buffer(v0, qword_280A04E38);
  __swift_project_value_buffer(v0, qword_280A04E38);
  sub_275626D60();
  sub_275798530();
  return sub_275796290();
}

uint64_t sub_275700E70()
{
  if (qword_280A04E30 != -1)
  {
    swift_once();
  }

  v0 = sub_275796280();

  return __swift_project_value_buffer(v0, qword_280A04E38);
}

uint64_t static QuotaLogger.ui.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280A04E30 != -1)
  {
    swift_once();
  }

  v2 = sub_275796280();
  v3 = __swift_project_value_buffer(v2, qword_280A04E38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_275700F90()
{
  sub_275700FF8();

  return sub_2757968F0();
}

unint64_t sub_275700FF8()
{
  result = qword_2809FE4A8;
  if (!qword_2809FE4A8)
  {
    sub_275795F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE4A8);
  }

  return result;
}

uint64_t sub_275701058(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_275701084()
{
  sub_275795F60();
  sub_275700FF8();

  return sub_275796900();
}

uint64_t sub_2757010E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE4B0);
  sub_2756CFA44(&qword_2809FE4B8, &qword_2809FE4B0);
  sub_275701540(&qword_2809FE4C0, &qword_2809FE4C8);
  sub_275701590();
  return sub_2757977A0();
}

uint64_t sub_27570121C@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_275795F40();
  LOBYTE(v35) = 0;
  sub_2757975A0();
  v5 = v40;
  v6 = [v3 actions];
  sub_2756C557C(0, &qword_2809FE560);
  v7 = sub_2757980E0();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v41;
    v33 = v4;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_16:

    v10 = 0;
    v15 = 0;
    v21 = 0;
    v27 = MEMORY[0x277D84F90];
    v17 = 0xE000000000000000;
    v23 = 0xE000000000000000;
LABEL_17:
    *&v35 = v3;
    *(&v35 + 1) = v10;
    *&v36 = v33;
    BYTE8(v36) = v40;
    *(&v36 + 9) = v51[0];
    HIDWORD(v36) = *(v51 + 3);
    *&v37 = v32;
    *(&v37 + 1) = v15;
    *&v38 = v17;
    *(&v38 + 1) = v21;
    *&v39 = v23;
    *(&v39 + 1) = v27;
    v40 = v3;
    v41 = v10;
    v42 = v33;
    v43 = v5;
    *v44 = v51[0];
    *&v44[3] = *(v51 + 3);
    v45 = v32;
    v46 = v15;
    v47 = v17;
    v48 = v21;
    v49 = v23;
    v50 = v27;
    sub_275703A88(&v35, v34);
    result = sub_275703AC0(&v40);
    v28 = v39;
    v34[3] = v38;
    v29 = v38;
    v34[4] = v39;
    v30 = v36;
    v31 = v35;
    v34[1] = v36;
    v34[2] = v37;
    v34[0] = v35;
    a2[2] = v37;
    a2[3] = v29;
    a2[4] = v28;
    *a2 = v31;
    a2[1] = v30;
    return result;
  }

  result = sub_275798640();
  v32 = v41;
  v33 = v4;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x277C80840](0, v7);
    goto LABEL_6;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_6:
    v10 = v9;

    v11 = &selRef_cellularName;
    v12 = [v10 confirmation];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 title];

      v15 = sub_275797F50();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0xE000000000000000;
    }

    v18 = [v10 confirmation];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 subtitle];

      v21 = sub_275797F50();
      v23 = v22;

      v11 = &selRef_cellularName;
    }

    else
    {
      v21 = 0;
      v23 = 0xE000000000000000;
    }

    v24 = [v10 v11[47]];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 actions];

      sub_2756C557C(0, &qword_2809FE540);
      v27 = sub_2757980E0();
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_275701540(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2756C557C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_275701590()
{
  result = qword_2809FE4D0;
  if (!qword_2809FE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE4D0);
  }

  return result;
}

uint64_t sub_2757015E4(uint64_t a1)
{
  sub_275795F60();
  sub_275700FF8();
  sub_2757968F0();
  return a1;
}

uint64_t sub_275701644()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  swift_getKeyPath();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE4B0);
  sub_2756CFA44(&qword_2809FE4B8, &qword_2809FE4B0);
  sub_275701540(&qword_2809FE4C0, &qword_2809FE4C8);
  sub_275701590();
  return sub_2757977A0();
}

uint64_t sub_275701784@<X0>(uint64_t a1@<X8>)
{
  v7[1] = a1;
  v7[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE4D8);
  v2 = *(v7[0] - 8);
  MEMORY[0x28223BE20](v7[0]);
  v4 = v7 - v3;
  v12 = v1;
  v13 = sub_275701A4C;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE4E0);
  sub_2756CFA44(&qword_2809FE4E8, &qword_2809FE4E0);
  sub_2757977F0();
  v16 = *(v1 + 40);
  v17 = v16;
  v15 = *(v1 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975D0();
  v9 = v1;
  v10 = sub_275701A4C;
  v11 = 0;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE4F0);
  sub_275702F08();
  sub_2756DC79C();
  sub_2756CFA44(&qword_2809FE500, &qword_2809FE4F0);
  v5 = v7[0];
  sub_275797350();

  sub_275702FC4(&v17);
  return (*(v2 + 8))(v4, v5);
}

void sub_275701A4C(void *a1)
{
  v2 = sub_275796280();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 icqLink];
  [v6 action];

  v7 = sub_275700E70();
  (*(v3 + 16))(v5, v7, v2);
  v8 = a1;
  v9 = sub_275796270();
  v10 = sub_275798310();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    v12 = [v8 icqLink];
    v13 = [v12 action];

    *(v11 + 4) = v13;
    _os_log_impl(&dword_275623000, v9, v10, "Action type %ld not handled by Manage Storage directly, attempting generic perform action.", v11, 0xCu);
    MEMORY[0x277C81E50](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  (*(v3 + 8))(v5, v2);
  v14 = [v8 icqLink];
  [v14 performAction];
}

void *sub_275701C50@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE558);
  MEMORY[0x28223BE20](v53);
  v8 = &v43 - v7;
  v9 = *a1;
  sub_275701FA8(&v43 - v7);
  v10 = [v9 title];
  v11 = sub_275797F50();
  v13 = v12;

  v14 = [v9 subtitle];
  v15 = sub_275797F50();
  v51 = v16;

  v17 = [v9 actions];
  sub_2756C557C(0, &qword_2809FE560);
  v18 = sub_2757980E0();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_13:

    v22 = MEMORY[0x277D84F90];
LABEL_14:
    sub_275703698();
    v39 = v53;
    v40 = sub_27574C1E0();
    return sub_27574E168(v8, v11, v13, v15, v51, v22, 0, 0, a4, v40, v41, v42, v39);
  }

  v19 = sub_275798640();
  if (!v19)
  {
    goto LABEL_13;
  }

LABEL_3:
  v54 = MEMORY[0x277D84F90];
  result = sub_275703648(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v46 = v15;
    v47 = v13;
    v48 = v11;
    v49 = v8;
    v50 = a4;
    v21 = 0;
    v22 = v54;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x277C80840](v21, v18);
      }

      else
      {
        v23 = *(v18 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = [v23 title];
      v26 = sub_275797F50();
      v28 = v27;

      v29 = swift_allocObject();
      v29[2] = v52;
      v29[3] = a3;
      v29[4] = v24;
      sub_275703698();

      v30 = nullsub_1(v26, v28);
      v54 = v22;
      v35 = *(v22 + 16);
      v34 = *(v22 + 24);
      if (v35 >= v34 >> 1)
      {
        v44 = v31;
        v45 = v30;
        v37 = v32;
        v38 = v33;
        sub_275703648((v34 > 1), v35 + 1, 1);
        v33 = v38;
        v32 = v37;
        v31 = v44;
        v30 = v45;
        v22 = v54;
      }

      ++v21;
      *(v22 + 16) = v35 + 1;
      v36 = (v22 + 32 * v35);
      v36[4] = v30;
      v36[5] = v31;
      v36[6] = v32;
      v36[7] = v33;
    }

    while (v19 != v21);

    v8 = v49;
    a4 = v50;
    v13 = v47;
    v11 = v48;
    v15 = v46;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_275701FA8@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v44 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE598);
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v9 = &v44 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5B0);
  MEMORY[0x28223BE20](v47);
  v46 = (&v44 - v10);
  v11 = sub_275797560();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1;
  v16 = [v1 icon];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = v16;
    v20 = [v17 path];
    sub_275797F50();

    sub_275797550();
    (*(v12 + 104))(v14, *MEMORY[0x277CE0FE0], v11);
    v21 = sub_275797570();

    (*(v12 + 8))(v14, v11);
    v22 = [v18 systemColorName];
    if (v22)
    {
      v23 = v22;
      sub_275797F50();
    }

    type metadata accessor for ICQUISwiftHelperFunctions();
    v35 = sub_275761E54();

    KeyPath = swift_getKeyPath();
    v37 = v46;
    *v46 = v21;
    v37[1] = 0;
    *(v37 + 8) = 1;
    v37[3] = KeyPath;
    v37[4] = v35;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE588);
    sub_2757037D4();
    sub_2756CFA44(&qword_2809FE590, &qword_2809FE598);
    v38 = v49;
    sub_275796D80();

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE578);
    return (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  }

  else
  {
    v24 = v7;

    v25 = [v15 icon];
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      type metadata accessor for ICQUISwiftHelperFunctions();
      v28 = [v27 imageURL];
      sub_275761980(v28, v24);

      sub_2756C9074(v24, v5, &qword_2809FD700);
      v29 = swift_allocObject();
      v29[2] = sub_2757033A4;
      v29[3] = 0;
      v29[4] = sub_2757034C0;
      v29[5] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5B8);
      sub_2757039FC();
      sub_275796680();
      sub_2756C92B4(v24, &qword_2809FD700);
      v30 = v45;
      v31 = v48;
      (*(v45 + 16))(v46, v9, v48);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE588);
      sub_2757037D4();
      sub_2756CFA44(&qword_2809FE590, &qword_2809FE598);
      v32 = v49;
      sub_275796D80();

      (*(v30 + 8))(v9, v31);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE578);
      return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    }

    else
    {

      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE578);
      v41 = *(*(v40 - 8) + 56);
      v42 = v40;
      v43 = v49;

      return v41(v43, 1, 1, v42);
    }
  }
}

uint64_t sub_2757026F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v44 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECC0);
  v43 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v42 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v45 = &v36 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE518);
  v38 = *(v41 - 8);
  v14 = v38;
  v15 = MEMORY[0x28223BE20](v41);
  v40 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - v17;
  v47 = *(a1 + 72);
  v48 = v47;
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  sub_2756C9074(&v48, v46, &qword_2809FE520);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE528);
  sub_2756CFA44(&qword_2809FE530, &qword_2809FE520);
  sub_275701540(&qword_2809FE538, &qword_2809FE540);
  v20 = sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
  v46[0] = v10;
  v46[1] = v20;
  v21 = v10;
  swift_getOpaqueTypeConformance2();
  v22 = v18;
  v37 = v18;
  sub_2757977A0();
  sub_275796CE0();
  sub_2757966C0();
  v23 = sub_2757966E0();
  (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
  v24 = v45;
  sub_275797630();
  v25 = *(v14 + 16);
  v27 = v40;
  v26 = v41;
  v25(v40, v22, v41);
  v28 = v42;
  v29 = v43;
  v30 = *(v43 + 16);
  v30(v42, v24, v21);
  v31 = v44;
  v25(v44, v27, v26);
  v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE548) + 48)];
  v30(v32, v28, v21);
  v33 = *(v29 + 8);
  v33(v45, v21);
  v34 = *(v38 + 8);
  v34(v37, v26);
  v33(v28, v21);
  return (v34)(v27, v26);
}

uint64_t sub_275702C00@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE550);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECC0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - v12;
  v14 = *a1;
  v15 = [v14 title];
  v16 = sub_275797F50();
  v18 = v17;

  v24[2] = v16;
  v24[3] = v18;
  v19 = swift_allocObject();
  v19[2] = v14;
  v19[3] = a2;
  v19[4] = a3;
  sub_2756DC79C();
  v20 = v14;

  sub_275797650();
  if ([v20 isDefault])
  {
    sub_275796A00();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_275796A10();
  (*(*(v22 - 8) + 56))(v9, v21, 1, v22);
  sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
  sub_275797240();
  sub_2756C92B4(v9, &qword_2809FE550);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_275702E98@<X0>(uint64_t a1@<X8>)
{
  sub_2756DC79C();

  result = sub_2757970D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_275702F08()
{
  result = qword_2809FE4F8;
  if (!qword_2809FE4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE4D8);
    sub_2756CFA44(&qword_2809FE4E8, &qword_2809FE4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE4F8);
  }

  return result;
}

uint64_t sub_27570305C()
{
  v1 = [v0 systemColorName];
  if (v1)
  {
    v2 = v1;
    sub_275797F50();
  }

  type metadata accessor for ICQUISwiftHelperFunctions();
  v3 = sub_275761E54();

  return v3;
}

uint64_t sub_275703124(uint64_t *a1, int a2)
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

uint64_t sub_27570316C(uint64_t result, int a2, int a3)
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

uint64_t sub_2757031BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_275703204(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_275703268()
{
  result = qword_2809FE508;
  if (!qword_2809FE508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE510);
    sub_275701590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE508);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_275703334()
{
  v1 = *(v0 + 24);
  v2 = [objc_allocWithZone(MEMORY[0x277D7F320]) initFromConfirmationAction_];
  v1();
}

uint64_t sub_2757033A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_275797560();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_275797570();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_2757034C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275797480();
  *a1 = result;
  return result;
}

uint64_t sub_2757034E8(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  if (sub_275796960())
  {
    a2(&v7);
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA70);
    sub_2756ED114();
    sub_275796D80();
  }

  else
  {
    a4(&v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA70);
    sub_2756ED114();
    sub_275796D80();
  }

  return v7;
}

void *sub_275703648(void *a1, int64_t a2, char a3)
{
  result = sub_27570388C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_275703698()
{
  result = qword_2809FE568;
  if (!qword_2809FE568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE558);
    sub_27570371C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE568);
  }

  return result;
}

unint64_t sub_27570371C()
{
  result = qword_2809FE570;
  if (!qword_2809FE570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE578);
    sub_2757037D4();
    sub_2756CFA44(&qword_2809FE590, &qword_2809FE598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE570);
  }

  return result;
}

unint64_t sub_2757037D4()
{
  result = qword_2809FE580;
  if (!qword_2809FE580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE588);
    sub_2756ED114();
    sub_2756CFA44(&qword_2809FDFF0, &qword_2809FDFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE580);
  }

  return result;
}

void *sub_27570388C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5A0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2757039C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2757034E8(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 18) = v7 & 1;
  return result;
}

unint64_t sub_2757039FC()
{
  result = qword_2809FE5C0;
  if (!qword_2809FE5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE5B8);
    sub_2756ED114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE5C0);
  }

  return result;
}

uint64_t sub_275703AF4()
{
  v0 = sub_275795D60();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275795D50();
  v4 = sub_275795D40();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_275703BD0(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t type metadata accessor for PhotoGridView()
{
  result = qword_280A05280;
  if (!qword_280A05280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275703D30@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2757962E0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_275703F04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_275704090@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5C8);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2757041E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PhotoGridView() + 40);
  v4 = sub_2757964D0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27570425C(uint64_t a1)
{
  v3 = *(type metadata accessor for PhotoGridView() + 40);
  v4 = sub_2757964D0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_275704320()
{
  type metadata accessor for PhotoGridModel();
  sub_2757975A0();
  return v1;
}

uint64_t sub_27570435C()
{
  type metadata accessor for PhotoGridView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5D8);
  sub_2757975B0();
  return v1;
}

uint64_t sub_2757043BC()
{
  type metadata accessor for PhotoGridView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5D8);
  return sub_2757975C0();
}

void (*sub_275704424(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for PhotoGridView() + 44));
  v7 = *v5;
  v6 = v5[1];
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5D8);
  sub_2757975B0();
  return sub_2757044DC;
}

void sub_2757044DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    sub_2757975C0();
  }

  else
  {
    sub_2757975C0();
  }

  free(v2);
}

uint64_t sub_2757045B8()
{
  type metadata accessor for PhotoGridView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5D8);
  sub_2757975D0();
  return v1;
}

uint64_t sub_27570461C()
{
  if (*(v0 + *(type metadata accessor for PhotoGridView() + 48)))
  {
  }

  else
  {
    sub_275796500();
    sub_275709F00(&qword_2809FD6B8, MEMORY[0x277D23330]);
    result = sub_275796A90();
    __break(1u);
  }

  return result;
}

uint64_t sub_2757046B8()
{
  sub_275796500();
  sub_275709F00(&qword_2809FD6B8, MEMORY[0x277D23330]);

  return sub_275796AA0();
}

uint64_t sub_27570472C()
{
  v1 = (v0 + *(type metadata accessor for PhotoGridView() + 48));
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_275796500();
  v5 = sub_275709F00(&qword_2809FD6B8, MEMORY[0x277D23330]);

  return MEMORY[0x282131550](v2, v3, v4, v5);
}

uint64_t sub_2757047C4()
{
  v1 = *v0;
  v2 = 0x6C6F686563616C70;
  v3 = 0x6D694C646C696863;
  v4 = 0x694C656C706F6570;
  if (v1 != 4)
  {
    v4 = 0x6769654864697267;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x49746E756F636361;
  if (v1 != 1)
  {
    v5 = 0x6D694C6F746F6870;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2757048A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275709CEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2757048C8(uint64_t a1)
{
  v2 = sub_2757052A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275704904(uint64_t a1)
{
  v2 = sub_2757052A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275704940@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v51 = sub_2757964D0();
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v53 = &v48 - v8;
  MEMORY[0x28223BE20](v7);
  v54 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6C0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v56 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v48 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5E0);
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v15 = &v48 - v14;
  v16 = sub_275795D60();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PhotoGridView();
  MEMORY[0x28223BE20](v20);
  v22 = (&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_275795D50();
  v23 = sub_275795D40();
  v25 = v24;
  (*(v17 + 8))(v19, v16);
  *v22 = v23;
  v22[1] = v25;
  v63 = v25;
  v26 = v20[5];
  v27 = sub_2757962E0();
  v28 = *(*(v27 - 8) + 56);
  v70 = v26;
  v28(v22 + v26, 1, 1, v27);
  v69 = v20[6];
  v28(v22 + v69, 1, 1, v27);
  v29 = v20[7];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5C8);
  v31 = *(*(v30 - 8) + 56);
  v66 = v29;
  v31(v22 + v29, 1, 1, v30);
  v68 = v20[8];
  v31(v22 + v68, 1, 1, v30);
  v65 = v20[9];
  v31(v22 + v65, 1, 1, v30);
  v32 = (v22 + v20[11]);
  type metadata accessor for PhotoGridModel();
  v73 = sub_275746374();
  sub_2757975A0();
  v33 = v72;
  v61 = v71;
  v62 = v72;
  *v32 = v71;
  v32[1] = v33;
  v34 = (v22 + v20[12]);
  sub_275796500();
  sub_275709F00(&qword_2809FD6B8, MEMORY[0x277D23330]);
  v60 = sub_275796AA0();
  *v34 = v60;
  v34[1] = v35;
  v36 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_2757052A4();
  v58 = v15;
  v37 = v64;
  sub_275798A80();
  if (v37)
  {
    v41 = v65;
    v40 = v66;
    __swift_destroy_boxed_opaque_existential_0(v67);

    sub_2756C92B4(v22 + v70, &qword_2809FD6C0);
    sub_2756C92B4(v22 + v69, &qword_2809FD6C0);
    sub_2756C92B4(v22 + v40, &qword_2809FE5D0);
    sub_2756C92B4(v22 + v68, &qword_2809FE5D0);
    sub_2756C92B4(v22 + v41, &qword_2809FE5D0);
  }

  else
  {
    v39 = v55;
    v38 = v56;
    LOBYTE(v71) = 0;
    sub_275709F00(&qword_2809FD778, MEMORY[0x277D231A8]);
    sub_2757988E0();
    sub_275703F04(v57, v22 + v70, &qword_2809FD6C0);
    LOBYTE(v71) = 1;
    sub_2757988E0();
    sub_275703F04(v38, v22 + v69, &qword_2809FD6C0);
    LOBYTE(v71) = 2;
    sub_2756CFA44(&qword_2809FE5E8, &qword_2809FE5C8);
    v42 = v54;
    sub_2757988E0();
    sub_275703F04(v42, v22 + v66, &qword_2809FE5D0);
    LOBYTE(v71) = 3;
    v43 = v53;
    sub_2757988E0();
    sub_275703F04(v43, v22 + v68, &qword_2809FE5D0);
    LOBYTE(v71) = 4;
    v44 = v52;
    sub_2757988E0();
    sub_275703F04(v44, v22 + v65, &qword_2809FE5D0);
    LOBYTE(v71) = 5;
    sub_275709F00(&qword_2809FE5F0, MEMORY[0x277D23310]);
    v45 = v50;
    v46 = v51;
    sub_275798910();
    (*(v39 + 8))(v58, v59);
    (*(v48 + 32))(v22 + v20[10], v45, v46);
    sub_2757052F8(v22, v49);
    __swift_destroy_boxed_opaque_existential_0(v67);
    return sub_27570535C(v22);
  }
}

unint64_t sub_2757052A4()
{
  result = qword_280A04F70[0];
  if (!qword_280A04F70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A04F70);
  }

  return result;
}

uint64_t sub_2757052F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoGridView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27570535C(uint64_t a1)
{
  v2 = type metadata accessor for PhotoGridView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2757053B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v3 = type metadata accessor for PhotoGridView();
  v64 = *(v3 - 1);
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v3);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5F8);
  MEMORY[0x28223BE20](v63);
  v65 = (&v58 - v5);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE600);
  v6 = MEMORY[0x28223BE20](v74);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = &v58 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE608);
  MEMORY[0x28223BE20](v72);
  v73 = &v58 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE610);
  MEMORY[0x28223BE20](v68);
  v70 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE618);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v61 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v60 = (&v58 - v15);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE620);
  MEMORY[0x28223BE20](v67);
  v62 = (&v58 - v16);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE628);
  MEMORY[0x28223BE20](v71);
  v69 = &v58 - v17;
  v18 = (v1 + v3[11]);
  v19 = *v18;
  v20 = v18[1];
  *&v85 = *v18;
  *(&v85 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5D8);
  v21 = sub_2757975B0();
  v22 = (*(*v79 + 232))(v21);

  if (v22)
  {
    *&v85 = v19;
    *(&v85 + 1) = v20;
    v23 = sub_2757975B0();
    v24 = (*(*v79 + 136))(v23);

    if (!v24)
    {
      goto LABEL_6;
    }

    if (*(v1 + v3[12]))
    {

      sub_275705E0C(v25);
      v27 = v26;
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        v66 = *&v27;
        v42 = sub_275796C80();
        v43 = v62;
        *v62 = v42;
        *(v43 + 8) = 0;
        *(v43 + 16) = 1;
        v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE668) + 44);
        sub_275797820();
        sub_2757967D0();
        v65 = v79;
        v64 = v81;
        v63 = v83;
        v59 = v84;
        v78 = 1;
        v77 = v80;
        v76 = v82;
        v45 = sub_275797810();
        v46 = v60;
        *v60 = v45;
        *(v46 + 8) = v47;
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE670);
        sub_2757067EC(v24, v2, v46 + *(v48 + 44), v27);
        v49 = v78;
        v50 = v77;
        v51 = v76;
        v52 = v61;
        sub_2756C9074(v46, v61, &qword_2809FE618);
        *v44 = 0;
        *(v44 + 8) = v49;
        *(v44 + 16) = v65;
        *(v44 + 24) = v50;
        *(v44 + 32) = v64;
        *(v44 + 40) = v51;
        v53 = v59;
        *(v44 + 48) = v63;
        *(v44 + 56) = v53;
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE678);
        sub_2756C9074(v52, v44 + *(v54 + 48), &qword_2809FE618);
        sub_2756C92B4(v46, &qword_2809FE618);
        sub_2756C92B4(v52, &qword_2809FE618);

        sub_275797820();
        sub_2757967D0();
        v55 = (v43 + *(v67 + 36));
        v56 = v86;
        *v55 = v85;
        v55[1] = v56;
        v55[2] = v87;
        sub_2756C9074(v43, v70, &qword_2809FE620);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6C0);
        sub_2757079D0();
        sub_275707A88();
        v30 = v69;
        sub_275796D80();
        sub_2756C92B4(v43, &qword_2809FE620);
        goto LABEL_10;
      }

LABEL_6:
      sub_2756C9074(v2 + v3[5], v70, &qword_2809FD6C0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6C0);
      sub_2757079D0();
      sub_275707A88();
      v30 = v69;
      sub_275796D80();
LABEL_10:
      sub_2756C9074(v30, v73, &qword_2809FE628);
      swift_storeEnumTagMultiPayload();
      sub_275707944();
      sub_275707B3C();
      sub_275796D80();
      v40 = v30;
      v41 = &qword_2809FE628;
      return sub_2756C92B4(v40, v41);
    }
  }

  else
  {
    v31 = sub_275797480();
    sub_2757052F8(v2, &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v33 = swift_allocObject();
    sub_275707814(&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
    v34 = v65;
    v35 = v65 + *(v63 + 36);
    sub_275796860();
    sub_2757981C0();
    *v35 = &unk_2757A7860;
    *(v35 + 1) = v33;
    *v34 = v31;
    if (*(v2 + v3[12]))
    {

      sub_275705E0C(v36);

      sub_275797820();
      sub_2757967D0();
      sub_2756D8BC4(v34, v8, &qword_2809FE5F8);
      v37 = &v8[*(v74 + 36)];
      v38 = v86;
      *v37 = v85;
      *(v37 + 1) = v38;
      *(v37 + 2) = v87;
      v39 = v66;
      sub_2756D8BC4(v8, v66, &qword_2809FE600);
      sub_2756C9074(v39, v73, &qword_2809FE600);
      swift_storeEnumTagMultiPayload();
      sub_275707944();
      sub_275707B3C();
      sub_275796D80();
      v40 = v39;
      v41 = &qword_2809FE600;
      return sub_2756C92B4(v40, v41);
    }
  }

  sub_275796500();
  sub_275709F00(&qword_2809FD6B8, MEMORY[0x277D23330]);
  result = sub_275796A90();
  __break(1u);
  return result;
}

double sub_275705E0C(uint64_t a1)
{
  v2 = v1;
  v65 = a1;
  v68 = sub_275796280();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2757962F0();
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v52 = (&v48 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = (&v48 - v11);
  MEMORY[0x28223BE20](v10);
  v13 = (&v48 - v12);
  v60 = sub_275796380();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_275796540();
  v57 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v64 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v55 = &v48 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE378);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v48 - v21;
  v23 = sub_2757964D0();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v62 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v48 - v27;
  v29 = *(v24 + 16);
  v63 = v2;
  v61 = v29;
  v29(&v48 - v27, v2, v23);
  v30 = (*(v24 + 88))(v28, v23);
  if (v30 == *MEMORY[0x277D23308])
  {
    (*(v24 + 96))(v28, v23);
    (*(v20 + 32))(v22, v28, v19);
    sub_275796390();
    (*(v20 + 8))(v22, v19);
  }

  else if (v30 == *MEMORY[0x277D23300])
  {
    v49 = v13;
    (*(v24 + 96))(v28, v23);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE680);
    v32 = *(v31 + 48);
    v50 = *(v31 + 64);
    v33 = *(v57 + 32);
    v33(v55, v28, v15);
    (*(v58 + 32))(v59, &v28[v32], v60);
    v33(v64, &v28[v50], v15);
    v34 = v65;
    sub_275708610(v65, v56);
    v36 = v15;
    v37 = v52;
    sub_275708610(v34, v52);
    v38 = v54;
    v39 = v49;
    v40 = v56;
    v41 = v59;
    sub_275708BA8(v56, v37, v49);
    v42 = *(v38 + 8);
    v43 = v38;
    v44 = v53;
    v42(v37, v53);
    v42(v40, v44);
    v45 = *(v57 + 8);
    v45(v64, v36);
    (*(v58 + 8))(v41, v60);
    v45(v55, v36);
    v46 = v51;
    (*(v43 + 32))(v51, v39, v44);
    v47 = (*(v43 + 88))(v46, v44);
    if (v47 == *MEMORY[0x277D231B8])
    {
      (*(v43 + 96))(v46, v44);
      return *v46;
    }

    else if (v47 == *MEMORY[0x277D231C0])
    {
      (*(v54 + 96))(v46, v44);
      return *v46;
    }

    else
    {
      v42(v46, v44);
      return 0.0;
    }
  }

  else
  {
    (*(v24 + 8))(v28, v23);
  }

  return result;
}

uint64_t sub_2757067EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v45 = a2;
  v51 = a3;
  v50 = sub_2757973F0();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE760) - 8;
  v7 = MEMORY[0x28223BE20](v47);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE768);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v44 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  *v16 = sub_275797820();
  *(v16 + 1) = v17;
  *(v16 + 2) = 0x4000000000000000;
  v16[24] = 0;
  *(v16 + 4) = 0x4000000000000000;
  v16[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE770);
  v61[0] = a1;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE778);
  sub_2756CFA44(&qword_2809FE780, &qword_2809FE778);
  sub_275709F48();
  sub_275709FCC();
  sub_2757977A0();
  v18 = sub_275797800();
  v20 = v19;
  sub_275706DE8(&v53, a4);
  v21 = v53;
  v22 = v54;
  v23 = v53;
  v24 = v54;
  v59[2] = v54;
  v25 = v58;
  v26 = v58;
  v60 = v58;
  v28 = v56;
  v27 = v57;
  v59[5] = v57;
  v29 = v55;
  v30 = v55;
  v59[4] = v56;
  v59[3] = v55;
  v31 = &v16[*(v12 + 44)];
  *(v31 + 4) = v56;
  *(v31 + 5) = v27;
  *(v31 + 12) = v25;
  *&v59[0] = v18;
  *(&v59[0] + 1) = v20;
  v59[1] = v21;
  *(v31 + 2) = v22;
  *(v31 + 3) = v29;
  *v31 = v59[0];
  *(v31 + 1) = v21;
  v61[0] = v18;
  v61[1] = v20;
  v62 = v23;
  v63 = v24;
  v67 = v26;
  v65 = v28;
  v66 = v57;
  v64 = v30;
  sub_2756C9074(v59, v52, &qword_2809FE798);
  sub_2756C92B4(v61, &qword_2809FE798);
  v32 = *(type metadata accessor for PhotoGridView() + 24);
  sub_275797820();
  sub_2757967D0();
  sub_2756C9074(v45 + v32, v10, &qword_2809FD6C0);
  v33 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE7A0) + 36)];
  v34 = v52[1];
  *v33 = v52[0];
  *(v33 + 1) = v34;
  *(v33 + 2) = v52[2];
  v35 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE7A8) + 36)];
  *v35 = a4 * -0.13;
  *(v35 + 1) = 0;
  (*(v48 + 104))(v46, *MEMORY[0x277CE0EE0], v50);
  v36 = sub_275797510();
  v37 = &v10[*(v47 + 44)];
  *v37 = v36;
  *(v37 + 8) = xmmword_2757A77F0;
  *(v37 + 3) = 0x4000000000000000;
  v38 = v44;
  sub_2756C9074(v16, v44, &qword_2809FE768);
  v39 = v49;
  sub_2756C9074(v10, v49, &qword_2809FE760);
  v40 = v51;
  sub_2756C9074(v38, v51, &qword_2809FE768);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE7B0);
  sub_2756C9074(v39, v40 + *(v41 + 48), &qword_2809FE760);
  sub_2756C92B4(v10, &qword_2809FE760);
  sub_2756C92B4(v16, &qword_2809FE768);
  sub_2756C92B4(v39, &qword_2809FE760);
  return sub_2756C92B4(v38, &qword_2809FE768);
}

uint64_t sub_275706D84@<X0>(void *a1@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE690);
  result = sub_2757975A0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_275706DE8@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_275797560();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PhotoGridModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_275797580();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v10 = sub_275797570();

  (*(v5 + 8))(v7, v4);
  sub_275797820();
  sub_2757967D0();
  *&v13[40] = v16;
  *&v13[24] = v15;
  *&v13[8] = v14;
  result = a2 * -0.26;
  v12 = *&v13[18];
  *(a1 + 18) = *&v13[2];
  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v12;
  *(a1 + 50) = *&v13[34];
  *(a1 + 64) = *&v13[48];
  *(a1 + 72) = a2 * -0.26;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_275706FEC(uint64_t a1)
{
  v1[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5D0);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  sub_2757981B0();
  v1[12] = sub_2757981A0();
  v3 = sub_275798160();
  v1[13] = v3;
  v1[14] = v2;

  return MEMORY[0x2822009F8](sub_2757070D4, v3, v2);
}

uint64_t sub_2757070D4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = type metadata accessor for PhotoGridView();
  v4 = (v2 + v3[11]);
  v6 = *v4;
  v5 = v4[1];
  v0[2] = v6;
  v0[3] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5D8);
  sub_2757975B0();
  v7 = v0[4];
  v0[15] = v7;
  sub_2756C9074(v2 + v3[7], v1, &qword_2809FE5D0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v1, 1, v8) == 1)
  {
    v23 = v7;
    sub_2756C92B4(v0[11], &qword_2809FE5D0);
    v11 = 13;
  }

  else
  {
    if (!*(v0[8] + v3[12]))
    {
      goto LABEL_13;
    }

    v23 = v7;

    sub_275796390();
    v12 = v0[11];

    (*(v9 + 8))(v12, v8);
    v11 = v0[5];
  }

  v13 = v9;
  v14 = v0[10];
  sub_2756C9074(v0[8] + v3[8], v14, &qword_2809FE5D0);
  if (v10(v14, 1, v8) == 1)
  {
    sub_2756C92B4(v0[10], &qword_2809FE5D0);
    v15 = 3;
  }

  else
  {
    if (!*(v0[8] + v3[12]))
    {
      goto LABEL_13;
    }

    sub_275796390();
    v16 = v0[10];

    (*(v9 + 8))(v16, v8);
    v15 = v0[6];
  }

  v17 = v0[9];
  sub_2756C9074(v0[8] + v3[9], v17, &qword_2809FE5D0);
  if (v10(v17, 1, v8) == 1)
  {
    sub_2756C92B4(v0[9], &qword_2809FE5D0);
    v18 = 8;
LABEL_16:
    v22 = (*(*v23 + 256) + **(*v23 + 256));
    v21 = swift_task_alloc();
    v0[16] = v21;
    *v21 = v0;
    v21[1] = sub_27570764C;

    return v22(v11, v15, v18);
  }

  if (*(v0[8] + v3[12]))
  {

    sub_275796390();
    v19 = v0[9];

    (*(v13 + 8))(v19, v8);
    v18 = v0[7];
    goto LABEL_16;
  }

LABEL_13:
  sub_275796500();
  sub_275709F00(&qword_2809FD6B8, MEMORY[0x277D23330]);

  return sub_275796A90();
}

uint64_t sub_27570764C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_275707790, v3, v2);
}

uint64_t sub_275707790()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_275707814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoGridView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275707878()
{
  v2 = *(type metadata accessor for PhotoGridView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2756DBB90;

  return sub_275706FEC(v0 + v3);
}

unint64_t sub_275707944()
{
  result = qword_2809FE630;
  if (!qword_2809FE630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE628);
    sub_2757079D0();
    sub_275707A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE630);
  }

  return result;
}

unint64_t sub_2757079D0()
{
  result = qword_2809FE638;
  if (!qword_2809FE638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE620);
    sub_2756CFA44(&qword_2809FE640, &qword_2809FE648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE638);
  }

  return result;
}

unint64_t sub_275707A88()
{
  result = qword_2809FE650;
  if (!qword_2809FE650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD6C0);
    sub_275709F00(&qword_2809FD750, MEMORY[0x277D231A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE650);
  }

  return result;
}

unint64_t sub_275707B3C()
{
  result = qword_2809FE658;
  if (!qword_2809FE658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE600);
    sub_275707BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE658);
  }

  return result;
}

unint64_t sub_275707BC8()
{
  result = qword_2809FE660;
  if (!qword_2809FE660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE5F8);
    sub_275709F00(&qword_2809FDCE0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE660);
  }

  return result;
}

uint64_t sub_275707C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_275709F00(&qword_2809FE710, type metadata accessor for PhotoGridView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_275707D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_275709F00(&qword_2809FE718, type metadata accessor for PhotoGridView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_275707D84(uint64_t a1)
{
  v2 = sub_275709F00(&qword_2809FE718, type metadata accessor for PhotoGridView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_275707E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_275709F00(&qword_2809FE758, type metadata accessor for PhotoGridView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_275707EA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE690);
  sub_2757975A0();
  return v1;
}

uint64_t sub_275707EE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE698);
  sub_2757975B0();
  return v1;
}

void (*sub_275707F84(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x48uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[6] = a2;
  v6[7] = a3;
  *v6 = a2;
  v6[1] = a3;

  v7[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE698);
  sub_2757975B0();
  return sub_275708034;
}

void sub_275708034(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    sub_2757975C0();
  }

  else
  {
    sub_2757975C0();
  }

  free(v2);
}

uint64_t sub_2757080E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE698);
  sub_2757975D0();
  return v1;
}

uint64_t sub_275708138@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE698);
  sub_2757975B0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE6A8);
  sub_2756CFA44(&qword_2809FE6B0, &qword_2809FE690);
  sub_2757094DC();
  sub_275709530();
  return sub_2757977A0();
}