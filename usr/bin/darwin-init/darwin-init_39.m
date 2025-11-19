uint64_t Either<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a5;
  v44 = a4;
  v46 = a6;
  v10 = type metadata accessor for Optional();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = __chkstk_darwin(v10);
  v41 = v32 - v12;
  v40 = *(a3 - 8);
  __chkstk_darwin(v11);
  v34 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v37 = *(v14 - 8);
  v38 = v14;
  v15 = __chkstk_darwin(v14);
  v43 = v32 - v16;
  v42 = *(a2 - 8);
  __chkstk_darwin(v15);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  v19 = type metadata accessor for Either();
  v45 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v32 - v20;
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v6)
  {
    v22 = a1;
  }

  else
  {
    v32[0] = v21;
    v32[1] = a3;
    v33 = a1;
    sub_10000E2A8(v47, v47[3]);
    v23 = v43;
    v24 = v48;
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v25 = v42;
    (*(v42 + 56))(v23, 0, 1, v24);
    v26 = *(v25 + 32);
    v27 = v18;
    v26(v18, v23, v24);
    v28 = v32[0];
    v26(v32[0], v27, v24);
    v30 = v45;
    v29 = v46;
    swift_storeEnumTagMultiPayload();
    sub_100003C3C(v47);
    (*(v30 + 32))(v29, v28, v19);
    v22 = v33;
  }

  return sub_100003C3C(v22);
}

uint64_t Either<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v26 = *(*(a2 + 24) - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v23 = *(v9 - 8);
  v10 = __chkstk_darwin(v5);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v10);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E2A8(v15, v15[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  (*(v14 + 16))(v17, v28, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v26;
    v18 = v27;
    (*(v26 + 32))(v7, v17, v27);
    sub_100003BEC(v29, v30);
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    (*(v19 + 8))(v7, v18);
  }

  else
  {
    v20 = v23;
    (*(v23 + 32))(v12, v17, v9);
    sub_100003BEC(v29, v30);
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    (*(v20 + 8))(v12, v9);
  }

  return sub_100003C3C(v29);
}

uint64_t Either<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a4;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v7);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v9, v17, v5);
    Hasher._combine(_:)(1uLL);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v12 + 32))(v15, v17, v11);
    Hasher._combine(_:)(0);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v12 + 8))(v15, v11);
  }
}

Swift::Int Either<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Either<>.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int sub_10030A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  Either<>.hash(into:)(v7, a2, v4, v5);
  return Hasher._finalize()();
}

uint64_t sub_10030A44C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10030A4C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_10030A5F0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

id NSError.rootError()()
{
  for (i = v0; ; i = v5)
  {
    v2 = _convertErrorToNSError(_:)();
    v3 = [v2 underlyingErrors];

    sub_1000039E8(&qword_1004AB0A0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v4 + 16))
    {
      break;
    }

    v5 = *(v4 + 32);
    swift_errorRetain();

    swift_errorRetain();
  }

  return i;
}

uint64_t DInitAEADecryptionParams.getDecryptionKey()@<X0>(unint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = String.hexadecimalASCIIBytes.getter(a1, a2);
  if (v4)
  {
    if (*(v4 + 2))
    {
      sub_1000039E8(&qword_1004A71E0);
      sub_10018EC94();
      SymmetricKey.init<A>(data:)();
      v5 = type metadata accessor for SymmetricKey();
      return (*(*(v5 - 8) + 56))(a3, 0, 1, v5);
    }
  }

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
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Invalid hex decryption key, could not convert to array of UInt8", v10, 2u);
  }

  v11 = type metadata accessor for SymmetricKey();
  v12 = *(*(v11 - 8) + 56);

  return v12(a3, 1, 1, v11);
}

DarwinInit::DInitAEADecryptionParams::CodingKeys_optional __swiftcall DInitAEADecryptionParams.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100489350, v2);

  if (v3 == 1)
  {
    v4.value = DarwinInit_DInitAEADecryptionParams_CodingKeys_aeaDecryptionKey;
  }

  else
  {
    v4.value = DarwinInit_DInitAEADecryptionParams_CodingKeys_unknownDefault;
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

uint64_t sub_10030AAC4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100489350, *a1);

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

uint64_t sub_10030AB24@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100489350, v3);

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

uint64_t sub_10030AB88(uint64_t a1)
{
  v2 = sub_10030B434();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030ABC4(uint64_t a1)
{
  v2 = sub_10030B434();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitAEADecryptionParams.init(from:)(void *a1)
{
  result = sub_10030B138(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10030AC2C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10030B138(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t DInitAEADecryptionParams.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1000039E8(&qword_1004B0958);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000E2A8(a1, a1[3]);
  sub_10030B434();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t static DInitAEADecryptionParams.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_10030AEB8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t DInitAEADecryptionParams.hash(into:)()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int DInitAEADecryptionParams.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10030B01C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10030B084()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10030B0D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10030B138(void *a1)
{
  v3 = sub_1000039E8(&qword_1004B0988);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000E2A8(a1, a1[3]);
  sub_10030B434();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100003C3C(a1);
  return v7;
}

uint64_t _s10DarwinInit24DInitAEADecryptionParamsV12getArchiveID10Foundation4DataVSgyF_0(unint64_t a1, unint64_t a2)
{
  v2 = String.hexadecimalASCIIBytes.getter(a1, a2);
  if (v2)
  {
    if (*(v2 + 2))
    {
      v3 = sub_10018E354(v2);

      return v3;
    }
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000270B4(v5, qword_1004B00F8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to convert archive identifier from String to Data", v8, 2u);
  }

  return 0;
}

unint64_t sub_10030B434()
{
  result = qword_1004B0960;
  if (!qword_1004B0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0960);
  }

  return result;
}

unint64_t sub_10030B48C()
{
  result = qword_1004B0968;
  if (!qword_1004B0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0968);
  }

  return result;
}

unint64_t sub_10030B4E4()
{
  result = qword_1004B0970;
  if (!qword_1004B0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0970);
  }

  return result;
}

unint64_t sub_10030B53C()
{
  result = qword_1004B0978;
  if (!qword_1004B0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0978);
  }

  return result;
}

unint64_t sub_10030B594()
{
  result = qword_1004B0980;
  if (!qword_1004B0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0980);
  }

  return result;
}

uint64_t DInitError.description.getter(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (!a4)
    {
      _StringGuts.grow(_:)(41);

      v14 = 0xD000000000000023;
      type metadata accessor for Config(0);
      v5._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v5);

      v6._countAndFlagsBits = 8236;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
      swift_getErrorValue();
      v7._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v7);

      return v14;
    }

    v14 = 0;
    if (a3)
    {
      _StringGuts.grow(_:)(32);
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      v11._object = 0x80000001004442A0;
      String.append(_:)(v11);
      v12._countAndFlagsBits = a2;
      v12._object = a3;
      String.append(_:)(v12);
      v8 = 8250;
      v9 = 0xE200000000000000;
    }

    else
    {
      _StringGuts.grow(_:)(27);
      v9 = 0x8000000100444280;
      v8 = 0xD000000000000019;
    }

