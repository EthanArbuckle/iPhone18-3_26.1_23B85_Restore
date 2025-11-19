uint64_t sub_10007A6AC(void *a1)
{
  v3 = v1;
  v5 = sub_1000443DC(&qword_1006CAD28);
  v6 = sub_10004EAE0(v5);
  v41 = v7;
  v42 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  v12 = v11 - v10;
  v13 = objc_opt_self();
  v14 = type metadata accessor for AssessmentPayload();
  v15 = v1 + *(v14 + 56);
  ODIBindingsDict.contents.getter();
  sub_1000443DC(&qword_1006CAD30);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v43 = 0;
  v17 = [v13 dataWithJSONObject:isa options:0 error:&v43];

  v18 = v43;
  if (v17)
  {
    v40 = v14;
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = a1[4];
    sub_100044728(a1, a1[3]);
    sub_10007ACF4();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v23 = *v3;
    v24 = v3[1];
    LOBYTE(v43) = 0;
    sub_10007B398();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      (*(v41 + 8))(v12, v42);
      v25 = v19;
    }

    else
    {
      v28 = v19;
      v29 = v40[5];
      LOBYTE(v43) = 1;
      type metadata accessor for Date();
      sub_10007B3A4();
      sub_10007AFBC(v30, v31);
      sub_10007B398();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_10007B3C8(v40[6]);
      LOBYTE(v43) = 2;
      sub_10007B398();
      KeyedEncodingContainer.encode(_:forKey:)();
      sub_10007B3C8(v40[7]);
      sub_10007B32C(3);
      sub_10007B3C8(v40[8]);
      sub_10007B32C(4);
      sub_10007B3C8(v40[9]);
      sub_10007B32C(5);
      sub_10007B3C8(v40[10]);
      sub_10007B32C(6);
      sub_10007B3C8(v40[11]);
      sub_10007B32C(7);
      sub_10007B3C8(v40[12]);
      sub_10007B32C(8);
      v32 = *(v3 + v40[13]);
      LOBYTE(v43) = 9;
      sub_10007B398();
      KeyedEncodingContainer.encode(_:forKey:)();
      v43 = v19;
      v44 = v21;
      sub_10007AD48();
      sub_10007B400();
      sub_10007B398();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v43 = *(v3 + v40[15]);

      sub_1000443DC(&qword_1006CA018);
      sub_10007ADF0(&qword_1006CA030, &qword_1006CA018);
      sub_10007B400();
      sub_10007B398();
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      v33 = *(v3 + v40[16]);
      LOBYTE(v43) = 12;
      sub_10007B398();
      KeyedEncodingContainer.encode(_:forKey:)();
      sub_10007B3C8(v40[17]);
      sub_10007B32C(13);
      sub_10007B3C8(v40[18]);
      sub_10007B32C(14);
      v34 = *(v3 + v40[19]);
      LOBYTE(v43) = 15;
      sub_10007B398();
      KeyedEncodingContainer.encode(_:forKey:)();
      v35 = v3 + v40[20];
      v36 = *(v35 + 1);
      v43 = *v35;
      v44 = v36;

      sub_1000443DC(&qword_1006CAD48);
      sub_10007ADF0(&qword_1006CAD50, &qword_1006CAD48);
      sub_10007B400();
      sub_10007B398();
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      v37 = (v3 + v40[21]);
      v38 = v37[4];
      sub_100044728(v37, v37[3]);
      LOBYTE(v43) = 17;
      v39 = *(v38 + 16);
      sub_10007B398();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v41 + 8))(v12, v42);
      v25 = v28;
    }

    return sub_1000448B0(v25, v21);
  }

  else
  {
    v26 = v18;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

unint64_t sub_10007ACF4()
{
  result = qword_1006CAD38;
  if (!qword_1006CAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CAD38);
  }

  return result;
}

unint64_t sub_10007AD48()
{
  result = qword_1006CAD40;
  if (!qword_1006CAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CAD40);
  }

  return result;
}

unint64_t sub_10007AD9C()
{
  result = qword_1006CAD70;
  if (!qword_1006CAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CAD70);
  }

  return result;
}

uint64_t sub_10007ADF0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000471A4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007AE50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CAD60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007AEB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssessmentPayload();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007AF1C(uint64_t a1)
{
  v2 = type metadata accessor for AssessmentPayload();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10007AF78()
{
  result = qword_1006CA338;
  if (!qword_1006CA338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006CA338);
  }

  return result;
}

uint64_t sub_10007AFBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AssessmentPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssessmentPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
        JUMPOUT(0x10007B158);
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10007B194()
{
  result = qword_1006CADB8;
  if (!qword_1006CADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CADB8);
  }

  return result;
}

unint64_t sub_10007B1EC()
{
  result = qword_1006CADC0;
  if (!qword_1006CADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CADC0);
  }

  return result;
}

unint64_t sub_10007B244()
{
  result = qword_1006CADC8;
  if (!qword_1006CADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CADC8);
  }

  return result;
}

uint64_t sub_10007B2FC@<X0>(char a1@<W8>)
{
  *(v1 - 168) = a1;
  result = v1 - 168;
  v3 = *(v1 - 216);
  return result;
}

uint64_t sub_10007B32C@<X0>(char a1@<W8>)
{
  *(v1 - 104) = a1;
  v3 = *(v1 - 120);

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_10007B350()
{
  *(v3 - 216) = v1;
  v4 = *(v2 + 8);
  return v0;
}

uint64_t sub_10007B3C8@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

void sub_10007B3E8(uint64_t a1@<X8>)
{
  v4 = (v1 + a1);
  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_10007B3F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t sub_10007B400()
{
  result = v0 - 104;
  v2 = *(v0 - 120);
  return result;
}

uint64_t sub_10007B410@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_10007B428()
{
  v2 = *(v1 - 120);
  v3 = *(*(v1 - 128) + 8);
  return v0;
}

void sub_10007B438()
{
}

uint64_t sub_10007B450()
{

  return sub_1000448B0(v0, v1);
}

uint64_t sub_10007B4A8()
{
  v1 = *(v0 + 48);
  v2 = v1[5];
  v3 = v1[6];
  sub_100044728(v1 + 2, v2);
  v4 = async function pointer to dispatch thunk of ODIAccountManagerProtocol.primaryAppleAccount()[1];
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  sub_100077560(v5);

  return dispatch thunk of ODIAccountManagerProtocol.primaryAppleAccount()(v2, v3);
}

uint64_t sub_10007B55C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  *(v2 + 64) = v6;
  *(v2 + 72) = v0;

  if (v0)
  {
    v7 = sub_10007B7C4;
  }

  else
  {
    v7 = sub_10007B660;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10007B660()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  if (v1)
  {
    sub_100058D4C(*(v0 + 64), &selRef_aa_personID);
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = sub_100077680(v6);
    if (v4)
    {
      if (v7)
      {
        *sub_1000541D8() = 0;
        sub_10007CB34(&_mh_execute_header, v8, v9, "returning iCloud dsid");
        sub_1000488AC();
      }
    }

    else if (v7)
    {
      v13 = sub_1000541D8();
      sub_100077908(v13);
      sub_10007CAF0(&_mh_execute_header, v14, v6, "unable to get person ID");
      sub_100053E64();
    }
  }

  else
  {
    v5 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (sub_100077680(v10))
    {
      v11 = sub_1000541D8();
      sub_100077908(v11);
      sub_10007CAF0(&_mh_execute_header, v12, v10, "user is not logged into iTunes");
      sub_100053E64();
    }
  }

  v15 = sub_10007CB20();

  return v16(v15);
}

uint64_t sub_10007B7C4()
{
  v1 = v0[9];
  v2 = v0[6];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = v0[2];
    v7 = v0[3];
    v9 = v0[4];
    Error.localizedDescription.getter();
    v10 = sub_100052F7C();

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error getting DSID %s", v6, 0xCu);
    sub_100044850(v14);
    sub_1000488AC();
    sub_1000488AC();
  }

  else
  {
    v11 = v0[9];
  }

  v12 = v0[1];

  return v12(0, 0);
}

uint64_t sub_10007B95C()
{
  v1 = v0[2];
  v2 = v1[5];
  v3 = v1[6];
  sub_100044728(v1 + 2, v2);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v0[3] = v5;
  v7 = async function pointer to dispatch thunk of ODIAccountManagerProtocol.getAccount(with:)[1];
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  sub_100077560(v8);

  return dispatch thunk of ODIAccountManagerProtocol.getAccount(with:)(v4, v6, v2, v3);
}

uint64_t sub_10007BA3C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 24);
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;
  *(v9 + 40) = v8;

  v10 = sub_100065864();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10007BB3C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  if (v1)
  {
    sub_100058D4C(*(v0 + 40), &selRef_normalizedDSID);
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = sub_100077680(v6);
    if (v4)
    {
      if (v7)
      {
        *sub_1000541D8() = 0;
        sub_10007CB34(&_mh_execute_header, v8, v9, "returning iTunes dsid");
        sub_1000488AC();
      }
    }

    else if (v7)
    {
      v13 = sub_1000541D8();
      sub_100077908(v13);
      sub_10007CAF0(&_mh_execute_header, v14, v6, "unable to get person ID");
      sub_100053E64();
    }
  }

  else
  {
    v5 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (sub_100077680(v10))
    {
      v11 = sub_1000541D8();
      sub_100077908(v11);
      sub_10007CAF0(&_mh_execute_header, v12, v10, "user is not logged into iTunes");
      sub_100053E64();
    }
  }

  v15 = sub_10007CB20();

  return v16(v15);
}

uint64_t sub_10007BCA0()
{
  sub_1000657D4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_100077560(v1);

  return sub_10007B494();
}

uint64_t sub_10007BD24()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_1000655F4();
  *v6 = v5;
  *(v8 + 24) = v7;

  v9 = sub_100065864();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10007BE04()
{
  sub_1000657D4();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  v3 = *(v0 + 8);

  return v3(v1 != 0);
}

uint64_t sub_10007BE70()
{
  sub_1000657D4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_100077560(v1);

  return sub_10007B948();
}

uint64_t sub_10007BEF4()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_1000655F4();
  *v6 = v5;
  *(v8 + 24) = v7;

  v9 = sub_100065864();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10007BFD4()
{
  v0 = type metadata accessor for Locale();
  v1 = sub_10004EAE0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10004EAF4();
  v8 = v7 - v6;
  v9 = sub_1000443DC(&unk_1006CA940);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_10004EAF4();
  v13 = v12 - v11;
  static Locale.current.getter();
  Locale.region.getter();
  (*(v3 + 8))(v8, v0);
  v14 = type metadata accessor for Locale.Region();
  if (sub_100046EA4(v13, 1, v14) == 1)
  {
    sub_10007C9CC(v13, &unk_1006CA940);
    return 0;
  }

  else
  {
    v15 = Locale.Region.identifier.getter();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  return v15;
}

id *sub_10007C150()
{
  v0 = type metadata accessor for Locale();
  v1 = sub_10004EAE0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10004EAF4();
  v8 = v7 - v6;
  v9 = sub_1000443DC(&unk_1006CA940);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_10004EAF4();
  v13 = v12 - v11;
  v14 = type metadata accessor for Locale.Region();
  v15 = sub_10004EAE0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_10004EAF4();
  v22 = v21 - v20;
  static Locale.current.getter();
  Locale.region.getter();
  (*(v3 + 8))(v8, v0);
  if (sub_100046EA4(v13, 1, v14) == 1)
  {
    sub_10007C9CC(v13, &unk_1006CA940);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v17 + 32))(v22, v13, v14);
    v23 = sub_10007C33C();
    (*(v17 + 8))(v22, v14);
  }

  return v23;
}

uint64_t sub_10007C33C()
{
  v38 = Locale.Region.identifier.getter();
  v2 = v1;
  v3 = *sub_100044728((v0 + 56), *(v0 + 80));
  sub_1000B05E4(v45);
  if (v46 == 1 || (v48[0] = v47, sub_10007C8B4(v48, &v41), result = sub_10007C9CC(v45, &qword_1006CAC08), (v5 = v48[0]) == 0))
  {

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v6 = 0;
    v7 = *(v48[0] + 16);
    v8 = v48[0] + 32;
    v35 = _swiftEmptyArrayStorage;
    v37 = v48[0] + 32;
LABEL_4:
    v9 = (v8 + (v6 << 6));
    while (v7 != v6)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      *(v43 + 9) = *(v9 + 41);
      v42 = v11;
      v43[0] = v12;
      v41 = v10;
      v13 = *&v43[1];
      v40[0] = v38;
      v40[1] = v2;
      __chkstk_darwin(result);
      v34[2] = v40;
      sub_10007C91C(&v41, &v39);
      v14 = sub_100098534(sub_100058E30, v34, v13);
      if (BYTE8(v43[1]) == 2)
      {
        if (v14)
        {
          goto LABEL_12;
        }
      }

      else if ((v14 ^ BYTE8(v43[1])))
      {
LABEL_12:
        v15 = v35;
        result = swift_isUniquelyReferenced_nonNull_native();
        v44 = v15;
        if ((result & 1) == 0)
        {
          result = sub_1000BDFA4(0, v15[2] + 1, 1);
          v15 = v44;
        }

        v17 = v15[2];
        v16 = v15[3];
        if (v17 >= v16 >> 1)
        {
          result = sub_1000BDFA4((v16 > 1), v17 + 1, 1);
          v15 = v44;
        }

        ++v6;
        v15[2] = (v17 + 1);
        v35 = v15;
        v18 = &v15[8 * v17];
        v19 = v41;
        v20 = v42;
        v21 = v43[0];
        *(v18 + 73) = *(v43 + 9);
        *(v18 + 3) = v20;
        *(v18 + 4) = v21;
        *(v18 + 2) = v19;
        v8 = v37;
        goto LABEL_4;
      }

      result = sub_10007C978(&v41);
      v9 += 4;
      ++v6;
    }

    sub_10007C9CC(v48, &qword_1006CAEE0);
    v23 = v35;
    v24 = v35[2];
    if (!v24)
    {

      return _swiftEmptyArrayStorage;
    }

    *&v41 = _swiftEmptyArrayStorage;
    sub_1000BDF84(0, v24, 0);
    v22 = v41;
    v25 = (v23 + 9);
    do
    {
      v26 = *(v25 - 5);
      v27 = *(v25 - 4);
      v28 = *(v25 - 2);
      v37 = *(v25 - 3);
      v38 = v26;
      v29 = *v25;
      v36 = *(v25 - 1);
      *&v41 = v22;
      v30 = *(v22 + 16);
      v31 = *(v22 + 24);

      if (v30 >= v31 >> 1)
      {
        sub_1000BDF84((v31 > 1), v30 + 1, 1);
        v22 = v41;
      }

      v25 += 8;
      *(v22 + 16) = v30 + 1;
      v32 = (v22 + 48 * v30);
      v33 = v37;
      v32[4] = v38;
      v32[5] = v27;
      v32[6] = v33;
      v32[7] = v28;
      v32[8] = v36;
      v32[9] = v29;
      --v24;
    }

    while (v24);
  }

  return v22;
}

BOOL sub_10007C674()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  sub_1000455B0(v1);

  v2 = [v0 standardUserDefaults];
  sub_10004F534();
  v4 = v3;

  return v4 < 10.0;
}

uint64_t sub_10007C708()
{
  sub_100044850((v0 + 16));
  sub_100044850((v0 + 56));
  v1 = OBJC_IVAR____TtC3asd21DeviceContextProvider_logger;
  v2 = type metadata accessor for Logger();
  sub_10007CB0C(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_10007C76C()
{
  sub_10007C708();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DeviceContextProvider()
{
  result = qword_1006CADF8;
  if (!qword_1006CADF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007C818()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10007C8B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CAEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007C9CC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000443DC(a2);
  sub_10007CB0C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

__n128 sub_10007CA1C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10007CA30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10007CA70(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_10007CAF0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void sub_10007CB34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10007CB54()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CAEE8);
  sub_100046E6C(v0, qword_1006CAEE8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10007CBE4()
{
  v0 = type metadata accessor for DistributedNotificationsAsyncSequence();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  DistributedNotificationsAsyncSequence.init()();
  sub_10007D2C4();

  return AsyncCompactMapSequence.init(_:transform:)();
}

uint64_t sub_10007CCB4(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  return _swift_task_switch(sub_10007CCDC, a3, 0);
}

uint64_t sub_10007CCDC()
{
  *(v0 + 40) = sub_10007CD74(*(v0 + 32));

  return _swift_task_switch(sub_10007CD4C, 0, 0);
}

BOOL sub_10007CD74(void *a1)
{
  sub_1000443DC(&qword_1006CA620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005CB870;
  *(inited + 32) = 0xD000000000000023;
  *(inited + 40) = 0x80000001005A4880;
  if (xpc_dictionary_get_string(a1, "XPCEventName"))
  {
    v23[0] = String.init(cString:)();
    v23[1] = v3;
    __chkstk_darwin(v23[0]);
    v22[2] = v23;
    v4 = sub_100098534(sub_100058E30, v22, inited);
    swift_setDeallocating();
    sub_1000CEE7C();

    if (v4)
    {
      v5 = xpc_dictionary_get_dictionary(a1, "UserInfo");
      if (v5)
      {
        if (xpc_dictionary_get_string(v5, "PKPassLibraryUniqueIDUserInfo"))
        {
          v6 = String.init(cString:)();
          v8 = v7;
          v9 = [objc_allocWithZone(PKPassLibrary) init];
          v10 = sub_10007D1C8(v6, v8, v9);

          if (v10)
          {
            v11 = [v10 passType];

            v12 = v11 == 1;
          }

          else
          {
            v12 = 0;
          }

          if (qword_1006C97B8 != -1)
          {
            sub_10007D31C();
          }

          v18 = type metadata accessor for Logger();
          sub_100046E6C(v18, qword_1006CAEE8);
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 67109120;
            *(v21 + 4) = v12;
            _os_log_impl(&_mh_execute_header, v19, v20, "Tomato in notification is Fruit: %{BOOL}d", v21, 8u);
          }

          swift_unknownObjectRelease();
          return v12;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    swift_setDeallocating();
    sub_1000CEE7C();
  }

  if (qword_1006C97B8 != -1)
  {
    sub_10007D31C();
  }

  v13 = type metadata accessor for Logger();
  sub_100046E6C(v13, qword_1006CAEE8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Notification not recognised as calzone event", v16, 2u);
  }

  return 0;
}

uint64_t sub_10007D09C()
{
  v1 = v0;
  swift_defaultActor_initialize();
  if (qword_1006C97B8 != -1)
  {
    sub_10007D31C();
  }

  v2 = type metadata accessor for Logger();
  sub_100046E6C(v2, qword_1006CAEE8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "CalzoneMonitor.init", v5, 2u);
  }

  return v1;
}

uint64_t sub_10007D174()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_10007D1C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 passWithUniqueID:v4];

  return v5;
}

uint64_t sub_10007D218(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10004876C;

  return sub_10007CCB4(a1, a2, v2);
}

unint64_t sub_10007D2C4()
{
  result = qword_1006CAFB0;
  if (!qword_1006CAFB0)
  {
    type metadata accessor for DistributedNotificationsAsyncSequence();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CAFB0);
  }

  return result;
}

uint64_t sub_10007D31C()
{

  return swift_once();
}

uint64_t sub_10007D33C()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  __chkstk_darwin(v0);
  v29 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v28[0] - 8) + 64);
  __chkstk_darwin(v28[0]);
  v28[1] = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for XPCStreamListener();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (v28 - v12);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006C97C8 != -1)
  {
    swift_once();
  }

  v19 = sub_100046E6C(v14, qword_1006CAFB8);
  v20 = *(v15 + 16);
  v20(v18, v19, v14);
  v21 = [objc_allocWithZone(CNContactStore) init];
  v22 = type metadata accessor for ContactsManager();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1000A89DC(v21, v18);
  v20(v13 + *(v7 + 20), v19, v14);
  sub_10007DD5C();
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10007DDA0();
  sub_1000443DC(&qword_1006CB010);
  sub_10007DDF8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v30 + 104))(v29, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  *v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10007DE54(v13, v11);
  v26 = sub_10007DF90(v25, v11);
  result = sub_10007E168(v13);
  static BindingsChangeObserver.shared = v26;
  return result;
}

