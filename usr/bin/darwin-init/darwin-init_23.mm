unint64_t sub_100192870()
{
  result = qword_1004AAAA8;
  if (!qword_1004AAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAA8);
  }

  return result;
}

unint64_t sub_1001928C4()
{
  result = qword_1004AAAB0;
  if (!qword_1004AAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAB0);
  }

  return result;
}

unint64_t sub_100192918()
{
  result = qword_1004AAAB8;
  if (!qword_1004AAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAB8);
  }

  return result;
}

unint64_t sub_10019296C()
{
  result = qword_1004AAAC0;
  if (!qword_1004AAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAC0);
  }

  return result;
}

unint64_t sub_1001929C0()
{
  result = qword_1004AAAE0;
  if (!qword_1004AAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAE0);
  }

  return result;
}

uint64_t sub_100192A24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100192A48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100192AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100192B00(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_100192B88()
{
  result = qword_1004AAAE8;
  if (!qword_1004AAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAE8);
  }

  return result;
}

unint64_t sub_100192BE0()
{
  result = qword_1004AAAF0;
  if (!qword_1004AAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAF0);
  }

  return result;
}

unint64_t sub_100192C38()
{
  result = qword_1004AAAF8;
  if (!qword_1004AAAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAF8);
  }

  return result;
}

unint64_t sub_100192C90()
{
  result = qword_1004AAB00;
  if (!qword_1004AAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB00);
  }

  return result;
}

unint64_t sub_100192CE8()
{
  result = qword_1004AAB08;
  if (!qword_1004AAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB08);
  }

  return result;
}

unint64_t sub_100192D40()
{
  result = qword_1004AAB10;
  if (!qword_1004AAB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB10);
  }

  return result;
}

unint64_t sub_100192D98()
{
  result = qword_1004AAB18;
  if (!qword_1004AAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB18);
  }

  return result;
}

unint64_t sub_100192DF0()
{
  result = qword_1004AAB20;
  if (!qword_1004AAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB20);
  }

  return result;
}

unint64_t sub_100192E48()
{
  result = qword_1004AAB28;
  if (!qword_1004AAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB28);
  }

  return result;
}

unint64_t sub_100192EA0()
{
  result = qword_1004AAB30;
  if (!qword_1004AAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB30);
  }

  return result;
}

unint64_t sub_100192EF8()
{
  result = qword_1004AAB38;
  if (!qword_1004AAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB38);
  }

  return result;
}

uint64_t DInitSHA256Digest.init(_:)(uint64_t a1)
{
  sub_100193028(a1);
  sub_1000039E8(&qword_1004A6B48);
  sub_10004AF7C();
  v2 = BidirectionalCollection<>.joined(separator:)();
  v3 = type metadata accessor for SHA256Digest();
  (*(*(v3 - 8) + 8))(a1, v3);

  return v2;
}

uint64_t sub_100193028(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100193960();
  v6 = dispatch thunk of Sequence.underestimatedCount.getter();
  v34 = &_swiftEmptyArrayStorage;
  sub_10000DFF4(0, v6 & ~(v6 >> 63), 0);
  v7 = v34;
  (*(v3 + 16))(v5, a1, v2);
  result = dispatch thunk of Sequence.makeIterator()();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v33;
    if (v6)
    {
      v10 = v32;
      *&v31 = *(v32 + 16);
      v30 = xmmword_100376A40;
      v11 = v33;
      while (v31 != v11)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v11 >= *(v10 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(v10 + 32 + v11);
        sub_1000039E8(&unk_1004A7370);
        v13 = swift_allocObject();
        *(v13 + 16) = v30;
        *(v13 + 56) = &type metadata for UInt8;
        *(v13 + 64) = &protocol witness table for UInt8;
        *(v13 + 32) = v12;
        result = String.init(format:_:)();
        v34 = v7;
        v16 = v7[2];
        v15 = v7[3];
        if (v16 >= v15 >> 1)
        {
          v29 = result;
          v18 = v14;
          sub_10000DFF4((v15 > 1), v16 + 1, 1);
          v14 = v18;
          result = v29;
          v7 = v34;
        }

        v7[2] = v16 + 1;
        v17 = &v7[2 * v16];
        v17[4] = result;
        v17[5] = v14;
        ++v11;
        if (!--v6)
        {
          v33 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v11 = v33;
LABEL_12:
      v19 = v32;
      v20 = *(v32 + 16);
      if (v11 == v20)
      {
LABEL_13:

        return v7;
      }

      v31 = xmmword_100376A40;
      while (v11 < v20)
      {
        v21 = *(v19 + 32 + v11);
        v33 = v11 + 1;
        sub_1000039E8(&unk_1004A7370);
        v22 = swift_allocObject();
        *(v22 + 16) = v31;
        *(v22 + 56) = &type metadata for UInt8;
        *(v22 + 64) = &protocol witness table for UInt8;
        *(v22 + 32) = v21;
        result = String.init(format:_:)();
        v34 = v7;
        v25 = v7[2];
        v24 = v7[3];
        if (v25 >= v24 >> 1)
        {
          v27 = result;
          v28 = v23;
          sub_10000DFF4((v24 > 1), v25 + 1, 1);
          v23 = v28;
          result = v27;
          v7 = v34;
        }

        v7[2] = v25 + 1;
        v26 = &v7[2 * v25];
        v26[4] = result;
        v26[5] = v23;
        v20 = *(v19 + 16);
        v11 = v33;
        if (v33 == v20)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1001933E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100193768(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t DInitSHA256Digest.encode(to:)(void *a1)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100003BEC(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100003C3C(v2);
}

uint64_t sub_1001934B0(void *a1)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100003BEC(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100003C3C(v2);
}

uint64_t static DInitSHA256Digest.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100193568@<X0>(uint64_t *a1@<X8>)
{
  result = _s10DarwinInit17DInitSHA256DigestV8argumentACSgSS_tcfC_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int DInitSHA256Digest.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int CredentialString.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100193644()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s10DarwinInit17DInitSHA256DigestV8argumentACSgSS_tcfC_0()
{
  if (String.count.getter() == 64)
  {
    countAndFlagsBits = String.lowercased()()._countAndFlagsBits;

    while (String.Iterator.next()().value._object)
    {
      Character.hexDigitValue.getter();
      v2 = v1;

      if (v2)
      {

        goto LABEL_6;
      }
    }

    return countAndFlagsBits;
  }

  else
  {
LABEL_6:

    return 0;
  }
}

void *sub_100193768(void *a1)
{
  v3 = sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_10000E2A8(v11, v11[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = v6;

    v8 = _s10DarwinInit17DInitSHA256DigestV8argumentACSgSS_tcfC_0();
    if (v9)
    {
      v3 = v8;

      sub_100003C3C(v11);
      sub_100003C3C(a1);
      return v3;
    }

    _StringGuts.grow(_:)(32);

    v10._countAndFlagsBits = v5;
    v10._object = v7;
    String.append(_:)(v10);

    v3 = 0xD00000000000001ELL;
    type metadata accessor for DecodingError();
    swift_allocError();
    static DecodingError.dataCorruptedError(in:debugDescription:)();

    swift_willThrow();
    sub_100003C3C(v11);
  }

  sub_100003C3C(a1);
  return v3;
}

unint64_t sub_1001938FC()
{
  result = qword_1004AAB40;
  if (!qword_1004AAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB40);
  }

  return result;
}

unint64_t sub_100193960()
{
  result = qword_1004AAB48;
  if (!qword_1004AAB48)
  {
    type metadata accessor for SHA256Digest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB48);
  }

  return result;
}

uint64_t sub_100193A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019472C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100193A64(uint64_t a1)
{
  v2 = sub_1001949F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100193AA0(uint64_t a1)
{
  v2 = sub_1001949F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static DiavloCertAudience.shared.getter()
{
  result = sub_100194844();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t DiavloCertRequest.audienceProperties.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *v3 = result;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t sub_100193B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000010043DE10 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100193BC0(uint64_t a1)
{
  v2 = sub_100194C18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100193BFC(uint64_t a1)
{
  v2 = sub_100194C18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DiavloCertAudience.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v10[1] = a3;
  v5 = sub_1000039E8(&qword_1004AAB50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1001949F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100193E28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100194A4C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t DiavloCertRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000039E8(&qword_1004AAB60);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_10000E2A8(a1, a1[3]);
  sub_100194C18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  sub_100194C6C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100194030(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    return v4;
  }

  return result;
}

void *sub_10019405C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100194CC0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t PathCoded.codingPath.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1001940FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6369666974726563 && a2 == 0xEC00000073657461)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100194188(uint64_t a1)
{
  v2 = sub_100194E3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001941C4(uint64_t a1)
{
  v2 = sub_100194E3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DiavloCertList.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AAB78);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000E2A8(a1, a1[3]);
  sub_100194E3C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1000039E8(&qword_1004AAB88);
  sub_100195820(&qword_1004AAB90, sub_100194E90);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void *sub_1001943A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100194EE4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t DInitData.rawValue.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100031928(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_100194464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1953654115 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001944EC(uint64_t a1)
{
  v2 = sub_100195098();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100194528(uint64_t a1)
{
  v2 = sub_100195098();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DiavloCert.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000039E8(&qword_1004AABA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_10000E2A8(a1, a1[3]);
  sub_100195098();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2;
  v12 = a3;
  sub_1000318C0(a2, a3);
  sub_1000688F8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100031928(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

void *sub_1001946CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001950EC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10019472C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1146244930 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1346979907 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1297040467 && a2 == 0xE400000000000000)
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

uint64_t sub_100194844()
{
  if (qword_1004A9DF0 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    swift_beginAccess();
    v0 = *(*static RealComputer.shared + 232);

    v2 = v0(v1);
    v4 = v3;

    if (v4)
    {
      v5 = 0;
      goto LABEL_8;
    }

    v6 = *(*static RealComputer.shared + 240);

    v8 = v6(v7);
    v10 = v9;

    if (v10)
    {
      v5 = 1;
      goto LABEL_8;
    }

    v11 = *(*static RealComputer.shared + 224);

    v13 = v11(v12);
    v15 = v14;

    if (v15)
    {
      break;
    }

    if (((v8 | v2 | v13) & 0x8000000000000000) == 0)
    {
      return v2;
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

  v5 = 2;
LABEL_8:
  sub_100195940();
  swift_allocError();
  *v16 = v5;
  swift_willThrow();
  return v2;
}

unint64_t sub_1001949F8()
{
  result = qword_1004AAB58;
  if (!qword_1004AAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB58);
  }

  return result;
}

uint64_t sub_100194A4C(void *a1)
{
  v2 = sub_1000039E8(&qword_1004AAC38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10000E2A8(a1, a1[3]);
  sub_1001949F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11 = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v10 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v9 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100003C3C(a1);
  return v6;
}

unint64_t sub_100194C18()
{
  result = qword_1004AAB68;
  if (!qword_1004AAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB68);
  }

  return result;
}

unint64_t sub_100194C6C()
{
  result = qword_1004AAB70;
  if (!qword_1004AAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB70);
  }

  return result;
}

void *sub_100194CC0(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AAC28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000E2A8(a1, a1[3]);
  sub_100194C18();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100003C3C(a1);
  }

  else
  {
    sub_1001958EC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100003C3C(a1);
  }

  return v7;
}

unint64_t sub_100194E3C()
{
  result = qword_1004AAB80;
  if (!qword_1004AAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB80);
  }

  return result;
}

unint64_t sub_100194E90()
{
  result = qword_1004AAB98;
  if (!qword_1004AAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB98);
  }

  return result;
}

void *sub_100194EE4(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AAC10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000E2A8(a1, a1[3]);
  sub_100194E3C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100003C3C(a1);
  }

  else
  {
    sub_1000039E8(&qword_1004AAB88);
    sub_100195820(&qword_1004AAC18, sub_100195898);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100003C3C(a1);
  }

  return v7;
}

unint64_t sub_100195098()
{
  result = qword_1004AABA8;
  if (!qword_1004AABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABA8);
  }

  return result;
}

void *sub_1001950EC(void *a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    sub_100003C3C(a1);
  }

  else
  {
    sub_10000E2A8(v13, v13[3]);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    static String.Encoding.utf8.getter();
    v9 = String.data(using:allowLossyConversion:)();
    v11 = v10;

    (*(v4 + 8))(v6, v3);
    if (v11 >> 60 == 15)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9;
    }

    sub_100003C3C(v13);
    sub_100003C3C(a1);
  }

  return v7;
}

uint64_t getEnumTagSinglePayload for Network.ContentRangeComponents(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Network.ContentRangeComponents(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100195310(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100195364(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100195404()
{
  result = qword_1004AABB0;
  if (!qword_1004AABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABB0);
  }

  return result;
}

unint64_t sub_10019545C()
{
  result = qword_1004AABB8;
  if (!qword_1004AABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABB8);
  }

  return result;
}

unint64_t sub_1001954B4()
{
  result = qword_1004AABC0;
  if (!qword_1004AABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABC0);
  }

  return result;
}

unint64_t sub_10019550C()
{
  result = qword_1004AABC8;
  if (!qword_1004AABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABC8);
  }

  return result;
}

unint64_t sub_100195564()
{
  result = qword_1004AABD0;
  if (!qword_1004AABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABD0);
  }

  return result;
}

unint64_t sub_1001955BC()
{
  result = qword_1004AABD8;
  if (!qword_1004AABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABD8);
  }

  return result;
}

unint64_t sub_100195614()
{
  result = qword_1004AABE0;
  if (!qword_1004AABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABE0);
  }

  return result;
}

unint64_t sub_10019566C()
{
  result = qword_1004AABE8;
  if (!qword_1004AABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABE8);
  }

  return result;
}

unint64_t sub_1001956C4()
{
  result = qword_1004AABF0;
  if (!qword_1004AABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABF0);
  }

  return result;
}

unint64_t sub_10019571C()
{
  result = qword_1004AABF8;
  if (!qword_1004AABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABF8);
  }

  return result;
}

unint64_t sub_100195774()
{
  result = qword_1004AAC00;
  if (!qword_1004AAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAC00);
  }

  return result;
}

unint64_t sub_1001957CC()
{
  result = qword_1004AAC08;
  if (!qword_1004AAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAC08);
  }

  return result;
}

uint64_t sub_100195820(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004AAB88);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100195898()
{
  result = qword_1004AAC20;
  if (!qword_1004AAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAC20);
  }

  return result;
}

unint64_t sub_1001958EC()
{
  result = qword_1004AAC30;
  if (!qword_1004AAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAC30);
  }

  return result;
}

