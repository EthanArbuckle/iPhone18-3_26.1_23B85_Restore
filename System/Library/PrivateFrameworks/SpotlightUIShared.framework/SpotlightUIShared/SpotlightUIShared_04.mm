uint64_t sub_26B946244(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 1) < *(v6 + 1))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_26B946448(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266E0, &qword_26B9B2800);
  result = sub_26B9ACD74();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_26B9AC9B4();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
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
        goto LABEL_37;
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
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

unint64_t sub_26B9466AC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_26B9AC9C4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_26B946780()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266E0, &qword_26B9B2800);
  v2 = *v0;
  v3 = sub_26B9ACD64();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
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

void *sub_26B9468DC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266F0, &unk_26B9B2818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266E8, &qword_26B9B2808);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26B946A10(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_26B9AB414();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of FilesZKWQueryDataSource.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 112);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EC52C;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_26B946E58(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26B9ACB44();
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
      result = sub_26B9ACB44();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26B947100();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266D0, &qword_26B9B27F8);
            v9 = sub_26B928E9C(v13, i, a3);
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
        sub_26B9294B8(0, &qword_2804266B8, 0x277D65850);
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

unint64_t sub_26B947014(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266E0, &qword_26B9B2800);
    v3 = sub_26B9ACD84();
    sub_26B9AAAE4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_26B94587C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_26B947100()
{
  result = qword_2804266D8;
  if (!qword_2804266D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804266D0, &qword_26B9B27F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804266D8);
  }

  return result;
}

unint64_t sub_26B947164()
{
  result = qword_280426700;
  if (!qword_280426700)
  {
    sub_26B9AB414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426700);
  }

  return result;
}

uint64_t LoadingQuery.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LoadingQuery.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LoadingQuery.sections.getter()
{
  v1 = sub_26B9AB1F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v8 = [objc_allocWithZone(MEMORY[0x277D65850]) init];
  v9 = [objc_allocWithZone(MEMORY[0x277D4C1B0]) init];
  if (v7)
  {
    v10 = sub_26B9AC4C4();
  }

  else
  {
    v10 = 0;
  }

  [v9 setText_];

  v11 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v12 = swift_allocObject();
  v24 = xmmword_26B9B1290;
  *(v12 + 16) = xmmword_26B9B1290;
  *(v12 + 32) = v9;
  sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
  v13 = v9;
  v14 = sub_26B9AC6E4();

  [v11 setCardSections_];

  v15 = v8;
  [v15 setInlineCard_];
  sub_26B9AA884();
  sub_26B9AB1C4();
  (*(v2 + 8))(v5, v1);
  v16 = sub_26B9AC4C4();

  [v15 setIdentifier_];

  v17 = [objc_allocWithZone(MEMORY[0x277D65848]) init];
  v18 = sub_26B9AC4C4();
  [v17 setTitle_];

  v19 = sub_26B9AC4C4();
  [v17 setIdentifier_];

  v20 = swift_allocObject();
  *(v20 + 16) = v24;
  *(v20 + 32) = v15;
  sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
  v21 = sub_26B9AC6E4();

  [v17 setResults_];

  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  *(v22 + 32) = v17;

  return v22;
}

SpotlightUIShared::LoadingQuery __swiftcall LoadingQuery.init(description:)(Swift::String_optional description)
{
  object = description.value._object;
  countAndFlagsBits = description.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.description.value._object = v6;
  result.description.value._countAndFlagsBits = v5;
  return result;
}

unint64_t sub_26B9475E8(uint64_t a1)
{
  result = sub_26B947610();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B947610()
{
  result = qword_280426708;
  if (!qword_280426708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426708);
  }

  return result;
}

uint64_t sub_26B947664@<X0>(void *a1@<X8>)
{
  sub_26B9479CC();

  return StaticQuery.representation.getter(a1);
}

uint64_t sub_26B9476B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B9479CC();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return StaticQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B94778C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_26B9479CC();
  *v1 = v0;
  v1[1] = sub_26B8EB6C8;

  return StaticQuery.stop(with:)();
}

unint64_t sub_26B947840(uint64_t a1)
{
  result = sub_26B947868();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B947868()
{
  result = qword_280426710;
  if (!qword_280426710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426710);
  }

  return result;
}

uint64_t sub_26B9478BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B947610();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B947910(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_26B94796C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_26B9479CC()
{
  result = qword_280426718;
  if (!qword_280426718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426718);
  }

  return result;
}

void sub_26B947A20(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = [*v1 command];
  [v6 copy];

  sub_26B9ACAD4();
  swift_unknownObjectRelease();
  sub_26B9294B8(0, &qword_280426690, 0x277D4C508);
  if (swift_dynamicCast())
  {
    v7 = QueryRepresentation.rawQuery.getter();
    v9 = v8;
    a1[3] = &type metadata for EntitySpotlightQuery;
    a1[4] = sub_26B948B6C();
    v10 = swift_allocObject();
    *a1 = v10;
    v11 = v3;
    EntitySpotlightQuery.init(command:searchString:browseFilter:)(v12, v7, v9, v3, (v10 + 16));
  }

  else
  {
    a1[3] = &type metadata for EmptyQuery;
    a1[4] = sub_26B903C04();
    EmptyQuery.init()();
  }
}

__n128 PasteboardQuery.platterBehavior.getter@<Q0>(uint64_t a1@<X8>)
{
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (QueryRepresentation.isEmpty.getter())
  {
    v3 = sub_26B92CDA0();
  }

  else
  {
    v3 = sub_26B92CB8C();
  }

  v4 = v3[1];
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = v3[2];
  *(a1 + 32) = result;
  return result;
}

uint64_t PasteboardQuery.representation.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
  v3 = v2;
}

void PasteboardQuery.representation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
}

id PasteboardQuery.init(representation:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = [objc_opt_self() pasteboard];
  *a2 = result;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t PasteboardQuery.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 144) = a3;
  *(v5 + 152) = a4;
  *(v5 + 136) = a1;
  *(v5 + 160) = *a2;
  *(v5 + 224) = *(a2 + 8);
  *(v5 + 225) = *(a2 + 9);
  *(v5 + 168) = *(a2 + 16);
  *(v5 + 184) = *v4;
  *(v5 + 200) = *(v4 + 16);
  v6 = sub_26B92A538();
  swift_beginAccess();
  v7 = *v6;
  *(v5 + 208) = v7;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B947D68, v7, 0);
}

uint64_t sub_26B947D68()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 225);
  v5 = *(v0 + 224);
  v6 = *(v0 + 160);
  *(v0 + 112) = *(v0 + 184);
  *(v0 + 128) = v1;
  sub_26B947A20((v0 + 16));
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
  *(v0 + 56) = v6;
  *(v0 + 64) = v5;
  *(v0 + 65) = v4;
  *(v0 + 72) = v3;
  *(v0 + 80) = v2;
  v9 = *(v8 + 24);
  v16 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = sub_26B947EFC;
  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = *(v0 + 136);

  return v16(v14, v0 + 56, v12, v13, v7, v8);
}

uint64_t sub_26B947EFC()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B94800C, v2, 0);
}

uint64_t sub_26B94800C()
{
  v1 = v0[26];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t PasteboardQuery.stop(with:)(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = *v1;
  *(v2 + 128) = *(v1 + 16);
  v3 = sub_26B92A538();
  swift_beginAccess();
  v4 = *v3;
  *(v2 + 136) = v4;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B948114, v4, 0);
}

uint64_t sub_26B948114()
{
  v1 = *(v0 + 128);
  *(v0 + 80) = *(v0 + 112);
  *(v0 + 96) = v1;
  sub_26B947A20((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = *(v3 + 32);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_26B94825C;
  v7 = *(v0 + 104);

  return v9(v7, v2, v3);
}

uint64_t sub_26B94825C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B94836C, v2, 0);
}

uint64_t sub_26B94836C()
{
  v1 = v0[17];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

Swift::OpaquePointer_optional __swiftcall PasteboardQuery.searchBarButtonItems()()
{
  v1 = [*v0 searchBarButtonItems];
  sub_26B9294B8(0, &qword_280426720, 0x277D4C200);
  v2 = sub_26B9AC6F4();

  v4 = v2;
  result.value._rawValue = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_26B948444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26B8EC52C;

  return PasteboardQuery.start(with:context:resultHandler:)(a1, a2, a3, a4);
}

uint64_t sub_26B948500(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = *v1;
  *(v2 + 128) = *(v1 + 16);
  v3 = sub_26B92A538();
  swift_beginAccess();
  v4 = *v3;
  *(v2 + 136) = v4;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B9485A0, v4, 0);
}

uint64_t sub_26B9485A0()
{
  v1 = *(v0 + 128);
  *(v0 + 80) = *(v0 + 112);
  *(v0 + 96) = v1;
  sub_26B947A20((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = *(v3 + 32);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_26B9486E8;
  v7 = *(v0 + 104);

  return v9(v7, v2, v3);
}

uint64_t sub_26B9486E8()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B948BC0, v2, 0);
}

unint64_t sub_26B9487F8(uint64_t a1)
{
  result = sub_26B948820();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B948820()
{
  result = qword_280426728;
  if (!qword_280426728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426728);
  }

  return result;
}

unint64_t sub_26B948874()
{
  result = qword_280426730;
  if (!qword_280426730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426730);
  }

  return result;
}

unint64_t sub_26B9488C8(uint64_t a1)
{
  result = sub_26B9488F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9488F0()
{
  result = qword_280426738;
  if (!qword_280426738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426738);
  }

  return result;
}

uint64_t sub_26B948948()
{
  v1 = [*v0 searchBarButtonItems];
  sub_26B9294B8(0, &qword_280426720, 0x277D4C200);
  v2 = sub_26B9AC6F4();

  return v2;
}

uint64_t sub_26B9489B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26B8EB6C8;

  return ViewOptionConfigurableQuery.updateLayout(with:context:resultHandler:)();
}

unint64_t sub_26B948A88(uint64_t a1)
{
  result = sub_26B948874();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B948AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B948874();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

__n128 sub_26B948B04@<Q0>(uint64_t a1@<X8>)
{
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (QueryRepresentation.isEmpty.getter())
  {
    v3 = sub_26B92CDA0();
  }

  else
  {
    v3 = sub_26B92CB8C();
  }

  v4 = v3[1];
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = v3[2];
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_26B948B6C()
{
  result = qword_280426740;
  if (!qword_280426740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426740);
  }

  return result;
}

unint64_t sub_26B948BC8()
{
  result = qword_280426750;
  if (!qword_280426750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426750);
  }

  return result;
}

id SpotlightQueryDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpotlightQueryDataSource.init()()
{
  v1 = sub_26B9AB584();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentTask] = 0;
  v6 = &v0[OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentQuery];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426748, qword_26B9B2A20);
  (*(*(v8 - 8) + 56))(&v0[v7], 1, 1, v8);
  v9 = &v0[OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_signpostState;
  v11 = sub_26B9A7568();
  (*(v2 + 16))(v5, v11, v1);
  v12 = sub_26B948BC8();
  SignpostIntervals.init(with:log:)(0, v5, &type metadata for SpotlightSignpostInterval, v12, &v0[v10]);
  DataSource = type metadata accessor for SpotlightQueryDataSource(0);
  v15.receiver = v0;
  v15.super_class = DataSource;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_26B948FA4()
{
  sub_26B92A538();
  swift_beginAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B949010()
{
  sub_26B92C070();
  sub_26B9ACA74();
  v0 = sub_26B9ACA74();
  v2 = v1;

  MEMORY[0x26D686470](v0, v2);

  MEMORY[0x26D686470](34, 0xE100000000000000);
  return 34;
}

uint64_t sub_26B949130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 344) = a4;
  *(v5 + 352) = v4;
  *(v5 + 328) = a1;
  *(v5 + 336) = a3;
  v7 = sub_26B9AB584();
  *(v5 + 360) = v7;
  v8 = *(v7 - 8);
  *(v5 + 368) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 376) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426768, &qword_26B9B2A50) - 8) + 64) + 15;
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = *a2;
  *(v5 + 91) = *(a2 + 8);
  *(v5 + 92) = *(a2 + 9);
  *(v5 + 400) = *(a2 + 16);
  v11 = sub_26B92A538();
  *(v5 + 416) = v11;
  swift_beginAccess();
  *(v5 + 424) = *v11;
  v12 = *((*MEMORY[0x277D85000] & *v4) + 0x130);
  sub_26B9AAAE4();
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v5 + 432) = v14;
  *v14 = v5;
  v14[1] = sub_26B949358;

  return v16();
}

uint64_t sub_26B949358()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 424);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B949468, v2, 0);
}

uint64_t sub_26B949468()
{
  v39 = v0;
  v1 = *(v0 + 91);
  v2 = *(v0 + 328);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 16))(v3, v4);
  *(v0 + 440) = v5;
  if (v1 != 2)
  {
    *(v0 + 89) = *(v0 + 91) & 1;
    sub_26B93D0F4();
    sub_26B9AC684();
    sub_26B9AC684();
    [v5 setDisplayAllResultsAsIcons_];
  }

  v6 = [v5 searchString];
  v7 = sub_26B9AC504();
  v9 = v8;

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v14 = v2[3];
    v13 = v2[4];
    __swift_project_boxed_opaque_existential_1(*(v0 + 328), v14);
    (*(*(*(v13 + 8) + 8) + 16))(v38, v14);
    v15 = v38[1];

    if (v15)
    {

      v12 = 1;
    }

    else
    {
      v16 = [v5 searchEntities];
      sub_26B9294B8(0, &qword_280426778, 0x277D65890);
      v17 = sub_26B9AC6F4();

      if (v17 >> 62)
      {
        v18 = sub_26B9ACB44();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v18 != 0;
    }
  }

  if ((*((*MEMORY[0x277D85000] & **(v0 + 352)) + 0xF0))(v10) & 1) != 0 || (v20 = v2[3], v19 = v2[4], __swift_project_boxed_opaque_existential_1(*(v0 + 328), v20), (((*(v19 + 24))(v20, v19) | v12)))
  {
    v21 = *(v0 + 416);
    v22 = *(v0 + 344);
    v23 = (*(v0 + 352) + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler);
    v24 = *v23;
    v25 = v23[1];
    *v23 = *(v0 + 336);
    v23[1] = v22;
    sub_26B9AAAE4();
    sub_26B9353FC(v24);
    swift_beginAccess();
    v26 = *v21;

    return MEMORY[0x2822009F8](sub_26B949880, v26, 0);
  }

  else
  {
    v27 = *(v0 + 336);
    static SearchResults.empty(queryID:)(*(v0 + 408), v0 + 56);
    v28 = *(v0 + 64);
    v29 = *(v0 + 72);
    v30 = *(v0 + 73);
    v31 = *(v0 + 80);
    v32 = *(v0 + 88);
    *(v0 + 96) = *(v0 + 56);
    *(v0 + 104) = v28;
    *(v0 + 112) = v29;
    *(v0 + 113) = v30;
    *(v0 + 120) = v31;
    *(v0 + 128) = v32;
    v37 = (v27 + *v27);
    v33 = v27[1];
    v34 = swift_task_alloc();
    *(v0 + 456) = v34;
    *v34 = v0;
    v34[1] = sub_26B949E2C;
    v35 = *(v0 + 344);

    return v37(v0 + 96);
  }
}

uint64_t sub_26B949880()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 92);
  [v1 setScaleFactor_];
  [v1 setDeviceAuthenticationState_];
  [v1 setQueryIdent_];
  [v1 setRetainBackendData_];

  return MEMORY[0x2822009F8](sub_26B949950, v2, 0);
}

uint64_t sub_26B949950()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 352)) + 0xF8))(*(v0 + 440));
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 440);
    v4 = *(v0 + 424);
    v5 = *(v0 + 408);
    v7 = *(v0 + 376);
    v6 = *(v0 + 384);
    v8 = *(v0 + 360);
    v9 = *(v0 + 368);
    v10 = *(v0 + 352);
    v11 = *(v0 + 328);

    v12 = sub_26B9A7568();
    (*(v9 + 16))(v7, v12, v8);
    v13 = sub_26B948BC8();
    SignpostIntervals.init(with:log:)(v5, v7, &type metadata for SpotlightSignpostInterval, v13, v6);
    v14 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_signpostState;
    swift_beginAccess();
    sub_26B949F7C(v6, v10 + v14, &qword_280426768, &qword_26B9B2A50);
    swift_endAccess();
    [v2 setDelegate_];
    v15 = *(v10 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentTask);
    *(v10 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentTask) = v2;
    v16 = v2;

    sub_26B907F08(v11, v0 + 16);
    v17 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentQuery;
    swift_beginAccess();
    sub_26B949F7C(v0 + 16, v10 + v17, &qword_280426770, qword_26B9B2A58);
    swift_endAccess();
    [v16 start];

    v19 = *(v0 + 376);
    v18 = *(v0 + 384);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 336);
    static SearchResults.empty(queryID:)(*(v0 + 408), v0 + 136);
    v23 = *(v0 + 144);
    v24 = *(v0 + 152);
    v25 = *(v0 + 153);
    v26 = *(v0 + 160);
    v27 = *(v0 + 168);
    *(v0 + 176) = *(v0 + 136);
    *(v0 + 184) = v23;
    *(v0 + 192) = v24;
    *(v0 + 193) = v25;
    *(v0 + 200) = v26;
    *(v0 + 208) = v27;
    v31 = (v22 + *v22);
    v28 = v22[1];
    v29 = swift_task_alloc();
    *(v0 + 448) = v29;
    *v29 = v0;
    v29[1] = sub_26B949C64;
    v30 = *(v0 + 344);

    return v31(v0 + 176);
  }
}