LABEL_12:
    String.append(_:)(*&v8);
    sub_1000039E8(&qword_1004AB0A0);
    _print_unlocked<A, B>(_:_:)();
    return v14;
  }

  if (a4 == 2)
  {
    v14 = 0;
    _StringGuts.grow(_:)(17);
    v8 = 0x6620746F6F626552;
    v9 = 0xEF203A64656C6961;
    goto LABEL_12;
  }

  if (a3 | a2 | a1)
  {
    return 0x6E776F6474756853;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t sub_10030B890(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_10030B8AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10030B8F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10030B93C(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

DarwinInit::DInitUserOptions __swiftcall DInitUserOptions.init(username:uid:gid:)(Swift::String username, Swift::UInt32 uid, Swift::UInt32 gid)
{
  v3 = uid | (*&gid << 32);
  result.username = username;
  result.uid = v3;
  result.gid = HIDWORD(v3);
  return result;
}

uint64_t sub_10030B980@<X0>(uint64_t *a1@<X8>)
{
  result = _s10DarwinInit16DInitUserOptionsV8argumentACSgSS_tcfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unsigned __int8 *sub_10030B9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_100064CF0();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100083890();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10030BF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_100064CF0();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100083890();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10030C4CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10030C594(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_10030C594(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1000C34F8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1000C34F8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1000C34F8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t _s10DarwinInit16DInitUserOptionsV8argumentACSgSS_tcfC_0()
{
  sub_10000B080();
  v0 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  if (v0[2] != 3)
  {
    goto LABEL_11;
  }

  v1 = v0[8];
  v2 = v0[9];
  if (!((v2 ^ v1) >> 14))
  {
    goto LABEL_11;
  }

  v4 = v0[10];
  v3 = v0[11];
  result = sub_10030C4CC(v0[8], v0[9], v4, v3, 10);
  if ((result & 0x10000000000) != 0)
  {

    v6 = sub_10030BF44(v1, v2, v4, v3, 10);

    result = v6;
    if ((v6 & 0x100000000) != 0)
    {
      goto LABEL_11;
    }
  }

  else if ((result & 0x100000000) != 0)
  {
    goto LABEL_11;
  }

  if (v0[2] < 3uLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = v0[12];
  v8 = v0[13];
  if ((v8 ^ v7) >> 14)
  {
    v10 = v0[14];
    v9 = v0[15];
    result = sub_10030C4CC(v0[12], v0[13], v10, v9, 10);
    if ((result & 0x10000000000) != 0)
    {

      v11 = sub_10030BF44(v7, v8, v10, v9, 10);

      if ((v11 & 0x100000000) != 0)
      {
        goto LABEL_11;
      }
    }

    else if ((result & 0x100000000) != 0)
    {
      goto LABEL_11;
    }

    if (v0[2])
    {

      v12 = static String._fromSubstring(_:)();

      return v12;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_11:

  return 0;
}

char *Time.isSynchronized.unsafeMutableAddressor()
{
  if (qword_1004A9FA8 != -1)
  {
    swift_once();
  }

  return &static Time.isSynchronized;
}

uint64_t sub_10030CC40()
{
  result = sub_10030CC64();
  static Time.isSynchronized = result & 1;
  return result;
}

uint64_t sub_10030CC64()
{
  v0 = remote_device_copy_unique_of_type();
  if (v0)
  {
    v1 = v0;
    if (remote_device_get_state() == 2)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_1000270B4(v2, qword_1004B00F8);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Syncing time with remote device", v5, 2u);
      }

      v6 = remote_device_timesync();
      return v6;
    }
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000270B4(v8, qword_1004B00F8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Syncing time with timed", v11, 2u);
  }

  return shim_TMSetupTime();
}

uint64_t static Time.isSynchronized.getter()
{
  if (qword_1004A9FA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static Time.isSynchronized;
}

uint64_t static Time.isSynchronized.setter(char a1)
{
  if (qword_1004A9FA8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static Time.isSynchronized = a1 & 1;
  return result;
}

uint64_t (*static Time.isSynchronized.modify())()
{
  if (qword_1004A9FA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10030CFA4@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1004A9FA8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = static Time.isSynchronized;
  return result;
}

uint64_t sub_10030D024(char *a1)
{
  v1 = *a1;
  if (qword_1004A9FA8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static Time.isSynchronized = v1;
  return result;
}

uint64_t sub_10030D0B0()
{
  v0 = sub_1000039E8(&qword_1004AAD78);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000279B4(v3, static Print.configuration);
  sub_1000270B4(v3, static Print.configuration);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t Print.configuration.unsafeMutableAddressor()
{
  if (qword_1004A9FB0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_1000270B4(v0, static Print.configuration);
}

uint64_t static Print.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9FB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000270B4(v2, static Print.configuration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10030D318(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AB540);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_10026C6C4(a1, &v9 - v6);
  sub_10026C6C4(v7, v5);
  sub_1000039E8(&qword_1004AE988);
  Argument.wrappedValue.setter();
  return sub_1001C1C20(v7);
}

uint64_t Print.source.setter(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AB540);
  __chkstk_darwin(v2 - 8);
  sub_10026C6C4(a1, &v5 - v3);
  sub_1000039E8(&qword_1004AE988);
  Argument.wrappedValue.setter();
  return sub_1001C1C20(a1);
}

uint64_t (*Print.source.modify(uint64_t *a1))()
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
  sub_1000039E8(&qword_1004AE988);
  *(v3 + 32) = Argument.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Print.system.getter()
{
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  Flag.wrappedValue.getter();
  return v1;
}

uint64_t type metadata accessor for Print()
{
  result = qword_1004B0A10;
  if (!qword_1004B0A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10030D5D0@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  result = Flag.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10030D638()
{
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  return Flag.wrappedValue.setter();
}

uint64_t Print.system.setter()
{
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  return Flag.wrappedValue.setter();
}

uint64_t (*Print.system.modify(uint64_t *a1))()
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
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Print.unredacted.getter()
{
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  Flag.wrappedValue.getter();
  return v1;
}

uint64_t sub_10030D7E0@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  result = Flag.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10030D848()
{
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  return Flag.wrappedValue.setter();
}

uint64_t Print.unredacted.setter()
{
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  return Flag.wrappedValue.setter();
}

uint64_t (*Print.unredacted.modify(uint64_t *a1))()
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
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_100197120;
}

uint64_t Print.original.getter()
{
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  Flag.wrappedValue.getter();
  return v1;
}

uint64_t sub_10030D9F0@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  result = Flag.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10030DA58()
{
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  return Flag.wrappedValue.setter();
}

uint64_t Print.original.setter()
{
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  return Flag.wrappedValue.setter();
}

uint64_t (*Print.original.modify(uint64_t *a1))()
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
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Print.validate()()
{
  v0 = sub_1000039E8(&qword_1004AB540);
  __chkstk_darwin(v0 - 8);
  v2 = &v5[-v1];
  sub_1000039E8(&qword_1004AE988);
  Argument.wrappedValue.getter();
  v3 = type metadata accessor for DInitConfigSource();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_1001C1C20(v2);
  if (v4 == 1)
  {
    type metadata accessor for Print();
    sub_1000039E8(&qword_1004AE998);
    Flag.wrappedValue.getter();
    if ((v5[15] & 1) == 0)
    {
      type metadata accessor for ValidationError();
      sub_10030F858(&qword_1004AB958, &type metadata accessor for ValidationError);
      swift_allocError();
      ValidationError.init(_:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_10030DD6C()
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static RealComputer.shared;
  v0[11] = static RealComputer.shared;
  v0[5] = type metadata accessor for RealComputer();
  v0[6] = &protocol witness table for RealComputer;
  v0[2] = v1;
  swift_retain_n();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1001C08B8;

  return Print.run(on:)((v0 + 2));
}

uint64_t Print.run(on:)(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = type metadata accessor for Config(0);
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  sub_1000039E8(&qword_1004AB540);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_10030DF80, 0, 0);
}

uint64_t sub_10030DF80()
{
  sub_100003B20(*(v0 + 112), v0 + 24);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v0 + 16) = JSONDecoder.init()();
  *(v0 + 64) = xmmword_1003F69C0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = 1;
  *(v0 + 104) = 0;
  sub_1000039E8(&qword_1004AE988);
  Argument.wrappedValue.getter();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_10030E094;
  v2 = *(v0 + 152);

  return ConfigLoader.load(from:)(v2);
}

uint64_t sub_10030E094(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  sub_1001C1C20(*(v3 + 152));
  if (v1)
  {
    v5 = sub_10030E49C;
  }

  else
  {
    v5 = sub_10030E1D0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10030E1D0()
{
  v1 = *(v0 + 168);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 128);
    v4 = *(*(v0 + 136) + 80);
    sub_10030F25C(v1 + ((v4 + 32) & ~v4), v2, type metadata accessor for Config);
    if (*(v2 + *(v3 + 104)) && (ConfigOrigin.isSimple.getter() & 1) != 0)
    {

      type metadata accessor for Print();
      sub_1000039E8(&qword_1004AE998);
      Flag.wrappedValue.getter();
      v5 = *(v0 + 107);
      Flag.wrappedValue.getter();
      v6 = Config.jsonString(prettyPrinted:redacted:origin:)(1, (v5 & 1) == 0, *(v0 + 108));
      countAndFlagsBits = v6._countAndFlagsBits;
      object = v6._object;
      sub_10030F1FC(*(v0 + 144), type metadata accessor for Config);
      if (v9)
      {
        sub_1001C1C88(v0 + 16);
LABEL_9:

        v14 = *(v0 + 8);
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    sub_10030F1FC(*(v0 + 144), type metadata accessor for Config);
    v1 = *(v0 + 168);
  }

  v10 = *(v0 + 176);
  type metadata accessor for Print();
  sub_1000039E8(&qword_1004AE998);
  Flag.wrappedValue.getter();
  v11 = *(v0 + 105);
  Flag.wrappedValue.getter();
  v12 = Array<A>.jsonString(prettyPrinted:redacted:origin:)(1, (v11 & 1) == 0, *(v0 + 106), v1);
  if (v10)
  {
    sub_1001C1C88(v0 + 16);

    goto LABEL_9;
  }

  countAndFlagsBits = v12;
  object = v13;

LABEL_11:
  sub_1000039E8(&qword_1004AA990);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100376A40;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 32) = countAndFlagsBits;
  *(v15 + 40) = object;
  print(_:separator:terminator:)();

  sub_1001C1C88(v0 + 16);

  v14 = *(v0 + 8);
LABEL_12:

  return v14();
}

uint64_t sub_10030E49C()
{
  sub_1001C1C88(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030E510()
{
  v1 = 0x656372756F73;
  v2 = 0x7463616465726E75;
  if (*v0 != 2)
  {
    v2 = 0x6C616E696769726FLL;
  }

  if (*v0)
  {
    v1 = 0x6D6574737973;
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

uint64_t sub_10030E588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10030FD18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10030E5B0(uint64_t a1)
{
  v2 = sub_10030F1A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E5EC(uint64_t a1)
{
  v2 = sub_10030F1A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Print.init()()
{
  v0 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  ArgumentHelp.init(stringLiteral:)();
  v7 = type metadata accessor for ArgumentHelp();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  type metadata accessor for DInitConfigSource();
  sub_10030F858(&qword_1004AB548, type metadata accessor for DInitConfigSource);
  Argument.init<A>(help:completion:)();
  type metadata accessor for Print();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v8(v6, 0, 1, v7);
  Flag<A>.init(wrappedValue:name:help:)();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v8(v6, 0, 1, v7);
  Flag<A>.init(wrappedValue:name:help:)();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v8(v6, 0, 1, v7);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t Print.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v37 = a2;
  v45 = sub_1000039E8(&qword_1004AE998);
  v41 = *(v45 - 8);
  v2 = __chkstk_darwin(v45);
  v39 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v42 = &v37 - v5;
  __chkstk_darwin(v4);
  v44 = &v37 - v6;
  v49 = sub_1000039E8(&qword_1004AE988);
  v43 = *(v49 - 1);
  __chkstk_darwin(v49);
  v48 = &v37 - v7;
  v8 = sub_1000039E8(&qword_1004B0990);
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v52 = &v37 - v9;
  v10 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - v12;
  v14 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v14 - 8);
  v16 = &v37 - v15;
  v17 = type metadata accessor for Print();
  v18 = (v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ArgumentHelp.init(stringLiteral:)();
  v21 = type metadata accessor for ArgumentHelp();
  v22 = *(*(v21 - 8) + 56);
  v22(v16, 0, 1, v21);
  v23 = type metadata accessor for CompletionKind();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  type metadata accessor for DInitConfigSource();
  sub_10030F858(&qword_1004AB548, type metadata accessor for DInitConfigSource);
  Argument.init<A>(help:completion:)();
  v24 = v18[7];
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v22(v16, 0, 1, v21);
  v40 = v24;
  Flag<A>.init(wrappedValue:name:help:)();
  v25 = v18[8];
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v22(v16, 0, 1, v21);
  v38 = v25;
  Flag<A>.init(wrappedValue:name:help:)();
  v26 = v18[9];
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v27 = v21;
  v28 = v50;
  v22(v16, 0, 1, v27);
  Flag<A>.init(wrappedValue:name:help:)();
  sub_10000E2A8(v28, v28[3]);
  sub_10030F1A8();
  v29 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v29)
  {
    v51 = v26;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v56 = 0;
    sub_10000E720(&qword_1004AEA48, &qword_1004AE988);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v30 + 40))(v20, v48, v49);
    v55 = 1;
    sub_10000E720(&qword_1004AEA50, &qword_1004AE998);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v49 = *(v41 + 40);
    v49(&v20[v40], v31, v32);
    v54 = 2;
    v33 = v42;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v49(&v20[v38], v33, v32);
    v53 = 3;
    v35 = v47;
    v36 = v52;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v46 + 8))(v36, v35);
    v49(&v20[v51], v39, v32);
    sub_10030F25C(v20, v37, type metadata accessor for Print);
  }

  sub_100003C3C(v28);
  return sub_10030F1FC(v20, type metadata accessor for Print);
}

unint64_t sub_10030F1A8()
{
  result = qword_1004B0998;
  if (!qword_1004B0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0998);
  }

  return result;
}

uint64_t sub_10030F1FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10030F25C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t default argument 0 of Print.init(source:system:unredacted:original:)()
{
  v0 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  ArgumentHelp.init(stringLiteral:)();
  v6 = type metadata accessor for ArgumentHelp();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = type metadata accessor for CompletionKind();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  type metadata accessor for DInitConfigSource();
  sub_10030F858(&qword_1004AB548, type metadata accessor for DInitConfigSource);
  return Argument.init<A>(help:completion:)();
}

uint64_t Print.init(source:system:unredacted:original:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v14[2] = a2;
  v14[3] = a3;
  v6 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  v9 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000039E8(&qword_1004AE988);
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  type metadata accessor for Print();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v11 = type metadata accessor for ArgumentHelp();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  Flag<A>.init(wrappedValue:name:help:)();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v12(v8, 0, 1, v11);
  Flag<A>.init(wrappedValue:name:help:)();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v12(v8, 0, 1, v11);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t sub_10030F73C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001FE0;

  return Print.run()();
}

uint64_t sub_10030F858(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10030F944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000039E8(&qword_1004AE988);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000039E8(&qword_1004AE998);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10030FA60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000039E8(&qword_1004AE988);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000039E8(&qword_1004AE998);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10030FB74()
{
  sub_1002AB66C();
  if (v0 <= 0x3F)
  {
    sub_10028E120();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10030FC14()
{
  result = qword_1004B0A50;
  if (!qword_1004B0A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0A50);
  }

  return result;
}

unint64_t sub_10030FC6C()
{
  result = qword_1004B0A58;
  if (!qword_1004B0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0A58);
  }

  return result;
}

unint64_t sub_10030FCC4()
{
  result = qword_1004B0A60;
  if (!qword_1004B0A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0A60);
  }

  return result;
}

uint64_t sub_10030FD18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463616465726E75 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

DarwinInit::JSONPointer __swiftcall JSONPointer.init(codingKeys:)(Swift::OpaquePointer codingKeys)
{
  v3 = v1;
  v4 = *(codingKeys._rawValue + 2);
  if (v4)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_1003110E8(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = codingKeys._rawValue + 32;
    do
    {
      sub_100003B20(v6, v14);
      sub_10000E2A8(v14, v14[3]);
      v7 = dispatch thunk of CodingKey.stringValue.getter();
      v9 = v8;
      sub_100003C3C(v14);
      v15 = v5;
      v11 = v5[2];
      v10 = v5[3];
      if (v11 >= v10 >> 1)
      {
        sub_1003110E8((v10 > 1), v11 + 1, 1);
        v5 = v15;
      }

      v5[2] = v11 + 1;
      v12 = &v5[2 * v11];
      v12[4] = v7;
      v12[5] = v9;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  *v3 = v5;
  return result;
}

Swift::Void __swiftcall JSONPointer.append(_:)(DarwinInit::JSONPointer::Component a1)
{
  v3 = *a1.unescapedValue._countAndFlagsBits;
  v2 = *(a1.unescapedValue._countAndFlagsBits + 8);
  v4 = *v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10018D6A0(0, *(v4 + 2) + 1, 1, v4);
    *v1 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_10018D6A0((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[16 * v7];
  *(v8 + 4) = v3;
  *(v8 + 5) = v2;
  *v1 = v4;
}

DarwinInit::JSONPointer __swiftcall JSONPointer.appending(_:)(DarwinInit::JSONPointer::Component a1)
{
  v3 = v1;
  v5 = *a1.unescapedValue._countAndFlagsBits;
  v4 = *(a1.unescapedValue._countAndFlagsBits + 8);
  rawValue = *v2;

  result.components._rawValue = swift_isUniquelyReferenced_nonNull_native();
  *v3 = rawValue;
  if ((result.components._rawValue & 1) == 0)
  {
    result.components._rawValue = sub_10018D6A0(0, rawValue[2] + 1, 1, rawValue);
    rawValue = result.components._rawValue;
    *v3 = result.components._rawValue;
  }

  v9 = rawValue[2];
  v8 = rawValue[3];
  if (v9 >= v8 >> 1)
  {
    result.components._rawValue = sub_10018D6A0((v8 > 1), v9 + 1, 1, rawValue);
    rawValue = result.components._rawValue;
  }

  rawValue[2] = v9 + 1;
  v10 = &rawValue[2 * v9];
  *(v10 + 4) = v5;
  *(v10 + 5) = v4;
  *v3 = rawValue;
  return result;
}

uint64_t JSONPointer.rawValue.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = 47;
  if (!v2)
  {
    v3 = 0;
  }

  v16 = v3;
  if (v2)
  {
    sub_10000DFF4(0, v2, 0);
    sub_10000B080();
    v4 = v1 + 40;
    do
    {
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v7 = v6;

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_10000DFF4((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = v5;
      v10[5] = v7;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  sub_1000039E8(&qword_1004A6B48);
  sub_10004AF7C();
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  return v16;
}

uint64_t JSONPointer.Component.jsonEscaped.getter()
{
  sub_10000B080();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v0;
}

DarwinInit::JSONPointer_optional __swiftcall JSONPointer.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = sub_100083848(rawValue._countAndFlagsBits, rawValue._object);
  if (!v6)
  {
    goto LABEL_13;
  }

  if (v5 == 47 && v6 == 0xE100000000000000)
  {

    goto LABEL_6;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
LABEL_13:

    v20 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v20 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v10 = 0;
LABEL_19:
      *v4 = v10;
      goto LABEL_21;
    }

LABEL_18:
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

LABEL_6:
  sub_10004D354(1uLL, countAndFlagsBits, object);

  sub_1001C7C54();
  v8 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  v9 = *(v8 + 16);
  if (!v9)
  {

    goto LABEL_18;
  }

  sub_1003110E8(0, v9, 0);
  v10 = _swiftEmptyArrayStorage;
  sub_10000B080();
  v11 = v8 + 56;
  while (1)
  {
    v21 = v9;

    v12 = StringProtocol.contains<A>(_:)();
    if (v12)
    {
      break;
    }

    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v16 = v15;

    v18 = _swiftEmptyArrayStorage[2];
    v17 = _swiftEmptyArrayStorage[3];
    if (v18 >= v17 >> 1)
    {
      sub_1003110E8((v17 > 1), v18 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v18 + 1;
    v19 = &_swiftEmptyArrayStorage[2 * v18];
    v19[4] = v14;
    v19[5] = v16;
    v11 += 32;
    --v9;
    if (v21 == 1)
    {

      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  result.value.components._rawValue = v12;
  result.is_nil = v13;
  return result;
}

uint64_t JSONPointer.Component.init<A>(jsonEscaped:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10000B080();
  result = StringProtocol.contains<A>(_:)();
  if (result)
  {
    __break(1u);
  }

  else
  {
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v9 = v8;
    (*(*(a2 - 8) + 8))(a1, a2);

    *a3 = v7;
    a3[1] = v9;
  }

  return result;
}

uint64_t sub_100310870@<X0>(uint64_t *a1@<X8>)
{
  result = JSONPointer.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static JSONPointer.== infix(_:_:)()
{
  v0 = JSONPointer.rawValue.getter();
  v2 = v1;
  if (v0 == JSONPointer.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t JSONPointer.hash(into:)()
{
  JSONPointer.rawValue.getter();
  String.hash(into:)();
}

Swift::Int sub_100310A48()
{
  Hasher.init(_seed:)();
  JSONPointer.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100310AB0()
{
  Hasher.init(_seed:)();
  JSONPointer.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static JSONPointer.Component.index(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = dispatch thunk of CustomStringConvertible.description.getter();
    *a2 = result;
    a2[1] = v3;
  }

  return result;
}

uint64_t JSONPointer.Component.index.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = HIBYTE(v1) & 0xF;
  v4 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v38 = *v0;
  v39 = v1;
  v40 = 0;
  v41 = v5;

  v6 = String.Iterator.next()();
  if (v6.value._object)
  {
    countAndFlagsBits = v6.value._countAndFlagsBits;
    object = v6.value._object;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (countAndFlagsBits == 48 && object == 0xE100000000000000)
      {
        goto LABEL_6;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {

        goto LABEL_51;
      }

      if (countAndFlagsBits != 57 || object != 0xE100000000000000)
      {
LABEL_6:
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          goto LABEL_51;
        }
      }

      else
      {
      }

      v10 = String.Iterator.next()();
      countAndFlagsBits = v10.value._countAndFlagsBits;
      object = v10.value._object;
      if (!v10.value._object)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

LABEL_15:

  v12 = v2 == 48 && v1 == 0xE100000000000000;
  if (v12 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0) || (result = sub_100083848(v2, v1), !v13))
  {
    if (!v5)
    {
      return 0;
    }

LABEL_25:
    if ((v1 & 0x1000000000000000) != 0)
    {
LABEL_94:

      v16 = sub_100083C88(v2, v1, 10);
      v34 = v36;

LABEL_86:
      if (v34)
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    if ((v1 & 0x2000000000000000) != 0)
    {
      v38 = v2;
      v39 = v1 & 0xFFFFFFFFFFFFFFLL;
      if (v2 == 43)
      {
        if (v3)
        {
          v15 = v3 - 1;
          if (v3 != 1)
          {
            v16 = 0;
            v26 = &v38 + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v26;
              if (!--v15)
              {
                goto LABEL_85;
              }
            }
          }

          goto LABEL_84;
        }

LABEL_99:
        __break(1u);
        return result;
      }

      if (v2 != 45)
      {
        if (v3)
        {
          v16 = 0;
          v31 = &v38;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            v31 = (v31 + 1);
            if (!--v3)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_84;
      }

      if (v3)
      {
        v15 = v3 - 1;
        if (v3 != 1)
        {
          v16 = 0;
          v20 = &v38 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v15)
            {
              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        result = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v4 = v37;
      }

      v14 = *result;
      if (v14 == 43)
      {
        if (v4 >= 1)
        {
          v15 = v4 - 1;
          if (v4 != 1)
          {
            v16 = 0;
            if (result)
            {
              v23 = (result + 1);
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  goto LABEL_84;
                }

                v25 = 10 * v16;
                if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                {
                  goto LABEL_84;
                }

                v16 = v25 + v24;
                if (__OFADD__(v25, v24))
                {
                  goto LABEL_84;
                }

                ++v23;
                if (!--v15)
                {
                  goto LABEL_85;
                }
              }
            }

            goto LABEL_83;
          }

          goto LABEL_84;
        }

        goto LABEL_98;
      }

      if (v14 != 45)
      {
        if (v4)
        {
          v16 = 0;
          if (result)
          {
            while (1)
            {
              v29 = *result - 48;
              if (v29 > 9)
              {
                goto LABEL_84;
              }

              v30 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_84;
              }

              v16 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_84;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_83;
              }
            }
          }

          goto LABEL_83;
        }

LABEL_84:
        v16 = 0;
        LOBYTE(v15) = 1;
        goto LABEL_85;
      }

      if (v4 >= 1)
      {
        v15 = v4 - 1;
        if (v4 != 1)
        {
          v16 = 0;
          if (result)
          {
            v17 = (result + 1);
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_84;
              }

              v19 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_84;
              }

              v16 = v19 - v18;
              if (__OFSUB__(v19, v18))
              {
                goto LABEL_84;
              }

              ++v17;
              if (!--v15)
              {
                goto LABEL_85;
              }
            }
          }

LABEL_83:
          LOBYTE(v15) = 0;
LABEL_85:
          v34 = v15;
          goto LABEL_86;
        }

        goto LABEL_84;
      }

      __break(1u);
    }

    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (result == 48 && v13 == 0xE100000000000000)
  {
LABEL_51:

    return 0;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((v35 & 1) == 0 && v5)
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t static JSONPointer.Component.name(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

unint64_t JSONPointer.debugDescription.getter()
{
  _StringGuts.grow(_:)(27);

  v0._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000018;
}

char *sub_1003110C8(char *a1, int64_t a2, char a3)
{
  result = sub_100311328(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003110E8(char *a1, int64_t a2, char a3)
{
  result = sub_10031142C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100311108(size_t a1, int64_t a2, char a3)
{
  result = sub_100311538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100311128(size_t a1, int64_t a2, char a3)
{
  result = sub_100311A98(a1, a2, a3, *v3, &qword_1004AA978, &unk_1003F4050, type metadata accessor for CryptexManager.CryptexConfig);
  *v3 = result;
  return result;
}

void *sub_10031116C(void *a1, int64_t a2, char a3)
{
  result = sub_100311750(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10031118C(size_t a1, int64_t a2, char a3)
{
  result = sub_100311A98(a1, a2, a3, *v3, &qword_1004AA9B8, &unk_1003F4088, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

char *sub_1003111D0(char *a1, int64_t a2, char a3)
{
  result = sub_100311884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003111F0(char *a1, int64_t a2, char a3)
{
  result = sub_100311978(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100311210(size_t a1, int64_t a2, char a3)
{
  result = sub_100311A98(a1, a2, a3, *v3, &qword_1004ABA80, &unk_1003F7C30, type metadata accessor for DInitCryptexConfig);
  *v3 = result;
  return result;
}

size_t sub_100311254(size_t a1, int64_t a2, char a3)
{
  result = sub_100311A98(a1, a2, a3, *v3, &qword_1004B0A98, &unk_100408030, type metadata accessor for DInitPackageConfig);
  *v3 = result;
  return result;
}

char *sub_100311298(char *a1, int64_t a2, char a3)
{
  result = sub_100311C74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003112B8(char *a1, int64_t a2, char a3)
{
  result = sub_100311D9C(a1, a2, a3, *v3, &qword_1004B0A88);
  *v3 = result;
  return result;
}

char *sub_1003112F0(char *a1, int64_t a2, char a3)
{
  result = sub_100311D9C(a1, a2, a3, *v3, &qword_1004B0A80);
  *v3 = result;
  return result;
}

char *sub_100311328(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AAA48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10031142C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA980);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100311538(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000039E8(&qword_1004B0AA0);
  v10 = *(sub_1000039E8(&qword_1004AD1A0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_1000039E8(&qword_1004AD1A0) - 8);
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

void *sub_100311750(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000039E8(&qword_1004B0AA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000039E8(&qword_1004ABD38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100311884(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004B0A78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100311978(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA998);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100311A98(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000039E8(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100311C74(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004B0A90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100311D9C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1000039E8(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

unsigned __int8 *sub_100311EBC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100083890();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unint64_t sub_100312444()
{
  result = qword_1004B0A68;
  if (!qword_1004B0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0A68);
  }

  return result;
}

uint64_t sub_100312498(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1003124E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10031253C()
{
  result = qword_1004B0A70;
  if (!qword_1004B0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0A70);
  }

  return result;
}

uint64_t SCError.context.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t SCError.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SCErrorString(SHIDWORD(a3));
  v3 = String.init(cString:)();
  v5 = v4;
  _StringGuts.grow(_:)(20);

  v6._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x7272454353203A60;
  v7._object = 0xEB0000000020726FLL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = v3;
  v10._object = v5;
  String.append(_:)(v10);

  return 96;
}

void UTF8String.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
LABEL_26:
    Hasher._combine(_:)(0xFFu);
    return;
  }

  v4 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  v5 = 4 << v4;
  v6 = 15;
  while (1)
  {
    v7 = v6 & 0xC;
    v8 = v6;
    if (v7 == v5)
    {
      v8 = sub_1000C34F8(v6, v1, v2);
    }

    v9 = v8 >> 16;
    if (v8 >> 16 >= v3)
    {
      break;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      v11 = String.UTF8View._foreignSubscript(position:)();
      if (v7 != v5)
      {
        goto LABEL_20;
      }
    }

    else if ((v2 & 0x2000000000000000) != 0)
    {
      v12[0] = v1;
      v12[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      v11 = *(v12 + v9);
      if (v7 != v5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v10 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v1 & 0x1000000000000000) == 0)
      {
        v10 = _StringObject.sharedUTF8.getter();
      }

      v11 = *(v10 + v9);
      if (v7 != v5)
      {
LABEL_20:
        if ((v2 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_21;
      }
    }

    v6 = sub_1000C34F8(v6, v1, v2);
    if ((v2 & 0x1000000000000000) == 0)
    {
LABEL_8:
      v6 = (v6 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_9;
    }

LABEL_21:
    if (v3 <= v6 >> 16)
    {
      goto LABEL_28;
    }

    v6 = String.UTF8View._foreignIndex(after:)();
LABEL_9:
    Hasher._combine(_:)(v11);
    if (4 * v3 == v6 >> 14)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

Swift::Int UTF8String.hashValue.getter()
{
  Hasher.init(_seed:)();
  UTF8String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100312930()
{
  Hasher.init(_seed:)();
  UTF8String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_10031297C()
{
  result = qword_1004B0AB0;
  if (!qword_1004B0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0AB0);
  }

  return result;
}

unint64_t sub_1003129D4()
{
  result = qword_1004B0AB8;
  if (!qword_1004B0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0AB8);
  }

  return result;
}

unint64_t sub_100312A2C()
{
  result = qword_1004B0AC0;
  if (!qword_1004B0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0AC0);
  }

  return result;
}

uint64_t sub_100312A90(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100320588(&qword_1004AAB48, &type metadata accessor for SHA256Digest);
  v6 = dispatch thunk of Sequence.underestimatedCount.getter();
  v34 = _swiftEmptyArrayStorage;
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

uint64_t sub_100312E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t CacheDownloadInformation.authentication.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CacheDownloadInformation(0) + 20);

  return sub_1002EA78C(v3, a1);
}

__n128 CacheDownloadInformation.init(url:authentication:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for CacheDownloadInformation(0) + 20);
  result = *a2;
  v9 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(a2 + 32);
  return result;
}

uint64_t CacheEntryFilesystemInfo.contentModificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CacheEntryFilesystemInfo(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CacheEntryFilesystemInfo.init(url:totalFileAllocatedSize:contentModificationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for CacheEntryFilesystemInfo(0);
  *(a4 + *(v9 + 20)) = a2;
  v10 = *(v9 + 24);
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t Cache.cacheRootDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for Cache.cacheRootDirectory;
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Cache.cacheDataDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *Cache.init(at:delegate:maxTotalSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v25 = a3;
  v26 = v7;
  v8 = type metadata accessor for FilePath();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v23 - v13;
  v15 = direct field offset for Cache.cacheRootDirectory;
  v16 = *(v9 + 16);
  v27 = a1;
  v16(&v4[direct field offset for Cache.cacheRootDirectory], a1, v8);
  *&v4[qword_1004B0AC8] = v25 & ~(v25 >> 63);
  v17 = *(*v4 + 112);
  v18 = *(v26 + 80);
  v24 = *(v18 - 8);
  v19 = *(v24 + 16);
  v26 = a2;
  v19(&v4[v17], a2, v18);
  v16(v12, &v4[v15], v8);
  FilePath.appending(_:)();
  v20 = *(*v4 + 120);
  v25 = v9;
  v21 = *(v9 + 32);
  v21(&v4[v20], v14, v8);
  v16(v12, &v4[v15], v8);
  FilePath.appending(_:)();
  v21(&v4[*(*v4 + 128)], v14, v8);
  v23[5] = v16;
  v16(v12, &v4[v15], v8);
  FilePath.appending(_:)();
  v21(&v4[*(*v4 + 136)], v14, v8);
  FilePath.createDirectory(permissions:intermediateDirectories:)(0x1C0u, 1);
  (*(v24 + 8))(v26, v18);
  (*(v25 + 8))(v27, v8);
  return v4;
}

uint64_t static Cache.generateCacheEntryName(forEntryBackedByResourceAt:)()
{
  v0 = type metadata accessor for SHA256();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SHA256Digest();
  v4 = *(v14 - 8);
  __chkstk_darwin(v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = URL.dataRepresentation.getter();
  v9 = v8;
  sub_100320588(&unk_1004A7820, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_1000318C0(v7, v9);
  sub_100093720(v7, v9);
  sub_100031928(v7, v9);
  dispatch thunk of HashFunction.finalize()();
  sub_100031928(v7, v9);
  (*(v1 + 8))(v3, v0);
  v10 = sub_100312A90(v6);
  (*(v4 + 8))(v6, v14);
  v15 = v10;
  sub_1000039E8(&qword_1004A6B48);
  sub_10004AF7C();
  v11 = BidirectionalCollection<>.joined(separator:)();

  return v11;
}

uint64_t Cache.getTemporaryDirectoryPathForEntry(withName:)()
{
  v1 = type metadata accessor for FilePath();
  __chkstk_darwin(v1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + *(*v0 + 128));

  return FilePath.appending(_:)();
}

uint64_t Cache.getDownloadDirectoryPathForEntry(withName:)()
{
  v1 = type metadata accessor for FilePath();
  __chkstk_darwin(v1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + *(*v0 + 136));

  return FilePath.appending(_:)();
}

uint64_t Cache.getDataDirectoryPathForEntry(withName:)()
{
  v1 = type metadata accessor for FilePath();
  __chkstk_darwin(v1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + *(*v0 + 120));

  return FilePath.appending(_:)();
}

uint64_t Cache.getFileLockPathForEntry(withName:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for FilePath();
  __chkstk_darwin(v5);
  (*(v7 + 16))(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + direct field offset for Cache.cacheRootDirectory);
  v11[0] = 46;
  v11[1] = 0xE100000000000000;
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6B636F6C2ELL;
  v9._object = 0xE500000000000000;
  String.append(_:)(v9);
  return FilePath.appending(_:)();
}

uint64_t Cache.access(entryBackedByResourceAt:authentication:downloadConfiguration:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[9] = AssociatedTypeWitness;
  v6[10] = *(AssociatedTypeWitness - 8);
  v6[11] = swift_task_alloc();
  v8 = type metadata accessor for FilePath();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003140C0, 0, 0);
}

uint64_t sub_1003140C0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v12 = *(v0 + 24);
  v13 = *(v0 + 40);
  v4 = static Cache.generateCacheEntryName(forEntryBackedByResourceAt:)();
  v6 = v5;
  *(v0 + 120) = v5;
  (*(*v2 + 168))();
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v12;
  *(v7 + 40) = v2;
  *(v7 + 48) = vextq_s8(v13, v13, 8uLL);
  *(v7 + 64) = v3;
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_100314214;
  v9 = *(v0 + 88);
  v10 = *(v0 + 72);

  return Cache.inContextForEntry<A>(withName:_:)(v9, v4, v6, &unk_100408260, v7, v10);
}

uint64_t sub_100314214()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100314594, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    *(v2 + 152) = v4;
    *v4 = v3;
    v4[1] = sub_1003143D0;

    return Cache.evict()();
  }
}

uint64_t sub_1003143D0()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100314624;
  }

  else
  {
    v2 = sub_1003144E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003144E4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[10] + 32))(v0[2], v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100314594()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100314624()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003146CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v8[31] = v13;
  v8[32] = v14;
  v8[29] = a7;
  v8[30] = a8;
  v8[27] = a5;
  v8[28] = a6;
  v8[25] = a3;
  v8[26] = a4;
  v8[23] = a1;
  v8[24] = a2;
  v8[33] = *a8;
  v9 = type metadata accessor for FilePath();
  v8[34] = v9;
  v8[35] = *(v9 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v8[39] = v10;
  v8[40] = *(v10 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = type metadata accessor for CacheDownloadInformation(0);
  v8[49] = swift_task_alloc();

  return _swift_task_switch(sub_1003148E4, 0, 0);
}

uint64_t sub_1003148E4()
{
  v108 = v0;
  FilePath.createDirectory(permissions:intermediateDirectories:)(0x1C0u, 1);
  v106 = v0;
  v1 = [objc_opt_self() defaultManager];
  sub_1000039E8(&qword_1004AC8A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 32) = NSFileModificationDate;
  *(inited + 64) = type metadata accessor for Date();
  sub_100064BF8((inited + 40));
  v3 = NSFileModificationDate;
  static Date.now.getter();
  sub_1001861B4(inited);
  swift_setDeallocating();
  sub_100013F2C(inited + 32, &qword_1004AA7A0);
  type metadata accessor for FileAttributeKey(0);
  sub_100320588(&qword_1004A6CC0, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  FilePath.string.getter();
  v5 = String._bridgeToObjectiveC()();

  v0[21] = 0;
  v6 = [v1 setAttributes:isa ofItemAtPath:v5 error:v0 + 21];

  v7 = v0[21];
  if (v6)
  {
    v8 = v7;
    v9 = FilePath.isEmptyDirectory()();
    if (!v10)
    {
      v35 = v0[40];
      v36 = !v9;
      v37 = *(v35 + 16);
      v17 = v35 + 16;
      v16 = v37;
LABEL_15:
      v40 = v0[48];
      v39 = v0[49];
      v41 = v0[39];
      v42 = v0[28];
      v43 = v0[29];
      v0[50] = v16;
      v0[51] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v16(v39, v42, v41);
      v44 = v39 + *(v40 + 20);
      v45 = *v43;
      v46 = v43[1];
      *(v44 + 32) = *(v43 + 32);
      *v44 = v45;
      *(v44 + 16) = v46;
      v47 = v0[29];
      if (v36)
      {
        sub_1002EA78C(v47, (v0 + 16));
        if (qword_1004A9F70 != -1)
        {
          swift_once();
        }

        v48 = v0[47];
        v49 = v0[39];
        v50 = v0[28];
        v51 = type metadata accessor for Logger();
        v0[52] = sub_1000270B4(v51, static Logger.caching);
        v16(v48, v50, v49);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        v54 = os_log_type_enabled(v52, v53);
        v55 = v0[47];
        v57 = v0[39];
        v56 = v0[40];
        if (v54)
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v107 = v59;
          *v58 = 136315138;
          sub_100320588(&qword_1004AAE30, &type metadata accessor for URL);
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          v62 = v61;
          v63 = *(v56 + 8);
          v63(v55, v57);
          v64 = sub_1000026C0(v60, v62, &v107);

          *(v58 + 4) = v64;
          _os_log_impl(&_mh_execute_header, v52, v53, "[%s] Found in cache", v58, 0xCu);
          sub_100003C3C(v59);
        }

        else
        {

          v63 = *(v56 + 8);
          v63(v55, v57);
        }

        v106[53] = v63;
        v83 = v106[33];
        v85 = *(v83 + 80);
        v84 = *(v83 + 88);
        loga = (*(v84 + 32) + **(v84 + 32));
        v86 = swift_task_alloc();
        v106[54] = v86;
        *v86 = v106;
        v86[1] = sub_100315778;
        v87 = v106[49];
        v88 = v106[31];
        v90 = v106[26];
        v89 = v106[27];
        v91 = v106[25];
        v92 = v106[23];
        v93 = v85;
        v94 = v84;
        v95 = loga;
      }

      else
      {
        sub_1002EA78C(v47, (v0 + 11));
        if (qword_1004A9F70 != -1)
        {
          swift_once();
        }

        v65 = v0[50];
        v66 = v0[46];
        v67 = v0[39];
        v68 = v0[28];
        v69 = type metadata accessor for Logger();
        v0[56] = sub_1000270B4(v69, static Logger.caching);
        v65(v66, v68, v67);
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.default.getter();
        v72 = os_log_type_enabled(v70, v71);
        v73 = v0[46];
        v75 = v0[39];
        v74 = v0[40];
        if (v72)
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v107 = v77;
          *v76 = 136315138;
          sub_100320588(&qword_1004AAE30, &type metadata accessor for URL);
          v78 = dispatch thunk of CustomStringConvertible.description.getter();
          v80 = v79;
          v81 = *(v74 + 8);
          v81(v73, v75);
          v82 = sub_1000026C0(v78, v80, &v107);

          *(v76 + 4) = v82;
          _os_log_impl(&_mh_execute_header, v70, v71, "[%s] Cache miss", v76, 0xCu);
          sub_100003C3C(v77);
        }

        else
        {

          v81 = *(v74 + 8);
          v81(v73, v75);
        }

        v106[57] = v81;
        v96 = v106[33];
        v106[58] = *(*v106[30] + 112);
        v97 = *(v96 + 88);
        v106[59] = v97;
        v98 = *(v97 + 40);
        v99 = *(v96 + 80);
        v106[60] = v99;
        logb = (v98 + *v98);
        v100 = swift_task_alloc();
        v106[61] = v100;
        *v100 = v106;
        v100[1] = sub_1003159F4;
        v92 = v106[37];
        v88 = v106[31];
        v91 = v106[32];
        v89 = v106[28];
        v87 = v106[29];
        v90 = v106[24];
        v93 = v99;
        v94 = v97;
        v95 = logb;
      }

      return v95(v92, v89, v90, v87, v91, v88, v93, v94);
    }

    if (qword_1004A9F70 != -1)
    {
      swift_once();
    }

    v11 = v0[44];
    v12 = v0[39];
    v13 = v0[40];
    v14 = v0[28];
    v15 = type metadata accessor for Logger();
    sub_1000270B4(v15, static Logger.caching);
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v16 = v18;
    v18(v11, v14, v12);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[44];
    v24 = v0[39];
    v23 = v0[40];
    if (v21)
    {
      log = v20;
      v25 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v107 = v105;
      *v25 = 136315394;
      sub_100320588(&qword_1004AAE30, &type metadata accessor for URL);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v16;
      v29 = v28;
      (*(v23 + 8))(v22, v24);
      v30 = sub_1000026C0(v26, v29, &v107);
      v16 = v27;
      v0 = v106;

      *(v25 + 4) = v30;
      *(v25 + 12) = 2112;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v31;
      *v101 = v31;
      _os_log_impl(&_mh_execute_header, v19, log, "[%s] Failed to enumerate files in cache directory... cleaning directory: %@", v25, 0x16u);
      sub_100013F2C(v101, &qword_1004AA050);

      sub_100003C3C(v105);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    FilePath.removeAllFilesInDirectory()();

    if (!v38)
    {
      v36 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v32 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v33 = v106[1];

  return v33();
}

uint64_t sub_100315778()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_100315F48;
  }

  else
  {
    v2 = sub_1003158B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003158B8()
{
  sub_100320238(*(v0 + 392), type metadata accessor for CacheDownloadInformation);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003159F4()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_1003165D0;
  }

  else
  {
    v2 = sub_100315B34;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100315B34()
{
  v3 = v0[59];
  (*(v0[35] + 32))(v0[38], v0[37], v0[34]);
  v2 = *(v3 + 24) + **(v3 + 24);
  v1 = swift_task_alloc();
  v0[63] = v1;
  *v1 = v0;
  v1[1] = sub_100315CB4;

  __asm { BRAA            X9, X16 }
}

uint64_t sub_100315CB4()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_100316908;
  }

  else
  {
    v2 = sub_100315DF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100315DF4()
{
  (*(v0[35] + 8))(v0[38], v0[34]);
  sub_100320238(v0[49], type metadata accessor for CacheDownloadInformation);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100315F48()
{
  v54 = v0;
  *(v0 + 176) = *(v0 + 440);
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  if ((swift_dynamicCast() & 1) == 0 || *(v0 + 121) != 2)
  {
    sub_100320238(*(v0 + 392), type metadata accessor for CacheDownloadInformation);

LABEL_11:

    v19 = *(v0 + 8);

    return v19();
  }

  v1 = *(v0 + 400);
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 224);

  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 424);
  v9 = *(v0 + 344);
  v10 = *(v0 + 312);
  if (v7)
  {
    v49 = *(v0 + 424);
    v11 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v11 = 136315138;
    sub_100320588(&qword_1004AAE30, &type metadata accessor for URL);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v49(v9, v10);
    v15 = sub_1000026C0(v12, v14, &v53);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] Cache entry validation failed; triggering cache miss", v11, 0xCu);
    sub_100003C3C(v51);
  }

  else
  {

    v8(v9, v10);
  }

  FilePath.removeAllFilesInDirectory()();
  if (v16 || (FilePath.removeAllFilesInDirectory()(), v17) || (FilePath.removeAllFilesInDirectory()(), v18))
  {
    sub_100320238(*(v0 + 392), type metadata accessor for CacheDownloadInformation);

    goto LABEL_11;
  }

  if (qword_1004A9F70 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 400);
  v22 = *(v0 + 368);
  v23 = *(v0 + 312);
  v24 = *(v0 + 224);
  v25 = type metadata accessor for Logger();
  *(v0 + 448) = sub_1000270B4(v25, static Logger.caching);
  v21(v22, v24, v23);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 368);
  v30 = *(v0 + 312);
  v31 = *(v0 + 320);
  if (v28)
  {
    v32 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v32 = 136315138;
    sub_100320588(&qword_1004AAE30, &type metadata accessor for URL);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v36 = *(v31 + 8);
    v36(v29, v30);
    v37 = sub_1000026C0(v33, v35, &v53);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "[%s] Cache miss", v32, 0xCu);
    sub_100003C3C(v52);
  }

  else
  {

    v36 = *(v31 + 8);
    v36(v29, v30);
  }

  *(v0 + 456) = v36;
  v38 = *(v0 + 264);
  *(v0 + 464) = *(**(v0 + 240) + 112);
  v39 = *(v38 + 88);
  *(v0 + 472) = v39;
  v40 = *(v39 + 40);
  v41 = *(v38 + 80);
  *(v0 + 480) = v41;
  v50 = (v40 + *v40);
  v42 = swift_task_alloc();
  *(v0 + 488) = v42;
  *v42 = v0;
  v42[1] = sub_1003159F4;
  v43 = *(v0 + 296);
  v45 = *(v0 + 248);
  v44 = *(v0 + 256);
  v46 = *(v0 + 224);
  v47 = *(v0 + 232);
  v48 = *(v0 + 192);

  return v50(v43, v46, v48, v47, v44, v45, v41, v39);
}

uint64_t sub_1003165D0()
{
  v21 = v0;
  (*(v0 + 400))(*(v0 + 336), *(v0 + 224), *(v0 + 312));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v19 = *(v0 + 456);
    v3 = *(v0 + 336);
    v4 = *(v0 + 312);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v5 = 136315394;
    sub_100320588(&qword_1004AAE30, &type metadata accessor for URL);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v19(v3, v4);
    v11 = sub_1000026C0(v8, v10, &v20);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v12;
    *v6 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] Failed to download: %@", v5, 0x16u);
    sub_100013F2C(v6, &qword_1004AA050);

    sub_100003C3C(v7);
  }

  else
  {
    v13 = *(v0 + 456);
    v14 = *(v0 + 336);
    v15 = *(v0 + 312);

    v13(v14, v15);
  }

  v16 = *(v0 + 392);
  swift_willThrow();
  sub_100320238(v16, type metadata accessor for CacheDownloadInformation);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100316908()
{
  v24 = v0;
  (*(v0 + 400))(*(v0 + 328), *(v0 + 224), *(v0 + 312));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v22 = *(v0 + 456);
    v3 = *(v0 + 328);
    v4 = *(v0 + 312);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v5 = 136315394;
    sub_100320588(&qword_1004AAE30, &type metadata accessor for URL);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v22(v3, v4);
    v11 = sub_1000026C0(v8, v10, &v23);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v12;
    *v6 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] Failed to handle cache miss: %@", v5, 0x16u);
    sub_100013F2C(v6, &qword_1004AA050);

    sub_100003C3C(v7);
  }

  else
  {
    v13 = *(v0 + 456);
    v14 = *(v0 + 328);
    v15 = *(v0 + 312);

    v13(v14, v15);
  }

  v16 = *(v0 + 392);
  v17 = *(v0 + 304);
  v18 = *(v0 + 272);
  v19 = *(v0 + 280);
  swift_willThrow();
  (*(v19 + 8))(v17, v18);
  sub_100320238(v16, type metadata accessor for CacheDownloadInformation);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t Cache.purge(retainingEntriesForURLs:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  v3 = type metadata accessor for FilePath();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100316D80, 0, 0);
}

uint64_t sub_100316D80()
{
  v42 = v0;
  v1 = *(v0 + 32);
  v2 = &_swiftEmptySetSingleton;
  v41 = &_swiftEmptySetSingleton;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(type metadata accessor for URL() - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = *(v4 + 72);
    do
    {
      v7 = static Cache.generateCacheEntryName(forEntryBackedByResourceAt:)();
      sub_100012140(&v40, v7, v8);

      v5 += v6;
      --v3;
    }

    while (v3);
    v2 = v41;
  }

  *(v0 + 88) = v2;
  v9 = objc_opt_self();
  *(v0 + 96) = v9;
  v10 = [v9 defaultManager];
  *(v0 + 104) = direct field offset for Cache.cacheRootDirectory;
  FilePath.string.getter();
  v11 = String._bridgeToObjectiveC()();

  *(v0 + 16) = 0;
  v12 = [v10 contentsOfDirectoryAtPath:v11 error:v0 + 16];

  v13 = *(v0 + 16);
  if (!v12)
  {
    v25 = v13;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_16;
  }

  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 112) = v14;
  v15 = v13;

  v16 = *(v14 + 16);
  *(v0 + 120) = v16;
  if (!v16)
  {
LABEL_17:

    v26 = *(v0 + 8);
    goto LABEL_18;
  }

  v17 = 0;
  *(v0 + 128) = *(**(v0 + 40) + 120);
  while (1)
  {
    *(v0 + 136) = v17;
    if (v17 >= *(*(v0 + 112) + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
    }

    (*(*(v0 + 64) + 16))(*(v0 + 72), *(v0 + 40) + *(v0 + 104), *(v0 + 56));

    FilePath.appending(_:)();
    sub_100320588(&qword_1004B0AD0, &type metadata accessor for FilePath);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      sub_100317B28(*(v0 + 80));
      (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
      goto LABEL_8;
    }

    v18 = [*(v0 + 96) defaultManager];
    FilePath.string.getter();
    v19 = String._bridgeToObjectiveC()();

    *(v0 + 24) = 0;
    v20 = [v18 contentsOfDirectoryAtPath:v19 error:v0 + 24];

    v21 = *(v0 + 24);
    if (!v20)
    {
      v28 = *(v0 + 80);
      v29 = *(v0 + 56);
      v30 = *(v0 + 64);
      v31 = v21;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v30 + 8))(v28, v29);
LABEL_16:

      v26 = *(v0 + 8);
LABEL_18:

      return v26();
    }

    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 144) = v22;
    v23 = v21;

    v24 = *(v22 + 16);
    *(v0 + 152) = v24;
    if (v24)
    {
      break;
    }

    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));

LABEL_8:
    v17 = *(v0 + 136) + 1;
    if (v17 == *(v0 + 120))
    {
      goto LABEL_17;
    }
  }

  *(v0 + 160) = 0;
  v32 = *(v0 + 144);
  if (!v32[2])
  {
    goto LABEL_27;
  }

  v33 = *(v0 + 88);
  v35 = *(v0 + 40);
  v34 = *(v0 + 48);
  v36 = v32[5];
  *(v0 + 168) = v36;
  v37 = v32[4];
  v38 = swift_task_alloc();
  *(v0 + 176) = v38;
  v38[2] = v33;
  v38[3] = v37;
  v38[4] = v36;
  v38[5] = v35;
  v38[6] = v34;

  v39 = swift_task_alloc();
  *(v0 + 184) = v39;
  *v39 = v0;
  v39[1] = sub_100317394;

  return Cache.inContextForEntry(withName:nonBlocking:_:)(v37, v36, 0, &unk_100408288, v38);
}

uint64_t sub_100317394()
{
  *(*v1 + 192) = v0;

  if (v0)
  {

    v2 = sub_100317A70;
  }

  else
  {

    v2 = sub_10031754C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10031754C()
{
  v1 = *(v0 + 160) + 1;
  if (v1 != *(v0 + 152))
  {
LABEL_15:
    *(v0 + 160) = v1;
    v12 = *(v0 + 144);
    if (v1 < *(v12 + 16))
    {
      v13 = *(v0 + 88);
      v15 = *(v0 + 40);
      v14 = *(v0 + 48);
      v16 = v12 + 16 * v1;
      v17 = *(v16 + 40);
      *(v0 + 168) = v17;
      v18 = *(v16 + 32);
      v19 = swift_task_alloc();
      *(v0 + 176) = v19;
      v19[2] = v13;
      v19[3] = v18;
      v19[4] = v17;
      v19[5] = v15;
      v19[6] = v14;

      v20 = swift_task_alloc();
      *(v0 + 184) = v20;
      *v20 = v0;
      v20[1] = sub_100317394;

      return Cache.inContextForEntry(withName:nonBlocking:_:)(v18, v17, 0, &unk_100408288, v19);
    }

LABEL_27:
    __break(1u);
  }

  v2 = *(v0 + 192);
  while (1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));

    v3 = *(v0 + 136) + 1;
    if (v3 == *(v0 + 120))
    {
LABEL_19:

      v22 = *(v0 + 8);
      goto LABEL_22;
    }

    *(v0 + 136) = v3;
    if (v3 >= *(*(v0 + 112) + 16))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    (*(*(v0 + 64) + 16))(*(v0 + 72), *(v0 + 40) + *(v0 + 104), *(v0 + 56));

    FilePath.appending(_:)();
    sub_100320588(&qword_1004B0AD0, &type metadata accessor for FilePath);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      sub_100317B28(*(v0 + 80));
      if (v2)
      {
        (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));

        goto LABEL_21;
      }

      while (1)
      {
        (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
        v4 = *(v0 + 136) + 1;
        if (v4 == *(v0 + 120))
        {
          goto LABEL_19;
        }

        *(v0 + 136) = v4;
        if (v4 >= *(*(v0 + 112) + 16))
        {
          goto LABEL_26;
        }

        (*(*(v0 + 64) + 16))(*(v0 + 72), *(v0 + 40) + *(v0 + 104), *(v0 + 56));

        FilePath.appending(_:)();
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          break;
        }

        sub_100317B28(*(v0 + 80));
      }

      v2 = 0;
    }

    v5 = [*(v0 + 96) defaultManager];
    FilePath.string.getter();
    v6 = String._bridgeToObjectiveC()();

    *(v0 + 24) = 0;
    v7 = [v5 contentsOfDirectoryAtPath:v6 error:v0 + 24];

    v8 = *(v0 + 24);
    if (!v7)
    {
      break;
    }

    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 144) = v9;
    v10 = v8;

    v11 = *(v9 + 16);
    *(v0 + 152) = v11;
    if (v11)
    {
      v1 = 0;
      goto LABEL_15;
    }
  }

  v23 = *(v0 + 80);
  v24 = *(v0 + 56);
  v25 = *(v0 + 64);
  v26 = v8;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v25 + 8))(v23, v24);
LABEL_21:

  v22 = *(v0 + 8);
LABEL_22:

  return v22();
}

uint64_t sub_100317A70()
{
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

void sub_100317B28(uint64_t a1)
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  FilePath.remove()();
  if (v6)
  {
    if (qword_1004A9F70 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000270B4(v7, static Logger.caching);
    (*(v3 + 16))(v5, a1, v2);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v10 = 136315394;
      sub_100320588(&qword_1004AA058, &type metadata accessor for FilePath);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      (*(v3 + 8))(v5, v2);
      v14 = sub_1000026C0(v11, v13, &v19);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v15;
      v16 = v17;
      *v17 = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to remove %s from cache: %@", v10, 0x16u);
      sub_100013F2C(v16, &qword_1004AA050);

      sub_100003C3C(v18);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    swift_willThrow();
  }
}

uint64_t sub_100317E2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *a4;
  v6 = type metadata accessor for FilePath();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100317F34, 0, 0);
}

uint64_t sub_100317F34()
{
  v1 = sub_100312E84(v0[3], v0[4], v0[2]);
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];
  if (v1)
  {
    v5 = v0[10];
    v6 = v0[7];
    (*(v3 + 16))(v0[11], v4 + *(*v4 + 120), v0[8]);

    FilePath.appending(_:)();
    (*(*(v6 + 88) + 48))(v5, *(v6 + 80));
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v7 = v0[12];
    (*(v3 + 16))(v0[11], v4 + *(*v4 + 120), v0[8]);

    FilePath.appending(_:)();
    sub_100317B28(v7);
    (*(v3 + 8))(v7, v2);
  }

  v8 = v0[1];

  return v8();
}

uint64_t Cache.inContextForEntry<A>(withName:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = *v6;
  v7[10] = *v6;
  v8 = type metadata accessor for FilePath();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_100318278, 0, 0);
}

uint64_t sub_100318278()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  Cache.getTemporaryDirectoryPathForEntry(withName:)();
  Cache.getDownloadDirectoryPathForEntry(withName:)();
  Cache.getFileLockPathForEntry(withName:)(v3, v2);
  v4 = sub_1002A0B48(v1, 448, 0);
  v5 = *(v0 + 120);
  v20 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 56);
  v19 = *(v0 + 40);
  (*(v8 + 16))(v6, *(v0 + 112), v7);
  type metadata accessor for ExclusiveLockedFile();
  v12 = swift_allocObject();
  *(v0 + 136) = v12;
  *(v12 + 16) = v4;
  (*(v8 + 32))(v12 + OBJC_IVAR____TtC10DarwinInit19ExclusiveLockedFile_path, v6, v7);
  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *(v13 + 16) = *(v10 + 80);
  *(v13 + 24) = v11;
  *(v13 + 32) = *(v10 + 88);
  *(v13 + 40) = v5;
  *(v13 + 48) = v19;
  *(v13 + 64) = v20;
  *(v13 + 72) = v12;
  *(v13 + 80) = v9;
  v14 = swift_task_alloc();
  *(v0 + 152) = v14;
  *v14 = v0;
  v14[1] = sub_100318508;
  v15 = *(v0 + 128);
  v16 = *(v0 + 56);
  v17 = *(v0 + 16);

  return sub_100318BF4(v17, v15, &unk_100408488, v13, v16);
}

uint64_t sub_100318508()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100318720;
  }

  else
  {
    v2 = sub_100318638;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100318638()
{
  v1 = v0[16];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[11];

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  v6(v1, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100318720()
{

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[11];
  v4 = *(v0[12] + 8);
  v4(v0[14], v3);
  v4(v2, v3);
  v4(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100318808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return _swift_task_switch(sub_100318840, 0, 0);
}

uint64_t sub_100318840()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v3 + 16) = *(v0 + 72);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v2;
  *(v3 + 64) = v5;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_100318930;
  v7 = *(v0 + 80);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  return sub_100318BF4(v8, v9, &unk_1004084A0, v3, v7);
}

uint64_t sub_100318930()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100318A6C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100318A6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100318AD0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (a2 + *a2);
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_100001FE0;

  return v13(a1, a4, a5, a6);
}

uint64_t sub_100318BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v8 = type metadata accessor for FilePath();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = *(a5 - 8);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_100318D10, 0, 0);
}

uint64_t sub_100318D10()
{
  FilePath.createDirectory(permissions:intermediateDirectories:)(0x1C0u, 1);
  v4 = (v0[4] + *v0[4]);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_100318E70;
  v2 = v0[12];

  return v4(v2);
}

uint64_t sub_100318E70()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100319068;
  }

  else
  {
    v2 = sub_100318F84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100318F84()
{
  v1 = v0[14];
  v2 = v0[3];
  (*(v0[11] + 32))(v0[2], v0[12], v0[6]);
  sub_100317B28(v2);
  if (v1)
  {
    (*(v0[11] + 8))(v0[2], v0[6]);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_100319068()
{
  v1 = *(v0 + 24);
  swift_errorRetain();
  sub_100317B28(v1);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t Cache.inContextForEntry(withName:nonBlocking:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 100) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for FilePath();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_10031945C, 0, 0);
}

uint64_t sub_10031945C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 100);
  Cache.getFileLockPathForEntry(withName:)(*(v0 + 16), *(v0 + 24));
  *(v0 + 96) = sub_1002A0B48(v1, 448, v2);
  v5 = (*(v0 + 32) + **(v0 + 32));
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1003195E0;

  return v5();
}

uint64_t sub_1003195E0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10031978C;
  }

  else
  {
    v2 = sub_1003196F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003196F4()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  sub_1002A0744(*(v0 + 96), v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10031978C()
{
  sub_1002A0744(*(v0 + 96), *(v0 + 72));
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

id sub_100319818(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  if (qword_1004A9F70 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_1000270B4(v9, static Logger.caching);
  v43 = *(v4 + 16);
  v43(v8, a1, v3);
  v44 = v10;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v47 = v4;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v42 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v41 = a1;
    v17 = v16;
    v48 = v16;
    *v15 = 136315138;
    sub_100320588(&qword_1004AAE30, &type metadata accessor for URL);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v4;
    v21 = v20;
    v45 = *(v19 + 8);
    v45(v8, v3);
    v22 = sub_1000026C0(v18, v21, &v48);

    *(v15 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "Removing item at %s", v15, 0xCu);
    sub_100003C3C(v17);
    a1 = v41;
  }

  else
  {

    v45 = *(v4 + 8);
    v45(v8, v3);
  }

  v23 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v24);
  v26 = v25;
  v48 = 0;
  v27 = [v23 removeItemAtURL:v25 error:&v48];

  if (v27)
  {
    return v48;
  }

  v29 = v48;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v30 = v46;
  v43(v46, a1, v3);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = v44;
    *v33 = 136315394;
    sub_100320588(&qword_1004AAE30, &type metadata accessor for URL);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v45(v30, v3);
    v38 = sub_1000026C0(v35, v37, &v48);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2112;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 14) = v39;
    *v34 = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "Failed to remove %s from cache: %@", v33, 0x16u);
    sub_100013F2C(v34, &qword_1004AA050);

    sub_100003C3C(v44);
  }

  else
  {

    v45(v30, v3);
  }

  return swift_willThrow();
}

void *Cache.getCacheEntryFilesystemInfo()()
{
  v240 = *v0;
  v223 = type metadata accessor for CacheEntryFilesystemInfo(0);
  v222 = *(v223 - 8);
  __chkstk_darwin(v223);
  v225 = &v199 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000039E8(&qword_1004A73C0);
  __chkstk_darwin(v2 - 8);
  v229 = &v199 - v3;
  v231 = type metadata accessor for Date();
  v234 = *(v231 - 8);
  __chkstk_darwin(v231);
  v224 = &v199 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000039E8(&qword_1004AC8A8);
  v6 = __chkstk_darwin(v5 - 8);
  v249 = &v199 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v241 = &v199 - v8;
  v247 = type metadata accessor for URLResourceValues();
  *&v232 = *(v247 - 8);
  v9 = __chkstk_darwin(v247);
  v230 = &v199 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v248 = &v199 - v12;
  __chkstk_darwin(v11);
  v238 = &v199 - v13;
  v236 = type metadata accessor for NSFastEnumerationIterator();
  v235 = *(v236 - 8);
  v14 = __chkstk_darwin(v236);
  v256 = &v199 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v244 = &v199 - v16;
  v253 = type metadata accessor for URL.DirectoryHint();
  v252 = *(v253 - 8);
  __chkstk_darwin(v253);
  v246 = (&v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1000039E8(&qword_1004A6D30);
  v19 = __chkstk_darwin(v18 - 8);
  v255 = &v199 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v242 = &v199 - v22;
  __chkstk_darwin(v21);
  v245 = (&v199 - v23);
  v254 = type metadata accessor for URL();
  v243 = *(v254 - 8);
  v24 = __chkstk_darwin(v254);
  v239 = &v199 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v228 = &v199 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v199 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v199 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v199 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = &v199 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v199 - v41;
  __chkstk_darwin(v40);
  v44 = (&v199 - v43);
  v45 = FilePath.directoryExists()();
  if (v46)
  {

LABEL_78:
    if (qword_1004A9F70 != -1)
    {
      swift_once();
    }

    v178 = type metadata accessor for Logger();
    sub_1000270B4(v178, static Logger.caching);
    v179 = Logger.logObject.getter();
    v180 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      *v181 = 0;
      _os_log_impl(&_mh_execute_header, v179, v180, "Cache data directory doesn't exist. Returning empty cache entry filesystem info.", v181, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  v220 = v44;
  v251 = 0;
  v214 = v39;
  v226 = v36;
  v215 = v33;
  v237 = v30;
  v250 = v42;
  if (!v45)
  {
    goto LABEL_78;
  }

  v47 = objc_opt_self();
  v48 = [v47 defaultManager];
  FilePath.string.getter();
  v49 = v243;
  v50 = *(v243 + 56);
  v51 = v254;
  v258 = v243 + 56;
  v257 = v50;
  v50(v245, 1, 1, v254);
  (*(v252 + 13))(v246, enum case for URL.DirectoryHint.inferFromPath(_:), v253);
  v52 = v220;
  v53 = v51;
  URL.init(filePath:directoryHint:relativeTo:)();
  v233 = sub_1000039E8(&qword_1004AC8B0);
  v54 = swift_allocObject();
  v227 = xmmword_100376A40;
  *(v54 + 16) = xmmword_100376A40;
  *(v54 + 32) = NSURLIsDirectoryKey;
  v221 = NSURLIsDirectoryKey;
  v55 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v56 = *(v49 + 8);
  v253 = v49 + 8;
  v252 = v56;
  (v56)(v52, v51);
  if (!v55)
  {
    if (qword_1004A9F70 != -1)
    {
      swift_once();
    }

    v183 = type metadata accessor for Logger();
    sub_1000270B4(v183, static Logger.caching);
    v184 = Logger.logObject.getter();
    v185 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      *v186 = 0;
      _os_log_impl(&_mh_execute_header, v184, v185, "Failed to create cache entry enumerator", v186, 2u);
    }

    sub_100179660();
    swift_allocError();
    *v187 = 1;
    return swift_willThrow();
  }

  v57 = v244;
  v213 = v55;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (!v261)
  {
    v58 = _swiftEmptyArrayStorage;
    v177 = v236;
    v176 = v235;
    goto LABEL_90;
  }

  v210 = v47;
  v246 = (v49 + 32);
  v245 = (v232 + 56);
  v219 = (v232 + 32);
  v243 = v49 + 16;
  v220 = (v232 + 8);
  v209 = NSURLIsRegularFileKey;
  v212 = (v235 + 8);
  v204 = (v234 + 56);
  v208 = NSURLTotalFileAllocatedSizeKey;
  v203 = (v234 + 48);
  v201 = (v234 + 32);
  v200 = (v234 + 16);
  v58 = _swiftEmptyArrayStorage;
  v199 = (v234 + 8);
  v206 = NSURLContentModificationDateKey;
  *(&v59 + 1) = 4;
  v207 = xmmword_100376BB0;
  *&v59 = 136315138;
  v232 = v59;
  v60 = v247;
  v61 = v226;
LABEL_7:
  v211 = v58;
  v62 = v250;
  v63 = v242;
  while (1)
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      v257(v63, 1, 1, v53);
      sub_100013F2C(v63, &qword_1004A6D30);
      goto LABEL_9;
    }

    v257(v63, 0, 1, v53);
    v64 = *v246;
    (*v246)(v62, v63, v53);
    inited = swift_initStackObject();
    *(inited + 16) = v227;
    v66 = v221;
    *(inited + 32) = v221;
    v67 = v66;
    sub_1001E9218(inited);
    swift_setDeallocating();
    sub_100320238(inited + 32, type metadata accessor for URLResourceKey);
    v68 = v241;
    v69 = v251;
    URL.resourceValues(forKeys:)();
    v70 = v69;
    if (v69)
    {

      (*v245)(v68, 1, 1, v60);
      sub_100013F2C(v68, &qword_1004AC8A8);
      goto LABEL_15;
    }

    v251 = v64;

    v71 = *v245;
    (*v245)(v68, 0, 1, v60);
    v72 = v238;
    v218 = *v219;
    v218(v238, v68, v60);
    v73 = URLResourceValues.isDirectory.getter();
    if (v73 == 2)
    {
      (*v220)(v72, v60);
LABEL_15:
      v74 = v250;
      v75 = v239;
      if (qword_1004A9F70 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      sub_1000270B4(v76, static Logger.caching);
      (*v243)(v75, v74, v53);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v259 = v80;
        *v79 = v232;
        v81 = URL.lastPathComponent.getter();
        v83 = v82;
        v252(v75, v254);
        v84 = sub_1000026C0(v81, v83, &v259);

        *(v79 + 4) = v84;
        _os_log_impl(&_mh_execute_header, v77, v78, "Failed to get isDirectory for %s. Removing...", v79, 0xCu);
        sub_100003C3C(v80);
        v60 = v247;

        v53 = v254;
      }

      else
      {

        v252(v75, v53);
      }

      v62 = v250;
      sub_100319818(v250);
      v63 = v242;
      v251 = 0;
LABEL_21:
      v252(v62, v53);
      v57 = v244;
      goto LABEL_9;
    }

    if ((v73 & 1) == 0)
    {
      break;
    }

    v217 = v71;
    v85 = swift_initStackObject();
    *(v85 + 16) = v207;
    v86 = v209;
    *(v85 + 32) = v209;
    v87 = v208;
    *(v85 + 40) = v208;
    v88 = v86;
    v89 = v87;
    v90 = sub_10019ABA8(v85);
    swift_setDeallocating();
    type metadata accessor for URLResourceKey(0);
    swift_arrayDestroy();
    v234 = [v210 defaultManager];
    v91 = *(v90 + 16);
    v216 = v90;
    if (v91)
    {
      v92 = sub_1001F3FDC(v91, 0);
      v205 = sub_1001F40B4(&v259, v92 + 4, v91, v90);

      sub_100013E00();
      if (v205 != v91)
      {
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v53 = v254;
      v93 = v249;
    }

    else
    {
      v93 = v249;
    }

    v106 = v234;
    v107 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

    if (!v107)
    {

      if (qword_1004A9F70 == -1)
      {
LABEL_93:
        v189 = type metadata accessor for Logger();
        sub_1000270B4(v189, static Logger.caching);
        v190 = Logger.logObject.getter();
        v191 = static os_log_type_t.error.getter();
        v192 = os_log_type_enabled(v190, v191);
        v193 = v236;
        v194 = v244;
        v195 = v238;
        v196 = v247;
        if (v192)
        {
          v197 = swift_slowAlloc();
          *v197 = 0;
          _os_log_impl(&_mh_execute_header, v190, v191, "Failed to create cache entry content enumerator", v197, 2u);
        }

        sub_100179660();
        swift_allocError();
        *v198 = 1;
        swift_willThrow();

        (*v220)(v195, v196);
        v252(v250, v254);
        return (*v212)(v194, v193);
      }

LABEL_98:
      swift_once();
      goto LABEL_93;
    }

    v205 = v107;
    NSEnumerator.makeIterator()();
    v108 = 0;
    v109 = v217;
    v60 = v247;
LABEL_36:
    v202 = v108;
    NSFastEnumerationIterator.next()();
    if (v260)
    {
      v110 = v248;
      do
      {
        v111 = v255;
        if (swift_dynamicCast())
        {
          v257(v111, 0, 1, v53);
          (v251)(v61, v111, v53);
          URL.resourceValues(forKeys:)();
          if (v70)
          {

            v109(v93, 1, 1, v60);
            sub_100013F2C(v93, &qword_1004AC8A8);
            v70 = 0;
LABEL_45:
            v113 = v237;
            if (qword_1004A9F70 != -1)
            {
              swift_once();
            }

            v114 = type metadata accessor for Logger();
            sub_1000270B4(v114, static Logger.caching);
            (*v243)(v113, v61, v53);
            v115 = v113;
            v116 = Logger.logObject.getter();
            v117 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v116, v117))
            {
              v118 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              v262 = v119;
              *v118 = v232;
              v120 = URL.lastPathComponent.getter();
              v122 = v121;
              v234 = 0;
              v123 = v252;
              v252(v115, v254);
              v124 = v120;
              v61 = v226;
              v125 = sub_1000026C0(v124, v122, &v262);
              v109 = v217;

              *(v118 + 4) = v125;
              _os_log_impl(&_mh_execute_header, v116, v117, "Failed to get isRegularFile for %s", v118, 0xCu);
              sub_100003C3C(v119);
              v60 = v247;

              v53 = v254;

              v123(v61, v53);
              v70 = v234;
            }

            else
            {

              v126 = v115;
              v127 = v252;
              v252(v126, v53);
              v127(v61, v53);
            }

            v93 = v249;
            v110 = v248;
            goto LABEL_39;
          }

          v109(v93, 0, 1, v60);
          v218(v110, v93, v60);
          v112 = URLResourceValues.isRegularFile.getter();
          if (v112 == 2)
          {
            (*v220)(v110, v60);
            goto LABEL_45;
          }

          if (v112)
          {
            v128 = URLResourceValues.totalFileAllocatedSize.getter();
            if ((v129 & 1) == 0)
            {
              v143 = v110;
              v144 = v128;
              (*v220)(v143, v60);
              v252(v61, v53);
              v108 = v202 + v144;
              if (__OFADD__(v202, v144))
              {
                goto LABEL_97;
              }

              goto LABEL_36;
            }

            if (qword_1004A9F70 != -1)
            {
              swift_once();
            }

            v130 = type metadata accessor for Logger();
            sub_1000270B4(v130, static Logger.caching);
            v131 = v215;
            (*v243)(v215, v61, v53);
            v132 = Logger.logObject.getter();
            v133 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v132, v133))
            {
              v134 = swift_slowAlloc();
              v135 = swift_slowAlloc();
              v262 = v135;
              *v134 = v232;
              v136 = v132;
              v137 = URL.lastPathComponent.getter();
              v139 = v138;
              v234 = 0;
              v140 = v252;
              v252(v131, v254);
              v141 = sub_1000026C0(v137, v139, &v262);
              v109 = v217;

              *(v134 + 4) = v141;
              _os_log_impl(&_mh_execute_header, v136, v133, "Failed to get totalFileAllocatedSize for %s", v134, 0xCu);
              sub_100003C3C(v135);
              v60 = v247;

              v53 = v254;

              v110 = v248;
              (*v220)(v248, v60);
              v140(v226, v53);
              v70 = v234;
              v61 = v226;
            }

            else
            {

              v142 = v252;
              v252(v131, v53);
              v110 = v248;
              (*v220)(v248, v60);
              v142(v61, v53);
            }

            v93 = v249;
          }

          else
          {
            (*v220)(v110, v60);
            v252(v61, v53);
          }
        }

        else
        {
          v257(v111, 1, 1, v53);
          sub_100013F2C(v111, &qword_1004A6D30);
        }

LABEL_39:
        NSFastEnumerationIterator.next()();
      }

      while (v260);
    }

    (*v212)(v256, v236);

    v145 = swift_initStackObject();
    *(v145 + 16) = v227;
    v146 = v206;
    *(v145 + 32) = v206;
    v147 = v146;
    sub_1001E9218(v145);
    swift_setDeallocating();
    sub_100320238(v145 + 32, type metadata accessor for URLResourceKey);
    v148 = v230;
    URL.resourceValues(forKeys:)();
    if (v70)
    {

      v149 = v229;
      (*v204)(v229, 1, 1, v231);
      v251 = 0;
      v57 = v244;
      goto LABEL_66;
    }

    v251 = 0;

    v149 = v229;
    URLResourceValues.contentModificationDate.getter();
    v150 = *v220;
    (*v220)(v148, v60);
    v151 = v231;
    v152 = (*v203)(v149, 1, v231);
    v57 = v244;
    if (v152 != 1)
    {
      v167 = v224;
      (*v201)(v224, v149, v151);
      v168 = v53;
      v169 = v151;
      v170 = v225;
      (*v243)(v225, v250, v168);
      v171 = v223;
      (*v200)(v170 + *(v223 + 24), v167, v169);
      *(v170 + *(v171 + 20)) = v202;
      v172 = v211;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v172 = sub_10018CF8C(0, v172[2] + 1, 1, v172);
      }

      v174 = v172[2];
      v173 = v172[3];
      v175 = v172;
      v53 = v254;
      if (v174 >= v173 >> 1)
      {
        v175 = sub_10018CF8C(v173 > 1, v174 + 1, 1, v172);
      }

      (*v199)(v224, v231);
      v150(v238, v60);
      v252(v250, v53);
      *(v175 + 16) = v174 + 1;
      sub_100320170(v225, v175 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v174);
      NSFastEnumerationIterator.next()();
      v58 = v175;
      v176 = v235;
      v177 = v236;
      if (!v261)
      {
LABEL_90:
        v188 = v58;
        (*(v176 + 8))(v57, v177);

        return v188;
      }

      goto LABEL_7;
    }

LABEL_66:
    sub_100013F2C(v149, &qword_1004A73C0);
    v153 = v228;
    if (qword_1004A9F70 != -1)
    {
      swift_once();
    }

    v154 = type metadata accessor for Logger();
    sub_1000270B4(v154, static Logger.caching);
    v62 = v250;
    (*v243)(v153, v250, v53);
    v155 = Logger.logObject.getter();
    v156 = v153;
    v157 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v155, v157))
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v259 = v159;
      *v158 = v232;
      v160 = URL.lastPathComponent.getter();
      v162 = v161;
      v252(v156, v254);
      v163 = v160;
      v61 = v226;
      v164 = sub_1000026C0(v163, v162, &v259);

      *(v158 + 4) = v164;
      _os_log_impl(&_mh_execute_header, v155, v157, "Failed to get contentModificationDate for %s", v158, 0xCu);
      sub_100003C3C(v159);
      v60 = v247;

      v53 = v254;

      (*v220)(v238, v60);
      v252(v62, v53);
    }

    else
    {

      v165 = v156;
      v166 = v252;
      v252(v165, v53);
      (*v220)(v238, v60);
      v166(v62, v53);
    }

    v63 = v242;
LABEL_9:
    NSFastEnumerationIterator.next()();
    if (!v261)
    {
      v176 = v235;
      v58 = v211;
      v177 = v236;
      goto LABEL_90;
    }
  }

  v234 = 0;
  v94 = v250;
  v95 = v214;
  if (qword_1004A9F70 != -1)
  {
    swift_once();
  }

  v96 = type metadata accessor for Logger();
  sub_1000270B4(v96, static Logger.caching);
  (*v243)(v95, v94, v53);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v259 = v100;
    *v99 = v232;
    v101 = URL.lastPathComponent.getter();
    v103 = v102;
    v252(v95, v254);
    v104 = sub_1000026C0(v101, v103, &v259);

    *(v99 + 4) = v104;
    _os_log_impl(&_mh_execute_header, v97, v98, "%s in cache data is not a directory! Removing...", v99, 0xCu);
    sub_100003C3C(v100);
    v60 = v247;

    v53 = v254;
  }

  else
  {

    v252(v95, v53);
  }

  v62 = v250;
  v105 = v234;
  sub_100319818(v250);
  v63 = v242;
  if (!v105)
  {
    v251 = 0;
    (*v220)(v238, v60);
    goto LABEL_21;
  }

  (*v220)(v238, v60);
  v252(v62, v53);
  (*v212)(v244, v236);
}

uint64_t Cache.evict()()
{
  v1[4] = v0;
  v2 = type metadata accessor for CacheEntryFilesystemInfo(0);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10031C1B4, 0, 0);
}

uint64_t sub_10031C1B4()
{
  v32 = v0;
  v31 = Cache.getCacheEntryFilesystemInfo()();

  sub_10031EED4(&v31);

  v2 = v31;
  v3 = v31[2];
  if (v3)
  {
    v4 = v0[8];
    v5 = v0[6];
    v6 = *(v0[5] + 20);
    v7 = v31 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v5 + 72);

    v9 = 0;
    while (1)
    {
      v10 = v0[8];
      sub_1003201D4(v7, v10);
      v11 = *(v4 + v6);
      sub_100320238(v10, type metadata accessor for CacheEntryFilesystemInfo);
      v12 = __OFADD__(v9, v11);
      v9 += v11;
      if (v12)
      {
        break;
      }

      v7 += v8;
      if (!--v3)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v9 = 0;
LABEL_11:
  v13 = v0[4];
  v0[2] = v9;
  v14 = *(v13 + qword_1004B0AC8);
  v0[9] = v14;
  if (v14 < v9)
  {
    if (!v2[2])
    {

      if (qword_1004A9F70 == -1)
      {
LABEL_20:
        v26 = type metadata accessor for Logger();
        sub_1000270B4(v26, static Logger.caching);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "No more cache entries to evict!", v29, 2u);
        }

        sub_100179660();
        swift_allocError();
        *v30 = 3;
        swift_willThrow();

        v25 = v0[1];
        goto LABEL_2;
      }

LABEL_26:
      swift_once();
      goto LABEL_20;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_14:
      v0[10] = v2;
      v15 = v2[2];
      if (v15)
      {
        v16 = v0[7];
        v17 = v0[4];
        v18 = v15 - 1;
        v19 = v2 + ((*(v0[6] + 80) + 32) & ~*(v0[6] + 80)) + *(v0[6] + 72) * v18;
        v2[2] = v18;
        sub_100320170(v19, v16);
        v20 = URL.lastPathComponent.getter();
        v22 = v21;
        v0[11] = v20;
        v0[12] = v21;
        v23 = swift_task_alloc();
        v0[13] = v23;
        v23[2] = v16;
        v23[3] = v20;
        v23[4] = v22;
        v23[5] = v17;
        v23[6] = v0 + 2;
        v24 = swift_task_alloc();
        v0[14] = v24;
        *v24 = v0;
        v24[1] = sub_10031C5B0;

        return Cache.inContextForEntry(withName:nonBlocking:_:)(v20, v22, 1, &unk_100408460, v23);
      }

      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    v2 = sub_1001EF684(v2);
    goto LABEL_14;
  }

  v25 = v0[1];
LABEL_2:

  return v25();
}

uint64_t sub_10031C5B0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_10031C9F0;
  }

  else
  {

    v2 = sub_10031C6F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10031C6F8()
{
  v1 = v0[9];
  sub_100320238(v0[7], type metadata accessor for CacheEntryFilesystemInfo);
  v2 = v0[10];
  if (v1 < v0[2])
  {
    if (v2[2])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1001EF684(v2);
      }

      v0[10] = v2;
      v3 = v2[2];
      if (v3)
      {
        v4 = v0[7];
        v5 = v0[4];
        v6 = v3 - 1;
        v7 = v2 + ((*(v0[6] + 80) + 32) & ~*(v0[6] + 80)) + *(v0[6] + 72) * v6;
        v2[2] = v6;
        sub_100320170(v7, v4);
        v8 = URL.lastPathComponent.getter();
        v10 = v9;
        v0[11] = v8;
        v0[12] = v9;
        v11 = swift_task_alloc();
        v0[13] = v11;
        v11[2] = v4;
        v11[3] = v8;
        v11[4] = v10;
        v11[5] = v5;
        v11[6] = v0 + 2;
        v12 = swift_task_alloc();
        v0[14] = v12;
        *v12 = v0;
        v12[1] = sub_10031C5B0;

        return Cache.inContextForEntry(withName:nonBlocking:_:)(v8, v10, 1, &unk_100408460, v11);
      }

      __break(1u);
    }

    else
    {

      if (qword_1004A9F70 == -1)
      {
LABEL_11:
        v15 = type metadata accessor for Logger();
        sub_1000270B4(v15, static Logger.caching);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "No more cache entries to evict!", v18, 2u);
        }

        sub_100179660();
        swift_allocError();
        *v19 = 3;
        swift_willThrow();

        v14 = v0[1];
        goto LABEL_14;
      }
    }

    swift_once();
    goto LABEL_11;
  }

  v14 = v0[1];
LABEL_14:

  return v14();
}

uint64_t sub_10031C9F0()
{
  v29 = v0;
  *(v0 + 24) = *(v0 + 120);
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 128) == 35)
  {

    if (qword_1004A9F70 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000270B4(v1, static Logger.caching);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 96);
    if (v4)
    {
      v6 = *(v0 + 88);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v28 = v8;
      *v7 = 136315138;
      v9 = sub_1000026C0(v6, v5, &v28);

      *(v7 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Skipping eviction of %s from cache due to existing lock on entry", v7, 0xCu);
      sub_100003C3C(v8);
    }

    else
    {
    }

    v12 = *(v0 + 72);
    sub_100320238(*(v0 + 56), type metadata accessor for CacheEntryFilesystemInfo);
    v13 = *(v0 + 80);
    if (v12 >= *(v0 + 16))
    {

      v10 = *(v0 + 8);
      goto LABEL_9;
    }

    if (v13[2])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1001EF684(v13);
      }

      *(v0 + 80) = v13;
      v14 = v13[2];
      if (v14)
      {
        v15 = *(v0 + 56);
        v16 = *(v0 + 32);
        v17 = v14 - 1;
        v18 = v13 + ((*(*(v0 + 48) + 80) + 32) & ~*(*(v0 + 48) + 80)) + *(*(v0 + 48) + 72) * v17;
        v13[2] = v17;
        sub_100320170(v18, v15);
        v19 = URL.lastPathComponent.getter();
        v21 = v20;
        *(v0 + 88) = v19;
        *(v0 + 96) = v20;
        v22 = swift_task_alloc();
        *(v0 + 104) = v22;
        v22[2] = v15;
        v22[3] = v19;
        v22[4] = v21;
        v22[5] = v16;
        v22[6] = v0 + 16;
        v23 = swift_task_alloc();
        *(v0 + 112) = v23;
        *v23 = v0;
        v23[1] = sub_10031C5B0;

        return Cache.inContextForEntry(withName:nonBlocking:_:)(v19, v21, 1, &unk_100408460, v22);
      }

      __break(1u);
    }

    else
    {

      if (qword_1004A9F70 == -1)
      {
LABEL_23:
        sub_1000270B4(v1, static Logger.caching);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "No more cache entries to evict!", v26, 2u);
        }

        sub_100179660();
        swift_allocError();
        *v27 = 3;
        swift_willThrow();
        goto LABEL_8;
      }
    }

    swift_once();
    goto LABEL_23;
  }

  sub_100320238(*(v0 + 56), type metadata accessor for CacheEntryFilesystemInfo);
LABEL_8:

  v10 = *(v0 + 8);
LABEL_9:

  return v10();
}

uint64_t sub_10031CEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = type metadata accessor for CocoaError.Code();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for ByteCountFormatStyle.Units();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = type metadata accessor for ByteCountFormatStyle.Style();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v9 = type metadata accessor for ByteCountFormatStyle();
  v5[25] = v9;
  v5[26] = *(v9 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = type metadata accessor for CacheEntryFilesystemInfo(0);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v10 = type metadata accessor for URLResourceValues();
  v5[31] = v10;
  v5[32] = *(v10 - 8);
  v5[33] = swift_task_alloc();
  sub_1000039E8(&qword_1004A73C0);
  v5[34] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v5[35] = v11;
  v5[36] = *(v11 - 8);
  v5[37] = swift_task_alloc();

  return _swift_task_switch(sub_10031D1E8, 0, 0);
}

uint64_t sub_10031D1E8()
{
  v86 = v0;
  sub_1000039E8(&qword_1004AC8B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 32) = NSURLContentModificationDateKey;
  v2 = NSURLContentModificationDateKey;
  sub_1001E9218(inited);
  swift_setDeallocating();
  sub_100320238(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[34];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[31];

  URLResourceValues.contentModificationDate.getter();
  (*(v7 + 8))(v6, v8);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_100013F2C(v0[34], &qword_1004A73C0);
    if (qword_1004A9F70 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000270B4(v9, static Logger.caching);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[12];
      v12 = v0[13];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v85[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1000026C0(v13, v12, v85);
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to get contentModificationDate for %s", v14, 0xCu);
      sub_100003C3C(v15);
    }
  }

  else
  {
    (*(v0[36] + 32))(v0[37], v0[34], v0[35]);
    sub_100320588(&qword_1004B0C88, &type metadata accessor for Date);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      if (qword_1004A9F70 != -1)
      {
        swift_once();
      }

      v18 = v0[29];
      v19 = v0[11];
      v20 = type metadata accessor for Logger();
      sub_1000270B4(v20, static Logger.caching);
      sub_1003201D4(v19, v18);

      v21 = Logger.logObject.getter();
      LOBYTE(v18) = static os_log_type_t.info.getter();

      v82 = v18;
      v22 = os_log_type_enabled(v21, v18);
      v23 = v0[29];
      if (v22)
      {
        v24 = v0[27];
        v79 = v0[25];
        v80 = v0[26];
        log = v21;
        v26 = v0[23];
        v25 = v0[24];
        v27 = v0[21];
        v76 = v0[28];
        v77 = v0[22];
        v28 = v0[20];
        v78 = v0[19];
        v29 = v0[12];
        v30 = v0[13];
        v31 = swift_slowAlloc();
        v85[0] = swift_slowAlloc();
        *v31 = 136315394;
        *(v31 + 4) = sub_1000026C0(v29, v30, v85);
        *(v31 + 12) = 2080;
        v0[10] = *(v23 + *(v76 + 20));
        (*(v26 + 104))(v25, enum case for ByteCountFormatStyle.Style.memory(_:), v77);
        static ByteCountFormatStyle.Units.all.getter();
        static FormatStyle<>.byteCount(style:allowedUnits:spellsOutZero:includesActualByteCount:)();
        (*(v28 + 8))(v27, v78);
        (*(v26 + 8))(v25, v77);
        sub_1001B1CDC();
        sub_100320588(&qword_1004B0C98, &type metadata accessor for ByteCountFormatStyle);
        sub_100320354();
        BinaryInteger.formatted<A>(_:)();
        (*(v80 + 8))(v24, v79);
        sub_100320238(v23, type metadata accessor for CacheEntryFilesystemInfo);
        v32 = sub_1000026C0(v0[7], v0[8], v85);

        *(v31 + 14) = v32;
        _os_log_impl(&_mh_execute_header, log, v82, "Evicting %s from cache (%s)", v31, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100320238(v23, type metadata accessor for CacheEntryFilesystemInfo);
      }

      v49 = v0[17];
      v51 = v0[13];
      v50 = v0[14];
      v52 = v0[12];
      sub_1000039E8(&qword_1004AAA10);
      v53 = *(type metadata accessor for FilePath() - 8);
      v54 = *(v53 + 72);
      v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v56 = swift_allocObject() + v55;
      (*(*v50 + 168))(v52, v51);
      v84 = v54;
      Cache.getTemporaryDirectoryPathForEntry(withName:)();
      Cache.getDownloadDirectoryPathForEntry(withName:)();
      v57 = objc_opt_self();
      v58 = (v49 + 8);
      v59 = 3;
      v60 = v56;
      do
      {
        v62 = [v57 defaultManager];
        FilePath.string.getter();
        v63 = String._bridgeToObjectiveC()();

        v0[9] = 0;
        v64 = [v62 removeItemAtPath:v63 error:v0 + 9];

        v65 = v0[9];
        if (v64)
        {
          v61 = v65;
        }

        else
        {
          v66 = v0[18];
          v67 = v0[16];
          v68 = v65;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          swift_errorRetain();
          static CocoaError.fileNoSuchFile.getter();
          sub_100320588(&qword_1004B0C90, &type metadata accessor for CocoaError.Code);
          v69 = static _ErrorCodeProtocol.~= infix(_:_:)();

          (*v58)(v66, v67);
          if ((v69 & 1) == 0)
          {
            (*(v0[36] + 8))(v0[37], v0[35]);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();

            v16 = v0[1];
            goto LABEL_8;
          }
        }

        v60 += v84;
        --v59;
      }

      while (v59);
      v70 = v0[28];
      v71 = v0[15];
      v72 = v0[11];
      (*(v0[36] + 8))(v0[37], v0[35]);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v73 = *(v72 + *(v70 + 20));
      v74 = __OFSUB__(*v71, v73);
      v75 = *v71 - v73;
      if (v74)
      {
        __break(1u);
      }

      *v0[15] = v75;
    }

    else
    {
      if (qword_1004A9F70 != -1)
      {
        swift_once();
      }

      v33 = v0[30];
      v34 = v0[11];
      v35 = type metadata accessor for Logger();
      sub_1000270B4(v35, static Logger.caching);
      sub_1003201D4(v34, v33);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v0[36];
      v40 = v0[37];
      v41 = v0[35];
      v42 = v0[30];
      if (v38)
      {
        v83 = v0[37];
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v85[0] = v44;
        *v43 = 136315138;
        v45 = URL.lastPathComponent.getter();
        v47 = v46;
        sub_100320238(v42, type metadata accessor for CacheEntryFilesystemInfo);
        v48 = sub_1000026C0(v45, v47, v85);

        *(v43 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v36, v37, "contentModificationDate for %s changed. Skipping...", v43, 0xCu);
        sub_100003C3C(v44);

        (*(v39 + 8))(v83, v41);
      }

      else
      {

        sub_100320238(v42, type metadata accessor for CacheEntryFilesystemInfo);
        (*(v39 + 8))(v40, v41);
      }
    }
  }

  v16 = v0[1];
LABEL_8:

  return v16();
}

uint64_t *Cache.deinit()
{
  v1 = *v0;
  v2 = direct field offset for Cache.cacheRootDirectory;
  v3 = type metadata accessor for FilePath();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  v4(v0 + *(*v0 + 120), v3);
  v4(v0 + *(*v0 + 128), v3);
  v4(v0 + *(*v0 + 136), v3);
  return v0;
}

uint64_t Cache.__deallocating_deinit()
{
  Cache.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10031DF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = v4[5];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_100189CAC;

  return sub_1003146CC(a1, a2, a3, a4, v10, v11, v12, v13);
}

uint64_t sub_10031E078()
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

  return sub_100317E2C(v2, v3, v4, v5, v6);
}

unint64_t sub_10031E138()
{
  result = qword_1004B0AD8;
  if (!qword_1004B0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0AD8);
  }

  return result;
}

uint64_t dispatch thunk of CacheDelegate.handleCacheMiss(forCacheEntryDirectory:lock:downloadInformation:downloadedFile:tempDir:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 24) + **(a9 + 24));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_100189CAC;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of CacheDelegate.handleCacheHit(forCacheEntryDirectory:lock:downloadInformation:tempDir:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 32) + **(a8 + 32));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_100001FE0;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of CacheDelegate.handleDownload(from:to:authentication:downloadConfiguration:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a4 + 32);
  v15 = *a5;
  v16 = *(a5 + 8);
  v17 = *(a5 + 48);
  v23 = (*(a8 + 40) + **(a8 + 40));
  v18 = swift_task_alloc();
  v19 = *a4;
  v20 = a4[1];
  *(v8 + 112) = v18;
  *(v8 + 88) = v20;
  *(v8 + 104) = v14;
  *(v8 + 16) = v15;
  *(v8 + 72) = v19;
  *(v8 + 24) = v16;
  v21 = *(a5 + 2);
  *(v8 + 32) = *(a5 + 1);
  *(v8 + 48) = v21;
  *(v8 + 64) = v17;
  *v18 = v8;
  v18[1] = sub_100179FDC;

  return v23(a1, a2, a3, v8 + 72, v8 + 16, a6, a7, a8);
}

uint64_t sub_10031E638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 > 3)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10031E708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = -a2;
  }

  return result;
}