unint64_t sub_100195940()
{
  result = qword_1004AAC40;
  if (!qword_1004AAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAC40);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.chown(owner:group:)(Swift::UInt32 owner, Swift::UInt32 group)
{
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000270B4(v10, qword_1004B00F8);
  (*(v7 + 16))(v9, v2, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v3;
    v14 = v13;
    v26 = swift_slowAlloc();
    v28 = v26;
    *v14 = 136315650;
    sub_100190550();
    v29 = v12;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v11;
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v18 = sub_1000026C0(v15, v17, &v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 1024;
    *(v14 + 14) = owner;
    *(v14 + 18) = 1024;
    *(v14 + 20) = group;
    v19 = v25;
    _os_log_impl(&_mh_execute_header, v25, v29, "Changing owner of item at %s to owner %u and group %u", v14, 0x18u);
    sub_100003C3C(v26);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  while (1)
  {
    FilePath.description.getter();
    v20 = String.utf8CString.getter();

    v21 = chown((v20 + 32), owner, group);

    if (v21 != -1)
    {
      break;
    }

    v22 = errno.getter();
    if (v22 != 4)
    {
      v30 = v22;
      v23 = v22;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v24 = v23;
      return;
    }
  }
}

uint64_t FilePath.chmod(permissions:)(mode_t a1)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000270B4(v8, qword_1004B00F8);
  (*(v5 + 16))(v7, v1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = v2;
    v12 = v11;
    v27 = swift_slowAlloc();
    v29 = v27;
    *v12 = 136315394;
    sub_100190550();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v10;
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_1000026C0(v13, v15, &v29);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = FilePermissions.description.getter();
    v19 = sub_1000026C0(v17, v18, &v29);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v30, "Changing permission of item at %s to %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    FilePath.description.getter();
    v20 = String.utf8CString.getter();

    v21 = chmod((v20 + 32), a1);

    if (v21 != -1)
    {
      break;
    }

    v23 = errno.getter();
    if (v23 != 4)
    {
      v31 = v23;
      v24 = v23;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v25 = v24;
      return result;
    }
  }

  return result;
}

uint64_t sub_100195FD0()
{
  v0 = sub_1000039E8(&qword_1004AAD78);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000279B4(v3, static MementoKeys.configuration);
  sub_1000270B4(v3, static MementoKeys.configuration);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t MementoKeys.configuration.unsafeMutableAddressor()
{
  if (qword_1004A9E08 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_1000270B4(v0, static MementoKeys.configuration);
}

uint64_t static MementoKeys.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000270B4(v2, static MementoKeys.configuration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100196238()
{
  v0 = type metadata accessor for ArrayParsingStrategy();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v7 - 8);
  sub_1000039E8(&qword_1004AAD70);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100376BB0;
  static NameSpecification.Element.customLong(_:withSingleDash:)();
  static NameSpecification.Element.short.getter();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v8 = type metadata accessor for ArgumentHelp();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  static ArrayParsingStrategy.singleValue.getter();
  return Option.init<A>(wrappedValue:name:parsing:help:completion:)();
}

uint64_t MementoKeys.users.getter()
{
  sub_1000039E8(&qword_1004AAC48);
  Option.wrappedValue.getter();
  return v1;
}

uint64_t sub_10019656C()
{

  sub_1000039E8(&qword_1004AAC48);
  return Option.wrappedValue.setter();
}

uint64_t (*MementoKeys.users.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1000039E8(&qword_1004AAC48);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t sub_10019668C()
{
  v0 = type metadata accessor for ArrayParsingStrategy();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v7 - 8);
  sub_1000039E8(&qword_1004AAD70);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100376BB0;
  static NameSpecification.Element.customLong(_:withSingleDash:)();
  static NameSpecification.Element.short.getter();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v8 = type metadata accessor for ArgumentHelp();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  static ArrayParsingStrategy.singleValue.getter();
  return Option.init<A>(wrappedValue:name:parsing:help:completion:)();
}

uint64_t MementoKeys.groups.getter()
{
  type metadata accessor for MementoKeys();
  sub_1000039E8(&qword_1004AAC48);
  Option.wrappedValue.getter();
  return v1;
}

uint64_t type metadata accessor for MementoKeys()
{
  result = qword_1004AACF8;
  if (!qword_1004AACF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100196A28@<X0>(void *a1@<X8>)
{
  type metadata accessor for MementoKeys();
  sub_1000039E8(&qword_1004AAC48);
  result = Option.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100196A90()
{
  type metadata accessor for MementoKeys();

  sub_1000039E8(&qword_1004AAC48);
  return Option.wrappedValue.setter();
}

uint64_t MementoKeys.groups.setter()
{
  type metadata accessor for MementoKeys();
  sub_1000039E8(&qword_1004AAC48);
  return Option.wrappedValue.setter();
}

uint64_t (*MementoKeys.groups.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for MementoKeys();
  sub_1000039E8(&qword_1004AAC48);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t sub_100196BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  v8 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v8 - 8);
  v10 = v15 - v9;
  v11 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v11 - 8);
  v15[0] = a1;
  v15[1] = a2;
  sub_1000039E8(&qword_1004AAD70);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100376BB0;
  static NameSpecification.Element.customLong(_:withSingleDash:)();
  static NameSpecification.Element.customShort(_:allowingJoined:)();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v12 = type metadata accessor for ArgumentHelp();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  v13 = type metadata accessor for CompletionKind();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  static SingleValueParsingStrategy.next.getter();
  return Option<A>.init(wrappedValue:name:parsing:help:completion:)();
}

uint64_t MementoKeys.ldapServer.getter()
{
  type metadata accessor for MementoKeys();
  sub_1000039E8(&qword_1004AAC50);
  Option.wrappedValue.getter();
  return v1;
}

uint64_t sub_100196F54@<X0>(void *a1@<X8>)
{
  type metadata accessor for MementoKeys();
  sub_1000039E8(&qword_1004AAC50);
  result = Option.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100196FBC()
{
  type metadata accessor for MementoKeys();

  sub_1000039E8(&qword_1004AAC50);
  return Option.wrappedValue.setter();
}

uint64_t MementoKeys.ldapServer.setter()
{
  type metadata accessor for MementoKeys();
  sub_1000039E8(&qword_1004AAC50);
  return Option.wrappedValue.setter();
}

uint64_t (*MementoKeys.ldapServer.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for MementoKeys();
  sub_1000039E8(&qword_1004AAC50);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100197120;
}

void sub_100197124(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t MementoKeys.getCacheFile()@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = type metadata accessor for FilePath();
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v45 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SHA256();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SHA256Digest();
  v44 = *(v7 - 1);
  v8 = __chkstk_darwin(v7);
  *&v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v49 = static CommandLine.arguments.getter();
  v12 = sub_1000039E8(&qword_1004A6B48);
  v40 = sub_10000E720(&qword_1004A6B50, &qword_1004A6B48);
  v41 = v12;
  v13 = BidirectionalCollection<>.joined(separator:)();
  v15 = v14;

  v49 = v13;
  v50 = v15;
  v16 = String.init<A>(_:)();
  v18 = sub_10018AD60(v16, v17);
  v20 = v19;
  sub_10019B5B4(&unk_1004A7820, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_1000318C0(v18, v20);
  sub_100093720(v18, v20);
  v38 = v20;
  v39 = v18;
  sub_100031928(v18, v20);
  dispatch thunk of HashFunction.finalize()();
  (*(v4 + 8))(v6, v3);
  if (qword_1004A9E98 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v21 = v48;
    v22 = sub_1000270B4(v48, kDInitPersistStorage);
    (*(v47 + 16))(v45, v22, v21);
    v23 = v44;
    v24 = *(v44 + 16);
    v42 = v11;
    v24(v46, v11, v7);
    sub_10019B5B4(&qword_1004AAB48, &type metadata accessor for SHA256Digest);
    dispatch thunk of Sequence.makeIterator()();
    v25 = v50;
    v48 = v49;
    v26 = *(v49 + 16);
    v27 = v7;
    v7 = &_swiftEmptyArrayStorage;
    if (v50 == v26)
    {
      break;
    }

    v47 = v48 + 32;
    v46 = xmmword_100376A40;
    v11 = v50;
    v29 = v23;
    while ((v25 & 0x8000000000000000) == 0)
    {
      if (v11 >= *(v48 + 16))
      {
        goto LABEL_14;
      }

      v30 = v11[v47];
      sub_1000039E8(&unk_1004A7370);
      v31 = swift_allocObject();
      *(v31 + 16) = v46;
      *(v31 + 56) = &type metadata for UInt8;
      *(v31 + 64) = &protocol witness table for UInt8;
      *(v31 + 32) = v30;
      v32 = String.init(format:_:)();
      v34 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100011A4C(0, v7[2] + 1, 1, v7);
      }

      v36 = v7[2];
      v35 = v7[3];
      if (v36 >= v35 >> 1)
      {
        v7 = sub_100011A4C((v35 > 1), v36 + 1, 1, v7);
      }

      ++v11;
      v7[2] = v36 + 1;
      v37 = &v7[2 * v36];
      *(v37 + 4) = v32;
      *(v37 + 5) = v34;
      v23 = v29;
      if (v26 == v11)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
  }

LABEL_3:

  v49 = v7;
  BidirectionalCollection<>.joined(separator:)();

  FilePath.appending(_:)();
  sub_100031928(v39, v38);
  return (*(v23 + 8))(v42, v27);
}

uint64_t MementoKeys.readCache(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v41 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v42 = v12;
  v17 = *(v12 + 16);
  v43 = a1;
  v18 = a1;
  v19 = v17;
  v17(&v41 - v15, v18, v11);
  sub_1002EC1CC(v16, &v46);
  if (!v1)
  {
    Date.init(timeIntervalSince1970:)();
    static Date.now.getter();
    Date.distance(to:)();
    v21 = v20;
    v22 = *(v5 + 8);
    v22(v8, v4);
    v22(v10, v4);
    if (v21 >= 7200.0)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000270B4(v25, qword_1004B00F8);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Memento cache expired", v28, 2u);
      }

      sub_10019AB54();
      v2 = swift_allocError();
      *v29 = 1;
      swift_willThrow();
    }

    else
    {
      result = FilePath.loadString()()._countAndFlagsBits;
      v2 = v24;
      if (!v24)
      {
        return result;
      }
    }
  }

  v45 = v2;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  result = swift_dynamicCast();
  if (result && v44 == 2)
  {

    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000270B4(v30, qword_1004B00F8);
    v31 = v41;
    v19(v41, v43, v11);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136315138;
      sub_10019B5B4(&qword_1004AA058, &type metadata accessor for FilePath);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v42 + 8))(v31, v11);
      v39 = sub_1000026C0(v36, v38, &v45);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Memento cache %s doesn't exist", v34, 0xCu);
      sub_100003C3C(v35);
    }

    else
    {

      (*(v42 + 8))(v31, v11);
    }

    sub_10019AB54();
    swift_allocError();
    *v40 = 0;
    return swift_willThrow();
  }

  return result;
}

void MementoKeys.writeCache(_:to:)(uint64_t a1, void *a2)
{
  if (qword_1004A9E98 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FilePath();
  sub_1000270B4(v4, kDInitPersistStorage);
  v5 = FilePath.directoryExists()();
  if (!v6)
  {
    if (!v5)
    {
      FilePath.createDirectory(permissions:intermediateDirectories:)(0x1FFu, 0);
    }

    v7._countAndFlagsBits = a1;
    v7._object = a2;
    FilePath.save(_:append:)(v7, 0);
  }
}

uint64_t sub_100197D74()
{
  sub_1000039E8(&qword_1004AAC48);
  Option.wrappedValue.getter();
  v1 = sub_100013D10(*(v0 + 184));

  *(v0 + 176) = v1;
  *(v0 + 192) = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for MementoKeys();
  *(v0 + 256) = v2;
  Option.wrappedValue.getter();
  v3 = *(v0 + 200);
  *(v0 + 264) = v3;
  v4 = v3[2];
  *(v0 + 272) = v4;
  if (v4)
  {
    *(v0 + 432) = *(v2 + 24);
    *(v0 + 280) = 0;
    v5 = v3[4];
    *(v0 + 288) = v5;
    v6 = v3[5];
    *(v0 + 296) = v6;

    sub_1000039E8(&qword_1004AAC50);
    Option.wrappedValue.getter();
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    *(v0 + 304) = v8;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 96) = 4025955;
    *(v0 + 104) = 0xE300000000000000;
    v9._countAndFlagsBits = v5;
    v9._object = v6;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 0xD00000000000001ALL;
    v10._object = 0x800000010043DE30;
    String.append(_:)(v10);
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    *(v0 + 312) = v12;
    v13 = swift_task_alloc();
    *(v0 + 320) = v13;
    v13[2] = v7;
    v13[3] = v8;
    v13[4] = v11;
    v13[5] = v12;
    v13[6] = &off_100484CD8;
    v14 = swift_task_alloc();
    *(v0 + 328) = v14;
    v15 = sub_1000039E8(&qword_1004B07E0);
    *v14 = v0;
    v14[1] = sub_1001982A4;
    v16 = sub_10019AC64;
    v17 = v0 + 208;
    v18 = 0x800000010043DE50;
LABEL_11:

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v17, 0, 0, 0xD000000000000020, v18, v16, v13, v15);
  }

  *(v0 + 344) = 0x800000010043DE50;
  *(v0 + 352) = v1;
  v19 = *(v1 + 32);
  *(v0 + 436) = v19;
  v20 = -1;
  v21 = -1 << v19;
  if (-(-1 << v19) < 64)
  {
    v20 = ~(-1 << -(-1 << v19));
  }

  v22 = v20 & *(v1 + 56);
  if (v22)
  {
    v23 = 0;
LABEL_10:
    *(v0 + 360) = v22;
    *(v0 + 368) = v23;
    v26 = (*(v1 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v22)))));
    v27 = *v26;
    *(v0 + 376) = *v26;
    v28 = v26[1];
    *(v0 + 384) = v28;

    sub_1000039E8(&qword_1004AAC50);
    Option.wrappedValue.getter();
    v29 = *(v0 + 128);
    v30 = *(v0 + 136);
    *(v0 + 392) = v30;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 144) = 1029990773;
    *(v0 + 152) = 0xE400000000000000;
    v31._countAndFlagsBits = v27;
    v31._object = v28;
    String.append(_:)(v31);
    v32._countAndFlagsBits = 0xD000000000000019;
    v32._object = 0x800000010043DE80;
    String.append(_:)(v32);
    v33 = *(v0 + 144);
    v34 = *(v0 + 152);
    *(v0 + 400) = v34;
    v13 = swift_task_alloc();
    *(v0 + 408) = v13;
    v13[2] = v29;
    v13[3] = v30;
    v13[4] = v33;
    v13[5] = v34;
    v13[6] = &off_100484D08;
    v35 = swift_task_alloc();
    *(v0 + 416) = v35;
    v15 = sub_1000039E8(&qword_1004B07E0);
    *v35 = v0;
    v35[1] = sub_100198FD0;
    v18 = *(v0 + 344);
    v16 = sub_10019B600;
    v17 = v0 + 216;
    goto LABEL_11;
  }

  v24 = 0;
  v25 = ((63 - v21) >> 6) - 1;
  while (v25 != v24)
  {
    v23 = v24 + 1;
    v22 = *(v1 + 8 * v24++ + 64);
    if (v22)
    {
      goto LABEL_10;
    }
  }

  *(v0 + 232) = *(v0 + 192);
  sub_1000039E8(&qword_1004A6B48);
  sub_10000E720(&qword_1004A6B50, &qword_1004A6B48);
  v36 = BidirectionalCollection<>.joined(separator:)();
  v38 = v37;

  v39 = *(v0 + 8);

  return v39(v36, v38);
}

uint64_t sub_1001982A4()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_100198948;
  }

  else
  {

    v2 = sub_1001983E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001983E4()
{
  v1 = *(v0 + 208);
  if (*(v1 + 16))
  {
    v2 = sub_100013364(0x69557265626D656DLL, 0xE900000000000064);
    if (v3)
    {
      sub_100003CA0(*(v1 + 56) + 32 * v2, v0 + 48);

      sub_1000039E8(&qword_1004A6B48);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_6;
      }

      sub_10019ACE0(*(v0 + 240));
    }
  }

LABEL_6:
  v4 = *(v0 + 280) + 1;
  if (v4 != *(v0 + 272))
  {
    *(v0 + 280) = v4;
    v11 = *(v0 + 264) + 16 * v4;
    v12 = *(v11 + 32);
    *(v0 + 288) = v12;
    v13 = *(v11 + 40);
    *(v0 + 296) = v13;

    sub_1000039E8(&qword_1004AAC50);
    Option.wrappedValue.getter();
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    *(v0 + 304) = v15;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 96) = 4025955;
    *(v0 + 104) = 0xE300000000000000;
    v16._countAndFlagsBits = v12;
    v16._object = v13;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0xD00000000000001ALL;
    v17._object = 0x800000010043DE30;
    String.append(_:)(v17);
    v18 = *(v0 + 96);
    v19 = *(v0 + 104);
    *(v0 + 312) = v19;
    v20 = swift_task_alloc();
    *(v0 + 320) = v20;
    v20[2] = v14;
    v20[3] = v15;
    v20[4] = v18;
    v20[5] = v19;
    v20[6] = &off_100484CD8;
    v21 = swift_task_alloc();
    *(v0 + 328) = v21;
    v22 = sub_1000039E8(&qword_1004B07E0);
    *v21 = v0;
    v21[1] = sub_1001982A4;
    v23 = sub_10019AC64;
    v24 = 0x800000010043DE50;
    v25 = v0 + 208;
LABEL_16:

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v25, 0, 0, 0xD000000000000020, v24, v23, v20, v22);
  }

  v5 = *(v0 + 176);
  *(v0 + 344) = 0x800000010043DE50;
  *(v0 + 352) = v5;
  v6 = *(v5 + 32);
  *(v0 + 436) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -(-1 << v6));
  }

  v9 = v7 & *(v5 + 56);
  if (v9)
  {
    v10 = 0;
LABEL_15:
    *(v0 + 360) = v9;
    *(v0 + 368) = v10;
    v28 = (*(v5 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v9)))));
    v29 = *v28;
    *(v0 + 376) = *v28;
    v30 = v28[1];
    *(v0 + 384) = v30;

    sub_1000039E8(&qword_1004AAC50);
    Option.wrappedValue.getter();
    v31 = *(v0 + 128);
    v32 = *(v0 + 136);
    *(v0 + 392) = v32;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 144) = 1029990773;
    *(v0 + 152) = 0xE400000000000000;
    v33._countAndFlagsBits = v29;
    v33._object = v30;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 0xD000000000000019;
    v34._object = 0x800000010043DE80;
    String.append(_:)(v34);
    v35 = *(v0 + 144);
    v36 = *(v0 + 152);
    *(v0 + 400) = v36;
    v20 = swift_task_alloc();
    *(v0 + 408) = v20;
    v20[2] = v31;
    v20[3] = v32;
    v20[4] = v35;
    v20[5] = v36;
    v20[6] = &off_100484D08;
    v37 = swift_task_alloc();
    *(v0 + 416) = v37;
    v22 = sub_1000039E8(&qword_1004B07E0);
    *v37 = v0;
    v37[1] = sub_100198FD0;
    v24 = *(v0 + 344);
    v23 = sub_10019B600;
    v25 = v0 + 216;
    goto LABEL_16;
  }

  v26 = 0;
  v27 = ((63 - v8) >> 6) - 1;
  while (v27 != v26)
  {
    v10 = v26 + 1;
    v9 = *(v5 + 8 * v26++ + 64);
    if (v9)
    {
      goto LABEL_15;
    }
  }

  *(v0 + 232) = *(v0 + 192);
  sub_1000039E8(&qword_1004A6B48);
  sub_10000E720(&qword_1004A6B50, &qword_1004A6B48);
  v38 = BidirectionalCollection<>.joined(separator:)();
  v40 = v39;

  v41 = *(v0 + 8);

  return v41(v38, v40);
}

uint64_t sub_100198948()
{
  v52 = v0;

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 296);
  if (v4)
  {
    v6 = *(v0 + 288);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v51 = v9;
    *v7 = 136315394;
    v10 = sub_1000026C0(v6, v5, &v51);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to query memberUid from group %s: %@", v7, 0x16u);
    sub_10019AC78(v8);

    sub_100003C3C(v9);
  }

  else
  {
  }

  v12 = *(v0 + 280) + 1;
  if (v12 != *(v0 + 272))
  {
    *(v0 + 280) = v12;
    v19 = *(v0 + 264) + 16 * v12;
    v20 = *(v19 + 32);
    *(v0 + 288) = v20;
    v21 = *(v19 + 40);
    *(v0 + 296) = v21;

    sub_1000039E8(&qword_1004AAC50);
    Option.wrappedValue.getter();
    v22 = *(v0 + 80);
    v23 = *(v0 + 88);
    *(v0 + 304) = v23;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 96) = 4025955;
    *(v0 + 104) = 0xE300000000000000;
    v24._countAndFlagsBits = v20;
    v24._object = v21;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 0xD00000000000001ALL;
    v25._object = 0x800000010043DE30;
    String.append(_:)(v25);
    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    *(v0 + 312) = v27;
    v28 = swift_task_alloc();
    *(v0 + 320) = v28;
    v28[2] = v22;
    v28[3] = v23;
    v28[4] = v26;
    v28[5] = v27;
    v28[6] = &off_100484CD8;
    v29 = swift_task_alloc();
    *(v0 + 328) = v29;
    v30 = sub_1000039E8(&qword_1004B07E0);
    *v29 = v0;
    v29[1] = sub_1001982A4;
    v31 = sub_10019AC64;
    v32 = v0 + 208;
    v33 = 0x800000010043DE50;
LABEL_16:

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v32, 0, 0, 0xD000000000000020, v33, v31, v28, v30);
  }

  v13 = *(v0 + 176);
  *(v0 + 344) = 0x800000010043DE50;
  *(v0 + 352) = v13;
  v14 = *(v13 + 32);
  *(v0 + 436) = v14;
  v15 = -1;
  v16 = -1 << v14;
  if (-(-1 << v14) < 64)
  {
    v15 = ~(-1 << -(-1 << v14));
  }

  v17 = v15 & *(v13 + 56);
  if (v17)
  {
    v18 = 0;
LABEL_15:
    *(v0 + 360) = v17;
    *(v0 + 368) = v18;
    v36 = (*(v13 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v17)))));
    v37 = *v36;
    *(v0 + 376) = *v36;
    v38 = v36[1];
    *(v0 + 384) = v38;

    sub_1000039E8(&qword_1004AAC50);
    Option.wrappedValue.getter();
    v39 = *(v0 + 128);
    v40 = *(v0 + 136);
    *(v0 + 392) = v40;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 144) = 1029990773;
    *(v0 + 152) = 0xE400000000000000;
    v41._countAndFlagsBits = v37;
    v41._object = v38;
    String.append(_:)(v41);
    v42._countAndFlagsBits = 0xD000000000000019;
    v42._object = 0x800000010043DE80;
    String.append(_:)(v42);
    v43 = *(v0 + 144);
    v44 = *(v0 + 152);
    *(v0 + 400) = v44;
    v28 = swift_task_alloc();
    *(v0 + 408) = v28;
    v28[2] = v39;
    v28[3] = v40;
    v28[4] = v43;
    v28[5] = v44;
    v28[6] = &off_100484D08;
    v45 = swift_task_alloc();
    *(v0 + 416) = v45;
    v30 = sub_1000039E8(&qword_1004B07E0);
    *v45 = v0;
    v45[1] = sub_100198FD0;
    v33 = *(v0 + 344);
    v31 = sub_10019B600;
    v32 = v0 + 216;
    goto LABEL_16;
  }

  v34 = 0;
  v35 = ((63 - v16) >> 6) - 1;
  while (v35 != v34)
  {
    v18 = v34 + 1;
    v17 = *(v13 + 8 * v34++ + 64);
    if (v17)
    {
      goto LABEL_15;
    }
  }

  *(v0 + 232) = *(v0 + 192);
  sub_1000039E8(&qword_1004A6B48);
  sub_10000E720(&qword_1004A6B50, &qword_1004A6B48);
  v46 = BidirectionalCollection<>.joined(separator:)();
  v48 = v47;

  v49 = *(v0 + 8);

  return v49(v46, v48);
}

