uint64_t sub_1001C13A0(uint64_t a1)
{
  v2 = sub_1001C1D28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C13DC(uint64_t a1)
{
  v2 = sub_1001C1D28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Prepare.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = sub_1000039E8(&qword_1004AB538);
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v30 = &v25 - v3;
  v4 = sub_1000039E8(&qword_1004AB550);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ArgumentVisibility();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for Prepare();
  __chkstk_darwin(v14 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v17 = type metadata accessor for ArgumentHelp();
  (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
  v18 = type metadata accessor for CompletionKind();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  type metadata accessor for DInitConfigSource();
  sub_1001C1F80(&qword_1004AB548, type metadata accessor for DInitConfigSource);
  Argument<A>.init(help:completion:)();
  sub_10000E2A8(a1, a1[3]);
  sub_1001C1D28();
  v19 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    sub_100003C3C(a1);
    v23 = v16;
  }

  else
  {
    v20 = v26;
    v21 = v28;
    sub_1001C1DDC();
    v22 = v29;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v27 + 8))(v6, v4);
    (*(v20 + 40))(v16, v30, v22);
    sub_1001C1E40(v16, v21, type metadata accessor for Prepare);
    sub_100003C3C(a1);
    v23 = v16;
  }

  return sub_1001C1D7C(v23, type metadata accessor for Prepare);
}

uint64_t sub_1001C18C8()
{
  v0 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for ArgumentVisibility();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v7 = type metadata accessor for ArgumentHelp();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = type metadata accessor for CompletionKind();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  type metadata accessor for DInitConfigSource();
  sub_1001C1F80(&qword_1004AB548, type metadata accessor for DInitConfigSource);
  return Argument<A>.init(help:completion:)();
}

uint64_t Prepare.init(source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000039E8(&qword_1004AB538);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1001C1B78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001FE0;

  return Prepare.run()();
}

uint64_t sub_1001C1C20(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AB540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Prepare()
{
  result = qword_1004AB5D8;
  if (!qword_1004AB5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001C1D28()
{
  result = qword_1004AB558;
  if (!qword_1004AB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB558);
  }

  return result;
}

uint64_t sub_1001C1D7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001C1DDC()
{
  result = qword_1004AB560;
  if (!qword_1004AB560)
  {
    sub_100003A94(&qword_1004AB538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB560);
  }

  return result;
}

uint64_t sub_1001C1E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C1F80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001C2020(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AB538);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001C20AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AB538);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1001C2128()
{
  sub_1001C2194();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1001C2194()
{
  if (!qword_1004AB5E8)
  {
    type metadata accessor for DInitConfigSource();
    v0 = type metadata accessor for Argument();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AB5E8);
    }
  }
}

unint64_t sub_1001C2200()
{
  result = qword_1004AB618;
  if (!qword_1004AB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB618);
  }

  return result;
}

unint64_t sub_1001C2258()
{
  result = qword_1004AB620;
  if (!qword_1004AB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB620);
  }

  return result;
}

unint64_t sub_1001C22B0()
{
  result = qword_1004AB628;
  if (!qword_1004AB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB628);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.sizeEquals(expectedSize:)(Swift::Int expectedSize)
{
  v3 = v2;
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v9(v8, v1, v5);
  sub_1002EC1CC(v8, &v19);
  if (!v2)
  {
    st_size = v19.st_size;
    if (v19.st_size == expectedSize)
    {
      return;
    }

    v18[1] = type metadata accessor for FileValidationError();
    sub_1001C2FDC(&qword_1004AB630, type metadata accessor for FileValidationError);
    v3 = swift_allocError();
    v12 = v11;
    v13 = sub_1000039E8(&qword_1004AB640);
    v14 = *(v13 + 48);
    v18[0] = *(v13 + 64);
    v9(v12, v1, v5);
    *&v12[v14] = st_size;
    *&v12[v18[0]] = expectedSize;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  type metadata accessor for FileValidationError();
  sub_1001C2FDC(&qword_1004AB630, type metadata accessor for FileValidationError);
  swift_allocError();
  v16 = v15;
  v17 = *(sub_1000039E8(&qword_1004AB638) + 48);
  v9(v16, v1, v5);
  *&v16[v17] = v3;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.sha256Equals(expectedSHA256:)(DarwinInit::DInitSHA256Digest expectedSHA256)
{
  v3 = v1;
  object = expectedSHA256.rawValue._object;
  countAndFlagsBits = expectedSHA256.rawValue._countAndFlagsBits;
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA256Digest();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v6 + 16);
  v35(v8, v3, v5);
  SHA256Digest.init(_:)(v8, v12);
  v13 = v2;
  if (v2)
  {
    goto LABEL_2;
  }

  v32 = v3;
  v17 = sub_100193028(v12);
  v33 = object;
  v36 = v17;
  sub_1000039E8(&qword_1004A6B48);
  sub_10004AF7C();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;
  v21 = v12;
  v22 = v18;
  (*(v10 + 8))(v21, v9);
  v23 = v33;

  if ((v22 != countAndFlagsBits || v20 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v31[1] = type metadata accessor for FileValidationError();
    sub_1001C2FDC(&qword_1004AB630, type metadata accessor for FileValidationError);
    v13 = swift_allocError();
    v31[0] = v22;
    v24 = v23;
    v26 = v25;
    v27 = sub_1000039E8(&qword_1004AB648);
    v28 = &v26[*(v27 + 48)];
    v29 = &v26[*(v27 + 64)];
    v30 = v32;
    v35(v26, v32, v5);
    *v28 = v31[0];
    *(v28 + 1) = v20;
    v3 = v30;
    *v29 = countAndFlagsBits;
    v29[1] = v24;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_2:
    type metadata accessor for FileValidationError();
    sub_1001C2FDC(&qword_1004AB630, type metadata accessor for FileValidationError);
    swift_allocError();
    v15 = v14;
    v16 = *(sub_1000039E8(&qword_1004AB638) + 48);
    v35(v15, v3, v5);
    *&v15[v16] = v13;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }
}

unint64_t FileValidationError.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FileValidationError();
  __chkstk_darwin(v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C2F78(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = sub_1000039E8(&qword_1004AB640);
      v13 = *&v8[*(v12 + 48)];
      v14 = *&v8[*(v12 + 64)];
      (*(v3 + 32))(v5, v8, v2);
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v15._object = 0x800000010043E8C0;
      v15._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v15);
      sub_1001C2FDC(&qword_1004AA058, &type metadata accessor for FilePath);
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      v17._countAndFlagsBits = 32;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      v38 = v13;
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v19._countAndFlagsBits = 0xD00000000000001ELL;
      v19._object = 0x800000010043E8E0;
      String.append(_:)(v19);
      v38 = v14;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
    }

    else
    {
      v23 = sub_1000039E8(&qword_1004AB648);
      v24 = &v8[*(v23 + 48)];
      v26 = *v24;
      v25 = v24[1];
      v27 = &v8[*(v23 + 64)];
      v29 = *v27;
      v28 = v27[1];
      (*(v3 + 32))(v5, v8, v2);
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      v30._countAndFlagsBits = 0xD000000000000012;
      v30._object = 0x800000010043E870;
      String.append(_:)(v30);
      sub_1001C2FDC(&qword_1004AA058, &type metadata accessor for FilePath);
      v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 32;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      v33._countAndFlagsBits = v26;
      v33._object = v25;
      String.append(_:)(v33);

      v34._countAndFlagsBits = 0xD000000000000020;
      v34._object = 0x800000010043E890;
      String.append(_:)(v34);
      v20 = v29;
      v21 = v28;
    }

    String.append(_:)(*&v20);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1000039E8(&qword_1004AB638);
      (*(v3 + 32))(v5, v8, v2);
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v39 = 0xD000000000000024;
      v40 = 0x800000010043E900;
    }

    else
    {
      sub_1000039E8(&qword_1004AB638);
      (*(v3 + 32))(v5, v8, v2);
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v39 = 0xD000000000000022;
      v40 = 0x800000010043E930;
    }

    sub_1001C2FDC(&qword_1004AA058, &type metadata accessor for FilePath);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 8250;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    swift_getErrorValue();
    v22._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v22);
  }

  v35 = v39;
  (*(v3 + 8))(v5, v2);
  return v35;
}

