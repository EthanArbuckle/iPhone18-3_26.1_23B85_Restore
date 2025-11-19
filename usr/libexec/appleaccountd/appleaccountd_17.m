void sub_1001E6DD0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000EEDD4(319, &qword_1003DB130);
    if (v1 <= 0x3F)
    {
      sub_1000F2A94();
      if (v2 <= 0x3F)
      {
        sub_1000EEDD4(319, &qword_1003DD7C8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1001E6EE4()
{
  result = qword_1003E2840;
  if (!qword_1003E2840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2840);
  }

  return result;
}

unint64_t sub_1001E6F3C()
{
  result = qword_1003E2848;
  if (!qword_1003E2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2848);
  }

  return result;
}

unint64_t sub_1001E6F94()
{
  result = qword_1003E2850;
  if (!qword_1003E2850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2850);
  }

  return result;
}

uint64_t sub_1001E6FE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654B737365636361 && a2 == 0xED00006174614479 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100330AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x444964726F636572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x444972656550746FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6144726961706572 && a2 == 0xEA00000000006574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F43726961706572 && a2 == 0xEB00000000746E75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010032D430 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_1001E7380()
{
  v1 = *v0;
  v2 = 0x69636966656E6562;
  v3 = 0x444964726F636572;
  v4 = 0xD000000000000013;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001E7430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001E8CD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001E7458(uint64_t a1)
{
  v2 = sub_1001E876C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E7494(uint64_t a1)
{
  v2 = sub_1001E876C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E74D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for UUID();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v36 = sub_100005814(&qword_1003E2868, &qword_100345E48);
  v34 = *(v36 - 8);
  v10 = *(v34 + 64);
  __chkstk_darwin(v36);
  v12 = &v27 - v11;
  v13 = type metadata accessor for BeneficiaryManifestRecord();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v38 = a1;
  sub_1000080F8(a1, v17);
  sub_1001E876C();
  v35 = v12;
  v19 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return sub_10000839C(v38);
  }

  v31 = v7;
  v20 = v34;
  v37 = v13;
  sub_100005814(&qword_1003DA1E0, &qword_100345E50);
  v40 = 0;
  sub_1001E8880(&qword_1003E2880);
  v21 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v39;
  v23 = v16;
  *&v16[v37[5]] = v39;
  LOBYTE(v39) = 1;
  sub_1001E88EC(&unk_1003DD720, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v22;
  v28 = *(v33 + 32);
  v28(v16, v9, v3);
  LOBYTE(v39) = 2;
  v24 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v23;
  v28((v23 + v37[6]), v24, v3);
  v40 = 3;
  sub_1000EE61C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v37;
  *(v23 + v37[7]) = v39;
  LOBYTE(v39) = 4;
  LOBYTE(v22) = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v20 + 8))(v21, v36);
  *(v23 + v25[8]) = v22 & 1;
  sub_1001E87C0(v23, v32);
  sub_10000839C(v38);
  return sub_1001E8824(v23);
}

uint64_t sub_1001E7A24(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E2888, &qword_100345E58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001E876C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = type metadata accessor for BeneficiaryManifestRecord();
  v17 = *(v3 + v11[5]);
  v19 = 0;
  sub_100005814(&qword_1003DA1E0, &qword_100345E50);
  sub_1001E8880(&qword_1003E2890);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    type metadata accessor for UUID();
    sub_1001E88EC(&unk_1003DDA80, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v11[6];
    LOBYTE(v17) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + v11[7]);
    v14 = v13[1];
    v17 = *v13;
    v18 = v14;
    v19 = 3;
    sub_100015D6C(v17, v14);
    sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v17, v18);
    v15 = *(v3 + v11[8]);
    LOBYTE(v17) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1001E7CF0(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v63 = a3;
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v59 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v59 - v17;
  if (CKRecord.recordType.getter() == 0xD000000000000024 && 0x80000001003303A0 == v18)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
LABEL_7:
      type metadata accessor for InheritanceError(0);
      v68 = 2;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001E88EC(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return;
    }
  }

  v62 = v16;
  v20 = [a1 recordID];
  v21 = [v20 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v11;

  UUID.init(uuidString:)();
  v22 = v66;

  v23 = v12[6];
  if (v23(v10, 1, v22) == 1)
  {
    sub_100008D3C(v10, &qword_1003D8B60, &unk_10033F210);
    goto LABEL_7;
  }

  v61 = v12;
  v60 = v12[4];
  v60(v65, v10, v22);
  v24 = [a1 encryptedValuesByKey];
  v25 = String._bridgeToObjectiveC()();
  v26 = v24;
  v27 = [v24 objectForKeyedSubscript:v25];

  if (!v27)
  {
    goto LABEL_12;
  }

  v68 = v27;
  sub_100005814(&unk_1003E2770, &qword_100341F50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  UUID.init(uuidString:)();

  v28 = v66;
  if (v23(v8, 1, v66) == 1)
  {
    sub_100008D3C(v8, &qword_1003D8B60, &unk_10033F210);
LABEL_12:
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAA0);
    v30 = a1;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "Missing Inheritance beneficiaryID - %@", v33, 0xCu);
      sub_100008D3C(v34, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v68 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001E88EC(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    (v61[1])(v65, v66);
    return;
  }

  v60(v62, v8, v28);
  v36 = String._bridgeToObjectiveC()();
  v37 = [v26 objectForKeyedSubscript:v36];

  v38 = v61;
  if (v37 && (v67 = v37, sub_100005814(&qword_1003DA1E0, &qword_100345E50), (swift_dynamicCast() & 1) != 0))
  {
    v39 = v68;
    v40 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
    [a1 encodeSystemFieldsWithCoder:v40];
    [v40 finishEncoding];
    v41 = [v40 encodedData];
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
    swift_unknownObjectRelease();

    v45 = type metadata accessor for BeneficiaryManifestRecord();
    v46 = v63;
    v47 = (v63 + v45[7]);
    *v47 = v42;
    v47[1] = v44;
    v48 = v66;
    v49 = v60;
    v60((v46 + v45[6]), v65, v66);
    v49(v46, v62, v48);
    *(v46 + v45[5]) = v39;
    *(v46 + v45[8]) = v64 & 1;
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100008D04(v50, qword_1003FAAA0);
    v51 = a1;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v51;
      *v55 = v51;
      v56 = v51;
      _os_log_impl(&_mh_execute_header, v52, v53, "Missing Inheritance altDSID - %@", v54, 0xCu);
      sub_100008D3C(v55, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v68 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001E88EC(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    v57 = v38[1];
    v58 = v66;
    v57(v62, v66);
    v57(v65, v58);
  }
}

uint64_t sub_1001E8644(uint64_t a1)
{
  *(a1 + 8) = sub_1001E88EC(&unk_1003D9190, type metadata accessor for BeneficiaryManifestRecord);
  result = sub_1001E88EC(&qword_1003E0E78, type metadata accessor for BeneficiaryManifestRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for BeneficiaryManifestRecord()
{
  result = qword_1003E28F0;
  if (!qword_1003E28F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E8714(uint64_t a1)
{
  result = sub_1001E88EC(&qword_1003E2860, type metadata accessor for BeneficiaryManifestRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001E876C()
{
  result = qword_1003E2870;
  if (!qword_1003E2870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2870);
  }

  return result;
}

uint64_t sub_1001E87C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeneficiaryManifestRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E8824(uint64_t a1)
{
  v2 = type metadata accessor for BeneficiaryManifestRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001E8880(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100008CBC(&qword_1003DA1E0, &qword_100345E50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001E88EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001E8958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_1001E8A28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

void sub_1001E8AE0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1001E8B7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001E8B7C()
{
  if (!qword_1003E2900)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1003E2900);
    }
  }
}

unint64_t sub_1001E8BD0()
{
  result = qword_1003E2940;
  if (!qword_1003E2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2940);
  }

  return result;
}

unint64_t sub_1001E8C28()
{
  result = qword_1003E2948;
  if (!qword_1003E2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2948);
  }

  return result;
}

unint64_t sub_1001E8C80()
{
  result = qword_1003E2950;
  if (!qword_1003E2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2950);
  }

  return result;
}

uint64_t sub_1001E8CD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000100330D60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444964726F636572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1001E8EA0()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E697070617277;
  }
}

uint64_t sub_1001E8F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001E9728(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001E8F3C(uint64_t a1)
{
  v2 = sub_1001E9AFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E8F78(uint64_t a1)
{
  v2 = sub_1001E9AFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E8FB4(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E2978, &qword_100346030);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001E9AFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v3;
  v19 = v18;
  v17[23] = 0;
  sub_1001E9B50(&v19, v17);
  sub_1000EE774();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100012324(v18, *(&v18 + 1));
  if (!v2)
  {
    v11 = *(v3 + 2);
    v12 = *(v3 + 3);
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + 4);
    v14 = *(v3 + 5);
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_1001E9170@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001E9858(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1001E91CC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((sub_10018F69C(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (v2 != v6 || v3 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1001E92AC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for JSONDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001E95B8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100012324(a1, a2);

  sub_100015D6C(v10, v11);

  sub_100012324(v10, v11);

  *a3 = v10;
  a3[1] = v11;
  a3[2] = v12;
  a3[3] = v13;
  a3[4] = v14;
  a3[5] = v15;
  return result;
}

id sub_1001E9490(uint64_t a1, uint64_t *a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithBeneficiairyIdentifier:isa];

  v7 = *a2;
  v8 = a2[1];
  v9 = v6;
  v10 = Data._bridgeToObjectiveC()().super.isa;
  [v9 setWrappingKeyData:v10];

  v11 = a2[2];
  v12 = a2[3];
  v13 = String._bridgeToObjectiveC()();
  [v9 setWrappingKeyString:v13];

  v14 = a2[4];
  v15 = a2[5];
  v16 = String._bridgeToObjectiveC()();
  [v9 setClaimTokenString:v16];

  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 8))(a1, v17);
  return v9;
}

unint64_t sub_1001E95B8()
{
  result = qword_1003E2960;
  if (!qword_1003E2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2960);
  }

  return result;
}

void sub_1001E960C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 wrappingKeyData];
  if (!v4)
  {

LABEL_8:
    v6 = 0;
    v8 = 0;
    v11 = 0;
    v13 = 0;
    v16 = 0;
    v18 = 0;
    goto LABEL_9;
  }

  v5 = v4;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [a1 wrappingKeyString];
  if (!v9)
  {
LABEL_7:

    sub_100012324(v6, v8);
    goto LABEL_8;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [a1 claimTokenString];
  if (!v14)
  {

    goto LABEL_7;
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

LABEL_9:
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v13;
  a2[4] = v16;
  a2[5] = v18;
}

uint64_t sub_1001E9728(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E697070617277 && a2 == 0xEF6174614479654BLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100330D80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100330DA0 == a2)
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

uint64_t sub_1001E9858@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100005814(&qword_1003E2968, &qword_100346028);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001E9AFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000839C(a1);
  }

  v27 = 0;
  sub_1000EE61C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = a2;
  v12 = v25;
  v11 = v26;
  LOBYTE(v25) = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v13;
  LOBYTE(v25) = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v17 = v14;
  (*(v6 + 8))(v9, v5);
  sub_100015D6C(v12, v11);
  v18 = v23;

  sub_10000839C(a1);
  sub_100012324(v12, v11);

  v20 = v24;
  *v24 = v12;
  v20[1] = v11;
  v20[2] = v22;
  v20[3] = v18;
  v20[4] = v17;
  v20[5] = v16;
  return result;
}

unint64_t sub_1001E9AFC()
{
  result = qword_1003E2970;
  if (!qword_1003E2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2970);
  }

  return result;
}

__n128 sub_1001E9BBC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1001E9BD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001E9C18(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1001E9C78()
{
  result = qword_1003E2980;
  if (!qword_1003E2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2980);
  }

  return result;
}

unint64_t sub_1001E9CD0()
{
  result = qword_1003E2988;
  if (!qword_1003E2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2988);
  }

  return result;
}

unint64_t sub_1001E9D28()
{
  result = qword_1003E2990;
  if (!qword_1003E2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2990);
  }

  return result;
}

uint64_t sub_1001E9D7C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for InheritanceHealthRecord() + 20);
  Date.init(timeIntervalSince1970:)();
  sub_1001EC8FC(&qword_1003DB600, &type metadata accessor for Date);
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  v7 = *(v1 + 8);
  v7(v4, v0);
  if (v6)
  {
    return -1;
  }

  Date.init()();
  Date.timeIntervalSince(_:)();
  v10 = v9;
  v11 = v9;
  result = (v7)(v4, v0);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 9.22337204e18)
  {
    return v10;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1001E9F40()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = *(type metadata accessor for InheritanceHealthRecord() + 20);
  Date.init(timeIntervalSince1970:)();
  sub_1001EC8FC(&qword_1003DB600, &type metadata accessor for Date);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v3 + 8);
  v12(v9, v2);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    sub_10028B98C();
    (*(v3 + 16))(v7, v1 + v10, v2);
    Date.init(timeInterval:since:)();
    Date.init()();
    v13 = static Date.< infix(_:_:)();
    v12(v7, v2);
    v12(v9, v2);
  }

  return v13 & 1;
}