uint64_t sub_26B949C64()
{
  v1 = *v0;
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 424);
  v7 = *v0;

  v4 = *(v1 + 176);
  v5 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_26B949DB4, v3, 0);
}

uint64_t sub_26B949DB4()
{
  v1 = v0[55];
  v2 = v0[53];

  v4 = v0[47];
  v3 = v0[48];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26B949E2C()
{
  v1 = *v0;
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 424);
  v7 = *v0;

  v4 = *(v1 + 96);
  v5 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_26B94CF90, v3, 0);
}

uint64_t sub_26B949F7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26B949FE4()
{
  *(v1 + 104) = v0;
  v2 = sub_26B92A538();
  swift_beginAccess();
  v3 = *v2;

  return MEMORY[0x2822009F8](sub_26B94A060, v3, 0);
}

uint64_t sub_26B94A060()
{
  v1 = *(v0 + 104);
  v2 = (v1 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler);
  v3 = *(v1 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler);
  v4 = *(v1 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler + 8);
  *v2 = 0;
  v2[1] = 0;
  sub_26B9353FC(v3);
  v5 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentTask;
  [*(v1 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentTask) cancel];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426768, &qword_26B9B2A50);
  SignpostIntervals.finishAll()();
  swift_endAccess();
  v6 = *(v1 + v5);
  *(v1 + v5) = 0;

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v7 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentQuery;
  swift_beginAccess();
  sub_26B949F7C(v0 + 16, v1 + v7, &qword_280426770, qword_26B9B2A58);
  swift_endAccess();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26B94A2FC()
{
  v1 = (v0 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler);
  v2 = *(v0 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler);
  v3 = *(v0 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler + 8);
  *v1 = 0;
  v1[1] = 0;
  return sub_26B9353FC(v2);
}

uint64_t sub_26B94A314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[5] = a2;
  v5 = sub_26B92A538();
  swift_beginAccess();
  v6 = *v5;
  v4[8] = v6;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B94A3A8, v6, 0);
}

uint64_t sub_26B94A3A8()
{
  v1 = *(v0[7] + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentTask);
  v0[9] = v1;
  if (v1)
  {
    v2 = v0[5];
    v3 = v1;
    v10 = (v2 + *v2);
    v4 = v2[1];
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_26B94A4F8;
    v6 = v0[6];

    return v10(v3);
  }

  else
  {
    v8 = v0[8];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_26B94A4F8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B94A608, v2, 0);
}

uint64_t sub_26B94A608()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

id sub_26B94A66C(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_26B9AAE74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = a2;
  sub_26B9AAE54();
  sub_26B92C070();
  v13 = sub_26B9ACA84();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
    v15 = 0xE000000000000000;
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_26B9ACBF4();

  v23 = 0xD000000000000023;
  v24 = 0x800000026B9B91C0;
  MEMORY[0x26D686470](v16, v15);

  v17 = [objc_allocWithZone(MEMORY[0x277D4C4E8]) init];
  sub_26B9AB0E4();

  v18 = sub_26B9AB104();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v7, 1, v18) != 1)
  {
    v20 = sub_26B9AB0A4();
    (*(v19 + 8))(v7, v18);
  }

  v21 = [objc_opt_self() punchoutWithURL_];

  [v17 setPunchout_];
  return v17;
}

id sub_26B94A910(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D659F8];
  result = SSAppNameForBundleId();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = objc_opt_self();
  v9 = v5;
  v10 = sub_26B9AC4C4();
  v11 = [v8 buildResultWithAppName:v7 appBundleId:v9 searchString:v10 searchInAppType:0];

  v12 = v11;
  result = [v12 inlineCard];
  if (result)
  {
    v13 = result;
    v14 = [result cardSections];

    if (!v14)
    {
LABEL_12:
      v19 = [objc_allocWithZone(MEMORY[0x277D4C588]) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_26B9B1290;
      *(v20 + 32) = v12;
      sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
      v21 = v12;
      v22 = sub_26B9AC6E4();

      [v19 setResults_];

      v23 = [v21 sectionBundleIdentifier];
      [v19 setBundleIdentifier_];

      return v19;
    }

    sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
    v15 = sub_26B9AC6F4();

    if (v15 >> 62)
    {
      result = sub_26B9ACB44();
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_6:
        if ((v15 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x26D686B00](0, v15);
          goto LABEL_9;
        }

        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(v15 + 32);
LABEL_9:
          v17 = v16;

          v18 = (*((*MEMORY[0x277D85000] & *v2) + 0x160))(a1, a2);
          [v17 setCommand_];

          goto LABEL_12;
        }

        __break(1u);
        goto LABEL_15;
      }
    }

    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_26B94AC00()
{
  v1 = v0;
  sub_26B9294B8(0, &qword_280426780, 0x277CCA8D8);
  v2 = sub_26B9AC9A4();
  if (!v2)
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = v2;
  v4 = sub_26B9AAF14();
  v6 = v5;

  v7 = (*((*MEMORY[0x277D85000] & *v1) + 0x180))(v4, v6);

  return v7;
}

uint64_t sub_26B94AD3C()
{
  v1 = v0;
  sub_26B9294B8(0, &qword_280426780, 0x277CCA8D8);
  v2 = sub_26B9AC9A4();
  if (!v2)
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = v2;
  v4 = sub_26B9AAF14();
  v6 = v5;

  v7 = (*((*MEMORY[0x277D85000] & *v1) + 0x180))(v4, v6);

  return v7;
}

id sub_26B94AE74(uint64_t a1, uint64_t a2)
{
  v31 = sub_26B9AAE74();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D4C5A0]) init];
  [v8 setIsCentered_];
  v35 = 10;
  v36 = 0xE100000000000000;
  MEMORY[0x26D686470](a1, a2);
  v9 = sub_26B9AC4C4();
  v32 = [objc_opt_self() textWithString_];

  v10 = sub_26B9AC4C4();

  [v8 setTitle_];

  v11 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v12 = swift_allocObject();
  v30 = xmmword_26B9B1290;
  *(v12 + 16) = xmmword_26B9B1290;
  *(v12 + 32) = v8;
  sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
  v13 = v8;
  v14 = sub_26B9AC6E4();

  [v11 setCardSections_];

  v15 = [objc_allocWithZone(MEMORY[0x277D65850]) init];
  v35 = 0;
  v36 = 0xE000000000000000;
  v16 = v15;
  sub_26B9ACBF4();

  v35 = 0xD000000000000014;
  v36 = 0x800000026B9B9270;
  v33 = a1;
  v34 = a2;
  sub_26B9AAE44();
  sub_26B92C070();
  v17 = sub_26B9ACA54();
  (*(v4 + 8))(v7, v31);
  v33 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426788, &qword_26B9B2A70);
  sub_26B94B300();
  v18 = sub_26B9AC484();
  v20 = v19;

  MEMORY[0x26D686470](v18, v20);

  v21 = sub_26B9AC4C4();

  [v16 setSectionBundleIdentifier_];

  v22 = [v16 sectionBundleIdentifier];
  [v16 setResultBundleId_];

  v23 = v32;
  [v16 setTitle_];
  [v16 setInlineCard_];
  v24 = [objc_allocWithZone(MEMORY[0x277D4C588]) init];
  v25 = swift_allocObject();
  *(v25 + 16) = v30;
  *(v25 + 32) = v16;
  sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
  v26 = v16;
  v27 = sub_26B9AC6E4();

  [v24 setResults_];

  v28 = [v26 sectionBundleIdentifier];
  [v24 setBundleIdentifier_];

  return v24;
}

unint64_t sub_26B94B300()
{
  result = qword_280426790;
  if (!qword_280426790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426788, &qword_26B9B2A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426790);
  }

  return result;
}

id sub_26B94B420@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(v1) init];
  *a1 = result;
  return result;
}

uint64_t sub_26B94B458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & **v4) + 0x128);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EC52C;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_26B94B5B4()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x130);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EC52C;

  return v6();
}

uint64_t sub_26B94B6E0()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x110);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EC52C;

  return v6();
}

uint64_t sub_26B94B80C()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x100);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EC52C;

  return v6();
}

uint64_t sub_26B94B938()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x108);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EB6C8;

  return v6();
}

uint64_t sub_26B94BA64()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x118);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EC52C;

  return v6();
}

id sub_26B94BB90(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC17SpotlightUIShared29SpotlightIndexQueryDataSource_clientSession) queryTaskWithContext_];

  return v2;
}

uint64_t sub_26B94BBD4()
{
  *(v1 + 40) = v0;
  v2 = sub_26B92A538();
  swift_beginAccess();
  v3 = *v2;

  return MEMORY[0x2822009F8](sub_26B94BC50, v3, 0);
}

uint64_t sub_26B94BC50()
{
  [*(*(v0 + 40) + OBJC_IVAR____TtC17SpotlightUIShared29SpotlightIndexQueryDataSource_clientSession) preheat];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B94BCC4()
{
  *(v1 + 40) = v0;
  v2 = sub_26B92A538();
  swift_beginAccess();
  v3 = *v2;

  return MEMORY[0x2822009F8](sub_26B94BD40, v3, 0);
}

uint64_t sub_26B94BD40()
{
  [*(*(v0 + 40) + OBJC_IVAR____TtC17SpotlightUIShared29SpotlightIndexQueryDataSource_clientSession) activate];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B94BDB4()
{
  *(v1 + 40) = v0;
  v2 = sub_26B92A538();
  swift_beginAccess();
  v3 = *v2;
  *(v1 + 48) = v3;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B94BE44, v3, 0);
}

uint64_t sub_26B94BE44()
{
  v1 = *(v0 + 40);
  [*(v1 + OBJC_IVAR____TtC17SpotlightUIShared29SpotlightIndexQueryDataSource_clientSession) deactivate];
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x130);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_26B94BF98;
  v5 = *(v0 + 40);

  return v7();
}

uint64_t sub_26B94BF98()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B94C0A8, v2, 0);
}

uint64_t sub_26B94C0A8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B94C108()
{
  v2 = sub_26B92A538();
  swift_beginAccess();
  *(v1 + 40) = *v2;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x108);
  sub_26B9AAAE4();
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = sub_26B94C26C;

  return v7();
}

uint64_t sub_26B94C26C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B905DD8, v2, 0);
}

id SpotlightIndexQueryDataSource.init()()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared29SpotlightIndexQueryDataSource_clientSession;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D65728]) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SpotlightIndexQueryDataSource(0);
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_26B94C404(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_26B94C4D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_26B94C528()
{
  sub_26B94CE64();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26B94CEC8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of SpotlightQueryDataSource.activate()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x100);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EC52C;

  return v6();
}

uint64_t dispatch thunk of SpotlightQueryDataSource.deactivate()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x108);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EB6C8;

  return v6();
}

uint64_t dispatch thunk of SpotlightQueryDataSource.preheat()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x110);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EC52C;

  return v6();
}

uint64_t dispatch thunk of SpotlightQueryDataSource.reset()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x118);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EC52C;

  return v6();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x148))();
}

uint64_t dispatch thunk of SpotlightQueryDataSource.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x128);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EC52C;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SpotlightQueryDataSource.stop()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x130);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EC52C;

  return v6();
}

void sub_26B94CE64()
{
  if (!qword_280426800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426748, qword_26B9B2A20);
    v0 = sub_26B9ACA34();
    if (!v1)
    {
      atomic_store(v0, &qword_280426800);
    }
  }
}

void sub_26B94CEC8()
{
  if (!qword_280426808)
  {
    sub_26B948BC8();
    v0 = type metadata accessor for SignpostIntervals();
    if (!v1)
    {
      atomic_store(v0, &qword_280426808);
    }
  }
}

uint64_t SpotlightQuery.request.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1, v3, a1);
}

void sub_26B94D008(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    [a2 setShouldAllowMoreResults_];
    v4 = [v3 filterQueries];
    if (!v4)
    {
      sub_26B9AC6F4();
      v4 = sub_26B9AC6E4();
    }

    [a2 setFilterQueries_];

    v5 = [v3 enabledDomains];
    if (!v5)
    {
      sub_26B9294B8(0, &qword_2804265C0, 0x277CCABB0);
      sub_26B9AC6F4();
      v6 = sub_26B9AC6E4();

      v5 = v6;
    }

    v7 = v5;
    [a2 setSearchDomains_];
  }
}

void *sub_26B94D148@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 104))(v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_26B94D1A4(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v7[0] = *a1;
  v7[1] = v2;
  v4 = *(*v3 + 112);
  v5 = v2;

  return v4(v7);
}

id sub_26B94D260()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D65898]) init];
  v3 = *(*v0 + 104);
  v3(&v18);
  v4 = v19;
  v16 = v18;
  v17 = v19;
  QueryRepresentation.rawQuery.getter();
  v5 = sub_26B9AC4C4();

  [v2 setSearchString_];
  [v2 setQueryKind_];
  if (SPQueryKindIsCommittedSearch(v0[4]))
  {
    v6 = 8;
  }

  else
  {
    v6 = 1;
  }

  (v3)(&v18, [v2 setWhyQuery_]);
  v7 = v19;

  if (v7)
  {
    v8 = v7;
    [v2 setShouldAllowMoreResults_];
    v9 = [v8 filterQueries];
    if (!v9)
    {
      sub_26B9AC6F4();
      v9 = sub_26B9AC6E4();
    }

    [v2 setFilterQueries_];

    v10 = [v8 enabledDomains];
    if (!v10)
    {
      sub_26B9294B8(0, &qword_2804265C0, 0x277CCABB0);
      sub_26B9AC6F4();
      v10 = sub_26B9AC6E4();
    }

    [v2 setSearchDomains_];
  }

  if (v1[5])
  {
    v11 = v1[5];
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = [v2 filterQueries];
  v13 = sub_26B9AC6F4();

  v18 = v13;
  sub_26B94F598(v11);
  v14 = sub_26B9AC6E4();

  [v2 setFilterQueries_];

  return v2;
}

void *DefaultSpotlightQuery.__allocating_init(representation:queryKind:queryFilters:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = a1[1];
  result[2] = *a1;
  result[3] = v7;
  result[4] = a2;
  result[5] = a3;
  return result;
}

void *DefaultSpotlightQuery.init(representation:queryKind:queryFilters:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v3[2] = *a1;
  v3[3] = v4;
  v3[4] = a2;
  v3[5] = a3;
  return v3;
}

void sub_26B94D574(__int128 *a1@<X8>)
{
  (*(*v1 + 104))(&v20);
  v3 = *(&v20 + 1);

  v4 = objc_opt_self();
  v5 = [v4 applications];
  v6 = v5;
  if (v3)
  {
    if (v5)
    {
      sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);
      v7 = v3;
      v8 = sub_26B9AC9C4();

      if (v8)
      {
        goto LABEL_11;
      }
    }

LABEL_7:
    v9 = [v4 files];
    v10 = v9;
    if (v3)
    {
      if (v9)
      {
        sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);
        v11 = v3;
        v12 = sub_26B9AC9C4();

        if (v12)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!v9)
      {
LABEL_15:
        type metadata accessor for FilesZKWQuery();
        QueryRepresentation.init(arrayLiteral:)(MEMORY[0x277D84F90], &v20);
        v19 = v20;
        v18 = FilesZKWQuery.__allocating_init(representation:)(&v19);
        (*(*v18 + 240))(v18);
        goto LABEL_16;
      }
    }

    v15 = sub_26B92CB8C();
    v16 = v15[1];
    v20 = *v15;
    v21 = v16;
    v22 = v15[2];

    v17 = v21;
    *a1 = v20;
    a1[1] = v17;
    a1[2] = v22;
    return;
  }

  if (v5)
  {

    goto LABEL_7;
  }

LABEL_11:
  type metadata accessor for AppZKWQuery();
  QueryRepresentation.init(arrayLiteral:)(MEMORY[0x277D84F90], &v20);
  v19 = v20;
  v13 = AppZKWQuery.__allocating_init(representation:)(&v19);
  (*(*v14 + 216))(v14, v13);
LABEL_16:
}

void *DefaultSpotlightQuery.deinit()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t DefaultSpotlightQuery.__deallocating_deinit()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_26B94D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 200);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EC52C;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_26B94DAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  WitnessTable = swift_getWitnessTable();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_26B94DB9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return TypedQuery.stop(with:)(a1, a2, WitnessTable);
}

uint64_t sub_26B94DC68@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for DefaultSpotlightQuery();
  a1[4] = sub_26B94FB60(&qword_280426810, v4, type metadata accessor for DefaultSpotlightQuery);
  *a1 = v3;

  return sub_26B9AAAE4();
}