uint64_t type metadata accessor for FileValidationError()
{
  result = qword_1004AB6C0;
  if (!qword_1004AB6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001C2F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileValidationError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C2FDC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001C30BC()
{
  sub_1001C3164();
  if (v0 <= 0x3F)
  {
    sub_1001C31E0(319, &qword_1004AB6D8);
    if (v1 <= 0x3F)
    {
      sub_1001C31E0(319, &unk_1004AB6E0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1001C3164()
{
  if (!qword_1004AB6D0)
  {
    type metadata accessor for FilePath();
    sub_100003A94(&qword_1004AB0A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1004AB6D0);
    }
  }
}

void sub_1001C31E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for FilePath();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void static CFPreferences.set(value:for:in:)(const void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  if (qword_1004A9E38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = a4;
  v11 = a5;
  v12 = a6;
  sub_100184D50(v14, v10, v11, v12);
  swift_endAccess();

  v13 = String._bridgeToObjectiveC()();
  CFPreferencesSetValue(v13, a1, v10, v11, v12);
}

BOOL static CFPreferences.synchronize(domain:)(void *a1, void *a2, void *a3)
{
  if (qword_1004A9E38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = a1;
  v7 = a2;
  v8 = a3;
  sub_100184D50(v10, v6, v7, v8);
  swift_endAccess();

  return CFPreferencesSynchronize(v6, v7, v8) != 0;
}

CFPropertyListRef static CFPreferences.getValue(for:in:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (qword_1004A9E38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sub_100184D50(v14, v8, v9, v10);
  swift_endAccess();

  v11 = String._bridgeToObjectiveC()();
  v12 = CFPreferencesCopyValue(v11, v8, v9, v10);

  return v12;
}

uint64_t static CFPreferences.Domain.== infix(_:_:)()
{
  type metadata accessor for CFString(0);
  sub_1001C3F1C();
  if (static _CFObject.== infix(_:_:)() & 1) != 0 && (static _CFObject.== infix(_:_:)())
  {
    return static _CFObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CFPreferences.Domain.hash(into:)()
{
  type metadata accessor for CFString(0);
  sub_1001C3F1C();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  return _CFObject.hash(into:)();
}

Swift::Int CFPreferences.Domain.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_1001C3F1C();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001C37F0()
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_1001C3F1C();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001C3890()
{
  type metadata accessor for CFString(0);
  sub_1001C3F1C();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  return _CFObject.hash(into:)();
}

Swift::Int sub_1001C3920()
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_1001C3F1C();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001C39BC()
{
  type metadata accessor for CFString(0);
  sub_1001C3F1C();
  if (static _CFObject.== infix(_:_:)() & 1) != 0 && (static _CFObject.== infix(_:_:)())
  {
    return static _CFObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t CFPrefsError.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0xD000000000000021;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  _StringGuts.grow(_:)(27);
  v2._object = 0x800000010043E960;
  v2._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t _s10DarwinInit13CFPreferencesO11flushCachesyyFZ_0()
{
  if (qword_1004A9E38 != -1)
  {
LABEL_14:
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1004AB710;
  v1 = 1 << *(off_1004AB710 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(off_1004AB710 + 7);
  v4 = (v1 + 63) >> 6;

  v5 = 0;
  if (v3)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v6 >= v4)
    {
      break;
    }

    v3 = v0[v6 + 7];
    ++v5;
    if (v3)
    {
      v5 = v6;
      do
      {
LABEL_10:
        v3 &= v3 - 1;
        _CFPreferencesFlushCachesForIdentifier();
      }

      while (v3);
      continue;
    }
  }

  off_1004AB710 = &_swiftEmptySetSingleton;

  return CFPreferencesFlushCaches();
}

uint64_t sub_1001C3CA0(const void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  if (qword_1004A9E38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = a4;
  v11 = a5;
  v12 = a6;
  sub_100184D50(&v24, v10, v11, v12);
  swift_endAccess();

  v13 = String._bridgeToObjectiveC()();
  CFPreferencesSetValue(v13, a1, v10, v11, v12);

  swift_beginAccess();
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_100184D50(&v24, v14, v15, v16);
  swift_endAccess();

  if (CFPreferencesSynchronize(v14, v15, v16))
  {
    _s10DarwinInit13CFPreferencesO11flushCachesyyFZ_0();
    swift_beginAccess();
    v17 = v14;
    v18 = v15;
    v19 = v16;
    sub_100184D50(&v24, v17, v18, v19);
    swift_endAccess();

    v20 = String._bridgeToObjectiveC()();
    v21 = CFPreferencesCopyValue(v20, v17, v18, v19);

    if (v21)
    {
      if (CFEqual(v21, a1))
      {
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  sub_1001C416C();
  swift_allocError();
  *v23 = v21;
  return swift_willThrow();
}

unint64_t sub_1001C3F1C()
{
  result = qword_1004A6DB8;
  if (!qword_1004A6DB8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6DB8);
  }

  return result;
}

unint64_t sub_1001C3F78()
{
  result = qword_1004AB718;
  if (!qword_1004AB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB718);
  }

  return result;
}

uint64_t sub_1001C3FDC(uint64_t *a1, int a2)
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

uint64_t sub_1001C4024(uint64_t result, int a2, int a3)
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

uint64_t sub_1001C4074(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001C408C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001C40E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1001C413C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1001C416C()
{
  result = qword_1004AB720;
  if (!qword_1004AB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB720);
  }

  return result;
}

uint64_t Config.Network.Firewall.rules.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

DarwinInit::DInitAppleAuthenticationConfig::CodingKeys_optional __swiftcall DInitAppleAuthenticationConfig.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100485440, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.User.Authentication.Memento.VersionOneKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7372657375;
  }

  if (a1 == 1)
  {
    return 0x7370756F7267;
  }

  return 0x7265732D7061646CLL;
}

uint64_t sub_1001C42E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7370756F7267;
  if (v2 != 1)
  {
    v4 = 0x7265732D7061646CLL;
    v3 = 0xEB00000000726576;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7372657375;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7370756F7267;
  if (*a2 != 1)
  {
    v8 = 0x7265732D7061646CLL;
    v7 = 0xEB00000000726576;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7372657375;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001C43EC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C4490()
{
  String.hash(into:)();
}

Swift::Int sub_1001C4520()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::DInitAppleAuthenticationConfig::CodingKeys_optional sub_1001C45C0@<W0>(Swift::String *a1@<X0>, DarwinInit::DInitAppleAuthenticationConfig::CodingKeys_optional *a2@<X8>)
{
  result.value = DInitAppleAuthenticationConfig.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_1001C45F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7370756F7267;
  if (v2 != 1)
  {
    v5 = 0x7265732D7061646CLL;
    v4 = 0xEB00000000726576;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7372657375;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1001C4650()
{
  v1 = 0x7370756F7267;
  if (*v0 != 1)
  {
    v1 = 0x7265732D7061646CLL;
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

DarwinInit::DInitAppleAuthenticationConfig::CodingKeys_optional sub_1001C46AC@<W0>(uint64_t a1@<X0>, DarwinInit::DInitAppleAuthenticationConfig::CodingKeys_optional *a2@<X8>)
{
  result.value = DInitAppleAuthenticationConfig.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1001C46D4(uint64_t a1)
{
  v2 = sub_1001C4F98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C4710(uint64_t a1)
{
  v2 = sub_1001C4F98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitAppleAuthenticationConfig.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = a5;
  v14 = a3;
  v8 = sub_1000039E8(&qword_1004AB728);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_10000E2A8(a1, a1[3]);
  sub_1001C4F98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  sub_1000039E8(&qword_1004A6B48);
  sub_1000A6724(&qword_1004A8B08);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v5)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v16 = v14;
  v15 = 1;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v16) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t DInitAppleAuthenticationConfig.init(from:)(void *a1)
{
  result = sub_1001C4D3C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1001C49B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001C4D3C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void DInitAppleAuthenticationConfig.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    Hasher._combine(_:)(1u);
    v8 = *(a2 + 16);
    Hasher._combine(_:)(v8);
    if (v8)
    {
      v9 = a2 + 40;
      do
      {

        String.hash(into:)();

        v9 += 16;
        --v8;
      }

      while (v8);
    }

    if (a3)
    {
LABEL_6:
      Hasher._combine(_:)(1u);
      v10 = *(a3 + 16);
      Hasher._combine(_:)(v10);
      if (v10)
      {
        v11 = a3 + 40;
        do
        {

          String.hash(into:)();

          v11 += 16;
          --v10;
        }

        while (v10);
      }

      if (a5)
      {
        goto LABEL_10;
      }

LABEL_15:
      Hasher._combine(_:)(0);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  Hasher._combine(_:)(0);
  if (!a5)
  {
    goto LABEL_15;
  }

LABEL_10:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int DInitAppleAuthenticationConfig.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  DInitAppleAuthenticationConfig.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int sub_1001C4BB0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  DInitAppleAuthenticationConfig.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

Swift::Int sub_1001C4C1C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  DInitAppleAuthenticationConfig.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

BOOL _s10DarwinInit30DInitAppleAuthenticationConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!a5 || (sub_10024DC98(a1, a5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a2)
  {
    if (!a6 || (sub_10024DC98(a2, a6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a4)
  {
    return a8 && (a3 == a7 && a4 == a8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !a8;
}

uint64_t sub_1001C4D3C(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AB758);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_10000E2A8(a1, v7);
  sub_1001C4F98();
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
    LOBYTE(v11) = 2;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100003C3C(a1);
  return v7;
}

unint64_t sub_1001C4F98()
{
  result = qword_1004AB730;
  if (!qword_1004AB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB730);
  }

  return result;
}

unint64_t sub_1001C4FF0()
{
  result = qword_1004AB738;
  if (!qword_1004AB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB738);
  }

  return result;
}

unint64_t sub_1001C5048()
{
  result = qword_1004AB740;
  if (!qword_1004AB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB740);
  }

  return result;
}

unint64_t sub_1001C50A0()
{
  result = qword_1004AB748;
  if (!qword_1004AB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB748);
  }

  return result;
}

unint64_t sub_1001C50F8()
{
  result = qword_1004AB750;
  if (!qword_1004AB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB750);
  }

  return result;
}

uint64_t sub_1001C514C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1001C51A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t DInitNVRAMConfigSource.variable.getter@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v2 = 0x800000010043E9D0;
  v3 = 0xD000000000000012;
  if (result)
  {
    v3 = 0x692D6E6977726164;
    v2 = 0xEB0000000074696ELL;
  }

  *a2 = v3;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001C5268()
{
  if (*v0)
  {
    return 0x6C616D726F6ELL;
  }

  else
  {
    return 0x6D6574737973;
  }
}

uint64_t sub_1001C5294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6574737973 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000)
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

uint64_t sub_1001C5368(uint64_t a1)
{
  v2 = sub_1001C5798();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C53A4(uint64_t a1)
{
  v2 = sub_1001C5798();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C53E0(uint64_t a1)
{
  v2 = sub_1001C57EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C541C(uint64_t a1)
{
  v2 = sub_1001C57EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C5458(uint64_t a1)
{
  v2 = sub_1001C5840();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C5494(uint64_t a1)
{
  v2 = sub_1001C5840();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitNVRAMConfigSource.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_1000039E8(&qword_1004AB760);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_1000039E8(&qword_1004AB768);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_1000039E8(&qword_1004AB770);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_10000E2A8(a1, a1[3]);
  sub_1001C5798();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1001C57EC();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1001C5840();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_1001C5798()
{
  result = qword_1004AB778;
  if (!qword_1004AB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB778);
  }

  return result;
}

unint64_t sub_1001C57EC()
{
  result = qword_1004AB780;
  if (!qword_1004AB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB780);
  }

  return result;
}

unint64_t sub_1001C5840()
{
  result = qword_1004AB788;
  if (!qword_1004AB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB788);
  }

  return result;
}

uint64_t sub_1001C58B0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C7684(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t DInitConfigSource.description.getter()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DInitConfigSource();
  __chkstk_darwin(v9);
  v11 = (v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001C7B8C(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v13 = *v11;
      v14 = v11[1];
      v26[0] = 0xD000000000000011;
      v26[1] = 0x800000010043EA10;
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v15 = *v11;
      v16 = v11[1];
      v17 = v11[2];
      v14 = v11[3];
      v26[0] = 0;
      v26[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v26[0] = 0xD00000000000001CLL;
      v26[1] = 0x800000010043E9F0;
      v18._countAndFlagsBits = v15;
      v18._object = v16;
      String.append(_:)(v18);

      v19._countAndFlagsBits = 124;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v13 = v17;
      goto LABEL_10;
    }

    return 0x647261646E617473;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v6 + 32))(v8, v11, v5);
      strcpy(v26, "filesystem: ");
      BYTE5(v26[1]) = 0;
      HIWORD(v26[1]) = -5120;
      v20._countAndFlagsBits = FilePath.description.getter();
      String.append(_:)(v20);

      v21 = v26[0];
      (*(v6 + 8))(v8, v5);
      return v21;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v13 = *v11;
      v14 = v11[1];
      v26[0] = 0x203A6E6F736ALL;
      v26[1] = 0xE600000000000000;
LABEL_10:
      v23 = v14;
      String.append(_:)(*&v13);

      return v26[0];
    }

    (*(v2 + 32))(v4, v11, v1);
    strcpy(v26, "network: ");
    WORD1(v26[1]) = 0;
    HIDWORD(v26[1]) = -385875968;
    v24._countAndFlagsBits = URL.description.getter();
    String.append(_:)(v24);

    v25 = v26[0];
    (*(v2 + 8))(v4, v1);
    return v25;
  }
}

uint64_t DInitConfigSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v3 - 8);
  v5 = v52 - v4;
  v6 = type metadata accessor for URL();
  v57 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DInitConfigSource();
  __chkstk_darwin(v9);
  v11 = (v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000E2A8(a1, a1[3]);
  v12 = v65;
  dispatch thunk of Decoder.singleValueContainer()();
  if (v12)
  {
    return sub_100003C3C(a1);
  }

  v54 = v8;
  v55 = v9;
  v13 = v57;
  v65 = v11;
  sub_10000E2A8(v64, v64[3]);
  v15 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v17 = v16;
  v53 = 0;
  URL.init(string:)();
  if ((*(v13 + 48))(v5, 1, v6) == 1)
  {
    sub_100013F2C(v5, &qword_1004A6D30);
  }

  else
  {
    v18 = *(v13 + 32);
    v19 = v54;
    v18(v54, v5, v6);
    v52[0] = v6;
    v20 = URL.scheme.getter();
    v52[1] = v52;
    v60 = v20;
    v61 = v21;
    __chkstk_darwin(v20);
    v52[-2] = &v60;
    v22 = v53;
    v23 = sub_1001791D0(sub_1001C7CA8, &v52[-4], &off_1004850E8);
    v53 = v22;
    sub_1000039E8(&qword_1004A7330);
    swift_arrayDestroy();

    if (v23)
    {

      v24 = v65;
      v18(v65, v19, v52[0]);
      v25 = v56;
      v26 = a1;
LABEL_23:
      swift_storeEnumTagMultiPayload();
      sub_100003C3C(v64);
      sub_1001C7BF0(v24, v25);
      return sub_100003C3C(v26);
    }

    (*(v57 + 8))(v19, v52[0]);
  }

  v24 = v65;
  v27._countAndFlagsBits = 123;
  v27._object = 0xE100000000000000;
  if (String.hasPrefix(_:)(v27))
  {
    v28._countAndFlagsBits = 125;
    v28._object = 0xE100000000000000;
    if (String.hasSuffix(_:)(v28))
    {
      *v24 = v15;
      v24[1] = v17;
      v25 = v56;
      v26 = a1;
      goto LABEL_23;
    }
  }

  v29._countAndFlagsBits = 91;
  v29._object = 0xE100000000000000;
  v26 = a1;
  if (String.hasPrefix(_:)(v29))
  {
    v30._countAndFlagsBits = 93;
    v30._object = 0xE100000000000000;
    if (String.hasSuffix(_:)(v30))
    {
      *v24 = v15;
      v24[1] = v17;
LABEL_22:
      v25 = v56;
      goto LABEL_23;
    }
  }

  v31._countAndFlagsBits = 0x3D73646D69326365;
  v31._object = 0xE800000000000000;
  if (String.hasPrefix(_:)(v31))
  {
    v32 = String.count.getter();
    sub_10004D354(v32, v15, v17);

    v33 = static String._fromSubstring(_:)();
    v35 = v34;

    v36 = v65;
    *v65 = v33;
    v36[1] = v35;
    v24 = v36;
    goto LABEL_22;
  }

  v37._countAndFlagsBits = 0x656465746F6D6572;
  v37._object = 0xED00003D65636976;
  if (!String.hasPrefix(_:)(v37))
  {
    v24 = v65;
    FilePath.init(_:)();
    goto LABEL_22;
  }

  v38 = String.count.getter();
  v39 = sub_10004D354(v38, v15, v17);
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v60 = v39;
  v61 = v41;
  v62 = v43;
  v63 = v45;
  v58 = 124;
  v59 = 0xE100000000000000;
  sub_1001C7C54();
  sub_10000B080();
  v46 = StringProtocol.components<A>(separatedBy:)();

  v47 = v46[2];
  if (v47)
  {
    v25 = v56;
    if (v47 != 1)
    {
      v49 = v46[4];
      v48 = v46[5];
      v51 = v46[6];
      v50 = v46[7];

      v24 = v65;
      *v65 = v49;
      v24[1] = v48;
      v24[2] = v51;
      v24[3] = v50;
      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DInitConfigSource.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FilePath();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DInitConfigSource();
  __chkstk_darwin(v10);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_1001C7B8C(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v21._countAndFlagsBits = *v12;
      v22 = v12[1];
      strcpy(v29, "ec2imds=");
      BYTE1(v29[2]) = 0;
      HIWORD(v29[2]) = 0;
      v29[3] = -402653184;
      v21._object = v22;
      String.append(_:)(v21);
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        sub_100003BEC(v30, v31);
        dispatch thunk of SingleValueEncodingContainer.encode(_:)();
        return sub_100003C3C(v30);
      }

      v14._countAndFlagsBits = *v12;
      v15 = v12[1];
      v16 = v12[2];
      v17 = v12[3];
      strcpy(v29, "remotedevice=");
      HIWORD(v29[3]) = -4864;
      v14._object = v15;
      String.append(_:)(v14);

      v18._countAndFlagsBits = 124;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19._countAndFlagsBits = v16;
      v19._object = v17;
      String.append(_:)(v19);
    }

LABEL_11:
    sub_100003BEC(v30, v31);
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();

    return sub_100003C3C(v30);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v24 = v27;
      v23 = v28;
      (*(v27 + 32))(v6, v12, v28);
      sub_100003BEC(v30, v31);
      sub_1001C7DD0(&qword_1004A9058, &type metadata accessor for URL);
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
      (*(v24 + 8))(v6, v23);
      return sub_100003C3C(v30);
    }

    goto LABEL_11;
  }

  v20 = v26;
  (*(v26 + 32))(v9, v12, v7);
  sub_100003BEC(v30, v31);
  sub_1001C7DD0(&qword_1004AB798, &type metadata accessor for FilePath);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  (*(v20 + 8))(v9, v7);
  return sub_100003C3C(v30);
}

uint64_t DInitConfigSource.init(argument:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 45 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    type metadata accessor for DInitConfigSource();
    goto LABEL_5;
  }

  v14._countAndFlagsBits = 123;
  v14._object = 0xE100000000000000;
  if (String.hasPrefix(_:)(v14) && (v15._countAndFlagsBits = 125, v15._object = 0xE100000000000000, String.hasSuffix(_:)(v15)) || (v16._countAndFlagsBits = 91, v16._object = 0xE100000000000000, String.hasPrefix(_:)(v16)) && (v17._countAndFlagsBits = 93, v17._object = 0xE100000000000000, String.hasSuffix(_:)(v17)))
  {
    *a3 = a1;
    a3[1] = a2;
    type metadata accessor for DInitConfigSource();
LABEL_5:

    return swift_storeEnumTagMultiPayload();
  }

  URL.init(string:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100013F2C(v8, &qword_1004A6D30);
  }

  else
  {
    v42 = *(v10 + 32);
    v42(v12, v8, v9);
    v18 = URL.scheme.getter();
    v43 = &v41;
    v46 = v18;
    v47 = v19;
    __chkstk_darwin(v18);
    *(&v41 - 2) = &v46;
    v20 = sub_1001791D0(sub_1001C820C, (&v41 - 4), &off_100485128);
    sub_1000039E8(&qword_1004A7330);
    swift_arrayDestroy();

    if (v20)
    {

      v42(a3, v12, v9);
      type metadata accessor for DInitConfigSource();
      return swift_storeEnumTagMultiPayload();
    }

    (*(v10 + 8))(v12, v9);
  }

  v21._countAndFlagsBits = 0x3D73646D69326365;
  v21._object = 0xE800000000000000;
  if (String.hasPrefix(_:)(v21))
  {
    v22 = String.count.getter();
    sub_10004D354(v22, a1, a2);

    v23 = static String._fromSubstring(_:)();
    v25 = v24;

    *a3 = v23;
    a3[1] = v25;
    type metadata accessor for DInitConfigSource();
    return swift_storeEnumTagMultiPayload();
  }

  v26._countAndFlagsBits = 0x656465746F6D6572;
  v26._object = 0xED00003D65636976;
  if (!String.hasPrefix(_:)(v26))
  {
    FilePath.init(_:)();
    type metadata accessor for DInitConfigSource();
    return swift_storeEnumTagMultiPayload();
  }

  v27 = String.count.getter();
  v28 = sub_10004D354(v27, a1, a2);
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v46 = v28;
  v47 = v30;
  v48 = v32;
  v49 = v34;
  v44 = 124;
  v45 = 0xE100000000000000;
  sub_1001C7C54();
  sub_10000B080();
  v35 = StringProtocol.components<A>(separatedBy:)();

  v36 = v35[2];
  if (v36)
  {
    if (v36 != 1)
    {
      v38 = v35[4];
      v37 = v35[5];
      v40 = v35[6];
      v39 = v35[7];

      *a3 = v38;
      a3[1] = v37;
      a3[2] = v40;
      a3[3] = v39;
      type metadata accessor for DInitConfigSource();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C6C4C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  DInitConfigSource.init(argument:)(a1, a2, a4);
  v6 = *(*(a3 - 8) + 56);

  return v6(a4, 0, 1, a3);
}

void DInitConfigSource.hash(into:)()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DInitConfigSource();
  __chkstk_darwin(v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C7B8C(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v13 = 3;
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload == 4)
    {
      Hasher._combine(_:)(5uLL);
      String.hash(into:)();

      String.hash(into:)();
LABEL_11:

      return;
    }

    Hasher._combine(_:)(4uLL);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v6 + 32))(v8, v11, v5);
      Hasher._combine(_:)(0);
      sub_1001C7DD0(&qword_1004AB7A0, &type metadata accessor for FilePath);
      dispatch thunk of Hashable.hash(into:)();
      (*(v6 + 8))(v8, v5);
      return;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v13 = 1;
LABEL_10:
      Hasher._combine(_:)(v13);
      String.hash(into:)();
      goto LABEL_11;
    }

    (*(v2 + 32))(v4, v11, v1);
    Hasher._combine(_:)(2uLL);
    sub_1001C7DD0(&qword_1004AB370, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }
}

Swift::Int DInitConfigSource.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitConfigSource.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001C7054()
{
  Hasher.init(_seed:)();
  DInitConfigSource.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_1001C7090(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }
  }

  return result;
}

uint64_t _s10DarwinInit17DInitConfigSourceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = type metadata accessor for URL();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v51 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FilePath();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DInitConfigSource();
  v9 = __chkstk_darwin(v8);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v14 = (&v51 - v13);
  v15 = __chkstk_darwin(v12);
  v17 = &v51 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = (&v51 - v19);
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  v23 = sub_1000039E8(&qword_1004AB8B0);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v51 - v25;
  v27 = (&v51 + *(v24 + 56) - v25);
  sub_1001C7B8C(a1, &v51 - v25);
  sub_1001C7B8C(v56, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1001C7B8C(v26, v14);
      v30 = *v14;
      v29 = v14[1];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_42;
        }

        goto LABEL_30;
      }

      sub_1001C7B8C(v26, v11);
      v32 = *v11;
      v31 = v11[1];
      v34 = v11[2];
      v33 = v11[3];
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v36 = v27[2];
        v35 = v27[3];
        if (v32 == *v27 && v31 == v27[1])
        {
        }

        else
        {
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v38 & 1) == 0)
          {

LABEL_40:
            sub_1001C81B0(v26);
            goto LABEL_31;
          }
        }

        if (v34 != v36 || v33 != v35)
        {
          goto LABEL_39;
        }

        goto LABEL_41;
      }
    }

LABEL_28:

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1001C7B8C(v26, v20);
      v30 = *v20;
      v29 = v20[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_28;
      }

LABEL_18:
      if (v30 != *v27 || v29 != v27[1])
      {
LABEL_39:
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v49 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_42:
        sub_1001C81B0(v26);
        v43 = 1;
        return v43 & 1;
      }

LABEL_41:

      goto LABEL_42;
    }

    sub_1001C7B8C(v26, v17);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v54 + 8))(v17, v55);
      goto LABEL_30;
    }

    v41 = v54;
    v40 = v55;
    v42 = v51;
    (*(v54 + 32))(v51, v27, v55);
    v43 = static URL.== infix(_:_:)();
    v44 = *(v41 + 8);
    v44(v42, v40);
    v44(v17, v40);
LABEL_33:
    sub_1001C81B0(v26);
    return v43 & 1;
  }

  sub_1001C7B8C(v26, v22);
  if (!swift_getEnumCaseMultiPayload())
  {
    v46 = v52;
    v45 = v53;
    (*(v52 + 32))(v7, v27, v53);
    v43 = static FilePath.== infix(_:_:)();
    v47 = *(v46 + 8);
    v47(v7, v45);
    v47(v22, v45);
    goto LABEL_33;
  }

  (*(v52 + 8))(v22, v53);
LABEL_30:
  sub_100013F2C(v26, &qword_1004AB8B0);
LABEL_31:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_1001C7684(void *a1)
{
  v2 = sub_1000039E8(&qword_1004AB8B8);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v5 = sub_1000039E8(&qword_1004AB8C0);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_1000039E8(&qword_1004AB8C8);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_10000E2A8(a1, a1[3]);
  sub_1001C5798();
  v11 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return sub_100003C3C(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = KeyedDecodingContainer.allKeys.getter();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_10019106C();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    sub_1000039E8(&qword_1004A7168);
    *v19 = &type metadata for DInitNVRAMConfigSource;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_100003C3C(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1001C57EC();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1001C5840();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_100003C3C(v26);
  return v31 & 1;
}

uint64_t type metadata accessor for DInitConfigSource()
{
  result = qword_1004AB838;
  if (!qword_1004AB838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001C7B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DInitConfigSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C7BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DInitConfigSource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001C7C54()
{
  result = qword_1004AB790;
  if (!qword_1004AB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB790);
  }

  return result;
}

unint64_t sub_1001C7CCC()
{
  result = qword_1004AB7A8;
  if (!qword_1004AB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB7A8);
  }

  return result;
}

unint64_t sub_1001C7D24()
{
  result = qword_1004AB7B0;
  if (!qword_1004AB7B0)
  {
    sub_100003A94(&qword_1004AB7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB7B0);
  }

  return result;
}

uint64_t sub_1001C7DD0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001C7E28()
{
  type metadata accessor for FilePath();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_1001C7EB8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1001C7EB8()
{
  if (!qword_1004AB848)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1004AB848);
    }
  }
}

unint64_t sub_1001C7F4C()
{
  result = qword_1004AB878;
  if (!qword_1004AB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB878);
  }

  return result;
}

unint64_t sub_1001C7FA4()
{
  result = qword_1004AB880;
  if (!qword_1004AB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB880);
  }

  return result;
}

unint64_t sub_1001C7FFC()
{
  result = qword_1004AB888;
  if (!qword_1004AB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB888);
  }

  return result;
}

unint64_t sub_1001C8054()
{
  result = qword_1004AB890;
  if (!qword_1004AB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB890);
  }

  return result;
}

unint64_t sub_1001C80AC()
{
  result = qword_1004AB898;
  if (!qword_1004AB898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB898);
  }

  return result;
}

unint64_t sub_1001C8104()
{
  result = qword_1004AB8A0;
  if (!qword_1004AB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB8A0);
  }

  return result;
}

unint64_t sub_1001C815C()
{
  result = qword_1004AB8A8;
  if (!qword_1004AB8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB8A8);
  }

  return result;
}

uint64_t sub_1001C81B0(uint64_t a1)
{
  v2 = type metadata accessor for DInitConfigSource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t URLRequest.logDescription.getter()
{
  v0 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v0 - 8);
  v2 = v33 - v1;
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v3 = URLRequest.httpMethod.getter();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 5522759;
    v5 = 0xE300000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v3);

  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  URLRequest.url.getter();
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v2, 1, v8) == 1)
  {
    sub_10004B034(v2);
    v10 = 0xE900000000000074;
    v11 = 0x736F686C61636F6CLL;
  }

  else
  {
    v12 = URL.absoluteString.getter();
    v10 = v13;
    (*(v9 + 8))(v2, v8);
    v11 = v12;
  }

  v14 = v10;
  String.append(_:)(*&v11);

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  if (!URLRequest.allHTTPHeaderFields.getter())
  {
    sub_1001862DC(&_swiftEmptyArrayStorage);
  }

  v16 = Dictionary.description.getter();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 32;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21 = URLRequest.httpBody.getter();
  if (v22 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v27 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v27 != 2)
    {
      sub_100031914(v21, v22);
LABEL_10:
      v23 = 0;
LABEL_11:
      v33[1] = v23;
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v24);

      v25._countAndFlagsBits = 0x736574794220;
      v25._object = 0xE600000000000000;
      String.append(_:)(v25);
      return v34;
    }

    v30 = *(v21 + 16);
    v29 = *(v21 + 24);
    v21 = sub_100031914(v21, v22);
    v23 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v27)
  {
    v28 = BYTE6(v22);
    sub_100031914(v21, v22);
    v23 = v28;
    goto LABEL_11;
  }

  v31 = HIDWORD(v21);
  v32 = v21;
  result = sub_100031914(v21, v22);
  LODWORD(v23) = v31 - v32;
  if (!__OFSUB__(v31, v32))
  {
    v23 = v23;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t DInitNarrativeIdentitiesConfig.options.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_1001C8518(v2);
}

uint64_t sub_1001C8518(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t DInitNarrativeIdentitiesConfig.options.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1001C855C(*(v1 + 16));
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1001C855C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t DInitNarrativeIdentitiesConfig.init(identity:options:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  return result;
}

DarwinInit::DInitNarrativeIdentitiesConfig::CodingKeys_optional __swiftcall DInitNarrativeIdentitiesConfig.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004854F8, v2);

  if (v3 == 1)
  {
    v4.value = DarwinInit_DInitNarrativeIdentitiesConfig_CodingKeys_options;
  }

  else
  {
    v4.value = DarwinInit_DInitNarrativeIdentitiesConfig_CodingKeys_unknownDefault;
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

uint64_t Config.NarrativeVersionOneKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x797469746E656469;
  }
}

