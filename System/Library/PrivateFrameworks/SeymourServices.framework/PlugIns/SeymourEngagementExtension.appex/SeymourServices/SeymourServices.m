uint64_t sub_1000012E8(uint64_t *a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_100005178();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  sub_100004538(&qword_10000C3E0, &qword_100005768);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000056B0;
  *(inited + 32) = sub_100005018();
  *(inited + 40) = v15;
  *(inited + 48) = v12;
  *(inited + 56) = v13;

  v16 = sub_100004D2C(inited);
  swift_setDeallocating();
  sub_100004E40(inited + 32, &qword_10000C3E8, &qword_100005770);
  sub_1000050F8();

  v17 = sub_100005168();
  v18 = sub_1000051D8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = a2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v27 = a3;
    v22 = v21;
    v29[0] = v21;
    *v20 = 141558274;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2080;
    v23 = sub_100005188();
    v25 = sub_100001C6C(v23, v24, v29);

    *(v20 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Engagement plugin response %{mask.hash}s", v20, 0x16u);
    sub_1000044EC(v22);

    a2 = v28;
  }

  (*(v7 + 8))(v11, v6);
  v29[3] = sub_100004538(&qword_10000C3F0, &qword_100005778);
  v29[0] = v16;
  a2(v29, 0);
  return sub_100004E40(v29, &qword_10000C390, &qword_100005720);
}

uint64_t sub_10000159C(uint64_t a1, void (*a2)(void, void))
{
  v4 = sub_100005178();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000050F8();
  swift_errorRetain();
  v10 = sub_100005168();
  v11 = sub_1000051D8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    *&v23[0] = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v15 = sub_100005258();
    v17 = sub_100001C6C(v15, v16, v23);
    v21 = v4;
    v18 = a2;
    v19 = v17;

    *(v13 + 4) = v19;
    a2 = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Engagement plugin error %{public}s", v13, 0xCu);
    sub_1000044EC(v14);

    (*(v22 + 8))(v9, v21);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  memset(v23, 0, sizeof(v23));
  a2(v23, a1);
  return sub_100004E40(v23, &qword_10000C390, &qword_100005720);
}

void sub_1000017E4()
{
  v0 = sub_100005178();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000050F8();
  v6 = sub_100005168();
  v7 = sub_1000051D8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Engagement plugin invalidating connection", v8, 2u);
  }

  (*(v1 + 8))(v5, v0);
  sub_100005128();
}