void sub_1001EA130(void *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v109 = a2;
  v5 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v111 = &v101 - v7;
  v8 = type metadata accessor for Date();
  v112 = *(v8 - 8);
  v113 = v8;
  v9 = *(v112 + 64);
  v10 = __chkstk_darwin(v8);
  v108 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v110 = &v101 - v12;
  v13 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v101 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v114 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v115 = &v101 - v25;
  if (CKRecord.recordType.getter() == 0xD000000000000017 && 0x80000001003462B0 == v26)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
LABEL_7:
      type metadata accessor for InheritanceError(0);
      v118 = 2;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001EC8FC(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return;
    }
  }

  v106 = a3;
  v28 = [a1 recordID];
  v29 = [v28 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v30 = v21;
  v31 = *(v21 + 48);
  if (v31(v19, 1, v20) == 1)
  {
    sub_100008D3C(v19, &qword_1003D8B60, &unk_10033F210);
    goto LABEL_7;
  }

  v104 = v30;
  v32 = v20;
  v33 = *(v30 + 32);
  v107 = v32;
  v33(v115, v19);
  v34 = [a1 encryptedValuesByKey];
  v35 = String._bridgeToObjectiveC()();
  v105 = v34;
  v36 = [v34 objectForKeyedSubscript:v35];

  if (!v36)
  {
    goto LABEL_12;
  }

  v118 = v36;
  v37 = sub_100005814(&unk_1003E2770, &qword_100341F50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v103 = v37;
  UUID.init(uuidString:)();

  v38 = v107;
  if (v31(v17, 1, v107) == 1)
  {
    sub_100008D3C(v17, &qword_1003D8B60, &unk_10033F210);
LABEL_12:
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100008D04(v39, qword_1003FAAA0);
    v40 = a1;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v107;
    v45 = v104;
    if (v43)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v40;
      *v47 = v40;
      v48 = v40;
      _os_log_impl(&_mh_execute_header, v41, v42, "Missing beneficiaryID - %@", v46, 0xCu);
      sub_100008D3C(v47, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v118 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001EC8FC(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v45 + 8))(v115, v44);
    return;
  }

  v49 = v114;
  (v33)(v114, v17, v38);
  v50 = type metadata accessor for InheritanceHealthRecord();
  v51 = v104;
  v52 = *(v104 + 16);
  v53 = v106;
  v102 = *(v50 + 28);
  v52(&v106[v102], v115, v38);
  v52(v53, v49, v38);
  v54 = String._bridgeToObjectiveC()();
  v55 = [v105 objectForKeyedSubscript:v54];

  if (!v55)
  {
    v56 = v111;
    v59 = v112;
    v57 = v113;
    (*(v112 + 56))(v111, 1, 1, v113);
    v61 = v110;
LABEL_21:
    Date.init(timeIntervalSince1970:)();
    if ((*(v59 + 48))(v56, 1, v57) != 1)
    {
      sub_100008D3C(v56, &qword_1003DA110, &qword_10033F230);
    }

    goto LABEL_23;
  }

  v116 = v55;
  v56 = v111;
  v57 = v113;
  v58 = swift_dynamicCast();
  v59 = v112;
  (*(v112 + 56))(v56, v58 ^ 1u, 1, v57);
  v60 = (*(v59 + 48))(v56, 1, v57);
  v61 = v110;
  if (v60 == 1)
  {
    goto LABEL_21;
  }

  (*(v59 + 32))(v110, v56, v57);
LABEL_23:
  v62 = *(v59 + 32);
  v111 = *(v50 + 20);
  v62(&v53[v111], v61, v57);
  v63 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v63];
  [v63 finishEncoding];
  v64 = [v63 encodedData];
  v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v50;
  v68 = v67;

  v69 = v66;
  v70 = &v53[*(v66 + 32)];
  *v70 = v65;
  *(v70 + 1) = v68;
  v71 = String._bridgeToObjectiveC()();
  v72 = [v105 objectForKeyedSubscript:v71];

  v73 = v107;
  if (v72 && (v118 = v72, (swift_dynamicCast() & 1) != 0))
  {
    v74 = v116;
    v75 = v117;
    sub_100015D6C(v116, v117);
    v76 = sub_1000FA458(v74, v75);
    if (v79 == 1)
    {
      v80 = v106;
      v81 = &v106[*(v66 + 24)];
      *v81 = v74;
      v81[1] = v75;
      v82 = v108;
      Date.init(timeIntervalSince1970:)();

      swift_unknownObjectRelease();
      v83 = *(v51 + 8);
      v84 = v107;
      v83(v114, v107);
      v83(v115, v84);
      (*(v112 + 40))(&v80[v111], v82, v113);
    }

    else
    {
      v94 = v76;
      v95 = v77;
      v96 = v78;
      v97 = v79;
      swift_unknownObjectRelease();
      sub_100012324(v74, v75);

      v98 = *(v51 + 8);
      v99 = v107;
      v98(v114, v107);
      v98(v115, v99);
      sub_100015D6C(v94, v95);
      sub_1000EE730(v94, v95, v96, v97);
      v80 = v106;
      v100 = &v106[*(v69 + 24)];
      *v100 = v94;
      v100[1] = v95;
    }

    v80[*(v69 + 36)] = v109 & 1;
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_100008D04(v85, qword_1003FAAA0);
    v86 = a1;
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138412290;
      *(v89 + 4) = v86;
      *v90 = v86;
      v91 = v86;
      _os_log_impl(&_mh_execute_header, v87, v88, "Missing access key hash - %@", v89, 0xCu);
      sub_100008D3C(v90, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v118 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001EC8FC(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    v92 = *(v51 + 8);
    v92(v114, v73);
    v92(v115, v73);
    v93 = v106;
    v92(v106, v73);
    (*(v112 + 8))(&v93[v111], v113);
    v92(&v93[v102], v73);
    sub_100012324(*v70, *(v70 + 1));
  }
}

uint64_t sub_1001EAE54(id *a1)
{
  v3 = type metadata accessor for Date();
  v62 = *(v3 - 8);
  v4 = *(v62 + 64);
  __chkstk_darwin(v3);
  v55 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100005814(&qword_1003E29B0, &qword_100341B40);
  v6 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v8 = &v55 - v7;
  v9 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v56 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v55 - v14;
  __chkstk_darwin(v13);
  v17 = &v55 - v16;
  v18 = [*a1 encryptedValuesByKey];
  ObjectType = swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v20 = v68;
  v19 = v69;
  v63 = v1;
  v21 = UUID.uuidString.getter();
  if (!v19)
  {

    v23 = v63;
LABEL_7:
    v25 = UUID.uuidString.getter();
    v71 = &type metadata for String;
    v72 = &protocol witness table for String;
    v68 = v25;
    v69 = v26;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_8;
  }

  if (v20 == v21 && v19 == v22)
  {

    v23 = v63;
    goto LABEL_8;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v23 = v63;
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v59 = "with JSONEncoder";
  v64 = v18;
  CKRecordKeyValueSetting.subscript.getter();
  v61 = type metadata accessor for InheritanceHealthRecord();
  v27 = v62;
  v28 = *(v62 + 16);
  v57 = *(v61 + 20);
  v58 = v28;
  v28(v15, v23 + v57, v3);
  (*(v27 + 56))(v15, 0, 1, v3);
  v29 = *(v60 + 48);
  sub_1000EE8E0(v17, v8);
  sub_1000EE8E0(v15, &v8[v29]);
  v30 = *(v27 + 48);
  if (v30(v8, 1, v3) == 1)
  {
    sub_100008D3C(v15, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v17, &qword_1003DA110, &qword_10033F230);
    if (v30(&v8[v29], 1, v3) == 1)
    {
      sub_100008D3C(v8, &qword_1003DA110, &qword_10033F230);
      v31 = v63;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v32 = v56;
  sub_1000EE8E0(v8, v56);
  if (v30(&v8[v29], 1, v3) == 1)
  {
    sub_100008D3C(v15, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v17, &qword_1003DA110, &qword_10033F230);
    (*(v62 + 8))(v32, v3);
LABEL_13:
    sub_100008D3C(v8, &qword_1003E29B0, &qword_100341B40);
    v31 = v63;
LABEL_14:
    v71 = v3;
    v72 = &protocol witness table for Date;
    v33 = sub_10000DBEC(&v68);
    v58(v33, v31 + v57, v3);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_15;
  }

  v51 = v62;
  v52 = v55;
  (*(v62 + 32))(v55, &v8[v29], v3);
  sub_1001EC8FC(&qword_1003DB600, &type metadata accessor for Date);
  LODWORD(v60) = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = *(v51 + 8);
  v53(v52, v3);
  sub_100008D3C(v15, &qword_1003DA110, &qword_10033F230);
  sub_100008D3C(v17, &qword_1003DA110, &qword_10033F230);
  v53(v32, v3);
  sub_100008D3C(v8, &qword_1003DA110, &qword_10033F230);
  v31 = v63;
  if ((v60 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v34 = (v31 + *(v61 + 24));
  v36 = *v34;
  v35 = v34[1];
  sub_100015D6C(*v34, v35);
  CKRecordKeyValueSetting.subscript.getter();
  v37 = v66;
  v38 = v67;
  v39 = type metadata accessor for JSONEncoder();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v68 = v36;
  v69 = v35;
  sub_1000EE844();
  v70 = 0;
  v71 = 0;
  v42 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v44 = v43;

  if (v38 >> 60 == 15)
  {
    if (v44 >> 60 == 15)
    {
      sub_100012324(v36, v35);
      swift_unknownObjectRelease();

      return sub_100015D58(v37, v38);
    }

    goto LABEL_19;
  }

  if (v44 >> 60 == 15)
  {
LABEL_19:
    sub_100015D58(v37, v38);
    sub_100015D58(v42, v44);
    goto LABEL_20;
  }

  sub_100052704(v37, v38);
  sub_100015D6C(v42, v44);
  v54 = sub_10018F69C(v37, v38, v42, v44);
  sub_100012324(v42, v44);
  sub_100015D58(v37, v38);
  sub_100015D58(v42, v44);
  sub_100015D58(v37, v38);
  if (v54)
  {
    sub_100012324(v36, v35);
    swift_unknownObjectRelease();
  }

LABEL_20:
  v46 = *(v39 + 48);
  v47 = *(v39 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v68 = v36;
  v69 = v35;
  v70 = 0;
  v71 = 0;
  v48 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v50 = v49;

  v71 = &type metadata for Data;
  v72 = &protocol witness table for Data;
  v68 = v48;
  v69 = v50;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  sub_100012324(v36, v35);
}

unint64_t sub_1001EB754()
{
  v1 = *v0;
  v2 = 0x444964726F636572;
  v3 = 0x654B737365636361;
  if (v1 != 4)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000017;
  if (v1 == 1)
  {
    v4 = 0x69636966656E6562;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1001EB82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001ECD4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001EB854(uint64_t a1)
{
  v2 = sub_1001EC7E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EB890(uint64_t a1)
{
  v2 = sub_1001EC7E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001EB8CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for Date();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  v5 = __chkstk_darwin(v3);
  v54 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = v51 - v7;
  v61 = type metadata accessor for UUID();
  v59 = *(v61 - 8);
  v8 = *(v59 + 64);
  v9 = __chkstk_darwin(v61);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = v51 - v12;
  v13 = sub_100005814(&qword_1003E29C0, &qword_1003462F0);
  v62 = *(v13 - 8);
  v14 = *(v62 + 64);
  __chkstk_darwin(v13);
  v16 = v51 - v15;
  v17 = type metadata accessor for InheritanceHealthRecord();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001EC7E8();
  v22 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return sub_10000839C(a1);
  }

  v52 = v11;
  v53 = v17;
  v63 = v20;
  LOBYTE(v64) = 0;
  sub_1001EC8FC(&unk_1003DD720, &type metadata accessor for UUID);
  v24 = v60;
  v23 = v61;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v16;
  v27 = v53[7];
  v28 = v25;
  v60 = *(v59 + 32);
  (v60)(&v63[v27], v24, v23);
  LOBYTE(v64) = 1;
  v29 = v52;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v51[1] = v27;
  (v60)(v63, v29, v23);
  LOBYTE(v64) = 2;
  sub_1001EC8FC(&unk_1003DD5D0, &type metadata accessor for Date);
  v30 = v56;
  v31 = v58;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v30;
  v33 = v53;
  v34 = v53[5];
  (*(v57 + 32))(&v63[v34], v32, v31);
  v65 = 3;
  sub_1000EE61C();
  v60 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v63[v33[8]] = v64;
  v65 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v28;
  v36 = v64;
  sub_100015D6C(v64, *(&v64 + 1));
  v37 = sub_1000FA458(v36, *(&v36 + 1));
  v56 = v36;
  if (v40 == 1)
  {
    v41 = v63;
    *&v63[v53[6]] = v36;
    sub_100015D6C(v36, *(&v36 + 1));
    v42 = v54;
    Date.init(timeIntervalSince1970:)();
    (*(v57 + 40))(&v41[v34], v42, v58);
  }

  else
  {
    v43 = v37;
    v44 = v38;
    v45 = v39;
    v46 = v40;
    sub_100015D6C(v37, v38);
    sub_1000EE730(v43, v44, v45, v46);
    v47 = &v63[v53[6]];
    *v47 = v43;
    v47[1] = v44;
  }

  v48 = v55;
  LOBYTE(v64) = 5;
  v49 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v62 + 8))(v35, v13);
  sub_100012324(v56, *(&v36 + 1));
  v50 = v63;
  v63[v53[9]] = v49 & 1;
  sub_1001EC83C(v50, v48);
  sub_10000839C(a1);
  return sub_1001EC8A0(v50);
}

uint64_t sub_1001EC0B0(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&unk_1003E29D8, &qword_1003462F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v28 - v8;
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001EC7E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = type metadata accessor for InheritanceHealthRecord();
  v12 = v11[7];
  LOBYTE(v31) = 0;
  type metadata accessor for UUID();
  sub_1001EC8FC(&unk_1003DDA80, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  LOBYTE(v31) = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v13 = v11[5];
  LOBYTE(v31) = 2;
  type metadata accessor for Date();
  sub_1001EC8FC(&unk_1003DD5F0, &type metadata accessor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v14 = (v3 + v11[8]);
  v15 = v14[1];
  v31 = *v14;
  v32 = v15;
  v35 = 3;
  sub_100015D6C(v31, v15);
  v16 = sub_1000EE774();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100012324(v31, v32);
  v28[1] = v16;
  v17 = (v3 + v11[6]);
  v18 = *v17;
  v19 = v17[1];
  v20 = type metadata accessor for JSONEncoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_100015D6C(v18, v19);
  JSONEncoder.init()();
  v29 = v18;
  v30 = v19;
  v31 = v18;
  v32 = v19;
  sub_1000EE844();
  v33 = 0;
  v34 = 0;
  v23 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v25 = v24;

  v31 = v23;
  v32 = v25;
  v35 = 4;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100012324(v31, v32);
  v26 = *(v3 + v11[9]);
  LOBYTE(v31) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  sub_100012324(v29, v30);
}

uint64_t sub_1001EC510()
{
  _StringGuts.grow(_:)(53);
  v7 = type metadata accessor for InheritanceHealthRecord();
  sub_100005814(&qword_1003E29B8, &qword_1003462E8);
  v0._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v0);

  v1._object = 0x8000000100330C00;
  v1._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_1001EC8FC(&qword_1003D9150, &type metadata accessor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x8000000100330DC0;
  String.append(_:)(v3);
  v4 = *(v7 + 20);
  type metadata accessor for Date();
  sub_1001EC8FC(&qword_1003DB608, &type metadata accessor for Date);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  return 0;
}

uint64_t sub_1001EC6C0(uint64_t a1)
{
  *(a1 + 8) = sub_1001EC8FC(&qword_1003D91A0, type metadata accessor for InheritanceHealthRecord);
  result = sub_1001EC8FC(&qword_1003E0E38, type metadata accessor for InheritanceHealthRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for InheritanceHealthRecord()
{
  result = qword_1003E2A40;
  if (!qword_1003E2A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001EC790(uint64_t a1)
{
  result = sub_1001EC8FC(&unk_1003E29A0, type metadata accessor for InheritanceHealthRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001EC7E8()
{
  result = qword_1003E29C8;
  if (!qword_1003E29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E29C8);
  }

  return result;
}

uint64_t sub_1001EC83C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceHealthRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EC8A0(uint64_t a1)
{
  v2 = type metadata accessor for InheritanceHealthRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001EC8FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001EC968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 36));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1001ECA98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1001ECBA0()
{
  result = type metadata accessor for UUID();
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

unint64_t sub_1001ECC48()
{
  result = qword_1003E2A88;
  if (!qword_1003E2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2A88);
  }

  return result;
}

unint64_t sub_1001ECCA0()
{
  result = qword_1003E2A90;
  if (!qword_1003E2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2A90);
  }

  return result;
}

unint64_t sub_1001ECCF8()
{
  result = qword_1003E2A98;
  if (!qword_1003E2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2A98);
  }

  return result;
}

uint64_t sub_1001ECD4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010032E7B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654B737365636361 && a2 == 0xED00006873614879 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1001ECF7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = type metadata accessor for UUID();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v38 - v9;
  v41 = sub_100005814(&qword_1003E2AB0, &qword_1003464F0);
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v41);
  v14 = v38 - v13;
  v45 = type metadata accessor for InheritanceInvitationRecord();
  v15 = *(*(v45 - 1) + 64);
  __chkstk_darwin(v45);
  v46 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v44 = a1;
  sub_1000080F8(a1, v18);
  sub_1001EF088();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v42 = v4;
  if (v2)
  {
    sub_10000839C(v44);
  }

  else
  {
    v19 = v8;
    v39 = v11;
    LOBYTE(v47) = 1;
    v20 = sub_1001EF140(&unk_1003DD720, &type metadata accessor for UUID);
    v21 = v41;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38[1] = v20;
    v22 = v46;
    v23 = v10;
    v24 = *(v43 + 32);
    v24(v46, v23, v4);
    LOBYTE(v47) = 2;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v38[0] = v24;
    v26 = v45;
    v27 = &v22[v45[5]];
    *v27 = v25;
    v27[1] = v28;
    LOBYTE(v47) = 3;
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = &v46[v26[6]];
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v47) = 4;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = &v46[v26[7]];
    *v33 = v32;
    v33[1] = v34;
    LOBYTE(v47) = 5;
    *&v46[v45[8]] = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v47) = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (v38[0])(&v46[v45[9]], v19, v42);
    v48 = 6;
    sub_1000EE61C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v46[v45[10]] = v47;
    LOBYTE(v47) = 7;
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v39 + 8))(v14, v21);
    v36 = v46;
    v46[v45[11]] = v35 & 1;
    sub_1001EF0DC(v36, v40);
    sub_10000839C(v44);
    return sub_1001D3360(v36);
  }
}

uint64_t sub_1001ED64C(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E2AC0, &qword_1003464F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001EF088();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27) = 1;
  type metadata accessor for UUID();
  sub_1001EF140(&unk_1003DDA80, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for InheritanceInvitationRecord();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v27) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v27) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v27) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + v11[8]);
    LOBYTE(v27) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v11[9];
    LOBYTE(v27) = 0;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = (v3 + v11[10]);
    v24 = v23[1];
    v27 = *v23;
    v28 = v24;
    v29 = 6;
    sub_100015D6C(v27, v24);
    sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v27, v28);
    v25 = *(v3 + v11[11]);
    LOBYTE(v27) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001ED958()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000013;
    if (v1 != 6)
    {
      v5 = 0xD000000000000013;
    }

    if (v1 != 4)
    {
      v6 = 0x737574617473;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x444964726F636572;
    if (v1 == 2)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD000000000000014;
    }

    if (*v0)
    {
      v2 = 0x69636966656E6562;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1001EDA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001EF640(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001EDA9C(uint64_t a1)
{
  v2 = sub_1001EF088();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EDAD8(uint64_t a1)
{
  v2 = sub_1001EF088();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001EDB14(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v79 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v88 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v89 = &v79 - v18;
  v19 = type metadata accessor for InheritanceInvitationRecord();
  v20 = (a3 + *(v19 + 24));
  *v20 = 0;
  v20[1] = 0;
  v86 = v19;
  v87 = a3;
  v21 = (a3 + *(v19 + 28));
  *v21 = 0;
  v21[1] = 0;
  v85 = v21;
  v91 = a1;
  if (CKRecord.recordType.getter() == 0xD00000000000001BLL && 0x80000001003464E0 == v22)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      type metadata accessor for InheritanceError(0);
      v94 = 2;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001EF140(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return;
    }
  }

  v83 = a2;
  v24 = v91;
  v25 = [v91 recordID];
  v26 = [v25 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v13;

  UUID.init(uuidString:)();
  v27 = v90;

  v28 = v14;
  v29 = *(v14 + 48);
  if (v29(v12, 1, v27) == 1)
  {
    sub_100008D3C(v12, &qword_1003D8B60, &unk_10033F210);
    type metadata accessor for InheritanceError(0);
    v94 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001EF140(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    return;
  }

  v81 = *(v28 + 32);
  v82 = v28;
  v81(v89, v12, v27);
  v30 = [v24 encryptedValuesByKey];
  v31 = String._bridgeToObjectiveC()();
  v84 = v30;
  v32 = [v30 objectForKeyedSubscript:v31];

  if (!v32)
  {
    goto LABEL_11;
  }

  v94 = v32;
  sub_100005814(&unk_1003E2770, &qword_100341F50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  UUID.init(uuidString:)();

  v33 = v90;
  if (v29(v10, 1, v90) == 1)
  {
    sub_100008D3C(v10, &qword_1003D8B60, &unk_10033F210);
LABEL_11:
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAAA0);
    v35 = v24;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v35;
      *v39 = v35;
      v40 = v35;
      _os_log_impl(&_mh_execute_header, v36, v37, "Missing Inheritance beneficiaryID - %@", v38, 0xCu);
      sub_100008D3C(v39, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v94 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001EF140(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v82 + 8))(v89, v90);
    return;
  }

  v81(v88, v10, v33);
  v41 = String._bridgeToObjectiveC()();
  v42 = v84;
  v43 = [v84 objectForKeyedSubscript:v41];

  if (!v43 || (v94 = v43, (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100008D04(v66, qword_1003FAAA0);
    v67 = v91;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v68, v69))
    {
      goto LABEL_37;
    }

    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v70 = 138412290;
    *(v70 + 4) = v67;
    *v71 = v67;
    v72 = v67;
    v73 = "Missing Inheritance Handle - %@";
    goto LABEL_36;
  }

  v44 = v93;
  v80 = v92;
  v45 = String._bridgeToObjectiveC()();
  v46 = [v42 objectForKeyedSubscript:v45];

  if (!v46 || (v92 = v46, type metadata accessor for Status(0), (swift_dynamicCast() & 1) == 0))
  {

    v74 = v91;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_100008D04(v75, qword_1003FAAA0);
    v67 = v74;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v68, v69))
    {
      goto LABEL_37;
    }

    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v70 = 138412290;
    *(v70 + 4) = v67;
    *v71 = v67;
    v76 = v67;
    v73 = "Missing TrustedContactStatus - %@";
LABEL_36:
    _os_log_impl(&_mh_execute_header, v68, v69, v73, v70, 0xCu);
    sub_100008D3C(v71, &unk_1003D9140, &qword_10033E640);

LABEL_37:

    type metadata accessor for InheritanceError(0);
    v94 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001EF140(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    v77 = *(v82 + 8);
    v78 = v90;
    v77(v88, v90);
    v77(v89, v78);
    return;
  }

  v82 = v94;
  v47 = String._bridgeToObjectiveC()();
  v48 = [v42 objectForKeyedSubscript:v47];

  if (v48)
  {
    v94 = v48;
    if (swift_dynamicCast())
    {
      v49 = v93;
      *v20 = v92;
      v20[1] = v49;
    }
  }

  v50 = String._bridgeToObjectiveC()();
  v51 = [v42 objectForKeyedSubscript:v50];

  if (v51)
  {
    v94 = v51;
    if (swift_dynamicCast())
    {
      v52 = v93;
      v53 = v85;
      *v85 = v92;
      v53[1] = v52;
    }
  }

  v54 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  v55 = v91;
  [v91 encodeSystemFieldsWithCoder:v54];
  [v54 finishEncoding];
  v56 = [v54 encodedData];
  v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;
  swift_unknownObjectRelease();

  v61 = v86;
  v60 = v87;
  v62 = (v87 + v86[10]);
  *v62 = v57;
  v62[1] = v59;
  v63 = v90;
  v64 = v81;
  v81((v60 + v61[9]), v89, v90);
  v64(v60, v88, v63);
  v65 = (v60 + v61[5]);
  *v65 = v80;
  v65[1] = v44;
  *(v60 + v61[8]) = v82;
  *(v60 + v61[11]) = v83 & 1;
}

uint64_t sub_1001EE71C(id *a1)
{
  v2 = v1;
  [*a1 encryptedValuesByKey];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v3 = UUID.uuidString.getter();
  if (!*(&v24 + 1))
  {

LABEL_6:
    *&v24 = UUID.uuidString.getter();
    *(&v24 + 1) = v6;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_7;
  }

  if (v24 == __PAIR128__(v4, v3))
  {

    goto LABEL_7;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  CKRecordKeyValueSetting.subscript.getter();
  v7 = type metadata accessor for InheritanceInvitationRecord();
  v8 = (v1 + v7[5]);
  v10 = *v8;
  v9 = v8[1];
  if (!*(&v24 + 1))
  {
LABEL_13:
    *&v24 = v10;
    *(&v24 + 1) = v9;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_15;
  }

  if (v24 != v10 || *(&v24 + 1) != v9)
  {
    v12 = *v8;
    v13 = v8[1];
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_15:
  CKRecordKeyValueSetting.subscript.getter();
  v15 = (v1 + v7[6]);
  v17 = *v15;
  v16 = v15[1];
  if (*(&v24 + 1))
  {
    if (!v16)
    {

      v24 = 0u;
LABEL_24:

      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_25;
    }

    if (v24 == __PAIR128__(v16, v17))
    {

      goto LABEL_25;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
LABEL_23:
      *&v24 = v17;
      *(&v24 + 1) = v16;
      goto LABEL_24;
    }
  }

  else if (v16)
  {
    goto LABEL_23;
  }

LABEL_25:
  CKRecordKeyValueSetting.subscript.getter();
  v19 = (v2 + v7[7]);
  v21 = *v19;
  v20 = v19[1];
  if (!*(&v24 + 1))
  {
    if (!v20)
    {
      goto LABEL_35;
    }

LABEL_33:
    *&v24 = v21;
    BYTE8(v24) = v20;
    goto LABEL_34;
  }

  if (!v20)
  {

    v24 = 0u;
LABEL_34:

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_35;
  }

  if (v24 != __PAIR128__(v20, v21))
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_35:
  CKRecordKeyValueSetting.subscript.getter();
  if ((BYTE8(v24) & 1) != 0 || v24 != *(v2 + v7[8]))
  {
    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1001EEBA0()
{
  v1 = v0;
  v2 = type metadata accessor for PersonNameComponents();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(143);
  v6 = type metadata accessor for InheritanceInvitationRecord();
  v32 = v6;
  sub_100005814(&qword_1003E2AA8, &unk_1003464E0);
  v7._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v7);

  v8._object = 0x8000000100330C00;
  v8._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v8);
  type metadata accessor for UUID();
  sub_1001EF140(&qword_1003D9150, &type metadata accessor for UUID);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD000000000000016;
  v10._object = 0x8000000100330DE0;
  String.append(_:)(v10);
  String.append(_:)(*(v0 + v6[5]));
  v11._countAndFlagsBits = 0xD000000000000019;
  v11._object = 0x8000000100330E00;
  String.append(_:)(v11);
  v12 = (v0 + v6[6]);
  v13 = v12[1];
  v32 = *v12;
  v33 = v13;
  swift_bridgeObjectRetain_n();
  sub_100005814(&qword_1003E26F0, &qword_10034B4C0);
  v14._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0xD000000000000018;
  v15._object = 0x8000000100330E20;
  String.append(_:)(v15);
  v16 = (v0 + v6[7]);
  v17 = v16[1];
  v32 = *v16;
  v33 = v17;
  swift_bridgeObjectRetain_n();
  v18._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0xD00000000000001BLL;
  v19._object = 0x8000000100330E40;
  String.append(_:)(v19);
  PersonNameComponents.init()();
  PersonNameComponents.givenName.setter();
  PersonNameComponents.familyName.setter();
  v20 = objc_opt_self();
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v22 = [v20 localizedStringFromPersonNameComponents:isa style:0 options:0];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  (*(v30 + 8))(v5, v31);
  v32 = v23;
  v33 = v25;
  v26._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0x7375746174730A2CLL;
  v27._object = 0xEB00000000202D20;
  String.append(_:)(v27);
  v32 = *(v1 + v6[8]);
  type metadata accessor for Status(0);
  _print_unlocked<A, B>(_:_:)();
  v28._countAndFlagsBits = 44;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  return v34;
}

uint64_t sub_1001EEF60(uint64_t a1)
{
  *(a1 + 8) = sub_1001EF140(&unk_1003D9180, type metadata accessor for InheritanceInvitationRecord);
  result = sub_1001EF140(&qword_1003E0E60, type metadata accessor for InheritanceInvitationRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for InheritanceInvitationRecord()
{
  result = qword_1003E2B20;
  if (!qword_1003E2B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001EF030(uint64_t a1)
{
  result = sub_1001EF140(&qword_1003E2AA0, type metadata accessor for InheritanceInvitationRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001EF088()
{
  result = qword_1003E2AB8;
  if (!qword_1003E2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2AB8);
  }

  return result;
}

uint64_t sub_1001EF0DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceInvitationRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EF140(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for InheritanceInvitationRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InheritanceInvitationRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001EF2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_1001EF3C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

void sub_1001EF47C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10003A288();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Status(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1001EF53C()
{
  result = qword_1003E2B78;
  if (!qword_1003E2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2B78);
  }

  return result;
}

unint64_t sub_1001EF594()
{
  result = qword_1003E2B80;
  if (!qword_1003E2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2B80);
  }

  return result;
}

unint64_t sub_1001EF5EC()
{
  result = qword_1003E2B88;
  if (!qword_1003E2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2B88);
  }

  return result;
}

uint64_t sub_1001EF640(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100330C40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100330E60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100330E80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1001EF8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v35 = a3;
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAA0);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v9;
      v17 = v8;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error removing Beneficiary from IdMS: %@", v18, 0xCu);
      sub_100008D3C(v19, &unk_1003D9140, &qword_10033E640);

      v8 = v17;
      v9 = v16;
    }

    (*(v9 + 16))(v12, a2, v8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v24;
      *v23 = 136315138;
      sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v9;
      v28 = v27;
      (*(v26 + 8))(v12, v8);
      v29 = sub_10021145C(v25, v28, &v38);

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "Continuing with client removal of beneficiary %s following IDMS failure", v23, 0xCu);
      sub_10000839C(v24);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1001EFD84(a2, v36, v37);
    }
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAA0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Successfully removed Beneficiary from IdMS", v33, 2u);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1001EFD84(a2, v36, v37);
    }
  }

  return result;
}

void sub_1001EFD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a2;
  v42 = a3;
  v40 = type metadata accessor for UUID();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v40);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAAA0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = a1;
    v17 = v16;
    v36 = v16;
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v17 = 136315138;
    v43 = type metadata accessor for InheritanceCleanupController();
    sub_100005814(&qword_1003E2D18, qword_1003466C0);
    v18 = String.init<A>(describing:)();
    v20 = v12;
    v21 = v6;
    v22 = v4;
    v23 = sub_10021145C(v18, v19, aBlock);

    v24 = v36;
    *(v36 + 4) = v23;
    v4 = v22;
    v6 = v21;
    v12 = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: Removing Access Key…", v24, 0xCu);
    sub_10000839C(v37);

    a1 = v38;
  }

  (*(v9 + 16))(v12, v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__securityController, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v12, v8);
  v25 = aBlock[0];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v39;
  v29 = v40;
  (*(v6 + 16))(v39, a1, v40);
  v30 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v31 = (v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v6 + 32))(v32 + v30, v28, v29);
  *(v32 + v31) = v27;
  v33 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
  v34 = v42;
  *v33 = v41;
  v33[1] = v34;
  aBlock[4] = sub_1001F4F70;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E828;
  aBlock[3] = &unk_1003AEA90;
  v35 = _Block_copy(aBlock);

  [v25 removeInheritanceAccessKeyForBeneficiaryID:isa completion:v35];
  _Block_release(v35);
  swift_unknownObjectRelease();
}

uint64_t sub_1001F01EC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAAA0);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error removing benefactor from storage: %@", v7, 0xCu);
      sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }

  return a2(a1);
}