uint64_t sub_1001C8610(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736E6F6974706FLL;
  }

  else
  {
    v3 = 0x797469746E656469;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x736E6F6974706FLL;
  }

  else
  {
    v5 = 0x797469746E656469;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001C86B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C873C()
{
  String.hash(into:)();
}

Swift::Int sub_1001C87AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C882C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1004854F8, *a1);

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

void sub_1001C888C(uint64_t *a1@<X8>)
{
  v2 = 0x797469746E656469;
  if (*v1)
  {
    v2 = 0x736E6F6974706FLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001C88CC()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x797469746E656469;
  }
}

uint64_t sub_1001C8908@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1004854F8, v3);

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

uint64_t sub_1001C896C(uint64_t a1)
{
  v2 = sub_1001C8C08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C89A8(uint64_t a1)
{
  v2 = sub_1001C8C08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitNarrativeIdentitiesConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AB8D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1001C8C08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
    v15 = 0xF000000000000007;
  }

  else
  {
    v18 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v13 = v9;
    v17 = 1;
    sub_1001B5418();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v14 = v16[1];
    sub_1001C855C(0xF000000000000007);
    *a2 = v13;
    a2[1] = v12;
    a2[2] = v14;

    sub_1001C8518(v14);
    sub_100003C3C(a1);

    v15 = v14;
  }

  return sub_1001C855C(v15);
}

unint64_t sub_1001C8C08()
{
  result = qword_1004AB8D8;
  if (!qword_1004AB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB8D8);
  }

  return result;
}

uint64_t DInitNarrativeIdentitiesConfig.encode(to:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AB8E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v10 = *(v1 + 16);
  sub_10000E2A8(a1, a1[3]);
  sub_1001C8C08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  v7 = v11;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v7)
  {
    v12 = v10;
    v13 = 1;
    sub_1001C8518(v10);
    sub_1001B54D4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1001C855C(v12);
  }

  return (*(v4 + 8))(v6, v3);
}

void DInitNarrativeIdentitiesConfig.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  String.hash(into:)();
  if ((~v3 & 0xF000000000000007) != 0)
  {
    Hasher._combine(_:)(1u);

    JSON.hash(into:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int DInitNarrativeIdentitiesConfig.hashValue.getter()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if ((~v1 & 0xF000000000000007) != 0)
  {
    Hasher._combine(_:)(1u);

    JSON.hash(into:)(v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1001C8F78()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 16);
  String.hash(into:)();
  if ((~v1 & 0xF000000000000007) != 0)
  {
    Hasher._combine(_:)(1u);

    JSON.hash(into:)(v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

BOOL _s10DarwinInit30DInitNarrativeIdentitiesConfigV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    if ((~v2 & 0xF000000000000007) != 0)
    {
      v9 = v2;
      if ((~v3 & 0xF000000000000007) != 0)
      {
        v8 = v3;
        sub_1001C8518(v2);
        sub_1001C8518(v3);
        sub_1001C8518(v2);
        v7 = _s10DarwinInit4JSONO2eeoiySbAC_ACtFZ_0(&v9, &v8);

        sub_1001C855C(v2);
        return (v7 & 1) != 0;
      }

      sub_1001C8518(v2);
      sub_1001C8518(v3);
      sub_1001C8518(v2);
    }

    else
    {
      sub_1001C8518(v2);
      sub_1001C8518(v3);
      if ((~v3 & 0xF000000000000007) == 0)
      {
        sub_1001C855C(v2);
        return 1;
      }
    }

    sub_1001C855C(v2);
    sub_1001C855C(v3);
    return 0;
  }

  return result;
}

unint64_t sub_1001C9138()
{
  result = qword_1004AB8E8;
  if (!qword_1004AB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB8E8);
  }

  return result;
}

unint64_t sub_1001C9190()
{
  result = qword_1004AB8F0;
  if (!qword_1004AB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB8F0);
  }

  return result;
}

unint64_t sub_1001C91E8()
{
  result = qword_1004AB8F8;
  if (!qword_1004AB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB8F8);
  }

  return result;
}

unint64_t sub_1001C9240()
{
  result = qword_1004AB900;
  if (!qword_1004AB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB900);
  }

  return result;
}

uint64_t sub_1001C9294(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x79)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001C92C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001C930C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t DInitUSR.rawValue.getter(unsigned __int8 a1)
{
  v1 = 7169394;
  v2 = 1701736302;
  v3 = 0x746C7561666564;
  if (a1 == 3)
  {
    v3 = 0;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x7665642D6D6572;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t DInitUSR.rebootType.getter(unsigned __int8 a1)
{
  if (a1 < 2u)
  {
    return 0x2100000000000000;
  }

  if (a1 - 2 >= 2)
  {
    return 0x2000000000000000;
  }

  sub_100187F6C();
  swift_allocError();
  *v1 = 1;
  return swift_willThrow();
}

unint64_t DInitUSR.rebootPurpose.getter(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 5;
    }

    else
    {
      v3 = 4;
    }

    v4 = 0;
  }

  else
  {
    if (a1 - 2 < 2)
    {
      sub_100187F6C();
      swift_allocError();
      *v1 = 0;
      return swift_willThrow();
    }

    v3 = 0;
    v4 = 1;
  }

  return v3 | (v4 << 32);
}

uint64_t sub_1001C94FC(_BYTE *a1, _BYTE *a2)
{
  v2 = 7169394;
  v3 = *a1;
  v4 = *a2;
  v5 = 0xE300000000000000;
  v6 = 0xE400000000000000;
  v7 = 1701736302;
  v8 = 0xE000000000000000;
  v9 = 0x746C7561666564;
  if (v3 == 3)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v3 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x7665642D6D6572;
  if (*a1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v10 = 7169394;
  }

  if (*a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v3 <= 1)
  {
    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  v13 = 0xE300000000000000;
  v14 = 0xE400000000000000;
  v15 = 1701736302;
  v16 = 0xE000000000000000;
  v17 = 0x746C7561666564;
  if (v4 == 3)
  {
    v17 = 0;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v4 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a2)
  {
    v2 = 0x7665642D6D6572;
    v13 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v18 = v2;
  }

  else
  {
    v18 = v15;
  }

  if (*a2 <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  if (v11 == v18 && v12 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

Swift::Int sub_1001C9644()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C9708()
{
  String.hash(into:)();
}

Swift::Int sub_1001C97B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001C9878@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit8DInitUSRO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001C98A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7169394;
  v5 = 0xE400000000000000;
  v6 = 1701736302;
  v7 = 0xE000000000000000;
  v8 = 0x746C7561666564;
  if (v2 == 3)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7665642D6D6572;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1001C9954()
{
  sub_1001C9D20();

  return RawRepresentable<>.init(argument:)();
}

uint64_t sub_1001C99C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C9D20();

  return ExpressibleByArgument<>.defaultValueDescription.getter(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_1001C9A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C9D74();
  v5 = sub_1001C9D20();

  return static ExpressibleByArgument<>.allValueStrings.getter(a1, a2, v4, v5, &protocol witness table for String);
}

uint64_t sub_1001C9A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C9D74();

  return static ExpressibleByArgument<>.defaultCompletionKind.getter(a1, a2, v4);
}

unint64_t _s10DarwinInit8DInitUSRO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100485380, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001C9BEC()
{
  result = qword_1004AB908;
  if (!qword_1004AB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB908);
  }

  return result;
}

unint64_t sub_1001C9C44()
{
  result = qword_1004AB910;
  if (!qword_1004AB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB910);
  }

  return result;
}

unint64_t sub_1001C9C9C()
{
  result = qword_1004AB918;
  if (!qword_1004AB918)
  {
    sub_100003A94(&qword_1004AB920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB918);
  }

  return result;
}

unint64_t sub_1001C9D20()
{
  result = qword_1004AB928;
  if (!qword_1004AB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB928);
  }

  return result;
}

unint64_t sub_1001C9D74()
{
  result = qword_1004AB930;
  if (!qword_1004AB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB930);
  }

  return result;
}

uint64_t sub_1001C9DC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1000279A4(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_100183420(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for CodingUserInfoKey();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_100013F2C(a1, &qword_1004ABBB0);
    sub_1001D191C(a2, v9);
    v7 = type metadata accessor for CodingUserInfoKey();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_100013F2C(v9, &qword_1004ABBB0);
  }

  return result;
}

uint64_t sub_1001C9EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_100026BFC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_100013364(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_10005D7B4();
        v16 = v18;
      }

      result = sub_10005D37C(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t DInitConfig.firewallConfig.getter()
{
  v1 = *(v0 + 56);
  sub_1001D6F74(v1, *(v0 + 64));
  return v1;
}

uint64_t DInitConfig.firewallConfig.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1001D6F88(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t Config.User.groups.setter(uint64_t a1)
{

  *(v1 + 168) = a1;
  return result;
}

uint64_t DInitConfig.preferencesConfig.setter(uint64_t a1)
{

  *(v1 + 176) = a1;
  return result;
}

uint64_t DInitConfig.narrativeIdentitiesConfig.setter(uint64_t a1)
{

  *(v1 + 184) = a1;
  return result;
}

uint64_t DInitConfig.networkConfig.setter(uint64_t a1)
{

  *(v1 + 328) = a1;
  return result;
}

uint64_t DInitConfig.networkUplinkMTU.setter(uint64_t result, char a2)
{
  *(v2 + 336) = result;
  *(v2 + 344) = a2 & 1;
  return result;
}

uint64_t DInitConfig.featureFlagsConfig.setter(uint64_t a1)
{

  *(v1 + 424) = a1;
  return result;
}

uint64_t DInitConfig.logText.getter()
{
  v1 = *(v0 + 432);

  return v1;
}

uint64_t DInitConfig.logText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 432) = a1;
  *(v2 + 440) = a2;
  return result;
}

uint64_t DInitConfig.legacyComputerName.getter()
{
  v1 = *(v0 + 448);

  return v1;
}

uint64_t DInitConfig.legacyComputerName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 448) = a1;
  *(v2 + 456) = a2;
  return result;
}

uint64_t DInitConfig.legacyHostName.getter()
{
  v1 = *(v0 + 464);

  return v1;
}

uint64_t DInitConfig.legacyHostName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 464) = a1;
  *(v2 + 472) = a2;
  return result;
}

uint64_t DInitConfig.legacyFQDN.getter()
{
  v1 = *(v0 + 480);

  return v1;
}

uint64_t DInitConfig.legacyFQDN.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 480) = a1;
  *(v2 + 488) = a2;
  return result;
}

uint64_t DInitConfig.computerName.getter()
{
  v1 = *(v0 + 496);

  return v1;
}

uint64_t DInitConfig.computerName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 496) = a1;
  *(v2 + 504) = a2;
  return result;
}

uint64_t DInitConfig.hostName.getter()
{
  v1 = *(v0 + 512);

  return v1;
}

uint64_t DInitConfig.hostName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 512) = a1;
  *(v2 + 520) = a2;
  return result;
}

uint64_t DInitConfig.localHostName.getter()
{
  v1 = *(v0 + 528);

  return v1;
}

uint64_t DInitConfig.localHostName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 528) = a1;
  *(v2 + 536) = a2;
  return result;
}

uint64_t DInitConfig.preInitCommands.setter(uint64_t a1)
{

  *(v1 + 552) = a1;
  return result;
}

uint64_t DInitConfig.secureConfigParameters.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 568);
  *a1 = v2;
  return sub_1001C8518(v2);
}

uint64_t DInitConfig.secureConfigParameters.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1001C855C(*(v1 + 568));
  *(v1 + 568) = v2;
  return result;
}

uint64_t DInitConfig.usageLabel.getter()
{
  v1 = *(v0 + 576);

  return v1;
}

uint64_t DInitConfig.usageLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 576) = a1;
  *(v2 + 584) = a2;
  return result;
}

uint64_t DInitConfig.cryptexCacheMaxTotalSize.setter(uint64_t result, char a2)
{
  *(v2 + 600) = result;
  *(v2 + 608) = a2 & 1;
  return result;
}

uint64_t DInitConfig.retainedCryptexes.setter(uint64_t a1)
{

  *(v1 + 616) = a1;
  return result;
}

uint64_t DInitConfig.configSecurityPolicy.getter()
{
  v1 = *(v0 + 624);

  return v1;
}

uint64_t DInitConfig.configSecurityPolicy.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 624) = a1;
  *(v2 + 632) = a2;
  return result;
}

uint64_t DInitConfig.configSecurityPolicyVersion.setter(uint64_t result, char a2)
{
  *(v2 + 640) = result;
  *(v2 + 648) = a2 & 1;
  return result;
}

uint64_t DInitConfig.volumes.setter(uint64_t a1)
{

  *(v1 + 656) = a1;
  return result;
}

uint64_t DInitConfig.applyTimeoutArgument.getter()
{
  v1 = *(v0 + 664);

  return v1;
}

uint64_t DInitConfig.applyTimeoutArgument.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 664) = a1;
  *(v2 + 672) = a2;
  return result;
}

uint64_t DInitConfig.applyTimeout.getter()
{
  if (!*(v0 + 672))
  {
    return 0;
  }

  result = sub_100292FFC();
  if (v2)
  {
    type metadata accessor for ValidationError();
    sub_1001D8A58(&qword_1004AB958, &type metadata accessor for ValidationError);
    swift_allocError();
    ValidationError.init(_:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t DInitConfig.bandwidthLimit.setter(uint64_t result, char a2)
{
  *(v2 + 680) = result;
  *(v2 + 688) = a2 & 1;
  return result;
}

uint64_t DInitConfig.origin.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 696);
  v3 = *(v1 + 704);
  *a1 = v2;
  a1[1] = v3;
  return sub_1001D6F9C(v2);
}

uint64_t DInitConfig.origin.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1001D6FE0(*(v1 + 696));
  *(v1 + 696) = v2;
  *(v1 + 704) = v3;
  return result;
}

uint64_t DInitConfig.cryptexCacheInvalidationId.getter()
{
  v1 = *(v0 + 712);

  return v1;
}

uint64_t DInitConfig.cryptexCacheInvalidationId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 712) = a1;
  *(v2 + 720) = a2;
  return result;
}

double DInitConfig.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 33) = 0u;
  *(a1 + 56) = xmmword_1003772E0;
  *(a1 + 72) = xmmword_1003772E0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 3;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = 768;
  v2 = (a1 + 328);
  *(a1 + 344) = 1;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = 2;
  *(a1 + 416) = 0;
  *(a1 + 544) = 33686018;
  *(a1 + 548) = 2;
  *(a1 + 549) = 5;
  *(a1 + 560) = 514;
  *(a1 + 568) = 0xF000000000000007;
  v3 = (a1 + 424);
  *(a1 + 536) = 0;
  *(a1 + 552) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 2;
  *(a1 + 600) = 0;
  *(a1 + 608) = 1;
  *(a1 + 648) = 513;
  v4 = (a1 + 616);
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 1;
  v5 = (a1 + 696);
  *(a1 + 200) = 0u;
  v6 = (a1 + 200);
  v6[4] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  *v2 = 0u;
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  *v4 = 0u;
  v4[1] = 0u;
  *v5 = 0u;
  v5[1] = 0u;
  return result;
}

