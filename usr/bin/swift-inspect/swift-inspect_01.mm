uint64_t sub_100011FA4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 648;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 648;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[648 * v11] <= a4)
    {
      memmove(a4, __src, 648 * v11);
    }

    v12 = &v4[648 * v11];
    if (v10 < 648 || v6 <= v7)
    {
LABEL_32:
      v15 = v6;
    }

    else
    {
      do
      {
        v16 = v12 - 648;
        v5 -= 648;
        while (1)
        {
          v12 = v16 + 648;
          v19 = v5 + 648;
          if (*(v6 - 152) < *(v16 + 10))
          {
            break;
          }

          if (v19 != v12)
          {
            memmove(v5, v16, 0x288uLL);
          }

          v17 = v16 - 648;
          v5 -= 648;
          v18 = v16 > v4;
          v16 -= 648;
          if (!v18)
          {
            v12 = v17 + 648;
            goto LABEL_32;
          }
        }

        v15 = v6 - 648;
        if (v19 != v6)
        {
          memmove(v5, v6 - 648, 0x288uLL);
        }

        if (v12 <= v4)
        {
          break;
        }

        v6 -= 648;
      }

      while (v15 > v7);
      v12 = v16 + 648;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[648 * v9] <= a4)
    {
      memmove(a4, __dst, 648 * v9);
    }

    v12 = &v4[648 * v9];
    if (v8 >= 648 && v6 < v5)
    {
      while (*(v4 + 10) < *(v6 + 10))
      {
        v13 = v6;
        v14 = v7 == v6;
        v6 += 648;
        if (!v14)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 += 648;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_15;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 648;
      if (v14)
      {
        goto LABEL_13;
      }

LABEL_12:
      memmove(v7, v13, 0x288uLL);
      goto LABEL_13;
    }

LABEL_15:
    v15 = v7;
  }

  v20 = (v12 - v4) / 648;
  if (v15 != v4 || v15 >= &v4[648 * v20])
  {
    memmove(v15, v4, 648 * v20);
  }

  return 1;
}

unint64_t sub_100012214(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_100012318(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100012370(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

char *sub_1000123E8()
{
  v21 = 0;
  sub_1000021C0(&qword_1000B4CE8, &qword_10008FF40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100090300;
  *(inited + 32) = 0xE00000001;
  *(inited + 40) = 0;
  if (sysctl((inited + 32), 3u, 0, &v21, 0, 0))
  {
    goto LABEL_12;
  }

  if (v21 < -647)
  {
    goto LABEL_28;
  }

  v1 = v21 / 648;
  if (v21 < 648)
  {
    v2 = &_swiftEmptyArrayStorage;
  }

  else
  {
    type metadata accessor for kinfo_proc(0);
    v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v2 + 2) = v1;
    v3 = 32;
    v4 = v1;
    do
    {
      bzero(&v2[v3], 0x288uLL);
      v3 += 648;
      --v4;
    }

    while (v4);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    inited = sub_10000E898(0, 3, 0, inited);
  }

  v5 = sysctl((inited + 32), 3u, v2 + 32, &v21, 0, 0);

  if (v5)
  {

LABEL_12:

    return 0;
  }

  if (v1 > v21 / 648)
  {
    sub_10001AA78(v1 - v21 / 648, v2);

    swift_unknownObjectRelease();
  }

  v20 = v2;

  sub_100011830(&v20);

  v7 = v20;
  v8 = getpid();
  v9 = 0;
  v10 = *(v7 + 2);
  v11 = &_swiftEmptyArrayStorage;
LABEL_16:
  v12 = 648 * v9 + 72;
  while (v10 != v9)
  {
    if (v9 >= *(v7 + 2))
    {
      __break(1u);
LABEL_28:
      __break(1u);
    }

    v13 = *&v7[v12];
    if (v13 < 2)
    {
      break;
    }

    v12 += 648;
    ++v9;
    if (v13 != v8)
    {
      v14 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_10000E898(0, *(v14 + 2) + 1, 1, v14);
      }

      v11 = v14;
      v15 = *(v14 + 2);
      v16 = *(v14 + 3);
      v17 = v15 + 1;
      if (v15 >= v16 >> 1)
      {
        v19 = v15;
        v11 = sub_10000E898((v16 > 1), v17, 1, v11);
        v15 = v19;
      }

      *(v11 + 2) = v17;
      *&v11[4 * v15 + 32] = v13;
      goto LABEL_16;
    }
  }

  v18 = v11;

  return v18;
}

uint64_t sub_100012714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001275C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000127EC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 48);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;
      v5 = *(v2 - 2);
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_10008E640;
      sub_1000023DC();

      v7._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v7);

      v8._countAndFlagsBits = 9;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);
      v9._countAndFlagsBits = v3;
      v9._object = v4;
      String.append(_:)(v9);
      *(v6 + 56) = &type metadata for String;
      *(v6 + 32) = 30768;
      *(v6 + 40) = 0xE200000000000000;
      sub_1000185C0();
      print<A>(_:separator:terminator:to:)();

      v2 += 3;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_10001295C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x74657366666FLL;
  if (a1 != 5)
  {
    v5 = 0x636172746B636162;
    v4 = 0xE900000000000065;
  }

  v6 = 0x4F79617272417369;
  v7 = 0xEE007373616C4366;
  if (a1 != 3)
  {
    v6 = 0x65676162726167;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x697461636F6C6C61;
  v9 = 0xEA00000000006E6FLL;
  if (a1 != 1)
  {
    v8 = 1701667182;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x73736572646461;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
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
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEA00000000006E6FLL;
        if (v10 != 0x697461636F6C6C61)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        if (v10 != 1701667182)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x73736572646461)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x74657366666FLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x636172746B636162)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEE007373616C4366;
    if (v10 != 0x4F79617272417369)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x65676162726167)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

Swift::Int sub_100012B9C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100012CE0()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_100012E00@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100018748(*a1);
  *a2 = result;
  return result;
}