uint64_t sub_26B94DCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static Query.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t EntitySpotlightQuery.commands.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t EntitySpotlightQuery.searchString.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t EntitySpotlightQuery.searchString.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void *EntitySpotlightQuery.browsingFilter.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

_OWORD *EntitySpotlightQuery.platterBehavior.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  result = sub_26B94F7E4(&unk_287C5F2B8);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v9 = result;
  v10 = sub_26B9ACB44();
  result = v9;
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = result;
    v6 = MEMORY[0x26D686B00](0, v3);
LABEL_6:
    v7 = v6;
    v8 = [v6 entityType];

    LOBYTE(v8) = sub_26B94DF9C(v8, v5);

    if (v8)
    {
      result = sub_26B92CC98();
LABEL_11:
      v11 = result[1];
      *a1 = *result;
      a1[1] = v11;
      a1[2] = result[2];
      return result;
    }

LABEL_10:
    result = sub_26B92CB8C();
    goto LABEL_11;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = result;
    v6 = *(v3 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

BOOL sub_26B94DF9C(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_26B9ACFB4();
  sub_26B9ACFE4();
  v5 = sub_26B9ACFF4();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 4 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

void EntitySpotlightQuery.representation.getter(char **a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  if (!(*v1 >> 62))
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_19:

    v8 = MEMORY[0x277D84F90];
    if (!v6)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v3 < 0)
  {
    v24 = *v1;
  }

  v7 = sub_26B9ACB44();
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_3:
  v37 = MEMORY[0x277D84F90];

  v8 = &v37;
  sub_26B92BC3C(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v32 = v6;
  v33 = v5;
  v8 = v37;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v9 = 0;
    do
    {
      v10 = MEMORY[0x26D686B00](v9, v3);
      v11 = sub_26B9294B8(0, &qword_280426690, 0x277D4C508);
      v36 = 1;
      v37 = v8;
      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v31 = v11;
        sub_26B92BC3C((v12 > 1), v13 + 1, 1);
        v11 = v31;
        v8 = v37;
      }

      ++v9;
      *(v8 + 2) = v13 + 1;
      v14 = &v8[48 * v13];
      *(v14 + 4) = v10;
      *(v14 + 40) = v34;
      *(v14 + 7) = v11;
      *(v14 + 8) = &protocol witness table for SFPerformEntityQueryCommand;
      v14[72] = v36;
    }

    while (v7 != v9);
  }

  else
  {
    v15 = (v3 + 32);
    v16 = sub_26B9294B8(0, &qword_280426690, 0x277D4C508);
    do
    {
      v17 = *v15;
      v36 = 1;
      v37 = v8;
      v18 = *(v8 + 2);
      v19 = *(v8 + 3);
      v20 = v17;
      if (v18 >= v19 >> 1)
      {
        v22 = v19 > 1;
        v23 = v20;
        sub_26B92BC3C(v22, v18 + 1, 1);
        v20 = v23;
        v8 = v37;
      }

      *(v8 + 2) = v18 + 1;
      v21 = &v8[48 * v18];
      *(v21 + 4) = v20;
      *(v21 + 40) = v34;
      *(v21 + 7) = v16;
      *(v21 + 8) = &protocol witness table for SFPerformEntityQueryCommand;
      v21[72] = v36;
      ++v15;
      --v7;
    }

    while (v7);
  }

  v5 = v33;
  v6 = v32;
  if (v32)
  {
LABEL_20:
    LOBYTE(v37) = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_21:
      v26 = *(v8 + 2);
      v25 = *(v8 + 3);
      if (v26 >= v25 >> 1)
      {
        v8 = sub_26B92BB20((v25 > 1), v26 + 1, 1, v8);
      }

      *(v8 + 2) = v26 + 1;
      v27 = &v8[48 * v26];
      *(v27 + 4) = v4;
      *(v27 + 5) = v6;
      v28 = v34;
      *(v27 + 8) = v35;
      *(v27 + 3) = v28;
      v27[72] = v37;
      goto LABEL_24;
    }

LABEL_26:
    v8 = sub_26B92BB20(0, *(v8 + 2) + 1, 1, v8);
    goto LABEL_21;
  }

LABEL_24:
  QueryRepresentation.init(arrayLiteral:)(MEMORY[0x277D84F90], &v34);
  v29 = *(&v34 + 1);

  v30 = v5;

  *a1 = v8;
  a1[1] = v5;
}

uint64_t EntitySpotlightQuery.context.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = objc_opt_self();
  sub_26B9294B8(0, &qword_280426690, 0x277D4C508);
  v6 = sub_26B9AC6E4();
  v7 = [v5 queryContextWithPerformEntityQueryCommands:v6 view:0];

  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (!v3)
    {
      v12 = [v7 searchString];
      sub_26B9AC504();
    }

    goto LABEL_11;
  }

  result = sub_26B9ACB44();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x26D686B00](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v1 + 32);
  }

  v10 = v9;
  v11 = [v9 entityType];

  if (v11 != 6)
  {
    goto LABEL_9;
  }

LABEL_11:

  v13 = sub_26B9AC4C4();

  [v7 setSearchString_];

  v18[2] = v1;
  v18[3] = v2;
  v18[4] = v3;
  v18[5] = v4;
  EntitySpotlightQuery.representation.getter(v18);
  v14 = v18[1];

  if (v14)
  {
    v15 = v14;
    [v7 setShouldAllowMoreResults_];
    v16 = [v15 filterQueries];
    if (!v16)
    {
      sub_26B9AC6F4();
      v16 = sub_26B9AC6E4();
    }

    [v7 setFilterQueries_];

    v17 = [v15 enabledDomains];
    if (!v17)
    {
      sub_26B9294B8(0, &qword_2804265C0, 0x277CCABB0);
      sub_26B9AC6F4();
      v17 = sub_26B9AC6E4();
    }

    [v7 setSearchDomains_];
  }

  return v7;
}

uint64_t EntitySpotlightQuery.init(commands:searchString:browseFilter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

double EntitySpotlightQuery.init(command:searchString:browseFilter:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v10 = swift_allocObject();
  *&result = 1;
  *(v10 + 16) = xmmword_26B9B1290;
  *(v10 + 32) = a1;
  *a5 = v10;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

Swift::OpaquePointer_optional __swiftcall EntitySpotlightQuery.searchBarButtonItems()()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    if (v1 < 0)
    {
      v9 = *v0;
    }

    v2 = sub_26B9ACB44();
    if (!v2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_16;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26D686B00](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_16;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 searchBarButtonItems];
    sub_26B9294B8(0, &qword_280426720, 0x277D4C200);
    v7 = sub_26B9AC6F4();

    v2 = v7;
  }

  else
  {

    v2 = 0;
  }

LABEL_16:
  result.value._rawValue = v2;
  result.is_nil = v8;
  return result;
}

uint64_t sub_26B94E7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B94FD30();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B94E8BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B94FD30();
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B94E970@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  a2[3] = a1;
  a2[4] = sub_26B94FC64();
  v8 = swift_allocObject();
  *a2 = v8;
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v7;
  v8[5] = v6;
  v9 = v6;
}

uint64_t sub_26B94E9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B948B6C();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t ContactWidgetQuery.title.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ContactWidgetQuery.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ContactWidgetQuery.representation.getter@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26B9AF300;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 72) = 0;

  return QueryRepresentation.init(arrayLiteral:)(v5, a1);
}

id ContactWidgetQuery.context.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = objc_allocWithZone(MEMORY[0x277D65898]);
  v5 = v2;
  v6 = sub_26B9AC4C4();
  v7 = [v4 initWithSearchString_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26B9B1290;
  *(v8 + 32) = v5;
  sub_26B9294B8(0, &qword_280426778, 0x277D65890);
  v9 = sub_26B9AC6E4();

  [v7 setSearchEntities_];

  return v7;
}

uint64_t ContactWidgetQuery.init(entity:title:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[1] = a2;
  a4[2] = a3;
  *a4 = result;
  return result;
}

id sub_26B94ECA4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = objc_allocWithZone(MEMORY[0x277D65898]);
  v5 = v2;
  v6 = sub_26B9AC4C4();
  v7 = [v4 initWithSearchString_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26B9B1290;
  *(v8 + 32) = v5;
  sub_26B9294B8(0, &qword_280426778, 0x277D65890);
  v9 = sub_26B9AC6E4();

  [v7 setSearchEntities_];

  return v7;
}

uint64_t sub_26B94ED94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  a2[3] = a1;
  a2[4] = sub_26B94FE28();
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  v7 = v4;
}

uint64_t sub_26B94EDF0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26B9AF300;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 72) = 0;

  return QueryRepresentation.init(arrayLiteral:)(v5, a1);
}

uint64_t sub_26B94EE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B94FEA4();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B94EF50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B94FEA4();
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B94F004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B94FF20();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t FilterQuery.representation.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
  v3 = v2;
}

void FilterQuery.representation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

id FilterQuery.context.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = [objc_allocWithZone(MEMORY[0x277D65898]) init];
  v6 = sub_26B9AC4C4();
  [v5 setSearchString_];

  [v5 setQueryKind_];
  [v5 setWhyQuery_];
  v7 = sub_26B9AC4C4();
  [v5 setSearchStringForScopedSearch_];

  v8 = sub_26B9AC6E4();
  [v5 setFilterQueries_];

  return v5;
}

uint64_t sub_26B94F1F4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
  v3 = v2;
}

uint64_t sub_26B94F230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B950110();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B94F30C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B950110();
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B94F3C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  a2[3] = a1;
  a2[4] = sub_26B950018();
  v10 = swift_allocObject();
  *a2 = v10;
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = v7;
  v10[5] = v6;
  v10[6] = v9;
  v10[7] = v8;
  v11 = v8;
}

uint64_t sub_26B94F45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B950094();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B94F4B0()
{
  v1 = *v0;
  sub_26B9ACFB4();
  sub_26B9ACFE4();
  return sub_26B9ACFF4();
}

uint64_t sub_26B94F524()
{
  v1 = *v0;
  sub_26B9ACFB4();
  sub_26B9ACFE4();
  return sub_26B9ACFF4();
}

_DWORD *sub_26B94F57C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_26B94F598(uint64_t result)
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

  result = sub_26B91F91C(result, v11, 1, v3);
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

uint64_t _s17SpotlightUIShared07DefaultA5QueryC19supportsViewOptions3forSbAA0D14RepresentationVSg_tFZ_0(void *a1)
{
  if (*a1)
  {
    v1 = a1[1];
    v2 = v1;
  }

  else
  {
    v1 = 0;
  }

  v3 = objc_opt_self();
  v4 = [v3 applications];
  v5 = v4;
  if (v1)
  {
    if (v4)
    {
      sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);
      v6 = v1;
      v7 = sub_26B9AC9C4();

      if (v7)
      {
        v8 = 1;
LABEL_17:

        return v8 & 1;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  v9 = [v3 files];
  v6 = v9;
  if (v1)
  {
    if (v9)
    {
      sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);
      v10 = v1;
      v8 = sub_26B9AC9C4();

      v6 = v10;
    }

    else
    {
      v8 = 0;
      v6 = v1;
    }

    goto LABEL_17;
  }

  if (v9)
  {
    v8 = 0;
    goto LABEL_17;
  }

LABEL_15:
  v8 = 1;
  return v8 & 1;
}

uint64_t sub_26B94F7E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426898, &unk_26B9B3168);
    v3 = sub_26B9ACBA4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      v11 = *(v3 + 40);
      sub_26B9ACFB4();
      sub_26B9ACFE4();
      result = sub_26B9ACFF4();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

BOOL _s17SpotlightUIShared06EntityA5QueryV19supportsViewOptions3forSbAA0D14RepresentationVSg_tFZ_0(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (!*(v1 + 16))
  {
    return 0;
  }

  sub_26B926FB0(v1 + 32, v7);
  if ((v8 & 1) == 0)
  {
    sub_26B92700C(v7);
    return 0;
  }

  sub_26B8ECB70(v7, v9);
  sub_26B907F08(v9, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263E8, &unk_26B9B1280);
  sub_26B9294B8(0, &qword_280426890, 0x277D65948);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    return 0;
  }

  v2 = [v6 searchBarButtonItems];
  sub_26B9294B8(0, &qword_280426720, 0x277D4C200);
  v3 = sub_26B9AC6F4();

  if (v3 >> 62)
  {
    v4 = sub_26B9ACB44();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v4 != 0;
}

uint64_t sub_26B94FAB0(uint64_t a1, uint64_t a2)
{
  result = sub_26B94FB60(&qword_280426810, a2, type metadata accessor for DefaultSpotlightQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B94FB08(uint64_t a1, uint64_t a2)
{
  result = sub_26B94FB60(&qword_280426818, a2, type metadata accessor for DefaultSpotlightQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B94FB60(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B94FBA8(uint64_t a1, uint64_t a2)
{
  result = sub_26B94FB60(&qword_280426820, a2, type metadata accessor for DefaultSpotlightQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B94FC00(uint64_t a1, uint64_t a2)
{
  result = sub_26B94FB60(&qword_280426828, a2, type metadata accessor for DefaultSpotlightQuery);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FC64()
{
  result = qword_280426830;
  if (!qword_280426830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426830);
  }

  return result;
}

unint64_t sub_26B94FCB8(uint64_t a1)
{
  result = sub_26B948B6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FCE0(uint64_t a1)
{
  result = sub_26B94FC64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FD08(uint64_t a1)
{
  result = sub_26B94FD30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FD30()
{
  result = qword_280426838;
  if (!qword_280426838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426838);
  }

  return result;
}

unint64_t sub_26B94FD84(uint64_t a1)
{
  result = sub_26B94FDAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FDAC()
{
  result = qword_280426840;
  if (!qword_280426840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426840);
  }

  return result;
}

unint64_t sub_26B94FE00(uint64_t a1)
{
  result = sub_26B94FE28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FE28()
{
  result = qword_280426848;
  if (!qword_280426848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426848);
  }

  return result;
}

unint64_t sub_26B94FE7C(uint64_t a1)
{
  result = sub_26B94FEA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FEA4()
{
  result = qword_280426850;
  if (!qword_280426850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426850);
  }

  return result;
}

unint64_t sub_26B94FEF8(uint64_t a1)
{
  result = sub_26B94FF20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FF20()
{
  result = qword_280426858;
  if (!qword_280426858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426858);
  }

  return result;
}

unint64_t sub_26B94FF74(uint64_t a1)
{
  result = sub_26B94FF9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FF9C()
{
  result = qword_280426860;
  if (!qword_280426860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426860);
  }

  return result;
}

unint64_t sub_26B94FFF0(uint64_t a1)
{
  result = sub_26B950018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B950018()
{
  result = qword_280426868;
  if (!qword_280426868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426868);
  }

  return result;
}

unint64_t sub_26B95006C(uint64_t a1)
{
  result = sub_26B950094();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B950094()
{
  result = qword_280426870;
  if (!qword_280426870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426870);
  }

  return result;
}

unint64_t sub_26B9500E8(uint64_t a1)
{
  result = sub_26B950110();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B950110()
{
  result = qword_280426878;
  if (!qword_280426878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426878);
  }

  return result;
}

unint64_t sub_26B950164(uint64_t a1)
{
  result = sub_26B95018C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B95018C()
{
  result = qword_280426880;
  if (!qword_280426880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426880);
  }

  return result;
}

uint64_t dispatch thunk of DefaultSpotlightQuery.updateLayout(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 200);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EB6C8;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_26B95046C(uint64_t a1, int a2)
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

uint64_t sub_26B9504B4(uint64_t result, int a2, int a3)
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

void sub_26B950538(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

const char *SpotlightSignpostInterval.staticString()()
{
  v1 = "queryToFinished";
  if (*v0 != 1)
  {
    v1 = "queryToWindowExpansion";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "queryToFirstResults";
  }
}

uint64_t SpotlightSignpostInterval.hashValue.getter()
{
  v1 = *v0;
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](v1);
  return sub_26B9ACFF4();
}

unint64_t sub_26B9506C4()
{
  result = qword_2804268B0;
  if (!qword_2804268B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804268B0);
  }

  return result;
}

const char *sub_26B950718()
{
  v1 = "queryToFinished";
  if (*v0 != 1)
  {
    v1 = "queryToWindowExpansion";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "queryToFirstResults";
  }
}

unint64_t sub_26B950760(uint64_t a1)
{
  *(a1 + 8) = sub_26B950790();
  result = sub_26B9507E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26B950790()
{
  result = qword_2804268B8;
  if (!qword_2804268B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804268B8);
  }

  return result;
}

unint64_t sub_26B9507E4()
{
  result = qword_2804268C0;
  if (!qword_2804268C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804268C0);
  }

  return result;
}

unint64_t sub_26B95083C()
{
  result = qword_2804268C8;
  if (!qword_2804268C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804268D0, &qword_26B9B32B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804268C8);
  }

  return result;
}

unint64_t SFImage.abridgedDictionaryRepresentation.getter()
{
  v1 = v0;
  v2 = sub_26B951F18(MEMORY[0x277D84F90]);
  v3 = [v0 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26B9AC504();
    v7 = v6;

    v23 = MEMORY[0x277D837D0];
    *&v22 = v5;
    *(&v22 + 1) = v7;
    sub_26B92C47C(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v21, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  }

  v9 = [v1 imageData];
  if (v9)
  {
    v10 = v9;
    v11 = sub_26B9AB124();
    v13 = v12;

    sub_26B922394(v11, v13);
    v23 = MEMORY[0x277D839B0];
    LOBYTE(v22) = 1;
    sub_26B92C47C(&v22, v21);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v21, 0x6142617461447369, 0xEB00000000646573, v14);
  }

  v15 = [v1 badgingImage];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 abridgedDictionaryRepresentation];
    v18 = sub_26B9AC404();

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804268D8, &qword_26B9B3328);
    *&v22 = v18;
    sub_26B92C47C(&v22, v21);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v21, 0x49676E6967646162, 0xEC0000006567616DLL, v19);
  }

  return v2;
}

unint64_t SFAppIconImage.abridgedDictionaryRepresentation.getter()
{
  v1 = v0;
  v2 = sub_26B951F18(MEMORY[0x277D84F90]);
  v3 = [v1 bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26B9AC504();
    v7 = v6;

    v16 = MEMORY[0x277D837D0];
    *&v15 = v5;
    *(&v15 + 1) = v7;
    sub_26B92C47C(&v15, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v14, 0xD000000000000010, 0x800000026B9B7390, isUniquelyReferenced_nonNull_native);
  }

  v9 = [v1 iconType];
  v10 = MEMORY[0x277D839B0];
  if (v9 == 2)
  {
    v16 = MEMORY[0x277D839B0];
    LOBYTE(v15) = 1;
    sub_26B92C47C(&v15, v14);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v14, 0x73656E656E4F7369, 0xED00006E6F634973, v11);
  }

  if ([v1 iconType] == 1)
  {
    v16 = v10;
    LOBYTE(v15) = 1;
    sub_26B92C47C(&v15, v14);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v14, 0xD000000000000015, 0x800000026B9B9460, v12);
  }

  return v2;
}

