uint64_t sub_10031FB80(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for CacheEntryFilesystemInfo(0);
  v8 = __chkstk_darwin(v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_1003201D4(v30, v43);
          v32 = v44;
          sub_1003201D4(v27, v44);
          v33 = static Date.> infix(_:_:)();
          sub_100320238(v32, type metadata accessor for CacheEntryFilesystemInfo);
          sub_100320238(v31, type metadata accessor for CacheEntryFilesystemInfo);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_1003201D4(a2, v43);
        v21 = v44;
        sub_1003201D4(a4, v44);
        v22 = static Date.> infix(_:_:)();
        sub_100320238(v21, type metadata accessor for CacheEntryFilesystemInfo);
        sub_100320238(v20, type metadata accessor for CacheEntryFilesystemInfo);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_100320078(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_100320078(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for CacheEntryFilesystemInfo(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100320170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheEntryFilesystemInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003201D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheEntryFilesystemInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100320238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100320298()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100189CAC;

  return sub_10031CEB4(v2, v3, v4, v5, v6);
}

unint64_t sub_100320354()
{
  result = qword_1004B0CA0;
  if (!qword_1004B0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0CA0);
  }

  return result;
}

uint64_t sub_1003203A8(uint64_t a1)
{
  v12 = v1[2];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100189CAC;

  return sub_100318808(a1, v4, v5, v6, v7, v8, v9, v12);
}

uint64_t sub_10032049C(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v8 = v1[8];
  v7 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100189CAC;

  return sub_100318AD0(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_100320588(unint64_t *a1, void (*a2)(uint64_t))
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

DarwinInit::DInitAppleConnectSSHConfig::CodingKeys_optional __swiftcall DInitAppleConnectSSHConfig.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004893A0, v2);

  if (v3 == 1)
  {
    v4.value = DarwinInit_DInitAppleConnectSSHConfig_CodingKeys_groups;
  }

  else
  {
    v4.value = DarwinInit_DInitAppleConnectSSHConfig_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10032062C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1004893A0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_10032068C@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1004893A0, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1003206F0(uint64_t a1)
{
  v2 = sub_100320D90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032072C(uint64_t a1)
{
  v2 = sub_100320D90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100320780@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100320B78(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t DInitAppleConnectSSHConfig.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000039E8(&qword_1004B0CA8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10000E2A8(a1, a1[3]);
  sub_100320D90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v13 = 0;
  sub_1000039E8(&qword_1004A6B48);
  sub_1000A6724(&qword_1004A8B08);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t static DInitAppleConnectSSHConfig.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (!a3 || (sub_10024DC98(a1, a3) & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4 && (sub_10024DC98(a2, a4) & 1) != 0)
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

uint64_t sub_100320A18(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v4)
  {
    if (!v6 || (sub_10024DC98(v4, v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v7 && (sub_10024DC98(v5, v7) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

Swift::Int DInitAppleConnectSSHConfig.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  DInitAppleConnectSSHConfig.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_100320ADC()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  DInitAppleConnectSSHConfig.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_100320B30()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  DInitAppleConnectSSHConfig.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_100320B78(void *a1)
{
  v3 = sub_1000039E8(&qword_1004B0CD8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_10000E2A8(a1, v7);
  sub_100320D90();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000039E8(&qword_1004A6B48);
    v10 = 0;
    sub_1000A6724(&qword_1004A88F8);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v7 = v11;
    v10 = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100003C3C(a1);
  return v7;
}

unint64_t sub_100320D90()
{
  result = qword_1004B0CB0;
  if (!qword_1004B0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0CB0);
  }

  return result;
}

unint64_t sub_100320DE8()
{
  result = qword_1004B0CB8;
  if (!qword_1004B0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0CB8);
  }

  return result;
}

unint64_t sub_100320E40()
{
  result = qword_1004B0CC0;
  if (!qword_1004B0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0CC0);
  }

  return result;
}

unint64_t sub_100320E98()
{
  result = qword_1004B0CC8;
  if (!qword_1004B0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0CC8);
  }

  return result;
}

unint64_t sub_100320EF0()
{
  result = qword_1004B0CD0;
  if (!qword_1004B0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0CD0);
  }

  return result;
}

uint64_t sub_100320F44(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100320FA0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t DInitDiavloConfig.init(serverURL:rootCertificate:appleConnect:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t DInitDiavloConfig.rootCertificate.getter()
{
  v1 = *(v0 + 16);
  sub_100031994(v1, *(v0 + 24));
  return v1;
}

uint64_t DInitDiavloConfig.rootCertificate.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100031914(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

DarwinInit::DInitDiavloConfig::CodingKeys_optional __swiftcall DInitDiavloConfig.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004893F0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

DarwinInit::DInitDiavloConfig::CodingKeys_optional sub_1003210DC@<W0>(Swift::String *a1@<X0>, DarwinInit::DInitDiavloConfig::CodingKeys_optional *a2@<X8>)
{
  result.value = DInitDiavloConfig.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

DarwinInit::DInitDiavloConfig::CodingKeys_optional sub_10032110C@<W0>(uint64_t a1@<X0>, DarwinInit::DInitDiavloConfig::CodingKeys_optional *a2@<X8>)
{
  result.value = DInitDiavloConfig.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100321134(uint64_t a1)
{
  v2 = sub_100321B14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100321170(uint64_t a1)
{
  v2 = sub_100321B14();

  return CodingKey.debugDescription.getter(a1, v2);
}

double DInitDiavloConfig.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100321878(a1, v6);
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

uint64_t DInitDiavloConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004B0CE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10000E2A8(a1, a1[3]);
  sub_100321B14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v13 = v12;
    v11[23] = 1;
    sub_1003092A8(&v13, v11);
    sub_10025AA38();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100031914(v12, *(&v12 + 1));
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL sub_1003213CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s10DarwinInit17DInitDiavloConfigV2eeoiySbAC_ACtFZ_0(v5, v7);
}

void DInitDiavloConfig.hash(into:)()
{
  String.hash(into:)();
  if (*(v0 + 24) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v1 = *(v0 + 32);
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v2 = v1 & 1;
  }

  Hasher._combine(_:)(v2);
}

Swift::Int DInitDiavloConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (*(v0 + 24) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v1 = *(v0 + 32);
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v2 = v1 & 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100321568()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  String.hash(into:)();
  if (v1 >> 60 != 15)
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    if (v2 != 2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
  if (v2 == 2)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  v3 = v2 & 1;
LABEL_6:
  Hasher._combine(_:)(v3);
}

Swift::Int sub_10032160C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1 >> 60 != 15)
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    if (v2 != 2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
  if (v2 == 2)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  v3 = v2 & 1;
LABEL_6:
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

BOOL _s10DarwinInit17DInitDiavloConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v13 = *(a2 + 16);
  v14 = v5;
  v6 = v5;
  v7 = v13;
  if (*(&v5 + 1) >> 60 == 15)
  {
    if (*(&v13 + 1) >> 60 == 15)
    {
      sub_1003092A8(&v14, v12);
      sub_1003092A8(&v13, v12);
      sub_100031914(v6, *(&v6 + 1));
      goto LABEL_13;
    }

LABEL_10:
    sub_1003092A8(&v14, v12);
    sub_1003092A8(&v13, v12);
    sub_100031914(v6, *(&v6 + 1));
    sub_100031914(v7, *(&v7 + 1));
    return 0;
  }

  if (*(&v13 + 1) >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_1003092A8(&v14, v12);
  sub_1003092A8(&v13, v12);
  sub_100031994(v6, *(&v6 + 1));
  sub_100031994(v7, *(&v7 + 1));
  v9 = sub_10030651C(v6, *(&v6 + 1), v7, *(&v7 + 1));
  sub_100031914(v7, *(&v7 + 1));
  sub_100031914(v6, *(&v6 + 1));
  sub_100031914(v7, *(&v7 + 1));
  sub_100031914(v6, *(&v6 + 1));
  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v10 = *(a1 + 32);
  v11 = *(a2 + 32);
  if (v10 != 2)
  {
    return v11 != 2 && ((v11 ^ v10) & 1) == 0;
  }

  return v11 == 2;
}

uint64_t sub_100321878@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004B0D10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_100321B14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
    return sub_100031914(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v18) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v16 = v9;
    v20 = 1;
    sub_10025AA8C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v12 = v19;
    v17 = v18;
    sub_100031914(0, 0xF000000000000000);
    LOBYTE(v18) = 2;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v6 + 8))(v8, v5);

    v14 = v17;
    sub_100031994(v17, v12);
    sub_100003C3C(a1);

    result = sub_100031914(v14, v12);
    *a2 = v16;
    *(a2 + 8) = v11;
    *(a2 + 16) = v14;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
  }

  return result;
}

unint64_t sub_100321B14()
{
  result = qword_1004B0CE8;
  if (!qword_1004B0CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0CE8);
  }

  return result;
}

unint64_t sub_100321B6C()
{
  result = qword_1004B0CF0;
  if (!qword_1004B0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0CF0);
  }

  return result;
}

unint64_t sub_100321BC4()
{
  result = qword_1004B0CF8;
  if (!qword_1004B0CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0CF8);
  }

  return result;
}

unint64_t sub_100321C1C()
{
  result = qword_1004B0D00;
  if (!qword_1004B0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0D00);
  }

  return result;
}

unint64_t sub_100321C74()
{
  result = qword_1004B0D08;
  if (!qword_1004B0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0D08);
  }

  return result;
}

uint64_t sub_100321CC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100321D10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

DarwinInit::EngineeringSSHCA::AuthorizationCategory_optional __swiftcall EngineeringSSHCA.AuthorizationCategory.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100489458, v2);

  if (v3 == 1)
  {
    v4.value = DarwinInit_EngineeringSSHCA_AuthorizationCategory_groups;
  }

  else
  {
    v4.value = DarwinInit_EngineeringSSHCA_AuthorizationCategory_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100321DD0@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100489458, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100321E30()
{
  v0 = type metadata accessor for Logger();
  sub_1000279B4(v0, static EngineeringSSHCA.logger);
  v1 = sub_1000270B4(v0, static EngineeringSSHCA.logger);
  if (qword_1004A9F58 != -1)
  {
    swift_once();
  }

  v2 = sub_1000270B4(v0, static Logger.esc);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t EngineeringSSHCA.logger.unsafeMutableAddressor()
{
  if (qword_1004A9FB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000270B4(v0, static EngineeringSSHCA.logger);
}

uint64_t static EngineeringSSHCA.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9FB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000270B4(v2, static EngineeringSSHCA.logger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *sub_10032205C()
{
  result = sub_10032207C();
  static EngineeringSSHCA.shellUsers = result;
  return result;
}

char *sub_10032207C()
{
  v0 = getpwent();
  if (v0)
  {
    v1 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (!v0->pw_name || !v0->pw_shell)
      {
        goto LABEL_4;
      }

      if (String.init(cString:)() != 0x6E69622F7273752FLL || v2 != 0xEE0065736C61662FLL)
      {
        v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v4)
        {
          goto LABEL_4;
        }

        v5 = [objc_opt_self() defaultManager];
        String.init(cString:)();
        v6 = String._bridgeToObjectiveC()();

        v7 = [v5 fileExistsAtPath:v6];

        if (!v7)
        {
          goto LABEL_4;
        }

        v8 = String.init(cString:)();
        v10 = v9;
        v19[0] = v8;
        v19[1] = v9;
        __chkstk_darwin(v8);
        v17[2] = v19;
        if ((sub_100012A04(sub_1001EF6AC, v17, v1) & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_100011A4C(0, *(v1 + 2) + 1, 1, v1);
          }

          v12 = *(v1 + 2);
          v11 = *(v1 + 3);
          v13 = v12 + 1;
          if (v12 >= v11 >> 1)
          {
            v18 = v12 + 1;
            v15 = sub_100011A4C((v11 > 1), v12 + 1, 1, v1);
            v13 = v18;
            v1 = v15;
          }

          *(v1 + 2) = v13;
          v14 = &v1[16 * v12];
          *(v14 + 4) = v8;
          *(v14 + 5) = v10;
          goto LABEL_4;
        }
      }

LABEL_4:
      v0 = getpwent();
      if (!v0)
      {
        goto LABEL_20;
      }
    }
  }

  v1 = _swiftEmptyArrayStorage;
LABEL_20:
  if (!*(v1 + 2))
  {

    return &off_100488D50;
  }

  return v1;
}

uint64_t *EngineeringSSHCA.shellUsers.unsafeMutableAddressor()
{
  if (qword_1004A9FC0 != -1)
  {
    swift_once();
  }

  return &static EngineeringSSHCA.shellUsers;
}

uint64_t static EngineeringSSHCA.shellUsers.getter()
{
  if (qword_1004A9FC0 != -1)
  {
    swift_once();
  }
}

uint64_t static EngineeringSSHCA.restrictGlobalAccessTo(identifiers:category:)(void *a1, char a2)
{
  if (qword_1004A9FC0 != -1)
  {
    swift_once();
  }

  v4 = *(static EngineeringSSHCA.shellUsers + 16);
  if (v4)
  {
    v5 = (static EngineeringSSHCA.shellUsers + 40);
    v6 = 1;
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;

      LOBYTE(v7) = sub_100322438(v7, v8, a1, a2 & 1);

      v6 &= v7;
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_100322438(uint64_t a1, void *a2, void *a3, int a4)
{
  v47 = a3;
  v7 = type metadata accessor for String.Encoding();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FilePath();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0xD00000000000001ALL;
  v49 = 0x80000001004445C0;
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13 = v48;
  v14 = v49;
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 fileExistsAtPath:v17];

  v19 = v47;
  if (v18)
  {
LABEL_4:
    if (a4)
    {
      v25 = 0xD000000000000011;
    }

    else
    {
      v25 = 0xD000000000000015;
    }

    if (a4)
    {
      v26 = "empty_identifiers";
    }

    else
    {
      v26 = "/private/var/db/ssh/users/";
    }

    v48 = v13;
    v49 = v14;

    v27._countAndFlagsBits = 47;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v28._object = (v26 | 0x8000000000000000);
    v28._countAndFlagsBits = v25;
    String.append(_:)(v28);

    FilePath.init(_:)();
    if (v19)
    {
      v48 = v19;

      sub_1000039E8(&qword_1004A6B48);
      sub_10004AF7C();
      BidirectionalCollection<>.joined(separator:)();
    }

    LODWORD(v47) = a4;
    v29 = v44;
    static String.Encoding.utf8.getter();
    v30 = String.data(using:allowLossyConversion:)();
    v32 = v31;
    result = (*(v45 + 8))(v29, v46);
    if (v32 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {

      FilePath.save(_:append:)(v30, v32, 0);
      (*(v42 + 8))(v11, v43);
      sub_100031914(v30, v32);
      return 1;
    }

    return result;
  }

  v20 = v19;
  v21 = [v15 defaultManager];
  v22 = String._bridgeToObjectiveC()();
  v48 = 0;
  v23 = [v21 createDirectoryAtPath:v22 withIntermediateDirectories:1 attributes:0 error:&v48];

  if (v23)
  {
    v24 = v48;
    v19 = v20;
    goto LABEL_4;
  }

  v34 = v48;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1004A9FB8 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000270B4(v35, static EngineeringSSHCA.logger);
  swift_errorRetain();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    swift_errorRetain();
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 4) = v40;
    *v39 = v40;
    _os_log_impl(&_mh_execute_header, v36, v37, "Failed to disable ESC single user access: %@", v38, 0xCu);
    sub_10019AC78(v39);
  }

  else
  {
  }

  return 0;
}

uint64_t _s10DarwinInit16EngineeringSSHCAO16restrictAccessTo7account6configSbSS_AC6ConfigVSgtFZ_0(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  if (a3 >= 2)
  {
    v8 = *(a3 + 16);
    if (v8)
    {
      sub_10000DFF4(0, v8, 0);
      sub_10000B080();
      v21 = v5;
      v9 = (v5 + 40);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;

        if ((StringProtocol.contains<A>(_:)() & 1) == 0)
        {

          v12._countAndFlagsBits = 64;
          v12._object = 0xE100000000000000;
          String.append(_:)(v12);
          v13._object = 0x8000000100443B90;
          v13._countAndFlagsBits = 0xD000000000000016;
          String.append(_:)(v13);
        }

        v15 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        if (v15 >= v14 >> 1)
        {
          sub_10000DFF4((v14 > 1), v15 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v15 + 1;
        v16 = &_swiftEmptyArrayStorage[2 * v15];
        v16[4] = v10;
        v16[5] = v11;
        v9 += 2;
        --v8;
      }

      while (v8);
      v4 = a4;
      v6 = a2;
      v5 = v21;
      v7 = a1;
    }
  }

  v17 = sub_100322438(v7, v6, _swiftEmptyArrayStorage, 0);

  v18 = 0;
  if (v17)
  {
    if (v5 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = v4;
    }

    v18 = sub_100322438(v7, v6, v19, 1);
  }

  return v18 & 1;
}

uint64_t _s10DarwinInit16EngineeringSSHCAO19disableGlobalAccessSbyFZ_0()
{
  if (qword_1004A9FC0 != -1)
  {
    swift_once();
  }

  v0 = static EngineeringSSHCA.shellUsers;
  v1 = *(static EngineeringSSHCA.shellUsers + 16);
  if (v1)
  {
    v2 = 0;
    v3 = -v1;
    v4 = 1;
LABEL_5:
    v5 = (v0 + 40 + 16 * v2++);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      LOBYTE(v6) = sub_100322438(v6, v7, 0, 0);

      if ((v6 & 1) == 0)
      {
        v4 = 0;
        v8 = 0;
        if (v3 + v2)
        {
          goto LABEL_5;
        }

        return v8 & 1;
      }

      ++v2;
      v5 += 2;
    }

    while (v3 + v2 != 1);
    if (v4)
    {
      v9 = *(v0 + 16);
      if (!v9)
      {
        goto LABEL_16;
      }

      v10 = (v0 + 40);
      v8 = 1;
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;

        LOBYTE(v11) = sub_100322438(v11, v12, 0, 1);

        v8 &= v11;
        v10 += 2;
        --v9;
      }

      while (v9);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
LABEL_16:
    v8 = 1;
  }

  return v8 & 1;
}

unint64_t sub_100322F9C()
{
  result = qword_1004B0D18;
  if (!qword_1004B0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0D18);
  }

  return result;
}

uint64_t Certificate.init(base64Encoded:label:)()
{
  result = Data.init(base64Encoded:options:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = v1;
    v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100031914(v2, v3);
    result = SecCertificateCreateWithData(0, v4.super.isa);
    if (result)
    {
      v5 = result;

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003230F8()
{
  result = Data.init(base64Encoded:options:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_44;
  }

  v2 = result;
  v3 = v1;
  v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100031914(v2, v3);
  result = SecCertificateCreateWithData(0, v4.super.isa);
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v5 = result;

  v87 = v5;
  v88 = 0xD000000000000017;
  v89[0] = 0x8000000100444B40;
  result = Data.init(base64Encoded:options:)();
  if (v6 >> 60 == 15)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v7 = result;
  v8 = v6;
  v9.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100031914(v7, v8);
  result = SecCertificateCreateWithData(0, v9.super.isa);
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v10 = result;

  v89[1] = v10;
  v89[2] = 0xD000000000000019;
  v89[3] = 0x8000000100444E70;
  result = Data.init(base64Encoded:options:)();
  if (v11 >> 60 == 15)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = result;
  v13 = v11;
  v14.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100031914(v12, v13);
  result = SecCertificateCreateWithData(0, v14.super.isa);
  if (!result)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v15 = result;

  v89[4] = v15;
  v89[5] = 0xD00000000000001DLL;
  v89[6] = 0x8000000100445600;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000270B4(v16, qword_1004B00F8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Installing Corporate Root CAs", v19, 2u);
  }

  for (i = 0; i != 9; i += 3)
  {
    v21 = v89[i - 1];
    v22 = v89[i];
    v23 = *&v86[i * 8 + 32];
    swift_bridgeObjectRetain_n();
    v24 = v23;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v84 = v28;
      *v27 = 136315138;

      v29 = sub_1000026C0(v21, v22, &v84);

      *(v27 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Installing %s", v27, 0xCu);
      sub_100003C3C(v28);
    }

    sub_1000039E8(&qword_1004A7A90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376F00;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v31;
    type metadata accessor for CFString(0);
    *(inited + 72) = v32;
    *(inited + 48) = kSecClassCertificate;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v33;
    type metadata accessor for SecCertificate(0);
    *(inited + 120) = v34;
    *(inited + 96) = v24;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v35;
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v21;
    *(inited + 152) = v22;
    v36 = v24;

    v37 = kSecClassCertificate;
    sub_100061F34(inited);
    swift_setDeallocating();
    sub_1000039E8(&qword_1004A7A98);
    swift_arrayDestroy();
    v38.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v39 = SecItemAdd(v38.super.isa, 0);
    if (v39 == -25299)
    {
      v49 = v36;

      v41 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v41, v50))
      {
        goto LABEL_22;
      }

      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v84 = v44;
      *v43 = 136315138;

      v51 = sub_1000026C0(v21, v22, &v84);

      *(v43 + 4) = v51;
      v46 = v50;
      v47 = v41;
      v48 = "%s already present in keychain";
      goto LABEL_21;
    }

    if (v39)
    {
      v75 = v39;
      swift_arrayDestroy();
      v76 = SecCopyErrorMessageString(v75, 0);
      if (!v76)
      {
        v84 = 0x737574617453534FLL;
        v85 = 0xE900000000000020;
        v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v77);

        v76 = String._bridgeToObjectiveC()();
      }

      v36 = v36;

      v65 = v76;
      v59 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v84 = v81;
        *v79 = 136315394;

        v82 = sub_1000026C0(v21, v22, &v84);

        *(v79 + 4) = v82;
        *(v79 + 12) = 2112;
        *(v79 + 14) = v65;
        *v80 = v65;
        v83 = v65;
        _os_log_impl(&_mh_execute_header, v59, v78, "Failed to add %s to keychain: %@", v79, 0x16u);
        sub_10019AC78(v80);

        sub_100003C3C(v81);

        return 0;
      }

LABEL_39:

LABEL_40:

      goto LABEL_41;
    }

    v40 = v36;

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v84 = v44;
      *v43 = 136315138;

      v45 = sub_1000026C0(v21, v22, &v84);

      *(v43 + 4) = v45;
      v46 = v42;
      v47 = v41;
      v48 = "Added %s to keychain";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v47, v46, v48, v43, 0xCu);
      sub_100003C3C(v44);
    }

LABEL_22:

    if (!SecTrustStoreForDomain())
    {
      swift_arrayDestroy();
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "Failed to retrieve user trust store", v61, 2u);
      }

      goto LABEL_40;
    }

    v52 = SecTrustStoreSetTrustSettings();
    if (v52)
    {
      v62 = v52;
      swift_arrayDestroy();
      v63 = SecCopyErrorMessageString(v62, 0);
      if (!v63)
      {
        v84 = 0x737574617453534FLL;
        v85 = 0xE900000000000020;
        v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v64);

        v63 = String._bridgeToObjectiveC()();
      }

      v36 = v36;

      v65 = v63;
      v59 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v84 = v69;
        *v67 = 136315394;

        v70 = sub_1000026C0(v21, v22, &v84);

        *(v67 + 4) = v70;
        *(v67 + 12) = 2112;
        *(v67 + 14) = v65;
        *v68 = v65;
        v71 = v65;
        _os_log_impl(&_mh_execute_header, v59, v66, "Failed to add %s to trust store: %@", v67, 0x16u);
        sub_10019AC78(v68);

        sub_100003C3C(v69);

LABEL_41:
        return 0;
      }

      goto LABEL_39;
    }

    v53 = v36;

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v84 = v57;
      *v56 = 136315138;

      v58 = sub_1000026C0(v21, v22, &v84);

      *(v56 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v54, v55, "Installed %s successfully", v56, 0xCu);
      sub_100003C3C(v57);
    }
  }

  swift_arrayDestroy();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "Corporate Root CAs installed successfully", v74, 2u);
  }

  return 1;
}

uint64_t sub_100323DC8()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for URL();
  sub_1000279B4(v7, qword_1004B0D20);
  sub_1000270B4(v7, qword_1004B0D20);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return URL.init(filePath:directoryHint:relativeTo:)();
}

id sub_100323F74(uint64_t a1, void *a2, char a3)
{
  if (qword_1004A9FC8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for URL();
  sub_1000270B4(v6, qword_1004B0D20);
  v7 = objc_allocWithZone(NSMutableDictionary);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = [v7 initWithContentsOfURL:v9];

  if (!v11)
  {
    v11 = [objc_allocWithZone(NSMutableDictionary) init];
  }

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v25[1] = a2;

  [v11 __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v25[0] = 0;
  v16 = [v11 writeToURL:v14 error:v25];

  if (v16)
  {
    v17 = v25[0];
  }

  else
  {
    v18 = v25[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000270B4(v19, qword_1004B00F8);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25[0] = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_1000026C0(a1, a2, v25);
      *(v22 + 12) = 1024;
      *(v22 + 14) = a3 & 1;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to write update key %{public}s to val %{BOOL}d", v22, 0x12u);
      sub_100003C3C(v23);
    }
  }

  return v16;
}

Swift::Bool __swiftcall RealSystemLog.set(privacyLevel:)(DarwinInit::Config::Log::PrivacyLevel privacyLevel)
{
  v2 = 0x63696C627550;
  sub_1000039E8(&qword_1004B0D38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  v4 = 0xE600000000000000;
  v24[0] = 0x6D6574737953;
  v24[1] = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  sub_1000039E8(&qword_1004B05E0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_100376A40;
  *(v5 + 32) = 0xD000000000000011;
  v6 = v5 + 32;
  *(v5 + 40) = 0x8000000100445620;
  if (privacyLevel)
  {
    if (privacyLevel == DarwinInit_Config_Log_PrivacyLevel_private)
    {
      v4 = 0xE700000000000000;
      v7 = 0x65746176697250;
    }

    else
    {
      v7 = 0x76697469736E6553;
      v4 = 0xE900000000000065;
    }
  }

  else
  {
    v7 = 0x63696C627550;
  }

  *(v5 + 48) = v7;
  *(v5 + 56) = v4;
  v8 = sub_1001862DC(v5);
  swift_setDeallocating();
  sub_100013F2C(v6, &qword_1004B05E8);
  *(inited + 96) = sub_1000039E8(&qword_1004A8AA8);
  *(inited + 72) = v8;
  sub_100187C00(inited);
  swift_setDeallocating();
  sub_100013F2C(inited + 32, &qword_1004AA740);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = OSLogInstallProfilePayload();

  if (v10)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000270B4(v11, qword_1004B00F8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136315138;
      if (privacyLevel)
      {
        if (privacyLevel == DarwinInit_Config_Log_PrivacyLevel_private)
        {
          v2 = 0x65746176697250;
        }

        else
        {
          v2 = 0x76697469736E6553;
        }

        if (privacyLevel == DarwinInit_Config_Log_PrivacyLevel_private)
        {
          v16 = 0xE700000000000000;
        }

        else
        {
          v16 = 0xE900000000000065;
        }
      }

      else
      {
        v16 = 0xE600000000000000;
      }

      v21 = sub_1000026C0(v2, v16, v24);

      *(v14 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "Set system logging level to %s", v14, 0xCu);
      sub_100003C3C(v15);
LABEL_31:
    }
  }

  else
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000270B4(v17, qword_1004B00F8);
    v12 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v18))
    {
      v19 = swift_slowAlloc();
      v24[0] = swift_slowAlloc();
      *v19 = 136315394;
      if (privacyLevel)
      {
        if (privacyLevel == DarwinInit_Config_Log_PrivacyLevel_private)
        {
          v2 = 0x65746176697250;
        }

        else
        {
          v2 = 0x76697469736E6553;
        }

        if (privacyLevel == DarwinInit_Config_Log_PrivacyLevel_private)
        {
          v20 = 0xE700000000000000;
        }

        else
        {
          v20 = 0xE900000000000065;
        }
      }

      else
      {
        v20 = 0xE600000000000000;
      }

      v22 = sub_1000026C0(v2, v20, v24);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1000026C0(0x6E776F6E6B6E55, 0xE700000000000000, v24);
      _os_log_impl(&_mh_execute_header, v12, v18, "Failed to set system logging level to %s due to: %s", v19, 0x16u);
      swift_arrayDestroy();
      goto LABEL_31;
    }
  }

  return v10;
}