uint64_t sub_1001F037C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = a3;
    v18 = v17;
    v31[0] = v17;
    *v16 = 136315138;
    v30 = type metadata accessor for InheritanceCleanupController();
    sub_100005814(&qword_1003E2D18, qword_1003466C0);
    v19 = String.init<A>(describing:)();
    v21 = sub_10021145C(v19, v20, v31);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: Removing BenefactorInfoRecord...", v16, 0xCu);
    sub_10000839C(v18);
    a3 = v27;

    a1 = v28;
  }

  (*(v8 + 16))(v11, v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  v22 = sub_1000080F8(v31, v31[3]);
  v23 = swift_allocObject();
  v23[2] = v29;
  v23[3] = a3;
  v23[4] = v4;
  v24 = *v22;

  sub_10021B0E8(a1, sub_1001F57A4, v23);

  return sub_10000839C(v31);
}

uint64_t sub_1001F0658()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__requestController;
  v2 = sub_100005814(&qword_1003E1088, &qword_1003445F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController;
  v4 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__securityController;
  v6 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InheritanceCleanupController()
{
  result = qword_1003E2BD0;
  if (!qword_1003E2BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001F07EC()
{
  sub_10000DAB8(319, qword_1003E2BE0, &qword_1003E0F80, &unk_100344570);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &qword_1003E1160, &unk_1003E01A0, &qword_1003443F0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &unk_1003E1170, &unk_1003E0210, &qword_100343D90);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1001F0938(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_errorRetain();
    a2(a1);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1001F0A00(a5);
    }

    return (a2)(0);
  }
}

uint64_t sub_1001F0A00(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v6;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Removing Inheritance Health Record...", v15, 2u);
    v6 = v24;
  }

  (*(v8 + 16))(v11, v2 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  v16 = sub_1000080F8(v26, v26[3]);
  v17 = v25;
  (*(v5 + 16))(v25, a1, v4);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v18, v17, v4);
  *(v20 + v19) = v2;
  v21 = *v16;

  sub_10021CBFC(a1, sub_1001F56C8, v20);

  return sub_10000839C(v26);
}

uint64_t sub_1001F0D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a3;
  v36 = a1;
  v39 = a2;
  v5 = type metadata accessor for UUID();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  __chkstk_darwin(v5);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v41[0] = v33;
    *v15 = 136315138;
    v40 = type metadata accessor for InheritanceCleanupController();
    sub_100005814(&qword_1003E2D18, qword_1003466C0);
    v16 = String.init<A>(describing:)();
    v18 = sub_10021145C(v16, v17, v41);

    *(v15 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: Removing Invitation Record...", v15, 0xCu);
    sub_10000839C(v33);
  }

  v19 = v4;
  (*(v8 + 16))(v11, v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  v20 = sub_1000080F8(v41, v41[3]);
  v21 = v36;
  v22 = v37;
  v23 = v34;
  v24 = v38;
  (*(v37 + 16))(v34, v36, v38);
  v25 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v26 = (v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v22 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  v29 = v35;
  *v28 = v39;
  v28[1] = v29;
  *(v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v30 = *v20;

  sub_100214780(v21, sub_1001F555C, v27);

  return sub_10000839C(v41);
}

uint64_t sub_1001F10F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v66 = a4;
  v68 = a2;
  v65 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v65 - 8);
  v9 = v8[8];
  __chkstk_darwin(v65);
  v67 = &v59 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v62 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v15;
  __chkstk_darwin(v14);
  v17 = &v59 - v16;
  p_ivars = &AppleIDAvailabilityHealthCheck.ivars;
  v64 = v12;
  if (a1)
  {
    swift_errorRetain();
    v19 = _convertErrorToNSError(_:)();
    v20 = [v19 code];

    if (v20 == 34)
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100008D04(v21, qword_1003FAAA0);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_16;
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Key not found in Octagon Trust. Delete record from CK.", v24, 2u);
    }

    else
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100008D04(v34, qword_1003FAAA0);
      swift_errorRetain();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      v61 = v35;
      if (!os_log_type_enabled(v35, v36))
      {

        goto LABEL_20;
      }

      v37 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v69[0] = v60;
      *v37 = 136315138;
      v69[5] = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v38 = String.init<A>(describing:)();
      v40 = v11;
      v41 = v8;
      v42 = sub_10021145C(v38, v39, v69);

      *(v37 + 4) = v42;
      v8 = v41;
      v11 = v40;
      v22 = v61;
      _os_log_impl(&_mh_execute_header, v61, v36, "Error removing access keys for beneficiary: %s", v37, 0xCu);
      sub_10000839C(v60);
    }

LABEL_16:

LABEL_20:
    p_ivars = &AppleIDAvailabilityHealthCheck.ivars;
    goto LABEL_21;
  }

  v61 = a5;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100008D04(v25, qword_1003FAAA0);
  (*(v12 + 16))(v17, v68, v11);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v69[0] = v29;
    *v28 = 136315138;
    sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v8;
    v32 = v31;
    (*(v12 + 8))(v17, v11);
    v33 = sub_10021145C(v30, v32, v69);
    v8 = v60;

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "Success removing access key for beneficiaryID: %s", v28, 0xCu);
    sub_10000839C(v29);

    p_ivars = (&AppleIDAvailabilityHealthCheck + 48);
  }

  else
  {

    (*(v12 + 8))(v17, v11);
  }

  a5 = v61;
