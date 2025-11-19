unint64_t sub_21B93F880()
{
  result = qword_27CD9BBF0;
  if (!qword_27CD9BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BBF0);
  }

  return result;
}

id sub_21B93F8D4()
{
  if (qword_27CDA0340 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(type metadata accessor for RUIContentRegistry());

  result = sub_21B9DDDC0(v1, v2);
  qword_27CDA0338 = result;
  return result;
}

unint64_t sub_21B93F948(void *a1)
{
  a1[1] = sub_21B93F980();
  a1[2] = sub_21B93F9D4();
  result = sub_21B93FA28();
  a1[3] = result;
  return result;
}

unint64_t sub_21B93F980()
{
  result = qword_27CD9BC00;
  if (!qword_27CD9BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BC00);
  }

  return result;
}

unint64_t sub_21B93F9D4()
{
  result = qword_27CD9BBF8;
  if (!qword_27CD9BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BBF8);
  }

  return result;
}

unint64_t sub_21B93FA28()
{
  result = qword_27CD9BC08;
  if (!qword_27CD9BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BC08);
  }

  return result;
}

uint64_t sub_21B93FA7C()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_21BA86C0C();
  }

  else
  {
    sub_21BA86B5C();
  }

  return sub_21BA86C5C();
}

uint64_t sub_21B93FAE4()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_21BA86C0C();
    sub_21BA86C5C();
    sub_21BA09AF0();
  }

  else
  {
    sub_21BA86B5C();
    sub_21BA86C5C();
    sub_21BA0DFFC(&qword_27CD9CF30, 255, MEMORY[0x277CDD8B8]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_21B93FBEC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B93FC24(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_21BA86A5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21B93FC9C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for ResourceLoader()
{
  result = qword_27CDA0A10;
  if (!qword_27CDA0A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B93FD54(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21BA883CC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21B93FDC0()
{
  type metadata accessor for URLLoadingParameters(319);
  if (v0 <= 0x3F)
  {
    sub_21B940168(319, &unk_27CD9BC40, &qword_27CD9E790, &unk_21BA97F50, MEMORY[0x277CDF470]);
    if (v1 <= 0x3F)
    {
      sub_21B940168(319, &qword_27CD9BC50, &qword_27CD9DF48, &unk_21BA971C8, MEMORY[0x277CDF470]);
      if (v2 <= 0x3F)
      {
        sub_21B940168(319, &unk_27CD9BC90, &qword_27CD9CF70, &unk_21BA959E0, MEMORY[0x277CDF470]);
        if (v3 <= 0x3F)
        {
          sub_21B940168(319, &qword_27CD9BC60, &qword_27CD9DBA0, &unk_21BA92240, MEMORY[0x277CDF470]);
          if (v4 <= 0x3F)
          {
            sub_21B940168(319, &qword_27CD9BC88, &qword_27CD9EEC0, &unk_21BA9A6F8, MEMORY[0x277CDF470]);
            if (v5 <= 0x3F)
            {
              sub_21B9401CC();
              if (v6 <= 0x3F)
              {
                sub_21B94021C(319, &qword_27CD9BC78, type metadata accessor for ActivityIndicatorManager, MEMORY[0x277CDF470]);
                if (v7 <= 0x3F)
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

void sub_21B93FFE0()
{
  sub_21B940364();
  if (v0 <= 0x3F)
  {
    sub_21B93FD54(319, &qword_27CD9BAB0);
    if (v1 <= 0x3F)
    {
      sub_21B93FD54(319, &qword_27CD9BBA0);
      if (v2 <= 0x3F)
      {
        sub_21B94010C();
        if (v3 <= 0x3F)
        {
          sub_21B93FD54(319, &qword_27CD9BB28);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21B94010C()
{
  if (!qword_27CD9BAC0)
  {
    v0 = sub_21BA87BEC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9BAC0);
    }
  }
}

void sub_21B940168(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_21B9401CC()
{
  if (!qword_27CD9BC80)
  {
    v0 = sub_21BA86A5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9BC80);
    }
  }
}

void sub_21B94021C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21B940280()
{
  sub_21B940364();
  if (v0 <= 0x3F)
  {
    sub_21BA8662C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21B940364()
{
  if (!qword_27CD9BCA8)
  {
    sub_21BA864AC();
    v0 = sub_21BA883CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9BCA8);
    }
  }
}

uint64_t sub_21B9403FC()
{
  result = sub_21BA8662C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21B94049C(void *a1)
{
  a1[1] = sub_21B9EB840();
  a1[2] = sub_21B9EB894();
  result = sub_21B9EB8E8();
  a1[3] = result;
  return result;
}

uint64_t type metadata accessor for BannerRowElement()
{
  result = qword_27CDA04E0;
  if (!qword_27CDA04E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B940520()
{
  sub_21B9405D4();
  if (v0 <= 0x3F)
  {
    sub_21B940624();
    if (v1 <= 0x3F)
    {
      sub_21BA2A490();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21B9405D4()
{
  if (!qword_27CD9BBE8)
  {
    v0 = sub_21BA883CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9BBE8);
    }
  }
}

void sub_21B940624()
{
  if (!qword_27CD9BB50)
  {
    type metadata accessor for SubLabelElement();
    v0 = sub_21BA883CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9BB50);
    }
  }
}

uint64_t type metadata accessor for SubLabelElement()
{
  result = qword_27CDA05F0;
  if (!qword_27CDA05F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B9406C8()
{
  if (!qword_27CD9BC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D718);
    v0 = sub_21BA86A5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9BC58);
    }
  }
}

void sub_21B94072C()
{
  sub_21B9406C8();
  if (v0 <= 0x3F)
  {
    sub_21B9407E0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for URLLoader(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21B9407E0()
{
  if (!qword_27CD9BAB0)
  {
    v0 = sub_21BA883CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9BAB0);
    }
  }
}

uint64_t sub_21B940830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21B940878(void *a1)
{
  a1[1] = sub_21B940830(&qword_27CD9BB40, type metadata accessor for BannerRowElement);
  a1[2] = sub_21B940830(&qword_27CD9BB38, type metadata accessor for BannerRowElement);
  result = sub_21B940830(&qword_27CD9BB48, type metadata accessor for BannerRowElement);
  a1[3] = result;
  return result;
}

uint64_t sub_21B940924()
{
  sub_21BA8737C();
  sub_21BA86C5C();
  sub_21B9AC8D0();
  return swift_getWitnessTable();
}

unint64_t sub_21B9409AC()
{
  result = qword_27CD9BAD0;
  if (!qword_27CD9BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BAD0);
  }

  return result;
}

unint64_t sub_21B940A00(void *a1)
{
  a1[1] = sub_21B940A38();
  a1[2] = sub_21B940A8C();
  result = sub_21B940AE0();
  a1[3] = result;
  return result;
}

unint64_t sub_21B940A38()
{
  result = qword_27CD9BAE0;
  if (!qword_27CD9BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BAE0);
  }

  return result;
}

unint64_t sub_21B940A8C()
{
  result = qword_27CD9BAD8;
  if (!qword_27CD9BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BAD8);
  }

  return result;
}

unint64_t sub_21B940AE0()
{
  result = qword_27CD9BAE8;
  if (!qword_27CD9BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BAE8);
  }

  return result;
}

unint64_t sub_21B940B34()
{
  result = qword_27CD9BAF0;
  if (!qword_27CD9BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BAF0);
  }

  return result;
}

unint64_t sub_21B940B88(void *a1)
{
  a1[1] = sub_21B940BC0();
  a1[2] = sub_21B940C14();
  result = sub_21B940C68();
  a1[3] = result;
  return result;
}

unint64_t sub_21B940BC0()
{
  result = qword_27CD9BB00;
  if (!qword_27CD9BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BB00);
  }

  return result;
}

unint64_t sub_21B940C14()
{
  result = qword_27CD9BAF8;
  if (!qword_27CD9BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BAF8);
  }

  return result;
}

unint64_t sub_21B940C68()
{
  result = qword_27CD9BB08;
  if (!qword_27CD9BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BB08);
  }

  return result;
}

unint64_t sub_21B940CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA00);
    v3 = sub_21BA8872C();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_21B940DCC(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_21B940DCC(uint64_t a1, uint64_t a2)
{
  sub_21BA88BAC();
  sub_21BA87D8C();
  v4 = sub_21BA88BCC();

  return sub_21B940E44(a1, a2, v4);
}

unint64_t sub_21B940E44(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21BA8899C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_21B940F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC8RemoteUI18RUIContentRegistry_views;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  *(v4 + v9) = 0x8000000000000000;
  sub_21B941004(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  *(v4 + v9) = v12;
  return swift_endAccess();
}

unint64_t sub_21B941004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_21B940DCC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21B941178(v18, a5 & 1);
      result = sub_21B940DCC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_21BA88B0C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_21B9DE558();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * result);
    *v24 = a1;
    v24[1] = a2;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v25 = (v23[6] + 16 * result);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * result);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;
}

uint64_t sub_21B941178(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA00);
  v33 = a2;
  result = sub_21BA8871C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_21BA88BAC();
      sub_21BA87D8C();
      result = sub_21BA88BCC();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_21B941448()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B941480()
{
  v1 = type metadata accessor for LazyUIElement();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  v14 = v0;
  v4 = v0 + v3;

  v5 = v0 + v3 + v1[5];
  v6 = sub_21BA864AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v9 = type metadata accessor for URLLoadingParameters(0);

  if (*(v5 + *(v9 + 64) + 8))
  {
  }

  v10 = *(v4 + v1[8]);
  if (v10 >= 2)
  {
  }

  sub_21B9B01C4(*(v4 + v1[9]), *(v4 + v1[9] + 8), *(v4 + v1[9] + 16));
  sub_21B94B4EC(*(v4 + v1[10]), *(v4 + v1[10] + 8));
  v11 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!v8(v4 + v11, 1, v6))
    {
      (*(v7 + 8))(v4 + v11, v6);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v14, v3 + v13, v2 | 7);
}

uint64_t sub_21B941754(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URLLoadingParameters(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEA8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21B941884(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for URLLoadingParameters(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEA8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21B9419B8()
{
  if (__isPlatformVersionAtLeast(2, 17, 5, 0))
  {
    return MEMORY[0x277CDE4F0];
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CFB0);
}

unint64_t sub_21B941A14()
{
  if (__isPlatformVersionAtLeast(2, 17, 5, 0))
  {
    return MEMORY[0x277CDE4E8];
  }

  return sub_21B9B5E90();
}

uint64_t sub_21B941A84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BA87CBC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21B941AC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for HTMLContent(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B941B6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for HTMLContent(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B941C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BA864AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21B941D28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21BA864AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21B941E48()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_21B941E90()
{
  v1 = type metadata accessor for SwitchRowElement(0);
  v38 = *(*(v1 - 1) + 80);
  v36 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v37 = (v38 + 49) & ~v38;
  v2 = v0 + v37;

  v3 = v0 + v37 + v1[7];
  v4 = type metadata accessor for SubLabelElement();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    sub_21B9CA1D0(*v3, *(v3 + 8));

    v5 = v3 + *(v4 + 28);
    v6 = sub_21BA864AC();
    v7 = *(v6 - 8);
    v8 = *(v7 + 48);
    if (!v8(v5, 1, v6))
    {
      (*(v7 + 8))(v5, v6);
    }

    v9 = type metadata accessor for URLLoadingParameters(0);

    if (*(v5 + *(v9 + 64) + 8))
    {
    }

    v10 = type metadata accessor for URLLoader(0);
    sub_21B94B4EC(*(v5 + v10[5]), *(v5 + v10[5] + 8));
    sub_21B94B4EC(*(v5 + v10[6]), *(v5 + v10[6] + 8));
    sub_21B9B01C4(*(v5 + v10[7]), *(v5 + v10[7] + 8), *(v5 + v10[7] + 16));
    v11 = v10[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (!v8(v5 + v11, 1, v6))
      {
        (*(v7 + 8))(v5 + v11, v6);
      }
    }

    else
    {
    }

    sub_21B9B01C4(*(v5 + v10[9]), *(v5 + v10[9] + 8), *(v5 + v10[9] + 16));
    sub_21B9427E4(*(v5 + v10[10]), *(v5 + v10[10] + 8));
  }

  v12 = v2 + v1[8];
  v13 = type metadata accessor for HTMLContentElement(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    sub_21B9CA1D0(*v12, *(v12 + 8));
    sub_21B9CA1DC();

    v14 = v12 + *(v13 + 28);
    v15 = sub_21BA864AC();
    v16 = *(v15 - 8);
    v35 = *(v16 + 48);
    if (!v35(v14, 1, v15))
    {
      (*(v16 + 8))(v14, v15);
    }

    v34 = v16;
    v17 = type metadata accessor for URLLoadingParameters(0);

    if (*(v14 + *(v17 + 64) + 8))
    {
    }

    v18 = type metadata accessor for URLLoader(0);
    sub_21B94B4EC(*(v14 + v18[5]), *(v14 + v18[5] + 8));
    sub_21B94B4EC(*(v14 + v18[6]), *(v14 + v18[6] + 8));
    sub_21B9B01C4(*(v14 + v18[7]), *(v14 + v18[7] + 8), *(v14 + v18[7] + 16));
    v19 = v18[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (!v35(v14 + v19, 1, v15))
      {
        (*(v34 + 8))(v14 + v19, v15);
      }
    }

    else
    {
    }

    sub_21B9B01C4(*(v14 + v18[9]), *(v14 + v18[9] + 8), *(v14 + v18[9] + 16));
    sub_21B9427E4(*(v14 + v18[10]), *(v14 + v18[10] + 8));

    v20 = *(v13 + 32);
    v21 = sub_21BA862DC();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v12 + v20, 1, v21))
    {
      (*(v22 + 8))(v12 + v20, v21);
    }
  }

  v23 = v2 + v1[9];
  if (*(v23 + 48))
  {
    sub_21B9CA1E8(*v23, *(v23 + 8), *(v23 + 16), *(v23 + 24), *(v23 + 32));

    sub_21B9427E4(*(v23 + 144), *(v23 + 152));
  }

  v24 = v2 + v1[11];
  v25 = sub_21BA864AC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  if (!v27(v24, 1, v25))
  {
    (*(v26 + 8))(v24, v25);
  }

  v28 = type metadata accessor for URLLoadingParameters(0);

  if (*(v24 + *(v28 + 64) + 8))
  {
  }

  v29 = type metadata accessor for URLLoader(0);
  sub_21B94B4EC(*(v24 + v29[5]), *(v24 + v29[5] + 8));
  sub_21B94B4EC(*(v24 + v29[6]), *(v24 + v29[6] + 8));
  sub_21B9B01C4(*(v24 + v29[7]), *(v24 + v29[7] + 8), *(v24 + v29[7] + 16));
  v30 = v29[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!v27(v24 + v30, 1, v25))
    {
      (*(v26 + 8))(v24 + v30, v25);
    }
  }

  else
  {
  }

  sub_21B9B01C4(*(v24 + v29[9]), *(v24 + v29[9] + 8), *(v24 + v29[9] + 16));
  sub_21B9427E4(*(v24 + v29[10]), *(v24 + v29[10] + 8));

  v31 = v1[13];
  v32 = sub_21BA8655C();
  (*(*(v32 - 8) + 8))(v2 + v31, v32);

  return MEMORY[0x2821FE8E8](v0, v36 + v37 + 1, v38 | 7);
}

uint64_t sub_21B9427E4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21B9427F0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5A8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = type metadata accessor for URLLoader(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = type metadata accessor for SwitchRowElement.ValueMetadata(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_21B9429BC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5A8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = type metadata accessor for URLLoader(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = type metadata accessor for SwitchRowElement.ValueMetadata(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21B942B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BA8655C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21B942C54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21BA8655C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21B942D60()
{
  v1 = v0;
  v2 = type metadata accessor for SwitchRowElement(0);
  v39 = *(*(v2 - 1) + 80);
  v37 = *(*(v2 - 1) + 64);
  v38 = (v39 + 16) & ~v39;
  v3 = v0 + v38;

  v4 = v0 + v38 + v2[7];
  v5 = type metadata accessor for SubLabelElement();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    sub_21B9CA1D0(*v4, *(v4 + 8));

    v6 = v4 + *(v5 + 28);
    v7 = sub_21BA864AC();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (!v9(v6, 1, v7))
    {
      (*(v8 + 8))(v6, v7);
    }

    v10 = type metadata accessor for URLLoadingParameters(0);

    if (*(v6 + *(v10 + 64) + 8))
    {
    }

    v11 = type metadata accessor for URLLoader(0);
    sub_21B94B4EC(*(v6 + v11[5]), *(v6 + v11[5] + 8));
    sub_21B94B4EC(*(v6 + v11[6]), *(v6 + v11[6] + 8));
    sub_21B9B01C4(*(v6 + v11[7]), *(v6 + v11[7] + 8), *(v6 + v11[7] + 16));
    v12 = v11[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (!v9(v6 + v12, 1, v7))
      {
        (*(v8 + 8))(v6 + v12, v7);
      }
    }

    else
    {
    }

    sub_21B9B01C4(*(v6 + v11[9]), *(v6 + v11[9] + 8), *(v6 + v11[9] + 16));
    sub_21B9427E4(*(v6 + v11[10]), *(v6 + v11[10] + 8));
  }

  v13 = v3 + v2[8];
  v14 = type metadata accessor for HTMLContentElement(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v36 = v0;
    sub_21B9CA1D0(*v13, *(v13 + 8));
    sub_21B9CA1DC();

    v15 = v13 + *(v14 + 28);
    v16 = sub_21BA864AC();
    v17 = *(v16 - 8);
    v35 = *(v17 + 48);
    if (!v35(v15, 1, v16))
    {
      (*(v17 + 8))(v15, v16);
    }

    v18 = type metadata accessor for URLLoadingParameters(0);

    if (*(v15 + *(v18 + 64) + 8))
    {
    }

    v19 = type metadata accessor for URLLoader(0);
    sub_21B94B4EC(*(v15 + v19[5]), *(v15 + v19[5] + 8));
    sub_21B94B4EC(*(v15 + v19[6]), *(v15 + v19[6] + 8));
    sub_21B9B01C4(*(v15 + v19[7]), *(v15 + v19[7] + 8), *(v15 + v19[7] + 16));
    v20 = v19[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (!v35(v15 + v20, 1, v16))
      {
        (*(v17 + 8))(v15 + v20, v16);
      }
    }

    else
    {
    }

    sub_21B9B01C4(*(v15 + v19[9]), *(v15 + v19[9] + 8), *(v15 + v19[9] + 16));
    sub_21B9427E4(*(v15 + v19[10]), *(v15 + v19[10] + 8));

    v21 = *(v14 + 32);
    v22 = sub_21BA862DC();
    v23 = *(v22 - 8);
    v1 = v36;
    if (!(*(v23 + 48))(v13 + v21, 1, v22))
    {
      (*(v23 + 8))(v13 + v21, v22);
    }
  }

  v24 = v3 + v2[9];
  if (*(v24 + 48))
  {
    sub_21B9CA1E8(*v24, *(v24 + 8), *(v24 + 16), *(v24 + 24), *(v24 + 32));

    sub_21B9427E4(*(v24 + 144), *(v24 + 152));
  }

  v25 = v3 + v2[11];
  v26 = sub_21BA864AC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (!v28(v25, 1, v26))
  {
    (*(v27 + 8))(v25, v26);
  }

  v29 = type metadata accessor for URLLoadingParameters(0);

  if (*(v25 + *(v29 + 64) + 8))
  {
  }

  v30 = type metadata accessor for URLLoader(0);
  sub_21B94B4EC(*(v25 + v30[5]), *(v25 + v30[5] + 8));
  sub_21B94B4EC(*(v25 + v30[6]), *(v25 + v30[6] + 8));
  sub_21B9B01C4(*(v25 + v30[7]), *(v25 + v30[7] + 8), *(v25 + v30[7] + 16));
  v31 = v30[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!v28(v25 + v31, 1, v26))
    {
      (*(v27 + 8))(v25 + v31, v26);
    }
  }

  else
  {
  }

  sub_21B9B01C4(*(v25 + v30[9]), *(v25 + v30[9] + 8), *(v25 + v30[9] + 16));
  sub_21B9427E4(*(v25 + v30[10]), *(v25 + v30[10] + 8));

  v32 = v2[13];
  v33 = sub_21BA8655C();
  (*(*(v33 - 8) + 8))(v3 + v32, v33);

  return MEMORY[0x2821FE8E8](v1, v38 + v37, v39 | 7);
}

uint64_t sub_21B943698()
{
  v1 = v0;
  v2 = type metadata accessor for SwitchRowElement(0);
  v40 = *(*(v2 - 1) + 80);
  v38 = *(*(v2 - 1) + 64);
  swift_unknownObjectRelease();
  v39 = (v40 + 32) & ~v40;
  v3 = v0 + v39;

  v4 = v0 + v39 + v2[7];
  v5 = type metadata accessor for SubLabelElement();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    sub_21B9CA1D0(*v4, *(v4 + 8));

    v6 = v4 + *(v5 + 28);
    v7 = sub_21BA864AC();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (!v9(v6, 1, v7))
    {
      (*(v8 + 8))(v6, v7);
    }

    v10 = type metadata accessor for URLLoadingParameters(0);

    if (*(v6 + *(v10 + 64) + 8))
    {
    }

    v11 = type metadata accessor for URLLoader(0);
    sub_21B94B4EC(*(v6 + v11[5]), *(v6 + v11[5] + 8));
    sub_21B94B4EC(*(v6 + v11[6]), *(v6 + v11[6] + 8));
    sub_21B9B01C4(*(v6 + v11[7]), *(v6 + v11[7] + 8), *(v6 + v11[7] + 16));
    v12 = v11[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = v9(v6 + v12, 1, v7);
      v1 = v0;
      if (!v13)
      {
        (*(v8 + 8))(v6 + v12, v7);
      }
    }

    else
    {

      v1 = v0;
    }

    sub_21B9B01C4(*(v6 + v11[9]), *(v6 + v11[9] + 8), *(v6 + v11[9] + 16));
    sub_21B9427E4(*(v6 + v11[10]), *(v6 + v11[10] + 8));
  }

  v14 = v3 + v2[8];
  v15 = type metadata accessor for HTMLContentElement(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v37 = v1;
    sub_21B9CA1D0(*v14, *(v14 + 8));
    sub_21B9CA1DC();

    v16 = v14 + *(v15 + 28);
    v17 = sub_21BA864AC();
    v18 = *(v17 - 8);
    v36 = *(v18 + 48);
    if (!v36(v16, 1, v17))
    {
      (*(v18 + 8))(v16, v17);
    }

    v19 = type metadata accessor for URLLoadingParameters(0);

    if (*(v16 + *(v19 + 64) + 8))
    {
    }

    v20 = type metadata accessor for URLLoader(0);
    sub_21B94B4EC(*(v16 + v20[5]), *(v16 + v20[5] + 8));
    sub_21B94B4EC(*(v16 + v20[6]), *(v16 + v20[6] + 8));
    sub_21B9B01C4(*(v16 + v20[7]), *(v16 + v20[7] + 8), *(v16 + v20[7] + 16));
    v21 = v20[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (!v36(v16 + v21, 1, v17))
      {
        (*(v18 + 8))(v16 + v21, v17);
      }
    }

    else
    {
    }

    sub_21B9B01C4(*(v16 + v20[9]), *(v16 + v20[9] + 8), *(v16 + v20[9] + 16));
    sub_21B9427E4(*(v16 + v20[10]), *(v16 + v20[10] + 8));

    v22 = *(v15 + 32);
    v23 = sub_21BA862DC();
    v24 = *(v23 - 8);
    v1 = v37;
    if (!(*(v24 + 48))(v14 + v22, 1, v23))
    {
      (*(v24 + 8))(v14 + v22, v23);
    }
  }

  v25 = v3 + v2[9];
  if (*(v25 + 48))
  {
    sub_21B9CA1E8(*v25, *(v25 + 8), *(v25 + 16), *(v25 + 24), *(v25 + 32));

    sub_21B9427E4(*(v25 + 144), *(v25 + 152));
  }

  v26 = v3 + v2[11];
  v27 = sub_21BA864AC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (!v29(v26, 1, v27))
  {
    (*(v28 + 8))(v26, v27);
  }

  v30 = type metadata accessor for URLLoadingParameters(0);

  if (*(v26 + *(v30 + 64) + 8))
  {
  }

  v31 = type metadata accessor for URLLoader(0);
  sub_21B94B4EC(*(v26 + v31[5]), *(v26 + v31[5] + 8));
  sub_21B94B4EC(*(v26 + v31[6]), *(v26 + v31[6] + 8));
  sub_21B9B01C4(*(v26 + v31[7]), *(v26 + v31[7] + 8), *(v26 + v31[7] + 16));
  v32 = v31[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!v29(v26 + v32, 1, v27))
    {
      (*(v28 + 8))(v26 + v32, v27);
    }
  }

  else
  {
  }

  sub_21B9B01C4(*(v26 + v31[9]), *(v26 + v31[9] + 8), *(v26 + v31[9] + 16));
  sub_21B9427E4(*(v26 + v31[10]), *(v26 + v31[10] + 8));

  v33 = v2[13];
  v34 = sub_21BA8655C();
  (*(*(v34 - 8) + 8))(v3 + v33, v34);

  return MEMORY[0x2821FE8E8](v1, ((v38 + v39 + 7) & 0xFFFFFFFFFFFFFFF8) + 18, v40 | 7);
}

uint64_t sub_21B944008()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B944044()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B94407C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9440EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B944154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9441C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BA862DC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21B944230(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BA862DC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21B9442A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URLLoader(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21B9443D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for URLLoader(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21B944510()
{
  v1 = sub_21BA864AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21B944598()
{

  sub_21B9D0D94(*(v0 + 120), *(v0 + 128));
  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    sub_21B9D0DC8(*(v0 + 136), v1 & 1);
  }

  sub_21B94B4EC(*(v0 + 168), *(v0 + 176));
  sub_21B94B4EC(*(v0 + 184), *(v0 + 192));

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_21B94465C()
{
  MEMORY[0x21CEFF260](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B944698()
{
  sub_21BA86C5C();
  sub_21BA8716C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21B944744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_21BA864AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21B9447FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_21BA864AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B9448A8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D920);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_21B944964(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D920);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B944A14(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D928);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_21B944ADC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D928);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B944B8C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for InternalResourceLoader.Key(0) - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 32) & ~v3;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v5);
  }

  else
  {
    v9 = sub_21BA864AC();
    (*(*(v9 - 8) + 8))(v0 + v5, v9);
  }

  v10 = v3 | v7;
  v11 = (v5 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v11, v1);

  return MEMORY[0x2821FE8E8](v0, v11 + v8, v10 | 7);
}

uint64_t sub_21B944D24()
{
  v1 = sub_21BA864AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21B944DE8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B944E2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B944E64()
{
  v1 = *(type metadata accessor for InternalResourceLoader.Key(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  else
  {
    v5 = sub_21BA864AC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21B944F70()
{
  v1 = *(type metadata accessor for InternalResourceLoader.Key(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  else
  {
    v5 = sub_21BA864AC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | 7);
}

uint64_t sub_21B945088()
{
  v1 = *(type metadata accessor for InternalResourceLoader.Key(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  else
  {
    v5 = sub_21BA864AC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  v6 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v2 | 7);
}

uint64_t sub_21B9451B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BA860AC();
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

uint64_t sub_21B945220(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21BA860AC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21B9452A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B9452EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEA8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B9453A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEA8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B945464()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B9454AC()
{
  v1 = type metadata accessor for PinViewElement(0);
  v28 = *(*(v1 - 1) + 80);
  v26 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v29 = v0;
  v27 = (v28 + 32) & ~v28;
  v2 = v0 + v27;

  sub_21B9ECAE0(*(v2 + 80), *(v2 + 88), *(v2 + 96));
  sub_21B94B4EC(*(v2 + 104), *(v2 + 112));

  v3 = v1[12];
  v4 = sub_21BA860EC();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[14];
  v6 = sub_21BA864AC();
  v7 = *(v6 - 8);
  v30 = *(v7 + 48);
  if (!v30(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v8 = type metadata accessor for URLLoadingParameters(0);

  if (*(v5 + *(v8 + 64) + 8))
  {
  }

  v9 = type metadata accessor for URLLoader(0);
  sub_21B94B4EC(*(v5 + v9[5]), *(v5 + v9[5] + 8));
  sub_21B94B4EC(*(v5 + v9[6]), *(v5 + v9[6] + 8));
  sub_21B9B01C4(*(v5 + v9[7]), *(v5 + v9[7] + 8), *(v5 + v9[7] + 16));
  v10 = v9[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!v30(v5 + v10, 1, v6))
    {
      (*(v7 + 8))(v5 + v10, v6);
    }
  }

  else
  {
  }

  v25 = v7;
  sub_21B9B01C4(*(v5 + v9[9]), *(v5 + v9[9] + 8), *(v5 + v9[9] + 16));
  sub_21B9427E4(*(v5 + v9[10]), *(v5 + v9[10] + 8));

  v11 = v2 + v1[15];
  if (*(v11 + 48))
  {
    sub_21B9CA1E8(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32));

    sub_21B9427E4(*(v11 + 144), *(v11 + 152));
  }

  v12 = v2 + v1[17];
  v13 = type metadata accessor for HTMLContentElement(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    sub_21B9CA1D0(*v12, *(v12 + 8));
    sub_21B9CA1DC();

    v14 = v12 + *(v13 + 28);
    if (!v30(v14, 1, v6))
    {
      (*(v7 + 8))(v14, v6);
    }

    if (*(v14 + *(v8 + 64) + 8))
    {
    }

    sub_21B94B4EC(*(v14 + v9[5]), *(v14 + v9[5] + 8));
    sub_21B94B4EC(*(v14 + v9[6]), *(v14 + v9[6] + 8));
    sub_21B9B01C4(*(v14 + v9[7]), *(v14 + v9[7] + 8), *(v14 + v9[7] + 16));
    v15 = v9[8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (!v30(v14 + v15, 1, v6))
      {
        (*(v25 + 8))(v14 + v15, v6);
      }
    }

    else
    {
    }

    sub_21B9B01C4(*(v14 + v9[9]), *(v14 + v9[9] + 8), *(v14 + v9[9] + 16));
    sub_21B9427E4(*(v14 + v9[10]), *(v14 + v9[10] + 8));

    v16 = *(v13 + 32);
    v17 = sub_21BA862DC();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v12 + v16, 1, v17))
    {
      (*(v18 + 8))(v12 + v16, v17);
    }
  }

  v19 = v2 + v1[18];
  v20 = type metadata accessor for FooterElement(0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    sub_21B9CA1D0(*v19, *(v19 + 8));

    v21 = v19 + *(v20 + 24);
    if (!v30(v21, 1, v6))
    {
      (*(v25 + 8))(v21, v6);
    }

    if (*(v21 + *(v8 + 64) + 8))
    {
    }

    sub_21B94B4EC(*(v21 + v9[5]), *(v21 + v9[5] + 8));
    sub_21B94B4EC(*(v21 + v9[6]), *(v21 + v9[6] + 8));
    sub_21B9B01C4(*(v21 + v9[7]), *(v21 + v9[7] + 8), *(v21 + v9[7] + 16));
    v22 = v9[8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (!v30(v21 + v22, 1, v6))
      {
        (*(v25 + 8))(v21 + v22, v6);
      }
    }

    else
    {
    }

    sub_21B9B01C4(*(v21 + v9[9]), *(v21 + v9[9] + 8), *(v21 + v9[9] + 16));
    sub_21B9427E4(*(v21 + v9[10]), *(v21 + v9[10] + 8));

    v23 = v19 + *(v20 + 28);
    if (*(v23 + 40))
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v23);
    }
  }

  sub_21B94B4EC(*(v2 + v1[23]), *(v2 + v1[23] + 8));

  return MEMORY[0x2821FE8E8](v29, v27 + v26, v28 | 7);
}

uint64_t sub_21B945DB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21B945DF4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_21BA860EC();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[12];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for URLLoader(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[14];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5B0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[17];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD60);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[18];

  return v16(v17, a2, v15);
}

uint64_t sub_21B945FC0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_21BA860EC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[12];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for URLLoader(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[17];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD60);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[18];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21B9461A4()
{
  v1 = type metadata accessor for PinViewElement(0);
  v28 = *(*(v1 - 1) + 80);
  v26 = *(*(v1 - 1) + 64);
  v27 = (v28 + 16) & ~v28;
  v29 = v0;
  v2 = v0 + v27;

  sub_21B9ECAE0(*(v2 + 80), *(v2 + 88), *(v2 + 96));
  sub_21B94B4EC(*(v2 + 104), *(v2 + 112));

  v3 = v1[12];
  v4 = sub_21BA860EC();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[14];
  v6 = sub_21BA864AC();
  v7 = *(v6 - 8);
  v30 = *(v7 + 48);
  if (!v30(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v8 = type metadata accessor for URLLoadingParameters(0);

  if (*(v5 + *(v8 + 64) + 8))
  {
  }

  v9 = type metadata accessor for URLLoader(0);
  sub_21B94B4EC(*(v5 + v9[5]), *(v5 + v9[5] + 8));
  sub_21B94B4EC(*(v5 + v9[6]), *(v5 + v9[6] + 8));
  sub_21B9B01C4(*(v5 + v9[7]), *(v5 + v9[7] + 8), *(v5 + v9[7] + 16));
  v10 = v9[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!v30(v5 + v10, 1, v6))
    {
      (*(v7 + 8))(v5 + v10, v6);
    }
  }

  else
  {
  }

  v25 = v7;
  sub_21B9B01C4(*(v5 + v9[9]), *(v5 + v9[9] + 8), *(v5 + v9[9] + 16));
  sub_21B9427E4(*(v5 + v9[10]), *(v5 + v9[10] + 8));

  v11 = v2 + v1[15];
  if (*(v11 + 48))
  {
    sub_21B9CA1E8(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32));

    sub_21B9427E4(*(v11 + 144), *(v11 + 152));
  }

  v12 = v2 + v1[17];
  v13 = type metadata accessor for HTMLContentElement(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    sub_21B9CA1D0(*v12, *(v12 + 8));
    sub_21B9CA1DC();

    v14 = v12 + *(v13 + 28);
    if (!v30(v14, 1, v6))
    {
      (*(v7 + 8))(v14, v6);
    }

    if (*(v14 + *(v8 + 64) + 8))
    {
    }

    sub_21B94B4EC(*(v14 + v9[5]), *(v14 + v9[5] + 8));
    sub_21B94B4EC(*(v14 + v9[6]), *(v14 + v9[6] + 8));
    sub_21B9B01C4(*(v14 + v9[7]), *(v14 + v9[7] + 8), *(v14 + v9[7] + 16));
    v15 = v9[8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (!v30(v14 + v15, 1, v6))
      {
        (*(v25 + 8))(v14 + v15, v6);
      }
    }

    else
    {
    }

    sub_21B9B01C4(*(v14 + v9[9]), *(v14 + v9[9] + 8), *(v14 + v9[9] + 16));
    sub_21B9427E4(*(v14 + v9[10]), *(v14 + v9[10] + 8));

    v16 = *(v13 + 32);
    v17 = sub_21BA862DC();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v12 + v16, 1, v17))
    {
      (*(v18 + 8))(v12 + v16, v17);
    }
  }

  v19 = v2 + v1[18];
  v20 = type metadata accessor for FooterElement(0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    sub_21B9CA1D0(*v19, *(v19 + 8));

    v21 = v19 + *(v20 + 24);
    if (!v30(v21, 1, v6))
    {
      (*(v25 + 8))(v21, v6);
    }

    if (*(v21 + *(v8 + 64) + 8))
    {
    }

    sub_21B94B4EC(*(v21 + v9[5]), *(v21 + v9[5] + 8));
    sub_21B94B4EC(*(v21 + v9[6]), *(v21 + v9[6] + 8));
    sub_21B9B01C4(*(v21 + v9[7]), *(v21 + v9[7] + 8), *(v21 + v9[7] + 16));
    v22 = v9[8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (!v30(v21 + v22, 1, v6))
      {
        (*(v25 + 8))(v21 + v22, v6);
      }
    }

    else
    {
    }

    sub_21B9B01C4(*(v21 + v9[9]), *(v21 + v9[9] + 8), *(v21 + v9[9] + 16));
    sub_21B9427E4(*(v21 + v9[10]), *(v21 + v9[10] + 8));

    v23 = v19 + *(v20 + 28);
    if (*(v23 + 40))
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v23);
    }
  }

  sub_21B94B4EC(*(v2 + v1[23]), *(v2 + v1[23] + 8));

  return MEMORY[0x2821FE8E8](v29, ((v26 + v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v28 | 7);
}

uint64_t sub_21B946AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DDD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B946B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E2F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B946C0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E2F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B946CC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_8RemoteUI19RUIViewContentErrorO_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21B946D98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21B946DA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21B946DB8()
{
  MEMORY[0x21CEFF260](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B946DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9E518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B946E64()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B946EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E490);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21B946F78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E490);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21B947044()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B94707C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B9470D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B94718C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B947240()
{
  swift_unknownObjectRelease();

  sub_21B94B4EC(*(v0 + 48), *(v0 + 56));

  sub_21BA09A50(*(v0 + 96), *(v0 + 104), *(v0 + 112));

  if (*(v0 + 136))
  {

    if (*(v0 + 184))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 160);
    }

    if (*(v0 + 216))
    {

      sub_21B94B4EC(*(v0 + 232), *(v0 + 240));
    }
  }

  return MEMORY[0x2821FE8E8](v0, 256, 7);
}

uint64_t sub_21B9472FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B947334()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E880);
  sub_21BA0D9C8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21B947398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URLLoader(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B947444(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URLLoader(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B9474FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EA28);
  sub_21BA86C5C();
  sub_21BA0F848();
  return swift_getWitnessTable();
}

uint64_t sub_21B947578()
{
  sub_21B9CA1E8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  sub_21B9CB19C(*(v0 + 160), *(v0 + 168));

  return MEMORY[0x2821FE8E8](v0, 169, 7);
}

uint64_t sub_21B9475E4()
{
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21B947634()
{
  swift_unknownObjectRelease();
  sub_21B9CA1E8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  sub_21B9CB19C(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2821FE8E8](v0, 185, 7);
}

uint64_t sub_21B9476A8()
{
  MEMORY[0x21CEFF260](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B9476E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B947720()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B9477A8()
{
  MEMORY[0x21CEFF260](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B9477E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B947864()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21B94793C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLLoader(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21B9479A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLLoader(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21B947A1C()
{
  type metadata accessor for OpenURLViewModifier();
  sub_21BA86C5C();
  sub_21BA1BB84();
  return swift_getWitnessTable();
}

uint64_t sub_21B947A88()
{
  v1 = *(type metadata accessor for OpenURLViewModifier() - 8);
  v2 = *(v1 + 80);
  v14 = *(v1 + 64);
  v3 = sub_21BA864AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v15 = *(v4 + 64);
  swift_unknownObjectRelease();
  v6 = v0 + ((v2 + 32) & ~v2);
  v7 = *(v4 + 48);
  if (!v7(v6, 1, v3))
  {
    (*(v4 + 8))(v0 + ((v2 + 32) & ~v2), v3);
  }

  v8 = type metadata accessor for URLLoadingParameters(0);

  if (*(v6 + *(v8 + 64) + 8))
  {
  }

  v9 = type metadata accessor for URLLoader(0);
  sub_21B94B4EC(*(v6 + v9[5]), *(v6 + v9[5] + 8));
  sub_21B94B4EC(*(v6 + v9[6]), *(v6 + v9[6] + 8));
  sub_21B9B01C4(*(v6 + v9[7]), *(v6 + v9[7] + 8), *(v6 + v9[7] + 16));
  v10 = v9[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!v7(v6 + v10, 1, v3))
    {
      (*(v4 + 8))(v6 + v10, v3);
    }
  }

  else
  {
  }

  v11 = v2 | v5;
  v12 = (((v2 + 32) & ~v2) + v14 + v5) & ~v5;
  sub_21B9B01C4(*(v6 + v9[9]), *(v6 + v9[9] + 8), *(v6 + v9[9] + 16));
  sub_21B9CB19C(*(v6 + v9[10]), *(v6 + v9[10] + 8));

  (*(v4 + 8))(v0 + v12, v3);

  return MEMORY[0x2821FE8E8](v0, v12 + v15, v11 | 7);
}

uint64_t sub_21B947DBC()
{
  v1 = type metadata accessor for FooterElement(0);
  v2 = *(*(v1 - 8) + 80);
  v14 = *(*(v1 - 8) + 64);
  v15 = v0;
  v13 = (v2 + 16) & ~v2;
  v3 = v0 + v13;
  sub_21B9CA1D0(*(v0 + v13), *(v0 + v13 + 8));

  v4 = v0 + v13 + *(v1 + 24);
  v5 = sub_21BA864AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  v8 = type metadata accessor for URLLoadingParameters(0);

  if (*(v4 + *(v8 + 64) + 8))
  {
  }

  v9 = type metadata accessor for URLLoader(0);
  sub_21B94B4EC(*(v4 + v9[5]), *(v4 + v9[5] + 8));
  sub_21B94B4EC(*(v4 + v9[6]), *(v4 + v9[6] + 8));
  sub_21B9B01C4(*(v4 + v9[7]), *(v4 + v9[7] + 8), *(v4 + v9[7] + 16));
  v10 = v9[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!v7(v4 + v10, 1, v5))
    {
      (*(v6 + 8))(v4 + v10, v5);
    }
  }

  else
  {
  }

  sub_21B9B01C4(*(v4 + v9[9]), *(v4 + v9[9] + 8), *(v4 + v9[9] + 16));
  sub_21B9CB19C(*(v4 + v9[10]), *(v4 + v9[10] + 8));

  v11 = v3 + *(v1 + 28);
  if (*(v11 + 40))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return MEMORY[0x2821FE8E8](v15, v13 + v14, v2 | 7);
}

uint64_t sub_21B9480D4()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  }

  if (*(v0 + 104))
  {

    sub_21B94B4EC(*(v0 + 120), *(v0 + 128));
  }

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

uint64_t sub_21B948144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URLLoader(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B9481F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URLLoader(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B948294(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URLLoader(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21B948340(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URLLoader(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B9483E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9ED80);
  sub_21BA1D874();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21B9484E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EDA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B948554(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21BA862DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B948600(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21BA862DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B9486A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URLLoadingParameters(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEA8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21B9487D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URLLoadingParameters(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEA8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21B948904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEA8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B9489B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEA8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B948A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for URLLoadingParameters(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21B948B94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for URLLoadingParameters(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21B948CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EEF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B948D40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B948DA8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5A8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EF70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21B948EE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5A8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EF70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21B949020()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EF08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EF00);
  sub_21BA29F94();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21B9490C0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21B94915C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21B949260()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21B94931C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 17, v3 | 7);
}

uint64_t sub_21B9493F8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  (*(v6 + 8))(v0 + v8, v2);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_21B949534()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = v4 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  (*(v6 + 8))(v0 + v8, v2);

  return MEMORY[0x2821FE8E8](v0, v10 + 17, v9 | 7);
}

uint64_t sub_21B949690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21B94975C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21B949824()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_21B949870()
{
  swift_getTupleTypeMetadata2();
  sub_21BA87B6C();
  swift_getWitnessTable();
  sub_21BA879EC();

  return swift_getWitnessTable();
}

uint64_t sub_21B94990C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F0E8);
  sub_21BA86C5C();
  sub_21BA8716C();
  sub_21BA8716C();
  sub_21BA3A74C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21B9499F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URLLoader(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B949AA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URLLoader(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B949B48()
{
  v1 = (type metadata accessor for HelpLinkElement() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(*v1 + 64);

  v4 = v0 + v3 + v1[8];
  v5 = sub_21BA864AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  v8 = type metadata accessor for URLLoadingParameters(0);

  if (*(v4 + *(v8 + 64) + 8))
  {
  }

  v9 = type metadata accessor for URLLoader(0);
  sub_21B94B4EC(*(v4 + v9[5]), *(v4 + v9[5] + 8));
  sub_21B94B4EC(*(v4 + v9[6]), *(v4 + v9[6] + 8));
  sub_21B9B01C4(*(v4 + v9[7]), *(v4 + v9[7] + 8), *(v4 + v9[7] + 16));
  v10 = v9[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!v7(v4 + v10, 1, v5))
    {
      (*(v6 + 8))(v4 + v10, v5);
    }
  }

  else
  {
  }

  sub_21B9B01C4(*(v4 + v9[9]), *(v4 + v9[9] + 8), *(v4 + v9[9] + 16));
  sub_21B9CB19C(*(v4 + v9[10]), *(v4 + v9[10] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v12, v2 | 7);
}

uint64_t sub_21B949E38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F178);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F180);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7] + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[10];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_21B949FD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F178);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F180);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[10];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_21B94A168(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F1A8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F1B0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7] + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEA8);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[10];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_21B94A300(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F1A8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F1B0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEA8);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[10];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_21B94A524()
{
  MEMORY[0x21CEFF260](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B94A55C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B94A594()
{
  type metadata accessor for ReportAnalyticsModifier();
  sub_21BA86C5C();
  sub_21BA45454();
  return swift_getWitnessTable();
}

uint64_t sub_21B94A600(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEA8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B94A6BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEA8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B94A76C()
{
  v1 = type metadata accessor for ReportAnalyticsModifier();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21BA864AC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  j__swift_release();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21B94A904()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = (sub_21BA87A9C() - 8);
  v8 = *(*v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(*v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v9 + v7[10], AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_21B94AA98()
{
  sub_21BA86B5C();
  sub_21BA86C5C();
  sub_21BA46474();
  return swift_getWitnessTable();
}

uint64_t sub_21B94AB10()
{
  MEMORY[0x21CEFF260](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B94AB48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 sub_21B94ABF0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21B94AC00()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21B94AC48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RUIToolbarContentProvider(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21B94ACB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RUIToolbarContentProvider(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21B94AD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BA8655C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21B94ADE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21BA8655C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21B94AE98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EB80);
  sub_21B9B35B8(&qword_27CD9EB78, &qword_27CD9EB80);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21B94AF34()
{
  type metadata accessor for RUIToolbarModifier(255);
  sub_21BA86C5C();
  sub_21BA52774(&qword_27CD9F6E0, type metadata accessor for RUIToolbarModifier);
  return swift_getWitnessTable();
}

uint64_t sub_21B94AFD4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F6E8);
  sub_21BA86C5C();
  sub_21B9B35B8(&qword_27CD9F6F0, &qword_27CD9F6E8);
  return swift_getWitnessTable();
}

uint64_t sub_21B94B084()
{
  sub_21BA86C5C();
  sub_21BA69754();
  return swift_getWitnessTable();
}

uint64_t sub_21B94B0EC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21B94B138()
{

  if (*(v0 + 112))
  {
    sub_21B9CA1E8(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

    sub_21B9CB19C(*(v0 + 208), *(v0 + 216));
  }

  return MEMORY[0x2821FE8E8](v0, 264, 7);
}

uint64_t sub_21B94B1D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F8E8);
  sub_21BA6B7F0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21B94B238(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B94B2A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B94B324()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_21B94B36C()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B94B3A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B94B3E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21B94B434()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B94B4AC()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

void sub_21B94B4EC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

JSValueRef RUIJSTableRow_getProperty(const OpaqueJSContext *a1, JSObjectRef object, OpaqueJSString *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = JSObjectGetPrivate(object);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v6 = JSStringCopyCFString(0, a3);
  if (![(__CFString *)v6 isEqualToString:@"label"])
  {
    if ([(__CFString *)v6 isEqualToString:@"subLabel"])
    {
      v7 = [v5 subLabel];
      goto LABEL_6;
    }

    if (_isInternalInstall())
    {
      v12 = _RUILoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, "Not allowed to fetch table property '%@'", &v14, 0xCu);
      }
    }

LABEL_14:
    Undefined = JSValueMakeUndefined(a1);
    goto LABEL_15;
  }

  v7 = [v5 label];
LABEL_6:
  v8 = v7;
  v9 = &stru_282D68F58;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  Undefined = RUIMakeJSValueFromString(a1, v10);
LABEL_15:

  return Undefined;
}

uint64_t RUIJSTableRow_setProperty(const OpaqueJSContext *a1, JSObjectRef object, OpaqueJSString *a3, const OpaqueJSValue *a4)
{
  v7 = JSObjectGetPrivate(object);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  v8 = JSStringCopyCFString(0, a3);
  if (![(__CFString *)v8 isEqualToString:@"label"])
  {
    if (![(__CFString *)v8 isEqualToString:@"subLabel"])
    {
      goto LABEL_17;
    }

    if (JSValueIsString(a1, a4))
    {
      v9 = RUIStringFromJSValue(a1, a4);
      [v7 setSubLabel:v9];
      goto LABEL_8;
    }

    if (!_isInternalInstall())
    {
      goto LABEL_17;
    }

    v11 = _RUILoggingFacility();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v15 = 0;
    v12 = "tableRow.subLabel: must be set to a string";
    v13 = &v15;
    goto LABEL_15;
  }

  if (!JSValueIsString(a1, a4))
  {
    if (!_isInternalInstall())
    {
LABEL_17:

LABEL_18:
      v10 = 0;
      goto LABEL_19;
    }

    v11 = _RUILoggingFacility();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:

      goto LABEL_17;
    }

    v16 = 0;
    v12 = "tableRow.label: must be set to a string";
    v13 = &v16;
LABEL_15:
    _os_log_impl(&dword_21B93D000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
    goto LABEL_16;
  }

  v9 = RUIStringFromJSValue(a1, a4);
  [v7 setLabel:v9];
LABEL_8:

  v10 = 1;
LABEL_19:

  return v10;
}

void *RUIJSTableRow_updateAttributes(const OpaqueJSContext *a1, int a2, JSObjectRef object, uint64_t a4, JSValueRef *a5)
{
  v72 = *MEMORY[0x277D85DE8];
  v8 = JSObjectGetPrivate(object);
  v9 = [v8 parent];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (!_isInternalInstall())
    {
      goto LABEL_30;
    }

    v44 = _RUILoggingFacility();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
LABEL_29:

      goto LABEL_30;
    }

    *buf = 0;
    v45 = "row.updateAttributes() section not found";
    goto LABEL_27;
  }

  v10 = [v9 rows];
  v11 = [v10 indexOfObject:v8];

  v12 = [v9 rows];
  v13 = [v12 count];

  if ((v11 & 0x8000000000000000) != 0 || v11 > v13)
  {
    if (!_isInternalInstall())
    {
      goto LABEL_30;
    }

    v44 = _RUILoggingFacility();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 134217984;
    v71 = v11;
    v45 = "row.updateAttributes() invalid row index %ld.";
    v46 = v44;
    v47 = 12;
    goto LABEL_28;
  }

  if (a4 != 3 || !*a5 || !JSValueIsString(a1, *a5) || (v14 = a5[1]) == 0 || !JSValueIsObject(a1, v14))
  {
    if (!_isInternalInstall())
    {
      goto LABEL_30;
    }

    v44 = _RUILoggingFacility();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v45 = "row.updateAttributes(): invalid arguments";
LABEL_27:
    v46 = v44;
    v47 = 2;
LABEL_28:
    _os_log_impl(&dword_21B93D000, v46, OS_LOG_TYPE_DEFAULT, v45, buf, v47);
    goto LABEL_29;
  }

  v15 = JSValueToBoolean(a1, a5[2]);
  v16 = MEMORY[0x277CD4658];
  v17 = a5[1];
  v18 = [MEMORY[0x277CD4640] contextWithJSGlobalContextRef:JSContextGetGlobalContext(a1)];
  v19 = [v16 valueWithJSValueRef:v17 inContext:v18];

  v20 = [v19 toDictionary];
  v21 = [v20 mutableCopy];

  v59 = v21;
  if (v21)
  {
    v22 = JSValueToStringCopy(a1, *a5, 0);
    Default = CFAllocatorGetDefault();
    v24 = JSStringCopyCFString(Default, v22);
    JSStringRelease(v22);
    v25 = [RUIParser tableRowClassForElementName:v24];
    if (v25)
    {
      v58 = v9;
      [v21 setObject:v25 forKey:@"class"];
      v26 = [v21 mutableCopy];
      v57 = a1;
      v51 = v25;
      v53 = v24;
      if (v15)
      {
        v27 = [v8 attributes];
        v28 = [v27 mutableCopy];

        [v28 addEntriesFromDictionary:v21];
        v26 = v28;
      }

      v55 = v11;
      v56 = v19;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v29 = [v26 allKeys];
      v30 = [v29 countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v66;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v66 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v65 + 1) + 8 * i);
            v35 = [v26 objectForKeyedSubscript:v34];
            v36 = [MEMORY[0x277CBEB68] null];
            v37 = [v35 isEqual:v36];

            if (v37)
            {
              [v26 setObject:0 forKeyedSubscript:v34];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v65 objects:v69 count:16];
        }

        while (v31);
      }

      v9 = v58;
      v38 = [v58 tableElement];
      v39 = [RUIParser rowWithAttributeDict:v26 delegate:v38 parent:v58];

      v40 = [v58 tableElement];
      Undefined = [v40 sections];
      v42 = [Undefined indexOfObject:v58];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __RUIJSTableRow_updateAttributes_block_invoke;
      block[3] = &unk_2782E7EB8;
      v61 = v58;
      v62 = v39;
      v63 = v55;
      v64 = v42;
      v43 = v39;
      dispatch_async(MEMORY[0x277D85CD0], block);

      v19 = v56;
      a1 = v57;
      v25 = v52;
      v24 = v54;
    }

    else
    {
      if (_isInternalInstall())
      {
        v50 = _RUILoggingFacility();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v71 = v24;
          _os_log_impl(&dword_21B93D000, v50, OS_LOG_TYPE_DEFAULT, "row.updateAttributes() unknown row type %@.", buf, 0xCu);
        }
      }

      Undefined = JSValueMakeUndefined(a1);
    }

    if (!v25)
    {
      goto LABEL_31;
    }

LABEL_30:
    Undefined = JSValueMakeUndefined(a1);
    goto LABEL_31;
  }

  if (_isInternalInstall())
  {
    v49 = _RUILoggingFacility();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, v49, OS_LOG_TYPE_DEFAULT, "row.updateAttributes() unable to handle attributes dict.", buf, 2u);
    }
  }

  Undefined = JSValueMakeUndefined(a1);

LABEL_31:
  return Undefined;
}

void sub_21B952D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak((v9 + 56));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v10 - 56));
  _Unwind_Resume(a1);
}

JSValueRef RUIJSElement_getProperty(const OpaqueJSContext *a1, JSObjectRef object, OpaqueJSString *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = JSObjectGetPrivate(object);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v6 = JSStringCopyCFString(0, a3);
  if ([(__CFString *)v6 isEqualToString:@"identifier"])
  {
    v7 = [v5 identifier];
LABEL_4:
    v8 = v7;
    v9 = &stru_282D68F58;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    Boolean = RUIMakeJSValueFromString(a1, v10);
    goto LABEL_9;
  }

  if (![(__CFString *)v6 isEqualToString:@"page"])
  {
    if ([(__CFString *)v6 isEqualToString:@"body"])
    {
      v7 = [v5 body];
      goto LABEL_4;
    }

    if ([(__CFString *)v6 isEqualToString:@"enabled"])
    {
      Boolean = JSValueMakeBoolean(a1, [v5 enabled]);
      goto LABEL_9;
    }

    if (_isInternalInstall())
    {
      v13 = _RUILoggingFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&dword_21B93D000, v13, OS_LOG_TYPE_DEFAULT, "Not allowed to fetch element property '%@'", &v15, 0xCu);
      }
    }

LABEL_19:
    Boolean = JSValueMakeUndefined(a1);
    goto LABEL_20;
  }

  v12 = [v5 pageElement];
  Boolean = [v12 JSValueForContext:a1];

LABEL_9:
LABEL_20:

  return Boolean;
}

uint64_t RUIJSElement_setProperty(const OpaqueJSContext *a1, JSObjectRef object, OpaqueJSString *a3, const OpaqueJSValue *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = JSObjectGetPrivate(object);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  v8 = JSStringCopyCFString(0, a3);
  if (![(__CFString *)v8 isEqualToString:@"body"])
  {
    if ([(__CFString *)v8 isEqualToString:@"enabled"])
    {
      if (JSValueIsBoolean(a1, a4))
      {
        [v7 setEnabled:{JSValueToBoolean(a1, a4)}];
      }

      else if (_isInternalInstall())
      {
        v12 = _RUILoggingFacility();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          v13 = "element.enabled must be BOOLean";
          goto LABEL_17;
        }

LABEL_19:
      }
    }

    else if (_isInternalInstall())
    {
      v12 = _RUILoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v8;
        v13 = "Not allowed to set element property '%@'";
        v14 = v12;
        v15 = 12;
LABEL_18:
        _os_log_impl(&dword_21B93D000, v14, OS_LOG_TYPE_DEFAULT, v13, &v17, v15);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

LABEL_20:

LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  v9 = RUIStringFromJSValue(a1, a4);
  if (!v9)
  {
    if (_isInternalInstall())
    {
      v12 = _RUILoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        v13 = "element.body must be a string";
LABEL_17:
        v14 = v12;
        v15 = 2;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v10 = v9;
  [v7 setBody:v9];

  v11 = 1;
LABEL_22:

  return v11;
}

JSValueRef RUIJSElement_activate(const OpaqueJSContext *a1, int a2, JSObjectRef object, uint64_t a4)
{
  if (!a4)
  {
    v5 = JSObjectGetPrivate(object);
    [v5 performAction:2 completion:0];
LABEL_6:

    return JSValueMakeUndefined(a1);
  }

  if (_isInternalInstall())
  {
    v5 = _RUILoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21B93D000, v5, OS_LOG_TYPE_DEFAULT, "element.activate(): invalid arguments", v7, 2u);
    }

    goto LABEL_6;
  }

  return JSValueMakeUndefined(a1);
}

JSValueRef RUIJSElement_getAttribute(JSContextRef ctx, uint64_t a2, OpaqueJSValue *a3, uint64_t a4, JSValueRef *a5)
{
  if (a4 == 1 && *a5 && JSValueIsString(ctx, *a5))
  {
    v8 = JSValueToStringCopy(ctx, *a5, 0);
    Default = CFAllocatorGetDefault();
    v10 = JSStringCopyCFString(Default, v8);
    JSStringRelease(v8);
    if ([v10 length])
    {
      v11 = JSObjectGetPrivate(a3);
      v12 = [v11 attributes];
      v13 = [v12 objectForKeyedSubscript:v10];

      v14 = RUIMakeJSValueFromString(ctx, v13);
      return v14;
    }

    goto LABEL_9;
  }

  if (_isInternalInstall())
  {
    v10 = _RUILoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_21B93D000, v10, OS_LOG_TYPE_DEFAULT, "element.getAttribute(): invalid arguments", v16, 2u);
    }

LABEL_9:
  }

  return JSValueMakeUndefined(ctx);
}

void sub_21B9554D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getBFFStyleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBFFStyleClass_softClass;
  v7 = getBFFStyleClass_softClass;
  if (!getBFFStyleClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBFFStyleClass_block_invoke;
    v3[3] = &unk_2782E8258;
    v3[4] = &v4;
    __getBFFStyleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21B957574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBFFStyleClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SetupAssistantUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2782E8278;
    v5 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SetupAssistantUILibraryCore_frameworkLibrary)
  {
    __getBFFStyleClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBFFStyleClass_block_invoke_cold_1();
  }

  getBFFStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary = result;
  return result;
}

JSValueRef RUIJSSection_getProperty(const OpaqueJSContext *a1, JSObjectRef object, OpaqueJSString *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = JSObjectGetPrivate(object);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v6 = JSStringCopyCFString(0, a3);
  if (![(__CFString *)v6 isEqualToString:@"rowCount"])
  {
    if ([(__CFString *)v6 isEqualToString:@"sectionIndex"])
    {
      v9 = [v5 tableElement];
      v10 = [v9 sections];
      v11 = [v10 indexOfObject:v5];

      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = -1;
      }

      else
      {
        v12 = v11;
      }

      Number = JSValueMakeNumber(a1, v12);
      goto LABEL_9;
    }

    if (_isInternalInstall())
    {
      v13 = _RUILoggingFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&dword_21B93D000, v13, OS_LOG_TYPE_DEFAULT, "Not allowed to fetch element property '%@'", &v15, 0xCu);
      }
    }

LABEL_15:
    Number = JSValueMakeUndefined(a1);
    goto LABEL_16;
  }

  v7 = [v5 rows];
  Number = JSValueMakeNumber(a1, [v7 count]);

LABEL_9:
LABEL_16:

  return Number;
}

JSValueRef RUIJSSection_insertRow(const OpaqueJSContext *a1, int a2, JSObjectRef object, uint64_t a4, JSValueRef *a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = JSObjectGetPrivate(object);
  if (a4 != 3 || !*a5 || !JSValueIsNumber(a1, *a5) || (v9 = a5[1]) == 0 || !JSValueIsString(a1, v9) || (v10 = a5[2]) == 0 || !JSValueIsObject(a1, v10))
  {
    if (!_isInternalInstall())
    {
      goto LABEL_18;
    }

    v32 = _RUILoggingFacility();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
LABEL_17:

      goto LABEL_18;
    }

    *buf = 0;
    v33 = "section.insertRow(): invalid arguments";
    v34 = v32;
    v35 = 2;
LABEL_16:
    _os_log_impl(&dword_21B93D000, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
    goto LABEL_17;
  }

  v11 = JSValueToNumber(a1, *a5, 0);
  v12 = [v8 rows];
  v13 = [v12 count];

  if (v11 < 0 || (Undefined = v11, v13 < v11))
  {
    if (!_isInternalInstall())
    {
      goto LABEL_18;
    }

    v32 = _RUILoggingFacility();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 67109120;
    LODWORD(v41) = v11;
    v33 = "section.insertRow() invalid row index %i.";
    v34 = v32;
    v35 = 8;
    goto LABEL_16;
  }

  v15 = MEMORY[0x277CD4658];
  v16 = a5[2];
  v17 = [MEMORY[0x277CD4640] contextWithJSGlobalContextRef:JSContextGetGlobalContext(a1)];
  v18 = [v15 valueWithJSValueRef:v16 inContext:v17];

  v19 = [v18 toDictionary];
  v20 = [v19 mutableCopy];

  if (v20)
  {
    v21 = JSValueToStringCopy(a1, a5[1], 0);
    Default = CFAllocatorGetDefault();
    v23 = JSStringCopyCFString(Default, v21);
    JSStringRelease(v21);
    v24 = [RUIParser tableRowClassForElementName:v23];
    if (v24)
    {
      [v20 setObject:v24 forKey:@"class"];
      v39 = v23;
      v25 = [v8 tableElement];
      v26 = [RUIParser rowWithAttributeDict:v20 delegate:v25 parent:v8];

      v27 = [v8 tableElement];
      v28 = [v27 sections];
      v29 = [v28 indexOfObject:v8];

      v30 = [v8 tableElement];
      v31 = [MEMORY[0x277CCAA70] indexPathForRow:Undefined inSection:v29];
      [v30 insertRow:v26 atIndexPath:v31];

      v23 = v39;
    }

    else
    {
      if (_isInternalInstall())
      {
        v38 = _RUILoggingFacility();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v23;
          _os_log_impl(&dword_21B93D000, v38, OS_LOG_TYPE_DEFAULT, "section.insertRow() unknown row type %@.", buf, 0xCu);
        }
      }

      Undefined = JSValueMakeUndefined(a1);
    }

    if (!v24)
    {
      goto LABEL_19;
    }

LABEL_18:
    Undefined = JSValueMakeUndefined(a1);
    goto LABEL_19;
  }

  if (_isInternalInstall())
  {
    v37 = _RUILoggingFacility();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, v37, OS_LOG_TYPE_DEFAULT, "section.insertRow() unable to handle attributes dict.", buf, 2u);
    }
  }

  Undefined = JSValueMakeUndefined(a1);

LABEL_19:
  return Undefined;
}

JSValueRef RUIJSSection_removeRow(const OpaqueJSContext *a1, int a2, JSObjectRef object, uint64_t a4, JSValueRef *a5)
{
  v8 = JSObjectGetPrivate(object);
  if (a4 == 1 && *a5 && JSValueIsNumber(a1, *a5))
  {
    v9 = JSValueToNumber(a1, *a5, 0);
    v10 = [v8 tableElement];
    v11 = [v10 sections];
    v12 = [v11 indexOfObject:v8];

    v13 = [v8 tableElement];
    v14 = [v13 tableView];
    v15 = [v14 numberOfRowsInSection:v12];

    if (v15 <= v9)
    {
      v16 = _RUILoggingFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        RUIJSSection_removeRow_cold_1(v12, v9, v16);
      }
    }

    else
    {
      v16 = [v8 tableElement];
      v17 = [MEMORY[0x277CCAA70] indexPathForRow:v9 inSection:v12];
      [v16 removeRowAtIndexPath:v17];
    }
  }

  Undefined = JSValueMakeUndefined(a1);

  return Undefined;
}

JSValueRef RUIJSSection_updateHTMLFooterContent(const OpaqueJSContext *a1, int a2, JSObjectRef object, uint64_t a4, JSValueRef *a5)
{
  v8 = JSObjectGetPrivate(object);
  if (a4 == 1 && *a5 && JSValueIsString(a1, *a5))
  {
    v9 = JSValueToStringCopy(a1, *a5, 0);
    Default = CFAllocatorGetDefault();
    v11 = JSStringCopyCFString(Default, v9);
    JSStringRelease(v9);
    v12 = [v8 footerView];
    if (objc_opt_respondsToSelector())
    {
      [v12 setText:v11 attributes:0];
    }

    else if (_isInternalInstall())
    {
      v15 = _RUILoggingFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_21B93D000, v15, OS_LOG_TYPE_DEFAULT, "Section footer view doesn't respond to setText:attributes:, can't update the footer content.", v16, 2u);
      }
    }
  }

  else
  {
    v11 = _RUILoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      RUIJSSection_updateHTMLFooterContent_cold_1(v11);
    }
  }

  Undefined = JSValueMakeUndefined(a1);
  return Undefined;
}