uint64_t *BindingsChangeObserver.shared.unsafeMutableAddressor()
{
  if (qword_1006C97C0 != -1)
  {
    sub_10007E280();
  }

  return &static BindingsChangeObserver.shared;
}

id static BindingsChangeObserver.shared.getter()
{
  if (qword_1006C97C0 != -1)
  {
    sub_10007E280();
  }

  v1 = static BindingsChangeObserver.shared;

  return v1;
}

uint64_t sub_10007D7CC()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CAFB8);
  sub_100046E6C(v0, qword_1006CAFB8);
  return Logger.init(subsystem:category:)();
}

Swift::Void __swiftcall BindingsChangeObserver.registerObservers()()
{
  v1 = &v0[OBJC_IVAR____TtC3asd22BindingsChangeObserver_xpcStreamListener];
  v2 = sub_100044728(&v0[OBJC_IVAR____TtC3asd22BindingsChangeObserver_contactsManager], *&v0[OBJC_IVAR____TtC3asd22BindingsChangeObserver_contactsManager + 24]);
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = *v2;
  v5 = v0;
  sub_1000A8CC4(sub_10007E27C, v3);

  sub_100044728(v1, *(v1 + 3));
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = v5;
  sub_1000D96B4(sub_10007DC30, v6);
}

uint64_t sub_10007D954()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007D98C()
{
  v0 = sub_1000443DC(&qword_1006C9E20);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TaskPriority();
  sub_1000485F8(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_10006F27C(0, 0, v3, &unk_1005CD070, v5);
}

uint64_t sub_10007DAB8()
{
  if (qword_1006C97B0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10004876C;

  return sub_100074254();
}

uint64_t sub_10007DC78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007DCB0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10004876C;

  return sub_10007DA9C();
}

unint64_t sub_10007DD5C()
{
  result = qword_1006CC440;
  if (!qword_1006CC440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006CC440);
  }

  return result;
}

unint64_t sub_10007DDA0()
{
  result = qword_1006CB008;
  if (!qword_1006CB008)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB008);
  }

  return result;
}

unint64_t sub_10007DDF8()
{
  result = qword_1006CB018;
  if (!qword_1006CB018)
  {
    sub_1000471A4(&qword_1006CB010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB018);
  }

  return result;
}

uint64_t sub_10007DE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCStreamListener();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10007DEB8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = type metadata accessor for ContactsManager();
  v12[4] = &off_1006941E8;
  v12[0] = a1;
  v11[3] = type metadata accessor for XPCStreamListener();
  v11[4] = &off_100695428;
  v7 = sub_10005351C(v11);
  sub_10007E1C4(a2, v7);
  sub_1000446C4(v12, a3 + OBJC_IVAR____TtC3asd22BindingsChangeObserver_contactsManager);
  sub_1000446C4(v11, a3 + OBJC_IVAR____TtC3asd22BindingsChangeObserver_xpcStreamListener);
  v10.receiver = a3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_100044850(v11);
  sub_100044850(v12);
  return v8;
}

id sub_10007DF90(uint64_t a1, uint64_t a2)
{
  v24 = type metadata accessor for ContactsManager();
  v25 = &off_1006941E8;
  v23[0] = a1;
  v21 = type metadata accessor for XPCStreamListener();
  v22 = &off_100695428;
  v4 = sub_10005351C(v20);
  sub_10007E1C4(a2, v4);
  v5 = objc_allocWithZone(type metadata accessor for BindingsChangeObserver());
  v6 = v24;
  v7 = sub_10007E228(v23, v24);
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = v21;
  v13 = sub_10007E228(v20, v21);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_10007DEB8(*v10, v16, v5);
  sub_100044850(v20);
  sub_100044850(v23);
  return v18;
}

uint64_t sub_10007E168(uint64_t a1)
{
  v2 = type metadata accessor for XPCStreamListener();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007E1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCStreamListener();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007E228(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10007E280()
{

  return swift_once();
}

uint64_t sub_10007E2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for URLRequest();
  v4[6] = v5;
  sub_1000474C0(v5);
  v4[7] = v6;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v4[9] = v9;
  sub_1000474C0(v9);
  v4[10] = v10;
  v12 = *(v11 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10007E3BC, 0, 0);
}

uint64_t sub_10007E3BC()
{
  v1 = v0[5];
  v2 = *(v0[10] + 16);
  v2(v0[12], v1, v0[9]);
  v3 = type metadata accessor for RavioliRequestFactory();
  v0[13] = v3;
  v4 = (v1 + *(v3 + 28));
  if (v4[1])
  {
    v5 = v0[12];
    v6 = *v4;
    sub_1000443DC(&qword_1006CA618);
    v7 = type metadata accessor for URLQueryItem();
    sub_1000474C0(v7);
    v9 = *(v8 + 72);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1005CB870;
    URLQueryItem.init(name:value:)();
    URL.append(queryItems:)(v12);
  }

  v13 = v0[8];
  v14 = v0[4];
  v15 = v0[5];
  v16 = v0[3];
  v2(v0[11], v0[12], v0[9]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v17._countAndFlagsBits = 0x692D656C646E7562;
  v18._countAndFlagsBits = v16;
  v18._object = v14;
  v17._object = 0xE900000000000064;
  URLRequest.addValue(_:forHTTPHeaderField:)(v18, v17);
  v19 = (v15 + *(v3 + 20));
  v20 = v19[3];
  v21 = v19[4];
  sub_100044728(v19, v20);
  v22 = async function pointer to dispatch thunk of DeviceInformationProvider.clientInfoHeader()[1];
  v23 = swift_task_alloc();
  v0[14] = v23;
  *v23 = v0;
  v23[1] = sub_10007E5E8;

  return dispatch thunk of DeviceInformationProvider.clientInfoHeader()(v20, v21);
}

uint64_t sub_10007E5E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v6 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;

  return _swift_task_switch(sub_10007E6E8, 0, 0);
}

uint64_t sub_10007E6E8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4._object = 0x80000001005A49C0;
  v4._countAndFlagsBits = 0xD000000000000013;
  URLRequest.addValue(_:forHTTPHeaderField:)(*(v0 + 120), v4);

  v5 = *(v3 + *(v1 + 32) + 26);
  if (v5 == 2 || (v5 & 1) != 0)
  {
    v6 = (*(v0 + 40) + *(*(v0 + 104) + 24));
    v7 = v6[3];
    v8 = v6[4];
    sub_100044728(v6, v7);
    v9 = async function pointer to dispatch thunk of AccountRequestHeaderProvider.applyAuthorisationHeaders(toRequest:)[1];
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *v10 = v0;
    v10[1] = sub_10007E898;
    v11 = *(v0 + 64);
    v12 = *(v0 + 16);

    return dispatch thunk of AccountRequestHeaderProvider.applyAuthorisationHeaders(toRequest:)(v12, v11, v7, v8);
  }

  else
  {
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);
    v16 = *(v0 + 16);
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
    (*(v14 + 32))(v16, v13, v15);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v19 = *(v0 + 64);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_10007E898()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_10007EA64;
  }

  else
  {
    v3 = sub_10007E9AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007E9AC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v3 + 8))(v1, v2);
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10007EA64()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v4 + 8))(v2, v3);

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

uint64_t type metadata accessor for RavioliRequestFactory()
{
  result = qword_1006CB078;
  if (!qword_1006CB078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007EB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100046EA4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10007EC48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000485F8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_10007ECF4()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10007EDD0(319, &qword_1006CB088);
    if (v1 <= 0x3F)
    {
      sub_10007EDD0(319, &unk_1006CB090);
      if (v2 <= 0x3F)
      {
        sub_10007EE24();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10007EDD0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10007EE24()
{
  if (!qword_1006CACB0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006CACB0);
    }
  }
}

uint64_t sub_10007EEC4()
{
  type metadata accessor for ASAnalyticsManager();
  swift_allocObject();

  v1 = sub_10007FBD8(v0);

  static ASXPCActivityManager.shared = v1;
  return result;
}

uint64_t *ASXPCActivityManager.shared.unsafeMutableAddressor()
{
  if (qword_1006C97D0 != -1)
  {
    sub_10007FD34();
  }

  return &static ASXPCActivityManager.shared;
}

id static ASXPCActivityManager.shared.getter()
{
  if (qword_1006C97D0 != -1)
  {
    sub_10007FD34();
  }

  v1 = static ASXPCActivityManager.shared;

  return v1;
}

uint64_t sub_10007EFC8()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CB168);
  sub_100046E6C(v0, qword_1006CB168);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10007F058(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ASXPCActivityManager();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10007FD30;

  return sub_10007F108(a1, a2);
}

uint64_t sub_10007F108(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for ASAnalyticsEvent();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_10007F19C, 0, 0);
}

uint64_t sub_10007F19C()
{
  if (qword_1006C97D0 != -1)
  {
    sub_10007FD34();
  }

  v1 = v0[4];
  v2 = v0[5];
  swift_storeEnumTagMultiPayload();
  sub_1000C4148(v2);
  sub_10007700C(v2);
  if (qword_1006C97D8 != -1)
  {
    sub_10007FD54();
  }

  v3 = type metadata accessor for Logger();
  sub_100046E6C(v3, qword_1006CB168);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    sub_10007FD74(&_mh_execute_header, v6, v7, "Triggering due pregenerate tasks");
  }

  if (qword_1006C97B0 != -1)
  {
    sub_1000775D8();
  }

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_10007F33C;
  v9 = v0[2];
  v10 = v0[3];

  return PrecomputationManager.triggerDuePrecomputations(dataProtectionClass:shouldDefer:)();
}

uint64_t sub_10007F33C()
{
  sub_1000657D4();
  v2 = v1;
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5(v2);
}

uint64_t sub_10007F450(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ASXPCActivityManager();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10007F500;

  return sub_10007F5F8(a1, a2);
}

uint64_t sub_10007F500()
{
  sub_1000657D4();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

uint64_t sub_10007F5F8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for ASAnalyticsEvent();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_10007F68C, 0, 0);
}

uint64_t sub_10007F68C()
{
  if (qword_1006C97D0 != -1)
  {
    sub_10007FD34();
  }

  v1 = v0[4];
  v2 = v0[5];
  swift_storeEnumTagMultiPayload();
  sub_1000C4148(v2);
  sub_10007700C(v2);
  if (qword_1006C97D8 != -1)
  {
    sub_10007FD54();
  }

  v3 = type metadata accessor for Logger();
  sub_100046E6C(v3, qword_1006CB168);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    sub_10007FD74(&_mh_execute_header, v6, v7, "Triggering due precomputation tasks");
  }

  if (qword_1006C97B0 != -1)
  {
    sub_1000775D8();
  }

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_10007F82C;
  v9 = v0[2];
  v10 = v0[3];

  return PrecomputationManager.triggerDuePrecomputations(dataProtectionClass:shouldDefer:)();
}

uint64_t sub_10007F82C()
{
  sub_1000657D4();
  v1 = *(*v0 + 48);
  v4 = *v0;
  *(*v0 + 56) = v2;

  return _swift_task_switch(sub_10007F928, 0, 0);
}

uint64_t sub_10007F928()
{
  sub_1000657D4();
  if (v0[7])
  {
    v1 = [objc_allocWithZone(Vr3QrKl7Yn9l4CTz) init];
    [v1 m2fzkz0hfx3YgwiD:0];
  }

  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3(v4);
}

uint64_t ASXPCActivityManager.register(activity:)(uint64_t a1)
{
  v2 = 0xD000000000000011;
  v3 = [objc_allocWithZone(type metadata accessor for ASBackgroundActivityManager()) init];
  v4 = &unk_1005CD108;
  if (a1)
  {
    if (a1 != 1)
    {
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    v5 = "_TtC3asd18ASAnalyticsManager";
    v4 = &unk_1005CD100;
  }

  else
  {
    v5 = "com.apple.asd.odp";
    v2 = 0xD000000000000013;
  }

  ASBackgroundActivityManager.registerActivity(identifier:activity:)(v2, v5 | 0x8000000000000000, v4, 0);
}

unint64_t sub_10007FB40()
{
  result = qword_1006CB180;
  if (!qword_1006CB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB180);
  }

  return result;
}

id sub_10007FBD8(uint64_t *a1)
{
  v1 = *a1;
  v14[3] = v1;
  v14[4] = &off_1006935C8;
  v14[0] = a1;
  v2 = type metadata accessor for ASXPCActivityManager();
  v3 = objc_allocWithZone(v2);
  v4 = sub_10007E228(v14, v1);
  v5 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v12 - v6);
  (*(v8 + 16))(&v12 - v6);
  v9 = *v7;
  v13[3] = v1;
  v13[4] = &off_1006935C8;
  v13[0] = v9;
  sub_1000446C4(v13, v3 + OBJC_IVAR____TtC3asd20ASXPCActivityManager_analyticsManager);
  v12.receiver = v3;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_100044850(v13);
  sub_100044850(v14);
  return v10;
}

uint64_t sub_10007FD34()
{

  return swift_once();
}

uint64_t sub_10007FD54()
{

  return swift_once();
}

void sub_10007FD74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10007FD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = type metadata accessor for ContextualProfile();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64);
  v3[24] = sub_100065948();
  v7 = *(*(sub_1000443DC(&qword_1006CB1B8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v8 = *(*(sub_1000443DC(&qword_1006CB1C0) - 8) + 64);
  v3[27] = sub_100065948();
  v9 = type metadata accessor for AssessmentConfig();
  v3[28] = v9;
  v10 = *(v9 - 8);
  v3[29] = v10;
  v11 = *(v10 + 64);
  v3[30] = sub_100065948();
  v12 = type metadata accessor for ProfileContent();
  v3[31] = v12;
  v13 = *(*(v12 - 8) + 64);
  v3[32] = sub_100065948();

  return _swift_task_switch(sub_10007FF30, 0, 0);
}

uint64_t sub_10007FF30()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 160);
  v5 = v4[4];
  sub_100044728(v4, v4[3]);
  *(v1 + 8) = dispatch thunk of EncapsulatingProfile.resolvedProfileInfo.getter();
  *(v1 + 16) = v6;
  v7 = v4[4];
  sub_100044728(v4, v4[3]);
  dispatch thunk of EncapsulatingProfile.config.getter();
  v8 = sub_100046EA4(v3, 1, v2);
  *(v0 + 288) = v8;
  if (v8 == 1)
  {
    v9 = *(v0 + 168);
    sub_10007C9CC(*(v0 + 216), &qword_1006CB1C0);
    sub_100080D18();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    v11 = type metadata accessor for ProfileContext();
    sub_10007CB0C(v11);
    (*(v12 + 8))(v9);
    goto LABEL_18;
  }

  v14 = *(v0 + 248);
  v13 = *(v0 + 256);
  v15 = *(v0 + 208);
  (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 216), *(v0 + 224));
  v13[3] = AssessmentConfig.bindingsToCompare.getter();
  v13[4] = AssessmentConfig.refreshTtl.getter();
  v13[5] = AssessmentConfig.bindingsDictSource.getter();
  v16 = v13 + *(v14 + 36);
  AssessmentConfig.primaryDSID.getter();
  AssessmentConfig.destinations.getter();
  v17 = type metadata accessor for AssessmentServerDestinations();
  v18 = sub_100046EA4(v15, 1, v17);
  v19 = *(v0 + 208);
  if (v18 == 1)
  {
    sub_10007C9CC(*(v0 + 208), &qword_1006CB1B8);
    v7 = 0;
    v15 = 0;
  }

  else
  {
    v20 = *(v0 + 208);
    AssessmentServerDestinations.tsidEncryptionCert.getter();
    sub_100081208();
    (*(v21 + 8))(v19, v17);
  }

  v23 = *(v0 + 248);
  v22 = *(v0 + 256);
  v24 = *(v0 + 240);
  v25 = *(v0 + 200);
  v26 = (v22 + *(v23 + 40));
  *v26 = v7;
  v26[1] = v15;
  *(v22 + *(v23 + 44)) = AssessmentConfig.useSendOTD.getter() & 1;
  AssessmentConfig.destinations.getter();
  v27 = sub_100046EA4(v25, 1, v17);
  v28 = *(v0 + 200);
  if (v27 == 1)
  {
    sub_10007C9CC(*(v0 + 200), &qword_1006CB1B8);
    v7 = 0;
    v15 = 0;
  }

  else
  {
    v29 = *(v0 + 200);
    AssessmentServerDestinations.otd.getter();
    sub_100081208();
    (*(v30 + 8))(v28, v17);
  }

  v31 = *(v0 + 248);
  v32 = *(v0 + 256);
  v33 = *(v0 + 240);
  v34 = *(v0 + 184);
  v35 = *(v0 + 168);
  v108 = *(v0 + 192);
  v109 = *(v0 + 176);
  v36 = *(v0 + 160);
  v37 = (v32 + v31[12]);
  *v37 = v7;
  v37[1] = v15;
  *(v32 + v31[14]) = AssessmentConfig.deviceFields()();
  *(v32 + v31[15]) = AssessmentConfig.bindingsFields()();
  v38 = v4[4];
  sub_100044728(v36, v4[3]);
  v39 = v32 + v31[13];
  dispatch thunk of EncapsulatingProfile.profileIdentifiers(for:)();
  v41 = v4[3];
  v40 = v4[4];
  sub_100044728(v36, v41);
  dispatch thunk of EncapsulatingProfile.profile(for:)();
  v42 = (*(v34 + 88))(v108, v109);
  if (v42 == enum case for ContextualProfile.monoProfile(_:))
  {
    v43 = *(v0 + 192);
    (*(*(v0 + 184) + 96))(v43, *(v0 + 176));
    v44 = *v43;
    v45 = v43[1];
    sub_100080E58();
    v46 = sub_100081220();
    sub_100046D38(v46, v47);
    v48 = sub_100081220();
    v50 = sub_100080B08(v48, v49);
    if (v50)
    {
      v51 = v50;
      v52 = *(v0 + 256);
      v54 = *(v0 + 232);
      v53 = *(v0 + 240);
      v55 = *(v0 + 224);
      v56 = *(v0 + 168);
      sub_1000443DC(&qword_1006CBEB0);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1005CC350;
      *(v57 + 32) = v51;
      v58 = sub_100081220();
      sub_1000448B0(v58, v59);
      v60 = type metadata accessor for ProfileContext();
      sub_10007CB0C(v60);
      (*(v61 + 8))(v56);
      (*(v54 + 8))(v53, v55);
      *v52 = v57;
      v62 = *(v0 + 256);
      sub_1000811F8();
      v63 = *(v0 + 160);
      sub_100080D98(v62, *(v0 + 152));
      sub_100044850(v63);
      sub_100080DFC(v62);

      sub_10006574C();
LABEL_21:

      return v64();
    }

    v87 = *(v0 + 232);
    v86 = *(v0 + 240);
    v88 = *(v0 + 224);
    v89 = *(v0 + 168);
    sub_100080D18();
    swift_allocError();
    *v90 = 2;
    swift_willThrow();
    v91 = sub_100081220();
    sub_1000448B0(v91, v92);
    v93 = type metadata accessor for ProfileContext();
    sub_10007CB0C(v93);
    (*(v94 + 8))(v89);
    (*(v87 + 8))(v86, v88);
LABEL_18:
    v95 = *(v0 + 288);
    v96 = *(v0 + 256);
    sub_100044850(*(v0 + 160));
    sub_1000448B0(*(v96 + 8), *(v96 + 16));
    if (v95 != 1)
    {
      v98 = *(v0 + 248);
      v97 = *(v0 + 256);
      v99 = *(v97 + 24);

      v100 = *(v97 + 40);

      v101 = v98[9];
      v102 = type metadata accessor for DsidType();
      sub_10007CB0C(v102);
      (*(v103 + 8))(v97 + v101);
      sub_10007B410(v98[10]);
      sub_10007B410(v98[12]);
      sub_100044850((v97 + v98[13]));
      v104 = *(v97 + v98[14]);

      v105 = *(v97 + v98[15]);
    }

    v106 = *(v0 + 256);
    sub_1000811F8();

    sub_10006574C();
    goto LABEL_21;
  }

  v66 = *(v0 + 184);
  v65 = *(v0 + 192);
  v67 = *(v0 + 176);
  if (v42 != enum case for ContextualProfile.multiProfile(_:))
  {
    v80 = *(v0 + 232);
    v79 = *(v0 + 240);
    v81 = *(v0 + 224);
    v82 = *(v0 + 168);
    sub_100080D18();
    swift_allocError();
    *v83 = 4;
    swift_willThrow();
    v84 = type metadata accessor for ProfileContext();
    sub_10007CB0C(v84);
    (*(v85 + 8))(v82);
    (*(v80 + 8))(v79, v81);
    (*(v66 + 8))(v65, v67);
    goto LABEL_18;
  }

  (*(v66 + 96))(*(v0 + 192), *(v0 + 176));
  v68 = *v65;
  v69 = [objc_opt_self() sharedInstance];
  *(v0 + 264) = v69;
  type metadata accessor for UUID();
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 272) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10008072C;
  v71 = swift_continuation_init();
  *(v0 + 136) = sub_1000443DC(&qword_1006CB1D0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100080B80;
  *(v0 + 104) = &unk_1006935F8;
  *(v0 + 112) = v71;
  [v69 quVb0ErcaaAyQJnG:isa completion:v0 + 80];

  return _swift_continuation_await(v0 + 16, v72, v73, v74, v75, v76, v77, v78);
}

