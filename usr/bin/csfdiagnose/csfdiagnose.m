int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v28 - v10;
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = getpwnam("mobile");
  qword_1000208A8 = v14;
  if (v14)
  {
    v15 = v14;
    if (!geteuid())
    {
      if (qword_100020068 != -1)
      {
        swift_once();
      }

      v16 = sub_1000015CC(v3, qword_100020AA8);
      v17 = v4[2];
      v29 = v16;
      v17(v13);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v28 = v17;
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Logged in as 'root'. Switching to 'mobile'.", v20, 2u);
        v17 = v28;
      }

      v21 = v4[1];
      v21(v13, v3);
      if (setuid(v15->pw_uid))
      {
        (v17)(v11, v29, v3);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v22, v23))
        {
LABEL_14:

          v21(v11, v3);
          goto LABEL_15;
        }

        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Failed to switch to user 'mobile'.", v24, 2u);
      }

      else
      {
        (v17)(v8, v29, v3);
        v22 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v22, v25))
        {
          v11 = v8;
          goto LABEL_14;
        }

        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v22, v25, "Running csfctl as user 'mobile'", v26, 2u);
        v11 = v8;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  type metadata accessor for GMDiagnostics(0);
  sub_100001574();
  static ParsableCommand.main()();
  return 0;
}

unint64_t sub_100001574()
{
  result = qword_100020070;
  if (!qword_100020070)
  {
    type metadata accessor for GMDiagnostics(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020070);
  }

  return result;
}

uint64_t sub_1000015CC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t FollowUp.Feature.init(argument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FollowUp.Feature();
  v15 = *(v6 - 8);
  v7 = *(v15 + 64);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 7169633 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v10 = &enum case for FollowUp.Feature.afm(_:);
LABEL_5:
    (*(v15 + 104))(v9, *v10, v6);
    (*(v15 + 32))(a3, v9, v6);
    return (*(v15 + 56))(a3, 0, 1, v6);
  }

  if (a1 == 7169121 && a2 == 0xE300000000000000)
  {

LABEL_10:
    v10 = &enum case for FollowUp.Feature.adm(_:);
    goto LABEL_5;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_10;
  }

  v13 = *(v15 + 56);

  return v13(a3, 1, 1, v6);
}