uint64_t sub_100198FD0()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_100199664;
  }

  else
  {

    v2 = sub_100199100;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100199100()
{
  v40 = v0;
  v1 = *(v0 + 216);
  if (*(v1 + 16) && (v2 = sub_100013364(0x696C627550687373, 0xEC00000079654B63), (v3 & 1) != 0))
  {
    sub_100003CA0(*(v1 + 56) + 32 * v2, v0 + 16);

    sub_1000039E8(&qword_1004A6B48);
    if (swift_dynamicCast())
    {

      sub_10034A28C(v4);
      if (qword_1004A9F20 != -1)
      {
LABEL_24:
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000270B4(v5, qword_1004B00F8);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 384);
      if (v8)
      {
        v10 = *(v0 + 376);
        v11 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v11 = 136315394;
        v12 = sub_1000026C0(v10, v9, &v39);

        *(v11 + 4) = v12;
        *(v11 + 12) = 2080;
        v13 = Array.description.getter();
        v15 = v14;

        v16 = sub_1000026C0(v13, v15, &v39);

        *(v11 + 14) = v16;
        _os_log_impl(&_mh_execute_header, v6, v7, "Added public key for user %s:\n%s", v11, 0x16u);
        swift_arrayDestroy();

        goto LABEL_9;
      }
    }
  }

  else
  {
  }

LABEL_9:
  v17 = *(v0 + 368);
  v18 = (*(v0 + 360) - 1) & *(v0 + 360);
  if (v18)
  {
    v19 = *(v0 + 352);
LABEL_15:
    *(v0 + 360) = v18;
    *(v0 + 368) = v17;
    v21 = (*(v19 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v18)))));
    v22 = *v21;
    *(v0 + 376) = *v21;
    v23 = v21[1];
    *(v0 + 384) = v23;

    sub_1000039E8(&qword_1004AAC50);
    Option.wrappedValue.getter();
    v24 = *(v0 + 128);
    v25 = *(v0 + 136);
    *(v0 + 392) = v25;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 144) = 1029990773;
    *(v0 + 152) = 0xE400000000000000;
    v26._countAndFlagsBits = v22;
    v26._object = v23;
    String.append(_:)(v26);
    v27._object = 0x800000010043DE80;
    v27._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v27);
    v28 = *(v0 + 144);
    v29 = *(v0 + 152);
    *(v0 + 400) = v29;
    v30 = swift_task_alloc();
    *(v0 + 408) = v30;
    v30[2] = v24;
    v30[3] = v25;
    v30[4] = v28;
    v30[5] = v29;
    v30[6] = &off_100484D08;
    v31 = swift_task_alloc();
    *(v0 + 416) = v31;
    v32 = sub_1000039E8(&qword_1004B07E0);
    *v31 = v0;
    v31[1] = sub_100198FD0;
    v33 = *(v0 + 344);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 216, 0, 0, 0xD000000000000020, v33, sub_10019B600, v30, v32);
  }

  else
  {
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v20 >= (((1 << *(v0 + 436)) + 63) >> 6))
      {
        break;
      }

      v19 = *(v0 + 352);
      v18 = *(v19 + 8 * v20 + 56);
      ++v17;
      if (v18)
      {
        v17 = v20;
        goto LABEL_15;
      }
    }

    *(v0 + 232) = *(v0 + 192);
    sub_1000039E8(&qword_1004A6B48);
    sub_10000E720(&qword_1004A6B50, &qword_1004A6B48);
    v34 = BidirectionalCollection<>.joined(separator:)();
    v36 = v35;

    v37 = *(v0 + 8);

    return v37(v34, v36);
  }
}

uint64_t sub_100199664()
{
  v35 = v0;

  if (qword_1004A9F20 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 384);
  if (v4)
  {
    v6 = *(v0 + 376);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v7 = 136315394;
    v10 = sub_1000026C0(v6, v5, &v34);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to query sshPublicKey from user %s: %@", v7, 0x16u);
    sub_10019AC78(v8);

    sub_100003C3C(v9);
  }

  else
  {
  }

  v12 = *(v0 + 368);
  v13 = (*(v0 + 360) - 1) & *(v0 + 360);
  if (v13)
  {
    v14 = *(v0 + 352);
LABEL_11:
    *(v0 + 360) = v13;
    *(v0 + 368) = v12;
    v16 = (*(v14 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
    v17 = *v16;
    *(v0 + 376) = *v16;
    v18 = v16[1];
    *(v0 + 384) = v18;

    sub_1000039E8(&qword_1004AAC50);
    Option.wrappedValue.getter();
    v19 = *(v0 + 128);
    v20 = *(v0 + 136);
    *(v0 + 392) = v20;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 144) = 1029990773;
    *(v0 + 152) = 0xE400000000000000;
    v21._countAndFlagsBits = v17;
    v21._object = v18;
    String.append(_:)(v21);
    v22._object = 0x800000010043DE80;
    v22._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v22);
    v23 = *(v0 + 144);
    v24 = *(v0 + 152);
    *(v0 + 400) = v24;
    v25 = swift_task_alloc();
    *(v0 + 408) = v25;
    v25[2] = v19;
    v25[3] = v20;
    v25[4] = v23;
    v25[5] = v24;
    v25[6] = &off_100484D08;
    v26 = swift_task_alloc();
    *(v0 + 416) = v26;
    v27 = sub_1000039E8(&qword_1004B07E0);
    *v26 = v0;
    v26[1] = sub_100198FD0;
    v28 = *(v0 + 344);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 216, 0, 0, 0xD000000000000020, v28, sub_10019B600, v25, v27);
  }

  else
  {
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v15 >= (((1 << *(v0 + 436)) + 63) >> 6))
      {
        break;
      }

      v14 = *(v0 + 352);
      v13 = *(v14 + 8 * v15 + 56);
      ++v12;
      if (v13)
      {
        v12 = v15;
        goto LABEL_11;
      }
    }

    *(v0 + 232) = *(v0 + 192);
    sub_1000039E8(&qword_1004A6B48);
    sub_10000E720(&qword_1004A6B50, &qword_1004A6B48);
    v29 = BidirectionalCollection<>.joined(separator:)();
    v31 = v30;

    v32 = *(v0 + 8);

    return v32(v29, v31);
  }
}

uint64_t MementoKeys.run()()
{
  v1[2] = v0;
  v2 = type metadata accessor for FilePath();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100199BF8, 0, 0);
}

uint64_t sub_100199BF8()
{
  v1 = v0[5];
  MementoKeys.getCacheFile()(v1);
  v2 = MementoKeys.readCache(from:)(v1);
  v0[6] = 0;
  v3 = v2;
  v5 = v4;
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  sub_1000039E8(&qword_1004AA990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100376A40;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 32) = v3;
  *(v9 + 40) = v5;
  print(_:separator:terminator:)();

  (*(v7 + 8))(v6, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100199E44(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = v2;

  if (v2)
  {
    v5 = sub_10019A240;
  }

  else
  {
    v5 = sub_100199F5C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100199F5C()
{
  if (qword_1004A9E98 != -1)
  {
    swift_once();
  }

  sub_1000270B4(*(v0 + 24), kDInitPersistStorage);
  v1 = FilePath.directoryExists()();
  if (!v2)
  {
    if (!v1)
    {
      FilePath.createDirectory(permissions:intermediateDirectories:)(0x1FFu, 0);
    }

    FilePath.save(_:append:)(*(v0 + 72), 0);
    if (!v3)
    {
      v4 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v4, v17, "Memento cache saved", v18, 2u);
      }

      goto LABEL_9;
    }
  }

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fail to save memento cache: %@", v6, 0xCu);
    sub_10019AC78(v7);

LABEL_9:

    goto LABEL_11;
  }

LABEL_11:
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v12 = *(v0 + 32);
  v11 = *(v0 + 40);
  v13 = *(v0 + 24);
  sub_1000039E8(&qword_1004AA990);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100376A40;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 32) = v10;
  *(v14 + 40) = v9;
  print(_:separator:terminator:)();

  (*(v12 + 8))(v11, v13);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10019A240()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10019A2D0()
{
  v1 = 0x7370756F7267;
  if (*v0 != 1)
  {
    v1 = 0x767265537061646CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7372657375;
  }
}

uint64_t sub_10019A328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019B49C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10019A350(uint64_t a1)
{
  v2 = sub_10019AD50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019A38C(uint64_t a1)
{
  v2 = sub_10019AD50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MementoKeys.init()()
{
  sub_100196238();
  type metadata accessor for MementoKeys();
  sub_10019668C();
  return sub_100196BF4(0x6C7070612E646F6ELL, 0xED00006D6F632E65);
}

uint64_t MementoKeys.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1000039E8(&qword_1004AAC50);
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v25 - v3;
  v32 = sub_1000039E8(&qword_1004AAC48);
  v30 = *(v32 - 8);
  v4 = __chkstk_darwin(v32);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v31 = &v25 - v7;
  v8 = sub_1000039E8(&qword_1004AAC60);
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for MementoKeys();
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100196238();
  v15 = *(v12 + 28);
  sub_10019668C();
  v16 = *(v12 + 32);
  sub_100196BF4(0x6C7070612E646F6ELL, 0xED00006D6F632E65);
  v17 = a1[3];
  v36 = a1;
  sub_10000E2A8(a1, v17);
  sub_10019AD50();
  v18 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v35 = v15;
    v25 = v16;
    v39 = 0;
    sub_10000E720(&qword_1004AAC70, &qword_1004AAC48);
    v19 = v31;
    v20 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = *(v30 + 40);
    (v31)(v14, v19, v20);
    v38 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (v31)(&v14[v35], v6, v20);
    v37 = 2;
    sub_10000E720(&qword_1004AAC78, &qword_1004AAC50);
    v23 = v28;
    v22 = v29;
    v24 = v34;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v33 + 8))(v10, v24);
    (*(v26 + 40))(&v14[v25], v23, v22);
    sub_10019AE00(v14, v27);
  }

  sub_100003C3C(v36);
  return sub_10019ADA4(v14);
}

uint64_t MementoKeys.init(users:groups:ldapServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100196238();
  type metadata accessor for MementoKeys();
  sub_10019668C();
  return sub_100196BF4(a3, a4);
}

uint64_t sub_10019A980()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001FE0;

  return MementoKeys.run()();
}

uint64_t sub_10019AA28()
{
  sub_100196238();
  sub_10019668C();
  return sub_100196BF4(0x6C7070612E646F6ELL, 0xED00006D6F632E65);
}

Swift::Int FilePath.ArchiveType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

unint64_t sub_10019AB54()
{
  result = qword_1004AAC58;
  if (!qword_1004AAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAC58);
  }

  return result;
}

uint64_t sub_10019ABA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  sub_10019B5B4(&qword_1004AA3C8, type metadata accessor for URLResourceKey);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100184BA4(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10019AC78(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AA050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10019ACE0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_100012140(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_10019AD50()
{
  result = qword_1004AAC68;
  if (!qword_1004AAC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAC68);
  }

  return result;
}

uint64_t sub_10019ADA4(uint64_t a1)
{
  v2 = type metadata accessor for MementoKeys();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10019AE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MementoKeys();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10019AF40()
{
  result = qword_1004AAC98;
  if (!qword_1004AAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAC98);
  }

  return result;
}

uint64_t sub_10019AF94@<X0>(void *a1@<X8>)
{
  sub_1000039E8(&qword_1004AAC48);
  result = Option.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10019B00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000039E8(&qword_1004AAC48);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000039E8(&qword_1004AAC50);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10019B128(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000039E8(&qword_1004AAC48);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000039E8(&qword_1004AAC50);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10019B23C()
{
  sub_10019B2C0();
  if (v0 <= 0x3F)
  {
    sub_10019B324();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10019B2C0()
{
  if (!qword_1004AAD08)
  {
    sub_100003A94(&qword_1004A6B48);
    v0 = type metadata accessor for Option();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AAD08);
    }
  }
}

void sub_10019B324()
{
  if (!qword_1004AAD10)
  {
    v0 = type metadata accessor for Option();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AAD10);
    }
  }
}

unint64_t sub_10019B398()
{
  result = qword_1004AAD48;
  if (!qword_1004AAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAD48);
  }

  return result;
}

unint64_t sub_10019B3F0()
{
  result = qword_1004AAD50;
  if (!qword_1004AAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAD50);
  }

  return result;
}

unint64_t sub_10019B448()
{
  result = qword_1004AAD58;
  if (!qword_1004AAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAD58);
  }

  return result;
}

uint64_t sub_10019B49C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7372657375 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7370756F7267 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x767265537061646CLL && a2 == 0xEA00000000007265)
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

uint64_t sub_10019B5B4(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL DInitResultConfig.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100484D38, v2);

  return v3 != 0;
}

BOOL DInitResultConfig.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100484D70, v2);

  return v3 != 0;
}

Swift::Int sub_10019B6CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10019B750()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10019B7AC@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100484DD0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10019B828@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100484E08, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10019B890(uint64_t a1)
{
  v2 = sub_10019BFF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019B8CC(uint64_t a1)
{
  v2 = sub_10019BFF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10019B920@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10019BE80(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t DInitResultConfig.encode(to:)(void *a1, char a2)
{
  v4 = sub_1000039E8(&qword_1004AAD80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_10000E2A8(a1, a1[3]);
  sub_10019BFF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = a2;
  sub_10019C044();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t DInitResultConfig.hash(into:)()
{
  String.hash(into:)();
}

Swift::Int DInitResultConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10019BBD8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10019BC70()
{
  String.hash(into:)();
}

Swift::Int sub_10019BCF4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t _s10DarwinInit17DInitResultConfigV2eeoiySbAC_ACtFZ_0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x6E776F6474756873;
    }

    else
    {
      v3 = 1953069157;
    }

    if (v2 == 1)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    v5 = a2;
    if (a2)
    {
LABEL_9:
      if (v5 == 1)
      {
        v6 = 0x6E776F6474756873;
      }

      else
      {
        v6 = 1953069157;
      }

      if (v5 == 1)
      {
        v7 = 0xE800000000000000;
      }

      else
      {
        v7 = 0xE400000000000000;
      }

      if (v3 != v6)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v4 = 0xE600000000000000;
    v3 = 0x746F6F626572;
    v5 = a2;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  v7 = 0xE600000000000000;
  if (v3 != 0x746F6F626572)
  {
LABEL_21:
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_22;
  }

LABEL_19:
  if (v4 != v7)
  {
    goto LABEL_21;
  }

  v8 = 1;
LABEL_22:

  return v8 & 1;
}

void *sub_10019BE80(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AADC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_10000E2A8(a1, a1[3]);
  sub_10019BFF0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100003C3C(a1);
  }

  else
  {
    sub_10019C280();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100003C3C(a1);
  }

  return v7;
}

unint64_t sub_10019BFF0()
{
  result = qword_1004AAD88;
  if (!qword_1004AAD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAD88);
  }

  return result;
}

unint64_t sub_10019C044()
{
  result = qword_1004AAD90;
  if (!qword_1004AAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAD90);
  }

  return result;
}

unint64_t sub_10019C09C()
{
  result = qword_1004AAD98;
  if (!qword_1004AAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAD98);
  }

  return result;
}

unint64_t sub_10019C0F4()
{
  result = qword_1004AADA0;
  if (!qword_1004AADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AADA0);
  }

  return result;
}

unint64_t sub_10019C14C()
{
  result = qword_1004AADA8;
  if (!qword_1004AADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AADA8);
  }

  return result;
}

unint64_t sub_10019C1A4()
{
  result = qword_1004AADB0;
  if (!qword_1004AADB0)
  {
    sub_100003A94(&qword_1004AADB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AADB0);
  }

  return result;
}

unint64_t sub_10019C20C()
{
  result = qword_1004AADC0;
  if (!qword_1004AADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AADC0);
  }

  return result;
}

unint64_t sub_10019C280()
{
  result = qword_1004AADD0;
  if (!qword_1004AADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AADD0);
  }

  return result;
}

void FilePath.extract(to:using:)(NSObject *a1, uint64_t a2)
{
  v3 = v2;
  v143 = a2;
  v5 = sub_1000039E8(&qword_1004AA048);
  __chkstk_darwin(v5 - 8);
  v144 = &v134[-v6];
  v7 = type metadata accessor for AEADecryptionParameters();
  v141 = *(v7 - 8);
  v142 = v7;
  __chkstk_darwin(v7);
  v139 = &v134[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v140 = &v134[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v150 = &v134[-v14];
  v15 = __chkstk_darwin(v13);
  v17 = &v134[-v16];
  v18 = __chkstk_darwin(v15);
  v154 = &v134[-v19];
  v20 = __chkstk_darwin(v18);
  v145 = &v134[-v21];
  v22 = __chkstk_darwin(v20);
  v24 = &v134[-v23];
  __chkstk_darwin(v22);
  v26 = &v134[-v25];
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v138 = v17;
  v27 = type metadata accessor for Logger();
  v28 = sub_1000270B4(v27, qword_1004B00F8);
  v29 = *(v10 + 16);
  v29(v26, v3, v9);
  v149 = a1;
  v151 = v29;
  v152 = (v10 + 16);
  v29(v24, a1, v9);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v147 = v3;
    v33 = v32;
    v137 = swift_slowAlloc();
    v155 = v137;
    *v33 = 136315394;
    sub_100190550();
    v136 = v30;
    v135 = v31;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v146 = v28;
    v36 = v35;
    v148 = v10;
    v37 = *(v10 + 8);
    (v37)(v26, v9);
    v38 = sub_1000026C0(v34, v36, &v155);
    v28 = v146;

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    (v37)(v24, v9);
    v42 = sub_1000026C0(v39, v41, &v155);

    *(v33 + 14) = v42;
    v43 = v136;
    _os_log_impl(&_mh_execute_header, v136, v135, "Extracting %s to %s", v33, 0x16u);
    swift_arrayDestroy();

    v3 = v147;
  }

  else
  {

    v37 = *(v10 + 8);
    (v37)(v24, v9);
    (v37)(v26, v9);
  }

  v44 = v153;
  FilePath.readArchiveMagic()();
  v46 = v154;
  if (v44)
  {
    v47 = v150;
    v151(v150, v3, v9);
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v153 = v37;
      v52 = v9;
      v53 = v51;
      v54 = swift_slowAlloc();
      v154 = v44;
      v55 = v54;
      v155 = v54;
      *v50 = 136315394;
      sub_100190550();
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v47;
      v58 = v56;
      v60 = v59;
      (v153)(v57, v52);
      v61 = sub_1000026C0(v58, v60, &v155);

      *(v50 + 4) = v61;
      *(v50 + 12) = 2112;
      swift_errorRetain();
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 14) = v62;
      *v53 = v62;
      _os_log_impl(&_mh_execute_header, v48, v49, "Failed to read archive magic for %s: %@", v50, 0x16u);
      sub_100013F2C(v53, &qword_1004AA050);

      sub_100003C3C(v55);
    }

    else
    {

      (v37)(v47, v9);
    }

LABEL_25:
    swift_willThrow();
    return;
  }

  if (v45 == 2)
  {
    FilePath.extractUsingLibarchive(to:)(v149);
LABEL_14:
    v153 = v37;
    goto LABEL_15;
  }

  if (v45)
  {
    FilePath.extractUncompressedAppleArchive(to:)(v149);
    goto LABEL_14;
  }

  v68 = v144;
  sub_10019EB68(v143, v144);
  v69 = v142;
  if ((*(v141 + 48))(v68, 1, v142) == 1)
  {
    sub_100013F2C(v68, &qword_1004AA048);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "AEA decryption parameters unset for Apple Encrypted Archive. Unable to extract.", v72, 2u);
    }

    sub_100187D3C();
    swift_allocError();
    *v73 = 22;
    swift_willThrow();
    swift_errorRetain();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v155 = v83;
      *v82 = 136446210;
      swift_getErrorValue();
      v84 = Error.localizedDescription.getter();
      v86 = sub_1000026C0(v84, v85, &v155);

      *(v82 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v80, v81, "Failed to extract: %{public}s", v82, 0xCu);
      sub_100003C3C(v83);
    }

    goto LABEL_25;
  }

  v153 = v37;
  v74 = v68;
  v75 = v69;
  v76 = v139;
  sub_10019EBD8(v74, v139);
  v77 = *(v75 + 20);
  v78 = *v76;
  v79 = v76[1];
  sub_1000318C0(*v76, v79);
  FilePath.extractAppleEncryptedArchive(to:using:expectingArchiveIdentifier:mode:)(v149, v76 + v77, v78, v79, 0x10000);
  sub_10019EC3C(v76);
  sub_100031928(v78, v79);
  v46 = v154;