JSValueRef RUIJSSection_updateHTMLHeaderContent(const OpaqueJSContext *a1, int a2, JSObjectRef object, uint64_t a4, JSValueRef *a5)
{
  v8 = JSObjectGetPrivate(object);
  if (a4 == 1 && *a5 && JSValueIsString(a1, *a5))
  {
    v9 = JSValueToStringCopy(a1, *a5, 0);
    Default = CFAllocatorGetDefault();
    v11 = JSStringCopyCFString(Default, v9);
    JSStringRelease(v9);
    v12 = [v8 headerView];
    if (objc_opt_respondsToSelector())
    {
      [v12 setText:v11 attributes:0];
    }

    else if (_isInternalInstall())
    {
      v15 = _RUILoggingFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_21B93D000, v15, OS_LOG_TYPE_DEFAULT, "Section header view doesn't respond to setText:attributes:, can't update the header content.", v16, 2u);
      }
    }
  }

  else
  {
    v11 = _RUILoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      RUIJSSection_updateHTMLFooterContent_cold_1(v11);
    }
  }

  Undefined = JSValueMakeUndefined(a1);
  return Undefined;
}

JSValueRef RUIMakeJSValueFromString(JSContextRef ctx, CFStringRef string)
{
  if (string)
  {
    v3 = JSStringCreateWithCFString(string);
    v4 = JSValueMakeString(ctx, v3);
    JSStringRelease(v3);
    return v4;
  }

  else
  {

    return JSValueMakeUndefined(ctx);
  }
}