LABEL_21:
  if (p_ivars[488] != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100008D04(v43, qword_1003FAAA0);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Deleting beneficiary record from CK.", v46, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v48 = result;
    v49 = v64;
    v50 = v62;
    v51 = v68;
    (*(v64 + 16))(v62, v68, v11);
    v52 = (*(v49 + 80) + 40) & ~*(v49 + 80);
    v53 = swift_allocObject();
    *(v53 + 2) = v66;
    *(v53 + 3) = a5;
    *(v53 + 4) = a3;
    (*(v49 + 32))(&v53[v52], v50, v11);
    v54 = v67;
    v55 = v65;
    (v8[2])(v67, v48 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v65);

    Dependency.wrappedValue.getter();
    (v8[1])(v54, v55);
    v56 = sub_1000080F8(v69, v69[3]);
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1001F504C;
    *(v57 + 24) = v53;
    v58 = *v56;

    sub_100217018(v51, sub_1001F50C4, v57);

    return sub_10000839C(v69);
  }

  return result;
}

uint64_t sub_1001F18D4(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v61 = a5;
  v65 = a4;
  v66 = a2;
  v67 = a3;
  v6 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  __chkstk_darwin(v6);
  v58 = &v56 - v8;
  v9 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v56 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v63 = v17;
  v64 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v62 = &v56 - v18;
  v19 = type metadata accessor for BeneficiaryInfoRecord();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v56 - v25);
  sub_100012D04(a1, &v56 - v25, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    swift_errorRetain();
    v66(v27);
  }

  else
  {
    v29 = v67;
    sub_1001F57B0(v26, v22, type metadata accessor for BeneficiaryInfoRecord);
    sub_100012D04(&v22[*(v19 + 44)], v12, &qword_1003D8B60, &unk_10033F210);
    v30 = v13;
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_100008D3C(v12, &qword_1003D8B60, &unk_10033F210);
      v31 = v29;
      v32 = v65;
    }

    else
    {
      v33 = *(v14 + 32);
      v34 = v62;
      v33(v62, v12, v30);
      v32 = v65;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v36 = v58;
        v37 = v59;
        v38 = *(v59 + 16);
        v57 = v22;
        v39 = v60;
        v38(v58, Strong + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__securityController, v60);
        Dependency.wrappedValue.getter();

        (*(v37 + 8))(v36, v39);
        v40 = aBlock[0];
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v42 = v64;
        (*(v14 + 16))(v64, v34, v30);
        v43 = v30;
        v44 = (*(v14 + 80) + 16) & ~*(v14 + 80);
        v45 = swift_allocObject();
        v46 = v45 + v44;
        v30 = v43;
        v34 = v62;
        v33(v46, v42, v30);
        aBlock[4] = sub_1001F52D4;
        aBlock[5] = v45;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v32 = v65;
        aBlock[2] = sub_10020E828;
        aBlock[3] = &unk_1003AEB58;
        v47 = _Block_copy(aBlock);

        [v40 removeInheritanceAccessKeyForBeneficiaryID:isa completion:v47];
        _Block_release(v47);
        swift_unknownObjectRelease();

        v22 = v57;
      }

      (*(v14 + 8))(v34, v30);
      v31 = v29;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v48 = v30;
      v49 = v64;
      (*(v14 + 16))(v64, v61, v48);
      v50 = (*(v14 + 80) + 24) & ~*(v14 + 80);
      v51 = (v63 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = v22;
      v53 = swift_allocObject();
      *(v53 + 16) = v32;
      (*(v14 + 32))(v53 + v50, v49, v48);
      v54 = (v53 + v51);
      *v54 = v66;
      v54[1] = v31;

      sub_1001F2710(v52, sub_1001F51A8, v53);

      v55 = v52;
    }

    else
    {
      v55 = v22;
    }

    return sub_1001F583C(v55, type metadata accessor for BeneficiaryInfoRecord);
  }
}

void sub_1001F1F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAAA0);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = a1;
      v27 = v13;
      *v12 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v14 = String.init<A>(describing:)();
      v16 = sub_10021145C(v14, v15, &v27);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error removing access keys for beneficiary: %s", v12, 0xCu);
      sub_10000839C(v13);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAA0);
    (*(v5 + 16))(v8, a2, v4);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v5 + 8))(v8, v4);
      v25 = sub_10021145C(v22, v24, &v27);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Success removing access key for otPeerID: %s", v20, 0xCu);
      sub_10000839C(v21);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_1001F233C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_ivars = &AppleIDAvailabilityHealthCheck.ivars;
  if (a1)
  {
    v30 = a5;
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAA0);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29 = a3;
      v17 = v16;
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error removing Beneficiary from storage: %@", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
      p_ivars = (&AppleIDAvailabilityHealthCheck + 48);

      a3 = v29;
    }

    else
    {
    }

    a5 = v30;
  }

  if (p_ivars[488] != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAA0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Removing Beneficiary local records.", v23, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = swift_allocObject();
    swift_weakInit();
    (*(v9 + 16))(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
    v26 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v27 = a3;
    v28 = swift_allocObject();
    *(v28 + 2) = v31;
    *(v28 + 3) = a5;
    *(v28 + 4) = v25;
    (*(v9 + 32))(&v28[v26], v11, v8);

    sub_1001F0D2C(v27, sub_1001F5434, v28);
  }

  return result;
}

uint64_t sub_1001F2710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAAA0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a1;
    v17 = v16;
    v26 = swift_slowAlloc();
    v27 = a2;
    v30[0] = v26;
    *v17 = 136315138;
    v29 = type metadata accessor for InheritanceCleanupController();
    sub_100005814(&qword_1003E2D18, qword_1003466C0);
    v18 = String.init<A>(describing:)();
    v20 = sub_10021145C(v18, v19, v30);

    *(v17 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: Removing BeneficiaryInfoRecord...", v17, 0xCu);
    sub_10000839C(v26);
    a2 = v27;

    a1 = v28;
  }

  (*(v9 + 16))(v12, v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v12, v8);
  v21 = sub_1000080F8(v30, v30[3]);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  v23 = *v21;

  sub_100218AD8(a1, sub_1001F5344, v22);

  return sub_10000839C(v30);
}

uint64_t sub_1001F29EC(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for BeneficiaryInfoRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = (&v24 - v13);
  sub_100012D04(a1, &v24 - v13, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v15;
      v27 = v25;
      *v19 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v20 = String.init<A>(describing:)();
      v22 = sub_10021145C(v20, v21, &v27);

      *(v19 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error fetching beneficiaries for removal: %s", v19, 0xCu);
      sub_10000839C(v25);
    }

    *v12 = v15;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v12);

    return sub_100008D3C(v12, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    sub_1001F57B0(v14, v7, type metadata accessor for BeneficiaryInfoRecord);
    sub_100168334(v7, v12);
    swift_storeEnumTagMultiPayload();
    a2(v12);
    sub_100008D3C(v12, &unk_1003E10A0, &unk_100344480);
    return sub_1001F583C(v7, type metadata accessor for BeneficiaryInfoRecord);
  }
}

uint64_t sub_1001F2D40(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v34 = a3;
  v6 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for BenefactorInfoRecord();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v33 - v17);
  sub_100012D04(a1, &v33 - v17, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v33;
    v20 = *v18;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAA0);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35 = v20;
      v36[0] = v25;
      *v24 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v26 = String.init<A>(describing:)();
      v28 = sub_10021145C(v26, v27, v36);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error fetching benefactors for removal: %s", v24, 0xCu);
      sub_10000839C(v25);
    }

    swift_errorRetain();
    v19(v20);
  }

  else
  {
    sub_1001F57B0(v18, v14, type metadata accessor for BenefactorInfoRecord);
    (*(v7 + 16))(v10, a4 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v6);
    Dependency.wrappedValue.getter();
    (*(v7 + 8))(v10, v6);
    v30 = sub_1000080F8(v36, v36[3]);
    v31 = swift_allocObject();
    *(v31 + 16) = v33;
    *(v31 + 24) = v34;
    v32 = *v30;

    sub_10021C184(v14, sub_1001F5818, v31);

    sub_1001F583C(v14, type metadata accessor for BenefactorInfoRecord);
    return sub_10000839C(v36);
  }
}

uint64_t sub_1001F3138(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, const char *a4)
{
  v7 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v21 - v9);
  sub_100012D04(a1, &v21 - v9, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAA0);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v11;
      v22 = v16;
      *v15 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v17 = String.init<A>(describing:)();
      v19 = sub_10021145C(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, a4, v15, 0xCu);
      sub_10000839C(v16);
    }

    swift_errorRetain();
    a2(v11);
  }

  else
  {
    sub_100008D3C(v10, &unk_1003D9220, &unk_10033E8C0);
    return (a2)(0);
  }
}

void sub_1001F33A0(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v64 = a3;
  v65 = a4;
  v60 = a2;
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v57[-v10];
  v12 = type metadata accessor for InheritanceInvitationRecord();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v57[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for UUID();
  v62 = *(v16 - 8);
  v63 = v16;
  v17 = *(v62 + 64);
  __chkstk_darwin(v16);
  v61 = &v57[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v57[-v21];
  sub_100012D04(a1, &v57[-v21], &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001F57B0(v22, v15, type metadata accessor for InheritanceInvitationRecord);
    (*(v8 + 16))(v11, a5 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v7);
    Dependency.wrappedValue.getter();
    (*(v8 + 8))(v11, v7);
    v44 = sub_1000080F8(v68, v68[3]);
    v45 = swift_allocObject();
    *(v45 + 16) = v64;
    *(v45 + 24) = v65;
    v46 = *v44;

    sub_100215918(v15, sub_1001F5608, v45);

    sub_1001F583C(v15, type metadata accessor for InheritanceInvitationRecord);
    sub_10000839C(v68);
    return;
  }

  v23 = *v22;
  v68[0] = *v22;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for InheritanceError(0);
  if (swift_dynamicCast())
  {
    v24 = v67;
    v68[0] = v67;
    v66 = 3;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v25 = v67;
    v66 = v67;
    v26 = static _BridgedStoredNSError.== infix(_:_:)();

    if (v26)
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100008D04(v27, qword_1003FAAA0);
      v28 = v61;
      v29 = v62;
      v30 = v63;
      (*(v62 + 16))(v61, v60, v63);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v68[0] = v59;
        *v33 = 136315394;
        v67 = type metadata accessor for InheritanceCleanupController();
        sub_100005814(&qword_1003E2D18, qword_1003466C0);
        v34 = String.init<A>(describing:)();
        v60 = v24;
        v35 = v28;
        v37 = sub_10021145C(v34, v36, v68);
        v58 = v32;
        v38 = v37;

        *(v33 + 4) = v38;
        *(v33 + 12) = 2080;
        sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID);
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v40;
        v42 = v35;
        v24 = v60;
        (*(v29 + 8))(v42, v30);
        v43 = sub_10021145C(v39, v41, v68);

        *(v33 + 14) = v43;
        _os_log_impl(&_mh_execute_header, v31, v58, "%s: There is no InheritanceInvitationRecord for beneficiaryID - %s.", v33, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v29 + 8))(v28, v30);
      }

      v67 = 11;
      sub_100212324(_swiftEmptyArrayStorage);
      _BridgedStoredNSError.init(_:userInfo:)();
      v56 = v68[0];
      v64(v68[0]);

      return;
    }
  }

  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_100008D04(v47, qword_1003FAAA0);
  swift_errorRetain();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v67 = v23;
    v68[0] = v51;
    *v50 = 136315138;
    swift_errorRetain();
    v52 = String.init<A>(describing:)();
    v54 = sub_10021145C(v52, v53, v68);

    *(v50 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v48, v49, "Error fetching invitation for removal: %s", v50, 0xCu);
    sub_10000839C(v51);
  }

  v55 = v64;
  swift_errorRetain();
  v55(v23);
}

void sub_1001F3B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v5 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v48 - v8;
  v10 = type metadata accessor for InheritanceHealthRecord();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  __chkstk_darwin(v14);
  v50 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v48 - v19);
  sub_100012D04(a1, &v48 - v19, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001F57B0(v20, v13, type metadata accessor for InheritanceHealthRecord);
    (*(v6 + 16))(v9, a3 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__storageController, v5);
    Dependency.wrappedValue.getter();
    (*(v6 + 8))(v9, v5);
    v39 = *sub_1000080F8(v55, v55[3]);
    sub_10021E1D4(v13, sub_1001F4298, 0);
    sub_1001F583C(v13, type metadata accessor for InheritanceHealthRecord);
    sub_10000839C(v55);
    return;
  }

  v21 = *v20;
  v55[0] = *v20;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for InheritanceError(0);
  if (swift_dynamicCast())
  {
    v22 = v54;
    v55[0] = v54;
    v53 = 3;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v23 = v54;
    v53 = v54;
    v24 = static _BridgedStoredNSError.== infix(_:_:)();

    if (v24)
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100008D04(v25, qword_1003FAAA0);
      v26 = v50;
      v27 = v51;
      v28 = v52;
      (*(v51 + 16))(v50, v49, v52);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v55[0] = v49;
        *v31 = 136315394;
        v54 = type metadata accessor for InheritanceCleanupController();
        sub_100005814(&qword_1003E2D18, qword_1003466C0);
        v32 = String.init<A>(describing:)();
        v34 = sub_10021145C(v32, v33, v55);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2080;
        sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        (*(v27 + 8))(v26, v28);
        v38 = sub_10021145C(v35, v37, v55);

        *(v31 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v29, v30, "%s: There is no InheritanceHealthRecord for beneficiaryID - %s.", v31, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v27 + 8))(v26, v28);
      }

      return;
    }
  }

  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100008D04(v40, qword_1003FAAA0);
  swift_errorRetain();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v54 = v21;
    v55[0] = v44;
    *v43 = 136315138;
    swift_errorRetain();
    v45 = String.init<A>(describing:)();
    v47 = sub_10021145C(v45, v46, v55);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v41, v42, "Error fetching Health Record for removal: %s", v43, 0xCu);
    sub_10000839C(v44);
  }

  else
  {
  }
}

void sub_1001F4298(uint64_t a1)
{
  v2 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v15 - v4);
  sub_100012D04(a1, &v15 - v4, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAAA0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v6;
      v16 = v11;
      *v10 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v12 = String.init<A>(describing:)();
      v14 = sub_10021145C(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error removing the Health Record: %s", v10, 0xCu);
      sub_10000839C(v11);
    }

    else
    {
    }
  }

  else
  {
    sub_100008D3C(v5, &unk_1003D9220, &unk_10033E8C0);
  }
}

uint64_t sub_1001F44D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v82 = a4;
  v83 = a2;
  v85 = a3;
  v9 = sub_100005814(&qword_1003E1088, &qword_1003445F8);
  v79 = *(v9 - 8);
  v10 = *(v79 + 64);
  __chkstk_darwin(v9);
  v78 = &v73 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v81 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v73 - v16;
  v18 = swift_allocObject();
  v74 = a5;
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1001F4DFC;
  *(v19 + 24) = v18;
  v87 = v19;
  v20 = qword_1003D7F40;
  v75 = a6;

  v88 = v18;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100008D04(v21, qword_1003FAAA0);
  v23 = v13[2];
  v86 = a1;
  v76 = v23;
  v77 = v13 + 2;
  v23(v17, a1, v12);
  v84 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v26 = os_log_type_enabled(v24, v25);
  v80 = v13;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    aBlock[0] = v73;
    *v27 = 136315394;
    v90 = type metadata accessor for InheritanceCleanupController();
    sub_100005814(&qword_1003E2D18, qword_1003466C0);
    v28 = String.init<A>(describing:)();
    v30 = v14;
    v31 = v9;
    v32 = v12;
    v33 = sub_10021145C(v28, v29, aBlock);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v37 = v13[1];
    v38 = v32;
    v39 = v32;
    v9 = v31;
    v14 = v30;
    v37(v17, v39);
    v40 = sub_10021145C(v34, v36, aBlock);

    *(v27 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s: Starting cleanup for beneficiary with beneficiaryID - %s", v27, 0x16u);
    swift_arrayDestroy();

    v41 = v86;
    if (v85)
    {
LABEL_5:
      v42 = objc_allocWithZone(AKInheritanceContext);

      v43 = String._bridgeToObjectiveC()();

      v44 = [v42 initWithOwnerAltDSID:v43];

      UUID.uuidString.getter();
      v45 = String._bridgeToObjectiveC()();

      [v44 setBeneficiaryIdentifier:v45];

      v46 = objc_allocWithZone(AKInheritanceAccessKey);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v48 = [v46 initWithBeneficiairyIdentifier:isa];

      [v44 setAccessKey:v48];
      [v44 setManifest:0];
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Removing Beneficiary from IDMS...", v51, 2u);
      }

      v52 = v78;
      v53 = v79;
      (*(v79 + 16))(v78, v82 + OBJC_IVAR____TtC13appleaccountd28InheritanceCleanupController__requestController, v9);
      Dependency.wrappedValue.getter();
      (*(v53 + 8))(v52, v9);
      v54 = aBlock[0];
      v55 = swift_allocObject();
      swift_weakInit();
      v56 = v81;
      v76(v81, v41, v38);
      v57 = v80;
      v58 = (*(v80 + 80) + 16) & ~*(v80 + 80);
      v59 = (v14 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      (v57[4])(v60 + v58, v56, v38);
      *(v60 + v59) = v55;
      v61 = (v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
      v62 = v87;
      *v61 = sub_1001F4E04;
      v61[1] = v62;
      aBlock[4] = sub_1001F4E48;
      aBlock[5] = v60;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020E828;
      aBlock[3] = &unk_1003AEA40;
      v63 = _Block_copy(aBlock);

      [v54 removeBeneficiaryWithInheritanceContext:v44 completion:v63];
      _Block_release(v63);

      return swift_unknownObjectRelease();
    }
  }

  else
  {

    v65 = v13[1];
    v38 = v12;
    v65(v17, v12);
    v41 = v86;
    if (v85)
    {
      goto LABEL_5;
    }
  }

  v66 = [objc_allocWithZone(ACAccountStore) init];
  v67 = [v66 aa_primaryAppleAccount];

  if (v67)
  {
    v68 = [v67 aa_altDSID];

    if (v68)
    {
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_5;
    }
  }

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v69, v70, "No altDSID for owner found.", v71, 2u);
  }

  type metadata accessor for InheritanceError(0);
  v90 = 5;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v72 = aBlock[0];

  sub_100208FC0(v72, v74);
}