LABEL_15:
  v147 = v3;
  v63 = v149;
  v64 = FilePath.directoryExists()();
  v66 = v65;
  v146 = v28;
  if (v65)
  {

    v66 = 0;
    v67 = v145;
  }

  else
  {
    v67 = v145;
    if (v64)
    {
      goto LABEL_30;
    }
  }

  v151(v67, v63, v9);
  v87 = v67;
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v150 = 0;
    v91 = v90;
    v92 = swift_slowAlloc();
    v155 = v92;
    *v91 = 136446210;
    sub_100190550();
    v93 = dispatch thunk of CustomStringConvertible.description.getter();
    v95 = v94;
    (v153)(v87, v9);
    v96 = sub_1000026C0(v93, v95, &v155);
    v63 = v149;

    *(v91 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v88, v89, "Nothing extracted to %{public}s", v91, 0xCu);
    sub_100003C3C(v92);
    v46 = v154;

    v66 = v150;
  }

  else
  {

    (v153)(v87, v9);
  }

LABEL_30:
  v151(v46, v63, v9);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v150 = v66;
    v100 = v99;
    v101 = v46;
    v102 = swift_slowAlloc();
    v155 = v102;
    *v100 = 136315138;
    sub_100190550();
    v103 = dispatch thunk of CustomStringConvertible.description.getter();
    v105 = v104;
    (v153)(v101, v9);
    v106 = sub_1000026C0(v103, v105, &v155);
    v63 = v149;

    *(v100 + 4) = v106;
    _os_log_impl(&_mh_execute_header, v97, v98, "Successfully extracted to %s", v100, 0xCu);
    sub_100003C3C(v102);

    v66 = v150;
  }

  else
  {

    (v153)(v46, v9);
  }

  v107 = v147;
  v108 = v66;
  FilePath.performDeepEnumerationOfFiles()();
  if (v66)
  {
    v109 = v140;
    v151(v140, v63, v9);
    swift_errorRetain();
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = v109;
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v154 = v108;
      v115 = v114;
      v152 = swift_slowAlloc();
      v155 = v152;
      *v113 = 136315394;
      sub_100190550();
      v116 = dispatch thunk of CustomStringConvertible.description.getter();
      v118 = v117;
      (v153)(v112, v9);
      v119 = sub_1000026C0(v116, v118, &v155);

      *(v113 + 4) = v119;
      *(v113 + 12) = 2112;
      swift_errorRetain();
      v120 = _swift_stdlib_bridgeErrorToNSError();
      *(v113 + 14) = v120;
      *v115 = v120;
      _os_log_impl(&_mh_execute_header, v110, v111, "Failed to enumerate the contents of %s: %@", v113, 0x16u);
      sub_100013F2C(v115, &qword_1004AA050);

      sub_100003C3C(v152);
    }

    else
    {

      (v153)(v109, v9);
    }
  }

  else
  {
    v121 = v138;
    v151(v138, v107, v9);

    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v155 = v154;
      *v124 = 136315394;
      sub_100190550();
      v125 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v152) = v123;
      v126 = v125;
      v128 = v127;
      (v153)(v121, v9);
      v129 = sub_1000026C0(v126, v128, &v155);

      *(v124 + 4) = v129;
      *(v124 + 12) = 2080;
      v130 = Array.description.getter();
      v132 = v131;

      v133 = sub_1000026C0(v130, v132, &v155);

      *(v124 + 14) = v133;
      _os_log_impl(&_mh_execute_header, v122, v152, "Extracted %s with contents: %s", v124, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (v153)(v121, v9);
    }
  }
}

uint64_t sub_10019D2C4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  do
  {
    result = a2(a1);
  }

  while (result == -10);
  if (result <= -21)
  {
    if (result == -30)
    {
      if (archive_error_string())
      {
        v14 = String.init(cString:)();
        v16 = v15;
        sub_10019EC98();
        swift_allocError();
        *v17 = v14;
        *(v17 + 8) = v16;
      }

      else
      {
        sub_10019EC98();
        swift_allocError();
        *v17 = 0;
        *(v17 + 8) = 0;
      }

      *(v17 + 16) = 3;
      return swift_willThrow();
    }

    if (result == -25)
    {
      if (archive_error_string())
      {
        v6 = String.init(cString:)();
        v8 = v7;
        sub_10019EC98();
        swift_allocError();
        *v9 = v6;
        *(v9 + 8) = v8;
      }

      else
      {
        sub_10019EC98();
        swift_allocError();
        *v9 = 0;
        *(v9 + 8) = 0;
      }

      *(v9 + 16) = 2;
      return swift_willThrow();
    }

LABEL_15:
    if (archive_error_string())
    {
      v18 = String.init(cString:)();
      v20 = v19;
      sub_10019EC98();
      swift_allocError();
      *v21 = v18;
      *(v21 + 8) = v20;
    }

    else
    {
      sub_10019EC98();
      swift_allocError();
      *v21 = 0;
      *(v21 + 8) = 0;
    }

    *(v21 + 16) = 0;
    return swift_willThrow();
  }

  if (result == -20)
  {
    if (archive_error_string())
    {
      v10 = String.init(cString:)();
      v12 = v11;
      sub_10019EC98();
      swift_allocError();
      *v13 = v10;
      *(v13 + 8) = v12;
    }

    else
    {
      sub_10019EC98();
      swift_allocError();
      *v13 = 0;
      *(v13 + 8) = 0;
    }

    *(v13 + 16) = 1;
    return swift_willThrow();
  }

  if (!result)
  {
    return result;
  }

  if (result != 1)
  {
    goto LABEL_15;
  }

  sub_10019EC98();
  swift_allocError();
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 4;
  return swift_willThrow();
}