Swift::Bool __swiftcall RealSystemLog.set(enabled:)(Swift::Bool enabled)
{
  mach_service = xpc_connection_create_mach_service("com.apple.logd.admin", 0, 2uLL);
  aBlock[4] = sub_100325080;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100325168;
  aBlock[3] = &unk_100494C80;
  v3 = _Block_copy(aBlock);
  xpc_connection_set_event_handler(mach_service, v3);
  _Block_release(v3);
  xpc_connection_activate(mach_service);
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = String.utf8CString.getter();
  if (enabled)
  {
    v6 = 8;
  }

  else
  {
    v6 = 7;
  }

  if (enabled)
  {
    v7 = 0x656C62616E65;
  }

  else
  {
    v7 = 0x656C6261736964;
  }

  if (enabled)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (enabled)
  {
    v9 = 0x6B636F6C626E75;
  }

  else
  {
    v9 = 0x6B636F6C62;
  }

  if (enabled)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  xpc_dictionary_set_uint64(v4, (v5 + 32), v6);

  if ((sub_100323F74(0x6E53656C62616E65, 0xEE00746F68737061, enabled) & 1) == 0)
  {

    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000270B4(v21, qword_1004B00F8);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      v26 = sub_1000026C0(v7, v8, aBlock);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to %s snapshots", v24, 0xCu);
      sub_100003C3C(v25);
    }

    else
    {
    }

    swift_unknownObjectRelease();
    goto LABEL_47;
  }

  v11 = xpc_connection_send_message_with_reply_sync(mach_service, v4);
  type = xpc_get_type(v11);
  if (type == XPC_TYPE_ERROR.getter())
  {

    if (!xpc_dictionary_get_string(v11, _xpc_error_key_description))
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_1000270B4(v41, qword_1004B00F8);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        aBlock[0] = v18;
        *v17 = 136315138;
        v42 = sub_1000026C0(v9, v10, aBlock);

        *(v17 + 4) = v42;
        v20 = "Failed to %s writes: unknown error.";
        goto LABEL_43;
      }

LABEL_45:

      goto LABEL_46;
    }

    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000270B4(v27, qword_1004B00F8);

    v15 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v15, v28))
    {
      goto LABEL_45;
    }

    v29 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v29 = 136315394;
    v30 = sub_1000026C0(v9, v10, aBlock);

    *(v29 + 4) = v30;
    *(v29 + 12) = 2080;
    v31 = String.init(cString:)();
    v33 = sub_1000026C0(v31, v32, aBlock);

    *(v29 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v15, v28, "Failed to %s writes: %s", v29, 0x16u);
    swift_arrayDestroy();
LABEL_44:

LABEL_46:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_47:
    swift_unknownObjectRelease();
    return 0;
  }

  v13 = xpc_get_type(v11);
  if (v13 != XPC_TYPE_DICTIONARY.getter())
  {

    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000270B4(v14, qword_1004B00F8);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      v19 = sub_1000026C0(v9, v10, aBlock);

      *(v17 + 4) = v19;
      v20 = "Failed to %s writes: Got unexpected response from logd";
LABEL_43:
      _os_log_impl(&_mh_execute_header, v15, v16, v20, v17, 0xCu);
      sub_100003C3C(v18);
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  v34 = String.utf8CString.getter();
  int64 = xpc_dictionary_get_int64(v11, (v34 + 32));

  if (int64)
  {

    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000270B4(v36, qword_1004B00F8);

    v15 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v15, v37))
    {
      goto LABEL_45;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315394;
    v40 = sub_1000026C0(v9, v10, aBlock);

    *(v38 + 4) = v40;
    *(v38 + 12) = 2048;
    *(v38 + 14) = int64;
    _os_log_impl(&_mh_execute_header, v15, v37, "Failed to %s writes: Got status of %lld from logd", v38, 0x16u);
    sub_100003C3C(v39);
    goto LABEL_44;
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_1000270B4(v44, qword_1004B00F8);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v47 = 136315394;
    v48 = sub_1000026C0(v9, v10, aBlock);

    *(v47 + 4) = v48;
    *(v47 + 12) = 2080;
    v49 = sub_1000026C0(v7, v8, aBlock);

    *(v47 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v45, v46, "Successfully %sed writes and %sd snapshots.", v47, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return 1;
}

void sub_100325080()
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000270B4(v0, qword_1004B00F8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Received message from logd", v2, 2u);
  }
}

uint64_t sub_100325168(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100325258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void __swiftcall DownloadConfiguration.init(downloadRetries:networkServiceType:alternateCDNHost:maxActiveTasks:chunkSize:)(DarwinInit::DownloadConfiguration *__return_ptr retstr, Swift::UInt downloadRetries, DarwinInit::DownloadConfiguration::NetworkServiceType networkServiceType, Swift::String_optional alternateCDNHost, Swift::Int maxActiveTasks, Swift::UInt64_optional chunkSize)
{
  retstr->downloadRetries = downloadRetries;
  retstr->networkServiceType = networkServiceType & 1;
  retstr->alternateCDNHost = alternateCDNHost;
  retstr->maxActiveTasks = maxActiveTasks;
  retstr->chunkSize.value = chunkSize.value;
  retstr->chunkSize.is_nil = chunkSize.is_nil;
}

DarwinInit::DownloadConfiguration::NetworkServiceType_optional __swiftcall DownloadConfiguration.NetworkServiceType.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue == 1)
  {
    v1.value = DarwinInit_DownloadConfiguration_NetworkServiceType_background;
  }

  else
  {
    v1.value = DarwinInit_DownloadConfiguration_NetworkServiceType_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_100325370@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1003253A8()
{
  result = qword_1004B0DE8;
  if (!qword_1004B0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0DE8);
  }

  return result;
}

__n128 sub_1003253FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100325418(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_100325474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

char *sub_1003254F8(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _swiftEmptyArrayStorage;
  for (i = a3 + 32; ; i += 136)
  {
    v8 = *(i + 80);
    v9 = *(i + 112);
    v72 = *(i + 96);
    v73 = v9;
    v10 = *(i + 16);
    v11 = *(i + 48);
    v68 = *(i + 32);
    v69 = v11;
    v12 = *(i + 48);
    v13 = *(i + 80);
    v70 = *(i + 64);
    v71 = v13;
    v14 = *(i + 16);
    v67[0] = *i;
    v67[1] = v14;
    v15 = *(i + 112);
    v64 = v72;
    v65 = v15;
    v60 = v68;
    v61 = v12;
    v62 = v70;
    v63 = v8;
    v74 = *(i + 128);
    v66 = *(i + 128);
    v58 = v67[0];
    v59 = v10;
    sub_1001EC8B4(v67, &v40);
    a1(&v49, &v58);
    if (v3)
    {
      break;
    }

    v38[6] = v64;
    v38[7] = v65;
    v39 = v66;
    v38[2] = v60;
    v38[3] = v61;
    v38[4] = v62;
    v38[5] = v63;
    v38[0] = v58;
    v38[1] = v59;
    sub_1001EC8EC(v38);
    v46 = v55;
    v47 = v56;
    v48 = v57;
    v42 = v51;
    v43 = v52;
    v44 = v53;
    v45 = v54;
    v40 = v49;
    v41 = v50;
    if (sub_1001D84A0(&v40) == 1)
    {
      v35 = v55;
      v36 = v56;
      v37 = v57;
      v31 = v51;
      v32 = v52;
      v33 = v53;
      v34 = v54;
      v29 = v49;
      v30 = v50;
      sub_100013F2C(&v29, &qword_1004B0E20);
    }

    else
    {
      v35 = v55;
      v36 = v56;
      v37 = v57;
      v31 = v51;
      v32 = v52;
      v33 = v53;
      v34 = v54;
      v29 = v49;
      v30 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_10018D258(0, *(v6 + 2) + 1, 1, v6);
      }

      v17 = *(v6 + 2);
      v16 = *(v6 + 3);
      if (v17 >= v16 >> 1)
      {
        v6 = sub_10018D258((v16 > 1), v17 + 1, 1, v6);
      }

      v22 = v31;
      v23 = v32;
      v28 = v37;
      v26 = v35;
      v27 = v36;
      v24 = v33;
      v25 = v34;
      v20 = v29;
      v21 = v30;
      *(v6 + 2) = v17 + 1;
      v18 = &v6[136 * v17];
      *(v18 + 2) = v20;
      *(v18 + 5) = v23;
      *(v18 + 6) = v24;
      *(v18 + 3) = v21;
      *(v18 + 4) = v22;
      *(v18 + 20) = v28;
      *(v18 + 8) = v26;
      *(v18 + 9) = v27;
      *(v18 + 7) = v25;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  v46 = v64;
  v47 = v65;
  v48 = v66;
  v42 = v60;
  v43 = v61;
  v44 = v62;
  v45 = v63;
  v40 = v58;
  v41 = v59;
  sub_1001EC8EC(&v40);

  return v6;
}

char *sub_1003257CC(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; i += 6)
  {
    v8 = i[3];
    v9 = i[1];
    v49 = i[2];
    v50 = v8;
    v10 = i[3];
    v11 = i[5];
    v51 = i[4];
    v52 = v11;
    v12 = i[1];
    v48[0] = *i;
    v48[1] = v12;
    v44 = v49;
    v45 = v10;
    v13 = i[5];
    v46 = v51;
    v47 = v13;
    v42 = v48[0];
    v43 = v9;
    sub_1002193A0(v48, &v30);
    a1(&v36, &v42);
    if (v3)
    {
      break;
    }

    v32 = v44;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v30 = v42;
    v31 = v43;
    sub_10021934C(&v30);
    if (v36)
    {
      v26 = v38;
      v27 = v39;
      v28 = v40;
      v29 = v41;
      v24 = v36;
      v25 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_10018D138(0, *(v6 + 2) + 1, 1, v6);
      }

      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        v6 = sub_10018D138((v14 > 1), v15 + 1, 1, v6);
      }

      v20 = v26;
      v21 = v27;
      v22 = v28;
      v23 = v29;
      v16 = v24;
      v19 = v25;
      *(v6 + 2) = v15 + 1;
      v17 = &v6[96 * v15];
      *(v17 + 3) = v19;
      *(v17 + 6) = v22;
      *(v17 + 7) = v23;
      *(v17 + 4) = v20;
      *(v17 + 5) = v21;
      *(v17 + 2) = v16;
    }

    else
    {
      v26 = v38;
      v27 = v39;
      v28 = v40;
      v29 = v41;
      v24 = v36;
      v25 = v37;
      sub_100013F2C(&v24, &qword_1004B0E38);
    }

    if (!--v4)
    {
      return v6;
    }
  }

  v32 = v44;
  v33 = v45;
  v34 = v46;
  v35 = v47;
  v30 = v42;
  v31 = v43;
  sub_10021934C(&v30);

  return v6;
}

char *sub_1003259E8(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = a1;
  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  v62 = a1;
  while (1)
  {
    v8 = v6[5];
    v9 = v6[3];
    v59 = v6[4];
    v60 = v8;
    v10 = v6[5];
    v61[0] = v6[6];
    *(v61 + 9) = *(v6 + 105);
    v11 = v6[1];
    v56[0] = *v6;
    v56[1] = v11;
    v12 = v6[3];
    v14 = *v6;
    v13 = v6[1];
    v57 = v6[2];
    v58 = v12;
    v53 = v59;
    v54 = v10;
    v55[0] = v6[6];
    *(v55 + 9) = *(v6 + 105);
    v49 = v14;
    v50 = v13;
    v51 = v57;
    v52 = v9;
    sub_1001D8878(v56, &v35);
    v5(&v42, &v49);
    if (v3)
    {
      break;
    }

    v33[4] = v53;
    v33[5] = v54;
    v34[0] = v55[0];
    *(v34 + 9) = *(v55 + 9);
    v33[0] = v49;
    v33[1] = v50;
    v33[2] = v51;
    v33[3] = v52;
    sub_1001D88D4(v33);
    v39 = v46;
    v40 = v47;
    v41[0] = v48[0];
    *(v41 + 9) = *(v48 + 9);
    v35 = v42;
    v36 = v43;
    v37 = v44;
    v38 = v45;
    if (sub_100218DC8(&v35) == 1)
    {
      v30 = v46;
      v31 = v47;
      v32[0] = v48[0];
      *(v32 + 9) = *(v48 + 9);
      v26 = v42;
      v27 = v43;
      v28 = v44;
      v29 = v45;
      sub_100013F2C(&v26, &qword_1004AD1B0);
    }

    else
    {
      v30 = v46;
      v31 = v47;
      v32[0] = v48[0];
      *(v32 + 9) = *(v48 + 9);
      v26 = v42;
      v27 = v43;
      v28 = v44;
      v29 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10018CDE0(0, *(v7 + 2) + 1, 1, v7);
      }

      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        v7 = sub_10018CDE0((v15 > 1), v16 + 1, 1, v7);
      }

      v23 = v30;
      v24 = v31;
      *v25 = v32[0];
      *&v25[9] = *(v32 + 9);
      v21 = v28;
      v22 = v29;
      v17 = v26;
      v20 = v27;
      *(v7 + 2) = v16 + 1;
      v18 = &v7[128 * v16];
      *(v18 + 4) = v21;
      *(v18 + 5) = v22;
      *(v18 + 3) = v20;
      *(v18 + 137) = *&v25[9];
      *(v18 + 7) = v24;
      *(v18 + 8) = *v25;
      *(v18 + 6) = v23;
      *(v18 + 2) = v17;
      v5 = v62;
    }

    v6 += 8;
    if (!--v4)
    {
      return v7;
    }
  }

  v39 = v53;
  v40 = v54;
  v41[0] = v55[0];
  *(v41 + 9) = *(v55 + 9);
  v35 = v49;
  v36 = v50;
  v37 = v51;
  v38 = v52;
  sub_1001D88D4(&v35);

  return v7;
}

uint64_t sub_100325CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1000039E8(&qword_1004AD1A8);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for Config.Package(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100325DD0, 0, 0);
}

uint64_t sub_100325DD0()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  *(v0 + 80) = v2;
  if (v2)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 16);
    v5 = *(v3 + 80);
    *(v0 + 128) = v5;
    v6 = (v5 + 32) & ~v5;
    v7 = *(v3 + 72);
    *(v0 + 104) = 0;
    *(v0 + 88) = v7;
    *(v0 + 96) = _swiftEmptyArrayStorage;
    v12 = (v4 + *v4);
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_100325F68;
    v9 = *(v0 + 40);

    return v12(v9, v1 + v6);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100325F68()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_100326368;
  }

  else
  {
    v2 = sub_100326084;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100326084()
{
  v1 = *(v0 + 40);
  if ((*(*(v0 + 56) + 48))(v1, 1, *(v0 + 48)) == 1)
  {
    sub_100013F2C(v1, &qword_1004AD1A8);
    v2 = *(v0 + 96);
  }

  else
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    sub_100340D94(v1, v3, type metadata accessor for Config.Package);
    sub_100340DFC(v3, v4, type metadata accessor for Config.Package);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 96);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_10018CDB8(0, v2[2] + 1, 1, *(v0 + 96));
    }

    v7 = v2[2];
    v6 = v2[3];
    if (v7 >= v6 >> 1)
    {
      v2 = sub_10018CDB8(v6 > 1, v7 + 1, 1, v2);
    }

    v8 = *(v0 + 88);
    v9 = *(v0 + 64);
    v10 = (*(v0 + 128) + 32) & ~*(v0 + 128);
    sub_100340E64(*(v0 + 72), type metadata accessor for Config.Package);
    v2[2] = v7 + 1;
    sub_100340D94(v9, v2 + v10 + v8 * v7, type metadata accessor for Config.Package);
  }

  v11 = *(v0 + 104) + 1;
  if (v11 == *(v0 + 80))
  {

    v12 = *(v0 + 8);

    return v12(v2);
  }

  else
  {
    *(v0 + 96) = v2;
    *(v0 + 104) = v11;
    v14 = *(v0 + 32) + ((*(v0 + 128) + 32) & ~*(v0 + 128)) + *(v0 + 88) * v11;
    v17 = (*(v0 + 16) + **(v0 + 16));
    v15 = swift_task_alloc();
    *(v0 + 112) = v15;
    *v15 = v0;
    v15[1] = sub_100325F68;
    v16 = *(v0 + 40);

    return v17(v16, v14);
  }
}