uint64_t sub_1001F4DC4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001F4E0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001F4E60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001F4E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F4EC0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_1001F4F88(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = (v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a2(a1, v2 + v5, v7, v9, v10);
}

uint64_t sub_1001F504C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1001F18D4(a1, v4, v5, v6, v7);
}

uint64_t sub_1001F50CC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1001F51A8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1001F233C(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_1001F524C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_1001F52D4(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1001F1F3C(a1, v4);
}

uint64_t sub_1001F5368()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1001F5434(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1001F0938(a1, v4, v5, v6, v7);
}

uint64_t sub_1001F54AC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

void sub_1001F555C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  sub_1001F33A0(a1, (v1 + v4), v9, v10, v8);
}

uint64_t sub_1001F562C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

void sub_1001F56C8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1001F3B6C(a1, v1 + v4, v5);
}

uint64_t sub_1001F5764()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001F57B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F583C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001F58C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v43 = a1;
  v8 = type metadata accessor for BeneficiaryInfoRecord();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v8 - 8);
  v44 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v45 = v41 - v12;
  v13 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v41 - v16;
  v18 = qword_1003D7F40;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAA0);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41[0] = v9;
    v24 = a4;
    v25 = a3;
    v26 = a2;
    v27 = v23;
    v47[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_10021145C(v26, v25, v47);
    _os_log_impl(&_mh_execute_header, v20, v21, "Sharing record with beneficiary - %s...", v22, 0xCu);
    sub_10000839C(v27);
    a2 = v26;
    a3 = v25;
    a4 = v24;
    v9 = v41[0];
  }

  (*(v14 + 16))(v17, v41[1] + OBJC_IVAR____TtC13appleaccountd33InheritanceCloudSharingController__sharingController, v13);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v17, v13);
  v28 = sub_1000080F8(v47, v47[3]);
  v29 = swift_allocObject();
  *(v29 + 2) = a2;
  *(v29 + 3) = a3;
  v30 = v46;
  *(v29 + 4) = a4;
  *(v29 + 5) = v30;
  v31 = *v28;
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v45, 1, 1, v32);
  v33 = v44;
  sub_1001F8A34(v43, v44, type metadata accessor for BeneficiaryInfoRecord);
  v34 = (*(v42 + 80) + 40) & ~*(v42 + 80);
  v35 = (v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = a2;
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v31;
  sub_1001F8C3C(v33, v37 + v34, type metadata accessor for BeneficiaryInfoRecord);
  v38 = (v37 + v35);
  *v38 = v36;
  v38[1] = a3;
  v38[2] = 2;
  v39 = (v37 + ((v35 + 31) & 0xFFFFFFFFFFFFFFF8));
  *v39 = sub_1001F776C;
  v39[1] = v29;

  sub_1000BCD5C(0, 0, v45, &unk_100346748, v37);

  return sub_10000839C(v47);
}

uint64_t sub_1001F5D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a2;
  v72 = a3;
  v4 = type metadata accessor for CloudShareInfo();
  v68 = *(v4 - 8);
  v5 = *(v68 + 64);
  __chkstk_darwin(v4 - 8);
  v69 = v6;
  v70 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v71 = &v57[-v9];
  v10 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  __chkstk_darwin(v10);
  v13 = &v57[-v12];
  v62 = type metadata accessor for InheritanceAccessKeyMessage();
  v64 = *(v62 - 8);
  v14 = *(v64 + 64);
  v15 = __chkstk_darwin(v62);
  v65 = &v57[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v15);
  v18 = &v57[-v17];
  __chkstk_darwin(v16);
  v20 = &v57[-v19];
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100008D04(v21, qword_1003FAAA0);
  sub_1001F8A34(a1, v20, type metadata accessor for InheritanceAccessKeyMessage);
  sub_1001F8A34(a1, v18, type metadata accessor for InheritanceAccessKeyMessage);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v60 = v10;
    v25 = v24;
    v59 = swift_slowAlloc();
    v73[0] = v59;
    *v25 = 136315394;
    v26 = v62;
    v27 = *(v62 + 24);
    type metadata accessor for URL();
    v58 = v23;
    sub_1001F83D8(&qword_1003DD590, &type metadata accessor for URL);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v61 = a1;
    v31 = v20;
    v32 = v26;
    sub_1001F7BFC(v31, type metadata accessor for InheritanceAccessKeyMessage);
    v33 = sub_10021145C(v28, v30, v73);

    *(v25 + 4) = v33;
    *(v25 + 12) = 2080;
    v34 = *(v26 + 20);
    type metadata accessor for UUID();
    sub_1001F83D8(&qword_1003D9150, &type metadata accessor for UUID);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    a1 = v61;
    sub_1001F7BFC(v18, type metadata accessor for InheritanceAccessKeyMessage);
    v38 = sub_10021145C(v35, v37, v73);

    *(v25 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v22, v58, "Attempting to accept share with URL %s from %s", v25, 0x16u);
    swift_arrayDestroy();

    v10 = v60;
  }

  else
  {

    sub_1001F7BFC(v18, type metadata accessor for InheritanceAccessKeyMessage);
    sub_1001F7BFC(v20, type metadata accessor for InheritanceAccessKeyMessage);
    v32 = v62;
  }

  v39 = v63;
  (*(v63 + 16))(v13, v66 + OBJC_IVAR____TtC13appleaccountd33InheritanceCloudSharingController__sharingController, v10);
  Dependency.wrappedValue.getter();
  (*(v39 + 8))(v13, v10);
  v40 = sub_1000080F8(v73, v73[3]);
  v41 = *(v32 + 24);
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = v65;
  sub_1001F8A34(a1, v65, type metadata accessor for InheritanceAccessKeyMessage);
  v44 = (*(v64 + 80) + 24) & ~*(v64 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v42;
  sub_1001F8C3C(v43, v45 + v44, type metadata accessor for InheritanceAccessKeyMessage);
  v46 = (v45 + ((v14 + v44 + 7) & 0xFFFFFFFFFFFFFFF8));
  v47 = v72;
  *v46 = v67;
  v46[1] = v47;
  v48 = *v40;
  v49 = type metadata accessor for TaskPriority();
  v50 = v71;
  (*(*(v49 - 8) + 56))(v71, 1, 1, v49);
  v51 = v70;
  sub_1001F8A34(a1 + v41, v70, type metadata accessor for CloudShareInfo);
  v52 = (*(v68 + 80) + 40) & ~*(v68 + 80);
  v53 = (v69 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v48;
  sub_1001F8C3C(v51, v54 + v52, type metadata accessor for CloudShareInfo);
  *(v54 + v53) = 2;
  v55 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v55 = sub_1001F7DFC;
  v55[1] = v45;

  sub_1000BCD5C(0, 0, v50, &unk_100346758, v54);

  return sub_10000839C(v73);
}

uint64_t sub_1001F64B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAA0);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v11 = String.init<A>(describing:)();
      v13 = sub_10021145C(v11, v12, &v21);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to accept BeneficiaryInfoRecord share. Error - %s.", v9, 0xCu);
      sub_10000839C(v10);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAAA0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfully accepted BeneficiaryInfoRecord share.", v18, 2u);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v19 = type metadata accessor for InheritanceAccessKeyMessage();
      sub_1001F8518(a3 + *(v19 + 20));
    }
  }

  return a4(a1);
}

uint64_t sub_1001F6770(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v43 = a1;
  v8 = type metadata accessor for InheritanceHealthRecord();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v8 - 8);
  v44 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v45 = v41 - v12;
  v13 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v41 - v16;
  v18 = qword_1003D7F40;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAA0);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41[0] = v9;
    v24 = a4;
    v25 = a3;
    v26 = a2;
    v27 = v23;
    v47[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_10021145C(v26, v25, v47);
    _os_log_impl(&_mh_execute_header, v20, v21, "Sharing health record with beneficiary - %s...", v22, 0xCu);
    sub_10000839C(v27);
    a2 = v26;
    a3 = v25;
    a4 = v24;
    v9 = v41[0];
  }

  (*(v14 + 16))(v17, v41[1] + OBJC_IVAR____TtC13appleaccountd33InheritanceCloudSharingController__sharingController, v13);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v17, v13);
  v28 = sub_1000080F8(v47, v47[3]);
  v29 = swift_allocObject();
  *(v29 + 2) = a2;
  *(v29 + 3) = a3;
  v30 = v46;
  *(v29 + 4) = a4;
  *(v29 + 5) = v30;
  v31 = *v28;
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v45, 1, 1, v32);
  v33 = v44;
  sub_1001F8A34(v43, v44, type metadata accessor for InheritanceHealthRecord);
  v34 = (*(v42 + 80) + 40) & ~*(v42 + 80);
  v35 = (v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = a2;
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v31;
  sub_1001F8C3C(v33, v37 + v34, type metadata accessor for InheritanceHealthRecord);
  v38 = (v37 + v35);
  *v38 = v36;
  v38[1] = a3;
  v38[2] = 3;
  v39 = (v37 + ((v35 + 31) & 0xFFFFFFFFFFFFFFF8));
  *v39 = sub_1001F8A0C;
  v39[1] = v29;

  sub_1000BCD5C(0, 0, v45, &unk_100346770, v37);

  return sub_10000839C(v47);
}

uint64_t sub_1001F6C00(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void *), uint64_t a5, const char *a6)
{
  v40 = a4;
  v11 = type metadata accessor for CloudShareInfo();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = (&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v21 = (&v39 - v20);
  sub_100135DB0(a1, &v39 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAAA0);

    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = a2;
      v27 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10021145C(v26, a3, &v42);
      *(v27 + 12) = 2080;
      v41 = v22;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v28 = String.init<A>(describing:)();
      v30 = sub_10021145C(v28, v29, &v42);

      *(v27 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to share record with %s. Error - %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    *v19 = v22;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v40(v19);

    return sub_100008D3C(v19, &unk_1003E1070, &unk_100344CE0);
  }

  else
  {
    sub_1001F8C3C(v21, v14, type metadata accessor for CloudShareInfo);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAAA0);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = a2;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = a5;
      v38 = v37;
      v42 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_10021145C(v35, a3, &v42);
      _os_log_impl(&_mh_execute_header, v33, v34, a6, v36, 0xCu);
      sub_10000839C(v38);
    }

    sub_1001F8A34(v14, v19, type metadata accessor for CloudShareInfo);
    swift_storeEnumTagMultiPayload();
    v40(v19);
    sub_100008D3C(v19, &unk_1003E1070, &unk_100344CE0);
    return sub_1001F7BFC(v14, type metadata accessor for CloudShareInfo);
  }
}

uint64_t sub_1001F70C4()
{
  v1 = OBJC_IVAR____TtC13appleaccountd33InheritanceCloudSharingController__sharingController;
  v2 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InheritanceCloudSharingController()
{
  result = qword_1003E2D58;
  if (!qword_1003E2D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001F71C0()
{
  sub_1001F7250();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001F7250()
{
  if (!qword_1003E5660)
  {
    sub_100008CBC(&unk_1003D98D0, &unk_10033F050);
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003E5660);
    }
  }
}

void sub_1001F72B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAA0);
    (*(v5 + 16))(v9, a2, v4);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v15 = 136315394;
      sub_1001F83D8(&qword_1003D9150, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v5 + 8))(v9, v4);
      v20 = sub_10021145C(v17, v19, &v32);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2112;
      v21 = _convertErrorToNSError(_:)();
      *(v15 + 14) = v21;
      *v16 = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed performing initial health check for %s. Error: %@", v15, 0x16u);
      sub_100008D3C(v16, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v31);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAA0);
    (*(v5 + 16))(v11, a2, v4);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      sub_1001F83D8(&qword_1003D9150, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v5 + 8))(v11, v4);
      v30 = sub_10021145C(v27, v29, &v32);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Completed initial health check for %s", v25, 0xCu);
      sub_10000839C(v26);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }
  }
}

uint64_t sub_1001F7794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a4;
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1000082A8;

  return sub_10012EB98(a1, a2, a3, v15, a5, a6, a7, a8);
}

uint64_t sub_1001F788C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = *(v0 + 32);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2, v6);
  v9 = *(v0 + v2 + v1[5] + 8);

  v10 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v8(v0 + v2 + v1[8], v6);
  sub_100012324(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v11 = v1[11];
  if (!(*(v7 + 48))(v0 + v2 + v11, 1, v6))
  {
    v8(v5 + v11, v6);
  }

  v12 = (v19 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 31) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v5 + v1[12] + 8);

  v15 = *(v5 + v1[14] + 8);

  v16 = *(v0 + v12 + 8);

  v17 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16);
}

void sub_1001F7A90()
{
  v2 = v1;
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);
  v14 = *(v0 + 16);
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v12 = *(v0 + v5);
  v11 = *(v0 + v5 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10000EF88;

  JUMPOUT(0x1001F7794);
}

uint64_t sub_1001F7BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001F7C5C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001F7C94()
{
  v1 = (type metadata accessor for InheritanceAccessKeyMessage() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v5 + v1[8];
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = type metadata accessor for CloudShareInfo();
  v11 = *(v8 + *(v10 + 20) + 8);

  v12 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1001F7DFC(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceAccessKeyMessage() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_1001F64B0(a1, v5, v1 + v4, v7);
}

uint64_t sub_1001F7EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = *a4;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_1001F7F4C;

  return sub_100250974(a5, a6);
}

uint64_t sub_1001F7F4C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1001F80C8;
  }

  else
  {
    v3 = sub_1001F8060;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001F8060()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001F80C8()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  swift_errorRetain();
  v3(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001F8154()
{
  v1 = (type metadata accessor for CloudShareInfo() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[7] + 8);

  v9 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1001F827C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CloudShareInfo() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000082A8;

  return sub_1001F7EA0(a1, v9, v10, v1 + 4, v1 + v6, v11, v12, v13);
}

uint64_t sub_1001F83D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F8420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a4;
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_10000EF88;

  return sub_10012EFBC(a1, a2, a3, v15, a5, a6, a7, a8);
}

uint64_t sub_1001F8518(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v6;
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAAA0);
  v30 = *(v3 + 16);
  v30(v9, a1, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28 = v7;
    v16 = v15;
    v32 = v15;
    *v14 = 136315138;
    sub_1001F83D8(&qword_1003D9150, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v3 + 8))(v9, v2);
    v20 = sub_10021145C(v17, v19, &v32);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting initial health check for %s", v14, 0xCu);
    sub_10000839C(v16);
    v7 = v28;

    a1 = v29;
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }

  v21 = type metadata accessor for BenefactorHealthCheck();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  v30(v7, a1, v2);
  v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v25 = swift_allocObject();
  (*(v3 + 32))(v25 + v24, v7, v2);
  sub_100171CDC(a1, sub_1001F895C, v25);
}

uint64_t sub_1001F88D4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_1001F895C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1001F72B4(a1, v4);
}