__n128 DInitConfig.init(caRoots:cryptexConfig:diavloConfig:firewallConfig:installConfig:packageConfig:preferencesConfig:narrativeIdentitiesConfig:resultConfig:userConfig:logConfig:networkConfig:networkUplinkMTU:tailspinConfig:featureFlagsConfig:logText:legacyComputerName:legacyHostName:legacyFQDN:computerName:hostName:localHostName:collectPerfData:enableSSH:enableSSHPasswordAuthentication:lockCryptexes:rebootAfterSetup:USRAfterSetup:preInitCommands:preInitCritical:issueDCRT:secureConfigParameters:usageLabel:retainPreviouslyCachedCryptexesUnsafely:cryptexCacheMaxTotalSize:retainedCryptexes:configSecurityPolicy:configSecurityPolicyVersion:diagnosticsSubmissionEnabled:volumes:applyTimeoutArgument:bandwidthLimit:origin:cryptexCacheInvalidationId:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, __int128 *a12, __int16 a13, uint64_t a14, uint64_t a15, char a16, __int128 *a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, __int16 a28, void *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, char a34, __int128 a35, uint64_t a36, uint64_t a37, char a38, char a39, __n128 a40, uint64_t a41, uint64_t a42, char a43, __int128 *a44, uint64_t a45, uint64_t a46)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  v46 = *a3;
  v47 = a3[1];
  *(a9 + 48) = *(a3 + 32);
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  v48 = a6[2];
  v49 = a6[3];
  v50 = a6[4];
  v51 = a6[5];
  v52 = *a6;
  v53 = a6[1];
  *(a9 + 168) = a7;
  *(a9 + 176) = a8;
  *(a9 + 184) = a10;
  *(a9 + 192) = a11;
  *(a9 + 312) = *(a12 + 14);
  v55 = a12[2];
  v54 = a12[3];
  v57 = *a12;
  v56 = a12[1];
  v58 = a12[6];
  v59 = a12[4];
  *(a9 + 280) = a12[5];
  *(a9 + 296) = v58;
  *(a9 + 264) = v59;
  *(a9 + 320) = a13;
  *(a9 + 546) = *(&a26 + 2);
  *(a9 + 328) = a14;
  *(a9 + 424) = a18;
  *(a9 + 440) = a19;
  *(a9 + 336) = a15;
  *(a9 + 344) = a16 & 1;
  *(a9 + 456) = a20;
  *(a9 + 472) = a21;
  *(a9 + 488) = a22;
  *(a9 + 504) = a23;
  v60 = *a17;
  v61 = a17[1];
  v62 = a17[2];
  v63 = a17[3];
  *(a9 + 416) = *(a17 + 64);
  *(a9 + 520) = a24;
  *(a9 + 536) = a25;
  *(a9 + 544) = a26;
  *(a9 + 552) = a27;
  *(a9 + 560) = a28;
  *(a9 + 568) = *a29;
  *(a9 + 576) = a30;
  *(a9 + 584) = a31;
  *(a9 + 592) = a32;
  *(a9 + 600) = a33;
  *(a9 + 608) = a34 & 1;
  *(a9 + 616) = a35;
  *(a9 + 632) = a36;
  *(a9 + 640) = a37;
  *(a9 + 648) = a38 & 1;
  *(a9 + 649) = a39;
  *(a9 + 672) = a41;
  *(a9 + 680) = a42;
  *(a9 + 688) = a43 & 1;
  v64 = *a44;
  *(a9 + 712) = a45;
  *(a9 + 720) = a46;
  *(a9 + 16) = v46;
  *(a9 + 32) = v47;
  *(a9 + 104) = v48;
  *(a9 + 120) = v49;
  *(a9 + 136) = v50;
  *(a9 + 152) = v51;
  result = a40;
  *(a9 + 72) = v52;
  *(a9 + 88) = v53;
  *(a9 + 248) = v54;
  *(a9 + 232) = v55;
  *(a9 + 216) = v56;
  *(a9 + 200) = v57;
  *(a9 + 384) = v62;
  *(a9 + 400) = v63;
  *(a9 + 352) = v60;
  *(a9 + 368) = v61;
  *(a9 + 656) = a40;
  *(a9 + 696) = v64;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DInitConfig.jsonString(prettyPrinted:redactCredentialStrings:)(Swift::Bool prettyPrinted, Swift::Bool redactCredentialStrings)
{
  v38 = prettyPrinted;
  v39 = redactCredentialStrings;
  v3 = type metadata accessor for CodingUserInfoKey();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JSONEncoder.OutputFormatting();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  memcpy(v45, v2, sizeof(v45));
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v37 = JSONEncoder.init()();
  sub_1000039E8(&qword_1004A84E0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100376BB0;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  v44[0] = v12;
  sub_1001D8A58(&qword_1004A84E8, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_1000039E8(&qword_1004A84F0);
  sub_10000E720(&qword_1004A84F8, &qword_1004A84F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  if (v38)
  {
    static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    v13 = dispatch thunk of JSONEncoder.outputFormatting.modify();
    sub_1001CB8B0(v11, v9);
    v14 = *(v6 + 8);
    v14(v9, v5);
    v14(v11, v5);
    v13(v44, 0);
  }

  if (!v39)
  {
    if (qword_1004A9E60 != -1)
    {
      swift_once();
    }

    v15 = v35;
    v16 = sub_1000270B4(v35, static CredentialString.redactionOverrideKey);
    v17 = v36;
    (*(v34 + 16))(v36, v16, v15);
    v44[3] = &type metadata for Bool;
    LOBYTE(v44[0]) = 1;
    v18 = dispatch thunk of JSONEncoder.userInfo.modify();
    sub_1001C9DC8(v44, v17);
    v18(v40, 0);
  }

  memcpy(v44, v45, sizeof(v44));
  sub_1001D7020();
  v19 = v46;
  v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v22 = v19;
  if (!v19)
  {
    v24 = v20;
    v25 = v21;
    sub_1000318C0(v20, v21);
    v26 = sub_1001D52F8(v24, v25);
    if (v27)
    {
      v22 = v26;
      v11 = v27;
      sub_100031928(v24, v25);
    }

    else
    {
      v42 = v24;
      v43 = v25;
      sub_1000318C0(v24, v25);
      sub_1000039E8(&qword_1004AB968);
      if (swift_dynamicCast())
      {
        sub_100003C88(v40, v44);
        sub_10000E2A8(v44, v44[3]);
        HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
        sub_100031928(v24, v25);
        if (HasContiguous)
        {
          sub_10000E2A8(v44, v44[3]);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();

          sub_100031928(v24, v25);
          v11 = *(&v40[0] + 1);
          v22 = *&v40[0];
          sub_100003C3C(v44);
          goto LABEL_18;
        }

        sub_100003C3C(v44);
      }

      else
      {
        sub_100031928(v24, v25);
        v41 = 0;
        memset(v40, 0, sizeof(v40));
        sub_100013F2C(v40, &qword_1004AB970);
      }

      v22 = sub_1001D19F8(v24, v25);
      v11 = v29;
    }

    sub_100031928(v24, v25);
    goto LABEL_18;
  }

  sub_100187FC0();
  swift_allocError();
  *v23 = _swiftEmptyArrayStorage;
  *(v23 + 8) = v19;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  swift_willThrow();
LABEL_18:
  v30 = v22;
  v31 = v11;
  result._object = v31;
  result._countAndFlagsBits = v30;
  return result;
}

uint64_t sub_1001CB8B0(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_1000039E8(&qword_1004ABBA0);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for JSONEncoder.OutputFormatting();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_1001D8A58(&qword_1004A84E8, &type metadata accessor for JSONEncoder.OutputFormatting);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_1001D8A58(&qword_1004ABBA8, &type metadata accessor for JSONEncoder.OutputFormatting);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_10003E154(v7, v27, &qword_1004ABBA0);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t DInitConfig.description.getter()
{
  result = DInitConfig.jsonString(prettyPrinted:redactCredentialStrings:)(1, 1)._countAndFlagsBits;
  if (v1)
  {

    return 0xD00000000000001ELL;
  }

  return result;
}

uint64_t DInitConfig.CodingKeys.rawValue.getter(char a1)
{
  result = 0x73746F6F722D6163;
  switch(a1)
  {
    case 1:
      result = 0x78657470797263;
      break;
    case 2:
      result = 0x6F6C76616964;
      break;
    case 3:
      result = 0x6C6C617765726966;
      break;
    case 4:
      result = 0x6C6C6174736E69;
      break;
    case 5:
      result = 0x6567616B636170;
      break;
    case 6:
      result = 0x6E65726566657270;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x746C75736572;
      break;
    case 9:
      result = 1919251317;
      break;
    case 10:
      result = 6778732;
      break;
    case 11:
      result = 0x6B726F7774656ELL;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x6E6970736C696174;
      break;
    case 14:
      result = 0x5F65727574616566;
      break;
    case 15:
      result = 0x74786574676F6CLL;
      break;
    case 16:
      v3 = 1886220131;
      goto LABEL_24;
    case 17:
      v3 = 1953722216;
LABEL_24:
      result = v3 | 0x656D616E00000000;
      break;
    case 18:
      result = 1852076390;
      break;
    case 19:
      result = 0x72657475706D6F63;
      break;
    case 20:
      result = 0x6D616E2D74736F68;
      break;
    case 21:
      result = 0x6F682D6C61636F6CLL;
      break;
    case 22:
      result = 0x6174616466726570;
      break;
    case 23:
      result = 6845299;
      break;
    case 24:
      result = 0x756177705F687373;
      break;
    case 25:
      result = 0x7972632D6B636F6CLL;
      break;
    case 26:
      result = 0x746F6F626572;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 28:
      result = 0x74696E692D657270;
      break;
    case 29:
      result = 0xD000000000000011;
      break;
    case 30:
      result = 0x63642D6575737369;
      break;
    case 31:
      result = 0x632D657275636573;
      break;
    case 32:
      result = 0x616C2D6567617375;
      break;
    case 33:
      result = 0xD00000000000002BLL;
      break;
    case 34:
      result = 0xD00000000000001CLL;
      break;
    case 35:
      result = 0x2D78657470797263;
      break;
    case 36:
      result = 0xD000000000000016;
      break;
    case 37:
      result = 0xD00000000000001ELL;
      break;
    case 38:
      result = 0xD00000000000001ELL;
      break;
    case 39:
      result = 0x69742D796C707061;
      break;
    case 40:
      result = 0xD000000000000020;
      break;
    case 41:
      result = 0x73656D756C6F76;
      break;
    case 42:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001CC180(char *a1, char *a2)
{
  v2 = *a2;
  v3 = DInitConfig.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == DInitConfig.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001CC208()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DInitConfig.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001CC26C()
{
  DInitConfig.CodingKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_1001CC2C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DInitConfig.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001CC320@<X0>(_BYTE *a1@<X8>)
{
  result = _s10DarwinInit11DInitConfigV10CodingKeysO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_1001CC350@<X0>(uint64_t *a1@<X8>)
{
  result = DInitConfig.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001CC384@<X0>(_BYTE *a1@<X8>)
{
  result = _s10DarwinInit11DInitConfigV10CodingKeysO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_1001CC3C8(uint64_t a1)
{
  v2 = sub_1001D70C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CC404(uint64_t a1)
{
  v2 = sub_1001D70C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitConfig.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v102 = a2;
  v3 = sub_1000039E8(&qword_1004AB978);
  __chkstk_darwin(v3 - 8);
  v5 = &v92 - v4;
  v6 = type metadata accessor for DInitCryptexConfig();
  v187 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000039E8(&qword_1004AB980);
  v103 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v92 - v10;
  v353 = 1;
  v347 = 1;
  v345 = 1;
  v342 = 1;
  v12 = a1[3];
  v183 = a1;
  sub_10000E2A8(a1, v12);
  sub_1001D70C8();
  v13 = v359;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v359 = v8;
    v14 = v187;
    LOBYTE(v188[0]) = 0;
    sub_1001D714C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v9;
    v24 = v232;
    LOBYTE(v232) = 1;
    sub_1001D8A58(&qword_1004AB998, type metadata accessor for DInitCryptexConfig);
    v25 = v5;
    v26 = v6;
    v27 = v23;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v101 = v24;
    v28 = v26;
    v29 = v14;
    if ((*(v14 + 48))(v25, 1, v28) == 1)
    {
      sub_100013F2C(v25, &qword_1004AB978);
      sub_1000039E8(&qword_1004AB9A0);
      LOBYTE(v188[0]) = 1;
      sub_1001D7988(&qword_1004AB9A8, &qword_1004AB998);
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v100 = v232;
    }

    else
    {
      v30 = v359;
      sub_1001D8928(v25, v359, type metadata accessor for DInitCryptexConfig);
      sub_1000039E8(&qword_1004ABA80);
      v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100376A40;
      v100 = v32;
      sub_1001D8928(v30, v32 + v31, type metadata accessor for DInitCryptexConfig);
    }

    LOBYTE(v188[0]) = 2;
    sub_1001D71A0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v99 = v232;
    v33 = v233;
    v34 = v11;
    v35 = v234;
    v36 = v27;
    v37 = v235;
    v38 = v236;
    sub_1001D71F4(0, 0, 0, 0);
    LOBYTE(v188[0]) = 3;
    sub_1001D7240();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v172 = v38;
    v171 = v37;
    v170 = v35;
    v97 = v232;
    v98 = v33;
    v96 = v233;
    v219 = 4;
    sub_1001D7294();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v173 = v220;
    v95 = v221;
    v174 = v222;
    v175 = v223;
    v176 = v224;
    v39 = v225;
    v178 = v226;
    v179 = v227;
    v40 = v36;
    v41 = v228;
    v181 = v229;
    v42 = v230;
    v187 = v231;
    v218[0] = xmmword_1003772E0;
    memset(&v218[1], 0, 80);
    sub_100013F2C(v218, &qword_1004AB940);
    sub_1000039E8(&qword_1004AB9C8);
    LOBYTE(v188[0]) = 5;
    sub_1001D7B6C(&qword_1004AB9D0, &qword_1004AB9D8);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v182 = v42;
    v180 = v41;
    v177 = v39;
    v154 = v232;
    sub_1000039E8(&qword_1004AB9E0);
    LOBYTE(v188[0]) = 6;
    sub_1001D72E8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v153 = v232;
    sub_1000039E8(&qword_1004AB9F8);
    LOBYTE(v188[0]) = 7;
    sub_1001D73C0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v146 = v232;
    LOBYTE(v188[0]) = 8;
    sub_1001D7498();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v43 = v40;
    v44 = v187;
    v143 = v232;
    v202 = 9;
    sub_1001D74EC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v359 = 0;
    v169 = v203;
    v168 = v204;
    v167 = v205;
    v166 = v206;
    v165 = v207;
    v164 = v208;
    v163 = v209;
    v162 = v210;
    v160 = v212;
    v161 = v211;
    v158 = v214;
    v159 = v213;
    v156 = v216;
    v157 = v215;
    v155 = v217;
    memset(v200, 0, sizeof(v200));
    v201 = 0;
    sub_100013F2C(v200, &qword_1004AB948);
    LOBYTE(v188[0]) = 10;
    sub_1001D7540();
    v45 = v359;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v359 = v45;
    if (v45)
    {
      (*(v103 + 8))(v34, v43);
      v151 = 0;
      v152 = 0;
      v149 = 0;
      v150 = 0;
      v147 = 0;
      v148 = 0;
      v145 = 0;
      v144 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v116 = 0;
      v117 = 0;
      v121 = 0;
      v122 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v128 = 0;
      v129 = 0;
      v141 = 0;
      v142 = 0;
      v139 = 0;
      v140 = 0;
      v136 = 0;
      v137 = 0;
      v131 = 0;
      v132 = 0;
      v130 = 0;
      v134 = 0;
      v135 = 0;
      v133 = 0;
      v185 = 0;
      v184 = 0;
      v113 = 0;
      v186 = 0;
      v138 = 768;
    }

    else
    {
      v138 = v232;
      sub_1000039E8(&qword_1004ABA28);
      LOBYTE(v188[0]) = 11;
      sub_1001D7594();
      v46 = v359;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v359 = v46;
      if (v46)
      {
        (*(v103 + 8))(v34, v43);
        v151 = 0;
        v152 = 0;
        v149 = 0;
        v150 = 0;
        v147 = 0;
        v148 = 0;
        v145 = 0;
        v144 = 0;
        v125 = 0;
        v126 = 0;
        v123 = 0;
        v124 = 0;
        v116 = 0;
        v117 = 0;
        v121 = 0;
        v122 = 0;
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v128 = 0;
        v129 = 0;
        v141 = 0;
        v142 = 0;
        v139 = 0;
        v140 = 0;
        v136 = 0;
        v137 = 0;
        v131 = 0;
        v132 = 0;
        v130 = 0;
        v134 = 0;
        v135 = 0;
        v133 = 0;
        v185 = 0;
        v184 = 0;
        v113 = 0;
        v186 = 0;
      }

      else
      {
        v139 = v232;
        LOBYTE(v232) = 12;
        v186 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v359 = 0;
        v353 = v47 & 1;
        v190 = 13;
        sub_1001D766C();
        v48 = v359;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v359 = v48;
        if (!v48)
        {
          v151 = v192;
          v152 = v191;
          v149 = v194;
          v150 = v193;
          v147 = v196;
          v148 = v195;
          v145 = v197;
          v127 = v198;
          v144 = v199;
          LOBYTE(v232) = 15;
          v184 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v185 = v49;
          v359 = 0;
          LOBYTE(v232) = 16;
          v133 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v135 = v50;
          v359 = 0;
          LOBYTE(v232) = 17;
          v131 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v134 = v51;
          v359 = 0;
          LOBYTE(v232) = 18;
          v130 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v132 = v52;
          v359 = 0;
          LOBYTE(v232) = 19;
          v129 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v137 = v53;
          v359 = 0;
          LOBYTE(v232) = 20;
          v136 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v141 = v54;
          v359 = 0;
          LOBYTE(v232) = 21;
          v140 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v142 = v55;
          v359 = 0;
          LOBYTE(v188[0]) = 22;
          sub_1001D76C0();
          v56 = v359;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v359 = v56;
          if (!v56)
          {
            if (v232 == 2)
            {
              v57 = 2;
            }

            else
            {
              v57 = v232 & 1;
            }

            v111 = v57;
            LOBYTE(v188[0]) = 23;
            v58 = v359;
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v359 = v58;
            if (v232 == 2)
            {
              v59 = 2;
            }

            else
            {
              v59 = v232 & 1;
            }

            v110 = v59;
            LOBYTE(v188[0]) = 24;
            v60 = v359;
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v359 = v60;
            if (v232 == 2)
            {
              v61 = 2;
            }

            else
            {
              v61 = v232 & 1;
            }

            v109 = v61;
            LOBYTE(v188[0]) = 26;
            v62 = v359;
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v359 = v62;
            if (v232 == 2)
            {
              v63 = 2;
            }

            else
            {
              v63 = v232 & 1;
            }

            v108 = v63;
            LOBYTE(v188[0]) = 27;
            sub_1001D7714();
            v64 = v359;
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v359 = v64;
            if (v64)
            {
              (*(v103 + 8))(v34, v43);
              v125 = 0;
              v126 = 0;
              v123 = 0;
              v124 = 0;
              v116 = 0;
              v117 = 0;
              v121 = 0;
              v122 = 0;
              v118 = 0;
              v119 = 0;
              v120 = 0;
              v128 = 0;
              v113 = 0;
              v112 = 2;
              v115 = 5;
            }

            else
            {
              v115 = v232;
              sub_1000039E8(&qword_1004A6B48);
              LOBYTE(v188[0]) = 28;
              sub_1000A6724(&qword_1004A88F8);
              v65 = v359;
              KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
              v359 = v65;
              if (!v65)
              {
                v128 = v232;
                LOBYTE(v188[0]) = 29;
                KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                v359 = 0;
                if (v232 == 2)
                {
                  v66 = 2;
                }

                else
                {
                  v66 = v232 & 1;
                }

                v107 = v66;
                LOBYTE(v188[0]) = 30;
                v67 = v359;
                KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                v359 = v67;
                if (v232 == 2)
                {
                  v68 = 2;
                }

                else
                {
                  v68 = v232 & 1;
                }

                v106 = v68;
                LOBYTE(v188[0]) = 31;
                sub_1001B5418();
                v69 = v359;
                KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                v359 = v69;
                if (v69)
                {
                  (*(v103 + 8))(v34, v43);
                  v125 = 0;
                  v126 = 0;
                  v123 = 0;
                  v124 = 0;
                  v116 = 0;
                  v117 = 0;
                  v121 = 0;
                  v122 = 0;
                  v118 = 0;
                  v119 = 0;
                  v120 = 0;
                  v112 = 2;
                  v113 = 0;
                  v114 = 0xF000000000000007;
                  v104 = 2;
                  v105 = 2;
                }

                else
                {
                  v114 = v232;
                  sub_1001C855C(0xF000000000000007);
                  LOBYTE(v232) = 32;
                  v70 = v359;
                  v120 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                  v123 = v71;
                  v359 = v70;
                  if (v70)
                  {
                    (*(v103 + 8))(v34, v43);
                    v125 = 0;
                    v126 = 0;
                    v123 = 0;
                    v124 = 0;
                    v116 = 0;
                    v117 = 0;
                    v121 = 0;
                    v122 = 0;
                    v118 = 0;
                    v119 = 0;
                    v120 = 0;
                    v113 = 0;
                    v112 = 2;
                    v104 = 2;
                    v105 = 2;
                  }

                  else
                  {
                    LOBYTE(v188[0]) = 33;
                    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                    v359 = 0;
                    if (v232 == 2)
                    {
                      v72 = 2;
                    }

                    else
                    {
                      v72 = v232 & 1;
                    }

                    v105 = v72;
                    LOBYTE(v232) = 34;
                    v73 = v359;
                    v119 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                    v359 = v73;
                    v347 = v74 & 1;
                    sub_1000039E8(&qword_1004AB9A0);
                    LOBYTE(v188[0]) = 35;
                    sub_1001D7988(&qword_1004AB9A8, &qword_1004AB998);
                    v75 = v359;
                    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                    v359 = v75;
                    if (v75)
                    {
                      (*(v103 + 8))(v34, v43);
                      v125 = 0;
                      v126 = 0;
                      v124 = 0;
                      v116 = 0;
                      v117 = 0;
                      v121 = 0;
                      v122 = 0;
                      v118 = 0;
                      v113 = 0;
                      v112 = 2;
                      v104 = 2;
                    }

                    else
                    {
                      v117 = v232;
                      LOBYTE(v232) = 36;
                      v118 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                      v121 = v76;
                      v359 = 0;
                      LOBYTE(v232) = 37;
                      v122 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                      v359 = 0;
                      v345 = v77 & 1;
                      LOBYTE(v188[0]) = 38;
                      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                      v359 = 0;
                      if (v232 == 2)
                      {
                        v78 = 2;
                      }

                      else
                      {
                        v78 = v232 & 1;
                      }

                      v112 = v78;
                      LOBYTE(v232) = 39;
                      v79 = v359;
                      v124 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                      v125 = v80;
                      v359 = v79;
                      LOBYTE(v232) = 40;
                      v126 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                      v359 = 0;
                      v342 = v81 & 1;
                      sub_1000039E8(&qword_1004ABA58);
                      LOBYTE(v188[0]) = 14;
                      sub_1001D7768();
                      v82 = v359;
                      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                      v359 = v82;
                      if (v82)
                      {
                        (*(v103 + 8))(v34, v43);
                        v116 = 0;
                        v113 = 0;
                        v104 = 2;
                      }

                      else
                      {
                        v113 = v232;
                        LOBYTE(v232) = 25;
                        v104 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                        v359 = 0;
                        sub_1000039E8(&qword_1004ABA70);
                        LOBYTE(v188[0]) = 41;
                        sub_1001D7840();
                        v83 = v359;
                        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                        v359 = v83;
                        if (!v83)
                        {
                          v116 = v232;
                          v189 = 42;
                          v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                          v93 = v85;
                          v94 = v84;
                          v359 = 0;
                          (*(v103 + 8))(v34, v43);
                          *(&v188[40] + 2) = v354;
                          *(&v188[43] + 1) = v352[0];
                          *(&v188[52] + 1) = *v351;
                          *(&v188[70] + 2) = v349;
                          *(&v188[74] + 1) = *v348;
                          *(&v188[76] + 1) = *v346;
                          *(&v188[81] + 2) = v343;
                          *(&v188[86] + 1) = *v341;
                          *(v188 + 1) = v358[0];
                          HIDWORD(v188[0]) = *(v358 + 3);
                          *(&v188[6] + 1) = *v357;
                          HIDWORD(v188[6]) = *&v357[3];
                          *(&v188[24] + 1) = v356[0];
                          HIDWORD(v188[24]) = *(v356 + 3);
                          HIWORD(v188[40]) = v355;
                          LOBYTE(v188[43]) = v353;
                          HIDWORD(v188[43]) = *(v352 + 3);
                          HIDWORD(v188[52]) = *&v351[3];
                          HIWORD(v188[70]) = v350;
                          HIDWORD(v188[74]) = *&v348[3];
                          LOBYTE(v188[76]) = v347;
                          HIDWORD(v188[76]) = *&v346[3];
                          LOBYTE(v188[81]) = v345;
                          HIWORD(v188[81]) = v344;
                          LOBYTE(v188[86]) = v342;
                          HIDWORD(v188[86]) = *&v341[3];
                          *&v188[87] = 0u;
                          LOBYTE(v188[0]) = v101;
                          v86 = v100;
                          v188[1] = v100;
                          v188[2] = v99;
                          v188[3] = v98;
                          v188[4] = v170;
                          v188[5] = v171;
                          LOBYTE(v188[6]) = v172;
                          v188[7] = v97;
                          v188[8] = v96;
                          v188[9] = v173;
                          v188[10] = v95;
                          v188[11] = v174;
                          v188[12] = v175;
                          v188[13] = v176;
                          v188[14] = v177;
                          v87 = v178;
                          v188[15] = v178;
                          v88 = v179;
                          v188[16] = v179;
                          v89 = v180;
                          v188[17] = v180;
                          v90 = v181;
                          v188[18] = v181;
                          v91 = v182;
                          v188[19] = v182;
                          v188[20] = v44;
                          v188[21] = v154;
                          v188[22] = v153;
                          v188[23] = v146;
                          LOBYTE(v188[24]) = v143;
                          v188[25] = v169;
                          v188[26] = v168;
                          v188[27] = v167;
                          v188[28] = v166;
                          v188[29] = v165;
                          v188[30] = v164;
                          v188[31] = v163;
                          v188[32] = v162;
                          v188[33] = v161;
                          v188[34] = v160;
                          v188[35] = v159;
                          v188[36] = v158;
                          v188[37] = v157;
                          v188[38] = v156;
                          v188[39] = v155;
                          LOWORD(v188[40]) = v138;
                          v188[41] = v139;
                          v188[42] = v186;
                          v188[44] = v152;
                          v188[45] = v151;
                          v188[46] = v150;
                          v188[47] = v149;
                          v188[48] = v148;
                          v188[49] = v147;
                          v188[50] = v145;
                          v188[51] = v127;
                          LOBYTE(v188[52]) = v144;
                          v188[53] = v113;
                          v188[54] = v184;
                          v188[55] = v185;
                          v188[56] = v133;
                          v188[57] = v135;
                          v188[58] = v131;
                          v188[59] = v134;
                          v188[60] = v130;
                          v188[61] = v132;
                          v188[62] = v129;
                          v188[63] = v137;
                          v188[64] = v136;
                          v188[65] = v141;
                          v188[66] = v140;
                          v188[67] = v142;
                          LOBYTE(v188[68]) = v111;
                          BYTE1(v188[68]) = v110;
                          BYTE2(v188[68]) = v109;
                          BYTE3(v188[68]) = v104;
                          BYTE4(v188[68]) = v108;
                          BYTE5(v188[68]) = v115;
                          v188[69] = v128;
                          LOBYTE(v188[70]) = v107;
                          BYTE1(v188[70]) = v106;
                          v188[71] = v114;
                          v188[72] = v120;
                          v188[73] = v123;
                          LOBYTE(v188[74]) = v105;
                          v188[75] = v119;
                          v188[77] = v117;
                          v188[78] = v118;
                          v188[79] = v121;
                          v188[80] = v122;
                          BYTE1(v188[81]) = v112;
                          v188[82] = v116;
                          v188[83] = v124;
                          v188[84] = v125;
                          v188[85] = v126;
                          v188[89] = v94;
                          v188[90] = v93;
                          memcpy(v102, v188, 0x2D8uLL);
                          sub_1001D78FC(v188, &v232);
                          sub_100003C3C(v183);
                          LOBYTE(v232) = v101;
                          v233 = v86;
                          v234 = v99;
                          v235 = v98;
                          v236 = v170;
                          v237 = v171;
                          v238 = v172;
                          v240 = v97;
                          v241 = v96;
                          v242 = v173;
                          v243 = v95;
                          v244 = v174;
                          v245 = v175;
                          v246 = v176;
                          v247 = v177;
                          v248 = v87;
                          v249 = v88;
                          v250 = v89;
                          v251 = v90;
                          v252 = v91;
                          v253 = v44;
                          v254 = v154;
                          v255 = v153;
                          v256 = v146;
                          v257 = v143;
                          v259 = v169;
                          v260 = v168;
                          v261 = v167;
                          v262 = v166;
                          v263 = v165;
                          v264 = v164;
                          v265 = v163;
                          v266 = v162;
                          v267 = v161;
                          v268 = v160;
                          v269 = v159;
                          v270 = v158;
                          v271 = v157;
                          v272 = v156;
                          v273 = v155;
                          v274 = v138;
                          v277 = v139;
                          v278 = v186;
                          v281 = v152;
                          v282 = v151;
                          v283 = v150;
                          v284 = v149;
                          v285 = v148;
                          v286 = v147;
                          v287 = v145;
                          v288 = v127;
                          v289 = v144;
                          v291 = v113;
                          v292 = v184;
                          v293 = v185;
                          v294 = v133;
                          v295 = v135;
                          v296 = v131;
                          v297 = v134;
                          v298 = v130;
                          v299 = v132;
                          v300 = v129;
                          v301 = v137;
                          v302 = v136;
                          *(&v232 + 1) = v358[0];
                          *v239 = *v357;
                          *v258 = v356[0];
                          v275 = v354;
                          *v280 = v352[0];
                          *v290 = *v351;
                          HIDWORD(v232) = *(v358 + 3);
                          *&v239[3] = *&v357[3];
                          *&v258[3] = *(v356 + 3);
                          v276 = v355;
                          v279 = v353;
                          *&v280[3] = *(v352 + 3);
                          *&v290[3] = *&v351[3];
                          v303 = v141;
                          v304 = v140;
                          v305 = v142;
                          v306 = v111;
                          v307 = v110;
                          v308 = v109;
                          v309 = v104;
                          v310 = v108;
                          v311 = v115;
                          v312 = v128;
                          v313 = v107;
                          v314 = v106;
                          v315 = v349;
                          v316 = v350;
                          v317 = v114;
                          v318 = v120;
                          v319 = v123;
                          v320 = v105;
                          *v321 = *v348;
                          *&v321[3] = *&v348[3];
                          v322 = v119;
                          v323 = v347;
                          *v324 = *v346;
                          *&v324[3] = *&v346[3];
                          v325 = v117;
                          v326 = v118;
                          v327 = v121;
                          v328 = v122;
                          v329 = v345;
                          v330 = v112;
                          v331 = v343;
                          v332 = v344;
                          v333 = v116;
                          v334 = v124;
                          v335 = v125;
                          v336 = v126;
                          v337 = v342;
                          *v338 = *v341;
                          *&v338[3] = *&v341[3];
                          v339 = 0u;
                          *&v340 = v94;
                          *(&v340 + 1) = v93;
                          return sub_1001D711C(&v232);
                        }

                        (*(v103 + 8))(v34, v43);
                        v116 = 0;
                      }
                    }
                  }
                }

                goto LABEL_13;
              }

              (*(v103 + 8))(v34, v43);
              v125 = 0;
              v126 = 0;
              v123 = 0;
              v124 = 0;
              v116 = 0;
              v117 = 0;
              v121 = 0;
              v122 = 0;
              v118 = 0;
              v119 = 0;
              v120 = 0;
              v128 = 0;
              v113 = 0;
              v112 = 2;
            }

            v114 = 0xF000000000000007;
            v105 = 2;
            v106 = 2;
            v107 = 2;
            v104 = 2;
LABEL_13:
            v21 = v101;
            v17 = v99;
            v18 = v100;
            v15 = v97;
            v16 = v98;
            v19 = v95;
            v20 = v96;
            goto LABEL_4;
          }

          (*(v103 + 8))(v34, v43);
          v125 = 0;
          v126 = 0;
          v123 = 0;
          v124 = 0;
          v116 = 0;
          v117 = 0;
          v121 = 0;
          v122 = 0;
          v118 = 0;
          v119 = 0;
          v120 = 0;
          v128 = 0;
          v112 = 2;
          v115 = 5;
          v113 = 0;
          v114 = 0xF000000000000007;
LABEL_12:
          v105 = 2;
          v106 = 2;
          v107 = 2;
          v108 = 2;
          v104 = 2;
          v109 = 2;
          v110 = 2;
          v111 = 2;
          goto LABEL_13;
        }

        (*(v103 + 8))(v34, v43);
        v151 = 0;
        v152 = 0;
        v149 = 0;
        v150 = 0;
        v147 = 0;
        v148 = 0;
        v145 = 0;
        v144 = 0;
        v125 = 0;
        v126 = 0;
        v123 = 0;
        v124 = 0;
        v116 = 0;
        v117 = 0;
        v121 = 0;
        v122 = 0;
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v128 = 0;
        v129 = 0;
        v141 = 0;
        v142 = 0;
        v140 = 0;
        v136 = 0;
        v137 = 0;
        v131 = 0;
        v132 = 0;
        v130 = 0;
        v134 = 0;
        v135 = 0;
        v133 = 0;
        v185 = 0;
        v184 = 0;
        v113 = 0;
      }
    }

    v127 = 2;
    v115 = 5;
    v114 = 0xF000000000000007;
    v112 = 2;
    goto LABEL_12;
  }

  v359 = v13;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v162 = 0;
  v160 = 0;
  v161 = 0;
  v187 = 0;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v158 = 0;
  v159 = 0;
  v156 = 0;
  v157 = 0;
  v155 = 0;
  v151 = 0;
  v152 = 0;
  v149 = 0;
  v150 = 0;
  v147 = 0;
  v148 = 0;
  v145 = 0;
  v144 = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v124 = 0;
  v116 = 0;
  v117 = 0;
  v121 = 0;
  v122 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v128 = 0;
  v129 = 0;
  v141 = 0;
  v142 = 0;
  v139 = 0;
  v140 = 0;
  v136 = 0;
  v137 = 0;
  v131 = 0;
  v132 = 0;
  v130 = 0;
  v134 = 0;
  v135 = 0;
  v133 = 0;
  v185 = 0;
  v184 = 0;
  v113 = 0;
  v186 = 0;
  v146 = 0;
  v153 = 0;
  v154 = 0;
  v15 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v143 = 3;
  v138 = 768;
  v127 = 2;
  v115 = 5;
  v114 = 0xF000000000000007;
  v19 = 1;
  v111 = 2;
  v112 = 2;
  v105 = 2;
  v106 = 2;
  v107 = 2;
  v108 = 2;
  v104 = 2;
  v109 = 2;
  v110 = 2;
  v20 = 1;
  v21 = 3;
LABEL_4:
  sub_100003C3C(v183);
  LOBYTE(v232) = v21;
  v233 = v18;
  v234 = v17;
  v235 = v16;
  v236 = v170;
  v237 = v171;
  v238 = v172;
  v240 = v15;
  v241 = v20;
  v242 = v173;
  v243 = v19;
  v244 = v174;
  v245 = v175;
  v246 = v176;
  v247 = v177;
  v248 = v178;
  v249 = v179;
  v250 = v180;
  v251 = v181;
  v252 = v182;
  v253 = v187;
  v254 = v154;
  v255 = v153;
  v256 = v146;
  v257 = v143;
  v259 = v169;
  v260 = v168;
  v261 = v167;
  v262 = v166;
  v263 = v165;
  v264 = v164;
  v265 = v163;
  v266 = v162;
  v267 = v161;
  v268 = v160;
  v269 = v159;
  v270 = v158;
  v271 = v157;
  v272 = v156;
  v273 = v155;
  v274 = v138;
  v277 = v139;
  v278 = v186;
  v281 = v152;
  v282 = v151;
  v283 = v150;
  v284 = v149;
  v285 = v148;
  v286 = v147;
  v287 = v145;
  v288 = v127;
  v289 = v144;
  v291 = v113;
  v292 = v184;
  v293 = v185;
  v294 = v133;
  v295 = v135;
  v296 = v131;
  v297 = v134;
  v298 = v130;
  v299 = v132;
  v300 = v129;
  *(&v232 + 1) = v358[0];
  *v239 = *v357;
  *v258 = v356[0];
  v275 = v354;
  *v280 = v352[0];
  *v290 = *v351;
  HIDWORD(v232) = *(v358 + 3);
  *&v239[3] = *&v357[3];
  *&v258[3] = *(v356 + 3);
  v276 = v355;
  v279 = v353;
  *&v280[3] = *(v352 + 3);
  *&v290[3] = *&v351[3];
  v301 = v137;
  v302 = v136;
  v303 = v141;
  v304 = v140;
  v305 = v142;
  v306 = v111;
  v307 = v110;
  v308 = v109;
  v309 = v104;
  v310 = v108;
  v311 = v115;
  v312 = v128;
  v313 = v107;
  v314 = v106;
  v315 = v349;
  v316 = v350;
  v317 = v114;
  v318 = v120;
  v319 = v123;
  v320 = v105;
  *v321 = *v348;
  *&v321[3] = *&v348[3];
  v322 = v119;
  v323 = v347;
  *v324 = *v346;
  *&v324[3] = *&v346[3];
  v325 = v117;
  v326 = v118;
  v327 = v121;
  v328 = v122;
  v329 = v345;
  v330 = v112;
  v331 = v343;
  v332 = v344;
  v333 = v116;
  v334 = v124;
  v335 = v125;
  v336 = v126;
  v337 = v342;
  *v338 = *v341;
  *&v338[3] = *&v341[3];
  v339 = 0u;
  v340 = 0u;
  return sub_1001D711C(&v232);
}

uint64_t DInitConfig.encode(to:)(void *a1)
{
  v91 = sub_1000039E8(&qword_1004ABA88);
  v93 = *(v91 - 8);
  __chkstk_darwin(v91);
  v4 = v45 - v3;
  v135 = *v1;
  v5 = *(v1 + 1);
  v89 = *(v1 + 2);
  v90 = v5;
  v6 = *(v1 + 3);
  v87 = *(v1 + 4);
  v88 = v6;
  v86 = *(v1 + 5);
  v85 = v1[48];
  v7 = *(v1 + 8);
  *&v84 = *(v1 + 7);
  *(&v84 + 1) = v7;
  v8 = *(v1 + 120);
  v118 = *(v1 + 104);
  v119 = v8;
  v9 = *(v1 + 152);
  v120 = *(v1 + 136);
  v121 = v9;
  v10 = *(v1 + 88);
  v116 = *(v1 + 72);
  v117 = v10;
  v11 = *(v1 + 21);
  v82 = *(v1 + 22);
  v83 = v11;
  v81 = *(v1 + 23);
  v80 = v1[192];
  v12 = *(v1 + 280);
  v126 = *(v1 + 264);
  v127 = v12;
  v128 = *(v1 + 296);
  v129 = *(v1 + 39);
  v13 = *(v1 + 216);
  v122 = *(v1 + 200);
  v123 = v13;
  v14 = *(v1 + 248);
  v124 = *(v1 + 232);
  v125 = v14;
  v79 = *(v1 + 160);
  v15 = *(v1 + 42);
  v78 = *(v1 + 41);
  v77 = v1[344];
  v134 = v1[416];
  v16 = *(v1 + 25);
  v132 = *(v1 + 24);
  v133 = v16;
  v17 = *(v1 + 23);
  v130 = *(v1 + 22);
  v131 = v17;
  v18 = *(v1 + 54);
  v73 = *(v1 + 53);
  v74 = v18;
  v19 = *(v1 + 56);
  v75 = *(v1 + 55);
  v76 = v15;
  v20 = *(v1 + 57);
  v21 = *(v1 + 58);
  v71 = v19;
  v72 = v20;
  v22 = *(v1 + 59);
  v23 = *(v1 + 60);
  v45[2] = v21;
  v45[3] = v22;
  v24 = *(v1 + 62);
  v45[4] = *(v1 + 61);
  v45[5] = v23;
  v25 = *(v1 + 64);
  v45[6] = *(v1 + 63);
  v45[7] = v24;
  v45[8] = *(v1 + 65);
  v45[9] = v25;
  v26 = *(v1 + 66);
  v45[10] = *(v1 + 67);
  v45[11] = v26;
  LODWORD(v18) = v1[545];
  v46 = v1[544];
  v47 = v18;
  LODWORD(v26) = v1[546];
  v70 = v1[547];
  LODWORD(v18) = v1[548];
  v48 = v26;
  v49 = v18;
  v50 = v1[549];
  v51 = *(v1 + 69);
  LODWORD(v18) = v1[561];
  v52 = v1[560];
  v53 = v18;
  v27 = *(v1 + 71);
  v56 = *(v1 + 72);
  v28 = *(v1 + 73);
  v54 = v27;
  v55 = v28;
  v29 = *(v1 + 75);
  LODWORD(v28) = v1[608];
  v57 = v1[592];
  v58 = v28;
  v30 = *(v1 + 77);
  v59 = v29;
  v60 = v30;
  v31 = *(v1 + 78);
  v61 = *(v1 + 79);
  v62 = v31;
  v64 = *(v1 + 80);
  v63 = v1[648];
  v65 = v1[649];
  v32 = *(v1 + 82);
  v33 = *(v1 + 83);
  v66 = *(v1 + 84);
  v67 = v33;
  v68 = *(v1 + 85);
  v69 = v32;
  v34 = v1[688];
  v35 = *(v1 + 89);
  v36 = *(v1 + 90);
  sub_10000E2A8(a1, a1[3]);
  sub_1001D70C8();
  v37 = v91;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v101) = v135;
  LOBYTE(v99[0]) = 0;
  sub_1001D7934();
  v38 = v92;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v38)
  {
    return (*(v93 + 8))(v4, v37);
  }

  v40 = v4;
  v41 = v88;
  v42 = v89;
  v135 = v34;
  v92 = v36;
  v45[1] = v35;
  *&v101 = v90;
  LOBYTE(v99[0]) = 1;
  v43 = sub_1000039E8(&qword_1004AB9A0);
  v44 = sub_1001D7988(&qword_1004ABA98, &qword_1004ABAA0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v45[0] = v43;
  v90 = v44;
  *&v101 = v42;
  *(&v101 + 1) = v41;
  *&v102 = v87;
  *(&v102 + 1) = v86;
  LOBYTE(v103) = v85;
  LOBYTE(v99[0]) = 2;
  sub_1001D7A24(v42, v41, v87, v86);
  sub_1001D7A70();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_1001D71F4(v101, *(&v101 + 1), v102, *(&v102 + 1));
  v101 = v84;
  LOBYTE(v99[0]) = 3;
  sub_1001D7AC4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v112 = v118;
  v113 = v119;
  v114 = v120;
  v115 = v121;
  v110 = v116;
  v111 = v117;
  v138 = 4;
  sub_100013E54(&v116, &v101, &qword_1004AB940);
  sub_1001D7B18();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v109[2] = v112;
  v109[3] = v113;
  v109[4] = v114;
  v109[5] = v115;
  v109[0] = v110;
  v109[1] = v111;
  sub_100013F2C(v109, &qword_1004AB940);
  *&v101 = v83;
  LOBYTE(v99[0]) = 5;
  sub_1000039E8(&qword_1004AB9C8);
  sub_1001D7B6C(&qword_1004ABAC0, &qword_1004ABAC8);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  *&v101 = v82;
  LOBYTE(v99[0]) = 6;
  sub_1000039E8(&qword_1004AB9E0);
  sub_1001D7C08();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  *&v101 = v81;
  LOBYTE(v99[0]) = 7;
  sub_1000039E8(&qword_1004AB9F8);
  sub_1001D7CE0();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v101) = v80;
  LOBYTE(v99[0]) = 8;
  sub_1001D7DB8();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v105 = v126;
  v106 = v127;
  v107 = v128;
  v108 = v129;
  v101 = v122;
  v102 = v123;
  v103 = v124;
  v104 = v125;
  v137 = 9;
  sub_100013E54(&v122, v99, &qword_1004AB948);
  sub_1001D7E0C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v99[4] = v105;
  v99[5] = v106;
  v99[6] = v107;
  v100 = v108;
  v99[0] = v101;
  v99[1] = v102;
  v99[2] = v103;
  v99[3] = v104;
  sub_100013F2C(v99, &qword_1004AB948);
  LOWORD(v94) = v79;
  v136 = 10;
  sub_1001D7E60();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  *&v94 = v78;
  v136 = 11;
  sub_1000039E8(&qword_1004ABA28);
  sub_1001D7EB4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v94) = 12;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v96 = v132;
  v97 = v133;
  v98 = v134;
  v94 = v130;
  v95 = v131;
  v136 = 13;
  sub_1001D7F8C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v94) = 15;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  *&v94 = v73;
  v136 = 14;
  sub_1000039E8(&qword_1004ABA58);
  sub_1001D7FE0();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v94) = 16;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 17;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 18;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 19;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 20;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 21;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 22;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 23;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 24;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 26;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = v50;
  v136 = 27;
  sub_1001D80B8();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  *&v94 = v51;
  v136 = 28;
  sub_1000039E8(&qword_1004A6B48);
  sub_1000A6724(&qword_1004A8B08);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v94) = 29;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 30;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  *&v94 = v54;
  v136 = 31;
  sub_1001C8518(v54);
  sub_1001B54D4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_1001C855C(v94);
  LOBYTE(v94) = 32;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 33;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 34;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  *&v94 = v60;
  v136 = 35;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v94) = 36;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 37;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 38;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 39;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 40;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v94) = 25;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  *&v94 = v69;
  v136 = 41;
  sub_1000039E8(&qword_1004ABA70);
  sub_1001D810C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v94) = 42;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v93 + 8))(v40, v37);
}