uint64_t sub_100326368()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003263E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v102 = _swiftEmptyArrayStorage;
  sub_1003111F0(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v51 = v3 + 64;
  result = _HashTable.startBucket.getter();
  if (result < 0 || (v5 = result, result >= 1 << *(v3 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v106 = *(v3 + 36);
    v48 = v3 + 72;
    v49 = v1;
    v6 = 1;
    v50 = v3;
    while (1)
    {
      v7 = v5 >> 6;
      if ((*(v51 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        break;
      }

      if (v106 != *(v3 + 36))
      {
        goto LABEL_26;
      }

      v8 = *(v3 + 56);
      v9 = (*(v3 + 48) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];
      v12 = (v8 + 240 * v5);
      v14 = v12[1];
      v13 = v12[2];
      v68[0] = *v12;
      v68[1] = v14;
      v68[2] = v13;
      v15 = v12[6];
      v17 = v12[3];
      v16 = v12[4];
      v68[5] = v12[5];
      v68[6] = v15;
      v68[3] = v17;
      v68[4] = v16;
      v18 = v12[10];
      v20 = v12[7];
      v19 = v12[8];
      v68[9] = v12[9];
      v68[10] = v18;
      v68[7] = v20;
      v68[8] = v19;
      v21 = v12[14];
      v23 = v12[11];
      v22 = v12[12];
      v68[13] = v12[13];
      v68[14] = v21;
      v68[11] = v23;
      v68[12] = v22;
      v24 = v12[13];
      v65 = v12[12];
      v66 = v24;
      v67 = v12[14];
      v25 = v12[9];
      v61 = v12[8];
      v62 = v25;
      v26 = v12[11];
      v63 = v12[10];
      v64 = v26;
      v27 = v12[5];
      v57 = v12[4];
      v58 = v27;
      v28 = v12[7];
      v59 = v12[6];
      v60 = v28;
      v29 = v12[1];
      v53 = *v12;
      v54 = v29;
      v30 = v12[3];
      v55 = v12[2];
      v56 = v30;
      memmove(&__dst, v12, 0xF0uLL);
      v84[0] = v10;
      v84[1] = v11;
      v97 = v65;
      v98 = v66;
      v99 = v67;
      v93 = v61;
      v94 = v62;
      v95 = v63;
      v96 = v64;
      v89 = v57;
      v90 = v58;
      v91 = v59;
      v92 = v60;
      v85 = v53;
      v86 = v54;
      v87 = v55;
      v88 = v56;
      swift_bridgeObjectRetain_n();
      sub_100189980(v68, v52);
      sub_100189980(&__dst, v52);
      sub_100013F2C(v84, &qword_1004B0E28);
      v101[12] = v81;
      v101[13] = v82;
      v101[14] = v83;
      v101[8] = v77;
      v101[9] = v78;
      v101[10] = v79;
      v101[11] = v80;
      v101[4] = v73;
      v101[5] = v74;
      v101[6] = v75;
      v101[7] = v76;
      v101[0] = __dst;
      v101[1] = v70;
      v101[2] = v71;
      v101[3] = v72;
      v105[12] = v81;
      v105[13] = v82;
      v105[14] = v83;
      v105[8] = v77;
      v105[9] = v78;
      v105[11] = v80;
      v105[10] = v79;
      v105[4] = v73;
      v105[5] = v74;
      v105[7] = v76;
      v105[6] = v75;
      v105[0] = __dst;
      v105[1] = v70;
      v100[0] = v10;
      v100[1] = v11;
      v105[3] = v72;
      v105[2] = v71;
      sub_100189980(v101, v52);

      sub_10033E3F8(v105, v10, v11, v103);
      result = sub_100013F2C(v100, &qword_1004B0E28);
      v102 = v2;
      v32 = v2[2];
      v31 = v2[3];
      if (v32 >= v31 >> 1)
      {
        result = sub_1003111F0((v31 > 1), v32 + 1, 1);
        v2 = v102;
      }

      v2[2] = v32 + 1;
      v33 = &v2[17 * v32];
      *(v33 + 2) = v103[0];
      v34 = v103[1];
      v35 = v103[2];
      v36 = v103[4];
      *(v33 + 5) = v103[3];
      *(v33 + 6) = v36;
      *(v33 + 3) = v34;
      *(v33 + 4) = v35;
      v37 = v103[5];
      v38 = v103[6];
      v39 = v103[7];
      v33[20] = v104;
      *(v33 + 8) = v38;
      *(v33 + 9) = v39;
      *(v33 + 7) = v37;
      v3 = v50;
      v40 = 1 << *(v50 + 32);
      if (v5 >= v40)
      {
        goto LABEL_27;
      }

      v41 = *(v51 + 8 * v7);
      if ((v41 & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      if (v106 != *(v50 + 36))
      {
        goto LABEL_29;
      }

      v42 = v41 & (-2 << (v5 & 0x3F));
      if (v42)
      {
        v5 = __clz(__rbit64(v42)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v43 = v7 << 6;
        v44 = v7 + 1;
        v45 = (v48 + 8 * v7);
        while (v44 < (v40 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            result = sub_100220ACC(v5, v106, 0);
            v5 = __clz(__rbit64(v46)) + v43;
            goto LABEL_19;
          }
        }

        result = sub_100220ACC(v5, v106, 0);
        v5 = v40;
      }

LABEL_19:
      if (v6 == v49)
      {
        return v2;
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        ++v6;
        if (v5 < 1 << *(v50 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t _s10DarwinInit6ConfigV5apply2on3env8reporterAcA8Computer_p_AA7GlobalsVAA13ErrorReporterCtYaAC08CriticalJ0OYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 5144) = a5;
  *(v6 + 5136) = v5;
  *(v6 + 5128) = a4;
  *(v6 + 5120) = a2;
  *(v6 + 5112) = a1;
  sub_1000039E8(&qword_1004A6D30);
  *(v6 + 5152) = swift_task_alloc();
  sub_1000039E8(&qword_1004AD1B8);
  *(v6 + 5160) = swift_task_alloc();
  *(v6 + 5168) = swift_task_alloc();
  *(v6 + 5176) = swift_task_alloc();
  v8 = type metadata accessor for Config.Diavlo(0);
  *(v6 + 5184) = v8;
  *(v6 + 5192) = *(v8 - 8);
  *(v6 + 5200) = swift_task_alloc();
  v9 = *(a3 + 208);
  *(v6 + 1000) = *(a3 + 192);
  *(v6 + 1016) = v9;
  *(v6 + 1032) = *(a3 + 224);
  *(v6 + 1048) = *(a3 + 240);
  v10 = *(a3 + 144);
  *(v6 + 936) = *(a3 + 128);
  *(v6 + 952) = v10;
  v11 = *(a3 + 176);
  *(v6 + 968) = *(a3 + 160);
  *(v6 + 984) = v11;
  v12 = *(a3 + 80);
  *(v6 + 872) = *(a3 + 64);
  *(v6 + 888) = v12;
  v13 = *(a3 + 112);
  *(v6 + 904) = *(a3 + 96);
  *(v6 + 920) = v13;
  v14 = *(a3 + 16);
  *(v6 + 808) = *a3;
  *(v6 + 824) = v14;
  v15 = *(a3 + 48);
  *(v6 + 840) = *(a3 + 32);
  *(v6 + 856) = v15;

  return _swift_task_switch(sub_100326A24, 0, 0);
}

uint64_t sub_100326A24()
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 5208) = sub_1000270B4(v1, qword_1004B00F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Applying darwin-init configuration...", v4, 2u);
  }

  v5 = *(v0 + 5136);
  v6 = *(v0 + 5112);

  Config.init()(v6);
  v7 = *(v5 + 8);
  v8 = *(v5 + 24);
  v9 = *(v5 + 56);
  *(v0 + 3184) = *(v5 + 40);
  *(v0 + 3200) = v9;
  *(v0 + 3152) = v7;
  *(v0 + 3168) = v8;
  v10 = *(v5 + 72);
  v11 = *(v5 + 88);
  v12 = *(v5 + 104);
  *(v0 + 3264) = *(v5 + 120);
  *(v0 + 3232) = v11;
  *(v0 + 3248) = v12;
  *(v0 + 3216) = v10;
  v13 = *(v6 + 88);
  v14 = *(v6 + 104);
  v15 = *(v6 + 72);
  *(v0 + 3144) = *(v6 + 120);
  *(v0 + 3112) = v13;
  *(v0 + 3128) = v14;
  *(v0 + 3096) = v15;
  v16 = *(v6 + 8);
  v17 = *(v6 + 24);
  v18 = *(v6 + 56);
  *(v0 + 3064) = *(v6 + 40);
  *(v0 + 3080) = v18;
  *(v0 + 3032) = v16;
  *(v0 + 3048) = v17;
  v19 = *(v5 + 88);
  v20 = *(v5 + 104);
  v21 = *(v5 + 120);
  *(v6 + 72) = *(v5 + 72);
  *(v6 + 120) = v21;
  *(v6 + 104) = v20;
  *(v6 + 88) = v19;
  v22 = *(v5 + 8);
  v23 = *(v5 + 24);
  v24 = *(v5 + 40);
  *(v6 + 56) = *(v5 + 56);
  *(v6 + 40) = v24;
  *(v6 + 24) = v23;
  *(v6 + 8) = v22;
  sub_100013E54(v0 + 3152, v0 + 3272, &qword_1004AD1E0);
  sub_100013F2C(v0 + 3032, &qword_1004AD1E0);
  v25 = *(v5 + 160);
  v26 = *(v5 + 168);
  v27 = *(v5 + 176);
  v28 = *(v5 + 184);
  v29 = *(v5 + 192);
  v30 = *(v6 + 160);
  v31 = *(v5 + 200);
  *(v6 + 160) = v25;
  *(v6 + 168) = v26;
  *(v6 + 176) = v27;
  *(v6 + 184) = v28;
  *(v6 + 192) = v29;
  *(v6 + 200) = v31;
  sub_1002592E0(v25);
  sub_1001FA5D8(v30);
  v32 = type metadata accessor for Config(0);
  *(v0 + 5216) = v32;
  v33 = v32[14];
  v34 = *(v5 + v33 + 8);
  v35 = *(v5 + v33 + 16);
  v36 = *(v5 + v33 + 24);
  v37 = *(v5 + v33 + 32);
  v38 = *(v5 + v33 + 40);
  v39 = *(v5 + v33 + 48);
  v40 = (v6 + v33);
  v41 = v40[1];
  v40[1] = v34;
  v40[2] = v35;
  v40[3] = v36;
  v40[4] = v37;
  v40[5] = v38;
  v40[6] = v39;
  sub_100259330(v34);
  sub_100219ADC(v41);
  v42 = v5 + v32[22];
  v43 = *(v42 + 8);
  *(v0 + 5224) = v43;
  *(v0 + 5232) = *(v42 + 16);
  if (v43)
  {
    sub_10033E780(*(v0 + 5120), *(v42 + 32), *(v42 + 48), (v0 + 5096), (v0 + 4864));
    sub_10001F8D8(v0 + 4864, *(v0 + 5112) + v32[22] + 8, &qword_1004AD1D8);
  }

  *(v0 + 5240) = 0;
  v45 = *(v0 + 5136);
  v46 = v45 + v32[13];
  if (*(v46 + 8))
  {
    v47 = *(v0 + 5112);
    v48 = sub_10033EB9C(*(v0 + 5120), *(v46 + 16), *(v46 + 32));
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = v47 + v32[13];
    sub_1002191A8(*(v55 + 8));
    *(v55 + 8) = v48;
    *(v55 + 16) = v50;
    *(v55 + 24) = v52;
    *(v55 + 32) = v54;
    v45 = *(v0 + 5136);
  }

  v350 = v32;
  v56 = *(v0 + 5120);
  v57 = v45 + v32[17];
  v58 = *(v57 + 40);
  v59 = *(v57 + 24);
  *(v0 + 5032) = *(v57 + 8);
  *(v0 + 5048) = v59;
  *(v0 + 5064) = v58;
  v61 = *(v57 + 8);
  v60 = *(v57 + 16);
  v62 = *(v57 + 24);
  v63 = *(v57 + 32);
  v64 = *(v57 + 40);
  v65 = v56[3];
  v66 = v56[4];
  sub_10000E2A8(v56, v65);
  if ((*(v66 + 8))(v65, v66))
  {
    v61 = 0;
    v67 = 0;
    v62 = 0;
    v68 = 0;
    v69 = 0;
    v70 = v350;
  }

  else
  {
    v71 = _s10DarwinInit6ConfigV9AnalyticsV11applySubmit6config2on8reporterSbSgAESg_AA8Computer_pAA13ErrorReporterCtFZ_0(v0 + 5032, *(v0 + 5120), *(v0 + 5128));
    if (*(v0 + 5032))
    {
      v72 = v71;
      v73 = *(v0 + 5064);
      if (v73 == 255)
      {
        v68 = 0;
        v69 = -1;
      }

      else
      {
        v68 = Either<>.apply(computer:)(*(v0 + 5120), *(v0 + 5056), v73 & 1);
        v69 = v74;
      }

      v70 = v350;
      v67 = v72;
      v61 = _swiftEmptyArrayStorage;
      v62 = _swiftEmptyArrayStorage;
    }

    else
    {
      v68 = v63;
      v69 = v64;
      v67 = v60;
      v70 = v350;
    }
  }

  v75 = *(v0 + 5136);
  v76 = *(v0 + 5120);
  v77 = *(v0 + 5112) + v70[17];
  sub_100218E88(*(v77 + 8), *(v77 + 16), *(v77 + 24), *(v77 + 32), *(v77 + 40));
  *(v77 + 8) = v61;
  *(v77 + 16) = v67;
  *(v77 + 24) = v62;
  *(v77 + 32) = v68;
  *(v77 + 40) = v69;
  sub_100003B20(v76, v0 + 4952);
  type metadata accessor for InterfaceFinder();
  v78 = swift_allocObject();
  type metadata accessor for FirewallInstaller();
  v79 = swift_allocObject();
  *(v0 + 5248) = v79;
  v79[2] = 0xD000000000000027;
  v79[3] = 0x800000010043E380;
  v79[10] = 0;
  v79[9] = v78;
  sub_100003C88((v0 + 4952), (v79 + 4));
  v80 = v70[16];
  *(v0 + 276) = v80;
  v81 = v75 + v80;
  v82 = *(v81 + 8);
  if (v82)
  {
    v83 = *(v0 + 5112);
    *(v0 + 4736) = v82;
    v84 = *(v81 + 16);
    v85 = *(v81 + 32);
    v86 = *(v81 + 48);
    *(v0 + 4792) = *(v81 + 64);
    *(v0 + 4760) = v85;
    *(v0 + 4776) = v86;
    *(v0 + 4744) = v84;
    Config.Network.setupFirewall(installer:reporter:)(v79, v0 + 4672);
    sub_10001F8D8(v0 + 4672, v83 + v70[16] + 8, &qword_1004ACE78);
  }

  swift_beginAccess();
  if (!v79[10])
  {
    v87 = String.utf8CString.getter();
    notify_post((v87 + 32));

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "Sent notification com.apple.darwininit.firewall.installed", v90, 2u);
    }
  }

  v91 = *(v0 + 5136);
  v92 = v91 + v70[23];
  v93 = *(v92 + 96);
  if (v93 != 255)
  {
    v94 = *(v0 + 5112);
    v95 = *(v92 + 24);
    *(v0 + 4400) = *(v92 + 8);
    *(v0 + 4416) = v95;
    v96 = *(v92 + 40);
    v97 = *(v92 + 56);
    v98 = *(v92 + 72);
    *(v0 + 4480) = *(v92 + 88);
    *(v0 + 4448) = v97;
    *(v0 + 4464) = v98;
    *(v0 + 4432) = v96;
    *(v0 + 4488) = v93;
    Config.apply(tailspin:)(v0 + 4400, v0 + 4304);
    sub_10001F8D8(v0 + 4304, v94 + v70[23] + 8, &qword_1004ACE40);
    v91 = *(v0 + 5136);
  }

  v99 = v91 + v70[12];
  v100 = *(v99 + 8);
  if (v100)
  {
    *(v0 + 4112) = v100;
    v101 = *(v99 + 32);
    *(v0 + 4120) = *(v99 + 16);
    *(v0 + 4136) = v101;
    v102 = *(v99 + 48);
    v103 = *(v99 + 64);
    v104 = *(v99 + 80);
    *(v0 + 4200) = *(v99 + 96);
    *(v0 + 4168) = v103;
    *(v0 + 4184) = v104;
    *(v0 + 4152) = v102;
    v105 = swift_task_alloc();
    *(v0 + 5256) = v105;
    *v105 = v0;
    v105[1] = sub_10032839C;
    v106 = *(v0 + 5120);

    return Config.Identification.apply(on:)(v0 + 4208, v106);
  }

  if (*(v91 + 136))
  {
    v107 = *(v91 + 144);
    if (v107 == 2 || (v107 & 1) == 0 || (sub_1003230F8() & 1) != 0)
    {
      v108 = _swiftEmptyArrayStorage;
    }

    else
    {
      v108 = 0;
      LOBYTE(v107) = 0;
    }

    v109 = *(v0 + 5112);

    *(v109 + 136) = v108;
    *(v109 + 144) = v107;
    v91 = *(v0 + 5136);
  }

  v110 = *(v91 + *(*(v0 + 5216) + 96) + 8);
  v349 = *(v0 + 5240);
  if (!v110)
  {
    goto LABEL_67;
  }

  v348 = *(v0 + 5216);
  v111 = *(v0 + 5128);
  sub_100003B20(*(v0 + 5120), v0 + 4992);
  v112 = sub_1003263E0(v110);
  v113 = swift_task_alloc();
  v113[2] = v0 + 4992;
  v113[3] = v110;
  v113[4] = v111;
  v114 = sub_1003254F8(sub_10033F744, v113, v112);

  v115 = sub_1001875D8(_swiftEmptyArrayStorage);
  v116 = *(v114 + 2);
  if (!v116)
  {
LABEL_66:
    v205 = *(v0 + 5112);

    v206 = v205 + *(v348 + 96);

    *(v206 + 8) = v115;
    sub_10033F764(v0 + 4992);
LABEL_67:
    v207 = *(v0 + 5120);
    v208 = v207[3];
    v209 = v207[4];
    sub_10000E2A8(v207, v208);
    (*(v209 + 312))(v208, v209);
    v210 = *(v0 + 4936);
    v211 = *(v0 + 4944);
    sub_10000E2A8((v0 + 4912), v210);
    if (qword_1004A9EB8 != -1)
    {
      swift_once();
    }

    v212 = type metadata accessor for FilePath();
    v213 = sub_1000270B4(v212, kDInitSSHConfig);
    FileSystem.touch(_:)(v213, v210, v211);
    if (v349)
    {
      sub_100003C3C(v0 + 4912);
      swift_errorRetain();
      v214 = Logger.logObject.getter();
      v215 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v214, v215))
      {
        v216 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        *v216 = 138412290;
        swift_errorRetain();
        v218 = _swift_stdlib_bridgeErrorToNSError();
        *(v216 + 4) = v218;
        *v217 = v218;
        _os_log_impl(&_mh_execute_header, v214, v215, "Failed to configure SSH password authentication: %@", v216, 0xCu);
        sub_100013F2C(v217, &qword_1004AA050);
      }

      else
      {
      }
    }

    else
    {
      v219 = *(v0 + 5216);
      v220 = *(v0 + 5136);
      sub_100003C3C(v0 + 4912);
      v221 = v220 + *(v219 + 84);
      if (*(v221 + 8))
      {
        v222 = sub_10033EF3C(*(v0 + 5120), *(v221 + 16), *(v221 + 32));
        v223 = *(v0 + 5112) + *(v219 + 84);
        v224 = v222;
        v226 = v225;
        v228 = v227;
        v230 = v229;
        sub_1002191A8(*(v223 + 8));
        *(v223 + 8) = v224;
        *(v223 + 16) = v226;
        *(v223 + 24) = v228;
        *(v223 + 32) = v230;
      }
    }

    *(v0 + 5264) = 0;
    if (*(v0 + 5224))
    {
      v231 = *(v0 + 5112) + *(*(v0 + 5216) + 88);
      v232 = *(v0 + 5232);
      v233 = swift_task_alloc();
      *(v0 + 5272) = v233;
      *v233 = v0;
      v233[1] = sub_10032966C;

      return sub_10033F230(v231 + 8, v232);
    }

    else
    {
      v234 = *(v0 + 5136);
      v235 = *(v234 + 488);
      if (v235)
      {
        v236 = *(v0 + 5120);
        v237 = *(v0 + 5112);
        v238 = swift_task_alloc();
        *(v238 + 16) = v236;
        v239 = sub_1003257CC(sub_10033AB48, v238, v235);

        *(v237 + 488) = v239;
        v234 = *(v0 + 5136);
      }

      *(v0 + 5280) = 0;
      v240 = *(v0 + 5216);
      v241 = *(v234 + *(v240 + 76) + 8);
      if (v241)
      {
        v242 = *(v0 + 5120);
        v243 = *(v0 + 5112);
        v244 = v242[3];
        v245 = v242[4];
        sub_10000E2A8(v242, v244);
        v246 = (*(v245 + 40))(v241, v244, v245);
        v247 = v243 + *(v240 + 76);

        *(v247 + 8) = v246;
      }

      if (!*(*(v0 + 5248) + 80))
      {
        v248 = *(v0 + 5120);
        v249 = v248[3];
        v250 = v248[4];
        sub_10000E2A8(v248, v249);
        if (((*(v250 + 136))(v249, v250) & 1) == 0)
        {
          v251 = *(v0 + 5136) + *(v0 + 276);
          v252 = *(v251 + 8);
          if (v252)
          {
            v253 = *(v0 + 5216);
            v254 = *(v0 + 5112);
            *(v0 + 4800) = v252;
            v255 = *(v251 + 16);
            v256 = *(v251 + 32);
            v257 = *(v251 + 48);
            *(v0 + 4856) = *(v251 + 64);
            *(v0 + 4824) = v256;
            *(v0 + 4840) = v257;
            *(v0 + 4808) = v255;
            Config.Network.setupInterfaces(result:)(v254 + *(v253 + 64) + 8);
          }
        }
      }

      v258 = *(v0 + 5216);
      v259 = *(v0 + 5136);
      v260._rawValue = *(v259 + v258[15] + 8);
      if (v260._rawValue)
      {
        v261 = *(v0 + 5112);
        v262 = Config.apply(narrative:)(v260);
        v263 = v261 + v258[15];

        *(v263 + 8) = v262;
        v258 = *(v0 + 5216);
        v259 = *(v0 + 5136);
      }

      v264 = *(v259 + v258[25] + 8);
      if (v264)
      {
        v265 = swift_task_alloc();
        *(v0 + 5288) = v265;
        *v265 = v0;
        v265[1] = sub_10032A0F8;

        return Config.apply(volumes:)(v264);
      }

      else
      {
        v266 = *(v0 + 5192);
        v267 = *(v0 + 5184);
        v268 = *(v0 + 5176);
        v269 = v258[9];
        *(v0 + 540) = v269;
        v270 = sub_1000039E8(&qword_1004ACDA0);
        *(v0 + 5304) = v270;
        v271 = *(v270 + 44);
        *(v0 + 804) = v271;
        sub_100013E54(v259 + v271 + v269, v268, &qword_1004AD1B8);
        v272 = *(v266 + 48);
        *(v0 + 5312) = v272;
        *(v0 + 5320) = (v266 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        if (v272(v268, 1, v267) == 1)
        {
          sub_100013F2C(*(v0 + 5176), &qword_1004AD1B8);
          memcpy((v0 + 280), (*(v0 + 5136) + 216), 0x101uLL);
          if (sub_100218DC8((v0 + 280)) == 1)
          {
            v273 = *(v0 + 5216);
            v274 = *(v0 + 5136);
            v275 = *(v274 + v273[10] + 8);
            if (v275)
            {
              v276 = *(v0 + 5120);
              v277 = *(v0 + 5112);
              v278 = swift_task_alloc();
              *(v278 + 16) = v276;
              *(v278 + 24) = v274;
              v279 = sub_1003259E8(sub_10033AA98, v278, v275);

              v280 = v277 + v273[10];

              *(v280 + 8) = v279;
              v273 = *(v0 + 5216);
              v274 = *(v0 + 5136);
            }

            v281 = *(v274 + v273[18] + 8);
            if (v281)
            {
              v282 = *(v0 + 5120);
              v283 = swift_task_alloc();
              *(v0 + 5344) = v283;
              *(v283 + 16) = v282;
              v284 = swift_task_alloc();
              *(v0 + 5352) = v284;
              *v284 = v0;
              v284[1] = sub_10032B4F8;

              return sub_100325CC8(&unk_100408D78, v283, v281);
            }

            else
            {
              v335 = v274 + v273[11];
              v336 = *(v335 + 8);
              if (v336)
              {
                v337 = *(v0 + 5120);
                v338 = *(v0 + 5112);
                *(v0 + 4584) = v336;
                v339 = *(v335 + 32);
                v340 = *(v335 + 48);
                v341 = *(v335 + 64);
                *(v0 + 4649) = *(v335 + 73);
                *(v0 + 4640) = v341;
                *(v0 + 4624) = v340;
                *(v0 + 4608) = v339;
                *(v0 + 4592) = *(v335 + 16);
                Config.Finish.apply(on:globals:)(v337, (v0 + 808), v0 + 4496);

                sub_10001F8D8(v0 + 4496, v338 + v273[11] + 8, &qword_1004AD1E8);
              }

              else
              {
LABEL_114:
              }

              v342 = *(v0 + 8);

              return v342();
            }
          }

          else
          {
            v301 = *(v0 + 5312);
            v302 = *(v0 + 804);
            v303 = *(v0 + 5184);
            v304 = *(v0 + 5160);
            v305 = *(v0 + 5136);
            v306 = v305 + *(v0 + 540);
            memcpy((v0 + 16), (v0 + 280), 0x101uLL);
            v307 = *(v305 + 8);
            v308 = *(v305 + 24);
            v309 = *(v305 + 56);
            *(v0 + 3784) = *(v305 + 40);
            *(v0 + 3800) = v309;
            *(v0 + 3752) = v307;
            *(v0 + 3768) = v308;
            v310 = *(v305 + 72);
            v311 = *(v305 + 88);
            v312 = *(v305 + 104);
            *(v0 + 3864) = *(v305 + 120);
            *(v0 + 3832) = v311;
            *(v0 + 3848) = v312;
            *(v0 + 3816) = v310;
            v313 = *(v305 + 8);
            v314 = *(v305 + 24);
            v315 = *(v305 + 56);
            *(v0 + 3904) = *(v305 + 40);
            *(v0 + 3920) = v315;
            *(v0 + 3872) = v313;
            *(v0 + 3888) = v314;
            v316 = *(v305 + 88);
            v317 = *(v305 + 104);
            v318 = *(v305 + 72);
            *(v0 + 3984) = *(v305 + 120);
            *(v0 + 3952) = v316;
            *(v0 + 3968) = v317;
            *(v0 + 3936) = v318;
            sub_100013E54(v306 + v302, v304, &qword_1004AD1B8);
            v319 = v301(v304, 1, v303);
            v320 = *(v0 + 5160);
            v321 = *(v0 + 5152);
            if (v319 == 1)
            {
              sub_100013E54(v0 + 3752, v0 + 3992, &qword_1004AD1E0);
              sub_100013F2C(v320, &qword_1004AD1B8);
              v322 = type metadata accessor for URL();
              (*(*(v322 - 8) + 56))(v321, 1, 1, v322);
            }

            else
            {
              v323 = sub_1000039E8(&qword_1004ACD10);
              sub_100013E54(v320 + *(v323 + 44), v321, &qword_1004A6D30);
              sub_100013E54(v0 + 3752, v0 + 3632, &qword_1004AD1E0);
              sub_100340E64(v320, type metadata accessor for Config.Diavlo);
            }

            v324 = *(v0 + 1016);
            *(v0 + 1248) = *(v0 + 1000);
            *(v0 + 1264) = v324;
            *(v0 + 1280) = *(v0 + 1032);
            v325 = *(v0 + 952);
            *(v0 + 1184) = *(v0 + 936);
            *(v0 + 1200) = v325;
            v326 = *(v0 + 984);
            *(v0 + 1216) = *(v0 + 968);
            *(v0 + 1232) = v326;
            v327 = *(v0 + 888);
            *(v0 + 1120) = *(v0 + 872);
            *(v0 + 1136) = v327;
            v328 = *(v0 + 920);
            *(v0 + 1152) = *(v0 + 904);
            *(v0 + 1168) = v328;
            v329 = *(v0 + 824);
            *(v0 + 1056) = *(v0 + 808);
            *(v0 + 1072) = v329;
            v330 = *(v0 + 856);
            *(v0 + 1088) = *(v0 + 840);
            *(v0 + 1296) = *(v0 + 1048);
            *(v0 + 1104) = v330;
            v332 = swift_task_alloc();
            *(v0 + 5336) = v332;
            *v332 = v0;
            v332[1] = sub_10032B0B4;
            v333 = *(v0 + 5152);
            v334 = *(v0 + 5128);

            return Config.Cryptex.apply(on:auth:diavloURL:env:reporter:)(v0 + 544, v331, v0 + 3872, v333, v0 + 1056, v334);
          }
        }

        else
        {
          v285 = *(v0 + 5136);
          sub_100340D94(*(v0 + 5176), *(v0 + 5200), type metadata accessor for Config.Diavlo);
          v286 = *(v285 + 8);
          v287 = *(v285 + 24);
          v288 = *(v285 + 40);
          *(v0 + 3440) = *(v285 + 56);
          *(v0 + 3424) = v288;
          *(v0 + 3408) = v287;
          *(v0 + 3392) = v286;
          v289 = *(v285 + 72);
          v290 = *(v285 + 88);
          v291 = *(v285 + 104);
          *(v0 + 3504) = *(v285 + 120);
          *(v0 + 3488) = v291;
          *(v0 + 3472) = v290;
          *(v0 + 3456) = v289;
          v292 = *(v285 + 8);
          v293 = *(v285 + 24);
          v294 = *(v285 + 40);
          *(v0 + 2960) = *(v285 + 56);
          *(v0 + 2944) = v294;
          *(v0 + 2928) = v293;
          *(v0 + 2912) = v292;
          v295 = *(v285 + 88);
          v296 = *(v285 + 104);
          v297 = *(v285 + 120);
          *(v0 + 2976) = *(v285 + 72);
          *(v0 + 3024) = v297;
          *(v0 + 3008) = v296;
          *(v0 + 2992) = v295;
          sub_100013E54(v0 + 3392, v0 + 2792, &qword_1004AD1E0);
          v299 = swift_task_alloc();
          *(v0 + 5328) = v299;
          *v299 = v0;
          v299[1] = sub_10032A980;
          v300 = *(v0 + 5168);

          return Config.Diavlo.apply(on:auth:)(v300, v298, v0 + 2912);
        }
      }
    }
  }

  v117 = 0;
  v346 = (v0 + 1784);
  v344 = (v0 + 1304);
  v345 = (v0 + 2024);
  v351 = *(v114 + 2);
  v118 = v116 - 1;
  v119 = v114 + 32;
  v347 = v118;
  while (2)
  {
    v120 = &v119[136 * v117];
    v121 = v117;
    while (1)
    {
      if (v121 >= *(v114 + 2))
      {
        __break(1u);
        goto LABEL_114;
      }

      *(v0 + 2536) = *v120;
      v122 = *(v120 + 1);
      v123 = *(v120 + 2);
      v124 = *(v120 + 4);
      *(v0 + 2584) = *(v120 + 3);
      *(v0 + 2600) = v124;
      *(v0 + 2552) = v122;
      *(v0 + 2568) = v123;
      v125 = *(v120 + 5);
      v126 = *(v120 + 6);
      v127 = *(v120 + 7);
      *(v0 + 2664) = *(v120 + 16);
      *(v0 + 2632) = v126;
      *(v0 + 2648) = v127;
      *(v0 + 2616) = v125;
      v128 = *(v0 + 2536);
      v129 = *(v0 + 2544);
      if (*(v110 + 16))
      {
        break;
      }

      sub_1001EC8B4(v0 + 2536, v0 + 2264);
LABEL_47:
      v132 = sub_100013364(v128, v129);
      if (v133)
      {
        v134 = v132;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1001849A0();
        }

        v135 = (v115[7] + 240 * v134);
        v136 = *v135;
        v137 = v135[2];
        *(v0 + 2040) = v135[1];
        *(v0 + 2056) = v137;
        *v345 = v136;
        v138 = v135[3];
        v139 = v135[4];
        v140 = v135[6];
        *(v0 + 2104) = v135[5];
        *(v0 + 2120) = v140;
        *(v0 + 2072) = v138;
        *(v0 + 2088) = v139;
        v141 = v135[7];
        v142 = v135[8];
        v143 = v135[10];
        *(v0 + 2168) = v135[9];
        *(v0 + 2184) = v143;
        *(v0 + 2136) = v141;
        *(v0 + 2152) = v142;
        v144 = v135[11];
        v145 = v135[12];
        v146 = v135[14];
        *(v0 + 2232) = v135[13];
        *(v0 + 2248) = v146;
        *(v0 + 2200) = v144;
        *(v0 + 2216) = v145;
        sub_1001D87FC(v345);
        sub_10033E184(v134, v115);
        goto LABEL_63;
      }

      ++v121;
      sub_1001EC8EC(v0 + 2536);
      v120 += 136;
      if (v351 == v121)
      {
        goto LABEL_66;
      }
    }

    sub_1001EC8B4(v0 + 2536, v0 + 2400);
    v130 = sub_100013364(v128, v129);
    if ((v131 & 1) == 0)
    {
      goto LABEL_47;
    }

    v147 = (*(v110 + 56) + 240 * v130);
    v148 = *v147;
    v149 = v147[2];
    *(v0 + 1800) = v147[1];
    *(v0 + 1816) = v149;
    *v346 = v148;
    v150 = v147[3];
    v151 = v147[4];
    v152 = v147[6];
    *(v0 + 1864) = v147[5];
    *(v0 + 1880) = v152;
    *(v0 + 1832) = v150;
    *(v0 + 1848) = v151;
    v153 = v147[7];
    v154 = v147[8];
    v155 = v147[10];
    *(v0 + 1928) = v147[9];
    *(v0 + 1944) = v155;
    *(v0 + 1896) = v153;
    *(v0 + 1912) = v154;
    v156 = v147[11];
    v157 = v147[12];
    v158 = v147[14];
    *(v0 + 1992) = v147[13];
    *(v0 + 2008) = v158;
    *(v0 + 1960) = v156;
    *(v0 + 1976) = v157;
    sub_100189980(v346, v0 + 1544);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v352 = v115;
    v159 = sub_100013364(v128, v129);
    v161 = v159;
    v162 = v115[2];
    v163 = (v160 & 1) == 0;
    result = v162 + v163;
    if (__OFADD__(v162, v163))
    {
      __break(1u);
      goto LABEL_120;
    }

    if (v115[3] >= result)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v164 = v160;
        result = sub_1001849A0();
LABEL_57:
        v160 = v164;
      }

      if (v160)
      {
        v115 = v352;
        v166 = (v352[7] + 240 * v161);
        v168 = v166[1];
        v167 = v166[2];
        *v344 = *v166;
        *(v0 + 1320) = v168;
        *(v0 + 1336) = v167;
        v169 = v166[6];
        v171 = v166[3];
        v170 = v166[4];
        *(v0 + 1384) = v166[5];
        *(v0 + 1400) = v169;
        *(v0 + 1352) = v171;
        *(v0 + 1368) = v170;
        v172 = v166[10];
        v174 = v166[7];
        v173 = v166[8];
        *(v0 + 1448) = v166[9];
        *(v0 + 1464) = v172;
        *(v0 + 1416) = v174;
        *(v0 + 1432) = v173;
        v175 = v166[14];
        v177 = v166[11];
        v176 = v166[12];
        *(v0 + 1512) = v166[13];
        *(v0 + 1528) = v175;
        *(v0 + 1480) = v177;
        *(v0 + 1496) = v176;
        v178 = *v346;
        v179 = *(v0 + 1816);
        v166[1] = *(v0 + 1800);
        v166[2] = v179;
        *v166 = v178;
        v180 = *(v0 + 1832);
        v181 = *(v0 + 1848);
        v182 = *(v0 + 1880);
        v166[5] = *(v0 + 1864);
        v166[6] = v182;
        v166[3] = v180;
        v166[4] = v181;
        v183 = *(v0 + 1896);
        v184 = *(v0 + 1912);
        v185 = *(v0 + 1944);
        v166[9] = *(v0 + 1928);
        v166[10] = v185;
        v166[7] = v183;
        v166[8] = v184;
        v186 = *(v0 + 1960);
        v187 = *(v0 + 1976);
        v188 = *(v0 + 2008);
        v166[13] = *(v0 + 1992);
        v166[14] = v188;
        v166[11] = v186;
        v166[12] = v187;
        sub_1001D87FC(v344);
        goto LABEL_63;
      }

      v115 = v352;
      v352[(v161 >> 6) + 8] |= 1 << v161;
      v189 = (v352[6] + 16 * v161);
      *v189 = v128;
      v189[1] = v129;
      v190 = (v352[7] + 240 * v161);
      v192 = *(v0 + 1992);
      v191 = *(v0 + 2008);
      v193 = *(v0 + 1976);
      v190[11] = *(v0 + 1960);
      v190[12] = v193;
      v190[13] = v192;
      v190[14] = v191;
      v195 = *(v0 + 1928);
      v194 = *(v0 + 1944);
      v196 = *(v0 + 1912);
      v190[7] = *(v0 + 1896);
      v190[8] = v196;
      v190[9] = v195;
      v190[10] = v194;
      v198 = *(v0 + 1864);
      v197 = *(v0 + 1880);
      v199 = *(v0 + 1848);
      v190[3] = *(v0 + 1832);
      v190[4] = v199;
      v190[5] = v198;
      v190[6] = v197;
      v201 = *(v0 + 1800);
      v200 = *(v0 + 1816);
      *v190 = *v346;
      v190[1] = v201;
      v190[2] = v200;
      v202 = v352[2];
      v203 = __OFADD__(v202, 1);
      v204 = v202 + 1;
      if (!v203)
      {
        v352[2] = v204;

LABEL_63:
        sub_1001EC8EC(v0 + 2536);
        v117 = v121 + 1;
        v119 = v114 + 32;
        if (v347 != v121)
        {
          continue;
        }

        goto LABEL_66;
      }

LABEL_120:
      __break(1u);
      return result;
    }

    break;
  }

  v164 = v160;
  sub_100182F54(result, isUniquelyReferenced_nonNull_native);
  result = sub_100013364(v128, v129);
  if ((v164 & 1) == (v165 & 1))
  {
    v161 = result;
    goto LABEL_57;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_10032839C()
{

  return _swift_task_switch(sub_100328498, 0, 0);
}

uint64_t sub_100328498()
{
  sub_10001F8D8(v0 + 4208, *(v0 + 5112) + *(*(v0 + 5216) + 48) + 8, &qword_1004AD1F0);
  v1 = *(v0 + 5136);
  if (*(v1 + 136))
  {
    v2 = *(v1 + 144);
    if (v2 == 2 || (v2 & 1) == 0 || (sub_1003230F8() & 1) != 0)
    {
      v3 = _swiftEmptyArrayStorage;
    }

    else
    {
      v3 = 0;
      LOBYTE(v2) = 0;
    }

    v4 = *(v0 + 5112);

    *(v4 + 136) = v3;
    *(v4 + 144) = v2;
    v1 = *(v0 + 5136);
  }

  v5 = *(v1 + *(*(v0 + 5216) + 96) + 8);
  v6 = *(v0 + 5240);
  if (!v5)
  {
LABEL_36:
    v104 = *(v0 + 5120);
    v105 = v104[3];
    v106 = v104[4];
    sub_10000E2A8(v104, v105);
    (*(v106 + 312))(v105, v106);
    v107 = *(v0 + 4936);
    v108 = *(v0 + 4944);
    sub_10000E2A8((v0 + 4912), v107);
    if (qword_1004A9EB8 != -1)
    {
      swift_once();
    }

    v109 = type metadata accessor for FilePath();
    v110 = sub_1000270B4(v109, kDInitSSHConfig);
    FileSystem.touch(_:)(v110, v107, v108);
    if (v6)
    {
      sub_100003C3C(v0 + 4912);
      swift_errorRetain();
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        *v113 = 138412290;
        swift_errorRetain();
        v115 = _swift_stdlib_bridgeErrorToNSError();
        *(v113 + 4) = v115;
        *v114 = v115;
        _os_log_impl(&_mh_execute_header, v111, v112, "Failed to configure SSH password authentication: %@", v113, 0xCu);
        sub_100013F2C(v114, &qword_1004AA050);
      }

      else
      {
      }
    }

    else
    {
      v116 = *(v0 + 5216);
      v117 = *(v0 + 5136);
      sub_100003C3C(v0 + 4912);
      v118 = v117 + *(v116 + 84);
      if (*(v118 + 8))
      {
        v119 = sub_10033EF3C(*(v0 + 5120), *(v118 + 16), *(v118 + 32));
        v120 = *(v0 + 5112) + *(v116 + 84);
        v121 = v119;
        v123 = v122;
        v125 = v124;
        v127 = v126;
        sub_1002191A8(*(v120 + 8));
        *(v120 + 8) = v121;
        *(v120 + 16) = v123;
        *(v120 + 24) = v125;
        *(v120 + 32) = v127;
      }
    }

    *(v0 + 5264) = 0;
    if (*(v0 + 5224))
    {
      v128 = *(v0 + 5112) + *(*(v0 + 5216) + 88);
      v129 = *(v0 + 5232);
      v130 = swift_task_alloc();
      *(v0 + 5272) = v130;
      *v130 = v0;
      v130[1] = sub_10032966C;

      return sub_10033F230(v128 + 8, v129);
    }

    else
    {
      v131 = *(v0 + 5136);
      v132 = *(v131 + 488);
      if (v132)
      {
        v133 = *(v0 + 5120);
        v134 = *(v0 + 5112);
        v135 = swift_task_alloc();
        *(v135 + 16) = v133;
        v136 = sub_1003257CC(sub_10033AB48, v135, v132);

        *(v134 + 488) = v136;
        v131 = *(v0 + 5136);
      }

      *(v0 + 5280) = 0;
      v137 = *(v0 + 5216);
      v138 = *(v131 + *(v137 + 76) + 8);
      if (v138)
      {
        v139 = *(v0 + 5120);
        v140 = *(v0 + 5112);
        v141 = v139[3];
        v142 = v139[4];
        sub_10000E2A8(v139, v141);
        v143 = (*(v142 + 40))(v138, v141, v142);
        v144 = v140 + *(v137 + 76);

        *(v144 + 8) = v143;
      }

      if (!*(*(v0 + 5248) + 80))
      {
        v145 = *(v0 + 5120);
        v146 = v145[3];
        v147 = v145[4];
        sub_10000E2A8(v145, v146);
        if (((*(v147 + 136))(v146, v147) & 1) == 0)
        {
          v148 = *(v0 + 5136) + *(v0 + 276);
          v149 = *(v148 + 8);
          if (v149)
          {
            v150 = *(v0 + 5216);
            v151 = *(v0 + 5112);
            *(v0 + 4800) = v149;
            v152 = *(v148 + 16);
            v153 = *(v148 + 32);
            v154 = *(v148 + 48);
            *(v0 + 4856) = *(v148 + 64);
            *(v0 + 4824) = v153;
            *(v0 + 4840) = v154;
            *(v0 + 4808) = v152;
            Config.Network.setupInterfaces(result:)(v151 + *(v150 + 64) + 8);
          }
        }
      }

      v155 = *(v0 + 5216);
      v156 = *(v0 + 5136);
      v157._rawValue = *(v156 + v155[15] + 8);
      if (v157._rawValue)
      {
        v158 = *(v0 + 5112);
        v159 = Config.apply(narrative:)(v157);
        v160 = v158 + v155[15];

        *(v160 + 8) = v159;
        v155 = *(v0 + 5216);
        v156 = *(v0 + 5136);
      }

      v161 = *(v156 + v155[25] + 8);
      if (v161)
      {
        v162 = swift_task_alloc();
        *(v0 + 5288) = v162;
        *v162 = v0;
        v162[1] = sub_10032A0F8;

        return Config.apply(volumes:)(v161);
      }

      else
      {
        v163 = *(v0 + 5192);
        v164 = *(v0 + 5184);
        v165 = *(v0 + 5176);
        v166 = v155[9];
        *(v0 + 540) = v166;
        v167 = sub_1000039E8(&qword_1004ACDA0);
        *(v0 + 5304) = v167;
        v168 = *(v167 + 44);
        *(v0 + 804) = v168;
        sub_100013E54(v156 + v168 + v166, v165, &qword_1004AD1B8);
        v169 = *(v163 + 48);
        *(v0 + 5312) = v169;
        *(v0 + 5320) = (v163 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        if (v169(v165, 1, v164) == 1)
        {
          sub_100013F2C(*(v0 + 5176), &qword_1004AD1B8);
          memcpy((v0 + 280), (*(v0 + 5136) + 216), 0x101uLL);
          if (sub_100218DC8((v0 + 280)) == 1)
          {
            v170 = *(v0 + 5216);
            v171 = *(v0 + 5136);
            v172 = *(v171 + v170[10] + 8);
            if (v172)
            {
              v173 = *(v0 + 5120);
              v174 = *(v0 + 5112);
              v175 = swift_task_alloc();
              *(v175 + 16) = v173;
              *(v175 + 24) = v171;
              v176 = sub_1003259E8(sub_10033AA98, v175, v172);

              v177 = v174 + v170[10];

              *(v177 + 8) = v176;
              v170 = *(v0 + 5216);
              v171 = *(v0 + 5136);
            }

            v178 = *(v171 + v170[18] + 8);
            if (v178)
            {
              v179 = *(v0 + 5120);
              v180 = swift_task_alloc();
              *(v0 + 5344) = v180;
              *(v180 + 16) = v179;
              v181 = swift_task_alloc();
              *(v0 + 5352) = v181;
              *v181 = v0;
              v181[1] = sub_10032B4F8;

              return sub_100325CC8(&unk_100408D78, v180, v178);
            }

            else
            {
              v232 = v171 + v170[11];
              v233 = *(v232 + 8);
              if (v233)
              {
                v234 = *(v0 + 5120);
                v235 = *(v0 + 5112);
                *(v0 + 4584) = v233;
                v236 = *(v232 + 32);
                v237 = *(v232 + 48);
                v238 = *(v232 + 64);
                *(v0 + 4649) = *(v232 + 73);
                *(v0 + 4640) = v238;
                *(v0 + 4624) = v237;
                *(v0 + 4608) = v236;
                *(v0 + 4592) = *(v232 + 16);
                Config.Finish.apply(on:globals:)(v234, (v0 + 808), v0 + 4496);

                sub_10001F8D8(v0 + 4496, v235 + v170[11] + 8, &qword_1004AD1E8);
              }

              else
              {
LABEL_83:
              }

              v239 = *(v0 + 8);

              return v239();
            }
          }

          else
          {
            v198 = *(v0 + 5312);
            v199 = *(v0 + 804);
            v200 = *(v0 + 5184);
            v201 = *(v0 + 5160);
            v202 = *(v0 + 5136);
            v203 = v202 + *(v0 + 540);
            memcpy((v0 + 16), (v0 + 280), 0x101uLL);
            v204 = *(v202 + 8);
            v205 = *(v202 + 24);
            v206 = *(v202 + 56);
            *(v0 + 3784) = *(v202 + 40);
            *(v0 + 3800) = v206;
            *(v0 + 3752) = v204;
            *(v0 + 3768) = v205;
            v207 = *(v202 + 72);
            v208 = *(v202 + 88);
            v209 = *(v202 + 104);
            *(v0 + 3864) = *(v202 + 120);
            *(v0 + 3832) = v208;
            *(v0 + 3848) = v209;
            *(v0 + 3816) = v207;
            v210 = *(v202 + 8);
            v211 = *(v202 + 24);
            v212 = *(v202 + 56);
            *(v0 + 3904) = *(v202 + 40);
            *(v0 + 3920) = v212;
            *(v0 + 3872) = v210;
            *(v0 + 3888) = v211;
            v213 = *(v202 + 88);
            v214 = *(v202 + 104);
            v215 = *(v202 + 72);
            *(v0 + 3984) = *(v202 + 120);
            *(v0 + 3952) = v213;
            *(v0 + 3968) = v214;
            *(v0 + 3936) = v215;
            sub_100013E54(v203 + v199, v201, &qword_1004AD1B8);
            v216 = v198(v201, 1, v200);
            v217 = *(v0 + 5160);
            v218 = *(v0 + 5152);
            if (v216 == 1)
            {
              sub_100013E54(v0 + 3752, v0 + 3992, &qword_1004AD1E0);
              sub_100013F2C(v217, &qword_1004AD1B8);
              v219 = type metadata accessor for URL();
              (*(*(v219 - 8) + 56))(v218, 1, 1, v219);
            }

            else
            {
              v220 = sub_1000039E8(&qword_1004ACD10);
              sub_100013E54(v217 + *(v220 + 44), v218, &qword_1004A6D30);
              sub_100013E54(v0 + 3752, v0 + 3632, &qword_1004AD1E0);
              sub_100340E64(v217, type metadata accessor for Config.Diavlo);
            }

            v221 = *(v0 + 1016);
            *(v0 + 1248) = *(v0 + 1000);
            *(v0 + 1264) = v221;
            *(v0 + 1280) = *(v0 + 1032);
            v222 = *(v0 + 952);
            *(v0 + 1184) = *(v0 + 936);
            *(v0 + 1200) = v222;
            v223 = *(v0 + 984);
            *(v0 + 1216) = *(v0 + 968);
            *(v0 + 1232) = v223;
            v224 = *(v0 + 888);
            *(v0 + 1120) = *(v0 + 872);
            *(v0 + 1136) = v224;
            v225 = *(v0 + 920);
            *(v0 + 1152) = *(v0 + 904);
            *(v0 + 1168) = v225;
            v226 = *(v0 + 824);
            *(v0 + 1056) = *(v0 + 808);
            *(v0 + 1072) = v226;
            v227 = *(v0 + 856);
            *(v0 + 1088) = *(v0 + 840);
            *(v0 + 1296) = *(v0 + 1048);
            *(v0 + 1104) = v227;
            v229 = swift_task_alloc();
            *(v0 + 5336) = v229;
            *v229 = v0;
            v229[1] = sub_10032B0B4;
            v230 = *(v0 + 5152);
            v231 = *(v0 + 5128);

            return Config.Cryptex.apply(on:auth:diavloURL:env:reporter:)(v0 + 544, v228, v0 + 3872, v230, v0 + 1056, v231);
          }
        }

        else
        {
          v182 = *(v0 + 5136);
          sub_100340D94(*(v0 + 5176), *(v0 + 5200), type metadata accessor for Config.Diavlo);
          v183 = *(v182 + 8);
          v184 = *(v182 + 24);
          v185 = *(v182 + 40);
          *(v0 + 3440) = *(v182 + 56);
          *(v0 + 3424) = v185;
          *(v0 + 3408) = v184;
          *(v0 + 3392) = v183;
          v186 = *(v182 + 72);
          v187 = *(v182 + 88);
          v188 = *(v182 + 104);
          *(v0 + 3504) = *(v182 + 120);
          *(v0 + 3488) = v188;
          *(v0 + 3472) = v187;
          *(v0 + 3456) = v186;
          v189 = *(v182 + 8);
          v190 = *(v182 + 24);
          v191 = *(v182 + 40);
          *(v0 + 2960) = *(v182 + 56);
          *(v0 + 2944) = v191;
          *(v0 + 2928) = v190;
          *(v0 + 2912) = v189;
          v192 = *(v182 + 88);
          v193 = *(v182 + 104);
          v194 = *(v182 + 120);
          *(v0 + 2976) = *(v182 + 72);
          *(v0 + 3024) = v194;
          *(v0 + 3008) = v193;
          *(v0 + 2992) = v192;
          sub_100013E54(v0 + 3392, v0 + 2792, &qword_1004AD1E0);
          v196 = swift_task_alloc();
          *(v0 + 5328) = v196;
          *v196 = v0;
          v196[1] = sub_10032A980;
          v197 = *(v0 + 5168);

          return Config.Diavlo.apply(on:auth:)(v197, v195, v0 + 2912);
        }
      }
    }
  }

  v245 = *(v0 + 5216);
  v7 = *(v0 + 5128);
  sub_100003B20(*(v0 + 5120), v0 + 4992);
  v8 = sub_1003263E0(v5);
  v9 = swift_task_alloc();
  v9[2] = v0 + 4992;
  v9[3] = v5;
  v9[4] = v7;
  v10 = sub_1003254F8(sub_10033F744, v9, v8);
  v246 = v6;

  v11 = sub_1001875D8(_swiftEmptyArrayStorage);
  v12 = *(v10 + 2);
  if (!v12)
  {
LABEL_35:
    v102 = *(v0 + 5112);

    v103 = v102 + *(v245 + 96);

    *(v103 + 8) = v11;
    sub_10033F764(v0 + 4992);
    v6 = v246;
    goto LABEL_36;
  }

  v13 = 0;
  v243 = (v0 + 1784);
  v241 = (v0 + 1304);
  v242 = (v0 + 2024);
  v247 = *(v10 + 2);
  v14 = v12 - 1;
  v15 = v10 + 32;
  v244 = v14;
  while (2)
  {
    v16 = &v15[136 * v13];
    v17 = v13;
    while (1)
    {
      if (v17 >= *(v10 + 2))
      {
        __break(1u);
        goto LABEL_83;
      }

      *(v0 + 2536) = *v16;
      v18 = *(v16 + 1);
      v19 = *(v16 + 2);
      v20 = *(v16 + 4);
      *(v0 + 2584) = *(v16 + 3);
      *(v0 + 2600) = v20;
      *(v0 + 2552) = v18;
      *(v0 + 2568) = v19;
      v21 = *(v16 + 5);
      v22 = *(v16 + 6);
      v23 = *(v16 + 7);
      *(v0 + 2664) = *(v16 + 16);
      *(v0 + 2632) = v22;
      *(v0 + 2648) = v23;
      *(v0 + 2616) = v21;
      v24 = *(v0 + 2536);
      v25 = *(v0 + 2544);
      if (*(v5 + 16))
      {
        break;
      }

      sub_1001EC8B4(v0 + 2536, v0 + 2264);
LABEL_16:
      v28 = sub_100013364(v24, v25);
      if (v29)
      {
        v30 = v28;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1001849A0();
        }

        v31 = (v11[7] + 240 * v30);
        v32 = *v31;
        v33 = v31[2];
        *(v0 + 2040) = v31[1];
        *(v0 + 2056) = v33;
        *v242 = v32;
        v34 = v31[3];
        v35 = v31[4];
        v36 = v31[6];
        *(v0 + 2104) = v31[5];
        *(v0 + 2120) = v36;
        *(v0 + 2072) = v34;
        *(v0 + 2088) = v35;
        v37 = v31[7];
        v38 = v31[8];
        v39 = v31[10];
        *(v0 + 2168) = v31[9];
        *(v0 + 2184) = v39;
        *(v0 + 2136) = v37;
        *(v0 + 2152) = v38;
        v40 = v31[11];
        v41 = v31[12];
        v42 = v31[14];
        *(v0 + 2232) = v31[13];
        *(v0 + 2248) = v42;
        *(v0 + 2200) = v40;
        *(v0 + 2216) = v41;
        sub_1001D87FC(v242);
        sub_10033E184(v30, v11);
        goto LABEL_32;
      }

      ++v17;
      sub_1001EC8EC(v0 + 2536);
      v16 += 136;
      if (v247 == v17)
      {
        goto LABEL_35;
      }
    }

    sub_1001EC8B4(v0 + 2536, v0 + 2400);
    v26 = sub_100013364(v24, v25);
    if ((v27 & 1) == 0)
    {
      goto LABEL_16;
    }

    v43 = (*(v5 + 56) + 240 * v26);
    v44 = *v43;
    v45 = v43[2];
    *(v0 + 1800) = v43[1];
    *(v0 + 1816) = v45;
    *v243 = v44;
    v46 = v43[3];
    v47 = v43[4];
    v48 = v43[6];
    *(v0 + 1864) = v43[5];
    *(v0 + 1880) = v48;
    *(v0 + 1832) = v46;
    *(v0 + 1848) = v47;
    v49 = v43[7];
    v50 = v43[8];
    v51 = v43[10];
    *(v0 + 1928) = v43[9];
    *(v0 + 1944) = v51;
    *(v0 + 1896) = v49;
    *(v0 + 1912) = v50;
    v52 = v43[11];
    v53 = v43[12];
    v54 = v43[14];
    *(v0 + 1992) = v43[13];
    *(v0 + 2008) = v54;
    *(v0 + 1960) = v52;
    *(v0 + 1976) = v53;
    sub_100189980(v243, v0 + 1544);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v248 = v11;
    v55 = sub_100013364(v24, v25);
    v57 = v55;
    v58 = v11[2];
    v59 = (v56 & 1) == 0;
    result = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      __break(1u);
      goto LABEL_91;
    }

    if (v11[3] >= result)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v61 = v56;
        result = sub_1001849A0();
LABEL_26:
        v56 = v61;
      }

      if (v56)
      {
        v11 = v248;
        v63 = (v248[7] + 240 * v57);
        v65 = v63[1];
        v64 = v63[2];
        *v241 = *v63;
        *(v0 + 1320) = v65;
        *(v0 + 1336) = v64;
        v66 = v63[6];
        v68 = v63[3];
        v67 = v63[4];
        *(v0 + 1384) = v63[5];
        *(v0 + 1400) = v66;
        *(v0 + 1352) = v68;
        *(v0 + 1368) = v67;
        v69 = v63[10];
        v71 = v63[7];
        v70 = v63[8];
        *(v0 + 1448) = v63[9];
        *(v0 + 1464) = v69;
        *(v0 + 1416) = v71;
        *(v0 + 1432) = v70;
        v72 = v63[14];
        v74 = v63[11];
        v73 = v63[12];
        *(v0 + 1512) = v63[13];
        *(v0 + 1528) = v72;
        *(v0 + 1480) = v74;
        *(v0 + 1496) = v73;
        v75 = *v243;
        v76 = *(v0 + 1816);
        v63[1] = *(v0 + 1800);
        v63[2] = v76;
        *v63 = v75;
        v77 = *(v0 + 1832);
        v78 = *(v0 + 1848);
        v79 = *(v0 + 1880);
        v63[5] = *(v0 + 1864);
        v63[6] = v79;
        v63[3] = v77;
        v63[4] = v78;
        v80 = *(v0 + 1896);
        v81 = *(v0 + 1912);
        v82 = *(v0 + 1944);
        v63[9] = *(v0 + 1928);
        v63[10] = v82;
        v63[7] = v80;
        v63[8] = v81;
        v83 = *(v0 + 1960);
        v84 = *(v0 + 1976);
        v85 = *(v0 + 2008);
        v63[13] = *(v0 + 1992);
        v63[14] = v85;
        v63[11] = v83;
        v63[12] = v84;
        sub_1001D87FC(v241);
        goto LABEL_32;
      }

      v11 = v248;
      v248[(v57 >> 6) + 8] |= 1 << v57;
      v86 = (v248[6] + 16 * v57);
      *v86 = v24;
      v86[1] = v25;
      v87 = (v248[7] + 240 * v57);
      v89 = *(v0 + 1992);
      v88 = *(v0 + 2008);
      v90 = *(v0 + 1976);
      v87[11] = *(v0 + 1960);
      v87[12] = v90;
      v87[13] = v89;
      v87[14] = v88;
      v92 = *(v0 + 1928);
      v91 = *(v0 + 1944);
      v93 = *(v0 + 1912);
      v87[7] = *(v0 + 1896);
      v87[8] = v93;
      v87[9] = v92;
      v87[10] = v91;
      v95 = *(v0 + 1864);
      v94 = *(v0 + 1880);
      v96 = *(v0 + 1848);
      v87[3] = *(v0 + 1832);
      v87[4] = v96;
      v87[5] = v95;
      v87[6] = v94;
      v98 = *(v0 + 1800);
      v97 = *(v0 + 1816);
      *v87 = *v243;
      v87[1] = v98;
      v87[2] = v97;
      v99 = v248[2];
      v100 = __OFADD__(v99, 1);
      v101 = v99 + 1;
      if (!v100)
      {
        v248[2] = v101;

LABEL_32:
        sub_1001EC8EC(v0 + 2536);
        v13 = v17 + 1;
        v15 = v10 + 32;
        if (v244 != v17)
        {
          continue;
        }

        goto LABEL_35;
      }

LABEL_91:
      __break(1u);
      return result;
    }

    break;
  }

  v61 = v56;
  sub_100182F54(result, isUniquelyReferenced_nonNull_native);
  result = sub_100013364(v24, v25);
  if ((v61 & 1) == (v62 & 1))
  {
    v57 = result;
    goto LABEL_26;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_10032966C()
{

  return _swift_task_switch(sub_100329768, 0, 0);
}

uint64_t sub_100329768()
{
  v1 = *(v0 + 5136);
  v2 = *(v1 + 488);
  v3 = *(v0 + 5264);
  if (v2)
  {
    v4 = *(v0 + 5120);
    v5 = *(v0 + 5112);
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    v7 = sub_1003257CC(sub_10033AB48, v6, v2);

    *(v5 + 488) = v7;
    v1 = *(v0 + 5136);
  }

  *(v0 + 5280) = v3;
  v8 = *(v0 + 5216);
  v9 = *(v1 + *(v8 + 76) + 8);
  if (v9)
  {
    v10 = *(v0 + 5120);
    v11 = *(v0 + 5112);
    v12 = v10[3];
    v13 = v10[4];
    sub_10000E2A8(v10, v12);
    v14 = (*(v13 + 40))(v9, v12, v13);
    v15 = v11 + *(v8 + 76);

    *(v15 + 8) = v14;
  }

  if (!*(*(v0 + 5248) + 80))
  {
    v16 = *(v0 + 5120);
    v17 = v16[3];
    v18 = v16[4];
    sub_10000E2A8(v16, v17);
    if (((*(v18 + 136))(v17, v18) & 1) == 0)
    {
      v19 = *(v0 + 5136) + *(v0 + 276);
      v20 = *(v19 + 8);
      if (v20)
      {
        v21 = *(v0 + 5216);
        v22 = *(v0 + 5112);
        *(v0 + 4800) = v20;
        v23 = *(v19 + 16);
        v24 = *(v19 + 32);
        v25 = *(v19 + 48);
        *(v0 + 4856) = *(v19 + 64);
        *(v0 + 4824) = v24;
        *(v0 + 4840) = v25;
        *(v0 + 4808) = v23;
        Config.Network.setupInterfaces(result:)(v22 + *(v21 + 64) + 8);
      }
    }
  }

  v26 = *(v0 + 5216);
  v27 = *(v0 + 5136);
  v28._rawValue = *(v27 + v26[15] + 8);
  if (v28._rawValue)
  {
    v29 = *(v0 + 5112);
    v30 = Config.apply(narrative:)(v28);
    v31 = v29 + v26[15];

    *(v31 + 8) = v30;
    v26 = *(v0 + 5216);
    v27 = *(v0 + 5136);
  }

  v32 = *(v27 + v26[25] + 8);
  if (v32)
  {
    v33 = swift_task_alloc();
    *(v0 + 5288) = v33;
    *v33 = v0;
    v33[1] = sub_10032A0F8;

    return Config.apply(volumes:)(v32);
  }

  else
  {
    v35 = *(v0 + 5192);
    v36 = *(v0 + 5184);
    v37 = *(v0 + 5176);
    v38 = v26[9];
    *(v0 + 540) = v38;
    v39 = sub_1000039E8(&qword_1004ACDA0);
    *(v0 + 5304) = v39;
    v40 = *(v39 + 44);
    *(v0 + 804) = v40;
    sub_100013E54(v27 + v40 + v38, v37, &qword_1004AD1B8);
    v41 = *(v35 + 48);
    *(v0 + 5312) = v41;
    *(v0 + 5320) = (v35 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v41(v37, 1, v36) == 1)
    {
      sub_100013F2C(*(v0 + 5176), &qword_1004AD1B8);
      memcpy((v0 + 280), (*(v0 + 5136) + 216), 0x101uLL);
      if (sub_100218DC8((v0 + 280)) == 1)
      {
        v42 = *(v0 + 5216);
        v43 = *(v0 + 5136);
        v44 = *(v43 + v42[10] + 8);
        if (v44)
        {
          v45 = *(v0 + 5120);
          v46 = *(v0 + 5112);
          v47 = swift_task_alloc();
          *(v47 + 16) = v45;
          *(v47 + 24) = v43;
          v48 = sub_1003259E8(sub_10033AA98, v47, v44);

          v49 = v46 + v42[10];

          *(v49 + 8) = v48;
          v42 = *(v0 + 5216);
          v43 = *(v0 + 5136);
        }

        v50 = *(v43 + v42[18] + 8);
        if (v50)
        {
          v51 = *(v0 + 5120);
          v52 = swift_task_alloc();
          *(v0 + 5344) = v52;
          *(v52 + 16) = v51;
          v53 = swift_task_alloc();
          *(v0 + 5352) = v53;
          *v53 = v0;
          v53[1] = sub_10032B4F8;

          return sub_100325CC8(&unk_100408D78, v52, v50);
        }

        else
        {
          v104 = v43 + v42[11];
          v105 = *(v104 + 8);
          if (v105)
          {
            v106 = *(v0 + 5120);
            v107 = *(v0 + 5112);
            *(v0 + 4584) = v105;
            v108 = *(v104 + 32);
            v109 = *(v104 + 48);
            v110 = *(v104 + 64);
            *(v0 + 4649) = *(v104 + 73);
            *(v0 + 4640) = v110;
            *(v0 + 4624) = v109;
            *(v0 + 4608) = v108;
            *(v0 + 4592) = *(v104 + 16);
            Config.Finish.apply(on:globals:)(v106, (v0 + 808), v0 + 4496);

            sub_10001F8D8(v0 + 4496, v107 + v42[11] + 8, &qword_1004AD1E8);
          }

          else
          {
          }

          v111 = *(v0 + 8);

          return v111();
        }
      }

      else
      {
        v70 = *(v0 + 5312);
        v71 = *(v0 + 804);
        v72 = *(v0 + 5184);
        v73 = *(v0 + 5160);
        v74 = *(v0 + 5136);
        v75 = v74 + *(v0 + 540);
        memcpy((v0 + 16), (v0 + 280), 0x101uLL);
        v76 = *(v74 + 8);
        v77 = *(v74 + 24);
        v78 = *(v74 + 56);
        *(v0 + 3784) = *(v74 + 40);
        *(v0 + 3800) = v78;
        *(v0 + 3752) = v76;
        *(v0 + 3768) = v77;
        v79 = *(v74 + 72);
        v80 = *(v74 + 88);
        v81 = *(v74 + 104);
        *(v0 + 3864) = *(v74 + 120);
        *(v0 + 3832) = v80;
        *(v0 + 3848) = v81;
        *(v0 + 3816) = v79;
        v82 = *(v74 + 8);
        v83 = *(v74 + 24);
        v84 = *(v74 + 56);
        *(v0 + 3904) = *(v74 + 40);
        *(v0 + 3920) = v84;
        *(v0 + 3872) = v82;
        *(v0 + 3888) = v83;
        v85 = *(v74 + 88);
        v86 = *(v74 + 104);
        v87 = *(v74 + 72);
        *(v0 + 3984) = *(v74 + 120);
        *(v0 + 3952) = v85;
        *(v0 + 3968) = v86;
        *(v0 + 3936) = v87;
        sub_100013E54(v75 + v71, v73, &qword_1004AD1B8);
        v88 = v70(v73, 1, v72);
        v89 = *(v0 + 5160);
        v90 = *(v0 + 5152);
        if (v88 == 1)
        {
          sub_100013E54(v0 + 3752, v0 + 3992, &qword_1004AD1E0);
          sub_100013F2C(v89, &qword_1004AD1B8);
          v91 = type metadata accessor for URL();
          (*(*(v91 - 8) + 56))(v90, 1, 1, v91);
        }

        else
        {
          v92 = sub_1000039E8(&qword_1004ACD10);
          sub_100013E54(v89 + *(v92 + 44), v90, &qword_1004A6D30);
          sub_100013E54(v0 + 3752, v0 + 3632, &qword_1004AD1E0);
          sub_100340E64(v89, type metadata accessor for Config.Diavlo);
        }

        v93 = *(v0 + 1016);
        *(v0 + 1248) = *(v0 + 1000);
        *(v0 + 1264) = v93;
        *(v0 + 1280) = *(v0 + 1032);
        v94 = *(v0 + 952);
        *(v0 + 1184) = *(v0 + 936);
        *(v0 + 1200) = v94;
        v95 = *(v0 + 984);
        *(v0 + 1216) = *(v0 + 968);
        *(v0 + 1232) = v95;
        v96 = *(v0 + 888);
        *(v0 + 1120) = *(v0 + 872);
        *(v0 + 1136) = v96;
        v97 = *(v0 + 920);
        *(v0 + 1152) = *(v0 + 904);
        *(v0 + 1168) = v97;
        v98 = *(v0 + 824);
        *(v0 + 1056) = *(v0 + 808);
        *(v0 + 1072) = v98;
        v99 = *(v0 + 856);
        *(v0 + 1088) = *(v0 + 840);
        *(v0 + 1296) = *(v0 + 1048);
        *(v0 + 1104) = v99;
        v101 = swift_task_alloc();
        *(v0 + 5336) = v101;
        *v101 = v0;
        v101[1] = sub_10032B0B4;
        v102 = *(v0 + 5152);
        v103 = *(v0 + 5128);

        return Config.Cryptex.apply(on:auth:diavloURL:env:reporter:)(v0 + 544, v100, v0 + 3872, v102, v0 + 1056, v103);
      }
    }

    else
    {
      v54 = *(v0 + 5136);
      sub_100340D94(*(v0 + 5176), *(v0 + 5200), type metadata accessor for Config.Diavlo);
      v55 = *(v54 + 8);
      v56 = *(v54 + 24);
      v57 = *(v54 + 40);
      *(v0 + 3440) = *(v54 + 56);
      *(v0 + 3424) = v57;
      *(v0 + 3408) = v56;
      *(v0 + 3392) = v55;
      v58 = *(v54 + 72);
      v59 = *(v54 + 88);
      v60 = *(v54 + 104);
      *(v0 + 3504) = *(v54 + 120);
      *(v0 + 3488) = v60;
      *(v0 + 3472) = v59;
      *(v0 + 3456) = v58;
      v61 = *(v54 + 8);
      v62 = *(v54 + 24);
      v63 = *(v54 + 40);
      *(v0 + 2960) = *(v54 + 56);
      *(v0 + 2944) = v63;
      *(v0 + 2928) = v62;
      *(v0 + 2912) = v61;
      v64 = *(v54 + 88);
      v65 = *(v54 + 104);
      v66 = *(v54 + 120);
      *(v0 + 2976) = *(v54 + 72);
      *(v0 + 3024) = v66;
      *(v0 + 3008) = v65;
      *(v0 + 2992) = v64;
      sub_100013E54(v0 + 3392, v0 + 2792, &qword_1004AD1E0);
      v68 = swift_task_alloc();
      *(v0 + 5328) = v68;
      *v68 = v0;
      v68[1] = sub_10032A980;
      v69 = *(v0 + 5168);

      return Config.Diavlo.apply(on:auth:)(v69, v67, v0 + 2912);
    }
  }
}

uint64_t sub_10032A0F8(uint64_t a1)
{
  *(*v1 + 5296) = a1;

  return _swift_task_switch(sub_10032A1F8, 0, 0);
}

uint64_t sub_10032A1F8()
{
  v1 = *(v0 + 5296);
  v2 = *(v0 + 5112) + *(*(v0 + 5216) + 100);

  *(v2 + 8) = v1;
  v3 = *(v0 + 5192);
  v4 = *(v0 + 5184);
  v5 = *(v0 + 5176);
  v6 = *(v0 + 5136);
  v7 = *(*(v0 + 5216) + 36);
  *(v0 + 540) = v7;
  v8 = sub_1000039E8(&qword_1004ACDA0);
  *(v0 + 5304) = v8;
  v9 = *(v8 + 44);
  *(v0 + 804) = v9;
  sub_100013E54(v6 + v9 + v7, v5, &qword_1004AD1B8);
  v10 = *(v3 + 48);
  *(v0 + 5312) = v10;
  *(v0 + 5320) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v5, 1, v4) == 1)
  {
    sub_100013F2C(*(v0 + 5176), &qword_1004AD1B8);
    memcpy((v0 + 280), (*(v0 + 5136) + 216), 0x101uLL);
    if (sub_100218DC8((v0 + 280)) == 1)
    {
      v11 = *(v0 + 5216);
      v12 = *(v0 + 5136);
      v13 = *(v12 + v11[10] + 8);
      if (v13)
      {
        v14 = *(v0 + 5120);
        v15 = *(v0 + 5112);
        v16 = swift_task_alloc();
        *(v16 + 16) = v14;
        *(v16 + 24) = v12;
        v17 = sub_1003259E8(sub_10033AA98, v16, v13);

        v18 = v15 + v11[10];

        *(v18 + 8) = v17;
        v11 = *(v0 + 5216);
        v12 = *(v0 + 5136);
      }

      v19 = *(v12 + v11[18] + 8);
      if (v19)
      {
        v20 = *(v0 + 5120);
        v21 = swift_task_alloc();
        *(v0 + 5344) = v21;
        *(v21 + 16) = v20;
        v22 = swift_task_alloc();
        *(v0 + 5352) = v22;
        *v22 = v0;
        v22[1] = sub_10032B4F8;

        return sub_100325CC8(&unk_100408D78, v21, v19);
      }

      else
      {
        v74 = v12 + v11[11];
        v75 = *(v74 + 8);
        if (v75)
        {
          v76 = *(v0 + 5120);
          v77 = *(v0 + 5112);
          *(v0 + 4584) = v75;
          v78 = *(v74 + 32);
          v79 = *(v74 + 48);
          v80 = *(v74 + 64);
          *(v0 + 4649) = *(v74 + 73);
          *(v0 + 4640) = v80;
          *(v0 + 4624) = v79;
          *(v0 + 4608) = v78;
          *(v0 + 4592) = *(v74 + 16);
          Config.Finish.apply(on:globals:)(v76, (v0 + 808), v0 + 4496);

          sub_10001F8D8(v0 + 4496, v77 + v11[11] + 8, &qword_1004AD1E8);
        }

        else
        {
        }

        v81 = *(v0 + 8);

        return v81();
      }
    }

    else
    {
      v40 = *(v0 + 5312);
      v41 = *(v0 + 804);
      v42 = *(v0 + 5184);
      v43 = *(v0 + 5160);
      v44 = *(v0 + 5136);
      v45 = v44 + *(v0 + 540);
      memcpy((v0 + 16), (v0 + 280), 0x101uLL);
      v46 = *(v44 + 8);
      v47 = *(v44 + 24);
      v48 = *(v44 + 56);
      *(v0 + 3784) = *(v44 + 40);
      *(v0 + 3800) = v48;
      *(v0 + 3752) = v46;
      *(v0 + 3768) = v47;
      v49 = *(v44 + 72);
      v50 = *(v44 + 88);
      v51 = *(v44 + 104);
      *(v0 + 3864) = *(v44 + 120);
      *(v0 + 3832) = v50;
      *(v0 + 3848) = v51;
      *(v0 + 3816) = v49;
      v52 = *(v44 + 8);
      v53 = *(v44 + 24);
      v54 = *(v44 + 56);
      *(v0 + 3904) = *(v44 + 40);
      *(v0 + 3920) = v54;
      *(v0 + 3872) = v52;
      *(v0 + 3888) = v53;
      v55 = *(v44 + 88);
      v56 = *(v44 + 104);
      v57 = *(v44 + 72);
      *(v0 + 3984) = *(v44 + 120);
      *(v0 + 3952) = v55;
      *(v0 + 3968) = v56;
      *(v0 + 3936) = v57;
      sub_100013E54(v45 + v41, v43, &qword_1004AD1B8);
      v58 = v40(v43, 1, v42);
      v59 = *(v0 + 5160);
      v60 = *(v0 + 5152);
      if (v58 == 1)
      {
        sub_100013E54(v0 + 3752, v0 + 3992, &qword_1004AD1E0);
        sub_100013F2C(v59, &qword_1004AD1B8);
        v61 = type metadata accessor for URL();
        (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
      }

      else
      {
        v62 = sub_1000039E8(&qword_1004ACD10);
        sub_100013E54(v59 + *(v62 + 44), v60, &qword_1004A6D30);
        sub_100013E54(v0 + 3752, v0 + 3632, &qword_1004AD1E0);
        sub_100340E64(v59, type metadata accessor for Config.Diavlo);
      }

      v63 = *(v0 + 1016);
      *(v0 + 1248) = *(v0 + 1000);
      *(v0 + 1264) = v63;
      *(v0 + 1280) = *(v0 + 1032);
      v64 = *(v0 + 952);
      *(v0 + 1184) = *(v0 + 936);
      *(v0 + 1200) = v64;
      v65 = *(v0 + 984);
      *(v0 + 1216) = *(v0 + 968);
      *(v0 + 1232) = v65;
      v66 = *(v0 + 888);
      *(v0 + 1120) = *(v0 + 872);
      *(v0 + 1136) = v66;
      v67 = *(v0 + 920);
      *(v0 + 1152) = *(v0 + 904);
      *(v0 + 1168) = v67;
      v68 = *(v0 + 824);
      *(v0 + 1056) = *(v0 + 808);
      *(v0 + 1072) = v68;
      v69 = *(v0 + 856);
      *(v0 + 1088) = *(v0 + 840);
      *(v0 + 1296) = *(v0 + 1048);
      *(v0 + 1104) = v69;
      v71 = swift_task_alloc();
      *(v0 + 5336) = v71;
      *v71 = v0;
      v71[1] = sub_10032B0B4;
      v72 = *(v0 + 5152);
      v73 = *(v0 + 5128);

      return Config.Cryptex.apply(on:auth:diavloURL:env:reporter:)(v0 + 544, v70, v0 + 3872, v72, v0 + 1056, v73);
    }
  }

  else
  {
    v24 = *(v0 + 5136);
    sub_100340D94(*(v0 + 5176), *(v0 + 5200), type metadata accessor for Config.Diavlo);
    v25 = *(v24 + 8);
    v26 = *(v24 + 24);
    v27 = *(v24 + 40);
    *(v0 + 3440) = *(v24 + 56);
    *(v0 + 3424) = v27;
    *(v0 + 3408) = v26;
    *(v0 + 3392) = v25;
    v28 = *(v24 + 72);
    v29 = *(v24 + 88);
    v30 = *(v24 + 104);
    *(v0 + 3504) = *(v24 + 120);
    *(v0 + 3488) = v30;
    *(v0 + 3472) = v29;
    *(v0 + 3456) = v28;
    v31 = *(v24 + 8);
    v32 = *(v24 + 24);
    v33 = *(v24 + 40);
    *(v0 + 2960) = *(v24 + 56);
    *(v0 + 2944) = v33;
    *(v0 + 2928) = v32;
    *(v0 + 2912) = v31;
    v34 = *(v24 + 88);
    v35 = *(v24 + 104);
    v36 = *(v24 + 120);
    *(v0 + 2976) = *(v24 + 72);
    *(v0 + 3024) = v36;
    *(v0 + 3008) = v35;
    *(v0 + 2992) = v34;
    sub_100013E54(v0 + 3392, v0 + 2792, &qword_1004AD1E0);
    v38 = swift_task_alloc();
    *(v0 + 5328) = v38;
    *v38 = v0;
    v38[1] = sub_10032A980;
    v39 = *(v0 + 5168);

    return Config.Diavlo.apply(on:auth:)(v39, v37, v0 + 2912);
  }
}

uint64_t sub_10032A980()
{
  v1 = *v0;

  v2 = *(v1 + 2992);
  *(v1 + 3576) = *(v1 + 2976);
  *(v1 + 3592) = v2;
  *(v1 + 3608) = *(v1 + 3008);
  *(v1 + 3624) = *(v1 + 3024);
  v3 = *(v1 + 2928);
  *(v1 + 3512) = *(v1 + 2912);
  *(v1 + 3528) = v3;
  v4 = *(v1 + 2960);
  *(v1 + 3544) = *(v1 + 2944);
  *(v1 + 3560) = v4;
  sub_100013F2C(v1 + 3512, &qword_1004AD1E0);

  return _swift_task_switch(sub_10032AAE4, 0, 0);
}

uint64_t sub_10032AAE4()
{
  v1 = *(v0 + 5304);
  v2 = *(v0 + 5216);
  v3 = *(v0 + 5168);
  v4 = *(v0 + 5112);
  sub_100340E64(*(v0 + 5200), type metadata accessor for Config.Diavlo);
  sub_10001F8D8(v3, v4 + *(v2 + 36) + *(v1 + 44), &qword_1004AD1B8);
  memcpy((v0 + 280), (*(v0 + 5136) + 216), 0x101uLL);
  if (sub_100218DC8((v0 + 280)) == 1)
  {
    v5 = *(v0 + 5216);
    v6 = *(v0 + 5136);
    v7 = *(v6 + v5[10] + 8);
    if (v7)
    {
      v8 = *(v0 + 5120);
      v9 = *(v0 + 5112);
      v10 = swift_task_alloc();
      *(v10 + 16) = v8;
      *(v10 + 24) = v6;
      v11 = sub_1003259E8(sub_10033AA98, v10, v7);

      v12 = v9 + v5[10];

      *(v12 + 8) = v11;
      v5 = *(v0 + 5216);
      v6 = *(v0 + 5136);
    }

    v13 = *(v6 + v5[18] + 8);
    if (v13)
    {
      v14 = *(v0 + 5120);
      v15 = swift_task_alloc();
      *(v0 + 5344) = v15;
      *(v15 + 16) = v14;
      v16 = swift_task_alloc();
      *(v0 + 5352) = v16;
      *v16 = v0;
      v16[1] = sub_10032B4F8;

      return sub_100325CC8(&unk_100408D78, v15, v13);
    }

    else
    {
      v52 = v6 + v5[11];
      v53 = *(v52 + 8);
      if (v53)
      {
        v54 = *(v0 + 5120);
        v55 = *(v0 + 5112);
        *(v0 + 4584) = v53;
        v56 = *(v52 + 32);
        v57 = *(v52 + 48);
        v58 = *(v52 + 64);
        *(v0 + 4649) = *(v52 + 73);
        *(v0 + 4640) = v58;
        *(v0 + 4624) = v57;
        *(v0 + 4608) = v56;
        *(v0 + 4592) = *(v52 + 16);
        Config.Finish.apply(on:globals:)(v54, (v0 + 808), v0 + 4496);

        sub_10001F8D8(v0 + 4496, v55 + v5[11] + 8, &qword_1004AD1E8);
      }

      else
      {
      }

      v59 = *(v0 + 8);

      return v59();
    }
  }

  else
  {
    v18 = *(v0 + 5312);
    v19 = *(v0 + 804);
    v20 = *(v0 + 5184);
    v21 = *(v0 + 5160);
    v22 = *(v0 + 5136);
    v23 = v22 + *(v0 + 540);
    memcpy((v0 + 16), (v0 + 280), 0x101uLL);
    v24 = *(v22 + 8);
    v25 = *(v22 + 24);
    v26 = *(v22 + 56);
    *(v0 + 3784) = *(v22 + 40);
    *(v0 + 3800) = v26;
    *(v0 + 3752) = v24;
    *(v0 + 3768) = v25;
    v27 = *(v22 + 72);
    v28 = *(v22 + 88);
    v29 = *(v22 + 104);
    *(v0 + 3864) = *(v22 + 120);
    *(v0 + 3832) = v28;
    *(v0 + 3848) = v29;
    *(v0 + 3816) = v27;
    v30 = *(v22 + 8);
    v31 = *(v22 + 24);
    v32 = *(v22 + 56);
    *(v0 + 3904) = *(v22 + 40);
    *(v0 + 3920) = v32;
    *(v0 + 3872) = v30;
    *(v0 + 3888) = v31;
    v33 = *(v22 + 88);
    v34 = *(v22 + 104);
    v35 = *(v22 + 72);
    *(v0 + 3984) = *(v22 + 120);
    *(v0 + 3952) = v33;
    *(v0 + 3968) = v34;
    *(v0 + 3936) = v35;
    sub_100013E54(v23 + v19, v21, &qword_1004AD1B8);
    v36 = v18(v21, 1, v20);
    v37 = *(v0 + 5160);
    v38 = *(v0 + 5152);
    if (v36 == 1)
    {
      sub_100013E54(v0 + 3752, v0 + 3992, &qword_1004AD1E0);
      sub_100013F2C(v37, &qword_1004AD1B8);
      v39 = type metadata accessor for URL();
      (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
    }

    else
    {
      v40 = sub_1000039E8(&qword_1004ACD10);
      sub_100013E54(v37 + *(v40 + 44), v38, &qword_1004A6D30);
      sub_100013E54(v0 + 3752, v0 + 3632, &qword_1004AD1E0);
      sub_100340E64(v37, type metadata accessor for Config.Diavlo);
    }

    v41 = *(v0 + 1016);
    *(v0 + 1248) = *(v0 + 1000);
    *(v0 + 1264) = v41;
    *(v0 + 1280) = *(v0 + 1032);
    v42 = *(v0 + 952);
    *(v0 + 1184) = *(v0 + 936);
    *(v0 + 1200) = v42;
    v43 = *(v0 + 984);
    *(v0 + 1216) = *(v0 + 968);
    *(v0 + 1232) = v43;
    v44 = *(v0 + 888);
    *(v0 + 1120) = *(v0 + 872);
    *(v0 + 1136) = v44;
    v45 = *(v0 + 920);
    *(v0 + 1152) = *(v0 + 904);
    *(v0 + 1168) = v45;
    v46 = *(v0 + 824);
    *(v0 + 1056) = *(v0 + 808);
    *(v0 + 1072) = v46;
    v47 = *(v0 + 856);
    *(v0 + 1088) = *(v0 + 840);
    *(v0 + 1296) = *(v0 + 1048);
    *(v0 + 1104) = v47;
    v49 = swift_task_alloc();
    *(v0 + 5336) = v49;
    *v49 = v0;
    v49[1] = sub_10032B0B4;
    v50 = *(v0 + 5152);
    v51 = *(v0 + 5128);

    return Config.Cryptex.apply(on:auth:diavloURL:env:reporter:)(v0 + 544, v48, v0 + 3872, v50, v0 + 1056, v51);
  }
}

uint64_t sub_10032B0B4()
{
  v1 = *v0;
  v2 = *(*v0 + 5152);

  sub_100013F2C(v2, &qword_1004A6D30);
  *(v1 + 2736) = *(v1 + 3936);
  *(v1 + 2752) = *(v1 + 3952);
  *(v1 + 2768) = *(v1 + 3968);
  *(v1 + 2784) = *(v1 + 3984);
  *(v1 + 2672) = *(v1 + 3872);
  *(v1 + 2688) = *(v1 + 3888);
  *(v1 + 2704) = *(v1 + 3904);
  *(v1 + 2720) = *(v1 + 3920);
  sub_100013F2C(v1 + 2672, &qword_1004AD1E0);

  return _swift_task_switch(sub_10032B24C, 0, 0);
}

uint64_t sub_10032B24C()
{
  sub_10001F8D8(v0 + 544, *(v0 + 5112) + 216, &qword_1004ACE90);
  v1 = *(v0 + 5216);
  v2 = *(v0 + 5136);
  v3 = *(v2 + v1[10] + 8);
  if (v3)
  {
    v4 = *(v0 + 5120);
    v5 = *(v0 + 5112);
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = v2;
    v7 = sub_1003259E8(sub_10033AA98, v6, v3);

    v8 = v5 + v1[10];

    *(v8 + 8) = v7;
    v1 = *(v0 + 5216);
    v2 = *(v0 + 5136);
  }

  v9 = *(v2 + v1[18] + 8);
  if (v9)
  {
    v10 = *(v0 + 5120);
    v11 = swift_task_alloc();
    *(v0 + 5344) = v11;
    *(v11 + 16) = v10;
    v12 = swift_task_alloc();
    *(v0 + 5352) = v12;
    *v12 = v0;
    v12[1] = sub_10032B4F8;

    return sub_100325CC8(&unk_100408D78, v11, v9);
  }

  else
  {
    v14 = v2 + v1[11];
    v15 = *(v14 + 8);
    if (v15)
    {
      v16 = *(v0 + 5120);
      v17 = *(v0 + 5112);
      *(v0 + 4584) = v15;
      v18 = *(v14 + 32);
      v19 = *(v14 + 48);
      v20 = *(v14 + 64);
      *(v0 + 4649) = *(v14 + 73);
      *(v0 + 4640) = v20;
      *(v0 + 4624) = v19;
      *(v0 + 4608) = v18;
      *(v0 + 4592) = *(v14 + 16);
      Config.Finish.apply(on:globals:)(v16, (v0 + 808), v0 + 4496);

      sub_10001F8D8(v0 + 4496, v17 + v1[11] + 8, &qword_1004AD1E8);
    }

    else
    {
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_10032B4F8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    *(v4 + 5360) = a1;

    return _swift_task_switch(sub_10032B63C, 0, 0);
  }
}

uint64_t sub_10032B63C()
{
  v1 = *(v0 + 5360);
  v2 = *(v0 + 5112) + *(*(v0 + 5216) + 72);

  *(v2 + 8) = v1;
  v3 = *(v0 + 5216);
  v4 = *(v0 + 5136) + *(v3 + 44);
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = *(v0 + 5120);
    v7 = *(v0 + 5112);
    *(v0 + 4584) = v5;
    v8 = *(v4 + 32);
    v9 = *(v4 + 48);
    v10 = *(v4 + 64);
    *(v0 + 4649) = *(v4 + 73);
    *(v0 + 4640) = v10;
    *(v0 + 4624) = v9;
    *(v0 + 4608) = v8;
    *(v0 + 4592) = *(v4 + 16);
    Config.Finish.apply(on:globals:)(v6, (v0 + 808), v0 + 4496);

    sub_10001F8D8(v0 + 4496, v7 + *(v3 + 44) + 8, &qword_1004AD1E8);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

unint64_t Config.CriticalError.description.getter(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(24);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0xD000000000000015;
}

double _s10DarwinInit6ConfigV5StartV5apply2onAESgAA8Computer_p_tAC13CriticalErrorOYKF@<D0>(void *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_10033E780(a1, *(v3 + 24), *(v3 + 40), v10, v11);
  if (v4)
  {
    v8 = v10[1];
    *a2 = v10[0];
    a2[1] = v8;
  }

  else
  {
    v9 = v11[1];
    *a3 = v11[0];
    a3[1] = v9;
    result = *&v12;
    a3[2] = v12;
  }

  return result;
}

uint64_t static Config.Analytics.apply(config:on:reporter:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v18 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = a2[3];
  v12 = a2[4];
  sub_10000E2A8(a2, v11);
  if ((*(v12 + 8))(v11, v12))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    result = 0;
    v14 = 0;
  }

  else
  {
    v15 = _s10DarwinInit6ConfigV9AnalyticsV11applySubmit6config2on8reporterSbSgAESg_AA8Computer_pAA13ErrorReporterCtFZ_0(a1, a2, a3);
    if (*a1)
    {
      v16 = v15;
      v17 = *(a1 + 32);
      if (v17 == 255)
      {
        result = 0;
        v14 = -1;
      }

      else
      {
        result = Either<>.apply(computer:)(a2, *(a1 + 24), v17 & 1);
      }

      v8 = v16;
      v7 = _swiftEmptyArrayStorage;
      v9 = _swiftEmptyArrayStorage;
    }

    else
    {
      result = v18;
      v14 = v10;
    }
  }

  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = result;
  *(a4 + 32) = v14;
  return result;
}

uint64_t Config.Network.setupFirewall(installer:reporter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = result;
  v6 = 0;
  v17 = 1;
  if (*(v2 + 56))
  {
    goto LABEL_9;
  }

  v7 = *(v2 + 48);
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (qword_1004A9F20 != -1)
  {
LABEL_14:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000270B4(v8, qword_1004B00F8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "Setting uplink MTU to %ld", v11, 0xCu);
  }

  result = sub_1001B17AC(v7);
  v6 = 0;
  if ((v12 & 1) == 0 && result == v7)
  {
    v17 = 0;
    v6 = v7;
  }

LABEL_9:
  v13 = *(v3 + 8);
  if (v13)
  {
    v14 = *(v3 + 16);
    v15 = *(*v4 + 160);

    v15(v16);
    result = sub_100219A48(0);
    v13 = _swiftEmptyArrayStorage;
  }

  else
  {
    v14 = 0;
  }

  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 32) = 0;
  *(a2 + 40) = _swiftEmptyArrayStorage;
  *(a2 + 48) = v6;
  *(a2 + 56) = v17;
  return result;
}

void Config.apply(tailspin:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *(a1 + 16);
  v29 = *a1;
  v26 = *(a1 + 48);
  v27 = *(a1 + 32);
  v25 = *(a1 + 64);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000270B4(v6, qword_1004B00F8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Applying tailspin configuration...", v9, 2u);
  }

  if (!shim_check_tailspin())
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Tailspin doesn't exist in on this OS, so we cannot handle tailspin configuration.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);
    }

LABEL_14:

LABEL_15:
    v4 = 0;
    v13 = 0uLL;
    v5 = -1;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    goto LABEL_16;
  }

  sub_10033F7B8();
  if (!v10)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Failed to generate tailspin config.";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v11 = v10;
  v31 = v10;
  Either<>.apply(to:)(&v31);
  sub_10033F90C(v11);
  if (!v12)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to apply tailspin configuration.", v24, 2u);
    }

    sub_10033FA70(v11);
    goto LABEL_15;
  }

  sub_10033FA70(v11);
  sub_100013E54(a1, v30, &qword_1004AD2C0);
  v14 = v28;
  v13 = v29;
  v16 = v26;
  v15 = v27;
  v17 = v25;
