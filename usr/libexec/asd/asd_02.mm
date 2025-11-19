unint64_t sub_100053D08()
{
  result = qword_1006CA2D8;
  if (!qword_1006CA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA2D8);
  }

  return result;
}

uint64_t sub_100053D64()
{

  return swift_once();
}

uint64_t sub_100053D94()
{
  sub_100044850(v0);
}

void sub_100053DC8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL sub_100053DE8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100053E04()
{
}

uint64_t sub_100053E20()
{

  return swift_dynamicCast();
}

uint64_t sub_100053E48()
{

  return swift_slowAlloc();
}

uint64_t sub_100053E64()
{
}

uint64_t sub_100053E90()
{

  return swift_once();
}

uint64_t sub_100053EB0()
{

  return swift_once();
}

uint64_t sub_100053ED0()
{

  return swift_once();
}

uint64_t sub_100053EF0()
{

  return swift_once();
}

uint64_t sub_100053F10()
{

  return swift_once();
}

uint64_t sub_100053F60()
{

  return swift_slowAlloc();
}

uint64_t sub_100053F78()
{

  return swift_slowAlloc();
}

void sub_100053F90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_100053FB0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100053FD0(uint64_t a1, uint64_t a2)
{
  sub_100046E6C(a1, a2);

  return Logger.logObject.getter();
}

uint64_t sub_100054010()
{

  return dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t sub_10005404C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);

  return sub_10005346C(va1, va);
}

uint64_t sub_100054064()
{

  return _bridgeAnyObjectToAny(_:)();
}

uint64_t sub_1000540C4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_1000540DC()
{

  return dispatch thunk of JSONEncoder.encode<A>(_:)();
}