unint64_t SFSymbolImage.abridgedDictionaryRepresentation.getter()
{
  v1 = sub_26B951F18(MEMORY[0x277D84F90]);
  v2 = [v0 symbolName];
  if (v2)
  {
    v3 = v2;
    v4 = sub_26B9AC504();
    v6 = v5;

    v11 = MEMORY[0x277D837D0];
    *&v10 = v4;
    *(&v10 + 1) = v6;
    sub_26B92C47C(&v10, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v9, 0x614E6C6F626D7973, 0xEA0000000000656DLL, isUniquelyReferenced_nonNull_native);
  }

  return v1;
}

id sub_26B950DC8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_26B9AC3F4();

  return v5;
}

unint64_t SFQuickLookThumbnailImage.abridgedDictionaryRepresentation.getter()
{
  v1 = v0;
  v2 = sub_26B9AB104();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = sub_26B951F18(MEMORY[0x277D84F90]);
  v11 = [v1 filePath];
  v12 = MEMORY[0x277D837D0];
  if (v11)
  {
    v13 = v11;
    sub_26B9AB0C4();

    (*(v3 + 32))(v9, v7, v2);
    v14 = sub_26B9AB064();
    v34 = v12;
    *&v33 = v14;
    *(&v33 + 1) = v15;
    sub_26B92C47C(&v33, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v10;
    sub_26B951A3C(v32, 0x68746150656C6966, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    (*(v3 + 8))(v9, v2);
    v10 = v31;
  }

  v17 = [v1 coreSpotlightIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_26B9AC504();
    v21 = v20;

    v34 = v12;
    *&v33 = v19;
    *(&v33 + 1) = v21;
    sub_26B92C47C(&v33, v32);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v10;
    sub_26B951A3C(v32, 0xD000000000000017, 0x800000026B9B94A0, v22);
    v10 = v31;
  }

  v23 = [v1 fileProviderIdentifier];
  if (v23)
  {
    v24 = v23;
    v25 = sub_26B9AC504();
    v27 = v26;

    v34 = v12;
    *&v33 = v25;
    *(&v33 + 1) = v27;
    sub_26B92C47C(&v33, v32);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v10;
    sub_26B951A3C(v32, 0xD000000000000016, 0x800000026B9B9480, v28);
    return v31;
  }

  return v10;
}

unint64_t SFDetailedRowCardSection.abridgedDictionaryRepresentation.getter()
{
  v1 = v0;
  v2 = sub_26B951F18(MEMORY[0x277D84F90]);
  v3 = [v0 title];
  v4 = MEMORY[0x277D837D0];
  if (v3)
  {
    v5 = v3;
    v6 = [v3 text];

    if (v6)
    {
      v7 = sub_26B9AC504();
      v9 = v8;

      v32 = v4;
      *&v31 = v7;
      *(&v31 + 1) = v9;
      sub_26B92C47C(&v31, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26B951A3C(v30, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    }
  }

  v11 = [v1 descriptions];
  if (v11)
  {
    sub_26B9294B8(0, &qword_280426FE0, 0x277D4C598);
    v12 = sub_26B9AC6F4();

    if (v12 >> 62)
    {
      sub_26B9294B8(0, &qword_2804268E0, 0x277D4C690);

      v11 = sub_26B9ACD34();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      sub_26B9ACEC4();
      sub_26B9294B8(0, &qword_2804268E0, 0x277D4C690);

      v11 = v12;
    }
  }

  v13 = _sSo6SFTextC17SpotlightUISharedE17descriptionString4fromSSSgSayABGSg_tFZ_0(v11);
  v15 = v14;

  if (v15)
  {
    v32 = v4;
    *&v31 = v13;
    *(&v31 + 1) = v15;
    sub_26B92C47C(&v31, v30);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v30, 0x7470697263736564, 0xEB000000006E6F69, v16);
  }

  v17 = [v1 thumbnail];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 abridgedDictionaryRepresentation];

    v20 = sub_26B9AC404();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804268D8, &qword_26B9B3328);
    *&v31 = v20;
    sub_26B92C47C(&v31, v30);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v30, 0x69616E626D756874, 0xE90000000000006CLL, v21);
  }

  v22 = [v1 secondaryTitle];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 text];

    if (v24)
    {
      v25 = sub_26B9AC504();
      v27 = v26;

      v32 = v4;
      *&v31 = v25;
      *(&v31 + 1) = v27;
      sub_26B92C47C(&v31, v30);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      sub_26B951A3C(v30, 0x7261646E6F636573, 0xEE00656C74695479, v28);
    }
  }

  return v2;
}

unint64_t SFSearchResult.abridgedDictionaryRepresentation.getter()
{
  v1 = v0;
  v2 = sub_26B951F18(MEMORY[0x277D84F90]);
  v3 = [v0 title];
  v4 = MEMORY[0x277D837D0];
  if (v3)
  {
    v5 = v3;
    v6 = [v3 text];

    if (v6)
    {
      v7 = sub_26B9AC504();
      v9 = v8;

      v25 = v4;
      *&v24 = v7;
      *(&v24 + 1) = v9;
      sub_26B92C47C(&v24, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26B951A3C(v23, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    }
  }

  v11 = [v1 descriptions];
  if (v11)
  {
    sub_26B9294B8(0, &qword_280426FE0, 0x277D4C598);
    v12 = sub_26B9AC6F4();

    if (v12 >> 62)
    {
      sub_26B9294B8(0, &qword_2804268E0, 0x277D4C690);

      v11 = sub_26B9ACD34();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      sub_26B9ACEC4();
      sub_26B9294B8(0, &qword_2804268E0, 0x277D4C690);

      v11 = v12;
    }
  }

  v13 = _sSo6SFTextC17SpotlightUISharedE17descriptionString4fromSSSgSayABGSg_tFZ_0(v11);
  v15 = v14;

  if (v15)
  {
    v25 = v4;
    *&v24 = v13;
    *(&v24 + 1) = v15;
    sub_26B92C47C(&v24, v23);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v23, 0x7470697263736564, 0xEB000000006E6F69, v16);
  }

  v17 = [v1 thumbnail];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 abridgedDictionaryRepresentation];

    v20 = sub_26B9AC404();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804268D8, &qword_26B9B3328);
    *&v24 = v20;
    sub_26B92C47C(&v24, v23);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v23, 0x69616E626D756874, 0xE90000000000006CLL, v21);
  }

  return v2;
}

uint64_t sub_26B951784(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804268E8, &qword_26B9B3338);
  v36 = a2;
  result = sub_26B9ACD74();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_26B92C47C(v25, v37);
      }

      else
      {
        sub_26B923750(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_26B9ACFB4();
      sub_26B9AC574();
      result = sub_26B9ACFF4();
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
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_26B92C47C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_26B951A3C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26B9201A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26B951BF8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26B951784(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_26B9201A8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_26B9ACF24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_26B92C47C(a1, v23);
  }

  else
  {
    sub_26B951B8C(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_26B951B8C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26B92C47C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_26B951BF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804268E8, &qword_26B9B3338);
  v2 = *v0;
  v3 = sub_26B9ACD64();
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
        sub_26B923750(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26B92C47C(v25, (*(v4 + 56) + v22));
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

unint64_t _sSo6SFTextC17SpotlightUISharedE17descriptionString4fromSSSgSayABGSg_tFZ_0(unint64_t result)
{
  if (!result)
  {
    return 0;
  }

  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  result = sub_26B9ACB44();
  v2 = result;
  if (!result)
  {
    return 0;
  }

LABEL_4:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D686B00](i, v1);
      }

      else
      {
        v6 = *(v1 + 8 * i + 32);
      }

      v7 = v6;
      v8 = [v6 text];
      if (v8)
      {
        v9 = v8;
        v10 = sub_26B9AC504();
        v12 = v11;

        if (v4)
        {
          v13 = v3;
          v14 = v4;

          MEMORY[0x26D686470](2112288, 0xE300000000000000);

          MEMORY[0x26D686470](v10, v12);
        }

        else
        {

          v3 = v10;
          v4 = v12;
        }
      }

      else
      {
      }
    }

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_26B951F18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804268E8, &qword_26B9B3338);
    v3 = sub_26B9ACD84();
    v4 = a1 + 32;
    sub_26B9AAAE4();
    while (1)
    {
      sub_26B952028(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_26B9201A8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26B92C47C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26B952028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804268F0, &unk_26B9B3340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppEntityQuery.representation.getter@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26B9AF300;
  v4 = (v1 + *(type metadata accessor for AppEntityQuery() + 32));
  v5 = v4[1];
  *(v3 + 32) = *v4;
  *(v3 + 40) = v5;
  *(v3 + 72) = 0;

  return QueryRepresentation.init(arrayLiteral:)(v3, a1);
}

uint64_t type metadata accessor for AppEntityQuery()
{
  result = qword_28042E7D0;
  if (!qword_28042E7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppEntityQuery.typeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B9ABF24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppEntityQuery.parameterDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEntityQuery() + 20);
  v4 = sub_26B9AC0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEntityQuery.restrictionContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEntityQuery() + 24);
  v4 = sub_26B9ABFF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEntityQuery.toolInvocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEntityQuery() + 28);
  v4 = sub_26B9AB984();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEntityQuery.searchString.getter()
{
  v1 = (v0 + *(type metadata accessor for AppEntityQuery() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppEntityQuery.selectedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppEntityQuery() + 40);

  return sub_26B9523F8(v3, a1);
}

uint64_t sub_26B9523F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppEntityQuery.init(typeIdentifier:parameterDefinition:restrictionContext:toolInvocation:searchString:showAllCases:selectedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = sub_26B9ABF24();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for AppEntityQuery();
  v20 = v19[5];
  v21 = sub_26B9AC0E4();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = v19[6];
  v23 = sub_26B9ABFF4();
  (*(*(v23 - 8) + 32))(a9 + v22, a3, v23);
  v24 = v19[7];
  v25 = sub_26B9AB984();
  (*(*(v25 - 8) + 32))(a9 + v24, a4, v25);
  v26 = (a9 + v19[8]);
  *v26 = a5;
  v26[1] = a6;
  *(a9 + v19[9]) = a7;
  v27 = a9 + v19[10];

  return sub_26B952600(a8, v27);
}

uint64_t sub_26B952600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9526B8(uint64_t a1)
{
  result = sub_26B952CA0(&qword_280426908, type metadata accessor for AppEntityQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B952710@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26B9AF300;
  v6 = (v2 + *(a1 + 32));
  v7 = v6[1];
  *(v5 + 32) = *v6;
  *(v5 + 40) = v7;
  *(v5 + 72) = 0;

  return QueryRepresentation.init(arrayLiteral:)(v5, a2);
}

uint64_t sub_26B95279C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B952CA0(&qword_280426928, type metadata accessor for AppEntityQuery);
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B9528A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B952CA0(&qword_280426928, type metadata accessor for AppEntityQuery);
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B95298C(uint64_t a1)
{
  result = sub_26B952CA0(&qword_280426910, type metadata accessor for AppEntityQuery);
  *(a1 + 8) = result;
  return result;
}

double sub_26B9529E4@<D0>(uint64_t a1@<X8>)
{
  sub_26B952CA0(&qword_280426920, type metadata accessor for AppEntityQuery);

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B952A60(uint64_t a1)
{
  result = sub_26B952CA0(&qword_280426900, type metadata accessor for AppEntityQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B952AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B952CA0(&qword_280426900, type metadata accessor for AppEntityQuery);

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

void sub_26B952B64()
{
  sub_26B9ABF24();
  if (v0 <= 0x3F)
  {
    sub_26B9AC0E4();
    if (v1 <= 0x3F)
    {
      sub_26B9ABFF4();
      if (v2 <= 0x3F)
      {
        sub_26B9AB984();
        if (v3 <= 0x3F)
        {
          sub_26B952C48();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26B952C48()
{
  if (!qword_280426918)
  {
    sub_26B9ABE84();
    v0 = sub_26B9ACA34();
    if (!v1)
    {
      atomic_store(v0, &qword_280426918);
    }
  }
}

uint64_t sub_26B952CA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B952CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[36] = a2;
  v3[37] = a3;
  v3[35] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v6 = *(*(type metadata accessor for TypedValueResultBuilder.Config(0) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426328, &unk_26B9B0CF0) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v8 = *(*(sub_26B9AC2B4() - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v9 = sub_26B9AC294();
  v3[43] = v9;
  v10 = *(v9 - 8);
  v3[44] = v10;
  v3[45] = *(v10 + 64);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426930, &qword_26B9B3470) - 8);
  v3[48] = v11;
  v3[49] = *(v11 + 64);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v12 = sub_26B9AC004();
  v3[52] = v12;
  v13 = *(v12 - 8);
  v3[53] = v13;
  v14 = *(v13 + 64) + 15;
  v3[54] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426938, &qword_26B9B3478) - 8) + 64) + 15;
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426940, &qword_26B9B3480) - 8) + 64) + 15;
  v3[57] = swift_task_alloc();
  v17 = sub_26B9AC224();
  v3[58] = v17;
  v18 = *(v17 - 8);
  v3[59] = v18;
  v19 = *(v18 + 64) + 15;
  v3[60] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426948, &qword_26B9B3488) - 8) + 64) + 15;
  v3[61] = swift_task_alloc();
  v21 = sub_26B9ABE94();
  v3[62] = v21;
  v22 = *(v21 - 8);
  v3[63] = v22;
  v23 = *(v22 + 64) + 15;
  v3[64] = swift_task_alloc();
  v24 = sub_26B9ABFF4();
  v3[65] = v24;
  v25 = *(v24 - 8);
  v3[66] = v25;
  v26 = *(v25 + 64) + 15;
  v3[67] = swift_task_alloc();
  v27 = sub_26B9ABF64();
  v3[68] = v27;
  v28 = *(v27 - 8);
  v3[69] = v28;
  v29 = *(v28 + 64) + 15;
  v3[70] = swift_task_alloc();
  v30 = sub_26B9ABFD4();
  v3[71] = v30;
  v31 = *(v30 - 8);
  v3[72] = v31;
  v3[73] = *(v31 + 64);
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v32 = sub_26B92A538();
  swift_beginAccess();
  v33 = *v32;
  v3[76] = v33;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B953258, v33, 0);
}

uint64_t sub_26B953258()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v4 = *(v0 + 280);
  v5 = type metadata accessor for AppEntityQuery();
  *(v0 + 616) = v5;
  (*(v2 + 16))(v1, v4 + *(v5 + 24), v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D72FA0])
  {
    v6 = *(v0 + 600);
    v7 = *(v0 + 576);
    v8 = *(v0 + 568);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v118 = *(v0 + 544);
    v121 = v5;
    v11 = *(v0 + 536);
    v12 = *(v0 + 504);
    v124 = *(v0 + 496);
    v13 = *(v0 + 488);
    (*(*(v0 + 528) + 96))(v11, *(v0 + 520));
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426950, &qword_26B9B3490) + 48);
    v115 = *(v7 + 32);
    v115(v6, v11, v8);
    (*(v10 + 32))(v9, v11 + v14, v118);
    sub_26B9ABF44();
    if ((*(v12 + 48))(v13, 1, v124) != 1)
    {
      v46 = *(v0 + 512);
      v47 = *(v0 + 496);
      v48 = *(*(v0 + 504) + 32);
      v48(v46, *(v0 + 488), v47);
      *(v0 + 40) = v47;
      v49 = &unk_280426978;
      v50 = MEMORY[0x277D72AA8];
      goto LABEL_18;
    }

    v15 = *(v0 + 560);
    v16 = *(v0 + 464);
    v17 = *(v0 + 472);
    v18 = *(v0 + 456);
    sub_26B8EACD8(*(v0 + 488), &qword_280426948, &qword_26B9B3488);
    sub_26B9ABF34();
    if ((*(v17 + 48))(v18, 1, v16) == 1)
    {
      v19 = *(v0 + 456);
      v20 = &unk_280426940;
      v21 = &unk_26B9B3480;
LABEL_5:
      sub_26B8EACD8(v19, v20, v21);
      v22 = *(v0 + 560);
      v23 = *(v0 + 440);
      v24 = *(v0 + 416);
      v25 = *(v0 + 424);
      sub_26B9ABF54();
      v26 = (*(v25 + 48))(v23, 1, v24);
      v27 = *(v0 + 440);
      if (v26 == 1)
      {
        sub_26B8EACD8(*(v0 + 440), &qword_280426938, &qword_26B9B3478);
        v28 = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        *(v0 + 48) = 0;
LABEL_19:
        *(v0 + 696) = v28;
        sub_26B9236E8(v0 + 16, v0 + 96, &qword_280426958, &qword_26B9B3498);
        v70 = *(v0 + 408);
        if (*(v0 + 120))
        {
          sub_26B8ECB70((v0 + 96), v0 + 56);
          sub_26B907F08(v0 + 56, v0 + 136);
          sub_26B9AC2C4();
          __swift_destroy_boxed_opaque_existential_1((v0 + 56));
          v71 = sub_26B9AC2D4();
          (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
        }

        else
        {
          sub_26B8EACD8(v0 + 96, &qword_280426958, &qword_26B9B3498);
          v72 = sub_26B9AC2D4();
          (*(*(v72 - 8) + 56))(v70, 1, 1, v72);
        }

        v73 = *(v0 + 592);
        v74 = *(v0 + 576);
        v75 = *(v0 + 568);
        v103 = *(v0 + 408);
        v101 = *(v0 + 600);
        v102 = *(v0 + 400);
        v112 = *(v0 + 584);
        v114 = *(v0 + 392);
        v110 = *(v0 + 384);
        v100 = *(v0 + 376);
        v106 = *(v0 + 368);
        v120 = *(v0 + 360);
        v126 = *(v0 + 352);
        v76 = *(v0 + 336);
        v104 = *(v0 + 344);
        v77 = *(v0 + 328);
        v78 = *(v0 + 280);
        v99 = *(v0 + 288);
        sub_26B9AC2A4();
        sub_26B9AC284();
        v79 = sub_26B9AB984();
        v108 = swift_allocBox();
        *(v0 + 624) = v108;
        v80 = v121[7];
        *(v0 + 688) = v80;
        (*(*(v79 - 8) + 16))(v81, v78 + v80, v79);
        *(v0 + 692) = v121[5];
        v82 = sub_26B9AC0B4();
        v84 = v83;
        v85 = sub_26B9ABFB4();
        (*(*(v85 - 8) + 56))(v77, 1, 1, v85);
        v86 = sub_26B9AB944();
        sub_26B912910(v77, v82, v84);
        v86(v0 + 216, 0);
        ObjectType = swift_getObjectType();
        (*(v74 + 16))(v73, v101, v75);
        sub_26B9236E8(v103, v102, &qword_280426930, &qword_26B9B3470);
        (*(v126 + 16))(v106, v100, v104);
        v87 = (*(v74 + 80) + 16) & ~*(v74 + 80);
        v88 = (v112 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
        v89 = (*(v110 + 80) + v88 + 8) & ~*(v110 + 80);
        v90 = (v114 + *(v126 + 80) + v89) & ~*(v126 + 80);
        v91 = swift_allocObject();
        *(v0 + 632) = v91;
        v115(v91 + v87, v73, v75);
        *(v91 + v88) = v108;
        sub_26B954F24(v102, v91 + v89);
        (*(v126 + 32))(v91 + v90, v106, v104);
        v92 = *(MEMORY[0x277D726A0] + 4);
        sub_26B9AAAE4();
        v93 = swift_task_alloc();
        *(v0 + 640) = v93;
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426960, &unk_26B9B34B0);
        *v93 = v0;
        v93[1] = sub_26B953F28;
        v96 = *(v0 + 288);
        v95 = *(v0 + 296);

        return MEMORY[0x2821DAB50](v0 + 272, &unk_26B9B34A8, v91, v94, ObjectType, v95);
      }

      v46 = *(v0 + 432);
      v47 = *(v0 + 416);
      v48 = *(*(v0 + 424) + 32);
      v48(v46, *(v0 + 440), v47);
      *(v0 + 40) = v47;
      v49 = &unk_280426968;
      v50 = MEMORY[0x277D72FF8];
LABEL_18:
      *(v0 + 48) = sub_26B955210(v49, v50);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      v48(boxed_opaque_existential_1, v46, v47);
      v28 = 1;
      goto LABEL_19;
    }

    v51 = *(v0 + 280);
    (*(*(v0 + 472) + 32))(*(v0 + 480), *(v0 + 456), *(v0 + 464));
    v52 = (v51 + v121[8]);
    v54 = *v52;
    v53 = v52[1];
    v55 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v55 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (!v55)
    {
      v56 = *(v0 + 560);
      v57 = *(v0 + 448);
      v58 = *(v0 + 416);
      v59 = *(v0 + 424);
      sub_26B9ABF54();
      if ((*(v59 + 48))(v57, 1, v58) != 1)
      {
        v98 = *(v0 + 448);
        (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));
        v20 = &qword_280426938;
        v21 = &qword_26B9B3478;
        v19 = v98;
        goto LABEL_5;
      }

      sub_26B8EACD8(*(v0 + 448), &qword_280426938, &qword_26B9B3478);
    }

    v60 = *(v0 + 480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D0, &unk_26B9B0A60);
    v61 = sub_26B9ABE84();
    v62 = *(v61 - 8);
    v63 = *(v62 + 72);
    v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_26B9AF300;
    v66 = sub_26B9ABE44();
    v67 = swift_allocBox();
    *v68 = v54;
    v68[1] = v53;
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x277D729B8], v66);
    *(v65 + v64) = v67;
    (*(v62 + 104))(v65 + v64, *MEMORY[0x277D72A58], v61);
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426970, &unk_26B9B34C0);
    *(v0 + 208) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v0 + 176));

    sub_26B9AC214();
    (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));

    v28 = 0;
    v97 = *(v0 + 192);
    *(v0 + 16) = *(v0 + 176);
    *(v0 + 32) = v97;
    *(v0 + 48) = *(v0 + 208);
    goto LABEL_19;
  }

  v29 = *(v0 + 608);
  v30 = *(v0 + 536);
  v31 = *(v0 + 528);
  v32 = *(v0 + 520);

  (*(v31 + 8))(v30, v32);
  v33 = *(v0 + 600);
  v34 = *(v0 + 592);
  v35 = *(v0 + 560);
  v36 = *(v0 + 536);
  v37 = *(v0 + 512);
  v39 = *(v0 + 480);
  v38 = *(v0 + 488);
  v41 = *(v0 + 448);
  v40 = *(v0 + 456);
  v42 = *(v0 + 440);
  v105 = *(v0 + 432);
  v107 = *(v0 + 408);
  v109 = *(v0 + 400);
  v111 = *(v0 + 376);
  v113 = *(v0 + 368);
  v116 = *(v0 + 336);
  v117 = *(v0 + 328);
  v119 = *(v0 + 320);
  v122 = *(v0 + 312);
  v125 = *(v0 + 304);

  v43 = *(v0 + 8);
  v44 = MEMORY[0x277D84F90];

  return v43(v44);
}