uint64_t sub_10019D52C()
{
  while (1)
  {
    do
    {
      data_block = archive_read_data_block();
      if (data_block <= -11)
      {
        switch(data_block)
        {
          case -30:
            if (!archive_error_string())
            {
LABEL_26:
              sub_10019EC98();
              swift_allocError();
              *v2 = 0;
              *(v2 + 8) = 0;
              v3 = 3;
              goto LABEL_30;
            }

LABEL_20:
            v10 = String.init(cString:)();
            v12 = v11;
            sub_10019EC98();
            swift_allocError();
            *v2 = v10;
            *(v2 + 8) = v12;
            v3 = 3;
            goto LABEL_30;
          case -25:
            if (!archive_error_string())
            {
              goto LABEL_24;
            }

            goto LABEL_18;
          case -20:
            if (!archive_error_string())
            {
LABEL_28:
              sub_10019EC98();
              swift_allocError();
              *v2 = 0;
              *(v2 + 8) = 0;
              goto LABEL_29;
            }

LABEL_16:
            v4 = String.init(cString:)();
            v6 = v5;
            sub_10019EC98();
            swift_allocError();
            *v2 = v4;
            *(v2 + 8) = v6;
LABEL_29:
            v3 = 1;
            goto LABEL_30;
        }

LABEL_40:
        if (!archive_error_string())
        {
          goto LABEL_38;
        }

        goto LABEL_41;
      }
    }

    while (data_block == -10);
    if (data_block)
    {
      if (data_block == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_40;
    }

    do
    {
      v1 = archive_write_data_block();
      if (v1 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_43:
        __break(1u);
      }

      if (v1 > 0x7FFFFFFF)
      {
        goto LABEL_43;
      }
    }

    while (v1 == -10);
    if (v1 <= -21)
    {
      break;
    }

    if (v1 == -20)
    {
      if (!archive_error_string())
      {
        goto LABEL_28;
      }

      goto LABEL_16;
    }

    if (v1)
    {
      if (v1 != 1)
      {
        goto LABEL_37;
      }

LABEL_11:
      sub_10019EC98();
      swift_allocError();
      *v2 = 0;
      *(v2 + 8) = 0;
      v3 = 4;
      goto LABEL_30;
    }
  }

  if (v1 == -30)
  {
    if (!archive_error_string())
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  if (v1 == -25)
  {
    if (!archive_error_string())
    {
LABEL_24:
      sub_10019EC98();
      swift_allocError();
      *v2 = 0;
      *(v2 + 8) = 0;
      v3 = 2;
      goto LABEL_30;
    }

LABEL_18:
    v7 = String.init(cString:)();
    v9 = v8;
    sub_10019EC98();
    swift_allocError();
    *v2 = v7;
    *(v2 + 8) = v9;
    v3 = 2;
LABEL_30:
    *(v2 + 16) = v3;
    goto LABEL_31;
  }

LABEL_37:
  if (!archive_error_string())
  {
LABEL_38:
    sub_10019EC98();
    swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    goto LABEL_31;
  }

LABEL_41:
  v15 = String.init(cString:)();
  v17 = v16;
  sub_10019EC98();
  swift_allocError();
  *v18 = v15;
  *(v18 + 8) = v17;
  *(v18 + 16) = 0;
LABEL_31:
  swift_willThrow();
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  if (swift_dynamicCast())
  {
    if (v20 == 4 && v19 == 0)
    {
    }

    sub_10019ECF4(v19, *(&v19 + 1), v20);
  }
}

uint64_t FilePath.extractUsingLibarchive(to:)(NSObject *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v110 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v112 = &v105 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v105 - v11;
  __chkstk_darwin(v10);
  v14 = &v105 - v13;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000270B4(v15, qword_1004B00F8);
  v16 = *(v5 + 16);
  v16(v14, v1, v4);
  v111 = a1;
  v108 = v16;
  v109 = v5 + 16;
  v16(v12, a1, v4);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v114 = v5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *&v117 = v107;
    *v20 = 136315394;
    sub_100190550();
    v113 = v2;
    v106 = v18;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v4;
    v24 = v23;
    v105 = v17;
    v25 = *(v5 + 8);
    v25(v14, v22);
    v26 = sub_1000026C0(v21, v24, &v117);
    v4 = v22;

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v25(v12, v22);
    v30 = v25;
    v31 = sub_1000026C0(v27, v29, &v117);
    v2 = v113;

    *(v20 + 14) = v31;
    v32 = v105;
    _os_log_impl(&_mh_execute_header, v105, v106, "Extracting item at %s into %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v30 = *(v5 + 8);
    v30(v12, v4);
    v30(v14, v4);
  }

  v33 = archive_read_new();
  do
  {
    support_filter_all = archive_read_support_filter_all();
  }

  while (support_filter_all == -10);
  if (support_filter_all <= -21)
  {
    if (support_filter_all != -30)
    {
      if (support_filter_all != -25)
      {
        goto LABEL_30;
      }

LABEL_20:
      if (archive_error_string())
      {
        v38 = String.init(cString:)();
        v40 = v39;
        sub_10019EC98();
        swift_allocError();
        *v36 = v38;
        *(v36 + 8) = v40;
      }

      else
      {
        sub_10019EC98();
        swift_allocError();
        *v36 = 0;
        *(v36 + 8) = 0;
      }

      v37 = 2;
      goto LABEL_37;
    }

LABEL_33:
    if (archive_error_string())
    {
      v48 = String.init(cString:)();
      v50 = v49;
      sub_10019EC98();
      swift_allocError();
      *v36 = v48;
      *(v36 + 8) = v50;
    }

    else
    {
      sub_10019EC98();
      swift_allocError();
      *v36 = 0;
      *(v36 + 8) = 0;
    }

    v37 = 3;
    goto LABEL_37;
  }

  if (support_filter_all == -20)
  {
LABEL_22:
    if (archive_error_string())
    {
      v41 = String.init(cString:)();
      v43 = v42;
      sub_10019EC98();
      swift_allocError();
      *v36 = v41;
      *(v36 + 8) = v43;
    }

    else
    {
      sub_10019EC98();
      swift_allocError();
      *v36 = 0;
      *(v36 + 8) = 0;
    }

    v37 = 1;
    goto LABEL_37;
  }

  if (support_filter_all == 1)
  {
LABEL_17:
    sub_10019EC98();
    swift_allocError();
    *v36 = 0;
    *(v36 + 8) = 0;
    v37 = 4;
LABEL_37:
    *(v36 + 16) = v37;
LABEL_38:
    swift_willThrow();
    return sub_10019E8FC(v2, v33, &archive_read_free);
  }

  if (support_filter_all)
  {
LABEL_30:
    if (archive_error_string())
    {
      v44 = String.init(cString:)();
      v46 = v45;
      sub_10019EC98();
      swift_allocError();
      *v47 = v44;
      *(v47 + 8) = v46;
    }

    else
    {
      sub_10019EC98();
      swift_allocError();
      *v47 = 0;
      *(v47 + 8) = 0;
    }

    *(v47 + 16) = 0;
    goto LABEL_38;
  }

  do
  {
    support_format_all = archive_read_support_format_all();
  }

  while (support_format_all == -10);
  if (support_format_all <= -21)
  {
    if (support_format_all != -30)
    {
      if (support_format_all != -25)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    goto LABEL_33;
  }

  if (support_format_all == -20)
  {
    goto LABEL_22;
  }

  if (support_format_all)
  {
    if (support_format_all == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  __chkstk_darwin(support_format_all);
  *(&v105 - 2) = v2;
  v52 = v115;
  sub_10019D2C4(v33, sub_10019ECEC);
  if (v52)
  {
    return sub_10019E8FC(v2, v33, &archive_read_free);
  }

  v53 = archive_write_disk_new();
  do
  {
    v54 = archive_write_disk_set_options();
  }

  while (v54 == -10);
  if (v54 <= -21)
  {
    if (v54 != -30)
    {
      if (v54 != -25)
      {
        goto LABEL_82;
      }

      goto LABEL_71;
    }

LABEL_84:
    if (archive_error_string())
    {
      v71 = String.init(cString:)();
      v73 = v72;
      sub_10019EC98();
      swift_allocError();
      *v62 = v71;
      *(v62 + 8) = v73;
    }

    else
    {
      sub_10019EC98();
      swift_allocError();
      *v62 = 0;
      *(v62 + 8) = 0;
    }

    v66 = 3;
    goto LABEL_88;
  }

  if (v54 == -20)
  {
LABEL_73:
    if (archive_error_string())
    {
      v63 = String.init(cString:)();
      v65 = v64;
      sub_10019EC98();
      swift_allocError();
      *v62 = v63;
      *(v62 + 8) = v65;
    }

    else
    {
      sub_10019EC98();
      swift_allocError();
      *v62 = 0;
      *(v62 + 8) = 0;
    }

    v66 = 1;
    goto LABEL_88;
  }

  if (v54 == 1)
  {
LABEL_76:
    sub_10019EC98();
    swift_allocError();
    *v62 = 0;
    *(v62 + 8) = 0;
    v66 = 4;
LABEL_88:
    *(v62 + 16) = v66;
LABEL_89:
    swift_willThrow();
LABEL_90:
    sub_10019E8FC(v2, v53, &archive_write_free);
    return sub_10019E8FC(v2, v33, &archive_read_free);
  }

  if (v54)
  {
LABEL_82:
    if (archive_error_string())
    {
      v67 = String.init(cString:)();
      v69 = v68;
      sub_10019EC98();
      swift_allocError();
      *v70 = v67;
      *(v70 + 8) = v69;
    }

    else
    {
      sub_10019EC98();
      swift_allocError();
      *v70 = 0;
      *(v70 + 8) = 0;
    }

    *(v70 + 16) = 0;
    goto LABEL_89;
  }

  do
  {
    v55 = archive_write_disk_set_standard_lookup();
  }

  while (v55 == -10);
  if (v55 <= -21)
  {
    if (v55 != -30)
    {
      if (v55 != -25)
      {
        goto LABEL_82;
      }

LABEL_71:
      if (archive_error_string())
      {
        v59 = String.init(cString:)();
        v61 = v60;
        sub_10019EC98();
        swift_allocError();
        *v62 = v59;
        *(v62 + 8) = v61;
      }

      else
      {
        sub_10019EC98();
        swift_allocError();
        *v62 = 0;
        *(v62 + 8) = 0;
      }

      v66 = 2;
      goto LABEL_88;
    }

    goto LABEL_84;
  }

  if (v55 == -20)
  {
    goto LABEL_73;
  }

  if (v55 == 1)
  {
    goto LABEL_76;
  }

  if (v55)
  {
    goto LABEL_82;
  }

  v115 = v30;
  v56 = v114 + 8;
  while (1)
  {
    while (1)
    {
      *&v117 = 0;
      do
      {
        next_header = archive_read_next_header();
      }

      while (next_header == -10);
      if (next_header <= -21)
      {
        if (next_header == -30)
        {
          if (archive_error_string())
          {
            v83 = String.init(cString:)();
            v85 = v84;
            sub_10019EC98();
            v78 = swift_allocError();
            *v77 = v83;
            *(v77 + 8) = v85;
          }

          else
          {
            sub_10019EC98();
            v78 = swift_allocError();
            *v77 = 0;
            *(v77 + 8) = 0;
          }

          v79 = 3;
          goto LABEL_112;
        }

        if (next_header == -25)
        {
          if (archive_error_string())
          {
            v74 = String.init(cString:)();
            v76 = v75;
            sub_10019EC98();
            v78 = swift_allocError();
            *v77 = v74;
            *(v77 + 8) = v76;
          }

          else
          {
            sub_10019EC98();
            v78 = swift_allocError();
            *v77 = 0;
            *(v77 + 8) = 0;
          }

          v79 = 2;
          goto LABEL_112;
        }

        goto LABEL_104;
      }

      if (next_header == -20)
      {
        if (archive_error_string())
        {
          v80 = String.init(cString:)();
          v82 = v81;
          sub_10019EC98();
          v78 = swift_allocError();
          *v77 = v80;
          *(v77 + 8) = v82;
        }

        else
        {
          sub_10019EC98();
          v78 = swift_allocError();
          *v77 = 0;
          *(v77 + 8) = 0;
        }

        v79 = 1;
        goto LABEL_112;
      }

      if (next_header)
      {
        if (next_header == 1)
        {
          sub_10019EC98();
          v78 = swift_allocError();
          *v77 = 0;
          *(v77 + 8) = 0;
          v79 = 4;
LABEL_112:
          *(v77 + 16) = v79;
LABEL_113:
          swift_willThrow();
          goto LABEL_114;
        }

LABEL_104:
        if (archive_error_string())
        {
          v86 = String.init(cString:)();
          v88 = v87;
          sub_10019EC98();
          v78 = swift_allocError();
          *v89 = v86;
          *(v89 + 8) = v88;
        }

        else
        {
          sub_10019EC98();
          v78 = swift_allocError();
          *v89 = 0;
          *(v89 + 8) = 0;
        }

        *(v89 + 16) = 0;
        goto LABEL_113;
      }

      v113 = v2;
      v114 = v56;
      if (archive_entry_pathname())
      {
        break;
      }

      v2 = v113;
      sub_10019E8FC(v113, v53, &archive_write_finish_entry);
      v56 = v114;
    }

    String.init(cString:)();
    v108(v110, v111, v4);
    FilePath.appending(_:)();
    FilePath.description.getter();
    String.utf8CString.getter();

    archive_entry_set_pathname();

    do
    {
      v58 = archive_write_header();
    }

    while (v58 == -10);
    if (v58 <= -21)
    {
      break;
    }

    if (v58 == -20)
    {
      if (archive_error_string())
      {
        v102 = String.init(cString:)();
        v104 = v103;
        sub_10019EC98();
        v78 = swift_allocError();
        *v93 = v102;
        *(v93 + 8) = v104;
      }

      else
      {
        sub_10019EC98();
        v78 = swift_allocError();
        *v93 = 0;
        *(v93 + 8) = 0;
      }

      v94 = 1;
      goto LABEL_141;
    }

    if (v58)
    {
      if (v58 == 1)
      {
        sub_10019EC98();
        v78 = swift_allocError();
        *v93 = 0;
        *(v93 + 8) = 0;
        v94 = 4;
        goto LABEL_141;
      }

LABEL_131:
      if (archive_error_string())
      {
        v98 = String.init(cString:)();
        v100 = v99;
        sub_10019EC98();
        v78 = swift_allocError();
        *v101 = v98;
        *(v101 + 8) = v100;
      }

      else
      {
        sub_10019EC98();
        v78 = swift_allocError();
        *v101 = 0;
        *(v101 + 8) = 0;
      }

      *(v101 + 16) = 0;
      goto LABEL_142;
    }

    if (archive_entry_size() > 0)
    {
      sub_10019D52C();
    }

    v56 = v114;
    v115(v112, v4);
    v2 = v113;
    sub_10019E8FC(v113, v53, &archive_write_finish_entry);
  }

  if (v58 == -30)
  {
    if (archive_error_string())
    {
      v95 = String.init(cString:)();
      v97 = v96;
      sub_10019EC98();
      v78 = swift_allocError();
      *v93 = v95;
      *(v93 + 8) = v97;
    }

    else
    {
      sub_10019EC98();
      v78 = swift_allocError();
      *v93 = 0;
      *(v93 + 8) = 0;
    }

    v94 = 3;
  }

  else
  {
    if (v58 != -25)
    {
      goto LABEL_131;
    }

    if (archive_error_string())
    {
      v90 = String.init(cString:)();
      v92 = v91;
      sub_10019EC98();
      v78 = swift_allocError();
      *v93 = v90;
      *(v93 + 8) = v92;
    }

    else
    {
      sub_10019EC98();
      v78 = swift_allocError();
      *v93 = 0;
      *(v93 + 8) = 0;
    }

    v94 = 2;
  }

LABEL_141:
  *(v93 + 16) = v94;
LABEL_142:
  swift_willThrow();
  v115(v112, v4);
  v2 = v113;
  sub_10019E8FC(v113, v53, &archive_write_finish_entry);
LABEL_114:
  v116 = v78;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  if (!swift_dynamicCast())
  {
    goto LABEL_119;
  }

  if (v118 != 4 || v117 != 0)
  {
    sub_10019ECF4(v117, *(&v117 + 1), v118);
LABEL_119:

    goto LABEL_90;
  }

  sub_10019E8FC(v2, v53, &archive_write_free);
  return sub_10019E8FC(v2, v33, &archive_read_free);
}

uint64_t sub_10019E898()
{
  FilePath.description.getter();
  String.utf8CString.getter();

  open_filename = archive_read_open_filename();

  return open_filename;
}

uint64_t sub_10019E8FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  do
  {
    result = a3(a2);
  }

  while (result == -10);
  if (result <= -21)
  {
    if (result == -30)
    {
      if (archive_error_string())
      {
        v14 = String.init(cString:)();
        v16 = v15;
        sub_10019EC98();
        swift_allocError();
        *v6 = v14;
        *(v6 + 8) = v16;
      }

      else
      {
        sub_10019EC98();
        swift_allocError();
        *v6 = 0;
        *(v6 + 8) = 0;
      }

      v7 = 3;
      goto LABEL_25;
    }

    if (result == -25)
    {
      if (archive_error_string())
      {
        v8 = String.init(cString:)();
        v10 = v9;
        sub_10019EC98();
        swift_allocError();
        *v6 = v8;
        *(v6 + 8) = v10;
      }

      else
      {
        sub_10019EC98();
        swift_allocError();
        *v6 = 0;
        *(v6 + 8) = 0;
      }

      v7 = 2;
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  if (result == -20)
  {
    if (archive_error_string())
    {
      v11 = String.init(cString:)();
      v13 = v12;
      sub_10019EC98();
      swift_allocError();
      *v6 = v11;
      *(v6 + 8) = v13;
    }

    else
    {
      sub_10019EC98();
      swift_allocError();
      *v6 = 0;
      *(v6 + 8) = 0;
    }

    v7 = 1;
    goto LABEL_25;
  }

  if (!result)
  {
    return result;
  }

  if (result != 1)
  {
LABEL_18:
    if (archive_error_string())
    {
      v17 = String.init(cString:)();
      v19 = v18;
      sub_10019EC98();
      swift_allocError();
      *v20 = v17;
      *(v20 + 8) = v19;
    }

    else
    {
      sub_10019EC98();
      swift_allocError();
      *v20 = 0;
      *(v20 + 8) = 0;
    }

    *(v20 + 16) = 0;
    goto LABEL_26;
  }

  sub_10019EC98();
  swift_allocError();
  *v6 = 0;
  *(v6 + 8) = 0;
  v7 = 4;
LABEL_25:
  *(v6 + 16) = v7;
LABEL_26:
  swift_willThrow();
}

uint64_t sub_10019EB68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AA048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019EBD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEADecryptionParameters();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019EC3C(uint64_t a1)
{
  v2 = type metadata accessor for AEADecryptionParameters();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10019EC98()
{
  result = qword_1004AADD8;
  if (!qword_1004AADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AADD8);
  }

  return result;
}

uint64_t sub_10019ECF4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_10019ED0C(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_10019ED28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10019ED70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10019EDB4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10019EDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10019EE74(uint64_t a1)
{
  v2 = sub_10019F054();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019EEB0(uint64_t a1)
{
  v2 = sub_10019F054();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitFirewallConfig.init(from:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AADE0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10000E2A8(a1, a1[3]);
  sub_10019F054();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100003C3C(a1);
  return v7;
}

unint64_t sub_10019F054()
{
  result = qword_1004AADE8;
  if (!qword_1004AADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AADE8);
  }

  return result;
}

uint64_t sub_10019F0A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AADE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10019F054();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_100003C3C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t DInitFirewallConfig.encode(to:)(void *a1)
{
  v2 = sub_1000039E8(&qword_1004AADF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000E2A8(a1, a1[3]);
  sub_10019F054();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10019F364(void *a1)
{
  v2 = sub_1000039E8(&qword_1004AADF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000E2A8(a1, a1[3]);
  sub_10019F054();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static DInitFirewallConfig.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4 && (a1 == a3 && a2 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10019F4EC(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

void DInitFirewallConfig.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int DInitFirewallConfig.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int sub_10019F62C()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_10019F69C()
{
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10019F714()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

unint64_t sub_10019F784()
{
  result = qword_1004AADF8;
  if (!qword_1004AADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AADF8);
  }

  return result;
}

uint64_t sub_10019F7D8(uint64_t a1, unsigned int a2)
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

uint64_t sub_10019F834(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10019F8A8()
{
  result = qword_1004AAE00;
  if (!qword_1004AAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAE00);
  }

  return result;
}

unint64_t sub_10019F900()
{
  result = qword_1004AAE08;
  if (!qword_1004AAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAE08);
  }

  return result;
}

unint64_t sub_10019F958()
{
  result = qword_1004AAE10;
  if (!qword_1004AAE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAE10);
  }

  return result;
}

uint64_t static Network.downloadItem(at:to:attempts:backoff:background:maxActiveTasks:chunkSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 434) = v14;
  *(v8 + 144) = a7;
  *(v8 + 152) = v13;
  *(v8 + 433) = a8;
  *(v8 + 432) = a6;
  *(v8 + 128) = a4;
  *(v8 + 136) = a5;
  *(v8 + 112) = a2;
  *(v8 + 120) = a3;
  *(v8 + 104) = a1;
  v9 = type metadata accessor for URL();
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 - 8);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  sub_1000039E8(&qword_1004A9CF8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v10 = type metadata accessor for FilePath();
  *(v8 + 240) = v10;
  *(v8 + 248) = *(v10 - 8);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_10019FBC0, 0, 0);
}

uint64_t sub_10019FBC0()
{
  v80 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  sub_100013E54(*(v0 + 120), v3, &qword_1004A9CF8);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 224);
    static FilePath.createTemporaryDirectory(permissions:)(0x1FFu, *(v0 + 232));
    if (v4(v6, 1, v5) != 1)
    {
      sub_100013F2C(*(v0 + 224), &qword_1004A9CF8);
    }
  }

  else
  {
    v7 = *(v0 + 240);
    v8 = *(v0 + 248);
    v9 = *(v0 + 232);
    (*(v8 + 32))(v9, *(v0 + 224), v7);
    (*(v8 + 56))(v9, 0, 1, v7);
  }

  v10 = *(v0 + 232);
  v11 = *(v0 + 240);
  if (v4(v10, 1, v11) == 1)
  {
    v12 = *(v0 + 248);
    v13 = *(v0 + 104);
    sub_100013F2C(v10, &qword_1004A9CF8);
    (*(v12 + 56))(v13, 1, 1, v11);
LABEL_26:

    v70 = *(v0 + 8);

    return v70();
  }

  v14 = *(v0 + 312);
  v15 = *(v0 + 248);
  v16 = *(v15 + 32);
  *(v0 + 320) = v16;
  *(v0 + 328) = (v15 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  log = v16;
  (v16)(v14, v10, v11);
  v17 = URL.lastPathComponent.getter();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  v77 = v4;
  if (!v20)
  {
    goto LABEL_14;
  }

  if (URL.lastPathComponent.getter() == 47 && v21 == 0xE100000000000000)
  {

LABEL_14:
    URL.host(percentEncoded:)(1);
    goto LABEL_15;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_14;
  }

  URL.lastPathComponent.getter();
LABEL_15:
  v23 = *(v0 + 312);
  v24 = *(v0 + 296);
  v25 = *(v0 + 240);
  v26 = *(v0 + 248);
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v29 = *(v0 + 168);
  v72 = *(v0 + 112);
  v74 = *(v0 + 160);
  v30 = *(v26 + 16);
  *(v0 + 336) = v30;
  *(v0 + 344) = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v30(v24, v23, v25);
  FilePath.appending(_:)();
  v31 = *(v29 + 16);
  *(v0 + 352) = v31;
  *(v0 + 360) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31(v28, v72, v74);
  FilePath.init(_:)();
  if (v77(v27, 1, v25) != 1)
  {
    v37 = *(v0 + 304);
    (log)(*(v0 + 288), *(v0 + 216), *(v0 + 240));
    FilePath.copy(to:)(v37);
    (*(*(v0 + 248) + 8))(*(v0 + 288), *(v0 + 240));
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 352);
    v76 = *(v0 + 336);
    v39 = *(v0 + 304);
    v40 = *(v0 + 272);
    v41 = *(v0 + 240);
    v42 = *(v0 + 176);
    v43 = *(v0 + 160);
    v44 = *(v0 + 112);
    v45 = type metadata accessor for Logger();
    sub_1000270B4(v45, static Network.logger);
    v38(v42, v44, v43);
    v76(v40, v39, v41);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 312);
    v50 = *(v0 + 272);
    v52 = *(v0 + 240);
    v51 = *(v0 + 248);
    v54 = *(v0 + 168);
    v53 = *(v0 + 176);
    v55 = *(v0 + 160);
    if (v48)
    {
      v78 = *(v0 + 312);
      v56 = swift_slowAlloc();
      v79[0] = swift_slowAlloc();
      *v56 = 136315394;
      sub_1001B1D90(&qword_1004AAE30, &type metadata accessor for URL);
      v75 = v47;
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v52;
      v59 = v58;
      (*(v54 + 8))(v53, v55);
      v60 = sub_1000026C0(v57, v59, v79);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      sub_1001B1D90(&qword_1004AA058, &type metadata accessor for FilePath);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v64 = *(v51 + 8);
      v64(v50, v73);
      v65 = sub_1000026C0(v61, v63, v79);

      *(v56 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v46, v75, "Successfully downloaded %s to %s", v56, 0x16u);
      swift_arrayDestroy();

      v64(v78, v73);
    }

    else
    {

      v66 = *(v51 + 8);
      v66(v50, v52);
      (*(v54 + 8))(v53, v55);
      v66(v49, v52);
    }

    v67 = *(v0 + 240);
    v68 = *(v0 + 248);
    v69 = *(v0 + 104);
    (*(v0 + 320))(v69, *(v0 + 304), v67);
    (*(v68 + 56))(v69, 0, 1, v67);
    goto LABEL_26;
  }

  v32 = *(v0 + 434);
  sub_100013F2C(*(v0 + 216), &qword_1004A9CF8);
  v33 = swift_task_alloc();
  *(v0 + 368) = v33;
  *v33 = v0;
  v33[1] = sub_1001A0740;
  v34 = *(v0 + 152);
  v35 = *(v0 + 112);

  return sub_1001ABC54(v35, v34, v32 & 1);
}

uint64_t sub_1001A0740(char a1)
{
  *(*v1 + 435) = a1;

  return _swift_task_switch(sub_1001A0840, 0, 0);
}

uint64_t sub_1001A0840()
{
  v84 = v0;
  if (*(v0 + 435) == 1)
  {
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 352);
    v2 = *(v0 + 200);
    v3 = *(v0 + 160);
    v4 = *(v0 + 112);
    v81 = type metadata accessor for Logger();
    sub_1000270B4(v81, static Network.logger);
    v1(v2, v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 200);
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v83 = v12;
      *v11 = 136315138;
      sub_1001B1D90(&qword_1004AAE30, &type metadata accessor for URL);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v80 = *(v9 + 8);
      v80(v8, v10);
      v16 = sub_1000026C0(v13, v15, &v83);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Range requests supported for %s. Will download using range requests...", v11, 0xCu);
      sub_100003C3C(v12);
    }

    else
    {

      v80 = *(v9 + 8);
      v80(v8, v10);
    }

    if (*(v0 + 433))
    {
      v34 = 4;
    }

    else
    {
      v34 = *(v0 + 144);
    }

    v35 = swift_task_alloc();
    *(v35 + 16) = 0x60000000001;
    *(v35 + 24) = 16777654;
    FilePath.withCString<A>(_:)();
    if (*(v0 + 434))
    {
      v43 = 0x1000000;
    }

    else
    {
      v43 = *(v0 + 152);
    }

    *(v0 + 424) = *(v0 + 428);
    type metadata accessor for Network.RangeTracker();
    v44 = swift_allocObject();
    *(v0 + 376) = v44;
    swift_defaultActor_initialize();
    *(v44 + 112) = v43;
    *(v44 + 120) = 0;
    v82 = v44;
    if (qword_1004A9FA8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if ((static Time.isSynchronized & 1) == 0)
    {
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Time is not synced before making network request, continuing", v47, 2u);
      }
    }

    v48 = *(v0 + 336);
    v49 = *(v0 + 304);
    v50 = *(v0 + 280);
    v51 = *(v0 + 240);
    (*(v0 + 352))(*(v0 + 192), *(v0 + 112), *(v0 + 160));
    v48(v50, v49, v51);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v0 + 280);
    v57 = *(v0 + 240);
    v56 = *(v0 + 248);
    v58 = *(v0 + 192);
    v59 = *(v0 + 160);
    if (v54)
    {
      v79 = v53;
      v60 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v60 = 136315650;
      sub_1001B1D90(&qword_1004AAE30, &type metadata accessor for URL);
      v77 = v57;
      log = v52;
      v61 = v55;
      v62 = v34;
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v80(v58, v59);
      v66 = v63;
      v34 = v62;
      v67 = sub_1000026C0(v66, v65, &v83);

      *(v60 + 4) = v67;
      *(v60 + 12) = 2080;
      sub_1001B1D90(&qword_1004AA058, &type metadata accessor for FilePath);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      (*(v56 + 8))(v61, v77);
      v71 = sub_1000026C0(v68, v70, &v83);

      *(v60 + 14) = v71;
      *(v60 + 22) = 2048;
      *(v60 + 24) = v62;
      _os_log_impl(&_mh_execute_header, log, v79, "Downloading ranges from [%s] to [%s] using max of %ld active tasks...", v60, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v56 + 8))(v55, v57);
      v80(v58, v59);
    }

    v73 = *(v0 + 128);
    v72 = *(v0 + 136);
    v74 = *(v0 + 112);
    v75 = swift_task_alloc();
    *(v0 + 384) = v75;
    *(v75 + 16) = v34;
    *(v75 + 24) = v82;
    *(v75 + 32) = v74;
    *(v75 + 40) = v73;
    *(v75 + 48) = v72;
    *(v75 + 56) = 2;
    *(v75 + 64) = v0 + 424;
    v76 = swift_task_alloc();
    *(v0 + 392) = v76;
    *v76 = v0;
    v76[1] = sub_1001A145C;
    v86 = &type metadata for () + 8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  else
  {
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 352);
    v18 = *(v0 + 184);
    v19 = *(v0 + 160);
    v20 = *(v0 + 112);
    v21 = type metadata accessor for Logger();
    sub_1000270B4(v21, static Network.logger);
    v17(v18, v20, v19);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 184);
    v26 = *(v0 + 160);
    v27 = *(v0 + 168);
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v83 = v29;
      *v28 = 136315138;
      sub_1001B1D90(&qword_1004AAE30, &type metadata accessor for URL);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v27 + 8))(v25, v26);
      v33 = sub_1000026C0(v30, v32, &v83);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "Range requests unsupported for %s. Will download full file using one request...", v28, 0xCu);
      sub_100003C3C(v29);
    }

    else
    {

      (*(v27 + 8))(v25, v26);
    }

    v36 = swift_task_alloc();
    *(v0 + 408) = v36;
    *v36 = v0;
    v36[1] = sub_1001A1CCC;
    v37 = *(v0 + 304);
    v38 = *(v0 + 432);
    v39 = *(v0 + 128);
    v40 = *(v0 + 136);
    v41 = *(v0 + 112);

    return sub_1001AD4FC(v41, v37, v39, v40, v38);
  }
}