void DInitConfig.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for DInitPackageConfig();
  v121 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DInitCryptexConfig();
  v145 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v184 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v112 - v9;
  v11 = *v1;
  v13 = *(v1 + 1);
  v12 = *(v1 + 2);
  v14 = *(v1 + 3);
  v119 = *(v1 + 4);
  v15 = *(v1 + 5);
  v129 = v12;
  v130 = v15;
  v131 = v1[48];
  v16 = *(v1 + 8);
  v120 = *(v1 + 7);
  v146 = v14;
  v147 = v16;
  v17 = *(v1 + 10);
  v122 = *(v1 + 9);
  v19 = *(v1 + 21);
  v18 = *(v1 + 22);
  v148 = v17;
  v149 = v19;
  v150 = v18;
  v151 = *(v1 + 23);
  v152 = v1[192];
  v20 = *(v1 + 26);
  v132 = *(v1 + 25);
  v153 = v20;
  v21 = *(v1 + 264);
  v22 = *(v1 + 296);
  v217 = *(v1 + 280);
  v218 = v22;
  v219 = *(v1 + 39);
  v23 = *(v1 + 232);
  v213 = *(v1 + 216);
  v214 = v23;
  v215 = *(v1 + 248);
  v216 = v21;
  v154 = *(v1 + 160);
  v24 = *(v1 + 42);
  v155 = *(v1 + 41);
  v156 = v1[344];
  v26 = *(v1 + 44);
  v25 = *(v1 + 45);
  v123 = v24;
  v124 = v26;
  v113 = v25;
  v27 = *(v1 + 47);
  v114 = *(v1 + 46);
  v115 = v27;
  v28 = *(v1 + 49);
  v116 = *(v1 + 48);
  v117 = v28;
  v29 = *(v1 + 51);
  v118 = *(v1 + 50);
  v125 = v1[416];
  v31 = *(v1 + 53);
  v30 = *(v1 + 54);
  v157 = v29;
  v158 = v31;
  v133 = v30;
  v32 = *(v1 + 56);
  v33 = *(v1 + 57);
  v159 = *(v1 + 55);
  v160 = v33;
  v35 = *(v1 + 58);
  v34 = *(v1 + 59);
  v134 = v32;
  v135 = v35;
  v161 = v34;
  v36 = *(v1 + 61);
  v37 = *(v1 + 62);
  v136 = *(v1 + 60);
  v137 = v37;
  v39 = *(v1 + 63);
  v38 = *(v1 + 64);
  v162 = v36;
  v163 = v39;
  v138 = v38;
  v40 = *(v1 + 65);
  v139 = *(v1 + 66);
  v41 = *(v1 + 67);
  v164 = v40;
  v165 = v41;
  v166 = v1[544];
  v167 = v1[545];
  v168 = v1[546];
  v42 = v1[547];
  v170 = v1[548];
  v171 = v1[549];
  v172 = *(v1 + 69);
  v173 = v1[560];
  v43 = v1[561];
  v44 = *(v1 + 72);
  v45 = *(v1 + 73);
  v175 = *(v1 + 71);
  v176 = v45;
  v177 = v1[592];
  v46 = *(v1 + 75);
  v178 = v1[608];
  v179 = *(v1 + 77);
  v47 = *(v1 + 78);
  v140 = v44;
  v141 = v47;
  v180 = *(v1 + 79);
  v48 = *(v1 + 80);
  v126 = v46;
  v127 = v48;
  v181 = v1[648];
  v182 = v1[649];
  v183 = *(v1 + 82);
  v49 = *(v1 + 83);
  v185 = *(v1 + 84);
  v128 = *(v1 + 85);
  v186 = v1[688];
  v187 = *(v1 + 87);
  v50 = *(v1 + 88);
  v142 = v49;
  v143 = v50;
  v144 = *(v1 + 89);
  v188 = *(v1 + 90);
  if (v11 == 3 || (Hasher._combine(_:)(1u), v11 == 2))
  {
    v51 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v51 = v11 & 1;
  }

  v169 = v42;
  v174 = v43;
  Hasher._combine(_:)(v51);
  if (v13)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*(v13 + 16));
    v52 = *(v13 + 16);
    if (v52)
    {
      v53 = v13 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
      v54 = *(v145 + 72);
      do
      {
        sub_1001D8990(v53, v10, type metadata accessor for DInitCryptexConfig);
        DInitCryptexConfig.hash(into:)();
        sub_1001D89F8(v10, type metadata accessor for DInitCryptexConfig);
        v53 += v54;
        --v52;
      }

      while (v52);
    }

    if (v146)
    {
      goto LABEL_10;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v146)
    {
LABEL_10:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v55 = v149;
      v56 = v147;
      if (v130 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Data.hash(into:)();
      }

      v58 = v131;
      if (v131 == 2)
      {
        v57 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v57 = v58 & 1;
      }

      goto LABEL_18;
    }
  }

  v57 = 0;
  v55 = v149;
  v56 = v147;