void sub_100001994(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100004674(a1, v12);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = sub_1000046E4(v12, v13);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = sub_100005238();
  (*(v7 + 8))(v10, v5);
  sub_1000044EC(v12);
  if (a2)
  {
LABEL_3:
    a2 = sub_100004FE8();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}

id sub_100001B38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementExtensionProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100001B90(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100005198();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100004FF8();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100001C6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001D38(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000045C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000044EC(v11);
  return v7;
}

unint64_t sub_100001D38(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100001E44(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100005218();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100001E44(uint64_t a1, unint64_t a2)
{
  v4 = sub_100001E90(a1, a2);
  sub_100001FC0(&off_100008410);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100001E90(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000020AC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100005218();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000051C8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000020AC(v10, 0);
        result = sub_100005208();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100001FC0(uint64_t result)
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

  result = sub_100002120(result, v12, 1, v3);
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

void *sub_1000020AC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100004538(&unk_10000C400, qword_100005788);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002120(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004538(&unk_10000C400, qword_100005788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100002214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  swift_errorRetain();

  return sub_100005048();
}

uint64_t sub_1000022B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  sub_100004538(a6, a7);
  v13 = sub_100005058();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;

  v13(a9, v14);
}

unint64_t sub_100002378(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100005268();
  sub_1000051B8();
  v6 = sub_100005278();

  return sub_1000023F0(a1, a2, v6);
}

unint64_t sub_1000023F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100005248())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000024A8(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  return sub_100004C8C(v6, 0);
}

uint64_t sub_10000253C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100004538(&qword_10000C380, &qword_100005718);
  v9 = sub_100005058();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_100004C28, v10);
}

uint64_t sub_100002610(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = sub_100004538(&qword_10000C380, &qword_100005718);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v19 - v14;
  if (a2)
  {
    a5(a1);
    v16 = sub_100005058();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;

    v16(sub_100004FE4, v17);

    return (*(v11 + 8))(v15, v10);
  }

  else
  {
    v19 = a1;
    v20 = 0;
    return a3(&v19);
  }
}

uint64_t sub_10000279C(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t *), uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v13 = sub_100004538(&qword_10000C380, &qword_100005718);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v25 - v17;
  v25 = a1;
  if (a3)
  {
    LOBYTE(v26) = 1;
    swift_errorRetain();
    a6(&v25);
    v19 = a1;
    v20 = a2;
    v21 = 1;
  }

  else
  {
    v26 = a2;

    a4(&v25);
    v22 = sub_100005058();
    v23 = swift_allocObject();
    *(v23 + 16) = a6;
    *(v23 + 24) = a7;

    v22(sub_100004FE4, v23);

    (*(v14 + 8))(v18, v13);
    v19 = a1;
    v20 = a2;
    v21 = 0;
  }

  return sub_100004CB0(v19, v20, v21);
}

uint64_t sub_100002960(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v13 = sub_100004538(&qword_10000C378, &qword_100005710);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v26[-1] - v17;
  v26[0] = a1;
  v26[1] = a2;
  if (a3)
  {
    v27 = 1;
    swift_errorRetain();
    a6(v26);
    v19 = a1;
    v20 = a2;
    v21 = 1;
  }

  else
  {

    a4(v26);
    v22 = sub_100005058();
    v23 = swift_allocObject();
    *(v23 + 16) = a6;
    *(v23 + 24) = a7;

    v22(sub_100004F68, v23);

    (*(v14 + 8))(v18, v13);
    v19 = a1;
    v20 = a2;
    v21 = 0;
  }

  return sub_100004CB0(v19, v20, v21);
}

uint64_t sub_100002B24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v7[5] = v5;

  return sub_100005048();
}

uint64_t sub_100002BC8(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v6 = a5[1];
  v9 = *a5;
  v10 = v6;
  a3(&v11, &v9);
  v7 = v11;
  v9 = v11;
  LOBYTE(v10) = 0;
  a1(&v9);

  return sub_100004C8C(v7, 0);
}

id sub_100002C64()
{
  v0 = *(*(sub_100005178() - 8) + 64);
  __chkstk_darwin();
  v1 = objc_allocWithZone(LSApplicationRecord);
  v2 = sub_100001B90(0xD000000000000011, 0x80000001000057E0, 0);
  v3 = [v2 applicationState];
  v4 = [v3 isInstalled];

  return v4;
}

unint64_t sub_100002EBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004538(&qword_10000C3D8, &qword_100005760);
    v3 = sub_100005228();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100002378(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100002FB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004538(&qword_10000C3D0, &qword_100005758);
    v3 = sub_100005228();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100002378(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000030BC(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = sub_100005008();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v173 = v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v12 = v168 - v11;
  v180 = sub_100004538(&qword_10000C378, &qword_100005710);
  v178 = *(v180 - 8);
  v13 = *(v178 + 64);
  v15 = __chkstk_darwin(v180, v14);
  v175 = v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15, v17);
  v184 = v168 - v19;
  v174 = v20;
  __chkstk_darwin(v18, v21);
  v176 = v168 - v22;
  v183 = sub_100004538(&qword_10000C380, &qword_100005718);
  v190 = *(v183 - 8);
  v23 = *(v190 + 8);
  v25 = __chkstk_darwin(v183, v24);
  v179 = v168 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25, v27);
  v186 = v168 - v29;
  v31 = __chkstk_darwin(v28, v30);
  v181 = v168 - v32;
  v177 = v33;
  __chkstk_darwin(v31, v34);
  v182 = v168 - v35;
  v171 = sub_1000050C8();
  v170 = *(v171 - 8);
  v36 = *(v170 + 64);
  __chkstk_darwin(v171, v37);
  v172 = v168 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100005178();
  v40 = *(v39 - 8);
  v41 = *(v40 + 8);
  v43 = __chkstk_darwin(v39, v42);
  *&v189 = v168 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v43, v45);
  v188 = v168 - v47;
  __chkstk_darwin(v46, v48);
  v50 = v168 - v49;
  v191 = swift_allocObject();
  *(v191 + 16) = a2;
  _Block_copy(a2);
  sub_1000050F8();
  sub_1000045C0(a1, &v193);
  v51 = sub_100005168();
  v52 = sub_1000051D8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v169 = v4;
    v54 = v53;
    v55 = swift_slowAlloc();
    v185 = v39;
    v187 = a2;
    v56 = v55;
    v192 = v55;
    *v54 = 141558274;
    *(v54 + 4) = 1752392040;
    *(v54 + 12) = 2080;
    sub_1000045C0(&v193, &v196);
    v57 = sub_1000051A8();
    v168[1] = a1;
    v58 = v57;
    v59 = v40;
    v60 = v12;
    v61 = v5;
    v63 = v62;
    sub_1000044EC(&v193);
    v64 = sub_100001C6C(v58, v63, &v192);
    v5 = v61;
    v12 = v60;
    v40 = v59;

    *(v54 + 14) = v64;
    _os_log_impl(&_mh_execute_header, v51, v52, "Engagement plugin received request %{mask.hash}s", v54, 0x16u);
    sub_1000044EC(v56);
    a2 = v187;
    v39 = v185;

    v4 = v169;
  }

  else
  {

    sub_1000044EC(&v193);
  }

  v65 = *(v40 + 1);
  v65(v50, v39);
  v66 = sub_100002C64();
  v67 = sub_1000050D8();
  v68 = v189;
  if (v67)
  {
    v190 = v65;
    sub_100004538(&qword_10000C3A0, &qword_100005728);
    inited = swift_initStackObject();
    v189 = xmmword_1000056B0;
    *(inited + 16) = xmmword_1000056B0;
    *(inited + 32) = sub_100005028();
    *(inited + 40) = v70;
    sub_100004538(&qword_10000C3A8, &qword_100005730);
    v71 = swift_initStackObject();
    *(v71 + 16) = v189;
    *(v71 + 32) = sub_100005038();
    *(v71 + 40) = v72;
    *(v71 + 48) = v66 & 1;
    v73 = sub_100002EBC(v71);
    swift_setDeallocating();
    sub_100004E40(v71 + 32, &qword_10000C3B0, &qword_100005738);
    *(inited + 48) = v73;
    v74 = sub_100002FB8(inited);
    swift_setDeallocating();
    sub_100004E40(inited + 32, &qword_10000C3B8, &qword_100005740);
    v75 = v188;
    sub_1000050F8();

    v76 = sub_100005168();
    v77 = sub_1000051D8();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v193 = v79;
      *v78 = 136446210;
      sub_100004538(&qword_10000C3C8, &qword_100005750);
      v80 = sub_100005188();
      v82 = sub_100001C6C(v80, v81, &v193);

      *(v78 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v76, v77, "Engagement plugin response %{public}s", v78, 0xCu);
      sub_1000044EC(v79);

      v83 = v188;
    }

    else
    {

      v83 = v75;
    }

    v190(v83, v39);
    *(&v194 + 1) = sub_100004538(&qword_10000C3C0, &qword_100005748);
    *&v193 = v74;
    sub_100004674(&v193, &v196);
    v131 = v197;
    if (v197)
    {
      v132 = sub_1000046E4(&v196, v197);
      v133 = *(v131 - 8);
      v134 = *(v133 + 64);
      __chkstk_darwin(v132, v132);
      v136 = v168 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v133 + 16))(v136);
      v137 = sub_100005238();
      (*(v133 + 8))(v136, v131);
      sub_1000044EC(&v196);
    }

    else
    {
      v137 = 0;
    }

    a2[2](a2, v137, 0);
    swift_unknownObjectRelease();
    sub_100004E40(&v193, &qword_10000C390, &qword_100005720);
  }

  else if (v66)
  {
    sub_100005158();
    sub_100005098();
    sub_100004728();
    sub_1000051E8();
    v84 = sub_100005138();
    sub_100005148();
    *&v189 = v84;

    sub_1000051E8();
    (*(v170 + 104))(v172, enum case for EventDispatchStrategy.async(_:), v171);
    *(&v194 + 1) = sub_1000050B8();
    v195 = &protocol witness table for DispatchTimerProvider;
    sub_100004774(&v193);
    sub_1000050A8();
    v85 = sub_100005118();
    v86 = *(v85 + 48);
    v87 = *(v85 + 52);
    swift_allocObject();
    sub_100005108();
    v88 = sub_100005088();
    v89 = *(v88 + 48);
    v90 = *(v88 + 52);
    swift_allocObject();
    v91 = sub_100005078();
    v92 = v184;
    sub_1000050E8();
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1000047D8;
    *(v93 + 24) = v91;
    v188 = v91;
    v94 = v178;
    v95 = *(v178 + 16);
    v185 = (v178 + 16);
    v187 = v95;
    v96 = v175;
    v97 = v180;
    v95(v175, v92, v180);
    v98 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v173 = *(v94 + 80);
    v99 = (v174 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
    v100 = swift_allocObject();
    v174 = *(v94 + 32);
    v174(v100 + v98, v96, v97);
    v101 = (v100 + v99);
    *v101 = sub_1000047DC;
    v101[1] = v93;

    v102 = v176;
    sub_100005048();
    v178 = *(v94 + 8);
    v103 = v184;
    (v178)(v184, v97);
    v104 = swift_allocObject();
    v105 = v191;
    *(v104 + 16) = sub_1000045B8;
    *(v104 + 24) = v105;
    v106 = swift_allocObject();
    *(v106 + 16) = sub_100004874;
    *(v106 + 24) = v104;
    v187(v103, v102, v97);
    v107 = swift_allocObject();
    v174(v107 + v98, v103, v97);
    v108 = (v107 + v99);
    *v108 = sub_1000048A0;
    v108[1] = v106;
    v109 = v191;

    v110 = v186;
    sub_100005048();
    (v178)(v102, v97);
    v111 = swift_allocObject();
    *(v111 + 16) = sub_1000045B8;
    *(v111 + 24) = v109;
    v112 = swift_allocObject();
    *(v112 + 16) = sub_1000049CC;
    *(v112 + 24) = v111;
    v113 = v190;
    v187 = *(v190 + 2);
    v114 = v179;
    v115 = v183;
    v187(v179, v110, v183);
    v116 = v113;
    v117 = (v113[80] + 16) & ~v113[80];
    v118 = (v177 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
    v119 = swift_allocObject();
    v185 = *(v116 + 4);
    v185(v119 + v117, v114, v115);
    v120 = (v119 + v118);
    *v120 = sub_1000049F8;
    v120[1] = v112;

    v121 = v181;
    sub_100005048();
    v122 = *(v190 + 1);
    v190 = (v190 + 8);
    v123 = v186;
    v122(v186, v115);
    v124 = v122;
    v187(v123, v121, v115);
    v125 = swift_allocObject();
    v185(v125 + v117, v123, v115);
    v126 = (v125 + v118);
    v127 = v189;
    *v126 = sub_100004AD0;
    v126[1] = v127;

    v128 = v182;
    sub_100005048();
    v124(v121, v115);
    v129 = sub_100005058();
    v130 = swift_allocObject();
    *(v130 + 16) = 0;
    *(v130 + 24) = 0;
    v129(sub_100004BA8, v130);

    v124(v128, v115);
  }

  else
  {
    v188 = v40;
    v185 = v39;
    v187 = a2;
    (*(v5 + 104))(v12, enum case for EngagementError.appNotInstalled(_:), v4);
    sub_1000050F8();
    v138 = v173;
    v186 = *(v5 + 16);
    (v186)(v173, v12, v4);
    v139 = v68;
    v140 = sub_100005168();
    v141 = sub_1000051D8();
    v142 = os_log_type_enabled(v140, v141);
    v168[0] = v5;
    if (v142)
    {
      v143 = swift_slowAlloc();
      v190 = v65;
      v144 = v143;
      v145 = swift_slowAlloc();
      v184 = v12;
      v146 = v145;
      *&v193 = v145;
      *v144 = 136446210;
      sub_10000461C();
      v147 = sub_100005258();
      v148 = v5;
      v149 = v4;
      v151 = v150;
      v152 = v138;
      v153 = *(v148 + 8);
      v153(v152, v149);
      v154 = sub_100001C6C(v147, v151, &v193);
      v4 = v149;

      *(v144 + 4) = v154;
      _os_log_impl(&_mh_execute_header, v140, v141, "Engagement plugin error %{public}s", v144, 0xCu);
      sub_1000044EC(v146);
      v12 = v184;

      v190(v139, v185);
    }

    else
    {

      v155 = v138;
      v153 = *(v5 + 8);
      v153(v155, v4);
      v65(v68, v185);
    }

    sub_10000461C();
    v193 = 0u;
    v194 = 0u;
    swift_allocError();
    (v186)(v156, v12, v4);
    sub_100004674(&v193, &v196);
    v157 = v197;
    if (v197)
    {
      v158 = sub_1000046E4(&v196, v197);
      v159 = v4;
      v160 = *(v157 - 8);
      v161 = *(v160 + 64);
      __chkstk_darwin(v158, v158);
      v163 = v168 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v160 + 16))(v163);
      v164 = sub_100005238();
      (*(v160 + 8))(v163, v157);
      v4 = v159;
      sub_1000044EC(&v196);
    }

    else
    {
      v164 = 0;
    }

    v165 = v187;
    v166 = sub_100004FE8();
    v165[2](v165, v164, v166);
    swift_unknownObjectRelease();

    sub_100004E40(&v193, &qword_10000C390, &qword_100005720);
    v153(v12, v4);
  }
}

