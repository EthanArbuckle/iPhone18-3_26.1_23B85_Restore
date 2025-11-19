void *sub_100000EB8()
{
  v1 = v0;
  sub_100001F08();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin();
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000027AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  NSFileManager.sonicContainerURL.getter();

  sub_100001F60(v5, 0, 1, v6);
  (*(v7 + 32))(v10, v5, v6);
  sub_10000278C(v12);
  v14 = v13;
  v15 = [v1 filesInDir:v13 matchingPattern:0 excludingPattern:0];

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = sub_10000284C();

  v17 = sub_1000011E4(v16);

  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = v17[2];
  if (!v18)
  {

LABEL_10:
    (*(v7 + 8))(v10, v6);
    return &_swiftEmptyArrayStorage;
  }

  v26 = v7;
  v27 = &_swiftEmptyArrayStorage;
  result = sub_10000289C();
  v20 = 0;
  v21 = (v17 + 5);
  while (v20 < v17[2])
  {
    v22 = *(v21 - 1);
    v23 = *v21;
    objc_allocWithZone(DEAttachmentItem);
    swift_bridgeObjectRetain_n();
    result = sub_100001A84(v22, v23);
    if (!result)
    {
      goto LABEL_13;
    }

    ++v20;

    sub_10000287C();
    v24 = v27[2];
    sub_1000028AC();
    sub_1000028BC();
    result = sub_10000288C();
    v21 += 2;
    if (v18 == v20)
    {
      (*(v26 + 8))(v10, v6);

      return v27;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

unint64_t *sub_1000011E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_100001AE8(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1000019B0(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100001AE8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

id sub_1000012F8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100001354()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1000013B0(uint64_t a1)
{
  if (!a1 || !sub_10000143C(a1))
  {
    sub_10000280C();
  }

  v1 = sub_100000EB8();

  v2 = sub_1000016F0(v1);

  return v2;
}

unint64_t sub_10000143C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000018F0();
    v2 = sub_1000028DC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_100001954(*(a1 + 48) + 40 * v10, __src);
    sub_1000019B0(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_100001954(__dst, v21);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1000019B0(&__dst[40], v22);
    sub_100001F88(__dst, sub_100001A0C);
    v23 = v20;
    sub_100001A74(v22, v24);
    v11 = v23;
    sub_100001A74(v24, v25);
    sub_100001A74(v25, &v23);
    result = sub_100001D48(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      v14 = v2[6] + 16 * result;
      v15 = *(v14 + 8);
      *v14 = v11;

      v16 = (v2[7] + 32 * v12);
      sub_100001DC0(v16);
      result = sub_100001A74(&v23, v16);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_100001A74(&v23, (v2[7] + 32 * result));
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v8 = v9;
    }
  }

  sub_100001F88(__dst, sub_100001A0C);

  return 0;
}

char *sub_1000016F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1000028CC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v10 = &_swiftEmptyArrayStorage;
  result = sub_100001B08(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_10000286C();
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_100001EC0();
      swift_dynamicCast();
      v10 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        sub_100001B08((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      v3[2] = v8 + 1;
      sub_100001A74(&v9, &v3[4 * v8 + 4]);
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1000018F0()
{
  if (!qword_100008158)
  {
    v0 = sub_1000028EC();
    if (!v1)
    {
      atomic_store(v0, &qword_100008158);
    }
  }
}

uint64_t sub_1000019B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100001A0C()
{
  if (!qword_100008160)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100008160);
    }
  }
}

_OWORD *sub_100001A74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_100001A84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_10000281C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithPath:v3];

  return v4;
}

char *sub_100001AE8(char *a1, int64_t a2, char a3)
{
  result = sub_100001B28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100001B08(char *a1, int64_t a2, char a3)
{
  result = sub_100001C34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100001B28(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001FE8(0, &qword_100008180);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100001C34(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001FE8(0, &qword_100008170);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100001D48(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000291C();
  sub_10000282C();
  v6 = sub_10000293C();

  return sub_100001E0C(a1, a2, v6);
}

uint64_t sub_100001DC0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100001E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10000290C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100001EC0()
{
  result = qword_100008168;
  if (!qword_100008168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008168);
  }

  return result;
}

void sub_100001F08()
{
  if (!qword_100008178)
  {
    sub_1000027AC();
    v0 = sub_10000285C();
    if (!v1)
    {
      atomic_store(v0, &qword_100008178);
    }
  }
}

uint64_t sub_100001F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100001FE8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000028FC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

SonicDiagnostics::SonicEntitlementError_optional __swiftcall SonicEntitlementError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t sub_100002078()
{
  result = qword_100008188;
  if (!qword_100008188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008188);
  }

  return result;
}

Swift::Int sub_1000020E4(unsigned __int8 a1)
{
  sub_10000291C();
  sub_10000292C(a1);
  return sub_10000293C();
}

Swift::Int sub_100002164(uint64_t a1, unsigned __int8 a2)
{
  sub_10000291C();
  sub_10000292C(a2);
  return sub_10000293C();
}

SonicDiagnostics::SonicEntitlementError_optional sub_1000021A8@<W0>(Swift::Int *a1@<X0>, SonicDiagnostics::SonicEntitlementError_optional *a2@<X8>)
{
  result.value = SonicEntitlementError.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1000021D4@<X0>(uint64_t *a1@<X8>)
{
  result = SonicEntitlementError.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_100002204()
{
  result = qword_100008190;
  if (!qword_100008190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008190);
  }

  return result;
}

unint64_t sub_10000225C()
{
  result = qword_100008198;
  if (!qword_100008198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008198);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SonicEntitlementError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SonicEntitlementError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10000243CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void NSFileManager.sonicContainerURL.getter()
{
  sub_1000026B4(0, &qword_1000081A0, &type metadata accessor for SonicError.Interpolation);
  v2 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = sub_10000281C();
  v4 = [v0 containerURLForSecurityApplicationGroupIdentifier:v3];

  if (v4)
  {
    sub_10000279C();
  }

  else
  {
    sub_100002660();
    sub_1000027DC();
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    sub_1000027CC(v5);
    sub_1000027BC();
    v6._countAndFlagsBits = 0xD000000000000062;
    v6._object = 0x8000000100002BB0;
    sub_1000027CC(v6);
    sub_1000026B4(0, &qword_1000081B0, &type metadata accessor for SonicError);
    sub_100002718();
    swift_allocError();
    sub_1000027EC();
    swift_willThrow();
  }
}

unint64_t sub_100002660()
{
  result = qword_1000081A8;
  if (!qword_1000081A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000081A8);
  }

  return result;
}

void sub_1000026B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100002660();
    v7 = a3(a1, &type metadata for SonicEntitlementError, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_100002718()
{
  result = qword_1000081B8;
  if (!qword_1000081B8)
  {
    sub_1000026B4(255, &qword_1000081B0, &type metadata accessor for SonicError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000081B8);
  }

  return result;
}