void sub_100012E30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x73736572646461;
  v5 = 0xE600000000000000;
  v6 = 0x74657366666FLL;
  if (v2 != 5)
  {
    v6 = 0x636172746B636162;
    v5 = 0xE900000000000065;
  }

  v7 = 0xEE007373616C4366;
  v8 = 0x4F79617272417369;
  if (v2 != 3)
  {
    v8 = 0x65676162726167;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006E6FLL;
  v10 = 0x697461636F6C6C61;
  if (v2 != 1)
  {
    v10 = 1701667182;
    v9 = 0xE400000000000000;
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

uint64_t sub_100012F18()
{
  v1 = *v0;
  v2 = 0x73736572646461;
  v3 = 0x74657366666FLL;
  if (v1 != 5)
  {
    v3 = 0x636172746B636162;
  }

  v4 = 0x4F79617272417369;
  if (v1 != 3)
  {
    v4 = 0x65676162726167;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x697461636F6C6C61;
  if (v1 != 1)
  {
    v5 = 1701667182;
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

unint64_t sub_100012FFC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100018748(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100013030(uint64_t a1)
{
  v2 = sub_1000197BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001306C(uint64_t a1)
{
  v2 = sub_1000197BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000130A8(void *a1)
{
  v3 = v1;
  v5 = sub_1000021C0(&qword_1000B4E60, &qword_100090AB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_1000197BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[5];
  v13 = v3[6];
  LOBYTE(v20) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (*(v3 + 56) == 1)
  {
    LOBYTE(v20) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  if (*(v3 + 57) == 1)
  {
    LOBYTE(v20) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v15 = v3[1];
  v16 = v3[2];
  v19 = v3[3];
  v17 = *(v3 + 32);
  if (v17)
  {
LABEL_12:
    if (v3[9])
    {
      v18 = v3[8];
      LOBYTE(v20) = 6;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    if ((v17 & 1) == 0)
    {
      v20 = v15;
      v21 = v16;
      v22 = v19;
      v23 = 1;
      type metadata accessor for swift_metadata_allocation(0);
      sub_100019810(&qword_1000B4E70, type metadata accessor for swift_metadata_allocation);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      return (*(v6 + 8))(v9, v5);
    }

    return (*(v6 + 8))(v9, v5);
  }

  result = v11 - v16;
  if (v11 < v16)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    LOBYTE(v20) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001339C(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v15[0] = a5;
  v16 = a4;
  v7 = sub_1000021C0(&qword_1000B4E18, &qword_100090A98);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v15 - v10;
  v12 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_1000195B4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v14 = v15[0];
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15[1] = v14;
    v17 = 2;
    sub_1000021C0(&qword_1000B4E28, &qword_100090AA0);
    sub_100019608(&qword_1000B4E30, &qword_1000B4E28, &qword_100090AA0, sub_100019684);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000135D4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000021C0(&qword_1000B4E40, &qword_100090AA8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v13 - v9;
  v11 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_1000196D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v13[1] = a3;
    v14 = 1;
    sub_1000021C0(&qword_1000B4E50, &qword_100090AB0);
    sub_10001972C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10001376C(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = *v1;
  v4 = v1[1];
  return sub_1000130A8(a1);
}

uint64_t sub_1000137B0()
{
  v1 = 6580592;
  if (*v0 != 1)
  {
    v1 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1000137FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100018794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100013824(uint64_t a1)
{
  v2 = sub_1000195B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100013860(uint64_t a1)
{
  v2 = sub_1000195B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000138C0()
{
  if (*v0)
  {
    result = 0x65737365636F7270;
  }

  else
  {
    result = 0x7A69536C61746F74;
  }

  *v0;
  return result;
}

uint64_t sub_100013900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7A69536C61746F74 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65737365636F7270 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000139E0(uint64_t a1)
{
  v2 = sub_1000196D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100013A1C(uint64_t a1)
{
  v2 = sub_1000196D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100013A74()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  result = (*(v2 + 8))(v5, v1);
  if (v8 >> 60 != 15)
  {
    v10 = *v0;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v10 writeData:isa];

    return sub_1000197A8(v6, v8);
  }

  return result;
}

double sub_100013BA4()
{
  *&v1 = 0;
  *(&v1 + 1) = 0xE000000000000000;
  CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)(0, 0, 0xD000000000000030, 0x80000001000979F0, 0, 0, 0, 0xE000000000000000, v2, v1, 1, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, _swiftEmptyArrayStorage);
  xmmword_1000B64D8 = v2[6];
  unk_1000B64E8 = v2[7];
  xmmword_1000B64F8 = v2[8];
  qword_1000B6508 = v3;
  xmmword_1000B6498 = v2[2];
  unk_1000B64A8 = v2[3];
  xmmword_1000B64B8 = v2[4];
  unk_1000B64C8 = v2[5];
  result = *v2;
  xmmword_1000B6478 = v2[0];
  unk_1000B6488 = v2[1];
  return result;
}

uint64_t sub_100013C64()
{
  v1 = stderr.getter();
  setvbuf(v1, 0, 2, 0);
  v80 = &_swiftEmptyDictionarySingleton;
  v72 = _swiftEmptyArrayStorage;
  v2 = *(v0 + 48);
  v67 = *(v0 + 32);
  v68 = v2;
  v69 = *(v0 + 64);
  *&v70 = *(v0 + 80);
  v3 = *(v0 + 16);
  v65 = *v0;
  v66 = v3;
  v4 = sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
  OptionGroup.wrappedValue.getter(v4, &v55);
  v5 = v55;
  v6 = v56;
  v7 = v57;
  v8 = v58;
  v9 = v59;
  v10 = v60;
  v49 = v61;
  sub_10001837C(v0, &v65);
  sub_10000957C(v5, v6, v7, v8, *(&v8 + 1), v9, v0, &v80, &v72);
  sub_1000183B4(v0);
  sub_1000022B8(v5, v6, v7);
  sub_1000022C8(v8, *(&v8 + 1), v9);
  sub_1000022C8(v10, *(&v10 + 1), v49);
  if (!v54)
  {
    v12 = *(v0 + 200);
    v13 = *(v0 + 232);
    v77 = *(v0 + 216);
    v78 = v13;
    v79 = *(v0 + 248);
    v14 = *(v0 + 168);
    v73 = *(v0 + 152);
    v74 = v14;
    v75 = *(v0 + 184);
    v76 = v12;
    v15 = *(v0 + 200);
    v16 = *(v0 + 232);
    v69 = *(v0 + 216);
    v70 = v16;
    v71 = *(v0 + 248);
    v17 = *(v0 + 168);
    v65 = *(v0 + 152);
    v66 = v17;
    v67 = *(v0 + 184);
    v68 = v15;
    v50 = sub_1000021C0(&qword_1000B4D70, &unk_1000907B0);
    OptionGroup.wrappedValue.getter(v50, &v55);
    v18 = v55;
    v19 = v56;
    v20 = v57;
    v21 = v58;
    v22 = v59;
    v23 = v60;
    v37 = v61;
    v43 = v63;
    v46 = v62;
    v40 = v64;
    v65 = v58;
    LOBYTE(v66) = v59;
    v53 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v53, &v55);
    sub_1000022C8(v18, v19, v20);
    sub_1000022C8(v21, *(&v21 + 1), v22);
    sub_1000022C8(v23, *(&v23 + 1), v37);
    sub_1000022B8(v46, v43, v40);
    v69 = v77;
    v70 = v78;
    v71 = v79;
    v65 = v73;
    v66 = v74;
    v67 = v75;
    v68 = v76;
    if (v55 == 1)
    {
      OptionGroup.wrappedValue.getter(v50, &v55);
      v24 = v55;
      v25 = v56;
      v26 = v57;
      v38 = *(&v58 + 1);
      v41 = v58;
      v27 = v59;
      v28 = v60;
      v29 = v61;
      v47 = v63;
      v51 = v62;
      v44 = v64;
      v65 = v60;
      LOBYTE(v66) = v61;
      Flag.wrappedValue.getter(v53, &v55);
      sub_1000022C8(v24, v25, v26);
      sub_1000022C8(v41, v38, v27);
      sub_1000022C8(v28, *(&v28 + 1), v29);
      sub_1000022B8(v51, v47, v44);
      v30 = v80;
      *(&v66 + 1) = sub_1000021C0(&qword_1000B4D90, &qword_1000907C8);
      *&v67 = sub_100018438();
      *&v65 = v30;

      sub_100015564(&v65);
      sub_100002B38(&v65);
    }

    else
    {
      OptionGroup.wrappedValue.getter(v50, &v55);
      v31 = v55;
      v32 = v56;
      v33 = v57;
      v39 = *(&v58 + 1);
      v42 = v58;
      v34 = v59;
      v35 = v60;
      v36 = v61;
      v48 = v63;
      v52 = v62;
      v45 = v64;
      v65 = v60;
      LOBYTE(v66) = v61;
      Flag.wrappedValue.getter(v53, &v55);
      sub_1000022C8(v31, v32, v33);
      sub_1000022C8(v42, v39, v34);
      sub_1000022C8(v35, *(&v35 + 1), v36);
      sub_1000022B8(v52, v48, v45);
      sub_100015B28(v80);
    }
  }
}

uint64_t sub_10001416C(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_getObjectType();
  if (!*(a1 + 40))
  {
    goto LABEL_68;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = _swiftEmptyArrayStorage;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100002310;
  *(v11 + 24) = v10;
  *&v142 = sub_100010E78;
  *(&v142 + 1) = v11;
  swift_retain_n();
  v12 = swift_reflection_iterateMetadataAllocations();

  if (v12)
  {
    v13 = String.init(cString:)();
    v15 = v14;
    sub_100002388();
    swift_allocError();
    *v16 = v13;
    v16[1] = v15;
    swift_willThrow();
  }

  v91 = a4;

  swift_beginAccess();
  v18 = *(v10 + 16);

  *&v142 = v18;

  sub_100016A48(&v142);
  if (v5)
  {
    goto LABEL_70;
  }

  v19 = v142;
  v20 = *(a3 + 104);
  v149 = *(a3 + 88);
  v150 = v20;
  v21 = *(a3 + 136);
  v151 = *(a3 + 120);
  v152 = v21;
  v22 = *(a3 + 104);
  v142 = *(a3 + 88);
  v143 = v22;
  v23 = *(a3 + 136);
  v144 = *(a3 + 120);
  v145 = v23;
  v97 = sub_1000021C0(&qword_1000B47E0, &qword_10008E998);
  OptionGroup.wrappedValue.getter(v97, &v153);
  v24 = sub_1000054E4();
  v157 = v153;
  v158 = v154;
  sub_100002BCC(&v157, &qword_1000B47E8, &unk_10008E9A0);
  v159 = v155;
  v160 = v156;
  sub_100002BCC(&v159, &qword_1000B47E8, &unk_10008E9A0);
  if (v24 != 2)
  {
    if (*(a1 + 40))
    {
      v25 = sub_100004444();
      goto LABEL_9;
    }

    __break(1u);
LABEL_70:

    __break(1u);
    return result;
  }

  v25 = &_swiftEmptyDictionarySingleton;
LABEL_9:
  v128 = a1;
  v100 = *(v19 + 16);
  if (!v100)
  {

    v27 = _swiftEmptyArrayStorage;
    goto LABEL_55;
  }

  v26 = 0;
  v99 = v19 + 32;
  v93 = v25;
  v94 = v19 + 24;
  v27 = _swiftEmptyArrayStorage;
  v28 = 24;
  v96 = v19;
  do
  {
    if (v26 >= *(v19 + 16))
    {
      goto LABEL_64;
    }

    v32 = v99 + 24 * v26;
    v33 = *(v32 + 16);
    v34 = *(v32 + 8);
    v35 = *(a1 + 40);
    LODWORD(v142) = *v32;
    *(&v142 + 1) = v34;
    LODWORD(v143) = v33;
    v36 = swift_reflection_allocationMetadataPointer();
    if (!v36)
    {
      goto LABEL_12;
    }

    v37 = v36;
    v38 = *(v19 + 16);
    v129 = v27;
    v125 = v26;
    if (v38)
    {
      v39 = (v94 + 24 * v38);
      do
      {
        v28 = *(v39 - 1);
        if (v36 >= v28)
        {
          v19 = *v39;
          if (__CFADD__(v28, v19))
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            result = sub_10000EE0C(0, *(v27 + 2) + 1, 1, v27);
            v27 = result;
            *v6 = result;
LABEL_57:
            v81 = *(v27 + 2);
            v80 = *(v27 + 3);
            if (v81 >= v80 >> 1)
            {
              result = sub_10000EE0C((v80 > 1), v81 + 1, 1, v27);
              v27 = result;
              *v6 = result;
            }

            *(v27 + 2) = v81 + 1;
            v82 = &v27[32 * v81];
            *(v82 + 4) = v28;
            *(v82 + 5) = v7;
            *(v82 + 12) = v19;
            *(v82 + 7) = v129;
            return result;
          }

          if (v36 < v28 + v19)
          {
            v112 = 0;
            v130 = 0;
            v110 = *(v39 - 4);
            goto LABEL_23;
          }
        }

        v39 -= 6;
        --v38;
      }

      while (v38);
    }

    v40 = *(a1 + 40);
    v110 = 0;
    v28 = 0;
    v19 = 0;
    v112 = swift_reflection_ownsAddressStrict() == 0;
    v130 = 1;
LABEL_23:
    v142 = v149;
    v143 = v150;
    v144 = v151;
    v145 = v152;
    OptionGroup.wrappedValue.getter(v97, &v133);
    v41 = *(&v133 + 1);
    v117 = v133;
    v121 = v134;
    v42 = v135;
    v43 = v136;
    v142 = v135;
    LOBYTE(v143) = v136;
    v44 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v44, &v133);
    v114 = v44;
    v108 = v133;
    if (v133)
    {
      sub_1000022C8(v117, v41, v121);
      sub_1000022C8(v42, *(&v42 + 1), v43);
      if ((v130 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *&v142 = v117;
      *(&v142 + 1) = v41;
      LOBYTE(v143) = v121;
      Flag.wrappedValue.getter(v44, &v133);
      sub_1000022C8(v117, v41, v121);
      sub_1000022C8(v42, *(&v42 + 1), v43);
      if (!(v130 & 1 | ((v133 & 1) == 0)))
      {
LABEL_25:
        v45 = a3;
        if (v93[2] && (v46 = sub_10001F92C(v28), (v47 & 1) != 0))
        {
          v48 = *(v93[7] + 8 * v46);
          swift_unknownObjectRetain();

          v50 = sub_1000102F4(v49, v108, v128, a2);
          v118 = v51;
          v122 = v50;

          swift_unknownObjectRelease();
          if (!*(v128 + 40))
          {
            goto LABEL_67;
          }
        }

        else
        {
          v118 = 0;
          v122 = 0;
          if (!*(v128 + 40))
          {
            goto LABEL_67;
          }
        }

        goto LABEL_33;
      }
    }

    v118 = 0;
    v122 = 0;
    v45 = a3;
    if (!*(v128 + 40))
    {
      goto LABEL_67;
    }

LABEL_33:
    v52 = *(v45 + 200);
    v53 = *(v45 + 232);
    v146 = *(v45 + 216);
    v147 = v53;
    v148 = *(v45 + 248);
    v54 = *(v45 + 168);
    v142 = *(v45 + 152);
    v143 = v54;
    v144 = *(v45 + 184);
    v145 = v52;
    v55 = sub_1000021C0(&qword_1000B4D70, &unk_1000907B0);
    OptionGroup.wrappedValue.getter(v55, &v133);
    v56 = v133;
    v57 = v134;
    v58 = *(&v135 + 1);
    v102 = v135;
    v101 = v136;
    v104 = *(&v137 + 1);
    v105 = v137;
    v103 = v138;
    v107 = v140;
    v109 = v139;
    v106 = v141;
    v142 = v133;
    LOBYTE(v143) = v134;
    Flag.wrappedValue.getter(v114, &v133);
    sub_1000022C8(v56, *(&v56 + 1), v57);
    sub_1000022C8(v102, v58, v101);
    sub_1000022C8(v105, v104, v103);
    sub_1000022B8(v109, v107, v106);
    if (swift_reflection_typeRefForMetadata() && (v59 = swift_reflection_copyNameForTypeRef()) != 0)
    {
      v60 = v59;
      v61 = String.init(cString:)();
      v6 = v62;
      free(v60);
    }

    else
    {
      v61 = 0x6E776F6E6B6E753CLL;
      v6 = 0xE90000000000003ELL;
    }

    a1 = v128;
    v63 = v129;
    if (!*(v128 + 40))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
    }

    v64 = *(v128 + 40);
    if (swift_reflection_typeRefForMetadata() && (v65 = swift_reflection_copyNameForTypeRef()) != 0)
    {
      v66 = v65;
      String.init(cString:)();
      free(v66);
      v67._object = 0x8000000100097330;
      v67._countAndFlagsBits = 0xD00000000000001DLL;
      LOBYTE(v66) = String.hasPrefix(_:)(v67);

      if (v66)
      {
        a1 = v128;
        if (swift_reflection_typeRefForMetadata() && swift_reflection_genericArgumentCountOfTypeRef() == 1 && swift_reflection_genericArgumentOfTypeRef())
        {
          swift_reflection_infoForTypeRef();
          v68 = v142 == 13;
        }

        else
        {
          v68 = 0;
        }
      }

      else
      {
        v68 = 0;
        a1 = v128;
      }

      v63 = v129;
    }

    else
    {
      v68 = 0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_10000EF18(0, *(v63 + 2) + 1, 1, v63);
    }

    v7 = *(v63 + 2);
    v69 = *(v63 + 3);
    v70 = v63;
    if (v7 >= v69 >> 1)
    {
      v70 = sub_10000EF18((v69 > 1), v7 + 1, 1, v63);
    }

    *(v70 + 2) = v7 + 1;
    v27 = v70;
    v29 = &v70[80 * v7];
    *(v29 + 4) = v37;
    *(v29 + 5) = v110;
    *(v29 + 6) = v28;
    *(v29 + 7) = v19;
    v29[64] = v130;
    v30 = *(&v142 + 3);
    *(v29 + 65) = v142;
    *(v29 + 17) = v30;
    *(v29 + 9) = v61;
    *(v29 + 10) = v6;
    v29[88] = v68;
    v29[89] = v112;
    v31 = v133;
    *(v29 + 47) = WORD2(v133);
    *(v29 + 90) = v31;
    *(v29 + 12) = v122;
    *(v29 + 13) = v118;
    v19 = v96;
    v26 = v125;
    v28 = 24;
LABEL_12:
    ++v26;
  }

  while (v26 != v100);

LABEL_55:
  swift_unknownObjectRetain();
  v129 = v27;
  sub_100018030(v27, v91, a1);
  swift_unknownObjectRelease();
  v71 = *(a3 + 200);
  v72 = *(a3 + 232);
  v146 = *(a3 + 216);
  v147 = v72;
  v148 = *(a3 + 248);
  v73 = *(a3 + 168);
  v142 = *(a3 + 152);
  v143 = v73;
  v144 = *(a3 + 184);
  v145 = v71;
  v113 = sub_1000021C0(&qword_1000B4D70, &unk_1000907B0);
  OptionGroup.wrappedValue.getter(v113, &v133);
  v74 = v133;
  v75 = v134;
  v76 = v135;
  v77 = v136;
  v78 = *(&v137 + 1);
  v119 = v137;
  v115 = v138;
  v131 = v139;
  v126 = v140;
  v123 = v141;
  v142 = v135;
  LOBYTE(v143) = v136;
  v111 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
  Flag.wrappedValue.getter(v111, &v133);
  sub_1000022C8(v74, *(&v74 + 1), v75);
  sub_1000022C8(v76, *(&v76 + 1), v77);
  sub_1000022C8(v119, v78, v115);
  sub_1000022B8(v131, v126, v123);
  if (v133)
  {
    v28 = sub_10000CFA4();
    v7 = v79;
    *(&v143 + 1) = swift_getAssociatedTypeWitness();
    *sub_100007DE4(&v142) = *(v128 + 20);
    swift_dynamicCast();
    LODWORD(v19) = v133;
    v6 = a5;
    v27 = *a5;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v27;
    if ((result & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

  v83 = *(a3 + 200);
  v84 = *(a3 + 232);
  v146 = *(a3 + 216);
  v147 = v84;
  v148 = *(a3 + 248);
  v85 = *(a3 + 168);
  v142 = *(a3 + 152);
  v143 = v85;
  v144 = *(a3 + 184);
  v145 = v83;
  OptionGroup.wrappedValue.getter(v113, &v133);
  v86 = v133;
  v87 = v134;
  v116 = *(&v135 + 1);
  v120 = v135;
  v88 = v136;
  v89 = v137;
  v90 = v138;
  v132 = v139;
  v127 = v140;
  v124 = v141;
  v142 = v137;
  LOBYTE(v143) = v138;
  Flag.wrappedValue.getter(v111, &v133);
  sub_1000022C8(v86, *(&v86 + 1), v87);
  sub_1000022C8(v120, v116, v88);
  sub_1000022C8(v89, *(&v89 + 1), v90);
  sub_1000022B8(v132, v127, v124);
  if ((v133 & 1) == 0)
  {
    sub_1000150C8(v128, a2, v27);
  }
}

uint64_t sub_100014D38(uint64_t result, uint64_t *a2, Swift::Int a3)
{
  if (*(result + 32))
  {
    return result;
  }

  v6 = *(result + 40);
  v5 = *(result + 48);
  v7 = *(result + 24);
  v8 = *(*a2 + 16);

  if (!v8 || (, sub_10001F970(v6, v5), v10 = v9, , (v10 & 1) == 0))
  {
    sub_1000021C0(&qword_1000B4C88, &qword_10008FEE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008E640;
    *(inited + 32) = sub_10000CFA4();
    *(inited + 40) = v22;
    v23 = sub_100017F98(inited);
    swift_setDeallocating();
    sub_1000186F4(inited + 32);
    v24 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *a2;
    *a2 = 0x8000000000000000;
    sub_100021214(v7, v23, v6, v5, isUniquelyReferenced_nonNull_native);

    *a2 = v44;
    return result;
  }

  v11 = *a2;
  LOBYTE(v12) = swift_isUniquelyReferenced_nonNull_native();
  v44 = *a2;
  v13 = v44;
  *a2 = 0x8000000000000000;
  v14 = sub_10001F970(v6, v5);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_27;
  }

  v10 = v15;
  if (*(v13 + 24) >= v19)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    sub_10001FF3C(v19, v12);
    v14 = sub_10001F970(v6, v5);
    if ((v10 & 1) != (v20 & 1))
    {
LABEL_33:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

  if ((v10 & 1) == 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    sub_10002179C();
    if ((v12 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v26 = v44;
    v27 = (*(v44 + 56) + 16 * v14);
    if (__OFADD__(*v27, v7))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v27[1])
    {
      *v27 += v7;
    }

    else
    {
      v28 = v14;
      sub_1000186F4(*(v44 + 48) + 16 * v14);
      sub_100020D90(v28, v44);
    }

    *a2 = v26;
    a3 = sub_10000CFA4();
    v10 = v29;
    v30 = *a2;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v45 = *a2;
    v32 = v45;
    *a2 = 0x8000000000000000;
    v7 = sub_10001F970(v6, v5);
    v34 = *(v32 + 16);
    v35 = (v33 & 1) == 0;
    v14 = v34 + v35;
    if (!__OFADD__(v34, v35))
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    v12 = v14;
    sub_10002179C();
    v14 = v12;
    if ((v10 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  LOBYTE(v12) = v33;
  if (*(v32 + 24) >= v14)
  {
    if (v31)
    {
      if ((v33 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_22;
    }

    goto LABEL_31;
  }

  sub_10001FF3C(v14, v31);
  v36 = sub_10001F970(v6, v5);
  if ((v12 & 1) != (v37 & 1))
  {
    goto LABEL_33;
  }

  v7 = v36;
  if ((v12 & 1) == 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_22:
  v38 = (*(v45 + 56) + 16 * v7);
  v42 = *v38;
  v43 = v38[1];
  sub_100023418(&v44, a3, v10);

  if (v43)
  {

    v39 = v45;
    v40 = (*(v45 + 56) + 16 * v7);
    *v40 = v42;
    v40[1] = v43;

    *a2 = v39;
  }

  else
  {

    v41 = v45;
    sub_1000186F4(*(v45 + 48) + 16 * v7);
    result = sub_100020D90(v7, v41);
    *a2 = v41;
  }

  return result;
}

void sub_1000150C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 200);
  v55 = _swiftEmptyArrayStorage;
  v5 = *(v3 + 232);
  v40 = *(v3 + 216);
  v41 = v5;
  v42 = *(v3 + 248);
  v6 = *(v3 + 168);
  v36 = *(v3 + 152);
  v37 = v6;
  v38 = *(v3 + 184);
  v39 = v4;
  v7 = sub_1000021C0(&qword_1000B4D70, &unk_1000907B0);
  OptionGroup.wrappedValue.getter(v7, &v43);
  v8 = v43;
  v9 = v44;
  v10 = v45;
  v11 = v47;
  v31 = v46;
  v12 = v48;
  v33 = v50;
  v34 = v49;
  v32 = v51;
  v13 = v52;
  v14 = v53;
  v36 = v52;
  LOBYTE(v37) = v53;
  v15 = sub_1000021C0(&qword_1000B49B8, &unk_1000907E0);
  Option.wrappedValue.getter(v15, &v43);
  sub_1000022C8(v8, v9, v10);
  sub_1000022C8(v31, v11, v12);
  sub_1000022C8(v34, v33, v32);
  sub_1000022B8(v13, *(&v13 + 1), v14);
  v16 = sub_100018138(v43, v44);
  if (!v35)
  {
    v54[0] = v16;
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10008E640;
    v43 = 0;
    v44 = 0xE000000000000000;
    swift_getObjectType();
    v18._countAndFlagsBits = sub_10000CFA4();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 40;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    *(&v37 + 1) = swift_getAssociatedTypeWitness();
    *sub_100007DE4(&v36) = *(a1 + 20);
    _print_unlocked<A, B>(_:_:)();
    sub_100002B38(&v36);
    v20._countAndFlagsBits = 670249;
    v20._object = 0xE300000000000000;
    String.append(_:)(v20);
    v21 = v43;
    v22 = v44;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 32) = v21;
    *(v17 + 40) = v22;
    sub_1000185C0();
    print<A>(_:separator:terminator:to:)();

    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10008F230;
    *(v23 + 32) = 0x73736572646441;
    *(v23 + 40) = 0xE700000000000000;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = 0x697461636F6C6C41;
    *(v23 + 72) = 0xEA00000000006E6FLL;
    *(v23 + 88) = &type metadata for String;
    *(v23 + 96) = 1702521171;
    *(v23 + 104) = 0xE400000000000000;
    *(v23 + 120) = &type metadata for String;
    *(v23 + 128) = 0x74657366664FLL;
    *(v23 + 136) = 0xE600000000000000;
    *(v23 + 152) = &type metadata for String;
    strcpy((v23 + 160), "isArrayOfClass");
    *(v23 + 175) = -18;
    *(v23 + 216) = &type metadata for String;
    *(v23 + 184) = &type metadata for String;
    *(v23 + 192) = 1701667150;
    *(v23 + 200) = 0xE400000000000000;
    print<A>(_:separator:terminator:to:)();

    sub_10001837C(v30, &v36);
    sub_100017E90(a3, v54, &v55, v30);
    sub_1000183B4(v30);
    v24 = v55;
    if (v55[2])
    {
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_10008E640;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 32) = 0xD00000000000005BLL;
      *(v25 + 40) = 0x8000000100097970;
      print<A>(_:separator:terminator:to:)();

      sub_1000127EC(v24);
    }

    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10008E640;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 32) = 0;
    *(v26 + 40) = 0xE000000000000000;
    print<A>(_:separator:terminator:to:)();

    v27 = v54[0];
  }
}

uint64_t sub_100015564(void *a1)
{
  v2 = v1;
  v50 = type metadata accessor for String.Encoding();
  v49 = *(v50 - 8);
  v4 = *(v49 + 64);
  __chkstk_darwin();
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v39 - v6;
  v7 = *(type metadata accessor for JSONEncoder.OutputFormatting() - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = JSONEncoder.init()();
  sub_1000021C0(&qword_1000B4DA8, &qword_1000907D0);
  v13 = *(v7 + 72);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10008F240;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  *&v63 = v15;
  sub_100019810(&qword_1000B4DB0, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_1000021C0(&qword_1000B4DB8, &qword_1000907D8);
  sub_10000BD8C(&qword_1000B4DC0, &qword_1000B4DB8, &qword_1000907D8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v16 = a1[4];
  sub_100002AA0(a1, a1[3]);
  v17 = v70;
  v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v17)
  {
  }

  v47 = 0;
  v70 = v12;
  v21 = v19;
  v22 = v18;
  static String.Encoding.utf8.getter();
  v45 = v22;
  v46 = v21;
  result = String.init(data:encoding:)();
  v44 = result;
  v51 = v23;
  if (v23)
  {
    v24 = *(v2 + 200);
    v25 = *(v2 + 232);
    v67 = *(v2 + 216);
    v68 = v25;
    v69 = *(v2 + 248);
    v26 = *(v2 + 168);
    v63 = *(v2 + 152);
    v64 = v26;
    v65 = *(v2 + 184);
    v66 = v24;
    v27 = sub_1000021C0(&qword_1000B4D70, &unk_1000907B0);
    OptionGroup.wrappedValue.getter(v27, &v52);
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v31 = v55;
    v32 = v56;
    v40 = v57;
    v43 = v58;
    v42 = v59;
    v41 = v60;
    v33 = v61;
    v34 = v62;
    v63 = v61;
    LOBYTE(v64) = v62;
    v35 = sub_1000021C0(&qword_1000B49B8, &unk_1000907E0);
    Option.wrappedValue.getter(v35, &v52);
    sub_1000022C8(v28, v29, v30);
    sub_1000022C8(v31, v32, v40);
    sub_1000022C8(v43, v42, v41);
    sub_1000022B8(v33, *(&v33 + 1), v34);
    if (v53)
    {
      *&v63 = v44;
      *(&v63 + 1) = v51;
      v36 = v48;
      static String.Encoding.utf8.getter();
      sub_10001856C();
      StringProtocol.write<A>(toFile:atomically:encoding:)();
      (*(v49 + 8))(v36, v50);
      sub_100018518(v45, v46);
    }

    else
    {
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_10008E640;
      *(v37 + 56) = &type metadata for String;
      v38 = v51;
      *(v37 + 32) = v44;
      *(v37 + 40) = v38;
      print(_:separator:terminator:)();
      sub_100018518(v45, v46);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100015B28(uint64_t a1)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 232);
  v63 = *(v1 + 216);
  v64 = v3;
  v65 = *(v1 + 248);
  v4 = *(v1 + 168);
  v59 = *(v1 + 152);
  v60 = v4;
  v61 = *(v1 + 184);
  v62 = v2;
  v5 = sub_1000021C0(&qword_1000B4D70, &unk_1000907B0);
  OptionGroup.wrappedValue.getter(v5, &v48);
  v6 = v48;
  v7 = v49;
  v8 = v50;
  v9 = v52;
  v42 = v51;
  v10 = v53;
  v46 = v54;
  v44 = v55;
  v43 = v56;
  v11 = v57;
  v12 = v58;
  v59 = v57;
  LOBYTE(v60) = v58;
  v13 = sub_1000021C0(&qword_1000B49B8, &unk_1000907E0);
  Option.wrappedValue.getter(v13, &v48);
  sub_1000022C8(v6, v7, v8);
  sub_1000022C8(v42, v9, v10);
  sub_1000022C8(v46, v44, v43);
  sub_1000022B8(v11, *(&v11 + 1), v12);
  v14 = sub_100018138(v48, v49);
  if (v47)
  {
    return;
  }

  v66 = v14;
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100090300;
  *(v15 + 32) = 1702521171;
  *(v15 + 40) = 0xE400000000000000;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = 0x7372656E774FLL;
  *(v15 + 72) = 0xE600000000000000;
  *(v15 + 120) = &type metadata for String;
  *(v15 + 88) = &type metadata for String;
  *(v15 + 96) = 1701667150;
  *(v15 + 104) = 0xE400000000000000;
  sub_1000185C0();
  print<A>(_:separator:terminator:to:)();

  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = sub_10001FC48(*(a1 + 16), 0);
    v18 = sub_100017D0C(&v59, v17 + 4, v16, a1);

    sub_100018614();
    if (v18 == v16)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_6:
  *&v59 = v17;
  sub_1000169DC(&v59);
  v19 = *(v59 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = (v59 + 56);
    while (1)
    {
      v25 = *(v22 - 1);
      v23 = __OFADD__(v20, v25);
      v20 += v25;
      if (v23)
      {
        break;
      }

      v27 = *(v22 - 3);
      v26 = *(v22 - 2);
      v28 = *v22;
      v29 = v27 == 0x6E776F6E6B6E753CLL && v26 == 0xE90000000000003ELL;
      if (v29 || (v30 = *(v22 - 3), v31 = *(v22 - 2), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        v23 = __OFADD__(v21, v25);
        v21 += v25;
        if (v23)
        {
          goto LABEL_22;
        }
      }

      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100090300;
      *(v24 + 56) = &type metadata for Int;
      *(v24 + 32) = v25;
      *(v24 + 64) = *(v28 + 16);
      *(v24 + 120) = &type metadata for String;
      *(v24 + 88) = &type metadata for Int;
      *(v24 + 96) = v27;
      *(v24 + 104) = v26;
      swift_bridgeObjectRetain_n();

      print<A>(_:separator:terminator:to:)();

      v22 += 4;
      if (!--v19)
      {
        v32 = v20 / 1024;
        v45 = v21 / 1024;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);

    __break(1u);
  }

  else
  {
    v45 = 0;
    v32 = 0;
LABEL_19:

    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10008E640;
    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    strcpy(&v59, "\nTotal size:\t");
    HIWORD(v59) = -4864;
    v48 = v32;
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 1114196768;
    v35._object = 0xE400000000000000;
    String.append(_:)(v35);
    v36 = v59;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 32) = v36;
    print<A>(_:separator:terminator:to:)();

    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_10008E640;
    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    strcpy(&v59, "Unknown size:\t");
    HIBYTE(v59) = -18;
    v48 = v45;
    v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v38);

    v39._countAndFlagsBits = 1114196768;
    v39._object = 0xE400000000000000;
    String.append(_:)(v39);
    v40 = v59;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 32) = v40;
    print<A>(_:separator:terminator:to:)();
  }
}

uint64_t sub_100016118(unint64_t *a1, unint64_t a2, void **a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[2];
  v39 = *(a1 + 6);
  v7 = *(a1 + 32);
  v8 = a1[6];
  v56 = a1[5];
  v44 = v8;
  v43 = *(a1 + 56);
  v42 = *(a1 + 57);
  v40 = a1[8];
  v41 = a1[9];
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10008E640;
  *&v46 = 30768;
  *(&v46 + 1) = 0xE200000000000000;
  *&v50 = v5;
  v10 = sub_1000023DC();
  v11._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  String.append(_:)(v11);

  v12 = v46;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 32) = v12;
  v13 = a2;
  v14 = v7;
  sub_1000185C0();
  print<A>(_:separator:terminator:to:)();

  if (v7)
  {
    v13 = v44;
    if (!v42)
    {
LABEL_7:
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10008E640;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 32) = 0x3F093F3F093F3F3FLL;
      v21 = 0xEA00000000003F3FLL;
      goto LABEL_11;
    }

    v10 = *a3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_4:
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        v10 = sub_10000F038((v16 > 1), v17 + 1, 1, v10);
        *a3 = v10;
      }

      v10[2] = v17 + 1;
      v18 = &v10[3 * v17];
      v19 = v56;
      v18[4] = v5;
      v18[5] = v19;
      v18[6] = v13;
      goto LABEL_7;
    }

LABEL_18:
    v10 = sub_10000F038(0, v10[2] + 1, 1, v10);
    *a3 = v10;
    goto LABEL_4;
  }

  if (v5 < v6)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (((v5 - v6) & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10008E640;
  *&v46 = 30768;
  *(&v46 + 1) = 0xE200000000000000;
  v23._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 9;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 9;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  *&v50 = v5 - v6;
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  v20 = v22;
  v14 = v7;
  v21 = 0xE200000000000000;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 32) = 30768;
  v13 = v44;
LABEL_11:
  *(v20 + 40) = v21;
  print<A>(_:separator:terminator:to:)();

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10008E640;
  *(v28 + 56) = &type metadata for Bool;
  *(v28 + 32) = v43;
  print<A>(_:separator:terminator:to:)();

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10008E640;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 32) = v56;
  *(v29 + 40) = v13;

  print<A>(_:separator:terminator:to:)();

  v30 = *(a4 + 104);
  v46 = *(a4 + 88);
  v47 = v30;
  v31 = *(a4 + 136);
  v48 = *(a4 + 120);
  v49 = v31;
  v32 = sub_1000021C0(&qword_1000B47E0, &qword_10008E998);
  OptionGroup.wrappedValue.getter(v32, &v50);
  v33 = sub_1000054E4();
  v54 = v50;
  v55 = v51;
  sub_100002BCC(&v54, &qword_1000B47E8, &unk_10008E9A0);
  v46 = v52;
  LOBYTE(v47) = v53;
  result = sub_100002BCC(&v46, &qword_1000B47E8, &unk_10008E9A0);
  if (!((v33 == 2) | v14 & 1))
  {
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10008E640;
    *(v35 + 56) = &type metadata for String;
    v36 = 0x80000001000979D0;
    v37 = 0xD000000000000019;
    if (v41)
    {
      v37 = v40;
      v36 = v41;
    }

    *(v35 + 32) = v37;
    *(v35 + 40) = v36;

    print<A>(_:separator:terminator:to:)();
  }

  return result;
}

uint64_t sub_10001669C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736E6F6974706FLL;
  }
}

uint64_t sub_1000166FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000188AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100016724(uint64_t a1)
{
  v2 = sub_1000192C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100016760(uint64_t a1)
{
  v2 = sub_1000192C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001679C@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000B4708 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_100002430(&xmmword_1000B6478, v2);
}

void *sub_100016898@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100018B3C(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x108uLL);
  }

  return result;
}

unint64_t sub_1000168E4(uint64_t a1)
{
  result = sub_10001690C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001690C()
{
  result = qword_1000B4D60;
  if (!qword_1000B4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D60);
  }

  return result;
}

unint64_t sub_100016960(uint64_t a1)
{
  result = sub_100016988();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100016988()
{
  result = qword_1000B4D68;
  if (!qword_1000B4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D68);
  }

  return result;
}

Swift::Int sub_1000169DC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100024A80(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_100016BB0(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100016A48(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100024A94(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 4);
          v15 = *(v13 + 8);
          *(v13 + 1) = *(v13 - 8);
          *(v13 + 4) = *(v13 + 1);
          *(v13 - 2) = v14;
          *v13 = v11;
          *(v13 + 2) = v15;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for swift_metadata_allocation(0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    sub_1000172F0(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_100016BB0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000021C0(&qword_1000B4DD8, &qword_1000907F0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100016D40(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_100016CB8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100016CB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 32 * a3 + 24);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (*(*(v9 - 1) + 16) >= *(v7 + 16))
      {
LABEL_4:
        ++a3;
        v5 += 32;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = *(v9 - 1);
      *v9 = *(v9 - 2);
      *(v9 + 1) = v13;
      *(v9 - 3) = v11;
      *(v9 - 2) = v12;
      *(v9 - 1) = v7;
      *(v9 - 4) = v10;
      v9 -= 4;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100016D40(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v6 = v4;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_10002299C(v11);
      v11 = result;
    }

    v88 = *(v11 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = *&v11[16 * v88];
        v90 = *&v11[16 * v88 + 24];
        sub_1000178BC((*a3 + 32 * v89), (*a3 + 32 * *&v11[16 * v88 + 16]), (*a3 + 32 * v90), v5);
        if (v6)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_10002299C(v11);
        }

        if (v88 - 2 >= *(v11 + 2))
        {
          goto LABEL_114;
        }

        v91 = &v11[16 * v88];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_100022910(v88 - 1);
        v88 = *(v11 + 2);
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v9 = a4;
  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v12 = v10++;
    if (v10 < v8)
    {
      v13 = *a3 + 32 * v12;
      v14 = *(*(*a3 + 32 * v10 + 24) + 16);
      v15 = *(*(v13 + 24) + 16);
      v16 = v12 + 2;
      v17 = (v13 + 88);
      v18 = v14;
      while (v8 != v16)
      {
        v19 = *v17;
        v17 += 4;
        v20 = (v15 < v14) ^ (v18 >= *(v19 + 16));
        ++v16;
        v18 = *(v19 + 16);
        if ((v20 & 1) == 0)
        {
          v10 = v16 - 1;
          if (v15 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v10 = v8;
      if (v15 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v10 < v12)
      {
        goto LABEL_117;
      }

      if (v12 < v10)
      {
        v21 = 32 * v10 - 16;
        v22 = 32 * v12 + 24;
        v23 = v10;
        v24 = v12;
        do
        {
          if (v24 != --v23)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v25 = (v31 + v22);
            v26 = (v31 + v21);
            v27 = *(v25 - 3);
            v28 = *(v25 - 1);
            v29 = *v25;
            v30 = *v26;
            *(v25 - 3) = *(v26 - 1);
            *(v25 - 1) = v30;
            *(v26 - 1) = v27;
            *v26 = v28;
            *(v26 + 1) = v29;
          }

          ++v24;
          v21 -= 32;
          v22 += 32;
        }

        while (v24 < v23);
        v8 = a3[1];
      }
    }

LABEL_20:
    if (v10 < v8)
    {
      if (__OFSUB__(v10, v12))
      {
        goto LABEL_116;
      }

      if (v10 - v12 < v9)
      {
        if (__OFADD__(v12, v9))
        {
          goto LABEL_118;
        }

        if (v12 + v9 < v8)
        {
          v8 = v12 + v9;
        }

        if (v8 < v12)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v8)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v12)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000E99C(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v5 = *(v11 + 2);
    v43 = *(v11 + 3);
    v44 = v5 + 1;
    if (v5 >= v43 >> 1)
    {
      result = sub_10000E99C((v43 > 1), v5 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v44;
    v45 = &v11[16 * v5];
    *(v45 + 4) = v12;
    *(v45 + 5) = v10;
    v46 = *v93;
    if (!*v93)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v11 + 4);
          v49 = *(v11 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_57:
          if (v51)
          {
            goto LABEL_104;
          }

          v64 = &v11[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_107;
          }

          v70 = &v11[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_111;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v74 = &v11[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_71:
        if (v69)
        {
          goto LABEL_106;
        }

        v77 = &v11[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_109;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_78:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v86 = *&v11[16 * v85 + 32];
        v5 = *&v11[16 * v47 + 40];
        sub_1000178BC((*a3 + 32 * v86), (*a3 + 32 * *&v11[16 * v47 + 32]), (*a3 + 32 * v5), v46);
        if (v6)
        {
        }

        if (v5 < v86)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_10002299C(v11);
        }

        if (v85 >= *(v11 + 2))
        {
          goto LABEL_101;
        }

        v87 = &v11[16 * v85];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        result = sub_100022910(v47);
        v44 = *(v11 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v11[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_102;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_103;
      }

      v59 = &v11[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_105;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_108;
      }

      if (v63 >= v55)
      {
        v81 = &v11[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_112;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v8 = a3[1];
    v9 = a4;
    if (v10 >= v8)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 32 * v10;
  v34 = v12 - v10;
LABEL_30:
  v35 = *(v32 + 32 * v10 + 24);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (*(*(v37 - 1) + 16) >= *(v35 + 16))
    {
LABEL_29:
      ++v10;
      v33 += 32;
      --v34;
      if (v10 != v8)
      {
        goto LABEL_30;
      }

      v10 = v8;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v38 = *v37;
    v39 = v37[1];
    v40 = v37[2];
    v41 = *(v37 - 1);
    *v37 = *(v37 - 2);
    *(v37 + 1) = v41;
    *(v37 - 3) = v39;
    *(v37 - 2) = v40;
    *(v37 - 1) = v35;
    *(v37 - 4) = v38;
    v37 -= 4;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_1000172F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10002299C(v7);
      v7 = result;
    }

    v85 = v7 + 2;
    v86 = v7[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100017AD0((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 8);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 8);
      v13 = v8 + 2;
      v14 = (v11 + 56);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = *(v21 + 1);
            v25 = v21[4];
            v26 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v26;
            *(v22 - 4) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000E99C(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v38 = v7[2];
    v37 = v7[3];
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_10000E99C((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v39;
    v40 = v7 + 4;
    v41 = &v7[2 * v38 + 4];
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = v7[4];
          v44 = v7[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v7[2 * v39];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v40[2 * v42];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v7[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v40[2 * v42];
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v40[2 * v42 - 2];
        v81 = *v80;
        v82 = &v40[2 * v42];
        v83 = v82[1];
        sub_100017AD0((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > v7[2])
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = v7[2];
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove(&v40[2 * v42], v82 + 2, 16 * (v84 - 1 - v42));
        v7[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[2 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v7[2 * v39];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v40[2 * v42];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6 + 8);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *(v33 - 2))
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = v33[4];
    *v33 = *(v33 - 6);
    *(v33 + 2) = *(v33 - 1);
    *(v33 - 2) = v31;
    *(v33 - 2) = v35;
    *(v33 - 6) = v34;
    v33 -= 6;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1000178BC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
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

      if (*(*(v4 + 3) + 16) < *(*(v6 + 3) + 16))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 32;
    do
    {
      v18 = v5 + 32;
      if (*(*(v6 - 1) + 16) < *(*(v14 - 1) + 16))
      {
        v21 = v6 - 32;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 32;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v23 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_100017AD0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 1) < *(v4 + 1))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 2) < *(v6 - 2))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

void *sub_100017D0C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100017E90(uint64_t result, unint64_t a2, void **a3, uint64_t a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 32); ; i += 5)
    {
      v10 = i[1];
      v11 = i[3];
      v25 = i[2];
      v26 = v11;
      v12 = i[3];
      v27 = i[4];
      v13 = i[1];
      v24[0] = *i;
      v24[1] = v13;
      v21 = v25;
      v22 = v12;
      v23 = i[4];
      v19 = v24[0];
      v20 = v10;
      sub_10001868C(v24, &v14);
      sub_100016118(&v19, a2, a3, a4);
      if (v4)
      {
        break;
      }

      v16 = v21;
      v17 = v22;
      v18 = v23;
      v14 = v19;
      v15 = v20;
      result = sub_1000186C4(&v14);
      if (!--v5)
      {
        return result;
      }
    }

    v16 = v21;
    v17 = v22;
    v18 = v23;
    v14 = v19;
    v15 = v20;
    return sub_1000186C4(&v14);
  }

  return result;
}

uint64_t sub_100017F98(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100023418(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100018030(uint64_t result, uint64_t *a2, Swift::Int a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 32); ; i += 5)
    {
      v8 = i[1];
      v9 = i[3];
      v23 = i[2];
      v24 = v9;
      v10 = i[3];
      v25 = i[4];
      v11 = i[1];
      v22[0] = *i;
      v22[1] = v11;
      v19 = v23;
      v20 = v10;
      v21 = i[4];
      v17 = v22[0];
      v18 = v8;
      sub_10001868C(v22, &v12);
      sub_100014D38(&v17, a2, a3);
      if (v3)
      {
        break;
      }

      v14 = v19;
      v15 = v20;
      v16 = v21;
      v12 = v17;
      v13 = v18;
      result = sub_1000186C4(&v12);
      if (!--v4)
      {
        return result;
      }
    }

    v14 = v19;
    v15 = v20;
    v16 = v21;
    v12 = v17;
    v13 = v18;
    return sub_1000186C4(&v12);
  }

  return result;
}

id sub_100018138(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = objc_allocWithZone(NSFileManager);

    v5 = [v4 init];
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 createFileAtPath:v6 contents:0 attributes:0];

    if (v7)
    {
      v8 = String._bridgeToObjectiveC()();
      v9 = [objc_opt_self() fileHandleForWritingAtPath:v8];

      if (v9)
      {
        swift_bridgeObjectRelease_n();
        return v9;
      }

      __break(1u);
    }

    else
    {
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_10008E640;
      _StringGuts.grow(_:)(24);

      v12._countAndFlagsBits = a1;
      v12._object = a2;
      String.append(_:)(v12);
      *(v11 + 56) = &type metadata for String;
      *(v11 + 32) = 0xD000000000000016;
      *(v11 + 40) = 0x8000000100097950;
      if (qword_1000B46F8 == -1)
      {
        goto LABEL_7;
      }
    }

    swift_once();
LABEL_7:
    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    exit(1);
  }

  return [objc_opt_self() fileHandleWithStandardOutput];
}

unint64_t sub_1000183E4()
{
  result = qword_1000B4D88;
  if (!qword_1000B4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D88);
  }

  return result;
}

unint64_t sub_100018438()
{
  result = qword_1000B4D98;
  if (!qword_1000B4D98)
  {
    sub_100002B84(&qword_1000B4D90, &qword_1000907C8);
    sub_1000184C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D98);
  }

  return result;
}

unint64_t sub_1000184C4()
{
  result = qword_1000B4DA0;
  if (!qword_1000B4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4DA0);
  }

  return result;
}

uint64_t sub_100018518(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10001856C()
{
  result = qword_1000B4DC8;
  if (!qword_1000B4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4DC8);
  }

  return result;
}

unint64_t sub_1000185C0()
{
  result = qword_1000B4DD0;
  if (!qword_1000B4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4DD0);
  }

  return result;
}

uint64_t sub_10001861C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018654()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100018748(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000A9F88, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100018794(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6580592 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000188AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000972D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100097A30 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

void *sub_1000189D0@<X0>(void *a1@<X8>)
{
  v2 = ArgumentVisibility.default.unsafeMutableAddressor();
  v3 = *v2;
  v4 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v3, &type metadata for UniversalOptions, v4, v10);
  v9[2] = v10[2];
  v9[3] = v10[3];
  v9[4] = v10[4];
  *&v9[5] = v11;
  v9[0] = v10[0];
  v9[1] = v10[1];
  v5 = *v2;
  v6 = sub_1000024E0();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v5, &type metadata for BacktraceOptions, v6, v12);
  *(&v9[5] + 8) = v12[0];
  *(&v9[6] + 8) = v12[1];
  *(&v9[7] + 8) = v12[2];
  *(&v9[8] + 8) = v12[3];
  LOBYTE(v2) = *v2;
  v7 = sub_100018AE8();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v2, &type metadata for GenericMetadataOptions, v7, &v9[9] + 8);
  memcpy(__dst, v9, sizeof(__dst));
  return memcpy(a1, __dst, 0x108uLL);
}

unint64_t sub_100018AE8()
{
  result = qword_1000B4DE0;
  if (!qword_1000B4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4DE0);
  }

  return result;
}

void *sub_100018B3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v31 = sub_1000021C0(&qword_1000B4DE8, &qword_1000907F8);
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v28 - v6;
  v8 = ArgumentVisibility.default.unsafeMutableAddressor();
  v9 = *v8;
  v10 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v9, &type metadata for UniversalOptions, v10, v114);
  v110 = v114[2];
  v111 = v114[3];
  v112 = v114[4];
  v113 = v115;
  v108 = v114[0];
  v109 = v114[1];
  v11 = *v8;
  v12 = sub_1000024E0();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v11, &type metadata for BacktraceOptions, v12, &v79);
  v35 = *(&v79 + 1);
  v36 = v79;
  v33 = *(&v80 + 1);
  v34 = v80;
  v117 = *&v81[0];
  v37 = BYTE8(v81[0]);
  v32 = BYTE9(v81[0]);
  v107[0] = *(v81 + 10);
  v13 = *(&v81[1] + 1);
  *(v107 + 6) = *&v81[1];
  LOBYTE(v8) = *v8;
  v14 = sub_100018AE8();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v8, &type metadata for GenericMetadataOptions, v14, v116);
  v104 = v116[4];
  v105 = v116[5];
  v106 = v116[6];
  v100 = v116[0];
  v101 = v116[1];
  v103 = v116[3];
  v102 = v116[2];
  v15 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_1000192C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v17 = v35;
    v16 = v36;
    v19 = v33;
    v18 = v34;
    sub_100002B38(a1);
    v81[0] = v110;
    v81[1] = v111;
    v82 = v112;
    v79 = v108;
    v80 = v109;
    v99 = v106;
    v98 = v105;
    v97 = v104;
    v96 = v103;
    v95 = v102;
    v94 = v101;
    v83 = v113;
    v84 = v16;
    v85 = v17;
    v86 = v18;
    v87 = v19;
    v88 = v117;
    v89 = v37;
    v90 = v32;
    *&v91[6] = *(v107 + 6);
    *v91 = v107[0];
    v92 = v13;
    v93 = v100;
    return sub_1000183B4(&v79);
  }

  else
  {
    sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
    v72 = 0;
    sub_10000BD8C(&qword_1000B4828, &qword_1000B47D8, &qword_10008E990);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v66 = v75;
    v67 = v76;
    v68 = v77;
    v69 = v78;
    v64 = v73;
    v65 = v74;
    v70[2] = v110;
    v70[3] = v111;
    v70[4] = v112;
    v71 = v113;
    v70[0] = v108;
    v70[1] = v109;
    sub_100002BCC(v70, &qword_1000B47D8, &qword_10008E990);
    v110 = v66;
    v111 = v67;
    v112 = v68;
    v113 = v69;
    v108 = v64;
    v109 = v65;
    sub_1000021C0(&qword_1000B47E0, &qword_10008E998);
    v55 = 1;
    sub_10000BD8C(&qword_1000B4830, &qword_1000B47E0, &qword_10008E998);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100002C80(v36, v35, v34, v33, v117, v37, v32 & 1);

    v35 = v57;
    v36 = v56;
    v33 = v59;
    v34 = v58;
    v117 = v60;
    v37 = v61;
    v20 = v62;
    v107[0] = *v63;
    v29 = *&v63[7];
    *(v107 + 6) = *&v63[3];
    sub_1000021C0(&qword_1000B4D70, &unk_1000907B0);
    v47 = 2;
    v21 = v31;
    sub_10000BD8C(&qword_1000B4DF8, &qword_1000B4D70, &unk_1000907B0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v20;
    (*(v4 + 8))(v7, v21);
    v42 = v52;
    v43 = v53;
    v38 = v48;
    v39 = v49;
    v40 = v50;
    v41 = v51;
    v44 = v54;
    v45[0] = v100;
    v45[5] = v105;
    v45[6] = v106;
    v45[3] = v103;
    v45[4] = v104;
    v45[1] = v101;
    v45[2] = v102;
    sub_100002BCC(v45, &qword_1000B4D70, &unk_1000907B0);
    v46[2] = v66;
    v46[3] = v67;
    v46[4] = v68;
    v46[0] = v64;
    v46[1] = v65;
    *(&v46[12] + 8) = v41;
    *(&v46[13] + 8) = v42;
    *(&v46[14] + 8) = v43;
    *(&v46[15] + 8) = v44;
    *(&v46[9] + 8) = v38;
    *(&v46[10] + 8) = v39;
    v22 = v35;
    v23 = v36;
    *&v46[5] = v69;
    *(&v46[5] + 1) = v36;
    v24 = v33;
    v25 = v34;
    *&v46[6] = v35;
    *(&v46[6] + 1) = v34;
    *&v46[7] = v33;
    *(&v46[7] + 1) = v117;
    LOBYTE(v46[8]) = v37;
    BYTE1(v46[8]) = v20;
    *(&v46[8] + 2) = v107[0];
    v26 = v29;
    *(&v46[8] + 1) = *(v107 + 6);
    *&v46[9] = v29;
    *(&v46[11] + 8) = v40;
    sub_10001837C(v46, &v79);
    sub_100002B38(a1);
    v81[0] = v66;
    v81[1] = v67;
    v82 = v68;
    v79 = v64;
    v80 = v65;
    v96 = v41;
    v97 = v42;
    v98 = v43;
    v99 = v44;
    v93 = v38;
    v94 = v39;
    v83 = v69;
    v84 = v23;
    v85 = v22;
    v86 = v25;
    v87 = v24;
    v88 = v117;
    v89 = v37;
    v90 = v32;
    *v91 = v107[0];
    *&v91[6] = *(v107 + 6);
    v92 = v26;
    v95 = v40;
    sub_1000183B4(&v79);
    return memcpy(v30, v46, 0x108uLL);
  }
}

unint64_t sub_1000192C8()
{
  result = qword_1000B4DF0;
  if (!qword_1000B4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4DF0);
  }

  return result;
}

__n128 sub_10001932C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100019348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100019390(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_100019414(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10001945C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000194B0()
{
  result = qword_1000B4E00;
  if (!qword_1000B4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E00);
  }

  return result;
}

unint64_t sub_100019508()
{
  result = qword_1000B4E08;
  if (!qword_1000B4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E08);
  }

  return result;
}

unint64_t sub_100019560()
{
  result = qword_1000B4E10;
  if (!qword_1000B4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E10);
  }

  return result;
}

unint64_t sub_1000195B4()
{
  result = qword_1000B4E20;
  if (!qword_1000B4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E20);
  }

  return result;
}

uint64_t sub_100019608(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100002B84(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100019684()
{
  result = qword_1000B4E38;
  if (!qword_1000B4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E38);
  }

  return result;
}

unint64_t sub_1000196D8()
{
  result = qword_1000B4E48;
  if (!qword_1000B4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E48);
  }

  return result;
}

unint64_t sub_10001972C()
{
  result = qword_1000B4E58;
  if (!qword_1000B4E58)
  {
    sub_100002B84(&qword_1000B4E50, &qword_100090AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E58);
  }

  return result;
}

uint64_t sub_1000197A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100018518(a1, a2);
  }

  return a1;
}

unint64_t sub_1000197BC()
{
  result = qword_1000B4E68;
  if (!qword_1000B4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E68);
  }

  return result;
}

uint64_t sub_100019810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ArgumentDefinition.ParsingStrategy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArgumentDefinition.ParsingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000199D4()
{
  result = qword_1000B4E78;
  if (!qword_1000B4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E78);
  }

  return result;
}

unint64_t sub_100019A2C()
{
  result = qword_1000B4E80;
  if (!qword_1000B4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E80);
  }

  return result;
}

unint64_t sub_100019A84()
{
  result = qword_1000B4E88;
  if (!qword_1000B4E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E88);
  }

  return result;
}

unint64_t sub_100019ADC()
{
  result = qword_1000B4E90;
  if (!qword_1000B4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E90);
  }

  return result;
}

unint64_t sub_100019B34()
{
  result = qword_1000B4E98;
  if (!qword_1000B4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4E98);
  }

  return result;
}

unint64_t sub_100019B8C()
{
  result = qword_1000B4EA0;
  if (!qword_1000B4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4EA0);
  }

  return result;
}

unint64_t sub_100019BE4()
{
  result = qword_1000B4EA8;
  if (!qword_1000B4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4EA8);
  }

  return result;
}

unint64_t sub_100019C3C()
{
  result = qword_1000B4EB0;
  if (!qword_1000B4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4EB0);
  }

  return result;
}

unint64_t sub_100019C94()
{
  result = qword_1000B4EB8;
  if (!qword_1000B4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4EB8);
  }

  return result;
}

char *sub_100019CF4()
{
  if (qword_1000B4788 != -1)
  {
    swift_once();
  }

  v0 = off_1000B6578();
  if (!v0)
  {
    return (v0 == 0);
  }

  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10008E640;
  _StringGuts.grow(_:)(29);

  result = mach_error_string(v0);
  if (result)
  {
    v3 = String.init(cString:)();
    v5 = v4;
    sub_10000F9E8();
    v6 = String.init<A>(_:radix:uppercase:)();
    v8 = v7;
    v9._countAndFlagsBits = 2016421920;
    v9._object = 0xE400000000000000;
    String.append(_:)(v9);
    v10._countAndFlagsBits = v6;
    v10._object = v8;
    String.append(_:)(v10);

    v11._countAndFlagsBits = 41;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = v3;
    v12._object = v5;
    String.append(_:)(v12);

    *(v1 + 56) = &type metadata for String;
    *(v1 + 32) = 0xD00000000000001BLL;
    *(v1 + 40) = 0x8000000100097CD0;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    return (v0 == 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_100019F24()
{
  v0 = String.utf8CString.getter();
  v1 = dlopen((v0 + 32), 1);

  if (v1)
  {
    qword_1000B4EC0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100019F88()
{
  v0 = String.utf8CString.getter();
  v1 = dlopen((v0 + 32), 1);

  if (v1)
  {
    qword_1000B4EC8 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100019FEC(void *a1, uint64_t a2, void *a3)
{
  v6 = String.utf8CString.getter();
  v7 = dlsym(a1, (v6 + 32));

  if (v7)
  {
    return v7;
  }

  _StringGuts.grow(_:)(37);

  v9._countAndFlagsBits = a2;
  v9._object = a3;
  String.append(_:)(v9);
  v10._object = 0x8000000100097AA0;
  v10._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v10);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_10001A120()
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0x7361656C65525343, 0xE900000000000065);
  off_1000B6518 = result;
  return result;
}

void *sub_10001A190()
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD00000000000001CLL, 0x8000000100097D40);
  off_1000B6520 = result;
  return result;
}

void *sub_10001A200()
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD00000000000002ALL, 0x8000000100097D10);
  off_1000B6528 = result;
  return result;
}

void *sub_10001A270()
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD000000000000025, 0x8000000100097C80);
  off_1000B6530 = result;
  return result;
}

void *sub_10001A2E0()
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0x6C6F626D79535343, 0xEF656D614E746547);
  off_1000B6538 = result;
  return result;
}

void *sub_10001A358()
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD000000000000016, 0x8000000100097B80);
  off_1000B6540 = result;
  return result;
}

void *sub_10001A3C8()
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD000000000000010, 0x8000000100097C60);
  off_1000B6548 = result;
  return result;
}

void *sub_10001A438()
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD000000000000014, 0x8000000100097B60);
  off_1000B6550 = result;
  return result;
}