uint64_t sub_1000044EC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004538(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004580()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000045C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000461C()
{
  result = qword_10000C388;
  if (!qword_10000C388)
  {
    sub_100005008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C388);
  }

  return result;
}

uint64_t sub_100004674(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004538(&qword_10000C390, &qword_100005720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1000046E4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004728()
{
  result = qword_10000C398;
  if (!qword_10000C398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C398);
  }

  return result;
}

uint64_t *sub_100004774(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000047DC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_10000483C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000048EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = *(sub_100004538(a3, a4) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (v6 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000022B8(a1, a2, v6 + v14, *v15, v15[1], a3, a4, a5, a6);
}

uint64_t sub_100004A14(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100004538(&qword_10000C380, &qword_100005718) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_10000253C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_100004AD8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100004538(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);
  v8 = *(v2 + v7 + 8);

  return _swift_deallocObject(v2, v7 + 16, v5 | 7);
}

uint64_t sub_100004BC4(uint64_t *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(a1 + 8);
  v8 = *a1;
  v9 = v6;
  v3(&v8);
  return v5(&v8);
}

uint64_t sub_100004C40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004C8C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100004CB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100004CC0(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 8);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

unint64_t sub_100004D2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004538(&qword_10000C3F8, &qword_100005780);
    v3 = sub_100005228();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100002378(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100004E40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004538(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004EA0(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_100004F28()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004F68(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 16);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}