__CFString *RUIStringFromJSValue(const OpaqueJSContext *a1, const OpaqueJSValue *a2)
{
  if (JSValueIsString(a1, a2))
  {
    v4 = JSValueToStringCopy(a1, a2, 0);
    Default = CFAllocatorGetDefault();
    v6 = JSStringCopyCFString(Default, v4);
    JSStringRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void RUILogException(const OpaqueJSContext *a1, const OpaqueJSValue *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = JSValueToStringCopy(a1, a2, 0);
    Default = CFAllocatorGetDefault();
    v6 = JSStringCopyCFString(Default, v4);
    JSStringRelease(v4);
    v7 = JSValueToObject(a1, a2, 0);
    v8 = JSStringCreateWithCFString(@"line");
    Property = JSObjectGetProperty(a1, v7, v8, 0);
    JSStringRelease(v8);
    if (JSValueGetType(a1, Property) == kJSTypeNumber)
    {
      v10 = JSValueToNumber(a1, Property, 0);
    }

    else
    {
      v10 = 0;
    }

    if (_isInternalInstall())
    {
      v11 = _RUILoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 67109378;
        v12[1] = v10;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_21B93D000, v11, OS_LOG_TYPE_DEFAULT, "JavaScript Error at Line %d, %@", v12, 0x12u);
      }
    }
  }
}

id getMCProfileConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMCProfileConnectionClass_softClass;
  v7 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMCProfileConnectionClass_block_invoke;
    v3[3] = &unk_2782E8258;
    v3[4] = &v4;
    __getMCProfileConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21B95BF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2782E8300;
    v5 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    __getMCProfileConnectionClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMCProfileConnectionClass_block_invoke_cold_1();
  }

  getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

void _loadImages(void *a1)
{
  v7 = a1;
  [v7[1] lock];
  v1 = [v7[2] count];
  if (v1)
  {
    v2 = v1;
    for (i = 0; i != v2; ++i)
    {
      v4 = [v7[2] objectAtIndex:i];
      [v7 _locked_imageLoadStarted:v4];
      [v4 start];
    }

    [v7 _loadingStatusChanged];
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = v7[2];
  v7[2] = v5;

  [v7[1] unlock];
}

void sub_21B95FA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B95FC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B9600C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B960230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B9603A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

JSClassRef RUIJSObjectModel_class()
{
  result = RUIJSObjectModel_class_jsClass;
  if (!RUIJSObjectModel_class_jsClass)
  {
    v1 = *(MEMORY[0x277CD4678] + 48);
    *&v5.staticFunctions = *(MEMORY[0x277CD4678] + 32);
    *&v5.finalize = v1;
    v2 = *(MEMORY[0x277CD4678] + 80);
    *&v5.getProperty = *(MEMORY[0x277CD4678] + 64);
    *&v5.deleteProperty = v2;
    v3 = *(MEMORY[0x277CD4678] + 112);
    *&v5.callAsFunction = *(MEMORY[0x277CD4678] + 96);
    *&v5.hasInstance = v3;
    v4 = *(MEMORY[0x277CD4678] + 16);
    *&v5.version = *MEMORY[0x277CD4678];
    *&v5.parentClass = v4;
    v5.staticFunctions = &RUIJSObjectModel_staticFunctions;
    v5.initialize = RUIJSObjectModel_initialize;
    v5.finalize = RUIJSObjectModel_finalize;
    result = JSClassCreate(&v5);
    RUIJSObjectModel_class_jsClass = result;
  }

  return result;
}

JSValueRef RUIJSObjectModel_alert(const OpaqueJSContext *a1, int a2, JSObjectRef object, unint64_t a4, JSValueRef *a5)
{
  v8 = JSObjectGetPrivate(object);
  v9 = [v8 delegate];
  v10 = objc_opt_respondsToSelector();

  v11 = [v8 delegate];
  v12 = v11;
  if (v10)
  {
    [v11 viewControllerForAlertPresentation];
  }

  else
  {
    [v11 parentViewControllerForObjectModel:v8];
  }
  v13 = ;

  if (!a4)
  {
    goto LABEL_47;
  }

  if (a4 == 1)
  {
    if (!*a5)
    {
      goto LABEL_47;
    }

    if (JSValueIsObject(a1, *a5))
    {
      v77 = v13;
      v14 = *a5;
      v15 = [MEMORY[0x277CD4640] contextWithJSGlobalContextRef:JSContextGetGlobalContext(a1)];
      v16 = [MEMORY[0x277CD4658] valueWithJSValueRef:v14 inContext:v15];
      v17 = [v16 valueForProperty:@"title"];
      v18 = [v17 toString];

      v19 = [v16 valueForProperty:@"message"];
      v71 = [v19 toString];

      v20 = [v16 valueForProperty:@"style"];
      v21 = [v20 toString];

      v69 = v21;
      v22 = [v21 isEqualToString:@"sheet"];
      v23 = [v16 valueForProperty:@"buttons"];
      v24 = [v23 toArray];

      exception[0] = 0;
      Property = RUIJSValueGetProperty(a1, v14, @"buttons");
      v26 = JSValueToObject(a1, Property, exception);
      RUILogException(a1, exception[0]);
      string = v24;
      objecta = v26;
      if (v26 && [(OpaqueJSString *)v24 count])
      {
        v67 = v18;
        v68 = v16;
        v70 = [MEMORY[0x277D75110] alertControllerWithTitle:v18 message:v71 preferredStyle:v22 ^ 1u];
        if (![(OpaqueJSString *)v24 count])
        {
LABEL_33:
          v43 = v70;
          v30 = [v70 actions];
          if ([v30 count])
          {
            v44 = v70;
          }

          else
          {
            v44 = 0;
          }

          v45 = v44;
          v46 = v67;
          v16 = v68;
          v47 = v69;
          goto LABEL_37;
        }

        v27 = 0;
        v28 = 1;
        v72 = v15;
        while (1)
        {
          exception[0] = 0;
          PropertyAtIndex = JSObjectGetPropertyAtIndex(a1, objecta, v28 - 1, exception);
          RUILogException(a1, exception[0]);
          if (JSValueIsUndefined(a1, PropertyAtIndex))
          {
            v45 = 0;
            v46 = v67;
            v16 = v68;
            v47 = v69;
            v43 = v70;
            goto LABEL_71;
          }

          v30 = [(OpaqueJSString *)v24 objectAtIndexedSubscript:v27];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (_isInternalInstall())
            {
              v66 = _RUILoggingFacility();
              v46 = v67;
              v16 = v68;
              v47 = v69;
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_21B93D000, v66, OS_LOG_TYPE_DEFAULT, "xmlui.alert buttons must be an array of dictionaries", buf, 2u);
              }

              v45 = 0;
              v43 = v70;
            }

            else
            {
              v45 = 0;
              v46 = v67;
              v16 = v68;
              v47 = v69;
              v43 = v70;
            }

LABEL_37:

LABEL_71:
            v13 = v77;

            goto LABEL_72;
          }

          v31 = [MEMORY[0x277CD4658] valueWithJSValueRef:RUIJSValueGetProperty(a1 inContext:{PropertyAtIndex, @"handler", v15}];
          v32 = v31;
          if (v31)
          {
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 3221225472;
            aBlock[2] = ___alertFromObject_block_invoke;
            aBlock[3] = &unk_2782E8520;
            v80 = v31;
            v81 = v15;
            v33 = _Block_copy(aBlock);
          }

          else
          {
            v33 = 0;
          }

          v34 = [v30 objectForKeyedSubscript:@"title"];
          objc_opt_class();
          v35 = (objc_opt_isKindOfClass() & 1) != 0 ? v34 : 0;
          v36 = v35;

          if (v36)
          {
            break;
          }

          if (_isInternalInstall())
          {
            v39 = _RUILoggingFacility();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21B93D000, v39, OS_LOG_TYPE_DEFAULT, "xmlui.alert: Buttons must have a title", buf, 2u);
            }

            goto LABEL_31;
          }

LABEL_32:

          v27 = v28;
          v42 = [(OpaqueJSString *)v24 count]> v28++;
          v15 = v72;
          if (!v42)
          {
            goto LABEL_33;
          }
        }

        v37 = [v30 objectForKeyedSubscript:@"style"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v38 = v37;
        }

        else
        {
          v38 = 0;
        }

        v39 = v38;

        if (([v39 isEqualToString:@"destructive"]& 1) != 0)
        {
          v40 = 2;
        }

        else
        {
          v40 = [v39 isEqualToString:@"cancel"];
        }

        v41 = [MEMORY[0x277D750F8] actionWithTitle:v36 style:v40 handler:v33];
        [v70 addAction:v41];

        v24 = string;
LABEL_31:

        goto LABEL_32;
      }

      v46 = v18;
      if (_isInternalInstall())
      {
        v43 = _RUILoggingFacility();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(aBlock[0]) = 0;
          _os_log_impl(&dword_21B93D000, v43, OS_LOG_TYPE_DEFAULT, "Can't display an alert with no buttons!", aBlock, 2u);
        }

        v45 = 0;
        v47 = v69;
        goto LABEL_71;
      }

      v45 = 0;
      v47 = v69;
      v13 = v77;
