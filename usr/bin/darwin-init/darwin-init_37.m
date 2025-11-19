uint64_t Generate.UserOptions.init(user:password:admin:passwordlessSudo:key:principals:groups:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a6;
  v43 = a7;
  v40 = a5;
  v13 = type metadata accessor for ArrayParsingStrategy();
  __chkstk_darwin(v13 - 8);
  v41 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v15 - 8);
  v39 = &v36 - v16;
  v17 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v17 - 8);
  v19 = &v36 - v18;
  v20 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v20 - 8);
  v21 = sub_1000039E8(&qword_1004AF488);
  (*(*(v21 - 8) + 32))(a8, a1, v21);
  v22 = type metadata accessor for Generate.UserOptions(0);
  v23 = v22[5];
  v24 = sub_1000039E8(&qword_1004AF3F0);
  (*(*(v24 - 8) + 32))(a8 + v23, a2, v24);
  v25 = v22[6];
  v26 = sub_1000039E8(&qword_1004AF3F8);
  v27 = *(*(v26 - 8) + 32);
  v27(a8 + v25, a3, v26);
  v27(a8 + v22[7], a4, v26);
  v28 = v22[8];
  v29 = sub_1000039E8(&qword_1004AF470);
  (*(*(v29 - 8) + 32))(a8 + v28, v40, v29);
  v40 = v22[9];
  static NameSpecification.customLong(_:withSingleDash:)();
  ArgumentHelp.init(stringLiteral:)();
  v30 = type metadata accessor for ArgumentHelp();
  v31 = *(v30 - 8);
  v37 = *(v31 + 56);
  v38 = v31 + 56;
  v37(v19, 0, 1, v30);
  v32 = type metadata accessor for CompletionKind();
  v33 = *(*(v32 - 8) + 56);
  v34 = v39;
  v33(v39, 1, 1, v32);
  static ArrayParsingStrategy.singleValue.getter();
  Option.init<A>(wrappedValue:name:parsing:help:completion:)();
  static NameSpecification.customLong(_:withSingleDash:)();
  ArgumentHelp.init(stringLiteral:)();
  v37(v19, 0, 1, v30);
  v33(v34, 1, 1, v32);
  static ArrayParsingStrategy.singleValue.getter();
  return Option.init<A>(wrappedValue:name:parsing:help:completion:)();
}

uint64_t sub_1002D5D40(uint64_t *a1)
{
  sub_1000039E8(a1);
  Option.wrappedValue.getter();
  return v2;
}

uint64_t (*Generate.LogOptions.systemLogPrivacyLevel.modify(uint64_t *a1))()
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
  sub_1000039E8(&qword_1004AF490);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.LogOptions.systemLoggingEnabled.getter()
{
  type metadata accessor for Generate.LogOptions(0);
  sub_1000039E8(&qword_1004AF498);
  Option.wrappedValue.getter();
  return v1;
}

uint64_t sub_1002D5E98@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Generate.LogOptions(0);
  sub_1000039E8(&qword_1004AF498);
  result = Option.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1002D5F00()
{
  type metadata accessor for Generate.LogOptions(0);
  sub_1000039E8(&qword_1004AF498);
  return Option.wrappedValue.setter();
}

uint64_t Generate.LogOptions.systemLoggingEnabled.setter()
{
  type metadata accessor for Generate.LogOptions(0);
  sub_1000039E8(&qword_1004AF498);
  return Option.wrappedValue.setter();
}

uint64_t (*Generate.LogOptions.systemLoggingEnabled.modify(uint64_t *a1))()
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
  type metadata accessor for Generate.LogOptions(0);
  sub_1000039E8(&qword_1004AF498);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

unint64_t sub_1002D6054()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1002D608C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000015 && 0x80000001004432F0 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100443310 == a2)
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

uint64_t sub_1002D6170(uint64_t a1)
{
  v2 = sub_1002D77D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002D61AC(uint64_t a1)
{
  v2 = sub_1002D77D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Generate.LogOptions.init()@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v5 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v8 - 8);
  static NameSpecification.customLong(_:withSingleDash:)();
  ArgumentHelp.init(stringLiteral:)();
  v9 = type metadata accessor for ArgumentHelp();
  v13[0] = *(*(v9 - 8) + 56);
  (v13[0])(v7, 0, 1, v9);
  v10 = type metadata accessor for CompletionKind();
  v11 = *(*(v10 - 8) + 56);
  v11(v4, 1, 1, v10);
  static SingleValueParsingStrategy.next.getter();
  sub_1002D7780();
  Option.init<A>(name:parsing:help:completion:)();
  type metadata accessor for Generate.LogOptions(0);
  static NameSpecification.customLong(_:withSingleDash:)();
  ArgumentHelp.init(stringLiteral:)();
  (v13[0])(v7, 0, 1, v9);
  v11(v4, 1, 1, v10);
  static SingleValueParsingStrategy.next.getter();
  return Option.init<A>(name:parsing:help:completion:)();
}

uint64_t Generate.LogOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v35 = a2;
  v37 = sub_1000039E8(&qword_1004AF498);
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v34 - v2;
  v42 = sub_1000039E8(&qword_1004AF490);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v34 - v3;
  v40 = sub_1000039E8(&qword_1004AF6D8);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v47 = &v34 - v4;
  v5 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v5 - 8);
  v46 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for Generate.LogOptions(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NameSpecification.customLong(_:withSingleDash:)();
  ArgumentHelp.init(stringLiteral:)();
  v18 = type metadata accessor for ArgumentHelp();
  v19 = *(v18 - 8);
  v44 = *(v19 + 56);
  v45 = v19 + 56;
  v44(v12, 0, 1, v18);
  v20 = type metadata accessor for CompletionKind();
  v43 = *(*(v20 - 8) + 56);
  v43(v9, 1, 1, v20);
  static SingleValueParsingStrategy.next.getter();
  sub_1002D7780();
  Option.init<A>(name:parsing:help:completion:)();
  v21 = *(v15 + 28);
  static NameSpecification.customLong(_:withSingleDash:)();
  ArgumentHelp.init(stringLiteral:)();
  v44(v12, 0, 1, v18);
  v43(v9, 1, 1, v20);
  v22 = v48;
  static SingleValueParsingStrategy.next.getter();
  Option.init<A>(name:parsing:help:completion:)();
  sub_10000E2A8(v22, v22[3]);
  sub_1002D77D4();
  v23 = v47;
  v24 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_100003C3C(v22);
    v33 = v17;
  }

  else
  {
    v26 = v38;
    v25 = v39;
    v51 = 0;
    sub_10000E720(&qword_1004AF6E8, &qword_1004AF490);
    v27 = v40;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = *(v25 + 40);
    v49 = v17;
    v28(v17, v41, v42);
    v50 = 1;
    sub_10000E720(&qword_1004AF6F0, &qword_1004AF498);
    v30 = v36;
    v29 = v37;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v26 + 8))(v23, v27);
    v32 = v49;
    (*(v34 + 40))(&v49[v21], v30, v29);
    sub_1002B02E8(v32, v35, type metadata accessor for Generate.LogOptions);
    sub_100003C3C(v22);
    v33 = v32;
  }

  return sub_1002B0350(v33, type metadata accessor for Generate.LogOptions);
}

uint64_t default argument 0 of Generate.LogOptions.init(systemLogPrivacyLevel:systemLoggingEnabled:)()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v7 - 8);
  static NameSpecification.customLong(_:withSingleDash:)();
  ArgumentHelp.init(stringLiteral:)();
  v8 = type metadata accessor for ArgumentHelp();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  static SingleValueParsingStrategy.next.getter();
  sub_1002D7780();
  return Option.init<A>(name:parsing:help:completion:)();
}

uint64_t default argument 1 of Generate.LogOptions.init(systemLogPrivacyLevel:systemLoggingEnabled:)()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v7 - 8);
  static NameSpecification.customLong(_:withSingleDash:)();
  ArgumentHelp.init(stringLiteral:)();
  v8 = type metadata accessor for ArgumentHelp();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  static SingleValueParsingStrategy.next.getter();
  return Option.init<A>(name:parsing:help:completion:)();
}

uint64_t Generate.LogOptions.init(systemLogPrivacyLevel:systemLoggingEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000039E8(&qword_1004AF490);
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for Generate.LogOptions(0) + 20);
  v8 = sub_1000039E8(&qword_1004AF498);
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_1002D72A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002D72E8()
{
  result = qword_1004AF500;
  if (!qword_1004AF500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF500);
  }

  return result;
}

unint64_t sub_1002D733C()
{
  result = qword_1004AF5C0;
  if (!qword_1004AF5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF5C0);
  }

  return result;
}

unint64_t sub_1002D7390()
{
  result = qword_1004AF608;
  if (!qword_1004AF608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF608);
  }

  return result;
}

unint64_t sub_1002D73E4()
{
  result = qword_1004AF610;
  if (!qword_1004AF610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF610);
  }

  return result;
}

unint64_t sub_1002D7438()
{
  result = qword_1004AF620;
  if (!qword_1004AF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF620);
  }

  return result;
}

unint64_t sub_1002D748C()
{
  result = qword_1004AF638;
  if (!qword_1004AF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF638);
  }

  return result;
}

unint64_t sub_1002D74E0()
{
  result = qword_1004AF640;
  if (!qword_1004AF640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF640);
  }

  return result;
}

unint64_t sub_1002D7534()
{
  result = qword_1004AF650;
  if (!qword_1004AF650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF650);
  }

  return result;
}

unint64_t sub_1002D7588()
{
  result = qword_1004AF668;
  if (!qword_1004AF668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF668);
  }

  return result;
}

unint64_t sub_1002D75DC()
{
  result = qword_1004AF678;
  if (!qword_1004AF678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF678);
  }

  return result;
}

unint64_t sub_1002D7630()
{
  result = qword_1004AF690;
  if (!qword_1004AF690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF690);
  }

  return result;
}

unint64_t sub_1002D7684()
{
  result = qword_1004AF6A0;
  if (!qword_1004AF6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF6A0);
  }

  return result;
}

unint64_t sub_1002D76D8()
{
  result = qword_1004AF6A8;
  if (!qword_1004AF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF6A8);
  }

  return result;
}

unint64_t sub_1002D772C()
{
  result = qword_1004AF6B8;
  if (!qword_1004AF6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF6B8);
  }

  return result;
}

unint64_t sub_1002D7780()
{
  result = qword_1004AF6D0;
  if (!qword_1004AF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF6D0);
  }

  return result;
}

unint64_t sub_1002D77D4()
{
  result = qword_1004AF6E0;
  if (!qword_1004AF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF6E0);
  }

  return result;
}

uint64_t sub_1002D7B88@<X0>(void *a1@<X8>)
{
  sub_1000039E8(&qword_1004AF3E8);
  result = Argument.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_1002D8284@<D0>(_OWORD *a1@<X8>)
{
  sub_1000039E8(&qword_1004AF3F0);
  Option.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002D8580@<X0>(uint64_t *a1@<X3>, void *a2@<X8>)
{
  sub_1000039E8(a1);
  result = Option.wrappedValue.getter();
  *a2 = v4;
  return result;
}

double sub_1002D87A8@<D0>(uint64_t a1@<X8>)
{
  sub_1000039E8(&qword_1004AF488);
  Option.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1002D8998@<X0>(uint64_t *a1@<X3>, _BYTE *a2@<X8>)
{
  sub_1000039E8(a1);
  result = Option.wrappedValue.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_1002D8A58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000039E8(&qword_1004AF3E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_34:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000039E8(&qword_1004AF3F0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_33:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_34;
  }

  v14 = sub_1000039E8(&qword_1004AAC48);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_33;
  }

  v15 = sub_1000039E8(&qword_1004AF3F8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_33;
  }

  v16 = sub_1000039E8(&qword_1004AF400);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[17];
    goto LABEL_33;
  }

  v17 = sub_1000039E8(&qword_1004AF408);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[18];
    goto LABEL_33;
  }

  v18 = sub_1000039E8(&qword_1004AF410);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[22];
    goto LABEL_33;
  }

  v19 = sub_1000039E8(&qword_1004AF418);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[25];
    goto LABEL_33;
  }

  v20 = sub_1000039E8(&qword_1004AF420);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[26];
    goto LABEL_33;
  }

  v21 = sub_1000039E8(&qword_1004AF428);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[27];
    goto LABEL_33;
  }

  v22 = sub_1000039E8(&qword_1004AF430);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[28];
    goto LABEL_33;
  }

  v23 = sub_1000039E8(&qword_1004AF438);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[29];
    goto LABEL_33;
  }

  v24 = sub_1000039E8(&qword_1004AF440);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[30];
    goto LABEL_33;
  }

  v25 = sub_1000039E8(&qword_1004AF448);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[31];
    goto LABEL_33;
  }

  v26 = sub_1000039E8(&qword_1004AF450);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v12 = *(v26 - 8);
    v13 = a3[32];
    goto LABEL_33;
  }

  v27 = sub_1000039E8(&qword_1004AF458);
  if (*(*(v27 - 8) + 84) == a2)
  {
    v8 = v27;
    v12 = *(v27 - 8);
    v13 = a3[33];
    goto LABEL_33;
  }

  v29 = sub_1000039E8(&qword_1004AF460);
  v30 = *(*(v29 - 8) + 48);
  v31 = a1 + a3[34];

  return v30(v31, a2, v29);
}

uint64_t sub_1002D9068(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000039E8(&qword_1004AF3E8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_34:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000039E8(&qword_1004AF3F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_33:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_34;
  }

  v16 = sub_1000039E8(&qword_1004AAC48);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_33;
  }

  v17 = sub_1000039E8(&qword_1004AF3F8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_33;
  }

  v18 = sub_1000039E8(&qword_1004AF400);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[17];
    goto LABEL_33;
  }

  v19 = sub_1000039E8(&qword_1004AF408);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[18];
    goto LABEL_33;
  }

  v20 = sub_1000039E8(&qword_1004AF410);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[22];
    goto LABEL_33;
  }

  v21 = sub_1000039E8(&qword_1004AF418);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[25];
    goto LABEL_33;
  }

  v22 = sub_1000039E8(&qword_1004AF420);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[26];
    goto LABEL_33;
  }

  v23 = sub_1000039E8(&qword_1004AF428);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[27];
    goto LABEL_33;
  }

  v24 = sub_1000039E8(&qword_1004AF430);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[28];
    goto LABEL_33;
  }

  v25 = sub_1000039E8(&qword_1004AF438);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[29];
    goto LABEL_33;
  }

  v26 = sub_1000039E8(&qword_1004AF440);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[30];
    goto LABEL_33;
  }

  v27 = sub_1000039E8(&qword_1004AF448);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[31];
    goto LABEL_33;
  }

  v28 = sub_1000039E8(&qword_1004AF450);
  if (*(*(v28 - 8) + 84) == a3)
  {
    v10 = v28;
    v14 = *(v28 - 8);
    v15 = a4[32];
    goto LABEL_33;
  }

  v29 = sub_1000039E8(&qword_1004AF458);
  if (*(*(v29 - 8) + 84) == a3)
  {
    v10 = v29;
    v14 = *(v29 - 8);
    v15 = a4[33];
    goto LABEL_33;
  }

  v31 = sub_1000039E8(&qword_1004AF460);
  v32 = *(*(v31 - 8) + 56);
  v33 = a1 + a4[34];

  return v32(v33, a2, a2, v31);
}

void sub_1002D9670()
{
  sub_1002DAEC4(319, &qword_1004AF7C0, &type metadata for String, &type metadata accessor for Argument);
  if (v0 <= 0x3F)
  {
    sub_1002DC100(319, &qword_1004AF7C8, &qword_1004A7330, &unk_1003762A0, &type metadata accessor for Option);
    if (v1 <= 0x3F)
    {
      sub_1002DC100(319, &qword_1004AAD08, &qword_1004A6B48, &unk_100376810, &type metadata accessor for Option);
      if (v2 <= 0x3F)
      {
        sub_1002DC100(319, &qword_1004AF7D0, &qword_1004ADFB8, &unk_100400E60, &type metadata accessor for Flag);
        if (v3 <= 0x3F)
        {
          sub_1002DC100(319, &qword_1004AF7D8, &qword_1004AF7E0, &unk_100405300, &type metadata accessor for Option);
          if (v4 <= 0x3F)
          {
            sub_1002DAEC4(319, &qword_1004AF7E8, &type metadata for Int, &type metadata accessor for Flag);
            if (v5 <= 0x3F)
            {
              sub_1002DC100(319, &qword_1004AF7F0, &qword_1004AF7F8, &unk_100405308, &type metadata accessor for Option);
              if (v6 <= 0x3F)
              {
                sub_1002D99D0();
                if (v7 <= 0x3F)
                {
                  sub_1002D9A64();
                  if (v8 <= 0x3F)
                  {
                    sub_1002D9AF8();
                    if (v9 <= 0x3F)
                    {
                      sub_1002D9B8C();
                      if (v10 <= 0x3F)
                      {
                        sub_1002D9C20();
                        if (v11 <= 0x3F)
                        {
                          sub_1002D9CB4();
                          if (v12 <= 0x3F)
                          {
                            sub_1002D9D48();
                            if (v13 <= 0x3F)
                            {
                              sub_1002D9DDC();
                              if (v14 <= 0x3F)
                              {
                                sub_1002D9E70();
                                if (v15 <= 0x3F)
                                {
                                  sub_1002D9F04();
                                  if (v16 <= 0x3F)
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
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1002D99D0()
{
  if (!qword_1004AF800)
  {
    type metadata accessor for Generate.CryptexOptions(255);
    sub_1002D72A0(&qword_1004AF4A8, type metadata accessor for Generate.CryptexOptions);
    v0 = type metadata accessor for OptionGroup();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AF800);
    }
  }
}

void sub_1002D9A64()
{
  if (!qword_1004AF808)
  {
    type metadata accessor for Generate.DiavloOptions(255);
    sub_1002D72A0(&qword_1004AF4B0, type metadata accessor for Generate.DiavloOptions);
    v0 = type metadata accessor for OptionGroup();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AF808);
    }
  }
}

void sub_1002D9AF8()
{
  if (!qword_1004AF810)
  {
    type metadata accessor for Generate.InstallOptions(255);
    sub_1002D72A0(&qword_1004AF4B8, type metadata accessor for Generate.InstallOptions);
    v0 = type metadata accessor for OptionGroup();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AF810);
    }
  }
}

void sub_1002D9B8C()
{
  if (!qword_1004AF818)
  {
    type metadata accessor for Generate.PackageOptions(255);
    sub_1002D72A0(&qword_1004AF4C0, type metadata accessor for Generate.PackageOptions);
    v0 = type metadata accessor for OptionGroup();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AF818);
    }
  }
}

void sub_1002D9C20()
{
  if (!qword_1004AF820)
  {
    type metadata accessor for Generate.ResultOptions(255);
    sub_1002D72A0(&qword_1004AF4C8, type metadata accessor for Generate.ResultOptions);
    v0 = type metadata accessor for OptionGroup();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AF820);
    }
  }
}

void sub_1002D9CB4()
{
  if (!qword_1004AF828)
  {
    type metadata accessor for Generate.PreferenceOptions(255);
    sub_1002D72A0(&qword_1004AF4D0, type metadata accessor for Generate.PreferenceOptions);
    v0 = type metadata accessor for OptionGroup();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AF828);
    }
  }
}

void sub_1002D9D48()
{
  if (!qword_1004AF830)
  {
    type metadata accessor for Generate.NarrativeIdentityOptions(255);
    sub_1002D72A0(&qword_1004AF4D8, type metadata accessor for Generate.NarrativeIdentityOptions);
    v0 = type metadata accessor for OptionGroup();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AF830);
    }
  }
}

void sub_1002D9DDC()
{
  if (!qword_1004AF838)
  {
    type metadata accessor for Generate.UserOptions(255);
    sub_1002D72A0(&qword_1004AF4E0, type metadata accessor for Generate.UserOptions);
    v0 = type metadata accessor for OptionGroup();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AF838);
    }
  }
}

void sub_1002D9E70()
{
  if (!qword_1004AF840)
  {
    type metadata accessor for Generate.LogOptions(255);
    sub_1002D72A0(&qword_1004AF4E8, type metadata accessor for Generate.LogOptions);
    v0 = type metadata accessor for OptionGroup();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AF840);
    }
  }
}

void sub_1002D9F04()
{
  if (!qword_1004AF848)
  {
    type metadata accessor for Generate.NetworkOptions(255);
    sub_1002D72A0(&qword_1004AF4F0, type metadata accessor for Generate.NetworkOptions);
    v0 = type metadata accessor for OptionGroup();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AF848);
    }
  }
}

uint64_t sub_1002D9FAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000039E8(&qword_1004AF480);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000039E8(&qword_1004AAC48);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  v14 = sub_1000039E8(&qword_1004AF588);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  v15 = sub_1000039E8(&qword_1004AF590);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  v16 = sub_1000039E8(&qword_1004AF598);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  v17 = sub_1000039E8(&qword_1004AF5A0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[13];
    goto LABEL_19;
  }

  v18 = sub_1000039E8(&qword_1004AF5A8);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[14];
    goto LABEL_19;
  }

  v19 = sub_1000039E8(&qword_1004AF5B0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[16];
    goto LABEL_19;
  }

  v20 = sub_1000039E8(&qword_1004AF400);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[20];
    goto LABEL_19;
  }

  v22 = sub_1000039E8(&qword_1004AF410);
  v23 = *(*(v22 - 8) + 48);
  v24 = a1 + a3[21];

  return v23(v24, a2, v22);
}