BOOL sub_100054100(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_100054168(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_100054188(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000541D8()
{

  return swift_slowAlloc();
}

uint64_t sub_10005424C()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CA2E8);
  sub_100046E6C(v0, qword_1006CA2E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000542D4()
{
  v0 = swift_allocObject();
  sub_1000443DC(&qword_1006CA308);
  *(v0 + 16) = Dictionary.init(minimumCapacity:)();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 6071;
  v5[4] = sub_100054850;
  v5[5] = v1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100054858;
  v5[3] = &unk_100692530;
  v2 = _Block_copy(v5);

  sub_10000A4DC(v2);
  _Block_release(v2);
  swift_beginAccess();
  v3 = *(v0 + 16);

  qword_1006CA300 = v3;
  return result;
}

uint64_t sub_10005441C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100054454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    if (qword_1006C9798 == -1)
    {
LABEL_25:
      v35 = type metadata accessor for Logger();
      sub_100046E6C(v35, qword_1006CA2E8);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Airport data is nil", v38, 2u);
      }

      sub_1000443DC(&qword_1006CA308);
      v39 = Dictionary.init(dictionaryLiteral:)();
      swift_beginAccess();
      v40 = *(a3 + 16);
      *(a3 + 16) = v39;

      return;
    }

LABEL_35:
    swift_once();
    goto LABEL_25;
  }

  v5 = 3 * a4;
  if ((a4 * 3) >> 64 != (3 * a4) >> 63)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v5 != a2)
  {
    if (qword_1006C9798 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100046E6C(v8, qword_1006CA2E8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = v5;
      *(v11 + 12) = 2048;
      *(v11 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v9, v10, "Expected %ld values in airport data but found %ld", v11, 0x16u);
    }
  }

  if (a2 < -2)
  {
    goto LABEL_34;
  }

  if ((a2 + 2) >= 5)
  {
    v12 = (a1 + 4);
    v13 = 0x2AAAAAAAAAAAAAAALL;
    for (i = a2 / 3; i; --i)
    {
      if (!i)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (!v13)
      {
        goto LABEL_30;
      }

      v15 = *(v12 - 2);
      v16 = *(v12 - 1);
      v17 = *v12;
      swift_beginAccess();
      v18 = *(a3 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(a3 + 16);
      *(a3 + 16) = 0x8000000000000000;
      v21 = sub_1000BFBD8(v15);
      v23 = v20[2];
      v24 = (v22 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_31;
      }

      v26 = v21;
      v27 = v22;
      sub_1000443DC(&qword_1006CA310);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
      {
        v28 = sub_1000BFBD8(v15);
        if ((v27 & 1) != (v29 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v26 = v28;
      }

      if (v27)
      {
        v30 = (v20[7] + 4 * v26);
        *v30 = v16;
        v30[1] = v17;
      }

      else
      {
        v20[(v26 >> 6) + 8] |= 1 << v26;
        *(v20[6] + 2 * v26) = v15;
        v31 = (v20[7] + 4 * v26);
        *v31 = v16;
        v31[1] = v17;
        v32 = v20[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_32;
        }

        v20[2] = v34;
      }

      *(a3 + 16) = v20;
      swift_endAccess();
      --v13;
      v12 += 3;
    }
  }
}

uint64_t sub_100054818()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100054858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_1000548B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CoordRange.southLimit.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t CoordRange.southLimit.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t CoordRange.northLimit.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t CoordRange.northLimit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t CoordRange.eastLimit.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t CoordRange.eastLimit.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t CoordRange.westLimit.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t CoordRange.westLimit.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

Swift::Int sub_100054A30()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100054A7C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GlobalLocationHelper.boundingRectAround(lat:lon:radiusMetres:)(asd::CoordRange *__return_ptr retstr, Swift::Double lat, Swift::Double lon, Swift::Double radiusMetres)
{
  if (radiusMetres < 0.0 || fabs(lat) > 90.0 || fabs(lon) > 180.0)
  {
    sub_100054CD8();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v8 = radiusMetres / (v4 * 6.28318531) * 360.0;
  v9 = v8 + lat;
  v10 = lat - v8;
  if (v10 >= -90.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  if (v9 <= 90.0)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0.0;
  }

  if (v9 <= 90.0 && v10 >= -90.0)
  {
    v13 = radiusMetres / (cos(lat * 3.14159265 / 180.0) * ((v4 + v4) * 3.14159265)) * 360.0;
    if (v13 >= 180.0)
    {
      v14 = 0;
      v15 = 0.0;
      v16 = 0.0;
LABEL_23:
      v17 = 0;
      v18 = 0;
      v19 = v13 >= 180.0;
      goto LABEL_24;
    }

    v16 = v13 + lon;
    v15 = lon - v13;
    if (v13 + lon <= 180.0)
    {
      if (v15 >= -180.0)
      {
        v14 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v16 = v16 + -360.0;
      if (v15 >= -180.0)
      {
        goto LABEL_21;
      }
    }

    v15 = v15 + 360.0;
LABEL_21:
    v14 = 1;
    goto LABEL_23;
  }

  v14 = 0;
  v17 = v10 < -90.0;
  v18 = v9 > 90.0;
  v19 = 1;
  v16 = 0.0;
  v15 = 0.0;
LABEL_24:
  retstr->southLimit.value = v11;
  retstr->southLimit.is_nil = v17;
  *(&retstr->northLimit.value + 7) = v12;
  BYTE6(retstr->eastLimit.value) = v18;
  *(&retstr->westLimit.value + 5) = v16;
  BYTE3(retstr[1].southLimit.value) = v19;
  *(&retstr[1].northLimit.value + 2) = v15;
  BYTE1(retstr[1].eastLimit.value) = v19;
  BYTE2(retstr[1].eastLimit.value) = v14;
}

unint64_t sub_100054CD8()
{
  result = qword_1006CA318;
  if (!qword_1006CA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA318);
  }

  return result;
}

__n128 sub_100054D2C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100054D48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 58))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 57);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100054D94(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASMotionHelper.Error(unsigned int *a1, int a2)
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

_BYTE *sub_100054E54(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100054EF0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100054F28()
{
  result = qword_1006CA320;
  if (!qword_1006CA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA320);
  }

  return result;
}

unint64_t sub_100054F7C()
{
  if (String.count.getter() != 3)
  {
LABEL_44:
    v21 = 0;
    v20 = 1;
    return v21 | (v20 << 16);
  }

  v0 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v1 = String.Iterator.next()();
    if (!v1.value._object)
    {
      break;
    }

    v2 = v1.value._countAndFlagsBits == 2573 && v1.value._object == 0xE200000000000000;
    if (v2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {

      LOBYTE(v6) = 10;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_21;
      }

LABEL_26:
      v8 = *(v0 + 2);
      sub_100062778();
      v0 = v9;
      goto LABEL_21;
    }

    if ((v1.value._object & 0x2000000000000000) != 0)
    {
      v4 = (v1.value._object >> 56) & 0xF;
    }

    else
    {
      v4 = v1.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v4)
    {
      __break(1u);
      goto LABEL_47;
    }

    if ((v1.value._object & 0x1000000000000000) != 0)
    {
      v5 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v5 = _StringGuts.fastUTF8ScalarLength(startingAt:)(0) << 16;
    }

    if (v5 >> 14 != 4 * v4)
    {
      goto LABEL_24;
    }

    result = sub_1000586DC(v1.value._countAndFlagsBits, v1.value._object);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_50;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_24:
    }

    else
    {
      result = sub_1000586DC(v1.value._countAndFlagsBits, v1.value._object);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_51;
      }

      v6 = result;

      if ((v6 & 0xFFFFFF00) != 0)
      {
        goto LABEL_49;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_21:
      v7 = *(v0 + 2);
      if (v7 >= *(v0 + 3) >> 1)
      {
        sub_100062778();
        v0 = v10;
      }

      *(v0 + 2) = v7 + 1;
      v0[v7 + 32] = v6;
    }
  }

  v11 = *(v0 + 2);
  if (v11)
  {
    v12 = (v0 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if ((v14 - 91) > 0xFFFFFFE5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000BDE68(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v16 = *(&_swiftEmptyArrayStorage + 2);
        v15 = *(&_swiftEmptyArrayStorage + 3);
        if (v16 >= v15 >> 1)
        {
          sub_1000BDE68(v15 > 1, v16 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v16 + 1;
        *(&_swiftEmptyArrayStorage + v16 + 32) = v13;
      }

      --v11;
    }

    while (v11);
  }

  if (*(&_swiftEmptyArrayStorage + 2) != 3)
  {

    goto LABEL_44;
  }

  LOWORD(v17) = 0;
  v18 = 32;
  while (1)
  {
    v19 = *(&_swiftEmptyArrayStorage + v18) - 65;
    if ((v19 & 0xFFFFFF00) != 0)
    {
      break;
    }

    v17 = 32 * (v17 & 0x7FF) + v19;
    if ((v17 & 0x10000) != 0)
    {
      goto LABEL_48;
    }

    if (++v18 == 35)
    {

      v20 = 0;
      v21 = v17;
      return v21 | (v20 << 16);
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

double sub_10005527C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000BFB1C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_10005346C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_1000552E0(unsigned __int16 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = sub_1000BFBD8(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

void *sub_10005533C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000BFB60(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_100055384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000BFB60(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 56) + 24 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);

  return v7;
}

uint64_t sub_1000553F4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1000BFC20(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

void *sub_100055444(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1000BFC20(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_10005548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000BFB60(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_1000554DC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1000BFCF8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_10005552C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000BFCF8(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for ServerJSONFetchRetryState();
    sub_10005909C(v8 + *(*(v9 - 8) + 72) * v7, a3);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for ServerJSONFetchRetryState();
    v10 = a3;
    v11 = 1;
  }

  return sub_1000485F8(v10, v11, 1, v12);
}

uint64_t sub_1000555DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000BFB60(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 56) + 32 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24) | (*(v6 + 25) << 8) | (*(v6 + 26) << 16) | (*(v6 + 27) << 24);

  return v7;
}

double sub_10005566C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1000BFB60(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10005346C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

Class PKPass.arrivalAirportLat(_:)(uint64_t a1)
{
  if (!a1 || sub_1000593AC() == 4)
  {
    return sub_100055C4C(&selRef_arrivalAirportCode_, sub_100055874);
  }

  if (sub_1000593AC() != 10)
  {
    return 0;
  }

  return sub_100055750();
}

Class sub_100055750()
{
  result = sub_100058ABC(v0);
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = sub_10005533C(v3, v4, v2);

    if (!v5)
    {
      return sub_100055C4C(&selRef_arrivalAirportCode_, sub_100055874);
    }

    v6 = [v5 locationValue];

    if (!v6)
    {
      return sub_100055C4C(&selRef_arrivalAirportCode_, sub_100055874);
    }

    [v6 latitude];
    v7.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;

    return v7.super.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100055874()
{
  v0 = sub_100054F7C();
  if ((v0 & 0x10000) != 0)
  {
    return 0;
  }

  v1 = v0;
  if (qword_1006C97A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000552E0(v1, qword_1006CA300);
  if ((v2 & 0x100000000) != 0)
  {
    return 0;
  }

  _H0 = v2;
  __asm { FCVT            S8, H0 }

  v9 = objc_allocWithZone(NSNumber);
  LODWORD(v10) = _S8;
  return [v9 initWithFloat:v10];
}

id sub_100055990()
{
  v0 = sub_100054F7C();
  if ((v0 & 0x10000) != 0)
  {
    return 0;
  }

  v1 = v0;
  if (qword_1006C97A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000552E0(v1, qword_1006CA300);
  if ((v2 & 0x100000000) != 0)
  {
    return 0;
  }

  _H0 = WORD1(v2);
  __asm { FCVT            S8, H0 }

  v9 = objc_allocWithZone(NSNumber);
  LODWORD(v10) = _S8;
  return [v9 initWithFloat:v10];
}

Class sub_100055A64(uint64_t *a1, SEL *a2, SEL *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = sub_100058ABC(v4);
  if (result)
  {
    v10 = result;
    v11 = *a1;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = sub_10005533C(v12, v13, v10);

    v15 = [v14 locationValue];

    if (!v15)
    {
      return sub_100055C4C(a3, a4);
    }

    [v15 *a2];
    v16.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;

    return v16.super.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Class sub_100055BB4(uint64_t a1, SEL *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t *a4, SEL *a5)
{
  if (!a1 || [v5 style] == 4)
  {
    return sub_100055C4C(a2, a3);
  }

  if ([v5 style] == 10)
  {
    return sub_100055A64(a4, a5, a2, a3);
  }

  return 0;
}

uint64_t sub_100055C4C(SEL *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getObjectType();
  v5 = [v2 *a1];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!v9)
  {
    return 0;
  }

  v10 = a2(v7, v9);

  return v10;
}

unint64_t PKPass.departureAirportCode(_:)(uint64_t a1)
{
  if (!a1 || sub_1000593AC() == 4)
  {
    return sub_100055DA8();
  }

  if (sub_1000593AC() == 10)
  {
    return sub_1000560C8(&PKPassSemanticStringKeyDepartureAirportCode, sub_100055DA8);
  }

  return 0;
}

unint64_t sub_100055DA8()
{
  if (!sub_100055F00([v0 style], &off_1006912D8) || objc_msgSend(v0, "transitType") != 1)
  {
    return 0;
  }

  result = sub_100058CD8(v0, &selRef_primaryFields, &qword_1006CA380, PKPassField_ptr);
  if (!result)
  {
    goto LABEL_15;
  }

  v2 = result;
  result = sub_1000582D8(result);
  if (!result)
  {

    return 0;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
    v4 = v3;

    v5 = [v4 value];

    if (v5)
    {
      v6 = [v5 uppercaseString];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    return v5;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v2 + 32);
    goto LABEL_8;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

BOOL sub_100055F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

unint64_t PKPass.arrivalAirportCode(_:)(uint64_t a1)
{
  if (a1 && [v1 style] != 4)
  {
    return sub_1000560C8(&PKPassSemanticStringKeyDestinationAirportCode, sub_100055F94);
  }

  return sub_100055F94();
}

unint64_t sub_100055F94()
{
  if (!sub_100055F00([v0 style], &off_1006912D8) || objc_msgSend(v0, "transitType") != 1)
  {
    return 0;
  }

  result = sub_100058CD8(v0, &selRef_primaryFields, &qword_1006CA380, PKPassField_ptr);
  if (result)
  {
    result = sub_10005620C(1, result);
    if (v3 == v4 >> 1)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    if (v3 < (v4 >> 1))
    {
      v6 = *(v2 + 8 * v3);
      swift_unknownObjectRelease();
      v5 = [v6 value];

      if (v5)
      {
        v7 = [v5 uppercaseString];

        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000560C8(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = sub_100058ABC(v2);
  if (result)
  {
    v6 = result;
    v7 = *a1;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = sub_10005533C(v8, v9, v6);

    if (v10)
    {
      v11 = sub_100058B3C(v10);
      if (v12)
      {
        return v11;
      }
    }

    v13 = a2(v11);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10005618C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a1;
  v7 = sub_100059338();
  v8 = a4(v7);
  v10 = v9;

  if (v10)
  {
    String._bridgeToObjectiveC()();
    sub_100036C50();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

Swift::Int sub_10005620C(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_1000582D8(a2);
  v5 = sub_100087838(0, a1, v4, a2);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_100058DAC(v7, a2);
  result = sub_100058DAC(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    sub_1000591B0(0, &qword_1006CA380, PKPassField_ptr);

    result = v7;
    do
    {
      v9 = result + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(result);
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = _CocoaArrayWrapper.subscript.getter();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100056370(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      v7 = a4();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100056418()
{
  if (!sub_100055F00([v0 style], &off_1006912D8))
  {
    return 0;
  }

  if ([v0 transitType] != 1)
  {
    return 0;
  }

  v1 = sub_100058C74(v0);
  if (!v1)
  {
    return 0;
  }

  sub_100056370(2, v1, sub_100087838, sub_10008783C);
  if (v3 == v4 >> 1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  if (v3 >= (v4 >> 1))
  {
    __break(1u);
LABEL_18:
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  v5 = *(v2 + 8 * v3);

  swift_unknownObjectRelease();
  result = sub_1000582D8(v5);
  if (!result)
  {

    return 0;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_11:
    v8 = v7;

    v9 = [v8 value];
    if (v9)
    {
      countAndFlagsBits = String.init(_:)(v9)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100056588()
{
  v1 = [v0 organizationName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.lowercased()();

  sub_10005915C();
  v2 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v2;
}

id sub_1000566A0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    String._bridgeToObjectiveC()();
    sub_100036C50();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_10005674C()
{
  v2 = sub_100059338();
  result = sub_100058ABC(v2);
  if (result)
  {
    v4 = result;
    v5 = *v1;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005533C(v6, v7, v4);
    sub_10005932C();

    if (v0)
    {
      return sub_100058B3C(v0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Class PKPass.anyDate.getter()
{
  v1 = v0;
  v2 = sub_1000443DC(&qword_1006CA2B0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v52 = (&v50 - v7);
  v8 = __chkstk_darwin(v6);
  v53 = &v50 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v50 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v50 - v14;
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v50 - v24;
  v26 = [v1 relevantDates];
  sub_1000591B0(0, &qword_1006CA328, PKPassRelevantDate_ptr);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_1000582D8(v27);
  if (!result)
  {

    sub_1000592B4(v17);
LABEL_11:
    if ([v1 expirationDate])
    {
      sub_10005937C();

      sub_100059350();
      (v26)(v12, v23, v18);
      v32 = sub_100059290(v12);
      (v26)(v32, v12, v18);
    }

    else
    {
      sub_1000592B4(v12);
      if ([v1 modifiedDate])
      {
        sub_10005937C();

        sub_100059350();
        v33 = v53;
        v34 = sub_1000592E0();
        (v26)(v34);
        v35 = sub_100059290(v33);
        (v26)(v35, v33, v18);
      }

      else
      {
        v36 = v53;
        sub_1000592B4(v53);
        if ([v1 ingestedDate])
        {
          sub_10005937C();

          sub_100059350();
          v37 = v52;
          v38 = sub_1000592E0();
          (v26)(v38);
          v39 = sub_100059290(v37);
          v40 = v37;
          v36 = v53;
          (v26)(v39, v40, v18);
        }

        else
        {
          v41 = v52;
          sub_1000592B4(v52);
          if ([v1 signingDate])
          {
            sub_10005937C();

            sub_100059350();
            v42 = v51;
            v43 = sub_1000592E0();
            v41(v43);
            v44 = sub_100059290(v42);
            v45 = v42;
            v36 = v53;
            (v41)(v44, v45, v18);
            v41 = v52;
          }

          else
          {
            v46 = v51;
            sub_1000592B4(v51);
            static Date.distantPast.getter();
            sub_100059270(v46);
            if (!v31)
            {
              sub_100058C14(v46);
            }
          }

          sub_100059270(v41);
          if (!v31)
          {
            sub_100058C14(v41);
          }
        }

        sub_100059270(v36);
        if (!v31)
        {
          sub_100058C14(v36);
        }
      }

      sub_100059270(v12);
      if (!v31)
      {
        sub_100058C14(v12);
      }
    }

    sub_100059270(v17);
    if (!v31)
    {
      sub_100058C14(v17);
    }

    goto LABEL_29;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v29 = *(v27 + 32);
  }

  v26 = v29;

  v27 = [v26 date];

  if (v27)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  sub_1000485F8(v15, v30, 1, v18);
  sub_100058BAC(v15, v17);
  sub_100059270(v17);
  if (v31)
  {
    goto LABEL_11;
  }

  (*(v19 + 32))(v25, v17, v18);
LABEL_29:
  v47.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v19 + 8))(v25, v18);
  if ([v1 style] == 10)
  {
    v48 = [v1 originalBoardingDate];
    if (v48 || (v48 = [v1 originalDepartureDate]) != 0 || (v48 = objc_msgSend(v1, "originalArrivalDate")) != 0)
    {
      v49 = v48;

      return v49;
    }
  }

  return v47.super.isa;
}

uint64_t sub_100056E0C(char a1)
{
  v3 = v1;
  v5 = sub_1000443DC(&qword_1006CA2B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  isa = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = v19 - v10;
  v12 = **(&off_100692750 + a1);
  result = sub_100058ABC(v3);
  if (result)
  {
    v19[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19[2] = v14;
    sub_1000591B0(0, &qword_1006CA378, PKPassSemantic_ptr);
    Dictionary.subscript.getter();
    if (v2)
    {
    }

    else
    {

      v15 = v20;
      v16 = [v20 dateValue];

      if (v16)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v17 = 0;
      }

      else
      {
        v17 = 1;
      }

      v18 = type metadata accessor for Date();
      sub_1000485F8(isa, v17, 1, v18);
      sub_100058BAC(isa, v11);
      if (sub_100046EA4(v11, 1, v18) == 1)
      {
        sub_100058C14(v11);
        return 0;
      }

      else
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(*(v18 - 8) + 8))(v11, v18);
      }
    }

    return isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1000571F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PKPass.BoardingPassDate.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_100057238()
{
  type metadata accessor for AssessmentConfigurationManager();
  swift_initStackObject();
  result = AssessmentConfigurationManager.airlineNameFormats.getter();
  if (result)
  {
    v1 = result;
    v2 = sub_100056588();
    v4 = sub_100055384(v2, v3, v1);
    v6 = v5;

    if (v6)
    {

      v7 = sub_10006BF5C(v4, v6);
      v9 = v8;
      swift_bridgeObjectRelease_n();
      if (v9)
      {
        return v7;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id PKPass.boardingPassFirstName.getter()
{
  sub_100056418();
  if (!v1)
  {
    return 0;
  }

  v2 = sub_100057238();
  v5 = v4;
  if (v4)
  {
    v6 = v23;
    if (v3)
    {
      v7 = sub_100059344(v2);
      __chkstk_darwin(v7);
      sub_100059214();
      sub_10005922C(v8, v9, v10, v11);
      sub_100059394();
      sub_1000574BC(v0);
      sub_100059308();
      if (!v23)
      {
        return 0;
      }
    }

    else
    {
      v12 = sub_100059344(v2);
      __chkstk_darwin(v12);
      sub_100059214();
      sub_10005922C(v13, v14, v15, v16);
      sub_100059394();
      if (!v0[2])
      {

        return 0;
      }

      v17 = v0[4];
      v18 = v0[5];
      v19 = v0[6];
      v6 = v0[7];
    }

    sub_10005935C();

    v20 = objc_allocWithZone(NSString);
    sub_100036C50();
    v21 = String._bridgeToObjectiveC()();
    v5 = [v6 initWithString:v21];
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1000574BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32 * v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  return v3;
}

id sub_100057520()
{
  sub_100059338();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10005932C();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithString:v2];

  return v3;
}

id PKPass.boardingPassLastName.getter()
{
  sub_100056418();
  if (!v1)
  {
    return 0;
  }

  v2 = sub_100057238();
  if (!v4)
  {
    goto LABEL_9;
  }

  if (v3)
  {
    v5 = sub_100059344(v2);
    __chkstk_darwin(v5);
    sub_100059214();
    sub_10005922C(v6, v7, v8, v9);
    sub_100059394();
    if (v0[2])
    {
      v10 = v0[4];
      v11 = v0[5];
      v13 = v0[6];
      v12 = v0[7];

LABEL_8:
      sub_10005935C();

      sub_1000591B0(0, &qword_1006CB560, NSString_ptr);
      sub_100036C50();
      return sub_100057520();
    }

LABEL_9:

    return 0;
  }

  v14 = sub_100059344(v2);
  __chkstk_darwin(v14);
  sub_100059214();
  sub_10005922C(v15, v16, v17, v18);
  sub_100059394();
  sub_1000574BC(v0);
  sub_100059308();
  if (&v20)
  {
    goto LABEL_8;
  }

  return 0;
}

id *PKPass.evaluate(attribute:expression:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if ([v3 style] != 4)
  {
    v7 = String._bridgeToObjectiveC()();
    [a1 hasPrefix:v7];
  }

  v8 = sub_100057F3C(a1);
  v10 = v9;
  v11 = v8 == 0x656C797473 && v9 == 0xE500000000000000;
  if (v11 || (v12 = v8, (sub_100059254() & 1) != 0))
  {

    v13 = [v3 style];
LABEL_9:
    v14 = [objc_allocWithZone(NSNumber) initWithInteger:v13];
LABEL_10:
    v3 = v14;
    v15 = &qword_1006CA338;
    v16 = NSNumber_ptr;
LABEL_11:
    result = sub_1000591B0(0, v15, v16);
    *(a3 + 24) = result;
    *a3 = v3;
    return result;
  }

  v19 = v12 == (sub_1000592D0() & 0xFFFFFFFFFFFFLL | 0x5374000000000000) && v10 == v18;
  if (v19 || (sub_100059254() & 1) != 0)
  {

    v20 = &selRef_transitStatus;
    goto LABEL_18;
  }

  v23 = v12 == (sub_1000592D0() & 0xFFFFFFFFFFFFLL | 0x5074000000000000) && v10 == v22;
  if (v23 || (sub_100059254() & 1) != 0)
  {

    v20 = &selRef_transitProvider;
    goto LABEL_18;
  }

  sub_100054218();
  v25 = v12 == 0xD000000000000013 && v24 == v10;
  if (v25 || (sub_100059254() & 1) != 0)
  {

    v20 = &selRef_transitStatusReason;
LABEL_18:
    result = sub_100058D4C(v3, v20);
    if (v21)
    {
      *(a3 + 24) = &type metadata for String;
      *a3 = result;
      *(a3 + 8) = v21;
      return result;
    }

    goto LABEL_52;
  }

  v26 = v12 == 0x65746144796E61 && v10 == 0xE700000000000000;
  if (v26 || (sub_100059254() & 1) != 0)
  {

    result = [v3 anyDate];
LABEL_38:
    v3 = result;
    v15 = &unk_1006CA340;
    v16 = NSDate_ptr;
    goto LABEL_11;
  }

  v28 = v12 == (sub_1000592D0() & 0xFFFFFFFFFFFFLL | 0x5474000000000000) && v10 == v27;
  if (v28 || (sub_100059254() & 1) != 0)
  {

    v13 = [v3 transitType];
    goto LABEL_9;
  }

  sub_100054218();
  v30 = v12 == 0xD000000000000012 && v29 == v10;
  if (v30 || (sub_100059254() & 1) != 0)
  {

    v31 = [v3 currentArrivalDate];
    goto LABEL_51;
  }

  sub_100054218();
  v33 = v12 == 0xD000000000000013 && v32 == v10;
  if (v33 || (sub_100059254() & 1) != 0)
  {

    v31 = [v3 currentBoardingDate];
    goto LABEL_51;
  }

  sub_100054218();
  v35 = v12 == 0xD000000000000014 && v34 == v10;
  if (v35 || (sub_100059254() & 1) != 0)
  {

    v31 = [v3 currentDepartureDate];
    goto LABEL_51;
  }

  sub_100054218();
  v37 = v12 == 0xD000000000000013 && v36 == v10;
  if (v37 || (sub_100059254() & 1) != 0)
  {

    v31 = [v3 originalArrivalDate];
    goto LABEL_51;
  }

  sub_100054218();
  v39 = v12 == 0xD000000000000014 && v38 == v10;
  if (v39 || (sub_100059254() & 1) != 0)
  {

    v31 = [v3 originalBoardingDate];
    goto LABEL_51;
  }

  sub_100054218();
  v41 = v12 == 0xD000000000000015 && v40 == v10;
  if (v41 || (sub_100059254() & 1) != 0)
  {

    v31 = [v3 originalDepartureDate];
LABEL_51:
    result = v31;
    if (result)
    {
      goto LABEL_38;
    }

LABEL_52:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  sub_100054218();
  v43 = v12 == 0xD000000000000010 && v42 == v10;
  if (v43 || (sub_100059254() & 1) != 0)
  {
    if ([v3 organizationName])
    {
      sub_10005932C();

      goto LABEL_90;
    }

    __break(1u);
    goto LABEL_154;
  }

  sub_100054218();
  v45 = v12 == 0xD000000000000011 && v44 == v10;
  if (v45 || (sub_100059254() & 1) != 0)
  {

    v47 = sub_1000593C4(v46, "arrivalAirportLat:");
    goto LABEL_115;
  }

  sub_100054218();
  v49 = v12 == 0xD000000000000012 && v48 == v10;
  if (v49 || (sub_100059254() & 1) != 0)
  {

    v47 = sub_1000593C4(v50, "arrivalAirportLong:");
    goto LABEL_115;
  }

  sub_100054218();
  v52 = v12 == 0xD000000000000013 && v51 == v10;
  if (v52 || (sub_100059254() & 1) != 0)
  {

    v47 = sub_1000593C4(v53, "departureAirportLat:");
    goto LABEL_115;
  }

  sub_100054218();
  v55 = v12 == 0xD000000000000014 && v54 == v10;
  if (v55 || (sub_100059254() & 1) != 0)
  {

    v47 = sub_1000593C4(v56, "departureAirportLong:");
LABEL_115:
    result = v47;
    if (result)
    {
      v3 = result;
      v15 = &qword_1006CA338;
      v16 = NSNumber_ptr;
      goto LABEL_11;
    }

    goto LABEL_52;
  }

  sub_100054218();
  v58 = v12 == 0xD000000000000015 && v57 == v10;
  if (v58 || (sub_100059254() & 1) != 0)
  {

    v59 = [v3 boardingPassFirstName];
LABEL_129:
    result = v59;
    if (!result)
    {
      goto LABEL_52;
    }

    v3 = result;
LABEL_90:
    v15 = &qword_1006CB560;
    v16 = NSString_ptr;
    goto LABEL_11;
  }

  sub_100054218();
  v61 = v12 == 0xD000000000000014 && v60 == v10;
  if (v61 || (sub_100059254() & 1) != 0)
  {

    v59 = [v3 boardingPassLastName];
    goto LABEL_129;
  }

  sub_100054218();
  v63 = v12 == 0xD000000000000018 && v62 == v10;
  if (v63 || (sub_100059254() & 1) != 0)
  {

    v14 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v3, "hasLocationRelevancyInfo")}];
    goto LABEL_10;
  }

  sub_100054218();
  v65 = v12 == 0xD000000000000023 && v64 == v10;
  if (v65 || (sub_100059254() & 1) != 0)
  {
    result = sub_100058CD8(v3, &selRef_embeddedLocationsArray, &qword_1006CA330, PKLocation_ptr);
    if (result)
    {
      sub_10005932C();

      result = sub_1000582D8(v3);
      if (!result)
      {

        goto LABEL_52;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
LABEL_154:
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_147;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v66 = *(v3 + 32);
LABEL_147:
        sub_100059338();

        result = sub_1000591B0(0, &qword_1006CA330, PKLocation_ptr);
        *(a3 + 24) = result;
        *a3 = v10;
        return result;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    result = [a2 expressionValueWithObject:v3 context:0];
    if (result)
    {
      _bridgeAnyObjectToAny(_:)();
      result = swift_unknownObjectRelease();
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
    }

    *a3 = v67;
    *(a3 + 16) = v68;
  }

  return result;
}

uint64_t sub_100057F3C(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 componentsSeparatedByString:v2];

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4[2];
  if (v5 < 3)
  {
    if (v5 != 2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v6 = v4[6] == 0x79636167656CLL && v4[7] == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v7 = v4[4] == 1179403603 && v4[5] == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = 2;
LABEL_20:
        sub_100056370(v8, v4, sub_100087838, sub_10008783C);
        sub_1000443DC(&qword_1006CA358);
        sub_100059100();
        v10 = BidirectionalCollection<>.joined(separator:)();
        swift_unknownObjectRelease();
        return v10;
      }
    }
  }

  v9 = v4[4] == 1179403603 && v4[5] == 0xE400000000000000;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v8 = 1;
    goto LABEL_20;
  }

LABEL_21:

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t sub_1000582B0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000582D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1000582FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void *sub_100058340(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v51 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v6 = String.subscript.getter();
    v10 = v30;
    v11 = v31;
    v12 = v32;

    sub_100062784();
    v15 = v33;
    v8 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v34 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v38 = (v15 + 32 * v8);
      v38[4] = v6;
      v38[5] = v10;
      v38[6] = v11;
      v38[7] = v12;
      return v15;
    }

LABEL_41:
    sub_100062784();
    v15 = v39;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v49 = &_swiftEmptyArrayStorage;
  v16 = 15;
  while (1)
  {
    v47 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v47;
        goto LABEL_30;
      }

      v17 = String.subscript.getter();
      v11 = v18;
      v50[0] = v17;
      v50[1] = v18;
      v19 = v51(v50);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = String.index(after:)();
    }

    v22 = (v47 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v47 >> 14)
    {
      break;
    }

    v48 = String.subscript.getter();
    v43 = v24;
    v44 = v23;
    v42 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = v49[2];
      sub_100062784();
      v49 = v28;
    }

    v12 = v49[2];
    v11 = v12 + 1;
    if (v12 >= v49[3] >> 1)
    {
      sub_100062784();
      v49 = v29;
    }

    v49[2] = v11;
    v26 = &v49[4 * v12];
    v26[4] = v48;
    v26[5] = v44;
    v26[6] = v43;
    v26[7] = v42;
LABEL_20:
    v16 = String.index(after:)();
    if ((v22 & 1) == 0 && v49[2] == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v49;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = String.subscript.getter();
        v10 = v35;
        v11 = v36;
        v12 = v37;

        v15 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v34 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v40 = *(v15 + 16);
      sub_100062784();
      v15 = v41;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000586DC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_100058890(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

unint64_t sub_100058890(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100058930(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1000589A0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100058930(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_100046C88(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000589A0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = _StringObject.sharedUTF8.getter();
          v5 = v12;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v9 = *(v6 - 1 + v5--) & 0xC0;
          }

          while (v9 == 128);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_100058ABC(void *a1)
{
  v1 = [a1 allSemantics];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1000591B0(0, &qword_1006CA378, PKPassSemantic_ptr);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100058B3C(void *a1)
{
  v2 = [a1 stringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100058BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CA2B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058C14(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006CA2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100058C74(void *a1)
{
  v1 = [a1 frontFieldBuckets];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1000443DC(&qword_1006CA370);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100058CD8(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1000591B0(0, a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t sub_100058D4C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_100058DAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

unint64_t sub_100058E54()
{
  result = qword_1006CA348;
  if (!qword_1006CA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA348);
  }

  return result;
}

unint64_t sub_100058EAC()
{
  result = qword_1006CA350;
  if (!qword_1006CA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA350);
  }

  return result;
}

uint64_t _s16BoardingPassDateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s16BoardingPassDateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x100059064);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10005909C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerJSONFetchRetryState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100059100()
{
  result = qword_1006CA360;
  if (!qword_1006CA360)
  {
    sub_1000471A4(&qword_1006CA358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA360);
  }

  return result;
}

unint64_t sub_10005915C()
{
  result = qword_1006CA368;
  if (!qword_1006CA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA368);
  }

  return result;
}

uint64_t sub_1000591B0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_10005922C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100058340(0x7FFFFFFFFFFFFFFFLL, 1, v4, a4, v6, v5);
}

uint64_t sub_100059254()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000592B4(uint64_t a1)
{

  return sub_1000485F8(a1, 1, 1, v1);
}

uint64_t sub_100059308()
{
}

uint64_t sub_100059344(uint64_t result)
{
  *(v2 - 64) = result;
  *(v2 - 56) = v1;
  return result;
}

uint64_t sub_10005935C()
{

  return Substring.lowercased()()._countAndFlagsBits;
}

uint64_t sub_10005937C()
{

  return static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100059394()
{
}

id sub_1000593AC()
{
  v3 = *(v0 + 360);

  return [v1 v3];
}

id sub_1000593C4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_1000593DC(int a1)
{
  v1 = a1;
  v2 = objc_allocWithZone(NSError);
  return sub_100062458(0xD000000000000010, 0x80000001005A3C00, v1, 0);
}

uint64_t ASBiomeMaterializedViewer.run(query:inputColNames:inputColTypes:)(void *a1, void *a2, void *a3, void *a4)
{
  v34 = a1;
  v35 = a2;
  v8 = type metadata accessor for Configuration();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_10004EAF4();
  v10 = type metadata accessor for URL();
  v11 = sub_10004EAE0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10004EAF4();
  v18 = v17 - v16;
  v19 = type metadata accessor for SQLDatabase();
  v20 = sub_10004EAE0(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_10004EAF4();
  v36 = a3;
  v37 = a4;
  if (a3[2] == a4[2])
  {
    v33 = v4;
    type metadata accessor for Library.Databases.ApplePay.Security.Features();
    sub_10005975C();
    result = static DatabaseResource.database(useCase:)();
    if (!v5)
    {
      SQLDatabase.databasePath()();
      object = URL.path(percentEncoded:)(0)._object;
      (*(v13 + 8))(v18, v10);
      Configuration.init()();
      v24 = type metadata accessor for DatabaseQueue();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = DatabaseQueue.init(path:configuration:)();
      __chkstk_darwin(v27);
      v28 = v35;
      *(&object - 6) = v34;
      *(&object - 5) = v28;
      v29 = v37;
      *(&object - 4) = v36;
      *(&object - 3) = v29;
      *(&object - 2) = v33;
      sub_1000443DC(&qword_1006CA390);
      DatabaseQueue.read<A>(_:)();
      v30 = sub_10005A8CC();
      v31(v30);

      return v38;
    }
  }

  else
  {
    sub_1000593DC(137101);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10005975C()
{
  result = qword_1006CA388;
  if (!qword_1006CA388)
  {
    type metadata accessor for Library.Databases.ApplePay.Security.Features();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA388);
  }

  return result;
}

uint64_t sub_1000597B4@<X0>(uint64_t a1@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  v4 = v3;
  v104 = a1;
  v105 = a2;
  v6 = type metadata accessor for StatementArguments();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Row();
  v115 = 0;
  v113 = 0u;
  v114 = 0u;
  StatementArguments.init()();
  v11 = static Row.fetchCursor(_:sql:arguments:adapter:)();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
    return sub_10005A68C(&v113);
  }

  else
  {
    v13 = v11;
    (*(v7 + 8))(v10, v6);
    sub_10005A68C(&v113);
    v106 = &_swiftEmptyArrayStorage;
    v15 = v104;
    v14 = v105;
    v108 = v105 + 4;
    v101 = (v104 + 40);
    v102 = a3;
    v103 = v13;
    while (1)
    {
      v16 = sub_10005A3F4();
      if (v4)
      {
      }

      v17 = v16;
      if (!v16)
      {
        break;
      }

      v107 = 0;
      v111 = *(v15 + 16);
      if (v111)
      {
        v18 = 0;
        v110 = *(v14 + 16);
        v19 = v101;
        v20 = &_swiftEmptyDictionarySingleton;
        v109 = v16;
        while (v110 != v18)
        {
          v21 = *(v19 - 1);
          v22 = *v19;
          v23 = v18 >> 31;
          switch(v108[v18])
          {
            case 1:
              v14 = &type metadata for Double;
              *(&v114 + 1) = &type metadata for Double;

              Row._checkIndex(_:file:line:)();
              v24 = Row.sqliteStatement.getter();
              if (v24)
              {
                if (v23)
                {
                  goto LABEL_84;
                }

                v25._rawValue = v24;
                v26 = __chkstk_darwin(v24);
                v14 = (&v100 - 4);
                *(&v100 - 2) = v17;
                *(&v100 - 1) = v18;
                v27 = sqlite3_column_type(v26, v18);
                if (v27 == 5)
                {
                  goto LABEL_93;
                }

                v28 = Double.init(sqliteStatement:index:)(v25, v18);
              }

              else
              {
                v69 = v107;
                Row.fastDecode<A>(_:atUncheckedIndex:)();
                v107 = v69;
                if (v69)
                {
                  goto LABEL_98;
                }

                v28 = *v112;
              }

              *&v113 = v28;
              sub_1000534C8(&v113, v112);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v116 = v20;
              v71 = sub_1000BFB60(v21, v22);
              v73 = v20[2];
              v74 = (v72 & 1) == 0;
              v75 = v73 + v74;
              if (__OFADD__(v73, v74))
              {
                goto LABEL_82;
              }

              v14 = v71;
              v76 = v72;
              sub_1000443DC(&qword_1006CA3D0);
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v75))
              {
                v77 = sub_1000BFB60(v21, v22);
                if ((v76 & 1) != (v78 & 1))
                {
                  goto LABEL_92;
                }

                v14 = v77;
              }

              if (v76)
              {
                goto LABEL_64;
              }

              v20 = v116;
              v116[(v14 >> 6) + 8] |= 1 << v14;
              v79 = (v20[6] + 16 * v14);
              *v79 = v21;
              v79[1] = v22;
              sub_1000534C8(v112, (v20[7] + 32 * v14));
              v80 = v20[2];
              v55 = __OFADD__(v80, 1);
              v56 = v80 + 1;
              if (v55)
              {
                goto LABEL_91;
              }

              goto LABEL_66;
            case 2:
              v14 = &type metadata for Int32;
              *(&v114 + 1) = &type metadata for Int32;

              Row._checkIndex(_:file:line:)();
              v40 = Row.sqliteStatement.getter();
              if (v40)
              {
                if (v23)
                {
                  goto LABEL_86;
                }

                v41 = v40;
                v42 = __chkstk_darwin(v40);
                v14 = (&v100 - 4);
                *(&v100 - 2) = v17;
                *(&v100 - 1) = v18;
                v27 = sqlite3_column_type(v42, v18);
                if (v27 == 5)
                {
                  goto LABEL_93;
                }

                v27 = sqlite3_column_int64(v41, v18);
                if (v27 != v27)
                {
                  goto LABEL_93;
                }
              }

              else
              {
                v81 = v107;
                Row.fastDecode<A>(_:atUncheckedIndex:)();
                v107 = v81;
                if (v81)
                {
                  goto LABEL_98;
                }

                LODWORD(v27) = v112[0];
              }

              LODWORD(v113) = v27;
              sub_1000534C8(&v113, v112);
              v82 = swift_isUniquelyReferenced_nonNull_native();
              v116 = v20;
              v83 = sub_1000BFB60(v21, v22);
              v85 = v20[2];
              v86 = (v84 & 1) == 0;
              v87 = v85 + v86;
              if (__OFADD__(v85, v86))
              {
                goto LABEL_83;
              }

              v14 = v83;
              v88 = v84;
              sub_1000443DC(&qword_1006CA3D0);
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v82, v87))
              {
                v89 = sub_1000BFB60(v21, v22);
                if ((v88 & 1) != (v90 & 1))
                {
                  goto LABEL_92;
                }

                v14 = v89;
              }

              if (v88)
              {
                goto LABEL_64;
              }

              v20 = v116;
              v116[(v14 >> 6) + 8] |= 1 << v14;
              v92 = (v20[6] + 16 * v14);
              *v92 = v21;
              v92[1] = v22;
              sub_1000534C8(v112, (v20[7] + 32 * v14));
              v93 = v20[2];
              v55 = __OFADD__(v93, 1);
              v56 = v93 + 1;
              if (v55)
              {
                goto LABEL_89;
              }

              goto LABEL_66;
            case 3:
              v14 = &type metadata for Int64;
              *(&v114 + 1) = &type metadata for Int64;

              Row._checkIndex(_:file:line:)();
              v29 = Row.sqliteStatement.getter();
              if (v29)
              {
                if (v23)
                {
                  goto LABEL_87;
                }

                v30._rawValue = v29;
                v31 = __chkstk_darwin(v29);
                v14 = (&v100 - 4);
                *(&v100 - 2) = v17;
                *(&v100 - 1) = v18;
                v27 = sqlite3_column_type(v31, v18);
                if (v27 == 5)
                {
                  goto LABEL_93;
                }

                v32 = Int64.init(sqliteStatement:index:)(v30, v18);
              }

              else
              {
                v43 = v107;
                Row.fastDecode<A>(_:atUncheckedIndex:)();
                v107 = v43;
                if (v43)
                {
                  goto LABEL_98;
                }

                v32 = *&v112[0];
              }

              *&v113 = v32;
              sub_1000534C8(&v113, v112);
              v44 = swift_isUniquelyReferenced_nonNull_native();
              v116 = v20;
              v45 = sub_1000BFB60(v21, v22);
              v47 = v20[2];
              v48 = (v46 & 1) == 0;
              v49 = v47 + v48;
              if (__OFADD__(v47, v48))
              {
                goto LABEL_80;
              }

              v14 = v45;
              v50 = v46;
              sub_1000443DC(&qword_1006CA3D0);
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v44, v49))
              {
                v51 = sub_1000BFB60(v21, v22);
                if ((v50 & 1) != (v52 & 1))
                {
                  goto LABEL_92;
                }

                v14 = v51;
              }

              if (v50)
              {
                goto LABEL_64;
              }

              v20 = v116;
              v116[(v14 >> 6) + 8] |= 1 << v14;
              v53 = (v20[6] + 16 * v14);
              *v53 = v21;
              v53[1] = v22;
              sub_1000534C8(v112, (v20[7] + 32 * v14));
              v54 = v20[2];
              v55 = __OFADD__(v54, 1);
              v56 = v54 + 1;
              if (v55)
              {
                goto LABEL_90;
              }

              goto LABEL_66;
            case 4:
              v14 = &type metadata for String;
              *(&v114 + 1) = &type metadata for String;

              Row._checkIndex(_:file:line:)();
              v33 = Row.sqliteStatement.getter();
              if (v33)
              {
                if (v23)
                {
                  goto LABEL_85;
                }

                v34._rawValue = v33;
                v35 = __chkstk_darwin(v33);
                v14 = (&v100 - 4);
                *(&v100 - 2) = v17;
                *(&v100 - 1) = v18;
                v36 = sqlite3_column_type(v35, v18);
                if (v36 == 5)
                {
                  __chkstk_darwin(v36);
                  *(&v100 - 2) = sub_10005A7E8;
                  *(&v100 - 1) = v14;
                  goto LABEL_97;
                }

                v39 = String.init(sqliteStatement:index:)(v34, v18);
                object = v39._object;
                countAndFlagsBits = v39._countAndFlagsBits;
              }

              else
              {
                v57 = v107;
                Row.fastDecode<A>(_:atUncheckedIndex:)();
                v107 = v57;
                if (v57)
                {
                  goto LABEL_98;
                }

                object = *(&v112[0] + 1);
                countAndFlagsBits = *&v112[0];
              }

              *&v113 = countAndFlagsBits;
              *(&v113 + 1) = object;
              sub_1000534C8(&v113, v112);
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v116 = v20;
              v59 = sub_1000BFB60(v21, v22);
              v61 = v20[2];
              v62 = (v60 & 1) == 0;
              v63 = v61 + v62;
              if (__OFADD__(v61, v62))
              {
                goto LABEL_81;
              }

              v14 = v59;
              v64 = v60;
              sub_1000443DC(&qword_1006CA3D0);
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v58, v63))
              {
                v65 = sub_1000BFB60(v21, v22);
                if ((v64 & 1) != (v66 & 1))
                {
                  goto LABEL_92;
                }

                v14 = v65;
              }

              if (v64)
              {
LABEL_64:

                v20 = v116;
                v91 = (v116[7] + 32 * v14);
                sub_100044850(v91);
                sub_1000534C8(v112, v91);
              }

              else
              {
                v20 = v116;
                v116[(v14 >> 6) + 8] |= 1 << v14;
                v67 = (v20[6] + 16 * v14);
                *v67 = v21;
                v67[1] = v22;
                sub_1000534C8(v112, (v20[7] + 32 * v14));
                v68 = v20[2];
                v55 = __OFADD__(v68, 1);
                v56 = v68 + 1;
                if (v55)
                {
                  goto LABEL_88;
                }

LABEL_66:
                v20[2] = v56;
              }

              v17 = v109;
              ++v18;
              v19 += 2;
              if (v111 == v18)
              {
                goto LABEL_70;
              }

              break;
            default:

              sub_1000593DC(137102);
              swift_willThrow();
          }
        }

        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        v27 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_93:
        __chkstk_darwin(v27);
        *(&v100 - 2) = sub_10005A8C4;
        *(&v100 - 1) = v14;
LABEL_97:
        v99 = v107;
        static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)();
        v107 = v99;
LABEL_98:
        swift_unexpectedError();
        __break(1u);
        JUMPOUT(0x10005A3C0);
      }

      v20 = &_swiftEmptyDictionarySingleton;
LABEL_70:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10006284C(0, v106[2] + 1, 1, v106);
        v106 = v97;
      }

      a3 = v102;
      v15 = v104;
      v95 = v106[2];
      v94 = v106[3];
      if (v95 >= v94 >> 1)
      {
        sub_10006284C(v94 > 1, v95 + 1, 1, v106);
        v106 = v98;
      }

      v14 = v105;
      v96 = v106;
      v106[2] = v95 + 1;
      v96[v95 + 4] = v20;
      v4 = v107;
    }

    *a3 = v106;
  }

  return result;
}

uint64_t sub_10005A3D0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  return sub_1000597B4(*(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_10005A3F4()
{
  v2 = *v0;
  if (dispatch thunk of _DatabaseCursor._isDone.getter())
  {
    return 0;
  }

  dispatch thunk of DatabaseCursor.statement.getter();
  type metadata accessor for Row();

  Statement.step<A>(_:)();

  if (!v1)
  {
    result = v4;
    if (!v4)
    {
      dispatch thunk of _DatabaseCursor._isDone.setter();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005A68C(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006CA3C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005A6EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000443DC(&qword_1006CA3D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = a2;
  v7 = enum case for RowKey.columnIndex(_:);
  v8 = type metadata accessor for RowKey();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  sub_1000485F8(v6, 0, 1, v8);

  return RowDecodingContext.init(row:key:)();
}

uint64_t sub_10005A7F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10005A818(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = dispatch thunk of _DatabaseCursor._element(sqliteStatement:)();
  if (!v2)
  {
    return v5;
  }

  return result;
}

uint64_t sub_10005A87C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10005A818(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

Swift::Int sub_10005A8F8(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 + 175002);
  return Hasher._finalize()();
}

Swift::Int sub_10005A960(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10005A9C0(uint64_t a1, void (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  a2(a1);
  sub_10005BCB8();

  return Hasher._finalize()();
}

uint64_t sub_10005AA40()
{
  String.hash(into:)();
}

uint64_t sub_10005AB78(uint64_t a1, char a2)
{
  sub_1000790EC(a2);
  String.hash(into:)();
}

uint64_t sub_10005ABCC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
    case 4:
    case 5:
      sub_10005BCF4();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

Swift::Int sub_10005AD1C(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10005AD78(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 + 175002);
  return Hasher._finalize()();
}

Swift::Int sub_10005ADE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a3(a2);
  sub_10005BCB8();

  return Hasher._finalize()();
}

Swift::Int sub_10005AE34(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

id sub_10005AE78()
{
  v1 = *(v0 + OBJC_IVAR____TtC3asd20ASBiometricKitHelper_currentDevice);
  if (!v1)
  {
    return 0;
  }

  v6 = 0;
  v2 = [v1 lastMatchEventWithError:&v6];
  v3 = v6;
  if (!v2)
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v2;
}

uint64_t sub_10005AF34(uint64_t a1)
{
  if ((a1 - 175002) >= 3)
  {
    return 3;
  }

  else
  {
    return a1 - 175002;
  }
}

uint64_t sub_10005AF80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005AF34(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10005AFAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005AF4C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10005AFD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005BC04();
  v5 = sub_10005BC58();

  return Error<>._code.getter(a1, a2, v4, v5);
}

NSNumber __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ASBiometricKitHelper.timeSinceLastSuccessfulBiometricAuthentication()()
{
  if ((sub_10005B4F8() & 1) == 0)
  {
    sub_10005B738();
    sub_10005BCDC();
    *v7 = 0;
    return swift_willThrow();
  }

  v0 = sub_10005AE78();
  if (!v0)
  {
    sub_10005B738();
    sub_10005BCDC();
    *v8 = 2;
    return swift_willThrow();
  }

  v1 = v0;
  if (![v0 result])
  {
    sub_10005B738();
    sub_10005BCDC();
    *v9 = 1;
    swift_willThrow();

    return result;
  }

  v2 = sub_10005B860([v1 timeStamp]);
  v3 = mach_continuous_time();
  v5 = sub_10005B860(v3) - v2;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v5 > -9.22337204e18)
  {
    if (v5 < 9.22337204e18)
    {
      v6 = [objc_allocWithZone(NSNumber) initWithInteger:v5];

      return v6;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

NSNumber __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ASBiometricKitHelper.tenureOfActiveBiometricTemplate()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  if ((sub_10005B4F8() & 1) == 0)
  {
    sub_10005B738();
    sub_10005BCDC();
    *v19 = 0;
LABEL_12:
    swift_willThrow();
    return v0;
  }

  v9 = sub_10005AE78();
  if (!v9)
  {
    sub_10005B738();
    sub_10005BCDC();
    *v21 = 2;
    goto LABEL_12;
  }

  v10 = v9;
  if (![v9 result] || (v11 = objc_msgSend(v10, "matchedIdentity")) == 0)
  {
    sub_10005B738();
    sub_10005BCDC();
    *v20 = 1;
    swift_willThrow();

    return v0;
  }

  v12 = v11;
  static Date.now.getter();
  v13 = [v12 creationTime];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v15 = v14;
  v16 = v14;
  v17 = *(v2 + 8);
  v17(v6, v1);
  result.super.super.isa = (v17)(v8, v1);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v15 < 9.22337204e18)
  {
    v0 = [objc_allocWithZone(NSNumber) initWithInteger:v15];

    return v0;
  }

LABEL_16:
  __break(1u);
  return result;
}

id sub_10005B44C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

uint64_t sub_10005B4F8()
{
  if (*(v0 + OBJC_IVAR____TtC3asd20ASBiometricKitHelper_currentDevice))
  {
    return 1;
  }

  v2 = v0;
  v14 = OBJC_IVAR____TtC3asd20ASBiometricKitHelper_currentDevice;
  v3 = [objc_opt_self() availableDevices];
  sub_1000591B0(0, &qword_1006CA438, BKDeviceDescriptor_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_1000591F0(v4);
  for (i = 0; v5 != i; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_18;
    }

    if ([v7 type] == 1 || objc_msgSend(v8, "type") == 2)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v9 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  if (sub_1000591F0(_swiftEmptyArrayStorage) == 1)
  {
    sub_100059210(0, (_swiftEmptyArrayStorage & 0xC000000000000001) == 0, _swiftEmptyArrayStorage);
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      goto LABEL_22;
    }

    v10 = _swiftEmptyArrayStorage[4];
LABEL_18:
    v11 = v10;

    sub_1000591B0(0, &qword_1006CA440, BKDevice_ptr);
    v12 = sub_10005B78C(v11);
    v13 = *(v2 + v14);
    *(v2 + v14) = v12;

    return 1;
  }

  return 0;
}

unint64_t sub_10005B738()
{
  result = qword_1006CA3E0;
  if (!qword_1006CA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA3E0);
  }

  return result;
}

id sub_10005B78C(void *a1)
{
  v6 = 0;
  v2 = [swift_getObjCClassFromMetadata() deviceWithDescriptor:a1 error:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

double sub_10005B860(unint64_t a1)
{
  v5 = 0;
  mach_timebase_info(&v5);
  LODWORD(v2) = v5.denom;
  LODWORD(v3) = v5.numer;
  return a1 * v3 / v2 / 1000000000.0;
}

id ASBiometricKitHelper.init()()
{
  v1 = OBJC_IVAR____TtC3asd20ASBiometricKitHelper_manager;
  *&v0[v1] = [objc_opt_self() manager];
  *&v0[OBJC_IVAR____TtC3asd20ASBiometricKitHelper_currentDevice] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ASBiometricKitHelper();
  return objc_msgSendSuper2(&v3, "init");
}

id ASBiometricKitHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASBiometricKitHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for ASBiometricKitHelper.ASBKError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ASBiometricKitHelper.ASBKError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10005BB74);
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

unint64_t sub_10005BBB0()
{
  result = qword_1006CA420;
  if (!qword_1006CA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA420);
  }

  return result;
}

unint64_t sub_10005BC04()
{
  result = qword_1006CA428;
  if (!qword_1006CA428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA428);
  }

  return result;
}

unint64_t sub_10005BC58()
{
  result = qword_1006CA430;
  if (!qword_1006CA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA430);
  }

  return result;
}

uint64_t sub_10005BCB8()
{

  return String.hash(into:)();
}

uint64_t sub_10005BCDC()
{

  return swift_allocError();
}

uint64_t sub_10005BD00()
{
  v0 = sub_1000443DC(&qword_1006CA4A0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  sub_100046E08(v4, static RavioliConstants.ravioliUUID);
  v5 = sub_100046E6C(v4, static RavioliConstants.ravioliUUID);
  UUID.init(uuidString:)();
  result = sub_100046EA4(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t RavioliConstants.ravioliUUID.unsafeMutableAddressor()
{
  if (qword_1006C97A8 != -1)
  {
    sub_10005D910();
  }

  v0 = type metadata accessor for UUID();

  return sub_100046E6C(v0, static RavioliConstants.ravioliUUID);
}

uint64_t static RavioliConstants.ravioliUUID.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006C97A8 != -1)
  {
    sub_10005D910();
  }

  v2 = type metadata accessor for UUID();
  v3 = sub_100046E6C(v2, static RavioliConstants.ravioliUUID);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10005BFFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684366707 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65646F4368747561 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10005C114(char a1)
{
  if (!a1)
  {
    return 1684366707;
  }

  if (a1 == 1)
  {
    return 0x65646F4368747561;
  }

  return 0x6E6F6973726576;
}

uint64_t sub_10005C164@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000443DC(&qword_1006CA4C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  sub_100044728(a1, a1[3]);
  sub_10005D6A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100044850(a1);
  }

  v24 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v12;
  v23 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v13;
  v22 = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_100044850(a1);
  v16 = v21;
  *a2 = v11;
  a2[1] = v16;
  v17 = v20;
  a2[2] = v19;
  a2[3] = v17;
  a2[4] = v14;
  return result;
}

uint64_t sub_10005C3A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469726765746E69 && a2 == 0xEE006B6365684379)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10005C478(char a1)
{
  if (a1)
  {
    return 0x7469726765746E69;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_10005C4B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000443DC(&qword_1006CA488);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  sub_100044728(a1, a1[3]);
  sub_10005D160();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100044850(a1);
  }

  LOBYTE(v20) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v25 = 1;
  sub_10005D1B4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  v14 = v21;
  v17 = v22;
  v16 = v23;
  v19 = v24;

  sub_100044850(a1);

  *a2 = v11;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v14;
  a2[4] = v17;
  a2[5] = v16;
  a2[6] = v19;
  return result;
}

uint64_t sub_10005C714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005BFFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005C73C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10005C10C();
  *a1 = result;
  return result;
}

uint64_t sub_10005C764(uint64_t a1)
{
  v2 = sub_10005D6A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005C7A0(uint64_t a1)
{
  v2 = sub_10005D6A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005C7DC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005C164(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_10005C82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005C3A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005C854(uint64_t a1)
{
  v2 = sub_10005D160();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005C890(uint64_t a1)
{
  v2 = sub_10005D160();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005C8CC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005C4B4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t RavioliVerifier.verifyAndExtract(responseData:)(uint64_t a1)
{
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10005CB58();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v1)
  {
    a1 = v21;
    if (v22 == 1 && (, v6 = Data.init(base64Encoded:options:)(), v8 = v7, , v8 >> 60 != 15))
    {

      v12 = Data.init(base64Encoded:options:)();
      v14 = v13;

      if (v14 >> 60 == 15)
      {
      }

      else
      {
        v23 = Data.init(base64Encoded:options:)();
        v16 = v15;

        if (v16 >> 60 != 15)
        {
          a1 = sub_10005CC00(v23, v16, v6, v8, v12, v14);
          sub_10004489C(v23, v16);
          v19 = sub_10005D930();
          sub_10004489C(v19, v20);
          sub_10004489C(v6, v8);
          return a1;
        }

        v17 = sub_10005D930();
        sub_10004489C(v17, v18);
      }

      sub_10004489C(v6, v8);
    }

    else
    {
    }

    sub_10005CBAC();
    v9 = swift_allocError();
    sub_10005D93C(v9, v10);
  }

  return a1;
}

unint64_t sub_10005CB58()
{
  result = qword_1006CA448;
  if (!qword_1006CA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA448);
  }

  return result;
}

unint64_t sub_10005CBAC()
{
  result = qword_1006CA450;
  if (!qword_1006CA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA450);
  }

  return result;
}

uint64_t sub_10005CC00(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  sub_100046D38(a5, a6);
  v10 = sub_10005D270(a5, a6);
  v11 = sub_10005D930();
  sub_100046D38(v11, v12);
  v13 = sub_10005D930();
  v15 = sub_10005D270(v13, v14);
  sub_100046D38(a1, a2);
  v16 = sub_10005D270(a1, a2);

  v17 = Data.count.getter();
  v18 = swift_slowAlloc();
  v19 = Data.count.getter();
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v19))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v16[2];

  if (HIDWORD(v20))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_10005D930();
  v21 = Data.count.getter();
  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!HIDWORD(v21))
  {
    v26 = noErr.getter();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  sub_10006384C(v10);
LABEL_7:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10006384C(v16);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10006384C(v15);
  }

  sub_1002C9B10();
  if (v26 == noErr.getter())
  {
    for (i = 0; v17 != i; ++i)
    {
      if (!*(v18 + i))
      {
        goto LABEL_18;
      }
    }

    i = v17;
LABEL_18:
    v17 = sub_100044FFC(0, i, v18, v17);
  }

  else
  {
    sub_10005CBAC();
    v23 = swift_allocError();
    sub_10005D93C(v23, v24);
  }

  return v17;
}

uint64_t getEnumTagSinglePayload for RavioliVerifier.CCVerificationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RavioliVerifier.CCVerificationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x10005D034);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10005D06C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005D0AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005D10C()
{
  result = qword_1006CA480;
  if (!qword_1006CA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA480);
  }

  return result;
}

unint64_t sub_10005D160()
{
  result = qword_1006CA490;
  if (!qword_1006CA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA490);
  }

  return result;
}

unint64_t sub_10005D1B4()
{
  result = qword_1006CA498;
  if (!qword_1006CA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA498);
  }

  return result;
}

void *sub_10005D208(uint64_t a1, uint64_t a2)
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

  sub_1000443DC(&qword_1006CA2E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

id *sub_10005D270(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x10005D3F4);
      }

      v9 = HIDWORD(a1) - a1;
LABEL_6:
      if (!v9)
      {
        goto LABEL_9;
      }

      v12 = sub_10005D208(v9, 0);
      v13 = Data._copyContents(initializing:)();
      sub_1000448B0(a1, a2);
      (*(v5 + 8))(v8, v4);
      if (v13 != v9)
      {
        __break(1u);
LABEL_9:
        sub_1000448B0(a1, a2);
        return _swiftEmptyArrayStorage;
      }

      return v12;
    case 2uLL:
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
      v9 = v10 - v11;
      if (!__OFSUB__(v10, v11))
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_9;
    default:
      v9 = BYTE6(a2);
      goto LABEL_6;
  }
}

_BYTE *storeEnumTagSinglePayload for RavioliVerifier.ResponseDTO.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x10005D4D0);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10005D508(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005D548(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10005D5A4()
{
  result = qword_1006CA4A8;
  if (!qword_1006CA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4A8);
  }

  return result;
}

unint64_t sub_10005D5FC()
{
  result = qword_1006CA4B0;
  if (!qword_1006CA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4B0);
  }

  return result;
}

unint64_t sub_10005D654()
{
  result = qword_1006CA4B8;
  if (!qword_1006CA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4B8);
  }

  return result;
}

unint64_t sub_10005D6A8()
{
  result = qword_1006CA4C8;
  if (!qword_1006CA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RavioliVerifier.IntegrityCheckJSON.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10005D7C8);
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

unint64_t sub_10005D804()
{
  result = qword_1006CA4D0;
  if (!qword_1006CA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4D0);
  }

  return result;
}

unint64_t sub_10005D85C()
{
  result = qword_1006CA4D8;
  if (!qword_1006CA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4D8);
  }

  return result;
}

unint64_t sub_10005D8B4()
{
  result = qword_1006CA4E0;
  if (!qword_1006CA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4E0);
  }

  return result;
}

uint64_t sub_10005D910()
{

  return swift_once();
}

uint64_t sub_10005D93C(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t sub_10005D968(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000006449;
  v3 = 0x776F6C666B726F77;
  v4 = a1;
  v5 = 0x776F6C666B726F77;
  v6 = 0xEA00000000006449;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000016;
      v6 = 0x80000001005A3280;
      break;
    case 2:
      v5 = 0x636E657571657266;
      v6 = 0xE900000000000079;
      break;
    case 3:
      v5 = 0x53676E69646E6962;
      v7 = 0x656372756FLL;
      goto LABEL_6;
    case 4:
      v5 = 0x69646E6F63657270;
      v7 = 0x736E6F6974;
LABEL_6:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000016;
      v2 = 0x80000001005A3280;
      break;
    case 2:
      v3 = 0x636E657571657266;
      v2 = 0xE900000000000079;
      break;
    case 3:
      v3 = 0x53676E69646E6962;
      v8 = 0x656372756FLL;
      goto LABEL_12;
    case 4:
      v3 = 0x69646E6F63657270;
      v8 = 0x736E6F6974;
LABEL_12:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10005DB44(char a1, char a2)
{
  v3 = sub_1000790EC(a1);
  v5 = v4;
  if (v3 == sub_1000790EC(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_10005DBC8(unsigned __int8 a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25202;
  v5 = a1;
  v6 = "cancelScheduledOperations";
  switch(v5)
  {
    case 1:
      v4 = sub_1000473C0() | 0x6464416800000000;
      v3 = 0xEF67614273736572;
      break;
    case 2:
      v4 = 0x6361437261656C63;
      v7 = 7562600;
      goto LABEL_6;
    case 3:
      v4 = sub_1000473C0() | 0x6E6F436800000000;
      v7 = 6777190;
LABEL_6:
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 4:
      v4 = sub_1000473C0() | 0x6F72506800000000;
      v3 = 0xED000073656C6966;
      break;
    case 5:
      v4 = sub_1000473C0() | 0x7265536800000000;
      v3 = 0xEE00676142726576;
      break;
    case 6:
      v4 = 0xD000000000000019;
      v3 = 0x80000001005A3250;
      break;
    default:
      break;
  }

  v8 = 0xE200000000000000;
  v9 = 25202;
  switch(a2)
  {
    case 1:
      sub_1000473CC();
      v9 = v10 | 0x6464416800000000;
      v8 = 0xEF67614273736572;
      break;
    case 2:
      v9 = 0x6361437261656C63;
      v12 = 7562600;
      goto LABEL_14;
    case 3:
      sub_1000473CC();
      v9 = v13 | 0x6E6F436800000000;
      v12 = 6777190;
LABEL_14:
      v8 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 4:
      sub_1000473CC();
      v9 = v11 | 0x6F72506800000000;
      v8 = 0xED000073656C6966;
      break;
    case 5:
      sub_1000473CC();
      v9 = v14 | 0x7265536800000000;
      v8 = 0xEE00676142726576;
      break;
    case 6:
      v9 = 0xD000000000000019;
      v8 = (v6 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v4 == v9 && v3 == v8)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

id ASFinanceStoreHelper.init()()
{
  v1 = OBJC_IVAR____TtC3asd20ASFinanceStoreHelper_errorDomain;
  sub_1000591B0(0, &qword_1006CB560, NSString_ptr);
  *&v0[v1] = sub_100057520();
  type metadata accessor for FinanceStore();
  *&v0[OBJC_IVAR____TtC3asd20ASFinanceStoreHelper_store] = static FinanceStore.shared.getter();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ASFinanceStoreHelper();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10005DF64(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC3asd20ASFinanceStoreHelper_errorDomain);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (a1)
  {
    v7 = 174004;
  }

  else
  {
    v7 = 174002;
  }

  v8 = objc_allocWithZone(NSError);
  return sub_100062458(v4, v6, v7, 0);
}

uint64_t sub_10005DFE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10005E038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

Class sub_10005E08C(char a1)
{
  v3 = Dictionary.init(dictionaryLiteral:)();
  if (a1)
  {
    *(&v67 + 1) = type metadata accessor for Date();
    sub_10005351C(&v66);
    InternalTransaction.transactionDate.getter();
    sub_1000534C8(&v66, v65);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000655E0();
    sub_10006A978(v7, 25716, 0xE200000000000000);
    v3 = v62;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = (v1 + *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction() + 24));
  if (v8[2])
  {
    v9 = sub_1000BFB60(108, 0xE100000000000000);
    if (v10)
    {
      v11 = v9;
      swift_isUniquelyReferenced_nonNull_native();
      *v65 = v3;
      v3 = *(v3 + 24);
      v12 = sub_1000443DC(&qword_1006CA3D0);
      v20 = sub_100065AF8(v12, v13, v14, v15, v16, v17, v18, v19, v59, v62, v65[0]);
      sub_100065B18(v20, v21, v22, v23, v24, v25, v26, v27, v60, v63, *v65);
      sub_1000534C8((*(v3 + 56) + 32 * v11), &v66);
      sub_100065A64();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v66 = 0u;
      v67 = 0u;
    }

    sub_10004D2E8(&v66, &qword_1006CA130);
    if ((a1 & 4) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v28 = *v8;
    v29 = v8[1];
    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;
    Double.write<A>(to:)();
    v30._countAndFlagsBits = 44;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    Double.write<A>(to:)();
    *(&v67 + 1) = &type metadata for String;
    sub_1000534C8(&v66, v65);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000655E0();
    sub_10006A978(v31, 108, 0xE100000000000000);
    v3 = v62;
    if ((a1 & 4) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_4:
  v4 = (v1 + *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction() + 20));
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    *(&v67 + 1) = &type metadata for Int;
    *&v66 = v5;
    sub_1000534C8(&v66, v65);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000655E0();
    sub_10006A978(v6, 100, 0xE100000000000000);
    v3 = v62;
  }

LABEL_14:
  if ((a1 & 8) == 0)
  {
    goto LABEL_19;
  }

  v32 = (v1 + *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction() + 32));
  if ((v32[1] & 1) == 0)
  {
    v53 = *v32;
    *(&v67 + 1) = &type metadata for UInt64;
    *&v66 = v53;
    sub_1000534C8(&v66, v65);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000655E0();
    sub_10006A978(v54, 29556, 0xE200000000000000);
LABEL_19:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:
    v55 = *(v1 + *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction() + 28));
    *(&v67 + 1) = &type metadata for UInt8;
    LOBYTE(v66) = v55;
    sub_1000534C8(&v66, v65);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000655E0();
    sub_10006A978(v56, 29804, 0xE200000000000000);
    goto LABEL_21;
  }

  v33 = sub_1000BFB60(29556, 0xE200000000000000);
  if (v34)
  {
    v35 = v33;
    swift_isUniquelyReferenced_nonNull_native();
    *v65 = v3;
    v36 = *(v3 + 24);
    v37 = sub_1000443DC(&qword_1006CA3D0);
    v45 = sub_100065AF8(v37, v38, v39, v40, v41, v42, v43, v44, v59, v62, v65[0]);
    sub_100065B18(v45, v46, v47, v48, v49, v50, v51, v52, v61, v64, *v65);
    sub_1000534C8((*(v36 + 56) + 32 * v35), &v66);
    sub_100065A64();
    _NativeDictionary._delete(at:)();
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  sub_10004D2E8(&v66, &qword_1006CA130);
  if ((a1 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return isa;
}

uint64_t sub_10005E454()
{
  sub_1000657D4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(sub_1000443DC(&qword_1006CA6E8) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for MapsInsight();
  v1[7] = v5;
  sub_1000474C0(v5);
  v1[8] = v6;
  v8 = *(v7 + 64);
  v1[9] = sub_100065948();
  v9 = *(*(sub_1000443DC(&qword_1006CA6F0) - 8) + 64);
  v1[10] = sub_100065948();
  v10 = type metadata accessor for ApplePayTransactionInsight.Location();
  v1[11] = v10;
  sub_1000474C0(v10);
  v1[12] = v11;
  v13 = *(v12 + 64);
  v1[13] = sub_100065948();
  v14 = type metadata accessor for TransactionType();
  v1[14] = v14;
  sub_1000474C0(v14);
  v1[15] = v15;
  v17 = *(v16 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v18 = type metadata accessor for ApplePayTransactionInsight();
  v1[18] = v18;
  sub_1000474C0(v18);
  v1[19] = v19;
  v21 = *(v20 + 64);
  v1[20] = sub_100065948();
  v22 = type metadata accessor for Transaction.Insight();
  v1[21] = v22;
  sub_1000474C0(v22);
  v1[22] = v23;
  v25 = *(v24 + 64);
  v1[23] = sub_100065948();
  v26 = type metadata accessor for UUID();
  v1[24] = v26;
  sub_1000474C0(v26);
  v1[25] = v27;
  v29 = *(v28 + 64);
  v1[26] = sub_100065948();
  v30 = sub_100065864();

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_10005E6F0()
{
  sub_1000657D4();
  v1 = v0[26];
  v2 = v0[4];
  InternalTransaction.id.getter();
  v3 = async function pointer to FinanceStore.insightsForTransaction(withID:)[1];
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_10005E794;
  v5 = v0[26];
  v6 = v0[3];

  return FinanceStore.insightsForTransaction(withID:)(v5);
}

uint64_t sub_10005E794()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2[27];
  v4 = v2[26];
  v5 = v2[25];
  v6 = v2[24];
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  *(v10 + 224) = v9;
  *(v10 + 232) = v0;

  v11 = *(v5 + 8);
  v12 = sub_100065A4C();
  v13(v12);
  sub_1000658F8();

  return _swift_task_switch(v14, v15, v16);
}

void sub_10005E8F0()
{
  v1 = *(v0 + 224);
  v143 = *(v1 + 16);
  if (!v143)
  {
LABEL_31:

LABEL_32:
    sub_1000658CC();

    sub_10006574C();

    v97();
    return;
  }

  v2 = 0;
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 120);
  v6 = *(v0 + 64);
  v142 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v141 = enum case for Transaction.Insight.maps(_:);
  v140 = enum case for Transaction.Insight.bank(_:);
  HIDWORD(v135) = enum case for Transaction.Insight.applePay(_:);
  v137 = v3 + 8;
  v131 = (v4 + 32);
  HIDWORD(v130) = enum case for TransactionType.pointOfSale(_:);
  v128 = (v5 + 8);
  v129 = (v5 + 104);
  v132 = (v4 + 8);
  v138 = (v6 + 8);
  v139 = (v6 + 32);
  v136 = *(v0 + 224);
  while (1)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v7 = *(v0 + 184);
    v8 = *(v0 + 168);
    (*(v3 + 16))(v7, v142 + *(v3 + 72) * v2, v8);
    v9 = (*(v3 + 88))(v7, v8);
    if (v9 != v141)
    {
      break;
    }

    v10 = *(v0 + 184);
    v11 = *(v0 + 168);
    v12 = *(v0 + 72);
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);
    v15 = sub_100065AA4();
    v16(v15);
    (*v139)(v12, v10, v13);
    MapsInsight.merchant.getter();
    v17 = type metadata accessor for MapsMerchant();
    if (sub_100046EA4(v14, 1, v17) == 1)
    {
      v24 = *(v0 + 48);
      sub_100065A70(*(v0 + 72), *(v0 + 56), v18, v19, v20, v21, v22, v23, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
      v25();
      sub_10004D2E8(v24, &qword_1006CA6E8);
    }

    else
    {
      v33 = *(v0 + 48);
      v34 = MapsMerchant.locationLatitude.getter();
      v36 = v35;
      v37 = *(*(v17 - 8) + 8);
      v37(v33, v17);
      v44 = *(v0 + 72);
      if (v36)
      {
        goto LABEL_10;
      }

      v63 = *(v0 + 40);
      v64 = *(v0 + 72);
      MapsInsight.merchant.getter();
      if (sub_100046EA4(v63, 1, v17) == 1)
      {
        v71 = *(v0 + 40);
        sub_100065A70(*(v0 + 72), *(v0 + 56), v65, v66, v67, v68, v69, v70, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
        v72();
        v61 = v71;
        v62 = &qword_1006CA6E8;
LABEL_19:
        sub_10004D2E8(v61, v62);
LABEL_20:
        v1 = v136;
        goto LABEL_23;
      }

      v73 = *(v0 + 40);
      v74 = MapsMerchant.locationLongitude.getter();
      v76 = v75;
      v37(v73, v17);
      if (v76)
      {
        v44 = *(v0 + 72);
LABEL_10:
        sub_100065A70(v44, *(v0 + 56), v38, v39, v40, v41, v42, v43, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
        v45();
        goto LABEL_20;
      }

      v77 = *(v0 + 32);
      v78 = *(v0 + 16);
      v79 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction();
      v80 = v77 + v79[6];
      *v80 = v34;
      *(v80 + 8) = v74;
      *(v80 + 16) = 0;
      v81 = [objc_allocWithZone(CLLocation) initWithLatitude:*&v34 longitude:*&v74];
      [v78 distanceFromLocation:v81];
      v83 = v82;
      v84 = v82;

      v1 = v136;
      if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_46;
      }

      if (v83 <= -9.22337204e18)
      {
        goto LABEL_47;
      }

      if (v83 >= 9.22337204e18)
      {
        goto LABEL_48;
      }

      v91 = *(v0 + 72);
      v92 = *(v0 + 56);
      v93 = *(v0 + 32);
      v94 = v93 + v79[5];
      *v94 = v83;
      *(v94 + 8) = 0;
      sub_100065A70(v91, v92, v85, v86, v87, v88, v89, v90, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
      v95();
      *(v93 + v79[7]) = 0;
    }

LABEL_23:
    if (v143 == ++v2)
    {
      v96 = *(v0 + 224);
      goto LABEL_31;
    }
  }

  if (v9 == v140)
  {
    v26 = *(v0 + 184);
    v27 = *(v0 + 168);
    v28 = *(v0 + 32);
    v29 = v28 + *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction() + 32);
    *v29 = 4;
    *(v29 + 8) = 0;
    v30 = sub_100065AA4();
    v32 = v27;
LABEL_22:
    v31(v30, v32);
    goto LABEL_23;
  }

  v46 = *(v0 + 184);
  v47 = *(v0 + 168);
  if (v9 != HIDWORD(v135))
  {
    v30 = sub_100065AA4();
    goto LABEL_22;
  }

  v48 = *(v0 + 160);
  v49 = *(v0 + 136);
  v50 = *(v0 + 144);
  v51 = *(v0 + 128);
  v52 = *(v0 + 112);
  v133 = *(v0 + 80);
  v134 = *(v0 + 88);
  v53 = *(v0 + 32);
  v54 = sub_100065AA4();
  v55(v54);
  (*v131)(v48, v46, v50);
  InternalTransaction.transactionType.getter();
  (*v129)(v51, HIDWORD(v130), v52);
  sub_100065474();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v56 = *v128;
  (*v128)(v51, v52);
  v56(v49, v52);
  if (*(v0 + 240) == *(v0 + 242))
  {
    v57 = 1;
  }

  else
  {
    v57 = 2;
  }

  v58 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction();
  v59 = v53 + v58[8];
  *v59 = v57;
  *(v59 + 8) = 0;
  ApplePayTransactionInsight.location.getter();
  if (sub_100046EA4(v133, 1, v134) == 1)
  {
    v60 = *(v0 + 80);
    (*v132)(*(v0 + 160), *(v0 + 144));
    v61 = v60;
    v62 = &unk_1006CA6F0;
    goto LABEL_19;
  }

  v98 = *(v0 + 224);
  v99 = *(v0 + 160);
  v100 = *(v0 + 144);
  v102 = *(v0 + 96);
  v101 = *(v0 + 104);
  v103 = *(v0 + 80);
  v104 = *(v0 + 88);
  v105 = *(v0 + 32);
  v106 = *(v0 + 16);

  (*(v102 + 32))(v101, v103, v104);
  ApplePayTransactionInsight.Location.latitude.getter();
  v108 = v107;
  ApplePayTransactionInsight.Location.longitude.getter();
  v109 = v105 + v58[6];
  *v109 = v108;
  *(v109 + 8) = v110;
  *(v109 + 16) = 0;
  v111 = ApplePayTransactionInsight.isCoarseLocation.getter();
  if (v111)
  {
    v112 = 1;
  }

  else
  {
    v112 = 2;
  }

  if (v111 == 2)
  {
    v113 = 0;
  }

  else
  {
    v113 = v112;
  }

  *(v105 + v58[7]) = v113;
  ApplePayTransactionInsight.Location.latitude.getter();
  v115 = v114;
  ApplePayTransactionInsight.Location.longitude.getter();
  v117 = [objc_allocWithZone(CLLocation) initWithLatitude:v115 longitude:v116];
  [v106 distanceFromLocation:v117];
  v119 = v118;
  v120 = v118;

  v121 = *(v102 + 8);
  v122 = sub_1000657E0();
  v123(v122);
  v124 = *v132;
  v125 = sub_100065A4C();
  v126(v125);
  if ((*&v120 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_49;
  }

  if (v119 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v119 < 9.22337204e18)
  {
    v127 = *(v0 + 32) + v58[5];
    *v127 = v119;
    *(v127 + 8) = 0;
    goto LABEL_32;
  }

LABEL_51:
  __break(1u);
}

uint64_t sub_10005F0B8()
{
  sub_1000658CC();

  sub_10006574C();
  v2 = *(v0 + 232);

  return v1();
}

uint64_t ASFinanceStoreHelper.queryTransactions(startDateOffset:endDateOffset:transactionSources:locationType:locationFilterDistance:lat:lon:maxCount:sortOrder:sortByAttributes:attributes:)()
{
  sub_1000657D4();
  *(v1 + 112) = v21;
  *(v1 + 120) = v0;
  *(v1 + 80) = v19;
  *(v1 + 96) = v20;
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction();
  *(v1 + 128) = v10;
  sub_1000474C0(v10);
  *(v1 + 136) = v11;
  v13 = *(v12 + 64) + 15;
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  v14 = sub_100065864();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10005F26C()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[10];
  sub_100060EF8(v0[7], v0[8]);
  v0[22] = v4;
  v0[23] = v5;
  sub_100065874();
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_10005F398;
  v7 = v0[15];
  v8 = v0[12];
  sub_1000657A4();

  return sub_10006100C();
}

uint64_t sub_10005F398()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v6 = *(v5 + 192);
  *v4 = *v1;
  v3[25] = v7;
  v3[26] = v0;

  if (v0)
  {
    v9 = v3[20];
    v8 = v3[21];
    v12 = v3 + 18;
    v10 = v3[18];
    v11 = v12[1];

    sub_10006574C();

    return v13();
  }

  else
  {
    v15 = sub_100065864();

    return _swift_task_switch(v15, v16, v17);
  }
}

void sub_10005F4E0()
{
  v54 = v0;
  v3 = *(v0 + 200);
  *(v0 + 216) = [objc_allocWithZone(CLLocation) initWithLatitude:*(v0 + 176) longitude:*(v0 + 184)];
  v4 = *(v3 + 16);
  *(v0 + 224) = v4;
  if (!v4)
  {
    v8 = *(v0 + 208);
    v9 = _swiftEmptyArrayStorage;
LABEL_13:
    v34 = *(v0 + 200);
    v35 = *(v0 + 104);

    if (v35 != 1)
    {
      goto LABEL_17;
    }

    sub_1000656A8();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_15:
      sub_10006576C();
      if (v8)
      {
        sub_100065990();
        return;
      }

LABEL_17:
      v36 = v9[2];
      if (v36)
      {
        v37 = *(v0 + 136);
        v53 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v38 = *(v37 + 80);
        sub_1000658C0();
        v40 = v9 + v39;
        v41 = *(v37 + 72);
        do
        {
          sub_100065AD8();
          LOBYTE(v37) = sub_10005E08C(v37);
          sub_10006174C(&v53);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v42 = v53[2];
          sub_100065A40();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          sub_100065A40();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v40 += v41;
          --v36;
        }

        while (v36);
      }

      else
      {
      }

      v47 = *(v0 + 160);
      v46 = *(v0 + 168);
      v49 = *(v0 + 144);
      v48 = *(v0 + 152);

      sub_100065758();
      sub_100065990();

      __asm { BRAA            X2, X16 }
    }

LABEL_29:
    sub_10006387C(v9);
    v9 = v52;
    goto LABEL_15;
  }

  *(v0 + 232) = OBJC_IVAR____TtC3asd20ASFinanceStoreHelper_store;
  v5 = type metadata accessor for InternalTransaction();
  v6 = 0;
  *(v0 + 240) = v5;
  v7 = *(v5 - 8);
  *(v0 + 248) = v7;
  *(v0 + 288) = *(v7 + 80);
  v8 = *(v0 + 208);
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_100065A7C(v6);
    if (v11)
    {
      __break(1u);
      goto LABEL_29;
    }

    v12 = sub_1000656E0(v10);
    v13(v12);
    sub_10006565C();
    if (v14 || (v1 & 0xE) != 0)
    {
      break;
    }

    v15 = *(v0 + 264);
    sub_1000617A8(*(v0 + 168), *(v0 + 160));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v0 + 264);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000656C4();
      sub_100065A58();
      sub_100062860(v18, v19, v20, v21, &qword_1006CA6E0, v22, v23, v24);
      v9 = v25;
    }

    v17 = v9[2];
    v1 = v17 + 1;
    if (v17 >= v9[3] >> 1)
    {
      sub_100065A58();
      sub_100062860(v26, v27, v28, v29, &qword_1006CA6E0, v30, v31, v32);
      v9 = v33;
    }

    sub_100065A08();
    sub_100065804();
    if (v3 == v2)
    {
      goto LABEL_13;
    }

    v6 = *(v0 + 256) + 1;
  }

  v43 = *(*(v0 + 120) + *(v0 + 232));
  v44 = swift_task_alloc();
  *(v0 + 272) = v44;
  *v44 = v0;
  sub_100065618(v44);
  sub_100065990();

  sub_10005E454();
}

uint64_t sub_10005F8A4()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  v3[35] = v0;

  if (v0)
  {
    v9 = v3[33];
    v10 = v3[25];
  }

  sub_1000658F8();

  return _swift_task_switch(v11, v12, v13);
}

void sub_10005F9B0()
{
  v49 = v1;
  v3 = *(v1 + 280);
  do
  {
    v4 = *(v1 + 264);
    sub_1000617A8(*(v1 + 168), *(v1 + 160));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v1 + 264);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000656C4();
      sub_100065A58();
      sub_100062860(v13, v14, v15, v16, &qword_1006CA6E0, v17, v18, v19);
      v6 = v20;
    }

    v7 = *(v6 + 16);
    if (v7 >= *(v6 + 24) >> 1)
    {
      sub_100065A58();
      sub_100062860(v21, v22, v23, v24, &qword_1006CA6E0, v25, v26, v27);
      v6 = v28;
    }

    sub_100065A08();
    sub_100065804();
    if (v0 == v2)
    {
      v29 = *(v1 + 200);
      v30 = *(v1 + 104);

      if (v30 != 1)
      {
        goto LABEL_18;
      }

      sub_1000656A8();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_13:
        sub_10006576C();
        if (v3)
        {
          sub_10006592C();
          return;
        }

LABEL_18:
        v34 = *(v6 + 16);
        if (v34)
        {
          v35 = *(v1 + 136);
          v48 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v36 = *(v35 + 80);
          sub_1000658C0();
          v38 = v6 + v37;
          v39 = *(v35 + 72);
          do
          {
            sub_100065AD8();
            LOBYTE(v35) = sub_10005E08C(v35);
            sub_10006174C(&v48);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v40 = v48[2];
            sub_100065A40();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            sub_100065A40();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v38 += v39;
            --v34;
          }

          while (v34);
        }

        else
        {
        }

        v42 = *(v1 + 160);
        v41 = *(v1 + 168);
        v44 = *(v1 + 144);
        v43 = *(v1 + 152);

        sub_100065758();
        sub_10006592C();

        __asm { BRAA            X2, X16 }
      }

LABEL_27:
      sub_10006387C(v6);
      v6 = v47;
      goto LABEL_13;
    }

    sub_100065A7C(*(v1 + 256) + 1);
    if (v9)
    {
      __break(1u);
      goto LABEL_27;
    }

    v10 = sub_1000656E0(v8);
    v11(v10);
    sub_10006565C();
  }

  while (!v12 && ((v7 + 1) & 0xE) == 0);
  v31 = *(*(v1 + 120) + *(v1 + 232));
  v32 = swift_task_alloc();
  *(v1 + 272) = v32;
  *v32 = v1;
  sub_100065618();
  sub_10006592C();

  sub_10005E454();
}

uint64_t sub_10005FCD8()
{
  sub_1000657EC();
  v1 = *(v0 + 168);

  sub_10006174C(v1);
  v2 = *(v0 + 280);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);

  sub_10006574C();

  return v7();
}

BOOL sub_10005FD6C(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction() + 20);
  v5 = (a1 + v4);
  if (*(a1 + v4 + 8))
  {
    return 0;
  }

  v7 = a2 + v4;
  return (*(v7 + 8) & 1) != 0 || *v5 < *v7;
}

BOOL sub_10005FDD4(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction() + 20);
  v5 = (a1 + v4);
  if (*(a1 + v4 + 8))
  {
    return 0;
  }

  v7 = a2 + v4;
  return (*(v7 + 8) & 1) != 0 || *v7 < *v5;
}

uint64_t sub_10005FF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *a13)
{
  v13[2] = a13;
  v13[3] = _Block_copy(a12);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13[4] = v14;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13[5] = v15;
  a13;
  v16 = swift_task_alloc();
  v13[6] = v16;
  *v16 = v13;
  v16[1] = sub_10006006C;

  return ASFinanceStoreHelper.queryTransactions(startDateOffset:endDateOffset:transactionSources:locationType:locationFilterDistance:lat:lon:maxCount:sortOrder:sortByAttributes:attributes:)();
}

uint64_t sub_10006006C()
{
  v2 = v0;
  sub_1000657F8();
  v4 = v3;
  sub_10006564C();
  *v5 = v4;
  v7 = v6[6];
  v8 = v6[5];
  v9 = v6[4];
  v10 = v6[2];
  v11 = *v1;
  sub_1000655F4();
  *v12 = v11;

  if (v2)
  {
    v13 = _convertErrorToNSError(_:)();

    isa = 0;
    v15 = v13;
  }

  else
  {
    sub_1000591B0(0, &qword_1006CA678, NSDictionary_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v13 = 0;
    v15 = isa;
  }

  v16 = *(v4 + 24);
  (v16)[2](v16, isa, v13);

  _Block_release(v16);
  sub_10006574C();

  return v17();
}

uint64_t type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction()
{
  result = qword_1006CA578;
  if (!qword_1006CA578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1000602B0(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

BOOL sub_1000602E0(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_10006030C(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_10006033C(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_100060360(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_100060388(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_100060470@<X0>(_BYTE *a1@<X8>)
{
  result = variable initialization expression of CoordRange.spansAntimeridian();
  *a1 = result;
  return result;
}

uint64_t sub_100060498@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100060280(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000604C8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100060290(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000604F8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000602A0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100060530@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006030C(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_100060564@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100060360(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1000605B0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000603F4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100060648@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005DFE0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10006067C@<X0>(uint64_t *a1@<X8>)
{
  result = _s3asd20ASBiometricKitHelperC13currentDeviceSo8BKDeviceCSgvpfi_0();
  *a1 = result;
  return result;
}

uint64_t sub_1000606A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100060288(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000606D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100060298(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100060704@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000602A8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10006073C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10006033C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100060770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100060388(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000607BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000603FC(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_100060820@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10006083C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10005E038(a1);
  *a2 = result;
  return result;
}

uint64_t ASFinanceStoreHelper.countTransactions(startDateOffset:endDateOffset:transactionSources:locationType:locationFilterDistance:lat:lon:maxCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v15;
  v9[12] = v8;
  v9[9] = a8;
  v9[10] = v14;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = sub_100065864();
  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000608A8()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  sub_100060EF8(v0[7], v0[8]);
  sub_100065874();
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1000609A0;
  v5 = v0[12];
  sub_1000657A4();

  return sub_10006100C();
}

uint64_t sub_1000609A0()
{
  sub_1000657EC();
  v3 = v2;
  sub_1000657F8();
  v5 = v4;
  sub_10006564C();
  *v6 = v5;
  v8 = *(v7 + 104);
  v9 = *v1;
  sub_1000655F4();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 112) = v3;
    sub_1000658F8();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_100060AD0()
{
  sub_1000657D4();
  v1 = *(*(v0 + 112) + 16);

  v2 = sub_100065758();

  return v3(v2);
}

uint64_t sub_100060C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, void *a10)
{
  v10[2] = a10;
  v10[3] = _Block_copy(a9);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v10[4] = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10[5] = v17;
  a10;
  v18 = swift_task_alloc();
  v10[6] = v18;
  *v18 = v10;
  v18[1] = sub_100060D30;

  return ASFinanceStoreHelper.countTransactions(startDateOffset:endDateOffset:transactionSources:locationType:locationFilterDistance:lat:lon:maxCount:)(a1, a2, a3, a4, a5, v13, v15, v16);
}

uint64_t sub_100060D30(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  sub_1000655F4();
  *v7 = v6;
  v8 = v5[6];
  v9 = v5[5];
  v10 = v5[4];
  v11 = v5[2];
  v12 = *v2;
  *v7 = *v2;

  v13 = v5[3];
  if (v3)
  {
    v14 = _convertErrorToNSError(_:)();

    (*(v13 + 16))(v13, 0, v14);
  }

  else
  {
    (*(v13 + 16))(v5[3], a1, 0);
  }

  _Block_release(v6[3]);
  v15 = v12[1];

  return v15();
}

uint64_t sub_100060EF8(uint64_t a1, uint64_t a2)
{

  v4 = sub_100060FAC(a1, a2);
  if (v5 & 1) != 0 || (v6 = *&v4, , v7 = sub_100065A64(), result = sub_100060FAC(v7, v8), (v10) || fabs(v6) > 90.0 || fabs(*&result) > 180.0)
  {
    sub_10005DF64(0);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100060FAC(uint64_t a1, uint64_t a2)
{
  sub_10006537C(a1, a2);

  return 0;
}

uint64_t sub_10006100C()
{
  sub_1000657D4();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v1[6] = v4;
  v1[7] = v5;
  v1[4] = v6;
  v1[5] = v7;
  v1[2] = v8;
  v1[3] = v9;
  v10 = type metadata accessor for PrivateInternalTransactionQuery();
  v1[11] = v10;
  sub_1000474C0(v10);
  v1[12] = v11;
  v13 = *(v12 + 64);
  v1[13] = sub_100065948();
  v14 = type metadata accessor for FinanceStore.DataType();
  v1[14] = v14;
  sub_1000474C0(v14);
  v1[15] = v15;
  v17 = *(v16 + 64);
  v1[16] = sub_100065948();
  v18 = sub_100065864();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_10006110C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = *(v0[10] + OBJC_IVAR____TtC3asd20ASFinanceStoreHelper_store);
  (*(v2 + 104))(v1, enum case for FinanceStore.DataType.financialData(_:), v3);
  type metadata accessor for DeviceInfo();
  v5 = FinanceStore.isDataAvailable(for:deviceInfo:)();
  (*(v2 + 8))(v1, v3);
  if ((v5 & 1) == 0)
  {
    v19 = v0[10];
    sub_10005DF64(1);
    swift_willThrow();
    v20 = v0[16];
    v21 = v0[13];

    sub_10006574C();
    sub_100065AB0();

    __asm { BRAA            X1, X16 }
  }

  v7 = v0[6];
  v6 = v0[7];
  v36 = v0[4];
  v37 = v0[10];
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[5];
  sub_1000443DC(&qword_1006CBEB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1005CC340;
  sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
  sub_1000443DC(&qword_1006CA670);
  v12 = sub_1000659B0();
  *(v12 + 16) = xmmword_1005CB870;
  v13 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:-v8];
  v14 = sub_1000591B0(0, &qword_1006CA340, NSDate_ptr);
  *(v12 + 56) = v14;
  v15 = sub_1000654CC();
  *(v12 + 64) = v15;
  *(v12 + 32) = v13;
  *(v11 + 32) = NSPredicate.init(format:_:)();
  v16 = sub_1000659B0();
  *(v16 + 16) = xmmword_1005CB870;
  v17 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:-v9];
  *(v16 + 56) = v14;
  *(v16 + 64) = v15;
  *(v16 + 32) = v17;
  *(v11 + 40) = NSPredicate.init(format:_:)();
  v18 = sub_100061BC0(v36);
  v24 = v0[13];
  v26 = v0[8];
  v25 = v0[9];
  *(v11 + 48) = v18;
  sub_1000591B0(0, &qword_1006CA660, NSCompoundPredicate_ptr);
  v27 = sub_100061DBC(v11, &selRef_andPredicateWithSubpredicates_);
  v0[17] = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1005CC350;
  v29 = objc_allocWithZone(NSSortDescriptor);
  *(v28 + 32) = sub_100062508(0xD000000000000027, 0x80000001005A40C0, v25 == 0);
  v30 = v27;
  PrivateInternalTransactionQuery.init(sortDescriptors:predicate:limit:offset:)();
  v31 = async function pointer to FinanceStore.privateInternalTransactions(query:)[1];
  v32 = swift_task_alloc();
  v0[18] = v32;
  *v32 = v0;
  v32[1] = sub_100061510;
  v33 = v0[13];
  sub_100065AB0();

  return FinanceStore.privateInternalTransactions(query:)();
}

uint64_t sub_100061510()
{
  sub_1000657EC();
  v3 = v2;
  sub_1000657F8();
  v5 = v4;
  sub_10006564C();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  sub_1000655F4();
  *v10 = v9;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  sub_1000658F8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10006161C()
{
  sub_1000657EC();
  v1 = *(v0 + 128);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);

  v5 = *(v3 + 8);
  v6 = sub_100065A4C();
  v7(v6);

  v8 = *(v0 + 8);
  v9 = *(v0 + 160);

  return v8(v9);
}

uint64_t sub_1000616B4()
{
  sub_1000657EC();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);

  sub_10006574C();

  return v7();
}

uint64_t sub_10006174C(uint64_t a1)
{
  v2 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000617A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10006180C(Swift::Double a1, Swift::Double a2, Swift::Double a3)
{
  sub_1000443DC(&qword_1006CBEB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1005CC360;
  sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
  v8 = NSPredicate.init(format:_:)();
  *(v7 + 32) = v8;
  sub_100061E40(0xD000000000000045, a1, a2, a3);
  if (v3)
  {

    *(v7 + 16) = 0;
  }

  else
  {
    v11 = v9;
    sub_1000591B0(0, &qword_1006CA660, NSCompoundPredicate_ptr);
    *(v7 + 40) = v11;
    return sub_100061DBC(v7, &selRef_andPredicateWithSubpredicates_);
  }
}

id sub_10006196C(char a1)
{
  v2 = type metadata accessor for TransactionType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for TransactionType.pointOfSale(_:), v2);
  v7 = TransactionType.rawValue.getter();
  (*(v3 + 8))(v6, v2);
  if (a1)
  {
    sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
    if ((a1 & 2) != 0)
    {
      return NSPredicate.init(format:_:)();
    }

LABEL_9:
    sub_1000443DC(&qword_1006CA670);
    v10 = sub_1000659B0();
    *(v10 + 16) = xmmword_1005CB870;
    *(v10 + 56) = &type metadata for Int16;
    *(v10 + 64) = &protocol witness table for Int16;
    *(v10 + 32) = v7;
    return NSPredicate.init(format:_:)();
  }

  if ((a1 & 2) != 0)
  {
    sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
    goto LABEL_9;
  }

  v8 = [objc_opt_self() predicateWithValue:0];

  return v8;
}

id sub_100061BC0(char a1)
{
  if ((a1 & 3) != 0)
  {
    sub_1000443DC(&qword_1006CBEB0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1005CC360;
    v4 = sub_10006196C(a1);
    *(v3 + 32) = v4;
    v5 = sub_100065960();
    sub_100061B74(v5, v6, v7);
    if (v1)
    {

      *(v3 + 16) = 0;
    }

    v10 = v8;
    sub_1000591B0(0, &qword_1006CA660, NSCompoundPredicate_ptr);
    *(v3 + 40) = v10;
    sub_100061DBC(v3, &selRef_andPredicateWithSubpredicates_);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if ((a1 & 4) != 0)
  {
    v11 = sub_100065960();
    sub_10006180C(v11, v12, v13);
    if (v1)
    {
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    sub_100065A64();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_1000591B0(0, &qword_1006CA660, NSCompoundPredicate_ptr);
  return sub_100061DBC(_swiftEmptyArrayStorage, &selRef_orPredicateWithSubpredicates_);
}

id sub_100061DBC(uint64_t a1, SEL *a2)
{
  sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [swift_getObjCClassFromMetadata() *a2];

  return v4;
}

void sub_100061E40(uint64_t a1, Swift::Double a2, Swift::Double a3, Swift::Double a4)
{
  if (a4 >= 0.0)
  {
    GlobalLocationHelper.boundingRectAround(lat:lon:radiusMetres:)(&v7, a2, a3, a4);
    if (!v6)
    {
      sub_100061EF4(&v7, a1);
    }
  }

  else
  {
    v4 = [objc_opt_self() predicateWithValue:1];
  }
}

id ASFinanceStoreHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASFinanceStoreHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100062458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

id sub_100062508(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithKey:v5 ascending:a3 & 1];

  return v6;
}

void sub_1000625BC()
{
  sub_100065730();
  if (v5)
  {
    sub_1000655C0();
    if (v7 != v8)
    {
      sub_10006569C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000655D0(v6);
  if (v3)
  {
    sub_1000443DC(&qword_1006CA6A0);
    v9 = sub_1000659C8();
    sub_100065714(v9);
    sub_1000657C8(v10 / 104);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = sub_100065898();
  if (v1)
  {
    if (v3 != v0 || &v12[104 * v2] <= v11)
    {
      memmove(v11, v12, 104 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100062690()
{
  sub_100065730();
  if (v5)
  {
    sub_1000655C0();
    if (v7 != v8)
    {
      sub_10006569C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000655D0(v6);
  if (v3)
  {
    sub_1000443DC(&qword_1006CA688);
    v9 = sub_1000659C8();
    sub_100065714(v9);
    sub_1000657C8(v10 / 24);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 24 * v2 <= (v3 + 4))
    {
      v12 = sub_1000657E0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000443DC(&qword_1006CA690);
    sub_1000657E0();
    swift_arrayInitWithCopy();
  }
}

void sub_100062784()
{
  sub_100065730();
  if (v5)
  {
    sub_1000655C0();
    if (v7 != v8)
    {
      sub_10006569C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000655D0(v6);
  if (v3)
  {
    sub_1000443DC(&qword_1006CA710);
    v9 = sub_100065978();
    sub_100065714(v9);
    sub_1000657C8(v10 / 32);
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v11 = sub_100065898();
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100062860(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    sub_1000655C0();
    if (v13 != v14)
    {
      sub_10006569C();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_1000633F0(v15, v12, a5, a6);
  v17 = *(*(a7(0) - 8) + 80);
  sub_1000658C0();
  if (a1)
  {
    sub_100063708(a4 + v18, v15, v16 + v18, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_100062954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000629B8()
{
  sub_100065730();
  if (v3)
  {
    sub_1000655C0();
    if (v5 != v6)
    {
      sub_10006569C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_1000443DC(&unk_1006CB530);
    v9 = sub_100065978();
    j__malloc_size(v9);
    sub_100065604();
    v9[2] = v7;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = (v9 + 4);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_100062A84()
{
  sub_100065730();
  if (v5)
  {
    sub_1000655C0();
    if (v7 != v8)
    {
      sub_10006569C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000655D0(v6);
  if (v3)
  {
    sub_1000443DC(&qword_1006CA6D0);
    v9 = sub_100065978();
    j__malloc_size(v9);
    sub_100065604();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || v0 + 32 + 16 * v2 <= (v9 + 4))
    {
      v12 = sub_1000657E0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000443DC(&qword_1006CA6D8);
    sub_1000657E0();
    swift_arrayInitWithCopy();
  }
}

void sub_100062B68()
{
  sub_100065730();
  if (v3)
  {
    sub_1000655C0();
    if (v5 != v6)
    {
      sub_10006569C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_1000632D8(v7, v4);
  v9 = *(*(sub_1000443DC(&qword_1006CAC00) - 8) + 80);
  sub_1000658C0();
  if (v1)
  {
    sub_10006355C(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100062C84()
{
  sub_100065730();
  if (v5)
  {
    sub_1000655C0();
    if (v7 != v8)
    {
      sub_10006569C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000655D0(v6);
  if (v3)
  {
    sub_1000443DC(&qword_1006CA6A8);
    v9 = sub_100065978();
    j__malloc_size(v9);
    sub_100065604();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_100065898();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100062D60(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    sub_1000655C0();
    if (v10 != v11)
    {
      sub_10006569C();
      if (v10)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = a4[2];
  if (v9 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    sub_1000443DC(a5);
    v14 = sub_100065978();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 8);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v14 != a4 || &a4[v12 + 4] <= v14 + 4)
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000443DC(a6);
    swift_arrayInitWithCopy();
  }
}

void sub_100062EB0()
{
  sub_100065730();
  if (v5)
  {
    sub_1000655C0();
    if (v7 != v8)
    {
      sub_10006569C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000655D0(v6);
  if (v3)
  {
    sub_1000443DC(&qword_1006CA620);
    v9 = sub_100065978();
    j__malloc_size(v9);
    sub_100065604();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_100065898();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100062FC0()
{
  sub_100065730();
  if (v5)
  {
    sub_1000655C0();
    if (v7 != v8)
    {
      sub_10006569C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000655D0(v6);
  if (v3)
  {
    sub_1000443DC(&qword_1006CA640);
    v9 = sub_100065978();
    sub_100065714(v9);
    sub_1000657C8(v10 / 8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 8 * v2 <= (v3 + 4))
    {
      v12 = sub_1000657E0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000443DC(&qword_1006CA648);
    sub_1000657E0();
    swift_arrayInitWithCopy();
  }
}

void sub_1000630B0()
{
  sub_100065730();
  if (v5)
  {
    sub_1000655C0();
    if (v7 != v8)
    {
      sub_10006569C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000655D0(v6);
  if (v3)
  {
    sub_1000443DC(v9);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v2;
    v10[3] = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = sub_100065898();
  if (v1)
  {
    if (v10 != v0 || &v13[v2] <= v12)
    {
      memmove(v12, v13, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v12, v13, v2);
  }
}

void sub_100063204()
{
  sub_100065730();
  if (v5)
  {
    sub_1000655C0();
    if (v7 != v8)
    {
      sub_10006569C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000655D0(v6);
  if (v3)
  {
    sub_1000443DC(&qword_1006CA680);
    v9 = sub_1000659C8();
    sub_100065714(v9);
    sub_1000657C8(v10 / 24);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = sub_100065898();
  if (v1)
  {
    if (v3 != v0 || &v12[24 * v2] <= v11)
    {
      memmove(v11, v12, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

id *sub_1000632D8(uint64_t a1, uint64_t a2)
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

  sub_1000443DC(&qword_1006CA6C8);
  v4 = *(sub_1000443DC(&qword_1006CAC00) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id *sub_1000633F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000443DC(a3);
  v7 = a4(0);
  sub_1000474C0(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v9)
  {
    if ((result - v11) != 0x8000000000000000 || v9 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v9);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1000634E0(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return sub_10006573C(result, a3, a2);
  }

  return result;
}

char *sub_100063514(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return sub_1000655A0(a3, result);
  }

  return result;
}

char *sub_10006353C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1000655A0(a3, result);
  }

  return result;
}

uint64_t sub_10006355C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1000443DC(&qword_1006CAC00), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1000443DC(&qword_1006CAC00);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_100063650(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1000655A0(a3, result);
  }

  return result;
}

char *sub_100063690(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1000655A0(a3, result);
  }

  return result;
}

char *sub_1000636B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_1000655A0(a3, result);
  }

  return result;
}

uint64_t sub_100063708(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    sub_100065A90();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_100065A90();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1000637D0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1000655A0(a3, result);
  }

  return result;
}

void sub_1000637F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_100065834();
  sub_100062860(0, v2, 0, v3, v4, v5, type metadata accessor for PushPayload, type metadata accessor for PushPayload);
}

void sub_1000638E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_10006584C();
  sub_100062860(0, v2, 0, v3, v4, v5, type metadata accessor for BindingsStore.Binding, type metadata accessor for BindingsStore.Binding);
}

Swift::Int sub_100063944(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction();
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v8;
      }

      v10 = *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_1000644F8(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1000642D8(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_100063A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalTransaction();

  return sub_100046EA4(a1, a2, v4);
}

uint64_t sub_100063AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalTransaction();

  return sub_1000485F8(a1, a2, a2, v4);
}

void sub_100063B40()
{
  type metadata accessor for InternalTransaction();
  if (v0 <= 0x3F)
  {
    sub_100063C2C(319, &qword_1006CA588);
    if (v1 <= 0x3F)
    {
      sub_100063C2C(319, &qword_1006CA590);
      if (v2 <= 0x3F)
      {
        sub_100063C2C(319, &unk_1006CA598);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100063C2C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ASFinanceStoreHelper.AugmentedTransaction.Location(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100063CCC()
{
  result = qword_1006CA5D8;
  if (!qword_1006CA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5D8);
  }

  return result;
}

unint64_t sub_100063D24()
{
  result = qword_1006CA5E0;
  if (!qword_1006CA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5E0);
  }

  return result;
}

unint64_t sub_100063D7C()
{
  result = qword_1006CA5E8;
  if (!qword_1006CA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5E8);
  }

  return result;
}

unint64_t sub_100063DD4()
{
  result = qword_1006CA5F0;
  if (!qword_1006CA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5F0);
  }

  return result;
}

unint64_t sub_100063E2C()
{
  result = qword_1006CA5F8;
  if (!qword_1006CA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5F8);
  }

  return result;
}

unint64_t sub_100063E84()
{
  result = qword_1006CA600;
  if (!qword_1006CA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA600);
  }

  return result;
}

unint64_t sub_100063EDC()
{
  result = qword_1006CA608;
  if (!qword_1006CA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA608);
  }

  return result;
}

unint64_t sub_100063F34()
{
  result = qword_1006CA610;
  if (!qword_1006CA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA610);
  }

  return result;
}

uint64_t sub_100063F88()
{
  _Block_release(*(v0 + 80));

  return _swift_deallocObject(v0, 96, 7);
}

void sub_100063FD8()
{
  v13 = v0[3];
  v14 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[11];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1000640AC;
  sub_1000658A4();
  sub_10006592C();

  __asm { BR              X8 }
}

uint64_t sub_1000640AC()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  sub_10006574C();

  return v5();
}

uint64_t sub_10006418C()
{
  _Block_release(*(v0 + 104));

  return _swift_deallocObject(v0, 120, 7);
}

void sub_1000641DC()
{
  v2 = *(v0 + 24);
  v15 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v12 = *(v0 + 96);
  v13 = *(v0 + 80);
  v9 = *(v0 + 112);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100065570;
  sub_1000658A4();

  __asm { BR              X8 }
}

uint64_t sub_1000642D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v38 = a4;
  v37 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction();
  v9 = *(*(v37 - 8) + 64);
  v10 = __chkstk_darwin(v37);
  v36 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v28 - v17;
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *(v16 + 72);
    v20 = *v4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = *v4;
    v29 = v19;
    v23 = v35 + v19 * a3;
LABEL_4:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    v24 = v20;
    while (1)
    {
      sub_1000617A8(v23, v18);
      sub_1000617A8(v24, v14);
      v25 = v38(v18, v14);
      sub_10006174C(v14);
      result = sub_10006174C(v18);
      if (v5)
      {
        break;
      }

      if (v25)
      {
        if (!v35)
        {
          __break(1u);
          return result;
        }

        v26 = v36;
        sub_100062954(v23, v36);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_100062954(v26, v24);
        v24 += v21;
        v23 += v21;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v34 + 1;
      v20 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_1000644F8(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v145 = a5;
  v144 = a4;
  v132 = a1;
  v137 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction();
  v142 = *(v137 - 8);
  v10 = *(v142 + 64);
  v11 = __chkstk_darwin(v137);
  v133 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v136 = &v122 - v14;
  v15 = __chkstk_darwin(v13);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v18 = __chkstk_darwin(v17);
  v20 = &v122 - v19;
  __chkstk_darwin(v18);
  v22 = __chkstk_darwin(&v122 - v21);
  v143 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_102:
    v141 = *v132;
    if (v141)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_104;
    }

    goto LABEL_148;
  }

  v128 = &v122 - v23;
  v129 = v22;
  v138 = v20;
  v139 = v26;
  v134 = v25;
  v135 = v24;
  v127 = a6;
  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v131 = v29;
      v32 = *v143;
      v33 = *(v142 + 72);
      v34 = *v143 + v33 * v31;
      v35 = v128;
      sub_1000617A8(v34, v128);
      v36 = v129;
      sub_1000617A8(v32 + v33 * v30, v129);
      LODWORD(v140) = v144(v35, v36);
      if (v7)
      {
        sub_10006174C(v36);
        v121 = v35;
        goto LABEL_115;
      }

      sub_10006174C(v36);
      sub_10006174C(v35);
      v130 = v30;
      v37 = v30 + 2;
      v38 = v32 + v33 * (v30 + 2);
      v39 = v141;
      while (1)
      {
        v40 = v31;
        v41 = v37;
        if (v31 + 1 >= v39)
        {
          break;
        }

        v42 = v138;
        sub_1000617A8(v38, v138);
        v43 = v139;
        sub_1000617A8(v34, v139);
        v44 = v144(v42, v43);
        sub_10006174C(v43);
        sub_10006174C(v42);
        v38 += v33;
        v34 += v33;
        v31 = v40 + 1;
        v37 = v41 + 1;
        v39 = v141;
        if ((v140 ^ v44))
        {
          goto LABEL_10;
        }
      }

      v31 = v39;
LABEL_10:
      if (v140)
      {
        if (v31 < v130)
        {
          goto LABEL_142;
        }

        if (v130 > v40)
        {
          v29 = v131;
          v30 = v130;
          goto LABEL_33;
        }

        if (v39 >= v41)
        {
          v45 = v41;
        }

        else
        {
          v45 = v39;
        }

        v46 = v33 * (v45 - 1);
        v47 = v33 * v45;
        v48 = v130 * v33;
        v140 = v31;
        v49 = v130;
        do
        {
          if (v49 != --v31)
          {
            v50 = *v143;
            if (!*v143)
            {
              goto LABEL_146;
            }

            sub_100062954(v50 + v48, v133);
            v51 = v48 < v46 || v50 + v48 >= v50 + v47;
            if (v51)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v48 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_100062954(v133, v50 + v46);
          }

          ++v49;
          v46 -= v33;
          v47 -= v33;
          v48 += v33;
        }

        while (v49 < v31);
        v29 = v131;
        v31 = v140;
      }

      else
      {
        v29 = v131;
      }

      v30 = v130;
    }

LABEL_33:
    v52 = v143[1];
    if (v31 < v52)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_138;
      }

      if (v31 - v30 < v127)
      {
        v53 = v30 + v127;
        if (__OFADD__(v30, v127))
        {
          __break(1u);
        }

        else
        {
          if (v53 >= v52)
          {
            v53 = v143[1];
          }

          if (v53 >= v30)
          {
            if (v31 == v53)
            {
              goto LABEL_41;
            }

            v130 = v30;
            v131 = v29;
            v100 = *(v142 + 72);
            v101 = *v143 + v100 * (v31 - 1);
            v102 = -v100;
            v103 = v30 - v31;
            v141 = *v143;
            v122 = v100;
            v104 = v141 + v31 * v100;
            v123 = v53;
            while (1)
            {
              v140 = v31;
              v124 = v104;
              v125 = v103;
              v126 = v101;
              v105 = v101;
              do
              {
                v106 = v134;
                sub_1000617A8(v104, v134);
                v107 = v135;
                sub_1000617A8(v105, v135);
                v108 = v144(v106, v107);
                if (v7)
                {
                  sub_10006174C(v107);
                  v121 = v106;
LABEL_115:
                  sub_10006174C(v121);
                  goto LABEL_116;
                }

                v109 = v108;
                sub_10006174C(v107);
                sub_10006174C(v106);
                if ((v109 & 1) == 0)
                {
                  break;
                }

                if (!v141)
                {
                  goto LABEL_145;
                }

                v110 = v136;
                sub_100062954(v104, v136);
                swift_arrayInitWithTakeFrontToBack();
                sub_100062954(v110, v105);
                v105 += v102;
                v104 += v102;
                v51 = __CFADD__(v103++, 1);
              }

              while (!v51);
              v31 = v140 + 1;
              v101 = v126 + v122;
              v103 = v125 - 1;
              v104 = v124 + v122;
              if (v140 + 1 == v123)
              {
                v31 = v123;
                v30 = v130;
                v29 = v131;
                goto LABEL_41;
              }
            }
          }
        }

        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }
    }

LABEL_41:
    if (v31 < v30)
    {
      goto LABEL_137;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v111 = v29[2];
      sub_1000629B8();
      v29 = v112;
    }

    v55 = v29[2];
    v56 = v55 + 1;
    if (v55 >= v29[3] >> 1)
    {
      sub_1000629B8();
      v29 = v113;
    }

    v29[2] = v56;
    v57 = v29 + 4;
    v58 = &v29[2 * v55 + 4];
    v59 = v140;
    *v58 = v30;
    v58[1] = v59;
    v141 = *v132;
    if (!v141)
    {
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      return;
    }

    if (v55)
    {
      break;
    }

LABEL_90:
    v27 = v143[1];
    v28 = v140;
    if (v140 >= v27)
    {
      goto LABEL_102;
    }
  }

  while (1)
  {
    v60 = v56 - 1;
    v61 = &v57[2 * v56 - 2];
    v62 = &v29[2 * v56];
    if (v56 >= 4)
    {
      v67 = &v57[2 * v56];
      v68 = *(v67 - 8);
      v69 = *(v67 - 7);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_125;
      }

      v72 = *(v67 - 6);
      v71 = *(v67 - 5);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_126;
      }

      v74 = v62[1];
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_128;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_131;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = v61[1];
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_136;
        }

        if (v65 < v91)
        {
          v60 = v56 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_61;
    }

    if (v56 == 3)
    {
      v63 = v29[4];
      v64 = v29[5];
      v73 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      v66 = v73;
LABEL_61:
      if (v66)
      {
        goto LABEL_127;
      }

      v78 = *v62;
      v77 = v62[1];
      v79 = __OFSUB__(v77, v78);
      v80 = v77 - v78;
      v81 = v79;
      if (v79)
      {
        goto LABEL_130;
      }

      v82 = v61[1];
      v83 = v82 - *v61;
      if (__OFSUB__(v82, *v61))
      {
        goto LABEL_133;
      }

      if (__OFADD__(v80, v83))
      {
        goto LABEL_135;
      }

      if (v80 + v83 >= v65)
      {
        if (v65 < v83)
        {
          v60 = v56 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_76;
    }

    if (v56 < 2)
    {
      goto LABEL_129;
    }

    v85 = *v62;
    v84 = v62[1];
    v73 = __OFSUB__(v84, v85);
    v80 = v84 - v85;
    v81 = v73;
LABEL_76:
    if (v81)
    {
      goto LABEL_132;
    }

    v87 = *v61;
    v86 = v61[1];
    v73 = __OFSUB__(v86, v87);
    v88 = v86 - v87;
    if (v73)
    {
      goto LABEL_134;
    }

    if (v88 < v80)
    {
      goto LABEL_90;
    }

LABEL_83:
    if (v60 - 1 >= v56)
    {
      break;
    }

    if (!*v143)
    {
      goto LABEL_143;
    }

    v92 = &v57[2 * v60 - 2];
    v93 = *v92;
    v94 = v60;
    v95 = &v57[2 * v60];
    v96 = v95[1];
    sub_100064E38(*v143 + *(v142 + 72) * *v92, *v143 + *(v142 + 72) * *v95, *v143 + *(v142 + 72) * v96, v141, v144, v145);
    if (v7)
    {
      goto LABEL_116;
    }

    if (v96 < v93)
    {
      goto LABEL_119;
    }

    v7 = v57;
    v97 = v29;
    v29 = v29[2];
    if (v94 > v29)
    {
      goto LABEL_120;
    }

    *v92 = v93;
    v92[1] = v96;
    if (v94 >= v29)
    {
      goto LABEL_121;
    }

    v98 = v94;
    v56 = v29 - 1;
    sub_1000872E4(v95 + 16, v29 - v98 - 1, v95);
    v97[2] = v29 - 1;
    v99 = v29 > 2;
    v29 = v97;
    v57 = v7;
    v7 = 0;
    if (!v99)
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
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
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  v29 = sub_1000871E4(v29);
LABEL_104:
  v114 = v29 + 2;
  v115 = v29[2];
  while (v115 >= 2)
  {
    if (!*v143)
    {
      goto LABEL_144;
    }

    v116 = v29;
    v117 = &v29[2 * v115];
    v29 = *v117;
    v118 = &v114[2 * v115];
    v119 = *(v118 + 1);
    sub_100064E38(*v143 + *(v142 + 72) * *v117, *v143 + *(v142 + 72) * *v118, *v143 + *(v142 + 72) * v119, v141, v144, v145);
    if (v7)
    {
      break;
    }

    if (v119 < v29)
    {
      goto LABEL_122;
    }

    if (v115 - 2 >= *v114)
    {
      goto LABEL_123;
    }

    *v117 = v29;
    v117[1] = v119;
    v120 = *v114 - v115;
    if (*v114 < v115)
    {
      goto LABEL_124;
    }

    v115 = *v114 - 1;
    sub_1000872E4(v118 + 16, v120, v118);
    *v114 = v115;
    v29 = v116;
  }

LABEL_116:
}