uint64_t sub_10008072C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_100080968;
  }

  else
  {
    v3 = sub_10008083C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008083C()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v7 = v0[21];
  v8 = type metadata accessor for ProfileContext();
  sub_10007CB0C(v8);
  (*(v9 + 8))(v7);
  (*(v5 + 8))(v4, v6);
  *v3 = v0[18];

  v10 = v0[32];
  sub_1000811F8();
  v11 = v0[20];
  sub_100080D98(v10, v0[19]);
  sub_100044850(v11);
  sub_100080DFC(v10);

  sub_10006574C();

  return v12();
}

uint64_t sub_100080968()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 168);
  swift_willThrow();
  v8 = type metadata accessor for ProfileContext();
  sub_10007CB0C(v8);
  (*(v9 + 8))(v7);
  (*(v5 + 8))(v4, v6);

  v10 = *(v0 + 280);
  LODWORD(v6) = *(v0 + 288);
  v11 = *(v0 + 256);
  sub_100044850(*(v0 + 160));
  sub_1000448B0(*(v11 + 8), *(v11 + 16));
  if (v6 != 1)
  {
    v13 = *(v0 + 248);
    v12 = *(v0 + 256);
    v14 = *(v12 + 24);

    v15 = *(v12 + 40);

    v16 = v13[9];
    v17 = type metadata accessor for DsidType();
    sub_10007CB0C(v17);
    (*(v18 + 8))(v12 + v16);
    sub_10007B410(v13[10]);
    sub_10007B410(v13[12]);
    sub_100044850((v12 + v13[13]));
    v19 = *(v12 + v13[14]);

    v20 = *(v12 + v13[15]);
  }

  v21 = *(v0 + 256);
  sub_1000811F8();

  sub_10006574C();

  return v22();
}

id sub_100080B08(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  sub_1000448B0(a1, a2);
  return v6;
}

uint64_t sub_100080B80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100044728((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1000C4464(v4, v5);
  }

  else
  {
    sub_100080E58();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return sub_1000C4460(v4, v7);
  }
}

void sub_100080C18()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }

    goto LABEL_3;
  }

  if (v1 < 0)
  {
    v6 = *v0;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (v2)
  {
LABEL_3:
    if (v2 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v2; ++i)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v4 = *(v1 + 8 * i + 32);
        }

        v5 = v4;
        [v4 makeUnreleaseable];
      }
    }
  }
}

uint64_t type metadata accessor for ProfileContent()
{
  result = qword_1006CB238;
  if (!qword_1006CB238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100080D18()
{
  result = qword_1006CB1C8;
  if (!qword_1006CB1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB1C8);
  }

  return result;
}

uint64_t sub_100080D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100080DFC(uint64_t a1)
{
  v2 = type metadata accessor for ProfileContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100080E58()
{
  result = qword_1006CB1D8;
  if (!qword_1006CB1D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006CB1D8);
  }

  return result;
}

uint64_t sub_100080EB0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DsidType();
    v9 = a1 + *(a3 + 36);

    return sub_100046EA4(v9, a2, v8);
  }
}

void *sub_100080F4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DsidType();
    v8 = v5 + *(a4 + 36);

    return sub_1000485F8(v8, a2, a2, v7);
  }

  return result;
}

void sub_100080FCC()
{
  sub_100081140();
  if (v0 <= 0x3F)
  {
    sub_100077CA4(319, &qword_1006CACA8, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100081198(319, &qword_1006CB250, &qword_1006CB258);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DsidType();
        if (v3 <= 0x3F)
        {
          sub_100077CA4(319, &qword_1006CACB0, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100077CF8();
            if (v5 <= 0x3F)
            {
              sub_100081198(319, &qword_1006CB260, &unk_1006CB268);
              if (v6 <= 0x3F)
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

void sub_100081140()
{
  if (!qword_1006CB248)
  {
    sub_100080E58();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1006CB248);
    }
  }
}

void sub_100081198(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1000471A4(a3);
    v4 = type metadata accessor for Dictionary();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000811F8()
{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
}

uint64_t sub_10008122C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29 = a2;
  v5 = type metadata accessor for BindingsStore.Binding(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = 0;
  v14 = *(a3 + 16);
  v27 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v14 == v13)
    {

      return v27;
    }

    if (v13 >= *(a3 + 16))
    {
      break;
    }

    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = *(v6 + 72);
    sub_100085758(a3 + v15 + v16 * v13, v12);
    v17 = v28(v12);
    if (v3)
    {
      sub_10008587C(v12);
      v23 = v27;

      return v23;
    }

    if (v17)
    {
      sub_100085818(v12, v26);
      v18 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = v18[2];
        sub_1000BDEE4();
        v18 = v30;
      }

      v21 = v18[2];
      v22 = (v21 + 1);
      if (v21 >= v18[3] >> 1)
      {
        v27 = (v21 + 1);
        v25 = v21;
        sub_1000BDEE4();
        v22 = v27;
        v21 = v25;
        v18 = v30;
      }

      ++v13;
      v18[2] = v22;
      v27 = v18;
      result = sub_100085818(v26, v18 + v15 + v21 * v16);
    }

    else
    {
      result = sub_10008587C(v12);
      ++v13;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10008145C(uint64_t *a1)
{
  v2 = type metadata accessor for BindingsStore.Binding(0);
  sub_100077674(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000875A8(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;
  result = sub_100086284(v9);
  *a1 = v5;
  return result;
}

void *sub_100081500()
{
  if (qword_1006C9818 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    sub_1000879B4();
    v3 = static ASDConfigurationManager.shared;
    sub_1000B05E4(v45);

    if (v46 == 1 || (v5 = v47, v4 = v48, v6 = sub_100087908(), sub_100076F78(v6), sub_100076FB8(v45, &qword_1006CAC08), !v5))
    {
      v0 = &unk_100691DC8;
      v7 = sub_10008785C();
      sub_10008785C();

      sub_1000875BC(0);
    }

    else
    {
      v7 = v4;
    }

    v8 = sub_100047510();
    v10 = sub_100049208(v8, v9);

    if (!v10[2])
    {
      break;
    }

    sub_100087990();
    v11 = v44;
    sub_1000CF374(v10);
    sub_10008787C();
    while ((v0 & 0x8000000000000000) == 0 && v0 < (v1 << *(v10 + 32)))
    {
      sub_1000879E0();
      if (v13)
      {
        goto LABEL_30;
      }

      if (*(v10 + 9) != v12)
      {
        goto LABEL_31;
      }

      sub_1000879CC();
      v15 = v14[1];
      v43 = *v14;
      v44 = v11;
      v17 = *(v16 + 16 * v0 + 8);
      v18 = v11[2];
      v1 = v11[3];
      v19 = (v18 + 1);

      if (v18 >= v1 >> 1)
      {
        sub_100087A90();
      }

      v11[2] = v19;
      v20 = &v11[3 * v18];
      v20[4] = v43;
      v20[5] = v15;
      v20[6] = v17;
      sub_1000879F4();
      if (v21 == v22)
      {
        goto LABEL_32;
      }

      if ((*(v40 + 8 * v7) & v2) == 0)
      {
        goto LABEL_33;
      }

      if (*(v10 + 9) != v42)
      {
        goto LABEL_34;
      }

      sub_100087A3C();
      if (v13)
      {
        sub_10008794C();
        do
        {
          if (v32 >= v31)
          {
            break;
          }

          v34 = *v33++;
          v19 += 64;
          ++v32;
        }

        while (!v34);
        sub_100087930(v23, v24, v25, v26, v27, v28, v29, v30, v36, v37, v38, v39, v40, *v41, v41[4]);
      }

      else
      {
        sub_100087A28();
      }

      sub_100087914();
      if (v13)
      {

        return sub_100081774(v11);
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    sub_1000878A4();
  }

  v11 = _swiftEmptyArrayStorage;
  return sub_100081774(v11);
}

void *sub_100081774(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000443DC(&qword_1006CB540);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_100085994(v2, 1, &v4);

  return v4;
}

void *sub_100081820()
{
  if (qword_1006C9818 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    sub_1000879B4();
    v3 = static ASDConfigurationManager.shared;
    sub_1000B05E4(v45);

    if (v46 == 1 || (v5 = v47, v4 = v48, v6 = sub_100087908(), sub_100076F78(v6), sub_100076FB8(v45, &qword_1006CAC08), !v5))
    {
      v0 = &unk_100691DC8;
      v7 = sub_10008785C();
      sub_10008785C();

      sub_1000875BC(0);
    }

    else
    {
      v7 = v4;
    }

    v8 = sub_100047510();
    v10 = sub_100049208(v8, v9);

    if (!v10[2])
    {
      break;
    }

    sub_100087990();
    v11 = v44;
    sub_1000CF374(v10);
    sub_10008787C();
    while ((v0 & 0x8000000000000000) == 0 && v0 < v1 << *(v10 + 32))
    {
      sub_1000879E0();
      if (v13)
      {
        goto LABEL_30;
      }

      if (*(v10 + 9) != v12)
      {
        goto LABEL_31;
      }

      sub_1000879CC();
      v1 = *v14;
      v15 = v14[1];
      v43 = *(v16 + 16 * v0);
      v44 = v11;
      v18 = v11[2];
      v17 = v11[3];
      v19 = (v18 + 1);

      if (v18 >= v17 >> 1)
      {
        sub_100087A90();
      }

      v11[2] = v19;
      v20 = &v11[3 * v18];
      v20[4] = v1;
      v20[5] = v15;
      v20[6] = v43;
      sub_1000879F4();
      if (v21 == v22)
      {
        goto LABEL_32;
      }

      if ((*(v40 + 8 * v7) & v2) == 0)
      {
        goto LABEL_33;
      }

      if (*(v10 + 9) != v42)
      {
        goto LABEL_34;
      }

      sub_100087A3C();
      if (v13)
      {
        sub_10008794C();
        do
        {
          if (v32 >= v31)
          {
            break;
          }

          v34 = *v33++;
          v19 += 64;
          ++v32;
        }

        while (!v34);
        sub_100087930(v23, v24, v25, v26, v27, v28, v29, v30, v36, v37, v38, v39, v40, *v41, v41[4]);
      }

      else
      {
        sub_100087A28();
      }

      sub_100087914();
      if (v13)
      {

        return sub_100081774(v11);
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    sub_1000878A4();
  }

  v11 = _swiftEmptyArrayStorage;
  return sub_100081774(v11);
}

uint64_t sub_100081A94(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *v1;
  return _swift_task_switch(sub_100081ADC, 0, 0);
}

uint64_t sub_100081ADC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  swift_defaultActor_initialize();
  Logger.init(subsystem:category:)();
  v3 = OBJC_IVAR____TtC3asd13BindingsStore_persister;
  *(v2 + v3) = [objc_opt_self() sharedInstance];
  sub_100087764(v1, v0 + 56, &qword_1006CB5E0);
  if (*(v0 + 80))
  {
    sub_100046D90((v0 + 56), v0 + 16);
  }

  else
  {
    *(v0 + 40) = &type metadata for BindingsConfigResolver;
    *(v0 + 48) = &off_100693668;
  }

  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  sub_100046D90((v0 + 16), v4 + 120);
  v6 = [*(v4 + OBJC_IVAR____TtC3asd13BindingsStore_persister) fetchAllBindings];
  sub_1000591B0(0, &qword_1006CB580, off_10068D788);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100081CF4();
  v8 = v7;

  *(v4 + 112) = v8;

  return _swift_task_switch(sub_100081C80, v4, 0);
}

uint64_t sub_100081C80()
{
  v1 = v0[12];
  v2 = v0[13];
  sub_10008478C();
  sub_100076FB8(v1, &qword_1006CB5E0);
  v3 = v0[1];
  v4 = v0[13];

  return v3(v4);
}

void sub_100081CF4()
{
  sub_1000541C0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = sub_10004EAE0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10004EAF4();
  isUniquelyReferenced_nonNull_native = v11 - v10;
  v13 = type metadata accessor for BindingsStore.Binding(0);
  v14 = sub_10004EAE0(v13);
  v88 = v15;
  v89 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_1000878C4();
  v84 = v18 - v19;
  sub_1000474F8();
  __chkstk_darwin(v20);
  v97 = (&v83 - v21);
  v22 = sub_1000443DC(&qword_1006CB5E8);
  v23 = sub_100077674(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_10004EAF4();
  v90 = v4;
  v91 = v27 - v26;
  sub_1000485F8(v27 - v26, 1, 1, v4);
  if (v3 >> 62)
  {
    goto LABEL_36;
  }

  v28 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_37:
    sub_100076FB8(v91, &qword_1006CB5E8);
    sub_100054088();
    return;
  }

LABEL_3:
  if (v28 >= 1)
  {
    v29 = 0;
    v96 = v3 & 0xC000000000000001;
    v87 = (v7 + 1);
    v30 = _swiftEmptyDictionarySingleton;
    *(&v31 + 1) = 2;
    v85 = xmmword_1005CB870;
    *&v31 = 136315394;
    v83 = v31;
    v92 = v3;
    v93 = v1;
    v94 = isUniquelyReferenced_nonNull_native;
    v95 = v28;
    while (1)
    {
      if (v96)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v32 = *(v3 + 8 * v29 + 32);
      }

      v33 = v32;
      v34 = [v32 value];
      v35 = sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
      v98[3] = v35;
      v98[0] = v34;
      v36 = v34;
      v37 = sub_1000825E8(v98);
      sub_100044850(v98);
      if ((v37 & 1) == 0)
      {
        sub_100082414(v91, isUniquelyReferenced_nonNull_native);
        v52 = v36;
        v53 = v33;
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v98[0] = v86;
          *v56 = v83;
          v57 = [v53 key];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v58 = sub_100052F7C();

          *(v56 + 4) = v58;
          *(v56 + 12) = 2080;
          v59 = [swift_getObjCClassFromObject() description];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v1 = v93;
          v60 = sub_100052F7C();
          isUniquelyReferenced_nonNull_native = v94;

          *(v56 + 14) = v60;
          _os_log_impl(&_mh_execute_header, v54, v55, "Skipping binding due to value of unexpected type. key: %s type: %s", v56, 0x16u);
          swift_arrayDestroy();
          sub_1000488AC();
          v3 = v92;
          sub_1000488AC();
        }

        else
        {
        }

        (*v87)(isUniquelyReferenced_nonNull_native, v90);
        goto LABEL_32;
      }

      v38 = v97;
      v97[3] = v35;
      v38[4] = sub_1000876FC();
      *v38 = v36;
      v39 = [v33 updated];
      v40 = v38 + *(v89 + 20);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = [v33 key];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (v30[2])
      {
        v42 = sub_100087908();
        v44 = sub_1000BFB60(v42, v43);
        v46 = v45;

        if (v46)
        {
          v47 = *(v30[7] + 8 * v44);
          sub_100085758(v97, v84);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = *(v47 + 16);
            sub_100087968();
            sub_100062C3C();
            v47 = v81;
          }

          v48 = *(v47 + 16);
          if (v48 >= *(v47 + 24) >> 1)
          {
            sub_100062C3C();
            v47 = v82;
          }

          *(v47 + 16) = v48 + 1;
          v49 = *(v88 + 80);
          sub_1000658C0();
          sub_100085818(v84, v47 + v50 + *(v51 + 72) * v48);
          goto LABEL_22;
        }
      }

      else
      {
      }

      sub_1000443DC(&qword_1006CA650);
      v61 = *(v88 + 72);
      v62 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = v85;
      sub_100085758(v97, v47 + v62);
LABEL_22:
      v63 = [v33 key];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98[0] = v30;
      v7 = v30;
      v67 = sub_1000BFB60(v64, v66);
      v69 = v30[2];
      v70 = (v68 & 1) == 0;
      v71 = v69 + v70;
      if (__OFADD__(v69, v70))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v28 = _CocoaArrayWrapper.endIndex.getter();
        if (!v28)
        {
          goto LABEL_37;
        }

        goto LABEL_3;
      }

      v3 = v67;
      v1 = v68;
      sub_1000443DC(&qword_1006CA8E8);
      v7 = v98;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v71))
      {
        v7 = v98[0];
        v72 = sub_1000BFB60(v64, v66);
        isUniquelyReferenced_nonNull_native = v94;
        if ((v1 & 1) != (v73 & 1))
        {
          goto LABEL_39;
        }

        v3 = v72;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v94;
      }

      v30 = v98[0];
      if (v1)
      {
        v74 = *(v98[0] + 56);
        v75 = *(v74 + 8 * v3);
        *(v74 + 8 * v3) = v47;
      }

      else
      {
        *(v98[0] + 8 * (v3 >> 6) + 64) |= 1 << v3;
        v76 = (v30[6] + 16 * v3);
        *v76 = v64;
        v76[1] = v66;
        *(v30[7] + 8 * v3) = v47;
        v77 = v30[2];
        v78 = __OFADD__(v77, 1);
        v79 = v77 + 1;
        if (v78)
        {
          goto LABEL_35;
        }

        v30[2] = v79;
      }

      sub_10008587C(v97);
      v3 = v92;
      v1 = v93;
LABEL_32:
      if (v95 == ++v29)
      {
        goto LABEL_37;
      }
    }
  }

  __break(1u);
LABEL_39:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100082414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000443DC(&qword_1006CB5E8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_100087764(a1, &v13 - v9, &qword_1006CB5E8);
  v11 = type metadata accessor for Logger();
  if (sub_100046EA4(v10, 1, v11) != 1)
  {
    return (*(*(v11 - 8) + 32))(a2, v10, v11);
  }

  sub_100076FB8(v10, &qword_1006CB5E8);
  Logger.init(subsystem:category:)();
  (*(*(v11 - 8) + 16))(v8, a2, v11);
  sub_1000485F8(v8, 0, 1, v11);
  swift_beginAccess();
  return sub_1000877C0(v8, a1);
}

uint64_t sub_1000825E8(uint64_t a1)
{
  sub_10005346C(a1, v3);
  if (swift_dynamicCast())
  {
  }

  else
  {
    sub_10005346C(a1, v3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_10005346C(a1, v3);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_10005346C(a1, v3);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10005346C(a1, v3);
          return swift_dynamicCast();
        }
      }
    }
  }

  return 1;
}

void sub_100082700()
{
  sub_1000541C0();
  v2 = v1;
  v3 = *v0;
  v53 = type metadata accessor for ODIBindingsDict();
  v4 = sub_10004EAE0(v53);
  v50 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_1000878C4();
  v49 = v8 - v9;
  sub_1000474F8();
  __chkstk_darwin(v10);
  v54 = v48 - v11;
  v52 = type metadata accessor for Date();
  v12 = sub_10004EAE0(v52);
  v51 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_10004EAF4();
  v18 = v17 - v16;
  sub_100044728(v0 + 15, v0[18]);
  v48[1] = sub_100081820();
  v19 = v0[18];
  v57 = v0;
  sub_100044728(v0 + 15, v19);
  v55 = sub_100081500();
  v56 = v18;
  static Date.now.getter();
  v20 = *(v2 + 64);
  v21 = *(v2 + 32);
  sub_100087840();
  v24 = v23 & v22;
  v26 = (v25 + 63) >> 6;

  v27 = 0;
  if (!v24)
  {
    goto LABEL_3;
  }

  do
  {
    v28 = v27;
LABEL_7:
    v29 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v30 = v29 | (v28 << 6);
    v31 = (*(v2 + 48) + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    sub_1000446C4(*(v2 + 56) + 40 * v30, &v58);
    *&v60 = v33;
    *(&v60 + 1) = v32;
    sub_100046D90(&v58, &v61);

LABEL_8:
    v64 = v60;
    v65[0] = v61;
    v65[1] = v62;
    v66 = v63;
    if (!*(&v60 + 1))
    {

      v37 = v54;
      sub_100084FA0();
      v38 = OBJC_IVAR____TtC3asd13BindingsStore_logger;
      v39 = v53;
      (*(v50 + 16))(v49, v37, v53);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v64 = v55;
        *v42 = 136315138;
        ODIBindingsDict.keys.getter();
        sub_1000443DC(&qword_1006CAD30);
        Dictionary.Keys.description.getter();

        v43 = sub_100087978();
        v38(v43);
        v44 = sub_100052F7C();

        *(v42 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v40, v41, "InVal keys for BS: %s", v42, 0xCu);
        sub_100044850(v55);
        sub_1000488AC();
        v37 = v54;
        sub_1000488AC();
      }

      else
      {

        v45 = sub_100087978();
        v38(v45);
      }

      v46 = v52;
      v47 = v51;
      sub_100083AB8();
      (v38)(v37, v39);
      (*(v47 + 8))(v56, v46);
      sub_100054088();
      return;
    }

    sub_100046D90(v65, &v60);
    v34 = *(&v61 + 1);
    v35 = sub_100044728(&v60, *(&v61 + 1));
    v59 = v34;
    v36 = sub_10005351C(&v58);
    (*(*(v34 - 8) + 16))(v36, v35, v34);
    LOBYTE(v34) = sub_1000825E8(&v58);
    sub_100044850(&v58);
    if ((v34 & 1) != 0 && sub_100082C38())
    {
      sub_100083F44();
    }

    sub_100044850(&v60);
  }

  while (v24);
LABEL_3:
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v24 = 0;
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      goto LABEL_8;
    }

    v24 = *(v2 + 64 + 8 * v28);
    ++v27;
    if (v24)
    {
      v27 = v28;
      goto LABEL_7;
    }
  }

  __break(1u);
}

BOOL sub_100082C38()
{
  v0 = sub_1000443DC(&qword_1006CB588);
  v1 = sub_100077674(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_10004EAF4();
  v6 = v5 - v4;
  v7 = sub_1000443DC(&qword_1006CB590);
  v8 = sub_10004EAE0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_10004EAF4();
  v15 = v14 - v13;
  sub_1000472E0(&qword_1006CB598, &qword_1006CB590);
  Regex.init<A>(_:)();
  sub_100083874();
  (*(v10 + 8))(v15, v7);
  v16 = sub_1000443DC(&qword_1006CB5A0);
  v17 = sub_100046EA4(v6, 1, v16) == 1;
  v18 = sub_100087908();
  sub_100076FB8(v18, v19);
  return v17;
}

uint64_t sub_100082DD4@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = type metadata accessor for Anchor();
  v2 = *(v1 - 8);
  v53 = v1;
  v54 = v2;
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = &v48 - v6;
  v7 = sub_1000443DC(&qword_1006CB590);
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  v9 = __chkstk_darwin(v7);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v48 - v11;
  v49 = type metadata accessor for _RegexFactory();
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v49);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000443DC(&qword_1006CB5A8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CharacterClass();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000443DC(&qword_1006CB5B0);
  v27 = *(v26 - 8);
  v58 = v26;
  v59 = v27;
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v48 - v32;
  v60 = 35;
  v61 = 0xE100000000000000;
  v48 = sub_100087660();
  static RegexComponentBuilder.buildExpression<A>(_:)();
  static RegexComponent<>.digit.getter();
  v34 = type metadata accessor for RegexRepetitionBehavior();
  sub_1000485F8(v20, 1, 1, v34);
  makeFactory()();
  sub_1000876B4(&qword_1006CB5C0, &type metadata accessor for CharacterClass);
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  (*(v13 + 8))(v16, v49);
  sub_100076FB8(v20, &qword_1006CB5A8);
  (*(v22 + 8))(v25, v21);
  OneOrMore.init(_:)();
  sub_1000472E0(&qword_1006CB5C8, &qword_1006CB5B0);
  v35 = v58;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v36 = *(v59 + 8);
  v59 += 8;
  v36(v31, v35);
  v37 = v50;
  static Anchor.endOfLine.getter();
  sub_1000876B4(&unk_1006CB5D0, &type metadata accessor for Anchor);
  v38 = v51;
  v39 = v53;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v40 = *(v54 + 8);
  v41 = v37;
  v42 = v39;
  v40(v41, v39);
  v60 = v62;
  v61 = v63;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();

  v43 = v52;
  sub_1000833A8(v33, v52);
  sub_100083608(v57);
  v44 = *(v55 + 8);
  v45 = v43;
  v46 = v56;
  v44(v45, v56);
  v44(v12, v46);
  v40(v38, v42);
  return (v36)(v33, v58);
}

uint64_t sub_1000833A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v2 = sub_1000443DC(&qword_1006CB590);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = type metadata accessor for _RegexFactory();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  makeFactory()();
  sub_1000472E0(&qword_1006CB598, &qword_1006CB590);
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  sub_1000443DC(&qword_1006CB5B0);
  sub_1000472E0(&qword_1006CB5C8, &qword_1006CB5B0);
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v15 = *(v3 + 8);
  v15(v7, v2);
  v15(v9, v2);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100083608@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = sub_1000443DC(&qword_1006CB590);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v16 - v7;
  v9 = type metadata accessor for _RegexFactory();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  makeFactory()();
  sub_1000472E0(&qword_1006CB598, &qword_1006CB590);
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  type metadata accessor for Anchor();
  sub_1000876B4(&unk_1006CB5D0, &type metadata accessor for Anchor);
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v14 = *(v2 + 8);
  v14(v6, v1);
  v14(v8, v1);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_100083874()
{
  v0 = sub_1000443DC(&qword_1006CB590);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008740C();
  sub_1000472E0(&qword_1006CB598, &qword_1006CB590);
  dispatch thunk of RegexComponent.regex.getter();
  Regex.firstMatch(in:)();
  (*(v1 + 8))(v4, v0);
}

void sub_100083A44()
{
  sub_1000443DC(&unk_1006CB520);
  v1 = Dictionary.init(dictionaryLiteral:)();
  sub_100087A1C();
  swift_beginAccess();
  v2 = *(v0 + 112);
  *(v0 + 112) = v1;

  sub_100083AB8();
}

void sub_100083AB8()
{
  v1 = *v0;
  v2 = *(v0 + OBJC_IVAR____TtC3asd13BindingsStore_persister);
  sub_100087A1C();
  sub_1000879B4();
  v3 = v0[14];

  sub_100083B8C();

  sub_1000591B0(0, &qword_1006CB580, off_10068D788);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 commitWithBindings:isa clearingExistingBindings:1];
}