LABEL_18:
  Hasher._combine(_:)(v57);
  if (v56 == 1 || (Hasher._combine(_:)(1u), !v56))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (v148 == 1)
  {
    Hasher._combine(_:)(0);
    if (v55)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v63 = *(v1 + 104);
    v64 = *(v1 + 136);
    v210 = *(v1 + 120);
    v211 = v64;
    v212 = *(v1 + 152);
    v208 = *(v1 + 88);
    v209 = v63;
    v206 = v122;
    v207 = v148;
    Hasher._combine(_:)(1u);
    DInitInstallConfig.hash(into:)();
    if (v55)
    {
LABEL_24:
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(*(v55 + 16));
      v59 = *(v55 + 16);
      if (v59)
      {
        v60 = v55 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
        v61 = *(v121 + 72);
        do
        {
          sub_1001D8990(v60, v5, type metadata accessor for DInitPackageConfig);
          type metadata accessor for URL();
          sub_1001D8A58(&qword_1004AB370, &type metadata accessor for URL);
          dispatch thunk of Hashable.hash(into:)();
          sub_1001D89F8(v5, type metadata accessor for DInitPackageConfig);
          v60 += v61;
          --v59;
        }

        while (v59);
      }

      v62 = v150;
      if (v150)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }
  }

  Hasher._combine(_:)(0);
  v62 = v150;
  if (v150)
  {
LABEL_28:
    Hasher._combine(_:)(1u);
    sub_1001D32CC(a1, v62);
    goto LABEL_32;
  }

LABEL_31:
  Hasher._combine(_:)(0);
LABEL_32:
  v65 = v184;
  v66 = v165;
  v67 = v163;
  v68 = v161;
  v69 = v157;
  v70 = v154;
  v71 = v151;
  if (v151)
  {
    Hasher._combine(_:)(1u);
    sub_1001D30C8(a1, v71);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v72 = v67;
  if (v152 == 3)
  {
    Hasher._combine(_:)(0);
    v73 = v153;
    if (!v153)
    {
LABEL_37:
      Hasher._combine(_:)(0);
      goto LABEL_40;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();

    v73 = v153;
    v72 = v67;
    if (!v153)
    {
      goto LABEL_37;
    }
  }

  v203 = v217;
  v204 = v218;
  v205 = v219;
  v199 = v213;
  v200 = v214;
  v202 = v216;
  v201 = v215;
  v197 = v132;
  v198 = v73;
  Hasher._combine(_:)(1u);
  DInitUserConfig.hash(into:)(a1);
LABEL_40:
  if ((v70 & 0xFF00) == 0x300)
  {
    Hasher._combine(_:)(0);
    v74 = v155;
    if (v155)
    {
LABEL_42:
      Hasher._combine(_:)(1u);
      sub_1001D2EF8(a1, v74);
      goto LABEL_45;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    DInitLogConfig.hash(into:)(a1, v70);
    v74 = v155;
    if (v155)
    {
      goto LABEL_42;
    }
  }

  Hasher._combine(_:)(0);
LABEL_45:
  v75 = v66;
  v76 = v68;
  if (!v156)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v123);
    if (v69 != 2)
    {
      goto LABEL_47;
    }

LABEL_50:
    v77 = v172;
    v78 = 0;
    goto LABEL_53;
  }

  Hasher._combine(_:)(0);
  if (v69 == 2)
  {
    goto LABEL_50;
  }

LABEL_47:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v124);
  if (v69 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v190 = v113;
    v191 = v114 & 1;
    v192 = v115;
    v193 = v116 & 1;
    v194 = v117;
    v195 = v118 & 1;
    v196 = v69;
    Hasher._combine(_:)(1u);
    DInitTailSpinConfigOptions.hash(into:)(a1);
  }

  v77 = v172;
  v78 = v125 & 1;
LABEL_53:
  Hasher._combine(_:)(v78);
  v79 = v158;
  if (v158)
  {
    Hasher._combine(_:)(1u);
    sub_1001D2CF8(a1, v79);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v80 = v77;
  if (v159)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v81 = v171;
  if (v160)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v82 = v167;
    if (v76)
    {
      goto LABEL_61;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v82 = v167;
    if (v76)
    {
LABEL_61:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v162)
      {
        goto LABEL_62;
      }

      goto LABEL_68;
    }
  }

  Hasher._combine(_:)(0);
  if (v162)
  {
LABEL_62:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v83 = v169;
    if (v72)
    {
      goto LABEL_63;
    }

    goto LABEL_69;
  }

LABEL_68:
  Hasher._combine(_:)(0);
  v83 = v169;
  if (v72)
  {
LABEL_63:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v164)
    {
      goto LABEL_64;
    }

LABEL_70:
    Hasher._combine(_:)(0);
    v84 = v170;
    if (v75)
    {
      goto LABEL_65;
    }

    goto LABEL_71;
  }

LABEL_69:
  Hasher._combine(_:)(0);
  if (!v164)
  {
    goto LABEL_70;
  }

LABEL_64:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  v84 = v170;
  if (v75)
  {
LABEL_65:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_72;
  }

LABEL_71:
  Hasher._combine(_:)(0);
LABEL_72:
  v85 = v166;
  if (v166 == 2)
  {
    v86 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v86 = v85 & 1;
  }

  v87 = v175;
  Hasher._combine(_:)(v86);
  if (v82 == 2)
  {
    v88 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v88 = v82 & 1;
  }

  Hasher._combine(_:)(v88);
  v89 = v168;
  if (v168 == 2)
  {
    v90 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v90 = v89 & 1;
  }

  v91 = v174;
  Hasher._combine(_:)(v90);
  if (v83 == 2)
  {
    v92 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v92 = v83 & 1;
  }

  Hasher._combine(_:)(v92);
  if (v84 == 2)
  {
    v93 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v93 = v84 & 1;
  }

  Hasher._combine(_:)(v93);
  if (v81 == 5)
  {
    Hasher._combine(_:)(0);
    if (v80)
    {
      goto LABEL_89;
    }

LABEL_94:
    Hasher._combine(_:)(0);
    goto LABEL_95;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();

  if (!v80)
  {
    goto LABEL_94;
  }

LABEL_89:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(*(v80 + 16));
  v94 = *(v80 + 16);
  if (v94)
  {
    v95 = v80 + 40;
    do
    {

      String.hash(into:)();

      v95 += 16;
      --v94;
    }

    while (v94);
  }

LABEL_95:
  v96 = v173;
  if (v173 == 2)
  {
    v97 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v97 = v96 & 1;
  }

  v98 = v179;
  v99 = v177;
  v100 = v176;
  Hasher._combine(_:)(v97);
  if (v91 == 2)
  {
    v101 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v101 = v91 & 1;
  }

  Hasher._combine(_:)(v101);
  if ((~v87 & 0xF000000000000007) == 0)
  {
    Hasher._combine(_:)(0);
    if (v100)
    {
      goto LABEL_103;
    }

LABEL_106:
    Hasher._combine(_:)(0);
    if (v99 == 2)
    {
      goto LABEL_104;
    }

    goto LABEL_107;
  }

  v189 = v87;
  Hasher._combine(_:)(1u);

  JSON.hash(into:)(a1);

  if (!v100)
  {
    goto LABEL_106;
  }

LABEL_103:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v99 == 2)
  {
LABEL_104:
    v102 = 0;
    goto LABEL_108;
  }

LABEL_107:
  Hasher._combine(_:)(1u);
  v102 = v99 & 1;
LABEL_108:
  Hasher._combine(_:)(v102);
  if (v178)
  {
    Hasher._combine(_:)(0);
    if (v98)
    {
      goto LABEL_110;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v126);
    if (v98)
    {
LABEL_110:
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(*(v98 + 16));
      v103 = *(v98 + 16);
      if (v103)
      {
        v104 = v98 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
        v105 = *(v145 + 72);
        do
        {
          sub_1001D8990(v104, v65, type metadata accessor for DInitCryptexConfig);
          DInitCryptexConfig.hash(into:)();
          sub_1001D89F8(v65, type metadata accessor for DInitCryptexConfig);
          v104 += v105;
          --v103;
        }

        while (v103);
      }

      if (v180)
      {
        goto LABEL_114;
      }

      goto LABEL_117;
    }
  }

  Hasher._combine(_:)(0);
  if (v180)
  {
LABEL_114:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_118;
  }

LABEL_117:
  Hasher._combine(_:)(0);
LABEL_118:
  v106 = v188;
  v107 = v187;
  v108 = v185;
  v109 = v183;
  v110 = v182;
  if (v181)
  {
    Hasher._combine(_:)(0);
    if (v110 != 2)
    {
LABEL_120:
      Hasher._combine(_:)(1u);
      v111 = v110 & 1;
      goto LABEL_123;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v127);
    if (v110 != 2)
    {
      goto LABEL_120;
    }
  }

  v111 = 0;
LABEL_123:
  Hasher._combine(_:)(v111);
  if (v109)
  {
    Hasher._combine(_:)(1u);
    sub_1001D3564(a1, v109);
    if (v108)
    {
      goto LABEL_125;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v108)
    {
LABEL_125:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v186)
      {
        goto LABEL_126;
      }

      goto LABEL_131;
    }
  }

  Hasher._combine(_:)(0);
  if (v186)
  {
LABEL_126:
    Hasher._combine(_:)(0);
    if (v107)
    {
      goto LABEL_127;
    }

LABEL_132:
    Hasher._combine(_:)(0);
    if (v106)
    {
      goto LABEL_128;
    }

    goto LABEL_133;
  }

LABEL_131:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v128);
  if (!v107)
  {
    goto LABEL_132;
  }

LABEL_127:
  Hasher._combine(_:)(1u);
  sub_1001D1E94(a1, v107);
  v189 = v143;
  JSON.hash(into:)(a1);
  if (v106)
  {
LABEL_128:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    return;
  }

LABEL_133:
  Hasher._combine(_:)(0);
}

Swift::Int DInitConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001D1330()
{
  Hasher.init(_seed:)();
  DInitConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t DInitConfig.merging(_:uniquingKeysWith:)@<X0>(const void *a1@<X0>, void (*a2)(_OWORD *__return_ptr, void *, _OWORD *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v9 = type metadata accessor for CodingUserInfoKey();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v46, a1, sizeof(v46));
  memcpy(v47, v4, sizeof(v47));
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  if (qword_1004A9E60 != -1)
  {
    swift_once();
  }

  v13 = sub_1000270B4(v9, static CredentialString.redactionOverrideKey);
  (*(v10 + 16))(v12, v13, v9);
  v44[3] = &type metadata for Bool;
  LOBYTE(v44[0]) = 1;
  v14 = dispatch thunk of JSONEncoder.userInfo.modify();
  sub_1001C9DC8(v44, v12);
  v14(v45, 0);
  memcpy(v44, v47, sizeof(v44));
  sub_1001D7020();
  v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v5)
  {
  }

  v17 = v15;
  v18 = v16;
  memcpy(v44, v46, sizeof(v44));
  v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v39 = a3;
  v40 = v19;
  v41 = v20;
  v22 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v43 = 0;
  v24 = [v22 JSONObjectWithData:isa options:0 error:&v43];

  v25 = v43;
  if (!v24)
  {
    v31 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100031928(v17, v18);
    sub_100031928(v40, v41);
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v38[1] = sub_1000039E8(&qword_1004B07E0);
  swift_dynamicCast();
  v26 = Data._bridgeToObjectiveC()().super.isa;
  v43 = 0;
  v38[0] = v22;
  v27 = [v22 JSONObjectWithData:v26 options:0 error:&v43];

  v28 = v43;
  if (v27 && (_bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), swift_dynamicCast(), v29 = v43, isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(), v44[0] = v45[0], v45[0] = 0x8000000000000000, sub_1001D1AEC(v29, sub_1001D1AA0, 0, isUniquelyReferenced_nonNull_native, a2, v39), v45[0] = v44[0], , , v32 = Dictionary._bridgeToObjectiveC()().super.isa, , v44[0] = 0, v33 = [v38[0] dataWithJSONObject:v32 options:0 error:v44], v32, v28 = v44[0], v33))
  {
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1001D81C8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100031928(v17, v18);
    sub_100031928(v40, v41);

    sub_100031928(v34, v36);
  }

  else
  {
    v37 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100031928(v17, v18);
    sub_100031928(v40, v41);
  }
}