uint64_t sub_10031E7C4()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10031E84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10031E950(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10031EA4C()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10031EAD8()
{
  result = type metadata accessor for FilePath();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of Cache.access(entryBackedByResourceAt:authentication:downloadConfiguration:delegateParameter:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t a5)
{
  v10 = v6;
  v12 = *(a3 + 32);
  v13 = *a4;
  v14 = *(a4 + 8);
  v15 = *(a4 + 48);
  v21 = (*(*v5 + 184) + **(*v5 + 184));
  v16 = swift_task_alloc();
  v17 = *a3;
  v18 = a3[1];
  *(v10 + 112) = v16;
  *(v10 + 88) = v18;
  *(v10 + 104) = v12;
  *(v10 + 16) = v13;
  *(v10 + 72) = v17;
  *(v10 + 24) = v14;
  v19 = *(a4 + 2);
  *(v10 + 32) = *(a4 + 1);
  *(v10 + 48) = v19;
  *(v10 + 64) = v15;
  *v16 = v10;
  v16[1] = sub_1003205D0;

  return v21(a1, a2, v10 + 72, v10 + 16, a5);
}

uint64_t dispatch thunk of Cache.purge(retainingEntriesForURLs:)(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100189CAC;

  return v6(a1);
}

Swift::Int sub_10031EED4(void **a1)
{
  v2 = *(type metadata accessor for CacheEntryFilesystemInfo(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10032015C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10031EF7C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10031EF7C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CacheEntryFilesystemInfo(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for CacheEntryFilesystemInfo(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10031F2CC(v8, v9, a1, v4);
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
    return sub_10031F0A8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10031F0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CacheEntryFilesystemInfo(0);
  v9 = __chkstk_darwin(v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_1003201D4(v23, v17);
      sub_1003201D4(v20, v13);
      v24 = static Date.> infix(_:_:)();
      sub_100320238(v13, type metadata accessor for CacheEntryFilesystemInfo);
      result = sub_100320238(v17, type metadata accessor for CacheEntryFilesystemInfo);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_100320170(v23, v35);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100320170(v25, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10031F2CC(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v99 = a1;
  v9 = type metadata accessor for CacheEntryFilesystemInfo(0);
  v107 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v101 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v110 = &v96 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v96 - v15;
  result = __chkstk_darwin(v14);
  v19 = &v96 - v18;
  v109 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_134;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_100078454(a4);
    }

    v112 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v109)
      {
        v92 = *(result + 16 * a4);
        v93 = result;
        v94 = *(result + 16 * (a4 - 1) + 40);
        sub_10031FB80(*v109 + *(v107 + 72) * v92, *v109 + *(v107 + 72) * *(result + 16 * (a4 - 1) + 32), *v109 + *(v107 + 72) * v94, v5);
        if (v6)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_100078454(v93);
        }

        if (a4 - 2 >= *(v93 + 2))
        {
          goto LABEL_122;
        }

        v95 = &v93[16 * a4];
        *v95 = v92;
        *(v95 + 1) = v94;
        v112 = v93;
        sub_1000783C8(a4 - 1);
        result = v112;
        a4 = *(v112 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v98 = a4;
  v111 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v102 = v22;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      v25 = *v109;
      v26 = *(v107 + 72);
      v5 = *v109 + v26 * v24;
      sub_1003201D4(v5, v19);
      sub_1003201D4(v25 + v26 * v23, v16);
      LODWORD(v106) = static Date.> infix(_:_:)();
      sub_100320238(v16, type metadata accessor for CacheEntryFilesystemInfo);
      result = sub_100320238(v19, type metadata accessor for CacheEntryFilesystemInfo);
      v97 = v23;
      v27 = v23 + 2;
      v108 = v26;
      v28 = v25 + v26 * v27;
      while (v20 != v27)
      {
        sub_1003201D4(v28, v19);
        sub_1003201D4(v5, v16);
        v29 = static Date.> infix(_:_:)() & 1;
        sub_100320238(v16, type metadata accessor for CacheEntryFilesystemInfo);
        result = sub_100320238(v19, type metadata accessor for CacheEntryFilesystemInfo);
        ++v27;
        v28 += v108;
        v5 += v108;
        if ((v106 & 1) != v29)
        {
          v20 = v27 - 1;
          break;
        }
      }

      v23 = v97;
      a4 = v98;
      if (v106)
      {
        if (v20 < v97)
        {
          goto LABEL_125;
        }

        if (v97 < v20)
        {
          v96 = v6;
          v30 = v108 * (v20 - 1);
          v31 = v20;
          v32 = v20 * v108;
          v106 = v20;
          v33 = v97;
          v34 = v97 * v108;
          do
          {
            if (v33 != --v31)
            {
              v35 = *v109;
              if (!*v109)
              {
                goto LABEL_131;
              }

              v5 = v35 + v34;
              sub_100320170(v35 + v34, v101);
              if (v34 < v30 || v5 >= v35 + v32)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v34 != v30)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100320170(v101, v35 + v30);
            }

            ++v33;
            v30 -= v108;
            v32 -= v108;
            v34 += v108;
          }

          while (v33 < v31);
          v6 = v96;
          v23 = v97;
          a4 = v98;
          v20 = v106;
        }
      }
    }

    v36 = v109[1];
    if (v20 < v36)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_124;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if ((v23 + a4) >= v36)
        {
          v37 = v109[1];
        }

        else
        {
          v37 = v23 + a4;
        }

        if (v37 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v20 != v37)
        {
          break;
        }
      }
    }

    v38 = v20;
    if (v20 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v102;
    }

    else
    {
      result = sub_100011948(0, *(v102 + 2) + 1, 1, v102);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v39 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v39 >> 1)
    {
      result = sub_100011948((v39 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v40 = &v22[16 * a4];
    *(v40 + 4) = v23;
    *(v40 + 5) = v38;
    v41 = *v99;
    if (!*v99)
    {
      goto LABEL_133;
    }

    v103 = v38;
    if (a4)
    {
      while (1)
      {
        v42 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v43 = *(v22 + 4);
          v44 = *(v22 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_52:
          if (v46)
          {
            goto LABEL_112;
          }

          v59 = &v22[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_115;
          }

          v65 = &v22[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_119;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v69 = &v22[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_66:
        if (v64)
        {
          goto LABEL_114;
        }

        v72 = &v22[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_117;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v42 - 1;
        if (v42 - 1 >= v5)
        {
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
          goto LABEL_127;
        }

        if (!*v109)
        {
          goto LABEL_130;
        }

        v80 = v22;
        v81 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v42 + 40];
        sub_10031FB80(*v109 + *(v107 + 72) * v81, *v109 + *(v107 + 72) * *&v22[16 * v42 + 32], *v109 + *(v107 + 72) * v5, v41);
        if (v6)
        {
        }

        if (v5 < v81)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_100078454(v80);
        }

        if (a4 >= *(v80 + 2))
        {
          goto LABEL_109;
        }

        v82 = &v80[16 * a4];
        *(v82 + 4) = v81;
        *(v82 + 5) = v5;
        v112 = v80;
        result = sub_1000783C8(v42);
        v22 = v112;
        v5 = *(v112 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v22[16 * v5 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_110;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_111;
      }

      v54 = &v22[16 * v5];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_113;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_116;
      }

      if (v58 >= v50)
      {
        v76 = &v22[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_120;
        }

        if (v45 < v79)
        {
          v42 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v109[1];
    v21 = v103;
    a4 = v98;
    if (v103 >= v20)
    {
      goto LABEL_95;
    }
  }

  v96 = v6;
  v83 = v20;
  v84 = v23;
  v85 = *v109;
  v86 = *(v107 + 72);
  v87 = *v109 + v86 * (v20 - 1);
  v88 = -v86;
  v97 = v84;
  v89 = v84 - v20;
  v106 = v83;
  v100 = v86;
  v5 = v85 + v83 * v86;
  v103 = v37;
LABEL_85:
  v104 = v5;
  v105 = v89;
  v108 = v87;
  v90 = v87;
  while (1)
  {
    sub_1003201D4(v5, v19);
    sub_1003201D4(v90, v16);
    a4 = static Date.> infix(_:_:)();
    sub_100320238(v16, type metadata accessor for CacheEntryFilesystemInfo);
    result = sub_100320238(v19, type metadata accessor for CacheEntryFilesystemInfo);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v87 = v108 + v100;
      v89 = v105 - 1;
      v38 = v103;
      v5 = v104 + v100;
      if (++v106 != v103)
      {
        goto LABEL_85;
      }

      v6 = v96;
      v23 = v97;
      if (v103 < v97)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v85)
    {
      break;
    }

    a4 = v110;
    sub_100320170(v5, v110);
    swift_arrayInitWithTakeFrontToBack();
    sub_100320170(a4, v90);
    v90 += v88;
    v5 += v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}