LABEL_72:

      if (v45)
      {
        goto LABEL_73;
      }

      goto LABEL_75;
    }
  }

  if (!*a5 || !JSValueIsString(a1, *a5))
  {
LABEL_47:
    if (_isInternalInstall())
    {
      v45 = _RUILoggingFacility();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(aBlock[0]) = 0;
        _os_log_impl(&dword_21B93D000, v45, OS_LOG_TYPE_DEFAULT, "xmlui.alert called with bogus args", aBlock, 2u);
      }

      goto LABEL_74;
    }

    goto LABEL_75;
  }

  v48 = JSValueToStringCopy(a1, *a5, 0);
  Default = CFAllocatorGetDefault();
  v50 = JSStringCopyCFString(Default, v48);
  objectb = v48;
  v78 = v13;
  if (a4 != 1 && (v51 = a5[1]) != 0 && JSValueIsString(a1, v51))
  {
    v52 = JSValueToStringCopy(a1, a5[1], 0);
    v53 = CFAllocatorGetDefault();
    stringa = v52;
    v54 = JSStringCopyCFString(v53, v52);
    if (a4 >= 3)
    {
      v55 = a5[2];
      if (v55)
      {
        if (JSValueIsString(a1, v55))
        {
          v56 = JSValueToStringCopy(a1, a5[2], 0);
          v57 = CFAllocatorGetDefault();
          v58 = JSStringCopyCFString(v57, v56);
          goto LABEL_52;
        }
      }
    }

    v58 = 0;
  }

  else
  {
    v54 = 0;
    v58 = 0;
    stringa = 0;
  }

  v56 = 0;
LABEL_52:
  v59 = v54;
  v60 = v50;
  v45 = [MEMORY[0x277D75110] alertControllerWithTitle:v54 message:v50 preferredStyle:1];
  v61 = MEMORY[0x277D750F8];
  v62 = v58;
  if (!v58)
  {
    v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v62 = [v50 localizedStringForKey:@"OK" value:&stru_282D68F58 table:@"Localizable"];
  }

  v63 = [v61 actionWithTitle:v62 style:0 handler:0];
  [v45 addAction:v63];

  if (!v58)
  {
  }

  if (objectb)
  {
    JSStringRelease(objectb);
  }

  if (stringa)
  {
    JSStringRelease(stringa);
  }

  if (v56)
  {
    JSStringRelease(v56);
  }

  v13 = v78;
  if (v45)
  {
LABEL_73:
    [v13 presentViewController:v45 animated:1 completion:0];
LABEL_74:
  }

LABEL_75:
  Undefined = JSValueMakeUndefined(a1);

  return Undefined;
}

JSValueRef RUIJSObjectModel_log(JSContextRef ctx, uint64_t a2, uint64_t a3, uint64_t a4, JSValueRef *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a4 && *a5 && JSValueIsString(ctx, *a5))
  {
    v7 = JSValueToStringCopy(ctx, *a5, 0);
    Default = CFAllocatorGetDefault();
    v9 = JSStringCopyCFString(Default, v7);
    if (_isInternalInstall())
    {
      v10 = _RUILoggingFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_21B93D000, v10, OS_LOG_TYPE_DEFAULT, "xmlui.log: %@", &v12, 0xCu);
      }
    }

    JSStringRelease(v7);
LABEL_12:

    return JSValueMakeUndefined(ctx);
  }

  if (_isInternalInstall())
  {
    v9 = _RUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "xmlui.log called with bogus args", &v12, 2u);
    }

    goto LABEL_12;
  }

  return JSValueMakeUndefined(ctx);
}