uint64_t sub_26B953F28()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v4 = *v1;
  *(*v1 + 648) = v0;

  v5 = *(v2 + 632);
  v6 = *(v2 + 608);

  if (v0)
  {
    v7 = sub_26B95460C;
  }

  else
  {
    v7 = sub_26B954070;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_26B954070()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 272);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if (*(v0 + 696) == 1)
  {
    v2 = *(v0 + 616);
    v3 = *(v0 + 280);
    type metadata accessor for FuzzyRanker();
    v4 = sub_26B97294C(v1, *(v3 + v2[8]), *(v3 + v2[8] + 8), v3 + v2[10], *(v3 + v2[9]));

    v1 = v4;
  }

  *(v0 + 656) = v1;
  v5 = *(v0 + 692);
  v6 = *(v0 + 312);
  v7 = *(v0 + 320);
  v8 = *(v0 + 304);
  v9 = *(v0 + 280);
  v10 = v9 + *(v0 + 688);
  sub_26B9AB934();
  v11 = sub_26B9AB914();
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = sub_26B9AC0E4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v8, v9 + v5, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  sub_26B964AE0(0, 0, v6, v8, 0, 2, v7);
  type metadata accessor for TypedValueResultBuilder(0);
  v14 = swift_task_alloc();
  *(v0 + 664) = v14;
  *v14 = v0;
  v14[1] = sub_26B954288;
  v15 = *(v0 + 320);

  return sub_26B965780(v1, v15);
}

uint64_t sub_26B954288(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 664);
  v6 = *v2;
  v4[84] = v1;

  v7 = v4[82];
  v8 = v4[76];

  if (v1)
  {
    v9 = sub_26B954828;
  }

  else
  {
    v4[85] = a1;
    v9 = sub_26B9543E0;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_26B9543E0()
{
  v1 = v0[76];
  v33 = v0[75];
  v35 = v0[78];
  v2 = v0[72];
  v31 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[51];
  v7 = v0[47];
  v9 = v0[43];
  v8 = v0[44];
  v10 = v0[40];

  sub_26B955164(v10);
  (*(v8 + 8))(v7, v9);
  sub_26B8EACD8(v6, &qword_280426930, &qword_26B9B3470);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v33, v31);
  sub_26B8EACD8((v0 + 2), &qword_280426958, &qword_26B9B3498);

  v36 = v0[85];
  v11 = v0[75];
  v12 = v0[74];
  v13 = v0[70];
  v14 = v0[67];
  v15 = v0[64];
  v17 = v0[60];
  v16 = v0[61];
  v19 = v0[56];
  v18 = v0[57];
  v20 = v0[55];
  v23 = v0[54];
  v24 = v0[51];
  v25 = v0[50];
  v26 = v0[47];
  v27 = v0[46];
  v28 = v0[42];
  v29 = v0[41];
  v30 = v0[40];
  v32 = v0[39];
  v34 = v0[38];

  v21 = v0[1];

  return v21(v36);
}

uint64_t sub_26B95460C()
{
  v1 = v0[76];
  v32 = v0[75];
  v34 = v0[78];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[51];
  v8 = v0[47];
  v10 = v0[43];
  v9 = v0[44];

  (*(v9 + 8))(v8, v10);
  sub_26B8EACD8(v7, &qword_280426930, &qword_26B9B3470);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v32, v3);
  sub_26B8EACD8((v0 + 2), &qword_280426958, &qword_26B9B3498);

  v35 = v0[81];
  v11 = v0[75];
  v12 = v0[74];
  v13 = v0[70];
  v14 = v0[67];
  v15 = v0[64];
  v17 = v0[60];
  v16 = v0[61];
  v19 = v0[56];
  v18 = v0[57];
  v20 = v0[55];
  v23 = v0[54];
  v24 = v0[51];
  v25 = v0[50];
  v26 = v0[47];
  v27 = v0[46];
  v28 = v0[42];
  v29 = v0[41];
  v30 = v0[40];
  v31 = v0[39];
  v33 = v0[38];

  v21 = v0[1];

  return v21();
}

uint64_t sub_26B954828()
{
  v1 = v0[76];
  v33 = v0[75];
  v35 = v0[78];
  v2 = v0[72];
  v31 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[51];
  v7 = v0[47];
  v9 = v0[43];
  v8 = v0[44];
  v10 = v0[40];

  sub_26B955164(v10);
  (*(v8 + 8))(v7, v9);
  sub_26B8EACD8(v6, &qword_280426930, &qword_26B9B3470);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v33, v31);
  sub_26B8EACD8((v0 + 2), &qword_280426958, &qword_26B9B3498);

  v36 = v0[84];
  v11 = v0[75];
  v12 = v0[74];
  v13 = v0[70];
  v14 = v0[67];
  v15 = v0[64];
  v17 = v0[60];
  v16 = v0[61];
  v19 = v0[56];
  v18 = v0[57];
  v20 = v0[55];
  v23 = v0[54];
  v24 = v0[51];
  v25 = v0[50];
  v26 = v0[47];
  v27 = v0[46];
  v28 = v0[42];
  v29 = v0[41];
  v30 = v0[40];
  v32 = v0[39];
  v34 = v0[38];

  v21 = v0[1];

  return v21();
}

uint64_t sub_26B954A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a2;
  v6[10] = a3;
  v6[8] = a1;
  v7 = sub_26B9AB984();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_projectBox();
  v10 = sub_26B92A538();
  swift_beginAccess();
  v11 = *v10;
  v6[17] = v11;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B954B54, v11, 0);
}

uint64_t sub_26B954B54()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[9];
  v6 = sub_26B9AB9A4();
  v8 = v7;
  v0[18] = v6;
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  (*(v4 + 16))(v2, v1, v3);
  v10 = *(MEMORY[0x277D72548] + 4);
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_26B954C68;
  v12 = v0[15];
  v13 = v0[11];
  v14 = v0[12];
  v15 = v0[10];

  return MEMORY[0x2821DAA88](v15, v12, v13, v14, ObjectType, v8);
}

uint64_t sub_26B954C68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  v4[20] = v1;

  v7 = v4[18];
  v8 = v4[17];
  v9 = v4[15];
  v10 = v4[14];
  v11 = v4[13];
  if (v1)
  {
    (*(v10 + 8))(v9, v11);
    swift_unknownObjectRelease();
    v12 = sub_26B954EB4;
  }

  else
  {
    v4[21] = a1;
    (*(v10 + 8))(v9, v11);
    swift_unknownObjectRelease();
    v12 = sub_26B954E30;
  }

  return MEMORY[0x2822009F8](v12, v8, 0);
}

uint64_t sub_26B954E30()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[8];

  *v4 = v1;

  v5 = v0[1];

  return v5();
}

uint64_t sub_26B954EB4()
{
  v1 = v0[17];
  v2 = v0[15];

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_26B954F24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426930, &qword_26B9B3470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B954F94(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(sub_26B9ABFD4() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426930, &qword_26B9B3470) - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_26B9AC294() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v2 + v9);
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_26B8EB6C8;

  return sub_26B954A50(a1, a2, v2 + v8, v15, v2 + v11, v2 + v14);
}

uint64_t sub_26B955164(uint64_t a1)
{
  v2 = type metadata accessor for TypedValueResultBuilder.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x26D6879F0);
  }

  return result;
}