uint64_t sub_1001F89CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001F8A34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F8A9C()
{
  v1 = (type metadata accessor for InheritanceHealthRecord() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v2;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v10 = v1[7];
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);
  sub_100012324(*(v7 + v1[8]), *(v7 + v1[8] + 8));
  v9(v7 + v1[9], v8);
  sub_100012324(*(v7 + v1[10]), *(v7 + v1[10] + 8));
  v12 = *(v0 + v3 + 8);

  v13 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1001F8C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1001F8CA4()
{
  v2 = v1;
  v3 = *(type metadata accessor for InheritanceHealthRecord() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);
  v14 = *(v0 + 16);
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v12 = *(v0 + v5);
  v11 = *(v0 + v5 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10000EF88;

  JUMPOUT(0x1001F8420);
}

uint64_t sub_1001F8E14(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  sub_1002DBEF4(sub_1001F9190, v5);
}

uint64_t sub_1001F8EA0(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  if (a2)
  {
    return a4(a1, 1);
  }

  v10 = sub_1000080F8((a3 + OBJC_IVAR____TtC13appleaccountd24InheritanceFamilyManager_inheritanceStorage), *(a3 + OBJC_IVAR____TtC13appleaccountd24InheritanceFamilyManager_inheritanceStorage + 24));
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a1;
  v11[4] = a4;
  v11[5] = a5;
  v12 = *v10;

  sub_1000BCBF4(a1, 0);

  sub_100216650(sub_1001F92EC, v11);
}

uint64_t sub_1001F8FAC()
{
  sub_10000839C(v0 + 2);
  v1 = OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__analyticsReporter;
  v2 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd24InheritanceFamilyManager_inheritanceStorage));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InheritanceFamilyManager()
{
  result = qword_1003E2E10;
  if (!qword_1003E2E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001F9150()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001F91A0(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a2)
  {
    return a5(a1, 1);
  }

  v7 = sub_1001F92FC(a4, a1);
  a5(v7, 0);
}

void (*sub_1001F921C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1001F929C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001F92A4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

void *sub_1001F92FC(unint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for BeneficiaryInfoRecord();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v32 = a1 & 0xFFFFFFFFFFFFFF8;
    v33 = a1 & 0xC000000000000001;
    v29 = a1 + 32;
    v30 = i;
    v31 = a1;
    while (1)
    {
      if (v33)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v32 + 16))
        {
          goto LABEL_26;
        }

        v10 = *(v29 + 8 * v8);
      }

      v36 = v10;
      v11 = __OFADD__(v8, 1);
      v12 = v8 + 1;
      if (v11)
      {
        break;
      }

      v35 = v12;
      v13 = *(v34 + 16);
      if (!v13)
      {
LABEL_4:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = v37[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_5;
      }

      v14 = &v6[*(v28 + 20)];
      v15 = v34 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
      v16 = *(v27 + 72);
      while (1)
      {
        sub_100168334(v15, v6);
        v18 = *v14;
        v17 = *(v14 + 1);
        v19 = [v36 handle];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        if (!v17)
        {
          sub_1001BCA80(v6);

          goto LABEL_13;
        }

        if (v18 == v20 && v17 == v22)
        {
          break;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_1001BCA80(v6);
        if (v24)
        {
          goto LABEL_22;
        }

LABEL_13:
        v15 += v16;
        if (!--v13)
        {
          goto LABEL_4;
        }
      }

      sub_1001BCA80(v6);
LABEL_22:

LABEL_5:
      a1 = v31;
      v8 = v35;
      if (v35 == v30)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void sub_1001F95BC(objc_class *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  isa = a1;
  if (a1)
  {
    sub_100016034(0, a4, a5);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a3 + 16))(a3, isa);
}

void sub_1001F9660(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16 && (v17 = [v16 handle]) != 0)
  {
    v41 = v5;
    v43 = a4;
    v18 = v17;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v39 = v12;
    v42 = a2;
    v44 = a5;
    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAA0);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v46 = v25;
      *v24 = 136315138;
      v26 = v40;
      *(v24 + 4) = sub_10021145C(v40, v20, &v46);
      _os_log_impl(&_mh_execute_header, v22, v23, "Notifying beneficiary %s to remove via IDS.", v24, 0xCu);
      sub_10000839C(v25);
    }

    else
    {

      v26 = v40;
    }

    v32 = v41;
    v33 = sub_1000080F8(&v41[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_setupMessenger], *&v41[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_setupMessenger + 24]);
    v34 = [a1 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = *v33;
    v36 = v32;
    v37 = a1;

    v38 = v44;

    sub_1001E0CD4(v15, v26, v20, v35, v36, v37, v42, a3, v43, v38);

    (*(v39 + 8))(v15, v11);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAA0);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Beneficiary doesn't have a handle. Beneficiary Removal Complete!", v30, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v45 = 15;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v31 = v46;
    a4(v46);
  }
}

char *sub_1001F9AC8()
{
  v0 = sub_100005814(&unk_1003D97E0, &unk_10033EF90);
  v77 = *(v0 - 8);
  v1 = *(v77 + 64);
  __chkstk_darwin(v0);
  v3 = &v69 - v2;
  v4 = type metadata accessor for StorageController();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  sub_100005814(&unk_1003DF610, &unk_1003437A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  v86 = v4;
  v87 = &off_1003B49F0;
  v85[0] = v7;
  v76 = v7;
  v8 = type metadata accessor for InheritanceStorageController();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v72 = v11;
  v12 = sub_10003E968(v85, v4);
  v13 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v18 = (v11 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController);
  v18[3] = v4;
  v18[4] = &off_1003B49F0;
  *v18 = v17;

  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_10000839C(v85);
  v19 = type metadata accessor for InheritanceSecurityController();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  v75 = v22;
  Dependency.init(dependencyId:config:)();
  *(v22 + 16) = [objc_allocWithZone(CDPInheritanceTrustController) init];
  sub_100005814(&unk_1003E03A0, &unk_1003436D0);
  Dependency.init(dependencyId:config:)();
  v23 = type metadata accessor for DaemonDestinationBuilder();
  v24 = swift_allocObject();
  v71 = v0;
  Dependency.wrappedValue.getter();
  v25 = v85[0];
  v86 = v23;
  v87 = &off_1003A9008;
  v85[0] = v24;
  v73 = v24;
  v26 = type metadata accessor for DaemonIDSMessenger();
  v27 = swift_allocObject();
  v28 = sub_10003E968(v85, v23);
  v29 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = (&v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v31;
  v27[6] = v23;
  v27[7] = &off_1003A9008;
  v27[2] = v25;
  v27[3] = v33;

  sub_10000839C(v85);
  ObjectType = swift_getObjectType();
  v70 = [objc_allocWithZone(AKInheritanceController) init];
  Dependency.wrappedValue.getter();
  v34 = v85[0];
  v86 = v26;
  v87 = &off_1003B2BB0;
  v85[0] = v27;
  v35 = type metadata accessor for InheritanceSetupMessenger();
  v36 = swift_allocObject();
  v37 = sub_10003E968(v85, v26);
  v38 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = (&v69 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = *v40;
  v36[5] = v26;
  v36[6] = &off_1003B2BB0;
  v36[2] = v42;

  sub_10000839C(v85);
  v86 = v8;
  v87 = &off_1003B0008;
  v84 = &off_1003B2BB0;
  v85[0] = v72;
  v83 = v26;
  v82[0] = v27;
  v80 = v35;
  v81 = &off_1003AE2A0;
  v79[0] = v36;
  v43 = objc_allocWithZone(type metadata accessor for InheritanceRequestManager());
  v44 = v86;
  v45 = sub_10003E968(v85, v86);
  v46 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v45);
  v48 = (&v69 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  v50 = v83;
  v51 = sub_10003E968(v82, v83);
  v52 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v51);
  v54 = (&v69 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54);
  v56 = v80;
  v57 = sub_10003E968(v79, v80);
  v58 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v57);
  v60 = (&v69 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60);
  v62 = *v48;
  v63 = *v54;
  v64 = *v60;

  v65 = sub_10020A08C(v70, v62, v34, v63, v64, v75, v43);
  swift_unknownObjectRelease();
  sub_10000839C(v79);
  sub_10000839C(v82);
  sub_10000839C(v85);

  (*(v77 + 8))(v3, v71);
  v66 = *((swift_isaMask & *v78) + 0x30);
  v67 = *((swift_isaMask & *v78) + 0x34);
  swift_deallocPartialClassInstance();
  return v65;
}

id sub_1001FA348()
{
  v1 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18[-1] - v4;
  (*(v2 + 16))(&v18[-1] - v4, v0 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__accountStore, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  v6 = [*(*sub_1000080F8(v18 v18[3]) + 16)];
  if (v6 && (v7 = v6, v8 = [v6 aa_altDSID], v7, v8))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000839C(v18);
    v9 = objc_allocWithZone(AKInheritanceContext);
    v10 = String._bridgeToObjectiveC()();

    v11 = [v9 initWithOwnerAltDSID:v10];

    return v11;
  }

  else
  {
    sub_10000839C(v18);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAA0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error creating inheritance context. No altDSID for owner found.", v16, 2u);
    }

    return 0;
  }
}

void sub_1001FA5BC(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    v18 = a1;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for InheritanceError(0);
    if (swift_dynamicCast())
    {
      v18 = v17;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v4 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v4)
      {
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_100008D04(v5, qword_1003FAAA0);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "CleanupBeneficiary completed.", v8, 2u);
        }

        [objc_opt_self() postInheritanceContactChangedNotification];
        a2(0);

        return;
      }
    }
  }

  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAAA0);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003E1090, &qword_100344600);
    v14 = String.init<A>(describing:)();
    v16 = sub_10021145C(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "CleanupBeneficiary completed with error : %s", v12, 0xCu);
    sub_10000839C(v13);
  }

  [objc_opt_self() postInheritanceContactChangedNotification];
  a2(a1);
}

uint64_t sub_1001FA940(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003E30D8, &qword_1003468D8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v22 - v13;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAA0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v22[0] = v9;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Starting cleaning up benefactor...", v18, 2u);
    v9 = v22[0];
  }

  (*(v11 + 16))(v14, v22[1] + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__cleanupController, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v14, v10);
  v19 = [a1 beneficiaryID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = swift_allocObject();
  *(v20 + 16) = v23;
  *(v20 + 24) = a3;

  sub_1001F037C(v9, sub_1001DF740, v20);

  return (*(v6 + 8))(v9, v5);
}

id sub_1001FAC54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InheritanceRequestManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InheritanceRequestManager()
{
  result = qword_1003E3010;
  if (!qword_1003E3010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001FB07C()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v18 = *(v0 - 8) + 64;
    sub_1001FB428(319, &qword_1003E3020, type metadata accessor for InheritanceCleanupController);
    if (v3 <= 0x3F)
    {
      v19 = *(v2 - 8) + 64;
      sub_1001FB428(319, &qword_1003E3028, type metadata accessor for BeneficiaryDeclinedStatusHandler);
      if (v5 <= 0x3F)
      {
        v20 = *(v4 - 8) + 64;
        sub_1001FB428(319, &qword_1003E3030, type metadata accessor for InheritanceInvitationResponseHandler);
        if (v7 <= 0x3F)
        {
          v21 = *(v6 - 8) + 64;
          sub_1001FB428(319, &qword_1003E3038, type metadata accessor for InheritanceInvitationHandler);
          if (v9 <= 0x3F)
          {
            v22 = *(v8 - 8) + 64;
            sub_1001FB428(319, &qword_1003E3040, type metadata accessor for InheritanceAccessKeyMessageHandler);
            if (v11 <= 0x3F)
            {
              v23 = *(v10 - 8) + 64;
              sub_1001FB428(319, &qword_1003E3048, type metadata accessor for BeneficiaryRemovedMessageHandler);
              if (v13 <= 0x3F)
              {
                v24 = *(v12 - 8) + 64;
                sub_10000DAB8(319, &unk_1003E3050, &unk_1003E03B0, &qword_100343D98);
                if (v15 <= 0x3F)
                {
                  v25 = *(v14 - 8) + 64;
                  sub_10000DAB8(319, &unk_1003E3060, &unk_1003E0390, &qword_100346800);
                  if (v17 <= 0x3F)
                  {
                    v26 = *(v16 - 8) + 64;
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1001FB428(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Dependency();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1001FB4D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005814(&unk_1003E3210, &unk_100346918);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  (*(v5 + 16))(&v18 - v7, v2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__trustedContactInitiator, v4);
  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  v9 = sub_1000080F8(v21, v21[3]);
  v10 = *v9;
  v11 = *(*v9 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_serialQueue);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = sub_100159244;
  v12[4] = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10015B5B0;
  *(v13 + 24) = v12;
  aBlock[4] = sub_100071DCC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10030F718;
  aBlock[3] = &unk_1003AFA18;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  dispatch_sync(v15, v14);

  _Block_release(v14);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_10000839C(v21);
    v17 = type metadata accessor for InheritanceRequestManager();
    v19.receiver = v2;
    v19.super_class = v17;
    return objc_msgSendSuper2(&v19, "shouldAcceptNewConnection:", a1);
  }

  return result;
}

uint64_t sub_1001FB808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAAA0);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_10021145C(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error fetching dataclass rules from Inheritance Controller: %s", v8, 0xCu);
      sub_10000839C(v9);
    }

    else
    {
    }
  }

  return a3(0, a2);
}

uint64_t sub_1001FBB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!a2)
  {
    v7 = 0;
    if (AAUnderTest.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = _convertErrorToNSError(_:)();
  if ((AAUnderTest.getter() & 1) == 0)
  {
LABEL_3:
    sub_100005814(&qword_1003E30D0, &unk_100340690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    strcpy((inited + 32), "numOfRelation");
    *(inited + 46) = -4864;
    *(inited + 48) = Int._bridgeToObjectiveC()();
    sub_1003093D0(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &unk_1003E8C10, &unk_100344990);
    dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
  }

LABEL_4:

  return a4(a1, a2);
}

uint64_t sub_1001FBC68(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for InheritanceError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v14 = static _BridgedStoredNSError.== infix(_:_:)();

  if (v14)
  {
    swift_getObjectType();
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = a4;

    sub_100208BDC(a5, a6, a7, a8, sub_10020E464, v15, a4);
  }

  else
  {
    sub_100212324(_swiftEmptyArrayStorage);
    _BridgedStoredNSError.init(_:userInfo:)();
    v17 = static _BridgedStoredNSError.== infix(_:_:)();

    if (v17)
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100008D04(v18, qword_1003FAAA0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Saving an existing beneficiary is not allowed.", v21, 2u);
      }
    }

    return a2(0, a1);
  }
}

void sub_1001FBF00(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAA0);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = _convertErrorToNSError(_:)();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error setting up the new beneficiary: %@", v11, 0xCu);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    (a3)(0, a2);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Successfully Setup Beneficiary.", v19, 2u);
    }

    if (a1)
    {
      v20 = swift_allocObject();
      v20[2] = a3;
      v20[3] = a4;
      v20[4] = a1;
      v21 = sub_1000080F8((a5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController), *(a5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24));
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      v23[2] = sub_10020E598;
      v23[3] = v20;
      v23[4] = a1;
      v23[5] = v22;
      v24 = *v21;
      v25 = a1;

      sub_10021E8F0(sub_10020E5EC, v23);
    }

    else
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Created Beneficiary is nil", v28, 2u);
      }

      type metadata accessor for InheritanceError(0);
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      a3(0);
    }
  }
}

uint64_t sub_1001FC388(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v38 - v14);
  sub_100012D04(a1, &v38 - v14, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAA0);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v42 = v16;
      v43 = v21;
      *v20 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v22 = String.init<A>(describing:)();
      v24 = sub_10021145C(v22, v23, &v43);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error persisting new beneficiary in Inheritance Storage: %s", v20, 0xCu);
      sub_10000839C(v21);
    }

    swift_errorRetain();
    a2(0, v16);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAA0);
    v27 = a4;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v40 = a3;
      v31 = v30;
      v39 = swift_slowAlloc();
      v43 = v39;
      *v31 = 136315138;
      v32 = [v27 beneficiaryID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10020E6A0(&qword_1003D9150, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = a2;
      v36 = v35;
      (*(v41 + 8))(v11, v8);
      v37 = sub_10021145C(v33, v36, &v43);
      a2 = v34;

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully saved beneficiary to storage : beneficiaryID - %s", v31, 0xCu);
      sub_10000839C(v39);
    }

    a2(v27, 0);
    return sub_100008D3C(v15, &unk_1003E10A0, &unk_100344480);
  }
}

void sub_1001FC998(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  if (a1)
  {
    v8 = a1;
    [a5 setAccessKey:v8];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = *(Strong + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_controller);
      v11 = Strong;
      swift_unknownObjectRetain();

      v12 = swift_allocObject();
      *(v12 + 16) = a3;
      *(v12 + 24) = a4;
      aBlock[4] = sub_10020E30C;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020E828;
      aBlock[3] = &unk_1003AF6F8;
      v13 = _Block_copy(aBlock);

      [v10 updateBeneficiaryWithInheritanceContext:a5 completion:v13];
      swift_unknownObjectRelease();

      _Block_release(v13);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAAA0);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v20 = Error.localizedDescription.getter();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v23 = sub_10021145C(v20, v22, aBlock);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error generating new access code: %s", v18, 0xCu);
      sub_10000839C(v19);
    }

    a3(a2);
  }
}

uint64_t sub_1001FCC68(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, const char *a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAAA0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = sub_10021145C(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, a4, v10, 0xCu);
      sub_10000839C(v11);
    }

    else
    {
    }
  }

  return a2(a1);
}