JSValueRef RUIJSObjectModel_getFieldValue(JSContextRef ctx, uint64_t a2, OpaqueJSValue *a3, uint64_t a4, JSValueRef *a5)
{
  if (!a4 || !*a5 || !JSValueIsString(ctx, *a5))
  {
    if (_isInternalInstall())
    {
      v15 = _RUILoggingFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_21B93D000, v15, OS_LOG_TYPE_DEFAULT, "xmlui.getFieldValue called with bogus args", v17, 2u);
      }
    }

    return JSValueMakeUndefined(ctx);
  }

  v8 = JSValueToStringCopy(ctx, *a5, 0);
  Default = CFAllocatorGetDefault();
  v10 = JSStringCopyCFString(Default, v8);
  v11 = JSObjectGetPrivate(a3);
  v12 = [v11 postbackDictionary];
  v13 = [v12 objectForKey:v10];
  v14 = JSValueFromValue(v13, ctx);
  JSStringRelease(v8);

  if (!v14)
  {
    return JSValueMakeUndefined(ctx);
  }

  return v14;
}

JSValueRef RUIJSObjectModel_setFieldValue(JSContextRef ctx, uint64_t a2, OpaqueJSValue *a3, unint64_t a4, JSValueRef *a5)
{
  if (RUIJSObjectModel_setFieldValue_onceToken != -1)
  {
    RUIJSObjectModel_setFieldValue_cold_1();
  }

  if (a4 >= 2)
  {
    if (*a5)
    {
      if (JSValueIsString(ctx, *a5))
      {
        v9 = a5[1];
        if (v9)
        {
          if (JSValueIsString(ctx, v9))
          {
            v10 = JSValueToStringCopy(ctx, *a5, 0);
            Default = CFAllocatorGetDefault();
            v12 = JSStringCopyCFString(Default, v10);
            v13 = JSValueToStringCopy(ctx, a5[1], 0);
            v14 = CFAllocatorGetDefault();
            v15 = JSStringCopyCFString(v14, v13);
            v16 = JSObjectGetPrivate(a3);
            v17 = [v16 rowForFormField:v12];
            v18 = dispatch_semaphore_wait(RUIJSObjectModel_setFieldValue_reentrancy_sema, 0);
            [v17 setValueFromString:v15 notify:v18 == 0];
            if (v18 && _isInternalInstall())
            {
              v19 = _RUILoggingFacility();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_21B93D000, v19, OS_LOG_TYPE_DEFAULT, "Skipping row change notification due to too many reentrant calls to xmlui.setFieldValue", buf, 2u);
              }
            }

            dispatch_semaphore_signal(RUIJSObjectModel_setFieldValue_reentrancy_sema);

LABEL_17:
            return JSValueMakeUndefined(ctx);
          }
        }
      }
    }
  }

  if (_isInternalInstall())
  {
    v12 = _RUILoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, "xmlui.setFieldValue called with bogus args", v21, 2u);
    }

    goto LABEL_17;
  }

  return JSValueMakeUndefined(ctx);
}

JSValueRef RUIJSObjectModel_setFieldInvalid(JSContextRef ctx, uint64_t a2, OpaqueJSValue *a3, uint64_t a4, JSValueRef *a5)
{
  if (a4 && *a5 && JSValueIsString(ctx, *a5))
  {
    v9 = JSValueToStringCopy(ctx, *a5, 0);
    Default = CFAllocatorGetDefault();
    v11 = JSStringCopyCFString(Default, v9);
    v13 = a4 == 1 || (v12 = a5[1]) == 0 || !JSValueIsBoolean(ctx, v12) || JSValueToBoolean(ctx, a5[1]);
    v15 = JSObjectGetPrivate(a3);
    v16 = [v15 rowForFormField:v11];
    [v16 setRowInvalid:v13];
  }

  else if (_isInternalInstall())
  {
    v14 = _RUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_21B93D000, v14, OS_LOG_TYPE_DEFAULT, "xmlui.setFieldInvalid called with bogus args", v18, 2u);
    }
  }

  return JSValueMakeUndefined(ctx);
}

JSValueRef RUIJSObjectModel_setPostbackValueForKey(JSContextRef ctx, uint64_t a2, OpaqueJSValue *a3, uint64_t a4, JSValueRef *a5)
{
  if (a4 == 2)
  {
    if (*a5)
    {
      v7 = a5[1];
      if (v7)
      {
        if (JSValueIsString(ctx, v7))
        {
          v9 = JSValueToStringCopy(ctx, a5[1], 0);
          Default = CFAllocatorGetDefault();
          v11 = JSStringCopyCFString(Default, v9);
          IsBoolean = JSValueIsBoolean(ctx, *a5);
          v13 = *a5;
          if (IsBoolean)
          {
            v14 = [MEMORY[0x277CCABB0] numberWithBool:{JSValueToBoolean(ctx, v13)}];
          }

          else
          {
            IsNumber = JSValueIsNumber(ctx, v13);
            v16 = *a5;
            if (!IsNumber)
            {
              if (JSValueIsString(ctx, v16))
              {
                v22 = JSValueToStringCopy(ctx, *a5, 0);
                v23 = CFAllocatorGetDefault();
                v17 = JSStringCopyCFString(v23, v22);
                JSStringRelease(v22);
              }

              else
              {
                if (_isInternalInstall())
                {
                  v24 = _RUILoggingFacility();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_21B93D000, v24, OS_LOG_TYPE_DEFAULT, "xmlui.setPostbackValueForKey called with invalid value type", buf, 2u);
                  }
                }

                v17 = 0;
              }

              goto LABEL_13;
            }

            v14 = [MEMORY[0x277CCABB0] numberWithDouble:{JSValueToNumber(ctx, v16, 0)}];
          }

          v17 = v14;
LABEL_13:
          v18 = JSObjectGetPrivate(a3);
          v19 = [v18 updateInfo];
          v20 = [v19 mutableCopy];

          if (!v20)
          {
            v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
          }

          if (v17)
          {
            [v20 setObject:v17 forKey:v11];
          }

          [v18 setUpdateInfo:v20];
          JSStringRelease(v9);

LABEL_18:
          return JSValueMakeUndefined(ctx);
        }
      }
    }
  }

  if (_isInternalInstall())
  {
    v11 = _RUILoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_21B93D000, v11, OS_LOG_TYPE_DEFAULT, "xmlui.setPostbackValueForKey called with bogus args", v25, 2u);
    }

    goto LABEL_18;
  }

  return JSValueMakeUndefined(ctx);
}

JSValueRef RUIJSObjectModel_getElementById(JSContextRef ctx, uint64_t a2, OpaqueJSValue *a3, uint64_t a4, JSValueRef *a5)
{
  if (a4 != 1 || !*a5 || !JSValueIsString(ctx, *a5))
  {
    if (_isInternalInstall())
    {
      v14 = _RUILoggingFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_21B93D000, v14, OS_LOG_TYPE_DEFAULT, "xmlui.getElementById called with bogus args", v17, 2u);
      }
    }

    return JSValueMakeUndefined(ctx);
  }

  v8 = JSValueToStringCopy(ctx, *a5, 0);
  Default = CFAllocatorGetDefault();
  v10 = JSStringCopyCFString(Default, v8);
  JSStringRelease(v8);
  v11 = JSObjectGetPrivate(a3);
  v12 = [v11 jsInterfaceForElementId:v10];
  if (!v12)
  {
    v16 = [v11 subElementWithID:v10];
    v13 = [v16 JSValueForContext:ctx];

    if (v13)
    {
      return v13;
    }

    return JSValueMakeUndefined(ctx);
  }

  v13 = v12;

  return v13;
}

uint64_t RUIJSObjectModel_loadURL(const OpaqueJSContext *a1, uint64_t a2, OpaqueJSValue *a3, unint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CD4640] contextWithJSGlobalContextRef:JSContextGetGlobalContext(a1)];
  if (a4 && *a5 && JSValueIsString(a1, *a5))
  {
    v10 = RUIStringFromJSValue(a1, *a5);
    if (v10)
    {
      v11 = @"GET";
      if (a4 == 1 || ((RUIStringFromJSValue(a1, *(a5 + 8)), v12 = objc_claimAutoreleasedReturnValue(), (v13 = v12) != 0) ? (v14 = v12) : (v14 = @"GET"), v11 = v14, v13, a4 < 3))
      {
        v17 = 0;
      }

      else
      {
        v15 = [MEMORY[0x277CD4658] valueWithJSValueRef:*(a5 + 16) inContext:v9];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __RUIJSObjectModel_loadURL_block_invoke;
        aBlock[3] = &unk_2782E8548;
        v36 = v15;
        v37 = v9;
        v16 = v15;
        v17 = _Block_copy(aBlock);
      }

      v22 = JSObjectGetPrivate(a3);
      v23 = MEMORY[0x277CD4658];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __RUIJSObjectModel_loadURL_block_invoke_65;
      v29[3] = &unk_2782E8598;
      v30 = v22;
      v31 = v10;
      v32 = v11;
      v34 = v17;
      v33 = v9;
      v24 = v17;
      v25 = v11;
      v26 = v22;
      v20 = [v23 valueWithNewPromiseInContext:v33 fromExecutor:v29];
    }

    else
    {
      if (_isInternalInstall())
      {
        v27 = _RUILoggingFacility();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = 0;
          _os_log_impl(&dword_21B93D000, v27, OS_LOG_TYPE_DEFAULT, "xmlui.loadURL: Invalid URL: %@", buf, 0xCu);
        }
      }

      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"xmlui.loadURL: Invalid URL: %@", 0];
      v28 = MEMORY[0x277CD4658];
      v25 = [MEMORY[0x277CD4658] valueWithNewErrorFromMessage:v26 inContext:v9];
      v20 = [v28 valueWithNewPromiseRejectedWithReason:v25 inContext:v9];
    }
  }

  else
  {
    if (_isInternalInstall())
    {
      v18 = _RUILoggingFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B93D000, v18, OS_LOG_TYPE_DEFAULT, "xmlui.loadURL called with bogus args", buf, 2u);
      }
    }

    v19 = MEMORY[0x277CD4658];
    v10 = [MEMORY[0x277CD4658] valueWithNewErrorFromMessage:@"xmlui.loadURL called with bogus args" inContext:v9];
    v20 = [v19 valueWithNewPromiseRejectedWithReason:v10 inContext:v9];
  }

  return v20;
}

JSValueRef RUIJSObjectModel_showWebView(JSContextRef ctx, uint64_t a2, OpaqueJSValue *a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a4 && *a5 && JSValueIsString(ctx, *a5))
  {
    v9 = RUIStringFromJSValue(ctx, *a5);
    if (!v9)
    {
      if (!_isInternalInstall())
      {
LABEL_20:

        return JSValueMakeUndefined(ctx);
      }

      v13 = _RUILoggingFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = 0;
        _os_log_impl(&dword_21B93D000, v13, OS_LOG_TYPE_DEFAULT, "xmlui.showWebView: Invalid URL: %@", buf, 0xCu);
      }

LABEL_19:

      goto LABEL_20;
    }

    v10 = [MEMORY[0x277CD4640] contextWithJSGlobalContextRef:JSContextGetGlobalContext(ctx)];
    v11 = 0;
    if (a4 == 2)
    {
      v15 = 8;
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      if (a4 != 3)
      {
LABEL_18:
        v16 = JSObjectGetPrivate(a3);
        v17 = [v16 absoluteURLWithString:v9];
        v18 = [v12 objectForKeyedSubscript:@"dismissButtonLabel"];
        v19 = [v12 objectForKeyedSubscript:@"dismissButtonAlignment"];
        [v16 showModalWebViewWithLinkURL:v17 dismissButtonLabel:v18 dismissButtonAlignment:v19 scaleToFit:1 loadCompletion:0 dismissHandler:v13];

        goto LABEL_19;
      }

      v14 = [MEMORY[0x277CD4658] valueWithJSValueRef:*(a5 + 8) inContext:v10];
      v12 = [v14 toDictionary];

      v15 = 16;
    }

    v13 = [MEMORY[0x277CD4658] valueWithJSValueRef:*(a5 + v15) inContext:v10];
    if (v13)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __RUIJSObjectModel_showWebView_block_invoke;
      v21[3] = &unk_2782E85C0;
      v22 = v10;
      v11 = v13;
      v23 = v11;
      v13 = _Block_copy(v21);
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_18;
  }

  if (_isInternalInstall())
  {
    v9 = _RUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "xmlui.showWebView called with bogus args", buf, 2u);
    }

    goto LABEL_20;
  }

  return JSValueMakeUndefined(ctx);
}

const OpaqueJSValue *RUIJSValueGetProperty(const OpaqueJSContext *a1, const OpaqueJSValue *a2, void *a3)
{
  v5 = a3;
  exception = 0;
  v6 = JSValueToObject(a1, a2, &exception);
  RUILogException(a1, exception);
  if (!v6 || (v7 = JSStringCreateWithCFString(v5), Property = JSObjectGetProperty(a1, v6, v7, &exception), RUILogException(a1, exception), JSStringRelease(v7), JSValueIsUndefined(a1, Property)))
  {
    Property = 0;
  }

  return Property;
}

void ___alertFromObject_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) callWithArguments:MEMORY[0x277CBEBF8]];
  v3 = [*(a1 + 40) exception];

  if (v3 && _isInternalInstall())
  {
    v4 = _RUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) exception];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_21B93D000, v4, OS_LOG_TYPE_DEFAULT, "xmlui.alert button handler: %@", &v6, 0xCu);
    }
  }
}

JSValueRef JSValueFromValue(void *a1, const OpaqueJSContext *a2)
{
  arguments[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = JSStringCreateWithCFString(v3);
    String = JSValueMakeString(a2, v4);
    JSStringRelease(v4);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = JSValueFromValue_formatter;
      if (!JSValueFromValue_formatter)
      {
        v7 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
        v8 = objc_alloc_init(MEMORY[0x277CCA968]);
        v9 = JSValueFromValue_formatter;
        JSValueFromValue_formatter = v8;

        [JSValueFromValue_formatter setDateFormat:@"MMM d yyyy"];
        [JSValueFromValue_formatter setLocale:v7];

        v6 = JSValueFromValue_formatter;
      }

      v10 = [v6 stringFromDate:v3];
      v11 = JSStringCreateWithCFString(v10);
      arguments[0] = JSValueMakeString(a2, v11);
      String = JSObjectMakeDate(a2, 1uLL, arguments, 0);
      JSStringRelease(v11);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(__CFString *)v3 floatValue];
        String = JSValueMakeNumber(a2, v12);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (_isInternalInstall())
          {
            v21 = _RUILoggingFacility();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(arguments[0]) = 0;
              _os_log_impl(&dword_21B93D000, v21, OS_LOG_TYPE_DEFAULT, "JSValueFromValue unhandled data type", arguments, 2u);
            }
          }

          goto LABEL_18;
        }

        v13 = [(__CFString *)v3 count];
        MEMORY[0x28223BE20]();
        v16 = (arguments - v15);
        if (v14 >= 0x200)
        {
          v17 = 512;
        }

        else
        {
          v17 = v14;
        }

        bzero(arguments - v15, v17);
        if (v13)
        {
          for (i = 0; i != v13; ++i)
          {
            v19 = [(__CFString *)v3 objectAtIndex:i];
            v16[i] = JSValueFromValue(v19, a2);
          }
        }

        String = JSObjectMakeArray(a2, v13, v16, 0);
      }
    }
  }

  if (!String)
  {
LABEL_18:
    String = JSValueMakeUndefined(a2);
  }

  return String;
}