double sub_1001D191C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1001814FC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100183E00();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for CodingUserInfoKey();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_1000279A4((*(v9 + 56) + 32 * v7), a2);
    sub_10033D960(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1001D19F8(uint64_t a1, unint64_t a2)
{
  sub_1000318C0(a1, a2);
  sub_1001D517C(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t sub_1001D1A64@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001D1AA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_100003CA0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1001D1AEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_OWORD *__return_ptr, void *, _OWORD *), uint64_t a6)
{
  v8 = v6;
  v51 = a6;
  v10 = -1 << *(a1 + 32);
  v11 = ~v10;
  v12 = *(a1 + 64);
  v13 = -v10;
  v44 = a1;
  v45 = a1 + 64;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v46 = v11;
  v47 = 0;
  v48 = v14 & v12;
  v49 = a2;
  v50 = a3;

  sub_1001D54A4(&v42);
  v15 = *(&v42 + 1);
  if (!*(&v42 + 1))
  {
LABEL_5:
    sub_100013E00();
  }

  while (1)
  {
    v17 = v42;
    v40 = v42;
    v41 = v15;
    sub_1000279A4(&v43, v39);
    v18 = *v8;
    v20 = sub_100013364(v17, v15);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_24;
    }

    v24 = v19;
    if (v18[3] < v23)
    {
      break;
    }

    if (a4)
    {
      if (v19)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10005DA68();
      if (v24)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    v29 = *v8;
    *(*v8 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v30 = (v29[6] + 16 * v20);
    *v30 = v17;
    v30[1] = v15;
    sub_1000279A4(v39, (v29[7] + 32 * v20));
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_22;
    }

    v29[2] = v33;
LABEL_6:
    sub_1001D54A4(&v42);
    v15 = *(&v42 + 1);
    a4 = 1;
    if (!*(&v42 + 1))
    {
      goto LABEL_5;
    }
  }

  sub_10005CE24(v23, a4 & 1);
  v25 = sub_100013364(v17, v15);
  if ((v24 & 1) != (v26 & 1))
  {
    goto LABEL_23;
  }

  v20 = v25;
  if ((v24 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v27 = *v8;
  sub_100003CA0(*(*v8 + 56) + 32 * v20, v37);
  a5(v38, v37, v39);
  if (!v7)
  {
    sub_100003C3C(v37);
    sub_100003C3C(v39);

    v28 = (v27[7] + 32 * v20);
    sub_100003C3C(v28);
    sub_1000279A4(v38, v28);
    goto LABEL_6;
  }

  sub_100003C3C(v37);
  v37[0] = v7;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100003C3C(v39);
    sub_100013E00();
  }

LABEL_24:
  *&v38[0] = 0;
  *(&v38[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v34._object = 0x800000010043EAA0;
  v34._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v34);
  _print_unlocked<A, B>(_:_:)();
  v35._countAndFlagsBits = 39;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1001D1E94(uint64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for URL();
  v3 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for FilePath();
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DInitConfigSource();
  v6 = __chkstk_darwin(v43);
  v44 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = type metadata accessor for ConfigLoader.LoadingKey(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = *(a2 + 16);
  Hasher._combine(_:)(v17);
  if (v17)
  {
    v18 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v19 = v3;
    v20 = *(v11 + 72);
    v34 = (v19 + 8);
    v35 = (v19 + 32);
    v32 = (v42 + 8);
    v33 = (v42 + 32);
    v42 = v9;
    do
    {
      sub_1001D8990(v18, v16, type metadata accessor for ConfigLoader.LoadingKey);
      sub_1001D8990(v16, v14, type metadata accessor for ConfigLoader.LoadingKey);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v21 = *v14;
          v22 = 2;
        }

        else
        {
          v21 = *v14;
          v22 = 3;
        }
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          sub_1001D8928(v14, v9, type metadata accessor for DInitConfigSource);
          Hasher._combine(_:)(1uLL);
          sub_1001D8990(v9, v44, type metadata accessor for DInitConfigSource);
          v24 = swift_getEnumCaseMultiPayload();
          if (v24 <= 2)
          {
            if (v24)
            {
              if (v24 == 1)
              {
                Hasher._combine(_:)(1uLL);
                String.hash(into:)();
              }

              else
              {
                v30 = v40;
                v29 = v41;
                (*v35)(v40, v44, v41);
                Hasher._combine(_:)(2uLL);
                sub_1001D8A58(&qword_1004AB370, &type metadata accessor for URL);
                dispatch thunk of Hashable.hash(into:)();
                (*v34)(v30, v29);
              }

              v9 = v42;
            }

            else
            {
              v27 = v38;
              v26 = v39;
              (*v33)(v38, v44, v39);
              Hasher._combine(_:)(0);
              sub_1001D8A58(&qword_1004AB7A0, &type metadata accessor for FilePath);
              dispatch thunk of Hashable.hash(into:)();
              v28 = v27;
              v9 = v42;
              (*v32)(v28, v26);
            }

            goto LABEL_24;
          }

          if (v24 == 3)
          {
            Hasher._combine(_:)(3uLL);
            String.hash(into:)();
            v9 = v42;
LABEL_21:
          }

          else
          {
            if (v24 == 4)
            {
              v25 = v44[2];
              v36 = *v44;
              v37 = v25;
              Hasher._combine(_:)(5uLL);
              String.hash(into:)();
              v9 = v42;

              String.hash(into:)();
              goto LABEL_21;
            }

            Hasher._combine(_:)(4uLL);
          }

LABEL_24:
          sub_1001D89F8(v9, type metadata accessor for DInitConfigSource);
          goto LABEL_5;
        }

        v21 = *v14;
        v22 = 0;
      }

      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v21);
LABEL_5:
      sub_1001D89F8(v16, type metadata accessor for ConfigLoader.LoadingKey);
      v18 += v20;
      --v17;
    }

    while (v17);
  }
}

void sub_1001D2478(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a2 + 32);
    while (1)
    {
      v8 = *v5++;
      v7 = v8;
      v9 = v8 >> 61;
      if ((v8 >> 61) <= 2)
      {
        if (v9)
        {
          v10 = v7 & 0x1FFFFFFFFFFFFFFFLL;
          if (v9 == 1)
          {
            v12 = *(v10 + 16);
            v11 = *(v10 + 24);
            Hasher._combine(_:)(2uLL);
            Hasher._combine(_:)(v12);
            Hasher._combine(_:)(v11);
          }

          else
          {
            v14 = *(v10 + 16);
            Hasher._combine(_:)(3uLL);
            if (v14 == 0.0)
            {
              v15 = 0.0;
            }

            else
            {
              v15 = v14;
            }

            Hasher._combine(_:)(*&v15);
          }
        }

        else
        {
          v6 = *(v7 + 16);
          Hasher._combine(_:)(1uLL);
          Hasher._combine(_:)(v6);
        }

        goto LABEL_4;
      }

      if (v9 > 4)
      {
        break;
      }

      if (v9 != 3)
      {
        v16 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        Hasher._combine(_:)(5uLL);

        sub_1001D2478(a1, v16);
LABEL_19:

        goto LABEL_4;
      }

      Hasher._combine(_:)(4uLL);

      String.hash(into:)();

LABEL_4:
      if (!--v4)
      {
        return;
      }
    }

    if (v9 != 5)
    {
      Hasher._combine(_:)(0);
      goto LABEL_4;
    }

    v13 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    Hasher._combine(_:)(6uLL);

    sub_1001D4AA0(a1, v13);
    goto LABEL_19;
  }
}

void sub_1001D2620(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = v4[5];
      v14 = v4[4];
      v15 = v5;
      *v16 = v4[6];
      *&v16[9] = *(v4 + 105);
      v6 = v4[1];
      v11[0] = *v4;
      v11[1] = v6;
      v7 = v4[3];
      v12 = v4[2];
      v13 = v7;
      if (v6)
      {
        Hasher._combine(_:)(1u);
        sub_1001D8878(v11, v10);
        String.hash(into:)();
        if (*(&v12 + 1))
        {
          goto LABEL_7;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        sub_1001D8878(v11, v10);
        if (*(&v12 + 1))
        {
LABEL_7:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_10;
        }
      }

      Hasher._combine(_:)(0);
LABEL_10:
      v8 = BYTE8(v13);
      if (BYTE8(v13) == 2)
      {
        v9 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v9 = v8 & 1;
      }

      Hasher._combine(_:)(v9);
      if (v15)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (!*&v16[8])
        {
          goto LABEL_17;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (!*&v16[8])
        {
LABEL_17:
          Hasher._combine(_:)(0);
          goto LABEL_18;
        }
      }

      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_18:
      if (v16[24] == 4)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      sub_1001D88D4(v11);
      v4 += 8;
      --v3;
    }

    while (v3);
  }
}

void sub_1001D289C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 64;
    do
    {
      v7 = v3;
      v5 = *(v4 + 32);
      v6 = *(v4 + 56);
      if (*(v4 - 16))
      {
        Hasher._combine(_:)(1u);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
      }

      String.hash(into:)();
      if (v5)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (!v6)
        {
LABEL_12:
          Hasher._combine(_:)(0);
          goto LABEL_4;
        }
      }

      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_4:

      swift_bridgeObjectRelease_n();

      v4 += 96;
      v3 = v7 - 1;
    }

    while (v7 != 1);
  }
}

void sub_1001D2AB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      v6 = v5 + 48 * v4;
      v7 = *(v6 + 24);
      v8 = *(v6 + 40);
      Hasher._combine(_:)(*(v6 + 8));
      Hasher._combine(_:)(v7);
      if (v8)
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(*(v8 + 16));
        v9 = *(v8 + 16);
        if (v9)
        {
          v10 = (v8 + 56);
          do
          {
            v11 = *v10;
            Hasher._combine(_:)(*(v10 - 16));
            Hasher._combine(_:)(v11);
            v10 += 32;
            --v9;
          }

          while (v9);
        }
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      ++v4;
    }

    while (v4 != v3);
  }
}

void sub_1001D2B80(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 48);
    do
    {
      v5 = *(v4 - 2);
      if (*v4)
      {
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v5);
      }

      else
      {
        v6 = *(v4 - 1);
        Hasher._combine(_:)(0);

        String.hash(into:)();
        sub_1001D87EC(v5, v6, 0);
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }
}

void sub_1001D2C2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      v6 = v5 + 16 * v4;
      v7 = *(v6 + 1);
      v8 = *(v6 + 8);
      Hasher._combine(_:)(*v6);
      Hasher._combine(_:)(v7);
      if (v8)
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(*(v8 + 16));
        v9 = *(v8 + 16);
        if (v9)
        {
          v10 = (v8 + 33);
          do
          {
            v11 = *v10;
            Hasher._combine(_:)(*(v10 - 1));
            Hasher._combine(_:)(v11);
            v10 += 2;
            --v9;
          }

          while (v9);
        }
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      ++v4;
    }

    while (v4 != v3);
  }
}

void sub_1001D2CF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v5 = *v4;
      v9 = *(v4 + 8);
      v6 = v4[3];
      v7 = v4[5];
      v8 = v4[7];
      if (*(v4 - 2))
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
        if (v5)
        {
          goto LABEL_7;
        }
      }

      else
      {
        Hasher._combine(_:)(0);

        if (v5)
        {
LABEL_7:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_10;
        }
      }

      Hasher._combine(_:)(0);
LABEL_10:
      if (v9 == 2)
      {
        Hasher._combine(_:)(0);
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v9 & 1);
        if (!v6)
        {
LABEL_12:
          Hasher._combine(_:)(0);
          if (!v7)
          {
            goto LABEL_13;
          }

          goto LABEL_17;
        }
      }

      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (!v7)
      {
LABEL_13:
        Hasher._combine(_:)(0);
        if (!v8)
        {
          goto LABEL_18;
        }

        goto LABEL_3;
      }

LABEL_17:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (!v8)
      {
LABEL_18:
        Hasher._combine(_:)(0);
        goto LABEL_4;
      }

LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_4:

      v4 += 11;

      --v3;
    }

    while (v3);
  }
}

void sub_1001D2EF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    for (i = (a2 + 48); ; i += 3)
    {
      v7 = *i;
      v8 = *i & 0x1FFFFFFFFFFFFFFFLL;

      String.hash(into:)();
      v9 = v7 >> 61;
      if ((v7 >> 61) <= 2)
      {
        break;
      }

      if (v9 > 4)
      {
        if (v9 == 5)
        {
          v12 = *(v8 + 16);
          Hasher._combine(_:)(6uLL);

          sub_1001D4AA0(a1, v12);
LABEL_20:

          goto LABEL_5;
        }

        Hasher._combine(_:)(0);
        goto LABEL_4;
      }

      if (v9 != 3)
      {
        v15 = *(v8 + 16);
        Hasher._combine(_:)(5uLL);

        sub_1001D2478(a1, v15);
        goto LABEL_20;
      }

      Hasher._combine(_:)(4uLL);

      String.hash(into:)();

LABEL_5:

      if (!--v4)
      {
        return;
      }
    }

    if (v9)
    {
      if (v9 == 1)
      {
        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        Hasher._combine(_:)(2uLL);
        Hasher._combine(_:)(v11);
        Hasher._combine(_:)(v10);
      }

      else
      {
        v13 = *(v8 + 16);
        Hasher._combine(_:)(3uLL);
        if (v13 == 0.0)
        {
          v14 = 0.0;
        }

        else
        {
          v14 = v13;
        }

        Hasher._combine(_:)(*&v14);
      }
    }

    else
    {
      v6 = *(v7 + 16);
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v6);
    }

LABEL_4:

    goto LABEL_5;
  }
}

void sub_1001D30C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *v5;

      sub_1001C8518(v6);
      String.hash(into:)();
      if ((~v6 & 0xF000000000000007) == 0)
      {
        v7 = 0;
LABEL_8:
        Hasher._combine(_:)(v7);
        goto LABEL_5;
      }

      Hasher._combine(_:)(1u);
      v8 = v6 >> 61;
      if ((v6 >> 61) <= 2)
      {
        if (v8)
        {
          if (v8 == 1)
          {
            v10 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v9 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            Hasher._combine(_:)(2uLL);
            Hasher._combine(_:)(v10);
            Hasher._combine(_:)(v9);
          }

          else
          {
            v13 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            Hasher._combine(_:)(3uLL);
            if (v13 == 0.0)
            {
              v14 = 0.0;
            }

            else
            {
              v14 = v13;
            }

            Hasher._combine(_:)(*&v14);
          }

          goto LABEL_5;
        }

        v12 = *(v6 + 16);
        Hasher._combine(_:)(1uLL);
        v7 = v12;
        goto LABEL_8;
      }

      if (v8 > 4)
      {
        if (v8 == 5)
        {
          v11 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          Hasher._combine(_:)(6uLL);
          sub_1001C8518(v6);

          sub_1001D4AA0(a1, v11);
LABEL_24:

          goto LABEL_4;
        }

        Hasher._combine(_:)(0);
      }

      else
      {
        if (v8 != 3)
        {
          v15 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          Hasher._combine(_:)(5uLL);
          sub_1001C8518(v6);

          sub_1001D2478(a1, v15);
          goto LABEL_24;
        }

        Hasher._combine(_:)(4uLL);
        sub_1001C8518(v6);

        String.hash(into:)();
      }

LABEL_4:
      sub_1001C855C(v6);
LABEL_5:
      v5 += 3;

      sub_1001C855C(v6);
      --v4;
    }

    while (v4);
  }
}

void sub_1001D32CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *v5;
      v7 = v5[2];
      v8 = v5[4];
      v9 = v5[6];
      v10 = *v5 & 0x1FFFFFFFFFFFFFFFLL;

      String.hash(into:)();
      v11 = v6 >> 61;
      if ((v6 >> 61) <= 2)
      {
        if (v11)
        {
          if (v11 == 1)
          {
            v13 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v12 = *(v10 + 24);
            Hasher._combine(_:)(2uLL);
            Hasher._combine(_:)(v13);
            Hasher._combine(_:)(v12);
            if (v7)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v16 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            Hasher._combine(_:)(3uLL);
            if (v16 == 0.0)
            {
              v17 = 0.0;
            }

            else
            {
              v17 = v16;
            }

            Hasher._combine(_:)(*&v17);
            if (v7)
            {
LABEL_25:
              Hasher._combine(_:)(1u);
              String.hash(into:)();
              if (v8)
              {
                goto LABEL_26;
              }

              goto LABEL_30;
            }
          }
        }

        else
        {
          v15 = *(v6 + 16);
          Hasher._combine(_:)(1uLL);
          Hasher._combine(_:)(v15);
          if (v7)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        if (v11 <= 4)
        {
          if (v11 == 3)
          {
            Hasher._combine(_:)(4uLL);

            String.hash(into:)();

            if (v7)
            {
              goto LABEL_25;
            }

            goto LABEL_29;
          }

          v18 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          Hasher._combine(_:)(5uLL);

          sub_1001D2478(a1, v18);
          goto LABEL_24;
        }

        if (v11 == 5)
        {
          v14 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          Hasher._combine(_:)(6uLL);

          sub_1001D4AA0(a1, v14);
LABEL_24:

          if (v7)
          {
            goto LABEL_25;
          }

          goto LABEL_29;
        }

        Hasher._combine(_:)(0);
        if (v7)
        {
          goto LABEL_25;
        }
      }

LABEL_29:
      Hasher._combine(_:)(0);
      if (v8)
      {
LABEL_26:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (!v9)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      }

LABEL_30:
      Hasher._combine(_:)(0);
      if (!v9)
      {
LABEL_31:
        Hasher._combine(_:)(0);
        goto LABEL_4;
      }

LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_4:

      v5 += 9;
      --v4;
    }

    while (v4);
  }
}