uint64_t sub_1001FCE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!a1)
  {
    v5 = 0;
    if (AAUnderTest.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = _convertErrorToNSError(_:)();
  if ((AAUnderTest.getter() & 1) == 0)
  {
LABEL_3:
    sub_100005814(&qword_1003E30D0, &unk_100340690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    strcpy((inited + 32), "numOfRelation");
    *(inited + 46) = -4864;
    *(inited + 48) = Int._bridgeToObjectiveC()();
    sub_1003093D0(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &unk_1003E8C10, &unk_100344990);
    dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
  }

LABEL_4:

  return a3(a1);
}

uint64_t sub_1001FCF74(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v47 = a4;
  v48 = a6;
  v12 = type metadata accessor for InheritanceInvitationRecord();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v47 - v18);
  sub_100012D04(a1, &v47 - v18, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    swift_getErrorValue();
    v21 = sub_100256874(v50[2]);
    type metadata accessor for InheritanceError(0);
    v49 = 3;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v22 = v50[0];
    v49 = v50[0];
    sub_10020E6A0(&qword_1003D8000, type metadata accessor for InheritanceError);
    v23 = v22;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v32 = v23;
    }

    v33 = _convertErrorToNSError(_:)();

    v34 = [v33 code];

    if (v21 == v34)
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100008D04(v35, qword_1003FAAA0);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Invitation record doesn't exist. Begin removal without declining status.", v38, 2u);
      }

      sub_1001F9660(a3, v47, a5, v48, a7);
    }

    else
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100008D04(v39, qword_1003FAAA0);
      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v49 = v20;
        v50[0] = v43;
        *v42 = 136315138;
        swift_errorRetain();
        sub_100005814(&unk_1003DBB60, &unk_10033E740);
        v44 = String.init<A>(describing:)();
        v46 = sub_10021145C(v44, v45, v50);

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v40, v41, "Cannot proceed to remove beneficiary. Error fetching beneficiary -\n%s", v42, 0xCu);
        sub_10000839C(v43);
      }

      swift_errorRetain();
      v48(v20);
    }
  }

  else
  {
    sub_100209F8C(v19, v15, type metadata accessor for InheritanceInvitationRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAA0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Fetched InheritanceInvitationRecord. Declining record...", v27, 2u);
    }

    v28 = *sub_1000080F8(&a2[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&a2[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24]);

    v29 = a2;
    v30 = a3;

    sub_10023ED60(v15, v28, v48, a7, v29, v30, v47, a5);

    return sub_100209FF4(v15, type metadata accessor for InheritanceInvitationRecord);
  }
}

void sub_1001FD570(uint64_t a1, char a2, void (*a3)(), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAA0);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Aborting deletion flow. Failed to decline fetched record. Error: %@.", v14, 0xCu);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    a3();
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAA0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Successfully declined beneficiary invitation record.", v23, 2u);
    }

    sub_1001F9660(a6, a7, a8, a3, a4);
  }
}

uint64_t sub_1001FD8EC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAAA0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Beneficiary Cleanup Complete!", v7, 2u);
  }

  return a2(a1);
}

uint64_t sub_1001FD9E8(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v5 = type metadata accessor for UUID();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_100008D04(v9, qword_1003FAAA0);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  v14 = os_log_type_enabled(v12, v13);
  v47 = v11;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v44 = v10;
    v51 = v16;
    *v15 = 136315394;
    v50 = type metadata accessor for InheritanceRequestManager();
    sub_100005814(&unk_1003E30E0, qword_1003468E0);
    v17 = String.init<A>(describing:)();
    v19 = sub_10021145C(v17, v18, &v51);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = [v11 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10020E6A0(&qword_1003D9150, &type metadata accessor for UUID);
    v21 = v49;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v48 + 8))(v8, v21);
    v25 = sub_10021145C(v22, v24, &v51);

    *(v15 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s - Removing Benefactor with beneficiaryID: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v26 = objc_allocWithZone(type metadata accessor for InheritanceInvitationActionAnalyticsEvent());
  sub_100005814(&qword_1003E30D0, &unk_100340690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033E5C0;
  strcpy((inited + 32), "isFamilyInvite");
  *(inited + 47) = -18;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x8000000100330290;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  sub_1003093D0(inited);
  swift_setDeallocating();
  sub_100005814(&unk_1003E8C10, &unk_100344990);
  swift_arrayDestroy();
  v28 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
  v29 = swift_allocObject();
  v30 = v46;
  v29[2] = v28;
  v29[3] = v30;
  v29[4] = a3;
  v31 = v28;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Fetching benefactor to remove...", v34, 2u);
  }

  v35 = v45;
  v36 = sub_1000080F8(&v45[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&v45[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24]);
  v37 = v47;
  v38 = [v47 beneficiaryID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = swift_allocObject();
  v39[2] = sub_10020DFA0;
  v39[3] = v29;
  v39[4] = v35;
  v39[5] = v37;
  v40 = *v36;
  v41 = v37;

  v42 = v35;
  sub_10021B0E8(v8, sub_10020DFF4, v39);

  return (*(v48 + 8))(v8, v49);
}

uint64_t sub_1001FDF38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!a1)
  {
    v5 = 0;
    if (AAUnderTest.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = _convertErrorToNSError(_:)();
  if ((AAUnderTest.getter() & 1) == 0)
  {
LABEL_3:
    sub_100005814(&qword_1003E30D0, &unk_100340690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033E5C0;
    strcpy((inited + 32), "inviteAction");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    String.init<A>(describing:)();
    v7 = String._bridgeToObjectiveC()();

    *(inited + 48) = v7;
    strcpy((inited + 56), "numOfRelation");
    *(inited + 70) = -4864;
    *(inited + 72) = Int._bridgeToObjectiveC()();
    sub_1003093D0(inited);
    swift_setDeallocating();
    sub_100005814(&unk_1003E8C10, &unk_100344990);
    swift_arrayDestroy();
    dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
  }

LABEL_4:

  return a3(a1);
}

uint64_t sub_1001FE0D4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, char *a4, void *a5)
{
  v43 = a5;
  v44 = a3;
  v8 = type metadata accessor for BenefactorInfoRecord();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v11 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  v14 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v41 - v16);
  sub_100012D04(a1, &v41 - v16, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = a2;
    v19 = *v17;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAA0);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45 = v19;
      v46 = v24;
      *v23 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v25 = String.init<A>(describing:)();
      v27 = sub_10021145C(v25, v26, &v46);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to fetch benefactor. Cannot remove benefactor. %s", v23, 0xCu);
      sub_10000839C(v24);
    }

    swift_errorRetain();
    v18(v19);
  }

  else
  {
    sub_100209F8C(v17, v13, type metadata accessor for BenefactorInfoRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAA0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Successfully fetched BenefactorRecord. Declining....", v32, 2u);
    }

    v33 = sub_1000080F8(&a4[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&a4[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24]);
    sub_100209F24(v13, v11, type metadata accessor for BenefactorInfoRecord);
    v34 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v35 = (v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    *(v36 + 16) = a2;
    *(v36 + 24) = v44;
    sub_100209F8C(v11, v36 + v34, type metadata accessor for BenefactorInfoRecord);
    *(v36 + v35) = a4;
    v37 = v43;
    *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v43;
    v38 = *v33;

    v39 = a4;
    v40 = v37;
    sub_100208014(v13, sub_10020E154, v36);

    return sub_100209FF4(v13, type metadata accessor for BenefactorInfoRecord);
  }
}

void sub_1001FE578(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = type metadata accessor for BenefactorInfoRecord();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAA0);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Aborting deletion flow. Failed to decline fetched record. Error: %@.", v20, 0xCu);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v37 = 2113;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v23 = v38;
    a3(v38);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAA0);
    sub_100209F24(a5, v16, type metadata accessor for BenefactorInfoRecord);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = a4;
      v29 = v28;
      v38 = v28;
      *v27 = 136315138;
      v30 = sub_1001E2E64();
      v35 = a5;
      v31 = a3;
      v33 = v32;
      sub_100209FF4(v16, type metadata accessor for BenefactorInfoRecord);
      v34 = sub_10021145C(v30, v33, &v38);
      a3 = v31;
      a5 = v35;

      *(v27 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully declined benefactor record: %s", v27, 0xCu);
      sub_10000839C(v29);
      a4 = v36;
    }

    else
    {

      sub_100209FF4(v16, type metadata accessor for BenefactorInfoRecord);
    }

    sub_1001FE980(a7, a5, a3, a4);
  }
}

uint64_t sub_1001FE980(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for InheritanceInvitationResponseMessage();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  v17 = sub_1000080F8(&v4[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_setupMessenger], *&v4[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_setupMessenger + 24]);
  v18 = (a2 + *(type metadata accessor for BenefactorInfoRecord() + 20));
  v19 = *v18;
  v44 = v18[1];
  v45 = v19;
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = a1;
  v20[4] = a3;
  v20[5] = a4;
  v21 = *v17;
  v22 = *(v10 + 28);
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 16))(&v16[v22], a2, v23);
  *v16 = 0;
  v16[*(v10 + 32)] = 0;
  v24 = qword_1003D7F40;
  v25 = v4;
  v26 = a1;

  if (v24 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100008D04(v27, qword_1003FAAA0);
  sub_100209F24(v16, v14, type metadata accessor for InheritanceInvitationResponseMessage);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v46 = v31;
    *v30 = 136315138;
    v32 = sub_1001DB654();
    v33 = v21;
    v35 = v34;
    sub_100209FF4(v14, type metadata accessor for InheritanceInvitationResponseMessage);
    v36 = sub_10021145C(v32, v35, &v46);
    v21 = v33;

    *(v30 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v28, v29, "Created invitation response message - %s.\nResponding to invitation...", v30, 0xCu);
    sub_10000839C(v31);
  }

  else
  {

    sub_100209FF4(v14, type metadata accessor for InheritanceInvitationResponseMessage);
  }

  v37 = sub_1000080F8((v21 + 16), *(v21 + 40));
  if (_swiftEmptyArrayStorage >> 62)
  {
    v41 = v37;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_10013446C(_swiftEmptyArrayStorage);
      v38 = v42;
    }

    else
    {
      v38 = &_swiftEmptySetSingleton;
    }

    v37 = v41;
  }

  else
  {
    v38 = &_swiftEmptySetSingleton;
  }

  v39 = *v37;

  sub_1002B4B0C(v16, v45, v44, 0, 0, v38, v39, sub_10020E284, v20);

  return sub_100209FF4(v16, type metadata accessor for InheritanceInvitationResponseMessage);
}

uint64_t sub_1001FEDDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAA0);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v11 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v12 = String.init<A>(describing:)();
      v14 = a5;
      v15 = sub_10021145C(v12, v13, &v18);

      *(v11 + 4) = v15;
      a5 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error declining invitation: %s", v11, 0xCu);
      sub_10000839C(v17);
    }

    else
    {
    }
  }

  return sub_1001FA940(a3, a4, a5);
}

void sub_1001FEFD8(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

uint64_t sub_1001FF070(uint64_t a1, char a2, uint64_t (*a3)(void, uint64_t))
{
  v6 = type metadata accessor for BeneficiaryInfoRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAA0);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = _convertErrorToNSError(_:)();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error fetching beneficiaries from storage: %@", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
    }

    return a3(0, a1);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = _swiftEmptyArrayStorage;
    if (v21)
    {
      v26 = a3;
      v27 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      sub_100016034(0, &qword_1003E0C40, AABeneficiaryInfo_ptr);
      v23 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v24 = *(v7 + 72);
      do
      {
        sub_100209F24(v23, v13, type metadata accessor for BeneficiaryInfoRecord);
        sub_100209F24(v13, v11, type metadata accessor for BeneficiaryInfoRecord);
        sub_1001E36E8(v11);
        sub_100209FF4(v13, type metadata accessor for BeneficiaryInfoRecord);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v25 = v27[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v23 += v24;
        --v21;
      }

      while (v21);
      a3 = v26;
      v22 = v27;
    }

    a3(v22, 0);
  }
}

uint64_t sub_1001FF460(uint64_t a1, char a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4)
{
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAAA0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = _convertErrorToNSError(_:)();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error fetching beneficiaries from storage: %@", v10, 0xCu);
      sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);
    }

    v13 = 0;
    v14 = a1;
    return a3(v13, v14);
  }

  if (!*(a1 + 16))
  {
    v13 = _swiftEmptyArrayStorage;
    v14 = 0;
    return a3(v13, v14);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a3;
    v17[4] = a4;
    sub_1000BCBF4(a1, 0);

    sub_100205D04(sub_100209F00, v17);
  }

  return result;
}

uint64_t sub_1001FF8B4(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAAA0);
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26[1] = v3;
    v14 = v13;
    v30 = swift_slowAlloc();
    *v14 = 136315394;
    v29 = type metadata accessor for InheritanceRequestManager();
    sub_100005814(&unk_1003E30E0, qword_1003468E0);
    v15 = String.init<A>(describing:)();
    v17 = sub_10021145C(v15, v16, &v30);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = [a1 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10020E6A0(&qword_1003D9150, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v6 + 8))(v9, v5);
    v22 = sub_10021145C(v19, v21, &v30);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s - Sending invitation to beneficiaryID - %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v27;
  v24[3] = v28;
  v24[4] = v23;

  sub_100200440(a1, sub_100209B98, v24);
}

uint64_t sub_1001FFC14(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v49 = a2;
  v50 = a3;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  __chkstk_darwin(v4);
  v7 = &v46 - v6;
  v8 = type metadata accessor for InheritanceInvitationRecord();
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v46 - v15);
  sub_100012D04(a1, &v46 - v15, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    swift_errorRetain();
    v49(v17);
  }

  v20 = v49;
  v19 = v50;
  sub_100209F8C(v16, v12, type metadata accessor for InheritanceInvitationRecord);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v22 = v48;
  v23 = Strong;
  (*(v48 + 16))(v7, Strong + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__accountStore, v4);
  Dependency.wrappedValue.getter();

  (*(v22 + 8))(v7, v4);
  v24 = [*(*sub_1000080F8(v52 v53) + 16)];
  if (!v24 || (v25 = v24, v26 = [v24 aa_altDSID], v25, !v26))
  {
    sub_10000839C(v52);
LABEL_9:
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100008D04(v41, qword_1003FAAA0);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "No altDSID for owner found.", v44, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v51 = 5;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v45 = v52[0];
    v20(v52[0]);

    return sub_100209FF4(v12, type metadata accessor for InheritanceInvitationRecord);
  }

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  sub_10000839C(v52);
  swift_beginAccess();
  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v48 = v27;
    v31 = v30;
    sub_100040738(v30 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_setupMessenger, v52);

    v32 = sub_1000080F8(v52, v53);
    v33 = v47;
    sub_100209F24(v12, v47, type metadata accessor for InheritanceInvitationRecord);
    v34 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v35 = v9 + v34 + 7;
    v36 = v12;
    v37 = v35 & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    sub_100209F8C(v33, v38 + v34, type metadata accessor for InheritanceInvitationRecord);
    v39 = (v38 + v37);
    *v39 = v20;
    v39[1] = v19;
    v40 = *v32;

    sub_1001E0068(v36, v48, v29, sub_100209DE0, v38);

    sub_100209FF4(v36, type metadata accessor for InheritanceInvitationRecord);
    return sub_10000839C(v52);
  }

  return sub_100209FF4(v12, type metadata accessor for InheritanceInvitationRecord);
}

uint64_t sub_1002001D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = (a2 + *(type metadata accessor for InheritanceInvitationRecord() + 20));
    v6 = *v5;
    v7 = v5[1];
    swift_errorRetain();
    v8._countAndFlagsBits = v6;
    v8._object = v7;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 58;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);

    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = v11;
    v21[0] = 0xD000000000000020;
    v21[1] = 0x8000000100331230;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAA0);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21[0] = v18;
      *v17 = 136315138;
      v19 = sub_10021145C(0xD000000000000020, 0x8000000100331230, v21);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s", v17, 0xCu);
      sub_10000839C(v18);
    }

    else
    {
    }
  }

  return a3(a1);
}

uint64_t sub_100200440(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAAA0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Fetching for existing invitation..", v16, 2u);
  }

  v17 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24));
  v18 = [a1 beneficiaryID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = a3;
  v21 = *v17;

  swift_unknownObjectRetain();

  sub_100214780(v12, sub_100209BEC, v20);

  (*(v9 + 8))(v12, v8);
}