uint64_t sub_100001880(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000019F8(&qword_1000200C0);

  return ExpressibleByArgument<>.defaultValueDescription.getter(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_1000018F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000019F8(&qword_1000200B8);
  v5 = sub_1000019F8(&qword_1000200C0);

  return static ExpressibleByArgument<>.allValueStrings.getter(a1, a2, v4, v5, &protocol witness table for String);
}

uint64_t sub_100001988(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000019F8(&qword_1000200B8);

  return static ExpressibleByArgument<>.defaultCompletionKind.getter(a1, a2, v4);
}

uint64_t sub_1000019F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FollowUp.Feature();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001B98(&qword_1000200C8, &qword_100016990);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_100001B98(&qword_1000200D0, &unk_100016998);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100001B98(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100001B98(&qword_1000200C8, &qword_100016990);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_100001B98(&qword_1000200D0, &unk_100016998);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100001D4C()
{
  sub_100012534(319, &qword_100020140, &type metadata for Bool, &type metadata accessor for Option);
  if (v0 <= 0x3F)
  {
    sub_100012534(319, &unk_100020148, &type metadata for Bool, &type metadata accessor for Flag);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100001E1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001EAC;

  return sub_100007E64();
}

uint64_t sub_100001EAC()
{
  v2 = *(*v1 + 16);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_100015B54;
  }

  else
  {
    v3 = sub_100001FC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100001FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001B98(&qword_100020198, &qword_100016A90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100011344(a3, v27 - v11, &qword_100020198, &qword_100016A90);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000143A8(v12, &qword_100020198, &qword_100016A90);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000143A8(a3, &qword_100020198, &qword_100016A90);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000143A8(a3, &qword_100020198, &qword_100016A90);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000022F4(void *a1)
{
  v3 = sub_100001B98(&qword_100020798, &qword_100017290);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100011650(a1, a1[3]);
  sub_10001496C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v10[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1000024D4()
{
  v1 = *v0;
  v2 = 0x696B726F7774656ELL;
  v3 = 1685289331;
  if (v1 != 3)
  {
    v3 = 1852797802;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000010;
  if (*v0)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100002568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100012D50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000025A8(uint64_t a1)
{
  v2 = sub_10001496C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000025E4(uint64_t a1)
{
  v2 = sub_10001496C();

  return CodingKey.debugDescription.getter(a1, v2);
}

int8x8_t sub_100002620@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100012F18(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    v6 = vdupq_n_s64(v4);
    *v6.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v6, xmmword_100016950), vshlq_u64(v6, xmmword_100016940))), 0x1000100010001);
    result = vuzp1_s8(*v6.i8, *v6.i8);
    *(a2 + 1) = result.i32[0];
  }

  return result;
}

uint64_t sub_100002684(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v1[4];
  v4 = 256;
  if (!v1[1])
  {
    v4 = 0;
  }

  v5 = v4 | *v1;
  return sub_1000022F4(a1);
}

uint64_t sub_1000026F0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = sub_100001B98(&qword_100020628, &qword_1000171F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_100011650(a1, a1[3]);
  sub_1000141F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100002884()
{
  if (*v0)
  {
    result = 0x6573556E6163;
  }

  else
  {
    result = 0x4965727574616566;
  }

  *v0;
  return result;
}

uint64_t sub_1000028C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4965727574616566 && a2 == 0xE900000000000044;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6573556E6163 && a2 == 0xE600000000000000)
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

uint64_t sub_1000029A0(uint64_t a1)
{
  v2 = sub_1000141F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000029DC(uint64_t a1)
{
  v2 = sub_1000141F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100002A18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100013164(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_100002A6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_100001B98(&qword_100020648, &qword_100017208);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_100011650(a1, a1[3]);
  sub_100014244();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    type metadata accessor for TicketStatus();
    sub_10000FCE0(&qword_100020650, &type metadata accessor for TicketStatus);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100002C80()
{
  if (*v0)
  {
    result = 0x737574617473;
  }

  else
  {
    result = 7955819;
  }

  *v0;
  return result;
}

uint64_t sub_100002CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
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

uint64_t sub_100002D94(uint64_t a1)
{
  v2 = sub_100014244();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100002DD0(uint64_t a1)
{
  v2 = sub_100014244();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100002E0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10001333C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100002E5C(void *a1)
{
  v3 = v1;
  v5 = sub_100001B98(&qword_100020690, &qword_100017228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_100011650(a1, a1[3]);
  sub_1000142EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v21 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = type metadata accessor for Diagnostics.AFMFollowUpDiagnostics(0);
    v13 = v12[5];
    v20 = 1;
    type metadata accessor for Date();
    sub_10000FCE0(&qword_100020678, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = v3[v12[6]];
    v19 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v12[7];
    v18 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100003080@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_100001B98(&qword_100020230, &qword_100016B40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v30 - v9;
  v11 = sub_100001B98(&qword_100020680, &qword_100017220);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  __chkstk_darwin(v11);
  v14 = v30 - v13;
  v15 = type metadata accessor for Diagnostics.AFMFollowUpDiagnostics(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v19 = a1[4];
  v37 = a1;
  sub_100011650(a1, v20);
  sub_1000142EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000116E8(v37);
  }

  v32 = v8;
  v33 = v15;
  v21 = v35;
  v22 = v36;
  v41 = 0;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v18;
  *v18 = v23 & 1;
  v24 = type metadata accessor for Date();
  v40 = 1;
  v25 = sub_10000FCE0(&qword_100020668, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v30[1] = v24;
  v30[2] = v25;
  v26 = v33;
  v27 = v31;
  sub_1000113AC(v10, &v31[*(v33 + 20)], &qword_100020230, &qword_100016B40);
  v39 = 2;
  *(v27 + *(v26 + 24)) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v38 = 3;
  v28 = v32;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v21 + 8))(v14, v22);
  sub_1000113AC(v28, v27 + *(v26 + 28), &qword_100020230, &qword_100016B40);
  sub_100014340(v27, v34, type metadata accessor for Diagnostics.AFMFollowUpDiagnostics);
  sub_1000116E8(v37);
  return sub_100011734(v27, type metadata accessor for Diagnostics.AFMFollowUpDiagnostics);
}

uint64_t sub_1000034B8(void *a1)
{
  v3 = v1;
  v5 = sub_100001B98(&qword_100020670, &qword_100017218);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_100011650(a1, a1[3]);
  sub_100014298();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v14[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(type metadata accessor for Diagnostics.ADMFollowUpDiagnostics(0) + 20);
    v14[14] = 1;
    type metadata accessor for Date();
    sub_10000FCE0(&qword_100020678, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100003670@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_100001B98(&qword_100020230, &qword_100016B40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_100001B98(&qword_100020658, &qword_100017210);
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for Diagnostics.ADMFollowUpDiagnostics(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_100011650(a1, a1[3]);
  sub_100014298();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    v25 = 0;
    *v15 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    type metadata accessor for Date();
    v24 = 1;
    sub_10000FCE0(&qword_100020668, &type metadata accessor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v17 + 8))(v11, v18);
    sub_1000113AC(v7, &v15[*(v12 + 20)], &qword_100020230, &qword_100016B40);
    sub_100011414(v15, v21, type metadata accessor for Diagnostics.ADMFollowUpDiagnostics);
  }

  return sub_1000116E8(a1);
}

uint64_t sub_100003938(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001B98(&qword_100020730, &qword_100017250);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_100011650(a1, a1[3]);
  sub_100014774();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13[1] = a3;
    v14 = 3;
    sub_10001481C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_100003B54()
{
  v1 = 0x46746E6553736168;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0x65746144746E6573;
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

uint64_t sub_100003BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100013564(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100003C14(uint64_t a1)
{
  v2 = sub_1000142EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003C50(uint64_t a1)
{
  v2 = sub_1000142EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100003CBC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100003D04()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100003D48()
{
  if (*v0)
  {
    result = 0x65746144746E6573;
  }

  else
  {
    result = 0x46746E6553736168;
  }

  *v0;
  return result;
}

uint64_t sub_100003D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x46746E6553736168 && a2 == 0xEF7055776F6C6C6FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746144746E6573 && a2 == 0xE800000000000000)
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

uint64_t sub_100003E74(uint64_t a1)
{
  v2 = sub_100014298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003EB0(uint64_t a1)
{
  v2 = sub_100014298();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100003F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
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

uint64_t sub_100003FBC(uint64_t a1)
{
  v2 = sub_100014918();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003FF8(uint64_t a1)
{
  v2 = sub_100014918();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100004114(uint64_t a1)
{
  v2 = sub_1000148C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004150(uint64_t a1)
{
  v2 = sub_1000148C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000041D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, _BYTE *a5@<X8>)
{
  v17 = a5;
  v8 = sub_100001B98(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = a1[4];
  sub_100011650(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    return sub_1000116E8(a1);
  }

  v13 = v17;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v18 + 8))(v11, v8);
  result = sub_1000116E8(a1);
  *v13 = v14 & 1;
  return result;
}

uint64_t sub_100004384(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = sub_100001B98(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = *v6;
  v14 = a1[4];
  sub_100011650(a1, a1[3]);
  v17();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1000044C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
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

uint64_t sub_10000454C(uint64_t a1)
{
  v2 = sub_100014870();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004588(uint64_t a1)
{
  v2 = sub_100014870();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000464C()
{
  v1 = 0x6E49646574706FLL;
  v2 = 0x74754F646574706FLL;
  if (*v0 != 2)
  {
    v2 = 0x6574617473;
  }

  if (*v0)
  {
    v1 = 0x426E49646574706FLL;
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

uint64_t sub_1000046D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000136DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100004700(uint64_t a1)
{
  v2 = sub_100014774();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000473C(uint64_t a1)
{
  v2 = sub_100014774();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100004778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100013848(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 1) = BYTE1(result) & 1;
    *(a2 + 2) = BYTE2(result) & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1000047BC(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *v1;
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_100003938(a1, v3 | v4, *(v1 + 1));
}

Swift::Int sub_100004804()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100004848()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000048AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C69617465527369 && a2 == 0xEE00656369766544)
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

uint64_t sub_10000493C(uint64_t a1)
{
  v2 = sub_100014720();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004978(uint64_t a1)
{
  v2 = sub_100014720();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100004A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_100001B98(&qword_100020210, &qword_100016B20);
  v4[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v7 = sub_100001B98(&qword_100020218, &qword_100016B28);
  v4[13] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v9 = sub_100001B98(&qword_100020220, &qword_100016B30);
  v4[16] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v11 = type metadata accessor for FrameworkDiagnostics.DiagnosticKey();
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v14 = sub_100001B98(&qword_100020228, &qword_100016B38);
  v4[25] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v16 = type metadata accessor for Diagnostics.AFMFollowUpDiagnostics(0);
  v4[27] = v16;
  v17 = *(v16 - 8);
  v4[28] = v17;
  v18 = *(v17 + 64) + 15;
  v4[29] = swift_task_alloc();
  v19 = *(*(sub_100001B98(&qword_100020230, &qword_100016B40) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v20 = *(*(sub_100001B98(&qword_100020238, &qword_100016B48) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v21 = *(*(sub_100001B98(&qword_100020240, &qword_100016B50) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v22 = type metadata accessor for SiriAssistantLocale();
  v4[37] = v22;
  v23 = *(v22 - 8);
  v4[38] = v23;
  v24 = *(v23 + 64) + 15;
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_100004DBC, 0, 0);
}

char *sub_100004DBC()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v5 = v0[8];
  v4 = v0[9];
  type metadata accessor for EligibilityFetcher();
  v6 = static EligibilityFetcher.current.getter();
  v7 = Eligibility.deviceEligibile.getter();

  SiriAssistantLocale.init()();
  v8 = SiriAssistantLocale.current.getter();
  v128 = v9;
  (*(v2 + 8))(v1, v3);
  type metadata accessor for FeatureCache();
  static FeatureCache.shared.getter();
  v10 = FeatureCache.allFeatures(forDSID:allowAnySession:ignoreTTL:)();

  static FeatureCache.shared.getter();
  v11 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)();

  v0[6] = v11;
  if (v11)
  {
    v12 = v11;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v102 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_1000143A8((v0 + 6), &qword_100020248, &qword_100016B58);
  sub_10001052C(_swiftEmptyArrayStorage);
  if (v10 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v131 = v0;
  v130 = v7;
  v129 = v8;
  if (v13)
  {
    result = sub_1000106DC(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = CloudFeature.featureID.getter();
        v18 = v17;
        v19 = CloudFeature.canUse.getter();
        swift_unknownObjectRelease();
        v21 = _swiftEmptyArrayStorage[2];
        v20 = _swiftEmptyArrayStorage[3];
        if (v21 >= v20 >> 1)
        {
          sub_1000106DC((v20 > 1), v21 + 1, 1);
        }

        ++v15;
        _swiftEmptyArrayStorage[2] = v21 + 1;
        v22 = &_swiftEmptyArrayStorage[3 * v21];
        *(v22 + 4) = v16;
        *(v22 + 5) = v18;
        v22[48] = v19 & 1;
      }

      while (v13 != v15);
    }

    else
    {
      v23 = 32;
      do
      {
        v24 = *(v10 + v23);
        v25 = CloudFeature.featureID.getter();
        v27 = v26;
        v28 = CloudFeature.canUse.getter();

        v30 = _swiftEmptyArrayStorage[2];
        v29 = _swiftEmptyArrayStorage[3];
        if (v30 >= v29 >> 1)
        {
          sub_1000106DC((v29 > 1), v30 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v30 + 1;
        v31 = &_swiftEmptyArrayStorage[3 * v30];
        *(v31 + 4) = v25;
        *(v31 + 5) = v27;
        v31[48] = v28 & 1;
        v23 += 8;
        --v13;
      }

      while (v13);
    }

    v0 = v131;
  }

  else
  {
  }

  v33 = v0[8];
  v32 = v0[9];
  type metadata accessor for TicketCache();
  static TicketCache.shared.getter();
  v34 = TicketCache.allTickets(forDSID:)();

  v35 = *(v34 + 16);
  if (v35)
  {
    sub_1000106BC(0, v35, 0);
    v36 = (v34 + 48);
    do
    {
      v37 = *(v36 - 2);
      v38 = *(v36 - 1);
      v39 = *v36;
      swift_bridgeObjectRetain_n();
      v40 = v39;
      v41 = Ticket.status.getter();

      v43 = _swiftEmptyArrayStorage[2];
      v42 = _swiftEmptyArrayStorage[3];
      if (v43 >= v42 >> 1)
      {
        sub_1000106BC((v42 > 1), v43 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v43 + 1;
      v44 = &_swiftEmptyArrayStorage[3 * v43];
      v44[4] = v37;
      v44[5] = v38;
      v44[6] = v41;
      v36 += 3;
      --v35;
    }

    while (v35);

    v0 = v131;
  }

  else
  {
  }

  type metadata accessor for FollowUp();
  if (FollowUp.__allocating_init()())
  {
    v45 = v0[31];
    dispatch thunk of FollowUp.dateSentCFU.getter();
    v46 = [objc_opt_self() hasEngagedWithCFUDate];
    if (v46)
    {
      v47 = v0[30];
      v48 = v46;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    v122 = v0[35];
    v124 = v0[36];
    v126 = v0[33];
    v52 = v0[30];
    v53 = v0[31];
    v54 = v0[29];
    v120 = v0[28];
    v55 = v0[27];
    v56 = type metadata accessor for Date();
    v57 = *(v56 - 8);
    (*(v57 + 56))(v52, v49, 1, v56);
    v58 = *(v57 + 48);
    *v54 = v58(v53, 1, v56) != 1;
    sub_100011344(v53, &v54[v55[5]], &qword_100020230, &qword_100016B40);
    v59 = v58(v52, 1, v56) != 1;
    sub_1000143A8(v53, &qword_100020230, &qword_100016B40);
    v54[v55[6]] = v59;
    sub_1000113AC(v52, &v54[v55[7]], &qword_100020230, &qword_100016B40);
    sub_100011414(v54, v122, type metadata accessor for Diagnostics.AFMFollowUpDiagnostics);
    (*(v120 + 56))(v122, 0, 1, v55);
    sub_1000113AC(v122, v124, &qword_100020240, &qword_100016B50);
    LOBYTE(v52) = dispatch thunk of FollowUp.hasSentADMCFU.getter();
    v60 = type metadata accessor for Diagnostics.ADMFollowUpDiagnostics(0);
    v61 = &v126[*(v60 + 20)];
    dispatch thunk of FollowUp.dateSentADMCFU.getter();

    *v126 = v52 & 1;
    (*(*(v60 - 8) + 56))(v126, 0, 1, v60);
  }

  else
  {
    v50 = v0[33];
    (*(v0[28] + 56))(v0[36], 1, 1, v0[27]);
    v51 = type metadata accessor for Diagnostics.ADMFollowUpDiagnostics(0);
    (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
  }

  v62 = v0[33];
  v63 = v0[32];
  v64 = v0[25];
  v65 = v0[26];
  v66 = v0[24];
  v67 = v0[18];
  v68 = v0[19];
  sub_100011344(v0[36], v0[34], &qword_100020240, &qword_100016B50);
  sub_100011344(v62, v63, &qword_100020238, &qword_100016B48);
  type metadata accessor for GMBypass();
  v127 = static GMBypass.gmEligibilityBypass()();
  v125 = static GMBypass.admBypassState()();
  type metadata accessor for GMAssetsBypass();
  v123 = static GMAssetsBypass.gmAssetsBypass()();
  type metadata accessor for GMOptIn();
  v69 = static GMOptIn.shared.getter();
  v121 = dispatch thunk of GMOptIn.isOptedIn.getter();

  v70 = static GMOptIn.shared.getter();
  v119 = dispatch thunk of GMOptIn.optedInBuddy.getter();

  v71 = static GMOptIn.shared.getter();
  v118 = dispatch thunk of GMOptIn.optedOutBuddy.getter();

  v72 = static GMOptIn.shared.getter();
  v117 = dispatch thunk of GMOptIn.state.getter();

  type metadata accessor for SystemProperties();
  static SystemProperties.shared.getter();
  v116 = dispatch thunk of SystemProperties.isRetailDevice.getter();

  v73 = *(v68 + 104);
  v73(v66, enum case for FrameworkDiagnostics.DiagnosticKey.startFeatureRequest(_:), v67);
  sub_100010DA4();
  sub_100010E58();
  static FrameworkDiagnostics.fetchDiagnostic<A>(forKey:)();
  v132 = *(v0[19] + 8);
  v132(v0[24], v0[18]);
  v74 = v0[17];
  v75 = v0[16];
  v73(v0[23], enum case for FrameworkDiagnostics.DiagnosticKey.featureRequest(_:), v0[18]);
  sub_100010F0C();
  sub_100010FC0();
  static FrameworkDiagnostics.fetchDiagnostic<A>(forKey:)();
  v76 = v0[19];
  v132(v0[23], v0[18]);
  v77 = v0[15];
  v78 = v0[13];
  v73(v0[22], enum case for FrameworkDiagnostics.DiagnosticKey.afmAssets(_:), v0[18]);
  sub_100011074();
  sub_100011128();
  static FrameworkDiagnostics.fetchDiagnostic<A>(forKey:)();
  v79 = v0[19] + 8;
  v132(v0[22], v0[18]);
  v81 = v0[13];
  v80 = v0[14];
  v73(v0[21], enum case for FrameworkDiagnostics.DiagnosticKey.admAssets(_:), v0[18]);
  static FrameworkDiagnostics.fetchDiagnostic<A>(forKey:)();
  v82 = v0[19];
  v132(v0[21], v0[18]);
  v84 = v0[11];
  v83 = v0[12];
  v73(v0[20], enum case for FrameworkDiagnostics.DiagnosticKey.coreTelephony(_:), v0[18]);
  sub_1000111DC();
  sub_100011290();
  static FrameworkDiagnostics.fetchDiagnostic<A>(forKey:)();
  v85 = v0[36];
  v86 = v0[33];
  v87 = v0[19];
  v132(v0[20], v0[18]);
  sub_1000143A8(v86, &qword_100020238, &qword_100016B48);
  sub_1000143A8(v85, &qword_100020240, &qword_100016B50);
  v105 = v0[39];
  v106 = v0[36];
  v88 = v0[34];
  v107 = v0[35];
  v108 = v0[33];
  v89 = v0[32];
  v109 = v0[31];
  v110 = v0[30];
  v90 = v0[26];
  v111 = v0[29];
  v112 = v0[24];
  v113 = v0[23];
  v114 = v0[22];
  v115 = v0[21];
  v133 = v0[20];
  v91 = v0[17];
  v92 = v0[15];
  v103 = v0[14];
  v104 = v0[12];
  v93 = v0[10];
  v94 = v0[7];
  v95 = 0x8000000100018750;
  if (v128)
  {
    v95 = v128;
  }

  v96 = 0xD000000000000018;
  if (v128)
  {
    v96 = v129;
  }

  v97 = v0[10] & 1;
  *v94 = v93 & 1;
  v98 = vdupq_n_s64(v93);
  *v98.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v98, xmmword_100016950), vshlq_u64(v98, xmmword_100016940))), 0x1000100010001);
  *(v94 + 1) = vuzp1_s8(*v98.i8, *v98.i8).u32[0];
  *(v94 + 5) = v130 & 1;
  *(v94 + 8) = v96;
  *(v94 + 16) = v95;
  *(v94 + 24) = _swiftEmptyArrayStorage;
  *(v94 + 32) = _swiftEmptyArrayStorage;
  v99 = type metadata accessor for Diagnostics(0);
  sub_1000113AC(v88, v94 + v99[9], &qword_100020240, &qword_100016B50);
  sub_1000113AC(v89, v94 + v99[10], &qword_100020238, &qword_100016B48);
  *(v94 + v99[11]) = v127 & 1;
  *(v94 + v99[12]) = v125 & 1;
  *(v94 + v99[13]) = v123 & 1;
  v100 = v94 + v99[14];
  *v100 = v121 & 1;
  *(v100 + 1) = v119 & 1;
  *(v100 + 2) = v118 & 1;
  *(v100 + 8) = v117;
  *(v94 + v99[15]) = v116 & 1;
  sub_1000113AC(v90, v94 + v99[16], &qword_100020228, &qword_100016B38);
  sub_1000113AC(v91, v94 + v99[17], &qword_100020220, &qword_100016B30);
  sub_1000113AC(v92, v94 + v99[18], &qword_100020218, &qword_100016B28);
  sub_1000113AC(v103, v94 + v99[19], &qword_100020218, &qword_100016B28);
  sub_1000113AC(v104, v94 + v99[20], &qword_100020210, &qword_100016B20);

  v101 = v0[1];

  return v101();
}

unint64_t sub_100005DB8(char a1)
{
  result = 0x72756769666E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x656C61636F6CLL;
      break;
    case 3:
      result = 0x7365727574616566;
      break;
    case 4:
      result = 0x7374656B636974;
      break;
    case 5:
      result = 0x6F6C6C6F466D6661;
      break;
    case 6:
      result = 0x6F6C6C6F466D6461;
      break;
    case 7:
      result = 0x737361707962;
      break;
    case 8:
      result = 0x73617079426D6461;
      break;
    case 9:
      result = 0x7079427465737361;
      break;
    case 10:
      result = 0x6E4974706FLL;
      break;
    case 11:
      result = 0x65446C6961746572;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0x656C655465726F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100005FF4(void *a1)
{
  v3 = v1;
  v5 = sub_100001B98(&qword_100020598, &qword_1000171D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v32 - v8;
  v10 = a1[4];
  sub_100011650(a1, a1[3]);
  sub_1000129E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 1);
  v12 = *(v3 + 2);
  v13 = *(v3 + 3);
  v14 = *(v3 + 4);
  LOBYTE(v32[0]) = *v3;
  BYTE1(v32[0]) = v11;
  BYTE2(v32[0]) = v12;
  BYTE3(v32[0]) = v13;
  BYTE4(v32[0]) = v14;
  v33 = 0;
  sub_100012A38();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = *(v3 + 5);
    LOBYTE(v32[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 8);
    v17 = *(v3 + 16);
    LOBYTE(v32[0]) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v32[0] = *(v3 + 24);
    v33 = 3;
    sub_100001B98(&qword_1000205B0, &qword_1000171E0);
    sub_10001445C(&qword_1000205B8, sub_100012A8C);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v32[0] = *(v3 + 32);
    v33 = 4;
    sub_100001B98(&qword_1000205C8, &qword_1000171E8);
    sub_100012AE0(&qword_1000205D0, sub_100012B58);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = type metadata accessor for Diagnostics(0);
    v19 = v18[9];
    LOBYTE(v32[0]) = 5;
    type metadata accessor for Diagnostics.AFMFollowUpDiagnostics(0);
    sub_10000FCE0(&qword_1000205E0, type metadata accessor for Diagnostics.AFMFollowUpDiagnostics);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = v18[10];
    LOBYTE(v32[0]) = 6;
    type metadata accessor for Diagnostics.ADMFollowUpDiagnostics(0);
    sub_10000FCE0(&qword_1000205E8, type metadata accessor for Diagnostics.ADMFollowUpDiagnostics);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v32[0]) = *(v3 + v18[11]);
    v33 = 7;
    sub_100012BAC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v32[0]) = *(v3 + v18[12]);
    v33 = 8;
    sub_100012C00();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v32[0]) = *(v3 + v18[13]);
    v33 = 9;
    sub_100012C54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = (v3 + v18[14]);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v25 = *(v21 + 1);
    LOBYTE(v32[0]) = v22;
    BYTE1(v32[0]) = v23;
    BYTE2(v32[0]) = v24;
    v32[1] = v25;
    v33 = 10;
    sub_100012CA8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v32[0]) = *(v3 + v18[15]);
    v33 = 11;
    sub_100012CFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = v18[16];
    LOBYTE(v32[0]) = 12;
    type metadata accessor for FeatureRequestStartDiagnostic();
    sub_10000FCE0(&qword_100020268, &type metadata accessor for FeatureRequestStartDiagnostic);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = v18[17];
    LOBYTE(v32[0]) = 13;
    type metadata accessor for FeatureRequestFinishDiagnostic();
    sub_10000FCE0(&qword_100020288, &type metadata accessor for FeatureRequestFinishDiagnostic);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v28 = v18[18];
    LOBYTE(v32[0]) = 14;
    type metadata accessor for AssetDiagnostics();
    sub_10000FCE0(&qword_1000202A8, &type metadata accessor for AssetDiagnostics);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29 = v18[19];
    LOBYTE(v32[0]) = 15;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = v18[20];
    LOBYTE(v32[0]) = 16;
    type metadata accessor for CoreTelephonyDiagnostic();
    sub_10000FCE0(&qword_1000202C8, &type metadata accessor for CoreTelephonyDiagnostic);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100006748@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_100001B98(&qword_100020210, &qword_100016B20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v53 = v50 - v5;
  v6 = sub_100001B98(&qword_100020218, &qword_100016B28);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v58 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = v50 - v10;
  v11 = sub_100001B98(&qword_100020220, &qword_100016B30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v56 = v50 - v13;
  v14 = sub_100001B98(&qword_100020228, &qword_100016B38);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v50 - v16;
  v18 = sub_100001B98(&qword_100020238, &qword_100016B48);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v50 - v20;
  v22 = sub_100001B98(&qword_100020240, &qword_100016B50);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v50 - v24;
  v60 = sub_100001B98(&qword_100020698, &qword_100017230);
  v57 = *(v60 - 8);
  v26 = *(v57 + 64);
  __chkstk_darwin(v60);
  v28 = v50 - v27;
  v29 = type metadata accessor for Diagnostics(0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1[3];
  v33 = a1[4];
  v62 = a1;
  sub_100011650(a1, v34);
  sub_1000129E4();
  v59 = v28;
  v35 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v35)
  {
    return sub_1000116E8(v62);
  }

  v36 = v25;
  v51 = v17;
  v52 = v21;
  v38 = v57;
  v37 = v58;
  v61 = v29;
  v65 = 0;
  sub_100014408();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = BYTE1(v63);
  v40 = BYTE2(v63);
  v41 = BYTE3(v63);
  v42 = BYTE4(v63);
  *v32 = v63;
  v32[1] = v39;
  v32[2] = v40;
  v32[3] = v41;
  v32[4] = v42;
  LOBYTE(v63) = 1;
  v32[5] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v63) = 2;
  *(v32 + 1) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v32 + 2) = v43;
  sub_100001B98(&qword_1000205B0, &qword_1000171E0);
  v65 = 3;
  sub_10001445C(&qword_1000206A8, sub_1000144D4);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v32 + 3) = v63;
  sub_100001B98(&qword_1000205C8, &qword_1000171E8);
  v65 = 4;
  sub_100012AE0(&qword_1000206B8, sub_100014528);
  v50[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v32 + 4) = v63;
  type metadata accessor for Diagnostics.AFMFollowUpDiagnostics(0);
  LOBYTE(v63) = 5;
  sub_10000FCE0(&qword_1000206C8, type metadata accessor for Diagnostics.AFMFollowUpDiagnostics);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000113AC(v36, &v32[v61[9]], &qword_100020240, &qword_100016B50);
  type metadata accessor for Diagnostics.ADMFollowUpDiagnostics(0);
  LOBYTE(v63) = 6;
  sub_10000FCE0(&qword_1000206D0, type metadata accessor for Diagnostics.ADMFollowUpDiagnostics);
  v44 = v52;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000113AC(v44, &v32[v61[10]], &qword_100020238, &qword_100016B48);
  v65 = 7;
  sub_10001457C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32[v61[11]] = v63;
  v65 = 8;
  sub_1000145D0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32[v61[12]] = v63;
  v65 = 9;
  sub_100014624();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32[v61[13]] = v63;
  v65 = 10;
  sub_100014678();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = BYTE1(v63);
  v46 = BYTE2(v63);
  v47 = v64;
  v48 = &v32[v61[14]];
  *v48 = v63;
  v48[1] = v45;
  v48[2] = v46;
  *(v48 + 1) = v47;
  v65 = 11;
  sub_1000146CC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32[v61[15]] = v63;
  type metadata accessor for FeatureRequestStartDiagnostic();
  LOBYTE(v63) = 12;
  sub_10000FCE0(&qword_100020258, &type metadata accessor for FeatureRequestStartDiagnostic);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000113AC(v51, &v32[v61[16]], &qword_100020228, &qword_100016B38);
  type metadata accessor for FeatureRequestFinishDiagnostic();
  LOBYTE(v63) = 13;
  sub_10000FCE0(&qword_100020278, &type metadata accessor for FeatureRequestFinishDiagnostic);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000113AC(v56, &v32[v61[17]], &qword_100020220, &qword_100016B30);
  type metadata accessor for AssetDiagnostics();
  LOBYTE(v63) = 14;
  sub_10000FCE0(&qword_100020298, &type metadata accessor for AssetDiagnostics);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000113AC(v55, &v32[v61[18]], &qword_100020218, &qword_100016B28);
  LOBYTE(v63) = 15;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000113AC(v37, &v32[v61[19]], &qword_100020218, &qword_100016B28);
  type metadata accessor for CoreTelephonyDiagnostic();
  LOBYTE(v63) = 16;
  sub_10000FCE0(&qword_1000202B8, &type metadata accessor for CoreTelephonyDiagnostic);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v38 + 8))(v59, v60);
  sub_1000113AC(v53, &v32[v61[20]], &qword_100020210, &qword_100016B20);
  sub_100014340(v32, v54, type metadata accessor for Diagnostics);
  sub_1000116E8(v62);
  return sub_100011734(v32, type metadata accessor for Diagnostics);
}

uint64_t sub_1000075F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100013A78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100007624(uint64_t a1)
{
  v2 = sub_1000129E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100007660(uint64_t a1)
{
  v2 = sub_1000129E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000076CC(__int16 a1)
{
  v2 = _swiftEmptyArrayStorage;
  if (a1)
  {
    v2 = sub_100010420(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = sub_100010420((v4 > 1), v5 + 1, 1, v2);
    }

    *(v2 + 2) = v5 + 1;
    v6 = &v2[16 * v5];
    *(v6 + 4) = 0xD000000000000063;
    *(v6 + 5) = 0x8000000100018A70;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v8 = *(v2 + 2);
  v7 = *(v2 + 3);
  if (v8 >= v7 >> 1)
  {
    v2 = sub_100010420((v7 > 1), v8 + 1, 1, v2);
  }

  *(v2 + 2) = v8 + 1;
  v9 = &v2[16 * v8];
  *(v9 + 4) = 0xD000000000000044;
  *(v9 + 5) = 0x8000000100018A20;
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_20:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v11 = *(v2 + 2);
  v10 = *(v2 + 3);
  if (v11 >= v10 >> 1)
  {
    v2 = sub_100010420((v10 > 1), v11 + 1, 1, v2);
  }

  *(v2 + 2) = v11 + 1;
  v12 = &v2[16 * v11];
  *(v12 + 4) = 0xD000000000000038;
  *(v12 + 5) = 0x80000001000189E0;
  if ((a1 & 0x10) == 0)
  {
LABEL_5:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_25:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_100010420((v13 > 1), v14 + 1, 1, v2);
  }

  *(v2 + 2) = v14 + 1;
  v15 = &v2[16 * v14];
  *(v15 + 4) = 0xD000000000000064;
  *(v15 + 5) = 0x8000000100018970;
  if ((a1 & 0x20) == 0)
  {
LABEL_6:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v17 = *(v2 + 2);
  v16 = *(v2 + 3);
  if (v17 >= v16 >> 1)
  {
    v2 = sub_100010420((v16 > 1), v17 + 1, 1, v2);
  }

  *(v2 + 2) = v17 + 1;
  v18 = &v2[16 * v17];
  *(v18 + 4) = 0xD000000000000034;
  *(v18 + 5) = 0x8000000100018930;
  if ((a1 & 0x40) == 0)
  {
LABEL_7:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v20 = *(v2 + 2);
  v19 = *(v2 + 3);
  if (v20 >= v19 >> 1)
  {
    v2 = sub_100010420((v19 > 1), v20 + 1, 1, v2);
  }

  *(v2 + 2) = v20 + 1;
  v21 = &v2[16 * v20];
  *(v21 + 4) = 0xD00000000000004CLL;
  *(v21 + 5) = 0x80000001000188E0;
  if ((a1 & 0x80) == 0)
  {
LABEL_8:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_40:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v23 = *(v2 + 2);
  v22 = *(v2 + 3);
  if (v23 >= v22 >> 1)
  {
    v2 = sub_100010420((v22 > 1), v23 + 1, 1, v2);
  }

  *(v2 + 2) = v23 + 1;
  v24 = &v2[16 * v23];
  *(v24 + 4) = 0xD0000000000000D5;
  *(v24 + 5) = 0x8000000100018800;
  if ((a1 & 0x100) == 0)
  {
LABEL_9:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_45:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v26 = *(v2 + 2);
  v25 = *(v2 + 3);
  if (v26 >= v25 >> 1)
  {
    v2 = sub_100010420((v25 > 1), v26 + 1, 1, v2);
  }

  *(v2 + 2) = v26 + 1;
  v27 = &v2[16 * v26];
  *(v27 + 4) = 0xD00000000000005DLL;
  *(v27 + 5) = 0x80000001000187A0;
  if ((a1 & 0x200) == 0)
  {
LABEL_10:
    v3 = *(v2 + 2);
    if (!v3)
    {
      goto LABEL_59;
    }

    goto LABEL_55;
  }

LABEL_50:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v29 = *(v2 + 2);
  v28 = *(v2 + 3);
  v3 = v29 + 1;
  if (v29 >= v28 >> 1)
  {
    v2 = sub_100010420((v28 > 1), v29 + 1, 1, v2);
  }

  *(v2 + 2) = v3;
  v30 = &v2[16 * v29];
  *(v30 + 4) = 0xD000000000000024;
  *(v30 + 5) = 0x8000000100018770;
LABEL_55:
  sub_1000106FC(0, v3, 0);
  v31 = (v2 + 40);
  do
  {
    v32 = *(v31 - 1);
    v33 = *v31;

    v34._countAndFlagsBits = v32;
    v34._object = v33;
    String.append(_:)(v34);

    v36 = _swiftEmptyArrayStorage[2];
    v35 = _swiftEmptyArrayStorage[3];
    if (v36 >= v35 >> 1)
    {
      sub_1000106FC((v35 > 1), v36 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v36 + 1;
    v37 = &_swiftEmptyArrayStorage[2 * v36];
    v37[4] = 8237;
    v37[5] = 0xE200000000000000;
    v31 += 2;
    --v3;
  }

  while (v3);
LABEL_59:

  sub_100001B98(&qword_1000201B8, &qword_100016AE0);
  sub_100011794(&qword_1000201C0, &qword_1000201B8, &qword_100016AE0);
  v38 = BidirectionalCollection<>.joined(separator:)();
  v40 = v39;

  v41._countAndFlagsBits = v38;
  v41._object = v40;
  String.append(_:)(v41);

  return 0;
}

uint64_t sub_100007D14()
{
  v0 = sub_100001B98(&qword_100020308, &qword_100016B88);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for CommandConfiguration();
  sub_1000115EC(v4, qword_100020A18);
  sub_1000015CC(v4, qword_100020A18);
  v5 = type metadata accessor for NameSpecification();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t sub_100007E64()
{
  v1[89] = v0;
  v2 = type metadata accessor for AvailabilityStatus();
  v1[90] = v2;
  v3 = *(v2 - 8);
  v1[91] = v3;
  v4 = *(v3 + 64) + 15;
  v1[92] = swift_task_alloc();
  v5 = type metadata accessor for AvailabilityModel();
  v1[93] = v5;
  v6 = *(v5 - 8);
  v1[94] = v6;
  v7 = *(v6 + 64) + 15;
  v1[95] = swift_task_alloc();
  v8 = type metadata accessor for SiriAssistantLocale();
  v1[96] = v8;
  v9 = *(v8 - 8);
  v1[97] = v9;
  v10 = *(v9 + 64) + 15;
  v1[98] = swift_task_alloc();
  v11 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v1[99] = swift_task_alloc();
  v12 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v1[100] = v12;
  v13 = *(v12 - 8);
  v1[101] = v13;
  v14 = *(v13 + 64) + 15;
  v1[102] = swift_task_alloc();
  v15 = type metadata accessor for JSONEncoder.OutputFormatting();
  v1[103] = v15;
  v16 = *(v15 - 8);
  v1[104] = v16;
  v17 = *(v16 + 64) + 15;
  v1[105] = swift_task_alloc();
  v18 = type metadata accessor for Diagnostics(0);
  v1[106] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v1[107] = swift_task_alloc();

  return _swift_task_switch(sub_1000080F0, 0, 0);
}

uint64_t sub_1000080F0()
{
  v1 = objc_opt_self();
  v0[108] = v1;
  v2 = [v1 defaultStore];
  v0[109] = v2;
  if (v2)
  {
    v3 = v2;
    v0[2] = v0;
    v0[7] = v0 + 83;
    v0[3] = sub_10000823C;
    v4 = swift_continuation_init();
    v5 = sub_100001B98(&qword_1000201A0, &qword_100016AC8);
    v0[110] = v5;
    v0[49] = v5;
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = sub_100015B84;
    v0[45] = &unk_10001CB20;
    v0[46] = v4;
    [v3 aa_primaryAppleAccountWithCompletion:v0 + 42];
    v2 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v2);
}

uint64_t sub_10000823C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 888) = v2;
  if (v2)
  {
    v3 = sub_10000C594;
  }

  else
  {
    v3 = sub_10000834C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100009214()
{
  v2 = *v1;
  v3 = *(*v1 + 912);
  v7 = *v1;
  *(*v1 + 920) = v0;

  if (v0)
  {
    v4 = sub_10000C668;
  }

  else
  {
    v5 = *(v2 + 904);

    v4 = sub_100009330;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100009330()
{
  v42 = v0[107];
  v43 = v0[115];
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[101];
  v40 = v0[100];
  v41 = v0[106];
  v6 = type metadata accessor for JSONEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100001B98(&qword_1000201E8, &qword_100016B10);
  v9 = *(v2 + 72);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100016970;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  v0[77] = v11;
  sub_10000FCE0(&qword_1000201F0, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_100001B98(&qword_1000201F8, &qword_100016B18);
  sub_100011794(&qword_100020200, &qword_1000201F8, &qword_100016B18);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  (*(v5 + 104))(v4, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v40);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_10000FCE0(&qword_100020208, type metadata accessor for Diagnostics);
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v0[112];
  v15 = v0[107];
  if (v43)
  {
    sub_100011734(v0[107], type metadata accessor for Diagnostics);

    v16 = v0[107];
    v17 = v0[105];
    v18 = v0[102];
    v19 = v0[99];
    v20 = v0[98];
    v21 = v0[95];
    v22 = v0[92];

    v23 = v0[1];
  }

  else
  {
    v24 = v0[99];
    v25 = v12;
    v26 = v13;
    static String.Encoding.utf8.getter();
    v27 = String.init(data:encoding:)();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xD00000000000002ELL;
    }

    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0x8000000100018720;
    }

    sub_100001B98(&qword_1000201A8, &qword_100016AD0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100016960;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 32) = v29;
    *(v31 + 40) = v30;
    print(_:separator:terminator:)();

    sub_100010764(v25, v26);

    sub_100011734(v15, type metadata accessor for Diagnostics);
    v32 = v0[107];
    v33 = v0[105];
    v34 = v0[102];
    v35 = v0[99];
    v36 = v0[98];
    v37 = v0[95];
    v38 = v0[92];

    v23 = v0[1];
  }

  return v23();
}

uint64_t sub_100009728()
{
  v2 = *(*v1 + 952);
  v5 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v3 = sub_10000C740;
  }

  else
  {
    v3 = sub_10000983C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100009BF0()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 992) = v2;
  if (v2)
  {
    v3 = sub_10000CB34;
  }

  else
  {
    v3 = sub_100009D00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000AB64()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1024) = v2;
  if (v2)
  {
    v3 = sub_10000D960;
  }

  else
  {
    v3 = sub_10000AC74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000B5CC()
{
  v1 = *(*v0 + 1040);
  v2 = *(*v0 + 1032);
  v4 = *v0;

  return _swift_task_switch(sub_10000B6E4, 0, 0);
}

uint64_t sub_10000BD84()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1056) = v2;
  if (v2)
  {
    v3 = sub_10000E2E4;
  }

  else
  {
    v3 = sub_10000BE94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000C594()
{
  v1 = v0[111];
  v2 = v0[109];
  swift_willThrow();

  v3 = v0[111];
  v4 = v0[107];
  v5 = v0[105];
  v6 = v0[102];
  v7 = v0[99];
  v8 = v0[98];
  v9 = v0[95];
  v10 = v0[92];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10000C668()
{
  v1 = *(v0 + 904);

  v2 = *(v0 + 920);
  v3 = *(v0 + 856);
  v4 = *(v0 + 840);
  v5 = *(v0 + 816);
  v6 = *(v0 + 792);
  v7 = *(v0 + 784);
  v8 = *(v0 + 760);
  v9 = *(v0 + 736);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10000C740()
{
  v1 = v0[120];
  v2 = v0[118];
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100016960;
  swift_getErrorValue();
  v4 = v0[66];
  v5 = v0[67];
  v6 = v0[68];
  v7._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v7);

  *(v3 + 56) = &type metadata for String;
  *(v3 + 32) = 0xD000000000000022;
  *(v3 + 40) = 0x80000001000186D0;
  print(_:separator:terminator:)();

  v8 = v0[118];
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100016960;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 32) = 0xD00000000000001ALL;
  *(v9 + 40) = 0x8000000100018040;
  print(_:separator:terminator:)();
  v0[121] = 0;

  type metadata accessor for FeatureCache();
  static FeatureCache.shared.getter();
  v10 = FeatureCache.persistentDomain.getter();

  v11 = v0[118];
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100016960;
  if (v10)
  {
    v13._countAndFlagsBits = Dictionary.Keys.description.getter();
    String.append(_:)(v13);

    v14 = 0x8000000100018640;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = 0xD000000000000026;
    v15 = v0[118];
  }

  else
  {
    v14 = 0x8000000100018060;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = 0xD00000000000001BLL;
  }

  *(v12 + 40) = v14;
  print(_:separator:terminator:)();

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100016960;
  v17._object = 0x8000000100018080;
  v17._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v17);
  *(v16 + 56) = &type metadata for String;
  *(v16 + 32) = 2106122;
  *(v16 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  v18 = objc_opt_self();
  v0[122] = v18;
  v19 = String._bridgeToObjectiveC()();
  v0[123] = v19;
  v0[26] = v0;
  v0[31] = v0 + 79;
  v0[27] = sub_100009BF0;
  v20 = swift_continuation_init();
  v0[41] = sub_100001B98(&qword_1000201B0, &qword_100016AD8);
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_100015B84;
  v0[37] = &unk_10001CB48;
  v0[38] = v20;
  [v18 getTicketStatusFromCacheForFeature:v19 completionHandler:v0 + 34];

  return _swift_continuation_await(v0 + 26);
}

uint64_t sub_10000E658(uint64_t a1)
{
  v2 = sub_100001B98(&qword_1000202F0, &qword_100016B78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  sub_100011480();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  static CSFFeatureManager.requestFeature(id:allowStale:completion:)();
}

uint64_t sub_10000E7C8(void *a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100001B98(&qword_1000202F0, &qword_100016B78);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v3 = a1;
    sub_100001B98(&qword_1000202F0, &qword_100016B78);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10000E84C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100011650((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001B98(&qword_1000201C8, &qword_100016AE8);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000E91C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100011650((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100001B98(&qword_1000201C8, &qword_100016AE8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000E9F4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SingleValueParsingStrategy();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100001B98(&qword_100020310, &qword_100016B90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v22 - v6;
  v8 = sub_100001B98(&qword_100020318, &qword_100016B98);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v22 - v10;
  v12 = type metadata accessor for NameSpecification();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v27 = 0;
  static NameSpecification.long.getter();
  ArgumentHelp.init(stringLiteral:)();
  v14 = type metadata accessor for ArgumentHelp();
  v25 = *(*(v14 - 8) + 56);
  v25(v11, 0, 1, v14);
  v15 = type metadata accessor for CompletionKind();
  v16 = *(v15 - 8);
  v23 = *(v16 + 56);
  v24 = v16 + 56;
  v23(v7, 1, 1, v15);
  static SingleValueParsingStrategy.next.getter();
  Option<A>.init(wrappedValue:name:parsing:help:completion:)();
  v17 = type metadata accessor for GMDiagnostics(0);
  *(a1 + v17[5]) = 0;
  *(a1 + v17[6]) = 0;
  v22[1] = v17[7];
  v26 = 1;
  static NameSpecification.long.getter();
  ArgumentHelp.init(stringLiteral:)();
  v18 = v25;
  v25(v11, 0, 1, v14);
  v23(v7, 1, 1, v15);
  static SingleValueParsingStrategy.next.getter();
  Option<A>.init(wrappedValue:name:parsing:help:completion:)();
  v19 = v17[8];
  static NameSpecification.long.getter();
  v18(v11, 1, 1, v14);
  Flag<A>.init(wrappedValue:name:help:)();
  v20 = v17[9];
  static NameSpecification.long.getter();
  v18(v11, 1, 1, v14);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t sub_10000ED9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a1;
  v61 = a2;
  v65 = sub_100001B98(&qword_1000200D0, &unk_100016998);
  v63 = *(v65 - 8);
  v2 = *(v63 + 64);
  v3 = __chkstk_darwin(v65);
  v62 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v64 = &v60 - v5;
  v6 = sub_100001B98(&qword_1000200C8, &qword_100016990);
  v7 = *(v6 - 8);
  v70 = v6;
  v71 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v67 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = &v60 - v11;
  v73 = sub_100001B98(&qword_100020320, &qword_100016BA0);
  v69 = *(v73 - 8);
  v12 = *(v69 + 64);
  __chkstk_darwin(v73);
  v79 = &v60 - v13;
  v14 = type metadata accessor for SingleValueParsingStrategy();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v82 = (&v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_100001B98(&qword_100020310, &qword_100016B90);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v60 - v19;
  v21 = sub_100001B98(&qword_100020318, &qword_100016B98);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v60 - v23;
  v25 = type metadata accessor for NameSpecification();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v27 = type metadata accessor for GMDiagnostics(0);
  v28 = (v27 - 8);
  v29 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = 0;
  static NameSpecification.long.getter();
  ArgumentHelp.init(stringLiteral:)();
  v32 = type metadata accessor for ArgumentHelp();
  v33 = *(v32 - 8);
  v77 = *(v33 + 56);
  v78 = (v33 + 56);
  v74 = v32;
  v77(v24, 0, 1, v32);
  v34 = type metadata accessor for CompletionKind();
  v35 = *(v34 - 8);
  v75 = *(v35 + 56);
  v76 = v35 + 56;
  v75(v20, 1, 1, v34);
  static SingleValueParsingStrategy.next.getter();
  v36 = v20;
  Option<A>.init(wrappedValue:name:parsing:help:completion:)();
  v68 = v28[7];
  v31[v68] = 0;
  v66 = v28[8];
  v31[v66] = 0;
  v37 = v28[9];
  v89 = 1;
  static NameSpecification.long.getter();
  ArgumentHelp.init(stringLiteral:)();
  v38 = v77;
  v77(v24, 0, 1, v32);
  v75(v36, 1, 1, v34);
  static SingleValueParsingStrategy.next.getter();
  v76 = v37;
  Option<A>.init(wrappedValue:name:parsing:help:completion:)();
  v39 = v28[10];
  static NameSpecification.long.getter();
  v40 = v74;
  v38(v24, 1, 1, v74);
  Flag<A>.init(wrappedValue:name:help:)();
  v41 = v28[11];
  static NameSpecification.long.getter();
  v38(v24, 1, 1, v40);
  v42 = v31;
  v43 = v80;
  Flag<A>.init(wrappedValue:name:help:)();
  v44 = v43[4];
  sub_100011650(v43, v43[3]);
  sub_100011694();
  v45 = v79;
  v46 = v81;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v46)
  {
    v81 = v41;
    v82 = v39;
    v47 = v71;
    v88 = 0;
    sub_100011794(&qword_100020330, &qword_1000200C8, &qword_100016990);
    v48 = v70;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v49 = *(v47 + 40);
    v49(v42, v72, v48);
    v87 = 1;
    v50 = KeyedDecodingContainer.decode(_:forKey:)();
    v78 = v49;
    v71 = v47 + 40;
    *(v42 + v68) = v50 & 1;
    v86 = 2;
    v51 = KeyedDecodingContainer.decode(_:forKey:)();
    v52 = v67;
    *(v42 + v66) = v51 & 1;
    v85 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v78(v42 + v76, v52, v48);
    v84 = 4;
    sub_100011794(&qword_100020338, &qword_1000200D0, &unk_100016998);
    v55 = v64;
    v54 = v65;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v56 = v69;
    v57 = *(v63 + 40);
    v58 = v82 + v42;
    v63 += 40;
    v82 = v57;
    v57(v58, v55, v54);
    v83 = 5;
    v59 = v73;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v56 + 8))(v45, v59);
    v82(v42 + v81, v62, v54);
    sub_100014340(v42, v61, type metadata accessor for GMDiagnostics);
  }

  sub_1000116E8(v43);
  return sub_100011734(v42, type metadata accessor for GMDiagnostics);
}

uint64_t sub_10000F684()
{
  v1 = *v0;
  v2 = 1819047270;
  v3 = 0x696B726F7774656ELL;
  v4 = 1685289331;
  if (v1 != 4)
  {
    v4 = 1852797802;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 1)
  {
    v5 = 0xD000000000000016;
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

uint64_t sub_10000F738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100013FDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000F76C(uint64_t a1)
{
  v2 = sub_100011694();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F7A8(uint64_t a1)
{
  v2 = sub_100011694();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000F7E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000F870;

  return sub_100007E64();
}

uint64_t sub_10000F870()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000F964@<X0>(uint64_t a1@<X8>)
{
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000015CC(v2, qword_100020A18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_10000FA10(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001B98(&qword_100020198, &qword_100016A90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_100014340(v2, v5, type metadata accessor for GMDiagnostics);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_100011414(v5, v12 + v11, type metadata accessor for GMDiagnostics);
  sub_100001FF4(0, 0, v9, &unk_100016AA0, v12);

  v13 = [objc_opt_self() mainRunLoop];
  [v13 run];
}

uint64_t sub_10000FC88(uint64_t a1)
{
  result = sub_10000FCE0(&qword_100020070, type metadata accessor for GMDiagnostics);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FCE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000FD70()
{
  v1 = (type metadata accessor for GMDiagnostics(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = sub_100001B98(&qword_1000200C8, &qword_100016990);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v7(v0 + v3 + v1[9], v6);
  v8 = v1[10];
  v9 = sub_100001B98(&qword_1000200D0, &unk_100016998);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v3 + v8, v9);
  v10(v0 + v3 + v1[11], v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000FEF0()
{
  v2 = *(type metadata accessor for GMDiagnostics(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000F870;

  return sub_100001E1C();
}

uint64_t sub_10000FFE0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000100D8;

  return v7(a1);
}

uint64_t sub_1000100D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000101D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010208(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100015B68;

  return sub_10000FFE0(a1, v5);
}

uint64_t sub_1000102C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F870;

  return sub_10000FFE0(a1, v5);
}

uint64_t sub_1000103A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_100010420(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B98(&qword_100020300, &qword_100016B80);
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

uint64_t sub_10001052C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10001061C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100010B00(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10001061C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

char *sub_1000106BC(char *a1, int64_t a2, char a3)
{
  result = sub_1000107B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000106DC(char *a1, int64_t a2, char a3)
{
  result = sub_1000108D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000106FC(char *a1, int64_t a2, char a3)
{
  result = sub_1000109F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10001071C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100010764(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_1000107B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B98(&qword_1000202D0, &qword_100016B60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000108D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B98(&qword_1000202D8, &qword_100016B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000109F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B98(&qword_100020300, &qword_100016B80);
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

uint64_t sub_100010B00(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100011794(&qword_1000202E8, &qword_1000202E0, &qword_100016B70);
          for (i = 0; i != v6; ++i)
          {
            sub_100001B98(&qword_1000202E0, &qword_100016B70);
            v9 = sub_100010CA4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CloudFeature();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_100010CA4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_100010D24;
  }

  __break(1u);
  return result;
}

uint64_t sub_100010D6C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100010DA4()
{
  result = qword_100020250;
  if (!qword_100020250)
  {
    sub_10001071C(&qword_100020228, &qword_100016B38);
    sub_10000FCE0(&qword_100020258, &type metadata accessor for FeatureRequestStartDiagnostic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020250);
  }

  return result;
}

unint64_t sub_100010E58()
{
  result = qword_100020260;
  if (!qword_100020260)
  {
    sub_10001071C(&qword_100020228, &qword_100016B38);
    sub_10000FCE0(&qword_100020268, &type metadata accessor for FeatureRequestStartDiagnostic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020260);
  }

  return result;
}

unint64_t sub_100010F0C()
{
  result = qword_100020270;
  if (!qword_100020270)
  {
    sub_10001071C(&qword_100020220, &qword_100016B30);
    sub_10000FCE0(&qword_100020278, &type metadata accessor for FeatureRequestFinishDiagnostic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020270);
  }

  return result;
}

unint64_t sub_100010FC0()
{
  result = qword_100020280;
  if (!qword_100020280)
  {
    sub_10001071C(&qword_100020220, &qword_100016B30);
    sub_10000FCE0(&qword_100020288, &type metadata accessor for FeatureRequestFinishDiagnostic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020280);
  }

  return result;
}

unint64_t sub_100011074()
{
  result = qword_100020290;
  if (!qword_100020290)
  {
    sub_10001071C(&qword_100020218, &qword_100016B28);
    sub_10000FCE0(&qword_100020298, &type metadata accessor for AssetDiagnostics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020290);
  }

  return result;
}

unint64_t sub_100011128()
{
  result = qword_1000202A0;
  if (!qword_1000202A0)
  {
    sub_10001071C(&qword_100020218, &qword_100016B28);
    sub_10000FCE0(&qword_1000202A8, &type metadata accessor for AssetDiagnostics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202A0);
  }

  return result;
}

unint64_t sub_1000111DC()
{
  result = qword_1000202B0;
  if (!qword_1000202B0)
  {
    sub_10001071C(&qword_100020210, &qword_100016B20);
    sub_10000FCE0(&qword_1000202B8, &type metadata accessor for CoreTelephonyDiagnostic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202B0);
  }

  return result;
}

unint64_t sub_100011290()
{
  result = qword_1000202C0;
  if (!qword_1000202C0)
  {
    sub_10001071C(&qword_100020210, &qword_100016B20);
    sub_10000FCE0(&qword_1000202C8, &type metadata accessor for CoreTelephonyDiagnostic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202C0);
  }

  return result;
}

uint64_t sub_100011344(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001B98(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000113AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001B98(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011414(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100011480()
{
  result = qword_1000202F8;
  if (!qword_1000202F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000202F8);
  }

  return result;
}

uint64_t sub_1000114CC()
{
  v1 = sub_100001B98(&qword_1000202F0, &qword_100016B78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100011560(void *a1, char a2)
{
  v4 = *(*(sub_100001B98(&qword_1000202F0, &qword_100016B78) - 8) + 80);

  return sub_10000E7C8(a1, a2 & 1);
}

uint64_t *sub_1000115EC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void *sub_100011650(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100011694()
{
  result = qword_100020328;
  if (!qword_100020328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020328);
  }

  return result;
}

uint64_t sub_1000116E8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100011734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100011794(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001071C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GMDiagnostics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GMDiagnostics.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100011940(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100011954(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10001199C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000119EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100011A00(uint64_t a1, int a2)
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

uint64_t sub_100011A48(uint64_t result, int a2, int a3)
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

void sub_100011AC8()
{
  sub_100012584(319, &unk_1000203A8, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100011B74(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_100001B98(&qword_100020230, &qword_100016B40);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100011C44(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_100001B98(&qword_100020230, &qword_100016B40);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100011CF0()
{
  sub_100012584(319, &unk_1000203A8, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100011DA4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100001B98(&qword_100020240, &qword_100016B50);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_100001B98(&qword_100020238, &qword_100016B48);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_15;
  }

  v13 = sub_100001B98(&qword_100020228, &qword_100016B38);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[16];
    goto LABEL_15;
  }

  v14 = sub_100001B98(&qword_100020220, &qword_100016B30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[17];
    goto LABEL_15;
  }

  v15 = sub_100001B98(&qword_100020218, &qword_100016B28);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[18];
    goto LABEL_15;
  }

  v17 = sub_100001B98(&qword_100020210, &qword_100016B20);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[20];

  return v18(v19, a2, v17);
}

uint64_t sub_100012044(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_100001B98(&qword_100020240, &qword_100016B50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100001B98(&qword_100020238, &qword_100016B48);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_13;
  }

  v13 = sub_100001B98(&qword_100020228, &qword_100016B38);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[16];
    goto LABEL_13;
  }

  v14 = sub_100001B98(&qword_100020220, &qword_100016B30);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[17];
    goto LABEL_13;
  }

  v15 = sub_100001B98(&qword_100020218, &qword_100016B28);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[18];
    goto LABEL_13;
  }

  v17 = sub_100001B98(&qword_100020210, &qword_100016B20);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[20];

  return v18(v19, a2, a2, v17);
}

void sub_1000122D0()
{
  sub_100012534(319, &qword_1000204D8, &type metadata for Diagnostics.SanitizedFeature, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100012534(319, &qword_1000204E0, &type metadata for Diagnostics.SanitizedTicket, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100012584(319, &qword_1000204E8, type metadata accessor for Diagnostics.AFMFollowUpDiagnostics);
      if (v2 <= 0x3F)
      {
        sub_100012584(319, &qword_1000204F0, type metadata accessor for Diagnostics.ADMFollowUpDiagnostics);
        if (v3 <= 0x3F)
        {
          sub_100012584(319, &qword_1000204F8, &type metadata accessor for FeatureRequestStartDiagnostic);
          if (v4 <= 0x3F)
          {
            sub_100012584(319, &qword_100020500, &type metadata accessor for FeatureRequestFinishDiagnostic);
            if (v5 <= 0x3F)
            {
              sub_100012584(319, &qword_100020508, &type metadata accessor for AssetDiagnostics);
              if (v6 <= 0x3F)
              {
                sub_100012584(319, &unk_100020510, &type metadata accessor for CoreTelephonyDiagnostic);
                if (v7 <= 0x3F)
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
}

void sub_100012534(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100012584(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for Diagnostics.OptInDiagnostics(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Diagnostics.OptInDiagnostics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Diagnostics.OptInDiagnostics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000126C0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100012760(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Diagnostics.Configuration(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Diagnostics.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Diagnostics.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1000128E0()
{
  result = qword_100020580;
  if (!qword_100020580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020580);
  }

  return result;
}

unint64_t sub_100012938()
{
  result = qword_100020588;
  if (!qword_100020588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020588);
  }

  return result;
}

unint64_t sub_100012990()
{
  result = qword_100020590;
  if (!qword_100020590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020590);
  }

  return result;
}

unint64_t sub_1000129E4()
{
  result = qword_1000205A0;
  if (!qword_1000205A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205A0);
  }

  return result;
}

unint64_t sub_100012A38()
{
  result = qword_1000205A8;
  if (!qword_1000205A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205A8);
  }

  return result;
}

unint64_t sub_100012A8C()
{
  result = qword_1000205C0;
  if (!qword_1000205C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205C0);
  }

  return result;
}

uint64_t sub_100012AE0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001071C(&qword_1000205C8, &qword_1000171E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100012B58()
{
  result = qword_1000205D8;
  if (!qword_1000205D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205D8);
  }

  return result;
}

unint64_t sub_100012BAC()
{
  result = qword_1000205F0;
  if (!qword_1000205F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205F0);
  }

  return result;
}

unint64_t sub_100012C00()
{
  result = qword_1000205F8;
  if (!qword_1000205F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205F8);
  }

  return result;
}

unint64_t sub_100012C54()
{
  result = qword_100020600;
  if (!qword_100020600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020600);
  }

  return result;
}

unint64_t sub_100012CA8()
{
  result = qword_100020608;
  if (!qword_100020608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020608);
  }

  return result;
}

unint64_t sub_100012CFC()
{
  result = qword_100020610;
  if (!qword_100020610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020610);
  }

  return result;
}

uint64_t sub_100012D50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100018D00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100018BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696B726F7774656ELL && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1685289331 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1852797802 && a2 == 0xE400000000000000)
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

unint64_t sub_100012F18(uint64_t *a1)
{
  v3 = sub_100001B98(&qword_100020788, &qword_100017288);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = a1[4];
  sub_100011650(a1, a1[3]);
  sub_10001496C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_1000116E8(a1);
  }

  v24 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 3;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 4;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_1000116E8(a1);
  if (v18)
  {
    v13 = &_mh_execute_header;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0x1000000;
  if ((v19 & 1) == 0)
  {
    v14 = 0;
  }

  v15 = 0x10000;
  if ((v11 & 1) == 0)
  {
    v15 = 0;
  }

  v16 = 256;
  if ((v10 & 1) == 0)
  {
    v16 = 0;
  }

  return v16 & 0xFFFFFFFFFFFFFFFELL | v9 & 1 | v15 | v14 | v13;
}

uint64_t sub_100013164(uint64_t *a1)
{
  v3 = sub_100001B98(&qword_100020618, &qword_1000171F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100011650(a1, a1[3]);
  sub_1000141F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_1000116E8(a1);
  return v8;
}

uint64_t sub_10001333C(uint64_t *a1)
{
  v3 = sub_100001B98(&qword_100020630, &qword_100017200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100011650(a1, a1[3]);
  sub_100014244();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    type metadata accessor for TicketStatus();
    v10[15] = 1;
    sub_10000FCE0(&qword_100020640, &type metadata accessor for TicketStatus);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_1000116E8(a1);
  return v8;
}

uint64_t sub_100013564(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x46746E6553736168 && a2 == 0xEF7055776F6C6C6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144746E6573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100018CC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000100018CE0 == a2)
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

uint64_t sub_1000136DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E49646574706FLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x426E49646574706FLL && a2 == 0xEC00000079646475 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74754F646574706FLL && a2 == 0xED00007964647542 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
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

uint64_t sub_100013848(uint64_t *a1)
{
  v3 = sub_100001B98(&qword_100020718, &qword_100017248);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16[-v6];
  v8 = a1[4];
  sub_100011650(a1, a1[3]);
  sub_100014774();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_1000116E8(a1);
  }

  v16[31] = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v16[30] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v16[29] = 2;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v16[28] = 3;
  sub_1000147C8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_1000116E8(a1);
  if (v10)
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 & 0xFFFFFFFE | v9 & 1;
  if (v12)
  {
    v15 = 0x10000;
  }

  else
  {
    v15 = 0;
  }

  return v14 | v15;
}

uint64_t sub_100013A78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100018C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7374656B636974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F6C6C6F466D6661 && a2 == 0xEB00000000705577 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F6C6C6F466D6461 && a2 == 0xEB00000000705577 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x737361707962 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73617079426D6461 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7079427465737361 && a2 == 0xEB00000000737361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E4974706FLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65446C6961746572 && a2 == 0xEA00000000006F6DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100018C40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100018C60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100018C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100018CA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656C655465726F63 && a2 == 0xED0000797274656DLL)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_100013FDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047270 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100018BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100018C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696B726F7774656ELL && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1685289331 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1852797802 && a2 == 0xE400000000000000)
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

unint64_t sub_1000141F0()
{
  result = qword_100020620;
  if (!qword_100020620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020620);
  }

  return result;
}

unint64_t sub_100014244()
{
  result = qword_100020638;
  if (!qword_100020638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020638);
  }

  return result;
}

unint64_t sub_100014298()
{
  result = qword_100020660;
  if (!qword_100020660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020660);
  }

  return result;
}

unint64_t sub_1000142EC()
{
  result = qword_100020688;
  if (!qword_100020688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020688);
  }

  return result;
}

uint64_t sub_100014340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000143A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001B98(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100014408()
{
  result = qword_1000206A0;
  if (!qword_1000206A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206A0);
  }

  return result;
}

uint64_t sub_10001445C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001071C(&qword_1000205B0, &qword_1000171E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000144D4()
{
  result = qword_1000206B0;
  if (!qword_1000206B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206B0);
  }

  return result;
}

unint64_t sub_100014528()
{
  result = qword_1000206C0;
  if (!qword_1000206C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206C0);
  }

  return result;
}

unint64_t sub_10001457C()
{
  result = qword_1000206D8;
  if (!qword_1000206D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206D8);
  }

  return result;
}

unint64_t sub_1000145D0()
{
  result = qword_1000206E0;
  if (!qword_1000206E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206E0);
  }

  return result;
}

unint64_t sub_100014624()
{
  result = qword_1000206E8;
  if (!qword_1000206E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206E8);
  }

  return result;
}

unint64_t sub_100014678()
{
  result = qword_1000206F0;
  if (!qword_1000206F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206F0);
  }

  return result;
}

unint64_t sub_1000146CC()
{
  result = qword_1000206F8;
  if (!qword_1000206F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206F8);
  }

  return result;
}

unint64_t sub_100014720()
{
  result = qword_100020708;
  if (!qword_100020708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020708);
  }

  return result;
}

unint64_t sub_100014774()
{
  result = qword_100020720;
  if (!qword_100020720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020720);
  }

  return result;
}

unint64_t sub_1000147C8()
{
  result = qword_100020728;
  if (!qword_100020728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020728);
  }

  return result;
}

unint64_t sub_10001481C()
{
  result = qword_100020738;
  if (!qword_100020738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020738);
  }

  return result;
}

unint64_t sub_100014870()
{
  result = qword_100020748;
  if (!qword_100020748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020748);
  }

  return result;
}

unint64_t sub_1000148C4()
{
  result = qword_100020760;
  if (!qword_100020760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020760);
  }

  return result;
}

unint64_t sub_100014918()
{
  result = qword_100020778;
  if (!qword_100020778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020778);
  }

  return result;
}

unint64_t sub_10001496C()
{
  result = qword_100020790;
  if (!qword_100020790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020790);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Diagnostics.Configuration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Diagnostics.Configuration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100014B74(unsigned int *a1, int a2)
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

_WORD *sub_100014BC4(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_100014C54(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100014CE8(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100014DD8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for Diagnostics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Diagnostics.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100014FCC()
{
  result = qword_1000207A0;
  if (!qword_1000207A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207A0);
  }

  return result;
}

unint64_t sub_100015024()
{
  result = qword_1000207A8;
  if (!qword_1000207A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207A8);
  }

  return result;
}

unint64_t sub_10001507C()
{
  result = qword_1000207B0;
  if (!qword_1000207B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207B0);
  }

  return result;
}

unint64_t sub_1000150D4()
{
  result = qword_1000207B8;
  if (!qword_1000207B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207B8);
  }

  return result;
}

unint64_t sub_10001512C()
{
  result = qword_1000207C0;
  if (!qword_1000207C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207C0);
  }

  return result;
}

unint64_t sub_100015184()
{
  result = qword_1000207C8;
  if (!qword_1000207C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207C8);
  }

  return result;
}

unint64_t sub_1000151DC()
{
  result = qword_1000207D0;
  if (!qword_1000207D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207D0);
  }

  return result;
}

unint64_t sub_100015234()
{
  result = qword_1000207D8;
  if (!qword_1000207D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207D8);
  }

  return result;
}

unint64_t sub_10001528C()
{
  result = qword_1000207E0;
  if (!qword_1000207E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207E0);
  }

  return result;
}

unint64_t sub_1000152E4()
{
  result = qword_1000207E8;
  if (!qword_1000207E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207E8);
  }

  return result;
}

unint64_t sub_10001533C()
{
  result = qword_1000207F0;
  if (!qword_1000207F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207F0);
  }

  return result;
}

unint64_t sub_100015394()
{
  result = qword_1000207F8;
  if (!qword_1000207F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207F8);
  }

  return result;
}

unint64_t sub_1000153EC()
{
  result = qword_100020800;
  if (!qword_100020800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020800);
  }

  return result;
}

unint64_t sub_100015444()
{
  result = qword_100020808;
  if (!qword_100020808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020808);
  }

  return result;
}

unint64_t sub_10001549C()
{
  result = qword_100020810;
  if (!qword_100020810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020810);
  }

  return result;
}

unint64_t sub_1000154F4()
{
  result = qword_100020818;
  if (!qword_100020818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020818);
  }

  return result;
}

unint64_t sub_10001554C()
{
  result = qword_100020820;
  if (!qword_100020820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020820);
  }

  return result;
}

unint64_t sub_1000155A4()
{
  result = qword_100020828;
  if (!qword_100020828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020828);
  }

  return result;
}

unint64_t sub_1000155FC()
{
  result = qword_100020830;
  if (!qword_100020830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020830);
  }

  return result;
}

unint64_t sub_100015654()
{
  result = qword_100020838;
  if (!qword_100020838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020838);
  }

  return result;
}

unint64_t sub_1000156AC()
{
  result = qword_100020840;
  if (!qword_100020840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020840);
  }

  return result;
}

unint64_t sub_100015704()
{
  result = qword_100020848;
  if (!qword_100020848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020848);
  }

  return result;
}

unint64_t sub_10001575C()
{
  result = qword_100020850;
  if (!qword_100020850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020850);
  }

  return result;
}

unint64_t sub_1000157B4()
{
  result = qword_100020858;
  if (!qword_100020858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020858);
  }

  return result;
}

unint64_t sub_10001580C()
{
  result = qword_100020860;
  if (!qword_100020860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020860);
  }

  return result;
}

unint64_t sub_100015864()
{
  result = qword_100020868;
  if (!qword_100020868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020868);
  }

  return result;
}

unint64_t sub_1000158BC()
{
  result = qword_100020870;
  if (!qword_100020870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020870);
  }

  return result;
}

unint64_t sub_100015914()
{
  result = qword_100020878;
  if (!qword_100020878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020878);
  }

  return result;
}

unint64_t sub_10001596C()
{
  result = qword_100020880;
  if (!qword_100020880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020880);
  }

  return result;
}

unint64_t sub_1000159C4()
{
  result = qword_100020888;
  if (!qword_100020888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020888);
  }

  return result;
}

unint64_t sub_100015A1C()
{
  result = qword_100020890;
  if (!qword_100020890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020890);
  }

  return result;
}

unint64_t sub_100015A74()
{
  result = qword_100020898;
  if (!qword_100020898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020898);
  }

  return result;
}

unint64_t sub_100015ACC()
{
  result = qword_1000208A0;
  if (!qword_1000208A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208A0);
  }

  return result;
}

uint64_t sub_100015BA8()
{
  v0 = type metadata accessor for Logger();
  sub_1000115EC(v0, qword_100020AA8);
  sub_1000015CC(v0, qword_100020AA8);
  return Logger.init(subsystem:category:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}