uint64_t sub_1001A145C()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_1001A19C8;
  }

  else
  {

    v2 = sub_1001A1578;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A1578()
{
  v41 = v0;
  v1 = *(v0 + 304);

  sub_1001ACB5C(v0 + 424, v1);
  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 352);
  v38 = *(v0 + 336);
  v3 = *(v0 + 304);
  v4 = *(v0 + 272);
  v5 = *(v0 + 240);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = *(v0 + 112);
  v9 = type metadata accessor for Logger();
  sub_1000270B4(v9, static Network.logger);
  v2(v6, v8, v7);
  v38(v4, v3, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 312);
  v14 = *(v0 + 272);
  v16 = *(v0 + 240);
  v15 = *(v0 + 248);
  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  v19 = *(v0 + 160);
  if (v12)
  {
    v39 = *(v0 + 312);
    v20 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v20 = 136315394;
    sub_1001B1D90(&qword_1004AAE30, &type metadata accessor for URL);
    v37 = v11;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v16;
    v23 = v22;
    (*(v18 + 8))(v17, v19);
    v24 = sub_1000026C0(v21, v23, &v40);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_1001B1D90(&qword_1004AA058, &type metadata accessor for FilePath);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v28 = *(v15 + 8);
    v28(v14, v36);
    v29 = sub_1000026C0(v25, v27, &v40);

    *(v20 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v10, v37, "Successfully downloaded %s to %s", v20, 0x16u);
    swift_arrayDestroy();

    v28(v39, v36);
  }

  else
  {

    v30 = *(v15 + 8);
    v30(v14, v16);
    (*(v18 + 8))(v17, v19);
    v30(v13, v16);
  }

  v31 = *(v0 + 240);
  v32 = *(v0 + 248);
  v33 = *(v0 + 104);
  (*(v0 + 320))(v33, *(v0 + 304), v31);
  (*(v32 + 56))(v33, 0, 1, v31);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1001A19C8()
{
  v22 = v0;
  v1 = v0[38];

  sub_1001ACB5C((v0 + 53), v1);
  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000270B4(v2, static Network.logger);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[30];
  v9 = v0[31];
  if (v5)
  {
    v20 = v0[38];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v19 = v6;
    v14 = sub_1000026C0(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Download failed: %s", v10, 0xCu);
    sub_100003C3C(v11);

    v15 = *(v9 + 8);
    v15(v20, v8);
    v16 = v19;
  }

  else
  {

    v15 = *(v9 + 8);
    v15(v7, v8);
    v16 = v6;
  }

  v15(v16, v8);
  (*(v0[31] + 56))(v0[13], 1, 1, v0[30]);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001A1CCC()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1001A2218;
  }

  else
  {
    v2 = sub_1001A1DE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A1DE0()
{
  v40 = v0;
  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v37 = *(v0 + 336);
  v2 = *(v0 + 304);
  v3 = *(v0 + 272);
  v4 = *(v0 + 240);
  v5 = *(v0 + 176);
  v6 = *(v0 + 160);
  v7 = *(v0 + 112);
  v8 = type metadata accessor for Logger();
  sub_1000270B4(v8, static Network.logger);
  v1(v5, v7, v6);
  v37(v3, v2, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 312);
  v13 = *(v0 + 272);
  v15 = *(v0 + 240);
  v14 = *(v0 + 248);
  v17 = *(v0 + 168);
  v16 = *(v0 + 176);
  v18 = *(v0 + 160);
  if (v11)
  {
    v38 = *(v0 + 312);
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v19 = 136315394;
    sub_1001B1D90(&qword_1004AAE30, &type metadata accessor for URL);
    v36 = v10;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v15;
    v22 = v21;
    (*(v17 + 8))(v16, v18);
    v23 = sub_1000026C0(v20, v22, &v39);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    sub_1001B1D90(&qword_1004AA058, &type metadata accessor for FilePath);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v27 = *(v14 + 8);
    v27(v13, v35);
    v28 = sub_1000026C0(v24, v26, &v39);

    *(v19 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v9, v36, "Successfully downloaded %s to %s", v19, 0x16u);
    swift_arrayDestroy();

    v27(v38, v35);
  }

  else
  {

    v29 = *(v14 + 8);
    v29(v13, v15);
    (*(v17 + 8))(v16, v18);
    v29(v12, v15);
  }

  v30 = *(v0 + 240);
  v31 = *(v0 + 248);
  v32 = *(v0 + 104);
  (*(v0 + 320))(v32, *(v0 + 304), v30);
  (*(v31 + 56))(v32, 0, 1, v30);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1001A2218()
{
  v21 = v0;
  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, static Network.logger);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[30];
  v8 = v0[31];
  if (v4)
  {
    v19 = v0[38];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v18 = v5;
    v13 = sub_1000026C0(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Download failed: %s", v9, 0xCu);
    sub_100003C3C(v10);

    v14 = *(v8 + 8);
    v14(v19, v7);
    v15 = v18;
  }

  else
  {

    v14 = *(v8 + 8);
    v14(v6, v7);
    v15 = v5;
  }

  v14(v15, v7);
  (*(v0[31] + 56))(v0[13], 1, 1, v0[30]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001A24FC()
{
  v0 = type metadata accessor for Logger();
  sub_1000279B4(v0, static Network.logger);
  v1 = sub_1000270B4(v0, static Network.logger);
  if (qword_1004A9F40 != -1)
  {
    swift_once();
  }

  v2 = sub_1000270B4(v0, static Logger.network);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Network.logger.unsafeMutableAddressor()
{
  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000270B4(v0, static Network.logger);
}

uint64_t static Network.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000270B4(v2, static Network.logger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1001A26D0()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  v1 = [objc_opt_self() sessionWithConfiguration:v0];

  static Network.urlSession = v1;
}

uint64_t *Network.urlSession.unsafeMutableAddressor()
{
  if (qword_1004A9E18 != -1)
  {
    swift_once();
  }

  return &static Network.urlSession;
}

id static Network.urlSession.getter()
{
  if (qword_1004A9E18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static Network.urlSession;

  return v0;
}

void static Network.urlSession.setter(uint64_t a1)
{
  if (qword_1004A9E18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static Network.urlSession;
  static Network.urlSession = a1;
}

uint64_t (*static Network.urlSession.modify())()
{
  if (qword_1004A9E18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1001A2920@<X0>(void *a1@<X8>)
{
  if (qword_1004A9E18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static Network.urlSession;
  *a1 = static Network.urlSession;

  return v2;
}

void sub_1001A29AC(id *a1)
{
  v1 = qword_1004A9E18;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static Network.urlSession;
  static Network.urlSession = v2;
}

id sub_1001A2B78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Network.DataDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1001A2BC0()
{
  result = sub_1001A2BE0();
  qword_1004AAE20 = result;
  return result;
}

void *sub_1001A2BE0()
{
  v0 = type metadata accessor for NarrativeCert();
  v1 = objc_allocWithZone(v0);
  v2 = NarrativeCert.init(domain:identityType:)();
  v3 = dispatch thunk of NarrativeCert.getCredential()();
  if (v3)
  {
    v4 = v3;
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000270B4(v5, static Network.logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Successfully created aquaria-host url credential for auth challenge", v8, 2u);
    }
  }

  else
  {
    v9 = objc_allocWithZone(v0);
    v10 = NarrativeCert.init(domain:identityType:)();

    v2 = v10;
    v4 = dispatch thunk of NarrativeCert.getCredential()();

    if (v4)
    {
      v11 = qword_1004A9E10;
      v12 = v4;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000270B4(v13, static Network.logger);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Successfully created acdc-actor url credential for auth challenge", v16, 2u);
      }

      v6 = v2;
      v2 = v12;
    }

    else
    {
      if (qword_1004A9E10 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000270B4(v17, static Network.logger);
      v6 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v6, v18, "Failed to create URL credential for auth challenge. Narrative identity may not be configured properly.", v19, 2u);
      }

      v4 = 0;
    }
  }

  return v4;
}

uint64_t sub_1001A2EB4()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t static Network.head(from:additionalHTTPHeaders:attempts:timeout:backoff:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for URL();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_1001A3014, 0, 0);
}

uint64_t sub_1001A3014()
{
  v1._rawValue = *(v0 + 64);
  (*(*(v0 + 104) + 16))(*(v0 + 112), *(v0 + 56), *(v0 + 96));
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  URLRequest.addHeaders(additionalHTTPHeaders:)(v1);
  *(v0 + 16) = xmmword_1003F2EE0;
  *(v0 + 32) = xmmword_1003F2EF0;
  *(v0 + 48) = 1;
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_1001A314C;
  v3 = *(v0 + 136);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);

  return sub_1001AA578(v3, v6, v4, v5, 0, v0 + 16, 1, 1);
}

uint64_t sub_1001A314C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 152) = v3;

  if (v3)
  {
    v9 = sub_1001A331C;
  }

  else
  {
    *(v8 + 160) = a3;
    sub_100031928(a1, a2);
    v9 = sub_1001A3290;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001A3290()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];
  v2 = v0[20];

  return v1(v2);
}

uint64_t sub_1001A331C()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001A33A4@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v139 = a3;
  v136 = a2;
  v190 = a1;
  v144 = a4;
  v143 = sub_1000039E8(&qword_1004AB000);
  v145 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v133 - v4;
  v166 = sub_1000039E8(&qword_1004AB020);
  v142 = *(v166 - 8);
  v5 = __chkstk_darwin(v166);
  v165 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v164 = &v133 - v7;
  v8 = sub_1000039E8(&qword_1004AB028);
  __chkstk_darwin(v8 - 8);
  v152 = &v133 - v9;
  v169 = type metadata accessor for CharacterClass();
  v179 = *(v169 - 8);
  __chkstk_darwin(v169);
  v11 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1000039E8(&qword_1004AB030);
  v180 = *(v170 - 8);
  v12 = __chkstk_darwin(v170);
  v168 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v133 - v14;
  v191 = sub_1000039E8(&qword_1004AB038);
  v193 = *(v191 - 8);
  v16 = __chkstk_darwin(v191);
  v138 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v137 = &v133 - v19;
  v20 = __chkstk_darwin(v18);
  v186 = &v133 - v21;
  __chkstk_darwin(v20);
  v178 = &v133 - v22;
  v160 = sub_1000039E8(&qword_1004AB040);
  v140 = *(v160 - 8);
  v23 = __chkstk_darwin(v160);
  v159 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v188 = &v133 - v25;
  v177 = type metadata accessor for _RegexFactory();
  v26 = *(v177 - 8);
  v27 = __chkstk_darwin(v177);
  v29 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v167 = &v133 - v30;
  v192 = sub_1000039E8(&qword_1004AB048);
  v189 = *(v192 - 8);
  v31 = __chkstk_darwin(v192);
  v135 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v181 = &v133 - v34;
  v35 = __chkstk_darwin(v33);
  v182 = &v133 - v36;
  __chkstk_darwin(v35);
  v173 = &v133 - v37;
  v38 = type metadata accessor for Anchor();
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v134 = &v133 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v44 = &v133 - v43;
  __chkstk_darwin(v42);
  v163 = &v133 - v45;
  v174 = v44;
  static Anchor.startOfLine.getter();
  v158 = sub_1001B1D90(&qword_1004AB050, &type metadata accessor for Anchor);
  v157 = v38;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v46 = *(v39 + 8);
  v161 = v39 + 8;
  v162 = v46;
  v46(v44, v38);
  v198 = 0x207365747962;
  v199 = 0xE600000000000000;
  v185 = sub_1001B1D3C();
  static RegexComponentBuilder.buildExpression<A>(_:)();
  makeFactory()();
  static RegexComponent<>.digit.getter();
  v155 = type metadata accessor for RegexRepetitionBehavior();
  v47 = *(v155 - 8);
  v154 = *(v47 + 56);
  v156 = v47 + 56;
  v48 = v152;
  v154(v152, 1, 1, v155);
  v149 = v29;
  makeFactory()();
  v153 = sub_1001B1D90(&qword_1004AB060, &type metadata accessor for CharacterClass);
  v133 = v11;
  v49 = v169;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v50 = *(v26 + 8);
  v175 = v26 + 8;
  v183 = v50;
  v51 = v177;
  v50(v29, v177);
  sub_100013F2C(v48, &qword_1004AB028);
  v52 = *(v179 + 8);
  v179 += 8;
  v151 = v52;
  v52(v11, v49);
  v53 = v168;
  OneOrMore.init(_:)();
  v54 = sub_10000E720(&qword_1004AB068, &qword_1004AB030);
  v55 = v170;
  v148 = v54;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v56 = v180 + 8;
  v57 = v53;
  v58 = *(v180 + 8);
  v147 = v58;
  v58(v57, v55);
  v180 = v56;
  v59 = v178;
  v146 = v15;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v58(v15, v55);
  v150 = sub_1000039E8(&qword_1004AB008);
  Reference._raw.getter();
  v60 = sub_1000039E8(&qword_1004AB070);
  v172 = &protocol conformance descriptor for Regex<A>;
  v187 = sub_10000E720(&qword_1004AB078, &qword_1004AB038);
  v176 = v60;
  v61 = v191;
  v62 = v167;
  _RegexFactory.capture<A, B>(_:_:)();
  v190 = *(v193 + 8);
  v193 += 8;
  v190(v59, v61);
  v183(v62, v51);
  v63 = v182;
  Capture.init(_:)();
  v184 = sub_10000E720(&qword_1004AB080, &qword_1004AB048);
  v64 = v192;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v65 = *(v189 + 8);
  v189 += 8;
  v171 = v65;
  v65(v63, v64);
  v196 = 45;
  v197 = 0xE100000000000000;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  makeFactory()();
  v66 = v133;
  static RegexComponent<>.digit.getter();
  v67 = v152;
  v154(v152, 1, 1, v155);
  v68 = v149;
  makeFactory()();
  v69 = v169;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v70 = v51;
  v71 = v183;
  v183(v68, v51);
  v72 = v67;
  sub_100013F2C(v67, &qword_1004AB028);
  v151(v66, v69);
  v73 = v168;
  OneOrMore.init(_:)();
  v74 = v146;
  v75 = v170;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v76 = v147;
  v147(v73, v75);
  v77 = v178;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v76(v74, v75);
  Reference._raw.getter();
  v78 = v191;
  v79 = v167;
  _RegexFactory.capture<A, B>(_:_:)();
  v190(v77, v78);
  v80 = v71;
  v71(v79, v70);
  v81 = v181;
  Capture.init(_:)();
  v82 = v192;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v171(v81, v82);
  v194 = 47;
  v195 = 0xE100000000000000;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  makeFactory()();
  v83 = v66;
  static RegexComponent<>.digit.getter();
  v154(v72, 1, 1, v155);
  v84 = v149;
  makeFactory()();
  v85 = v169;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v86 = v177;
  v80(v84, v177);
  v87 = v80;
  sub_100013F2C(v72, &qword_1004AB028);
  v151(v83, v85);
  v88 = v168;
  OneOrMore.init(_:)();
  v89 = v146;
  v90 = v170;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v91 = v147;
  v147(v88, v90);
  v92 = v178;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v91(v89, v90);
  Reference._raw.getter();
  v93 = v191;
  v94 = v167;
  _RegexFactory.capture<A, B>(_:_:)();
  v190(v92, v93);
  v95 = v94;
  v87(v94, v86);
  v96 = v135;
  Capture.init(_:)();
  v97 = v192;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v171(v96, v97);
  v98 = v134;
  static Anchor.endOfLine.getter();
  v99 = v157;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v162(v98, v99);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v100 = v200;
  v101 = v201;
  makeFactory()();
  v194 = v100;
  v195 = v101;
  v102 = v137;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v103 = v138;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();

  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v104 = v190;
  v190(v103, v93);
  v105 = v102;
  v106 = v93;
  v104(v102, v93);
  v107 = v177;
  v108 = v183;
  v183(v95, v177);
  v109 = v95;
  makeFactory()();
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v104(v105, v106);
  v108(v95, v107);
  v110 = v198;
  v111 = v199;
  makeFactory()();
  v194 = v110;
  v195 = v111;
  v112 = v105;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();

  sub_10000E720(&qword_1004AB088, &qword_1004AB040);
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v104(v105, v106);
  v113 = v177;
  v114 = v183;
  v183(v95, v177);
  makeFactory()();
  sub_1000039E8(&qword_1004AB090);
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v114(v95, v113);
  v115 = v196;
  v116 = v197;
  makeFactory()();
  v194 = v115;
  v195 = v116;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();

  sub_10000E720(&qword_1004AB098, &qword_1004AB020);
  v117 = v191;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v190(v112, v117);
  v118 = v183;
  v183(v95, v113);
  makeFactory()();
  sub_1000039E8(&qword_1004AB010);
  v119 = v141;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v118(v95, v113);
  makeFactory()();
  v120 = v157;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  sub_10000E720(&qword_1004AB018, &qword_1004AB000);
  v121 = v119;
  v122 = v143;
  v123 = v191;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v124 = v190;
  v190(v112, v123);
  v118(v109, v113);
  (*(v145 + 8))(v121, v122);
  v125 = *(v142 + 8);
  v126 = v166;
  v125(v165, v166);
  v125(v164, v126);
  v127 = *(v140 + 8);
  v128 = v160;
  v127(v159, v160);
  v127(v188, v128);
  v124(v186, v123);
  v124(v178, v123);
  v129 = v162;
  v162(v174, v120);
  v130 = v192;
  v131 = v171;
  v171(v181, v192);
  v131(v182, v130);
  v131(v173, v130);
  return v129(v163, v120);
}

uint64_t sub_1001A4AE4(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_100311EBC(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t static Network.downloadRanges(at:to:attempts:backoff:background:maxActiveTasks:chunkSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 176) = a5;
  *(v7 + 56) = a3;
  *(v7 + 64) = a4;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  v8 = type metadata accessor for FilePath();
  *(v7 + 88) = v8;
  *(v7 + 96) = *(v8 - 8);
  *(v7 + 104) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v7 + 112) = v9;
  *(v7 + 120) = *(v9 - 8);
  *(v7 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_1001A4F0C, 0, 0);
}

uint64_t sub_1001A4F0C()
{
  v48 = v0;
  v1 = swift_task_alloc();
  *(v1 + 16) = 0x60000000001;
  *(v1 + 24) = 16777654;
  FilePath.withCString<A>(_:)();

  v2 = *(v0 + 80);
  *(v0 + 168) = *(v0 + 172);
  type metadata accessor for Network.RangeTracker();
  v3 = swift_allocObject();
  *(v0 + 136) = v3;
  swift_defaultActor_initialize();
  *(v3 + 112) = v2;
  *(v3 + 120) = 0;
  v46 = v3;
  if (qword_1004A9FA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((static Time.isSynchronized & 1) == 0)
  {
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000270B4(v4, static Network.logger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Time is not synced before making network request, continuing", v7, 2u);
    }
  }

  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);
  v16 = type metadata accessor for Logger();
  sub_1000270B4(v16, static Network.logger);
  (*(v8 + 16))(v9, v15, v10);
  (*(v13 + 16))(v11, v14, v12);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v21 = *(v0 + 120);
  v20 = *(v0 + 128);
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);
  v25 = *(v0 + 88);
  v24 = *(v0 + 96);
  if (v19)
  {
    v45 = *(v0 + 72);
    v44 = v18;
    v26 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v26 = 136315650;
    sub_1001B1D90(&qword_1004AAE30, &type metadata accessor for URL);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v17;
    v29 = v28;
    (*(v21 + 8))(v20, v23);
    v30 = sub_1000026C0(v27, v29, &v47);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    sub_1001B1D90(&qword_1004AA058, &type metadata accessor for FilePath);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v24 + 8))(v22, v25);
    v34 = sub_1000026C0(v31, v33, &v47);

    *(v26 + 14) = v34;
    *(v26 + 22) = 2048;
    *(v26 + 24) = v45;
    _os_log_impl(&_mh_execute_header, log, v44, "Downloading ranges from [%s] to [%s] using max of %ld active tasks...", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v24 + 8))(v22, v25);
    (*(v21 + 8))(v20, v23);
  }

  v36 = *(v0 + 64);
  v35 = *(v0 + 72);
  v37 = *(v0 + 176);
  v38 = *(v0 + 56);
  v39 = *(v0 + 40);
  v40 = swift_task_alloc();
  *(v0 + 144) = v40;
  *(v40 + 16) = v35;
  *(v40 + 24) = v46;
  *(v40 + 32) = v39;
  *(v40 + 40) = v38;
  *(v40 + 48) = v36;
  *(v40 + 56) = v37;
  *(v40 + 64) = v0 + 168;
  v41 = swift_task_alloc();
  *(v0 + 152) = v41;
  *v41 = v0;
  v41[1] = sub_1001A551C;
  v50 = &type metadata for () + 8;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1001A551C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1001A56C8;
  }

  else
  {

    v2 = sub_1001A5638;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A5638()
{
  v1 = *(v0 + 48);

  sub_1001ACB5C(v0 + 168, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001A56C8()
{
  v1 = *(v0 + 48);

  sub_1001ACB5C(v0 + 168, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001A5758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 368) = a7;
  *(v8 + 376) = v14;
  *(v8 + 49) = a8;
  *(v8 + 352) = a5;
  *(v8 + 360) = a6;
  *(v8 + 336) = a3;
  *(v8 + 344) = a4;
  *(v8 + 328) = a2;
  v9 = type metadata accessor for URL();
  *(v8 + 384) = v9;
  v10 = *(v9 - 8);
  *(v8 + 392) = v10;
  *(v8 + 400) = *(v10 + 64);
  *(v8 + 408) = swift_task_alloc();
  sub_1000039E8(&qword_1004AB0A8);
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  v11 = sub_1000039E8(&unk_1004AB0B0);
  *(v8 + 448) = v11;
  *(v8 + 456) = *(v11 - 8);
  *(v8 + 464) = swift_task_alloc();

  return _swift_task_switch(sub_1001A58FC, 0, 0);
}

uint64_t sub_1001A58FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 336);
  if (v6 < 0)
  {
    __break(1u);
    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, a2, a3, a4, a5);
  }

  if (!v6)
  {
    v8 = *(v5 + 344);
    *(v5 + 488) = *(v5 + 400) + 7;
    *(v5 + 496) = v8;
    *(v5 + 504) = **(v5 + 328);
    sub_1000039E8(&qword_1004AB0A0);
    ThrowingTaskGroup.makeAsyncIterator()();
    v9 = swift_task_alloc();
    *(v5 + 536) = v9;
    *v9 = v5;
    v9[1] = sub_1001A5F10;
    a4 = *(v5 + 448);
    a1 = v5 + 208;
    a5 = v5 + 320;
    a2 = 0;
    a3 = 0;

    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, a2, a3, a4, a5);
  }

  v7 = *(v5 + 344);
  *(v5 + 472) = **(v5 + 328);
  *(v5 + 480) = *(v7 + 112);
  *(v5 + 512) = 0;

  return _swift_task_switch(sub_1001A5A5C, v7, 0);
}