void sub_100083B8C()
{
  sub_1000541C0();
  v1 = v0;
  v46 = type metadata accessor for Date();
  v2 = sub_10004EAE0(v46);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10004EAF4();
  v45 = v8 - v7;
  v44 = type metadata accessor for BindingsStore.Binding(0);
  v9 = sub_10004EAE0(v44);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10004EAF4();
  v47 = v15 - v14;
  v17 = v1 + 64;
  v16 = *(v1 + 64);
  v18 = *(v1 + 32);
  sub_100087840();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v43 = (v4 + 16);

  v24 = 0;
  while (v21)
  {
LABEL_7:
    v26 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v27 = v26 | (v24 << 6);
    v28 = *(*(v1 + 56) + 8 * v27);
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = (*(v1 + 48) + 16 * v27);
      v31 = v30[1];
      v40 = v1;
      v41 = *v30;
      v32 = *(v11 + 80);
      sub_1000658C0();
      v34 = v28 + v33;
      v42 = v35;

      v48 = *(v11 + 72);
      v36 = v47;
      do
      {
        sub_100085758(v34, v36);
        v37 = sub_100083E80(v36);
        if (v37)
        {
          v38 = v37;
          (*v43)(v45, v36 + *(v44 + 20), v46);
          objc_allocWithZone(BindingRecord);

          v39 = v38;
          sub_1000858D8(v41, v42, v45, v39);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v36 = v47;
          sub_10008587C(v47);
        }

        else
        {
          sub_10008587C(v36);
        }

        v34 += v48;
        --v29;
      }

      while (v29);

      v1 = v40;
    }
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      sub_100054088();
      return;
    }

    v21 = *(v17 + 8 * v25);
    ++v24;
    if (v21)
    {
      v24 = v25;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_100083E80(uint64_t a1)
{
  sub_1000446C4(a1, v4);
  sub_1000443DC(&qword_1006CAD30);
  sub_1000591B0(0, &qword_1006CA338, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    return v3;
  }

  sub_1000446C4(a1, v4);
  sub_1000591B0(0, &qword_1006CB560, NSString_ptr);
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void sub_100083F44()
{
  sub_1000541C0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v1;
  v13 = type metadata accessor for BindingsStore.Binding(0);
  v14 = sub_10004EAE0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_10004EAF4();
  v21 = v20 - v19;
  if (!*(v3 + 16))
  {
    goto LABEL_20;
  }

  v22 = sub_100065A64();
  v24 = sub_1000BFB60(v22, v23);
  if ((v25 & 1) == 0)
  {
    goto LABEL_20;
  }

  v26 = *(*(v3 + 56) + 8 * v24);
  if (v26 < 1)
  {
    goto LABEL_20;
  }

  v64 = *(*(v3 + 56) + 8 * v24);
  v65 = v5;
  if (v26 == 1 || (sub_1000879B4(), v27 = v1[14], , v28 = sub_100065A64(), v30 = sub_10005548C(v28, v29, v27), v31 = , !v30))
  {
    sub_1000443DC(&qword_1006CA650);
    v41 = *(v16 + 72);
    v42 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1005CB870;
    v44 = v43 + v42;
    sub_1000446C4(v11, v44);
    v45 = *(v13 + 20);
    v46 = type metadata accessor for Date();
    sub_1000774D8(v46);
    (*(v47 + 16))(v44 + v45, v65);
    sub_100087AB0();
    v48 = v1[14];
    swift_isUniquelyReferenced_nonNull_native();
    v66 = v1[14];
    sub_10006AF94(v43, v9, v7);
    v1[14] = v66;
LABEL_19:
    swift_endAccess();
    v57 = sub_100065A64();
    sub_100084480(v57, v58, v64);
LABEL_20:
    sub_100054088();
    return;
  }

  v63[1] = v63;
  __chkstk_darwin(v31);
  v63[-2] = v11;
  v63[-1] = v12;

  v32 = sub_1000464A8(sub_100087630, &v63[-4], v30);
  v34 = v33;

  if (v34)
  {
    sub_1000446C4(v11, v21);
    v35 = *(v13 + 20);
    v36 = type metadata accessor for Date();
    sub_1000774D8(v36);
    (*(v37 + 16))(v21 + v35, v65);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = *(v30 + 16);
      sub_100087968();
      sub_100062C3C();
      v30 = v60;
    }

    v38 = *(v30 + 16);
    if (v38 >= *(v30 + 24) >> 1)
    {
      sub_100062C3C();
      v30 = v61;
    }

    *(v30 + 16) = v38 + 1;
    v39 = *(v16 + 80);
    sub_1000658C0();
    sub_100085818(v21, v30 + v40 + *(v16 + 72) * v38);
    goto LABEL_18;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000638E8(v30);
    v30 = v62;
  }

  v49 = v65;
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v32 < *(v30 + 16))
  {
    v50 = *(v16 + 80);
    sub_1000658C0();
    v52 = v30 + v51 + *(v16 + 72) * v32;
    v53 = *(v13 + 20);
    v54 = type metadata accessor for Date();
    sub_1000774D8(v54);
    (*(v55 + 24))(v52 + v53, v49);
LABEL_18:
    sub_100087AB0();
    v56 = v1[14];
    swift_isUniquelyReferenced_nonNull_native();
    v66 = v1[14];
    sub_10006AF94(v30, v9, v7);
    v1[14] = v66;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_100084334(uint64_t a1, uint64_t a2)
{
  sub_1000446C4(a1, v8);
  sub_1000446C4(a2, v9);
  sub_1000443DC(&qword_1006CAD30);
  sub_1000591B0(0, &qword_1006CB560, NSString_ptr);
  if (!sub_1000878EC())
  {
LABEL_4:
    sub_1000591B0(0, &qword_1006CA338, NSNumber_ptr);
    if (sub_1000878EC())
    {
      v3 = v7;
      if (sub_1000878EC())
      {
        goto LABEL_6;
      }
    }

    sub_100076FB8(v8, &qword_1006CB570);
    v4 = 0;
    return v4 & 1;
  }

  v3 = v7;
  if (!sub_1000878EC())
  {

    goto LABEL_4;
  }

LABEL_6:
  sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
  v4 = static NSObject.== infix(_:_:)();

  sub_100044850(v9);
  sub_100044850(v8);
  return v4 & 1;
}

uint64_t sub_100084480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_1000879B4();
  v9 = *(v3 + 112);
  if (*(v9 + 16))
  {

    v10 = sub_100065A64();
    v12 = sub_1000BFB60(v10, v11);
    if ((v13 & 1) == 0)
    {
    }

    v14 = *(*(v9 + 56) + 8 * v12);

    v27[0] = v14;

    sub_10008145C(v27);

    sub_100084668(a3, v27[0]);
    v16 = v15;
    v18 = v17;
    if (v17)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v23 = swift_dynamicCastClass();
      if (!v23)
      {
        swift_unknownObjectRelease();
        v23 = _swiftEmptyArrayStorage;
      }

      v24 = v23[2];

      if (__OFSUB__(v18 >> 1, v16))
      {
        __break(1u);
      }

      else if (v24 == ((v18 >> 1) - v16))
      {
        v22 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v22)
        {
LABEL_13:
          swift_beginAccess();
          v25 = *(v4 + 112);
          swift_isUniquelyReferenced_nonNull_native();
          v26 = *(v4 + 112);
          sub_10006AF94(v22, a1, a2);
          *(v4 + 112) = v26;
          return swift_endAccess();
        }

        v22 = _swiftEmptyArrayStorage;
LABEL_12:
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    v19 = sub_100047510();
    sub_100086184(v19, v20, v16, v18);
    v22 = v21;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100084668(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_10008755C(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_100087444(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000846FC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_10008755C(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_1000874EC(0, v5, a2);

      return sub_100047510();
    }
  }

  __break(1u);
  return result;
}

void sub_10008478C()
{
  sub_100087A1C();
  swift_beginAccess();
  v1 = v0[14];
  sub_100044728(v0 + 15, v0[18]);

  sub_100081820();
  sub_100044728(v0 + 15, v0[18]);
  sub_100081500();
  sub_100084840();
  v3 = v2;

  v4 = v0[14];
  v0[14] = v3;

  sub_100083AB8();
}

void sub_100084840()
{
  sub_1000541C0();
  v105 = v0;
  v108 = v1;
  v3 = v2;
  v103 = type metadata accessor for Date();
  v4 = sub_10004EAE0(v103);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10004EAF4();
  v104 = v8 - v7;
  v10 = v3 + 64;
  v9 = *(v3 + 64);
  v11 = *(v3 + 32);
  sub_100087840();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v102 = (v17 + 8);
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v107 = v3;
LABEL_2:
  while (2)
  {
    v106 = v3;
    while (1)
    {
      if (!v14)
      {
        while (1)
        {
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v19 >= v16)
          {

            sub_100054088();
            return;
          }

          v14 = *(v10 + 8 * v19);
          ++v18;
          if (v14)
          {
            v18 = v19;
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_59;
      }

LABEL_8:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = (*(v107 + 48) + ((v18 << 10) | (16 * v20)));
      v22 = *v21;
      v23 = v21[1];
      v24 = *(v108 + 16);

      if (v24)
      {
        v25 = sub_1000878E0();
        v27 = sub_1000BFB60(v25, v26);
        if (v28)
        {
          if (*(v105 + 16))
          {
            v29 = *(*(v108 + 56) + 8 * v27);
            v30 = sub_1000878E0();
            v32 = sub_1000BFB60(v30, v31);
            if (v33)
            {
              v34 = *(*(v105 + 56) + 8 * v32);
              if (v34 >= 1)
              {
                break;
              }
            }
          }
        }
      }

      v35 = sub_1000878E0();
      v3 = v106;
      v37 = sub_1000BFB60(v35, v36);
      v39 = v38;

      if (v39)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v109 = v3;
        v40 = *(v3 + 24);
        sub_1000443DC(&qword_1006CA8E8);
        sub_100087A70();
        sub_100087A50();
        v41 = *(*(v3 + 56) + 8 * v37);

        sub_1000443DC(&unk_1006CB520);
        _NativeDictionary._delete(at:)();
        goto LABEL_2;
      }
    }

    if (__OFSUB__(0, v29))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    Date.init(timeIntervalSinceNow:)();
    v3 = v106;
    if (!*(v106 + 16))
    {
      goto LABEL_20;
    }

    v42 = sub_1000878E0();
    v44 = sub_1000BFB60(v42, v43);
    if ((v45 & 1) == 0)
    {
      goto LABEL_20;
    }

    v101 = &v97;
    v46 = *(*(v3 + 56) + 8 * v44);
    __chkstk_darwin(v44);
    *(&v97 - 2) = v104;

    v109 = sub_10008122C(sub_100086264, (&v97 - 4), v46);

    sub_10008145C(&v109);

    v47 = sub_100084668(v34, v109);
    if (v49 == v50 >> 1)
    {
      v3 = v106;
LABEL_20:
      v51 = sub_1000878E0();
      v53 = sub_1000BFB60(v51, v52);
      v55 = v54;

      if (v55)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v109 = v3;
        v56 = *(v3 + 24);
        sub_1000443DC(&qword_1006CA8E8);
        sub_100087A70();
        sub_100087A50();
        v57 = *(*(v3 + 56) + 8 * v53);

        sub_1000443DC(&unk_1006CB520);
        _NativeDictionary._delete(at:)();
      }

      swift_unknownObjectRelease();
LABEL_23:
      (*v102)(v104, v103);
      continue;
    }

    break;
  }

  v98 = v48;
  v99 = v49;
  v101 = v47;
  v58 = v50 >> 1;
  v59 = v106;
  if ((v50 & 1) == 0)
  {
    v60 = v58 - v49;
    v61 = __OFSUB__(v58, v49);
    swift_unknownObjectRetain();
    if (!v61)
    {
      if (v60)
      {
        goto LABEL_30;
      }

LABEL_42:
      v70 = _swiftEmptyArrayStorage;
LABEL_45:
      swift_unknownObjectRelease();
LABEL_46:
      v100 = v70;
      LODWORD(v99) = swift_isUniquelyReferenced_nonNull_native();
      v109 = v59;
      v76 = sub_1000878E0();
      v78 = sub_1000BFB60(v76, v77);
      v79 = *(v59 + 16);
      LODWORD(v106) = v80;
      v81 = (v80 & 1) == 0;
      v82 = v79 + v81;
      if (!__OFADD__(v79, v81))
      {
        v83 = v78;
        sub_1000443DC(&qword_1006CA8E8);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v99, v82))
        {
          v84 = sub_1000878E0();
          v86 = sub_1000BFB60(v84, v85);
          v88 = v106;
          if ((v106 & 1) != (v87 & 1))
          {
            goto LABEL_66;
          }

          v89 = v86;
        }

        else
        {
          v89 = v83;
          v88 = v106;
        }

        if (v88)
        {

          v3 = v109;
          v90 = *(v109 + 56);
          v91 = v89;
          v92 = *(v90 + 8 * v89);
          *(v90 + 8 * v91) = v100;
          swift_unknownObjectRelease();

          goto LABEL_23;
        }

        v3 = v109;
        *(v109 + 8 * (v89 >> 6) + 64) |= 1 << v89;
        v93 = (*(v3 + 48) + 16 * v89);
        *v93 = v22;
        v93[1] = v23;
        *(*(v3 + 56) + 8 * v89) = v100;
        swift_unknownObjectRelease();
        v94 = *(v3 + 16);
        v95 = __OFADD__(v94, 1);
        v96 = v94 + 1;
        if (!v95)
        {
          *(v3 + 16) = v96;
          goto LABEL_23;
        }

LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

LABEL_60:
      __break(1u);
    }

    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v71 = swift_dynamicCastClass();
  if (!v71)
  {
    swift_unknownObjectRelease();
    v71 = _swiftEmptyArrayStorage;
  }

  v72 = v71[2];

  if (__OFSUB__(v58, v99))
  {
    goto LABEL_62;
  }

  if (v72 == (v58 - v99))
  {
    v70 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v59 = v106;
    if (!v70)
    {
      goto LABEL_42;
    }

    goto LABEL_46;
  }

  v60 = v58 - v99;
  swift_unknownObjectRelease();
  v59 = v106;
  if (!v60)
  {
    goto LABEL_42;
  }

LABEL_30:
  if (v60 < 1)
  {
    v70 = _swiftEmptyArrayStorage;
    goto LABEL_44;
  }

  v100 = sub_1000443DC(&qword_1006CA650);
  v62 = *(type metadata accessor for BindingsStore.Binding(0) - 8);
  v63 = *(v62 + 72);
  v64 = v60;
  v65 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v66 = v64;
  v100 = swift_allocObject();
  v67 = j__malloc_size(v100);
  if (!v63)
  {
    goto LABEL_64;
  }

  if (v67 - v65 != 0x8000000000000000 || v63 != -1)
  {
    v69 = 2 * ((v67 - v65) / v63);
    v70 = v100;
    *(v100 + 2) = v66;
    v70[3] = v69;
    v59 = v106;
LABEL_44:
    v73 = *(type metadata accessor for BindingsStore.Binding(0) - 8);
    v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v75 = v98 + *(v73 + 72) * v99;
    swift_arrayInitWithCopy();
    goto LABEL_45;
  }

LABEL_65:
  __break(1u);

  __break(1u);
LABEL_66:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100084FA0()
{
  sub_100087A1C();
  sub_1000879B4();
  v1 = *(v0 + 112);

  sub_100084FEC();
}

void sub_100084FEC()
{
  sub_1000541C0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for BindingsStore.Binding(0);
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  __chkstk_darwin(v4 - 8);
  sub_10004EAF4();
  v8 = v7 - v6;
  v9 = sub_1000443DC(&qword_1006CB508);
  v10 = sub_1000774D8(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10004EAF4();
  v60 = (v14 - v13);
  v15 = sub_1000443DC(&unk_1006CB510);
  v16 = sub_100077674(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_1000878C4();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = (&v55 - v23);
  v63 = v3;
  ODIBindingsDict.init(dictionaryLiteral:)();
  v26 = v1 + 64;
  v25 = *(v1 + 64);
  v27 = *(v1 + 32);
  sub_100087840();
  v30 = v29 & v28;
  v32 = (v31 + 63) >> 6;
  v57 = v1;

  v33 = 0;
  v55 = v32;
  v56 = v1 + 64;
  if (v30)
  {
LABEL_2:
    v34 = v33;
  }

  else
  {
    do
    {
LABEL_3:
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_24;
      }

      if (v34 >= v32)
      {

        sub_100054088();
        return;
      }

      v30 = *(v26 + 8 * v34);
      ++v33;
    }

    while (!v30);
  }

  v58 = v34;
  v59 = (v30 - 1) & v30;
  v35 = __clz(__rbit64(v30)) | (v34 << 6);
  v36 = *(v57 + 56);
  v37 = (*(v57 + 48) + 16 * v35);
  v38 = v37[1];
  v64 = *v37;
  v39 = *(v36 + 8 * v35);
  v40 = *(v39 + 16);

  v62 = v39;

  v41 = 0;
  while (1)
  {
    if (v41 == v40)
    {
      v42 = 1;
      v41 = v40;
    }

    else
    {
      if ((v41 & 0x8000000000000000) != 0)
      {
        goto LABEL_22;
      }

      if (v41 >= *(v62 + 16))
      {
        goto LABEL_23;
      }

      v43 = v60;
      v44 = *(v61 + 80);
      sub_1000658C0();
      v48 = v46 + v45 + *(v47 + 72) * v41;
      v49 = *(v9 + 48);
      *v43 = v41;
      sub_100085758(v48, v43 + v49);
      sub_1000857BC(v43, v21, &qword_1006CB508);
      v42 = 0;
      ++v41;
    }

    sub_1000485F8(v21, v42, 1, v9);
    sub_1000857BC(v21, v24, &unk_1006CB510);
    if (sub_100046EA4(v24, 1, v9) == 1)
    {

      v33 = v58;
      v30 = v59;
      v32 = v55;
      v26 = v56;
      if (!v59)
      {
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    v50 = *v24;
    sub_100085818(v24 + *(v9 + 48), v8);
    if (v50)
    {
      break;
    }

LABEL_17:
    sub_1000446C4(v8, &v65);
    ODIBindingsDict.subscript.setter();
    sub_10008587C(v8);
  }

  v65 = 35;
  v66 = 0xE100000000000000;
  if (!__OFADD__(v50, 1))
  {
    v67 = v50 + 1;
    v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v51);

    v53 = v65;
    v52 = v66;
    v65 = v64;
    v66 = v38;

    v54._countAndFlagsBits = v53;
    v54._object = v52;
    String.append(_:)(v54);

    goto LABEL_17;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_100085398()
{
  v1 = *(v0 + 112);

  sub_100044850((v0 + 120));
  v2 = OBJC_IVAR____TtC3asd13BindingsStore_logger;
  v3 = type metadata accessor for Logger();
  sub_1000774D8(v3);
  (*(v4 + 8))(&v2[v0]);
  v5 = *(v0 + OBJC_IVAR____TtC3asd13BindingsStore_persister);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100085418()
{
  sub_100085398();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10008546C()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10008553C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 20);

    return sub_100046EA4(v9, a2, v8);
  }
}

uint64_t sub_1000855D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_1000485F8(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_100085678()
{
  result = sub_1000856FC();
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

unint64_t sub_1000856FC()
{
  result = qword_1006CB4D8;
  if (!qword_1006CB4D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1006CB4D8);
  }

  return result;
}

uint64_t sub_100085758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BindingsStore.Binding(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000857BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000443DC(a3);
  sub_1000774D8(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100085818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BindingsStore.Binding(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008587C(uint64_t a1)
{
  v2 = type metadata accessor for BindingsStore.Binding(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000858D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = String._bridgeToObjectiveC()();

  isa = Date._bridgeToObjectiveC()().super.isa;
  v10 = [v5 initWithKey:v8 updatedDate:isa value:a4];

  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(a3, v11);
  return v10;
}

uint64_t sub_100085994(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1000BFB60(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1000443DC(&qword_1006CB548);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_100085EF0(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_1000BFB60(v7, v6);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_1000443DC(&unk_1006CB550);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v25._object = 0x80000001005A4B50;
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v25);
  _print_unlocked<A, B>(_:_:)();
  v26._countAndFlagsBits = 39;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100085C58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000443DC(&qword_1006C9F48);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_10009F228(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v39 & 1) == 0)
    {
      v24 = v20[1];

      v25 = v23;
    }

    v26 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v27 = -1 << *(v8 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v8 + 48) + 16 * v30);
    *v35 = v21;
    v35[1] = v22;
    *(*(v8 + 56) + 8 * v30) = v23;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_100085EF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000443DC(&qword_1006CB540);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_10009F228(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_100086184(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_1000633D0((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      v6 = *(type metadata accessor for BindingsStore.Binding(0) - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

Swift::Int sub_100086284(uint64_t *a1)
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
        type metadata accessor for BindingsStore.Binding(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = type metadata accessor for BindingsStore.Binding(0);
      sub_100077674(v7);
      v9 = *(v8 + 80);
      sub_1000658C0();
      v11[0] = v6 + v10;
      v11[1] = v5;
      sub_1000865A4(v11, v12, a1, v4);
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
    return sub_1000863AC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000863AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for BindingsStore.Binding(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v29 - v14;
  result = __chkstk_darwin(v13);
  v19 = &v29 - v18;
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v36 = v20;
    v30 = v21;
    v25 = v20 + v21 * a3;
    while (2)
    {
      v34 = v22;
      v35 = a3;
      v32 = v25;
      v33 = v24;
      do
      {
        sub_100085758(v25, v19);
        sub_100085758(v22, v15);
        v26 = *(v8 + 20);
        v27 = static Date.> infix(_:_:)();
        sub_10008587C(v15);
        result = sub_10008587C(v19);
        if ((v27 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return result;
        }

        sub_100085818(v25, v12);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_100085818(v12, v22);
        v22 += v23;
        v25 += v23;
      }

      while (!__CFADD__(v24++, 1));
      a3 = v35 + 1;
      v22 = v34 + v30;
      v24 = v33 - 1;
      v25 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1000865A4(int64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = v4;
  v108 = a1;
  v122 = type metadata accessor for BindingsStore.Binding(0);
  v8 = sub_10004EAE0(v122);
  v116 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_1000878C4();
  v112 = v12 - v13;
  sub_1000474F8();
  __chkstk_darwin(v14);
  v121 = &v106 - v15;
  sub_1000474F8();
  v17 = __chkstk_darwin(v16);
  v19 = &v106 - v18;
  __chkstk_darwin(v17);
  v21 = &v106 - v20;
  v118 = a3;
  v22 = *(a3 + 8);
  if (v22 < 1)
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_102:
    a3 = *v108;
    if (!*v108)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v100 = (v24 + 16);
      v101 = *(v24 + 16);
      for (i = v24; v101 >= 2; v24 = i)
      {
        if (!*v118)
        {
          goto LABEL_140;
        }

        v102 = (v24 + 16 * v101);
        v24 = *v102;
        v103 = &v100[2 * v101];
        v104 = v103[1];
        sub_100086DC8(*v118 + *(v116 + 72) * *v102, *v118 + *(v116 + 72) * *v103, *v118 + *(v116 + 72) * v104, a3);
        if (v5)
        {
          break;
        }

        if (v104 < v24)
        {
          goto LABEL_128;
        }

        if (v101 - 2 >= *v100)
        {
          goto LABEL_129;
        }

        *v102 = v24;
        v102[1] = v104;
        v105 = *v100 - v101;
        if (*v100 < v101)
        {
          goto LABEL_130;
        }

        v101 = *v100 - 1;
        memmove(v103, v103 + 2, 16 * v105);
        *v100 = v101;
      }

LABEL_112:

      return;
    }

LABEL_137:
    v24 = sub_1000871E4(v24);
    goto LABEL_104;
  }

  v107 = a4;
  v23 = 0;
  v24 = _swiftEmptyArrayStorage;
  v25 = v122;
  v113 = &v106 - v20;
  while (1)
  {
    v26 = v23;
    v27 = v23 + 1;
    v109 = v23;
    if (v23 + 1 < v22)
    {
      v28 = *v118;
      v29 = *(v116 + 72);
      i = v22;
      v120 = v23 + 1;
      a3 = v23;
      v30 = v28 + v29 * v27;
      v31 = v28;
      v115 = v28;
      sub_100085758(v30, v21);
      sub_100085758(v31 + v29 * a3, v19);
      v32 = *(v25 + 20);
      v33 = static Date.> infix(_:_:)();
      sub_10008587C(v19);
      sub_10008587C(v21);
      v34 = i;
      v35 = a3 + 2;
      v117 = v29;
      v36 = v115 + v29 * (a3 + 2);
      while (1)
      {
        v37 = v35;
        if (++v120 >= v34)
        {
          break;
        }

        sub_100085758(v36, v21);
        sub_100085758(v30, v19);
        v38 = *(v122 + 20);
        a3 = static Date.> infix(_:_:)() & 1;
        sub_10008587C(v19);
        sub_10008587C(v21);
        v36 += v117;
        v30 += v117;
        v35 = v37 + 1;
        v34 = i;
        if ((v33 & 1) != a3)
        {
          if (v33)
          {
            goto LABEL_8;
          }

LABEL_28:
          v25 = v122;
LABEL_29:
          v27 = v120;
          v26 = v109;
          goto LABEL_31;
        }
      }

      v120 = v34;
      if ((v33 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_8:
      v27 = v120;
      v26 = v109;
      if (v120 < v109)
      {
        goto LABEL_134;
      }

      if (v109 < v120)
      {
        i = v24;
        v106 = v5;
        if (v34 >= v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = v34;
        }

        v40 = v109;
        v41 = v117 * (v39 - 1);
        v42 = v117 * v39;
        v43 = v109 * v117;
        v25 = v122;
        do
        {
          if (v40 != --v27)
          {
            a3 = *v118;
            if (!*v118)
            {
              goto LABEL_141;
            }

            sub_100085818(a3 + v43, v112);
            v44 = v43 < v41 || a3 + v43 >= a3 + v42;
            if (v44)
            {
              sub_100087A08();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v43 != v41)
            {
              sub_100087A08();
              swift_arrayInitWithTakeBackToFront();
            }

            sub_100085818(v112, a3 + v41);
            v25 = v122;
          }

          ++v40;
          v41 -= v117;
          v42 -= v117;
          v43 += v117;
        }

        while (v40 < v27);
        v5 = v106;
        v24 = i;
        goto LABEL_29;
      }

      v25 = v122;
    }

LABEL_31:
    v45 = v118[1];
    if (v27 < v45)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_133;
      }

      if (v27 - v26 < v107)
      {
        break;
      }
    }

LABEL_49:
    if (v27 < v26)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v97 = *(v24 + 16);
      sub_100087968();
      sub_1000629B8();
      v24 = v98;
    }

    a3 = *(v24 + 16);
    v57 = a3 + 1;
    if (a3 >= *(v24 + 24) >> 1)
    {
      sub_1000629B8();
      v24 = v99;
    }

    *(v24 + 16) = v57;
    v58 = (v24 + 32);
    v59 = (v24 + 32 + 16 * a3);
    v60 = v120;
    *v59 = v109;
    v59[1] = v60;
    v117 = *v108;
    if (!v117)
    {
      goto LABEL_142;
    }

    if (a3)
    {
      i = v24;
      while (1)
      {
        v61 = v57 - 1;
        v62 = &v58[2 * v57 - 2];
        v63 = (v24 + 16 * v57);
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v64 = *(v24 + 32);
          v65 = *(v24 + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_70:
          if (v67)
          {
            goto LABEL_119;
          }

          v79 = *v63;
          v78 = v63[1];
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_122;
          }

          v83 = v62[1];
          v84 = v83 - *v62;
          if (__OFSUB__(v83, *v62))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v81, v84))
          {
            goto LABEL_127;
          }

          if (v81 + v84 >= v66)
          {
            if (v66 < v84)
            {
              v61 = v57 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v57 < 2)
        {
          goto LABEL_121;
        }

        v86 = *v63;
        v85 = v63[1];
        v74 = __OFSUB__(v85, v86);
        v81 = v85 - v86;
        v82 = v74;
LABEL_85:
        if (v82)
        {
          goto LABEL_124;
        }

        v88 = *v62;
        v87 = v62[1];
        v74 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v74)
        {
          goto LABEL_126;
        }

        if (v89 < v81)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v61 - 1 >= v57)
        {
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
          goto LABEL_136;
        }

        if (!*v118)
        {
          goto LABEL_139;
        }

        v93 = &v58[2 * v61 - 2];
        v94 = *v93;
        a3 = v61;
        v95 = &v58[2 * v61];
        v24 = v95[1];
        sub_100086DC8(*v118 + *(v116 + 72) * *v93, *v118 + *(v116 + 72) * *v95, *v118 + *(v116 + 72) * v24, v117);
        if (v5)
        {
          goto LABEL_112;
        }

        if (v24 < v94)
        {
          goto LABEL_114;
        }

        v5 = i[2];
        if (a3 > v5)
        {
          goto LABEL_115;
        }

        *v93 = v94;
        v93[1] = v24;
        if (a3 >= v5)
        {
          goto LABEL_116;
        }

        v57 = v5 - 1;
        memmove(v95, v95 + 2, 16 * (v5 - 1 - a3));
        v24 = i;
        i[2] = (v5 - 1);
        v96 = v5 > 2;
        v5 = 0;
        v25 = v122;
        v21 = v113;
        if (!v96)
        {
          goto LABEL_99;
        }
      }

      v68 = &v58[2 * v57];
      v69 = *(v68 - 8);
      v70 = *(v68 - 7);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_117;
      }

      v73 = *(v68 - 6);
      v72 = *(v68 - 5);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_118;
      }

      v75 = v63[1];
      v76 = v75 - *v63;
      if (__OFSUB__(v75, *v63))
      {
        goto LABEL_120;
      }

      v74 = __OFADD__(v66, v76);
      v77 = v66 + v76;
      if (v74)
      {
        goto LABEL_123;
      }

      if (v77 >= v71)
      {
        v91 = *v62;
        v90 = v62[1];
        v74 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v74)
        {
          goto LABEL_131;
        }

        if (v66 < v92)
        {
          v61 = v57 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v22 = v118[1];
    v23 = v120;
    if (v120 >= v22)
    {
      goto LABEL_102;
    }
  }

  v46 = v26 + v107;
  if (__OFADD__(v26, v107))
  {
    goto LABEL_135;
  }

  if (v46 >= v45)
  {
    v46 = v118[1];
  }

  if (v46 < v26)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v27 == v46)
  {
    goto LABEL_49;
  }

  i = v24;
  v106 = v5;
  a3 = *v118;
  v47 = *(v116 + 72);
  v48 = *v118 + v47 * (v27 - 1);
  v49 = -v47;
  v50 = v26 - v27;
  v110 = v47;
  v111 = v46;
  v51 = a3 + v27 * v47;
LABEL_40:
  v120 = v27;
  v114 = v51;
  v115 = v50;
  v117 = v48;
  v52 = v48;
  while (1)
  {
    sub_100085758(v51, v21);
    sub_100085758(v52, v19);
    v53 = *(v25 + 20);
    v54 = static Date.> infix(_:_:)();
    sub_10008587C(v19);
    sub_10008587C(v21);
    if ((v54 & 1) == 0)
    {
      v25 = v122;
LABEL_47:
      v27 = v120 + 1;
      v48 = v117 + v110;
      v50 = v115 - 1;
      v51 = v114 + v110;
      if (v120 + 1 == v111)
      {
        v27 = v111;
        v5 = v106;
        v24 = i;
        v26 = v109;
        goto LABEL_49;
      }

      goto LABEL_40;
    }

    if (!a3)
    {
      break;
    }

    v55 = v121;
    sub_100085818(v51, v121);
    v25 = v122;
    swift_arrayInitWithTakeFrontToBack();
    sub_100085818(v55, v52);
    v52 += v49;
    v51 += v49;
    v44 = __CFADD__(v50++, 1);
    if (v44)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

uint64_t sub_100086DC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for BindingsStore.Binding(0);
  v9 = *(*(v52 - 8) + 64);
  v10 = __chkstk_darwin(v52);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v15 = v46 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v55 = a1;
  v54 = a4;
  v21 = v19 / v17;
  v46[1] = v4;
  if ((a2 - a1) / v17 >= v19 / v17)
  {
    sub_100063638(a2, v19 / v17, a4);
    v27 = a4 + v21 * v17;
    v28 = -v17;
    v29 = v27;
    v30 = a3;
    v49 = v28;
    v50 = a4;
    v48 = a1;
LABEL_37:
    v31 = a2 + v28;
    v32 = v30;
    v46[0] = v29;
    v33 = v28;
    v51 = a2 + v28;
    while (1)
    {
      if (v27 <= a4)
      {
        v55 = a2;
        v53 = v29;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v47 = v29;
      v34 = v32 + v33;
      v35 = v27 + v33;
      v36 = v31;
      v37 = v27;
      sub_100085758(v27 + v33, v15);
      sub_100085758(v36, v12);
      v38 = sub_100087AD0();
      v39 = v12;
      v40 = v38;
      v41 = v39;
      sub_10008587C(v39);
      sub_10008587C(v15);
      if (v40)
      {
        v46[0] = v37;
        v43 = v32 < a2 || v34 >= a2;
        v30 = v32 + v33;
        if (v43)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v47;
          a1 = v48;
          v12 = v41;
          v28 = v49;
          a4 = v50;
          v27 = v46[0];
        }

        else
        {
          a1 = v48;
          v29 = v47;
          v18 = v32 == a2;
          a2 = v51;
          v12 = v41;
          v28 = v49;
          a4 = v50;
          v27 = v46[0];
          if (!v18)
          {
            a2 = v51;
            sub_1000878D4();
            v45 = v44;
            swift_arrayInitWithTakeBackToFront();
            v27 = v46[0];
            v29 = v45;
          }
        }

        goto LABEL_37;
      }

      if (v32 < v37 || v34 >= v37)
      {
        sub_1000878D4();
        swift_arrayInitWithTakeFrontToBack();
        v32 += v33;
        v27 = v35;
        v29 = v35;
        v12 = v41;
        v33 = v49;
        a4 = v50;
        v31 = v51;
        a1 = v48;
      }

      else
      {
        v29 = v35;
        v18 = v37 == v32;
        v32 += v33;
        v27 = v35;
        v12 = v41;
        v33 = v49;
        a4 = v50;
        v31 = v51;
        a1 = v48;
        if (!v18)
        {
          sub_1000878D4();
          swift_arrayInitWithTakeBackToFront();
          v31 = v51;
          v32 = v34;
          v27 = v35;
          v29 = v35;
        }
      }
    }

    v55 = a2;
    v53 = v46[0];
  }

  else
  {
    sub_100063638(a1, (a2 - a1) / v17, a4);
    v22 = a4 + (a2 - a1) / v17 * v17;
    v53 = v22;
    while (a4 < v22 && a2 < a3)
    {
      sub_100085758(a2, v15);
      sub_100085758(a4, v12);
      v24 = sub_100087AD0();
      sub_10008587C(v12);
      sub_10008587C(v15);
      if (v24)
      {
        if (a1 < a2 || a1 >= a2 + v17)
        {
          sub_1000878D4();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          sub_1000878D4();
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v17;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v17)
        {
          sub_1000878D4();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          sub_1000878D4();
          swift_arrayInitWithTakeBackToFront();
        }

        v54 = a4 + v17;
        a4 += v17;
      }

      a1 += v17;
      v55 = a1;
    }
  }

LABEL_59:
  sub_100087210(&v55, &v54, &v53, type metadata accessor for BindingsStore.Binding);
  return 1;
}

uint64_t sub_100087210(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  result = sub_1000774D8(v7);
  v10 = *(v9 + 72);
  if (!v10)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_20;
  }

  v12 = v5 + (v6 - v5) / v10 * v10;
  if (v4 < v5 || v4 >= v12)
  {
    sub_100087908();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    sub_100087908();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1000872E4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

id *sub_100087310(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000443DC(&unk_1006CB530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 16));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_100087444(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(type metadata accessor for BindingsStore.Binding(0) - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1000874EC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10008755C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1000875BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100087624(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_100087660()
{
  result = qword_1006CB5B8;
  if (!qword_1006CB5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB5B8);
  }

  return result;
}

uint64_t sub_1000876B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000876FC()
{
  result = qword_1006CB5F0;
  if (!qword_1006CB5F0)
  {
    sub_1000591B0(255, &qword_1006CB578, NSObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB5F0);
  }

  return result;
}

uint64_t sub_100087764(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000443DC(a3);
  sub_1000774D8(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000877C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CB5E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008785C()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000878A4()
{

  return swift_once();
}

uint64_t sub_1000878EC()
{

  return swift_dynamicCast();
}

uint64_t sub_100087930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{

  return sub_100087624(v15, a2, a15 & 1);
}

id *sub_100087990()
{

  return sub_1000BDEC4(0, v0, 0);
}

uint64_t sub_1000879B4()
{

  return swift_beginAccess();
}

uint64_t sub_100087A08()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

uint64_t sub_100087A50()
{
  v3 = *(*(*(v1 - 88) + 48) + 16 * v0 + 8);
}

BOOL sub_100087A70()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

id *sub_100087A90()
{
  if (!v1 & v0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return sub_1000BDEC4(v4, v2, 1);
}

uint64_t sub_100087AB0()
{

  return swift_beginAccess();
}

uint64_t sub_100087AD0()
{
  v2 = *(*(v0 - 104) + 20);

  return static Date.> infix(_:_:)();
}

BOOL sub_100087AF0(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_100076FB8(v5, &qword_1006CA130);
  return v3 != 0;
}

BOOL sub_100087B9C(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_100076FB8(v5, &qword_1006CA130);
  return v3 != 0;
}

uint64_t sub_100087C48()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CB600);
  sub_100046E6C(v0, qword_1006CB600);
  return Logger.init(subsystem:category:)();
}

id sub_100087CD8()
{
  result = [objc_allocWithZone(type metadata accessor for RavioliManagerObjC()) init];
  static RavioliManagerObjC.shared = result;
  return result;
}

uint64_t *RavioliManagerObjC.shared.unsafeMutableAddressor()
{
  if (qword_1006C97E8 != -1)
  {
    sub_100097EE4();
  }

  return &static RavioliManagerObjC.shared;
}

id static RavioliManagerObjC.shared.getter()
{
  if (qword_1006C97E8 != -1)
  {
    sub_100097EE4();
  }

  v1 = static RavioliManagerObjC.shared;

  return v1;
}

id sub_100087DBC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000443DC(&qword_1006C9E20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000443DC(&qword_1006CB720);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WalletMonitor();
  swift_allocObject();
  sub_10007D09C();
  sub_10007CBE4();

  v11 = sub_1000443DC(&qword_1006CB700);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = sub_100096B60(v10, 10000000000, v14);
  *&v1[OBJC_IVAR____TtC3asd18RavioliManagerObjC_manager] = v15;
  v20.receiver = v1;
  v20.super_class = ObjectType;

  v16 = objc_msgSendSuper2(&v20, "init");
  v17 = type metadata accessor for TaskPriority();
  sub_1000485F8(v6, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v15;
  sub_10006F27C(0, 0, v6, &unk_1005CD508, v18);

  return v16;
}

uint64_t RavioliManager.__allocating_init(trigger:updateCoalesceTimeNanoSeconds:fetcher:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  RavioliManager.init(trigger:updateCoalesceTimeNanoSeconds:fetcher:)(a1, a2, a3);
  return v9;
}

uint64_t sub_100087FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100088074;

  return sub_100091AC0();
}

uint64_t sub_100088074()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  return _swift_task_switch(sub_100088174, v3, 0);
}

uint64_t sub_100088174()
{
  sub_1000657D4();
  v1 = *(v0 + 16);
  sub_10008A5DC();
  sub_10006574C();

  return v2();
}

void RavioliManagerObjC.fetchRavioliDataFromStore(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000541C0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for UUID();
  v28 = sub_10004EAE0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v28);
  v33 = sub_1000443DC(&qword_1006C9E20);
  v34 = sub_100077674(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_10004EAF4();
  v39 = v38 - v37;
  v40 = *(v20 + OBJC_IVAR____TtC3asd18RavioliManagerObjC_manager);
  type metadata accessor for TaskPriority();
  sub_100097CFC();
  sub_1000485F8(v41, v42, v43, v44);
  v45 = *(v30 + 16);
  v46 = sub_100097AFC();
  v47(v46);
  v48 = (*(v30 + 80) + 40) & ~*(v30 + 80);
  v49 = swift_allocObject();
  v50 = sub_100098218(v49);
  (*(v30 + 32))(&v50[v48], &a9 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  v51 = (v49 + ((v32 + v48 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v51 = v26;
  v51[1] = v24;

  v52 = sub_100097A18();
  sub_10006F27C(v52, v53, v39, v54, v49);

  sub_100054088();
}

uint64_t sub_10008839C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000883C0, a4, 0);
}

uint64_t sub_1000883C0()
{
  sub_1000657D4();
  v2 = v0[2];
  v1 = v0[3];
  v0[6] = sub_10008CDA4();
  v0[7] = v3;
  sub_1000658F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100088424()
{
  sub_1000657EC();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = sub_1000488FC();
  v6(v5);
  v7 = sub_1000488FC();
  sub_10004489C(v7, v8);
  sub_10006574C();

  return v9();
}

void sub_1000885CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  (*(a3 + 16))(a3);
}

uint64_t sub_100088638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1000772D0(sub_100088658, 0);
}

uint64_t sub_100088658()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC3asd18RavioliManagerObjC_manager);
  *(v0 + 48) = v1;
  return sub_1000772D0(sub_100088680, v1);
}

uint64_t sub_100088680()
{
  sub_1000657D4();
  v1 = v0[6];
  sub_10008F314(v0[2], v0[3], v0[4]);
  sub_10006574C();

  return v2();
}

void RavioliManagerObjC.requestRavioliFetchWithProbabiliticThrottle(bagID:notificationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000541C0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for UUID();
  v30 = sub_10004EAE0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  v35 = sub_1000443DC(&qword_1006C9E20);
  v36 = sub_100077674(v35);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  sub_10004EAF4();
  v41 = v40 - v39;
  type metadata accessor for TaskPriority();
  sub_100097CFC();
  sub_1000485F8(v42, v43, v44, v45);
  (*(v32 + 16))(&a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v29);
  v46 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v47 = swift_allocObject();
  v48 = sub_100098218(v47);
  (*(v32 + 32))(&v48[v46], &a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
  v49 = (v47 + ((v34 + v46 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v49 = v26;
  v49[1] = v24;
  v50 = v20;

  v51 = sub_100097A18();
  sub_10006F27C(v51, v52, v41, v53, v47);

  sub_100054088();
}

uint64_t sub_100088884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  return _swift_task_switch(sub_1000888A8, 0, 0);
}

uint64_t sub_1000888A8()
{
  sub_1000657EC();
  if (qword_1006C9818 != -1)
  {
    sub_1000878A4();
  }

  sub_100097F28();
  v1 = static ASDConfigurationManager.shared;
  sub_10009851C();

  sub_1000981C8();
  if (v2 || (v3 = *(v0 + 44), v4 = *(v0 + 48), sub_100076FB8(v0 + 16, &qword_1006CAC08), (v4 & 1) != 0) || (sub_10009CFC4(), v3 >= v5))
  {
    v18 = swift_task_alloc();
    *(v0 + 168) = v18;
    *v18 = v0;
    v18[1] = sub_100088A74;
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v21 = *(v0 + 136);
    v22 = sub_100097E58(*(v0 + 144));

    return sub_100088638(v22, v23, v24);
  }

  else
  {
    if (qword_1006C97E0 != -1)
    {
      sub_1000978B8();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100097D98(v6, qword_1006CB600);
    v7 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v8 = sub_100097B0C();
    if (os_log_type_enabled(v8, v9))
    {
      sub_100097B40();
      v10 = swift_slowAlloc();
      sub_100077908(v10);
      sub_100077394();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      sub_100097AB8();
    }

    sub_10006574C();

    return v16();
  }
}

uint64_t sub_100088A74()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 168);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  sub_10006574C();

  return v5();
}

void RavioliManagerObjC.triggerRavioliFetch(bagID:notificationId:completion:)()
{
  sub_1000541C0();
  v38 = v2;
  v39 = v3;
  v5 = v4;
  v37 = v6;
  v8 = v7;
  v9 = type metadata accessor for UUID();
  v10 = sub_10004EAE0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000443DC(&qword_1006C9E20);
  v17 = sub_100077674(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_10004EAF4();
  sub_10004ED04();
  v20 = *(v0 + OBJC_IVAR____TtC3asd18RavioliManagerObjC_manager);
  type metadata accessor for TaskPriority();
  sub_100097CFC();
  sub_1000485F8(v21, v22, v23, v24);
  (*(v12 + 16))(v15, v8, v9);
  v25 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = sub_100098218(v27);
  (*(v12 + 32))(&v28[v25], v15, v9);
  v29 = (v27 + v26);
  v30 = v38;
  *v29 = v37;
  v29[1] = v5;
  v31 = (v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8));
  v32 = v39;
  *v31 = v30;
  v31[1] = v32;

  v33 = sub_100097A18();
  sub_10006F27C(v33, v34, v1, v35, v27);

  sub_100054088();
}

uint64_t sub_100088E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return _swift_task_switch(sub_100088E70, a4, 0);
}

uint64_t sub_100088E70()
{
  sub_1000657D4();
  v1 = v0[2];
  sub_10008F55C(v0[3], v0[4], v0[5], 1);
  sub_1000658F8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100088ED8()
{
  sub_1000657D4();
  v1 = *(v0 + 56);
  (*(v0 + 48))();
  sub_10006574C();

  return v2();
}

uint64_t sub_100089200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v15;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_1000892C0;

  return sub_10008DA84(a5, a6, a7);
}

uint64_t sub_1000892C0()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = *(v2 + 32);
  v4 = *v1;
  sub_1000655F4();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000893C0()
{
  sub_1000657D4();
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  sub_10006574C();

  return v2();
}

uint64_t sub_100089420()
{
  sub_1000657EC();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  swift_errorRetain();
  v3(v1);

  sub_10006574C();

  return v4();
}

void sub_1000894D8()
{
  sub_1000541C0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for UUID();
  v9 = sub_10004EAE0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10004EAF4();
  v16 = v15 - v14;
  v17 = _Block_copy(v5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  sub_100098238();
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  v22 = v7;
  v1(v16, v18, v20, v3, v21);

  (*(v11 + 8))(v16, v8);
  sub_100054088();
}

void sub_100089618(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_100089690()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1006C97E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100046E6C(v3, qword_1006CB600);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "DefinedRavioliNotificationIds should not be initialised", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_1000898C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_1000772D0(sub_1000898E0, 0);
}

uint64_t sub_1000898E0()
{
  sub_1000657EC();
  v1 = v0[4];
  v2 = [objc_opt_self() ephemeralSessionConfiguration];
  v0[5] = v2;
  v3 = [objc_allocWithZone(AKAppleIDSession) init];
  [v2 set_appleIDContext:v3];

  v4 = [objc_opt_self() sessionWithConfiguration:v2];
  v0[6] = v4;
  type metadata accessor for RavioliFetcher(0);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100089A38;
  v6 = v0[3];
  v7 = sub_100097E58(v0[2]);

  return sub_1000D2B68(v7, v4, v8, v9, v10, v1);
}

uint64_t sub_100089A38()
{
  sub_100068324();
  v3 = v2;
  v5 = v4;
  sub_1000657F8();
  v7 = v6;
  sub_10006564C();
  *v8 = v7;
  v10 = *(v9 + 56);
  v11 = *v1;
  sub_1000655F4();
  *v12 = v11;
  v7[8] = v0;

  if (!v0)
  {
    v7[9] = v3;
    v7[10] = v5;
  }

  sub_1000658F8();
  sub_10006ED0C();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100089B4C()
{
  sub_1000657D4();
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  return v2(v3, v4);
}

uint64_t sub_100089BB4()
{
  sub_1000657D4();
  v1 = *(v0 + 40);

  sub_10006574C();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_100089C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100089CC0;

  return sub_1000898C0(a1, a2, a3);
}

uint64_t sub_100089CC0()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_1000655F4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = sub_1000488FC();
  }

  return v7(v6);
}

char *RavioliManager.init(trigger:updateCoalesceTimeNanoSeconds:fetcher:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  swift_defaultActor_initialize();
  sub_100097C48();
  v9 = *(v8 + 112);
  type metadata accessor for UUID();
  sub_1000443DC(&qword_1006C9870);
  sub_1000978CC();
  sub_100097640(v10, v11);
  *&v3[v9] = sub_10009832C();
  sub_100097C48();
  *&v3[*(v12 + 128)] = 0;
  sub_100097C48();
  v14 = *(v13 + 136);
  *&v3[v14] = sub_10009832C();
  sub_100097C48();
  *&v3[*(v15 + 144)] = a2;
  sub_100097C48();
  v17 = *(v7 + 80);
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v3[*(v16 + 104)], a1, v17);
  sub_100097C48();
  sub_1000446C4(a3, &v3[*(v19 + 152)]);
  v23 = type metadata accessor for ASAnalyticsManager();
  v24 = &off_1006935C8;
  *&v22 = swift_allocObject();
  sub_100044850(a3);
  (*(v18 + 8))(a1, v17);
  sub_100097C48();
  sub_100046D90(&v22, &v3[*(v20 + 160)]);
  return v3;
}

uint64_t sub_100089FC8()
{
  sub_100098070();
  sub_10006ECA0();
  v0 = sub_100097F44();
  sub_1000474C0(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  sub_100097CB4();
  sub_100097AA4(v5);
  v6 = swift_task_alloc();
  v7 = sub_100097AC4(v6);
  *v7 = v8;
  v7[1] = sub_100065570;
  sub_1000978E4();
  sub_1000980C8();

  return sub_10008839C(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_10008A0AC()
{
  v2 = type metadata accessor for UUID();
  sub_10004EAE0(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_100097C94();
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = sub_100097C84();
  v9(v8);
  v10 = *(v0 + v1 + 8);

  v11 = sub_1000980BC();

  return _swift_deallocObject(v11, v12, v13);
}

uint64_t sub_10008A170()
{
  sub_100098070();
  sub_10006ECA0();
  v0 = sub_100097F44();
  sub_1000474C0(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  sub_100097CB4();
  sub_100097AA4(v5);
  v6 = swift_task_alloc();
  v7 = sub_100097AC4(v6);
  *v7 = v8;
  v7[1] = sub_100065570;
  sub_1000978E4();
  sub_1000980C8();

  return sub_100088884(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_10008A254()
{
  sub_100097F98();
  v1 = type metadata accessor for UUID();
  sub_1000474C0(v1);
  sub_100097AA4((*(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v0 + v4);
  v5 = *(v0 + v4 + 8);
  v7 = swift_task_alloc();
  v8 = sub_100097AC4(v7);
  *v8 = v9;
  v8[1] = sub_100065570;
  sub_1000978E4();
  sub_100097DB0();

  return sub_100088E40(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_10008A378()
{
  v2 = type metadata accessor for UUID();
  sub_10004EAE0(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_100097C94();
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v9 = sub_100097C84();
  v10(v9);
  v11 = *(v0 + v1 + 8);

  v12 = *(v0 + ((v1 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  v13 = sub_1000980BC();

  return _swift_deallocObject(v13, v14, v15);
}

uint64_t sub_10008A458()
{
  sub_100097F98();
  v1 = type metadata accessor for UUID();
  sub_1000474C0(v1);
  sub_100097AA4((*(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v0 + v4);
  v5 = *(v0 + v4 + 8);
  v7 = swift_task_alloc();
  v8 = sub_100097AC4(v7);
  *v8 = v9;
  v8[1] = sub_100065570;
  sub_1000978E4();
  sub_100097DB0();

  return sub_100089200(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_10008A578()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008A5B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

void sub_10008A5DC()
{
  v1 = v0;
  v2 = sub_1000443DC(&qword_1006CB720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000443DC(&qword_1006C9E20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006C97E0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100046E6C(v10, qword_1006CB600);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "start Calzone Monitor", v13, 2u);
  }

  v14 = *(*v0 + 128);
  if (*(v0 + v14))
  {
    v27 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v27, v15, "Tried to start already running Calzone monitor - ignored", v16, 2u);
    }

    v17 = v27;
  }

  else
  {
    v18 = *(*v0 + 104);
    v19 = type metadata accessor for TaskPriority();
    sub_1000485F8(v9, 1, 1, v19);
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v3 + 16))(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + v18, v2);
    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22 = (v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    (*(v3 + 32))(v23 + v21, v5, v2);
    *(v23 + v22) = v20;
    v24 = sub_10006F27C(0, 0, v9, &unk_1005CD520, v23);
    v25 = *(v1 + v14);
    *(v1 + v14) = v24;
  }
}

Swift::Void __swiftcall RavioliManager.startWalletMonitor()()
{
  sub_1000541C0();
  v2 = v0;
  v39 = *v0;
  isa = v39[10].isa;
  sub_100097900();
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = sub_1000443DC(&qword_1006C9E20);
  v12 = sub_100077674(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_10004EAF4();
  sub_10004ED04();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100097D98(v15, qword_1006CB600);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    sub_100097B40();
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "start Calzone Monitor", v18, 2u);
    sub_100097AB8();
  }

  v19 = *(*v0 + 128);
  if (*(v0 + v19))
  {
    v39 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v20))
    {
      sub_100097B40();
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v39, v20, "Tried to start already running Calzone monitor - ignored", v21, 2u);
      sub_100097AB8();
    }

    sub_100054088();
  }

  else
  {
    v24 = *(*v0 + 104);
    type metadata accessor for TaskPriority();
    sub_100097CFC();
    sub_1000485F8(v25, v26, v27, v28);
    sub_100098238();
    v29 = swift_allocObject();
    swift_weakInit();
    (*(v5 + 16))(v10, v2 + v24, isa);
    v30 = (*(v5 + 80) + 48) & ~*(v5 + 80);
    v31 = (v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v32[2].isa = 0;
    v32[3].isa = 0;
    v32[4].isa = isa;
    v32[5].isa = v39[11].isa;
    (*(v5 + 32))(v32 + v30, v10, isa);
    *(&v32->isa + v31) = v29;
    v33 = sub_100097A18();
    v36 = sub_10006F27C(v33, v34, v1, v35, v32);
    v37 = *(v2 + v19);
    *(v2 + v19) = v36;

    sub_100054088();
  }
}

uint64_t sub_10008ACE4()
{
  swift_weakDestroy();
  sub_100098238();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10008AD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v6 = *(*(sub_1000443DC(&qword_1006CA4A0) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[29] = v7;
  v8 = *(v7 - 8);
  v5[30] = v8;
  v9 = *(v8 + 64) + 15;
  v5[31] = swift_task_alloc();
  v10 = sub_1000443DC(&qword_1006CB720);
  v5[32] = v10;
  v11 = *(v10 - 8);
  v5[33] = v11;
  v12 = *(v11 + 64) + 15;
  v5[34] = swift_task_alloc();
  v13 = sub_1000443DC(&qword_1006CB728);
  v5[35] = v13;
  v14 = *(v13 - 8);
  v5[36] = v14;
  v15 = *(v14 + 64) + 15;
  v5[37] = swift_task_alloc();

  return _swift_task_switch(sub_10008AEC8, 0, 0);
}

uint64_t sub_10008AEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000657EC();
  v15 = v14[37];
  v16 = v14[27];
  (*(v14[33] + 16))(v14[34], v14[26], v14[32]);
  sub_1000472E0(&qword_1006CB730, &qword_1006CB720);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  sub_1000879B4();
  sub_100097A28(&qword_1006CB738, &qword_1006CB728);
  v17 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  swift_task_alloc();
  sub_10007743C();
  v14[38] = v18;
  *v18 = v19;
  v20 = sub_100097950(v18);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10008AFC8()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 304);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  sub_1000658F8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10008B654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100098024();
  sub_100097F98();
  if (!_getErrorEmbeddedNSError<A>(_:)())
  {
    swift_allocError();
  }

  (*(v12[36] + 8))(v12[37], v12[35]);
  sub_100098288();
  if (!v13)
  {
    sub_1000978B8();
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100097D98(v14, qword_1006CB600);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    sub_100097B58();
    v17 = swift_slowAlloc();
    sub_100097B4C();
    a9 = swift_slowAlloc();
    sub_1000983AC(4.8149e-34);
    v19 = v12[17];
    v18 = v12[18];
    v20 = v12[19];
    Error.localizedDescription.getter();
    v21 = sub_100052F7C();

    *(v17 + 4) = v21;
    sub_10009838C(&_mh_execute_header, v22, v23, "Error in Calzone monitoring: %s");
    sub_100044850(a9);
    sub_100097AB8();

    sub_100097AB8();
  }

  else
  {
  }

  sub_100098288();
  if (!v13)
  {
    sub_1000978B8();
    swift_once();
  }

  sub_100097D98(v14, qword_1006CB600);
  v24 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  v25 = sub_100097B0C();
  if (os_log_type_enabled(v25, v26))
  {
    sub_100097B40();
    v27 = swift_slowAlloc();
    sub_100077908(v27);
    sub_100077394();
    _os_log_impl(v28, v29, v30, v31, v32, 2u);
    sub_100097AB8();
  }

  sub_1000983EC();

  sub_10006574C();
  sub_100097DB0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_10008B8A0()
{
  sub_1000657D4();
  v1 = *(v0 + 320);
  v2 = *(v0 + 248);
  sub_1000980EC();
  sub_10008F55C(v3, v4, v5, v6);
  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10008BBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  v9 = *(*(sub_1000443DC(&qword_1006CA4A0) - 8) + 64) + 15;
  v7[30] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v7[31] = v10;
  v11 = *(v10 - 8);
  v7[32] = v11;
  v12 = *(v11 + 64) + 15;
  v7[33] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[34] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v7[35] = v14;
  v15 = *(v14 + 64) + 15;
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v16 = *(a6 - 8);
  v7[38] = v16;
  v17 = *(v16 + 64) + 15;
  v7[39] = swift_task_alloc();
  v18 = swift_getAssociatedTypeWitness();
  v7[40] = v18;
  v19 = *(v18 - 8);
  v7[41] = v19;
  v20 = *(v19 + 64) + 15;
  v7[42] = swift_task_alloc();

  return _swift_task_switch(sub_10008BDF0, 0, 0);
}

uint64_t sub_10008BDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100068324();
  v15 = v14[42];
  v16 = v14[29];
  v17 = v14[27];
  (*(v14[38] + 16))(v14[39], v14[26], v14[28]);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  sub_1000879B4();
  v18 = v14[40];
  v20 = v14[28];
  v19 = v14[29];
  v14[43] = swift_getAssociatedConformanceWitness();
  v21 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  swift_task_alloc();
  sub_10007743C();
  v14[44] = v22;
  *v22 = v23;
  sub_100097910(v22);
  sub_10006ED0C();

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10008BED8()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 352);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  sub_1000658F8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10008C584()
{
  sub_1000657D4();
  v1 = *(v0 + 368);
  v2 = *(v0 + 264);
  sub_1000980EC();
  sub_10008FA20();
  sub_1000658F8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10008C894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100098024();
  sub_100097F98();
  v13 = v12[43];
  v14 = v12[40];
  v15 = *(v12[35] + 32);
  v15(v12[36], v12[37], v12[34]);
  sub_100087908();
  swift_getAssociatedConformanceWitness();
  sub_100097AFC();
  v16 = _getErrorEmbeddedNSError<A>(_:)();
  v17 = v12[36];
  if (v16)
  {
    (*(v12[35] + 8))(v12[36], v12[34]);
  }

  else
  {
    v18 = v12[34];
    swift_allocError();
    v15(v19, v17, v18);
  }

  (*(v12[41] + 8))(v12[42], v12[40]);
  sub_100098288();
  if (!v20)
  {
    sub_1000978B8();
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100097D98(v21, qword_1006CB600);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    sub_100097B58();
    v24 = swift_slowAlloc();
    sub_100097B4C();
    a9 = swift_slowAlloc();
    sub_1000983AC(4.8149e-34);
    v26 = v12[17];
    v25 = v12[18];
    v27 = v12[19];
    Error.localizedDescription.getter();
    v28 = sub_100052F7C();

    *(v24 + 4) = v28;
    sub_10009838C(&_mh_execute_header, v29, v30, "Error in Calzone monitoring: %s");
    sub_100044850(a9);
    sub_100097AB8();

    sub_100097AB8();
  }

  else
  {
  }

  sub_100098288();
  if (!v20)
  {
    sub_1000978B8();
    swift_once();
  }

  sub_100097D98(v21, qword_1006CB600);
  v31 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  v32 = sub_100097B0C();
  if (os_log_type_enabled(v32, v33))
  {
    sub_100097B40();
    v34 = swift_slowAlloc();
    sub_100077908(v34);
    sub_100077394();
    _os_log_impl(v35, v36, v37, v38, v39, 2u);
    sub_100097AB8();
  }

  sub_100098104();

  sub_10006574C();
  sub_100097DB0();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_10008CB64()
{
  v2 = *(v0 + 32);
  sub_100097900();
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_100097C94();
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = sub_100097C84();
  v9(v8);
  v10 = *(v0 + v1);

  v11 = sub_1000980BC();

  return _swift_deallocObject(v11, v12, v13);
}

uint64_t sub_10008CC18()
{
  sub_100098070();
  sub_10006ECA0();
  v1 = v0[4];
  v2 = v0[5];
  sub_100097900();
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_100097CB4();
  v7 = v0[2];
  v8 = v0[3];
  v10 = *(v0 + v9);
  v11 = swift_task_alloc();
  v12 = sub_10006EB38(v11);
  *v12 = v13;
  v12[1] = sub_100065570;
  sub_1000980C8();

  return sub_10008BBA4(v14, v15, v16, v17, v18, v19, v20);
}

Swift::Void __swiftcall RavioliManager.stopWalletMonitor()()
{
  sub_100097C48();
  v2 = *(v1 + 128);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);

    Task.cancel()();

    v4 = *(v0 + v2);
  }

  *(v0 + v2) = 0;
}

uint64_t sub_10008CDA4()
{
  v0 = sub_10008D1A8();
  v2 = v1;
  if (v1 >> 60 != 15)
  {
    v3 = type metadata accessor for JSONDecoder();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_10005CB58();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    if (v24 == 1 && (, v6 = Data.init(base64Encoded:options:)(), v8 = v7, , v8 >> 60 != 15))
    {

      v22 = Data.init(base64Encoded:options:)();
      v17 = v16;

      if (v17 >> 60 == 15)
      {
      }

      else
      {
        v21 = Data.init(base64Encoded:options:)();
        v19 = v18;

        if (v19 >> 60 != 15)
        {
          v20 = sub_10005CC00(v21, v19, v6, v8, v22, v17);
          sub_10004489C(v21, v19);
          sub_10004489C(v22, v17);
          sub_10004489C(v6, v8);
          sub_10004489C(v0, v2);
          return v20;
        }

        sub_10004489C(v22, v17);
      }

      sub_10004489C(v6, v8);
    }

    else
    {
    }

    sub_10005CBAC();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();
    if (qword_1006C97E0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100046E6C(v10, qword_1006CB600);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v13 = 136315138;
      swift_getErrorValue();
      Error.localizedDescription.getter();
      v14 = sub_100052F7C();

      *(v13 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error verifying stored Ravioli: %s", v13, 0xCu);
      sub_100044850(v23);

      sub_10004489C(v0, v2);
    }

    else
    {
      sub_10004489C(v0, v2);
    }

    return 0;
  }

  return v0;
}

uint64_t sub_10008D1A8()
{
  v0 = [objc_opt_self() sharedInstance];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v2 = [v0 f55HW2T4cquHq2nn:isa];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10008D250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10008D274, v3, 0);
}

uint64_t sub_10008D274()
{
  sub_100068324();
  v1 = v0[5];
  v0[6] = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = 0;
  sub_100097C48();
  v4 = (v1 + *(v3 + 152));
  v5 = v4[4];
  sub_100044728(v4, v4[3]);
  sub_100097FA4();
  v14 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_10008D3C4;
  v10 = v0[3];
  v11 = v0[4];
  v12 = sub_100097E58(v0[2]);

  return v14(v12);
}

uint64_t sub_10008D3C4()
{
  sub_100068324();
  sub_1000981D4();
  sub_1000655F4();
  *v5 = v4;
  v6 = v4[8];
  *v5 = *v2;
  v4[9] = v1;

  v7 = v4[5];
  if (v1)
  {
    v8 = sub_1000978B0;
  }

  else
  {
    v4[10] = v0;
    v4[11] = v3;
    v8 = sub_100097894;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10008D4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1000772D0(sub_10008D50C, v3);
}

uint64_t sub_10008D50C()
{
  sub_100068324();
  v1 = v0[5];
  v0[6] = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = 0;
  sub_100097C48();
  v4 = (v1 + *(v3 + 152));
  v5 = v4[4];
  sub_100044728(v4, v4[3]);
  sub_100097FA4();
  v14 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_10008D65C;
  v10 = v0[3];
  v11 = v0[4];
  v12 = sub_100097E58(v0[2]);

  return v14(v12);
}

uint64_t sub_10008D65C()
{
  sub_100068324();
  sub_1000981D4();
  sub_1000655F4();
  *v5 = v4;
  v6 = v4[8];
  *v5 = *v2;
  v4[9] = v1;

  v7 = v4[5];
  if (v1)
  {
    v8 = sub_10008D800;
  }

  else
  {
    v4[10] = v0;
    v4[11] = v3;
    v8 = sub_10008D784;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10008D784()
{
  sub_1000657D4();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  *(v2 + 16) = 1;
  sub_10008D86C(v1, v3, v2);

  v4 = v0[1];
  v6 = v0[10];
  v5 = v0[11];

  return v4(v5, v6);
}

uint64_t sub_10008D800()
{
  sub_1000657D4();
  sub_10008D86C(v0[6], v0[5], v0[7]);

  sub_10006574C();
  v2 = v0[9];

  return v1();
}

void sub_10008D86C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ASAnalyticsEvent();
  v7 = sub_1000774D8(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10004EAF4();
  v12 = v11 - v10;
  v13 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (v13 < a1)
  {
    __break(1u);
  }

  else
  {
    v3 = (v13 - a1) / 1000000000.0;
    sub_1000879B4();
    *v12 = *(a3 + 16);
    *(v12 + 8) = v3;
    sub_1000981E8();
    swift_storeEnumTagMultiPayload();
    sub_1000C4148(v12);
    sub_100097E64();
    if (qword_1006C97E0 == -1)
    {
      goto LABEL_3;
    }
  }

  sub_1000978B8();
  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  sub_100097D98(v14, qword_1006CB600);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    sub_100097B4C();
    v19 = swift_slowAlloc();
    *v17 = 136315394;
    sub_1000879B4();
    *(a3 + 16);
    *(a3 + 16);
    v18 = sub_100052F7C();

    *(v17 + 4) = v18;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v15, v16, "Ravioli request %s taking %f seconds", v17, 0x16u);
    sub_100044850(v19);
    sub_1000979A4();

    sub_100097AB8();
  }
}

uint64_t sub_10008DA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10008DAA8, v3, 0);
}

uint64_t sub_10008DAA8()
{
  sub_1000657EC();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100097D98(v1, qword_1006CB600);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = sub_100097B0C();
  if (os_log_type_enabled(v3, v4))
  {
    sub_100097B40();
    v5 = swift_slowAlloc();
    sub_100077908(v5);
    sub_100077394();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_100097AB8();
  }

  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_10008DBCC;
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[3];
  v15 = sub_100097E58(v0[2]);

  return sub_10008D250(v15, v16, v17);
}

uint64_t sub_10008DBCC()
{
  sub_100068324();
  v3 = v2;
  v5 = v4;
  sub_1000657F8();
  v7 = v6;
  sub_10006564C();
  *v8 = v7;
  v10 = *(v9 + 48);
  v11 = *v1;
  sub_1000655F4();
  *v12 = v11;
  v7[7] = v0;

  if (v0)
  {
    v13 = *(v11 + 8);
    sub_10006ED0C();

    __asm { BRAA            X1, X16 }
  }

  v16 = v7[5];
  v7[8] = v3;
  v7[9] = v5;
  sub_10006ED0C();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_10008DD0C()
{
  sub_100068324();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  sub_10008E0AC(v1, v2, v0[2]);
  sub_1000448B0(v1, v2);
  sub_10006574C();

  return v5();
}

uint64_t sub_10008DDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1000772D0(sub_10008DDC4, v3);
}

uint64_t sub_10008DDC4()
{
  sub_1000657EC();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100097D98(v1, qword_1006CB600);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = sub_100097B0C();
  if (os_log_type_enabled(v3, v4))
  {
    sub_100097B40();
    v5 = swift_slowAlloc();
    sub_100077908(v5);
    sub_100077394();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_100097AB8();
  }

  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_10008DEE8;
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[3];
  v15 = sub_100097E58(v0[2]);

  return sub_10008D4EC(v15, v16, v17);
}

uint64_t sub_10008DEE8()
{
  sub_100068324();
  v3 = v2;
  v5 = v4;
  sub_1000657F8();
  v7 = v6;
  sub_10006564C();
  *v8 = v7;
  v10 = *(v9 + 48);
  v11 = *v1;
  sub_1000655F4();
  *v12 = v11;
  v7[7] = v0;

  if (v0)
  {
    v13 = *(v11 + 8);
    sub_10006ED0C();

    __asm { BRAA            X1, X16 }
  }

  v16 = v7[5];
  v7[8] = v3;
  v7[9] = v5;
  sub_10006ED0C();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_10008E028()
{
  sub_1000657EC();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_100087908();
  sub_10008EA5C(v5, v6, v7);
  v8 = sub_100087908();
  sub_1000448B0(v8, v9);
  sub_10006574C();

  return v10();
}

void sub_10008E0AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for String.Encoding();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v75 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for JSONDecoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10005CB58();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {

LABEL_14:
    if (qword_1006C97E0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100046E6C(v26, qword_1006CB600);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v74 = a1;
      v31 = a2;
      v32 = v30;
      v76[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      Error.localizedDescription.getter();
      v33 = sub_100052F7C();

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error verifying or storing Ravioli: %s", v29, 0xCu);
      sub_100044850(v32);
      a2 = v31;
      a1 = v74;
    }

    sub_100046D38(a1, a2);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    sub_1000448B0(a1, a2);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v76[0] = v37;
      *v36 = 136315138;
      static String.Encoding.utf8.getter();
      String.init(data:encoding:)();
      v38 = sub_100052F7C();

      *(v36 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "Ravioli data was: %s", v36, 0xCu);
      sub_100044850(v37);
    }

    swift_willThrow();
    return;
  }

  v74 = a3;

  if (v76[6] != 1)
  {

LABEL_13:
    sub_10005CBAC();
    swift_allocError();
    *v25 = 3;
    swift_willThrow();
    goto LABEL_14;
  }

  v73 = a2;
  v69 = v11;
  v70 = v76[0];

  v71 = Data.init(base64Encoded:options:)();
  v19 = v18;

  v72 = v19;
  if (v19 >> 60 == 15)
  {

LABEL_12:
    a2 = v73;
    goto LABEL_13;
  }

  v20 = Data.init(base64Encoded:options:)();
  v22 = v21;

  if (v22 >> 60 == 15)
  {

LABEL_11:
    sub_10004489C(v71, v72);
    goto LABEL_12;
  }

  v68 = v20;
  v70 = Data.init(base64Encoded:options:)();
  v24 = v23;

  if (v24 >> 60 == 15)
  {
    sub_10004489C(v68, v22);
    goto LABEL_11;
  }

  v39 = v71;
  v40 = v22;
  v41 = v72;
  v42 = v68;
  v43 = sub_10005CC00(v70, v24, v71, v72, v68, v40);
  sub_1000448B0(v43, v44);
  sub_10004489C(v70, v24);
  sub_10004489C(v42, v40);
  sub_10004489C(v39, v41);
  if (qword_1006C97E0 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  v75 = sub_100046E6C(v45, qword_1006CB600);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v69;
  if (v48)
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Verified response", v50, 2u);
  }

  v51 = [objc_opt_self() sharedInstance];
  v52 = v74;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v54 = Data._bridgeToObjectiveC()().super.isa;
  v76[0] = 0;
  [v51 c94QZ147F1UWY71l:isa jkjlhN0UgO78kW6q:v54 error:v76];

  v55 = v76[0];
  if (v76[0])
  {
    (*(v49 + 16))(v14, v52, v10);
    v56 = v55;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v72 = v56;
      v60 = v59;
      v74 = swift_slowAlloc();
      v76[0] = v74;
      *v60 = 136315394;
      sub_100097640(&qword_1006CB708, &type metadata accessor for UUID);
      LODWORD(v73) = v58;
      dispatch thunk of CustomStringConvertible.description.getter();
      (*(v49 + 8))(v14, v10);
      v61 = sub_100052F7C();

      *(v60 + 4) = v61;
      *(v60 + 12) = 2080;
      v62 = v72;
      v63 = [v72 localizedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v64 = sub_100052F7C();

      *(v60 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v57, v73, "Error storing Ravioli data for bag: %s. Error: %s ", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v49 + 8))(v14, v10);
    }
  }

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "Stored Ravioli", v67, 2u);
  }
}

void sub_10008EA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for String.Encoding();
  v6 = sub_100077674(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  v9 = type metadata accessor for UUID();
  v10 = sub_10004EAE0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10004EAF4();
  v17 = v16 - v15;
  v18 = type metadata accessor for JSONDecoder();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10005CB58();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {

LABEL_13:
    if (qword_1006C97E0 != -1)
    {
      sub_1000978B8();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100046E6C(v29, qword_1006CB600);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      sub_100097B58();
      v32 = swift_slowAlloc();
      sub_100097B4C();
      v33 = swift_slowAlloc();
      v95[0] = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      Error.localizedDescription.getter();
      v34 = sub_100052F7C();

      *(v32 + 4) = v34;
      sub_100098058();
      _os_log_impl(v35, v36, v37, v38, v39, v40);
      sub_100044850(v33);
      sub_100097AB8();

      sub_100097AB8();
    }

    v41 = sub_1000657E0();
    sub_100046D38(v41, v42);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    v45 = sub_1000657E0();
    sub_1000448B0(v45, v46);
    if (os_log_type_enabled(v43, v44))
    {
      sub_100097B58();
      v47 = swift_slowAlloc();
      sub_100097B4C();
      v48 = swift_slowAlloc();
      v95[0] = v48;
      *v47 = 136315138;
      static String.Encoding.utf8.getter();
      sub_1000657E0();
      String.init(data:encoding:)();
      v49 = sub_100052F7C();

      *(v47 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "Ravioli data was: %s", v47, 0xCu);
      sub_100044850(v48);
      sub_100097AB8();

      sub_100097AB8();
    }

    swift_willThrow();
    return;
  }

  v94 = a3;

  if (v95[6] != 1 || (v88 = v12, , sub_1000981E8(), v90 = Data.init(base64Encoded:options:)(), v22 = v21, , v91 = v22, v22 >> 60 == 15))
  {

LABEL_12:
    sub_10005CBAC();
    swift_allocError();
    *v28 = 3;
    swift_willThrow();
    goto LABEL_13;
  }

  v23 = Data.init(base64Encoded:options:)();
  v25 = v24;

  if (v25 >> 60 == 15)
  {

LABEL_11:
    sub_10004489C(v90, v91);
    goto LABEL_12;
  }

  v87 = v23;
  v89 = Data.init(base64Encoded:options:)();
  v27 = v26;

  if (v27 >> 60 == 15)
  {
    sub_10004489C(v87, v25);
    goto LABEL_11;
  }

  v50 = sub_10005CC00(v89, v27, v90, v91, v87, v25);
  sub_1000448B0(v50, v51);
  sub_100098140();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_100046E6C(v52, qword_1006CB600);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  v55 = sub_100097B0C();
  if (os_log_type_enabled(v55, v56))
  {
    sub_100097B40();
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Verified response", v57, 2u);
    sub_100097AB8();
  }

  v58 = [objc_opt_self() sharedInstance];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_1000657E0();
  v60 = Data._bridgeToObjectiveC()().super.isa;
  v95[0] = 0;
  [v58 c94QZ147F1UWY71l:isa jkjlhN0UgO78kW6q:v60 error:v95];

  v61 = v95[0];
  if (v95[0])
  {
    (*(v88 + 16))(v17, v94, v9);
    v62 = v61;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v92 = v62;
      v65 = swift_slowAlloc();
      v95[0] = swift_slowAlloc();
      *v65 = 136315394;
      sub_1000978CC();
      sub_100097640(v66, v67);
      v93 = v64;
      dispatch thunk of CustomStringConvertible.description.getter();
      v68 = *(v88 + 8);
      v69 = sub_100053FF8();
      v70(v69);
      v71 = sub_100052F7C();

      *(v65 + 4) = v71;
      *(v65 + 12) = 2080;
      v72 = [v92 localizedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = sub_100052F7C();

      *(v65 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v63, v93, "Error storing Ravioli data for bag: %s. Error: %s ", v65, 0x16u);
      swift_arrayDestroy();
      sub_100097AB8();

      sub_100097AB8();
    }

    else
    {

      v74 = *(v88 + 8);
      v75 = sub_100053FF8();
      v76(v75);
    }
  }

  v77 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v78 = sub_100097B0C();
  if (os_log_type_enabled(v78, v79))
  {
    sub_100097B40();
    v80 = swift_slowAlloc();
    sub_100077640(v80);
    sub_100097C74();
    _os_log_impl(v81, v82, v83, v84, v85, v86);
    sub_1000979A4();
  }
}

void sub_10008F314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 == 0xD000000000000011 && 0x80000001005A4B70 == a3;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (qword_1006C9818 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static ASDConfigurationManager.shared;
  sub_1000B05E4(v20);

  if (v21 == 1)
  {
    goto LABEL_18;
  }

  v23 = v22;
  sub_1000961E8(&v23, v19);
  sub_100076FB8(v20, &qword_1006CAC08);
  v8 = v23;
  if (!v23)
  {
    goto LABEL_18;
  }

  v9 = UUID.uuidString.getter();
  sub_1000555DC(v9, v10, v8);
  v12 = v11;
  v14 = v13;
  sub_100076FB8(&v23, &qword_1006CB6F0);

  if (v12 && (, (v14 & 0xFF00) != 0x200) && (v14 & 0x100) == 0)
  {
    if (qword_1006C97E0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100046E6C(v15, qword_1006CB600);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Lazy fetch is disabled.", v18, 2u);
    }
  }

  else
  {
LABEL_18:
    sub_10008F55C(a1, a2, a3, 1);
  }
}

uint64_t sub_10008F55C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v37 = a4;
  v39 = a2;
  v38 = type metadata accessor for UUID();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v38);
  v10 = sub_1000443DC(&qword_1006C9E20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(*v4 + 112);
  swift_beginAccess();
  v40 = v14;
  v15 = *(v5 + v14);

  v16 = a1;
  v17 = sub_1000554DC(a1, v15);

  v41 = a3;
  if (v17)
  {
    if (qword_1006C97E0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100046E6C(v18, qword_1006CB600);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Cancelling running Ravioli fetch", v21, 2u);
    }

    Task.cancel()();
    swift_beginAccess();
    sub_100096374(a1);
    swift_endAccess();

    a3 = v41;
  }

  if (v37)
  {
    sub_100092C54(a1, v39, a3);
  }

  v22 = *(*v5 + 136);
  swift_beginAccess();
  v23 = *(v5 + v22);

  v24 = sub_1000554DC(v16, v23);

  if (v24)
  {
    Task.cancel()();
  }

  swift_beginAccess();
  sub_100096374(v16);
  swift_endAccess();

  v25 = type metadata accessor for TaskPriority();
  sub_1000485F8(v13, 1, 1, v25);
  v26 = v16;
  v27 = v38;
  (*(v8 + 16))(&v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v26, v38);
  v28 = sub_1000472E0(&qword_1006CB6F8, &qword_1006CB700);
  v29 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = v5;
  *(v30 + 3) = v28;
  *(v30 + 4) = v5;
  (*(v8 + 32))(&v30[v29], &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v27);
  v31 = &v30[(v9 + v29 + 7) & 0xFFFFFFFFFFFFFFF8];
  v32 = v41;
  *v31 = v39;
  *(v31 + 1) = v32;
  swift_retain_n();

  sub_10006F27C(0, 0, v13, &unk_1005CD4B8, v30);
  v33 = v40;
  swift_beginAccess();
  v34 = *(v5 + v33);
  swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v5 + v33);
  sub_10006B2D4();
  *(v5 + v33) = v42;
  return swift_endAccess();
}

void sub_10008FA20()
{
  sub_1000541C0();
  v2 = v0;
  LODWORD(v57) = v3;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v58 = v8;
  v59 = v9;
  v10 = type metadata accessor for UUID();
  v11 = sub_10004EAE0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000443DC(&qword_1006C9E20);
  v18 = sub_100077674(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10004EAF4();
  v23 = v22 - v21;
  v24 = *(v8 + 112);
  sub_1000879B4();
  v60 = v24;
  v25 = *(v2 + v24);

  v26 = sub_1000981E8();
  sub_1000554DC(v26, v27);
  sub_100098198();
  v61 = v5;
  if (v1)
  {
    if (qword_1006C97E0 != -1)
    {
      sub_1000978B8();
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100097D98(v28, qword_1006CB600);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    v31 = sub_100097B0C();
    if (os_log_type_enabled(v31, v32))
    {
      sub_100097B40();
      v33 = swift_slowAlloc();
      v56 = v15;
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Cancelling running Ravioli fetch", v33, 2u);
      v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = v56;
      sub_100097AB8();
    }

    Task.cancel()();
    sub_10006BED4();
    sub_100096374(v7);
    swift_endAccess();
  }

  if (v57)
  {
    sub_100092DC4();
  }

  v34 = *(*v2 + 136);
  sub_1000879B4();
  v35 = *(v2 + v34);

  v36 = sub_1000554DC(v7, v35);

  if (v36)
  {
    Task.cancel()();
  }

  sub_10006BED4();
  sub_100096374(v7);
  swift_endAccess();

  type metadata accessor for TaskPriority();
  sub_100097CFC();
  sub_1000485F8(v37, v38, v39, v40);
  (*(v13 + 16))(v16, v7, v10);
  v41 = *(v58 + 80);
  v42 = *(v58 + 88);
  type metadata accessor for RavioliManager();
  v43 = sub_100097E8C();
  v44 = *(v13 + 80);
  v57 = v23;
  v58 = v7;
  v45 = v10;
  v46 = (v44 + 56) & ~v44;
  v47 = (v15 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 2) = v2;
  *(v48 + 3) = v43;
  *(v48 + 4) = v41;
  *(v48 + 5) = v42;
  *(v48 + 6) = v2;
  (*(v13 + 32))(&v48[v46], v16, v45);
  v49 = &v48[v47];
  v50 = v61;
  *v49 = v59;
  *(v49 + 1) = v50;
  swift_retain_n();

  v51 = sub_100097A18();
  sub_10006F27C(v51, v52, v57, v53, v48);
  v54 = v60;
  sub_10006BED4();
  v55 = *(v2 + v54);
  swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v2 + v54);
  sub_10006B2D4();
  *(v2 + v54) = v62;
  swift_endAccess();
  sub_100054088();
}

uint64_t sub_10008FE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v9 = type metadata accessor for UUID();
  v7[11] = v9;
  v10 = *(v9 - 8);
  v7[12] = v10;
  v11 = *(v10 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v12 = type metadata accessor for CancellationError();
  v7[15] = v12;
  v13 = *(v12 - 8);
  v7[16] = v13;
  v14 = *(v13 + 64) + 15;
  v7[17] = swift_task_alloc();

  return _swift_task_switch(sub_10008FFC8, a4, 0);
}

uint64_t sub_10008FFC8()
{
  sub_1000657EC();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  v0[18] = sub_100097D98(v2, qword_1006CB600);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    sub_100097B58();
    *swift_slowAlloc() = 134217984;
    sub_100098294();
    *(v7 + 4) = *(v5 + *(v6 + 144)) / 1000000000.0;
    sub_100077394();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_100097AB8();
  }

  v13 = v0[7];

  v14 = *(v13 + *(*v13 + 144));
  v15 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v17 = sub_100097CA4(v16);

  return static Task<>.sleep(nanoseconds:)(v17);
}

uint64_t sub_100090154()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  v3[20] = v0;

  if (v0)
  {
    v9 = v3[7];

    return _swift_task_switch(sub_1000903C0, v9, 0);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[21] = v10;
    *v10 = v7;
    v10[1] = sub_1000902AC;
    v11 = v3[9];
    v12 = v3[10];
    v13 = v3[7];
    v14 = sub_100097E58(v3[8]);

    return sub_10008DA84(v14, v15, v16);
  }
}

uint64_t sub_1000902AC()
{
  sub_1000657EC();
  sub_100098064();
  sub_10006564C();
  *v4 = v3;
  v5 = *(v1 + 168);
  *v4 = *v2;
  *(v3 + 176) = v0;

  sub_1000980B0();
  v7 = *(v6 + 56);
  sub_1000980A4();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100090654()
{
  sub_1000657D4();
  v1 = *(v0 + 56);
  sub_100092F30(*(v0 + 64));
  sub_100098128();

  sub_10006574C();

  return v2();
}

uint64_t sub_100090954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v9 = type metadata accessor for UUID();
  v7[11] = v9;
  v10 = *(v9 - 8);
  v7[12] = v10;
  v11 = *(v10 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v12 = type metadata accessor for CancellationError();
  v7[15] = v12;
  v13 = *(v12 - 8);
  v7[16] = v13;
  v14 = *(v13 + 64) + 15;
  v7[17] = swift_task_alloc();

  return _swift_task_switch(sub_100090A84, a4, 0);
}

uint64_t sub_100090A84()
{
  sub_1000657EC();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  v0[18] = sub_100097D98(v2, qword_1006CB600);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    sub_100097B58();
    *swift_slowAlloc() = 134217984;
    sub_100098294();
    *(v7 + 4) = *(v5 + *(v6 + 144)) / 1000000000.0;
    sub_100077394();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_100097AB8();
  }

  v13 = v0[7];

  v14 = *(v13 + *(*v13 + 144));
  v15 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v17 = sub_100097CA4(v16);

  return static Task<>.sleep(nanoseconds:)(v17);
}

uint64_t sub_100090C10()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  v3[20] = v0;

  if (v0)
  {
    v9 = v3[7];

    return _swift_task_switch(sub_100090EE8, v9, 0);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[21] = v10;
    *v10 = v7;
    v10[1] = sub_100090D68;
    v11 = v3[9];
    v12 = v3[10];
    v13 = v3[7];
    v14 = sub_100097E58(v3[8]);

    return sub_10008DDA4(v14, v15, v16);
  }
}

uint64_t sub_100090D68()
{
  sub_1000657EC();
  sub_100098064();
  sub_10006564C();
  *v4 = v3;
  v5 = *(v1 + 168);
  *v4 = *v2;
  *(v3 + 176) = v0;

  sub_1000980B0();
  v7 = *(v6 + 56);
  sub_1000980A4();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100090E7C()
{
  sub_1000657D4();
  v1 = *(v0 + 64);
  sub_100093384();
  sub_100098128();

  sub_10006574C();

  return v2();
}

void sub_10009192C()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  [v1 removeObjectForKey:v2];

  v3 = [v0 standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  [v3 removeObjectForKey:v4];

  v5 = [v0 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  [v5 removeObjectForKey:v6];

  v7 = [v0 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  [v7 removeObjectForKey:v8];
}

uint64_t sub_100091AC0()
{
  v1[2] = v0;
  v2 = *(type metadata accessor for ServerJSONFetchRetryState() - 8);
  v1[3] = v2;
  v3 = *(v2 + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = *(*(sub_1000443DC(&qword_1006CB740) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100091C14, v0, 0);
}