void *sub_10001A4A8()
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD000000000000028, 0x8000000100097BA0);
  off_1000B6558 = result;
  return result;
}

void *sub_10001A518()
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0xD000000000000026, 0x8000000100097C10);
  off_1000B6560 = result;
  return result;
}

void *sub_10001A588()
{
  if (qword_1000B4710 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC0, 0xD00000000000001BLL, 0x8000000100097C40);
  off_1000B6568 = result;
  return result;
}

void *sub_10001A5F8()
{
  if (qword_1000B4718 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC8, 0x6C6C754E73495343, 0xE800000000000000);
  off_1000B6570 = result;
  return result;
}

void *sub_10001A664()
{
  if (qword_1000B4710 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC0, 0xD000000000000012, 0x8000000100097CF0);
  off_1000B6578 = result;
  return result;
}

uint64_t sub_10001A6F8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (qword_1000B4710 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  result = sub_100019FEC(qword_1000B4EC0, a2, a3);
  *a4 = result;
  return result;
}

void *sub_10001A770()
{
  if (qword_1000B4710 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC0, 0xD000000000000010, 0x8000000100097CB0);
  off_1000B6588 = result;
  return result;
}

void *sub_10001A7E0()
{
  if (qword_1000B4710 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC0, 0xD000000000000011, 0x8000000100097BF0);
  off_1000B6590 = result;
  return result;
}