void sub_21B96BC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B96C2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B96C5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B9718C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B972008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAKAppleIDAuthenticationErrorDomain()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr;
  v7 = getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr;
  if (!getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr)
  {
    v1 = AuthKitLibrary();
    v5[3] = dlsym(v1, "AKAppleIDAuthenticationErrorDomain");
    getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getAKAppleIDAuthenticationErrorDomain_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_21B972114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAKAuthenticationPasswordKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAKAuthenticationPasswordKeySymbolLoc_ptr;
  v7 = getAKAuthenticationPasswordKeySymbolLoc_ptr;
  if (!getAKAuthenticationPasswordKeySymbolLoc_ptr)
  {
    v1 = AuthKitLibrary();
    v5[3] = dlsym(v1, "AKAuthenticationPasswordKey");
    getAKAuthenticationPasswordKeySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getAKAuthenticationPasswordKey_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_21B972218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAKAppleIDAuthenticationInAppContextClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AuthKitUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AuthKitUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2782E8980;
    v5 = 0;
    AuthKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AuthKitUILibraryCore_frameworkLibrary)
  {
    __getAKAppleIDAuthenticationInAppContextClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AKAppleIDAuthenticationInAppContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAKAppleIDAuthenticationInAppContextClass_block_invoke_cold_1();
  }

  getAKAppleIDAuthenticationInAppContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AuthKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AuthKitUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getACAccountStoreClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AppleAccountLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2782E8998;
    v5 = 0;
    AppleAccountLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    __getACAccountStoreClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("ACAccountStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getACAccountStoreClass_block_invoke_cold_1();
  }

  getACAccountStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleAccountLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleAccountLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAKAppleIDAuthenticationControllerClass_block_invoke(uint64_t a1)
{
  AuthKitLibrary();
  result = objc_getClass("AKAppleIDAuthenticationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAKAppleIDAuthenticationControllerClass_block_invoke_cold_1();
  }

  getAKAppleIDAuthenticationControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AuthKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __AuthKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2782E89B0;
    v4 = 0;
    AuthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AuthKitLibraryCore_frameworkLibrary;
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    AuthKitLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __AuthKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAKAppleIDAuthenticationErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthKitLibrary();
  result = dlsym(v2, "AKAppleIDAuthenticationErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAKAuthenticationUsernameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthKitLibrary();
  result = dlsym(v2, "AKAuthenticationUsernameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAuthenticationUsernameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAKAuthenticationPasswordKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthKitLibrary();
  result = dlsym(v2, "AKAuthenticationPasswordKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAuthenticationPasswordKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double RUIRoundToPixel(double a1)
{
  v2 = *&RUIRoundToPixel_scale;
  if (*&RUIRoundToPixel_scale == -1.0)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    RUIRoundToPixel_scale = v4;

    v2 = *&RUIRoundToPixel_scale;
  }

  return round(v2 * a1) / v2;
}

Class __getPSPasscodeFieldClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!PreferencesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __PreferencesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2782E89C8;
    v5 = 0;
    PreferencesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PreferencesLibraryCore_frameworkLibrary)
  {
    __getPSPasscodeFieldClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PSPasscodeField");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPSPasscodeFieldClass_block_invoke_cold_1();
  }

  getPSPasscodeFieldClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PreferencesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PreferencesLibraryCore_frameworkLibrary = result;
  return result;
}

JSValueRef RUIJSTable_getProperty(const OpaqueJSContext *a1, JSObjectRef object, OpaqueJSString *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = JSObjectGetPrivate(object);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = JSStringCopyCFString(0, a3);
  if (![(__CFString *)v6 isEqualToString:@"sectionCount"])
  {
    if ([(__CFString *)v6 isEqualToString:@"editing"])
    {
      v7 = [v5 tableView];
      Boolean = JSValueMakeBoolean(a1, [v7 isEditing]);
      goto LABEL_6;
    }

    if (_isInternalInstall())
    {
      v10 = _RUILoggingFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_21B93D000, v10, OS_LOG_TYPE_DEFAULT, "Not allowed to fetch table property '%@'", &v12, 0xCu);
      }
    }

LABEL_12:
    Undefined = JSValueMakeUndefined(a1);
    goto LABEL_13;
  }

  v7 = [v5 sections];
  Boolean = JSValueMakeNumber(a1, [v7 count]);
LABEL_6:
  Undefined = Boolean;

LABEL_13:
  return Undefined;
}

uint64_t RUIJSTable_setProperty(const OpaqueJSContext *a1, JSObjectRef object, OpaqueJSString *a3, const OpaqueJSValue *a4)
{
  v7 = JSObjectGetPrivate(object);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  if (!a3 || (IsEqualToUTF8CString = JSStringIsEqualToUTF8CString(a3, "editing"), !a4) || !IsEqualToUTF8CString || !JSValueIsBoolean(a1, a4))
  {
    if (_isInternalInstall())
    {
      v10 = _RUILoggingFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_21B93D000, v10, OS_LOG_TYPE_DEFAULT, "table.editing: must be set to a BOOLean", v12, 2u);
      }
    }

    goto LABEL_11;
  }

  [v7 setEditing:{JSValueToBoolean(a1, a4)}];
  v9 = 1;
LABEL_12:

  return v9;
}

const OpaqueJSValue *getObjectProperty(const OpaqueJSContext *a1, OpaqueJSValue *a2, CFStringRef string)
{
  v5 = JSStringCreateWithCFString(string);
  exception = 0;
  Property = JSObjectGetProperty(a1, a2, v5, &exception);
  RUILogException(a1, exception);
  JSStringRelease(v5);
  if (!Property)
  {
    return 0;
  }

  if (JSValueIsObject(a1, Property))
  {
    return Property;
  }

  return 0;
}

void sub_21B97A7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B97D350(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_21B97F094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HSAAuthenticationLibrary();
  result = dlsym(v2, "HSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HSAAuthenticationLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!HSAAuthenticationLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __HSAAuthenticationLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2782E8BF0;
    v4 = 0;
    HSAAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HSAAuthenticationLibraryCore_frameworkLibrary;
  if (!HSAAuthenticationLibraryCore_frameworkLibrary)
  {
    HSAAuthenticationLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __HSAAuthenticationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  HSAAuthenticationLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getHSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HSAAuthenticationLibrary();
  result = dlsym(v2, "HSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21B982628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMCProfileConnectionClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMCProfileConnectionClass_softClass_0;
  v7 = getMCProfileConnectionClass_softClass_0;
  if (!getMCProfileConnectionClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMCProfileConnectionClass_block_invoke_0;
    v3[3] = &unk_2782E8258;
    v3[4] = &v4;
    __getMCProfileConnectionClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21B982FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPSListControllerClass_block_invoke(uint64_t a1)
{
  PreferencesLibrary();
  result = objc_getClass("PSListController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPSListControllerClass_block_invoke_cold_1();
  }

  getPSListControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void PreferencesLibrary()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!PreferencesLibraryCore_frameworkLibrary_0)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __PreferencesLibraryCore_block_invoke_0;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_2782E8C70;
    v2 = 0;
    PreferencesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!PreferencesLibraryCore_frameworkLibrary_0)
  {
    PreferencesLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __PreferencesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  PreferencesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getMCProfileConnectionClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __ManagedConfigurationLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2782E8C88;
    v5 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!ManagedConfigurationLibraryCore_frameworkLibrary_0)
  {
    __getMCProfileConnectionClass_block_invoke_cold_2_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMCProfileConnectionClass_block_invoke_cold_1_0();
  }

  getMCProfileConnectionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getPSPasscodeFieldClass_block_invoke_0(uint64_t a1)
{
  PreferencesLibrary();
  result = objc_getClass("PSPasscodeField");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPSPasscodeFieldClass_block_invoke_cold_1_0();
  }

  getPSPasscodeFieldClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21B98633C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t UIResolvedNaturalAlignment(uint64_t result)
{
  if (result == 4)
  {
    v1 = [MEMORY[0x277D75128] sharedApplication];
    v2 = [v1 userInterfaceLayoutDirection] != 0;

    return 2 * v2;
  }

  return result;
}

id RemoteUIHeaderFont()
{
  v0 = +[RUIPlatform isAppleTV];
  v1 = MEMORY[0x277D76988];
  if (!v0)
  {
    v1 = MEMORY[0x277D76968];
  }

  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*v1];

  return v2;
}

void sub_21B98BD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

JSValueRef RUIJSPage_getProperty(const OpaqueJSContext *a1, JSObjectRef object, OpaqueJSString *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = JSObjectGetPrivate(object);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = JSStringCopyCFString(0, a3);
  if (![(__CFString *)v6 isEqualToString:@"title"])
  {
    if ([(__CFString *)v6 isEqualToString:@"loading"])
    {
      Boolean = JSValueMakeBoolean(a1, [v5 isLoading]);
      goto LABEL_6;
    }

    if (_isInternalInstall())
    {
      v9 = _RUILoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v6;
        _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Not allowed to fetch page property '%@'", &v11, 0xCu);
      }
    }

LABEL_12:
    Boolean = JSValueMakeUndefined(a1);
    goto LABEL_13;
  }

  v7 = [v5 title];
  Boolean = RUIMakeJSValueFromString(a1, v7);

LABEL_6:
LABEL_13:

  return Boolean;
}

uint64_t RUIJSPage_setProperty(const OpaqueJSContext *a1, JSObjectRef object, OpaqueJSString *a3, const OpaqueJSValue *a4)
{
  v7 = JSObjectGetPrivate(object);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!a4 || !a3 || (isKindOfClass & 1) == 0)
  {
    if (!_isInternalInstall())
    {
LABEL_23:
      v11 = 0;
      goto LABEL_24;
    }

    v9 = _RUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "page.setProperty: bogus arguments", v16, 2u);
    }

    goto LABEL_22;
  }

  v9 = JSStringCopyCFString(0, a3);
  if (![v9 isEqualToString:@"title"])
  {
    if (![v9 isEqualToString:@"loading"])
    {
      goto LABEL_22;
    }

    if (JSValueIsBoolean(a1, a4))
    {
      [v7 setLoading:{JSValueToBoolean(a1, a4)}];
      goto LABEL_13;
    }

    if (!_isInternalInstall())
    {
      goto LABEL_22;
    }

    v12 = _RUILoggingFacility();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v13 = "page.loading: must be set to a BOOLean";
    v14 = buf;
    goto LABEL_20;
  }

  if (!JSValueIsString(a1, a4))
  {
    if (_isInternalInstall())
    {
      v12 = _RUILoggingFacility();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

        goto LABEL_22;
      }

      v18 = 0;
      v13 = "page.title: must be set to a string";
      v14 = &v18;
LABEL_20:
      _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
      goto LABEL_21;
    }

LABEL_22:

    goto LABEL_23;
  }

  v10 = RUIStringFromJSValue(a1, a4);
  [v7 setTitle:v10];

LABEL_13:
  v11 = 1;
LABEL_24:

  return v11;
}

void sub_21B98F4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B993414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_21B993838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_21B995738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B99CE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getOBPrivacyLinkControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __OnBoardingKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2782E9130;
    v5 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    __getOBPrivacyLinkControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("OBPrivacyLinkController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBPrivacyLinkControllerClass_block_invoke_cold_1();
  }

  getOBPrivacyLinkControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary = result;
  return result;
}

id _RUILoggingFacility()
{
  if (_RUILoggingFacility_onceToken != -1)
  {
    _RUILoggingFacility_cold_1();
  }

  v1 = _RUILoggingFacility_oslog;

  return v1;
}

void sub_21B99E3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B9A06DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B9A3AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B9A4418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B9A456C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCTSettingCopyMyPhoneNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreTelephonyLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782E91E8;
    v6 = 0;
    CoreTelephonyLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreTelephonyLibraryCore_frameworkLibrary;
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    __getCTSettingCopyMyPhoneNumberSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "CTSettingCopyMyPhoneNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTSettingCopyMyPhoneNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreTelephonyLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreTelephonyLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t sub_21B9AACF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21B9AADA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_21BA8661C();
  *(v8 + 16) = a1;
  sub_21B9AB6D4(a2, v8 + OBJC_IVAR____TtC8RemoteUI14ResourceLoader_baseURL, &qword_27CD9DBA0);
  v9 = (v8 + OBJC_IVAR____TtC8RemoteUI14ResourceLoader_dataSource);
  *v9 = a3;
  v9[1] = a4;
  return v8;
}

uint64_t sub_21B9AAE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = *sub_21B9D9E30();
  sub_21B9AACF0(a1, v9);
  v11 = (*(v3 + 112))(v10, v9, a2, a3);
  sub_21B9ABAAC(a1, &qword_27CD9DBA0);
  return v11;
}

uint64_t sub_21B9AAF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20]();
  v7 = &v15 - v6;
  v8 = sub_21BA864AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 16);
  sub_21BA863FC();
  sub_21BA8647C();

  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_21BA863DC();
    v14 = *(v9 + 8);
    v14(v7, v8);
    (*((*MEMORY[0x277D85000] & *v12) + 0xA0))(a1, v11, a3);
    return (v14)(v11, v8);
  }

  return result;
}

uint64_t sub_21B9AB1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = sub_21BA864AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BA863FC();
  sub_21BA8647C();

  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_21BA863DC();
    v15 = *(v11 + 8);
    v15(v9, v10);
    v16 = *(v4 + 16);
    v17 = sub_21B9ACBA4();
    (*((*MEMORY[0x277D85000] & *v16) + 0xD0))(v13, v17 & 1, a2, a3, a4);
    return (v15)(v13, v10);
  }

  return result;
}

uint64_t sub_21B9AB3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 16);
  v14 = sub_21B9ACBA4();
  return (*((*MEMORY[0x277D85000] & *v13) + 0xC8))(a1, v14 & 1, a2, a3, a4, a5, a6);
}

uint64_t sub_21B9AB4A4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE38);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  v15 = a1[3];
  v24[2] = a1[2];
  v24[3] = v15;
  v16 = a1[5];
  v24[4] = a1[4];
  v24[5] = v16;
  v17 = a1[1];
  v24[0] = *a1;
  v24[1] = v17;
  RUIImage.resourceForMaxScreenScale()(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v18 = &qword_27CD9CE30;
    v19 = v10;
  }

  else
  {
    sub_21B9AB6D4(v10, v14, &qword_27CD9CE38);
    v20 = *(v11 + 48);
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    v22 = *(*v4 + 152);
    swift_unknownObjectRetain();
    v22(&v14[v20], &unk_21BA91FD8, v21, MEMORY[0x277CC9318]);

    v19 = v14;
    v18 = &qword_27CD9CE38;
  }

  return sub_21B9ABAAC(v19, v18);
}

uint64_t sub_21B9AB6D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B9AB73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  ObjectType = swift_getObjectType();
  v10 = (*(a4 + 24) + **(a4 + 24));
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_21B9AB874;

  return v10(a2, ObjectType, a4);
}

uint64_t sub_21B9AB874(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_21B9AB9D0, 0, 0);
  }
}

uint64_t sub_21B9AB9F8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21B9AC2E8;

  return sub_21B9AB73C(a1, a2, v7, v6);
}

uint64_t sub_21B9ABAAC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21B9ABB2C()
{
  v1 = *((*MEMORY[0x277D85000] & **(*(v0 + 16) + 16)) + 0xD8);
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_21B9ABC54;

  return v4();
}

uint64_t sub_21B9ABC54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_21B9ABD9C()
{
  result = qword_27CD9CE40;
  if (!qword_27CD9CE40)
  {
    type metadata accessor for ResourceLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CE40);
  }

  return result;
}

uint64_t ResourceLoader.deinit()
{
  sub_21B9ABAAC(v0 + OBJC_IVAR____TtC8RemoteUI14ResourceLoader_baseURL, &qword_27CD9DBA0);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC8RemoteUI14ResourceLoader___observationRegistrar;
  v2 = sub_21BA8662C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ResourceLoader.__deallocating_deinit()
{
  sub_21B9ABAAC(v0 + OBJC_IVAR____TtC8RemoteUI14ResourceLoader_baseURL, &qword_27CD9DBA0);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC8RemoteUI14ResourceLoader___observationRegistrar;
  v2 = sub_21BA8662C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t dispatch thunk of ResourceLoader.load()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21B9AC1F4;

  return v4();
}

uint64_t sub_21B9AC1F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21B9AC2F4()
{
  sub_21BA88BAC();
  sub_21BA87D8C();
  return sub_21BA88BCC();
}

uint64_t sub_21B9AC368()
{
  sub_21BA88BAC();
  sub_21BA87D8C();
  return sub_21BA88BCC();
}

uint64_t sub_21B9AC3BC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21BA8875C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21B9AC44C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21BA8875C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21B9AC4BC(uint64_t a1)
{
  v2 = sub_21B9ACBC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B9AC4F8(uint64_t a1)
{
  v2 = sub_21B9ACBC0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21B9AC54C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_21B9AC71C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_21B9AC578@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  sub_21BA8737C();
  v4 = sub_21BA86C5C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  sub_21BA877CC();
  v11 = sub_21B9AC8D0();
  v15[0] = a1;
  v15[1] = v11;
  swift_getWitnessTable();
  v12 = *(v5 + 16);
  v12(v10, v8, v4);
  v13 = *(v5 + 8);
  v13(v8, v4);
  v12(a2, v10, v4);
  return (v13)(v10, v4);
}

void *sub_21B9AC71C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B9ACBC0();
  sub_21BA88C0C();
  if (!v1)
  {
    v8 = sub_21BA887BC();
    if (v9)
    {
      v7 = v8;
LABEL_8:
      (*(v4 + 8))(v6, v3);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v7;
    }

    v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    countAndFlagsBits = Decoder.decodeRUIID()()._countAndFlagsBits;
    if (!v12)
    {
      v7 = countAndFlagsBits;
      goto LABEL_8;
    }

    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_21B9AC8D0()
{
  result = qword_27CD9CE48;
  if (!qword_27CD9CE48)
  {
    sub_21BA8737C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CE48);
  }

  return result;
}

unint64_t sub_21B9AC92C()
{
  result = qword_27CD9CE50;
  if (!qword_27CD9CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CE50);
  }

  return result;
}

unint64_t sub_21B9AC984()
{
  result = qword_27CD9CE58;
  if (!qword_27CD9CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CE58);
  }

  return result;
}