uint64_t sub_1002DA370(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000039E8(&qword_1004AF480);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000039E8(&qword_1004AAC48);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  v16 = sub_1000039E8(&qword_1004AF588);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  v17 = sub_1000039E8(&qword_1004AF590);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  v18 = sub_1000039E8(&qword_1004AF598);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  v19 = sub_1000039E8(&qword_1004AF5A0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[13];
    goto LABEL_19;
  }

  v20 = sub_1000039E8(&qword_1004AF5A8);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[14];
    goto LABEL_19;
  }

  v21 = sub_1000039E8(&qword_1004AF5B0);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[16];
    goto LABEL_19;
  }

  v22 = sub_1000039E8(&qword_1004AF400);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[20];
    goto LABEL_19;
  }

  v24 = sub_1000039E8(&qword_1004AF410);
  v25 = *(*(v24 - 8) + 56);
  v26 = a1 + a4[21];

  return v25(v26, a2, a2, v24);
}

void sub_1002DA72C()
{
  sub_1002DC100(319, &qword_1004AF958, &qword_1004AF960, &unk_100405320, &type metadata accessor for Option);
  if (v0 <= 0x3F)
  {
    sub_1002DC100(319, &qword_1004AAD08, &qword_1004A6B48, &unk_100376810, &type metadata accessor for Option);
    if (v1 <= 0x3F)
    {
      sub_1002DC100(319, &qword_1004AF968, &qword_1004AF970, &unk_100405328, &type metadata accessor for Option);
      if (v2 <= 0x3F)
      {
        sub_1002DC100(319, &qword_1004AF978, &qword_1004AF980, &unk_100405330, &type metadata accessor for Option);
        if (v3 <= 0x3F)
        {
          sub_1002DC100(319, &qword_1004AF988, &qword_1004AF990, &unk_100405338, &type metadata accessor for Option);
          if (v4 <= 0x3F)
          {
            sub_1002DAEC4(319, &qword_1004AF998, &type metadata for Bool, &type metadata accessor for Option);
            if (v5 <= 0x3F)
            {
              sub_1002DC100(319, &qword_1004AF9A0, &qword_1004AE038, &unk_100400E80, &type metadata accessor for Option);
              if (v6 <= 0x3F)
              {
                sub_1002DC100(319, &qword_1004AF9A8, &unk_1004AF9B0, &unk_100405348, &type metadata accessor for Option);
                if (v7 <= 0x3F)
                {
                  sub_1002DC100(319, &qword_1004AF7D8, &qword_1004AF7E0, &unk_100405300, &type metadata accessor for Option);
                  if (v8 <= 0x3F)
                  {
                    sub_1002DC100(319, &qword_1004AF7F0, &qword_1004AF7F8, &unk_100405308, &type metadata accessor for Option);
                    if (v9 <= 0x3F)
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
  }
}

uint64_t sub_1002DAAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000039E8(&qword_1004AF3F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000039E8(&qword_1004AF478);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000039E8(&qword_1004AE998);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1002DAC3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000039E8(&qword_1004AF3F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000039E8(&qword_1004AF478);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000039E8(&qword_1004AE998);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1002DADAC()
{
  sub_1002DC100(319, &qword_1004AF7C8, &qword_1004A7330, &unk_1003762A0, &type metadata accessor for Option);
  if (v0 <= 0x3F)
  {
    sub_1002DC100(319, &unk_1004AFB18, &qword_1004AE138, &unk_100400F50, &type metadata accessor for Option);
    if (v1 <= 0x3F)
    {
      sub_1002DAEC4(319, &qword_1004AEAC0, &type metadata for Bool, &type metadata accessor for Flag);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002DAEC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1002DAF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_1000039E8(a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_1002DAFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_1000039E8(a5);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

void sub_1002DB064(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t a6)
{
  sub_1002DC100(319, a4, a5, a6, &type metadata accessor for Option);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1002DB104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000039E8(&qword_1004AF3F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000039E8(&qword_1004AF3F8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 40);
    goto LABEL_5;
  }

  v14 = sub_1000039E8(&qword_1004AF468);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 44);

  return v15(v16, a2, v14);
}

uint64_t sub_1002DB27C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000039E8(&qword_1004AF3F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000039E8(&qword_1004AF3F8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 40);
    goto LABEL_5;
  }

  v16 = sub_1000039E8(&qword_1004AF468);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 44);

  return v17(v18, a2, a2, v16);
}

void sub_1002DB3EC()
{
  sub_1002DC100(319, &qword_1004AF7C8, &qword_1004A7330, &unk_1003762A0, &type metadata accessor for Option);
  if (v0 <= 0x3F)
  {
    sub_1002DC100(319, &qword_1004AF7D0, &qword_1004ADFB8, &unk_100400E60, &type metadata accessor for Flag);
    if (v1 <= 0x3F)
    {
      sub_1002DC100(319, &qword_1004AFC48, &unk_1004AFC50, &unk_1004053A0, &type metadata accessor for Option);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002DB5B4()
{
  sub_1002DC100(319, &qword_1004AAD08, &qword_1004A6B48, &unk_100376810, &type metadata accessor for Option);
  if (v0 <= 0x3F)
  {
    sub_1002DC100(319, &unk_1004AFD00, &qword_1004ACCF8, &unk_1003FA100, &type metadata accessor for Option);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002DB6B8()
{
  sub_1002DC100(319, &qword_1004AAD08, &qword_1004A6B48, &unk_100376810, &type metadata accessor for Option);
  if (v0 <= 0x3F)
  {
    sub_1002DC100(319, &unk_1004AFD00, &qword_1004ACCF8, &unk_1003FA100, &type metadata accessor for Option);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1002DB7B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000039E8(&qword_1004AF488);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000039E8(&qword_1004AF3F0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1000039E8(&qword_1004AF3F8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1000039E8(&qword_1004AF470);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = sub_1000039E8(&qword_1004AAC48);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_1002DB9D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000039E8(&qword_1004AF488);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000039E8(&qword_1004AF3F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_1000039E8(&qword_1004AF3F8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_1000039E8(&qword_1004AF470);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v19 = sub_1000039E8(&qword_1004AAC48);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[9];

  return v20(v21, a2, a2, v19);
}

void sub_1002DBBE8()
{
  sub_1002DC100(319, &qword_1004AFEC8, &qword_1004AFED0, &unk_100405400, &type metadata accessor for Option);
  if (v0 <= 0x3F)
  {
    sub_1002DC100(319, &qword_1004AF7C8, &qword_1004A7330, &unk_1003762A0, &type metadata accessor for Option);
    if (v1 <= 0x3F)
    {
      sub_1002DC100(319, &qword_1004AF7D0, &qword_1004ADFB8, &unk_100400E60, &type metadata accessor for Flag);
      if (v2 <= 0x3F)
      {
        sub_1002DC100(319, &unk_1004AFED8, &qword_1004A9CF8, &unk_10037BF90, &type metadata accessor for Option);
        if (v3 <= 0x3F)
        {
          sub_1002DC100(319, &qword_1004AAD08, &qword_1004A6B48, &unk_100376810, &type metadata accessor for Option);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1002DBDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v10 = sub_1000039E8(a4);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = sub_1000039E8(a6);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1002DBF0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v12 = sub_1000039E8(a5);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = sub_1000039E8(a7);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_1002DC024()
{
  sub_1002DC100(319, &qword_1004AFF88, &qword_1004AFF90, &unk_100405418, &type metadata accessor for Option);
  if (v0 <= 0x3F)
  {
    sub_1002DC100(319, &unk_1004AFF98, &qword_1004ADFB8, &unk_100400E60, &type metadata accessor for Option);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002DC100(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003A94(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Generate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Generate.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002DC358()
{
  result = qword_1004AFFC8;
  if (!qword_1004AFFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AFFC8);
  }

  return result;
}

unint64_t sub_1002DC3B0()
{
  result = qword_1004AFFD0;
  if (!qword_1004AFFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AFFD0);
  }

  return result;
}

unint64_t sub_1002DC408()
{
  result = qword_1004AFFD8;
  if (!qword_1004AFFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AFFD8);
  }

  return result;
}

unint64_t sub_1002DC460()
{
  result = qword_1004AFFE0;
  if (!qword_1004AFFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AFFE0);
  }

  return result;
}

unint64_t sub_1002DC4B8()
{
  result = qword_1004AFFE8;
  if (!qword_1004AFFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AFFE8);
  }

  return result;
}

unint64_t sub_1002DC510()
{
  result = qword_1004AFFF0;
  if (!qword_1004AFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AFFF0);
  }

  return result;
}

unint64_t sub_1002DC568()
{
  result = qword_1004AFFF8;
  if (!qword_1004AFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AFFF8);
  }

  return result;
}

unint64_t sub_1002DC5C0()
{
  result = qword_1004B0000;
  if (!qword_1004B0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0000);
  }

  return result;
}

unint64_t sub_1002DC618()
{
  result = qword_1004B0008;
  if (!qword_1004B0008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0008);
  }

  return result;
}

unint64_t sub_1002DC670()
{
  result = qword_1004B0010;
  if (!qword_1004B0010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0010);
  }

  return result;
}

unint64_t sub_1002DC6C8()
{
  result = qword_1004B0018;
  if (!qword_1004B0018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0018);
  }

  return result;
}

unint64_t sub_1002DC720()
{
  result = qword_1004B0020;
  if (!qword_1004B0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0020);
  }

  return result;
}

unint64_t sub_1002DC778()
{
  result = qword_1004B0028;
  if (!qword_1004B0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0028);
  }

  return result;
}

unint64_t sub_1002DC7D0()
{
  result = qword_1004B0030;
  if (!qword_1004B0030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0030);
  }

  return result;
}

unint64_t sub_1002DC828()
{
  result = qword_1004B0038;
  if (!qword_1004B0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0038);
  }

  return result;
}

unint64_t sub_1002DC880()
{
  result = qword_1004B0040;
  if (!qword_1004B0040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0040);
  }

  return result;
}

unint64_t sub_1002DC8D8()
{
  result = qword_1004B0048;
  if (!qword_1004B0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0048);
  }

  return result;
}

unint64_t sub_1002DC930()
{
  result = qword_1004B0050;
  if (!qword_1004B0050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0050);
  }

  return result;
}

unint64_t sub_1002DC988()
{
  result = qword_1004B0058;
  if (!qword_1004B0058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0058);
  }

  return result;
}

unint64_t sub_1002DC9E0()
{
  result = qword_1004B0060;
  if (!qword_1004B0060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0060);
  }

  return result;
}

unint64_t sub_1002DCA38()
{
  result = qword_1004B0068;
  if (!qword_1004B0068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0068);
  }

  return result;
}

unint64_t sub_1002DCA90()
{
  result = qword_1004B0070;
  if (!qword_1004B0070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0070);
  }

  return result;
}

unint64_t sub_1002DCAE8()
{
  result = qword_1004B0078;
  if (!qword_1004B0078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0078);
  }

  return result;
}

unint64_t sub_1002DCB40()
{
  result = qword_1004B0080;
  if (!qword_1004B0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0080);
  }

  return result;
}

unint64_t sub_1002DCB98()
{
  result = qword_1004B0088;
  if (!qword_1004B0088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0088);
  }

  return result;
}

unint64_t sub_1002DCBF0()
{
  result = qword_1004B0090;
  if (!qword_1004B0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0090);
  }

  return result;
}

unint64_t sub_1002DCC48()
{
  result = qword_1004B0098;
  if (!qword_1004B0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0098);
  }

  return result;
}

unint64_t sub_1002DCCA0()
{
  result = qword_1004B00A0;
  if (!qword_1004B00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B00A0);
  }

  return result;
}

unint64_t sub_1002DCCF8()
{
  result = qword_1004B00A8;
  if (!qword_1004B00A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B00A8);
  }

  return result;
}

unint64_t sub_1002DCD50()
{
  result = qword_1004B00B0;
  if (!qword_1004B00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B00B0);
  }

  return result;
}

unint64_t sub_1002DCDA8()
{
  result = qword_1004B00B8;
  if (!qword_1004B00B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B00B8);
  }

  return result;
}

unint64_t sub_1002DCE00()
{
  result = qword_1004B00C0;
  if (!qword_1004B00C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B00C0);
  }

  return result;
}

unint64_t sub_1002DCE58()
{
  result = qword_1004B00C8;
  if (!qword_1004B00C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B00C8);
  }

  return result;
}

uint64_t sub_1002DCEAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6778732 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4374696E49657270 && a2 == 0xEF73646E616D6D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4374696E49657270 && a2 == 0xEF6C616369746972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 6845299 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7773736150687373 && a2 == 0xEF6874754164726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174616466726570 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5243446575737369 && a2 == 0xE900000000000054 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x72657475706D6F63 && a2 == 0xEC000000656D614ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D614E74736F685FLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x736F486C61636F6CLL && a2 == 0xED0000656D614E74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x62614C6567617375 && a2 == 0xEA00000000006C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100443130 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000100443150 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000030 && 0x8000000100443170 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004431B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004431D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004431F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x74646977646E6162 && a2 == 0xEE0074696D694C68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x707972436B636F6CLL && a2 == 0xED00007365786574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100443210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x4F78657470797263 && a2 == 0xEE00736E6F697470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x704F6F6C76616964 && a2 == 0xED0000736E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x4F6C6C6174736E69 && a2 == 0xEE00736E6F697470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x4F6567616B636170 && a2 == 0xEE00736E6F697470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x6F43746C75736572 && a2 == 0xEC0000006769666ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100443230 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000100443250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6974704F72657375 && a2 == 0xEB00000000736E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6F6974704F676F6CLL && a2 == 0xEA0000000000736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x4F6B726F7774656ELL && a2 == 0xEE00736E6F697470)
  {

    return 30;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 30;
    }

    else
    {
      return 31;
    }
  }
}

uint64_t sub_1002DD854(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5578657470797263 && a2 == 0xEA00000000006C72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x363532616873 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1752462689 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656B6F54776164 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x616E726573556777 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E656B6F546777 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010042CDF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100443270 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100443290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E6F43656C707061 && a2 == 0xEC0000007463656ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C62616568636163 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6968637241616561 && a2 == 0xEC00000064496576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004432B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x766974634178616DLL && a2 == 0xEE00736B73615465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7A69536B6E756863 && a2 == 0xE900000000000065)
  {

    return 17;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1002DDE08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5255726576726573 && a2 == 0xE90000000000004CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74726543746F6F72 && a2 == 0xEF65746163696669 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F43656C707061 && a2 == 0xEC0000007463656ELL)
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

uint64_t sub_1002DDF34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953063287 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xEE006C6C65685374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953460082 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x67696C6674736F70 && a2 == 0xEA00000000007468 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x67696C6674736F70 && a2 == 0xEF6C6C6568537468 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746F6F626572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6361707372657375 && a2 == 0xEF746F6F62655265)
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

uint64_t sub_1002DE1E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65726566657270 && a2 == 0xEA00000000006563;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xED000064496E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E72657375 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D614E74736F68 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1002DE3A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1919251317 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696D6461 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004432D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x617069636E697270 && a2 == 0xEA0000000000736CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7370756F7267 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1002DE5F0()
{
  result = qword_1004B00D8;
  if (!qword_1004B00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B00D8);
  }

  return result;
}

unint64_t sub_1002DE644()
{
  result = qword_1004B00E0;
  if (!qword_1004B00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B00E0);
  }

  return result;
}

uint64_t sub_1002DE698(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t DInitAuthorizationService.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7573746174;
  v2 = 0x79726F74636166;
  if (a1 != 2)
  {
    v2 = 1701736302;
  }

  if (a1)
  {
    v1 = 0x6F6C76616964;
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

unint64_t sub_1002DE7F4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit25DInitAuthorizationServiceO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1002DE824(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7573746174;
  v4 = 0xE700000000000000;
  v5 = 0x79726F74636166;
  if (*v1 != 2)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x6F6C76616964;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1002DE944(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x7573746174;
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = 0xE700000000000000;
  v6 = 0x79726F74636166;
  if (v3 != 2)
  {
    v6 = 1701736302;
    v5 = 0xE400000000000000;
  }

  v7 = 0x6F6C76616964;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v7 = 0x7573746174;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE500000000000000;
  v11 = 0xE700000000000000;
  v12 = 0x79726F74636166;
  if (*a2 != 2)
  {
    v12 = 1701736302;
    v11 = 0xE400000000000000;
  }

  if (*a2)
  {
    v2 = 0x6F6C76616964;
    v10 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

uint64_t sub_1002DEA6C()
{
  sub_1002DEDEC();

  return RawRepresentable<>.init(argument:)();
}

uint64_t sub_1002DEAE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002DEDEC();

  return ExpressibleByArgument<>.defaultValueDescription.getter(a1, a2, v4, &protocol witness table for String);
}

Swift::Int sub_1002DEB34()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002DEBE8()
{
  String.hash(into:)();
}

Swift::Int sub_1002DEC88()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t _s10DarwinInit25DInitAuthorizationServiceO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100485218, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002DED88()
{
  result = qword_1004B00E8;
  if (!qword_1004B00E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B00E8);
  }

  return result;
}

unint64_t sub_1002DEDEC()
{
  result = qword_1004B00F0;
  if (!qword_1004B00F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B00F0);
  }

  return result;
}

uint64_t *NVRAMVariable.darwinInitSystem.unsafeMutableAddressor()
{
  if (qword_1004A9ED0 != -1)
  {
    swift_once();
  }

  return &static NVRAMVariable.darwinInitSystem;
}

uint64_t *NVRAMVariable.darwinInit.unsafeMutableAddressor()
{
  if (qword_1004A9EC8 != -1)
  {
    swift_once();
  }

  return &static NVRAMVariable.darwinInit;
}

uint64_t *kDefaultApplyTimeout.unsafeMutableAddressor()
{
  if (qword_1004A9F18 != -1)
  {
    swift_once();
  }

  return &kDefaultApplyTimeout;
}

uint64_t sub_1002DF3A4()
{
  v0 = type metadata accessor for FilePath();
  sub_1000279B4(v0, kDInitNewUserShell);
  sub_1000270B4(v0, kDInitNewUserShell);
  return FilePath.init(stringLiteral:)();
}

uint64_t sub_1002DF440()
{
  v0 = type metadata accessor for FilePath();
  sub_1000279B4(v0, kDInitDoneFilepath);
  sub_1000270B4(v0, kDInitDoneFilepath);
  return FilePath.init(stringLiteral:)();
}

uint64_t sub_1002DF4A4()
{
  v0 = type metadata accessor for FilePath();
  sub_1000279B4(v0, kDInitPersistStorage);
  sub_1000270B4(v0, kDInitPersistStorage);
  return FilePath.init(stringLiteral:)();
}

uint64_t sub_1002DF508()
{
  v0 = type metadata accessor for FilePath();
  sub_1000279B4(v0, kDInitStatusFilepath);
  sub_1000270B4(v0, kDInitStatusFilepath);
  return FilePath.init(stringLiteral:)();
}

uint64_t sub_1002DF56C()
{
  v0 = type metadata accessor for FilePath();
  sub_1000279B4(v0, kDInitFirewallRulesPath);
  sub_1000270B4(v0, kDInitFirewallRulesPath);
  return FilePath.init(stringLiteral:)();
}

uint64_t sub_1002DF5D0()
{
  v0 = type metadata accessor for FilePath();
  sub_1000279B4(v0, kDInitErrorReportFilepath);
  sub_1000270B4(v0, kDInitErrorReportFilepath);
  return FilePath.init(stringLiteral:)();
}

uint64_t sub_1002DF634()
{
  v0 = type metadata accessor for FilePath();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000279B4(v2, kDInitSSHConfig);
  sub_1000270B4(v0, kDInitSSHConfig);
  if (qword_1004A9E98 != -1)
  {
    swift_once();
  }

  v5 = sub_1000270B4(v0, kDInitPersistStorage);
  (*(v1 + 16))(v4, v5, v0);
  return FilePath.appending(_:)();
}

uint64_t sub_1002DF788()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    kDInitSSHConfigEmpty = v4;
    *algn_1004E2F38 = v6;
  }

  return result;
}

uint64_t *kDInitSSHConfigEmpty.unsafeMutableAddressor()
{
  if (qword_1004A9EC0 != -1)
  {
    swift_once();
  }

  return &kDInitSSHConfigEmpty;
}