void *sub_10001A850()
{
  if (qword_1000B4710 != -1)
  {
    swift_once();
  }

  result = sub_100019FEC(qword_1000B4EC0, 0xD00000000000001CLL, 0x8000000100097BD0);
  off_1000B6598 = result;
  return result;
}

uint64_t sub_10001AA78(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

void (*sub_10001AAA8(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_100023314(v4, a2);
  return sub_10001AB20;
}

void sub_10001AB20(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

double sub_10001AB6C()
{
  *&v1 = 0;
  *(&v1 + 1) = 0xE000000000000000;
  CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)(0, 0, 0xD000000000000039, 0x80000001000982D0, 0, 0, 0, 0xE000000000000000, v2, v1, 1, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, _swiftEmptyArrayStorage);
  xmmword_1000B6600 = v2[6];
  unk_1000B6610 = v2[7];
  xmmword_1000B6620 = v2[8];
  qword_1000B6630 = v3;
  xmmword_1000B65C0 = v2[2];
  unk_1000B65D0 = v2[3];
  xmmword_1000B65E0 = v2[4];
  unk_1000B65F0 = v2[5];
  result = *v2;
  xmmword_1000B65A0 = v2[0];
  *algn_1000B65B0 = v2[1];
  return result;
}

uint64_t sub_10001AC2C(uint64_t a1)
{
  v2 = sub_100026534();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001AC68(uint64_t a1)
{
  v2 = sub_100026534();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001ACA4@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000B47B0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_100002430(&xmmword_1000B65A0, v2);
}

uint64_t sub_10001AD14()
{
  v1 = v0[3];
  v24 = v0[2];
  v25 = v1;
  v26 = v0[4];
  v27 = *(v0 + 10);
  v2 = v0[1];
  v22 = *v0;
  v23 = v2;
  v3 = sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
  OptionGroup.wrappedValue.getter(v3, &v13);
  v4 = v13;
  v5 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v28 = v21;
  sub_100008AC4(v13, v14, v15, v16, v17, v18);
  sub_1000022B8(v4, v5, v6);
  sub_1000022C8(v7, v8, v9);
  return sub_1000022C8(v10, v11, v28);
}

double sub_10001AE10@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000262BC(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

void *sub_10001AE6C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  if (v1)
  {
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[10];
  }

  else
  {
    v7 = v0[10];
    v8 = v0[9];
    v23 = _swiftEmptyArrayStorage;
    v24 = _swiftEmptyArrayStorage;
    v25 = _swiftEmptyArrayStorage;
    v9 = v0[3];
    __chkstk_darwin();
    v21[2] = v0;
    v21[3] = &v23;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_100026074;
    *(v10 + 24) = v21;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_10002608C;
    *(v11 + 24) = v10;
    v22[0] = sub_1000260EC;
    v22[1] = v11;
    v12 = *(v9 + 16);
    v13 = qword_1000B47A8;

    if (v13 != -1)
    {
      swift_once();
    }

    off_1000B6598(v12, v22, 1, sub_10000E170);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    v4 = v23;
    v15 = v24;
    v16 = v25;
    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[10];
    v0[8] = v23;
    v0[9] = v15;
    v0[10] = v16;

    sub_10002611C(v17);
    v1 = 0;
  }

  sub_100026168(v1);
  return v4;
}

void *sub_10001B0B0()
{
  v1 = v0;
  v2 = *(v0 + 88);
  if (!v2)
  {
    v3 = *(v1 + 24);
    v4 = sub_10000D030();
    v5 = *(v4 + 2);
    if (v5)
    {
      v6 = v4 + 40;
      do
      {
        if (*v6)
        {
          if (*v6 >= 0xFFFFFFFFFFFFFCC8)
          {
            __break(1u);
          }

          v7 = *(v6 - 1);
          v8 = *(v3 + 16);
          if (qword_1000B4790 != -1)
          {
            swift_once();
          }

          off_1000B6580();
        }

        v6 += 3;
        --v5;
      }

      while (v5);

      v9 = _swiftEmptyArrayStorage[2];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    else
    {

      v9 = _swiftEmptyArrayStorage[2];
      if (v9)
      {
LABEL_12:
        v10 = &_swiftEmptyArrayStorage[4];
        v2 = _swiftEmptyArrayStorage;
        do
        {
          v14 = *v10;
          if (v10[1])
          {
            v17 = *v10;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100022AD4(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v12 = _swiftEmptyArrayStorage[2];
            v11 = _swiftEmptyArrayStorage[3];
            v13 = v17;
            if (v12 >= v11 >> 1)
            {
              sub_100022AD4((v11 > 1), v12 + 1, 1);
              v13 = v17;
            }

            _swiftEmptyArrayStorage[2] = v12 + 1;
            *&_swiftEmptyArrayStorage[2 * v12 + 4] = v13;
          }

          v10 += 2;
          --v9;
        }

        while (v9);
        goto LABEL_22;
      }
    }

    v2 = _swiftEmptyArrayStorage;
LABEL_22:

    v15 = *(v1 + 88);
    *(v1 + 88) = _swiftEmptyArrayStorage;

    return v2;
  }

  return v2;
}

uint64_t sub_10001B348()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v1 = sub_10001B724();
    v2 = *(v0 + 96);
    *(v0 + 96) = v1;
  }

  return v1;
}

uint64_t sub_10001B3A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 104) = sub_100024C34(_swiftEmptyArrayStorage);
  *(v3 + 112) = sub_100024D14(_swiftEmptyArrayStorage);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;

  sub_10000D3C8(0xD000000000000024);
  v6 = *(a2 + 16);
  v14 = 0;
  if (qword_1000B4790 != -1)
  {
    swift_once();
  }

  v7 = off_1000B6580;
  if (off_1000B6580())
  {
    v8 = 0;
  }

  else
  {
    v8 = v14;
  }

  *(v3 + 32) = v8;
  *(v3 + 40) = 1;
  v9 = sub_10000D3C8(0xD00000000000002ALL);
  v10 = *(a2 + 16);
  v14 = 0;
  if ((v7)(v10, v9, 8, &v14) || !v14)
  {

    v11 = 0;
    v12 = 1;
  }

  else
  {
    v11 = *v14;

    v12 = 0;
  }

  *(v3 + 48) = v11;
  *(v3 + 56) = v12;
  return v3;
}

uint64_t sub_10001B560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a3 + 16);
  v8 = swift_reflection_metadataForObject();
  if ((*(a3 + 40) & 1) != 0 || v8 != *(a3 + 32))
  {
    if ((*(a3 + 56) & 1) != 0 || v8 != *(a3 + 48))
    {
      result = sub_10001BE18(v8);
      if ((result & 1) == 0)
      {
        return result;
      }

      v9 = a4[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      a4[2] = v9;
      if ((result & 1) == 0)
      {
        result = sub_10000F5FC(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
        a4[2] = result;
      }

      v12 = *(v9 + 16);
      v15 = *(v9 + 24);
      v13 = v12 + 1;
      if (v12 >= v15 >> 1)
      {
        result = sub_10000F5FC((v15 > 1), v12 + 1, 1, v9);
        v9 = result;
        a4[2] = result;
      }
    }

    else
    {
      v9 = *a4;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v9;
      if ((result & 1) == 0)
      {
        result = sub_10000F5FC(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
        *a4 = result;
      }

      v12 = *(v9 + 16);
      v14 = *(v9 + 24);
      v13 = v12 + 1;
      if (v12 >= v14 >> 1)
      {
        result = sub_10000F5FC((v14 > 1), v12 + 1, 1, v9);
        v9 = result;
        *a4 = result;
      }
    }
  }

  else
  {
    v9 = a4[1];
    result = swift_isUniquelyReferenced_nonNull_native();
    a4[1] = v9;
    if ((result & 1) == 0)
    {
      result = sub_10000F5FC(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
      a4[1] = result;
    }

    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      result = sub_10000F5FC((v11 > 1), v12 + 1, 1, v9);
      v9 = result;
      a4[1] = result;
    }
  }

  *(v9 + 16) = v13;
  *(v9 + 8 * v12 + 32) = a1;
  return result;
}

uint64_t sub_10001B724()
{
  v1 = sub_100024E28(_swiftEmptyArrayStorage);
  v80 = v1;
  v79 = &_swiftEmptySetSingleton;
  v2 = sub_10001AE6C();

  v3 = v2[2];
  if (v3)
  {
    v4 = v2 + 4;
    do
    {
      v5 = *v4++;
      sub_100023568(v88, v5);
      --v3;
    }

    while (v3);
  }

  v6 = sub_10001B0B0();
  v7 = v6[2];
  if (v7)
  {
    *&v88[0] = _swiftEmptyArrayStorage;
    v8 = v6;
    sub_100022B04(0, v7, 0);
    v9 = v8;
    v10 = *&v88[0];
    v11 = *(*&v88[0] + 16);
    v12 = 5;
    do
    {
      v13 = v9[v12];
      *&v88[0] = v10;
      v14 = v10[3];
      if (v11 >= v14 >> 1)
      {
        sub_100022B04((v14 > 1), v11 + 1, 1);
        v9 = v8;
        v10 = *&v88[0];
      }

      v10[2] = v11 + 1;
      v10[v11 + 4] = v13;
      v12 += 2;
      ++v11;
      --v7;
    }

    while (v7);

    v15 = v10[2];
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_19:
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v10 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage[2];
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_10:
  v16 = v10 + 4;
  v17 = _swiftEmptyArrayStorage;
  do
  {
    v21 = *v16++;
    v20 = v21;
    if (v21)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v88[0] = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100022B04(0, v17[2] + 1, 1);
        v17 = *&v88[0];
      }

      v19 = v17[2];
      v18 = v17[3];
      if (v19 >= v18 >> 1)
      {
        sub_100022B04((v18 > 1), v19 + 1, 1);
        v17 = *&v88[0];
      }

      v17[2] = v19 + 1;
      v17[v19 + 4] = v20;
    }

    --v15;
  }

  while (v15);
LABEL_20:

  v23 = v17[2];
  if (v23)
  {
    v24 = v17 + 4;
    do
    {
      v25 = *v24++;
      sub_100023568(v88, v25);
      --v23;
    }

    while (v23);
  }

  v26 = v79;
  v27 = v0;
  if (v79[2])
  {
    v28 = v1;
    do
    {
      v29 = 0;
      v30 = v26 + 7;
      v31 = 1 << *(v26 + 32);
      v32 = (v31 + 63) >> 6;
      while (1)
      {
        v34 = *v30++;
        v33 = v34;
        if (v34)
        {
          break;
        }

        v29 -= 64;
        if (!--v32)
        {
          goto LABEL_32;
        }
      }

      v31 = __clz(__rbit64(v33)) - v29;
LABEL_32:
      v35 = sub_10002481C(v31, *(v26 + 9));
      sub_10001BEEC(v35, &v81);
      v36 = *&v86[0];
      if (*&v86[0])
      {
        v88[3] = v84;
        v88[4] = v85;
        v89[0] = v86[0];
        *(v89 + 9) = *(v86 + 9);
        v88[0] = v81;
        v88[1] = v82;
        v88[2] = v83;
        v77[0] = v81;
        v77[1] = v82;
        v77[2] = v83;
        *(v78 + 9) = *(v86 + 9);
        v77[3] = v84;
        v77[4] = v85;
        v78[0] = v86[0];
        sub_100025F6C(v77, &v75);
        v37 = v80;
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v37;
        sub_10002139C(v88, v35, v38);
        v28 = v75;
        v80 = v75;
        v87 = v36;
        sub_10002600C(&v87, &v75, &qword_1000B50E8, &qword_100090FB0);
        sub_100002BCC(&v81, &qword_1000B50F0, &qword_100090FB8);
        v39 = *(v36 + 16);
        if (v39)
        {
          v40 = *(v27 + 16);
          v73 = *(v27 + 48);
          v41 = (v36 + 32);
          v42 = *(v27 + 56);
          do
          {
            v44 = *v41++;
            v43 = v44;
            if (swift_reflection_metadataForObject() == v73)
            {
              v45 = 1;
            }

            else
            {
              v45 = v42;
            }

            if ((v45 & 1) == 0)
            {
              sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
              v72 = v41;
              v46 = swift_allocObject();
              *(v46 + 16) = xmmword_10008E640;
              v75 = 0;
              v76 = 0xE000000000000000;
              _StringGuts.grow(_:)(65);
              v47._countAndFlagsBits = 0xD000000000000027;
              v47._object = 0x8000000100098220;
              String.append(_:)(v47);
              v48._countAndFlagsBits = 30768;
              v48._object = 0xE200000000000000;
              String.append(_:)(v48);
              sub_1000023DC();
              v49._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
              String.append(_:)(v49);

              v50._object = 0x8000000100098250;
              v50._countAndFlagsBits = 0xD000000000000016;
              String.append(_:)(v50);
              v51._countAndFlagsBits = 30768;
              v51._object = 0xE200000000000000;
              String.append(_:)(v51);
              v52._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
              String.append(_:)(v52);

              v53 = v75;
              v54 = v76;
              *(v46 + 56) = &type metadata for String;
              *(v46 + 32) = v53;
              *(v46 + 40) = v54;
              print(_:separator:terminator:)();
              v41 = v72;
            }

            if (!*(v28 + 16) || (sub_10001F92C(v43), (v55 & 1) == 0))
            {
              sub_100023568(&v75, v43);
            }

            --v39;
          }

          while (v39);
          sub_100002BCC(&v87, &qword_1000B50E8, &qword_100090FB0);
          v27 = v0;
        }

        else
        {
          sub_100002BCC(&v87, &qword_1000B50E8, &qword_100090FB0);
        }
      }

      v26 = v79;
    }

    while (v79[2]);
  }

  else
  {

    v28 = v1;
  }

  v56 = v28 + 64;
  v57 = 1 << *(v28 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v28 + 64);
  v60 = (v57 + 63) >> 6;

  v62 = 0;
  v74 = v28;
  while (v59)
  {
LABEL_57:
    v64 = __clz(__rbit64(v59));
    v59 &= v59 - 1;
    v65 = v64 | (v62 << 6);
    v66 = *(*(v28 + 56) + 112 * v65 + 80);
    v67 = *(v66 + 16);
    if (v67)
    {
      v68 = *(*(v28 + 48) + 8 * v65);

      v69 = 32;
      do
      {
        v71 = sub_10001AAA8(v77, *(v66 + v69));
        if (*(v70 + 80))
        {
          *(v70 + 96) = v68;
          *(v70 + 104) = 0;
        }

        (v71)(v77, 0);
        v69 += 8;
        --v67;
      }

      while (v67);

      v28 = v74;
    }
  }

  while (1)
  {
    v63 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v63 >= v60)
    {

      return v80;
    }

    v59 = *(v56 + 8 * v63);
    ++v62;
    if (v59)
    {
      v62 = v63;
      goto LABEL_57;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001BE18(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 104);
  if (*(v4 + 16))
  {
    v5 = sub_10001F92C(a1);
    if (v6)
    {
      return *(*(v4 + 56) + v5);
    }
  }

  v8 = *(v2 + 16);
  v7 = swift_reflection_metadataIsActor() != 0;
  swift_beginAccess();
  v9 = *(v2 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 104);
  *(v2 + 104) = 0x8000000000000000;
  sub_100021514(v7, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 104) = v12;
  swift_endAccess();
  return v7;
}

uint64_t sub_10001BEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  swift_reflection_asyncTaskInfo();
  if (v34)
  {
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10008E640;
    _StringGuts.grow(_:)(40);

    sub_1000023DC();
    v7._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 8250;
    v8._object = 0xE200000000000000;
    String.append(_:)(v8);
    v9._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v9);

    *(v6 + 56) = &type metadata for String;
    *(v6 + 32) = 0xD000000000000024;
    *(v6 + 40) = 0x80000001000981F0;
    print(_:separator:terminator:)();

    a1 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0uLL;
    goto LABEL_37;
  }

  v17 = v35;
  v11 = v48;
  if (v49)
  {
    v14 = sub_10001FBC4(v49, 0);
    memcpy(v14 + 4, v50, 8 * v49);
    if (v51)
    {
LABEL_5:
      v15 = sub_10001FBC4(v51, 0);
      memcpy(v15 + 4, v52, 8 * v51);
      goto LABEL_8;
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
    if (v51)
    {
      goto LABEL_5;
    }
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_8:
  v21 = v47;
  v13 = 0;
  v12 = 0;
  v22 = v48;
  while (v22)
  {
    result = swift_reflection_asyncTaskSlabAllocations();
    v21 = v47;
    v23 = __OFADD__(v12, v36);
    v12 += v36;
    if (v23)
    {
      __break(1u);
      return result;
    }

    v22 = v35;
    v23 = __OFADD__(v13, v37);
    v13 += v37;
    if (v23)
    {
      __break(1u);
      break;
    }
  }

  v16 = 1;
  v24 = 0x1000000;
  if ((v36 & 0x1000000) != 0)
  {
    v25 = 0x1000000;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25 | (v38 << 32);
  v27 = 0x10000;
  if ((v36 & 0x10000) != 0)
  {
    v28 = 0x10000;
  }

  else
  {
    v28 = 0;
  }

  v29 = 256;
  if ((v36 & 0x100) != 0)
  {
    v30 = 256;
  }

  else
  {
    v30 = 0;
  }

  v18 = (v26 | v28 | v30) & 0xFFFFFFFFFFFFFFFELL | v36 & 1;
  v31 = 0x10000000000;
  if ((v44 & 1) == 0)
  {
    v31 = 0;
  }

  v32 = &_mh_execute_header;
  if ((v43 & 1) == 0)
  {
    v32 = 0;
  }

  if ((v42 & 1) == 0)
  {
    v24 = 0;
  }

  result = v41;
  if ((v41 & 1) == 0)
  {
    v27 = 0;
  }

  if ((v40 & 1) == 0)
  {
    v29 = 0;
  }

  v19 = v29 & 0xFFFFFFFFFFFFFFFELL | v39 & 1 | v27 | v24 | v32 | v31;
  v33 = v46;
  if ((v45 & 1) == 0)
  {
    v33 = 0;
  }

  v20 = v33 | (((v45 & 1) == 0) << 32);
LABEL_37:
  *a2 = a1;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 56) = v11;
  *(a2 + 64) = v12;
  *(a2 + 72) = v13;
  *(a2 + 80) = v14;
  *(a2 + 88) = v15;
  *(a2 + 96) = 0;
  *(a2 + 104) = v16;
  return result;
}

void *sub_10001C298()
{
  v0 = sub_10001B348();
  v1 = 0;
  v2 = v0 + 64;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v1;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(v0 + 56) + 112 * (v9 | (v1 << 6)));
    v11 = v10[3];
    v12 = v10[4];
    v13 = v10[5];
    *&v106[89] = *(v10 + 89);
    v15 = v10[1];
    v14 = v10[2];
    *v106 = *v10;
    *&v106[16] = v15;
    *&v106[64] = v12;
    *&v106[80] = v13;
    *&v106[32] = v14;
    *&v106[48] = v11;
    if (v106[104])
    {
      v16 = v0;
      sub_100025F6C(v106, v105);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v107[0] = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100022B24(0, v7[2] + 1, 1);
        v7 = *&v107[0];
      }

      v19 = v7[2];
      v18 = v7[3];
      v0 = v16;
      if (v19 >= v18 >> 1)
      {
        sub_100022B24((v18 > 1), v19 + 1, 1);
        v0 = v16;
        v7 = *&v107[0];
      }

      v7[2] = v19 + 1;
      v20 = &v7[14 * v19];
      v21 = *v106;
      v22 = *&v106[32];
      v20[3] = *&v106[16];
      v20[4] = v22;
      v20[2] = v21;
      v23 = *&v106[48];
      v24 = *&v106[64];
      v25 = *&v106[80];
      *(v20 + 121) = *&v106[89];
      v20[6] = v24;
      v20[7] = v25;
      v20[5] = v23;
    }
  }

  while (1)
  {
    v1 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    if (v1 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v1);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  *v106 = v7;

  sub_100021EE0(v106);
  v85 = *(*v106 + 16);
  if (!v85)
  {

    return _swiftEmptyArrayStorage;
  }

  v26 = 0;
  v84 = *v106 + 32;
  v27 = _swiftEmptyArrayStorage;
  v83 = *v106;
  while (2)
  {
    v86 = v26;
    v28 = (v84 + 112 * v26);
    v29 = *v28;
    v30 = v28[2];
    v109 = v28[1];
    v110 = v30;
    v108 = v29;
    v31 = v28[3];
    v32 = v28[4];
    v33 = v28[5];
    *(v113 + 9) = *(v28 + 89);
    v112 = v32;
    v113[0] = v33;
    v111 = v31;
    sub_1000021C0(&qword_1000B4C98, &qword_10008FEF0);
    v34 = swift_allocObject();
    v35 = v110;
    *(v34 + 88) = v111;
    v36 = v113[0];
    *(v34 + 104) = v112;
    *(v34 + 120) = v36;
    *(v34 + 129) = *(v113 + 9);
    v37 = v109;
    *(v34 + 40) = v108;
    *(v34 + 56) = v37;
    *(v34 + 16) = xmmword_10008E640;
    v38 = (v34 + 16);
    *(v34 + 32) = 0;
    *(v34 + 72) = v35;
    sub_100025F6C(&v108, v106);
    sub_100025F6C(&v108, v106);
    sub_100025F6C(&v108, v106);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_10000F2C8(0, v27[2] + 1, 1, v27);
    }

    v40 = v27[2];
    v39 = v27[3];
    if (v40 >= v39 >> 1)
    {
      v27 = sub_10000F2C8((v39 > 1), v40 + 1, 1, v27);
    }

    *(v107 + 7) = v108;
    *(&v107[1] + 7) = v109;
    v107[6] = *(v113 + 9);
    *(&v107[4] + 7) = v112;
    *(&v107[5] + 7) = v113[0];
    *(&v107[2] + 7) = v110;
    *(&v107[3] + 7) = v111;
    v27[2] = v40 + 1;
    v41 = &v27[16 * v40];
    v41[4] = 0;
    *(v41 + 40) = 1;
    v42 = v107[0];
    v43 = v107[1];
    *(v41 + 73) = v107[2];
    *(v41 + 57) = v43;
    *(v41 + 41) = v42;
    v44 = v107[3];
    v45 = v107[4];
    v46 = v107[5];
    *(v41 + 137) = v107[6];
    *(v41 + 121) = v46;
    *(v41 + 105) = v45;
    *(v41 + 89) = v44;
    for (i = *v38; i; i = *(v34 + 16))
    {
      v48 = v34 + 32;
      while (1)
      {
        v49 = 120 * (i - 1);
        v50 = *(v48 + v49);
        v51 = *(v48 + v49 + 16);
        v52 = *(v48 + v49 + 48);
        *&v106[32] = *(v48 + v49 + 32);
        *&v106[48] = v52;
        *&v106[16] = v51;
        v53 = *(v48 + v49 + 64);
        v54 = *(v48 + v49 + 80);
        v55 = *(v48 + v49 + 96);
        v106[112] = *(v48 + v49 + 112);
        *&v106[80] = v54;
        *&v106[96] = v55;
        *&v106[64] = v53;
        *v106 = v50;
        *v38 = i - 1;
        v56 = *v106;
        v57 = *&v106[88];
        if (*v106 < *(*&v106[88] + 16))
        {
          break;
        }

        sub_100002BCC(v106, &qword_1000B4CA0, &qword_10008FEF8);
        i = *v38;
        if (!*v38)
        {
          goto LABEL_36;
        }
      }

      sub_10002600C(v106, v105, &qword_1000B4CA0, &qword_10008FEF8);
      v58 = *(v34 + 24);
      if (i > v58 >> 1)
      {
        v34 = sub_10000F180((v58 > 1), i, 1, v34);
      }

      v96 = *&v106[56];
      v97 = *&v106[72];
      *v98 = *&v106[88];
      *&v98[9] = *&v106[97];
      v94 = *&v106[24];
      v95 = *&v106[40];
      v93 = *&v106[8];
      *(v34 + 16) = i;
      v59 = v34 + v49;
      *(v59 + 32) = v56 + 1;
      *(v59 + 72) = v95;
      *(v59 + 56) = v94;
      *(v59 + 40) = v93;
      *(v59 + 129) = *&v98[9];
      *(v59 + 120) = *v98;
      *(v59 + 104) = v97;
      *(v59 + 88) = v96;
      if ((v56 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      v60 = *(v57 + 16);
      if (v56 >= v60)
      {
        goto LABEL_45;
      }

      v61 = *(v82 + 96);
      if (!*(v61 + 16))
      {
        goto LABEL_46;
      }

      v62 = sub_10001F92C(*(v57 + 8 * v56 + 32));
      if ((v63 & 1) == 0)
      {
        goto LABEL_47;
      }

      v64 = (*(v61 + 56) + 112 * v62);
      v66 = v64[1];
      v65 = v64[2];
      v99 = *v64;
      v100 = v66;
      v101 = v65;
      v67 = v64[3];
      v68 = v64[4];
      v69 = v64[5];
      *(v104 + 9) = *(v64 + 89);
      v103 = v68;
      v104[0] = v69;
      v102 = v67;
      sub_100025F6C(&v99, v105);
      sub_100002BCC(v106, &qword_1000B4CA0, &qword_10008FEF8);
      sub_100025F6C(&v99, v105);
      v71 = v27[2];
      v70 = v27[3];
      if (v71 >= v70 >> 1)
      {
        v27 = sub_10000F2C8((v70 > 1), v71 + 1, 1, v27);
      }

      *(v105 + 7) = v99;
      *(&v105[1] + 7) = v100;
      v105[6] = *(v104 + 9);
      *(&v105[4] + 7) = v103;
      *(&v105[5] + 7) = v104[0];
      *(&v105[2] + 7) = v101;
      *(&v105[3] + 7) = v102;
      v27[2] = v71 + 1;
      v72 = &v27[16 * v71];
      v72[4] = i;
      *(v72 + 40) = v56 == v60 - 1;
      v73 = v105[0];
      v74 = v105[1];
      *(v72 + 73) = v105[2];
      *(v72 + 57) = v74;
      *(v72 + 41) = v73;
      v75 = v105[3];
      v76 = v105[4];
      v77 = v105[5];
      *(v72 + 137) = v105[6];
      *(v72 + 121) = v77;
      *(v72 + 105) = v76;
      *(v72 + 89) = v75;
      v79 = *(v34 + 16);
      v78 = *(v34 + 24);
      if (v79 >= v78 >> 1)
      {
        v34 = sub_10000F180((v78 > 1), v79 + 1, 1, v34);
      }

      *&v92[9] = *(v104 + 9);
      v91 = v103;
      *v92 = v104[0];
      v89 = v101;
      v90 = v102;
      v87 = v99;
      v88 = v100;
      *(v34 + 16) = v79 + 1;
      v38 = (v34 + 16);
      v80 = v34 + 120 * v79;
      *(v80 + 32) = 0;
      *(v80 + 88) = v90;
      *(v80 + 129) = *&v92[9];
      *(v80 + 120) = *v92;
      *(v80 + 104) = v91;
      *(v80 + 72) = v89;
      *(v80 + 56) = v88;
      *(v80 + 40) = v87;
    }

LABEL_36:
    v26 = v86 + 1;
    sub_100025FA4(&v108);

    if (v86 + 1 != v85)
    {
      if (v26 >= *(v83 + 16))
      {
        goto LABEL_43;
      }

      continue;
    }

    break;
  }

  return v27;
}

uint64_t sub_10001CA34@<X0>(char *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v8 = String.utf8CString.getter();
  v9 = strstr(a1, (v8 + 32));

  if (v9)
  {
    v10 = String.utf8CString.getter();
    strlen((v10 + 32));

    result = String.init(cString:)();
    a2 = result;
    a3 = v12;
  }

  else
  {
  }

  *a4 = a2;
  a4[1] = a3;
  return result;
}

uint64_t sub_10001CAF8(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (qword_1000B4768 != -1)
  {
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    swift_once();
    v5 = v16;
    v4 = v15;
  }

  v6 = off_1000B6558(v4, v5, a1, 0x8000000000000000);
  v8 = v7;
  if (qword_1000B4750 != -1)
  {
    swift_once();
  }

  off_1000B6540(v6, v8);
  if (qword_1000B4760 != -1)
  {
    swift_once();
  }

  if (off_1000B6550())
  {
    String.init(cString:)();
  }

  if (qword_1000B4748 != -1)
  {
    swift_once();
  }

  if (off_1000B6538(v6, v8))
  {
    v9 = String.init(cString:)();
    v11 = sub_100025900(v9, v10, 0xD00000000000001DLL, 0x8000000100097FB0, v9);
  }

  else
  {
    sub_1000023DC();
    v12._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 62;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    return 7876668;
  }

  return v11;
}

uint64_t sub_10001E348(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10008E640;
  swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    a4 = *(a6 + 16);
    a5 = *(a6 + 24);
  }

  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.append(_:)(v13);

  *(v12 + 56) = &type metadata for String;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  print(_:separator:terminator:)();

  result = swift_beginAccess();
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_10001F230(uint64_t a1)
{
  v2 = sub_10001B348();
  if (*(v2 + 16) && (v3 = sub_10001F92C(a1), (v4 & 1) != 0))
  {
    v5 = *(v2 + 56) + 112 * v3;
    v7 = *(v5 + 40);
    v6 = *(v5 + 48);

    v14 = 0x206B736154;
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10._countAndFlagsBits = sub_10001CAF8(v6);
    String.append(_:)(v10);
  }

  else
  {

    _StringGuts.grow(_:)(17);

    v14 = 0xD000000000000010;
    sub_1000023DC();
    v11._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 62;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
  }

  return v14;
}

uint64_t sub_10001F3A0()
{
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10008E640;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0x53444145524854;
  *(v1 + 40) = 0xE700000000000000;
  print(_:separator:terminator:)();

  v2 = sub_10001B0B0()[2];

  if (v2)
  {
    result = *(v0 + 88);
    v4 = *(result + 16);
    if (v4)
    {
      v5 = ( + 40);
      do
      {
        v14 = *(v5 - 1);
        v15 = *v5;
        v16 = sub_10001B348();
        if (*(v16 + 16) && (v17 = sub_10001F92C(v15), (v18 & 1) != 0))
        {
          v19 = *(*(v16 + 56) + 112 * v17 + 40);

          v9 = dispatch thunk of CustomStringConvertible.description.getter();
          v8 = v20;
        }

        else
        {

          _StringGuts.grow(_:)(17);

          sub_1000023DC();
          v6._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
          String.append(_:)(v6);

          v7._countAndFlagsBits = 62;
          v7._object = 0xE100000000000000;
          String.append(_:)(v7);
          v9 = 0xD000000000000010;
          v8 = 0x8000000100097F10;
        }

        v5 += 2;
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_10008E640;
        _StringGuts.grow(_:)(30);

        sub_1000023DC();
        v11._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v11);

        v12._countAndFlagsBits = 0xD000000000000011;
        v12._object = 0x8000000100097EF0;
        String.append(_:)(v12);
        v13._countAndFlagsBits = v9;
        v13._object = v8;
        String.append(_:)(v13);

        *(v10 + 56) = &type metadata for String;
        *(v10 + 32) = 0x6461657268542020;
        *(v10 + 40) = 0xEB00000000783020;
        print(_:separator:terminator:)();

        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10008E640;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 32) = 0xD00000000000001ELL;
    *(v21 + 40) = 0x8000000100097F30;
    print(_:separator:terminator:)();
  }

  return result;
}

uint64_t sub_10001F72C()
{
  v1 = v0[3];

  v2 = v0[9];
  v3 = v0[10];
  sub_10002611C(v0[8]);
  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[13];

  v7 = v0[14];

  return swift_deallocClassInstance();
}

__n128 sub_10001F7B4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10001F7E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001F828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001F894(uint64_t *a1, int a2)
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

uint64_t sub_10001F8DC(uint64_t result, int a2, int a3)
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

unint64_t sub_10001F92C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_10001FA30(a1, v4);
}