void sub_1001D3564(__int128 *a1, uint64_t a2)
{
  v47 = a1;
  v51 = type metadata accessor for URL();
  v3 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000039E8(&qword_1004ABB90);
  v6 = __chkstk_darwin(v5 - 8);
  v48 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v10 = *(a2 + 64);
  v40 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v42 = v3 + 16;
  v15 = (v3 + 32);
  v44 = v3;
  v45 = a2;
  v46 = (v3 + 8);

  v16 = 0;
  v17 = 0;
  v43 = v9;
  v41 = (v3 + 32);
  if (v13)
  {
    while (1)
    {
      v49 = v16;
      v18 = v17;
LABEL_13:
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v22 = v21 | (v18 << 6);
      v23 = v44;
      v24 = (*(v45 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v28 = v50;
      v27 = v51;
      (*(v44 + 16))(v50, *(v45 + 56) + *(v44 + 72) * v22, v51);
      v29 = sub_1000039E8(&qword_1004ABB98);
      v30 = *(v29 + 48);
      v31 = v48;
      *v48 = v25;
      v31[1] = v26;
      v20 = v31;
      v32 = *(v23 + 32);
      v15 = v41;
      v32(v20 + v30, v28, v27);
      (*(*(v29 - 8) + 56))(v20, 0, 1, v29);

      v52 = v18;
      v9 = v43;
      v16 = v49;
LABEL_14:
      sub_10003E154(v20, v9, &qword_1004ABB90);
      v33 = sub_1000039E8(&qword_1004ABB98);
      if ((*(*(v33 - 8) + 48))(v9, 1, v33) == 1)
      {
        break;
      }

      v35 = v50;
      v34 = v51;
      (*v15)(v50, &v9[*(v33 + 48)], v51);
      v36 = v47[3];
      v55 = v47[2];
      v56 = v36;
      v57 = *(v47 + 8);
      v37 = v47[1];
      v53 = *v47;
      v54 = v37;
      String.hash(into:)();

      sub_1001D8A58(&qword_1004AB370, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      (*v46)(v35, v34);
      v16 ^= Hasher._finalize()();
      v17 = v52;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    Hasher._combine(_:)(v16);
  }

  else
  {
LABEL_5:
    if (v14 <= v17 + 1)
    {
      v19 = v17 + 1;
    }

    else
    {
      v19 = v14;
    }

    v20 = v48;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v14)
      {
        v52 = v19 - 1;
        v38 = sub_1000039E8(&qword_1004ABB98);
        (*(*(v38 - 8) + 56))(v20, 1, 1, v38);
        v13 = 0;
        goto LABEL_14;
      }

      v13 = *(v40 + 8 * v18);
      ++v17;
      if (v13)
      {
        v49 = v16;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1001D39FC(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  v48 = v2;
  while (v5)
  {
    v9 = v8;
LABEL_16:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a2 + 56) + 240 * v13);
    v19 = v17[1];
    v18 = v17[2];
    v55 = *v17;
    v56 = v19;
    v57 = v18;
    v20 = v17[6];
    v22 = v17[3];
    v21 = v17[4];
    v60 = v17[5];
    v61 = v20;
    v58 = v22;
    v59 = v21;
    v23 = v17[10];
    v25 = v17[7];
    v24 = v17[8];
    v64 = v17[9];
    v65 = v23;
    v62 = v25;
    v63 = v24;
    v26 = v17[14];
    v28 = v17[11];
    v27 = v17[12];
    v68 = v17[13];
    v69 = v26;
    v66 = v28;
    v67 = v27;
    v78 = v17[11];
    v79 = v17[12];
    v80 = v17[13];
    v81 = v17[14];
    v74 = v17[7];
    *v75 = v17[8];
    *v76 = v17[9];
    v77 = v17[10];
    *v73 = v17[3];
    *&v73[16] = v17[4];
    *&v73[32] = v17[5];
    *&v73[48] = v17[6];
    v70 = *v17;
    v71 = v17[1];
    v72 = v17[2];
    *&v82 = v15;
    *(&v82 + 1) = v16;
    v95 = v79;
    v96 = v80;
    v97 = v81;
    v91 = *v75;
    v92 = *v76;
    v93 = v77;
    v94 = v78;
    v87 = *&v73[16];
    v88 = *&v73[32];
    v89 = *&v73[48];
    v90 = v74;
    v83 = v70;
    v84 = v71;
    v85 = v72;
    v86 = *v73;
    DInitData.init(rawValue:)(&v82);

    sub_100189980(&v55, v54);
    v29 = *(&v82 + 1);
    v30 = v82;
    v110 = v95;
    v111 = v96;
    v112 = v97;
    v106 = v91;
    v107 = v92;
    v109 = v94;
    v108 = v93;
    v102 = v87;
    v103 = v88;
    v105 = v90;
    v104 = v89;
    v98 = v83;
    v99 = v84;
    v32 = v85;
    v31 = v86;
LABEL_17:
    v101 = v31;
    v100 = v32;
    v95 = v110;
    v96 = v111;
    v97 = v112;
    v91 = v106;
    v92 = v107;
    v93 = v108;
    v94 = v109;
    v87 = v102;
    v88 = v103;
    v89 = v104;
    v90 = v105;
    v83 = v98;
    v84 = v99;
    v85 = v32;
    v86 = v31;
    *&v82 = v30;
    *(&v82 + 1) = v29;
    if (sub_1001D84A0(&v82) == 1)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v53 = v7;
    v79 = v110;
    v80 = v111;
    v81 = v112;
    *v75 = v106;
    *v76 = v107;
    v77 = v108;
    v78 = v109;
    *&v73[16] = v102;
    *&v73[32] = v103;
    *&v73[48] = v104;
    v74 = v105;
    v70 = v98;
    v71 = v99;
    v72 = v100;
    *v73 = v101;
    v33 = a1[3];
    v57 = a1[2];
    v58 = v33;
    *&v59 = *(a1 + 8);
    v34 = a1[1];
    v55 = *a1;
    v56 = v34;
    String.hash(into:)();

    if (*(&v70 + 1))
    {
      v35 = v71;
      v36 = v72;
      v37 = *&v73[56];
      v51 = *&v73[8];
      v52 = *&v73[40];
      v50 = *&v73[24];
      Hasher._combine(_:)(1u);
      sub_100250E10(&v55, v35, *(&v35 + 1), v36, *(&v36 + 1));
      v113 = v51;
      v114 = v50;
      v115 = v52;
      v116 = v37;
      sub_100250CA0();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v38 = BYTE8(v74);
    if (BYTE8(v74) == 2)
    {
      v39 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v39 = v38 & 1;
    }

    Hasher._combine(_:)(v39);
    Hasher._combine(_:)(v75[1]);
    Hasher._combine(_:)(v76[1]);
    v40 = *(&v77 + 1);
    if (*(&v77 + 1))
    {
      Hasher._combine(_:)(1u);
      v41 = *(v40 + 16);
      Hasher._combine(_:)(v41);
      if (v41)
      {
        v42 = (v40 + 48);
        do
        {
          v43 = *(v42 - 2);
          if (*v42)
          {
            Hasher._combine(_:)(1uLL);
            Hasher._combine(_:)(v43);
          }

          else
          {
            v44 = *(v42 - 1);
            Hasher._combine(_:)(0);

            String.hash(into:)();
            sub_1001D87EC(v43, v44, 0);
          }

          v42 += 24;
          --v41;
        }

        while (v41);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v45 = BYTE8(v78);
    if (BYTE8(v78) == 2)
    {
      v46 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v46 = v45 & 1;
    }

    v2 = v48;
    Hasher._combine(_:)(v46);
    if (v80)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (*(&v81 + 1))
      {
        goto LABEL_4;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (*(&v81 + 1))
      {
LABEL_4:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_5;
      }
    }

    Hasher._combine(_:)(0);
LABEL_5:
    sub_1001D87FC(&v70);
    v7 = Hasher._finalize()() ^ v53;
  }

  if (v6 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10 - 1;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      sub_1001D8850(&v82);
      v5 = 0;
      v29 = *(&v82 + 1);
      v30 = v82;
      v110 = v95;
      v111 = v96;
      v112 = v97;
      v106 = v91;
      v107 = v92;
      v109 = v94;
      v108 = v93;
      v102 = v87;
      v103 = v88;
      v105 = v90;
      v104 = v89;
      v98 = v83;
      v99 = v84;
      v32 = v85;
      v31 = v86;
      v8 = v11;
      goto LABEL_17;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1001D4044(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  for (i = 0; v7; v9 ^= Hasher._finalize()())
  {
    v11 = i;
LABEL_9:
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v7)) | (v11 << 6)));
    v7 &= v7 - 1;
    v13 = *(a1 + 48);
    v15[2] = *(a1 + 32);
    v15[3] = v13;
    v16 = *(a1 + 64);
    v14 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v14;

    String.hash(into:)();

    sub_1001D41A0(v15, v12);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      Hasher._combine(_:)(v9);
      return;
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1001D41A0(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v71 = a1;
  v72 = v7;
  v70 = v3;
LABEL_6:
  if (v6)
  {
    v81 = v8;
  }

  else
  {
    do
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_103;
      }

      if (v10 >= v7)
      {

        Hasher._combine(_:)(v8);
        return;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
    }

    while (!v6);
    v81 = v8;
    v9 = v10;
  }

  v11 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v6)) | (v9 << 6)));
  v79 = v9;
  v80 = (v6 - 1) & v6;
  v12 = a1[3];
  v103 = a1[2];
  v104 = v12;
  v105 = *(a1 + 8);
  v13 = a1[1];
  v101 = *a1;
  v102 = v13;

  String.hash(into:)();

  v84 = v11 + 64;
  v14 = 1 << *(v11 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v11 + 64);
  v83 = (v14 + 63) >> 6;

  v17 = 0;
  v18 = 0;
  v78 = v11;
  while (1)
  {
    v88 = v17;
    if (v16)
    {
      goto LABEL_24;
    }

    do
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      if (v20 >= v83)
      {
        goto LABEL_5;
      }

      v16 = *(v84 + 8 * v20);
      ++v18;
    }

    while (!v16);
    v18 = v20;
LABEL_24:
    v21 = __clz(__rbit64(v16)) | (v18 << 6);
    v22 = *(*(v11 + 48) + 16 * v21 + 8);
    v23 = *(*(v11 + 56) + 8 * v21);

    v87 = v23 & 0x1FFFFFFFFFFFFFFFLL;

    if (!v22)
    {
LABEL_5:

      Hasher._combine(_:)(v88);

      v6 = v80;
      v8 = Hasher._finalize()() ^ v81;
      v7 = v72;
      v9 = v79;
      goto LABEL_6;
    }

    v98 = v103;
    v99 = v104;
    v100 = v105;
    v96 = v101;
    v97 = v102;
    String.hash(into:)();

    v24 = v23 >> 61;
    if ((v23 >> 61) > 2)
    {
      break;
    }

    if (v24)
    {
      if (v24 == 1)
      {
        v26 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v25 = *(v87 + 24);
        Hasher._combine(_:)(2uLL);
        Hasher._combine(_:)(v26);
        Hasher._combine(_:)(v25);
      }

      else
      {
        v33 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        Hasher._combine(_:)(3uLL);
        if (v33 == 0.0)
        {
          v34 = 0.0;
        }

        else
        {
          v34 = v33;
        }

        Hasher._combine(_:)(*&v34);
      }
    }

    else
    {
      v19 = *(v23 + 16);
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v19);
    }

LABEL_18:
    v16 &= v16 - 1;
    v17 = Hasher._finalize()() ^ v88;
  }

  if (v24 <= 4)
  {
    if (v24 == 3)
    {
      Hasher._combine(_:)(4uLL);

      String.hash(into:)();
    }

    else
    {
      v35 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      Hasher._combine(_:)(5uLL);

      sub_1001D2478(&v96, v35);
    }

    goto LABEL_18;
  }

  if (v24 != 5)
  {
    Hasher._combine(_:)(0);
    goto LABEL_18;
  }

  v27 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  Hasher._combine(_:)(6uLL);
  v74 = v27 + 64;
  v28 = 1 << *(v27 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(v27 + 64);
  v73 = (v28 + 63) >> 6;
  v85 = v27;
  swift_bridgeObjectRetain_n();
  v31 = 0;
  v32 = 0;
  while (2)
  {
    v86 = v31;
    if (!v30)
    {
      do
      {
        v37 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_102;
        }

        if (v37 >= v73)
        {
          goto LABEL_99;
        }

        v30 = *(v74 + 8 * v37);
        ++v32;
      }

      while (!v30);
      v32 = v37;
    }

    v38 = __clz(__rbit64(v30)) | (v32 << 6);
    v39 = *(*(v85 + 48) + 16 * v38 + 8);
    v40 = *(*(v85 + 56) + 8 * v38);

    if (!v39)
    {
LABEL_99:

      Hasher._combine(_:)(v86);

      v3 = v70;
      a1 = v71;
      goto LABEL_18;
    }

    v93 = v98;
    v94 = v99;
    v95 = v100;
    v91 = v96;
    v92 = v97;
    String.hash(into:)();

    v41 = v40 >> 61;
    if ((v40 >> 61) <= 2)
    {
      if (v41)
      {
        if (v41 == 1)
        {
          v43 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v42 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          Hasher._combine(_:)(2uLL);
          v44 = v43;
          v11 = v78;
          Hasher._combine(_:)(v44);
          Hasher._combine(_:)(v42);
        }

        else
        {
          v51 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          Hasher._combine(_:)(3uLL);
          if (v51 == 0.0)
          {
            v52 = 0.0;
          }

          else
          {
            v52 = v51;
          }

          Hasher._combine(_:)(*&v52);
        }
      }

      else
      {
        v36 = *(v40 + 16);
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v36);
      }

      goto LABEL_46;
    }

    if (v41 <= 4)
    {
      if (v41 == 3)
      {
        Hasher._combine(_:)(4uLL);

        String.hash(into:)();

        v11 = v78;
      }

      else
      {
        v53 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        Hasher._combine(_:)(5uLL);

        sub_1001D2478(&v91, v53);
      }

      goto LABEL_46;
    }

    if (v41 != 5)
    {
      Hasher._combine(_:)(0);
LABEL_46:
      v30 &= v30 - 1;
      v31 = Hasher._finalize()() ^ v86;
      continue;
    }

    break;
  }

  v45 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  Hasher._combine(_:)(6uLL);
  v69 = v45 + 64;
  v46 = 1 << *(v45 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & *(v45 + 64);
  v68 = (v46 + 63) >> 6;
  v75 = v45;
  swift_bridgeObjectRetain_n();
  v49 = 0;
  v50 = 0;
  while (2)
  {
    v82 = v49;
    if (v48)
    {
LABEL_80:
      v56 = __clz(__rbit64(v48)) | (v50 << 6);
      v57 = *(*(v75 + 48) + 16 * v56 + 8);
      v58 = *(*(v75 + 56) + 8 * v56);

      v77 = v58 & 0x1FFFFFFFFFFFFFFFLL;

      if (!v57)
      {
LABEL_98:

        Hasher._combine(_:)(v82);

        v11 = v78;
        goto LABEL_46;
      }

      v89[2] = v93;
      v89[3] = v94;
      v90 = v95;
      v89[0] = v91;
      v89[1] = v92;
      String.hash(into:)();

      v59 = v58 >> 61;
      if ((v58 >> 61) <= 2)
      {
        if (v59)
        {
          if (v59 == 1)
          {
            v62 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v61 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            Hasher._combine(_:)(2uLL);
            Hasher._combine(_:)(v62);
            v63 = v61;
          }

          else
          {
            v66 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            Hasher._combine(_:)(3uLL);
            if (v66 == 0.0)
            {
              v67 = 0.0;
            }

            else
            {
              v67 = v66;
            }

            v63 = *&v67;
          }

          Hasher._combine(_:)(v63);
        }

        else
        {
          v65 = *(v58 + 16);
          Hasher._combine(_:)(1uLL);
          Hasher._combine(_:)(v65);
        }

        v60 = v82;
        goto LABEL_74;
      }

      if (v59 > 4)
      {
        v60 = v82;
        if (v59 != 5)
        {
          Hasher._combine(_:)(0);
          goto LABEL_74;
        }

        v64 = *(v77 + 16);
        Hasher._combine(_:)(6uLL);

        sub_1001D4AA0(v89, v64);
      }

      else
      {
        v60 = v82;
        if (v59 == 3)
        {
          Hasher._combine(_:)(4uLL);

          String.hash(into:)();
        }

        else
        {
          v54 = *(v77 + 16);
          Hasher._combine(_:)(5uLL);

          sub_1001D2478(v89, v54);
        }
      }

LABEL_74:
      v48 &= v48 - 1;
      v49 = Hasher._finalize()() ^ v60;
      continue;
    }

    break;
  }

  while (1)
  {
    v55 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v55 >= v68)
    {
      goto LABEL_98;
    }

    v48 = *(v69 + 8 * v55);
    ++v50;
    if (v48)
    {
      v50 = v55;
      goto LABEL_80;
    }
  }

LABEL_104:
  __break(1u);
}

void sub_1001D4AA0(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v27 = v9;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v13 = __clz(__rbit64(v7)) | (v10 << 6);
    v14 = *(*(a2 + 48) + 16 * v13 + 8);
    v15 = *(*(a2 + 56) + 8 * v13);
    v16 = v15 & 0x1FFFFFFFFFFFFFFFLL;

    if (!v14)
    {
LABEL_30:

      Hasher._combine(_:)(v27);
      return;
    }

    v17 = *(a1 + 48);
    v28[2] = *(a1 + 32);
    v28[3] = v17;
    v29 = *(a1 + 64);
    v18 = *(a1 + 16);
    v28[0] = *a1;
    v28[1] = v18;
    String.hash(into:)();

    v19 = v15 >> 61;
    if ((v15 >> 61) <= 2)
    {
      if (v19)
      {
        if (v19 == 1)
        {
          v21 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v20 = *(v16 + 24);
          Hasher._combine(_:)(2uLL);
          Hasher._combine(_:)(v21);
          v22 = v20;
        }

        else
        {
          v24 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          Hasher._combine(_:)(3uLL);
          if (v24 == 0.0)
          {
            v25 = 0.0;
          }

          else
          {
            v25 = v24;
          }

          v22 = *&v25;
        }

        Hasher._combine(_:)(v22);
      }

      else
      {
        v11 = *(v15 + 16);
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v11);
      }
    }

    else
    {
      if (v19 <= 4)
      {
        if (v19 == 3)
        {
          Hasher._combine(_:)(4uLL);

          String.hash(into:)();

          goto LABEL_6;
        }

        v26 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        Hasher._combine(_:)(5uLL);

        sub_1001D2478(v28, v26);
        goto LABEL_28;
      }

      if (v19 == 5)
      {
        v23 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        Hasher._combine(_:)(6uLL);

        sub_1001D4AA0(v28, v23);
LABEL_28:

        goto LABEL_6;
      }

      Hasher._combine(_:)(0);
    }

LABEL_6:
    v7 &= v7 - 1;
    v9 = Hasher._finalize()() ^ v27;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_30;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1001D4D48(__int128 *a1, uint64_t a2)
{
  v41 = a1;
  v3 = type metadata accessor for Config.Cryptex.Cryptex(0);
  v39 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000039E8(&qword_1004ABB78);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v40 = a2;

  v16 = 0;
  v17 = 0;
  v42 = v8;
  v18 = &unk_100404690;
  if (v14)
  {
    while (1)
    {
      v43 = v16;
      v19 = v17;
LABEL_13:
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v23 = v22 | (v19 << 6);
      v24 = (*(v40 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = v44;
      sub_1001D8990(*(v40 + 56) + *(v39 + 72) * v23, v44, type metadata accessor for Config.Cryptex.Cryptex);
      v28 = sub_1000039E8(&qword_1004ABB80);
      v29 = *(v28 + 48);
      v30 = v42;
      *v42 = v25;
      v30[1] = v26;
      v31 = v30;
      sub_1001D8928(v27, v30 + v29, type metadata accessor for Config.Cryptex.Cryptex);
      (*(*(v28 - 8) + 56))(v31, 0, 1, v28);

      v21 = v19;
      v32 = v18;
      v33 = v31;
      v16 = v43;
LABEL_14:
      sub_10003E154(v33, v10, &qword_1004ABB78);
      v34 = sub_1000039E8(&qword_1004ABB80);
      if ((*(*(v34 - 8) + 48))(v10, 1, v34) == 1)
      {
        break;
      }

      v35 = v44;
      sub_1001D8928(&v10[*(v34 + 48)], v44, type metadata accessor for Config.Cryptex.Cryptex);
      v36 = v41[3];
      v47 = v41[2];
      v48 = v36;
      v49 = *(v41 + 8);
      v37 = v41[1];
      v45 = *v41;
      v46 = v37;
      String.hash(into:)();

      Config.Cryptex.Cryptex.hash(into:)();
      sub_1001D89F8(v35, type metadata accessor for Config.Cryptex.Cryptex);
      v16 ^= Hasher._finalize()();
      v17 = v21;
      v18 = v32;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    Hasher._combine(_:)(v16);
  }

  else
  {
LABEL_5:
    if (v15 <= v17 + 1)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = v15;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        v32 = v18;
        v38 = sub_1000039E8(&qword_1004ABB80);
        v33 = v42;
        (*(*(v38 - 8) + 56))(v42, 1, 1, v38);
        v14 = 0;
        goto LABEL_14;
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v43 = v16;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}