uint64_t sub_100200748(uint64_t a1, char a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  v58 = type metadata accessor for PersonNameComponents();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v58);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for InheritanceInvitationRecord();
  v12 = *(v60 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v60);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v59 = v52 - v17;
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAA0);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = _convertErrorToNSError(_:)();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error fetching invitations from storage: %@", v21, 0xCu);
      sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);
    }

    return a3(0, a1);
  }

  else
  {
    v57 = v11;
    v25 = *(a1 + 16);
    v26 = _swiftEmptyArrayStorage;
    if (v25)
    {
      v52[1] = a4;
      v53 = a3;
      v64 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v27 = objc_opt_self();
      v28 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v55 = *(v12 + 72);
      v56 = v27;
      v54 = (v8 + 8);
      v29 = v59;
      v30 = v60;
      do
      {
        sub_100209F24(v28, v29, type metadata accessor for InheritanceInvitationRecord);
        sub_100209F24(v29, v16, type metadata accessor for InheritanceInvitationRecord);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v36 = &v16[v30[5]];
        v37 = *v36;
        v38 = *(v36 + 1);
        v62 = String._bridgeToObjectiveC()();
        v39 = &v16[v30[6]];
        v40 = *v39;
        if (*(v39 + 1))
        {
          v41 = *v39;
          v42 = *(v39 + 1);
          v43 = String._bridgeToObjectiveC()();
        }

        else
        {
          v43 = 0;
        }

        v61 = v43;
        v44 = &v16[v30[7]];
        v45 = *v44;
        if (*(v44 + 1))
        {
          v46 = *v44;
          v47 = *(v44 + 1);
          v48 = String._bridgeToObjectiveC()();
        }

        else
        {
          v48 = 0;
        }

        v49 = v57;
        PersonNameComponents.init()();

        PersonNameComponents.givenName.setter();

        PersonNameComponents.familyName.setter();
        v50 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v51 = [v56 localizedStringFromPersonNameComponents:v50 style:0 options:0];

        if (!v51)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = String._bridgeToObjectiveC()();
        }

        v31 = objc_allocWithZone(AAInheritanceInvitation);
        (*v54)(v49, v58);
        v30 = v60;
        v32 = v61;
        v34 = v62;
        v33 = isa;
        [v31 initWithBeneficiaryID:isa beneficiaryHandle:v62 beneficiaryFirstName:v61 beneficiaryLastName:v48 beneficiaryDisplayName:v51 status:*&v16[*(v60 + 32)]];

        v29 = v59;
        sub_100209FF4(v59, type metadata accessor for InheritanceInvitationRecord);
        sub_100209FF4(v16, type metadata accessor for InheritanceInvitationRecord);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v35 = v64[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v28 += v55;
        --v25;
      }

      while (v25);
      v26 = v64;
      a3 = v53;
    }

    a3(v26, 0);
  }
}

uint64_t sub_100200D58(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v63 = a3;
  v64 = a2;
  v61 = type metadata accessor for PersonNameComponents();
  v5 = *(v61 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v61);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InheritanceInvitationRecord();
  v10 = *(*(v9 - 1) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v57 - v14;
  v16 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v57 - v18);
  sub_100012D04(a1, &v57 - v18, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAA0);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = _convertErrorToNSError(_:)();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error fetching invitation from storage: %@", v24, 0xCu);
      sub_100008D3C(v25, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v64(0, v20);
  }

  else
  {
    sub_100209F8C(v19, v15, type metadata accessor for InheritanceInvitationRecord);
    v60 = v15;
    sub_100209F24(v15, v13, type metadata accessor for InheritanceInvitationRecord);
    v28.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v29 = &v13[v9[5]];
    v30 = *v29;
    v31 = *(v29 + 1);
    v59 = String._bridgeToObjectiveC()();
    v32 = &v13[v9[6]];
    v33 = *v32;
    if (*(v32 + 1))
    {
      v34 = *v32;
      v35 = *(v32 + 1);
      v58 = String._bridgeToObjectiveC()();
    }

    else
    {
      v58 = 0;
    }

    v36 = &v13[v9[7]];
    v37 = *v36;
    if (*(v36 + 1))
    {
      v38 = *v36;
      v39 = *(v36 + 1);
      v40 = String._bridgeToObjectiveC()();
    }

    else
    {
      v40 = 0;
    }

    PersonNameComponents.init()();

    PersonNameComponents.givenName.setter();

    PersonNameComponents.familyName.setter();
    v41 = objc_opt_self();
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v43 = [v41 localizedStringFromPersonNameComponents:isa style:0 options:0];

    if (!v43)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = String._bridgeToObjectiveC()();
    }

    v44 = objc_allocWithZone(AAInheritanceInvitation);
    (*(v5 + 8))(v8, v61);
    v45 = v44;
    v47 = v58;
    v46 = v59;
    v48 = [v45 initWithBeneficiaryID:v28.super.isa beneficiaryHandle:v59 beneficiaryFirstName:v58 beneficiaryLastName:v40 beneficiaryDisplayName:v43 status:*&v13[v9[8]]];
    v49 = v28.super.isa;
    v50 = v48;

    sub_100209FF4(v13, type metadata accessor for InheritanceInvitationRecord);
    v51 = v60;
    if (static UUID.== infix(_:_:)())
    {
      v52 = v50;
      v64(v50, 0);
    }

    else
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_100008D04(v53, qword_1003FAAA0);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Fetched invitation did not match record.", v56, 2u);
      }

      type metadata accessor for InheritanceError(0);
      v65 = 2;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v52 = v66;
      v64(0, v66);
    }

    return sub_100209FF4(v51, type metadata accessor for InheritanceInvitationRecord);
  }
}

void sub_1002015D4(uint64_t a1, char a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for InheritanceInvitationRecord();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAA0);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = _convertErrorToNSError(_:)();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error removing invitation from storage: %@", v27, 0xCu);
      sub_100008D3C(v28, &unk_1003D9140, &qword_10033E640);
    }

    if (a4)
    {
      a4(a1);
    }
  }

  else
  {
    v41 = &v41 - v23;
    v42 = a6;
    v43 = a5;
    v44 = a4;
    v30 = *(a1 + 16);
    if (v30)
    {
      v31 = (v13 + 8);
      v32 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v33 = *(v22 + 72);
      while (1)
      {
        sub_100209F24(v32, v21, type metadata accessor for InheritanceInvitationRecord);
        v34 = [a3 beneficiaryID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v34) = static UUID.== infix(_:_:)();
        (*v31)(v16, v12);
        if (v34)
        {
          break;
        }

        sub_100209FF4(v21, type metadata accessor for InheritanceInvitationRecord);
        v32 += v33;
        if (!--v30)
        {
          goto LABEL_12;
        }
      }

      v35 = v41;
      sub_100209F8C(v21, v41, type metadata accessor for InheritanceInvitationRecord);
      v36 = sub_1000080F8((v42 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController), *(v42 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24));
      v37 = swift_allocObject();
      v39 = v43;
      v38 = v44;
      *(v37 + 16) = v44;
      *(v37 + 24) = v39;
      v40 = *v36;
      sub_100083AA0(v38);
      sub_100215918(v35, sub_1002099B8, v37);

      sub_100209FF4(v35, type metadata accessor for InheritanceInvitationRecord);
    }

    else
    {
LABEL_12:
      if (v44)
      {
        v44(0);
      }
    }
  }
}

uint64_t sub_100201B38(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v33 = a3;
  v36 = a2;
  v37 = a1;
  v35 = type metadata accessor for UUID();
  v34 = *(v35 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v35);
  v7 = v4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_invitationResponder;
  v8 = objc_allocWithZone(type metadata accessor for InheritanceInvitationActionAnalyticsEvent());
  sub_100005814(&qword_1003E30D0, &unk_100340690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033E5C0;
  strcpy((inited + 32), "isFamilyInvite");
  *(inited + 47) = -18;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x8000000100330290;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  sub_1003093D0(inited);
  swift_setDeallocating();
  sub_100005814(&unk_1003E8C10, &unk_100344990);
  swift_arrayDestroy();
  v10 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v36;
  v12 = v33;
  *(v11 + 24) = v10;
  *(v11 + 32) = v12;
  *(v11 + 40) = a4;
  v32 = sub_1000080F8((v7 + 40), *(v7 + 64));
  sub_10016FFDC(v7, v38);
  v13 = v34;
  v14 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v35;
  (*(v34 + 16))(v14, v37, v35);
  v16 = (*(v13 + 80) + 136) & ~*(v13 + 80);
  v17 = (v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 39) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v38[5];
  *(v19 + 80) = v38[4];
  *(v19 + 96) = v20;
  *(v19 + 112) = v38[6];
  *(v19 + 128) = v39;
  v21 = v38[1];
  *(v19 + 16) = v38[0];
  *(v19 + 32) = v21;
  v22 = v38[3];
  *(v19 + 48) = v38[2];
  *(v19 + 64) = v22;
  (*(v13 + 32))(v19 + v16, v14, v15);
  *(v19 + v17) = v10;
  v23 = v19 + v30;
  v24 = v31;
  *v23 = v12;
  *(v23 + 8) = v24;
  *(v23 + 16) = v36;
  v25 = (v19 + v18);
  *v25 = sub_10016FFCC;
  v25[1] = v11;
  v26 = *v32;
  v27 = v10;
  sub_100083AA0(v12);
  v28 = v27;
  sub_100083AA0(v12);

  sub_10021B0E8(v37, sub_100170158, v19);
}

uint64_t sub_100202054(uint64_t a1, char a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  v8 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v34 - v10;
  v12 = type metadata accessor for InheritanceHealthRecord();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAA0);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = _convertErrorToNSError(_:)();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error fetching health records from storage: %@", v20, 0xCu);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);
    }

    return a3(0, a1);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = _swiftEmptyArrayStorage;
    if (v24)
    {
      v34[1] = a4;
      v35 = a3;
      v36 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v26 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v27 = *(v13 + 72);
      do
      {
        sub_100209F24(v26, v16, type metadata accessor for InheritanceHealthRecord);
        v29 = *(v12 + 20);
        v30 = type metadata accessor for Date();
        v31 = *(v30 - 8);
        (*(v31 + 16))(v11, &v16[v29], v30);
        (*(v31 + 56))(v11, 0, 1, v30);
        v32.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        isa = 0;
        if ((*(v31 + 48))(v11, 1, v30) != 1)
        {
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v31 + 8))(v11, v30);
        }

        [objc_allocWithZone(AATrustedContactHealthInfo) initWithID:v32.super.isa lastValidCheckTimeStamp:isa];

        sub_100209FF4(v16, type metadata accessor for InheritanceHealthRecord);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v28 = v36[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v26 += v27;
        --v24;
      }

      while (v24);
      a3 = v35;
      v25 = v36;
    }

    a3(v25, 0);
  }
}

uint64_t sub_10020255C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAAA0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    type metadata accessor for InheritanceRequestManager();
    sub_100005814(&unk_1003E30E0, qword_1003468E0);
    v13 = String.init<A>(describing:)();
    v15 = sub_10021145C(v13, v14, &v21);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s - Displaying Inheritance Invitation UI using Springboard.", v11, 0xCu);
    sub_10000839C(v12);
  }

  v16 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24));
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v17;
  v19 = *v16;

  sub_10021B0E8(a1, sub_100209724, v18);
}

void sub_100202780(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for BenefactorInfoRecord();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&aBlock[-1] - v12);
  sub_100012D04(a1, &aBlock[-1] - v12, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAAA0);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136315138;
      aBlock[6] = v14;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v20 = String.init<A>(describing:)();
      v22 = sub_10021145C(v20, v21, aBlock);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error fetching benefactor record: %s", v18, 0xCu);
      sub_10000839C(v19);
    }

    swift_errorRetain();
    a2(v14);
  }

  else
  {
    sub_100209F8C(v13, v9, type metadata accessor for BenefactorInfoRecord);
    v23 = *(v6 + 20);
    v24 = *&v9[*(v6 + 24)];
    v25 = *&v9[v23];
    v26 = *&v9[v23 + 8];
    v27 = objc_allocWithZone(AACustodianshipInfo);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v29 = String._bridgeToObjectiveC()();
    v30 = [v27 initWithID:isa status:v24 ownerHandle:v29];

    v31 = [objc_allocWithZone(AAOBInheritanceInvitationModel) initWithBenefactorInfo:v30];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = *(Strong + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_flowPresenter);
      v34 = Strong;
      v35 = swift_allocObject();
      *(v35 + 16) = a2;
      *(v35 + 24) = a3;
      aBlock[4] = sub_100209730;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020E828;
      aBlock[3] = &unk_1003AF068;
      v36 = _Block_copy(aBlock);

      [v33 presentModel:v31 completion:v36];
      _Block_release(v36);

      sub_100209FF4(v9, type metadata accessor for BenefactorInfoRecord);
    }

    else
    {

      sub_100209FF4(v9, type metadata accessor for BenefactorInfoRecord);
    }
  }
}

uint64_t sub_100202D1C(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAAA0);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = _convertErrorToNSError(_:)();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error occurred displaying Inheritance Invitation UI: %@", v7, 0xCu);
      sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    a2(a1);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAA0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Successfully displayed inheritance invite UI", v14, 2u);
    }

    return (a2)(0);
  }
}

void sub_100202F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = a5;
  v38 = a7;
  v39 = a4;
  v15 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = *(v16 + 16);
  v40 = v12;
  v20(&v37 - v18, v12 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__accountStore, v15);
  Dependency.wrappedValue.getter();
  (*(v16 + 8))(v19, v15);
  v21 = sub_1000080F8(aBlock, v42);
  v22 = [*(*v21 + 16) aa_primaryAppleAccount];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 aa_altDSID];

    if (v24)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  sub_10000839C(aBlock);
  v25 = objc_allocWithZone(AKInheritanceCLIContext);
  v26 = String._bridgeToObjectiveC()();

  v27 = [v25 initWithOwnerAltDSID:v26];

  v28 = String._bridgeToObjectiveC()();
  [v27 setAccessKeyString:v28];

  v29 = String._bridgeToObjectiveC()();
  [v27 setBeneficiaryPassword:v29];

  if (a6)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  [v27 setBeneficiaryFirstName:v30];

  if (a8)
  {
    v31 = String._bridgeToObjectiveC()();
  }

  else
  {
    v31 = 0;
  }

  [v27 setBeneficiaryLastName:v31];

  v32 = v27;
  v33 = String._bridgeToObjectiveC()();
  [v32 setBeneficiarySetupToken:v33];

  v34 = *(v40 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_controller);
  v35 = swift_allocObject();
  *(v35 + 16) = a11;
  *(v35 + 24) = a12;
  v43 = sub_1002096CC;
  v44 = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E7C0;
  v42 = &unk_1003AEFA0;
  v36 = _Block_copy(aBlock);

  [v34 _setupBeneficiaryAliasWithInheritanceContext:v32 completion:v36];
  _Block_release(v36);
}

void sub_100203330(void *a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAAA0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error occurred while creating beneficiary alias", v8, 2u);
    }

    swift_errorRetain();
    a3(0, 0, 0, 0, a2);

    return;
  }

  if (a1)
  {
    v10 = [a1 beneficiaryAltDSID];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = [a1 beneficiaryAccountName];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_100008D04(v20, qword_1003FAAA0);

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v23 = 136315394;
          *(v23 + 4) = sub_10021145C(v12, v14, &v28);
          *(v23 + 12) = 2080;
          *(v23 + 14) = sub_10021145C(v17, v19, &v28);
          _os_log_impl(&_mh_execute_header, v21, v22, "Beneficiary Alias setup successfully:\nbeneficiaryAltDSID - %s\nbeneficiaryAccountName - %s", v23, 0x16u);
          swift_arrayDestroy();
        }

        a3(v12, v14, v17, v19, 0);

        return;
      }
    }
  }

  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100008D04(v24, qword_1003FAAA0);
  oslog = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v25, "Setup Beneficiary Alias returned with empty result", v26, 2u);
  }
}

__n128 sub_1002038F0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10020391C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100203964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1002039D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a4)
  {
LABEL_3:
    v8 = String._bridgeToObjectiveC()();
  }

LABEL_4:
  if (a5)
  {
    v10 = _convertErrorToNSError(_:)();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a6 + 16))(a6, v9, v8);
}

void sub_100203A90(void *a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v49 = a6;
  v50 = a3;
  v51 = a4;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v47 = a9;
    v19 = qword_1003D7F40;
    v20 = a1;
    if (v19 != -1)
    {
      swift_once();
    }

    v48 = a10;
    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAA0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v46 = a5;
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Successfully created accessKey. Setting up beneficiary with IdMS...", v24, 2u);
      a5 = v46;
    }

    [a5 setAccessKey:v20];
    v25 = v20;
    v26 = v49;
    v27 = [v49 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    (*(v15 + 8))(v18, v14);
    v28 = String._bridgeToObjectiveC()();

    [a5 setBeneficiaryIdentifier:v28];

    [a5 setManifest:a7];
    v29 = String._bridgeToObjectiveC()();
    [a5 setBeneficiarySetupToken:v29];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = *(Strong + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_controller);
      v32 = Strong;
      swift_unknownObjectRetain();

      v33 = swift_allocObject();
      v33[2] = v26;
      v33[3] = v25;
      v34 = v51;
      v33[4] = v50;
      v33[5] = v34;
      aBlock[4] = sub_10020E54C;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020E828;
      aBlock[3] = &unk_1003AF8D8;
      v35 = _Block_copy(aBlock);
      v36 = v25;
      swift_unknownObjectRetain();

      [v31 setupBeneficiaryWithInheritanceContext:a5 completion:v35];
      swift_unknownObjectRelease();

      _Block_release(v35);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100008D04(v37, qword_1003FAAA0);
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v40 = 136315138;
      aBlock[6] = a2;
      swift_errorRetain();
      sub_100005814(&unk_1003E1090, &qword_100344600);
      v42 = String.init<A>(describing:)();
      v44 = sub_10021145C(v42, v43, aBlock);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "Error generating access key: %s", v40, 0xCu);
      sub_10000839C(v41);
    }

    v50(0, a2);
  }
}