unint64_t sub_10001F970(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10001FA9C(a1, a2, v6);
}

unint64_t sub_10001F9E8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_10001FB54(a1, v4);
}

unint64_t sub_10001FA30(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10001FA9C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001FB54(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_10001FBC4(uint64_t a1, uint64_t a2)
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

  sub_1000021C0(&qword_1000B4CC8, &qword_10008FF20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_10001FC48(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000021C0(&qword_1000B5128, &unk_1000911C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_10001FCCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000021C0(&qword_1000B5120, &qword_1000911C0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
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

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10001FF3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000021C0(&qword_1000B5130, &qword_1000911D8);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000201FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000021C0(&qword_1000B50F8, &qword_100090FC0);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 112 * v21;
      if (v43)
      {
        v44 = *v23;
        v24 = *(v23 + 8);
        v45 = *(v23 + 16);
        v46 = *(v23 + 17);
        v47 = *(v23 + 18);
        v48 = *(v23 + 19);
        v49 = *(v23 + 20);
        v50 = *(v23 + 24);
        v51 = *(v23 + 25);
        v52 = *(v23 + 26);
        v53 = *(v23 + 27);
        v54 = *(v23 + 28);
        v55 = *(v23 + 29);
        v57 = *(v23 + 32);
        v25 = *(v23 + 36);
        v56 = *(v23 + 40);
        v26 = *(v23 + 56);
        v58 = v26;
        v59 = *(v23 + 80);
        v60 = *(v23 + 72);
        v61 = *(v23 + 96);
        v27 = *(v23 + 104);
      }

      else
      {
        v28 = *(v23 + 48);
        v29 = *(v23 + 64);
        v30 = *(v23 + 80);
        *&v65[9] = *(v23 + 89);
        *&v64[32] = v29;
        *v65 = v30;
        *&v64[16] = v28;
        v32 = *(v23 + 16);
        v31 = *(v23 + 32);
        v63[0] = *v23;
        v63[1] = v32;
        *v64 = v31;
        v27 = v65[24];
        v60 = *&v64[40];
        v61 = *&v65[16];
        v58 = *&v64[24];
        v59 = v30;
        v56 = *&v64[8];
        v57 = v31;
        v25 = BYTE4(v31);
        v54 = BYTE12(v32);
        v55 = BYTE13(v32);
        v52 = BYTE10(v32);
        v53 = BYTE11(v32);
        v50 = BYTE8(v32);
        v51 = BYTE9(v32);
        v48 = BYTE3(v32);
        v49 = DWORD1(v32);
        v46 = BYTE1(v32);
        v47 = BYTE2(v32);
        v45 = v32;
        v24 = *(&v63[0] + 1);
        v44 = *&v63[0];
        sub_100025F6C(v63, v62);
      }

      v33 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(v63[0]) = v25;
      v62[0] = v27;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 112 * v16;
      *v17 = v44;
      *(v17 + 8) = v24;
      *(v17 + 16) = v45;
      *(v17 + 17) = v46;
      *(v17 + 18) = v47;
      *(v17 + 19) = v48;
      *(v17 + 20) = v49;
      *(v17 + 24) = v50;
      *(v17 + 25) = v51;
      *(v17 + 26) = v52;
      *(v17 + 27) = v53;
      *(v17 + 28) = v54;
      *(v17 + 29) = v55;
      *(v17 + 32) = v57;
      *(v17 + 36) = v63[0];
      *(v17 + 40) = v56;
      *(v17 + 56) = v58;
      *(v17 + 72) = v60;
      *(v17 + 80) = v59;
      *(v17 + 96) = v61;
      *(v17 + 104) = v62[0];
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

    if (v43)
    {
      v41 = 1 << *(v5 + 32);
      if (v41 >= 64)
      {
        bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v41;
      }

      *(v5 + 16) = 0;
    }

    v3 = v42;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100020654(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000021C0(&qword_1000B50C0, &qword_100090F68);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
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

uint64_t sub_1000208B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000021C0(&qword_1000B50A8, &qword_100090F48);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
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
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100020B2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000021C0(&qword_1000B50E0, &qword_100090FA8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
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
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
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

uint64_t sub_100020D90(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100020F40(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          result = v17 + 112 * v3;
          v18 = (v17 + 112 * v6);
          if (112 * v3 < (112 * v6) || result >= v18 + 112 || v3 != v6)
          {
            result = memmove(result, v18, 0x70uLL);
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000210C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10001F92C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10001FCCC(v14, a3 & 1);
      v18 = *v4;
      result = sub_10001F92C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100021640();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_100021214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10001F970(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10001FF3C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_10001F970(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10002179C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

unint64_t sub_10002139C(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10001F92C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000201FC(v14, a3 & 1);
      v18 = *v4;
      result = sub_10001F92C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100021914();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    v22 = (v20[7] + 112 * result);
    v23 = *a1;
    v24 = a1[2];
    v22[1] = a1[1];
    v22[2] = v24;
    *v22 = v23;
    v25 = a1[3];
    v26 = a1[4];
    v27 = a1[5];
    *(v22 + 89) = *(a1 + 89);
    v22[4] = v26;
    v22[5] = v27;
    v22[3] = v25;
    v28 = v20[2];
    v13 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v13)
    {
      v20[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7] + 112 * result;

  return sub_100025FD4(a1, v21);
}

unint64_t sub_100021514(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10001F92C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_100021D94();
    result = v17;
    goto LABEL_8;
  }

  sub_100020B2C(v14, a3 & 1);
  v18 = *v4;
  result = sub_10001F92C(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + result) = a1 & 1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + result) = a1 & 1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100021640()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B5120, &qword_1000911C0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_10002179C()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B5130, &qword_1000911D8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_100021914()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B50F8, &qword_100090FC0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_100025F6C(&v31, &v30))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = (*(v2 + 56) + 112 * v16);
      v20 = v18[4];
      v19 = v18[5];
      v21 = v18[3];
      *(v36 + 9) = *(v18 + 89);
      v35 = v20;
      v36[0] = v19;
      v34 = v21;
      v23 = v18[1];
      v22 = v18[2];
      v31 = *v18;
      v32 = v23;
      v33 = v22;
      *(*(v4 + 48) + 8 * v16) = v17;
      v24 = (*(v4 + 56) + 112 * v16);
      v25 = v31;
      v26 = v33;
      v24[1] = v32;
      v24[2] = v26;
      *v24 = v25;
      v27 = v34;
      v28 = v35;
      v29 = v36[0];
      *(v24 + 89) = *(v36 + 9);
      v24[4] = v28;
      v24[5] = v29;
      v24[3] = v27;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_100021AE4()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B50C0, &qword_100090F68);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100021C30()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B50A8, &qword_100090F48);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

void *sub_100021D94()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B50E0, &qword_100090FA8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

Swift::Int sub_100021EE0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100024AA8(v2);
  }

  v3 = *(v2 + 2);
  v36[0] = (v2 + 32);
  v36[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 144;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 5) >= *(v12 - 9))
          {
            break;
          }

          v13 = v12 - 112;
          v14 = *v12;
          v15 = *(v12 + 2);
          v31 = *(v12 + 1);
          v32 = v15;
          v30 = v14;
          v16 = *(v12 + 3);
          v17 = *(v12 + 4);
          v18 = *(v12 + 5);
          *&v35[9] = *(v12 + 89);
          v34 = v17;
          *v35 = v18;
          v33 = v16;
          v19 = *(v12 - 1);
          *(v12 + 5) = *(v12 - 2);
          *(v12 + 6) = v19;
          v20 = *(v12 - 3);
          v21 = *(v12 - 6);
          *v12 = *(v12 - 7);
          *(v12 + 1) = v21;
          v22 = *(v12 - 5);
          *(v12 + 3) = *(v12 - 4);
          *(v12 + 4) = v20;
          *(v12 + 2) = v22;
          v23 = v30;
          v24 = v32;
          *(v13 + 1) = v31;
          *(v13 + 2) = v24;
          *v13 = v23;
          v25 = v33;
          v26 = v34;
          v27 = *v35;
          *(v13 + 89) = *&v35[9];
          *(v13 + 4) = v26;
          *(v13 + 5) = v27;
          *(v13 + 3) = v25;
          v12 -= 112;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 112;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v30 = v7 + 4;
    *(&v30 + 1) = v6;
    sub_100022088(&v30, v29, v36, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100022088(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10002299C(v7);
      v7 = result;
    }

    v82 = v7 + 2;
    v83 = v7[2];
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v7[2 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1000226B0((*a3 + 112 * *v84), (*a3 + 112 * *v86), (*a3 + 112 * v87), v91);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 112 * v6 + 40);
      v10 = 112 * v8;
      v11 = *a3 + 112 * v8;
      v12 = *(v11 + 40);
      v13 = v8 + 2;
      v14 = (v11 + 152);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[14];
        v14 += 14;
        ++v13;
        if (v9 < v12 == v16 >= v15)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 112 * v6 - 112;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v21 + v17);
            v100 = *(v21 + v10 + 64);
            *v102 = *(v21 + v10 + 80);
            *&v102[9] = *(v21 + v10 + 89);
            v92 = *(v21 + v10);
            v94 = *(v21 + v10 + 16);
            v96 = *(v21 + v10 + 32);
            v98 = *(v21 + v10 + 48);
            result = memmove((v21 + v10), (v21 + v17), 0x70uLL);
            v20[4] = v100;
            v20[5] = *v102;
            *(v20 + 89) = *&v102[9];
            *v20 = v92;
            v20[1] = v94;
            v20[2] = v96;
            v20[3] = v98;
          }

          ++v19;
          v17 -= 112;
          v10 += 112;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000E99C(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v35 = v7[2];
    v34 = v7[3];
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_10000E99C((v34 > 1), v35 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v36;
    v37 = v7 + 4;
    v38 = &v7[2 * v35 + 4];
    *v38 = v8;
    v38[1] = v6;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = v7[4];
          v41 = v7[5];
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v7[2 * v36];
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = &v37[2 * v39];
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v66 = &v7[2 * v36];
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v37[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = &v37[2 * v39 - 2];
        v78 = *v77;
        v79 = &v37[2 * v39];
        v80 = v79[1];
        sub_1000226B0((*a3 + 112 * *v77), (*a3 + 112 * *v79), (*a3 + 112 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v39 > v7[2])
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = v7[2];
        if (v39 >= v81)
        {
          goto LABEL_101;
        }

        v36 = v81 - 1;
        result = memmove(&v37[2 * v39], v79 + 2, 16 * (v81 - 1 - v39));
        v7[2] = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v37[2 * v36];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v7[2 * v36];
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = &v37[2 * v39];
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 112 * v6;
  v24 = v8 - v6;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*(v26 + 40) >= *(v26 - 72))
    {
LABEL_29:
      ++v6;
      v23 += 112;
      --v24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = (v26 - 112);
    v101 = *(v26 + 64);
    *v103 = *(v26 + 80);
    *&v103[9] = *(v26 + 89);
    v93 = *v26;
    v95 = *(v26 + 16);
    v97 = *(v26 + 32);
    v99 = *(v26 + 48);
    v28 = *(v26 - 96);
    *v26 = *(v26 - 112);
    *(v26 + 16) = v28;
    v29 = *(v26 - 80);
    v30 = *(v26 - 64);
    v31 = *(v26 - 16);
    *(v26 + 80) = *(v26 - 32);
    *(v26 + 96) = v31;
    v32 = *(v26 - 48);
    *(v26 + 48) = v30;
    *(v26 + 64) = v32;
    *(v26 + 32) = v29;
    v27[4] = v101;
    v27[5] = *v103;
    *(v27 + 89) = *&v103[9];
    *v27 = v93;
    v27[1] = v95;
    v26 -= 112;
    v27[2] = v97;
    v27[3] = v99;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}