uint64_t sub_1001A5A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[60];
  v5 = v3[43];
  v6 = *(v5 + 120);
  v3[65] = v6;
  v7 = __CFADD__(v6, v4);
  v8 = v6 + v4;
  if (v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3[66] = v8 - 1;
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v5 + 120) = v8;
  if (v8 - 1 >= v6)
  {
    return _swift_task_switch(sub_1001A5AB4, 0, 0);
  }

LABEL_7:
  __break(1u);
  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1001A5AB4()
{
  v1 = *(v0 + 440);
  v31 = v1;
  v32 = *(v0 + 520);
  v2 = *(v0 + 408);
  v36 = *(v0 + 432);
  v37 = *(v0 + 400);
  v4 = *(v0 + 384);
  v3 = *(v0 + 392);
  v35 = *(v0 + 49);
  v5 = *(v0 + 368);
  v33 = *(v0 + 360);
  v34 = *(v0 + 528);
  v6 = *(v0 + 352);
  v7 = type metadata accessor for TaskPriority();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v6, v4);
  v9 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v10 = (v37 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v32;
  *(v11 + 5) = v34;
  (*(v3 + 32))(&v11[v9], v2, v4);
  *&v11[v10] = v33;
  v12 = &v11[(v10 + 15) & 0xFFFFFFFFFFFFFFF8];
  v13 = *(v5 + 32);
  v14 = *(v5 + 16);
  *v12 = *v5;
  *(v12 + 1) = v14;
  v12[32] = v13;
  v12[33] = v35;
  sub_100013E54(v31, v36, &qword_1004AB0A8);
  v15 = (*(v8 + 48))(v36, 1, v7);
  v16 = *(v0 + 432);
  v17 = *(v0 + 368);
  if (v15 == 1)
  {
    sub_1001B1F88(v17, v0 + 16);
    sub_100013F2C(v16, &qword_1004AB0A8);
  }

  else
  {
    sub_1001B1F88(v17, v0 + 136);
    TaskPriority.rawValue.getter();
    (*(v8 + 8))(v16, v7);
  }

  if (*(v11 + 2))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  if (v20 | v18)
  {
    v21 = v0 + 176;
    *(v0 + 176) = 0;
    *(v0 + 184) = 0;
    *(v0 + 192) = v18;
    *(v0 + 200) = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 472);
  v23 = *(v0 + 440);
  v24 = *(v0 + 336);
  v25 = *(v0 + 512) + 1;
  *(v0 + 272) = 1;
  *(v0 + 280) = v21;
  *(v0 + 288) = v22;
  swift_task_create();

  sub_100013F2C(v23, &qword_1004AB0A8);
  if (v25 == v24)
  {
    v26 = *(v0 + 344);
    *(v0 + 488) = *(v0 + 400) + 7;
    *(v0 + 496) = v26;
    *(v0 + 504) = **(v0 + 328);
    sub_1000039E8(&qword_1004AB0A0);
    ThrowingTaskGroup.makeAsyncIterator()();
    v27 = swift_task_alloc();
    *(v0 + 536) = v27;
    *v27 = v0;
    v27[1] = sub_1001A5F10;
    v28 = *(v0 + 448);

    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 208, 0, 0, v28, v0 + 320);
  }

  else
  {
    ++*(v0 + 512);
    v29 = *(v0 + 344);

    return _swift_task_switch(sub_1001A5A5C, v29, 0);
  }
}

uint64_t sub_1001A5F10()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_1001A693C;
  }

  else
  {
    v2 = sub_1001A6024;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A6024()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  *(v0 + 552) = v1;
  *(v0 + 560) = v2;
  *(v0 + 568) = v3;
  *(v0 + 576) = v4;
  if (!v3)
  {
    (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));

    v16 = *(v0 + 8);
LABEL_23:

    return v16();
  }

  if (v2 >> 60 != 15 && [v3 statusCode] == 206)
  {
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000270B4(v5, static Network.logger);
    sub_1001B226C(v1, v2, v3);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      sub_1001B222C(v1, v2, v3);
LABEL_20:

      if ((v4 & 0x8000000000000000) == 0)
      {
        v20 = *(v0 + 544);
        v21 = **(v0 + 376);
        sub_100031994(v1, v2);
        sub_1001AF378(v21, v1, v2);
        if (v20)
        {
          v23 = *(v0 + 456);
          v22 = *(v0 + 464);
          v24 = *(v0 + 448);
          sub_100031914(v1, v2);
          sub_1001B222C(v1, v2, v3);
          (*(v23 + 8))(v22, v24);

          v16 = *(v0 + 8);
          goto LABEL_23;
        }

        sub_100031914(v1, v2);
        goto LABEL_27;
      }

      __break(1u);
LABEL_39:
      __break(1u);
      return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, v10, v11, v12, v13);
    }

    v8 = swift_slowAlloc();
    *v8 = 134218496;
    v9 = [v3 statusCode];
    *(v8 + 4) = v9;
    *(v8 + 12) = 2048;
    v14 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v14 != 2)
      {
        v15 = 0;
        goto LABEL_19;
      }

      v18 = v1[2];
      v17 = v1[3];
      v19 = __OFSUB__(v17, v18);
      v15 = v17 - v18;
      if (!v19)
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    else if (!v14)
    {
      v15 = BYTE6(v2);
LABEL_19:
      *(v8 + 14) = v15;
      *(v8 + 22) = 2048;
      *(v8 + 24) = v4;
      sub_1001B222C(v1, v2, v3);
      _os_log_impl(&_mh_execute_header, v6, v7, "Received %ld status code for %ld byte chunk, writing to disk at offset %llu", v8, 0x20u);

      goto LABEL_20;
    }

    LODWORD(v15) = HIDWORD(v1) - v1;
    if (__OFSUB__(HIDWORD(v1), v1))
    {
      goto LABEL_39;
    }

    v15 = v15;
    goto LABEL_19;
  }

LABEL_27:
  if ([v3 statusCode] == 416)
  {
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000270B4(v26, static Network.logger);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Received 416 status code, no more data to fetch!", v29, 2u);
    }

    sub_1001B222C(v1, v2, v3);
    v30 = swift_task_alloc();
    *(v0 + 536) = v30;
    *v30 = v0;
    v30[1] = sub_1001A5F10;
    v12 = *(v0 + 448);
    v13 = v0 + 320;
    v9 = (v0 + 208);
    v10 = 0;
    v11 = 0;

    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, v10, v11, v12, v13);
  }

  v31 = *(v0 + 496);

  return _swift_task_switch(sub_1001A6528, v31, 0);
}

uint64_t sub_1001A6528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[43];
  v5 = *(v4 + 120);
  v3[73] = v5;
  v6 = *(v4 + 112);
  v7 = __CFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3[74] = v8 - 1;
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v4 + 120) = v8;
  if (v8 - 1 >= v5)
  {
    return _swift_task_switch(sub_1001A6580, 0, 0);
  }

LABEL_7:
  __break(1u);
  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1001A6580()
{
  v1 = *(v0 + 424);
  v31 = *(v0 + 584);
  v35 = *(v0 + 416);
  v36 = *(v0 + 488);
  v2 = *(v0 + 408);
  v30 = v2;
  v4 = *(v0 + 384);
  v3 = *(v0 + 392);
  v34 = *(v0 + 49);
  v5 = *(v0 + 368);
  v32 = *(v0 + 360);
  v33 = *(v0 + 592);
  v6 = *(v0 + 352);
  v7 = type metadata accessor for TaskPriority();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v6, v4);
  v9 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v10 = (v9 + v36) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v31;
  *(v11 + 5) = v33;
  (*(v3 + 32))(&v11[v9], v30, v4);
  *&v11[v10] = v32;
  v12 = &v11[(v10 + 15) & 0xFFFFFFFFFFFFFFF8];
  v13 = *(v5 + 32);
  v14 = *(v5 + 16);
  *v12 = *v5;
  *(v12 + 1) = v14;
  v12[32] = v13;
  v12[33] = v34;
  sub_100013E54(v1, v35, &qword_1004AB0A8);
  v15 = (*(v8 + 48))(v35, 1, v7);
  v16 = *(v0 + 416);
  v17 = *(v0 + 368);
  if (v15 == 1)
  {
    sub_1001B1F88(v17, v0 + 56);
    sub_100013F2C(v16, &qword_1004AB0A8);
  }

  else
  {
    sub_1001B1F88(v17, v0 + 96);
    TaskPriority.rawValue.getter();
    (*(v8 + 8))(v16, v7);
  }

  if (*(v11 + 2))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  if (v20 | v18)
  {
    v21 = v0 + 240;
    *(v0 + 240) = 0;
    *(v0 + 248) = 0;
    *(v0 + 256) = v18;
    *(v0 + 264) = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 568);
  v23 = *(v0 + 560);
  v24 = *(v0 + 552);
  v25 = *(v0 + 504);
  v26 = *(v0 + 424);
  *(v0 + 296) = 1;
  *(v0 + 304) = v21;
  *(v0 + 312) = v25;
  swift_task_create();

  sub_1001B222C(v24, v23, v22);

  sub_100013F2C(v26, &qword_1004AB0A8);
  v27 = swift_task_alloc();
  *(v0 + 536) = v27;
  *v27 = v0;
  v27[1] = sub_1001A5F10;
  v28 = *(v0 + 448);

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 208, 0, 0, v28, v0 + 320);
}

uint64_t sub_1001A693C()
{
  (*(v0[57] + 8))(v0[58], v0[56]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001A69FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 96) = v9;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 16) = a1;
  return _swift_task_switch(sub_1001A6A30, 0, 0);
}

uint64_t sub_1001A6A30()
{
  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, static Network.logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Adding task to fetch range: (%llu-%llu)", v6, 0x16u);
  }

  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_1001A6BAC;
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = *(v0 + 96);

  return sub_1001AF780(v9, v10, v11, v8, v12);
}

uint64_t sub_1001A6BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *v5;

  if (v4)
  {
    v12 = v11[1];

    return v12();
  }

  else
  {
    v10[8] = a4;
    v10[9] = a3;
    v10[10] = a2;
    v10[11] = a1;

    return _swift_task_switch(sub_1001B22C8, 0, 0);
  }
}

uint64_t sub_1001A6D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 96) = v9;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 16) = a1;
  return _swift_task_switch(sub_1001A6D54, 0, 0);
}

uint64_t sub_1001A6D54()
{
  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, static Network.logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Adding task to fetch range: (%llu-%llu)", v6, 0x16u);
  }

  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_1001A6ED0;
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = *(v0 + 96);

  return sub_1001AF780(v9, v10, v11, v8, v12);
}

uint64_t sub_1001A6ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *v5;

  if (v4)
  {
    v12 = v11[1];

    return v12();
  }

  else
  {
    v10[8] = a4;
    v10[9] = a3;
    v10[10] = a2;
    v10[11] = a1;

    return _swift_task_switch(sub_1001A7044, 0, 0);
  }
}

uint64_t sub_1001A7044()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 16);
  *v3 = vextq_s8(*(v0 + 80), *(v0 + 80), 8uLL);
  v3[1].i64[0] = v1;
  v3[1].i64[1] = v2;
  return (*(v0 + 8))();
}

uint64_t static Network.download(from:to:attempts:backoff:background:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100001FE0;

  return sub_1001AD4FC(a1, a2, a3, a4, a5);
}

BOOL Network.Error.shouldRetry.getter(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if (!(a3 >> 5))
  {
    return 1;
  }

  if (v3 != 5)
  {
    if (v3 == 1)
    {
      v4 = vdupq_n_s64(a1);
      return vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_100484C80, v4), vceqq_s64(unk_100484C90, v4)))) & 1 | (a1 == 504) | (a1 == 509);
    }

    return 0;
  }

  return !(a2 | a1) && a3 == 160 || a1 == 1 && !a2 && a3 == 160 || a1 == 2 && !a2 && a3 == 160;
}

uint64_t static Network.post<A>(_:to:attempts:timeout:backoff:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = type metadata accessor for URL();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v10 = type metadata accessor for URLRequest();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001A7330, 0, 0);
}

uint64_t sub_1001A7330()
{
  (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  dispatch thunk of JSONEncoder.encode<A>(_:)();

  URLRequest.httpBody.setter();
  URLRequest.httpMethod.setter();
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_1001A7514;
  v2 = v0[15];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];

  return sub_1001AA578(v2, v5, v6, v3, 0, v4, 1, 0);
}

uint64_t sub_1001A7514(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 136) = v3;

  if (v3)
  {
    v9 = sub_1001A76DC;
  }

  else
  {

    *(v8 + 144) = a2;
    *(v8 + 152) = a1;
    v9 = sub_1001A7650;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001A7650()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];
  v3 = v0[18];
  v2 = v0[19];

  return v1(v2, v3);
}

uint64_t sub_1001A76DC()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t static Network.get(from:additionalHTTPHeaders:attempts:timeout:backoff:useNarrativeAuth:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 144) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = type metadata accessor for URL();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  v9 = type metadata accessor for URLRequest();
  *(v7 + 88) = v9;
  *(v7 + 96) = *(v9 - 8);
  *(v7 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_1001A788C, 0, 0);
}

uint64_t sub_1001A788C()
{
  v1._rawValue = *(v0 + 24);
  (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 16), *(v0 + 64));
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  URLRequest.addHeaders(additionalHTTPHeaders:)(v1);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1001A79A0;
  v3 = *(v0 + 104);
  v4 = *(v0 + 144);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);

  return sub_1001AA578(v3, v7, v8, v5, 0, v6, 1, v4);
}

uint64_t sub_1001A79A0(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 120) = v3;

  if (v3)
  {
    v9 = sub_1001A7B68;
  }

  else
  {

    *(v8 + 128) = a2;
    *(v8 + 136) = a1;
    v9 = sub_1001A7ADC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001A7ADC()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];
  v3 = v0[16];
  v2 = v0[17];

  return v1(v2, v3);
}