uint64_t sub_26B955210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AppEntityQueryDataSource.__deallocating_deinit()
{
  ToolKitQueryDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppEntityQueryDataSource()
{
  result = qword_28042E7E0;
  if (!qword_28042E7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppEnumQuery.representation.getter@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26B9AF300;
  v4 = (v1 + *(type metadata accessor for AppEnumQuery() + 20));
  v5 = v4[1];
  *(v3 + 32) = *v4;
  *(v3 + 40) = v5;
  *(v3 + 72) = 0;

  return QueryRepresentation.init(arrayLiteral:)(v3, a1);
}

uint64_t type metadata accessor for AppEnumQuery()
{
  result = qword_28042EA70;
  if (!qword_28042EA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppEnumQuery.definition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B9AC204();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppEnumQuery.definition.setter(uint64_t a1)
{
  v3 = sub_26B9AC204();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppEnumQuery.searchString.getter()
{
  v1 = (v0 + *(type metadata accessor for AppEnumQuery() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppEnumQuery.toolInvocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEnumQuery() + 24);
  v4 = sub_26B9AB984();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEnumQuery.parameterDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEnumQuery() + 28);
  v4 = sub_26B9AC0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEnumQuery.selectedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppEnumQuery() + 36);

  return sub_26B9523F8(v3, a1);
}

uint64_t AppEnumQuery.init(definition:searchString:toolInvocation:parameterDefinition:showAllCases:selectedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_26B9AC204();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = type metadata accessor for AppEnumQuery();
  v18 = (a8 + v17[5]);
  *v18 = a2;
  v18[1] = a3;
  v19 = v17[6];
  v20 = sub_26B9AB984();
  (*(*(v20 - 8) + 32))(a8 + v19, a4, v20);
  *(a8 + v17[8]) = a6;
  sub_26B952600(a7, a8 + v17[9]);
  v21 = v17[7];
  v22 = sub_26B9AC0E4();
  v23 = *(*(v22 - 8) + 32);

  return v23(a8 + v21, a5, v22);
}

uint64_t sub_26B955848(uint64_t a1)
{
  result = sub_26B955DB8(&qword_280426988, type metadata accessor for AppEnumQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B9558A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26B9AF300;
  v6 = (v2 + *(a1 + 20));
  v7 = v6[1];
  *(v5 + 32) = *v6;
  *(v5 + 40) = v7;
  *(v5 + 72) = 0;

  return QueryRepresentation.init(arrayLiteral:)(v5, a2);
}

uint64_t sub_26B95592C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B955DB8(&qword_2804269A0, type metadata accessor for AppEnumQuery);
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B955A38(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B955DB8(&qword_2804269A0, type metadata accessor for AppEnumQuery);
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B955B1C(uint64_t a1)
{
  result = sub_26B955DB8(&qword_280426990, type metadata accessor for AppEnumQuery);
  *(a1 + 8) = result;
  return result;
}

double sub_26B955B74@<D0>(uint64_t a1@<X8>)
{
  sub_26B955DB8(&qword_280426998, type metadata accessor for AppEnumQuery);

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B955BF0(uint64_t a1)
{
  result = sub_26B955DB8(&qword_2804260D0, type metadata accessor for AppEnumQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B955C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B955DB8(&qword_2804260D0, type metadata accessor for AppEnumQuery);

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

void sub_26B955CF4()
{
  sub_26B9AC204();
  if (v0 <= 0x3F)
  {
    sub_26B9AB984();
    if (v1 <= 0x3F)
    {
      sub_26B9AC0E4();
      if (v2 <= 0x3F)
      {
        sub_26B952C48();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26B955DB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B955E04(uint64_t a1)
{
  v1[5] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = *(*(type metadata accessor for TypedValueResultBuilder.Config(0) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_26B92A538();
  swift_beginAccess();
  v6 = *v5;
  v1[9] = v6;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B955F30, v6, 0);
}

uint64_t sub_26B955F30()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = MEMORY[0x26D6860C0]();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  v7 = sub_26B95659C(sub_26B956570, v6, v5);

  type metadata accessor for FuzzyRanker();
  v8 = type metadata accessor for AppEnumQuery();
  v9 = sub_26B97294C(v7, *(v4 + v8[5]), *(v4 + v8[5] + 8), v4 + v8[9], *(v4 + v8[8]));
  v0[10] = v9;

  v10 = v4 + v8[6];
  sub_26B9AB934();
  v11 = sub_26B9AB914();
  (*(*(v11 - 8) + 56))(v1, 0, 1, v11);
  v12 = v8[7];
  v13 = sub_26B9AC0E4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v3, v4 + v12, v13);
  (*(v14 + 56))(v3, 0, 1, v13);
  sub_26B964AE0(0, 0, v1, v3, 0, 2, v2);
  type metadata accessor for TypedValueResultBuilder(0);
  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  v15[1] = sub_26B956180;
  v16 = v0[8];

  return sub_26B965780(v9, v16);
}

uint64_t sub_26B956180(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  v4[12] = v1;

  v7 = v4[10];
  v8 = v4[9];

  if (v1)
  {
    v9 = sub_26B95636C;
  }

  else
  {
    v4[13] = a1;
    v9 = sub_26B9562D8;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_26B9562D8()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  sub_26B955164(v2);

  v5 = v0[1];
  v6 = v0[13];

  return v5(v6);
}

uint64_t sub_26B95636C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  sub_26B955164(v2);

  v5 = v0[1];
  v6 = v0[12];

  return v5();
}

uint64_t sub_26B9563FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_26B9ABF24();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_26B9ABCC4();
  v6 = swift_allocBox();
  sub_26B9AC1E4();
  sub_26B9AC244();
  sub_26B9AC234();
  sub_26B9ABCB4();
  *a1 = v6;
  v7 = *MEMORY[0x277D729E8];
  v8 = sub_26B9ABE84();
  return (*(*(v8 - 8) + 104))(a1, v7, v8);
}

uint64_t sub_26B95659C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_26B9ABE84();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x277D84F90];
  sub_26B956858(0, v10, 0);
  v11 = v23;
  v12 = *(sub_26B9AC254() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v19 = v6 + 32;
  v18 = *(v12 + 72);
  while (1)
  {
    v21(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_26B956858(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v20);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t AppEnumQueryDataSource.__deallocating_deinit()
{
  ToolKitQueryDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppEnumQueryDataSource()
{
  result = qword_28042EA80;
  if (!qword_28042EA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

size_t sub_26B956858(size_t a1, int64_t a2, char a3)
{
  result = sub_26B956878(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26B956878(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D0, &unk_26B9B0A60);
  v10 = *(sub_26B9ABE84() - 8);
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
  v15 = *(sub_26B9ABE84() - 8);
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

uint64_t BoolParameterQuery.searchString.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BoolParameterQuery.toolInvocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoolParameterQuery() + 20);
  v4 = sub_26B9AB984();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for BoolParameterQuery()
{
  result = qword_28042ED10;
  if (!qword_28042ED10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BoolParameterQuery.parameterDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoolParameterQuery() + 24);
  v4 = sub_26B9AC0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoolParameterQuery.init(searchString:toolInvocation:parameterDefinition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for BoolParameterQuery();
  v9 = *(v8 + 20);
  v10 = sub_26B9AB984();
  (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  v11 = *(v8 + 24);
  v12 = sub_26B9AC0E4();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a5[v11], a4, v12);
}

uint64_t sub_26B956CEC(uint64_t a1)
{
  result = sub_26B9571AC(&qword_2804269B0, type metadata accessor for BoolParameterQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B956D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B9571AC(&qword_2804269C8, type metadata accessor for BoolParameterQuery);
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B956E5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B9571AC(&qword_2804269C8, type metadata accessor for BoolParameterQuery);
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B956F40(uint64_t a1)
{
  result = sub_26B9571AC(&qword_2804269B8, type metadata accessor for BoolParameterQuery);
  *(a1 + 8) = result;
  return result;
}

double sub_26B956F98@<D0>(uint64_t a1@<X8>)
{
  sub_26B9571AC(&qword_2804269C0, type metadata accessor for BoolParameterQuery);

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B957014(uint64_t a1)
{
  result = sub_26B9571AC(&qword_2804260C0, type metadata accessor for BoolParameterQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B95706C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B9571AC(&qword_2804260C0, type metadata accessor for BoolParameterQuery);

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B957118()
{
  result = sub_26B9AB984();
  if (v1 <= 0x3F)
  {
    result = sub_26B9AC0E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B9571AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B9571F8(uint64_t a1)
{
  v1[5] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = *(*(type metadata accessor for TypedValueResultBuilder.Config(0) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = sub_26B92A538();
  swift_beginAccess();
  v7 = *v6;
  v1[10] = v7;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B95735C, v7, 0);
}

uint64_t sub_26B95735C()
{
  v1 = v0[9];
  v32 = v0[7];
  v33 = v0[6];
  v34 = v0[8];
  v29 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D0, &unk_26B9B0A60);
  v26 = sub_26B9ABE84();
  v27 = *(*(v26 - 8) + 72);
  v25 = *(v26 - 8);
  v2 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_26B9AF560;
  v3 = (v28 + v2);
  v4 = sub_26B9ABE44();
  v5 = swift_allocBox();
  *v6 = 1;
  v7 = *MEMORY[0x277D72988];
  v8 = *(*(v4 - 8) + 104);
  v8(v6, v7, v4);
  *v3 = v5;
  v9 = *MEMORY[0x277D72A58];
  v10 = *(v25 + 104);
  v10(v28 + v2, v9, v26);
  v11 = swift_allocBox();
  *v12 = 0;
  v8(v12, v7, v4);
  *(v3 + v27) = v11;
  v10(v3 + v27, v9, v26);
  type metadata accessor for FuzzyRanker();
  v13 = *v29;
  v14 = v29[1];
  (*(v25 + 56))(v30, 1, 1, v26);
  v15 = sub_26B97294C(v28, v13, v14, v30, 1);
  v31[11] = v15;

  sub_26B9579B8(v30);
  v16 = type metadata accessor for BoolParameterQuery();
  v17 = v29 + *(v16 + 20);
  sub_26B9AB934();
  v18 = sub_26B9AB914();
  (*(*(v18 - 8) + 56))(v32, 0, 1, v18);
  v19 = *(v16 + 24);
  v20 = sub_26B9AC0E4();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v33, v29 + v19, v20);
  (*(v21 + 56))(v33, 0, 1, v20);
  sub_26B964AE0(0, 0, v32, v33, 0, 2, v34);
  type metadata accessor for TypedValueResultBuilder(0);
  v22 = swift_task_alloc();
  v31[12] = v22;
  *v22 = v31;
  v22[1] = sub_26B957724;
  v23 = v31[8];

  return sub_26B965780(v15, v23);
}

uint64_t sub_26B957724(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *v2;
  v4[13] = v1;

  v8 = v4[10];
  if (v1)
  {
    v9 = sub_26B95791C;
  }

  else
  {
    v4[14] = a1;
    v9 = sub_26B95787C;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_26B95787C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  sub_26B955164(v3);

  v6 = v0[1];
  v7 = v0[14];

  return v6(v7);
}

uint64_t sub_26B95791C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  sub_26B955164(v3);

  v6 = v0[1];
  v7 = v0[13];

  return v6();
}

uint64_t sub_26B9579B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BoolParameterQueryDataSource.__deallocating_deinit()
{
  ToolKitQueryDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BoolParameterQueryDataSource()
{
  result = qword_28042ED20;
  if (!qword_28042ED20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CustomEnumerableParameterQuery.searchString.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CustomEnumerableParameterQuery.selectedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  v6 = sub_26B9ACA34();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t CustomEnumerableParameterQuery.init(searchString:showAllCases:selectedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for CustomEnumerableParameterQuery() + 40);
  v8 = sub_26B9ACA34();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t sub_26B957C60(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B957CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  WitnessTable = swift_getWitnessTable();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_26B957DA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, WitnessTable);
}

uint64_t sub_26B957E74(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double sub_26B957EB0@<D0>(uint64_t a1@<X8>)
{
  swift_getWitnessTable();

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B957F14(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B957F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static Query.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_26B957FC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_26B9ACA34();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26B95804C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 17) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 17) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a1 + 1);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_26B958204(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 17) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = (&a1[v11 + 17] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = &a1[v11 + 17] & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_26B95852C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v8 = a2[1];
  if (v7)
  {
    if (v8)
    {
      v9 = *a1;
      v10 = *a1 == *a2 && v7 == v8;
      if (v10 || (sub_26B9ACEB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    v11 = *(type metadata accessor for CustomEnumerableParameterQueryDataSource.RankableValue() + 36);
    v12 = *(*(a4 + 8) + 8);
    return sub_26B9AC494() & 1;
  }

  return 0;
}

uint64_t sub_26B9585CC(uint64_t a1, uint64_t a2)
{
  if (v2[1])
  {
    v4 = *v2;
    sub_26B9ACFD4();
    sub_26B9AC574();
  }

  else
  {
    sub_26B9ACFD4();
  }

  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  v7 = v2 + *(a2 + 36);
  return sub_26B9AC464();
}

uint64_t sub_26B958654(uint64_t a1)
{
  sub_26B9ACFB4();
  sub_26B9585CC(v3, a1);
  return sub_26B9ACFF4();
}

uint64_t sub_26B9586A4(uint64_t a1, uint64_t a2)
{
  sub_26B9ACFB4();
  sub_26B9585CC(v4, a2);
  return sub_26B9ACFF4();
}

uint64_t sub_26B95870C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a3;
  v5[33] = a4;
  v5[31] = a1;
  v7 = *v4;
  v5[34] = *(*v4 + 80);
  v5[35] = *(v7 + 88);
  v5[36] = type metadata accessor for CustomEnumerableParameterQueryDataSource.RankableValue();
  v8 = sub_26B9ACA34();
  v5[37] = v8;
  v9 = *(v8 - 8);
  v5[38] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *(a2 + 24);
  v5[39] = v11;
  v5[40] = v12;
  v13 = sub_26B92A538();
  swift_beginAccess();
  v14 = *v13;
  v5[41] = v14;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B958848, v14, 0);
}

uint64_t sub_26B958848()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v0[30] = sub_26B9AB3B4();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_26B9AC7B4();
  swift_getWitnessTable();
  v24 = sub_26B9AC654();

  v0[42] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  swift_initStackObject();
  v5 = sub_26B9AC714();
  v7 = v6;
  v8 = swift_task_alloc();
  *v8 = v3;
  v8[1] = v2;
  KeyPath = swift_getKeyPath();

  *v7 = KeyPath;
  v10 = sub_26B9AD024();
  sub_26B9AC7B4();
  if (sub_26B9AC784())
  {
    v11 = sub_26B959AAC(v5, v10, MEMORY[0x277D83F88]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v12 = v0[38];
  v13 = v0[39];
  v14 = v0[36];
  v23 = v0[37];
  v15 = v0[31];

  type metadata accessor for FuzzyRanker();
  v16 = *v15;
  v17 = *(v15 + 8);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  LOBYTE(v15) = *(v15 + 16);
  swift_getWitnessTable();
  v18 = sub_26B9731BC(v24, v11, v16, v17, v13, v15, v14);
  v0[43] = v18;

  (*(v12 + 8))(v13, v23);
  v19 = swift_task_alloc();
  v0[44] = v19;
  *v19 = v0;
  v19[1] = sub_26B958B30;
  v20 = v0[34];
  v21 = v0[35];

  return sub_26B959E68(v18);
}

uint64_t sub_26B958B30(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 352);
  v7 = *v2;

  v8 = *(v4 + 344);
  v9 = *(v4 + 328);
  if (v1)
  {

    v10 = sub_26B959000;
  }

  else
  {

    *(v5 + 360) = a1;
    v10 = sub_26B958C98;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_26B958C98()
{
  v1 = *(v0 + 360);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v21 = *(v0 + 360);
    }

    if (sub_26B9ACB44())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = *(v0 + 336);
    v3 = *(v0 + 320);
    v4 = *(v0 + 256);
    v5 = [objc_allocWithZone(MEMORY[0x277D65848]) init];
    *(v0 + 368) = v5;
    v6 = v5;
    v7 = sub_26B9AC4C4();
    [v6 setTitle_];

    v8 = sub_26B9AC4C4();
    [v6 setIdentifier_];

    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
    v9 = sub_26B9AC6E4();

    [v6 setResults_];

    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26B9B1290;
    *(v10 + 32) = v6;
    v11 = sub_26B906128();
    SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v10, v3, 1, 1, 0, v11 & 1, v0 + 56);
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    v14 = *(v0 + 73);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);
    *(v0 + 96) = *(v0 + 56);
    *(v0 + 104) = v12;
    *(v0 + 112) = v13;
    *(v0 + 113) = v14;
    *(v0 + 120) = v15;
    *(v0 + 128) = v16;
    v33 = (v4 + *v4);
    v17 = v4[1];
    v18 = swift_task_alloc();
    *(v0 + 376) = v18;
    *v18 = v0;
    v18[1] = sub_26B959378;
    v19 = *(v0 + 264);
    v20 = v0 + 96;
    goto LABEL_8;
  }

  v22 = *(v0 + 320);
  v23 = *(v0 + 256);

  static SearchResults.empty(queryID:)(v22, v0 + 136);
  v24 = *(v0 + 144);
  v25 = *(v0 + 152);
  v26 = *(v0 + 153);
  v27 = *(v0 + 160);
  v28 = *(v0 + 168);
  *(v0 + 176) = *(v0 + 136);
  *(v0 + 184) = v24;
  *(v0 + 192) = v25;
  *(v0 + 193) = v26;
  *(v0 + 200) = v27;
  *(v0 + 208) = v28;
  v33 = (v23 + *v23);
  v29 = v23[1];
  v30 = swift_task_alloc();
  *(v0 + 384) = v30;
  *v30 = v0;
  v30[1] = sub_26B95953C;
  v31 = *(v0 + 264);
  v20 = v0 + 176;
LABEL_8:

  return v33(v20);
}

uint64_t sub_26B959000()
{
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_26B9ACB44())
    {
      goto LABEL_3;
    }
  }

  else if (*((MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v1 = *(v0 + 336);
    v2 = *(v0 + 320);
    v3 = *(v0 + 256);
    v4 = [objc_allocWithZone(MEMORY[0x277D65848]) init];
    *(v0 + 368) = v4;
    v5 = v4;
    v6 = sub_26B9AC4C4();
    [v5 setTitle_];

    v7 = sub_26B9AC4C4();
    [v5 setIdentifier_];

    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
    v8 = sub_26B9AC6E4();

    [v5 setResults_];

    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26B9B1290;
    *(v9 + 32) = v5;
    v10 = sub_26B906128();
    SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v9, v2, 1, 1, 0, v10 & 1, v0 + 56);
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v13 = *(v0 + 73);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    *(v0 + 96) = *(v0 + 56);
    *(v0 + 104) = v11;
    *(v0 + 112) = v12;
    *(v0 + 113) = v13;
    *(v0 + 120) = v14;
    *(v0 + 128) = v15;
    v31 = (v3 + *v3);
    v16 = v3[1];
    v17 = swift_task_alloc();
    *(v0 + 376) = v17;
    *v17 = v0;
    v17[1] = sub_26B959378;
    v18 = *(v0 + 264);
    v19 = v0 + 96;
    goto LABEL_6;
  }

  v20 = *(v0 + 320);
  v21 = *(v0 + 256);

  static SearchResults.empty(queryID:)(v20, v0 + 136);
  v22 = *(v0 + 144);
  v23 = *(v0 + 152);
  v24 = *(v0 + 153);
  v25 = *(v0 + 160);
  v26 = *(v0 + 168);
  *(v0 + 176) = *(v0 + 136);
  *(v0 + 184) = v22;
  *(v0 + 192) = v23;
  *(v0 + 193) = v24;
  *(v0 + 200) = v25;
  *(v0 + 208) = v26;
  v31 = (v21 + *v21);
  v27 = v21[1];
  v28 = swift_task_alloc();
  *(v0 + 384) = v28;
  *v28 = v0;
  v28[1] = sub_26B95953C;
  v29 = *(v0 + 264);
  v19 = v0 + 176;
LABEL_6:

  return v31(v19);
}

uint64_t sub_26B959378()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 328);
  v7 = *v0;

  v4 = *(v1 + 96);
  v5 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_26B9594C8, v3, 0);
}

uint64_t sub_26B9594C8()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26B95953C()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 328);
  v7 = *v0;

  v4 = *(v1 + 176);
  v5 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_26B95968C, v3, 0);
}

uint64_t sub_26B95968C()
{
  v1 = v0[41];
  v2 = v0[39];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B959710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = sub_26B9AB2F4();
  if (v3)
  {

    Data = type metadata accessor for CustomEnumerableParameterQueryDataSource.RankableValue();
    return (*(*(Data - 8) + 56))(a3, 1, 1, Data);
  }

  else
  {
    v17 = v13;
    v18 = v14;
    (*(v7 + 16))(v10, a1, a2);
    *a3 = v17;
    a3[1] = v18;
    v19 = type metadata accessor for CustomEnumerableParameterQueryDataSource.RankableValue();
    (*(v7 + 32))(a3 + *(v19 + 36), v10, a2);
    return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
  }
}

uint64_t sub_26B9598E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26B972A68(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26B959930@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t sub_26B959968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 104);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EB6C8;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_26B959AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v53 = &v41 - v12;
  v42 = v13;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  if (sub_26B9AC784())
  {
    sub_26B9ACBB4();
    v16 = sub_26B9ACBA4();
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v46 = sub_26B9AC784();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_26B9AC764();
    sub_26B9AC724();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_26B9ACC24();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_26B9AC454();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v10, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_26B9AC494();
        v35 = *v50;
        (*v50)(v10, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_26B959E68(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_26B9AB1F4();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = sub_26B9ABE84();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  Data = type metadata accessor for CustomEnumerableParameterQueryDataSource.RankableValue();
  v1[13] = Data;
  v9 = *(Data - 8);
  v1[14] = v9;
  v1[15] = *(v9 + 64);
  v1[16] = swift_task_alloc();
  v10 = sub_26B92A538();
  swift_beginAccess();
  v11 = *v10;

  return MEMORY[0x2822009F8](sub_26B95A010, v11, 0);
}

uint64_t sub_26B95A010()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = MEMORY[0x277D84F90];
  v76 = MEMORY[0x277D84F90];
  v4 = sub_26B9AAFB4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_26B9AAFA4();
  if (sub_26B9AC784())
  {
    v7 = 0;
    v8 = v0[14];
    v57 = v0[15];
    v70 = (v8 + 16);
    v69 = v8;
    v68 = (v8 + 8);
    v9 = v0[11];
    v61 = (v9 + 104);
    v62 = (v9 + 8);
    v58 = (v0[8] + 8);
    v63 = MEMORY[0x277D84F90];
    v10 = &off_279D10000;
    v67 = v0[16];
    v59 = *MEMORY[0x277D72A58];
    v60 = *MEMORY[0x277D729B8];
    while (1)
    {
      v13 = v0[13];
      v14 = v0[6];
      v15 = sub_26B9AC764();
      sub_26B9AC724();
      if (v15)
      {
        (*(v69 + 16))(v0[16], v0[6] + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v7, v0[13]);
        v16 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        v46 = v0[13];
        v47 = v0[6];
        result = sub_26B9ACC24();
        if (v57 != 8)
        {
          __break(1u);
          return result;
        }

        v49 = v0[16];
        v50 = v0[13];
        v0[5] = result;
        (*v70)(v49, (v0 + 5), v50);
        swift_unknownObjectRelease();
        v16 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      v73 = v16;
      v17 = v0[16];
      v18 = v0[13];
      v19 = [objc_allocWithZone(MEMORY[0x277D65850]) *(v10 + 280)];
      v20 = [objc_allocWithZone(MEMORY[0x277D4C328]) *(v10 + 280)];
      v74 = *v17;
      v21 = *(v67 + 8);
      v22 = *v68;

      v22(v17, v18);
      if (v21)
      {
        v23 = v20;
        v72 = v19;
        v24 = sub_26B9AC4C4();
        v25 = [objc_opt_self() textWithString_];

        if (v25)
        {
          v26 = v0[12];
          v27 = v0[10];
          [v25 setMaxLines_];
          v66 = v25;
          [v23 setTitle_];
          v28 = [objc_allocWithZone(MEMORY[0x277D4C688]) v10 + 2936];
          v29 = sub_26B9AC4C4();
          [v28 setSymbolName_];

          [v28 setPunchThroughBackground_];
          v65 = v23;
          [v23 setThumbnail_];
          v30 = v10;
          v71 = [objc_allocWithZone(MEMORY[0x277D4C380]) v10 + 2936];
          v31 = sub_26B9ABE44();
          v32 = swift_allocBox();
          *v33 = v74;
          v33[1] = v21;
          (*(*(v31 - 8) + 104))(v33, v60, v31);
          *v26 = v32;
          (*v61)(v26, v59, v27);
          sub_26B95AECC();
          v34 = sub_26B9AAF94();
          v36 = v35;
          v75 = v28;
          v37 = v0[9];
          v64 = v0[7];
          (*v62)(v0[12], v0[10]);
          v38 = sub_26B9AB114();
          sub_26B922394(v34, v36);
          [v71 setEncodedTypedValue_];

          v39 = v65;
          [v39 setCommand_];
          v40 = [objc_allocWithZone(MEMORY[0x277D4C230]) v30 + 2936];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_26B9B1290;
          *(v41 + 32) = v39;
          sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
          v42 = sub_26B9AC6E4();

          [v40 setCardSections_];

          v43 = v72;
          [v43 setInlineCard_];
          sub_26B9AA884();
          sub_26B9AB1C4();
          (*v58)(v37, v64);
          v44 = sub_26B9AC4C4();

          [v43 setIdentifier_];

          v45 = v43;
          MEMORY[0x26D6865A0]();
          v10 = v30;
          if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v51 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_26B9AC734();
          }

          sub_26B9AC774();

          v63 = v76;
        }

        else
        {
        }
      }

      else
      {
      }

      v11 = v0[13];
      v12 = v0[6];
      ++v7;
      if (v73 == sub_26B9AC784())
      {
        goto LABEL_18;
      }
    }
  }

  v63 = v3;
LABEL_18:
  if (v63 >> 62)
  {
LABEL_24:
    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);

    v52 = sub_26B9ACD34();
  }

  else
  {

    sub_26B9ACEC4();

    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
    v52 = v63;
  }

  v53 = v0[16];
  v54 = v0[12];
  v55 = v0[9];

  v56 = v0[1];

  return v56(v52);
}

uint64_t dispatch thunk of CustomEnumerableParameterQueryDataSource.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 104);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EB6C8;

  return v14(a1, a2, a3, a4);
}

void sub_26B95A9E0(uint64_t a1)
{
  sub_26B95AE60();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26B95AA68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      if ((v15 + 1) >= 2)
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_26B95ABFC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2;
  }
}

void sub_26B95AE60()
{
  if (!qword_2804269D0)
  {
    v0 = sub_26B9ACA34();
    if (!v1)
    {
      atomic_store(v0, &qword_2804269D0);
    }
  }
}

unint64_t sub_26B95AECC()
{
  result = qword_280426FD0;
  if (!qword_280426FD0)
  {
    sub_26B9ABE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426FD0);
  }

  return result;
}

uint64_t sub_26B95AF24@<X0>(void *a1@<X8>)
{
  v51 = a1;
  v2 = sub_26B9ABD44();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B9ABF24();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B9AC014();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426358, &qword_26B9B39D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v43 - v15;
  v17 = sub_26B9ABF94();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entityDefinition;
  swift_beginAccess();
  sub_26B9236E8(v1 + v22, v16, &qword_280426358, &qword_26B9B39D0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_26B8EACD8(v16, &qword_280426358, &qword_26B9B39D0);
    _s18ResolutionStrategyOMa(0);
  }

  else
  {
    v23 = v51;
    v44 = v1;
    (*(v18 + 32))(v21, v16, v17);
    (*(v9 + 104))(v12, *MEMORY[0x277D73000], v8);
    v24 = sub_26B9ABF84();
    (*(v9 + 8))(v12, v8);
    if ((v24 & 1) != 0 && (v25 = v48, sub_26B9ABF74(), v26 = sub_26B91EBC0(v25), v28 = v27, v30 = v29, v32 = v31, (*(v49 + 8))(v25, v50), v28))
    {
      v49 = v30;
      v50 = v32;
      v34 = v46;
      v33 = v47;
      v35 = *(v46 + 16);
      v48 = v26;
      v36 = v45;
      v35(v45, v44 + OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entity, v47);
      v37 = sub_26B9ABCA4();
      v39 = v38;
      (*(v34 + 8))(v36, v33);
      (*(v18 + 8))(v21, v17);
      v40 = v49;
      *v23 = v48;
      v23[1] = v28;
      v41 = v50;
      v23[2] = v40;
      v23[3] = v41;
      v23[4] = v37;
      v23[5] = v39;
      _s18ResolutionStrategyOMa(0);
    }

    else
    {
      (*(v18 + 8))(v21, v17);
      _s18ResolutionStrategyOMa(0);
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26B95B3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 48);
  v9 = *(v3 + 52);
  swift_allocObject();
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26B95B478;

  return sub_26B95B574(a1, a2, a3);
}

uint64_t sub_26B95B478(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_26B95B574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(type metadata accessor for TypedValueResultBuilder.Config(0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v6 = sub_26B9ABE84();
  v4[13] = v6;
  v7 = *(v6 - 8);
  v4[14] = v7;
  v8 = *(v7 + 64) + 15;
  v4[15] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v10 = sub_26B9ABE44();
  v4[17] = v10;
  v11 = *(v10 - 8);
  v4[18] = v11;
  v12 = *(v11 + 64) + 15;
  v4[19] = swift_task_alloc();
  v13 = sub_26B9ABDE4();
  v4[20] = v13;
  v14 = *(v13 - 8);
  v4[21] = v14;
  v15 = *(v14 + 64) + 15;
  v4[22] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v19 = sub_26B9ABD04();
  v4[27] = v19;
  v20 = *(v19 - 8);
  v4[28] = v20;
  v21 = *(v20 + 64) + 15;
  v4[29] = swift_task_alloc();
  v22 = sub_26B9AC014();
  v4[30] = v22;
  v23 = *(v22 - 8);
  v4[31] = v23;
  v24 = *(v23 + 64) + 15;
  v4[32] = swift_task_alloc();
  v25 = sub_26B9ABF94();
  v4[33] = v25;
  v26 = *(v25 - 8);
  v4[34] = v26;
  v27 = *(v26 + 64) + 15;
  v4[35] = swift_task_alloc();
  v28 = sub_26B9ABF24();
  v4[36] = v28;
  v29 = *(v28 - 8);
  v4[37] = v29;
  v30 = *(v29 + 64) + 15;
  v4[38] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426358, &qword_26B9B39D0) - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B95B9BC, 0, 0);
}

uint64_t sub_26B95B9BC()
{
  v1 = v0[40];
  v3 = v0[37];
  v2 = v0[38];
  v67 = v0[36];
  v68 = v0[39];
  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[11];
  v7 = v0[8];
  v8 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entityDefinition;
  (*(v5 + 56))(v6 + OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entityDefinition, 1, 1, v4);
  v9 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_fileURL;
  v0[41] = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_fileURL;
  v10 = sub_26B9AB104();
  v0[42] = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v0[43] = v12;
  v0[44] = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v12(v6 + v9, 1, 1, v10);
  v13 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entity;
  v14 = sub_26B9ABD44();
  v0[45] = v14;
  v15 = *(v14 - 8);
  v0[46] = v15;
  (*(v15 + 16))(v6 + v13, v7, v14);
  sub_26B9ABCF4();
  static ToolKitUtilities.entityDefinition(for:)(v2, v1);
  (*(v3 + 8))(v2, v67);
  swift_beginAccess();
  sub_26B949F7C(v1, v6 + v8, &qword_280426358, &qword_26B9B39D0);
  swift_endAccess();
  sub_26B9236E8(v6 + v8, v68, &qword_280426358, &qword_26B9B39D0);
  v16 = (*(v5 + 48))(v68, 1, v4);
  v17 = v0[39];
  if (v16 == 1)
  {
    sub_26B8EACD8(v0[39], &qword_280426358, &qword_26B9B39D0);
LABEL_8:
    v44 = v0[46];
    v55 = v0[45];
    v56 = v0[40];
    v57 = v0[39];
    v58 = v0[38];
    v59 = v0[35];
    v60 = v0[32];
    v61 = v0[29];
    v62 = v0[26];
    v63 = v0[25];
    v64 = v0[24];
    v65 = v0[23];
    v66 = v0[22];
    v45 = v0[15];
    v47 = v0[13];
    v46 = v0[14];
    v49 = v0[11];
    v48 = v0[12];
    v51 = v0[9];
    v50 = v0[10];
    v52 = v0[8];
    (*(v46 + 16))(v45, v51, v47);
    sub_26B95C6A0(v50, v48);
    v53 = sub_26B965300(v45, v48);
    sub_26B955164(v50);
    (*(v46 + 8))(v51, v47);
    (*(v44 + 8))(v52, v55);

    v54 = v0[1];

    return v54(v53);
  }

  v18 = v0[32];
  v19 = v0[30];
  v20 = v0[31];
  (*(v0[34] + 32))(v0[35], v0[39], v0[33]);
  (*(v20 + 104))(v18, *MEMORY[0x277D73008], v19);
  v21 = sub_26B9ABF84();
  (*(v20 + 8))(v18, v19);
  if ((v21 & 1) == 0)
  {
    (*(v0[34] + 8))(v0[35], v0[33]);
    goto LABEL_8;
  }

  v23 = v0[37];
  v22 = v0[38];
  v24 = v0[36];
  v25 = v0[29];
  v26 = v0[26];
  v27 = v0[23];
  v28 = v0[8];
  sub_26B9ABCF4();
  sub_26B9ABCA4();
  v29 = sub_26B9AC1D4();
  (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
  sub_26B9ABCE4();
  v30 = swift_allocBox();
  v32 = v31;
  v33 = sub_26B9ABF04();
  v34 = swift_allocBox();
  (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D72CC0], v33);
  *v32 = v34;
  (*(v23 + 104))(v32, *MEMORY[0x277D72D50], v24);
  *v27 = v30;
  v36 = *MEMORY[0x277D72AD0];
  v37 = sub_26B9ABEB4();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v27, v36, v37);
  (*(v38 + 56))(v27, 0, 1, v37);
  v39 = swift_task_alloc();
  v0[47] = v39;
  *v39 = v0;
  v39[1] = sub_26B95BFE8;
  v40 = v0[29];
  v41 = v0[25];
  v42 = v0[23];

  return static ToolKitUtilities.resolve(entityIdentifier:expectedType:)(v41, v40, v42);
}

uint64_t sub_26B95BFE8()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 184);
  v4 = *v0;

  sub_26B8EACD8(v2, &qword_2804262A8, &qword_26B9B09B0);

  return MEMORY[0x2822009F8](sub_26B95C110, 0, 0);
}

uint64_t sub_26B95C110()
{
  v1 = v0[24];
  v2 = v0[13];
  v3 = v0[14];
  sub_26B9236E8(v0[25], v1, &qword_2804260C8, &qword_26B9B0050);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[34];
    v4 = v0[35];
    v6 = v0[33];
    v8 = v0[28];
    v7 = v0[29];
    v9 = v0[27];
    v10 = v0[24];
    sub_26B8EACD8(v0[25], &qword_2804260C8, &qword_26B9B0050);
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    sub_26B8EACD8(v10, &qword_2804260C8, &qword_26B9B0050);
  }

  else if ((*(v0[14] + 88))(v0[24], v0[13]) == *MEMORY[0x277D72A58])
  {
    v11 = v0[24];
    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[17];
    (*(v0[14] + 96))(v11, v0[13]);
    v15 = *v11;
    v16 = swift_projectBox();
    (*(v13 + 16))(v12, v16, v14);
    if ((*(v13 + 88))(v12, v14) == *MEMORY[0x277D72998])
    {
      v18 = v0[21];
      v17 = v0[22];
      v20 = v0[19];
      v19 = v0[20];
      (*(v0[18] + 96))(v20, v0[17]);
      (*(v18 + 32))(v17, v20, v19);

      v21 = sub_26B9ABDD4();
      v22 = [v21 fileURL];

      if (v22)
      {
        v23 = v0[16];
        sub_26B9AB0C4();

        v78 = 0;
      }

      else
      {
        v78 = 1;
      }

      v77 = v0[44];
      v41 = v0[41];
      v73 = v0[42];
      v75 = v0[43];
      v42 = v0[34];
      v71 = v0[35];
      v43 = v0[33];
      v44 = v0[28];
      v45 = v0[29];
      v46 = v0[27];
      v47 = v0[25];
      v48 = v0[16];
      v49 = v0[11];
      (*(v0[21] + 8))(v0[22], v0[20]);
      sub_26B8EACD8(v47, &qword_2804260C8, &qword_26B9B0050);
      (*(v44 + 8))(v45, v46);
      (*(v42 + 8))(v71, v43);
      v75(v48, v78, 1, v73);
      swift_beginAccess();
      sub_26B949F7C(v48, v49 + v41, &qword_280426308, &qword_26B9B0CD0);
      swift_endAccess();
    }

    else
    {
      v33 = v0[34];
      v79 = v0[35];
      v34 = v0[33];
      v36 = v0[28];
      v35 = v0[29];
      v37 = v0[27];
      v38 = v0[18];
      v39 = v0[19];
      v40 = v0[17];
      sub_26B8EACD8(v0[25], &qword_2804260C8, &qword_26B9B0050);
      (*(v36 + 8))(v35, v37);
      (*(v33 + 8))(v79, v34);
      (*(v38 + 8))(v39, v40);
    }
  }

  else
  {
    v25 = v0[34];
    v24 = v0[35];
    v26 = v0[33];
    v28 = v0[28];
    v27 = v0[29];
    v29 = v0[27];
    v30 = v0[24];
    v31 = v0[13];
    v32 = v0[14];
    sub_26B8EACD8(v0[25], &qword_2804260C8, &qword_26B9B0050);
    (*(v28 + 8))(v27, v29);
    (*(v25 + 8))(v24, v26);
    (*(v32 + 8))(v30, v31);
  }

  v50 = v0[46];
  v62 = v0[45];
  v63 = v0[40];
  v64 = v0[39];
  v65 = v0[38];
  v66 = v0[35];
  v67 = v0[32];
  v68 = v0[29];
  v69 = v0[26];
  v70 = v0[25];
  v72 = v0[24];
  v74 = v0[23];
  v76 = v0[22];
  v51 = v0[15];
  v53 = v0[13];
  v52 = v0[14];
  v55 = v0[11];
  v54 = v0[12];
  v57 = v0[9];
  v56 = v0[10];
  v58 = v0[8];
  (*(v52 + 16))(v51, v57, v53);
  sub_26B95C6A0(v56, v54);
  v59 = sub_26B965300(v51, v54);
  sub_26B955164(v56);
  (*(v52 + 8))(v57, v53);
  (*(v50 + 8))(v58, v62);

  v60 = v0[1];

  return v60(v59);
}

uint64_t sub_26B95C6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypedValueResultBuilder.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_26B95C704()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = sub_26B9AB104();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v11 = v0 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + v10;
  if (sub_26B964A90(*v11, *(v11 + 8)))
  {
    result = sub_26B95C984();
    if (!result)
    {
      v13 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_fileURL;
      swift_beginAccess();
      sub_26B9236E8(v0 + v13, v4, &qword_280426308, &qword_26B9B0CD0);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_26B8EACD8(v4, &qword_280426308, &qword_26B9B0CD0);
        return sub_26B96A848();
      }

      else
      {
        (*(v6 + 32))(v9, v4, v5);
        v14 = [objc_allocWithZone(MEMORY[0x277D4C4E8]) init];
        v15 = sub_26B9AB0A4();
        v16 = [objc_opt_self() punchoutWithURL_];

        [v14 setPunchout_];
        (*(v6 + 8))(v9, v5);
        return v14;
      }
    }
  }

  else
  {

    return sub_26B96A848();
  }

  return result;
}

id sub_26B95C984()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426218, &qword_26B9B0890);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v97 = &v87 - v2;
  v96 = sub_26B9AB984();
  v95 = *(v96 - 8);
  v3 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v98 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_26B9AB914();
  v99 = *(v100 - 8);
  v5 = *(v99 + 64);
  v6 = MEMORY[0x28223BE20](v100);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v87 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v87 - v12;
  v14 = sub_26B9ABC64();
  v112 = *(v14 - 8);
  v113 = v14;
  v15 = *(v112 + 64);
  MEMORY[0x28223BE20](v14);
  v110 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26B9AB224();
  v111 = *(v17 - 8);
  v18 = *(v111 + 64);
  MEMORY[0x28223BE20](v17);
  v109 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_26B9AB854();
  v106 = *(v107 - 8);
  v20 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v105 = (&v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_26B9ABD44();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_26B9ABA34();
  v102 = *(v103 - 8);
  v27 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v101 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_26B9ABA14();
  v108 = *(v116 - 8);
  v29 = *(v108 + 64);
  v30 = MEMORY[0x28223BE20](v116);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v104 = &v87 - v34;
  MEMORY[0x28223BE20](v33);
  v115 = &v87 - v35;
  sub_26B9ABC04();
  v36 = sub_26B9ABBF4();
  v92 = v17;
  v87 = v11;
  v88 = v8;
  v89 = v13;
  v94 = v36;
  sub_26B9AB9F4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D8, &qword_26B9B3A50);
  v37 = sub_26B9ABF24();
  v38 = *(v37 - 8);
  v39 = *(v38 + 72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  v93 = xmmword_26B9AF300;
  *(v41 + 16) = xmmword_26B9AF300;
  (*(v23 + 16))(v26, v114 + OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entity, v22);
  sub_26B9ABCF4();
  (*(v23 + 8))(v26, v22);
  v42 = sub_26B922FC8(v41);
  swift_setDeallocating();
  (*(v38 + 8))(v41 + v40, v37);
  swift_deallocClassInstance();
  v43 = v101;
  MEMORY[0x26D6858F0](v42);

  v91 = sub_26B95E674(&qword_280426238, MEMORY[0x277D724B8]);
  sub_26B95E674(&qword_2804269E8, MEMORY[0x277D724E8]);
  v44 = v104;
  sub_26B9ABC54();

  (*(v102 + 8))(v43, v103);
  v108 = *(v108 + 8);
  (v108)(v32, v116);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804269F0, &qword_26B9B3A88);
  v45 = sub_26B9AB864();
  v46 = *(v45 - 8);
  v47 = *(v46 + 72);
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v93;
  (*(v46 + 104))(v49 + v48, *MEMORY[0x277D720D8], v45);
  v50 = sub_26B95E220(v49);
  swift_setDeallocating();
  (*(v46 + 8))(v49 + v48, v45);
  swift_deallocClassInstance();
  v51 = v105;
  *v105 = v50;
  v52 = v106;
  v53 = v107;
  (*(v106 + 104))(v51, *MEMORY[0x277D720A8], v107);
  sub_26B95E674(&qword_2804269F8, MEMORY[0x277D720C0]);
  sub_26B9ABC54();
  v54 = v116;

  v55 = v51;
  v56 = v108;
  (*(v52 + 8))(v55, v53);
  v56(v44, v54);
  v57 = v109;
  sub_26B9AB204();
  v59 = v112;
  v58 = v113;
  v60 = v110;
  (*(v112 + 104))(v110, *MEMORY[0x277D72858], v113);
  v61 = sub_26B9ABBE4();
  v62 = v54;
  v63 = v114;
  v64 = v61;
  (*(v59 + 8))(v60, v58);
  (*(v111 + 8))(v57, v92);
  v56(v115, v62);
  if (*(v64 + 16))
  {
    v65 = v99;
    v66 = *(v99 + 16);
    v67 = v87;
    v68 = v100;
    v66(v87, v64 + ((*(v99 + 80) + 32) & ~*(v99 + 80)), v100);

    v69 = v89;
    (*(v65 + 32))(v89, v67, v68);
    v66(v88, v69, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A00, &qword_26B9B3A90);
    inited = swift_initStackObject();
    *(inited + 32) = 0x746567726174;
    *(inited + 16) = v93;
    *(inited + 40) = 0xE600000000000000;
    v71 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue;
    v72 = sub_26B9ABE84();
    v73 = MEMORY[0x277D72A68];
    *(inited + 72) = v72;
    *(inited + 80) = v73;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(*(v72 - 8) + 16))(boxed_opaque_existential_1, v63 + v71, v72);
    sub_26B95E540(inited);
    swift_setDeallocating();
    sub_26B8EACD8(inited + 32, &qword_280426A08, &qword_26B9B5770);
    v75 = sub_26B9ABAE4();
    (*(*(v75 - 8) + 56))(v97, 1, 1, v75);
    v76 = v98;
    sub_26B9AB924();
    v77 = sub_26B9AAFB4();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    sub_26B9AAFA4();
    sub_26B95E674(&qword_280426A10, MEMORY[0x277D72278]);
    v80 = v96;
    v81 = sub_26B9AAF94();
    v83 = v82;

    v84 = [objc_allocWithZone(MEMORY[0x277D4C358]) init];
    v85 = sub_26B9AB114();
    [v84 setToolInvocationData_];
    sub_26B922394(v81, v83);

    (*(v95 + 8))(v76, v80);
    (*(v65 + 8))(v69, v68);
    return v84;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_26B95D84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t *sub_26B95D91C()
{
  v1 = sub_26B9ABF24();
  v33 = *(v1 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v1);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426358, &qword_26B9B39D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_26B9ABF94();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - v14;
  v16 = sub_26B9AB104();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26B968C74();
  if (!v21 || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v31 = v1;
    v22 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_fileURL;
    swift_beginAccess();
    sub_26B9236E8(v0 + v22, v15, &qword_280426308, &qword_26B9B0CD0);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_26B8EACD8(v15, &qword_280426308, &qword_26B9B0CD0);
      v23 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entityDefinition;
      swift_beginAccess();
      sub_26B9236E8(v0 + v23, v7, &qword_280426358, &qword_26B9B39D0);
      v24 = v34;
      if ((*(v34 + 48))(v7, 1, v8) == 1)
      {
        sub_26B8EACD8(v7, &qword_280426358, &qword_26B9B39D0);
      }

      else
      {
        (*(v24 + 32))(v11, v7, v8);
        v27 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
        v28 = v32;
        sub_26B9ABF74();
        sub_26B9ABEF4();
        (*(v33 + 8))(v28, v31);
        v29 = sub_26B9AC4C4();

        [v27 setBundleIdentifier_];

        (*(v24 + 8))(v11, v8);
        return v27;
      }
    }

    else
    {
      (*(v17 + 32))(v20, v15, v16);
      v25 = [objc_allocWithZone(MEMORY[0x277D4C560]) init];
      v26 = sub_26B9AB0A4();
      [v25 setFilePath_];

      (*(v17 + 8))(v20, v16);
      return v25;
    }
  }

  return v21;
}

id sub_26B95DDD8()
{
  if (!*(v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config + 8))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config);
  v2 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
  v3 = sub_26B9AC4C4();
  [v2 setBundleIdentifier_];

  return v2;
}

uint64_t sub_26B95DE98()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entity;
  v2 = sub_26B9ABD44();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_26B8EACD8(v0 + OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entityDefinition, &qword_280426358, &qword_26B9B39D0);
  return sub_26B8EACD8(v0 + OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_fileURL, &qword_280426308, &qword_26B9B0CD0);
}

uint64_t sub_26B95DF34()
{
  v0 = sub_26B96B8B0();
  v1 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entity;
  v2 = sub_26B9ABD44();
  v3 = *(*(v2 - 8) + 8);
  sub_26B9AAAE4();
  v3(v0 + v1, v2);
  sub_26B8EACD8(v0 + OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entityDefinition, &qword_280426358, &qword_26B9B39D0);
  sub_26B8EACD8(v0 + OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_fileURL, &qword_280426308, &qword_26B9B0CD0);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppEntityTypedValueResultBuilder()
{
  result = qword_28042F2C8;
  if (!qword_28042F2C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26B95E090()
{
  v0 = sub_26B9ABD44();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_26B95E1CC(319, &qword_2804269D8, MEMORY[0x277D72DD8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_26B95E1CC(319, &qword_2804269E0, MEMORY[0x277CC9260]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26B95E1CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26B9ACA34();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26B95E220(uint64_t a1)
{
  v2 = sub_26B9AB864();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A18, &qword_26B9B3A98);
    v10 = sub_26B9ACBA4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_26B95E674(&qword_280426A20, MEMORY[0x277D72108]);
      v18 = sub_26B9AC454();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_26B95E674(&qword_280426A28, MEMORY[0x277D72108]);
          v25 = sub_26B9AC494();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_26B95E540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426360, &qword_26B9B0D40);
    v3 = sub_26B9ACD84();
    v4 = a1 + 32;
    sub_26B9AAAE4();
    while (1)
    {
      sub_26B9236E8(v4, &v13, &qword_280426A08, &qword_26B9B5770);
      v5 = v13;
      v6 = v14;
      result = sub_26B9201A8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26B8ECB70(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_26B95E674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B95E6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v7 = type metadata accessor for TypedValueResultBuilder.Config(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26B9ABE84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 48);
  v17 = *(v4 + 52);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC17SpotlightUIShared26AppTypedValueResultBuilder_app;
  v20 = sub_26B9ABDA4();
  v21 = *(v20 - 8);
  v22 = v18 + v19;
  v23 = v27;
  (*(v21 + 16))(v22, v27, v20);
  (*(v12 + 16))(v15, a2, v11);
  sub_26B95C6A0(a3, v10);
  v24 = sub_26B965300(v15, v10);
  sub_26B955164(a3);
  (*(v12 + 8))(a2, v11);
  (*(v21 + 8))(v23, v20);
  return v24;
}

id sub_26B95E8BC()
{
  v1 = sub_26B9ABDA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC17SpotlightUIShared26AppTypedValueResultBuilder_app, v1);
  sub_26B9ABD94();
  (*(v2 + 8))(v5, v1);
  v7 = sub_26B9AC4C4();

  [v6 setBundleIdentifier_];

  return v6;
}

id sub_26B95EA04()
{
  v1 = v0;
  v2 = sub_26B9ABDA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC17SpotlightUIShared26AppTypedValueResultBuilder_app, v2);
  sub_26B9ABD94();
  (*(v3 + 8))(v6, v2);
  v7 = sub_26B9AC4C4();

  v8 = SSAppNameForBundleId();

  if (!v8)
  {
    return sub_26B968070();
  }

  sub_26B9AC504();

  v9 = sub_26B9AC4C4();

  v10 = [objc_opt_self() textWithString_];

  result = v10;
  if (!v10)
  {
    return sub_26B968070();
  }

  return result;
}

id sub_26B95EB98()
{
  v1 = sub_26B9ABDA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v7 = v0 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + v6;
  if (sub_26B964A90(*v7, *(v7 + 8)))
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D4C410]) init];
    (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC17SpotlightUIShared26AppTypedValueResultBuilder_app, v1);
    sub_26B9ABD94();
    (*(v2 + 8))(v5, v1);
    v9 = sub_26B9AC4C4();

    [v8 setApplicationBundleIdentifier_];

    return v8;
  }

  else
  {

    return sub_26B96A848();
  }
}

uint64_t sub_26B95ED68()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared26AppTypedValueResultBuilder_app;
  v2 = sub_26B9ABDA4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_26B95EDD0()
{
  v0 = sub_26B96B8B0();
  v1 = OBJC_IVAR____TtC17SpotlightUIShared26AppTypedValueResultBuilder_app;
  v2 = sub_26B9ABDA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppTypedValueResultBuilder()
{
  result = qword_28042F2F0;
  if (!qword_28042F2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B95EEC8()
{
  result = sub_26B9ABDA4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B95EF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v7 = type metadata accessor for TypedValueResultBuilder.Config(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26B9ABE84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 48);
  v17 = *(v4 + 52);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC17SpotlightUIShared33CollectionTypedValueResultBuilder_collectionValue;
  v20 = sub_26B9ABC94();
  v21 = *(v20 - 8);
  v22 = v18 + v19;
  v23 = v27;
  (*(v21 + 16))(v22, v27, v20);
  (*(v12 + 16))(v15, a2, v11);
  sub_26B95C6A0(a3, v10);
  v24 = sub_26B965300(v15, v10);
  sub_26B955164(a3);
  (*(v12 + 8))(a2, v11);
  (*(v21 + 8))(v23, v20);
  return v24;
}