LABEL_16:
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v17;
  *(a2 + 80) = v4;
  *(a2 + 88) = v5;
}

uint64_t Config.Identification.apply(on:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return _swift_task_switch(sub_10032C050, 0, 0);
}

uint64_t sub_10032C050()
{
  v47 = v0;
  v1 = *(v0 + 64);
  v2 = *(v1 + 8);
  *(v0 + 72) = v2;
  v3 = *(v1 + 16);
  *(v0 + 80) = v3;
  if (v3)
  {
    v4 = *(v0 + 56);
    v5 = v4[3];
    v6 = v4[4];
    sub_10000E2A8(v4, v5);
    v7 = *(v6 + 16);

    v43 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *v8 = v0;
    v8[1] = sub_10032C63C;
    v9 = v2;
    v10 = v3;
    v11 = v5;
    v12 = v6;
    v13 = v43;

    return v13(v9, v10, v11, v12);
  }

  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v14 = *(v1 + 32);
  *(v0 + 120) = v14;
  v15 = *(v1 + 40);
  *(v0 + 128) = v15;
  if (v15)
  {
    v16 = *(v0 + 56);
    v17 = v16[3];
    v18 = v16[4];
    sub_10000E2A8(v16, v17);
    v19 = *(v18 + 24);

    v44 = (v19 + *v19);
    v20 = swift_task_alloc();
    *(v0 + 136) = v20;
    *v20 = v0;
    v20[1] = sub_10032CC24;
    v9 = v14;
    v10 = v15;
    v11 = v17;
    v12 = v18;
    v13 = v44;

    return v13(v9, v10, v11, v12);
  }

  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  v21 = *(v1 + 56);
  *(v0 + 168) = v21;
  v22 = *(v1 + 64);
  *(v0 + 176) = v22;
  if (v22)
  {
    v23 = *(v0 + 56);
    v24 = v23[3];
    v25 = v23[4];
    sub_10000E2A8(v23, v24);
    v26 = *(v25 + 32);

    v45 = (v26 + *v26);
    v27 = swift_task_alloc();
    *(v0 + 184) = v27;
    *v27 = v0;
    v27[1] = sub_10032D0DC;
    v9 = v21;
    v10 = v22;
    v11 = v24;
    v12 = v25;
    v13 = v45;

    return v13(v9, v10, v11, v12);
  }

  *(v0 + 16) = *(v1 + 80);
  v29 = *(v0 + 24);
  if (v29)
  {
    v30 = *(v0 + 16);
    sub_100013E54(v0 + 16, v0 + 32, &qword_1004A7330);
    if (sub_1002A73DC(v30, v29) & 1) != 0 && (v31 = *(v0 + 56), v32 = v31[3], v33 = v31[4], sub_10000E2A8(v31, v32), ((*(v33 + 72))(v30, v29, v32, v33)))
    {
    }

    else
    {
      sub_100013F2C(v0 + 16, &qword_1004A7330);
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_1000270B4(v34, qword_1004B00F8);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v46 = v38;
        *v37 = 136446210;
        *(v37 + 4) = sub_1000026C0(0xD000000000000014, 0x8000000100441020, &v46);
        _os_log_impl(&_mh_execute_header, v35, v36, "Failed to set %{public}s.", v37, 0xCu);
        sub_100003C3C(v38);
      }

      v30 = 0;
      v29 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  v39 = *(v0 + 48);
  v40 = *(v0 + 104);
  v41 = *(v0 + 152);
  *v39 = _swiftEmptyArrayStorage;
  *(v39 + 8) = v40;
  *(v39 + 24) = _swiftEmptyArrayStorage;
  *(v39 + 32) = v41;
  *(v39 + 48) = _swiftEmptyArrayStorage;
  *(v39 + 56) = 0;
  *(v39 + 64) = 0;
  *(v39 + 72) = _swiftEmptyArrayStorage;
  *(v39 + 80) = v30;
  *(v39 + 88) = v29;
  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_10032C63C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {

    v2 = sub_10032D468;
  }

  else
  {
    v2 = sub_10032C758;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10032C758()
{
  v39 = v0;

  *(v0 + 104) = *(v0 + 72);
  v1 = *(v0 + 64);
  v2 = *(v1 + 32);
  *(v0 + 120) = v2;
  v3 = *(v1 + 40);
  *(v0 + 128) = v3;
  if (v3)
  {
    v4 = *(v0 + 56);
    v5 = v4[3];
    v6 = v4[4];
    sub_10000E2A8(v4, v5);
    v7 = *(v6 + 24);

    v36 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_10032CC24;
    v9 = v2;
    v10 = v3;
    v11 = v5;
    v12 = v6;
    v13 = v36;

    return v13(v9, v10, v11, v12);
  }

  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  v15 = *(v1 + 56);
  *(v0 + 168) = v15;
  v16 = *(v1 + 64);
  *(v0 + 176) = v16;
  if (v16)
  {
    v17 = *(v0 + 56);
    v18 = v17[3];
    v19 = v17[4];
    sub_10000E2A8(v17, v18);
    v20 = *(v19 + 32);

    v37 = (v20 + *v20);
    v21 = swift_task_alloc();
    *(v0 + 184) = v21;
    *v21 = v0;
    v21[1] = sub_10032D0DC;
    v9 = v15;
    v10 = v16;
    v11 = v18;
    v12 = v19;
    v13 = v37;

    return v13(v9, v10, v11, v12);
  }

  *(v0 + 16) = *(v1 + 80);
  v22 = *(v0 + 24);
  if (v22)
  {
    v23 = *(v0 + 16);
    sub_100013E54(v0 + 16, v0 + 32, &qword_1004A7330);
    if (sub_1002A73DC(v23, v22) & 1) != 0 && (v24 = *(v0 + 56), v25 = v24[3], v26 = v24[4], sub_10000E2A8(v24, v25), ((*(v26 + 72))(v23, v22, v25, v26)))
    {
    }

    else
    {
      sub_100013F2C(v0 + 16, &qword_1004A7330);
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000270B4(v27, qword_1004B00F8);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v38 = v31;
        *v30 = 136446210;
        *(v30 + 4) = sub_1000026C0(0xD000000000000014, 0x8000000100441020, &v38);
        _os_log_impl(&_mh_execute_header, v28, v29, "Failed to set %{public}s.", v30, 0xCu);
        sub_100003C3C(v31);
      }

      v23 = 0;
      v22 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v32 = *(v0 + 48);
  v33 = *(v0 + 104);
  v34 = *(v0 + 152);
  *v32 = _swiftEmptyArrayStorage;
  *(v32 + 8) = v33;
  *(v32 + 24) = _swiftEmptyArrayStorage;
  *(v32 + 32) = v34;
  *(v32 + 48) = _swiftEmptyArrayStorage;
  *(v32 + 56) = 0;
  *(v32 + 64) = 0;
  *(v32 + 72) = _swiftEmptyArrayStorage;
  *(v32 + 80) = v23;
  *(v32 + 88) = v22;
  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_10032CC24()
{
  *(*v1 + 144) = v0;

  if (v0)
  {

    v2 = sub_10032DA60;
  }

  else
  {
    v2 = sub_10032CD40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10032CD40()
{
  v26 = v0;

  *(v0 + 152) = *(v0 + 120);
  v1 = *(v0 + 64);
  v2 = *(v1 + 56);
  *(v0 + 168) = v2;
  v3 = *(v1 + 64);
  *(v0 + 176) = v3;
  if (v3)
  {
    v4 = *(v0 + 56);
    v5 = v4[3];
    v6 = v4[4];
    sub_10000E2A8(v4, v5);
    v7 = *(v6 + 32);

    v24 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_10032D0DC;

    return v24(v2, v3, v5, v6);
  }

  else
  {
    *(v0 + 16) = *(v1 + 80);
    v10 = *(v0 + 24);
    if (v10)
    {
      v11 = *(v0 + 16);
      sub_100013E54(v0 + 16, v0 + 32, &qword_1004A7330);
      if (sub_1002A73DC(v11, v10) & 1) != 0 && (v12 = *(v0 + 56), v13 = v12[3], v14 = v12[4], sub_10000E2A8(v12, v13), ((*(v14 + 72))(v11, v10, v13, v14)))
      {
      }

      else
      {
        sub_100013F2C(v0 + 16, &qword_1004A7330);
        if (qword_1004A9F20 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_1000270B4(v15, qword_1004B00F8);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v25 = v19;
          *v18 = 136446210;
          *(v18 + 4) = sub_1000026C0(0xD000000000000014, 0x8000000100441020, &v25);
          _os_log_impl(&_mh_execute_header, v16, v17, "Failed to set %{public}s.", v18, 0xCu);
          sub_100003C3C(v19);
        }

        v11 = 0;
        v10 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v20 = *(v0 + 48);
    v21 = *(v0 + 104);
    v22 = *(v0 + 152);
    *v20 = _swiftEmptyArrayStorage;
    *(v20 + 8) = v21;
    *(v20 + 24) = _swiftEmptyArrayStorage;
    *(v20 + 32) = v22;
    *(v20 + 48) = _swiftEmptyArrayStorage;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    *(v20 + 72) = _swiftEmptyArrayStorage;
    *(v20 + 80) = v11;
    *(v20 + 88) = v10;
    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_10032D0DC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {

    v2 = sub_10032DF28;
  }

  else
  {
    v2 = sub_10032D1F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10032D1F8()
{
  v19 = v0;

  v1 = *(v0 + 168);
  *(v0 + 16) = *(*(v0 + 64) + 80);
  v2 = *(v0 + 24);
  if (v2)
  {
    v17 = v1;
    v3 = *(v0 + 16);
    sub_100013E54(v0 + 16, v0 + 32, &qword_1004A7330);
    if (sub_1002A73DC(v3, v2) & 1) != 0 && (v4 = *(v0 + 56), v5 = v4[3], v6 = v4[4], sub_10000E2A8(v4, v5), ((*(v6 + 72))(v3, v2, v5, v6)))
    {
    }

    else
    {
      sub_100013F2C(v0 + 16, &qword_1004A7330);
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000270B4(v7, qword_1004B00F8);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v18 = v11;
        *v10 = 136446210;
        *(v10 + 4) = sub_1000026C0(0xD000000000000014, 0x8000000100441020, &v18);
        _os_log_impl(&_mh_execute_header, v8, v9, "Failed to set %{public}s.", v10, 0xCu);
        sub_100003C3C(v11);
      }

      v3 = 0;
      v2 = 0;
    }

    v1 = v17;
  }

  else
  {
    v3 = 0;
  }

  v12 = *(v0 + 48);
  v13 = *(v0 + 104);
  v14 = *(v0 + 152);
  *v12 = _swiftEmptyArrayStorage;
  *(v12 + 8) = v13;
  *(v12 + 24) = _swiftEmptyArrayStorage;
  *(v12 + 32) = v14;
  *(v12 + 48) = _swiftEmptyArrayStorage;
  *(v12 + 56) = v1;
  *(v12 + 72) = _swiftEmptyArrayStorage;
  *(v12 + 80) = v3;
  *(v12 + 88) = v2;
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10032D468()
{
  v44 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to set computerName: %@", v4, 0xCu);
    sub_100013F2C(v5, &qword_1004AA050);
  }

  else
  {
  }

  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v7 = *(v0 + 64);
  v8 = *(v7 + 32);
  *(v0 + 120) = v8;
  v9 = *(v7 + 40);
  *(v0 + 128) = v9;
  if (v9)
  {
    v10 = *(v0 + 56);
    v11 = v10[3];
    v12 = v10[4];
    sub_10000E2A8(v10, v11);
    v13 = *(v12 + 24);

    v41 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 136) = v14;
    *v14 = v0;
    v14[1] = sub_10032CC24;
    v15 = v8;
    v16 = v9;
    v17 = v11;
    v18 = v12;
    v19 = v41;

    return v19(v15, v16, v17, v18);
  }

  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  v21 = *(v7 + 56);
  *(v0 + 168) = v21;
  v22 = *(v7 + 64);
  *(v0 + 176) = v22;
  if (v22)
  {
    v23 = *(v0 + 56);
    v24 = v23[3];
    v25 = v23[4];
    sub_10000E2A8(v23, v24);
    v26 = *(v25 + 32);

    v42 = (v26 + *v26);
    v27 = swift_task_alloc();
    *(v0 + 184) = v27;
    *v27 = v0;
    v27[1] = sub_10032D0DC;
    v15 = v21;
    v16 = v22;
    v17 = v24;
    v18 = v25;
    v19 = v42;

    return v19(v15, v16, v17, v18);
  }

  *(v0 + 16) = *(v7 + 80);
  v28 = *(v0 + 24);
  if (v28)
  {
    v29 = *(v0 + 16);
    sub_100013E54(v0 + 16, v0 + 32, &qword_1004A7330);
    if (sub_1002A73DC(v29, v28) & 1) != 0 && (v30 = *(v0 + 56), v31 = v30[3], v32 = v30[4], sub_10000E2A8(v30, v31), ((*(v32 + 72))(v29, v28, v31, v32)))
    {
    }

    else
    {
      sub_100013F2C(v0 + 16, &qword_1004A7330);
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      sub_1000270B4(v1, qword_1004B00F8);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v43 = v36;
        *v35 = 136446210;
        *(v35 + 4) = sub_1000026C0(0xD000000000000014, 0x8000000100441020, &v43);
        _os_log_impl(&_mh_execute_header, v33, v34, "Failed to set %{public}s.", v35, 0xCu);
        sub_100003C3C(v36);
      }

      v29 = 0;
      v28 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v37 = *(v0 + 48);
  v38 = *(v0 + 104);
  v39 = *(v0 + 152);
  *v37 = _swiftEmptyArrayStorage;
  *(v37 + 8) = v38;
  *(v37 + 24) = _swiftEmptyArrayStorage;
  *(v37 + 32) = v39;
  *(v37 + 48) = _swiftEmptyArrayStorage;
  *(v37 + 56) = 0;
  *(v37 + 64) = 0;
  *(v37 + 72) = _swiftEmptyArrayStorage;
  *(v37 + 80) = v29;
  *(v37 + 88) = v28;
  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10032DA60()
{
  v31 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to set hostName: %@", v4, 0xCu);
    sub_100013F2C(v5, &qword_1004AA050);
  }

  else
  {
  }

  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  v7 = *(v0 + 64);
  v8 = *(v7 + 56);
  *(v0 + 168) = v8;
  v9 = *(v7 + 64);
  *(v0 + 176) = v9;
  if (v9)
  {
    v10 = *(v0 + 56);
    v11 = v10[3];
    v12 = v10[4];
    sub_10000E2A8(v10, v11);
    v13 = *(v12 + 32);

    v29 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 184) = v14;
    *v14 = v0;
    v14[1] = sub_10032D0DC;

    return v29(v8, v9, v11, v12);
  }

  else
  {
    *(v0 + 16) = *(v7 + 80);
    v16 = *(v0 + 24);
    if (v16)
    {
      v17 = *(v0 + 16);
      sub_100013E54(v0 + 16, v0 + 32, &qword_1004A7330);
      if (sub_1002A73DC(v17, v16) & 1) != 0 && (v18 = *(v0 + 56), v19 = v18[3], v20 = v18[4], sub_10000E2A8(v18, v19), ((*(v20 + 72))(v17, v16, v19, v20)))
      {
      }

      else
      {
        sub_100013F2C(v0 + 16, &qword_1004A7330);
        if (qword_1004A9F20 != -1)
        {
          swift_once();
        }

        sub_1000270B4(v1, qword_1004B00F8);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v30 = v24;
          *v23 = 136446210;
          *(v23 + 4) = sub_1000026C0(0xD000000000000014, 0x8000000100441020, &v30);
          _os_log_impl(&_mh_execute_header, v21, v22, "Failed to set %{public}s.", v23, 0xCu);
          sub_100003C3C(v24);
        }

        v17 = 0;
        v16 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v25 = *(v0 + 48);
    v26 = *(v0 + 104);
    v27 = *(v0 + 152);
    *v25 = _swiftEmptyArrayStorage;
    *(v25 + 8) = v26;
    *(v25 + 24) = _swiftEmptyArrayStorage;
    *(v25 + 32) = v27;
    *(v25 + 48) = _swiftEmptyArrayStorage;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    *(v25 + 72) = _swiftEmptyArrayStorage;
    *(v25 + 80) = v17;
    *(v25 + 88) = v16;
    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_10032DF28()
{
  v22 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to set localHostName: %@", v4, 0xCu);
    sub_100013F2C(v5, &qword_1004AA050);
  }

  else
  {
  }

  *(v0 + 16) = *(*(v0 + 64) + 80);
  v7 = *(v0 + 24);
  if (v7)
  {
    v8 = *(v0 + 16);
    sub_100013E54(v0 + 16, v0 + 32, &qword_1004A7330);
    if (sub_1002A73DC(v8, v7) & 1) != 0 && (v9 = *(v0 + 56), v10 = v9[3], v11 = v9[4], sub_10000E2A8(v9, v10), ((*(v11 + 72))(v8, v7, v10, v11)))
    {
    }

    else
    {
      sub_100013F2C(v0 + 16, &qword_1004A7330);
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      sub_1000270B4(v1, qword_1004B00F8);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v21 = v15;
        *v14 = 136446210;
        *(v14 + 4) = sub_1000026C0(0xD000000000000014, 0x8000000100441020, &v21);
        _os_log_impl(&_mh_execute_header, v12, v13, "Failed to set %{public}s.", v14, 0xCu);
        sub_100003C3C(v15);
      }

      v8 = 0;
      v7 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = *(v0 + 48);
  v17 = *(v0 + 104);
  v18 = *(v0 + 152);
  *v16 = _swiftEmptyArrayStorage;
  *(v16 + 8) = v17;
  *(v16 + 24) = _swiftEmptyArrayStorage;
  *(v16 + 32) = v18;
  *(v16 + 48) = _swiftEmptyArrayStorage;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 72) = _swiftEmptyArrayStorage;
  *(v16 + 80) = v8;
  *(v16 + 88) = v7;
  v19 = *(v0 + 8);

  return v19();
}

void *Config.CARoots.apply(on:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || (a3 & 1) == 0 || (sub_1003230F8() & 1) != 0)
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    return 0;
  }
}

__n128 UserManager.User.init(from:name:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_10033E3F8(a1, a2, a3, v9);
  v5 = v9[7];
  *(a4 + 96) = v9[6];
  *(a4 + 112) = v5;
  *(a4 + 128) = v10;
  v6 = v9[3];
  *(a4 + 32) = v9[2];
  *(a4 + 48) = v6;
  v7 = v9[5];
  *(a4 + 64) = v9[4];
  *(a4 + 80) = v7;
  result = v9[1];
  *a4 = v9[0];
  *(a4 + 16) = result;
  return result;
}

__n128 sub_10032E380@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = a1[7];
  v61[6] = a1[6];
  v61[7] = v8;
  v62 = *(a1 + 16);
  v9 = a1[3];
  v61[2] = a1[2];
  v61[3] = v9;
  v10 = a1[5];
  v61[4] = a1[4];
  v61[5] = v10;
  v11 = a1[1];
  v61[0] = *a1;
  v61[1] = v11;
  if (UserManager.setup(user:)(v61))
  {
    v12 = a1[7];
    v52 = a1[6];
    v53 = v12;
    *&v54 = *(a1 + 16);
    v13 = a1[3];
    v48 = a1[2];
    v49 = v13;
    v14 = a1[5];
    v50 = a1[4];
    v51 = v14;
    v15 = a1[1];
    v46 = *a1;
    v47 = v15;
    DInitData.init(rawValue:)(&v46);
    v16 = v53;
    *(a4 + 96) = v52;
    *(a4 + 112) = v16;
    *(a4 + 128) = v54;
    v17 = v49;
    *(a4 + 32) = v48;
    *(a4 + 48) = v17;
    v18 = v51;
    *(a4 + 64) = v50;
    *(a4 + 80) = v18;
    v19 = v47;
    *a4 = v46;
    *(a4 + 16) = v19;
    sub_1001EC8B4(v61, v38);
  }

  else
  {
    if (*(a2 + 16))
    {
      v21 = sub_100013364(*&v61[0], *(&v61[0] + 1));
      if (v22)
      {
        v23 = (*(a2 + 56) + 240 * v21);
        v25 = v23[1];
        v24 = v23[2];
        v46 = *v23;
        v47 = v25;
        v48 = v24;
        v26 = v23[6];
        v28 = v23[3];
        v27 = v23[4];
        v51 = v23[5];
        v52 = v26;
        v49 = v28;
        v50 = v27;
        v29 = v23[10];
        v31 = v23[7];
        v30 = v23[8];
        v55 = v23[9];
        v56 = v29;
        v53 = v31;
        v54 = v30;
        v32 = v23[14];
        v34 = v23[11];
        v33 = v23[12];
        v59 = v23[13];
        v60 = v32;
        v57 = v34;
        v58 = v33;
        sub_100189980(&v46, v38);
        Config.User.jsonPointer.getter();
        sub_1001D87FC(&v46);
        *&v38[8] = xmmword_100408D50;
        *&v38[24] = 0x8000000100445AB0;
        (*(*a3 + 112))(v38, "apply(on:env:reporter:)", 23, 2, 116);
      }
    }

    sub_100340D78(v38);
    v35 = v44;
    *(a4 + 96) = v43;
    *(a4 + 112) = v35;
    *(a4 + 128) = v45;
    v36 = v40;
    *(a4 + 32) = v39;
    *(a4 + 48) = v36;
    v37 = v42;
    *(a4 + 64) = v41;
    *(a4 + 80) = v37;
    result = *&v38[16];
    *a4 = *v38;
    *(a4 + 16) = result;
  }

  return result;
}

void *Config.SSH.apply(on:)(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  result = sub_10033EF3C(a1, a3, a5);
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t Config.Start.issueDCRT(result:)(uint64_t a1)
{
  v4 = *(v1 + 8);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100001FE0;

  return sub_10033F230(a1, v4);
}

void Config.Root.install(on:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = v2[1];
  v51 = *v2;
  v7 = v2[2];
  v53 = v2[3];
  v54 = v6;
  v50 = v7;
  v8 = v2[4];
  v52 = v2[5];
  v49 = v8;
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000270B4(v13, qword_1004B00F8);
  sub_1002193A0(v2, &v55);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  sub_10021934C(v3);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v48 = v10;
    v18 = v17;
    v55 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1000026C0(*(v3 + 32), *(v3 + 40), &v55);
    _os_log_impl(&_mh_execute_header, v14, v15, "Installing %s ...", v16, 0xCu);
    sub_100003C3C(v18);
    v10 = v48;
  }

  v19 = *(v3 + 88);
  if (v19)
  {
    v20 = *(v3 + 80);

    FilePath.init(_:)();
    v21 = FilePath.exists(withTimeout:)(20);
    (*(v10 + 8))(v12, v9);
    if (!v21)
    {

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v55 = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_1000026C0(v20, v19, &v55);
        _os_log_impl(&_mh_execute_header, v40, v41, "Wait for volume %s failed", v42, 0xCu);
        sub_100003C3C(v43);

LABEL_20:

        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

  v22 = *(v3 + 16);
  if (v22)
  {
    v23 = *(v3 + 8);
    sub_10000E2A8(a1, a1[3]);
    v24.value._countAndFlagsBits = 0x7361622F6E69622FLL;
    v24.value._object = 0xE900000000000068;
    v25._countAndFlagsBits = v23;
    v25._object = v22;
    if (!Computer.run(shell:command:)(v24, v25))
    {
      v40 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "Preflight failed";
        goto LABEL_19;
      }

LABEL_21:

      v34 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      goto LABEL_22;
    }
  }

  v55 = 0;
  v56 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v55 = 0xD00000000000001ALL;
  v56 = 0x8000000100445760;
  String.append(_:)(*(v3 + 32));
  v26 = v55;
  v27 = v56;
  sub_10000E2A8(a1, a1[3]);
  v28._countAndFlagsBits = v26;
  v28._object = v27;
  LOBYTE(v26) = Computer.run(shell:command:)(0, v28);

  if ((v26 & 1) == 0)
  {
    v40 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "Root installed failed";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v40, v44, v46, v45, 2u);
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v29 = *(v3 + 64);
  if (!v29 || (v30 = *(v3 + 56), sub_10000E2A8(a1, a1[3]), v31.value._countAndFlagsBits = 0x7361622F6E69622FLL, v31.value._object = 0xE900000000000068, v32._countAndFlagsBits = v30, v32._object = v29, v33 = Computer.run(shell:command:)(v31, v32), v34 = 0uLL, v35 = 0uLL, v36 = 0uLL, v37 = 0uLL, v38 = 0uLL, v39 = 0uLL, v33))
  {
    sub_1002193A0(v3, &v55);
    v34 = v51;
    v39 = v52;
    v37 = v53;
    v35 = v54;
    v36 = v50;
    v38 = v49;
  }

LABEL_22:
  *a2 = v34;
  a2[1] = v35;
  a2[2] = v36;
  a2[3] = v37;
  a2[4] = v38;
  a2[5] = v39;
}

uint64_t Config.Network.setupInterfaces(result:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1004A9F20 != -1)
  {
LABEL_50:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000270B4(v4, qword_1004B00F8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Applying network configuration...", v7, 2u);
  }

  v8 = sub_100186EE8(_swiftEmptyArrayStorage);
  v9 = *(v2 + 32);
  if (!v9)
  {
  }

  v52 = a1;
  v53 = v8;
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v2 = 0;
  v57 = v9;
  if (!v13)
  {
    while (1)
    {
LABEL_11:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_50;
      }

      if (v16 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_15;
      }
    }

    if (!*v52)
    {
      v51 = *(v52 + 16);
      v59[0] = *v52;
      v59[1] = v51;
      v60[0] = *(v52 + 32);
      *(v60 + 9) = *(v52 + 41);
      sub_100013F2C(v59, &qword_1004ACE78);
      *v52 = _swiftEmptyArrayStorage;
      *(v52 + 8) = 0;
      *(v52 + 16) = 0;
      *(v52 + 24) = _swiftEmptyArrayStorage;
      *(v52 + 32) = 0;
      *(v52 + 40) = _swiftEmptyArrayStorage;
      *(v52 + 48) = 0;
      *(v52 + 56) = 1;
    }

    *(v52 + 32) = v53;
    return result;
  }

  while (1)
  {
LABEL_15:
    while (1)
    {
      v17 = __clz(__rbit64(v13)) | (v15 << 6);
      v18 = *(v9 + 56);
      v19 = (*(v9 + 48) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
      v56 = *(v18 + 8 * v17);
      v58 = v21;
      if (v56 >> 61 == 5)
      {

        sub_1002F5B58(v22);

        v23.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v24 = v23.super.isa;
      }

      else
      {

        v23.super.isa = 0;
      }

      v13 &= v13 - 1;
      _s10DarwinInit13NetworkConfigO03setD010retryLimit6config9interfaceSbSi_So12NSDictionaryCSgSStFZ_0(5, v23.super.isa, v20, v21);
      a1 = v20;
      v26 = v25;

      if (v26)
      {
        break;
      }

      v9 = v57;
LABEL_10:

      if (!v13)
      {
        goto LABEL_11;
      }
    }

    v27 = _s10DarwinInit13NetworkConfigO03getD09interface6configSo15CFDictionaryRefaSgSS_AItFZ_0(a1, v21, v23.super.isa);
    isa = v23.super.isa;
    if (!v23.super.isa)
    {
      isa = 0;
      if (kCFNull)
      {
        isa = kCFNull;
        v29 = kCFNull;
      }
    }

    v54 = a1;
    v55 = v2;
    if (v27)
    {
      v30 = 1;
    }

    else
    {
      v30 = kCFNull == 0;
    }

    if (v30)
    {
      v31 = v27;
    }

    else
    {
      v31 = kCFNull;
      v27 = 0;
    }

    v32 = v23.super.isa;
    v33 = v27;
    a1 = CFEqual(isa, v31);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!a1)
    {

      v9 = v57;
      v2 = v55;
      goto LABEL_10;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v59[0] = v53;
    v35 = v54;
    v36 = sub_100013364(v54, v58);
    v38 = v53[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      break;
    }

    a1 = v37;
    if (v53[3] < v41)
    {
      sub_100182348(v41, isUniquelyReferenced_nonNull_native);
      v36 = sub_100013364(v54, v58);
      if ((a1 & 1) != (v42 & 1))
      {
        goto LABEL_53;
      }

LABEL_35:
      if (a1)
      {
        goto LABEL_36;
      }

      goto LABEL_38;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_35;
    }

    v44 = v36;
    sub_10018420C();
    v36 = v44;
    v35 = v54;
    if (a1)
    {
LABEL_36:
      v43 = v36;

      v53 = *&v59[0];
      *(*(*&v59[0] + 56) + 8 * v43) = v56;

      goto LABEL_40;
    }

LABEL_38:
    v45 = v35;
    v46 = *&v59[0];
    *(*&v59[0] + 8 * (v36 >> 6) + 64) |= 1 << v36;
    v47 = (v46[6] + 16 * v36);
    *v47 = v45;
    v47[1] = v58;
    *(v46[7] + 8 * v36) = v56;

    v48 = v46[2];
    v40 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v40)
    {
      goto LABEL_52;
    }

    v53 = v46;
    v46[2] = v49;
LABEL_40:
    v9 = v57;
    v2 = v55;
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall Config.apply(narrative:)(Swift::OpaquePointer narrative)
{
  rawValue = narrative._rawValue;
  v62 = type metadata accessor for NarrativeCertXPCClientError();
  v1 = *(v62 - 8);
  v2 = __chkstk_darwin(v62);
  v61[3] = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v61[6] = v61 - v5;
  v6 = __chkstk_darwin(v4);
  v8 = v61 - v7;
  __chkstk_darwin(v6);
  v61[9] = v61 - v9;
  v64 = type metadata accessor for NarrativeXPCClient();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
LABEL_39:
    swift_once();
  }

  v61[8] = v8;
  v12 = type metadata accessor for Logger();
  v69 = sub_1000270B4(v12, qword_1004B00F8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Applying narrative identities configuration...", v15, 2u);
  }

  v66 = v11;
  NarrativeXPCClient.init()();
  v65 = sub_100186EE8(_swiftEmptyArrayStorage);
  v16 = rawValue + 64;
  v17 = 1 << rawValue[32];
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(rawValue + 8);
  v67 = (v17 + 63) >> 6;
  v61[5] = v1 + 32;
  v61[7] = v1 + 16;
  v61[4] = v1 + 8;

  v8 = 0;
  v1 = 0;
  *&v20 = 136315394;
  v68 = v20;
  for (i = v16; ; v16 = i)
  {
    while (1)
    {
      if (!v19)
      {
        while (1)
        {
          v21 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v21 >= v67)
          {
            (*(v63 + 8))(v66, v64);

            v60 = v65;
            goto LABEL_43;
          }

          v19 = *&v16[8 * v21];
          ++v8;
          if (v19)
          {
            v8 = v21;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_12:
      v22 = __clz(__rbit64(v19)) | (v8 << 6);
      v23 = (*(rawValue + 6) + 16 * v22);
      v24 = v23[1];
      v25 = *(*(rawValue + 7) + 8 * v22);
      v19 &= v19 - 1;
      v71 = *v23;
      v76[0] = v71;
      v76[1] = v24;
      v74 = 45;
      v75 = 0xE100000000000000;
      sub_10000B080();

      v73 = v25 & 0x1FFFFFFFFFFFFFFFLL;

      v26 = StringProtocol.components<A>(separatedBy:)();
      v27 = v26;
      if (v26[2] == 2)
      {
        v28 = v26[4];
        v29 = v26[5];
        v30 = v26[6];
        v11 = v26[7];

        v31._countAndFlagsBits = v28;
        v31._object = v29;
        v32._countAndFlagsBits = v30;
        v32._object = v11;
        LOBYTE(v28) = isNarrativeCertSupported(domain:identityType:)(v31, v32);

        if (v28)
        {
          v11 = v27[4];

          NarrativeDomain.init(rawValue:)();
          if ((v33 & 1) == 0)
          {
            break;
          }
        }
      }

LABEL_16:

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v76[0] = swift_slowAlloc();
        *v36 = v68;
        v37 = sub_1000026C0(v71, v24, v76);

        *(v36 + 4) = v37;
        *(v36 + 12) = 2080;
        v38._countAndFlagsBits = 45;
        v38._object = 0xE100000000000000;
        v39 = formatSupportedNarrativeIdentities(separator:)(v38);
        v11 = sub_1000026C0(v39._countAndFlagsBits, v39._object, v76);

        *(v36 + 14) = v11;
        _os_log_impl(&_mh_execute_header, v34, v35, "Narrative Identity %s is not supported. Supported Identities are %s", v36, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

LABEL_20:

      v16 = i;
    }

    v11 = v27[6];

    NarrativeIdentityType.init(rawValue:)();
    if (v40)
    {
      goto LABEL_16;
    }

    if (v25 >> 61 == 5)
    {

      sub_1002F5B58(v41);

      v11 = &protocol witness table for String;
      v42.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v76[0] = 0;
        static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    NarrativeXPCClient.ConfigureIdentity(narrativeDomain:narrativeIdentityType:options:)();

    v43 = v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v43;
    v45 = sub_100013364(v71, v24);
    v47 = *(v43 + 16);
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    if (v49)
    {
      break;
    }

    v51 = v46;
    if (*(v43 + 24) >= v50)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = v45;
        sub_10018420C();
        v45 = v11;
      }
    }

    else
    {
      sub_100182348(v50, isUniquelyReferenced_nonNull_native);
      v45 = sub_100013364(v71, v24);
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_42;
      }
    }

    if (v51)
    {
      v53 = v45;

      v65 = v76[0];
      v54 = *(v76[0] + 56);
      v11 = *(v54 + 8 * v53);
      *(v54 + 8 * v53) = v25;

      goto LABEL_20;
    }

    v55 = v76[0];
    *(v76[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
    v56 = (v55[6] + 16 * v45);
    *v56 = v71;
    v56[1] = v24;
    *(v55[7] + 8 * v45) = v25;

    v57 = v55[2];
    v49 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v49)
    {
      goto LABEL_41;
    }

    v65 = v55;
    v55[2] = v58;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  v60 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_43:
  result.value._rawValue = v60;
  result.is_nil = v59;
  return result;
}

uint64_t Config.apply(volumes:)(uint64_t a1)
{
  v1[11] = a1;
  sub_1000039E8(&qword_1004A6D30);
  v1[12] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_1000039E8(&qword_1004ABB90);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_10032FF7C, 0, 0);
}

uint64_t sub_10032FF7C()
{
  v1 = *(v0 + 88);
  v2 = _s10DarwinInit6VolumeC4listSDySSACGyFZ_0();
  v3 = *(v1 + 32);
  *(v0 + 392) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  *(v0 + 208) = &_swiftEmptyDictionarySingleton;
  *(v0 + 216) = v2;
  *(v0 + 192) = v2;
  *(v0 + 200) = &_swiftEmptyDictionarySingleton;

  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 88);
LABEL_8:
    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
    v13 = *(v0 + 136);
    v14 = *(v0 + 144);
    v15 = (v6 - 1) & v6;
    v16 = __clz(__rbit64(v6)) | (v7 << 6);
    v17 = (*(v8 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    (*(v14 + 16))(v11, *(v8 + 56) + *(v14 + 72) * v16, v13);
    v20 = sub_1000039E8(&qword_1004ABB98);
    v21 = *(v20 + 48);
    *v12 = v19;
    *(v12 + 1) = v18;
    (*(v14 + 32))(&v12[v21], v11, v13);
    (*(*(v20 - 8) + 56))(v12, 0, 1, v20);

    v10 = v7;
  }

  else
  {
    v9 = 0;
    v10 = ((63 - v5) >> 6) - 1;
    while (v10 != v9)
    {
      v7 = v9 + 1;
      v8 = *(v0 + 88);
      v6 = *(v8 + 8 * v9++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v40 = *(v0 + 176);
    v41 = sub_1000039E8(&qword_1004ABB98);
    (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
    v15 = 0;
  }

  *(v0 + 224) = v15;
  *(v0 + 232) = v10;
  v22 = *(v0 + 184);
  sub_10003E154(*(v0 + 176), v22, &qword_1004ABB90);
  v23 = sub_1000039E8(&qword_1004ABB98);
  if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
  {
    v24 = *(v0 + 216);

    v25 = *(v24 + 32);
    *(v0 + 393) = v25;
    v26 = -1;
    v27 = -1 << v25;
    if (-(-1 << v25) < 64)
    {
      v26 = ~(-1 << -v27);
    }

    v28 = v26 & *(v24 + 64);

    if (v28)
    {
      v29 = 0;
      v30 = *(v0 + 216);
LABEL_21:
      *(v0 + 352) = v28;
      *(v0 + 360) = v29;
      v43 = *(*(v30 + 56) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
      *(v0 + 368) = v43;
      v44 = *(*v43 + 152);

      v44(v45);
      type metadata accessor for CacheVolumeKeyManager(0);
      v46 = swift_allocObject();
      v47 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword;
      *(v46 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword) = 0;
      v48 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_keysCacheRootDirectory;
      if (qword_1004A9F10 != -1)
      {
        swift_once();
      }

      v50 = *(v0 + 112);
      v49 = *(v0 + 120);
      v51 = *(v0 + 104);
      v52 = type metadata accessor for FilePath();
      v53 = sub_1000270B4(v52, kCacheVolumeKeyCacheRootDirectory);
      (*(*(v52 - 8) + 16))(v46 + v48, v53, v52);
      (*(v50 + 32))(v46 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_uuid, v49, v51);
      *(v46 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek) = xmmword_1003780A0;
      *(v46 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek) = xmmword_1003780A0;
      swift_beginAccess();
      v54 = *(v46 + v47);
      *(v46 + v47) = 0;

      (*(*v43 + 104))(v46);
      v59 = (*(*v43 + 192) + **(*v43 + 192));
      v55 = swift_task_alloc();
      *(v0 + 376) = v55;
      *v55 = v0;
      v55[1] = sub_100332C68;

      return v59();
    }

    else
    {
      v42 = 0;
      v30 = *(v0 + 216);
      while (((63 - v27) >> 6) - 1 != v42)
      {
        v29 = v42 + 1;
        v28 = *(v30 + 8 * v42++ + 72);
        if (v28)
        {
          goto LABEL_21;
        }
      }

      v56 = *(v0 + 208);

      v57 = *(v0 + 208);
      if (!*(v56 + 16))
      {

        v57 = 0;
      }

      v58 = *(v0 + 8);

      return v58(v57);
    }
  }

  else
  {
    v31 = *(v0 + 184);
    v32 = *(v0 + 160);
    v33 = *(v0 + 136);
    v34 = *(v0 + 144);
    *(v0 + 240) = *v31;
    *(v0 + 248) = *(v31 + 1);
    v35 = *(v23 + 48);
    v36 = *(v34 + 32);
    *(v0 + 256) = v36;
    *(v0 + 264) = (v34 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v36(v32, &v31[v35], v33);
    v37 = swift_task_alloc();
    *(v0 + 272) = v37;
    *v37 = v0;
    v37[1] = sub_1003306D4;
    v38 = *(v0 + 160);

    return sub_10030873C(v38);
  }
}

uint64_t sub_1003306D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = v2;

  if (v2)
  {
    v5 = sub_1003318A0;
  }

  else
  {
    v5 = sub_100330818;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100330818()
{
  v147 = v0;
  if (!*(*(v0 + 216) + 16) || (v1 = sub_100013364(*(v0 + 240), *(v0 + 248)), (v2 & 1) == 0))
  {
    v24 = *(v0 + 288);
    v25 = *(v0 + 296);
    v26 = *(v0 + 280);
    v28 = *(v0 + 240);
    v27 = *(v0 + 248);
    type metadata accessor for Volume();
    swift_allocObject();

    sub_1000318C0(v26, v24);
    v29 = Volume.init(createVolumeNamed:secret:)(v28, v27, v26, v24);
    if (v25)
    {
      if (qword_1004A9F20 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_63;
    }

    v42 = v29;
    v43 = *(v0 + 216);
    v44 = *(v0 + 192);
    goto LABEL_13;
  }

  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(**(*(*(v0 + 216) + 56) + 8 * v1) + 152);
  v144 = swift_retain_n();
  v5();
  type metadata accessor for CacheVolumeKeyManager(0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword;
  *(v6 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword) = 0;
  v8 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_keysCacheRootDirectory;
  sub_1000318C0(v4, v3);
  if (qword_1004A9F10 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 280);
  v9 = *(v0 + 288);
  v11 = *(v0 + 128);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v14 = type metadata accessor for FilePath();
  v15 = sub_1000270B4(v14, kCacheVolumeKeyCacheRootDirectory);
  (*(*(v14 - 8) + 16))(v6 + v8, v15, v14);
  (*(v12 + 16))(v6 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_uuid, v11, v13);
  *(v6 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek) = xmmword_1003780A0;
  *(v6 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek) = xmmword_1003780A0;
  v16 = objc_allocWithZone(LACSSecurePassword);
  sub_1000318C0(v10, v9);
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 72) = 0;
  v18 = [v16 initWithData:isa error:v0 + 72];

  v19 = *(v0 + 72);
  if (!v18)
  {
    v55 = *(v0 + 280);
    v54 = *(v0 + 288);
    v56 = *(v0 + 128);
    v58 = *(v0 + 104);
    v57 = *(v0 + 112);
    v59 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100031928(v55, v54);
    sub_100031928(v55, v54);

    (*(v57 + 8))(v56, v58);
    goto LABEL_20;
  }

  v20 = *(v0 + 296);
  sub_100031928(*(v0 + 280), *(v0 + 288));
  swift_beginAccess();
  v21 = *(v6 + v7);
  *(v6 + v7) = v18;

  sub_100343AA0();
  v23 = *(v0 + 280);
  v22 = *(v0 + 288);
  if (!v20)
  {
    v42 = v144;
    v123 = *(v0 + 240);
    v124 = *(v0 + 248);
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
    sub_100031928(v23, v22);
    (*(*v144 + 104))(v6);

    v125 = sub_100013364(v123, v124);
    v127 = v126;

    if (v127)
    {
      v128 = (v0 + 192);
      v129 = *(v0 + 192);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 80) = v129;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v128 = (v0 + 80);
        sub_100184380();
      }

      v44 = *v128;

      sub_10033DC18(v125, v44);

      v43 = v44;
    }

    else
    {

      v43 = *(v0 + 216);
      v44 = *(v0 + 192);
    }

LABEL_13:
    *(v0 + 320) = v43;
    *(v0 + 328) = v42;
    *(v0 + 304) = v42;
    *(v0 + 312) = v44;
    v45 = *(*v42 + 184);

    v141 = (v45 + *v45);
    v46 = swift_task_alloc();
    *(v0 + 336) = v46;
    *v46 = v0;
    v46[1] = sub_1003321C4;

    return v141();
  }

  (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
  sub_100031928(v23, v22);

LABEL_20:
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_1000270B4(v60, qword_1004B00F8);

  swift_errorRetain();
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();

  v63 = os_log_type_enabled(v61, v62);
  v139 = *(v0 + 280);
  v142 = *(v0 + 288);
  v64 = *(v0 + 248);
  if (v63)
  {
    v65 = *(v0 + 240);
    v134 = *(v0 + 144);
    v135 = *(v0 + 136);
    v137 = *(v0 + 160);
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v146 = v68;
    *v66 = 136315394;
    v69 = sub_1000026C0(v65, v64, &v146);

    *(v66 + 4) = v69;
    *(v66 + 12) = 2112;
    swift_errorRetain();
    v70 = _swift_stdlib_bridgeErrorToNSError();
    *(v66 + 14) = v70;
    *v67 = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "Unable to initialize CacheVolumeKeyManager to mount volume %s: %@", v66, 0x16u);
    sub_100013F2C(v67, &qword_1004AA050);

    sub_100003C3C(v68);

    sub_100031928(v139, v142);
    (*(v134 + 8))(v137, v135);
  }

  else
  {
    v71 = *(v0 + 160);
    v72 = v61;
    v74 = *(v0 + 136);
    v73 = *(v0 + 144);

    sub_100031928(v139, v142);

    (*(v73 + 8))(v71, v74);
  }

  v51 = *(v0 + 224);
  for (i = *(v0 + 232); !v51; i = *(v0 + 232))
  {
    v75 = ((1 << *(v0 + 392)) + 63) >> 6;
    if (v75 <= (i + 1))
    {
      v76 = i + 1;
    }

    else
    {
      v76 = ((1 << *(v0 + 392)) + 63) >> 6;
    }

    v77 = v76 - 1;
    while (1)
    {
      v78 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v78 >= v75)
      {
        v107 = *(v0 + 176);
        v108 = sub_1000039E8(&qword_1004ABB98);
        (*(*(v108 - 8) + 56))(v107, 1, 1, v108);
        v83 = 0;
        goto LABEL_35;
      }

      v53 = *(v0 + 88);
      v51 = *(v53 + 8 * v78 + 64);
      ++i;
      if (v51)
      {
        i = v78;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_63:
    swift_once();
LABEL_10:
    v30 = type metadata accessor for Logger();
    sub_1000270B4(v30, qword_1004B00F8);

    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 248);
    if (v33)
    {
      v35 = *(v0 + 240);
      v36 = *(v0 + 144);
      v140 = *(v0 + 136);
      v145 = *(v0 + 160);
      v136 = *(v0 + 280);
      v138 = *(v0 + 288);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v146 = v39;
      *v37 = 136315394;
      v40 = sub_1000026C0(v35, v34, &v146);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2112;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v41;
      *v38 = v41;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to create new volume %s: %@", v37, 0x16u);
      sub_100013F2C(v38, &qword_1004AA050);

      sub_100003C3C(v39);

      sub_100031928(v136, v138);
      (*(v36 + 8))(v145, v140);
    }

    else
    {
      v48 = *(v0 + 160);
      v50 = *(v0 + 136);
      v49 = *(v0 + 144);
      sub_100031928(*(v0 + 280), *(v0 + 288));

      (*(v49 + 8))(v48, v50);
    }

    v51 = *(v0 + 224);
  }

  v53 = *(v0 + 88);
LABEL_34:
  v79 = *(v0 + 168);
  v80 = *(v0 + 176);
  v81 = *(v0 + 136);
  v82 = *(v0 + 144);
  v83 = (v51 - 1) & v51;
  v84 = __clz(__rbit64(v51)) | (i << 6);
  v85 = (*(v53 + 48) + 16 * v84);
  v87 = *v85;
  v86 = v85[1];
  (*(v82 + 16))(v79, *(v53 + 56) + *(v82 + 72) * v84, v81);
  v88 = sub_1000039E8(&qword_1004ABB98);
  v89 = *(v88 + 48);
  *v80 = v87;
  *(v80 + 1) = v86;
  (*(v82 + 32))(&v80[v89], v79, v81);
  (*(*(v88 - 8) + 56))(v80, 0, 1, v88);

  v77 = i;
LABEL_35:
  *(v0 + 224) = v83;
  *(v0 + 232) = v77;
  v90 = *(v0 + 184);
  sub_10003E154(*(v0 + 176), v90, &qword_1004ABB90);
  v91 = sub_1000039E8(&qword_1004ABB98);
  if ((*(*(v91 - 8) + 48))(v90, 1, v91) == 1)
  {
    v92 = *(v0 + 216);

    v93 = *(v92 + 32);
    *(v0 + 393) = v93;
    v94 = -1;
    v95 = -1 << v93;
    if (-(-1 << v93) < 64)
    {
      v94 = ~(-1 << -v95);
    }

    v96 = v94 & *(v92 + 64);

    if (v96)
    {
      v97 = 0;
      v98 = *(v0 + 216);
LABEL_47:
      *(v0 + 352) = v96;
      *(v0 + 360) = v97;
      v110 = *(*(v98 + 56) + ((v97 << 9) | (8 * __clz(__rbit64(v96)))));
      *(v0 + 368) = v110;
      v111 = *(*v110 + 152);

      v111(v112);
      type metadata accessor for CacheVolumeKeyManager(0);
      v113 = swift_allocObject();
      v114 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword;
      *(v113 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword) = 0;
      v115 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_keysCacheRootDirectory;
      if (qword_1004A9F10 != -1)
      {
        swift_once();
      }

      v117 = *(v0 + 112);
      v116 = *(v0 + 120);
      v118 = *(v0 + 104);
      v119 = type metadata accessor for FilePath();
      v120 = sub_1000270B4(v119, kCacheVolumeKeyCacheRootDirectory);
      (*(*(v119 - 8) + 16))(v113 + v115, v120, v119);
      (*(v117 + 32))(v113 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_uuid, v116, v118);
      *(v113 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek) = xmmword_1003780A0;
      *(v113 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek) = xmmword_1003780A0;
      swift_beginAccess();
      v121 = *(v113 + v114);
      *(v113 + v114) = 0;

      (*(*v110 + 104))(v113);
      v143 = (*(*v110 + 192) + **(*v110 + 192));
      v122 = swift_task_alloc();
      *(v0 + 376) = v122;
      *v122 = v0;
      v122[1] = sub_100332C68;

      return v143();
    }

    else
    {
      v109 = 0;
      v98 = *(v0 + 216);
      while (((63 - v95) >> 6) - 1 != v109)
      {
        v97 = v109 + 1;
        v96 = *(v98 + 8 * v109++ + 72);
        if (v96)
        {
          goto LABEL_47;
        }
      }

      v131 = *(v0 + 208);

      v132 = *(v0 + 208);
      if (!*(v131 + 16))
      {

        v132 = 0;
      }

      v133 = *(v0 + 8);

      return v133(v132);
    }
  }

  else
  {
    v99 = *(v0 + 184);
    v100 = *(v0 + 160);
    v101 = *(v0 + 136);
    v102 = *(v0 + 144);
    *(v0 + 240) = *v99;
    *(v0 + 248) = *(v99 + 1);
    v103 = *(v91 + 48);
    v104 = *(v102 + 32);
    *(v0 + 256) = v104;
    *(v0 + 264) = (v102 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v104(v100, &v99[v103], v101);
    v105 = swift_task_alloc();
    *(v0 + 272) = v105;
    *v105 = v0;
    v105[1] = sub_1003306D4;
    v106 = *(v0 + 160);

    return sub_10030873C(v106);
  }
}

uint64_t sub_1003318A0()
{
  v75 = v0;
  if (qword_1004A9F20 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    sub_1000270B4(v1, qword_1004B00F8);

    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 248);
    if (!v4)
    {
      break;
    }

    v6 = *(v0 + 240);
    v7 = *(v0 + 144);
    v71 = *(v0 + 136);
    v73 = *(v0 + 160);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v74 = v10;
    *v8 = 136315394;
    v11 = sub_1000026C0(v6, v5, &v74);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch secret for volume %s: %@", v8, 0x16u);
    sub_100013F2C(v9, &qword_1004AA050);

    sub_100003C3C(v10);

    (*(v7 + 8))(v73, v71);
    v13 = *(v0 + 224);
    v14 = *(v0 + 232);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_6:
    v19 = ((1 << *(v0 + 392)) + 63) >> 6;
    if (v19 <= (v14 + 1))
    {
      v20 = v14 + 1;
    }

    else
    {
      v20 = ((1 << *(v0 + 392)) + 63) >> 6;
    }

    v21 = v20 - 1;
    while (1)
    {
      v22 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        v52 = *(v0 + 176);
        v53 = sub_1000039E8(&qword_1004ABB98);
        (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
        v27 = 0;
        goto LABEL_15;
      }

      v15 = *(v0 + 88);
      v13 = *(v15 + 8 * v22 + 64);
      ++v14;
      if (v13)
      {
        v14 = v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  v16 = *(v0 + 160);
  v17 = *(v0 + 136);
  v18 = *(v0 + 144);

  (*(v18 + 8))(v16, v17);
  v13 = *(v0 + 224);
  v14 = *(v0 + 232);
  if (!v13)
  {
    goto LABEL_6;
  }

LABEL_4:
  v15 = *(v0 + 88);
LABEL_14:
  v23 = *(v0 + 168);
  v24 = *(v0 + 176);
  v25 = *(v0 + 136);
  v26 = *(v0 + 144);
  v27 = (v13 - 1) & v13;
  v28 = __clz(__rbit64(v13)) | (v14 << 6);
  v29 = (*(v15 + 48) + 16 * v28);
  v31 = *v29;
  v30 = v29[1];
  (*(v26 + 16))(v23, *(v15 + 56) + *(v26 + 72) * v28, v25);
  v32 = sub_1000039E8(&qword_1004ABB98);
  v33 = *(v32 + 48);
  *v24 = v31;
  *(v24 + 1) = v30;
  (*(v26 + 32))(&v24[v33], v23, v25);
  (*(*(v32 - 8) + 56))(v24, 0, 1, v32);

  v21 = v14;
LABEL_15:
  *(v0 + 224) = v27;
  *(v0 + 232) = v21;
  v34 = *(v0 + 184);
  sub_10003E154(*(v0 + 176), v34, &qword_1004ABB90);
  v35 = sub_1000039E8(&qword_1004ABB98);
  if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
  {
    v36 = *(v0 + 216);

    v37 = *(v36 + 32);
    *(v0 + 393) = v37;
    v38 = -1;
    v39 = -1 << v37;
    if (-(-1 << v37) < 64)
    {
      v38 = ~(-1 << -v39);
    }

    v40 = v38 & *(v36 + 64);

    if (v40)
    {
      v41 = 0;
      v42 = *(v0 + 216);
LABEL_27:
      *(v0 + 352) = v40;
      *(v0 + 360) = v41;
      v55 = *(*(v42 + 56) + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));
      *(v0 + 368) = v55;
      v56 = *(*v55 + 152);

      v56(v57);
      type metadata accessor for CacheVolumeKeyManager(0);
      v58 = swift_allocObject();
      v59 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword;
      *(v58 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword) = 0;
      v60 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_keysCacheRootDirectory;
      if (qword_1004A9F10 != -1)
      {
        swift_once();
      }

      v62 = *(v0 + 112);
      v61 = *(v0 + 120);
      v63 = *(v0 + 104);
      v64 = type metadata accessor for FilePath();
      v65 = sub_1000270B4(v64, kCacheVolumeKeyCacheRootDirectory);
      (*(*(v64 - 8) + 16))(v58 + v60, v65, v64);
      (*(v62 + 32))(v58 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_uuid, v61, v63);
      *(v58 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek) = xmmword_1003780A0;
      *(v58 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek) = xmmword_1003780A0;
      swift_beginAccess();
      v66 = *(v58 + v59);
      *(v58 + v59) = 0;

      (*(*v55 + 104))(v58);
      v72 = (*(*v55 + 192) + **(*v55 + 192));
      v67 = swift_task_alloc();
      *(v0 + 376) = v67;
      *v67 = v0;
      v67[1] = sub_100332C68;

      return v72();
    }

    else
    {
      v54 = 0;
      v42 = *(v0 + 216);
      while (((63 - v39) >> 6) - 1 != v54)
      {
        v41 = v54 + 1;
        v40 = *(v42 + 8 * v54++ + 72);
        if (v40)
        {
          goto LABEL_27;
        }
      }

      v68 = *(v0 + 208);

      v69 = *(v0 + 208);
      if (!*(v68 + 16))
      {

        v69 = 0;
      }

      v70 = *(v0 + 8);

      return v70(v69);
    }
  }

  else
  {
    v43 = *(v0 + 184);
    v44 = *(v0 + 160);
    v45 = *(v0 + 136);
    v46 = *(v0 + 144);
    *(v0 + 240) = *v43;
    *(v0 + 248) = *(v43 + 1);
    v47 = *(v35 + 48);
    v48 = *(v46 + 32);
    *(v0 + 256) = v48;
    *(v0 + 264) = (v46 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v48(v44, &v43[v47], v45);
    v49 = swift_task_alloc();
    *(v0 + 272) = v49;
    *v49 = v0;
    v49[1] = sub_1003306D4;
    v50 = *(v0 + 160);

    return sub_10030873C(v50);
  }
}

uint64_t sub_1003321C4()
{
  *(*v1 + 344) = v0;

  if (v0)
  {

    v2 = sub_1003331D8;
  }

  else
  {
    v2 = sub_10033233C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10033233C()
{
  if (*(*(v0 + 88) + 16) && (v1 = sub_100013364(*(v0 + 240), *(v0 + 248)), (v2 & 1) != 0))
  {
    v4 = *(v0 + 280);
    v3 = *(v0 + 288);
    v6 = *(v0 + 240);
    v5 = *(v0 + 248);
    v7 = *(v0 + 200);
    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    (*(v10 + 16))(v9, *(*(v0 + 88) + 56) + *(v10 + 72) * v1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10018393C(v9, v6, v5, isUniquelyReferenced_nonNull_native);
    sub_100031928(v4, v3);

    (*(v10 + 8))(v8, v11);

    v13 = v7;
  }

  else
  {
    v14 = sub_100013364(*(v0 + 240), *(v0 + 248));
    if (v15)
    {
      v16 = v14;
      v17 = (v0 + 200);
      v18 = *(v0 + 200);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 64) = v18;
      if (!v19)
      {
        v17 = (v0 + 64);
        sub_100184720();
      }

      v7 = *v17;
      v20 = *(v0 + 256);
      v21 = *(v0 + 136);
      v22 = *(v0 + 144);
      v23 = *(v0 + 96);

      v20(v23, v7[7] + *(v22 + 72) * v16, v21);
      sub_10033DDE0(v16, v7, &type metadata accessor for URL);
      v24 = 0;
      v84 = v7;
    }

    else
    {
      v7 = *(v0 + 200);
      v84 = *(v0 + 208);
      v24 = 1;
    }

    v26 = *(v0 + 280);
    v25 = *(v0 + 288);
    v27 = *(v0 + 160);
    v8 = *(v0 + 136);
    v28 = *(v0 + 144);
    v29 = *(v0 + 96);
    (*(v28 + 56))(v29, v24, 1, v8);
    sub_100031928(v26, v25);

    sub_100013F2C(v29, &qword_1004A6D30);
    (*(v28 + 8))(v27, v8);

    v13 = v84;
  }

  v31 = *(v0 + 312);
  v30 = *(v0 + 320);
  v32 = *(v0 + 224);
  v33 = *(v0 + 232);
  *(v0 + 208) = v13;
  *(v0 + 216) = v30;
  *(v0 + 192) = v31;
  *(v0 + 200) = v7;
  if (!v32)
  {
    v35 = ((1 << *(v0 + 392)) + 63) >> 6;
    if (v35 <= v33 + 1)
    {
      v36 = v33 + 1;
    }

    else
    {
      v36 = ((1 << *(v0 + 392)) + 63) >> 6;
    }

    v37 = v36 - 1;
    while (1)
    {
      v38 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v38 >= v35)
      {
        v68 = *(v0 + 176);
        v69 = sub_1000039E8(&qword_1004ABB98);
        (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
        v43 = 0;
        goto LABEL_21;
      }

      v34 = *(v0 + 88);
      v32 = *(v34 + 8 * v38 + 64);
      ++v33;
      if (v32)
      {
        v33 = v38;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_43:
    swift_once();
LABEL_34:
    v74 = *(v0 + 112);
    v73 = *(v0 + 120);
    v75 = *(v0 + 104);
    v76 = type metadata accessor for FilePath();
    v77 = sub_1000270B4(v76, kCacheVolumeKeyCacheRootDirectory);
    (*(*(v76 - 8) + 16))(v37 + v8, v77, v76);
    (*(v74 + 32))(v37 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_uuid, v73, v75);
    *(v37 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek) = xmmword_1003780A0;
    *(v37 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek) = xmmword_1003780A0;
    swift_beginAccess();
    v78 = *(v37 + v33);
    *(v37 + v33) = 0;

    (*(*v7 + 104))(v37);
    v83 = (*(*v7 + 192) + **(*v7 + 192));
    v79 = swift_task_alloc();
    *(v0 + 376) = v79;
    *v79 = v0;
    v79[1] = sub_100332C68;

    return v83();
  }

  v34 = *(v0 + 88);
LABEL_20:
  v39 = *(v0 + 168);
  v40 = *(v0 + 176);
  v41 = *(v0 + 136);
  v42 = *(v0 + 144);
  v43 = (v32 - 1) & v32;
  v44 = __clz(__rbit64(v32)) | (v33 << 6);
  v45 = (*(v34 + 48) + 16 * v44);
  v47 = *v45;
  v46 = v45[1];
  (*(v42 + 16))(v39, *(v34 + 56) + *(v42 + 72) * v44, v41);
  v48 = sub_1000039E8(&qword_1004ABB98);
  v49 = *(v48 + 48);
  *v40 = v47;
  *(v40 + 1) = v46;
  (*(v42 + 32))(&v40[v49], v39, v41);
  (*(*(v48 - 8) + 56))(v40, 0, 1, v48);

  v37 = v33;
LABEL_21:
  *(v0 + 224) = v43;
  *(v0 + 232) = v37;
  v50 = *(v0 + 184);
  sub_10003E154(*(v0 + 176), v50, &qword_1004ABB90);
  v51 = sub_1000039E8(&qword_1004ABB98);
  if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
  {
    v52 = *(v0 + 216);

    v53 = *(v52 + 32);
    *(v0 + 393) = v53;
    v54 = -1;
    v55 = -1 << v53;
    if (-(-1 << v53) < 64)
    {
      v54 = ~(-1 << -v55);
    }

    v56 = v54 & *(v52 + 64);

    if (v56)
    {
      v57 = 0;
      v58 = *(v0 + 216);
LABEL_33:
      *(v0 + 352) = v56;
      *(v0 + 360) = v57;
      v7 = *(*(v58 + 56) + ((v57 << 9) | (8 * __clz(__rbit64(v56)))));
      *(v0 + 368) = v7;
      v71 = *(*v7 + 152);

      v71(v72);
      type metadata accessor for CacheVolumeKeyManager(0);
      v37 = swift_allocObject();
      v33 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword;
      *(v37 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword) = 0;
      v8 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_keysCacheRootDirectory;
      if (qword_1004A9F10 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_43;
    }

    v70 = 0;
    v58 = *(v0 + 216);
    while (((63 - v55) >> 6) - 1 != v70)
    {
      v57 = v70 + 1;
      v56 = *(v58 + 8 * v70++ + 72);
      if (v56)
      {
        goto LABEL_33;
      }
    }

    v80 = *(v0 + 208);

    v81 = *(v0 + 208);
    if (!*(v80 + 16))
    {

      v81 = 0;
    }

    v82 = *(v0 + 8);

    return v82(v81);
  }

  else
  {
    v59 = *(v0 + 184);
    v60 = *(v0 + 160);
    v61 = *(v0 + 136);
    v62 = *(v0 + 144);
    *(v0 + 240) = *v59;
    *(v0 + 248) = *(v59 + 1);
    v63 = *(v51 + 48);
    v64 = *(v62 + 32);
    *(v0 + 256) = v64;
    *(v0 + 264) = (v62 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v64(v60, &v59[v63], v61);
    v65 = swift_task_alloc();
    *(v0 + 272) = v65;
    *v65 = v0;
    v65[1] = sub_1003306D4;
    v66 = *(v0 + 160);

    return sub_10030873C(v66);
  }
}

uint64_t sub_100332C68()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_100333B4C;
  }

  else
  {
    v2 = sub_100332DA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100332DA8()
{

  v5 = *(v2 + 360);
  v6 = (*(v2 + 352) - 1) & *(v2 + 352);
  if (v6)
  {
    v1 = *(v2 + 216);
LABEL_7:
    *(v2 + 352) = v6;
    *(v2 + 360) = v5;
    v1 = *(v1[7] + ((v5 << 9) | (8 * __clz(__rbit64(v6)))));
    *(v2 + 368) = v1;
    v8 = *(*v1 + 152);

    v8(v9);
    type metadata accessor for CacheVolumeKeyManager(0);
    v0 = swift_allocObject();
    v3 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword;
    *(v0 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword) = 0;
    v4 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_keysCacheRootDirectory;
    if (qword_1004A9F10 != -1)
    {
LABEL_17:
      swift_once();
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 104);
    v13 = type metadata accessor for FilePath();
    v14 = sub_1000270B4(v13, kCacheVolumeKeyCacheRootDirectory);
    (*(*(v13 - 8) + 16))(v0 + v4, v14, v13);
    (*(v11 + 32))(v0 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_uuid, v10, v12);
    *(v0 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek) = xmmword_1003780A0;
    *(v0 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek) = xmmword_1003780A0;
    swift_beginAccess();
    v15 = *(v0 + v3);
    *(v0 + v3) = 0;

    (*(*v1 + 104))(v0);
    v21 = (*(*v1 + 192) + **(*v1 + 192));
    v16 = swift_task_alloc();
    *(v2 + 376) = v16;
    *v16 = v2;
    v16[1] = sub_100332C68;

    return v21();
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      v1 = *(v2 + 216);
      if (v7 >= (((1 << *(v2 + 393)) + 63) >> 6))
      {
        break;
      }

      v6 = v1[v7 + 8];
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }

    v18 = *(v2 + 208);

    v19 = *(v2 + 208);
    if (!*(v18 + 16))
    {

      v19 = 0;
    }

    v20 = *(v2 + 8);

    return v20(v19);
  }
}

uint64_t sub_1003331D8()
{
  v82 = v0;
  if (qword_1004A9F20 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    sub_1000270B4(v1, qword_1004B00F8);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 328);
    if (v4)
    {
      v75 = *(v0 + 280);
      v76 = *(v0 + 288);
      v77 = *(v0 + 144);
      v78 = *(v0 + 136);
      v80 = *(v0 + 160);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v81 = v8;
      *v6 = 136315394;
      v9 = *(*v5 + 200);

      v11 = v9(v10);
      v13 = v12;

      v14 = sub_1000026C0(v11, v13, &v81);

      *(v6 + 4) = v14;
      *(v6 + 12) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v15;
      *v7 = v15;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unable to mount volume %s: %@", v6, 0x16u);
      sub_100013F2C(v7, &qword_1004AA050);

      sub_100003C3C(v8);

      sub_100031928(v75, v76);
      (*(v77 + 8))(v80, v78);
    }

    else
    {
      v16 = *(v0 + 160);
      v17 = *(v0 + 136);
      v18 = *(v0 + 144);
      sub_100031928(*(v0 + 280), *(v0 + 288));

      (*(v18 + 8))(v16, v17);
    }

    v19 = *(v0 + 312);
    v20 = *(v0 + 224);
    v21 = *(v0 + 232);
    *(v0 + 216) = *(v0 + 320);
    *(v0 + 192) = v19;
    if (v20)
    {
      break;
    }

    v23 = ((1 << *(v0 + 392)) + 63) >> 6;
    if (v23 <= (v21 + 1))
    {
      v24 = v21 + 1;
    }

    else
    {
      v24 = ((1 << *(v0 + 392)) + 63) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v26 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        v56 = *(v0 + 176);
        v57 = sub_1000039E8(&qword_1004ABB98);
        (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
        v31 = 0;
        goto LABEL_16;
      }

      v22 = *(v0 + 88);
      v20 = *(v22 + 8 * v26 + 64);
      ++v21;
      if (v20)
      {
        v21 = v26;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  v22 = *(v0 + 88);
LABEL_15:
  v27 = *(v0 + 168);
  v28 = *(v0 + 176);
  v29 = *(v0 + 136);
  v30 = *(v0 + 144);
  v31 = (v20 - 1) & v20;
  v32 = __clz(__rbit64(v20)) | (v21 << 6);
  v33 = (*(v22 + 48) + 16 * v32);
  v35 = *v33;
  v34 = v33[1];
  (*(v30 + 16))(v27, *(v22 + 56) + *(v30 + 72) * v32, v29);
  v36 = sub_1000039E8(&qword_1004ABB98);
  v37 = *(v36 + 48);
  *v28 = v35;
  *(v28 + 1) = v34;
  (*(v30 + 32))(&v28[v37], v27, v29);
  (*(*(v36 - 8) + 56))(v28, 0, 1, v36);

  v25 = v21;
LABEL_16:
  *(v0 + 224) = v31;
  *(v0 + 232) = v25;
  v38 = *(v0 + 184);
  sub_10003E154(*(v0 + 176), v38, &qword_1004ABB90);
  v39 = sub_1000039E8(&qword_1004ABB98);
  if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
  {
    v40 = *(v0 + 216);

    v41 = *(v40 + 32);
    *(v0 + 393) = v41;
    v42 = -1;
    v43 = -1 << v41;
    if (-(-1 << v41) < 64)
    {
      v42 = ~(-1 << -v43);
    }

    v44 = v42 & *(v40 + 64);

    if (v44)
    {
      v45 = 0;
      v46 = *(v0 + 216);
LABEL_28:
      *(v0 + 352) = v44;
      *(v0 + 360) = v45;
      v59 = *(*(v46 + 56) + ((v45 << 9) | (8 * __clz(__rbit64(v44)))));
      *(v0 + 368) = v59;
      v60 = *(*v59 + 152);

      v60(v61);
      type metadata accessor for CacheVolumeKeyManager(0);
      v62 = swift_allocObject();
      v63 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword;
      *(v62 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword) = 0;
      v64 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_keysCacheRootDirectory;
      if (qword_1004A9F10 != -1)
      {
        swift_once();
      }

      v66 = *(v0 + 112);
      v65 = *(v0 + 120);
      v67 = *(v0 + 104);
      v68 = type metadata accessor for FilePath();
      v69 = sub_1000270B4(v68, kCacheVolumeKeyCacheRootDirectory);
      (*(*(v68 - 8) + 16))(v62 + v64, v69, v68);
      (*(v66 + 32))(v62 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_uuid, v65, v67);
      *(v62 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek) = xmmword_1003780A0;
      *(v62 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek) = xmmword_1003780A0;
      swift_beginAccess();
      v70 = *(v62 + v63);
      *(v62 + v63) = 0;

      (*(*v59 + 104))(v62);
      v79 = (*(*v59 + 192) + **(*v59 + 192));
      v71 = swift_task_alloc();
      *(v0 + 376) = v71;
      *v71 = v0;
      v71[1] = sub_100332C68;

      return v79();
    }

    else
    {
      v58 = 0;
      v46 = *(v0 + 216);
      while (((63 - v43) >> 6) - 1 != v58)
      {
        v45 = v58 + 1;
        v44 = *(v46 + 8 * v58++ + 72);
        if (v44)
        {
          goto LABEL_28;
        }
      }

      v72 = *(v0 + 208);

      v73 = *(v0 + 208);
      if (!*(v72 + 16))
      {

        v73 = 0;
      }

      v74 = *(v0 + 8);

      return v74(v73);
    }
  }

  else
  {
    v47 = *(v0 + 184);
    v48 = *(v0 + 160);
    v49 = *(v0 + 136);
    v50 = *(v0 + 144);
    *(v0 + 240) = *v47;
    *(v0 + 248) = *(v47 + 1);
    v51 = *(v39 + 48);
    v52 = *(v50 + 32);
    *(v0 + 256) = v52;
    *(v0 + 264) = (v50 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v52(v48, &v47[v51], v49);
    v53 = swift_task_alloc();
    *(v0 + 272) = v53;
    *v53 = v0;
    v53[1] = sub_1003306D4;
    v54 = *(v0 + 160);

    return sub_10030873C(v54);
  }
}

uint64_t sub_100333B4C()
{
  v39 = v0;
  if (qword_1004A9F20 != -1)
  {
LABEL_22:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 368);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38 = v8;
    *v6 = 136315394;
    v9 = *(*v5 + 200);

    v11 = v9(v10);
    v13 = v12;

    v14 = sub_1000026C0(v11, v13, &v38);

    *(v6 + 4) = v14;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v15;
    *v7 = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to destroy volume %s due to: %@", v6, 0x16u);
    sub_100013F2C(v7, &qword_1004AA050);

    sub_100003C3C(v8);
  }

  else
  {
  }

  v16 = *(v0 + 360);
  v17 = (*(v0 + 352) - 1) & *(v0 + 352);
  if (v17)
  {
    v18 = *(v0 + 216);
LABEL_11:
    *(v0 + 352) = v17;
    *(v0 + 360) = v16;
    v20 = *(*(v18 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v17)))));
    *(v0 + 368) = v20;
    v21 = *(*v20 + 152);

    v21(v22);
    type metadata accessor for CacheVolumeKeyManager(0);
    v23 = swift_allocObject();
    v24 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword;
    *(v23 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword) = 0;
    v25 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_keysCacheRootDirectory;
    if (qword_1004A9F10 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 112);
    v26 = *(v0 + 120);
    v28 = *(v0 + 104);
    v29 = type metadata accessor for FilePath();
    v30 = sub_1000270B4(v29, kCacheVolumeKeyCacheRootDirectory);
    (*(*(v29 - 8) + 16))(v23 + v25, v30, v29);
    (*(v27 + 32))(v23 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_uuid, v26, v28);
    *(v23 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek) = xmmword_1003780A0;
    *(v23 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek) = xmmword_1003780A0;
    swift_beginAccess();
    v31 = *(v23 + v24);
    *(v23 + v24) = 0;

    (*(*v20 + 104))(v23);
    v37 = (*(*v20 + 192) + **(*v20 + 192));
    v32 = swift_task_alloc();
    *(v0 + 376) = v32;
    *v32 = v0;
    v32[1] = sub_100332C68;

    return v37();
  }

  else
  {
    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      v18 = *(v0 + 216);
      if (v19 >= (((1 << *(v0 + 393)) + 63) >> 6))
      {
        break;
      }

      v17 = *(v18 + 8 * v19 + 64);
      ++v16;
      if (v17)
      {
        v16 = v19;
        goto LABEL_11;
      }
    }

    v34 = *(v0 + 208);

    v35 = *(v0 + 208);
    if (!*(v34 + 16))
    {

      v35 = 0;
    }

    v36 = *(v0 + 8);

    return v36(v35);
  }
}