uint64_t sub_1001A7B68()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

Swift::Void __swiftcall URLRequest.addHeaders(additionalHTTPHeaders:)(Swift::OpaquePointer additionalHTTPHeaders)
{
  v2 = additionalHTTPHeaders._rawValue + 64;
  v3 = 1 << *(additionalHTTPHeaders._rawValue + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(additionalHTTPHeaders._rawValue + 8);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (v8 << 10) | (16 * v9);
      v11 = (*(additionalHTTPHeaders._rawValue + 6) + v10);
      v12 = *v11;
      v13 = v11[1];
      v14 = (*(additionalHTTPHeaders._rawValue + 7) + v10);
      v15 = *v14;
      v16 = v14[1];

      v17._countAndFlagsBits = v15;
      v17._object = v16;
      v18._countAndFlagsBits = v12;
      v18._object = v13;
      URLRequest.addValue(_:forHTTPHeaderField:)(v17, v18);

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *&v2[8 * v8];
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t static Network.put(to:additionalHTTPHeaders:attempts:timeout:backoff:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for URL();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_1001A7E38, 0, 0);
}

uint64_t sub_1001A7E38()
{
  v1._rawValue = *(v0 + 64);
  (*(*(v0 + 104) + 16))(*(v0 + 112), *(v0 + 56), *(v0 + 96));
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  URLRequest.addHeaders(additionalHTTPHeaders:)(v1);
  *(v0 + 16) = xmmword_1003F2EE0;
  *(v0 + 32) = xmmword_1003F2EF0;
  *(v0 + 48) = 1;
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_1001A7F70;
  v3 = *(v0 + 136);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);

  return sub_1001AA578(v3, v6, v4, v5, 0, v0 + 16, 1, 0);
}

uint64_t sub_1001A7F70(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 152) = v3;

  if (v3)
  {
    v9 = sub_1001A331C;
  }

  else
  {

    *(v8 + 160) = a2;
    *(v8 + 168) = a1;
    v9 = sub_1001A80AC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001A80AC()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];
  v3 = v0[20];
  v2 = v0[21];

  return v1(v2, v3);
}

unint64_t sub_1001A8138()
{
  sub_1001A8250();
  if (!v0)
  {
    return v2;
  }

  sub_1001B1C34();
  static Duration.* infix<A>(_:_:)();
  static Duration.+ infix(_:_:)();
  result = Duration.components.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    sleep(result);

    sub_1001A8250();
    return v2;
  }

  __break(1u);
  return result;
}

void sub_1001A8250()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = qword_1004A9E38;
  v2 = kCFPreferencesAnyUser;
  v3 = kCFPreferencesCurrentHost;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = v2;
  v5 = v3;
  v6 = v0;
  sub_100184D50(v15, v6, v4, v5);
  swift_endAccess();

  v7 = String._bridgeToObjectiveC()();
  v8 = CFPreferencesCopyValue(v7, v6, v4, v5);

  if (v8)
  {

    v15[0] = v8;
    swift_dynamicCast();
  }

  else
  {
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000270B4(v9, static Network.logger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1000026C0(0xD000000000000019, 0x800000010043E2B0, v15);
      _os_log_impl(&_mh_execute_header, v10, v11, "Reattempting CFPref read of %s...", v12, 0xCu);
      sub_100003C3C(v13);
    }

    sub_1001B1C88();
    swift_allocError();
    *v14 = 0xD00000000000002ELL;
    v14[1] = 0x800000010043E2D0;
    swift_willThrow();
  }
}

uint64_t static Network.unsetUplinkBandwidthLimit()()
{
  v0 = static Network.setUplinkBandwidthLimit(bandwidthLimit:)(0);
  if ((v0 & 1) == 0)
  {
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000270B4(v1, static Network.logger);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to reset uplink interface bandwidth", v4, 2u);
    }
  }

  return v0 & 1;
}

uint64_t static Network.setUplinkBandwidthLimit(bandwidthLimit:)(uint64_t a1)
{
  v2 = sub_1001A8138();
  v4 = v3;
  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000270B4(v5, static Network.logger);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *__dst = v9;
    *v8 = 136315138;

    v10 = sub_1000026C0(v2, v4, __dst);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Configuring bandwidth limit for interface %s...", v8, 0xCu);
    sub_100003C3C(v9);
  }

  while (1)
  {
    v11 = socket(2, 2, 0);
    if (v11 != -1)
    {
      break;
    }

    v12 = errno.getter();
    if (v12 != 4)
    {
      v13 = v12;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        sub_100187D3C();
        swift_allocError();
        *v18 = v13;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v19;
        *v17 = v19;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to open socket: %@", v16, 0xCu);
        sub_100013F2C(v17, &qword_1004AA050);
      }

      return 0;
    }
  }

  v20 = v11;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Opened socket: %d", v23, 8u);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  *__dst = 0u;
  v57 = 0u;
  v24 = String.utf8CString.getter();
  v25 = strlcpy(__dst, (v24 + 32), 0x10uLL);

  if (v25 > 15)
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v36))
    {
LABEL_21:

LABEL_22:
      close(v20);

      return 0;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v55[0] = v38;
    *v37 = 136315138;

    v39 = sub_1000026C0(v2, v4, v55);

    *(v37 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v35, v36, "Interface name '%s' is too long for system buffer", v37, 0xCu);
    sub_100003C3C(v38);

LABEL_20:

    goto LABEL_21;
  }

  v26 = ioctl(_:_:_:)();
  v27 = Logger.logObject.getter();
  if (v26)
  {
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v55[0] = v31;
      *v29 = 136315394;

      v32 = sub_1000026C0(v2, v4, v55);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2112;
      LODWORD(v32) = errno.getter();
      sub_100187D3C();
      swift_allocError();
      *v33 = v32;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v34;
      *v30 = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to get link params for interface %s: %@", v29, 0x16u);
      sub_100013F2C(v30, &qword_1004AA050);

      sub_100003C3C(v31);
    }

    goto LABEL_22;
  }

  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    swift_beginAccess();
    *(v42 + 4) = *(&v63 + 1);
    _os_log_impl(&_mh_execute_header, v27, v41, "Current bandwidth limit: %llu", v42, 0xCu);
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 67109120;
    swift_beginAccess();
    *(v45 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v43, v44, "Current packet scheduler model: %u", v45, 8u);
  }

  swift_beginAccess();
  if (a1)
  {
    LODWORD(v63) = 1;
    *(&v63 + 1) = a1;
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
  }

  swift_beginAccess();
  v46 = ioctl(_:_:_:)();
  swift_endAccess();
  if (v46)
  {
    v35 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v47))
    {
      goto LABEL_21;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v54[0] = v50;
    *v48 = 136315394;

    v51 = sub_1000026C0(v2, v4, v54);

    *(v48 + 4) = v51;
    *(v48 + 12) = 2112;
    LODWORD(v51) = errno.getter();
    sub_100187D3C();
    swift_allocError();
    *v52 = v51;
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 14) = v53;
    *v49 = v53;
    _os_log_impl(&_mh_execute_header, v35, v47, "Failed to set link params for interface %s: %@", v48, 0x16u);
    sub_100013F2C(v49, &qword_1004AA050);

    sub_100003C3C(v50);

    goto LABEL_20;
  }

  close(v20);

  return 1;
}

unint64_t Network.Error.errorDescription.getter(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = a3 >> 5;
  if (v4 <= 2)
  {
    if (a3 >> 5)
    {
      if (v4 == 1)
      {
        _StringGuts.grow(_:)(36);

        v13 = 0xD000000000000016;
        v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v5);

        v6 = 0x6573206D6F726620;
        v7 = 0xEC00000072657672;
LABEL_12:
        String.append(_:)(*&v6);
        return v13;
      }

      if (a3)
      {
        _StringGuts.grow(_:)(34);

        v13 = 0xD000000000000020;
        v6 = a1;
        v7 = a2;
        goto LABEL_12;
      }

      _StringGuts.grow(_:)(34);

      v13 = 0xD000000000000020;
      swift_getErrorValue();
    }

    else
    {
      _StringGuts.grow(_:)(21);

      v13 = 0xD000000000000013;
      swift_getErrorValue();
    }

LABEL_21:
    v12._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v12);

    return v13;
  }

  if (v4 == 3)
  {
    _StringGuts.grow(_:)(46);

    v13 = 0xD00000000000002CLL;
    swift_getErrorValue();
    goto LABEL_21;
  }

  if (v4 == 4)
  {
    v13 = 0;
    _StringGuts.grow(_:)(58);
    v8._countAndFlagsBits = 0x6465766965636552;
    v8._object = 0xE900000000000020;
    String.append(_:)(v8);
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v6 = 0xD00000000000002FLL;
    v7 = 0x800000010043E000;
    goto LABEL_12;
  }

  result = 0xD000000000000020;
  if (!(a2 | a1) && a3 == 160)
  {
    return 0xD000000000000022;
  }

  if (a1 != 1 || a2 || a3 != 160)
  {
    return 0xD00000000000001CLL;
  }

  return result;
}

uint64_t sub_1001A93C0@<X0>(_DWORD *a1@<X8>)
{
  result = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
  if ((result & 0x100000000) != 0)
  {
    v3 = result;
    sub_100187D3C();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v4 = v3;
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001A9448@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1001A9478(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AAFF0);
  __chkstk_darwin(v4 - 8);
  v88 = &v78 - v5;
  v94 = sub_1000039E8(&qword_1004AAFF8);
  v90 = *(v94 - 8);
  __chkstk_darwin(v94);
  v82 = &v78 - v6;
  v7 = sub_1000039E8(&qword_1004AB000);
  v84 = *(v7 - 8);
  v95 = v84;
  v8 = __chkstk_darwin(v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v78 - v11;
  v13 = sub_1000039E8(&qword_1004AB008);
  v86 = *(v13 - 8);
  v87 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v78 - v18;
  __chkstk_darwin(v17);
  v21 = &v78 - v20;
  Reference.init(_:)();
  Reference.init(_:)();
  Reference.init(_:)();
  v91 = v21;
  v92 = v19;
  v96 = v21;
  v97 = v19;
  v93 = v16;
  v98 = v16;
  sub_1000039E8(&qword_1004AB010);
  sub_10000E720(&qword_1004AB018, &qword_1004AB000);
  Regex.init<A>(_:)();
  v83 = a1;
  v89 = a2;
  v22 = v88;
  String.subscript.getter();
  v85 = v12;
  dispatch thunk of RegexComponent.regex.getter();
  v23 = v7;
  Regex.firstMatch(in:)();
  v25 = v95 + 8;
  v24 = *(v95 + 1);
  v24(v10, v23);

  v26 = v90;
  v27 = v94;
  if ((*(v90 + 48))(v22, 1, v94) == 1)
  {
    sub_100013F2C(v22, &qword_1004AAFF0);
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000270B4(v28, static Network.logger);
    v29 = v89;

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v100[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1000026C0(v83, v29, v100);
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to match Content-Range pattern in %s", v32, 0xCu);
      sub_100003C3C(v33);
    }

    v24(v85, v23);
LABEL_7:
    v34 = 0;
LABEL_8:
    v35 = v87;
    v36 = *(v86 + 8);
    v36(v93, v87);
    v36(v92, v35);
    v36(v91, v35);
    return v34;
  }

  v84 = v24;
  v95 = v25;
  (*(v26 + 32))(v82, v22, v27);
  Regex.Match.subscript.getter();
  v38 = static String._fromSubstring(_:)();
  v40 = v39;

  Regex.Match.subscript.getter();
  v81 = static String._fromSubstring(_:)();
  v42 = v41;

  Regex.Match.subscript.getter();
  v79 = static String._fromSubstring(_:)();
  v44 = v43;

  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  v46 = sub_1000270B4(v45, static Network.logger);

  v47 = v89;

  v80 = v46;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();

  v50 = os_log_type_enabled(v48, v49);
  v88 = v42;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v78 = v44;
    v52 = v51;
    v100[0] = swift_slowAlloc();
    *v52 = 136315906;
    *(v52 + 4) = sub_1000026C0(v38, v40, v100);
    *(v52 + 12) = 2080;
    *(v52 + 14) = sub_1000026C0(v81, v42, v100);
    *(v52 + 22) = 2080;
    *(v52 + 24) = sub_1000026C0(v79, v78, v100);
    *(v52 + 32) = 2080;
    *(v52 + 34) = sub_1000026C0(v83, v47, v100);
    _os_log_impl(&_mh_execute_header, v48, v49, "Matched start: %s, end: %s, total: %s in Content-Range string: %s", v52, 0x2Au);
    swift_arrayDestroy();

    v44 = v78;
  }

  v53 = HIBYTE(v40) & 0xF;
  v54 = v38 & 0xFFFFFFFFFFFFLL;
  if ((v40 & 0x2000000000000000) != 0)
  {
    v55 = HIBYTE(v40) & 0xF;
  }

  else
  {
    v55 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {
    v58 = v23;

    v56 = v94;
    goto LABEL_78;
  }

  result = v38;
  v56 = v94;
  if ((v40 & 0x1000000000000000) != 0)
  {
    v58 = v23;
    v99 = 0;
    v34 = sub_100311EBC(result, v40, 10);
    v71 = v77;
LABEL_77:

    if ((v71 & 1) == 0)
    {
      sub_1001A4AE4(v81, v88);
      if ((v72 & 1) == 0)
      {
        sub_1001A4AE4(v79, v44);
        if ((v76 & 1) == 0)
        {
          (*(v90 + 8))(v82, v56);
          v84(v85, v58);
          goto LABEL_8;
        }

        goto LABEL_81;
      }

LABEL_80:

LABEL_81:
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Failed to convert Content-Range string components to UInt64", v75, 2u);
      }

      (*(v90 + 8))(v82, v56);
      v84(v85, v58);
      goto LABEL_7;
    }

LABEL_78:

    goto LABEL_80;
  }

  if ((v40 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v40 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v57 = *result;
    if (v57 == 43)
    {
      if (v54 >= 1)
      {
        v58 = v23;
        v53 = v54 - 1;
        if (v54 != 1)
        {
          v34 = 0;
          if (result)
          {
            v64 = (result + 1);
            while (1)
            {
              v65 = *v64 - 48;
              if (v65 > 9)
              {
                goto LABEL_75;
              }

              if (!is_mul_ok(v34, 0xAuLL))
              {
                goto LABEL_75;
              }

              v61 = __CFADD__(10 * v34, v65);
              v34 = 10 * v34 + v65;
              if (v61)
              {
                goto LABEL_75;
              }

              ++v64;
              if (!--v53)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_67;
        }

        goto LABEL_75;
      }

      goto LABEL_91;
    }

    if (v57 != 45)
    {
      v58 = v23;
      if (v54)
      {
        v34 = 0;
        if (result)
        {
          while (1)
          {
            v68 = *result - 48;
            if (v68 > 9)
            {
              goto LABEL_75;
            }

            if (!is_mul_ok(v34, 0xAuLL))
            {
              goto LABEL_75;
            }

            v61 = __CFADD__(10 * v34, v68);
            v34 = 10 * v34 + v68;
            if (v61)
            {
              goto LABEL_75;
            }

            ++result;
            if (!--v54)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_75:
      v34 = 0;
      LOBYTE(v53) = 1;
      goto LABEL_76;
    }

    if (v54 >= 1)
    {
      v58 = v23;
      v53 = v54 - 1;
      if (v54 != 1)
      {
        v34 = 0;
        if (result)
        {
          v59 = (result + 1);
          while (1)
          {
            v60 = *v59 - 48;
            if (v60 > 9)
            {
              goto LABEL_75;
            }

            if (!is_mul_ok(v34, 0xAuLL))
            {
              goto LABEL_75;
            }

            v61 = 10 * v34 >= v60;
            v34 = 10 * v34 - v60;
            if (!v61)
            {
              goto LABEL_75;
            }

            ++v59;
            if (!--v53)
            {
              goto LABEL_76;
            }
          }
        }

LABEL_67:
        LOBYTE(v53) = 0;
LABEL_76:
        v99 = v53;
        v71 = v53;
        goto LABEL_77;
      }

      goto LABEL_75;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v100[0] = result;
  v100[1] = v40 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      v58 = v23;
      if (v53)
      {
        v34 = 0;
        v69 = v100;
        while (1)
        {
          v70 = *v69 - 48;
          if (v70 > 9)
          {
            break;
          }

          if (!is_mul_ok(v34, 0xAuLL))
          {
            break;
          }

          v61 = __CFADD__(10 * v34, v70);
          v34 = 10 * v34 + v70;
          if (v61)
          {
            break;
          }

          v69 = (v69 + 1);
          if (!--v53)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    if (v53)
    {
      v58 = v23;
      if (--v53)
      {
        v34 = 0;
        v62 = v100 + 1;
        while (1)
        {
          v63 = *v62 - 48;
          if (v63 > 9)
          {
            break;
          }

          if (!is_mul_ok(v34, 0xAuLL))
          {
            break;
          }

          v61 = 10 * v34 >= v63;
          v34 = 10 * v34 - v63;
          if (!v61)
          {
            break;
          }

          ++v62;
          if (!--v53)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    goto LABEL_90;
  }

  if (v53)
  {
    v58 = v23;
    if (--v53)
    {
      v34 = 0;
      v66 = v100 + 1;
      while (1)
      {
        v67 = *v66 - 48;
        if (v67 > 9)
        {
          break;
        }

        if (!is_mul_ok(v34, 0xAuLL))
        {
          break;
        }

        v61 = __CFADD__(10 * v34, v67);
        v34 = 10 * v34 + v67;
        if (v61)
        {
          break;
        }

        ++v66;
        if (!--v53)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_75;
  }

LABEL_92:
  __break(1u);
  return result;
}

uint64_t sub_1001AA1A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000270B4(v8, static Network.logger);
  (*(v5 + 16))(v7, a2, v4);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *&v24 = swift_slowAlloc();
    *v11 = 136315394;
    sub_1001B1D90(&qword_1004AA848, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v15 = sub_1000026C0(v12, v14, &v24);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = sub_1000026C0(v16, v17, &v24);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Request (%s) attempt failed: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v26 = a1;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v19 = v25 >> 5;
  if (!v19)
  {
    sub_1001B1DD8(v24, *(&v24 + 1), v25);
    v21 = 1;
    return v21 & 1;
  }

  if (v19 == 5)
  {
    if (v24 == 0 && v25 == 160 || v24 == 1 && v25 == 160 || v24 == 2 && v25 == 160)
    {
      v21 = 1;
      return v21 & 1;
    }

    goto LABEL_18;
  }

  if (v19 != 1)
  {
LABEL_18:
    sub_1001B1DD8(v24, *(&v24 + 1), v25);
LABEL_19:
    v21 = 0;
    return v21 & 1;
  }

  v20 = vdupq_n_s64(v24);
  v21 = vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_100484C80, v20), vceqq_s64(unk_100484C90, v20)))) | (v24 == 504) | (v24 == 509);
  sub_1001B1DD8(v24, *(&v24 + 1), v25);
  return v21 & 1;
}