void *sub_1002DF8D8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1002DF988()
{
  v0 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_1000279B4(v3, kDInitEC2UserDataURL);
  v4 = sub_1000270B4(v3, kDInitEC2UserDataURL);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002DFAF0()
{
  v0 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_1000279B4(v3, kDInitImdsTokenURL);
  v4 = sub_1000270B4(v3, kDInitImdsTokenURL);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002DFC88()
{
  v0 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_1000279B4(v3, kDInitDataCenterBootstrapServer);
  v4 = sub_1000270B4(v3, kDInitDataCenterBootstrapServer);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002DFDB8()
{
  v0 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_1000279B4(v3, kDInitDataCenterBootstrapServerFallback);
  v4 = sub_1000270B4(v3, kDInitDataCenterBootstrapServerFallback);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002DFEE8()
{
  v0 = sub_1000039E8(&qword_1004B0110);
  sub_1000279B4(v0, kDInitPasswordlessSuodersFile);
  v1 = (sub_1000270B4(v0, kDInitPasswordlessSuodersFile) + *(v0 + 48));
  result = FilePath.init(stringLiteral:)();
  *v1 = 0xD00000000000001DLL;
  v1[1] = 0x8000000100443C30;
  return result;
}

uint64_t kDInitPasswordlessSuodersFile.unsafeMutableAddressor()
{
  if (qword_1004A9EF8 != -1)
  {
    swift_once();
  }

  v0 = sub_1000039E8(&qword_1004B0110);

  return sub_1000270B4(v0, kDInitPasswordlessSuodersFile);
}

uint64_t sub_1002E0004()
{
  v0 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_1000279B4(v3, kDefaultKnoxURL);
  v4 = sub_1000270B4(v3, kDefaultKnoxURL);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E0178()
{
  v0 = type metadata accessor for FilePath();
  sub_1000279B4(v0, kDarwinInitCacheRootDirectory);
  sub_1000270B4(v0, kDarwinInitCacheRootDirectory);
  return FilePath.init(stringLiteral:)();
}

uint64_t sub_1002E01DC()
{
  v0 = type metadata accessor for FilePath();
  sub_1000279B4(v0, kCacheVolumeKeyCacheRootDirectory);
  sub_1000270B4(v0, kCacheVolumeKeyCacheRootDirectory);
  return FilePath.init(stringLiteral:)();
}

uint64_t sub_1002E02A8()
{
  sub_1001B1CDC();
  result = static Duration.* infix<A>(_:_:)();
  kDefaultApplyTimeout = result;
  *algn_1004E3038 = v1;
  return result;
}

uint64_t sub_1002E030C()
{
  v0 = type metadata accessor for Logger();
  sub_1000279B4(v0, qword_1004B00F8);
  v1 = sub_1000270B4(v0, qword_1004B00F8);
  if (qword_1004A9F28 != -1)
  {
    swift_once();
  }

  v2 = sub_1000270B4(v0, static Logger.default);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002E07F0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_1000279B4(v3, a2);
  sub_1000270B4(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002E08A0(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_1000270B4(v4, a3);
}

uint64_t sub_1002E0924()
{
  v0 = type metadata accessor for Logger();
  sub_1000279B4(v0, static Logger.privateCloudOSValidator);
  sub_1000270B4(v0, static Logger.privateCloudOSValidator);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002E09C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_1000270B4(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_1002E0A64()
{
  result = qword_1004B0118;
  if (!qword_1004B0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0118);
  }

  return result;
}

unint64_t sub_1002E0AC8()
{
  result = qword_1004B0120;
  if (!qword_1004B0120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0120);
  }

  return result;
}

unint64_t sub_1002E0B20()
{
  result = qword_1004B0128;
  if (!qword_1004B0128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0128);
  }

  return result;
}

id static CryptexManager.setUpExtractedPath()()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FilePath();
  __chkstk_darwin(v7);
  FilePath.init(stringLiteral:)();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v1 + 8))(v3, v0);
  FilePath.appending(_:)();
  FilePath.remove()();
  if (v4)
  {
  }

  return FilePath.createDirectory(permissions:intermediateDirectories:)(0x1FFu, 1);
}

uint64_t CryptexManager.__allocating_init(from:auth:diavlo:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - v8;
  v10 = *a2;
  v59 = *(a2 + 8);
  v11 = a2[2];
  *&v56 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  v68 = v10;
  v69 = v13;
  v60 = v11;
  v61 = v12;
  v14 = a2[6];
  v15 = a2[7];
  v16 = a2[9];
  v66 = a2[8];
  v67 = v15;
  v62 = v16;
  v17 = a2[10];
  v64 = a2[11];
  v65 = v17;
  v18 = a2[13];
  v63 = a2[12];
  *&v55 = v18;
  v19 = a2[14];
  v57 = v14;
  v58 = v19;
  v20 = *(a1 + 8);
  v21 = *(a1 + 24);
  v22 = *(a1 + 56);
  v23 = *(a1 + 72);
  v72 = *(a1 + 40);
  v73 = v22;
  v70 = v20;
  v71 = v21;
  v24 = *(a1 + 88);
  v25 = *(a1 + 104);
  v26 = *(a1 + 120);
  v78 = *(a1 + 136);
  v76 = v25;
  v77 = v26;
  v74 = v23;
  v75 = v24;
  sub_100013E54(&v70, &v88, &qword_1004ACE98);
  sub_1002208C8(a1);
  v94 = v76;
  v95 = v77;
  v96 = v78;
  v90 = v72;
  v91 = v73;
  v92 = v74;
  v93 = v75;
  v88 = v70;
  v89 = v71;
  if (sub_100220C40(&v88) == 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 1;
    v32 = 5;
    v33 = 4;
    goto LABEL_17;
  }

  v52 = v9;
  v53 = v3;
  v54 = a3;
  v29 = *(&v88 + 1);
  v30 = v89;
  v27 = v90;
  v34 = *(&v92 + 1);
  v35 = v93;
  v33 = v94;
  v36 = BYTE8(v94);
  v37 = *(&v95 + 1);
  v31 = v96;

  result = sub_100013F2C(&v70, &qword_1004ACE98);
  if (v36)
  {
    if (v31)
    {
      v28 = 0;
    }

    else
    {
      v28 = v37;
    }

    v32 = 5;
    if ((v35 & 1) == 0)
    {
      v32 = v34;
    }

    v33 = 4;
LABEL_16:
    v3 = v53;
    a3 = v54;
    v9 = v52;
LABEL_17:
    v79 = v32;
    v80 = v27 & 1;
    v81 = v29;
    v82 = v30;
    v83 = v33;
    v84 = v28;
    v85 = v31 & 1;
    if (!v68)
    {
      v43 = 0uLL;
      v39 = 3;
      v41 = 2;
      v44 = 0uLL;
LABEL_25:
      v86[0] = v43;
      v86[1] = v44;
      v87 = v39;
      sub_100013E54(a3, v9, &qword_1004A6D30);
      v47 = (*(v3 + 128))(&v79, v86, v41, v9);
      sub_100013F2C(a3, &qword_1004A6D30);
      return v47;
    }

    if (v69)
    {
      v39 = 0;
      *&v40 = v56;
      *(&v40 + 1) = v69;
      v56 = v40;
      v55 = 0u;
      v41 = v59;
      v42 = v57;
    }

    else
    {
      v41 = v59;
      v42 = v57;
      v45 = v58;
      if (v58)
      {

        *&v46 = v55;
        *(&v46 + 1) = v45;
        v56 = v46;
        v55 = 0u;
        v39 = 2;
        goto LABEL_24;
      }

      if (v57)
      {
        v48 = v64;

        *&v50 = v67;
        *(&v50 + 1) = v49;
        v55 = v50;
        *&v50 = v65;
        *(&v50 + 1) = v48;
        v56 = v50;
        v39 = 1;
      }

      else
      {
        v55 = 0u;
        v56 = 0u;
        v39 = 3;
      }
    }

LABEL_24:

    sub_10021E638(v42);

    v44 = v55;
    v43 = v56;
    goto LABEL_25;
  }

  if ((v33 & 0x8000000000000000) == 0)
  {
    if (v31)
    {
      v28 = 0;
    }

    else
    {
      v28 = v37;
    }

    v32 = 5;
    if ((v35 & 1) == 0)
    {
      v32 = v34;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t CryptexManager.CryptexConfig.init(from:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CryptexManager.CryptexConfig(0);
  v9 = (a4 + v8[6]);
  v10 = a4 + v8[8];
  v11 = (a4 + v8[9]);
  v30 = v8[7];
  v32 = v8[10];
  v12 = a4 + v8[11];
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *v12 = 0u;
  v13 = v8[12];
  v14 = (a4 + v8[5]);
  *v14 = a2;
  v14[1] = a3;
  v29 = type metadata accessor for Config.Cryptex.Cryptex(0);
  v15 = a1 + v29[10];
  v16 = *(sub_1000039E8(&qword_1004ACD08) + 44);
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 16))(a4, v15 + v16, v17);
  *(a4 + v13) = *(a1 + 96);
  v18 = *(a1 + 144);
  *v10 = *(a1 + 136);
  *(v10 + 8) = v18;
  v19 = *(a1 + 120);
  *v11 = *(a1 + 112);
  v11[1] = v19;
  v20 = a1 + v29[11];
  v21 = *(v20 + 16);
  *v9 = *(v20 + 8);
  v9[1] = v21;
  *(a4 + v30) = *(a1 + 64);
  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  v31 = *v12;

  sub_10021E528(v22);
  sub_10021E638(v31);
  *v12 = v22;
  *(v12 + 8) = v23;
  *(v12 + 16) = v24;
  *(v12 + 24) = v25;
  *(v12 + 32) = v26;
  *(v12 + 40) = v27;
  LOBYTE(v12) = *(a1 + v29[13] + 8);
  result = sub_1002EA72C(a1, type metadata accessor for Config.Cryptex.Cryptex);
  *(a4 + v32) = v12;
  return result;
}

uint64_t CryptexManager.CryptexConfig.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for CryptexManager.CryptexConfig(0) + 20));

  return v1;
}

uint64_t CryptexManager.CryptexConfig.variant.getter()
{
  v1 = *(v0 + *(type metadata accessor for CryptexManager.CryptexConfig(0) + 24));

  return v1;
}

uint64_t CryptexManager.CryptexConfig.variant.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CryptexManager.CryptexConfig(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CryptexManager.CryptexConfig.cacheable.setter(char a1)
{
  result = type metadata accessor for CryptexManager.CryptexConfig(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t CryptexManager.CryptexConfig.size.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for CryptexManager.CryptexConfig(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t CryptexManager.CryptexConfig.sha256.getter()
{
  v1 = *(v0 + *(type metadata accessor for CryptexManager.CryptexConfig(0) + 36));

  return v1;
}

uint64_t CryptexManager.CryptexConfig.sha256.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CryptexManager.CryptexConfig(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CryptexManager.CryptexConfig.readWrite.setter(char a1)
{
  result = type metadata accessor for CryptexManager.CryptexConfig(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t CryptexManager.CryptexConfig.aeaDecryptionParams.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CryptexManager.CryptexConfig(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_10021E528(v4);
}

__n128 CryptexManager.CryptexConfig.aeaDecryptionParams.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + *(type metadata accessor for CryptexManager.CryptexConfig(0) + 44);
  sub_10021E638(*v5);
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

uint64_t CryptexManager.CryptexConfig.signingEnvironment.setter(char a1)
{
  result = type metadata accessor for CryptexManager.CryptexConfig(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

char *CryptexManager.CryptexConfig.sha256Bytes.getter()
{
  v1 = type metadata accessor for CryptexManager.CryptexConfig(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(v2 + 36));
  v6 = v5[1];
  if (!v6)
  {
    return 0;
  }

  v7 = v2;
  v8 = *v5;
  result = String.hexadecimalASCIIBytes.getter(*v5, v5[1]);
  if (!result)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000270B4(v10, qword_1004B00F8);
    sub_1002EA6C8(v0, v4);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v13 = 136315394;
      v14 = &v4[*(v7 + 20)];
      v15 = *v14;
      v16 = v14[1];

      sub_1002EA72C(v4, type metadata accessor for CryptexManager.CryptexConfig);
      v17 = sub_1000026C0(v15, v16, &v20);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_1000026C0(v8, v6, &v20);
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Failed to parse SHA256 digest: %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002EA72C(v4, type metadata accessor for CryptexManager.CryptexConfig);
    }

    sub_100187D3C();
    swift_allocError();
    *v18 = 22;
    return swift_willThrow();
  }

  return result;
}

BOOL CryptexManager.CryptexConfig.isCacheable.getter()
{
  v1 = type metadata accessor for CryptexManager.CryptexConfig(0);
  v2 = *(v0 + v1[7]);
  if (v2 != 2 && (v2 & 1) == 0)
  {
    return 0;
  }

  v3 = URL.scheme.getter();
  if (v4)
  {
    if (v3 == 2020568683 && v4 == 0xE400000000000000)
    {

      return 1;
    }

    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }
  }

  return *(v0 + v1[9] + 8) || *(v0 + v1[11]) != 0;
}

__n128 CryptexManager.CryptexConfig.init(url:identifier:variant:cacheable:size:sha256:readWrite:aeaDecryptionParams:signingEnvironment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  v31 = *(a13 + 40);
  v32 = *(a13 + 32);
  v21 = type metadata accessor for URL();
  v29 = *(a13 + 16);
  v30 = *a13;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for CryptexManager.CryptexConfig(0);
  v23 = (a9 + v22[5]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + v22[6]);
  *v24 = a4;
  v24[1] = a5;
  *(a9 + v22[7]) = a6;
  v25 = a9 + v22[8];
  *v25 = a7;
  *(v25 + 8) = a8 & 1;
  v26 = (a9 + v22[9]);
  *v26 = a10;
  v26[1] = a11;
  *(a9 + v22[10]) = a12;
  v27 = a9 + v22[11];
  result = v30;
  *v27 = v30;
  *(v27 + 16) = v29;
  *(v27 + 32) = v32;
  *(v27 + 40) = v31;
  *(a9 + v22[12]) = a14;
  return result;
}

uint64_t CryptexManager.downloadConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 40);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t CryptexManager.resolveAEADecryptionParameters(for:)(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  sub_1000039E8(&qword_1004B0130);
  v3[17] = swift_task_alloc();
  v4 = type metadata accessor for SymmetricKey();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1002E1FD0, 0, 0);
}

uint64_t sub_1002E1FD0()
{
  v1 = *(v0 + 120);
  v2 = (v1 + *(type metadata accessor for CryptexManager.CryptexConfig(0) + 44));
  if (!*v2)
  {
    goto LABEL_21;
  }

  v3 = URL.scheme.getter();
  if (!v4)
  {
    goto LABEL_8;
  }

  if (v3 == 2020568683 && v4 == 0xE400000000000000)
  {

LABEL_16:
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
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Pre-determined decryption components already provided for a knox:// url. Will use pre-determined components rather than fetching from Knox.", v18, 2u);
    }

    if (*v2)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (*v2)
  {
LABEL_9:
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000270B4(v7, qword_1004B00F8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Pre-determined decryption components provided", v10, 2u);
    }

    v11 = *(v0 + 144);
    v12 = *(v0 + 152);
    v13 = *(v0 + 136);

    Config.Cryptex.Cryptex.AeaDecryptionParams.getDecryptionKey()(v13);
    if ((*(v12 + 48))(v13, 1, v11) != 1)
    {
      v26 = *(*(v0 + 152) + 32);
      v26(*(v0 + 160), *(v0 + 136), *(v0 + 144));
      v27 = Config.Cryptex.Cryptex.AeaDecryptionParams.getArchiveID()();
      v29 = *(v0 + 160);
      if (v28 >> 60 == 15)
      {
        v30 = *(v0 + 112);
        (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
        v31 = type metadata accessor for AEADecryptionParameters();
        (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
      }

      else
      {
        v47 = v27;
        v48 = v28;
        v49 = *(v0 + 144);
        v50 = *(v0 + 112);
        v51 = type metadata accessor for AEADecryptionParameters();
        v26(v50 + *(v51 + 20), v29, v49);
        *v50 = v47;
        v50[1] = v48;
        (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
      }

LABEL_29:

      v24 = *(v0 + 8);

      return v24();
    }

    v14 = *(v0 + 112);
    sub_100013F2C(*(v0 + 136), &qword_1004B0130);
LABEL_28:
    v23 = type metadata accessor for AEADecryptionParameters();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    goto LABEL_29;
  }

LABEL_21:
  v19 = URL.scheme.getter();
  if (!v20)
  {
LABEL_27:
    v14 = *(v0 + 112);
    goto LABEL_28;
  }

  if (v19 == 2020568683 && v20 == 0xE400000000000000)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000270B4(v32, qword_1004B00F8);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Attempting to fetch decryption key for cryptex from Knox.", v35, 2u);
  }

  v36 = *(v0 + 128);

  v37 = *(v36 + 16);
  v38 = *(v36 + 32);
  v39 = *(v36 + 48);
  *(v0 + 64) = *(v36 + 64);
  *(v0 + 32) = v38;
  *(v0 + 48) = v39;
  *(v0 + 16) = v37;
  v41 = *(v0 + 32);
  v40 = *(v0 + 40);
  v42 = *(v36 + 104);
  v43 = *(v36 + 88);
  *(v0 + 72) = *(v36 + 72);
  *(v0 + 88) = v43;
  *(v0 + 104) = v42;
  v44 = swift_task_alloc();
  *(v0 + 168) = v44;
  *v44 = v0;
  v44[1] = sub_1002E25D0;
  v45 = *(v0 + 112);
  v46 = *(v0 + 120);

  return static KnoxClientWrapper.downloadAEADecryptionParameters(for:configuration:authentication:alternateCDNHost:)(v45, v46, (v0 + 16), v0 + 72, v41, v40);
}

uint64_t sub_1002E25D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Config.Cryptex.Cryptex.AeaDecryptionParams.getDecryptionKey()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);

  v5 = String.hexadecimalASCIIBytes.getter(v3, v4);

  if (v5)
  {
    if (*(v5 + 2))
    {
      sub_1000039E8(&qword_1004A71E0);
      sub_10018EC94();
      SymmetricKey.init<A>(data:)();
      v6 = type metadata accessor for SymmetricKey();
      return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
    }
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000270B4(v8, qword_1004B00F8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Invalid hex decryption key, could not convert to array of UInt8", v11, 2u);
  }

  v12 = type metadata accessor for SymmetricKey();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, 1, 1, v12);
}

uint64_t Config.Cryptex.Cryptex.AeaDecryptionParams.getArchiveID()()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  v3 = String.hexadecimalASCIIBytes.getter(v1, v2);

  if (v3)
  {
    if (*(v3 + 2))
    {
      v4 = sub_10018E354(v3);

      return v4;
    }
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000270B4(v6, qword_1004B00F8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to convert archive identifier from String to Data", v9, 2u);
  }

  return 0;
}

uint64_t CryptexManager.resolveCryptexCacheAccessParameter(cryptex:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for CryptexManager.CryptexConfig(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  sub_1000039E8(&qword_1004AA048);
  v5 = swift_task_alloc();
  v3[8] = v5;
  v3[9] = swift_task_alloc();
  v8 = (*(*v2 + 112) + **(*v2 + 112));
  v6 = swift_task_alloc();
  v3[10] = v6;
  *v6 = v3;
  v6[1] = sub_1002E2BE8;

  return v8(v5, a2);
}

uint64_t sub_1002E2BE8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1002E30D4;
  }

  else
  {
    v2 = sub_1002E2CFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E2CFC()
{
  v35 = v0;
  v1 = v0[5];
  v2 = v0[3];
  sub_10003E154(v0[8], v0[9], &qword_1004AA048);
  v3 = (v2 + *(v1 + 36));
  v4 = v3[1];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v5 = *v3;
  v6 = String.hexadecimalASCIIBytes.getter(*v3, v3[1]);
  if (v6)
  {
LABEL_8:
    v19 = v0[9];
    v20 = v0[4];
    v21 = v0[2];
    v22 = *(v20 + 32);
    v23 = *(v20 + 40);
    v24 = type metadata accessor for CryptexCacheDelegate.AccessParameter(0);
    sub_10003E154(v19, v21 + v24[6], &qword_1004AA048);
    v25 = *(v20 + 48);
    v26 = *(v20 + 56);
    v27 = *(v20 + 64);
    *v21 = v6;
    v21[1] = v22;
    v21[2] = v23;
    v28 = v21 + v24[7];
    *v28 = v25;
    v28[8] = 0;
    v29 = v21 + v24[8];
    *v29 = v26;
    v29[8] = v27;

    v30 = v0[1];
    goto LABEL_11;
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v7 = v0[7];
  v8 = v0[3];
  v9 = type metadata accessor for Logger();
  sub_1000270B4(v9, qword_1004B00F8);
  sub_1002EA6C8(v8, v7);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[7];
  if (v12)
  {
    v14 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v14 = 136315394;
    type metadata accessor for URL();
    sub_1002EAA90(&qword_1004AAE30, &type metadata accessor for URL);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_1002EA72C(v13, type metadata accessor for CryptexManager.CryptexConfig);
    v18 = sub_1000026C0(v15, v17, v34);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1000026C0(v5, v4, v34);
    _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Failed to parse SHA256 digest: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1002EA72C(v13, type metadata accessor for CryptexManager.CryptexConfig);
  }

  v31 = v0[9];
  sub_100187D3C();
  swift_allocError();
  *v32 = 22;
  swift_willThrow();
  sub_100013F2C(v31, &qword_1004AA048);

  v30 = v0[1];
LABEL_11:

  return v30();
}

uint64_t sub_1002E30D4()
{
  v19 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_1000270B4(v3, qword_1004B00F8);
  sub_1002EA6C8(v2, v1);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136315394;
    type metadata accessor for URL();
    sub_1002EAA90(&qword_1004AAE30, &type metadata accessor for URL);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1002EA72C(v6, type metadata accessor for CryptexManager.CryptexConfig);
    v13 = sub_1000026C0(v10, v12, &v18);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Failed to resolve AEA decryption parameters: %@", v7, 0x16u);
    sub_100013F2C(v8, &qword_1004AA050);

    sub_100003C3C(v9);
  }

  else
  {
    v15 = v0[6];

    sub_1002EA72C(v15, type metadata accessor for CryptexManager.CryptexConfig);
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t CryptexManager.__allocating_init(downloadConfig:downloadAuth:appleConnect:diavloServerURL:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 32);
  v13 = *(a2 + 16);
  *(v11 + 72) = *a2;
  *(v11 + 64) = *(a1 + 48);
  *(v11 + 88) = v13;
  *(v11 + 104) = *(a2 + 32);
  *(v11 + 105) = a3 & 1;
  sub_100013E54(a4, v10, &qword_1004A6D30);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_100013F2C(a4, &qword_1004A6D30);
    sub_100013F2C(v10, &qword_1004A6D30);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = URL.absoluteString.getter();
    v17 = v18;
    sub_100013F2C(a4, &qword_1004A6D30);
    (*(v15 + 8))(v10, v14);
  }

  *(v11 + 112) = v16;
  *(v11 + 120) = v17;
  return v11;
}

uint64_t CryptexManager.init(downloadConfig:downloadAuth:appleConnect:diavloServerURL:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v13;
  *(v5 + 48) = *(a1 + 32);
  v14 = *(a2 + 16);
  *(v5 + 72) = *a2;
  *(v5 + 64) = *(a1 + 48);
  *(v5 + 88) = v14;
  *(v5 + 104) = *(a2 + 32);
  *(v5 + 105) = a3 & 1;
  sub_100013E54(a4, &v21 - v11, &qword_1004A6D30);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    sub_100013F2C(a4, &qword_1004A6D30);
    sub_100013F2C(v12, &qword_1004A6D30);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v17 = URL.absoluteString.getter();
    v18 = v19;
    sub_100013F2C(a4, &qword_1004A6D30);
    (*(v16 + 8))(v12, v15);
  }

  *(v5 + 112) = v17;
  *(v5 + 120) = v18;
  return v5;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CryptexManager.isValidTicket(_:_:)(Swift::String a1, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v36 = a1;
  v5 = sub_1000039E8(&qword_1004A6D30);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v32 - v9;
  URL.init(string:)();
  v11 = type metadata accessor for URL();
  v12 = *(*(v11 - 8) + 48);
  if (v12(v10, 1, v11) == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v33 = countAndFlagsBits;
  v35 = object;
  sub_1002EAA04();
  v13 = sub_1002E3B34(v10);
  if (v2)
  {
LABEL_11:
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v14 = v13;
  v15 = [v13 availableData];

  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v17;

  URL.init(string:)();
  if (v12(v8, 1, v11) == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = sub_1002E3B34(v8);
  v19 = [v18 availableData];

  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v38 = 0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000270B4(v23, qword_1004B00F8);
  v24 = v36._object;

  v25 = v35;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32[1] = 0;
    v37 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_1000026C0(v36._countAndFlagsBits, v24, &v37);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_1000026C0(v33, v25, &v37);
    _os_log_impl(&_mh_execute_header, v26, v27, "Trying to validate %s and %s.", v28, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000318C0(v20, v22);
  v30 = v34;
  sub_1000318C0(v16, v34);
  sub_1002EA7E8(v16, v30, v20, v22, &v38, v16, v30);
  sub_100031928(v20, v22);
  sub_100031928(v16, v30);
  return v38;
}

id sub_1002E3B34(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_1002E3C8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5, uint64_t a6, unint64_t a7)
{
  v12 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v12 != 2)
    {
      if (a1)
      {
        v26 = a7 >> 62;
        if ((a7 >> 62) <= 1)
        {
          if (!v26 || !__OFSUB__(HIDWORD(a6), a6))
          {
            goto LABEL_51;
          }

          goto LABEL_60;
        }

        if (v26 != 2 || !__OFSUB__(*(a6 + 24), *(a6 + 16)))
        {
          goto LABEL_51;
        }

        goto LABEL_58;
      }

      goto LABEL_66;
    }

    v14 = *(a3 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      goto LABEL_64;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v18 = v14 - v17 + v16;
      result = __DataStorage._length.getter();
      if (!v18)
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (!__OFSUB__(*(a3 + 24), *(a3 + 16)))
      {
        if (!a1)
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v20 = a7 >> 62;
        if ((a7 >> 62) <= 1)
        {
          if (!v20 || !__OFSUB__(HIDWORD(a6), a6))
          {
            goto LABEL_51;
          }

          goto LABEL_61;
        }

        if (v20 != 2)
        {
          goto LABEL_51;
        }

        v25 = *(a6 + 16);
        if (!__OFSUB__(*(a6 + 24), v25))
        {
          goto LABEL_51;
        }

        __break(1u);
LABEL_39:
        if (v25 != 2 || !__OFSUB__(*(a6 + 24), *(a6 + 16)))
        {
          goto LABEL_51;
        }

        __break(1u);
LABEL_43:
        if (!__OFSUB__(HIDWORD(a6), a6))
        {
          goto LABEL_51;
        }

        goto LABEL_59;
      }

      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (!v12)
  {
    if (a1)
    {
      v13 = a7 >> 62;
      if ((a7 >> 62) <= 1)
      {
        if (!v13)
        {
LABEL_51:
          result = shim_validateImage4Ticket();
          *a5 = result;
          return result;
        }

        goto LABEL_43;
      }

      if (v13 != 2 || !__OFSUB__(*(a6 + 24), *(a6 + 16)))
      {
        goto LABEL_51;
      }

      goto LABEL_57;
    }

    __break(1u);
LABEL_64:
    __DataStorage._length.getter();
    goto LABEL_65;
  }

  if (a3 > a3 >> 32)
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v21 = __DataStorage._bytes.getter();
  if (!v21)
  {
LABEL_67:
    result = __DataStorage._length.getter();
    goto LABEL_68;
  }

  v22 = v21;
  v23 = __DataStorage._offset.getter();
  if (__OFSUB__(a3, v23))
  {
    goto LABEL_54;
  }

  v24 = a3 - v23 + v22;
  result = __DataStorage._length.getter();
  if (!v24)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (a1)
  {
    v25 = a7 >> 62;
    if ((a7 >> 62) <= 1)
    {
      if (!v25 || !__OFSUB__(HIDWORD(a6), a6))
      {
        goto LABEL_51;
      }

LABEL_62:
      __break(1u);
    }

    goto LABEL_39;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t CryptexManager.fetchAndPersonalizeFrom(entry:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for CryptexManager.CryptexConfig(0);
  v8 = __chkstk_darwin(v7);
  v215 = &v205 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v205 - v11;
  v13 = __chkstk_darwin(v10);
  v223 = &v205 - v14;
  __chkstk_darwin(v13);
  v217 = &v205 - v15;
  v16 = sub_1000039E8(&qword_1004A9CF8);
  v17 = __chkstk_darwin(v16 - 8);
  v220 = (&v205 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v226 = (&v205 - v20);
  v21 = __chkstk_darwin(v19);
  v221 = &v205 - v22;
  __chkstk_darwin(v21);
  v227 = &v205 - v23;
  v24 = sub_1000039E8(&qword_1004B0140);
  __chkstk_darwin(v24 - 8);
  v222 = &v205 - v25;
  v237 = type metadata accessor for CryptexManager.PersonalizedCryptex(0);
  v235 = *(v237 - 8);
  __chkstk_darwin(v237);
  v224 = &v205 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for CryptexManager.ExtractedCryptex(0);
  __chkstk_darwin(v219);
  v228 = &v205 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for FilePath();
  v234 = *(v230 - 8);
  v28 = __chkstk_darwin(v230);
  v225 = &v205 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v216 = &v205 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v205 - v33;
  v35 = __chkstk_darwin(v32);
  v36 = __chkstk_darwin(v35);
  v233 = &v205 - v37;
  v38 = __chkstk_darwin(v36);
  v231 = &v205 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v205 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = &v205 - v44;
  v229 = v7;
  v46 = *(v7 + 48);
  v238 = a2;
  v47 = *(a2 + v46);
  v236 = a3;
  v218 = v48;
  if (v47 <= 1)
  {
    if (v47)
    {

      goto LABEL_9;
    }
  }

  else if (v47 != 2 && v47 != 3)
  {
    goto LABEL_7;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v49 & 1) == 0)
  {
LABEL_7:
    v50 = 0;
    v51 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v50 = v232[14];
  v51 = v232[15];

LABEL_10:
  (*(*a1 + 192))(v43);
  if (v3)
  {

    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_1000270B4(v52, qword_1004B00F8);
    sub_1002EA6C8(v238, v12);
    swift_errorRetain();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v239 = v57;
      *v55 = 136315394;
      v58 = &v12[v229[5]];
      v59 = *v58;
      v60 = v58[1];

      sub_1002EA72C(v12, type metadata accessor for CryptexManager.CryptexConfig);
      v61 = sub_1000026C0(v59, v60, &v239);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2112;
      swift_errorRetain();
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 14) = v62;
      *v56 = v62;
      _os_log_impl(&_mh_execute_header, v53, v54, "[%s] Failed to extract cryptex: %@", v55, 0x16u);
      sub_100013F2C(v56, &qword_1004AA050);

      sub_100003C3C(v57);
    }

    else
    {

      sub_1002EA72C(v12, type metadata accessor for CryptexManager.CryptexConfig);
    }

    return v235[7](v236, 1, 1, v237);
  }

  v213 = v50;
  v214 = v34;
  v63 = a1;
  v65 = v234 + 4;
  v64 = v234[4];
  v66 = v230;
  v64(v45, v42, v230);
  v67 = v231;
  (*(*v63 + 168))(v231, v233);
  v210 = v63;
  v211 = v64;
  v212 = v45;
  v69 = FilePath.fileExists()();
  v70 = v67;
  if (v71)
  {

    v72 = v234[1];
    v72(v233, v66);
LABEL_20:
    v72(v70, v66);
    return (v72)(v212, v66);
  }

  v73 = v233;
  if (!v69)
  {
    goto LABEL_26;
  }

  v74 = FilePath.fileExists()();
  if (v75)
  {

    v72 = v234[1];
    v72(v73, v66);
    goto LABEL_20;
  }

  if (v74)
  {
    v205 = v65;
    v76 = FilePath.string.getter();
    v78 = v77;
    v79 = FilePath.string.getter();
    v81 = (*(*v232 + 136))(v76, v78, v79, v80);
    v209 = 0;
    v189 = v81;

    v89 = v230;
    if (v189)
    {
      v190 = v237;
      v191 = v233;
      v192 = v211;
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v193 = type metadata accessor for Logger();
      sub_1000270B4(v193, qword_1004B00F8);
      v194 = Logger.logObject.getter();
      v195 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        *v196 = 0;
        _os_log_impl(&_mh_execute_header, v194, v195, "Successfully validated ticket", v196, 2u);
      }

      (v234[1])(v191, v89);
      v197 = v236;
      sub_1002EA6C8(v238, v236);
      v192(v197 + v190[5], v212, v89);
      v192(v197 + v190[6], v70, v89);
      v198 = (v197 + v190[7]);
      *v198 = v213;
      v198[1] = v51;
      return v235[7](v197, 0, 1, v190);
    }

    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v199 = type metadata accessor for Logger();
    sub_1000270B4(v199, qword_1004B00F8);
    v200 = Logger.logObject.getter();
    v201 = static os_log_type_t.error.getter();
    v202 = os_log_type_enabled(v200, v201);
    v82 = v234;
    v203 = v210;
    if (v202)
    {
      v204 = swift_slowAlloc();
      *v204 = 0;
      _os_log_impl(&_mh_execute_header, v200, v201, "Failed to validate ticket, need to repersonalize.", v204, 2u);
    }

    (*(*v203 + 176))();
    v105 = v232;
  }

  else
  {
LABEL_26:
    v209 = 0;

    v82 = v234;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    sub_1000270B4(v83, qword_1004B00F8);
    v84 = v82[2];
    v85 = v218;
    v86 = v66;
    v84(v218, v231, v66);
    v87 = v214;
    v88 = v73;
    v89 = v86;
    v84(v214, v88, v86);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    v92 = os_log_type_enabled(v90, v91);
    v205 = v65;
    if (v92)
    {
      v93 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v239 = v213;
      *v93 = 136315394;
      sub_1002EAA90(&qword_1004AA058, &type metadata accessor for FilePath);
      v208 = v91;
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = v95;
      v97 = v234[1];
      v97(v85, v230);
      v98 = sub_1000026C0(v94, v96, &v239);
      v89 = v230;

      *(v93 + 4) = v98;
      *(v93 + 12) = 2080;
      v99 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = v87;
      v102 = v101;
      v97(v100, v89);
      v82 = v234;
      v103 = sub_1000026C0(v99, v102, &v239);

      *(v93 + 14) = v103;
      _os_log_impl(&_mh_execute_header, v90, v208, "ticket path %s and ginf path %s don't exist", v93, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v104 = v82[1];
      v104(v87, v89);
      v104(v85, v89);
    }

    v70 = v231;
    v105 = v232;
  }

  v106 = v228;
  sub_1002EA6C8(v238, v228);
  v107 = v219;
  v108 = v82;
  v109 = (v82 + 2);
  v110 = v82[2];
  v218 = *(v219 + 20);
  v110(v106 + v218, v212, v89);
  v111 = v89;
  v112 = *(v107 + 24);
  v110(v106 + v112, v70, v111);
  v113 = v108[7];
  v113(v106 + v112, 0, 1, v111);
  v114 = v105[15];
  v232 = v105[14];
  v208 = *(v105 + 105);
  v115 = v109;
  v116 = v227;
  v219 = v110;
  v214 = v115;
  v110(v227, v233, v111);
  v113(v116, 0, 1, v111);
  v117 = *(v106 + v229[12]);
  v207 = v117;
  if (v117 <= 1)
  {
    v118 = v220;
    if (v117)
    {

      goto LABEL_40;
    }
  }

  else
  {
    v118 = v220;
    if (v117 != 2 && v117 != 3)
    {
      goto LABEL_38;
    }
  }

  v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v119 & 1) == 0)
  {
LABEL_38:
    v120 = 0;
    v213 = 0;
    goto LABEL_41;
  }

LABEL_40:
  v213 = v114;

  v120 = v232;
LABEL_41:
  v121 = v228;
  v122 = v230;
  (v219)(v225, v228 + v218, v230);
  sub_100013E54(v121 + v112, v226, &qword_1004A9CF8);
  v123 = (v121 + v229[6]);
  v125 = *v123;
  v124 = v123[1];
  v232 = v125;
  v206 = v124;
  sub_100013E54(v227, v118, &qword_1004A9CF8);
  v126 = v234;
  v220 = v234[6];
  if (v220(v118, 1, v122) == 1)
  {
    sub_100013F2C(v118, &qword_1004A9CF8);
    v127 = 0;
    v128 = 0;
  }

  else
  {
    v127 = FilePath.string.getter();
    v128 = v129;
    (v126[1])(v118, v122);
  }

  v130 = v221;
  v132 = v225;
  v131 = v226;
  v133 = v232;
  v232 = v120;
  v134 = v120;
  v135 = v213;
  static LibCryptex.personalizeCryptex(at:ticketPath:withVariant:usingAuthorizationService:locatedAt:usingAppleConnect:ginfPath:)(v225, v226, v133, v206, v207, v134, v213, v208, v221, v127, v128);

  sub_100013F2C(v131, &qword_1004A9CF8);
  v136 = v126[1];
  v234 = v126 + 1;
  v226 = v136;
  v136(v132, v122);
  sub_100013F2C(v227, &qword_1004A9CF8);
  if (v220(v130, 1, v122) == 1)
  {

    sub_100013F2C(v130, &qword_1004A9CF8);
    v137 = 1;
    v138 = v237;
    v139 = v222;
    v140 = v223;
  }

  else
  {
    v141 = v216;
    v142 = v135;
    v143 = v211;
    v211(v216, v130, v122);
    v144 = v228;
    v139 = v222;
    sub_1002EA6C8(v228, v222);
    v138 = v237;
    (v219)(v139 + *(v237 + 20), v144 + v218, v122);
    v143(v139 + *(v138 + 24), v141, v122);
    v137 = 0;
    v145 = (v139 + *(v138 + 28));
    *v145 = v232;
    v145[1] = v142;
    v140 = v223;
  }

  v146 = v235;
  v147 = v235[7];
  (v147)(v139, v137, 1, v138);
  if ((v146[6])(v139, 1, v138) == 1)
  {
    sub_100013F2C(v139, &qword_1004B0140);
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v148 = type metadata accessor for Logger();
    sub_1000270B4(v148, qword_1004B00F8);
    sub_1002EA6C8(v238, v140);
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v235 = v147;
      v153 = v152;
      v239 = v152;
      *v151 = 136315138;
      v154 = (v140 + v229[5]);
      v155 = *v154;
      v156 = v154[1];

      sub_1002EA72C(v140, type metadata accessor for CryptexManager.CryptexConfig);
      v157 = sub_1000026C0(v155, v156, &v239);

      *(v151 + 4) = v157;
      _os_log_impl(&_mh_execute_header, v149, v150, "Failed to personalize cryptex %s", v151, 0xCu);
      sub_100003C3C(v153);
      v147 = v235;
    }

    else
    {

      sub_1002EA72C(v140, type metadata accessor for CryptexManager.CryptexConfig);
    }

    v169 = v230;
    v170 = v226;
    v226(v233, v230);
    v170(v231, v169);
    v170(v212, v169);
    sub_1002EA72C(v228, type metadata accessor for CryptexManager.ExtractedCryptex);
    return (v147)(v236, 1, 1, v138);
  }

  else
  {
    v235 = v147;
    sub_1002EAAD8(v139, v224, type metadata accessor for CryptexManager.PersonalizedCryptex);
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v158 = type metadata accessor for Logger();
    sub_1000270B4(v158, qword_1004B00F8);
    v159 = v217;
    sub_1002EA6C8(v238, v217);
    v160 = Logger.logObject.getter();
    v161 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v239 = v163;
      *v162 = 136315138;
      v164 = (v159 + v229[5]);
      v165 = v159;
      v166 = *v164;
      v167 = v164[1];

      sub_1002EA72C(v165, type metadata accessor for CryptexManager.CryptexConfig);
      v168 = sub_1000026C0(v166, v167, &v239);
      v138 = v237;

      *(v162 + 4) = v168;
      _os_log_impl(&_mh_execute_header, v160, v161, "Just finished personalizing %s", v162, 0xCu);
      sub_100003C3C(v163);
    }

    else
    {

      sub_1002EA72C(v159, type metadata accessor for CryptexManager.CryptexConfig);
    }

    v171 = v233;
    v172 = v231;
    v173 = v209;
    (*(*v210 + 184))(v231, v233);
    if (v173)
    {
      v174 = v215;
      sub_1002EA6C8(v238, v215);
      v175 = Logger.logObject.getter();
      v176 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v175, v176))
      {
        v177 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v239 = v178;
        *v177 = 136315138;
        v179 = (v174 + v229[5]);
        v180 = v174;
        v181 = *v179;
        v182 = v179[1];

        sub_1002EA72C(v180, type metadata accessor for CryptexManager.CryptexConfig);
        v183 = sub_1000026C0(v181, v182, &v239);

        *(v177 + 4) = v183;
        _os_log_impl(&_mh_execute_header, v175, v176, "Failed to ingest ticket & ginf for %s", v177, 0xCu);
        sub_100003C3C(v178);
      }

      else
      {

        sub_1002EA72C(v174, type metadata accessor for CryptexManager.CryptexConfig);
      }

      v184 = v230;
      v185 = v226;
      v226(v233, v230);
      v185(v231, v184);
      v185(v212, v184);
      sub_1002EA72C(v228, type metadata accessor for CryptexManager.ExtractedCryptex);
    }

    else
    {
      v186 = v230;
      v187 = v226;
      v226(v171, v230);
      v187(v172, v186);
      v187(v212, v186);
      sub_1002EA72C(v228, type metadata accessor for CryptexManager.ExtractedCryptex);
    }

    v188 = v236;
    sub_1002EAAD8(v224, v236, type metadata accessor for CryptexManager.PersonalizedCryptex);
    return (v235)(v188, 0, 1, v138);
  }
}

uint64_t CryptexManager.PersonalizedCryptex.init(config:path:ticketPath:serverURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1002EAAD8(a1, a6, type metadata accessor for CryptexManager.CryptexConfig);
  v11 = type metadata accessor for CryptexManager.PersonalizedCryptex(0);
  v12 = v11[5];
  v13 = type metadata accessor for FilePath();
  v14 = *(*(v13 - 8) + 32);
  v14(a6 + v12, a2, v13);
  result = (v14)(a6 + v11[6], a3, v13);
  v16 = (a6 + v11[7]);
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t CryptexManager.ExtractedCryptex.init(config:path:ticketPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1002EAAD8(a1, a4, type metadata accessor for CryptexManager.CryptexConfig);
  v7 = type metadata accessor for CryptexManager.ExtractedCryptex(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for FilePath();
  (*(*(v9 - 8) + 32))(a4 + v8, a2, v9);
  return sub_10003E154(a3, a4 + *(v7 + 24), &qword_1004A9CF8);
}

uint64_t CryptexManager.ExtractedCryptex.personalize(diavloServerURL:appleConnect:ginfPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a4;
  v59 = a3;
  v9 = sub_1000039E8(&qword_1004A9CF8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v65 = &v50 - v14;
  __chkstk_darwin(v13);
  v60 = &v50 - v15;
  v16 = type metadata accessor for FilePath();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v64 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v50 - v20;
  v22 = type metadata accessor for CryptexManager.CryptexConfig(0);
  v23 = *(v5 + *(v22 + 48));
  v63 = a5;
  v54 = v21;
  if (v23 <= 1)
  {
    if (v23)
    {

      goto LABEL_9;
    }
  }

  else if (v23 != 2 && v23 != 3)
  {
    goto LABEL_7;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v24 & 1) == 0)
  {
LABEL_7:
    v61 = 0;
    v62 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v61 = a1;
  v62 = a2;

LABEL_10:
  v25 = type metadata accessor for CryptexManager.ExtractedCryptex(0);
  v26 = *(v17 + 16);
  v52 = *(v25 + 20);
  v53 = v17 + 16;
  v51 = v26;
  v26(v64, v5 + v52, v16);
  sub_100013E54(v5 + *(v25 + 24), v65, &qword_1004A9CF8);
  v27 = (v5 + *(v22 + 24));
  v29 = *v27;
  v28 = v27[1];
  v57 = v29;
  v55 = v5;
  v56 = v28;
  sub_100013E54(v58, v12, &qword_1004A9CF8);
  v30 = *(v17 + 48);
  if (v30(v12, 1, v16) == 1)
  {
    sub_100013F2C(v12, &qword_1004A9CF8);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v31 = FilePath.string.getter();
    v32 = v33;
    (*(v17 + 8))(v12, v16);
  }

  v34 = v17;
  v49 = v31;
  v36 = v60;
  v35 = v61;
  v38 = v64;
  v37 = v65;
  v39 = v23;
  v40 = v62;
  static LibCryptex.personalizeCryptex(at:ticketPath:withVariant:usingAuthorizationService:locatedAt:usingAppleConnect:ginfPath:)(v64, v65, v57, v56, v39, v61, v62, v59 & 1, v60, v49, v32);

  sub_100013F2C(v37, &qword_1004A9CF8);
  (*(v34 + 8))(v38, v16);
  if (v30(v36, 1, v16) == 1)
  {

    sub_100013F2C(v36, &qword_1004A9CF8);
    v41 = type metadata accessor for CryptexManager.PersonalizedCryptex(0);
    return (*(*(v41 - 8) + 56))(v63, 1, 1, v41);
  }

  else
  {
    v43 = *(v34 + 32);
    v44 = v54;
    v43(v54, v36, v16);
    v45 = v55;
    v46 = v63;
    sub_1002EA6C8(v55, v63);
    v47 = type metadata accessor for CryptexManager.PersonalizedCryptex(0);
    v51(v46 + v47[5], v45 + v52, v16);
    v43((v46 + v47[6]), v44, v16);
    v48 = (v46 + v47[7]);
    *v48 = v35;
    v48[1] = v40;
    return (*(*(v47 - 1) + 56))(v46, 0, 1, v47);
  }
}

uint64_t CryptexManager.get(cryptex:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for CryptexManager.CryptexConfig(0);
  v4[7] = swift_task_alloc();
  sub_1000039E8(&qword_1004B0140);
  v7 = swift_task_alloc();
  v4[8] = v7;
  if (a3)
  {
    v8 = v7;

    v9 = swift_task_alloc();
    v4[9] = v9;
    *v9 = v4;
    v9[1] = sub_1002E6260;

    return CryptexManager.fetchFromCache(cryptex:cache:)(v8, a2, a3);
  }

  else
  {
    v11 = swift_task_alloc();
    v4[10] = v11;
    *v11 = v4;
    v11[1] = sub_1002E66D4;
    v12 = v4[2];
    v13 = v4[3];

    return CryptexManager.fetchFromNetwork(cryptex:)(v12, v13);
  }
}

uint64_t sub_1002E6260()
{

  return _swift_task_switch(sub_1002E635C, 0, 0);
}

uint64_t sub_1002E635C()
{
  v25 = v0;
  v1 = v0[8];
  v2 = type metadata accessor for CryptexManager.PersonalizedCryptex(0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100013F2C(v1, &qword_1004B0140);
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v4 = v0[7];
    v5 = v0[3];
    v6 = type metadata accessor for Logger();
    sub_1000270B4(v6, qword_1004B00F8);
    sub_1002EA6C8(v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[7];
    if (v9)
    {
      v11 = v0[6];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      v14 = (v10 + *(v11 + 20));
      v15 = *v14;
      v16 = v14[1];

      sub_1002EA72C(v10, type metadata accessor for CryptexManager.CryptexConfig);
      v17 = sub_1000026C0(v15, v16, &v24);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%s] Cache fetch failed, falling back to network download", v12, 0xCu);
      sub_100003C3C(v13);
    }

    else
    {

      sub_1002EA72C(v10, type metadata accessor for CryptexManager.CryptexConfig);
    }

    v21 = swift_task_alloc();
    v0[10] = v21;
    *v21 = v0;
    v21[1] = sub_1002E66D4;
    v22 = v0[2];
    v23 = v0[3];

    return CryptexManager.fetchFromNetwork(cryptex:)(v22, v23);
  }

  else
  {
    v18 = v0[2];

    sub_1002EAAD8(v1, v18, type metadata accessor for CryptexManager.PersonalizedCryptex);
    (*(v3 + 56))(v18, 0, 1, v2);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1002E66D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t CryptexManager.fetchFromCache(cryptex:cache:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[19] = type metadata accessor for CryptexManager.CryptexConfig(0);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for CryptexCacheDelegate.AccessParameter(0);
  v4[24] = swift_task_alloc();
  sub_1000039E8(&qword_1004AA048);
  v6 = swift_task_alloc();
  v4[25] = v6;
  v4[26] = swift_task_alloc();
  v9 = (*(*v3 + 112) + **(*v3 + 112));
  v7 = swift_task_alloc();
  v4[27] = v7;
  *v7 = v4;
  v7[1] = sub_1002E69F8;

  return v9(v6, a2);
}

uint64_t sub_1002E69F8()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1002E72A0;
  }

  else
  {
    v2 = sub_1002E6B0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E6B0C()
{
  v1 = *(v0 + 224);
  sub_10003E154(*(v0 + 200), *(v0 + 208), &qword_1004AA048);
  v2 = CryptexManager.CryptexConfig.sha256Bytes.getter();
  if (v1)
  {
    v3 = *(v0 + 120);
    sub_100013F2C(*(v0 + 208), &qword_1004AA048);

    v4 = type metadata accessor for CryptexManager.PersonalizedCryptex(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = v2;
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v23 = *(v10 + 32);
    sub_100013E54(*(v0 + 208), v8 + v9[6], &qword_1004AA048);
    v12 = *(v10 + 48);
    v13 = *(v10 + 64);
    *v8 = v7;
    *(v8 + 8) = v23;
    v14 = v8 + v9[7];
    *v14 = v12;
    *(v14 + 8) = 0;
    v15 = v8 + v9[8];
    *v15 = *(&v12 + 1);
    *(v15 + 8) = v13;
    LOBYTE(v15) = *(v10 + 104);
    v16 = *(v10 + 88);
    *(v0 + 72) = *(v10 + 72);
    *(v0 + 88) = v16;
    *(v0 + 104) = v15;
    v17 = *(v10 + 24);
    *(v0 + 16) = *(v10 + 16);
    *(v0 + 24) = v17;
    *(v0 + 32) = v23;
    *(v0 + 48) = v12;
    *(v0 + 64) = v13;
    v18 = *(*v11 + 184);

    v22 = (v18 + *v18);
    v19 = swift_task_alloc();
    *(v0 + 232) = v19;
    *v19 = v0;
    v19[1] = sub_1002E6DE8;
    v20 = *(v0 + 192);
    v21 = *(v0 + 128);

    return v22(v0 + 112, v21, v0 + 72, v0 + 16, v20);
  }
}

uint64_t sub_1002E6DE8()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1002E7594;
  }

  else
  {
    v2 = sub_1002E6EFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E6EFC()
{
  v31 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 128);
  v3 = *(**(v0 + 144) + 144);

  v3(v4, v2);
  if (v1)
  {

    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 160);
    v6 = *(v0 + 128);
    v7 = type metadata accessor for Logger();
    sub_1000270B4(v7, qword_1004B00F8);
    sub_1002EA6C8(v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 208);
    v12 = *(v0 + 192);
    v13 = *(v0 + 160);
    if (v10)
    {
      v29 = *(v0 + 208);
      v14 = *(v0 + 152);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136315138;
      v17 = (v13 + *(v14 + 20));
      v28 = v12;
      v18 = *v17;
      v19 = v17[1];

      sub_1002EA72C(v13, type metadata accessor for CryptexManager.CryptexConfig);
      v20 = sub_1000026C0(v18, v19, &v30);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%s] Failed to fetch from Entry", v15, 0xCu);
      sub_100003C3C(v16);

      sub_1002EA72C(v28, type metadata accessor for CryptexCacheDelegate.AccessParameter);
      v21 = v29;
    }

    else
    {

      sub_1002EA72C(v13, type metadata accessor for CryptexManager.CryptexConfig);
      sub_1002EA72C(v12, type metadata accessor for CryptexCacheDelegate.AccessParameter);
      v21 = v11;
    }

    sub_100013F2C(v21, &qword_1004AA048);
    v24 = *(v0 + 120);
    v25 = type metadata accessor for CryptexManager.PersonalizedCryptex(0);
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  }

  else
  {
    v22 = *(v0 + 208);
    v23 = *(v0 + 192);

    sub_1002EA72C(v23, type metadata accessor for CryptexCacheDelegate.AccessParameter);
    sub_100013F2C(v22, &qword_1004AA048);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1002E72A0()
{
  v22 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[16];
  v3 = type metadata accessor for Logger();
  sub_1000270B4(v3, qword_1004B00F8);
  sub_1002EA6C8(v2, v1);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  if (v6)
  {
    v8 = v0[19];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = (v7 + *(v8 + 20));
    v13 = *v12;
    v14 = v12[1];

    sub_1002EA72C(v7, type metadata accessor for CryptexManager.CryptexConfig);
    v15 = sub_1000026C0(v13, v14, &v21);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Failed to resolve AEA decryption parameters: %@", v9, 0x16u);
    sub_100013F2C(v10, &qword_1004AA050);

    sub_100003C3C(v11);
  }

  else
  {

    sub_1002EA72C(v7, type metadata accessor for CryptexManager.CryptexConfig);
  }

  v17 = v0[15];
  v18 = type metadata accessor for CryptexManager.PersonalizedCryptex(0);
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1002E7594()
{
  v27 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[16];
  v3 = type metadata accessor for Logger();
  sub_1000270B4(v3, qword_1004B00F8);
  sub_1002EA6C8(v2, v1);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  v8 = v0[24];
  v9 = v0[21];
  if (v6)
  {
    v25 = v0[26];
    v10 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v11 = 136315394;
    v14 = (v9 + *(v10 + 20));
    v24 = v8;
    v16 = *v14;
    v15 = v14[1];

    sub_1002EA72C(v9, type metadata accessor for CryptexManager.CryptexConfig);
    v17 = sub_1000026C0(v16, v15, &v26);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Failed to handle cache access: %@", v11, 0x16u);
    sub_100013F2C(v12, &qword_1004AA050);

    sub_100003C3C(v13);

    sub_1002EA72C(v24, type metadata accessor for CryptexCacheDelegate.AccessParameter);
    v19 = v25;
  }

  else
  {

    sub_1002EA72C(v9, type metadata accessor for CryptexManager.CryptexConfig);
    sub_1002EA72C(v8, type metadata accessor for CryptexCacheDelegate.AccessParameter);
    v19 = v7;
  }

  sub_100013F2C(v19, &qword_1004AA048);
  v20 = v0[15];
  v21 = type metadata accessor for CryptexManager.PersonalizedCryptex(0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);

  v22 = v0[1];

  return v22();
}

uint64_t CryptexManager.fetchFromNetwork(cryptex:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for FilePath();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_1000039E8(&qword_1004B04C0);
  v3[9] = swift_task_alloc();
  sub_1000039E8(&qword_1004A9CF8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_1000039E8(&qword_1004B04C8);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for CryptexManager.DownloadedCryptex(0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1002E7B00, 0, 0);
}

uint64_t sub_1002E7B00()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = *(v3 + 56);
  v0[19] = v5;
  v0[20] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v2);
  v11 = (*(*v4 + 176) + **(*v4 + 176));
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1002E7C4C;
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[3];

  return v11(v7, v9, v8);
}

uint64_t sub_1002E7C4C()
{
  v1 = *(*v0 + 112);

  sub_100013F2C(v1, &qword_1004A9CF8);

  return _swift_task_switch(sub_1002E7D74, 0, 0);
}

uint64_t sub_1002E7D74()
{
  v1 = v0[15];
  if ((*(v0[17] + 48))(v1, 1, v0[16]) == 1)
  {
    v2 = v0[2];
    sub_100013F2C(v1, &qword_1004B04C8);
    v3 = type metadata accessor for CryptexManager.PersonalizedCryptex(0);
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[4];
    sub_1002EAAD8(v1, v0[18], type metadata accessor for CryptexManager.DownloadedCryptex);
    v10 = (*(*v6 + 184) + **(*v6 + 184));
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_1002E8000;
    v8 = v0[18];
    v9 = v0[9];

    return v10(v9, v8);
  }
}

uint64_t sub_1002E8000()
{

  return _swift_task_switch(sub_1002E80FC, 0, 0);
}

uint64_t sub_1002E80FC()
{
  v1 = *(v0 + 72);
  v2 = type metadata accessor for CryptexManager.ExtractedCryptex(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v5 = *(v0 + 32);
    v7 = *(v5 + 112);
    v6 = *(v5 + 120);
    v8 = *(v5 + 105);
    (*(v0 + 152))(*(v0 + 104), 1, 1, *(v0 + 40));
    v9 = type metadata accessor for CryptexManager.CryptexConfig(0);
    v10 = *(v1 + *(v9 + 48));
    v53 = v8;
    v52 = v10;
    if (v10 <= 1)
    {
      v55 = v6;
      if (v10)
      {

        goto LABEL_13;
      }
    }

    else if (v10 == 2)
    {
      v55 = v6;
    }

    else
    {
      if (v10 != 3)
      {
LABEL_11:
        v54 = 0;
        v55 = 0;
LABEL_14:
        v12 = *(v0 + 104);
        v14 = *(v0 + 80);
        v13 = *(v0 + 88);
        v15 = *(v0 + 72);
        v16 = *(v0 + 48);
        v17 = *(v0 + 40);
        v45 = *(v2 + 20);
        v46 = *(v16 + 16);
        v46(*(v0 + 56), v15 + v45, v17);
        sub_100013E54(v15 + *(v2 + 24), v13, &qword_1004A9CF8);
        v47 = v15;
        v18 = (v15 + *(v9 + 24));
        v49 = v18[1];
        v50 = *v18;
        sub_100013E54(v12, v14, &qword_1004A9CF8);
        v51 = *(v16 + 48);
        v19 = v51(v14, 1, v17);
        v20 = *(v0 + 80);
        if (v19 == 1)
        {
          sub_100013F2C(*(v0 + 80), &qword_1004A9CF8);
          v21 = 0;
          v22 = 0;
        }

        else
        {
          v24 = *(v0 + 40);
          v23 = *(v0 + 48);
          v21 = FilePath.string.getter();
          v22 = v25;
          (*(v23 + 8))(v20, v24);
        }

        v48 = *(v0 + 144);
        v27 = *(v0 + 96);
        v26 = *(v0 + 104);
        v28 = *(v0 + 88);
        v29 = *(v0 + 48);
        v30 = *(v0 + 56);
        v31 = *(v0 + 40);
        static LibCryptex.personalizeCryptex(at:ticketPath:withVariant:usingAuthorizationService:locatedAt:usingAppleConnect:ginfPath:)(v30, v28, v50, v49, v52, v54, v55, v53, v27, v21, v22);

        sub_100013F2C(v28, &qword_1004A9CF8);
        (*(v29 + 8))(v30, v31);
        sub_100013F2C(v26, &qword_1004A9CF8);
        sub_1002EA72C(v48, type metadata accessor for CryptexManager.DownloadedCryptex);
        v32 = v51(v27, 1, v31);
        v33 = *(v0 + 96);
        if (v32 == 1)
        {

          sub_100013F2C(v33, &qword_1004A9CF8);
          v34 = type metadata accessor for CryptexManager.PersonalizedCryptex(0);
          v35 = 1;
        }

        else
        {
          v37 = *(v0 + 64);
          v36 = *(v0 + 72);
          v38 = *(v0 + 40);
          v39 = *(v0 + 16);
          v40 = *(*(v0 + 48) + 32);
          v40(v37, *(v0 + 96), v38);
          sub_1002EA6C8(v36, v39);
          v34 = type metadata accessor for CryptexManager.PersonalizedCryptex(0);
          v46(v39 + v34[5], v47 + v45, v38);
          v40(v39 + v34[6], v37, v38);
          v35 = 0;
          v41 = (v39 + v34[7]);
          *v41 = v54;
          v41[1] = v55;
        }

        v42 = *(v0 + 72);
        (*(*(v34 - 1) + 56))(*(v0 + 16), v35, 1, v34);
        sub_1002EA72C(v42, type metadata accessor for CryptexManager.ExtractedCryptex);
        goto LABEL_21;
      }

      v55 = v6;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v54 = v7;

    goto LABEL_14;
  }

  v3 = *(v0 + 16);
  sub_1002EA72C(*(v0 + 144), type metadata accessor for CryptexManager.DownloadedCryptex);
  sub_100013F2C(v1, &qword_1004B04C0);
  v4 = type metadata accessor for CryptexManager.PersonalizedCryptex(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
LABEL_21:

  v43 = *(v0 + 8);

  return v43();
}

uint64_t CryptexManager.DownloadedCryptex.init(config:path:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1002EAAD8(a1, a3, type metadata accessor for CryptexManager.CryptexConfig);
  v5 = *(type metadata accessor for CryptexManager.DownloadedCryptex(0) + 20);
  v6 = type metadata accessor for FilePath();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t CryptexManager.download(cryptex:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  sub_1000039E8(&qword_1004A9CF8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v5 = type metadata accessor for FilePath();
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = type metadata accessor for CryptexManager.CryptexConfig(0);
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_1002E8888, 0, 0);
}

uint64_t sub_1002E8888()
{
  v40 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 304);
  v2 = *(v0 + 224);
  v3 = type metadata accessor for Logger();
  *(v0 + 312) = sub_1000270B4(v3, qword_1004B00F8);
  sub_1002EA6C8(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 304);
  if (v6)
  {
    v8 = *(v0 + 296);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39 = v10;
    *v9 = 136315138;
    v11 = (v7 + *(v8 + 20));
    v12 = *v11;
    v13 = v11[1];

    sub_1002EA72C(v7, type metadata accessor for CryptexManager.CryptexConfig);
    v14 = sub_1000026C0(v12, v13, &v39);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Downloading cryptex %s...", v9, 0xCu);
    sub_100003C3C(v10);
  }

  else
  {

    sub_1002EA72C(v7, type metadata accessor for CryptexManager.CryptexConfig);
  }

  v15 = URL.scheme.getter();
  if (v16)
  {
    if (v15 == 2020568683 && v16 == 0xE400000000000000)
    {

LABEL_11:
      v18 = *(v0 + 240);
      v20 = *(v18 + 32);
      v19 = *(v18 + 48);
      v21 = *(v18 + 64);
      *(v0 + 16) = *(v18 + 16);
      *(v0 + 32) = v20;
      *(v0 + 64) = v21;
      *(v0 + 48) = v19;
      v23 = *(v0 + 32);
      v22 = *(v0 + 40);
      v24 = *(v18 + 72);
      v25 = *(v18 + 88);
      *(v0 + 144) = *(v18 + 104);
      *(v0 + 112) = v24;
      *(v0 + 128) = v25;
      v26 = swift_task_alloc();
      *(v0 + 320) = v26;
      *v26 = v0;
      v26[1] = sub_1002E8C30;
      v27 = *(v0 + 256);
      v28 = *(v0 + 224);
      v29 = *(v0 + 232);

      return static KnoxClientWrapper.downloadRaw(from:to:configuration:authentication:alternateCDNHost:)(v27, v28, v29, v0 + 16, v0 + 112, v23, v22);
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_11;
    }
  }

  v31 = *(v0 + 240);
  v32 = *(v31 + 16);
  v33 = *(v31 + 24);
  v34 = *(v31 + 48);
  *(v0 + 72) = xmmword_1003F2EE0;
  *(v0 + 88) = xmmword_1003F2EF0;
  *(v0 + 104) = 1;
  v35 = swift_task_alloc();
  *(v0 + 328) = v35;
  *v35 = v0;
  v35[1] = sub_1002E8EBC;
  v36 = *(v0 + 248);
  v37 = *(v0 + 224);
  v38 = *(v0 + 232);
  v43 = 1;
  v42 = 0;

  return static Network.downloadItem(at:to:attempts:backoff:background:maxActiveTasks:chunkSize:)(v36, v37, v38, v32, v0 + 72, v33, v34, 0);
}

uint64_t sub_1002E8C30()
{

  return _swift_task_switch(sub_1002E8D2C, 0, 0);
}

uint64_t sub_1002E8D2C()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100013F2C(v3, &qword_1004A9CF8);
    v4 = type metadata accessor for CryptexManager.DownloadedCryptex(0);
    v5 = 1;
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = v0[36];
    v9 = v0[27];
    v8 = v0[28];
    v6(v7, v3, v1);
    sub_1002EA6C8(v8, v9);
    v4 = type metadata accessor for CryptexManager.DownloadedCryptex(0);
    v6(v9 + *(v4 + 20), v7, v1);
    v5 = 0;
  }

  (*(*(v4 - 8) + 56))(v0[27], v5, 1, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002E8EBC()
{

  return _swift_task_switch(sub_1002E8FB8, 0, 0);
}

Swift::Int sub_1002E8FB8()
{
  v39 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[31];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v4 = v0[37];
    v5 = v0[28];
    v6 = *(v2 + 32);
    v6(v0[35], v3, v1);
    v7 = v5 + *(v4 + 32);
    if ((*(v7 + 8) & 1) == 0)
    {
      result = *v7;
      if ((*v7 & 0x8000000000000000) != 0)
      {
        __break(1u);
        return result;
      }

      FilePath.sizeEquals(expectedSize:)(result);
      if (v9)
      {
        swift_errorRetain();
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.error.getter();

        v12 = os_log_type_enabled(v10, v11);
        v14 = v0[34];
        v13 = v0[35];
        v15 = v0[33];
        if (v12)
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v38[0] = v17;
          *v16 = 136315138;
          swift_getErrorValue();
          v37 = v13;
          v18 = Error.localizedDescription.getter();
          v20 = sub_1000026C0(v18, v19, v38);

          *(v16 + 4) = v20;
          v21 = "Downloaded cryptex failed size validation: %s";
LABEL_12:
          _os_log_impl(&_mh_execute_header, v10, v11, v21, v16, 0xCu);
          sub_100003C3C(v17);

          (*(v14 + 8))(v37, v15);
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    v22 = v0[28];
    v23 = (v22 + *(v0[37] + 36));
    v24 = v23[1];
    if (v24)
    {
      v25 = *v23;
      FilePath.sha256Equals(expectedSHA256:)(*(&v24 - 1));
      if (v26)
      {
        swift_errorRetain();
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.error.getter();

        v27 = os_log_type_enabled(v10, v11);
        v14 = v0[34];
        v13 = v0[35];
        v15 = v0[33];
        if (v27)
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v38[0] = v17;
          *v16 = 136315138;
          swift_getErrorValue();
          v37 = v13;
          v28 = Error.localizedDescription.getter();
          v30 = sub_1000026C0(v28, v29, v38);

          *(v16 + 4) = v30;
          v21 = "Downloaded cryptex failed sha256 validation: %s";
          goto LABEL_12;
        }

LABEL_13:

        (*(v14 + 8))(v13, v15);
        goto LABEL_14;
      }

      v22 = v0[28];
    }

    v33 = v0[36];
    v34 = v0[33];
    v35 = v0[27];
    v6(v33, v0[35], v34);
    sub_1002EA6C8(v22, v35);
    v31 = type metadata accessor for CryptexManager.DownloadedCryptex(0);
    v6(v35 + *(v31 + 20), v33, v34);
    v32 = 0;
    goto LABEL_17;
  }

  sub_100013F2C(v3, &qword_1004A9CF8);
LABEL_14:
  v31 = type metadata accessor for CryptexManager.DownloadedCryptex(0);
  v32 = 1;
LABEL_17:
  (*(*(v31 - 8) + 56))(v0[27], v32, 1, v31);

  v36 = v0[1];

  return v36();
}

uint64_t CryptexManager.extract(cryptex:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  sub_1000039E8(&qword_1004A9CF8);
  v3[4] = swift_task_alloc();
  v5 = type metadata accessor for FilePath();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  sub_1000039E8(&qword_1004AA048);
  v6 = swift_task_alloc();
  v3[8] = v6;
  v3[9] = swift_task_alloc();
  v9 = (*(*v2 + 112) + **(*v2 + 112));
  v7 = swift_task_alloc();
  v3[10] = v7;
  *v7 = v3;
  v7[1] = sub_1002E95CC;

  return v9(v6, a2);
}

uint64_t sub_1002E95CC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1002E9934;
  }

  else
  {
    v2 = sub_1002E96E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E96E0()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[4];
  sub_10003E154(v0[8], v2, &qword_1004AA048);
  type metadata accessor for CryptexManager();
  type metadata accessor for CryptexManager.DownloadedCryptex(0);
  static CryptexManager.extractCryptex(at:using:)(v2, v3);
  v4 = v1;
  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  if (v4)
  {

    sub_100013F2C(v5, &qword_1004AA048);
    (*(v7 + 56))(v8, 1, 1, v6);
LABEL_4:
    sub_100013F2C(v0[4], &qword_1004A9CF8);
    v9 = type metadata accessor for CryptexManager.ExtractedCryptex(0);
    v10 = 1;
    goto LABEL_5;
  }

  sub_100013F2C(v0[9], &qword_1004AA048);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  v17 = v0[2];
  v16 = v0[3];
  v18 = *(v14 + 32);
  v18(v13, v0[4], v15);
  sub_1002EA6C8(v16, v17);
  v9 = type metadata accessor for CryptexManager.ExtractedCryptex(0);
  v18(v17 + *(v9 + 20), v13, v15);
  (*(v14 + 56))(v17 + *(v9 + 24), 1, 1, v15);
  v10 = 0;
LABEL_5:
  (*(*(v9 - 8) + 56))(v0[2], v10, 1, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002E9934()
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to resolve AEA asset decryption components. Unable to extract cryptex.", v4, 2u);
  }

  v5 = type metadata accessor for CryptexManager.ExtractedCryptex(0);
  (*(*(v5 - 8) + 56))(*(v0 + 16), 1, 1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t static CryptexManager.extractCryptex(at:using:)@<X0>(uint64_t a1@<X1>, NSObject *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004A9CF8);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for FilePath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  static CryptexManager.setUpExtractedPath()();
  if (v2)
  {

    v12 = *(v9 + 56);
    v12(v7, 1, 1, v8);
    sub_100013F2C(v7, &qword_1004A9CF8);
    return (v12)(a2, 1, 1, v8);
  }

  else
  {
    v17 = a2;
    v16 = *(v9 + 56);
    v16(v7, 0, 1, v8);
    v15 = *(v9 + 32);
    v15(v11, v7, v8);
    FilePath.extract(to:using:)(v11, a1);
    v14 = v17;
    v15(v17, v11, v8);
    return v16(v14, 0, 1, v8);
  }
}

uint64_t sub_1002E9D38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for FilePath();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CryptexManager.PersonalizedCryptex.ticketPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CryptexManager.PersonalizedCryptex(0) + 24);
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CryptexManager.PersonalizedCryptex.serverURL.getter()
{
  v1 = *(v0 + *(type metadata accessor for CryptexManager.PersonalizedCryptex(0) + 28));

  return v1;
}

Swift::Bool __swiftcall CryptexManager.PersonalizedCryptex.install(limitLoadToREM:)(Swift::Bool limitLoadToREM)
{
  v2 = v1;
  v3 = type metadata accessor for CryptexManager.PersonalizedCryptex(0);
  v30 = *(v3 + 20);
  v4 = type metadata accessor for CryptexManager.CryptexConfig(0);
  v5 = (v2 + v4[6]);
  v6 = v5[1];
  v28 = *v5;
  v7 = *(v2 + v4[12]);
  v8 = (v2 + *(v3 + 28));
  v10 = *v8;
  v9 = v8[1];
  v11 = *(v2 + v4[10]);
  if (v9)
  {
    sub_1000039E8(&qword_1004AAA18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376BB0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = &protocol witness table for String;
    strcpy((inited + 32), "--signing-url");
    *(inited + 46) = -4864;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = v10;
    *(inited + 80) = v9;

    sub_10034A380(inited);
  }

  if (v7 != 4)
  {
    sub_1000039E8(&qword_1004AAA18);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_100376BB0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = &protocol witness table for String;
    *(v13 + 32) = 0xD000000000000015;
    *(v13 + 40) = 0x800000010043DD90;
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v14 = 0xE700000000000000;
        v15 = 0x79726F74636166;
      }

      else
      {
        v14 = 0xE400000000000000;
        v15 = 1701736302;
      }
    }

    else if (v7)
    {
      v14 = 0xE600000000000000;
      v15 = 0x6F6C76616964;
    }

    else
    {
      v14 = 0xE500000000000000;
      v15 = 0x7573746174;
    }

    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = &protocol witness table for String;
    *(v13 + 72) = v15;
    *(v13 + 80) = v14;
    sub_10034A380(v13);
  }

  sub_1000039E8(&qword_1004AAA18);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_100376A40;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = &protocol witness table for String;
  *(v16 + 32) = 0x6C6C6174736E69;
  *(v16 + 40) = 0xE700000000000000;
  sub_10034A380(v16);
  if (v6)
  {
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_100376BB0;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = &protocol witness table for String;
    *(v17 + 32) = 0x6E61697261762D2DLL;
    *(v17 + 40) = 0xE900000000000074;
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = &protocol witness table for String;
    *(v17 + 72) = v28;
    *(v17 + 80) = v6;

    sub_10034A380(v17);
  }

  if (limitLoadToREM)
  {
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_100376A40;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = &protocol witness table for String;
    *(v18 + 32) = 0xD000000000000013;
    *(v18 + 40) = 0x800000010043DDB0;
    sub_10034A380(v18);
  }

  if (v11 != 2 && (v11 & 1) != 0)
  {
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_100376A40;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = &protocol witness table for String;
    *(v19 + 32) = 0x7277646165722D2DLL;
    *(v19 + 40) = 0xEB00000000657469;
    sub_10034A380(v19);
  }

  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_100376F00;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = &protocol witness table for String;
  strcpy((v20 + 32), "--ticket-path");
  *(v20 + 46) = -4864;
  v21 = FilePath.string.getter();
  *(v20 + 96) = &type metadata for String;
  *(v20 + 104) = &protocol witness table for String;
  *(v20 + 72) = v21;
  *(v20 + 80) = v22;
  v23 = type metadata accessor for FilePath();
  *(v20 + 136) = v23;
  *(v20 + 144) = sub_1002EAA90(&qword_1004AA058, &type metadata accessor for FilePath);
  v24 = sub_100064BF8((v20 + 112));
  (*(*(v23 - 8) + 16))(v24, v2 + v30, v23);
  sub_10034A380(v20);
  if (qword_1004A9E00 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for URL();
  v26 = sub_1000270B4(v25, qword_1004AAA50);
  sub_10034B9E0(v26, _swiftEmptyArrayStorage);

  return 1;
}

uint64_t CryptexManager.deinit()
{

  sub_1002EAB84(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return v0;
}

uint64_t CryptexManager.__deallocating_deinit()
{

  sub_1002EAB84(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t Config.Authentication.downloadAuthentication.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 32))
  {
    v2 = 0;
    v3 = *(v1 + 24);
LABEL_3:
    v4 = 0uLL;
    goto LABEL_8;
  }

  v5 = *(v1 + 104);
  if (*(v1 + 112))
  {
    v6 = a1;
    v12 = v5;

    v3 = v12;
    a1 = v6;
    v4 = 0uLL;
    v2 = 2;
  }

  else
  {
    if (!*(v1 + 48))
    {
      v3 = 0uLL;
      v2 = 3;
      goto LABEL_3;
    }

    v8 = *(v1 + 56);
    v7 = *(v1 + 64);
    v13 = *(v1 + 80);
    v9 = *(v1 + 88);
    v10 = a1;

    *&v3 = v13;
    a1 = v10;
    *(&v3 + 1) = v9;
    *&v4 = v8;
    *(&v4 + 1) = v7;
    v2 = 1;
  }

LABEL_8:
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
}

uint64_t sub_1002EA64C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000026C0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1002EA6C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptexManager.CryptexConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EA72C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002EA7E8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5, uint64_t a6, unint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      memset(v26, 0, 14);
      v13 = v26;
      v12 = v26;
      goto LABEL_23;
    }

    v25 = a5;
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    v16 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, a1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 += v14 - a1;
    }

    v17 = __OFSUB__(v15, v14);
    v18 = v15 - v14;
    if (!v17)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v26[0] = a1;
    LOWORD(v26[1]) = a2;
    BYTE2(v26[1]) = BYTE2(a2);
    BYTE3(v26[1]) = BYTE3(a2);
    BYTE4(v26[1]) = BYTE4(a2);
    BYTE5(v26[1]) = BYTE5(a2);
    v12 = v26 + BYTE6(a2);
    v13 = v26;
    goto LABEL_23;
  }

  v19 = a1;
  v18 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v25 = a5;
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v19, v20))
    {
      v16 += v19 - v20;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v21 = __DataStorage._length.getter();
  if (v21 >= v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = v21;
  }

  v23 = (v22 + v16);
  if (v16)
  {
    v12 = v23;
  }

  else
  {
    v12 = 0;
  }

  a5 = v25;
  v13 = v16;
  a3 = v10;
  a4 = v9;
  a6 = v8;
  a7 = v7;
LABEL_23:
  sub_1002E3C8C(v13, v12, a3, a4, a5, a6, a7);
  sub_100031928(v10, v9);
  return sub_100031928(v8, v7);
}

unint64_t sub_1002EAA04()
{
  result = qword_1004B0138;
  if (!qword_1004B0138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004B0138);
  }

  return result;
}

uint64_t sub_1002EAA90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002EAAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002EAB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  else
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t dispatch thunk of CryptexManager.resolveAEADecryptionParameters(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 112) + **(*v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100189CAC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CryptexManager.resolveCryptexCacheAccessParameter(cryptex:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 120) + **(*v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100001FE0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CryptexManager.__allocating_init(downloadConfig:downloadAuth:appleConnect:diavloServerURL:)(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 48);
  v5 = *(a2 + 32);
  v6 = *(v2 + 128);
  v12 = *a1;
  v13 = v3;
  v7 = *(a1 + 2);
  v14 = *(a1 + 1);
  v15 = v7;
  v16 = v4;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v11 = v5;
  return v6(&v12, v10);
}

uint64_t dispatch thunk of CryptexManager.get(cryptex:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 152) + **(*v3 + 152));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100001FE0;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of CryptexManager.download(cryptex:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 176) + **(*v3 + 176));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100189CAC;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of CryptexManager.extract(cryptex:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 184) + **(*v2 + 184));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100189CAC;

  return v8(a1, a2);
}

uint64_t sub_1002EB2F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1002EB3CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1002EB488()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_1001BC3D8(319, &qword_1004AA318);
    if (v1 <= 0x3F)
    {
      sub_1001BC3D8(319, &qword_1004AB418);
      if (v2 <= 0x3F)
      {
        sub_1001BC3D8(319, &qword_1004AB420);
        if (v3 <= 0x3F)
        {
          sub_1001BC3D8(319, &qword_1004AB400);
          if (v4 <= 0x3F)
          {
            sub_1001BC3D8(319, &unk_1004B02B0);
            if (v5 <= 0x3F)
            {
              sub_1001BC3D8(319, &qword_1004AB408);
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

uint64_t sub_1002EB5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CryptexManager.CryptexConfig(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for FilePath();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1002EB700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CryptexManager.CryptexConfig(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for FilePath();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1002EB7FC()
{
  result = type metadata accessor for CryptexManager.CryptexConfig(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FilePath();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002EB894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CryptexManager.CryptexConfig(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000039E8(&qword_1004A9CF8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1002EB9F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CryptexManager.CryptexConfig(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for FilePath();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000039E8(&qword_1004A9CF8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1002EBB4C()
{
  type metadata accessor for CryptexManager.CryptexConfig(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FilePath();
    if (v1 <= 0x3F)
    {
      sub_1002EBBE8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002EBBE8()
{
  if (!qword_1004AA1B8)
  {
    type metadata accessor for FilePath();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AA1B8);
    }
  }
}

uint64_t sub_1002EBC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CryptexManager.CryptexConfig(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1002EBD84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CryptexManager.CryptexConfig(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for FilePath();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1002EBE90()
{
  type metadata accessor for CryptexManager.CryptexConfig(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FilePath();
    if (v1 <= 0x3F)
    {
      sub_1001BC3D8(319, &qword_1004AA318);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 FileStat.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002EC1CC(a1, &v8);
  if (!v2)
  {
    v5 = *&v8.st_blksize;
    *(a2 + 96) = *&v8.st_size;
    *(a2 + 112) = v5;
    *(a2 + 128) = *v8.st_qspare;
    st_mtimespec = v8.st_mtimespec;
    *(a2 + 32) = v8.st_atimespec;
    *(a2 + 48) = st_mtimespec;
    st_birthtimespec = v8.st_birthtimespec;
    *(a2 + 64) = v8.st_ctimespec;
    *(a2 + 80) = st_birthtimespec;
    result = *&v8.st_uid;
    *a2 = *&v8.st_dev;
    *(a2 + 16) = result;
  }

  return result;
}

__n128 FileStat.rawValue.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 128);
  v3 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v3;
  v4 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v4;
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 FileStat.rawValue.setter(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v2;
  *(v1 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v3;
  v4 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v4;
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

void __swiftcall FileStat.init(rawValue:)(DarwinInit::FileStat *__return_ptr retstr, stat *rawValue)
{
  v2 = *&rawValue->st_blksize;
  *&retstr->rawValue.st_size = *&rawValue->st_size;
  *&retstr->rawValue.st_blksize = v2;
  *retstr->rawValue.st_qspare = *rawValue->st_qspare;
  st_mtimespec = rawValue->st_mtimespec;
  retstr->rawValue.st_atimespec = rawValue->st_atimespec;
  retstr->rawValue.st_mtimespec = st_mtimespec;
  st_birthtimespec = rawValue->st_birthtimespec;
  retstr->rawValue.st_ctimespec = rawValue->st_ctimespec;
  retstr->rawValue.st_birthtimespec = st_birthtimespec;
  v5 = *&rawValue->st_uid;
  *&retstr->rawValue.st_dev = *&rawValue->st_dev;
  *&retstr->rawValue.st_uid = v5;
}

BOOL sub_1002EC124(unsigned __int16 (*a1)(void))
{
  v3 = *(v1 + 4);
  v4 = S_IFMT.getter() & v3;
  return v4 == a1();
}

uint64_t sub_1002EC1CC@<X0>(uint64_t a1@<X0>, stat *a2@<X8>)
{
  memset(&v13, 0, sizeof(v13));
  while (1)
  {
    FilePath.string.getter();
    v4 = String.utf8CString.getter();

    v5 = stat((v4 + 32), &v13);

    if (v5 != -1)
    {
      break;
    }

    v6 = errno.getter();
    if (v6 != 4)
    {
      v7 = v6;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v8 = v7;
      v9 = type metadata accessor for FilePath();
      return (*(*(v9 - 8) + 8))(a1, v9);
    }
  }

  v12 = v13;
  v11 = type metadata accessor for FilePath();
  result = (*(*(v11 - 8) + 8))(a1, v11);
  *a2 = v12;
  return result;
}

void __swiftcall DInitFeatureFlags.init(domain:feature:enable:attributeName:attributeValue:featurePhase:)(DarwinInit::DInitFeatureFlags *__return_ptr retstr, Swift::String_optional domain, Swift::String_optional feature, Swift::Bool_optional enable, Swift::String_optional attributeName, Swift::String_optional attributeValue, Swift::String_optional featurePhase)
{
  retstr->domain = domain;
  retstr->feature = feature;
  retstr->enable = enable;
  retstr->attributeName = attributeName;
  retstr->attributeValue.value._countAndFlagsBits = attributeValue.value._countAndFlagsBits;
  *&retstr->attributeValue.value._object = *&attributeValue.value._object;
  retstr->featurePhase.value._object = featurePhase.value._object;
}

DarwinInit::DInitFeatureFlags::CodingKeys_optional __swiftcall DInitFeatureFlags.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100489160, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

DarwinInit::DInitFeatureFlags::CodingKeys_optional sub_1002EC434@<W0>(Swift::String *a1@<X0>, DarwinInit::DInitFeatureFlags::CodingKeys_optional *a2@<X8>)
{
  result.value = DInitFeatureFlags.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

DarwinInit::DInitFeatureFlags::CodingKeys_optional sub_1002EC464@<W0>(uint64_t a1@<X0>, DarwinInit::DInitFeatureFlags::CodingKeys_optional *a2@<X8>)
{
  result.value = DInitFeatureFlags.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1002EC48C(uint64_t a1)
{
  v2 = sub_1002ECFD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002EC4C8(uint64_t a1)
{
  v2 = sub_1002ECFD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1002EC508(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s10DarwinInit17DInitFeatureFlagsV2eeoiySbAC_ACtFZ_0(v7, v9);
}

void DInitFeatureFlags.hash(into:)()
{
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v0 + 24))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v0 + 24))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
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
  if (*(v0 + 48))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v0 + 64))
    {
      goto LABEL_11;
    }

LABEL_16:
    Hasher._combine(_:)(0);
    if (*(v0 + 80))
    {
      goto LABEL_12;
    }

LABEL_17:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  if (!*(v0 + 64))
  {
    goto LABEL_16;
  }

LABEL_11:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v0 + 80))
  {
    goto LABEL_17;
  }

LABEL_12:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int DInitFeatureFlags.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitFeatureFlags.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1002EC71C()
{
  Hasher.init(_seed:)();
  DInitFeatureFlags.hash(into:)();
  return Hasher._finalize()();
}

double DInitFeatureFlags.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002ECBC0(a1, v7);
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

uint64_t DInitFeatureFlags.encode(to:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004B04D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_1002ECFD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

BOOL _s10DarwinInit17DInitFeatureFlagsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(a1 + 32);
  v16 = *(a2 + 32);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }

    goto LABEL_22;
  }

  v17 = 0;
  if (v16 != 2 && ((v16 ^ v15) & 1) == 0)
  {
LABEL_22:
    v18 = *(a1 + 48);
    v19 = *(a2 + 48);
    if (v18)
    {
      if (!v19)
      {
        return 0;
      }

      if (*(a1 + 40) != *(a2 + 40) || v18 != v19)
      {
        v20 = a1;
        v21 = a2;
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
        a2 = v21;
        v23 = v22;
        a1 = v20;
        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v19)
    {
      return 0;
    }

    v24 = *(a1 + 64);
    v25 = *(a2 + 64);
    if (v24)
    {
      if (!v25)
      {
        return 0;
      }

      if (*(a1 + 56) != *(a2 + 56) || v24 != v25)
      {
        v26 = a1;
        v27 = a2;
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
        a2 = v27;
        v29 = v28;
        a1 = v26;
        if ((v29 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v25)
    {
      return 0;
    }

    v30 = *(a1 + 80);
    v31 = *(a2 + 80);
    if (v30)
    {
      return v31 && (*(a1 + 72) == *(a2 + 72) && v30 == v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
    }

    return !v31;
  }

  return v17;
}

uint64_t sub_1002ECBC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004B0508);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1002ECFD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  LOBYTE(v40[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v12 = v9;
  LOBYTE(v40[0]) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v14;
  LOBYTE(v40[0]) = 2;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v40[0]) = 3;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v15;
  LOBYTE(v40[0]) = 4;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v16;
  v49 = 5;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = *(v6 + 8);
  v28 = v17;
  v19 = v8;
  v21 = v20;
  v18(v19, v5);
  *&v34 = v12;
  *(&v34 + 1) = v11;
  *&v35 = v13;
  v22 = v33;
  *(&v35 + 1) = v33;
  LOBYTE(v36) = v48;
  *(&v36 + 1) = v30;
  *&v37 = v32;
  v23 = v31;
  *(&v37 + 1) = v29;
  *&v38 = v31;
  *(&v38 + 1) = v28;
  v39 = v21;
  sub_1002ED2D4(&v34, v40);
  sub_100003C3C(a1);
  v40[0] = v12;
  v40[1] = v11;
  v40[2] = v13;
  v40[3] = v22;
  v41 = v48;
  v42 = v30;
  v43 = v32;
  v44 = v29;
  v45 = v23;
  v46 = v28;
  v47 = v21;
  result = sub_1002ED30C(v40);
  v25 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v25;
  *(a2 + 64) = v38;
  *(a2 + 80) = v39;
  v26 = v35;
  *a2 = v34;
  *(a2 + 16) = v26;
  return result;
}

unint64_t sub_1002ECFD4()
{
  result = qword_1004B04D8;
  if (!qword_1004B04D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B04D8);
  }

  return result;
}

unint64_t sub_1002ED02C()
{
  result = qword_1004B04E0;
  if (!qword_1004B04E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B04E0);
  }

  return result;
}

unint64_t sub_1002ED084()
{
  result = qword_1004B04E8;
  if (!qword_1004B04E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B04E8);
  }

  return result;
}

unint64_t sub_1002ED0DC()
{
  result = qword_1004B04F0;
  if (!qword_1004B04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B04F0);
  }

  return result;
}

unint64_t sub_1002ED134()
{
  result = qword_1004B04F8;
  if (!qword_1004B04F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B04F8);
  }

  return result;
}

unint64_t sub_1002ED18C()
{
  result = qword_1004B0500;
  if (!qword_1004B0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0500);
  }

  return result;
}

uint64_t sub_1002ED1F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
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

uint64_t sub_1002ED24C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t static KnoxClientWrapper.downloadRaw(from:to:configuration:authentication:alternateCDNHost:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = type metadata accessor for UUID();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  type metadata accessor for KnoxPointer.File.SignedFile();
  v7[13] = swift_task_alloc();
  type metadata accessor for KnoxPointer.Permissions();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v9 = type metadata accessor for KnoxPointer.File.KeyManagementSystem();
  v7[16] = v9;
  v7[17] = v9[-1].Description;
  v7[18] = swift_task_alloc();
  v10 = type metadata accessor for KnoxPointer.File.FileFormat();
  v7[19] = v10;
  v7[20] = v10[-1].Description;
  v7[21] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v7[22] = v11;
  v7[23] = *(v11 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  sub_1000039E8(&qword_1004A73C0);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v12 = type metadata accessor for URL.DirectoryHint();
  v7[30] = v12;
  v7[31] = *(v12 - 8);
  v7[32] = swift_task_alloc();
  v13 = type metadata accessor for URL();
  v7[33] = v13;
  v7[34] = *(v13 - 8);
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  sub_1000039E8(&qword_1004B0510);
  v7[44] = swift_task_alloc();
  v7[45] = sub_1000039E8(&qword_1004B0518);
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  sub_1000039E8(&qword_1004A6D30);
  v7[48] = swift_task_alloc();
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  sub_1000039E8(&qword_1004A9CF8);
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v14 = type metadata accessor for FilePath();
  v7[54] = v14;
  v7[55] = *(v14 - 8);
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v7[61] = swift_task_alloc();

  return _swift_task_switch(sub_1002ED8B8, 0, 0);
}

uint64_t sub_1002ED8B8()
{
  v260 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 416);
  sub_100013E54(*(v0 + 40), v3, &qword_1004A9CF8);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 432);
    v6 = *(v0 + 416);
    static FilePath.createTemporaryDirectory(permissions:)(0x1FFu, *(v0 + 424));
    if (v4(v6, 1, v5) != 1)
    {
      sub_100013F2C(*(v0 + 416), &qword_1004A9CF8);
    }
  }

  else
  {
    v7 = *(v0 + 432);
    v8 = *(v0 + 440);
    v9 = *(v0 + 424);
    (*(v8 + 32))(v9, *(v0 + 416), v7);
    (*(v8 + 56))(v9, 0, 1, v7);
  }

  v10 = *(v0 + 424);
  v11 = *(v0 + 432);
  if (v4(v10, 1, v11) == 1)
  {
    v12 = *(v0 + 440);
    v13 = *(v0 + 24);
    sub_100013F2C(v10, &qword_1004A9CF8);
    (*(v12 + 56))(v13, 1, 1, v11);
LABEL_31:

    v102 = *(v0 + 8);

    return v102();
  }

  v14 = *(v0 + 488);
  v15 = *(v0 + 440);
  v16 = *(v0 + 352);
  v17 = *(v15 + 32);
  *(v0 + 496) = v17;
  *(v0 + 504) = (v15 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v17(v14, v10, v11);
  v18 = URL.absoluteString.getter();
  static KnoxClientWrapper.parseDownloadURL(_:outputFile:)(v18, v19, 0, 0, v16);

  v20 = sub_1000039E8(&qword_1004B0520);
  v21 = (*(*(v20 - 1) + 48))(v16, 1, v20);
  v22 = *(v0 + 376);
  if (v21 == 1)
  {
    v23 = *(v0 + 360);
    v24 = *(v0 + 264);
    v25 = *(v0 + 272);
    sub_100013F2C(*(v0 + 352), &qword_1004B0510);
    v26 = (v22 + v23[12]);
    v27 = (v22 + v23[16]);
    v28 = (v22 + v23[20]);
    v255 = *(v25 + 56);
    v255(v22, 1, 1, v24);
    *v26 = 0;
    v26[1] = 0;
    *v27 = 0;
    v27[1] = 0;
    *v28 = 0;
    v28[1] = 0;
  }

  else
  {
    v29 = *(v0 + 360);
    v30 = *(v0 + 368);
    v31 = *(v0 + 352);
    v32 = *(v0 + 264);
    v33 = *(v0 + 272);
    v34 = (v31 + v20[12]);
    v244 = v34[1];
    v248 = *v34;
    v35 = (v31 + v20[16]);
    v236 = v35[1];
    v239 = *v35;
    v36 = (v31 + v20[20]);
    v37 = *v36;
    v38 = v36[1];
    v39 = (v30 + v29[12]);
    v40 = (v30 + v29[16]);
    v41 = (v30 + v29[20]);
    (*(v33 + 32))(v30);
    v255 = *(v33 + 56);
    v255(v30, 0, 1, v32);
    *v39 = v248;
    v39[1] = v244;
    *v40 = v239;
    v40[1] = v236;
    *v41 = v37;
    v41[1] = v38;
    sub_10003E154(v30, v22, &qword_1004B0518);
  }

  v42 = *(v0 + 376);
  v43 = *(v0 + 360);
  v44 = (v42 + v43[12]);
  v46 = *v44;
  v45 = v44[1];
  v47 = (v42 + v43[16]);
  v48 = *v47;
  v49 = v47[1];
  v50 = (v42 + v43[20]);
  v52 = *v50;
  v51 = v50[1];
  sub_10003E154(v42, *(v0 + 408), &qword_1004A6D30);
  if (!v49)
  {
    goto LABEL_13;
  }

  v249 = v48;
  v53 = *(v0 + 400);
  v54 = *(v0 + 264);
  v55 = *(v0 + 272);
  sub_100013E54(*(v0 + 408), v53, &qword_1004A6D30);
  v56 = *(v55 + 48);
  v57 = v56(v53, 1, v54);
  v58 = *(v0 + 400);
  if (v57 == 1)
  {

    sub_100013F2C(v58, &qword_1004A6D30);
LABEL_25:
    if (qword_1004A9F88 != -1)
    {
      swift_once();
    }

    v81 = *(v0 + 288);
    v82 = *(v0 + 264);
    v83 = *(v0 + 272);
    v84 = *(v0 + 32);
    v85 = type metadata accessor for Logger();
    sub_1000270B4(v85, static KnoxClientWrapper.logger);
    (*(v83 + 16))(v81, v84, v82);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    v88 = os_log_type_enabled(v86, v87);
    v89 = *(v0 + 488);
    v90 = *(v0 + 432);
    v91 = *(v0 + 440);
    v92 = *(v0 + 408);
    v93 = *(v0 + 288);
    v95 = *(v0 + 264);
    v94 = *(v0 + 272);
    if (v88)
    {
      v257 = *(v0 + 408);
      v96 = swift_slowAlloc();
      v241 = v87;
      v97 = swift_slowAlloc();
      v259[0] = v97;
      *v96 = 136446210;
      v246 = v90;
      v251 = v89;
      v98 = URL.absoluteString.getter();
      v100 = v99;
      (*(v94 + 8))(v93, v95);
      v101 = sub_1000026C0(v98, v100, v259);

      *(v96 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v86, v241, "Failed to parse Knox url: %{public}s", v96, 0xCu);
      sub_100003C3C(v97);

      sub_100013F2C(v257, &qword_1004A6D30);
      (*(v91 + 8))(v251, v246);
    }

    else
    {

      (*(v94 + 8))(v93, v95);
      sub_100013F2C(v92, &qword_1004A6D30);
      (*(v91 + 8))(v89, v90);
    }

LABEL_30:
    (*(*(v0 + 440) + 56))(*(v0 + 24), 1, 1, *(v0 + 432));
    goto LABEL_31;
  }

  v245 = v52;
  v59 = *(*(v0 + 272) + 32);
  (v59)(*(v0 + 344), v58, *(v0 + 264));
  if (!v45)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 344), *(v0 + 264));

    goto LABEL_24;
  }

  if (!v51)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 344), *(v0 + 264));
LABEL_13:

LABEL_24:

    goto LABEL_25;
  }

  v60 = sub_1002F2DF4(*(v0 + 56), *(v0 + 344), *(v0 + 64), *(v0 + 72), **(v0 + 48), 0);
  *(v0 + 512) = v60;
  if (!v60)
  {

    if (qword_1004A9F88 != -1)
    {
      swift_once();
    }

    v104 = *(v0 + 296);
    v105 = *(v0 + 264);
    v106 = *(v0 + 272);
    v107 = *(v0 + 32);
    v108 = type metadata accessor for Logger();
    sub_1000270B4(v108, static KnoxClientWrapper.logger);
    (*(v106 + 16))(v104, v107, v105);
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.error.getter();
    v111 = os_log_type_enabled(v109, v110);
    v112 = *(v0 + 488);
    v114 = *(v0 + 432);
    v113 = *(v0 + 440);
    v252 = *(v0 + 344);
    v258 = *(v0 + 408);
    v115 = *(v0 + 296);
    v117 = *(v0 + 264);
    v116 = *(v0 + 272);
    if (v111)
    {
      v247 = *(v0 + 432);
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v259[0] = v119;
      *v118 = 136315138;
      v238 = v113;
      v242 = v112;
      v120 = URL.absoluteString.getter();
      v122 = v121;
      v123 = *(v116 + 8);
      v123(v115, v117);
      v124 = sub_1000026C0(v120, v122, v259);

      *(v118 + 4) = v124;
      _os_log_impl(&_mh_execute_header, v109, v110, "Failed to initialize KnoxServiceClient to download %s", v118, 0xCu);
      sub_100003C3C(v119);

      v123(v252, v117);
      sub_100013F2C(v258, &qword_1004A6D30);
      (*(v238 + 8))(v242, v247);
    }

    else
    {

      v149 = *(v116 + 8);
      v149(v115, v117);
      v149(v252, v117);
      sub_100013F2C(v258, &qword_1004A6D30);
      (*(v113 + 8))(v112, v114);
    }

    goto LABEL_30;
  }

  v219 = v59;
  v220 = v46;
  v234 = v45;
  v237 = v60;
  v61 = v51;
  v63 = *(v0 + 480);
  v62 = *(v0 + 488);
  v64 = *(v0 + 472);
  v65 = *(v0 + 440);
  v240 = *(v0 + 264);
  v225 = *(v0 + 256);
  v221 = *(v0 + 432);
  v222 = *(v0 + 248);
  v227 = *(v0 + 240);
  v230 = *(v0 + 392);
  v66 = *(v65 + 16);
  *(v0 + 520) = v66;
  *(v0 + 528) = (v65 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v66(v64, v62);

  v224 = v61;
  FilePath.appending(_:)();
  v218 = v66;
  (v66)(v64, v63, v221);
  (*(v222 + 13))(v225, enum case for URL.DirectoryHint.inferFromPath(_:), v227);
  sub_1001746A8(v64, v225, v230);
  v67 = v56(v230, 1, v240);
  v68 = *(v0 + 392);
  if (v67 == 1)
  {

    sub_100013F2C(v68, &qword_1004A6D30);
    if (qword_1004A9F88 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_1000270B4(v69, static KnoxClientWrapper.logger);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "Failed to create directory for Knox download", v72, 2u);
    }

    v73 = *(v0 + 480);
    v74 = *(v0 + 432);
    v75 = *(v0 + 440);
    v76 = *(v0 + 408);
    v77 = *(v0 + 344);
    v79 = *(v0 + 264);
    v78 = *(v0 + 272);
    v250 = *(v0 + 24);
    v256 = *(v0 + 488);

    v80 = *(v75 + 8);
    v80(v73, v74);
    (*(v78 + 8))(v77, v79);
    sub_100013F2C(v76, &qword_1004A6D30);
    v80(v256, v74);
    (*(v75 + 56))(v250, 1, 1, v74);
    goto LABEL_31;
  }

  v228 = *(v0 + 384);
  v211 = *(v0 + 344);
  v243 = *(v0 + 272);
  v210 = *(v0 + 264);
  v125 = *(v0 + 224);
  v126 = *(v0 + 232);
  v231 = *(v0 + 216);
  v212 = *(v0 + 208);
  v226 = *(v0 + 200);
  v214 = *(v0 + 192);
  v127 = *(v0 + 176);
  v128 = *(v0 + 184);
  v129 = *(v0 + 160);
  v223 = *(v0 + 168);
  v205 = *(v0 + 152);
  v206 = *(v0 + 144);
  v130 = *(v0 + 136);
  v207 = *(v0 + 120);
  v208 = *(v0 + 128);
  v213 = *(v0 + 112);
  v209 = *(v0 + 104);
  v215 = *(v0 + 96);
  v216 = *(v0 + 88);
  v217 = *(v0 + 80);
  v219(*(v0 + 336), v68);
  v131 = *(v128 + 56);
  v131(v126, 1, 1, v127);
  v131(v125, 1, 1, v127);
  Date.init()();
  (*(v129 + 104))(v223, 0, v205);
  (*(v130 + 104))(v206, 0, v208);
  KnoxPointer.Permissions.init()(v207);
  v132 = objc_allocWithZone(type metadata accessor for KnoxPointer.File.Encryption());
  v133 = KnoxPointer.File.Encryption.init(digest:digestAlgorithm:size:)(0, 0xE000000000000000, 0, 0xE000000000000000, -1);
  v134._countAndFlagsBits = 0;
  v134._object = 0xE000000000000000;
  v135._countAndFlagsBits = 0;
  v135._object = 0xE000000000000000;
  v136._countAndFlagsBits = 0;
  v136._object = 0xE000000000000000;
  KnoxPointer.File.SignedFile.init(signatureFormat:signature:signingKey:trustedIdentities:)(v209, v134, v135, v136, &_swiftEmptyArrayStorage);
  v137 = objc_allocWithZone(type metadata accessor for KnoxPointer.File.Uploader());
  v138 = KnoxPointer.File.Uploader.init(value:method:)(0, 0xE000000000000000, 0, 0xE000000000000000);
  v139 = objc_allocWithZone(type metadata accessor for KnoxPointer.File(0));
  v140 = KnoxPointer.File.init(digest:createdAt:deletedAt:digestAlgorithm:format:kms:kmsIdentifier:permissions:pointers:type:status:size:isEncrypted:encryptedFile:signedFile:updatedAt:relatedFile:uploader:)(v249, v49, v226, v126, 0, 0xE000000000000000, v223, v206, 0, 0xE000000000000000, v207, 0, 0xD000000000000018, 0x8000000100443EB0, 0x6E776F6E6B6E75, 0xE700000000000000, -1, 1, v133, &v209->signatureFormat._countAndFlagsBits, v125, 0, 0, v138);
  *(v0 + 536) = v140;
  v131(v231, 1, 1, v127);
  v141 = *(v243 + 16);
  *(v0 + 544) = v141;
  *(v0 + 552) = (v243 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v253 = v141;
  v141(v228, v211, v210);
  v255(v228, 0, 1, v210);
  v131(v212, 1, 1, v127);
  v142 = v140;
  Date.init()();
  KnoxPointer.Permissions.init()(v213);
  v143 = objc_allocWithZone(type metadata accessor for KnoxPointer.Retention());
  v144 = KnoxPointer.Retention.init(policy:expiration:)(0, 0xE000000000000000, -1);
  UUID.init()();
  v145 = UUID.uuidString.getter();
  v147 = v146;
  (*(v216 + 8))(v215, v217);
  v148 = objc_allocWithZone(type metadata accessor for GenericFilePointer());
  *(v0 + 16) = GenericFilePointer.init(createdAt:deletedAt:file:knoxServer:name:permissions:retention:space:updatedAt:uuid:)(v214, v231, v142, v228, v245, v224, v213, v144, v220, v234, v212, v145, v147);
  if (qword_1004A9F88 != -1)
  {
    swift_once();
  }

  v150 = *(v0 + 344);
  v152 = *(v0 + 320);
  v151 = *(v0 + 328);
  v153 = *(v0 + 264);
  v154 = *(v0 + 32);
  v155 = type metadata accessor for Logger();
  *(v0 + 560) = sub_1000270B4(v155, static KnoxClientWrapper.logger);
  v253(v151, v154, v153);
  v253(v152, v150, v153);
  v156 = Logger.logObject.getter();
  v157 = static os_log_type_t.info.getter();
  v158 = os_log_type_enabled(v156, v157);
  v160 = *(v0 + 320);
  v159 = *(v0 + 328);
  v162 = *(v0 + 264);
  v161 = *(v0 + 272);
  if (v158)
  {
    v232 = v157;
    v163 = swift_slowAlloc();
    v259[0] = swift_slowAlloc();
    *v163 = 136315394;
    v164 = URL.absoluteString.getter();
    v166 = v165;
    v229 = v156;
    v167 = *(v161 + 8);
    v167(v159, v162);
    v168 = sub_1000026C0(v164, v166, v259);

    *(v163 + 4) = v168;
    *(v163 + 12) = 2080;
    sub_1002F4C5C(&qword_1004AAE30, &type metadata accessor for URL);
    v169 = dispatch thunk of CustomStringConvertible.description.getter();
    v171 = v170;
    v167(v160, v162);
    v172 = sub_1000026C0(v169, v171, v259);

    *(v163 + 14) = v172;
    _os_log_impl(&_mh_execute_header, v229, v232, "Created a GenericFilePointer to %s with knoxServerURL: %s", v163, 0x16u);
    swift_arrayDestroy();

    v173 = v167;
  }

  else
  {

    v173 = *(v161 + 8);
    v173(v160, v162);
    v173(v159, v162);
  }

  *(v0 + 568) = v173;
  v174 = *(v0 + 480);
  v175 = *(v0 + 464);
  v176 = *(v0 + 432);
  v253(*(v0 + 304), *(v0 + 32), *(v0 + 264));
  v218(v175, v174, v176);
  v177 = Logger.logObject.getter();
  v178 = static os_log_type_t.info.getter();
  v179 = os_log_type_enabled(v177, v178);
  v180 = *(v0 + 464);
  v181 = *(v0 + 440);
  v254 = *(v0 + 432);
  v182 = *(v0 + 304);
  v183 = *(v0 + 264);
  if (v179)
  {
    v233 = v173;
    v184 = swift_slowAlloc();
    v259[0] = swift_slowAlloc();
    *v184 = 136315394;
    v235 = v178;
    v185 = URL.absoluteString.getter();
    v187 = v186;
    v233(v182, v183);
    v188 = sub_1000026C0(v185, v187, v259);

    *(v184 + 4) = v188;
    *(v184 + 12) = 2080;
    v189 = FilePath.description.getter();
    v191 = v190;
    v192 = *(v181 + 8);
    v192(v180, v254);
    v193 = sub_1000026C0(v189, v191, v259);

    *(v184 + 14) = v193;
    _os_log_impl(&_mh_execute_header, v177, v235, "Downloading encrypted cryptex from %s to %s", v184, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v192 = *(v181 + 8);
    v192(v180, v254);
    v173(v182, v183);
  }

  *(v0 + 576) = v192;
  v194 = *(*(v0 + 48) + 8);
  v195 = Logger.logObject.getter();
  v196 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v195, v196))
  {
    v197 = swift_slowAlloc();
    v198 = swift_slowAlloc();
    v259[0] = v198;
    *v197 = 136315138;
    if (v194)
    {
      v199 = 0x756F72676B636162;
    }

    else
    {
      v199 = 0x746C7561666564;
    }

    if (v194)
    {
      v200 = 0xEA0000000000646ELL;
    }

    else
    {
      v200 = 0xE700000000000000;
    }

    v201 = sub_1000026C0(v199, v200, v259);

    *(v197 + 4) = v201;
    _os_log_impl(&_mh_execute_header, v195, v196, "Using %s traffic class.", v197, 0xCu);
    sub_100003C3C(v198);
  }

  v202 = *(v0 + 336);
  v203 = swift_task_alloc();
  *(v0 + 584) = v203;
  *(v203 + 16) = v237;
  *(v203 + 24) = v0 + 16;
  *(v203 + 32) = v202;
  *(v203 + 40) = v194;
  v204 = swift_task_alloc();
  *(v0 + 592) = v204;
  *v204 = v0;
  v204[1] = sub_1002EF328;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1002EF328()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_1002EF8E0;
  }

  else
  {

    v2 = sub_1002EF444;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002EF444()
{
  v34 = v0;
  (*(v0 + 520))(*(v0 + 456), *(v0 + 480), *(v0 + 432));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 576);
  v5 = *(v0 + 536);
  v6 = *(v0 + 488);
  v7 = *(v0 + 456);
  v8 = *(v0 + 432);
  v31 = *(v0 + 408);
  v32 = *(v0 + 568);
  v30 = *(v0 + 344);
  v28 = *(v0 + 512);
  v29 = *(v0 + 264);
  if (v3)
  {
    v27 = *(v0 + 488);
    v9 = swift_slowAlloc();
    v25 = v5;
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    v11 = FilePath.description.getter();
    v12 = v8;
    v26 = v8;
    v13 = v11;
    v15 = v14;
    v4(v7, v12);
    v16 = sub_1000026C0(v13, v15, &v33);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v1, v2, "Downloaded encrypted cryptex without errors to %s!", v9, 0xCu);
    sub_100003C3C(v10);

    v32(v30, v29);
    sub_100013F2C(v31, &qword_1004A6D30);
    v4(v27, v26);
  }

  else
  {

    v4(v7, v8);
    v32(v30, v29);
    sub_100013F2C(v31, &qword_1004A6D30);
    v4(v6, v8);
  }

  v17 = *(v0 + 568);
  v18 = *(v0 + 432);
  v19 = *(v0 + 440);
  v20 = *(v0 + 336);
  v21 = *(v0 + 264);
  v22 = *(v0 + 24);
  (*(v0 + 496))(v22, *(v0 + 480), v18);
  (*(v19 + 56))(v22, 0, 1, v18);

  v17(v20, v21);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1002EF8E0()
{
  v44 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 520);
  v3 = *(v0 + 480);
  v4 = *(v0 + 448);
  v5 = *(v0 + 432);
  v6 = *(v0 + 280);
  v7 = *(v0 + 264);
  v8 = *(v0 + 32);

  v1(v6, v8, v7);
  v2(v4, v3, v5);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  LOBYTE(v2) = static os_log_type_t.error.getter();

  v35 = v2;
  v10 = os_log_type_enabled(v9, v2);
  v11 = *(v0 + 576);
  v42 = *(v0 + 568);
  v37 = *(v0 + 536);
  v36 = *(v0 + 512);
  v12 = *(v0 + 488);
  v13 = *(v0 + 448);
  v14 = *(v0 + 432);
  v38 = *(v0 + 480);
  v39 = *(v0 + 344);
  v15 = *(v0 + 280);
  v40 = *(v0 + 408);
  v41 = *(v0 + 264);
  if (v10)
  {
    v34 = v9;
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v16 = 136446722;
    v17 = v14;
    v18 = URL.absoluteString.getter();
    v19 = v11;
    v21 = v20;
    v42(v15, v41);
    v22 = sub_1000026C0(v18, v21, v43);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = FilePath.description.getter();
    v25 = v24;
    v19(v13, v17);
    v26 = sub_1000026C0(v23, v25, v43);

    *(v16 + 14) = v26;
    *(v16 + 22) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v27;
    *v33 = v27;
    _os_log_impl(&_mh_execute_header, v34, v35, "Failed to download knox asset from %{public}s to %s: %@", v16, 0x20u);
    sub_100013F2C(v33, &qword_1004AA050);

    swift_arrayDestroy();

    v19(v38, v17);
    v42(v39, v41);
    sub_100013F2C(v40, &qword_1004A6D30);
    v19(v12, v17);
  }

  else
  {

    v11(v13, v14);
    v42(v15, v41);
    v11(v38, v14);
    v42(v39, v41);
    sub_100013F2C(v40, &qword_1004A6D30);
    v11(v12, v14);
  }

  v28 = *(v0 + 568);
  v29 = *(v0 + 336);
  v30 = *(v0 + 264);
  (*(*(v0 + 440) + 56))(*(v0 + 24), 1, 1, *(v0 + 432));

  v28(v29, v30);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t static KnoxClientWrapper.downloadAEADecryptionParameters(for:configuration:authentication:alternateCDNHost:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a1;
  sub_1000039E8(&qword_1004B0130);
  v6[7] = swift_task_alloc();
  v12 = type metadata accessor for SymmetricKey();
  v6[8] = v12;
  v6[9] = *(v12 - 8);
  v6[10] = swift_task_alloc();
  v13 = *a3;
  v14 = swift_task_alloc();
  v6[11] = v14;
  *v14 = v6;
  v14[1] = sub_1002F0068;

  return sub_1002F38DC(a2, v13, a4, a5, a6);
}

uint64_t sub_1002F0068(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_1002F0168, 0, 0);
}

uint64_t sub_1002F0168()
{
  v41 = v0;
  v1 = v0[12];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  static KnoxClientWrapper.getDecryptionKey(from:)(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[7];

    sub_100013F2C(v5, &qword_1004B0130);
LABEL_4:
    v6 = v0[6];
    goto LABEL_21;
  }

  v7 = *(v0[9] + 32);
  v7(v0[10], v0[7], v0[8]);
  if (qword_1004A9F88 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000270B4(v8, static KnoxClientWrapper.logger);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v12 = 136315138;
    v13 = ImageDecryptionComponents.digestAlgorithm.getter();
    v15 = v7;
    v16 = sub_1000026C0(v13, v14, &v40);

    *(v12 + 4) = v16;
    v7 = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "decryption-components.digest-algorithm: %s", v12, 0xCu);
    sub_100003C3C(v39);
  }

  v0[2] = ImageDecryptionComponents.digestAlgorithm.getter();
  v0[3] = v17;
  v0[4] = 0xD000000000000018;
  v0[5] = 0x8000000100443F20;
  sub_1002F48A0();
  sub_1001B1D3C();
  v18 = BidirectionalCollection<>.starts<A>(with:)();

  if ((v18 & 1) == 0)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Decryption components digest doesn't appear to be an Apple Archive identifier!", v21, 2u);
    }
  }

  v22 = ImageDecryptionComponents.digest.getter();
  v24 = String.hexadecimalASCIIBytes.getter(v22, v23);

  if (v24)
  {
    if (*(v24 + 2))
    {
      v25 = v0[10];
      v26 = v0[8];
      v27 = v0[6];
      v28 = sub_10018E354(v24);
      v30 = v29;

      v31 = type metadata accessor for AEADecryptionParameters();
      v7(v27 + *(v31 + 20), v25, v26);
      *v27 = v28;
      v27[1] = v30;
      (*(*(v31 - 8) + 56))(v27, 0, 1, v31);
      goto LABEL_22;
    }
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Failed to convert archive identifier from String to Data", v34, 2u);

    v35 = v32;
  }

  else
  {
    v35 = v9;
    v9 = v32;
  }

  v6 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);
LABEL_21:
  v36 = type metadata accessor for AEADecryptionParameters();
  (*(*(v36 - 8) + 56))(v6, 1, 1, v36);
LABEL_22:

  v37 = v0[1];

  return v37();
}

uint64_t sub_1002F061C()
{
  v0 = type metadata accessor for Logger();
  sub_1000279B4(v0, static KnoxClientWrapper.logger);
  v1 = sub_1000270B4(v0, static KnoxClientWrapper.logger);
  if (qword_1004A9F78 != -1)
  {
    swift_once();
  }

  v2 = sub_1000270B4(v0, static Logger.knoxClient);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t KnoxClientWrapper.logger.unsafeMutableAddressor()
{
  if (qword_1004A9F88 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000270B4(v0, static KnoxClientWrapper.logger);
}

uint64_t static KnoxClientWrapper.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9F88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000270B4(v2, static KnoxClientWrapper.logger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static KnoxClientWrapper.parseDownloadURL(_:outputFile:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v140 = a4;
  v141 = a3;
  v8 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v126 - v9;
  v11 = type metadata accessor for URL();
  v143 = *(v11 - 8);
  __chkstk_darwin(v11);
  v142 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000039E8(&qword_1004A7160);
  __chkstk_darwin(v13 - 8);
  v15 = &v126 - v14;
  v16 = type metadata accessor for URLComponents();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v126 - v21;
  URLComponents.init(string:)();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100013F2C(v15, &qword_1004A7160);
    if (qword_1004A9F88 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000270B4(v23, static KnoxClientWrapper.logger);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v144 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_1000026C0(a1, a2, &v144);
      _os_log_impl(&_mh_execute_header, v24, v25, "Could not get URLComponents from '%{public}s'", v26, 0xCu);
      sub_100003C3C(v27);
    }

    v28 = sub_1000039E8(&qword_1004B0520);
    return (*(*(v28 - 8) + 56))(a5, 1, 1, v28);
  }

  v136 = v11;
  v137 = a1;
  (*(v17 + 32))(v22, v15, v16);
  URLComponents.scheme.getter();
  if (!v30)
  {
LABEL_13:
    if (qword_1004A9F88 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000270B4(v34, static KnoxClientWrapper.logger);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v37 = a5;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = v22;
      v39 = v16;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v144 = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_1000026C0(v137, a2, &v144);
      v42 = "URL '%{public}s' does not have 'knox' scheme";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v35, v36, v42, v40, 0xCu);
      sub_100003C3C(v41);

      (*(v17 + 8))(v38, v39);
LABEL_28:
      v48 = sub_1000039E8(&qword_1004B0520);
      return (*(*(v48 - 8) + 56))(v37, 1, 1, v48);
    }

    goto LABEL_27;
  }

  v138 = v20;
  v139 = v22;
  v31 = String.lowercased()();

  if (v31._countAndFlagsBits == 2020568683 && v31._object == 0xE400000000000000)
  {

    v22 = v139;
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v22 = v139;
    if ((v33 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  URLComponents.host.getter();
  if (!v43)
  {
    if (qword_1004A9F88 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_1000270B4(v47, static KnoxClientWrapper.logger);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v37 = a5;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = v22;
      v39 = v16;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v144 = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_1000026C0(v137, a2, &v144);
      v42 = "Did not find a host in '%{public}s'";
      goto LABEL_26;
    }

LABEL_27:

    (*(v17 + 8))(v22, v16);
    goto LABEL_28;
  }

  v135 = v17;
  v44 = String.lowercased()();

  URLComponents.init()();

  URLComponents.host.setter();
  if (v44._countAndFlagsBits == 0x736F686C61636F6CLL && v44._object == 0xE900000000000074)
  {

    v45 = a5;
    v46 = v143;
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();

    v45 = a5;
    v46 = v143;
  }

  v49 = v138;
  URLComponents.scheme.setter();
  v50 = v135;
  v51 = v136;
  URLComponents.port.getter();
  URLComponents.port.setter();
  URLComponents.url.getter();
  if ((v46[6].isa)(v10, 1, v51) == 1)
  {
    sub_100013F2C(v10, &qword_1004A6D30);
    if (qword_1004A9F88 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_1000270B4(v52, static KnoxClientWrapper.logger);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v150 = v56;
      *v55 = 136446210;
      v57 = v138;
      swift_beginAccess();
      v148 = URLComponents.string.getter();
      v149 = v58;
      sub_1000039E8(&qword_1004A7330);
      v59 = String.init<A>(describing:)();
      v61 = sub_1000026C0(v59, v60, &v150);

      *(v55 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v53, v54, "Could not extract the Knox server URL from '%{public}s'", v55, 0xCu);
      sub_100003C3C(v56);

      v62 = *(v50 + 8);
      v62(v139, v16);
    }

    else
    {

      v62 = *(v50 + 8);
      v62(v139, v16);
      v57 = v138;
    }

    v77 = sub_1000039E8(&qword_1004B0520);
    (*(*(v77 - 8) + 56))(v45, 1, 1, v77);
    v78 = v57;
    return (v62)(v78, v16);
  }

  isa = v46[4].isa;
  v133 = v46 + 4;
  isa(v142, v10, v51);
  v144 = URLComponents.path.getter();
  v145 = v63;
  v148 = 47;
  v149 = 0xE100000000000000;
  v130 = sub_10000B080();
  v64 = StringProtocol.components<A>(separatedBy:)();

  v65 = *(v64 + 16);
  if (v65 < 4)
  {
    if (qword_1004A9F88 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_1000270B4(v66, static KnoxClientWrapper.logger);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v143 = v67;
      v70 = v69;
      v144 = swift_slowAlloc();
      v134 = v45;
      *v70 = 136446466;
      *(v70 + 4) = sub_1000026C0(v137, a2, &v144);
      *(v70 + 12) = 2082;
      v71 = Array.description.getter();
      v73 = v72;

      v74 = sub_1000026C0(v71, v73, &v144);
      v49 = v138;

      *(v70 + 14) = v74;
      v75 = v68;
      v76 = v143;
      _os_log_impl(&_mh_execute_header, v143, v75, "Could not find space and digest from '%{public}s' - expected the path to have format: /download/$SPACE/$DIGEST (got: %{public}s)", v70, 0x16u);
      swift_arrayDestroy();
      v45 = v134;
    }

    else
    {
    }

    (v46[1].isa)(v142, v51);
    v62 = *(v50 + 8);
    v62(v139, v16);
    v109 = sub_1000039E8(&qword_1004B0520);
    (*(*(v109 - 8) + 56))(v45, 1, 1, v109);
    v78 = v49;
    return (v62)(v78, v16);
  }

  v131 = v16;
  v134 = v45;
  v127 = v65 - 1;
  v128 = v64 + 32;
  v79 = v64;
  v80 = (v64 + 72);
  v129 = v65;
  v81 = -v65;
  v82 = 2;
  v83 = 3;
  do
  {
    result = *(v80 - 3);
    v84 = result == 0x64616F6C6E776F64 && *(v80 - 2) == 0xE800000000000000;
    if (v84 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      if (v81 + v82 == -2)
      {
        goto LABEL_52;
      }
    }

    if (!(v81 + v82))
    {

      v92 = v134;
      v97 = v135;
      v93 = v131;
      v98 = v138;
      v96 = v136;
LABEL_66:
      if (qword_1004A9F88 != -1)
      {
        swift_once();
      }

      v110 = type metadata accessor for Logger();
      sub_1000270B4(v110, static KnoxClientWrapper.logger);

      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = v97;
        v115 = swift_slowAlloc();
        v144 = v115;
        *v113 = 136446210;
        *(v113 + 4) = sub_1000026C0(v137, a2, &v144);
        _os_log_impl(&_mh_execute_header, v111, v112, "URL '%{public}s' does not match format '/download/$SPACE/$DIGEST'", v113, 0xCu);
        sub_100003C3C(v115);

        v98 = v138;

        (v143[1].isa)(v142, v96);
        v116 = *(v114 + 8);
      }

      else
      {

        (v143[1].isa)(v142, v96);
        v116 = *(v97 + 8);
      }

      v116(v139, v93);
      v117 = sub_1000039E8(&qword_1004B0520);
      (*(*(v117 - 8) + 56))(v92, 1, 1, v117);
      return (v116)(v98, v93);
    }

    ++v82;
    v80 += 2;
    v83 += 2;
  }

  while (v81 + v82 != 1);
  __break(1u);
LABEL_52:
  if (v82 >= v129)
  {
    __break(1u);
    goto LABEL_79;
  }

  v85 = *v80;
  v129 = *(v80 - 1);
  v86 = (v128 + 16 * v127);
  v87 = v86[1];
  v127 = *v86;
  v144 = v79;
  v145 = v128;
  v146 = 1;
  v147 = v83;

  sub_1000039E8(&qword_1004A6110);
  sub_10000E720(&qword_1004A6118, &qword_1004A6110);
  v88 = BidirectionalCollection<>.joined(separator:)();
  v90 = v89;

  v91 = String.count.getter();
  v92 = v134;
  v93 = v131;
  if (v91 >= 1)
  {
    v94._countAndFlagsBits = v88;
    v94._object = v90;
    URL.appendPathComponent(_:)(v94);
  }

  v95 = String.count.getter();
  v97 = v135;
  v96 = v136;
  v98 = v138;
  if (v95 < 1 || String.count.getter() < 1)
  {

    goto LABEL_66;
  }

  v99 = v139;
  v100 = URLComponents.fragment.getter();
  v126 = v85;
  if (!v101)
  {
    v118 = v87;
    v119 = *(v97 + 8);
    (v119)(v99, v93);
    v107 = v140;
    v143 = v119;
    if (v140)
    {

      v108 = v118;
LABEL_74:
      v120 = v127;
LABEL_77:
      v121 = sub_1000039E8(&qword_1004B0520);
      v122 = &v92[v121[12]];
      v123 = &v92[v121[16]];
      v124 = &v92[v121[20]];
      isa(v92, v142, v136);
      v125 = v126;
      *v122 = v129;
      v122[1] = v125;
      *v123 = v120;
      v123[1] = v108;
      *v124 = v141;
      v124[1] = v107;
      (*(*(v121 - 1) + 56))(v92, 0, 1, v121);
      return (v143)(v98, v131);
    }

LABEL_76:
    v108 = v118;

    v120 = v127;
    v141 = v127;
    v107 = v118;
    goto LABEL_77;
  }

  v102 = v100;
  v103 = v101;
  v104._countAndFlagsBits = 0x3D656D616ELL;
  v104._object = 0xE500000000000000;
  if (!String.hasPrefix(_:)(v104))
  {
    v118 = v87;
    v143 = *(v97 + 8);
    (v143)(v139, v93);

    goto LABEL_76;
  }

  v105 = v87;
  v144 = v102;
  v145 = v103;
  v148 = 61;
  v149 = 0xE100000000000000;
  v106 = StringProtocol.components<A>(separatedBy:)();

  if (v106[2] >= 2uLL)
  {
    v107 = v106[7];
    v141 = v106[6];

    v143 = *(v97 + 8);
    (v143)(v139, v93);
    v108 = v105;
    goto LABEL_74;
  }

LABEL_79:
  __break(1u);
  return result;
}