unint64_t sub_21B9AC9DC()
{
  result = qword_27CD9CE60;
  if (!qword_27CD9CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CE60);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21B9ACA3C(uint64_t a1, int a2)
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

uint64_t sub_21B9ACA84(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AccessibilityInfo.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AccessibilityInfo.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_21B9ACBC0()
{
  result = qword_27CD9CE68;
  if (!qword_27CD9CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CE68);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_21B9ACD10(uint64_t a1, void *a2)
{
  result = malloc(1uLL);
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B9ACD68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a3 == -1)
  {
    return *a4;
  }

  swift_once();
  return *a4;
}

void sub_21B9ACDEC(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_21B9ACE38(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21B9ACEC8;
}

void sub_21B9ACEC8(id **a1, char a2)
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

uint64_t sub_21B9ACF44(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v2;
}

uint64_t sub_21B9ACFB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_21B9AD000(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

unint64_t sub_21B9AD054()
{
  v1 = (*(*v0 + 88))();
  if (!v1 || (v2 = v1, v3 = [v1 updateInfo], v2, !v3) || (v4 = sub_21BA87BCC(), v3, v5 = sub_21B9AD11C(v4), , !v5))
  {
    v5 = sub_21B9AF734(MEMORY[0x277D84F90]);
  }

  return v5;
}

unint64_t sub_21B9AD11C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E260);
    v2 = sub_21BA8872C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_21B9AFF0C(*(a1 + 48) + 40 * v12, v27);
        sub_21B9AFDF0(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_21B9AFF0C(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_21B9AFDF0(v25 + 8, v20);
        sub_21B9ABAAC(v24, &qword_27CD9CE80);
        v21 = v18;
        sub_21B9AFF70(v20, v22);
        v13 = v21;
        sub_21B9AFF70(v22, v23);
        sub_21B9AFF70(v23, &v21);
        result = sub_21B940DCC(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_21B9AFF70(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_21B9AFF70(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_21B9ABAAC(v24, &qword_27CD9CE80);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_21B9AD3F8(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = v3();
  if (v4)
  {
    v5 = v4;
    sub_21B9AD6BC(a1);
    v6 = sub_21BA87BBC();

    [v5 setUpdateInfo_];
  }

  v7 = v3();
  if (v7)
  {
    v8 = v7;
    v9 = v3();
    if (v9 && (v10 = v9, v11 = [v9 serverInfo], v10, v11))
    {
      sub_21BA87BCC();
    }

    else
    {
      sub_21B9AF864(MEMORY[0x277D84F90]);
    }

    v12 = sub_21BA87BBC();

    [v8 setServerInfo_];
  }

  v13 = v3();
  if (v13)
  {
    v14 = v13;
    v15 = sub_21B9AD6BC(a1);
    result = [v14 serverInfo];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v17 = result;
    v18 = sub_21BA87BCC();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v18;
    sub_21B9AF9A0(v15, sub_21B9AF10C, 0, isUniquelyReferenced_nonNull_native, &v21);

    if (v21)
    {
      v20 = sub_21BA87BBC();
    }

    else
    {
      v20 = 0;
    }

    [v14 setServerInfo_];
  }

  else
  {
  }

  type metadata accessor for XMLUIData();
  sub_21B9AFCD8();
  sub_21BA8690C();
  sub_21BA8692C();
}

uint64_t sub_21B9AD6BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCE0);
    v2 = sub_21BA8872C();
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
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21B9AFDF0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_21B9AFF70(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_21B9AFF70(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_21B9AFF70(v31, v32);
    result = sub_21BA8850C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_21B9AFF70(v32, (*(v2 + 56) + 32 * v10));
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

id (*sub_21B9AD984(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = (*(*v1 + 88))();
  if (!v3 || (v4 = v3, v5 = [v3 updateInfo], v4, !v5) || (v6 = sub_21BA87BCC(), v5, v7 = sub_21B9AD11C(v6), , !v7))
  {
    v7 = sub_21B9AF734(MEMORY[0x277D84F90]);
  }

  *a1 = v7;
  return sub_21B9ADA78;
}

id sub_21B9ADA78(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_21B9AD3F8(*a1);
  }

  sub_21B9AD3F8(v2);
}

uint64_t XMLUIData.__deallocating_deinit()
{
  MEMORY[0x21CEFF260](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21B9ADB28@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for XMLUIData();
  result = sub_21BA8690C();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall RUIObjectModel.initializeSwift()()
{
  type metadata accessor for RUIDecodingUserInfo();
  RUIDecodingUserInfo.init()(v1);
  v8[0] = v2;
  v3 = v2;
  sub_21B9C095C(v8, &type metadata for DecodingUserInfoAssociatedKey, &type metadata for DecodingUserInfoAssociatedKey, &off_28172C550);

  v4 = [objc_opt_self() contextWithJSGlobalContextRef_];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for ScriptEnvironment();
    v8[0] = sub_21B9C3F10(v5);

    sub_21B9C095C(v8, &type metadata for ScriptEnvironmentAssociatedKey, &type metadata for ScriptEnvironmentAssociatedKey, &off_28172B2D8);

    type metadata accessor for XMLUIData();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v7 = v6;

    sub_21B9C095C(&v7, &type metadata for XMLUIDataAssociatedKey, &type metadata for XMLUIDataAssociatedKey, &off_28172B2C0);

    type metadata accessor for ActivityIndicatorManager(0);
    v7 = sub_21BA2CD34();

    sub_21B9C095C(&v7, &type metadata for ActivityIndicatorManagerAssociatedKey, &type metadata for ActivityIndicatorManagerAssociatedKey, &off_28172B2A8);
  }

  else
  {
    __break(1u);
  }
}

void RUIObjectModel.decodingUserInfo.setter(void *a1)
{
  v2 = a1;
  v1 = a1;
  sub_21B9C095C(&v2, &type metadata for DecodingUserInfoAssociatedKey, &type metadata for DecodingUserInfoAssociatedKey, &off_28172C550);
}

uint64_t sub_21B9ADDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;

  sub_21B9C095C(&v6, a2, a2, a3);
}

uint64_t sub_21B9ADED4(id *a1)
{
  v3 = *a1;
  v1 = v3;
  return sub_21B9C095C(&v3, &type metadata for DecodingUserInfoAssociatedKey, &type metadata for DecodingUserInfoAssociatedKey, &off_28172C550);
}

void (*RUIObjectModel.decodingUserInfo.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  sub_21B9C07A0(&type metadata for DecodingUserInfoAssociatedKey, &off_28172C550, a1);
  return sub_21B9ADF80;
}

void sub_21B9ADF80(uint64_t a1, char a2)
{
  v4 = *a1;
  *(a1 + 8) = *a1;
  v5 = a1 + 8;
  v6 = v4;
  if (a2)
  {
    v7 = v6;
    sub_21B9C095C(v5, &type metadata for DecodingUserInfoAssociatedKey, &type metadata for DecodingUserInfoAssociatedKey, &off_28172C550);

    v8 = *a1;
  }

  else
  {
    v9 = v6;
    sub_21B9C095C(v5, &type metadata for DecodingUserInfoAssociatedKey, &type metadata for DecodingUserInfoAssociatedKey, &off_28172C550);
    v8 = v9;
  }
}

uint64_t (*RUIObjectModel.scriptEnvironment.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  sub_21B9C07A0(&type metadata for ScriptEnvironmentAssociatedKey, &off_28172B2D8, a1);
  return sub_21B9AE12C;
}

uint64_t (*RUIObjectModel.xmlUIData.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  sub_21B9C07A0(&type metadata for XMLUIDataAssociatedKey, &off_28172B2C0, a1);
  return sub_21B9AE23C;
}

uint64_t sub_21B9AE2F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;

  return sub_21B9C095C(&v9, a5, a5, a6);
}

uint64_t (*RUIObjectModel.activityIndicatorManager.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  sub_21B9C07A0(&type metadata for ActivityIndicatorManagerAssociatedKey, &off_28172B2A8, a1);
  return sub_21B9AE3A4;
}

uint64_t sub_21B9AE3B8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  a1[1] = *a1;
  v7 = (a1 + 1);

  if (a2)
  {

    sub_21B9C095C(v7, a3, a3, a4);
  }

  else
  {
    sub_21B9C095C(v7, a3, a3, a4);
  }
}

Swift::Void __swiftcall RUIObjectModel.setDecodingUserInfo(_:)(RUIDecodingUserInfo *a1)
{
  v2 = a1;
  v1 = a1;
  sub_21B9C095C(&v2, &type metadata for DecodingUserInfoAssociatedKey, &type metadata for DecodingUserInfoAssociatedKey, &off_28172C550);
}

void RUIObjectModel.jsInterface(for:)(uint64_t a1, uint64_t a2)
{
  sub_21B9C07A0(&type metadata for ScriptEnvironmentAssociatedKey, &off_28172B2D8, v15);
  v4 = (*(*v15[0] + 144))(a1, a2);

  if (v4)
  {
    ObjectType = swift_getObjectType();
    v15[3] = ObjectType;
    v15[0] = v4;
    swift_unknownObjectRetain();
    sub_21B9C07A0(&type metadata for ScriptEnvironmentAssociatedKey, &off_28172B2D8, &v14);
    v6 = *(v14 + 16);

    if (ObjectType)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v15, ObjectType);
      v8 = *(ObjectType - 8);
      MEMORY[0x28223BE20](v7);
      v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v10);
      v11 = sub_21BA8898C();
      (*(v8 + 8))(v10, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_opt_self() valueWithObject:v11 inContext:v6];
    swift_unknownObjectRelease();

    if (v12)
    {
      [v12 JSValueRef];
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall RUIObjectModel.notifyXMLUIDataChange()()
{
  sub_21B9C07A0(&type metadata for XMLUIDataAssociatedKey, &off_28172B2C0, &v0);
  type metadata accessor for XMLUIData();
  sub_21B9AFCD8();
  sub_21BA8690C();

  sub_21BA8692C();
}

id sub_21B9AE8D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_21BA864AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v12 - 8);
  v44 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  v45 = a1;
  sub_21BA863FC();
  v46 = v3;
  v23 = [v3 sourceURL];
  if (v23)
  {
    v24 = v23;
    sub_21BA8643C();

    (*(v7 + 56))(v19, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v19, 1, 1, v6);
  }

  sub_21BA8647C();

  sub_21B9ABAAC(v19, &qword_27CD9DBA0);
  sub_21B9AFF80(v22, v16, &qword_27CD9DBA0);
  v25 = *(v7 + 48);
  if (v25(v16, 1, v6) == 1)
  {
    sub_21B9ABAAC(v16, &qword_27CD9DBA0);
    goto LABEL_11;
  }

  v42 = a2;
  result = [v46 sourceURL];
  if (result)
  {
    v27 = result;
    sub_21BA8643C();

    v28 = sub_21BA06AC8(v11);
    v29 = v11;
    v30 = v28;
    v32 = v31;
    v33 = *(v7 + 8);
    v33(v29, v6);
    v33(v16, v6);
    a2 = v42;
    if (v32)
    {
      v34 = sub_21BA87C8C();
      v35 = [v46 alertWithName_];

      sub_21B9ABAAC(v22, &qword_27CD9DBA0);
      if (v35)
      {
      }

      *a2 = v30;
      a2[1] = v32;
      type metadata accessor for NavigationDestination();
      return swift_storeEnumTagMultiPayload();
    }

LABEL_11:
    v36 = v45;
    sub_21BA8646C();
    if (v37)
    {
    }

    else
    {
      v38 = v22;
      v22 = v44;
      sub_21B9AFD2C(v38, v44);
      if (v25(v22, 1, v6) != 1)
      {
        v39 = *(v7 + 32);
        v40 = v43;
        v39(v43, v22, v6);
        v39(a2, v40, v6);
        goto LABEL_15;
      }
    }

    sub_21B9ABAAC(v22, &qword_27CD9DBA0);
    (*(v7 + 16))(a2, v36, v6);
LABEL_15:
    type metadata accessor for NavigationDestination();
    return swift_storeEnumTagMultiPayload();
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall RUIObjectModel.setActivityIndicatorStatus(_:forElement:)(Swift::Bool _, RUIElement *forElement)
{
  v4 = [(RUIElement *)forElement attributes];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = sub_21BA87BCC();

  sub_21BA87CBC();
  sub_21BA8853C();
  if (!*(v6 + 16) || (v7 = sub_21B9AF000(&v19), (v8 & 1) == 0))
  {

    sub_21B9AFD9C(&v19);
LABEL_8:
    v22 = 0u;
    v23 = 0u;
    goto LABEL_9;
  }

  sub_21B9AFDF0(*(v6 + 56) + 32 * v7, &v22);
  sub_21B9AFD9C(&v19);

  if (!*(&v23 + 1))
  {
LABEL_9:
    sub_21B9ABAAC(&v22, &qword_27CD9E7C0);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v10 = v19;
    v9 = v20;
    goto LABEL_12;
  }

LABEL_10:
  v11 = [(RUIElement *)forElement identifier];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v10 = sub_21BA87CBC();
  v9 = v13;

LABEL_12:
  sub_21B9C07A0(&type metadata for ActivityIndicatorManagerAssociatedKey, &off_28172B2A8, &v19);
  v14 = (*(*v19 + 144))(v10, v9);
  v16 = v15;
  v18 = v17;

  v19 = v14;
  v20 = v16;
  v21 = v18 & 1;
  LOBYTE(v22) = _;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE78);
  sub_21BA87A4C();
}

unint64_t sub_21B9AF000(uint64_t a1)
{
  v2 = sub_21BA8850C();

  return sub_21B9AF044(a1, v2);
}

unint64_t sub_21B9AF044(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21B9AFF0C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x21CEFD870](v9, a1);
      sub_21B9AFD9C(v9);
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

uint64_t sub_21B9AF10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21B9AFF0C(a1, a2);

  return sub_21B9AFDF0(a1 + 40, a2 + 40);
}

uint64_t sub_21B9AF150(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCE0);
  result = sub_21BA8871C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_21B9AFF70((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_21B9AFF0C(v23, &v36);
        sub_21B9AFDF0(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_21BA8850C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_21B9AFF70(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_21B9AF408()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCE0);
  v2 = *v0;
  v3 = sub_21BA8870C();
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
        v18 = 40 * v17;
        sub_21B9AFF0C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_21B9AFDF0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_21B9AFF70(v22, (*(v4 + 56) + v17));
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

_OWORD *sub_21B9AF5AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_21B9AFF0C(*(v3 + 48) + 40 * v13, &v17);
    sub_21B9AFDF0(*(v3 + 56) + 32 * v13, v22);
    v23 = v17;
    v24 = v18;
    *&v25 = v19;
    result = sub_21B9AFF70(v22, (&v25 + 8));
    v15 = *(&v24 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v16 = v1[5];
      v17 = v23;
      *&v18 = v24;
      *(&v18 + 1) = v15;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16(&v17);
      return sub_21B9ABAAC(&v17, &qword_27CD9CE80);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_21B9AF734(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E260);
    v3 = sub_21BA8872C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B9AFF80(v4, &v13, &qword_27CD9CE88);
      v5 = v13;
      v6 = v14;
      result = sub_21B940DCC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21B9AFF70(&v15, (v3[7] + 32 * result));
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

unint64_t sub_21B9AF864(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCE0);
    v3 = sub_21BA8872C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B9AFF80(v4, v13, &unk_27CD9D900);
      result = sub_21B9AF000(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_21B9AFF70(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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