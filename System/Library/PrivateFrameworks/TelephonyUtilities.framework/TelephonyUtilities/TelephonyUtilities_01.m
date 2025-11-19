void sub_100017D70(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, os_log_type_t a15)
{

  _os_log_impl(a1, v15, a15, a4, v16, 0xCu);
}

id sub_100017D94()
{
  v3 = *(v1 + 680);

  return [v0 v3];
}

id sub_100017DAC(void *a1)
{
  v4 = *(v2 + 344);

  return [a1 v4];
}

uint64_t sub_100017DC4()
{
  v2 = *(v0 - 112);

  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100017DEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100335188(v4 + v5, v6 - 120, a3, a4);
}

uint64_t sub_100017E7C()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100017ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(a6 + 56) + 16 * v8);
  result = v9[1];
  *v9 = v7;
  v9[1] = v6;
  return result;
}

void sub_100017EF8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_100017F18()
{

  return swift_beginAccess();
}

uint64_t sub_100017FB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100017FF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100018040(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10026DCB4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1000180D4@<X0>(unint64_t a1@<X8>)
{

  return sub_10039A300((a1 > 1), v1, 1);
}

void sub_100018124(uint64_t a1@<X8>)
{
  v1[12] = sub_100463158;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t sub_10001817C(uint64_t result)
{
  v1 = *(*result + 24);
  v3 = *(*result + 32);
  v2 = *(*result + 40);
  return result;
}

uint64_t sub_100018204(uint64_t a1)
{

  return sub_100015468(v1, 1, a1);
}

uint64_t sub_100018260@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100018288()
{
  v4 = *(*v0 + 24);

  return sub_10026D814(v2, v1);
}

uint64_t sub_1000182CC(unint64_t *a1)
{

  return sub_10001000C(a1, v1, v2);
}

uint64_t sub_100018324()
{

  return static NSObject.== infix(_:_:)();
}

void sub_100018350(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

void sub_100018388(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_1000183A4()
{
  v2 = *(v1 - 128) + 8;
  result = v0;
  v4 = *(v1 - 144);
  return result;
}

uint64_t sub_1000183FC()
{

  return swift_arrayInitWithCopy();
}

void sub_10001841C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ((sub_100018B9C(a2, a3, a4) & 1) == 0)
    {
LABEL_12:

      return;
    }

    if (a2)
    {
      v9 = a2;
      if ([v9 isReceiver])
      {

LABEL_8:
        v13 = &v8[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
        v14 = *&v8[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier + 8];
        *v13 = 0;
        *(v13 + 1) = 0;
LABEL_11:

        v17 = sub_100010B20();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_10057D690;
        v19 = &v8[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
        v20 = *&v8[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
        v21 = *&v8[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier + 8];

        v22 = sub_10001E478(v20, v21);
        v24 = v23;

        *(v18 + 56) = &type metadata for String;
        *(v18 + 64) = sub_100009D88();
        *(v18 + 32) = v22;
        *(v18 + 40) = v24;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v25 = *v19;
        v26 = v19[1];

        sub_10045BAD0(v25, v26);

        goto LABEL_12;
      }

      v12 = [v9 isSpeaker];

      if (v12)
      {
        goto LABEL_8;
      }

      v10 = sub_10045B6CC();
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v15 = &v8[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
    v16 = *&v8[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier + 8];
    *v15 = v10;
    v15[1] = v11;
    goto LABEL_11;
  }
}

id sub_10001866C(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v2;
  *v3 = v2;

  return v2;
}

void HandoffAudioController.routesChanged(for:)()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v50 = v11 - v10;
  v12 = type metadata accessor for DispatchQoS();
  v13 = sub_100007FEC(v12);
  v49 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13, v17);
  sub_100007FDC();
  v48 = v19 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = sub_100007FEC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21, v26);
  sub_100007FDC();
  v29 = v28 - v27;
  v30 = *(v0 + OBJC_IVAR___CSDHandoffAudioController_callCenterQueue);
  *(v28 - v27) = v30;
  (*(v23 + 104))(v28 - v27, enum case for DispatchPredicate.onQueue(_:), v20);
  v31 = v30;
  v32 = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v29, v20);
  if (v32)
  {
    v33 = [v2 receiverRoute];
    v47 = v6;
    v34 = [v2 speakerRoute];
    v35 = [v2 pickedRoute];
    v46 = *(v0 + OBJC_IVAR___CSDHandoffAudioController_queue);
    sub_100006890();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = v35;
    v37[4] = v33;
    v37[5] = v34;
    v51[4] = sub_100018608;
    v51[5] = v37;
    sub_100009FE4();
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v51[2] = v38;
    v51[3] = &unk_100631318;
    v45 = v12;
    v39 = _Block_copy(v51);

    v44 = v35;
    v40 = v33;
    v41 = v34;
    static DispatchQoS.unspecified.getter();
    sub_10000AB3C();
    sub_100017FB0(v42, v43);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v39);

    (*(v47 + 8))(v50, v3);
    (*(v49 + 8))(v48, v45);

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100018A98()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100018ACC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100018B9C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + OBJC_IVAR___CSDHandoffAudioController_queue);
  *v12 = v13;
  (*(v8 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v7);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v12, v7);
  if (v13)
  {
    if (a1)
    {
      v16 = a1;
      if ([v16 isBluetooth])
      {
        v17 = *(v3 + OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier + 8);
        if (v17)
        {
          v18 = *(v3 + OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier);
          v19 = *(v3 + OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier + 8);

          if (v18 != sub_10045B6CC() || v17 != v20)
          {
            v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v22)
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

LABEL_36:
          v34 = 0;
          return v34 & 1;
        }

LABEL_35:
        v34 = 1;
        return v34 & 1;
      }
    }

    v23 = (v3 + OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier);
    v24 = *(v3 + OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier + 8);
    if (!v24)
    {
      goto LABEL_36;
    }

    v25 = *v23;
    if (a2)
    {
      v26 = *(v3 + OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier + 8);

      if (v25 == sub_10045B6CC() && v24 == v27)
      {
LABEL_28:

        goto LABEL_36;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_36;
      }

      v25 = *v23;
      v24 = v23[1];
    }

    if (a3)
    {

      v30 = sub_10045B6CC();
      if (v24)
      {
        if (v31)
        {
          if (v25 != v30 || v24 != v31)
          {
            v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v34 = v33 ^ 1;
            return v34 & 1;
          }

          goto LABEL_28;
        }
      }

      else if (!v31)
      {
        goto LABEL_36;
      }
    }

    else
    {

      if (!v24)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_100018EF0(uint64_t a1, void *a2)
{
  *a2 = v2;

  return _swift_continuation_throwingResumeWithError(v3, a1);
}

uint64_t sub_100018F10()
{
  v2 = *(v0 - 152);

  return OS_dispatch_queue.async(group:qos:flags:execute:)();
}

uint64_t sub_100018F34()
{
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  v9 = v0[25];
}

uint64_t sub_100018F58()
{
}

uint64_t sub_100018FD0()
{
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[103];
  v5 = v0[101];
  v9 = v0[100];
  v6 = v0[95];
  v7 = v0[85];
  v12 = v0[84];
  v10 = v0[86];
  v11 = v0[83];

  return swift_slowAlloc();
}

uint64_t sub_10001917C()
{
  v1 = *(v0 + OBJC_IVAR___CSDRouteController_queue);
  sub_10026D814(&qword_1006A8D08, &qword_100584DA0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t sub_1000191FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR___CSDRouteController__routesByUniqueIdentifier;
  swift_beginAccess();
  *a2 = *(a1 + v4);
}

void sub_1000192A8()
{
  v1 = OBJC_IVAR___CSDRouteController__intelligentRoutingManager;
  v2 = *&v0[OBJC_IVAR___CSDRouteController__intelligentRoutingManager];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___CSDRouteController__intelligentRoutingManager];
LABEL_5:
    v12 = v2;
    return;
  }

  sub_1003B7458();
  v5 = v4;
  v6 = [objc_allocWithZone(type metadata accessor for SharedConversationServerBag()) init];
  v7 = objc_allocWithZone(type metadata accessor for IntelligentRoutingManager());
  v8 = sub_1003BB044(v5, 0, 0, 0, 0, v6, v7);
  v9 = *&v0[v1];
  *&v0[v1] = v8;
  v10 = v8;

  sub_1003BAAB0(v0, v10);
  v11 = *&v0[v1];
  if (v11)
  {
    v11;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_100019378()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue);
  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

void *sub_1000197C8(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v23 = *(result + *((swift_isaMask & *result) + 0x60));
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v15;
    aBlock[4] = sub_100019BE8;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062CA40;
    v17 = _Block_copy(aBlock);
    v22 = v8;
    v18 = v17;
    v19 = a1;
    v21 = v15;
    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);
    (*(v3 + 8))(v7, v2);
    (*(v9 + 8))(v13, v22);
  }

  return result;
}

uint64_t sub_100019AF4()
{
  v1 = sub_1000081EC();

  return _swift_deallocObject(v1, v2, v3);
}

void sub_100019B34(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100019BB0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

void sub_100019BF4(void (*a1)(uint64_t), void *a2)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057D690;
  v25 = a1;
  sub_100006AF0(0, &qword_1006A75B0, RPCompanionLinkDevice_ptr);
  v5 = a1;
  v6 = String.init<A>(reflecting:)();
  v8 = v7;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100009D88();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v9 = [v5 effectiveIdentifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = sub_10001A9F0();
    v15 = *((swift_isaMask & *a2) + 0x78);
    if (v14)
    {
      swift_beginAccess();
      v16 = v5;
      v17 = *(a2 + v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100379364(v16, v10, v12, isUniquelyReferenced_nonNull_native, v19, v20, v21, v22, *(a2 + v15), v25);
      *(a2 + v15) = v24;

      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      v23 = sub_10001B760(v10, v12);
      swift_endAccess();
    }

    sub_10001B630();
  }

  else
  {
  }
}

uint64_t sub_100019E3C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (&v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + qword_1006A4D40);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_73;
  }

  if (qword_1006A0AA0 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v10 = qword_1006BA380;
    v126 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v11 = swift_allocObject();
    v124 = xmmword_10057D690;
    *(v11 + 16) = xmmword_10057D690;
    v12 = *(v1 + qword_1006A4D50);
    sub_10001B3D0();
    v150[0] = v13;
    sub_10026D814(&qword_1006A2210, &qword_10057CBA0);
    v14 = String.init<A>(reflecting:)();
    v16 = v15;
    *(v11 + 56) = &type metadata for String;
    v125 = sub_100009D88();
    *(v11 + 64) = v125;
    *(v11 + 32) = v14;
    *(v11 + 40) = v16;
    static os_log_type_t.default.getter();
    v127 = v10;
    os_log(_:dso:log:type:_:)();

    v135 = &_swiftEmptySetSingleton;
    v18 = *(v1 + qword_1006A4D28);
    v17 = *(v1 + qword_1006A4D28 + 8);

    v20 = v18(v19);

    v21 = *(v1 + qword_1006A4D30);
    v22 = *(v1 + qword_1006A4D30 + 8);

    v24 = v21(v23);

    v25 = *(v1 + qword_1006A4D80);
    v26 = &off_1006A4000;
    v27 = &selRef_pseudonymPropertiesWithFeatureID_scopeID_expiryDurationInSeconds_;
    if (v25 != 1 || (v20 & 1) == 0 || (v24 & 1) == 0)
    {
      v95 = v25 ^ 1;
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_10057D6A0;
      LOBYTE(v150[0]) = v95;
      v97 = String.init<A>(reflecting:)();
      v98 = v125;
      *(v96 + 56) = &type metadata for String;
      *(v96 + 64) = v98;
      *(v96 + 32) = v97;
      *(v96 + 40) = v99;
      LOBYTE(v150[0]) = (v20 & 1) == 0;
      v100 = String.init<A>(reflecting:)();
      *(v96 + 96) = &type metadata for String;
      *(v96 + 104) = v98;
      *(v96 + 72) = v100;
      *(v96 + 80) = v101;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      goto LABEL_57;
    }

    sub_10001B3D0();
    v29 = v28;
    result = sub_10000B6F4(v28);
    if (result)
    {
      break;
    }

LABEL_57:

    v102 = *(v26[430] + v1);
    if (!v102)
    {
      return sub_10001B388(v135);
    }

    v103 = [v102 v27[144]];
    if (!v103)
    {
      return sub_10001B388(v135);
    }

    v104 = 0;
    v105 = 1 << v135[32];
    v106 = -1;
    if (v105 < 64)
    {
      v106 = ~(-1 << v105);
    }

    v107 = v106 & *(v135 + 7);
    v108 = (v105 + 63) >> 6;
    while (v107)
    {
      v109 = v104;
LABEL_68:
      v110 = __clz(__rbit64(v107));
      v107 &= v107 - 1;
      if (*(*(v135 + 6) + 72 * (v110 | (v109 << 6)) + 40))
      {

        return sub_10001B388(v135);
      }
    }

    while (1)
    {
      v109 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        break;
      }

      if (v109 >= v108)
      {
        v111 = v103;
        sub_1002BA89C(v111, v136);
        v145 = *v136;
        v146 = *&v136[16];
        v147 = *&v136[32];
        v148 = 1;
        *v149 = *&v136[41];
        *&v149[15] = *&v136[56];
        sub_10001C174(&v145, v134);
        sub_10001C1D0(v132, &v145);

        memcpy(v133, v132, 0x48uLL);
        sub_1002F6EC4(v133);
        *v134 = *v136;
        *&v134[16] = *&v136[16];
        *&v134[32] = *&v136[32];
        v134[40] = 1;
        *&v134[41] = *&v136[41];
        *&v134[56] = *&v136[56];
        sub_1002F6EC4(v134);
        return sub_10001B388(v135);
      }

      v107 = *&v135[8 * v109 + 56];
      ++v104;
      if (v107)
      {
        v104 = v109;
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  if (result >= 1)
  {
    v31 = result;
    v32 = 0;
    v33 = v1 + qword_1006A4D38;
    v129 = qword_1006A4D78;
    v130 = v29 & 0xC000000000000001;
    v123 = qword_1006A4D58;
    v120 = qword_1006A4D70;
    v128 = result;
    while (1)
    {
      v34 = v130 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v29 + 8 * v32 + 32);
      v35 = v34;
      if (*(v1 + v129) != 1)
      {
        goto LABEL_16;
      }

      v36 = sub_10001B8C8(v34, &selRef_idsDeviceIdentifier);
      if (v37)
      {
        v38 = v36;
        v39 = v37;
        v41 = *v33;
        v40 = *(v33 + 8);

        v42 = v41(v38, v39);
        v31 = v128;
        v43 = v42;

        if (v43)
        {
          v44 = [v43 canReceiveRelayedGFTCalls];

          if (v44)
          {
LABEL_16:
            v45 = sub_10001B8C8(v35, &selRef_idsDeviceIdentifier);
            if (v46)
            {
              v47 = v45;
              v48 = v46;
              v50 = *v33;
              v49 = *(v33 + 8);

              v51 = v50(v47, v48);
              v31 = v128;
              v52 = v51;

              if (v52)
              {
                v53 = [v52 canReceiveRelayedCalls];

                if ((v53 & 1) == 0)
                {
                  goto LABEL_25;
                }
              }
            }

            if (!sub_1003B6DD8())
            {
              break;
            }
          }
        }
      }

      v54 = swift_allocObject();
      *(v54 + 16) = v124;
      *&v145 = v35;
      sub_100006AF0(0, &qword_1006A75B0, RPCompanionLinkDevice_ptr);
      v55 = v35;
      v56 = String.init<A>(reflecting:)();
      v57 = v125;
      *(v54 + 56) = &type metadata for String;
      *(v54 + 64) = v57;
      *(v54 + 32) = v56;
      *(v54 + 40) = v58;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

LABEL_54:
      if (v31 == ++v32)
      {
        v27 = &selRef_pseudonymPropertiesWithFeatureID_scopeID_expiryDurationInSeconds_;
        v26 = &off_1006A4000;
        goto LABEL_57;
      }
    }

    sub_100009AB0(v1 + v123, &v145);
    v59 = sub_10001B928(&v145);
    sub_100009B7C(&v145);
    if (v59)
    {
      v60 = v35;
      v61 = v59;
      sub_10001BA88(v60, v61, &v137);
      v122 = v138;
      if (v138)
      {
        v62 = v137;
        v63 = v140;
        v64 = v141;
        v65 = v143;
        v133[0] = v139;
        v131[0] = *v142;
        *(v131 + 3) = *&v142[3];
        v132[0] = v144;
        if (v140 == 13)
        {
          v66 = v61;
          v67 = v143;
          v68 = v29;
          v69 = v33;
          v70 = v1;
          v71 = v141;

          *&v145 = v62;
          *(&v145 + 1) = v122;
          v146 = v139;
          v147 = 13;
          v148 = v71;
          v1 = v70;
          v33 = v69;
          v29 = v68;
          *v149 = *v142;
          *&v149[3] = *&v142[3];
          *&v149[7] = v67;
          v72 = v144;
          goto LABEL_52;
        }

        v78 = *(v1 + v120);
        v121 = v143;
        v118 = v60;
        v119 = v61;
        if (v78)
        {
          v116 = v141;
          v117 = v140;
          v79 = [v78 remoteDevice];
          if (!v79)
          {
            goto LABEL_42;
          }

          v80 = v79;
          v113 = sub_10001B8C8(v60, &selRef_idsDeviceIdentifier);
          v115 = v81;
          v82 = [v80 uniqueIDOverride];
          if (v82)
          {
            v83 = v82;
            v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v114 = v84;

            if (v115)
            {
              if (v114)
              {
                if (v113 != v112 || v115 != v114)
                {
                  v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v86)
                  {
LABEL_50:
                    v64 = 1;
                    v65 = v121;
                    v63 = v117;
                    goto LABEL_51;
                  }

LABEL_42:
                  v87 = *(v1 + v120);
                  if (v87)
                  {
                    v88 = [v87 remoteDestination];
                    v65 = v121;
                    v63 = v117;
                    v64 = v116;
                    if (v88)
                    {
                      v89 = v88;
                      sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
                      v90 = static NSObject.== infix(_:_:)();

                      v63 = v117;
                      v65 = v121;
                      if (v90)
                      {
                        v64 = 1;
                      }

                      else
                      {
                        v64 = v116;
                      }
                    }
                  }

                  else
                  {
                    v65 = v121;
                    v63 = v117;
                    v64 = v116;
                  }

                  goto LABEL_51;
                }

LABEL_49:

                goto LABEL_50;
              }

LABEL_39:
            }

            else
            {

              if (!v114)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_42;
          }

          if (!v115)
          {
            goto LABEL_49;
          }

          goto LABEL_39;
        }

LABEL_51:
        v91 = v122;
        v150[0] = v62;
        v150[1] = v122;
        v151 = v133[0];
        v152 = v63;
        v153 = v64;
        *v154 = v131[0];
        *&v154[3] = *(v131 + 3);
        v155 = v65;
        v156 = v132[0];
        v92 = v62;
        v93 = v63;
        v94 = v64;
        sub_10001C174(v150, v136);
        sub_10001C1D0(v134, v150);

        memcpy(v136, v134, sizeof(v136));
        sub_1002F6EC4(v136);
        *&v145 = v92;
        *(&v145 + 1) = v91;
        v146 = v133[0];
        v147 = v93;
        v148 = v94;
        *v149 = v131[0];
        *&v149[3] = *(v131 + 3);
        *&v149[7] = v121;
        v72 = v132[0];
LABEL_52:
        *&v149[15] = v72;
        sub_1002F6EC4(&v145);
      }

      else
      {
        static os_log_type_t.error.getter();
        v73 = swift_allocObject();
        *(v73 + 16) = v124;
        *&v145 = v60;
        sub_100006AF0(0, &qword_1006A75B0, RPCompanionLinkDevice_ptr);
        v74 = v60;
        v75 = String.init<A>(reflecting:)();
        v76 = v125;
        *(v73 + 56) = &type metadata for String;
        *(v73 + 64) = v76;
        *(v73 + 32) = v75;
        *(v73 + 40) = v77;
        os_log(_:dso:log:type:_:)();
      }

      v31 = v128;
      goto LABEL_54;
    }

LABEL_25:

    goto LABEL_54;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001A9F0()
{
  v1 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v15 - v4;
  v6 = [v0 effectiveIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || ([v0 flags] & 1) != 0 && (objc_msgSend(v0, "flags") & 2) == 0)
  {
    return ([v0 flags] >> 9) & 1;
  }

  if (([v0 flags] & 1) != 0 && ((objc_msgSend(v0, "flags") & 4) != 0 || (objc_msgSend(v0, "flags") & 8) != 0))
  {
    return ([v0 flags] >> 9) & 1;
  }

  sub_10001D2B4(v5);
  v11 = type metadata accessor for UUID();
  v12 = 1;
  v13 = sub_100015468(v5, 1, v11);
  sub_10001D334(v5);
  if (v13 != 1)
  {
    return ([v0 flags] >> 9) & 1;
  }

  return v12;
}

uint64_t sub_10001AB58(unint64_t *a1)
{

  return sub_100274E3C(a1, v1, v2);
}

uint64_t sub_10001AB88()
{
  v2 = *(v0 - 152);

  return OS_dispatch_queue.async(group:qos:flags:execute:)();
}

void sub_10001ABC0()
{
  v4 = *(v1 + 16);
  v3 = v1 + 16;
  v5 = *(v3 + 64);
  *(v2 - 96) = v0;
  v6 = *(v3 + 56);
}

uint64_t sub_10001ABE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  result = v3;
  v6 = *(v4 - 216);
  return result;
}

uint64_t sub_10001ABF4()
{

  return sub_100049528(v0 & 0xFFFFFFFF00000001, v2, v1);
}

uint64_t sub_10001AC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 16 * v10 + 8);
}

uint64_t sub_10001AC80()
{

  return static _DictionaryStorage.allocate(capacity:)();
}

uint64_t sub_10001AC9C(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 208) = _NSConcreteStackBlock;
  return result;
}

void sub_10001ACBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[2] = &_swiftEmptySetSingleton;
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_100006AF0(0, &qword_1006A99B0, IRCandidate_ptr);
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      swift_bridgeObjectRetain_n();
      v10 = sub_1003D67BC();
      sub_1003D84CC(v8, v9, v10);
      sub_1003968BC(v29, v10);

      v7 += 2;
      --v5;
    }

    while (v5);
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    sub_100006AF0(0, &qword_1006A99B0, IRCandidate_ptr);
    v12 = (a2 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      v15 = sub_1003D67BC();
      sub_1003968BC(v29, v15);

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10057D6A0;
  sub_100006AF0(0, &qword_1006A99B0, IRCandidate_ptr);
  sub_10000CE3C(&unk_1006A99E0, &qword_1006A99B0, IRCandidate_ptr);
  v29[0] = Set.description.getter();
  v29[1] = v17;
  v18 = String.init<A>(reflecting:)();
  v20 = v19;
  *(v16 + 56) = &type metadata for String;
  v21 = sub_100009D88();
  *(v16 + 64) = v21;
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v22 = OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession;
  v29[0] = *(a3 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession);
  v23 = v29[0];
  sub_10026D814(&unk_1006A99B8, &unk_100585928);
  v24 = String.init<A>(describing:)();
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v21;
  *(v16 + 72) = v24;
  *(v16 + 80) = v25;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v26 = *(a3 + v22);
  if (v26)
  {
    v27 = v26;
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v27 updateCandidates:isa];
  }

  else
  {
  }
}

void sub_10001AFD0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100010060();
    if (*(v4 + 16) == *(v5 + 16))
    {
      v6 = 0;
      v7 = v3;
      sub_10002F730();
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = v10 & v8;
      v12 = (v9 + 63) >> 6;
      v13 = v2 + 56;
LABEL_7:
      if (v11)
      {
        v14 = __clz(__rbit64(v11));
        v32 = (v11 - 1) & v11;
        v33 = v12;
        goto LABEL_14;
      }

      v15 = v6;
      do
      {
        v6 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          return;
        }

        if (v6 >= v12)
        {
          return;
        }

        ++v15;
      }

      while (!*(v7 + 8 * v6));
      v33 = v12;
      sub_100007C8C();
      v32 = v17 & v16;
LABEL_14:
      memcpy(__dst, (*(v3 + 48) + 72 * (v14 | (v6 << 6))), 0x48uLL);
      v18 = *(v2 + 40);
      Hasher.init(_seed:)();
      sub_10001C174(__dst, v34);
      sub_1002BA708();
      v19 = Hasher._finalize()();
      v20 = -1 << *(v2 + 32);
      v21 = v19 & ~v20;
      if ((*(v13 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v30 = v7;
        v31 = v3;
        v22 = ~v20;
        v23 = __dst[0];
        v24 = __dst[1];
        while (1)
        {
          memcpy(v35, (*(v2 + 48) + 72 * v21), sizeof(v35));
          v25 = v35[0] == v23 && v35[1] == v24;
          if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_39;
          }

          v26 = v35[2] == __dst[2] && v35[3] == __dst[3];
          if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v35[4] != __dst[4] || LOBYTE(v35[5]) != (__dst[5] & 1))
          {
            goto LABEL_39;
          }

          sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
          sub_10001C174(v35, v34);
          if ((static NSObject.== infix(_:_:)() & 1) == 0)
          {
            break;
          }

          v27 = __dst[8];
          if (v35[8])
          {
            if (!__dst[8])
            {
              break;
            }

            if (v35[7] == __dst[7] && v35[8] == __dst[8])
            {
              sub_1002F6EC4(v35);
              sub_1002F6EC4(__dst);
              v7 = v30;
              v3 = v31;
              v11 = v32;
              v12 = v33;
              goto LABEL_7;
            }

            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_1002F6EC4(v35);
            if (v29)
            {
              goto LABEL_41;
            }
          }

          else
          {
            sub_1002F6EC4(v35);
            if (!v27)
            {
LABEL_41:
              sub_1002F6EC4(__dst);
              v7 = v30;
              v3 = v31;
              v11 = v32;
              v12 = v33;
              goto LABEL_7;
            }
          }

LABEL_39:
          v21 = (v21 + 1) & v22;
          if (((*(v13 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        sub_1002F6EC4(v35);
        goto LABEL_39;
      }

LABEL_44:
      sub_1002F6EC4(__dst);
    }
  }
}

uint64_t sub_10001B2E0(uint64_t a1)
{
  v3 = *(v1 + qword_1006A4D68);

  sub_10001AFD0(v4, a1);
  LOBYTE(a1) = v5;

  if ((a1 & 1) == 0)
  {
    v7 = *(v1 + qword_1006A4D10);
    if (v7)
    {
      v8 = *(v1 + qword_1006A4D10 + 8);

      v7(v9);

      return sub_1000051F8(v7);
    }
  }

  return result;
}

uint64_t sub_10001B388(uint64_t a1)
{
  v2 = *(v1 + qword_1006A4D68);
  *(v1 + qword_1006A4D68) = a1;
  sub_10001B2E0(v2);
}

void sub_10001B3D0()
{
  v1 = *((swift_isaMask & *v0) + 0x68);
  swift_beginAccess();
  v2 = [*(v0 + v1) localDevice];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 flags];

    v5 = (v4 & 0x20) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *((swift_isaMask & *v0) + 0x78);
  swift_beginAccess();
  v7 = *(v0 + v6);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_12:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = *(*(v7 + 56) + ((v13 << 9) | (8 * v14)));
    if (([v15 flags] & 1) == 0 || v5)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v16 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      sub_10001B2B4(_swiftEmptyArrayStorage);
      return;
    }

    v10 = *(v7 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10001B5D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100019E3C();
  }
}

void sub_10001B630()
{
  v1 = v0 + *((swift_isaMask & *v0) + 0x70);
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 1);

    v2(v4);

    sub_1000051F8(v2);
  }
}

void *sub_10001B784(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_10001B8C8(void *a1, SEL *a2)
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

id sub_10001B928(void *a1)
{
  v2 = v1;
  v4 = sub_10001B8C8(v1, &selRef_idsDeviceIdentifier);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = a1[3];
    v9 = a1[4];
    sub_100009B14(a1, v8);
    v10 = (*(v9 + 8))(v6, v7, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  sub_10001B8C8(v2, &selRef_publicIdentifier);
  if (v11)
  {
    if (v10)
    {
    }

    else
    {
      sub_100006AF0(0, &qword_1006A5C40, IDSDestination_ptr);
      return sub_10001BA24();
    }
  }

  return v10;
}

id sub_10001BA24()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() destinationWithRapportPublicIdentifier:v0];

  return v1;
}

uint64_t sub_10001BA88@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v36 - v9;
  v40[3] = sub_100006AF0(0, &qword_1006A75B0, RPCompanionLinkDevice_ptr);
  v40[4] = &off_10062E588;
  v40[0] = a1;
  if ((sub_10001A9F0() & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_10001D2B4(v10);
  v11 = type metadata accessor for UUID();
  v12 = sub_100015468(v10, 1, v11);
  sub_10001D334(v10);
  if (v12 != 1)
  {
    v19 = sub_10001BEF4();
    if (v19 <= 0x1B && ((1 << v19) & 0x8400040) != 0 && ([a1 flags] & 0x200) != 0)
    {
      sub_100009AB0(v40, v38);
      v29 = v39;
      v30 = sub_10001BDB8(v38, v39);
      v31 = *(*(v29 - 8) + 64);
      __chkstk_darwin(v30, v30);
      v33 = (&v36 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v34 + 16))(v33);
      sub_1003BA7A0(*v33, a2, v41);
      goto LABEL_10;
    }

LABEL_7:

    v20 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  sub_100009AB0(v40, v38);
  v13 = v39;
  v14 = sub_10001BDB8(v38, v39);
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v14, v14);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  sub_10001BE08(*v17, a2, v41);
LABEL_10:
  v20 = v41[0];
  v21 = v41[1];
  v22 = v41[2];
  v23 = v41[3];
  v24 = v41[4];
  v37 = v42;
  v25 = v43;
  v26 = v44;
  v27 = v45;
  sub_100009B7C(v38);
  if (v21)
  {
    v28 = v37 & 1;
    goto LABEL_12;
  }

  v20 = 0;
LABEL_8:
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
LABEL_12:
  result = sub_100009B7C(v40);
  *a3 = v20;
  a3[1] = v21;
  a3[2] = v22;
  a3[3] = v23;
  a3[4] = v24;
  a3[5] = v28;
  a3[6] = v25;
  a3[7] = v26;
  a3[8] = v27;
  return result;
}

uint64_t sub_10001BDB8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_10001BE08(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10001B8C8(a1, &selRef_name);
  v8 = v7;
  if (v7)
  {
    v9 = v6;
    v10 = [a1 effectiveIdentifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_10001BEF4();
    v15 = sub_10001B8C8(a1, &selRef_model);
    v17 = v16;
  }

  else
  {

    v11 = 0;
    v13 = 0;
    v9 = 0;
    v14 = 0;
    a2 = 0;
    v15 = 0;
    v17 = 0;
  }

  *a3 = v11;
  a3[1] = v13;
  a3[2] = v9;
  a3[3] = v8;
  a3[4] = v14;
  a3[5] = 0;
  a3[6] = a2;
  a3[7] = v15;
  a3[8] = v17;
}

uint64_t sub_10001BEF4()
{
  v1 = sub_10001B8C8(v0, &selRef_model);
  if (v2)
  {

    return sub_10001BF50(v1, v2);
  }

  else if (([v0 flags] & 2) != 0)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001BF50(uint64_t a1, uint64_t a2)
{
  v8._object = 0x8000000100564E00;
  v8._countAndFlagsBits = 0xD000000000000011;
  if (sub_10000A004(v8))
  {
    v4 = 22;
  }

  else
  {
    v9._countAndFlagsBits = 0x6363416F69647541;
    v9._object = 0xEE0079726F737365;
    if (sub_10000A004(v9))
    {
      v4 = 6;
    }

    else
    {
      v10._countAndFlagsBits = 1685016681;
      v10._object = 0xE400000000000000;
      if (sub_10000A004(v10))
      {
        v4 = 7;
      }

      else
      {
        v11._countAndFlagsBits = 0x3864615069;
        v11._object = 0xE500000000000000;
        if (sub_10000A004(v11))
        {
          v4 = 15;
        }

        else
        {
          v12._countAndFlagsBits = 1684099177;
          v12._object = 0xE400000000000000;
          if (sub_10000A004(v12))
          {
            v4 = 8;
          }

          else
          {
            v13._countAndFlagsBits = 1667321193;
            v13._object = 0xE400000000000000;
            if (sub_10000A004(v13))
            {
              v4 = 9;
            }

            else
            {
              v14._countAndFlagsBits = 0x6B6F6F4263614DLL;
              v14._object = 0xE700000000000000;
              if (sub_10000A004(v14))
              {
                v4 = 10;
              }

              else
              {
                v15._countAndFlagsBits = 0x696E696D63614DLL;
                v15._object = 0xE700000000000000;
                if (sub_10000A004(v15))
                {
                  v4 = 11;
                }

                else
                {
                  v16._countAndFlagsBits = 0x6F725063614DLL;
                  v16._object = 0xE600000000000000;
                  if (sub_10000A004(v16))
                  {
                    v4 = 12;
                  }

                  else
                  {
                    v17._countAndFlagsBits = 0x6863746157;
                    v17._object = 0xE500000000000000;
                    if (sub_10000A004(v17))
                    {
                      v4 = 13;
                    }

                    else
                    {
                      v18._countAndFlagsBits = 0x447974696C616552;
                      v18._object = 0xED00006563697665;
                      if (sub_10000A004(v18))
                      {
                        v4 = 37;
                      }

                      else
                      {
                        v4 = 0;
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

  v5 = a1 == 0x312C363163614DLL && a2 == 0xE700000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 10;
  }

  v19._object = 0x8000000100564E20;
  v19._countAndFlagsBits = 0xD000000000000011;
  v6 = sub_10000A004(v19);

  if (v6)
  {
    return 27;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001C1D0(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_1002BA708();
  Hasher._finalize()();
  v6 = *(v4 + 32);
  sub_1000052DC();
  v9 = v8 & ~v7;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_27:
    v20 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = *v24;
    sub_10001C174(a2, __dst);
    sub_10001C454(a2, v9, isUniquelyReferenced_nonNull_native);
    *v24 = v27[0];
    memcpy(a1, a2, 0x48uLL);
    return 1;
  }

  v10 = ~v7;
  v11 = *a2;
  v12 = *(a2 + 8);
  while (1)
  {
    memcpy(__dst, (*(v4 + 48) + 72 * v9), 0x48uLL);
    v13 = __dst[0] == v11 && __dst[1] == v12;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_26;
    }

    v14 = __dst[2] == *(a2 + 16) && __dst[3] == *(a2 + 24);
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || __dst[4] != *(a2 + 32) || LOBYTE(__dst[5]) != (*(a2 + 40) & 1))
    {
      goto LABEL_26;
    }

    sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
    v15 = *(a2 + 48);
    sub_10001C174(__dst, v27);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
LABEL_24:
      sub_1002F6EC4(__dst);
      goto LABEL_26;
    }

    v16 = *(a2 + 64);
    if (__dst[8])
    {
      break;
    }

    sub_1002F6EC4(__dst);
    if (!v16)
    {
      goto LABEL_30;
    }

LABEL_26:
    v9 = (v9 + 1) & v10;
    if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (!v16)
  {
    goto LABEL_24;
  }

  if (__dst[7] != *(a2 + 56) || __dst[8] != v16)
  {
    v18 = *(a2 + 64);
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1002F6EC4(__dst);
    if (v19)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  sub_1002F6EC4(__dst);
LABEL_30:
  sub_1002F6EC4(a2);
  v23 = (*(v4 + 48) + 72 * v9);
  memcpy(v27, v23, sizeof(v27));
  memcpy(a1, v23, 0x48uLL);
  sub_10001C174(v27, v26);
  return 0;
}

uint64_t sub_10001C454(uint64_t *__src, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10001CA20(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_100398D98();
        goto LABEL_34;
      }

      sub_10001C6E0(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    Hasher.init(_seed:)();
    sub_1002BA708();
    v10 = Hasher._finalize()();
    v11 = -1 << *(v8 + 32);
    a2 = v10 & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      v13 = *__src;
      v14 = __src[1];
      do
      {
        memcpy(__dst, (*(v8 + 48) + 72 * a2), 0x48uLL);
        v15 = __dst[0] == v13 && __dst[1] == v14;
        if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v16 = __dst[2] == __src[2] && __dst[3] == __src[3];
          if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && __dst[4] == __src[4] && LOBYTE(__dst[5]) == (__src[5] & 1))
          {
            sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
            v17 = __src[6];
            sub_10001C174(__dst, v28);
            if ((static NSObject.== infix(_:_:)() & 1) == 0)
            {
              goto LABEL_31;
            }

            v18 = __src[8];
            if (!__dst[8])
            {
              sub_1002F6EC4(__dst);
              if (!v18)
              {
                goto LABEL_38;
              }

              goto LABEL_33;
            }

            if (v18)
            {
              if (__dst[7] == __src[7] && __dst[8] == v18)
              {
                goto LABEL_37;
              }

              v20 = __src[8];
              v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_1002F6EC4(__dst);
              if (v21)
              {
                goto LABEL_38;
              }
            }

            else
            {
LABEL_31:
              sub_1002F6EC4(__dst);
            }
          }
        }

LABEL_33:
        a2 = (a2 + 1) & v12;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_34:
  v22 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v22 + 48) + 72 * a2), __src, 0x48uLL);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_37:
    sub_1002F6EC4(__dst);
LABEL_38:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

uint64_t sub_10001C6E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10026D814(&unk_1006A7B80, &qword_100583460);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        memcpy(__dst, (*(v3 + 48) + 72 * (v13 | (v7 << 6))), 0x48uLL);
        v16 = *(v6 + 40);
        Hasher.init(_seed:)();
        sub_10001C174(__dst, v26);
        String.hash(into:)();
        String.hash(into:)();
        Hasher._combine(_:)(__dst[4]);
        Hasher._combine(_:)(__dst[5]);
        NSObject.hash(into:)();
        if (__dst[8])
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        result = Hasher._finalize()();
        v17 = -1 << *(v6 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        result = memcpy((*(v6 + 48) + 72 * v20), __dst, 0x48uLL);
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v25;
          goto LABEL_30;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

void sub_10001C9AC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_10001CA08()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t sub_10001CA20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10026D814(&unk_1006A7B80, &qword_100583460);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_32:
    v38 = v6;

    *v2 = v38;
    return result;
  }

  v7 = 0;
  v41 = (v3 + 56);
  v42 = v3;
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v39 = v1;
  v40 = (v8 + 63) >> 6;
  v11 = result + 56;
  v43 = result;
  if (!v10)
  {
LABEL_9:
    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v40)
      {
        break;
      }

      v14 = v41[v7];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v44 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      v37 = v6;
      sub_100396044(0, (v36 + 63) >> 6, v41);
      v6 = v37;
    }

    else
    {
      *v41 = -1 << v36;
    }

    v2 = v39;
    *(v3 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v44 = (v10 - 1) & v10;
LABEL_14:
    v15 = *(v3 + 48) + 72 * (v12 | (v7 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    v21 = *(v15 + 40);
    *v47 = *(v15 + 41);
    *&v47[3] = *(v15 + 44);
    v22 = *(v15 + 48);
    v46 = *(v15 + 56);
    v23 = *(v15 + 64);
    v24 = *(v6 + 40);
    Hasher.init(_seed:)();
    v45 = v17;
    v25 = v18;
    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v20);
    Hasher._combine(_:)(v21 & 1);
    NSObject.hash(into:)();
    if (v23)
    {
      Hasher._combine(_:)(1u);
      v26 = v46;
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
      v26 = v46;
    }

    result = Hasher._finalize()();
    v6 = v43;
    v27 = -1 << *(v43 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v11 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v11 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = *(v43 + 48) + 72 * v30;
    *v35 = v16;
    *(v35 + 8) = v45;
    *(v35 + 16) = v25;
    *(v35 + 24) = v19;
    *(v35 + 32) = v20;
    *(v35 + 40) = v21;
    *(v35 + 41) = *v47;
    *(v35 + 44) = *&v47[3];
    *(v35 + 48) = v22;
    *(v35 + 56) = v26;
    *(v35 + 64) = v23;
    ++*(v43 + 16);
    v3 = v42;
    v10 = v44;
    if (!v44)
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
    v34 = *(v11 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

id sub_10001CD68()
{
  sub_100006AF0(0, &unk_1006A4E40, off_1006166A0);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 deviceWithUniqueID:v1];

  return v2;
}

void sub_10001CF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001D130()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 deviceWithUniqueID:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_opt_self() destinationWithDevice:v2];

  return v3;
}

BOOL sub_10001D214()
{
  sub_100006AF0(0, &unk_1006A4E40, off_1006166A0);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 service];

  v2 = [v1 iCloudAccount];
  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t sub_10001D2B4@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 mediaSystemIdentifier];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();

  return sub_10000AF74(a1, v5, 1, v6);
}

uint64_t sub_10001D334(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001D9D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    v5 = sub_10001E1D4();
    v7 = v6;
  }

  else
  {
    if (qword_1006A0C50 != -1)
    {
      sub_10000AB54();
    }

    v5 = qword_1006AC3A0;
    v7 = *algn_1006AC3A8;
  }

  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  sub_100008BA8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D690;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  if (a4)
  {
    v9 = sub_1004615A4();
  }

  else
  {
    v9 = sub_10001DAF4();
  }

  v10 = v9;

  return v10 & 1;
}

uint64_t sub_10001DAC4(uint64_t a1)
{
  sub_1000115CC(a1);

  return static DispatchQoS.unspecified.getter();
}

uint64_t sub_10001E1D4()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 value];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v16[0] = v8;
  v16[1] = v10;
  static CharacterSet.controlCharacters.getter();
  sub_10001E364();
  v11 = StringProtocol.trimmingCharacters(in:)();
  v13 = v12;
  (*(v2 + 8))(v6, v1);

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    if (qword_1006A0C50 != -1)
    {
      swift_once();
    }

    v11 = qword_1006AC3A0;
  }

  return v11;
}

unint64_t sub_10001E364()
{
  result = qword_1006AC390;
  if (!qword_1006AC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AC390);
  }

  return result;
}

uint64_t sub_10001E3C4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10001E41C()
{
  v4 = *(v2 + 200);
  v5 = *(v1 + 48);
  v6 = *(v2 + 168);

  return sub_1002DB564(v0, v6);
}

uint64_t sub_10001E450()
{

  return static _DictionaryStorage.resize(original:capacity:move:)();
}

uint64_t sub_10001E478(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_1000359E0();
  }

  return String.init<A>(reflecting:)();
}

uint64_t sub_10001E4BC()
{
  v1 = [v0 handles];
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10001E558(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

void sub_10001E594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  sub_100018168();
  if (!v12)
  {
    if (v11)
    {
      sub_100008B14();
      v39 = __CocoaSet.element(at:)();
      v13 = sub_100006AF0(0, a5, a6);
      sub_100008338(v13, v14, v15, v13, v16, v17, v18, v19, v39, v40);
      swift_dynamicCast();
      sub_100008348();
      return;
    }

    goto LABEL_23;
  }

  if (v11)
  {
    sub_100006AF0(0, a5, a6);
    sub_100008B14();
    if (__CocoaSet.Index.age.getter() == *(v6 + 36))
    {
      sub_100008B14();
      v20 = __CocoaSet.Index.element.getter();
      sub_100008338(v20, v21, v22, v23, v24, v25, v26, v27, v20, v40);
      swift_dynamicCast();
      a5 = v41;
      NSObject._rawHashValue(seed:)(*(v6 + 40));
      sub_10001512C();
      while (1)
      {
        sub_100010288(v28);
        if ((v29 & 1) == 0)
        {
          goto LABEL_22;
        }

        v30 = *(*(v6 + 48) + 8 * v8);
        v31 = static NSObject.== infix(_:_:)();

        if (v31)
        {
          goto LABEL_15;
        }

        v28 = v8 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v8 < 0 || (sub_100017158(), v32 ^ v33 | v12))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_10000E684();
  if ((v34 & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(v6 + 36) != v7)
  {
    __break(1u);
LABEL_15:
  }

  v35 = *(*(v6 + 48) + 8 * v8);
  sub_100008348();

  v38 = v36;
}

uint64_t sub_10001E728(void *a1)
{
  v1 = [a1 siriDisplayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10001E78C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v9 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v9;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_10001E84C();
  }

  __break(1u);
  return result;
}

void sub_10001E84C()
{
  sub_10000B8E8();
  v4 = v3;
  v6 = v5;
  sub_10039C460();
  String.hash(into:)();
  Hasher._finalize()();
  v7 = *(v2 + 32);
  sub_1000052DC();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    if (((1 << (v8 & v10)) & *(v2 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12 == v6 && v12[1] == v4;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v2 + 48) + 16 * v11);
      v15 = v14[1];
      *v0 = *v14;
      v0[1] = v15;

      goto LABEL_11;
    }

    v8 = v11 + 1;
  }

  v16 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v1;

  sub_10001E96C(v6, v4, v11, isUniquelyReferenced_nonNull_native);
  *v1 = v18;
  *v0 = v6;
  v0[1] = v4;
LABEL_11:
  sub_1000089B0();
}

void sub_10001E96C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100396BF8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10002D314(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v17 = Hasher._finalize()();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v17 & v18;
        if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = (*(v15 + 48) + 16 * a3);
        v20 = *v19 == a1 && v19[1] == a2;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        v17 = a3 + 1;
      }
    }

    sub_1003989F8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

id sub_10001EAD4()
{
  v1 = String._bridgeToObjectiveC()();

  isa = Set._bridgeToObjectiveC()().super.isa;

  v3 = [v0 initWithDisplayName:v1 handles:isa];

  return v3;
}

id sub_10001EB80(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100006AF0(0, &unk_1006A3CE0, SCAParticipant_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [a3 interventionRequiredFor:isa callType:a2];

  return v6;
}

uint64_t sub_10001EC50()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000200D4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000200A4;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002007C;
  aBlock[3] = &unk_10062A6D8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_10001EDB4()
{
  v1 = sub_1000081EC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10001F254()
{
  v1 = [v0 provider];
  v2 = [v1 isTelephonyProvider];

  if (v2)
  {
    return 3;
  }

  if ([v0 isVideo])
  {
    return 1;
  }

  return 4;
}

uint64_t sub_10001FAAC(void *a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v18[3] = sub_100006AF0(0, a2, a3);
  v18[4] = a4;
  v18[0] = a1;
  if (([a1 bypassIntervention] & 1) != 0 || (v7 = v4 + OBJC_IVAR___CSDDialingInterventionController_interventionProvider, v8 = *(v4 + OBJC_IVAR___CSDDialingInterventionController_interventionProvider + 24), v9 = *(v4 + OBJC_IVAR___CSDDialingInterventionController_interventionProvider + 32), v10 = sub_100007624(), sub_100009B14(v10, v11), ((*(v9 + 8))(v18, v8, v9) & 1) == 0))
  {
    v16 = 0;
  }

  else
  {
    v12 = *(v7 + 24);
    v13 = *(v7 + 32);
    v14 = sub_100007624();
    sub_100009B14(v14, v15);
    (*(v13 + 16))(v18, v12, v13);
    v16 = 1;
  }

  sub_100009B7C(v18);
  return v16;
}

unint64_t sub_10001FB8C(void *a1)
{
  v1 = a1[4];
  sub_100009B14(a1, a1[3]);
  v2 = *(v1 + 8);
  v3 = sub_100007624();
  v5 = v4(v3);
  v6 = sub_10001E550();
  if (v6)
  {
    v7 = v6;
    v45 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = sub_10001E578(v5);
    v42 = result;
    v43 = v9;
    v44 = v10 & 1;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v39 = v5 & 0xC000000000000001;
      v37 = v7;
      v38 = v5;
      while (!__OFADD__(v11, 1))
      {
        v12 = v43;
        v13 = v44;
        v40 = v42;
        sub_10001E580(v42, v43, v44, v5);
        v15 = v14;
        sub_10001E728(v14);
        sub_10026D814(&qword_1006A4760, &unk_10057EA60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10057D690;
        v17 = [v15 value];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        *(inited + 32) = v18;
        *(inited + 40) = v20;
        sub_10001E78C(inited);
        v21 = objc_allocWithZone(SCAParticipant);
        sub_10001EAD4();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v22 = v45[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v39)
        {
          result = v40;
          v5 = v38;
          if (!v13)
          {
            goto LABEL_17;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v28 = v37;
          v29 = v11 + 1;
          sub_10026D814(&unk_1006A2650, &qword_10057D170);
          v30 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v30(v41, 0);
        }

        else
        {
          v23 = sub_1003081B0(v40, v12, v13, v38);
          v25 = v24;
          v27 = v26;
          result = sub_100010000(v40, v12, v13);
          v42 = v23;
          v43 = v25;
          v44 = v27 & 1;
          v5 = v38;
          v28 = v37;
          v29 = v11 + 1;
        }

        ++v11;
        if (v29 == v28)
        {

          sub_100010000(v42, v43, v44);
          v31 = v45;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
LABEL_14:
    v32 = a1[3];
    v33 = a1[4];
    sub_100009B14(a1, v32);
    v34 = (*(v33 + 40))(v32, v33);
    return sub_10001EB80(v31, v34, v36) & 1;
  }

  return result;
}

uint64_t sub_10002001C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  v3 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1000200AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100020104(uint64_t result)
{
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

BOOL sub_100020114(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

uint64_t sub_100020128(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100020148(uint64_t result, uint64_t *a2)
{
  if (*(result + OBJC_IVAR___CSDScreenSharingActivityManager_session))
  {
    v3 = *(result + OBJC_IVAR___CSDScreenSharingActivityManager_session);

    if (GroupSession.isLocallyInitiated.getter())
    {
    }

    else
    {
      GroupSession.activity.getter();

      if (v6)
      {
        v4 = [objc_allocWithZone(TUScreenShareAttributes) initWithAttributes:v6];

        v5 = *a2;
        *a2 = v4;
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_100020228(uint64_t result)
{
  if ((result - 1) >= 0x15)
  {
    return 0;
  }

  return result;
}

void sub_10002028C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CSDCallController_dataSources);
  v4 = sub_10000B6F4(v3);
  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v9 = [v7 shouldRegisterCall:a1];

    v5 = v6 + 1;
  }

  while (!v9);
}

void sub_10002156C()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v47 = v6;
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v5, v9);
  __chkstk_darwin(v10, v11);
  v13 = v42 - v12;
  v14 = sub_100021AEC([v3 provider]);
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier;
    sub_100005298();
    v19 = *&v18[v1];

    sub_100023E48(v16, v17, v19);
    sub_10000C768();

    if (v18)
    {
      v44 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v46 = v4;
      sub_100021B9C();
      v20 = [v3 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100025F58(v3);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v22 = [v18 allowableByContactsHandles:isa];

      v45 = v18;
      v23 = OBJC_IVAR___CSDScreenTimeCallFilter_contextsForCallIdentifier;
      sub_1000170DC();
      v24 = v22;
      v25 = *(v1 + v23);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100007E74();
      sub_100022190();
      *(v1 + v23) = v48;
      swift_endAccess();
      if (qword_1006A0AA0 != -1)
      {
        sub_100008134();
      }

      v42[1] = qword_1006BA380;
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_10057D6A0;
      v49 = v24;
      sub_100006AF0(0, &unk_1006A7560, STConversationContext_ptr);
      v27 = v24;
      v43 = v27;
      v28 = String.init<A>(reflecting:)();
      v30 = v29;
      *(v26 + 56) = &type metadata for String;
      v31 = sub_100009D88();
      *(v26 + 64) = v31;
      *(v26 + 32) = v28;
      *(v26 + 40) = v30;
      v49 = *(v1 + v23);

      sub_10026D814(&unk_1006AC450, qword_100588308);
      v32 = String.init<A>(reflecting:)();
      *(v26 + 96) = &type metadata for String;
      *(v26 + 104) = v31;
      *(v26 + 72) = v32;
      *(v26 + 80) = v33;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v49 = v27;
      swift_getKeyPath();
      sub_100006890();
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = v46;
      v36 = v47;
      v37 = v44;
      (*(v47 + 16))(v44, v13, v46);
      v38 = (*(v36 + 80) + 24) & ~*(v36 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v34;
      (*(v36 + 32))(v39 + v38, v37, v35);
      _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      v40 = OBJC_IVAR___CSDScreenTimeCallFilter_observationForCallIdentifier;
      sub_1000170DC();
      v41 = *(v1 + v40);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100007E74();
      sub_1000226E0();
      *(v1 + v40) = v48;
      swift_endAccess();

      (*(v36 + 8))(v13, v35);
    }
  }

  sub_100005EDC();
}

id sub_1000219CC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowedByScreenTime];
  *a2 = result;
  return result;
}

uint64_t sub_100021A00()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100021A34()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100021AEC(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100021B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100005208();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_10000C5FC(v4);
  return v3;
}

void sub_100021B9C()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v37 = type metadata accessor for UUID();
  v4 = sub_100007FEC(v37);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = [v3 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = OBJC_IVAR___CSDScreenTimeCallFilter_observationForCallIdentifier;
  sub_100005298();
  v15 = *(v1 + v14);

  v16 = sub_100025C58(v12, v15);

  if (v16)
  {
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  v17 = OBJC_IVAR___CSDScreenTimeCallFilter_contextsForCallIdentifier;
  sub_1000170DC();
  sub_100025CA0(v12, v18, v19, v20, v21, v22, v23, v24, v36, v37);
  v26 = v25;
  swift_endAccess();

  sub_1000170DC();
  v27 = sub_100025F30(v12);
  swift_endAccess();

  if (qword_1006A0AA0 != -1)
  {
    sub_100008134();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10057D6A0;
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v29 = v3;
  v30 = String.init<A>(reflecting:)();
  v32 = v31;
  *(v28 + 56) = &type metadata for String;
  v33 = sub_100009D88();
  *(v28 + 64) = v33;
  *(v28 + 32) = v30;
  *(v28 + 40) = v32;
  v39 = *(v1 + v17);

  sub_10026D814(&unk_1006AC450, qword_100588308);
  v34 = String.init<A>(reflecting:)();
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v33;
  *(v28 + 72) = v34;
  *(v28 + 80) = v35;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  (*(v6 + 8))(v12, v38);
  sub_100005EDC();
}

void sub_100021E24()
{
  sub_1000066C8();
  type metadata accessor for UUID();
  sub_10000EDB0(&qword_1006A3BE0, &type metadata accessor for UUID);
  sub_10000C3E4();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1000515FC();
  sub_100025DBC();
}

__n128 *sub_100021EF0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u32[0] = -1;
  result[2].n128_u64[1] = 0;
  return result;
}

uint64_t sub_100021F04()
{

  return swift_beginAccess();
}

uint64_t sub_100021F34()
{

  return swift_slowAlloc();
}

uint64_t sub_100021F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 96) = a6;
  *(v6 - 88) = a1;

  return type metadata accessor for UUID();
}

uint64_t sub_100021F90()
{
  v2 = *(*(v1 - 120) + 48) + v0;
  result = *(v1 - 136);
  v4 = *(v1 - 104);
  return result;
}

void sub_100021FC8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_100021FE0()
{

  return OS_dispatch_queue.async(group:qos:flags:execute:)();
}

id sub_100022004()
{
  v2 = *(v0 + 472);

  return objc_allocWithZone(v2);
}

uint64_t sub_10002201C()
{
  v2 = v0[5];
  v3 = v0[6] + 8;
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v9 = v0[7];

  return type metadata accessor for ActivitySessionCreationRequestResult();
}

uint64_t sub_100022048()
{

  return sub_100049D70(v1, v0);
}

void sub_1000221B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100008498(a1, a2, a3, a4);
  v11 = sub_10001629C(v7, v8, v9, v10);
  v13 = v12(v11);
  sub_100010300(v13);
  v15 = *(v14 + 32);
  v16 = *(v14 + 72);
  v17 = sub_100015D68();
  v18(v17);
  *(*(v4 + 56) + 8 * v6) = v5;
  sub_100017180();
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v19;
  }
}

void sub_100022234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v31 = v5;
    sub_10026D814(&qword_1006AC460, &qword_100588350);
    NSKeyValueObservedChange.newValue.getter();
    v21 = aBlock[0];
    if (LOBYTE(aBlock[0]) == 2)
    {
    }

    else
    {
      v30 = [v20 queue];
      (*(v16 + 16))(&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v15);
      v22 = *(v16 + 80);
      v32 = v4;
      v23 = (v22 + 25) & ~v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v20;
      *(v24 + 24) = v21 & 1;
      (*(v16 + 32))(v24 + v23, &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
      aBlock[4] = sub_100024E08;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004CEC;
      aBlock[3] = &unk_100631638;
      v25 = _Block_copy(aBlock);
      v26 = v20;
      static DispatchQoS.unspecified.getter();
      v35 = _swiftEmptyArrayStorage;
      sub_100461DBC(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      v27 = v32;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v28 = v30;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v25);

      (*(v31 + 8))(v9, v27);
      (*(v33 + 8))(v14, v34);
    }
  }
}

uint64_t sub_100022628()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 25) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

void sub_100022780(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + OBJC_IVAR___CSDDirtyCallManager_queue);
  *v12 = v13;
  (*(v7 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v4);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v12, v4);
  if (v13)
  {
    if (sub_100022A44())
    {
      sub_100024140();
    }

    v15 = OBJC_IVAR___CSDDirtyCallManager_dirtyCallsSet;
    swift_beginAccess();
    v16 = *(v2 + v15);

    sub_10002455C();
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      v19 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10057D690;
      *(v20 + 56) = sub_100024570();
      *(v20 + 64) = sub_100022AC8(&qword_1006A3520, sub_100024570);
      *(v20 + 32) = a1;
      v21 = a1;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v22 = OBJC_IVAR___CSDDirtyCallManager_dirtyCallsArray;
      swift_beginAccess();
      v23 = v21;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_100022C0C(*((*(v2 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10));
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      swift_beginAccess();
      sub_100022C38(&v25, v23);
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_100022A44()
{
  v1 = OBJC_IVAR___CSDDirtyCallManager_dirtyCallsSet;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  return v3 == 0;
}

uint64_t sub_100022AC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100022B10()
{
  sub_100005EF4();
  v4 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = v0;
    __CocoaSet.contains(_:)();
  }

  else if (*(v1 + 16))
  {
    sub_100006AF0(0, v2, v3);
    NSObject._rawHashValue(seed:)(*(v4 + 40));
    v6 = *(v4 + 32);
    sub_1000052DC();
    v9 = ~v8;
    do
    {
      v10 = v7 & v9;
      if (((1 << (v7 & v9)) & *(v4 + 56 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v11 = *(*(v4 + 48) + 8 * v10);
      v12 = static NSObject.== infix(_:_:)();

      v7 = v10 + 1;
    }

    while ((v12 & 1) == 0);
  }

  sub_100005EDC();
}

uint64_t sub_100022C0C(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

uint64_t sub_100022C5C(uint64_t result)
{
  *(result + 8) = sub_1002785F8;
  v2 = *(v1 + 72);
  v3 = *(v1 + 56);
  return result;
}

uint64_t sub_100022CBC()
{

  return swift_beginAccess();
}

uint64_t sub_100022CD8()
{
  v2 = *(v0 - 280);

  return sub_100022DDC();
}

id sub_100022D0C()
{
  v3 = *(v1 + 184);

  return [v0 v3];
}

uint64_t sub_100022D4C()
{
  result = v0[32];
  v2 = v0[27];
  v3 = *(v0[28] + 8);
  return result;
}

uint64_t sub_100022D5C(uint64_t a1, uint64_t a2)
{
  sub_10000AF9C(a1, a2);

  return Logger.logObject.getter();
}

uint64_t sub_100022DC4()
{
}

uint64_t sub_100022E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v17 = va_arg(va1, void);

  return sub_100285FC4(va1, va, v13, v14);
}

uint64_t sub_100022F70()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + OBJC_IVAR___CSDDirtyCallManager_queue);
  *v9 = v10;
  (*(v4 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v1);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v9, v1);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10057D690;
  v15 = OBJC_IVAR___CSDDirtyCallManager_dirtyCallsArray;
  swift_beginAccess();
  v16 = *(v0 + v15);
  *(v14 + 56) = sub_10026D814(&unk_1006A7C20, &qword_1005834D0);
  *(v14 + 64) = sub_10001000C(&qword_1006A53B8, &unk_1006A7C20, &qword_1005834D0);
  *(v14 + 32) = v16;

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  result = sub_100022A44();
  if (result)
  {
    return result;
  }

  v17 = *(v0 + v15);
  *(v0 + v15) = _swiftEmptyArrayStorage;
  v18 = OBJC_IVAR___CSDDirtyCallManager_dirtyCallsSet;
  swift_beginAccess();
  v19 = *(v0 + v18);
  *(v0 + v18) = &_swiftEmptySetSingleton;

  v20 = *(v0 + OBJC_IVAR___CSDDirtyCallManager_callChanged);
  if (!v20)
  {
  }

  v21 = *(v0 + OBJC_IVAR___CSDDirtyCallManager_callChanged + 8);
  result = sub_10000B6F4(v17);
  if (!result)
  {
  }

  v22 = result;
  if (result < 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  for (i = 0; i != v22; ++i)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v24 = *(v17 + 8 * i + 32);
    }

    v25 = v24;
    v20();
  }

  return sub_1000051F8(v20);
}

void sub_100023294(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___CSDCallController_callChanged);
    sub_1000115CC(v4);

    if (v4)
    {
      v4(a1);
      sub_1000051F8(v4);
    }
  }
}

uint64_t sub_1000233F8(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

void sub_100023490(uint64_t a1)
{
  sub_10002028C(a1);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR___CSDCallController_dataSources);
    v5 = sub_10000B6F4(v4);
    if (v5)
    {
      v6 = v5;
      if (v5 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v4 + 8 * i + 32);
        }

        v9 = v8;
        [v8 registerCall:a1];
      }
    }

    v10 = *(v1 + OBJC_IVAR___CSDCallController_dirtyCallManager);

    [v10 add:a1];
  }
}

void sub_100023E50()
{
  sub_100005EF4();
  v27 = sub_100021F50(v4, v5, v6, v7, v8, v9);
  v10 = sub_100007FEC(v27);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  sub_10000607C();
  sub_100008598(v16, v17);
  if (v18)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10003A5C0();
  sub_10026D814(v1, v0);
  if (sub_100007D68())
  {
    sub_10000D374();
    sub_100021E24();
    sub_100022D24();
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  v20 = *v2;
  if (v3)
  {
    sub_1000276EC();
    sub_100005EDC();
  }

  else
  {
    v23 = *(v12 + 16);
    v24 = sub_10000FC44();
    v25(v24);
    v26 = sub_10000534C();
    v28(v26);
    sub_100005EDC();
  }
}

uint64_t sub_100024140()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v25, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = (v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *&v0[OBJC_IVAR___CSDDirtyCallManager_queue];
  *v17 = v18;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12);
  v24[1] = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v17, v12);
  if (v18)
  {
    v20 = sub_100004778();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v21 = swift_allocObject();
    *(v21 + 16) = v0;
    aBlock[4] = sub_100023258;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_100626A68;
    v22 = _Block_copy(aBlock);
    v23 = v0;
    static DispatchQoS.unspecified.getter();
    v26 = _swiftEmptyArrayStorage;
    sub_100022AC8(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);
    (*(v2 + 8))(v6, v1);
    (*(v7 + 8))(v11, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100024524()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100024570()
{
  result = qword_1006A34B0;
  if (!qword_1006A34B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A34B0);
  }

  return result;
}

uint64_t sub_1000245B4(void *a1, void *a2, unint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = *v4;
  if ((*v4 & 0xC000000000000001) != 0)
  {
    if (v10 < 0)
    {
      v11 = *v4;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = a2;

    v13 = __CocoaSet.member(for:)();

    if (v13)
    {

      sub_100006AF0(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v30;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_100396A28(v11, result + 1);
        v23 = v22;
        v31 = v22;
        if (*(v22 + 24) <= *(v22 + 16))
        {
          sub_100397DE8();
          v23 = v31;
        }

        v24 = v12;
        sub_100397F38();

        *v7 = v23;
        *a1 = v24;
        return 1;
      }
    }
  }

  else
  {
    sub_100006AF0(0, a3, a4);
    NSObject._rawHashValue(seed:)(*(v10 + 40));
    v15 = *(v10 + 32);
    sub_1000052DC();
    v18 = ~v17;
    while (1)
    {
      v19 = v16 & v18;
      if (((*(v10 + 56 + (((v16 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v18)) & 1) == 0)
      {
        v25 = *v7;
        swift_isUniquelyReferenced_nonNull_native();
        v32 = *v7;
        v26 = a2;
        sub_10002480C();
        *v7 = v32;
        *a1 = v26;
        return 1;
      }

      v20 = *(*(v10 + 48) + 8 * v19);
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        break;
      }

      v16 = v19 + 1;
    }

    v27 = *(*(v10 + 48) + 8 * v19);
    *a1 = v27;
    v28 = v27;
    return 0;
  }

  return result;
}

void sub_10002480C()
{
  sub_10000D698();
  v3 = v2;
  sub_10039C3E8();
  if (!(!v8 & v7) || (v4 & 1) == 0)
  {
    if (v4)
    {
      sub_10000BA78(v5);
      sub_100397DE8();
      goto LABEL_9;
    }

    if (v6 <= v5)
    {
      sub_10000BA78(v5);
      sub_100024934();
LABEL_9:
      v9 = *v1;
      NSObject._rawHashValue(seed:)(*(*v1 + 40));
      v10 = *(v9 + 32);
      sub_1000052DC();
      v13 = ~v12;
      while (1)
      {
        v3 = v11 & v13;
        if (((*(v9 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v13)) & 1) == 0)
        {
          goto LABEL_13;
        }

        v14 = sub_100008AB0();
        sub_100006AF0(v14, v15, v16);
        v17 = *(*(v9 + 48) + 8 * v3);
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          goto LABEL_16;
        }

        v11 = v3 + 1;
      }
    }

    sub_1003993FC();
  }

LABEL_13:
  sub_10039C3D4(*v1);
  *(v20 + 8 * v3) = v0;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
    sub_100006048();
  }
}

void sub_100024934()
{
  sub_10000D698();
  sub_10000FE58(v2, v3, v4);
  sub_10001140C();
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v1 + 16))
  {
    v27 = v0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v1 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        sub_10039C410();
LABEL_12:
        v17 = *(v6 + 40);
        v18 = *(*(v1 + 48) + 8 * (v13 | (v7 << 6)));
        v19 = NSObject._rawHashValue(seed:)(v17) & ~(-1 << *(v6 + 32));
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        sub_10000FE84();
LABEL_22:
        sub_100007DC0();
        *(v12 + v24) |= v25;
        *(*(v6 + 48) + 8 * v26) = v18;
        sub_10003FB9C();
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      sub_10000E7C0();
      while (1)
      {
        sub_100007A0C();
        if (v23)
        {
          if (v21)
          {
            break;
          }
        }

        if (v20 == v22)
        {
          v20 = 0;
        }

        if (*(v12 + 8 * v20) != -1)
        {
          sub_10000A950();
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v0 = v27;
          goto LABEL_26;
        }

        ++v14;
        if (*(v1 + 56 + 8 * v7))
        {
          sub_100007C8C();
          v10 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_26:
    *v0 = v6;
    sub_100006048();
  }
}

unint64_t sub_100024C98()
{
  result = qword_1006A5980;
  if (!qword_1006A5980)
  {
    sub_10026DCB4(&unk_1006A7C20, &qword_1005834D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5980);
  }

  return result;
}

uint64_t sub_100024CFC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10000A90C(a1, a2, a3);
  if (v4)
  {
    v5 = sub_1000076E4();
  }

  else
  {
    sub_100008B14();
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v5;
  return sub_100018FB8();
}

unint64_t sub_100024D54(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_100024E08()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_100024E70(v2, v3);
}

uint64_t sub_100024E70(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v5 screenTimeCallFilter:a1 didChangeAllowed:a2 & 1 forCallUUID:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100024F0C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

BOOL sub_100025AD4(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = [(TUCall *)v2 status]== 2 || [(TUCall *)v2 status]== 1 || [(TUCall *)v2 status]== 3;

  return v3;
}

uint64_t sub_100025BB8(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

uint64_t sub_100025BE0()
{
  v2 = v0[42];
  v1 = v0[43];
  result = v0[37];
  v4 = v0[31];
  return result;
}

id sub_100025BF0@<X0>(uint64_t a1@<X8>)
{

  return sub_10031E958(0xD000000000000011, ((a1 - 32) | 0x8000000000000000));
}

void sub_100025C10()
{
  *(v1 + 136) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void sub_100025C30(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, os_log_t log, os_log_type_t a22)
{

  _os_log_impl(a1, log, a22, a4, v22, 0x2Au);
}

uint64_t sub_100025C60(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100021E24();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_10000C5FC(v3);
  return v2;
}

void sub_100025CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000D698();
  v13 = v12;
  v15 = v14;
  sub_1000113F0();
  sub_100021E24();
  if (v16)
  {
    sub_10000FAAC();
    sub_100018288();
    sub_10000EAB8();
    sub_100006BE4();
    v17 = *(a10 + 48);
    v18 = type metadata accessor for UUID();
    sub_100008070(v18);
    (*(v19 + 8))(v17 + *(v19 + 72) * v11, v18);
    v20 = *(*(a10 + 56) + 8 * v11);
    sub_100006AF0(0, v15, v13);
    sub_1000085E4();
    sub_100033024(v21, v22);
    sub_10000609C();
    sub_100009F18();
    _NativeDictionary._delete(at:)();
    *v10 = a10;
  }

  sub_100006048();
}

void sub_100025DBC()
{
  sub_100005EF4();
  v20 = v2;
  v19 = v3;
  v5 = v4;
  v7 = v6(0);
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  sub_10001C9C4();
  v14 = *(v0 + 32);
  sub_1000052DC();
  v16 = ~v15;
  for (i = v5 & ~v15; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v16)
  {
    (*(v10 + 16))(v1, *(v0 + 48) + *(v10 + 72) * i, v7);
    sub_10000EDB0(v19, v20);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v1, v7);
    if (v18)
    {
      break;
    }
  }

  sub_100005EDC();
}

void *sub_100025F58(void *a1)
{
  if ([a1 isConversation])
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 activeConversationForCall:a1];

    if (v3)
    {
      v4 = [v3 activeRemoteParticipants];
      sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10045DB80(v5);
      v7 = v6;

      if (v7[2])
      {
LABEL_6:

        return v7;
      }
    }

    v8 = [a1 remoteParticipantHandles];
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10045D880(v9);
    v7 = v10;

    goto LABEL_6;
  }

  v11 = [a1 handle];
  if (v11)
  {
    v12 = v11;
    v13 = sub_10001E1D4();
    v15 = v14;
  }

  else
  {
    if (qword_1006A0C50 != -1)
    {
      sub_10000AB54();
    }

    v13 = qword_1006AC3A0;
    v15 = *algn_1006AC3A8;
  }

  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  sub_100008BA8();
  v7 = swift_allocObject();
  *(v7 + 1) = xmmword_10057D690;
  v7[4] = v13;
  v7[5] = v15;
  return v7;
}

void sub_1000261C8()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = sub_100006884();

  sub_100022234(v3, v4, v5, v6);
}

uint64_t sub_10002625C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000268BC(uint64_t result)
{
  if (result >= 0xA)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100026924(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

id sub_100026974(uint64_t a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  if (*(a1 + 16) != 3)
  {

    return 0;
  }

  sub_1003F68CC(1);
  v3 = sub_1003EF398(0xD000000000000020, 0x8000000100575070);

  return v3;
}

Swift::Void __swiftcall ConversationCallCoordinationManager.handleCallChanged(call:)(CSDCall *call)
{
  v2 = v1;
  v4 = *(v1 + 24);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v5[5] = call;

  v6 = call;
  _s14CopresenceCore16OperationManagerC7performyyyyYaYbYAcF();
}

uint64_t sub_100026BA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100026BEC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) handle];
    v6 = TUCopyIDSCanonicalAddressForHandle();
    v7 = [NSNumber numberWithInteger:a2];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "faceTimeIDSStatus for destinationID: %@ is: %@", &v8, 0x16u);
  }

  if (a2 <= 2)
  {
    [*(a1 + 32) setFaceTimeIDStatus:dword_10057A200[a2]];
  }
}

BOOL sub_100026DA4()
{
  v1 = *sub_100009B14((v0 + OBJC_IVAR___CSDProtectedAppsUtilities_protectedAppsObserver), *(v0 + OBJC_IVAR___CSDProtectedAppsUtilities_protectedAppsObserver + 24));
  sub_100026E38();
  v2 = sub_100013094();

  return v2;
}

void sub_100026E38()
{
  v0 = [objc_opt_self() hiddenApplications];
  type metadata accessor for APApplication();
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = sub_10000B6F4(v1);
  if (!v2)
  {
LABEL_10:

    sub_100006048();
    return;
  }

  v3 = v2;
  sub_100008804(v2);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 bundleIdentifier];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_10039A2E0(v11 > 1, v12 + 1, 1);
      }

      ++v4;
      *(v14 + 16) = v12 + 1;
      v13 = v14 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
}

BOOL sub_1000271D8()
{
  if ([*(v0 + OBJC_IVAR___CSDProtectedAppsUtilities_tuFeatureFlags) appProtectionEnabled])
  {
    sub_100006884();
    if (sub_100026DA4() && (sub_100006884(), (sub_1003B5D30() & 1) == 0))
    {
      v3 = *(v0 + OBJC_IVAR___CSDProtectedAppsUtilities_providerObserver);
      v4 = sub_1003B5F30();
      v5 = sub_100006884();
      v7 = sub_1004226B4(v5, v6, v4);

      v1 = !v7;
    }

    else
    {
      v1 = 0;
    }

    sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);

    v8 = static OS_os_log.default.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v10 = 67109378;
      *(v10 + 4) = v1;
      *(v10 + 8) = 2080;
      v11 = sub_100006884();
      *(v10 + 10) = sub_10002741C(v11, v12, v13);
      _os_log_impl(&_mh_execute_header, v8, v9, "ProtectedAppsUtilities: shouldBlockCall returning %{BOOL}d for originating call app of Bundle Identifier [%s]. We should block a call only if the originating app is hidden and not foregrounded.", v10, 0x12u);
      sub_100009B7C(v15);
    }
  }

  else
  {
    sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
    v2 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  return v1;
}

uint64_t sub_10002741C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_100007BBC();
  v9 = sub_1000274DC(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_100006A94(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_100009B7C(v14);
  return v10;
}

unint64_t sub_1000274DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10004D26C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1000275DC()
{
  sub_10000C698();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100008A48(v5);
  *v6 = v7;
  v6[1] = sub_100035FE0;
  sub_100007624();

  return sub_10003D384();
}

uint64_t sub_100027698()
{

  return swift_beginAccess();
}

uint64_t sub_1000276D0()
{

  return UUID.init(uuidString:)();
}

uint64_t sub_1000276EC()
{
  v3 = *(v0 + 56);
  result = *(v3 + 8 * v1);
  *(v3 + 8 * v1) = *(v2 - 88);
  return result;
}

uint64_t sub_100027704()
{
}

void sub_100027748(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100027768()
{
  sub_100006810();
  v1[29] = v2;
  v1[30] = v0;
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v3);
  v5 = *(v4 + 64);
  v1[31] = sub_100005E9C();
  v6 = type metadata accessor for UUID();
  v1[32] = v6;
  sub_100005EB4(v6);
  v1[33] = v7;
  v9 = *(v8 + 64);
  v1[34] = sub_100015418();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  sub_10003D434(v10, v11, v12);
  sub_10034B558();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  v1[40] = v13;
  v1[41] = v14;
  v15 = sub_100286804();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100027954(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v8 = type metadata accessor for Notification();
  v9 = sub_100007FEC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9, v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = a1;
  sub_100027A50(v16, a4, a5);

  return (*(v11 + 8))(v16, v8);
}

void sub_100027A50(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = type metadata accessor for Notification();
  v6 = sub_100007FEC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  Notification.object.getter();
  if (!v29)
  {
    sub_10004975C(v28);
    goto LABEL_10;
  }

  sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (qword_1006A0AA0 != -1)
    {
      sub_100008134();
    }

    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v21 = swift_allocObject();
    v22 = sub_10000A680(v21, xmmword_10057D690);
    v23(v22);
    v24 = String.init<A>(reflecting:)();
    v26 = v25;
    v21[3].n128_u64[1] = &type metadata for String;
    v21[4].n128_u64[0] = sub_100009D88();
    v21[2].n128_u64[0] = v24;
    v21[2].n128_u64[1] = v26;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    goto LABEL_13;
  }

  if (*a2 != -1)
  {
    swift_once();
  }

  v10 = *a3;
  v11 = Notification.name.getter();
  v12 = sub_100027DE0(v11, v10);
  v14 = v13;

  if (v14)
  {
    if (qword_1006A0AA0 != -1)
    {
      sub_100008134();
    }

    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v15 = swift_allocObject();
    v16 = sub_10000A680(v15, xmmword_10057D690);
    v17(v16);
    v18 = String.init<A>(reflecting:)();
    v20 = v19;
    v15[3].n128_u64[1] = &type metadata for String;
    v15[4].n128_u64[0] = sub_100009D88();
    v15[2].n128_u64[0] = v18;
    v15[2].n128_u64[1] = v20;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

LABEL_13:

    return;
  }

  sub_100027FF8(v27, v12);
}

unint64_t sub_100027D50(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  sub_1000112D0();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100027F00(a1, v4);
}

uint64_t sub_100027DE0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_100027D50(a1);
  if (v3)
  {
    return sub_100018F28(v2);
  }

  else
  {
    return 0;
  }
}

id sub_100027E4C(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t sub_100027E68()
{
  v2 = *(v0 - 296);

  return sub_100022DDC();
}

unint64_t sub_100027F00(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
    {

      return i;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

void *sub_100027FF8(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector:"callCenterObserver:callChanged:"])
    {
      [v6 callCenterObserver:v2 callChanged:a1];
    }

    else if ([v6 respondsToSelector:"callsChangedForCallCenterObserver:"])
    {
      [v6 callsChangedForCallCenterObserver:v2];
    }

    result = swift_unknownObjectRelease();
  }

  v7 = *(v2 + OBJC_IVAR___CSDCallCenterObserver_callChanged);
  if (v7)
  {
    v8 = *(v2 + OBJC_IVAR___CSDCallCenterObserver_callChanged + 8);

    v7(a1, a2);

    return sub_1000051F8(v7);
  }

  return result;
}

void sub_100028100(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_10002817C(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if ([a1 isEmergency] && objc_msgSend(a1, "status") == 6)
    {
      v16 = *&v15[OBJC_IVAR___CSDEmergencyCallbackCapabilities_queue];
      static DispatchQoS.default.getter();
      static DispatchWorkItemFlags.barrier.getter();
      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      aBlock[4] = sub_1002A7158;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004CEC;
      aBlock[3] = &unk_100623060;
      v18 = _Block_copy(aBlock);
      v19 = v15;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v18);
      (*(v3 + 8))(v7, v2);
      (*(v9 + 8))(v13, v8);
    }

    else
    {
    }
  }
}

uint64_t sub_100028408()
{
  v1 = sub_100008184();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000285D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000285E8(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_100028614(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028624(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028634(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028644(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028654(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028664(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028674(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028684(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028694(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000286A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000286B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000286C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000286D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000286E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000286F4(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_100028720(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028730(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028740(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028750(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028760(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000288B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000288C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[9])
  {
    v3 = [v2 _devicesArrayHasPairedDevice];
    v2 = *(a1 + 32);
    if (v3)
    {
      [v2 _update];
      v2 = *(a1 + 32);
    }
  }

  v4 = v2[9];
  v5 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v5, v4);
}

void sub_10002CD00()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100007FEC(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  sub_10000A330();
  v28 = type metadata accessor for DispatchQoS();
  v12 = sub_100007FEC(v28);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  sub_10000E4F4();
  v27 = *&v0[OBJC_IVAR___CSDRouteController_queue];
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  *(v16 + 24) = v6;
  v29[4] = v4;
  v29[5] = v16;
  sub_100009FE4();
  v29[1] = 1107296256;
  sub_10000A600();
  v29[2] = v17;
  v29[3] = v2;
  v18 = _Block_copy(v29);
  v19 = v0;

  static DispatchQoS.unspecified.getter();
  sub_10000A814();
  sub_10000EE88(v20, v21);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v22, &unk_1006A2960, &unk_10057D6E0);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  v23 = sub_100015A08();
  v24(v23);
  v25 = sub_100007C7C();
  v26(v25);

  sub_100005EDC();
}

uint64_t sub_10002D004()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sub_10002D20C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_10002D06C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  v4 = [*(a2 + 24) currentAudioAndVideoCalls];
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_10000B6F4(v5);
  v7 = 0;
  v18 = &_swiftEmptySetSingleton;
  while (1)
  {
    if (v6 == v7)
    {

      *a1 = v18;
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v10 = sub_100021AEC([v8 provider]);
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      sub_10026D814(&qword_1006A4760, &unk_10057EA60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057D690;
      *(inited + 32) = v12;
      *(inited + 40) = v13;
      v15 = sub_10001E78C(inited);
      sub_10002D228(v15);
      v18 = v16;
    }

    ++v7;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_10002D228(uint64_t a1)
{
  v2 = 0;
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = *(a1 + 32);
  sub_100007990();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  if ((v7 & v6) != 0)
  {
    do
    {
      v11 = v2;
LABEL_7:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];

      sub_1000083D0();
      sub_10001E84C();
    }

    while (v8);
  }

  while (1)
  {
    v11 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v8 = *(v4 + 8 * v11);
    ++v2;
    if (v8)
    {
      v2 = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_10002D314(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10026D814(&unk_1006A7A40, &unk_100583390);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_10002D550(uint64_t a1, uint64_t a2)
{
  sub_1000192A8();
  v4 = v3;
  sub_10002D5B0(a2);
}

void sub_10002D5B0(uint64_t a1)
{
  v2 = sub_10000B6F4(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if ([v4 status] == 6)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }
  }

  v7 = sub_10000B6F4(_swiftEmptyArrayStorage);

  sub_10003EE24(v7 != 0);
}

void sub_10002D6F8(uint64_t a1, id a2)
{
  v2 = OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession;
  v3 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession);
  if (v3)
  {
    v6 = v3;
    v7 = [v6 configuration];
    if (v7)
    {
      v23 = v7;
      v8 = [v7 mode];
      sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
      v9 = static OS_os_log.default.getter();
      v10 = static os_log_type_t.default.getter();
      v11 = os_log_type_enabled(v9, v10);
      if (v8 != a2)
      {
        if (v11)
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v24 = v18;
          *v17 = 136315138;
          type metadata accessor for IRConfigurationUpdateMode(0);
          v19 = String.init<A>(reflecting:)();
          v21 = sub_10002741C(v19, v20, &v24);

          *(v17 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v9, v10, "Setting IRSession mode to %s", v17, 0xCu);
          sub_100009B7C(v18);
        }

        [v23 setMode:a2];
        v22 = *(a1 + v2);
        if (!v22)
        {
          goto LABEL_13;
        }

        v9 = v22;
        [v9 runWithConfiguration:v23];
LABEL_12:

LABEL_13:
        return;
      }

      if (v11)
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v24 = v13;
        *v12 = 136315138;
        type metadata accessor for IRConfigurationUpdateMode(0);
        v14 = String.init<A>(reflecting:)();
        v16 = sub_10002741C(v14, v15, &v24);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v9, v10, "IRSession mode is already %s", v12, 0xCu);
        sub_100009B7C(v13);

        goto LABEL_12;
      }
    }

    else
    {
      sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
      v23 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }
  }

  else
  {
    sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
    v23 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

void sub_10002DA78(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_10002DB0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_msgSend(*(Strong + qword_1006A4D48) "callContainer")];
    swift_unknownObjectRelease();
    if (v2)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = v2;
      }
    }

    else
    {
      v3 = 0;
    }

    sub_10002DBE8(v3);
  }
}

uint64_t sub_10002DBE8(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 relayClientTransport];
  if (a1)
  {
    v14 = a1;
    if ([v14 isHostedOnCurrentDevice] && objc_msgSend(v14, "hasRelaySupport:", 2))
    {
      v15 = [v14 provider];
      v16 = [v15 isSystemProvider];
    }

    else
    {
      v16 = 0;
    }

    v17 = [v14 needsConversationOrVideoRelaySupport];
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v18 = *&v1[qword_1006A4D40];
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  *(v19 + 24) = v16;
  *(v19 + 25) = v17;
  *(v19 + 32) = v13;
  aBlock[4] = sub_10003F8AC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062C8D8;
  v20 = _Block_copy(aBlock);
  v21 = v1;
  v22 = v13;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v26 + 8))(v7, v3);
  (*(v24 + 8))(v12, v25);
}

uint64_t sub_10002DF84()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10002E090()
{
  sub_100005EF4();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS();
  v12 = sub_100007FEC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007FDC();
  v20 = v19 - v18;
  if (sub_10002E324())
  {
    sub_100005EDC();
  }

  else
  {
    v29 = *&v0[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue];
    v23 = swift_allocObject();
    *(v23 + 16) = v0;
    v30[4] = sub_10003F8F0;
    v30[5] = v23;
    sub_100009FE4();
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v30[2] = v24;
    v30[3] = &unk_10062E470;
    v25 = _Block_copy(v30);
    v26 = v0;
    static DispatchQoS.unspecified.getter();
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10000826C();
    sub_10001000C(v27, v28, &unk_10057D6E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);
    (*(v4 + 8))(v10, v1);
    (*(v14 + 8))(v20, v11);

    sub_100005EDC();
  }
}

uint64_t sub_10002E2EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E324()
{
  type metadata accessor for AudioResolver();
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callCenterObserver);
  result = sub_10001321C(v1, *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_ttyProviderObserver), 0, 2);
  if (!result)
  {
    v3 = [objc_msgSend(v1 "callContainer")];
    swift_unknownObjectRelease();
    if (v3 || (v3 = [objc_msgSend(v1 "callContainer")], swift_unknownObjectRelease(), v3))
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for AudioResolver()
{
  result = qword_1006A9D00;
  if (!qword_1006A9D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002E470(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  LOBYTE(v2) = v3();

  return v2 & 1;
}

uint64_t sub_10002E4BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_10002E4E8(void *a1, uint64_t (*a2)(uint64_t))
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = a2(v5);

    return v7 & 1;
  }

  else
  {
    _StringGuts.grow(_:)(25);

    v9 = [a1 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10002E66C(void *a1)
{
  v2 = [a1 provider];
  v3 = [v2 isSystemProvider];

  if (v3 && [a1 status] == 1)
  {
    result = [a1 isConnecting];
    if (!result)
    {
      return result;
    }

    if (([a1 isConnected] & 1) == 0)
    {
      return [a1 isVideo];
    }
  }

  return 0;
}

id sub_10002E71C(void *a1)
{
  v2 = [a1 provider];
  v3 = [v2 isSystemProvider];

  if (v3 && [a1 status] == 1)
  {
    result = [a1 isConnecting];
    if (!result)
    {
      return result;
    }

    if (([a1 isConnected] & 1) == 0)
    {
      return ([a1 isVideo] ^ 1);
    }
  }

  return 0;
}

id sub_10002E7D0(void *a1)
{
  if ([a1 status] != 1)
  {
    return 0;
  }

  result = [a1 isConnected];
  if (result)
  {
    return [a1 isVideo];
  }

  return result;
}

id sub_10002E830(void *a1)
{
  if ([a1 status] != 1)
  {
    return 0;
  }

  result = [a1 isConnected];
  if (result)
  {
    return ([a1 isVideo] ^ 1);
  }

  return result;
}

id sub_10002E894(void *a1)
{
  if ([a1 status] == 3)
  {
    return [a1 hasStartedOutgoing];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002E8E0(void *a1)
{
  if ([a1 status] == 2)
  {
    return [a1 isPTT] ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002E930()
{
  v1 = [v0 smartHoldingSession];
  if (v1)
  {
    v2 = v1;
    if ([v1 state] == 3)
    {
      v3 = [v0 shouldSuppressRingtone];

      if ((v3 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  if ([v0 receptionistState] == 3 && (objc_msgSend(v0, "isScreening") & 1) != 0)
  {
    return 1;
  }

  v4 = [v0 provider];
  v5 = [v4 supportsCurrentPlatform];

  if (!v5)
  {
    return 0;
  }

  if ([v0 status] == 4)
  {
    return 1;
  }

  v7 = [v0 provider];
  v8 = [v7 isSystemProvider];

  if ((v8 & 1) != 0 || [v0 status] != 1)
  {
    return 0;
  }

  result = [v0 isConnecting];
  if (result)
  {
    return [v0 isConnected] ^ 1;
  }

  return result;
}

id sub_10002EAD0()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result deviceType];

    return (v2 != 7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10002EB7C()
{
  v1 = OBJC_IVAR___CSDRouteController_currentPickedRoute;
  if (!*(v0 + OBJC_IVAR___CSDRouteController_currentPickedRoute))
  {
    return;
  }

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 currentAudioAndVideoCalls];

  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_10000B6F4(v4);
  if (!v5)
  {

    return;
  }

  v6 = v5;
  v17 = v1;
  v7 = 0;
  v8 = 0;
LABEL_4:
  v18 = v7;
  v9 = v8;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v10 = *(v4 + 8 * v9 + 32);
    }

    v11 = v10;
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v12 = [v10 isActive];

    if (v12)
    {
      v7 = 1;
      if (v8 != v6)
      {
        goto LABEL_4;
      }

      v13 = v17;
LABEL_16:
      sub_1000192A8();
      v15 = *(v0 + v13);
      if (v15)
      {
        v16 = v14;
        v19 = v15;
        sub_1003D5C40();

        return;
      }

LABEL_26:
      __break(1u);
      return;
    }

    ++v9;
  }

  while (v8 != v6);

  v13 = v17;
  if (v18)
  {
    goto LABEL_16;
  }
}

uint64_t sub_10002ED94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v24, v15);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v23[1] = *(result + OBJC_IVAR___CSDAnsweringMachineController_queue);
    sub_100009AB0(a4, v27);
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a1;
    v20[4] = a2;
    sub_10002F0C8(v27, (v20 + 5));
    aBlock[4] = sub_1000399EC;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_100626A18;
    v21 = _Block_copy(aBlock);
    v23[0] = v19;
    v22 = a1;
    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_10031699C(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v8 + 8))(v12, v7);
    (*(v13 + 8))(v17, v24);
  }

  return result;
}

uint64_t sub_10002F0C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10002F0E0()
{
  sub_100009B7C((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10002F13C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002F19C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

void sub_10002F1FC()
{
  v3 = v0;
  sub_10000691C();
  v4 = type metadata accessor for DispatchPredicate();
  v5 = sub_100007FEC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  sub_100007FDC();
  sub_10003DC14(v9);
  v10 = sub_10000F3CC();
  v11(v10);
  v12 = v2;
  _dispatchPreconditionTest(_:)();
  v13 = sub_100007A40();
  v14(v13);
  if ((v2 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if ([v0 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40[0] = v38;
  v40[1] = v39;
  if (!*(&v39 + 1))
  {
    sub_1000099A4(v40, &unk_1006A2D10, &unk_10057D940);
    return;
  }

  sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  if (swift_dynamicCast())
  {
    v4 = v37;
    v15 = v0[26];
    if (!v15)
    {
LABEL_34:

      return;
    }

    v16 = *&v15[OBJC_IVAR___CSDAudioCallRecordingSession_callUUID];
    v17 = *&v15[OBJC_IVAR___CSDAudioCallRecordingSession_callUUID + 8];
    v1 = v15;

    v4 = v37;
    v18 = [v4 uniqueProxyIdentifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v16 == v19 && v17 == v21)
    {
      v23 = 1;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v24 = [v4 status] == 2 || objc_msgSend(v4, "status") == 1 || objc_msgSend(v4, "status") == 3;
    v25 = [v4 recordingSession];
    if (!v25 || (v25, ([v4 isRecordingAllowed] & 1) != 0))
    {
      if (!v24 || (v23 & 1) != 0)
      {

        goto LABEL_34;
      }

      if (qword_1006A0B40 != -1)
      {
        sub_1000080FC();
      }

      v32 = type metadata accessor for Logger();
      sub_1000075F0(v32, qword_1006BA640);
      v27 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();
      v31 = 2;
      if (!sub_10000BB44(v33))
      {
LABEL_33:

        v36 = [objc_allocWithZone(TUCallStopRecordingRequest) initWithCall:v4];
        sub_1003E4474(v36, v4, v31, v3);

        goto LABEL_34;
      }

      v34 = sub_100006DC4();
      sub_100018630(v34);
      sub_10000F9C8(&_mh_execute_header, v35, v33, "Ending call recording session because another call went active");
LABEL_31:
      sub_100005F64();
      goto LABEL_33;
    }

    if (qword_1006A0B40 == -1)
    {
LABEL_25:
      v26 = type metadata accessor for Logger();
      sub_1000075F0(v26, qword_1006BA640);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (!sub_10000BB44(v28))
      {
        v31 = 1;
        goto LABEL_33;
      }

      v29 = sub_100006DC4();
      sub_100018630(v29);
      sub_10000F9C8(&_mh_execute_header, v30, v28, "Ending call recording session because recording is no longer allowed based on the call properties");
      v31 = 1;
      goto LABEL_31;
    }

LABEL_37:
    sub_1000080FC();
    goto LABEL_25;
  }
}

uint64_t sub_10002F5E8()
{
  v2 = *(v0 + 40);

  return Hasher.init(_seed:)();
}

uint64_t sub_10002F608(float a1)
{
  *v3 = a1;
  *(v2 + 152) = v1;

  return swift_errorRetain();
}

id sub_10002F6B8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  v5 = *(v2 + 472);

  return objc_allocWithZone(v5);
}

uint64_t sub_10002F700()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10002F718()
{

  return sub_10003A1C8();
}

uint64_t sub_10002F744@<X0>(uint64_t a1@<X8>)
{
  result = v1 + a1;
  v3 = *(v1 + a1 + 24);
  return result;
}

uint64_t sub_10002F780(uint64_t a1, uint64_t a2)
{

  return sub_100285FC4(a1, a2, v2, v3);
}

void sub_10002F798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t))
{

  sub_10004FDE0(a1, 0xD000000000000010, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_10002F7B0()
{

  return swift_slowAlloc();
}

void sub_10002F834()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = sub_100007FEC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_10000E598();
  v10 = *(v2 + OBJC_IVAR___CSDCallTranslationController_queue);
  *v1 = v10;
  v11 = sub_10000D6F4();
  v12(v11);
  v13 = v10;
  _dispatchPreconditionTest(_:)();
  v14 = sub_100022CA0();
  v15(v14, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if ([v4 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34[0] = v32;
  v34[1] = v33;
  if (*(&v33 + 1))
  {
    sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
    if (sub_1000052B0())
    {
      v16 = *(v2 + OBJC_IVAR___CSDCallTranslationController_translationSession);
      if (v16)
      {
        v18 = *&v16[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_callUUID];
        v17 = *&v16[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_callUUID + 8];
        v1 = v16;

        v10 = v31;
        v19 = [v10 uniqueProxyIdentifier];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        if (v18 == v20 && v17 == v22)
        {
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v24 & 1) == 0)
          {

LABEL_19:
            sub_100033B54(v4);
LABEL_20:

            goto LABEL_21;
          }
        }

        v25 = [v10 status];

        if (v25 != 1 || sub_1002A41F0())
        {
          goto LABEL_19;
        }

        if (qword_1006A0B58 == -1)
        {
LABEL_23:
          v26 = type metadata accessor for Logger();
          sub_1000075F0(v26, qword_1006BA688);
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.info.getter();
          if (sub_10000689C(v28))
          {
            v29 = sub_100006DC4();
            sub_100018630(v29);
            sub_10000F9C8(&_mh_execute_header, v30, v4, "Start call translation for active call");
            sub_100005F40();
          }

          sub_1002A9A84(v10, v2);
          goto LABEL_20;
        }

LABEL_27:
        sub_1000081B4();
        goto LABEL_23;
      }
    }
  }

  else
  {
    sub_100009A04(v34, &unk_1006A2D10, &unk_10057D940);
  }

LABEL_21:
  sub_100005EDC();
}

uint64_t sub_10002FB44()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v17[1] = *(result + OBJC_IVAR___CSDAudioStateHandler_queue);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    aBlock[4] = sub_10003B3EC;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062CFA8;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    static DispatchQoS.unspecified.getter();
    v17[2] = _swiftEmptyArrayStorage;
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    (*(v1 + 8))(v5, v0);
    (*(v7 + 8))(v11, v6);
  }

  return result;
}

uint64_t sub_10002FDE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10003006C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100030AB8(void *a1, unsigned __int8 *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

BOOL sub_100030DD4(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = [(TUCall *)v2 smartHoldingSession];
  if (v3 && (v4 = v3, -[TUCall smartHoldingSession](v2, "smartHoldingSession"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 state], v5, v4, v6 == 3))
  {
    LOBYTE(v7) = 1;
  }

  else if ([(TUCall *)v2 status]== 4)
  {
    v7 = [(TUCall *)v2 shouldSuppressRingtone]^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

BOOL sub_1000311E4(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isVideo])
  {
    v3 = [(TUCall *)v2 status]== 3 || [(TUCall *)v2 status]== 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_100031248(id a1, TUCall *a2)
{
  v2 = a2;
  if (([(TUCall *)v2 isScreening]& 1) != 0 || ![(TUCall *)v2 isEndpointOnCurrentDevice]|| ([(TUCall *)v2 isRTT]& 1) != 0 || ([(TUCall *)v2 isTTY]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v5 = [(TUCall *)v2 provider];
    if ([v5 supportsCurrentPlatform])
    {
      v3 = [(TUCall *)v2 status]== 1 || [(TUCall *)v2 status]== 2 || [(TUCall *)v2 status]== 5 || [(TUCall *)v2 status]== 3;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_1000313D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100031608()
{
  if ([v0 status] != 6)
  {
    return 0;
  }

  [v0 callDuration];
  if (v1 <= 0.0 && ([v0 isOutgoing] & 1) == 0 && objc_msgSend(v0, "disconnectedReason") != 14)
  {
    return 0;
  }

  if ([v0 hasAudioFinished])
  {
    return 0;
  }

  v3 = [v0 provider];
  v2 = [v3 isSystemProvider];

  return v2;
}

void sub_1000316D0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___CSDPowerAssertionManager_routeController);
    if (v4)
    {
      v5 = [v4 pickedRoute];
      if (!v5)
      {
LABEL_13:
        v19 = *&v3[OBJC_IVAR___CSDPowerAssertionManager_releasePowerAssertionHandler];
        if (v19)
        {
          v20 = *&v3[OBJC_IVAR___CSDPowerAssertionManager_releasePowerAssertionHandler + 8];

          v19(v21);
          sub_1000051F8(v19);
        }

        v6 = v3;
        goto LABEL_16;
      }

      v6 = v5;
      if (![v5 isHomePodFamily])
      {
LABEL_12:

        goto LABEL_13;
      }

      v7 = *&v3[OBJC_IVAR___CSDPowerAssertionManager_callCenterObserver];
      if (!v7)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v8 = [v7 callContainer];
      aBlock[4] = sub_1002B7618;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002E470;
      aBlock[3] = &unk_1006239E0;
      v9 = _Block_copy(aBlock);

      v10 = [v8 callsPassingTest:v9];
      swift_unknownObjectRelease();
      _Block_release(v9);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v12 = sub_10000B6F4(v11);

        if (v12)
        {
          v13 = sub_100004778();
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_10057D690;
          *(v14 + 56) = sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
          *(v14 + 64) = sub_1002B79E8();
          *(v14 + 32) = a1;
          v15 = a1;
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          if (!*&v3[OBJC_IVAR___CSDPowerAssertionManager_powerAssertion])
          {
            v16 = *&v3[OBJC_IVAR___CSDPowerAssertionManager_acquirePowerAssertionHandler];
            if (v16)
            {
              v17 = *&v3[OBJC_IVAR___CSDPowerAssertionManager_acquirePowerAssertionHandler + 8];

              v16(v18);
              sub_1000051F8(v16);
            }
          }

LABEL_16:
          return;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

void sub_1000319E4(uint64_t a1)
{
  v2 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10057D690;
  v4 = OBJC_IVAR___CSDPowerAssertionManager_powerAssertion;
  v5 = *(a1 + OBJC_IVAR___CSDPowerAssertionManager_powerAssertion);
  v6 = v5;
  v7 = sub_100031B38(v5);
  v9 = v8;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100009D88();
  *(v3 + 32) = v7;
  *(v3 + 40) = v9;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v10 = *(a1 + v4);
  *(a1 + v4) = 0;
}

uint64_t sub_100031AEC(uint64_t a1)
{
  if (!a1)
  {
    return sub_1000359E0();
  }

  v2 = sub_100018620();
  sub_100006AF0(v2, v3, v4);
  v5 = v1;
  return String.init<A>(reflecting:)();
}

void sub_10003216C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Block_object_dispose((v33 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1000322E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100032304(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_100006AF0(0, &qword_1006A34B8, _LTLanguageStatusObservation_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4(v2);
}

void sub_10003238C(unint64_t a1, uint64_t a2, char **a3)
{
  if (qword_1006A0B58 != -1)
  {
LABEL_34:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000AF9C(v5, qword_1006BA688);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    v29 = a1;

    sub_10026D814(&qword_1006A34C0, &qword_10057E298);
    v10 = String.init<A>(describing:)();
    v12 = sub_10002741C(v10, v11, &v30);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "get observations: %s", v8, 0xCu);
    sub_100009B7C(v9);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a1)
    {
      v28 = a3;
      v29 = _swiftEmptyArrayStorage;
      v15 = sub_10000B6F4(a1);
      v16 = 0;
      a3 = &selRef_setWindowed_;
      while (v15 != v16)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v17 = *(a1 + 8 * v16 + 32);
        }

        v18 = v17;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if ([v17 status] == 2)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v19 = v29[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v16;
      }

      v20 = v29;
      v21 = sub_10000B6F4(v29);
      v22 = 0;
      a1 = 0;
      a3 = (v20 & 0xC000000000000001);
      while (v21 != v22)
      {
        if (a3)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= *(v20 + 16))
          {
            goto LABEL_33;
          }

          v23 = *(v20 + 8 * v22 + 32);
        }

        v24 = v23;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_32;
        }

        v29 = v23;
        sub_1002AB48C(&v29);

        ++v22;
      }

      a3 = v28;
    }

    swift_beginAccess();
    v25 = a3[2];
    if (v25)
    {
      v26 = v25;
      [v26 cancel];
    }

    swift_beginAccess();
    v27 = a3[2];
    a3[2] = 0;
  }
}

void sub_1000326FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got updated list of %zu language status", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001CA750;
  v8[3] = &unk_10061DD58;
  v8[4] = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v8];
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cancel languageStatusListener", buf, 2u);
  }

  [*(*(*(a1 + 40) + 8) + 40) cancel];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_100032D88()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for UUID();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  if (qword_1006A0AA0 != -1)
  {
    sub_100008134();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057D690;
  *&v28[0] = v2;
  sub_100006AF0(0, &qword_1006AC448, NSNotification_ptr);
  v14 = v2;
  v15 = String.init<A>(reflecting:)();
  v17 = v16;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100009D88();
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if ([v14 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28[0] = v26;
  v28[1] = v27;
  if (*(&v27 + 1))
  {
    sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
    if (swift_dynamicCast())
    {
      v18 = [v25 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = OBJC_IVAR___CSDScreenTimeCallFilter_contextsForCallIdentifier;
      sub_100005298();
      v20 = *(v0 + v19);

      v21 = sub_100025C58(v12, v20);

      v22 = *(v6 + 8);
      v23 = sub_100006884();
      v24(v23);
      if (v21)
      {

        sub_10002156C();
      }
    }
  }

  else
  {
    sub_10004975C(v28);
  }

  sub_100005EDC();
}

uint64_t sub_100033024(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100033108()
{
  sub_100005EF4();
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v24 = sub_100007CD8();
  v11 = sub_100007FEC(v24);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  sub_100007FDC();
  sub_10000C4C4();
  v23 = *&v0[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = v0;
  v25[4] = sub_100033798;
  v25[5] = v15;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v25[2] = v16;
  v25[3] = &unk_10062D6D0;
  v17 = _Block_copy(v25);

  v18 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v19, v20, &unk_10057D6E0);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v7 + 8))(v1, v4);
  v21 = sub_100007C7C();
  v22(v21);

  sub_100005EDC();
}

uint64_t sub_10003330C()
{
  v1 = *(v0 + 16);

  v2 = sub_1000081EC();

  return _swift_deallocObject(v2, v3, v4);
}

BOOL sub_100033378()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100033390()
{
  v2 = *(v0 - 96);

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_1000333DC(uint64_t a1, uint64_t a2)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057D690;
  *(v4 + 56) = sub_10026D814(&qword_1006A9978, &unk_100585908);
  *(v4 + 64) = sub_10001000C(&unk_1006A9980, &qword_1006A9978, &unk_100585908);
  *(v4 + 32) = a1;

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  *(a2 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_sessionFailureCount) = 0;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = sub_100023E48(v5, v6, a1);

  if (v7)
  {
    v8 = [v7 candidateResults];
    sub_100006AF0(0, &unk_1006A43A0, IRCandidateResult_ptr);
    sub_10000CE3C(&qword_1006A99A0, &unk_1006A43A0, IRCandidateResult_ptr);
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = sub_100033808(v9, a1);
    sub_1003D56C8(v10);
    v12 = v11;

    v13 = *(a2 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager__topOfListRoutesUniqueIdentifiers);
    *(a2 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager__topOfListRoutesUniqueIdentifiers) = v12;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10057D6A0;
  v15 = OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager__topOfListRoutesUniqueIdentifiers;
  v28 = *(a2 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager__topOfListRoutesUniqueIdentifiers);

  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  v16 = String.init<A>(reflecting:)();
  v18 = v17;
  *(v14 + 56) = &type metadata for String;
  v19 = sub_100009D88();
  *(v14 + 64) = v19;
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  v29 = *(*(a2 + v15) + 16);
  v20 = String.init<A>(reflecting:)();
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v19;
  *(v14 + 72) = v20;
  *(v14 + 80) = v21;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v22 = [*(a2 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_recommendationsObservers) allObjects];
  sub_10026D814(&unk_1006A9990, &qword_100585918);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_10000B6F4(v23);
  if (!result)
  {
  }

  v25 = result;
  if (result >= 1)
  {
    for (i = 0; i != v25; ++i)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v23 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v27 didUpdateRouteRecommendations];
      swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100033808(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = &_swiftEmptySetSingleton;

    __CocoaSet.makeIterator()();
    while (1)
    {
      while (1)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          swift_bridgeObjectRelease_n();

          return v4;
        }

        sub_100006AF0(0, &unk_1006A43A0, IRCandidateResult_ptr);
        swift_dynamicCast();
        if (qword_1006A0AA0 != -1)
        {
          swift_once();
        }

        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_10057D690;
        *(v5 + 56) = sub_10026D814(&qword_1006A9978, &unk_100585908);
        *(v5 + 64) = sub_10001000C(&unk_1006A9980, &qword_1006A9978, &unk_100585908);
        *(v5 + 32) = a2;

        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        if ([v16 classification] == 2 || objc_msgSend(v16, "classification") == 3 || objc_msgSend(v16, "classification") == 4)
        {
          break;
        }
      }

      if (*(&_swiftEmptySetSingleton + 3) <= *(&_swiftEmptySetSingleton + 2))
      {
        sub_100397C48();
      }

      v4 = &_swiftEmptySetSingleton;
      result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
      v7 = &_swiftEmptySetSingleton + 56;
      v8 = -1 << *(&_swiftEmptySetSingleton + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7)) == 0)
      {
        break;
      }

      v11 = __clz(__rbit64((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7))) | v9 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
      *&v7[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
      *(*(&_swiftEmptySetSingleton + 6) + 8 * v11) = v16;
      ++*(&_swiftEmptySetSingleton + 2);
    }

    v12 = 0;
    v13 = (63 - v8) >> 6;
    while (++v10 != v13 || (v12 & 1) == 0)
    {
      v14 = v10 == v13;
      if (v10 == v13)
      {
        v10 = 0;
      }

      v12 |= v14;
      v15 = *&v7[8 * v10];
      if (v15 != -1)
      {
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {

    v4 = sub_1003D7E4C(a1, a2);

    return v4;
  }

  return result;
}

void sub_100033B54(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = sub_100007FEC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_10000E598();
  v10 = *(v3 + OBJC_IVAR___CSDCallTranslationController_queue);
  *v2 = v10;
  v11 = sub_10000D6F4();
  v12(v11);
  v13 = v10;
  _dispatchPreconditionTest(_:)();
  v14 = sub_100022CA0();
  v15(v14, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40[0] = v38;
  v40[1] = v39;
  if (!*(&v39 + 1))
  {
    sub_100009A04(v40, &unk_1006A2D10, &unk_10057D940);
    return;
  }

  sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  if (swift_dynamicCast())
  {
    v5 = v37;
    v16 = *(v3 + OBJC_IVAR___CSDCallTranslationController_translationSession);
    if (!v16 || !sub_1002A41F0())
    {
      goto LABEL_34;
    }

    v18 = *&v16[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_callUUID];
    v17 = *&v16[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_callUUID + 8];
    v2 = v16;

    v5 = v37;
    v19 = [v5 uniqueProxyIdentifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (v18 == v20 && v17 == v22)
    {
      v24 = 1;
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v25 = [v5 status] == 2 || objc_msgSend(v5, "status") == 1 || objc_msgSend(v5, "status") == 3;
    v26 = [v5 translationSession];
    if (!v26 || (v26, [v5 translationAvailability] == 3))
    {
      if (!v25 || (v24 & 1) != 0)
      {

LABEL_34:
        return;
      }

      if (qword_1006A0B58 != -1)
      {
        sub_1000081B4();
      }

      v32 = type metadata accessor for Logger();
      sub_1000075F0(v32, qword_1006BA688);
      v28 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();
      if (sub_10000BB44(v33))
      {
        v34 = sub_100006DC4();
        sub_100018630(v34);
        sub_10000F9C8(&_mh_execute_header, v35, v33, "Ending call translation session because another call went active");
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (qword_1006A0B58 == -1)
    {
LABEL_26:
      v27 = type metadata accessor for Logger();
      sub_1000075F0(v27, qword_1006BA688);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();
      if (sub_10000BB44(v29))
      {
        v30 = sub_100006DC4();
        sub_100018630(v30);
        sub_10000F9C8(&_mh_execute_header, v31, v29, "Ending call translation session because translation is no longer allowed based on the call properties");
LABEL_32:
        sub_100005F40();
      }

LABEL_33:

      v36 = [objc_allocWithZone(TUCallTranslationStopRequest) initWithCall:v5];
      sub_1002ADC8C();

      goto LABEL_34;
    }

LABEL_37:
    sub_1000081B4();
    goto LABEL_26;
  }
}

void sub_100033FFC()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100007FEC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_10000A330();
  v26 = type metadata accessor for DispatchQoS();
  v10 = sub_100007FEC(v26);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  sub_10000E4F4();
  v25 = *&v0[OBJC_IVAR___CSDRouteController_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  v27[4] = v4;
  v27[5] = v14;
  sub_100009FE4();
  v27[1] = 1107296256;
  sub_10000A600();
  v27[2] = v15;
  v27[3] = v2;
  v16 = _Block_copy(v27);
  v17 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000A814();
  sub_10000EE88(v18, v19);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v20, &unk_1006A2960, &unk_10057D6E0);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  v21 = sub_100015A08();
  v22(v21);
  v23 = sub_100007C7C();
  v24(v23);

  sub_100005EDC();
}

void sub_100034200(void *a1)
{
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  v61 = v59;
  v62 = v60;
  if (!*(&v60 + 1))
  {
    sub_1000099A4(&v61, &unk_1006A2D10, &unk_10057D940);
    goto LABEL_22;
  }

  sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC();
    }

    v29 = type metadata accessor for Logger();
    sub_1000075F0(v29, qword_1006BA640);
    v3 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (sub_10000A648(v30))
    {
      v31 = sub_100006DC4();
      sub_100008944(v31);
      sub_100008A90(&_mh_execute_header, v32, v33, "No call is on media tokens changed notification");
      sub_100005F40();
    }

    goto LABEL_29;
  }

  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC();
  }

  v2 = type metadata accessor for Logger();
  sub_1000075F0(v2, qword_1006BA640);
  v3 = v58;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_100005274();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "handleMediaTokensChanged %@", v6, 0xCu);
    sub_1000099A4(v7, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100005F64();
  }

  v9 = v1[26];
  if (!v9)
  {
    v22 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (sub_10000689C(v34))
    {
      v35 = sub_100006DC4();
      sub_100017D04(v35);
      sub_10000A154();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      sub_100008AE8();
    }

    goto LABEL_28;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = v9;
  if (!Strong)
  {
LABEL_18:
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (sub_10000689C(v23))
    {
      v24 = sub_100006DC4();
      sub_10000D6E8(v24);
      sub_10000C1F8();
      sub_10000BAC8(v25, v26, v27, v28);
      sub_100006868();
    }

LABEL_28:
    goto LABEL_29;
  }

  v12 = [Strong uniqueProxyIdentifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v3 uniqueProxyIdentifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v13 == v17 && v15 == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {

      goto LABEL_18;
    }
  }

  v41 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  swift_beginAccess();
  if (v41[v11] - 2 > 5)
  {
    v49 = *sub_100009B14(v1 + 9, v1[12]);
    sub_1004074AC(v11, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, *(&v59 + 1), v60, *(&v60 + 1), v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64);

    v3 = Strong;
  }

  else
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (sub_10000689C(v43))
    {
      v44 = sub_100006DC4();
      sub_100018630(v44);
      sub_10000C1F8();
      _os_log_impl(v45, v46, v47, v48, v41, 2u);
      sub_100005F64();
    }
  }

LABEL_29:
}

uint64_t sub_100034668()
{
  v295 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = [*(v0 + 232) callUUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10034B594();
  sub_1000276D0();

  sub_10000EA40();
  if (v4)
  {
    sub_1000099A4(*(v0 + 248), &unk_1006A3DD0, &unk_10057C9D0);
    goto LABEL_52;
  }

  v5 = *(v0 + 240);
  v6 = *(v0 + 232);
  (*(*(v0 + 264) + 32))(*(v0 + 312), *(v0 + 248), *(v0 + 256));
  sub_100005298();
  v7 = *(v5 + 112);

  v8 = sub_100005ED0();
  v10 = sub_1000357C8(v8, v9);

  v11 = [v6 status];
  v12 = [v6 isEndpointOnCurrentDevice];
  v13 = [v6 isHostedOnCurrentDevice];
  v14 = [v6 isConferenced];
  v15 = [v6 isScreening];
  v16 = v10 & 0xFF00000000;
  if ((v10 & 0xFF00000000) == 0x200000000)
  {
    v17 = 0x100000000000000;
    if (!v15)
    {
      v17 = 0;
    }

    v18 = 0x1000000000000;
    if (!v14)
    {
      v18 = 0;
    }

    v19 = 0x10000000000;
    if (!v13)
    {
      v19 = 0;
    }

    v20 = &_mh_execute_header;
    if (!v12)
    {
      v20 = 0;
    }

    v21 = v20 | v11 | v19 | v18 | v17;
  }

  else
  {
    v22 = 0x100000000000000;
    if (!v15)
    {
      v22 = 0;
    }

    v23 = 0x1000000000000;
    if (!v14)
    {
      v23 = 0;
    }

    v24 = 0x10000000000;
    if (!v13)
    {
      v24 = 0;
    }

    v25 = &_mh_execute_header;
    if (!v12)
    {
      v25 = 0;
    }

    v21 = v25 | v11 | v24 | v23 | v22;
    if (sub_100049F58(v10 & 0x1010101FFFFFFFFLL, v21))
    {
      if (qword_1006A0B78 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 232);
      v27 = type metadata accessor for Logger();
      sub_1000075F0(v27, qword_1006BA6E8);
      v28 = v26;
      v29 = Logger.logObject.getter();
      LOBYTE(v26) = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v26))
      {
        v30 = *(v0 + 232);
        v31 = sub_100005274();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v30;
        *v32 = v30;
        v33 = v30;
        sub_10000B940(&_mh_execute_header, v34, v35, "[CSDConversationCallCoordinationManager] Call status did not update: %@");
        sub_1000099A4(v32, &unk_1006A2630, &qword_10057CB40);
        sub_100006868();
        sub_100005F40();
      }

      v36 = *(v0 + 312);
      v37 = *(v0 + 256);
      v38 = *(v0 + 264);

      goto LABEL_36;
    }
  }

  LODWORD(v288) = v14;
  v39 = v12;
  v40 = *(v0 + 312);
  v41 = *(v0 + 240);
  sub_100008D34();
  v42 = *(v5 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  v294 = *(v5 + 112);
  sub_100035868();
  *(v5 + 112) = v294;
  swift_endAccess();
  sub_100005298();
  v291 = v41;
  v43 = *(v41 + 120);

  sub_100035F94(v40, v43);
  v45 = v44;

  if (v45 != 4)
  {
    v75 = *(v0 + 312);
    v76 = *(v0 + 256);
    v38 = *(v0 + 264);
    v77 = sub_100006B3C();
    sub_10034B1A8(v77, v78);
LABEL_36:
    v79 = *(v38 + 8);
    v80 = sub_100007624();
    v81(v80);
    goto LABEL_52;
  }

  if (![*(*(v0 + 240) + 88) sharePlayTelephonyEnabled])
  {
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8();
    }

    v82 = *(v0 + 312);
    v84 = *(v0 + 264);
    v83 = *(v0 + 272);
    v85 = *(v0 + 256);
    v86 = type metadata accessor for Logger();
    sub_10000AF9C(v86, qword_1006A6290);
    v87 = sub_10000F6DC();
    v88(v87);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    v91 = sub_10000BA5C(v90);
    v93 = *(v0 + 264);
    v92 = *(v0 + 272);
    v94 = *(v0 + 256);
    if (v91)
    {
      sub_100005274();
      sub_10000681C();
      sub_100035788();
      *v10 = 136315138;
      sub_1000084F8();
      sub_10003D434(v95, 255, v96);
      sub_10000D35C();
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10000C130();
      v98 = *(v93 + 8);
      v97 = (v93 + 8);
      v99 = sub_10001721C();
      v100 = v98(v99);
      sub_100006E04(v100, v101, v102, v103, v104, v105, v106, v107);
      sub_10000C3CC();
      *(v10 + 4) = v92;
      sub_100017D70(&_mh_execute_header, v108, v109, "[CSDConversationCallCoordinationManager] Ignoring call due to server-bag disablement, callUUID: %s", v110, v111, v112, v113, v271, v273, v276, v278, v281, v284, v85);
      sub_10000E764();
      sub_100006868();

LABEL_49:
      sub_100005320(v114, v115, v116, v117, v118, v119, v120, v121, v271, v273, v276, v278, v281, v284, v288, v291);
      sub_100008D34();
      v160 = *(v10 + 120);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100035B28();
      sub_100379BB4();
      sub_100017EC0(v161, v162, v163, v164, v165, v166, v167, v168, v272, v274, v277, v279, v282, v285, v289, v292, v294);
      swift_endAccess();
      v169 = sub_100007624();
      v97(v169);
      goto LABEL_52;
    }

LABEL_48:

    v158 = *(v93 + 8);
    v159 = sub_10001721C();
    v114 = v158(v159);
    v97 = v158;
    goto LABEL_49;
  }

  v46 = [*(v0 + 232) provider];
  v47 = [v46 isFaceTimeProvider];

  if (v47)
  {
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8();
    }

    v48 = *(v0 + 304);
    v49 = *(v0 + 312);
    v50 = *(v0 + 256);
    v51 = *(v0 + 264);
    v52 = type metadata accessor for Logger();
    sub_10000AF9C(v52, qword_1006A6290);
    v53 = sub_10000F6DC();
    v54(v53);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    v57 = sub_10000BA5C(v56);
    v58 = *(v0 + 304);
    v59 = *(v0 + 256);
    v60 = *(v0 + 264);
    if (v57)
    {
      sub_100005274();
      sub_10000681C();
      sub_100035788();
      *v10 = 136315138;
      sub_1000084F8();
      sub_10003D434(v61, 255, v62);
      sub_10000D35C();
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v66 = *(v60 + 8);
      v67 = sub_100006B3C();
      v66(v67);
      v68 = sub_10002741C(v63, v65, &v294);

      *(v10 + 4) = v68;
      sub_100017D70(&_mh_execute_header, v69, v70, "[CSDConversationCallCoordinationManager] Ignoring FaceTime call, callUUID: %s", v71, v72, v73, v74, v271, v273, v276, v278, v281, v284, v50);
      sub_10000E764();
      sub_100006868();
    }

    else
    {

      v66 = *(v60 + 8);
      v170 = sub_100006B3C();
      v66(v170);
    }

    v171 = *(v0 + 312);
    v172 = *(v0 + 256);
    v173 = [*(v0 + 232) provider];
    v174 = [v173 identifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008D34();
    v175 = *(v291 + 120);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100035B28();
    sub_100379BB4();
    sub_100017EC0(v176, v177, v178, v179, v180, v181, v182, v183, v271, v273, v276, v278, v281, v284, v288, v291, v294);
    swift_endAccess();
    (v66)(v171, v172);
LABEL_52:
    sub_100035E24();

    sub_100009EF4();
    sub_10000C638();

    __asm { BRAA            X1, X16 }
  }

  v122 = [objc_opt_self() sharedInstance];
  if (!v122)
  {
    __break(1u);
    return _swift_task_switch(v122, v123, v124);
  }

  v125 = v122;
  v126 = *(v0 + 232);
  v127 = [v122 deviceType];

  v128 = v39;
  if ([v126 isHostedOnCurrentDevice] && v127 != 2)
  {
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8();
    }

    v129 = *(v0 + 312);
    v130 = *(v0 + 296);
    v131 = *(v0 + 256);
    v132 = *(v0 + 264);
    v133 = type metadata accessor for Logger();
    sub_10000AF9C(v133, qword_1006A6290);
    v134 = sub_10000F6DC();
    v135(v134);
    v89 = Logger.logObject.getter();
    v136 = static os_log_type_t.default.getter();
    v137 = sub_10000BA5C(v136);
    v138 = *(v0 + 296);
    v139 = *(v0 + 256);
    v93 = *(v0 + 264);
    if (v137)
    {
      sub_100005274();
      sub_10000681C();
      sub_100035788();
      *v10 = 136315138;
      sub_1000084F8();
      sub_10003D434(v140, 255, v141);
      sub_10000D35C();
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10000C130();
      v142 = *(v93 + 8);
      v97 = (v93 + 8);
      v143 = sub_10001721C();
      v144 = v142(v143);
      sub_100006E04(v144, v145, v146, v147, v148, v149, v150, v151);
      sub_10000C3CC();
      *(v10 + 4) = v138;
      sub_100017D70(&_mh_execute_header, v152, v153, "[CSDConversationCallCoordinationManager] Ignoring Thumper call, callUUID: %s", v154, v155, v156, v157, v271, v273, v276, v278, v281, v284, v131);
      sub_10000E764();
      sub_100006868();

      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if ((*(*(v0 + 240) + 80) & 1) == 0 && ([*(v0 + 232) isHostedOnCurrentDevice] & 1) == 0)
  {
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8();
    }

    v199 = *(v0 + 312);
    v200 = *(v0 + 288);
    v201 = *(v0 + 256);
    v202 = *(v0 + 264);
    v203 = type metadata accessor for Logger();
    sub_10000AF9C(v203, qword_1006A6290);
    v204 = sub_10000F6DC();
    v205(v204);
    v89 = Logger.logObject.getter();
    v206 = static os_log_type_t.default.getter();
    v207 = sub_10000BA5C(v206);
    v208 = *(v0 + 288);
    v209 = *(v0 + 256);
    v93 = *(v0 + 264);
    if (v207)
    {
      sub_100005274();
      sub_10000681C();
      sub_100035788();
      *v10 = 136315138;
      sub_1000084F8();
      sub_10003D434(v210, 255, v211);
      sub_10000D35C();
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10000C130();
      v212 = *(v93 + 8);
      v97 = (v93 + 8);
      v213 = sub_10001721C();
      v214 = v212(v213);
      sub_100006E04(v214, v215, v216, v217, v218, v219, v220, v221);
      sub_10000C3CC();
      *(v10 + 4) = v208;
      sub_100017D70(&_mh_execute_header, v222, v223, "[CSDConversationCallCoordinationManager] Ignoring calls on relay device-type, callUUID: %s", v224, v225, v226, v227, v271, v273, v276, v278, v281, v284, v201);
      sub_10000E764();
      sub_100006868();

      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if ([*(v0 + 232) status] == 1 && (objc_msgSend(*(v0 + 232), "isScreening") & 1) == 0)
  {
    if (v16 == 0x200000000)
    {
      v228 = 0;
      v286 = 0;
      v287 = v39;
      v229 = v288;
      goto LABEL_80;
    }

    v229 = v288;
    if ((v10 & 0x100000000) != 0)
    {
      v232 = 0;
      v228 = 0;
      v230 = v39 ^ 1;
      v231 = v39;
      v286 = v39 ^ 1;
      v287 = 0;
      if ((v10 & 0x1000000000000) == 0)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v230 = 0;
      v231 = 0;
      v228 = 0;
      v286 = 0;
      v287 = v39;
      v232 = v39;
      v128 = 0;
      if ((v10 & 0x1000000000000) == 0)
      {
LABEL_80:
        v293 = v228;
        v290 = v229;
        if (qword_1006A0AA8 != -1)
        {
          sub_10000A1D8();
        }

        v233 = *(v0 + 312);
        v234 = *(v0 + 280);
        v236 = *(v0 + 256);
        v235 = *(v0 + 264);
        v237 = type metadata accessor for Logger();
        sub_10000AF9C(v237, qword_1006A6290);
        (*(v235 + 16))(v234, v233, v236);
        v238 = Logger.logObject.getter();
        v239 = static os_log_type_t.default.getter();
        v240 = os_log_type_enabled(v238, v239);
        v241 = *(v0 + 280);
        v243 = *(v0 + 256);
        v242 = *(v0 + 264);
        if (v240)
        {
          v280 = v239;
          v283 = v238;
          v244 = swift_slowAlloc();
          v294 = swift_slowAlloc();
          *v244 = 136316930;
          sub_1000084F8();
          sub_10003D434(v245, 255, v246);
          v275 = dispatch thunk of CustomStringConvertible.description.getter();
          v248 = v247;
          (*(v242 + 8))(v241, v243);
          v249 = sub_10002741C(v275, v248, &v294);

          *(v244 + 4) = v249;
          *(v244 + 12) = 2080;
          v250 = sub_100343520(v21);
          v252 = sub_10002741C(v250, v251, &v294);

          *(v244 + 14) = v252;
          *(v244 + 22) = 2080;
          if (v16 == 0x200000000)
          {
            v253 = 0xE300000000000000;
            v254 = 7104878;
          }

          else
          {
            *(v0 + 416) = v10;
            v257 = vdupq_n_s64(v10);
            *v257.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v257, xmmword_100580760), vshlq_u64(v257, xmmword_100580750))), 0x1000100010001);
            *(v0 + 420) = vuzp1_s8(*v257.i8, *v257.i8).u32[0];
            v254 = String.init<A>(reflecting:)();
            v253 = v258;
          }

          v255 = v290;
          v256 = v293;
          v259 = sub_10002741C(v254, v253, &v294);

          *(v244 + 24) = v259;
          *(v244 + 32) = 1024;
          *(v244 + 34) = v128;
          *(v244 + 38) = 1024;
          *(v244 + 40) = v287;
          *(v244 + 44) = 1024;
          *(v244 + 46) = v286;
          *(v244 + 50) = 1024;
          *(v244 + 52) = v290;
          *(v244 + 56) = 1024;
          *(v244 + 58) = v293;
          _os_log_impl(&_mh_execute_header, v283, v280, "[CSDConversationCallCoordinationManager] Processing active call, callUUID: %s, \ncurrentCallState: %s, \npreviousCallState: %s callAlreadyOnMe: %{BOOL}d callMovedToMe: %{BOOL}d callMovedAwayFromMe: %{BOOL}d callBecameConferenced: %{BOOL}d callBecameNonConferenced: %{BOOL}d", v244, 0x3Eu);
          swift_arrayDestroy();
          sub_100007CBC();
          sub_100005F40();
        }

        else
        {

          (*(v242 + 8))(v241, v243);
          v255 = v290;
          v256 = v293;
        }

        if (v255)
        {
          *(v0 + 336) = *(*(v0 + 240) + 48);
        }

        else if (v256)
        {
          *(v0 + 352) = *(*(v0 + 240) + 48);
        }

        else
        {
          if (((v128 | v287) & 1) == 0)
          {
            if (v286)
            {
              v268 = swift_task_alloc();
              *(v0 + 392) = v268;
              *v268 = v0;
              sub_100015FC8(v268);
              goto LABEL_61;
            }

            goto LABEL_100;
          }

          v261 = *(v0 + 312);
          v262 = *(v0 + 240);
          sub_100005298();
          sub_10034B57C();
          v263 = sub_100005ED0();
          v265 = sub_10004A1E8(v263, v264);
          *(v0 + 368) = v265;

          if (v265)
          {
            type metadata accessor for ConversationCallCoordinator(0);
            sub_100018224();
            sub_10003D434(v266, 255, v267);
            sub_10034B558();
            dispatch thunk of Actor.unownedExecutor.getter();
            sub_100006B5C();
          }

          else
          {
            *(v0 + 376) = *(*(v0 + 240) + 48);
          }
        }

LABEL_92:
        sub_10000C638();

        return _swift_task_switch(v122, v123, v124);
      }
    }

    v228 = v288 ^ 1;
    v286 = v230;
    v287 = v232;
    v128 = v231;
    v229 = 0;
    goto LABEL_80;
  }

  v186 = [*(v0 + 232) status];
  v187 = *(v0 + 232);
  if (v186 != 6)
  {
    if ([v187 status] == 2)
    {
      v192 = *(v0 + 312);
      v193 = *(v0 + 240);
      sub_100005298();
      sub_10034B57C();
      v194 = sub_100005ED0();
      v196 = sub_10004A1E8(v194, v195);
      *(v0 + 408) = v196;

      if (v196)
      {
        type metadata accessor for ConversationCallCoordinator(0);
        sub_100018224();
        sub_10003D434(v197, 255, v198);
        sub_10034B558();
        dispatch thunk of Actor.unownedExecutor.getter();
        sub_100006B5C();
        goto LABEL_92;
      }
    }

LABEL_100:
    v269 = sub_100010078();
    v270(v269);
    goto LABEL_52;
  }

  [v187 disconnectedReason];
  v188 = swift_task_alloc();
  *(v0 + 400) = v188;
  *v188 = v0;
  v188[1] = sub_100345BBC;
  v189 = *(v0 + 240);
  sub_10000795C(*(v0 + 232));
LABEL_61:
  sub_10000C638();

  return sub_100347960();
}

uint64_t sub_100035720(float a1)
{
  *v1 = a1;
  v4 = *(v2 - 208) | 0x8000000000000000;

  return sub_10002741C(0xD00000000000003ALL, v4, (v2 - 120));
}

uint64_t sub_100035748()
{

  return sub_10000AF74(v1, 0, 1, v0);
}

void sub_100035768(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000357AC(void *a1, void *a2, unint64_t *a3)
{

  return sub_1000245B4(a1, a2, a3, v3);
}

uint64_t sub_1000357C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0x200000000;
  }

  sub_100021E24();
  if ((v4 & 1) == 0)
  {
    return 0x200000000;
  }

  v5 = (*(a2 + 56) + 8 * v3);
  v6 = *v5;
  v7 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  v10 = v5[7];
  v11 = v7 == 0;
  v12 = &_mh_execute_header;
  if (v11)
  {
    v12 = 0;
  }

  v13 = v12 | v6;
  v14 = 0x10000000000;
  if (!v8)
  {
    v14 = 0;
  }

  v15 = 0x1000000000000;
  if (!v9)
  {
    v15 = 0;
  }

  v16 = v13 | v14 | v15;
  v11 = v10 == 0;
  v17 = 0x100000000000000;
  if (v11)
  {
    v17 = 0;
  }

  return v16 | v17;
}

void sub_100035868()
{
  sub_100005EF4();
  sub_10000E798();
  v5 = type metadata accessor for UUID();
  v6 = sub_100007FEC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_10000F714();
  sub_100021E24();
  sub_100008598(v10, v11);
  if (v12)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100027EA8();
  sub_10026D814(&qword_1006A6F98, &unk_100582760);
  v13 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v13, v14))
  {
    sub_100010088();
    sub_100021E24();
    sub_10000D4BC();
    if (!v16)
    {
      goto LABEL_11;
    }

    v3 = v15;
  }

  v17 = *v1;
  if (v4)
  {
    v18 = (*(v17 + 56) + 8 * v3);
    *v18 = v0;
    v19 = vdupq_n_s64(v0);
    *v19.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v19, xmmword_100580760), vshlq_u64(v19, xmmword_100580750))), 0x1000100010001);
    v18[1] = vuzp1_s8(*v19.i8, *v19.i8).u32[0];
  }

  else
  {
    v20 = sub_100015DCC();
    v21(v20);
    sub_100035EE4(v3, v2, v0 & 0x1010101FFFFFFFFLL, v17);
  }

  sub_100005EDC();
}

uint64_t sub_1000359F0(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a23)
{
  *(v23 - 96) = a1;
  a23 = a2;

  return sub_100052980(v23 - 96, &a13);
}

uint64_t sub_100035A38@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t sub_100035A64()
{
  v2 = *(v0 + 136);

  return swift_allocObject();
}

void sub_100035A80()
{
  v4 = *(v2 - 280);

  sub_10031E2A8(v1, v4, v0);
}

uint64_t sub_100035AA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  return result;
}

uint64_t sub_100035AD4(uint64_t result)
{
  v1[89] = result;
  v1[41] = result;
  v1[34] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100035AF8()
{
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
}

id sub_100035B3C@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1) = v2;
  v6 = *(v4 + 952);

  return [v3 v6];
}

uint64_t sub_100035B68()
{

  return swift_slowAlloc();
}

__n128 sub_100035B84(uint64_t a1)
{
  *(v1 + 56) = a1;
  result = *(v1 + 40);
  v3 = *(v1 + 24);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

void sub_100035BB0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

void sub_100035BF4(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 48);
  v3 = *(a1 + 8);
  v4 = *(a1 + 72);
}

uint64_t sub_100035C34(float a1)
{
  *v3 = a1;
  *(v2 + 80) = v1;

  return swift_errorRetain();
}

void sub_100035C50(uint64_t a1@<X8>)
{
  v4 = v1 + 7;
  v5 = (v3 + v4) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v2 + v5);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((((a1 + v5 + 8) & ~a1) + v4) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
}

uint64_t sub_100035CFC()
{

  return static _DictionaryStorage.allocate(capacity:)();
}

uint64_t sub_100035D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_100285FC4(a1, va, v9, v8);
}

void sub_100035D4C()
{

  sub_10039A2E0(0, v0, 0);
}

uint64_t sub_100035D9C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_10002741C(0xD000000000000020, (a1 - 32) | 0x8000000000000000, va);
}

id sub_100035DEC(uint64_t a1, const char *a2)
{
  v8 = *(v6 - 224);

  return [v3 a2];
}

uint64_t sub_100035E24()
{
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[31];
}

void sub_100035E78(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100035EA8()
{
  v2 = v0[108];
  v3 = v0[107];
  v11 = v0[104];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[95];
  v8 = v0[86];
  v9 = v0[84];

  return type metadata accessor for Logger();
}

void sub_100035EE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100008498(a1, a2, a3, a4);
  sub_10001629C(v7, v8, v9, v10);
  v11 = type metadata accessor for UUID();
  sub_100010300(v11);
  v13 = *(v12 + 32);
  v14 = *(v12 + 72);
  v15 = sub_100015D68();
  v16(v15);
  v17 = (*(v4 + 56) + 8 * v6);
  *v17 = v5;
  v18 = vdupq_n_s64(v5);
  *v18.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v18, xmmword_100580760), vshlq_u64(v18, xmmword_100580750))), 0x1000100010001);
  v17[1] = vuzp1_s8(*v18.i8, *v18.i8).u32[0];
  sub_100017180();
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v19;
  }
}

uint64_t sub_100035F94(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_100021E24();
    if (v3)
    {
      sub_100015CDC(v2);
      v4 = sub_100006B30();
      sub_1002DB5C8(v4, v5);
    }
  }

  return sub_100006B30();
}

uint64_t sub_100035FE4()
{
  sub_100006810();
  sub_100005F18();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100008060();
  *v4 = v3;

  sub_100009EF4();

  return v5();
}

void sub_100036140()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_10000E598();
  v31 = type metadata accessor for DispatchQoS();
  v12 = sub_100007FEC(v31);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDRTCReporter_queue);
  sub_100007934();
  v16 = swift_allocObject();
  v16[2] = v0;
  v16[3] = v2;
  v16[4] = v4;
  v32[4] = sub_1000391C4;
  v32[5] = v16;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v32[2] = v17;
  v32[3] = &unk_1006248A8;
  v18 = _Block_copy(v32);
  v19 = v0;
  v20 = v2;
  v21 = v4;
  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v22, v23);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v24, v25, &unk_10057D6E0);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  sub_100018F10();
  _Block_release(v18);
  v26 = *(v8 + 8);
  v27 = sub_100007764();
  v28(v27);
  v29 = sub_100007C7C();
  v30(v29);

  sub_100005EDC();
}

uint64_t sub_1000363E0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = sub_100007FEC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14, v19);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *&v2[OBJC_IVAR___CSDFaceTimeUnknownReporter_queue];
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = v2;
  aBlock[4] = sub_100055A80;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006231E0;
  v24 = _Block_copy(aBlock);
  v25 = a2;
  v26 = v2;
  static DispatchQoS.unspecified.getter();
  v28[1] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v7 + 8))(v12, v4);
  (*(v16 + 8))(v21, v13);
}

uint64_t sub_100036640()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000366FC(void *a1, id a2)
{
  v4 = v2;
  v5 = a2;
  if ([a2 status] != 6 || !objc_msgSend(v5, "isEndpointOnCurrentDevice"))
  {
    v42 = [v5 provider];
    v43 = [v42 isTelephonyProvider];

    if (!v43)
    {
      return;
    }

    v44 = OBJC_IVAR___CSDAnalyticsReporter_callToStartTransportType;
    swift_beginAccess();
    v45 = *(v4 + v44);

    v46 = sub_100036ED4(v5, v45);

    if (v46)
    {

      return;
    }

    if (sub_100036F90(v5))
    {
      sub_10000C8EC();
      v85 = v66;
      v86 = v67;
      AnyHashable.init<A>(_:)();
      sub_100006600(v87, 0);

      sub_100006780(v87);
      if (*(&v89 + 1))
      {
        sub_10003EBF0(&v88, v87);
        type metadata accessor for AnalyticsReporter();
        sub_100006A94(v87, &v88);
        v68 = sub_100457574(&v88);
        sub_1000099A4(&v88, &unk_1006A2D10, &unk_10057D940);
        v69 = [objc_allocWithZone(NSNumber) initWithInteger:v68];
        sub_100008D34();
        if (v69)
        {
          v70 = sub_10000F2EC();
          sub_100457800(v70, v71);
        }

        else
        {
        }

        swift_endAccess();
        sub_100009B7C(v87);
        goto LABEL_38;
      }
    }

    else
    {
      v88 = 0u;
      v89 = 0u;
    }

    sub_1000099A4(&v88, &unk_1006A2D10, &unk_10057D940);
LABEL_38:
    v72 = [v5 callCenter];
    v73 = v72;
    if (v72)
    {
      v74 = [v72 routeController];

      v73 = [v74 pickedRoute];
    }

    type metadata accessor for AnalyticsReporter();
    sub_100037034(v73);
    sub_10000FA2C();

    v75 = OBJC_IVAR___CSDAnalyticsReporter_callToAudioRoutesTracker;
    sub_100008D34();
    v76 = *(v4 + v75);
    swift_isUniquelyReferenced_nonNull_native();
    *&v88 = *(v4 + v75);
    v77 = sub_100006718();
    sub_1000371E0(v77, v78, v5);
    *(v4 + v75) = v88;
    swift_endAccess();
    return;
  }

  type metadata accessor for AnalyticsReporter();
  v7 = OBJC_IVAR___CSDAnalyticsReporter_callToStartTransportType;
  swift_beginAccess();
  v8 = *(v2 + v7);

  sub_100036ED4(v5, v8);
  sub_10000AB30();

  v9 = OBJC_IVAR___CSDAnalyticsReporter_callToAudioRoutesTracker;
  swift_beginAccess();
  v10 = *(v2 + v9);

  v11 = sub_10004DF50(v5, v10);

  sub_10004E238(v5, v3, v11);
  v13 = v12;

  if (qword_1006A0B10 != -1)
  {
LABEL_43:
    sub_1000085AC();
  }

  v14 = type metadata accessor for Logger();
  sub_1000075F0(v14, qword_1006BA5B0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = sub_100005274();
    v82 = v17;
    v83 = sub_100005E84();
    v90[0] = v83;
    *v17 = 136315138;
    sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
    v18 = Dictionary.description.getter();
    v20 = sub_10002741C(v18, v19, v90);

    v21 = v82;
    *(v82 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "Logging end call to core analytics: %s", v21, 0xCu);
    sub_100009B7C(v83);
    sub_100005F40();
    sub_100005F64();
  }

  sub_1000517AC(0xD000000000000025, 0x8000000100578EB0, v13);

  sub_100008D34();
  v22 = sub_1000519C0(v5);
  swift_endAccess();

  v83 = _swiftEmptyArrayStorage;
  v85 = _swiftEmptyArrayStorage;
  v23 = [a1 calls];
  v82 = sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = *(v4 + v9);
  v26 = *(v24 + 64);
  v25 = v24 + 64;
  v27 = *(*(v4 + v9) + 32);
  sub_100007990();
  v30 = v29 & v28;
  v32 = (v31 + 63) >> 6;
  v80 = v33;

  v13 = 0;
  v5 = 0;
  while (1)
  {
    v36 = v13;
    if (!v30)
    {
      break;
    }

LABEL_11:
    v37 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v90[0] = *(*(v80 + 48) + ((v13 << 9) | (8 * v37)));
    __chkstk_darwin(v34, v35);
    a1 = v79;
    v79[2] = v90;
    v39 = v38;
    sub_100051B88(sub_100458278, v79, v81);
    if (v40)
    {
    }

    else
    {
      v41 = v39;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      a1 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v83 = v85;
    }
  }

  while (1)
  {
    v13 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v13 >= v32)
    {
      break;
    }

    v30 = *(v25 + 8 * v13);
    ++v36;
    if (v30)
    {
      goto LABEL_11;
    }
  }

  v47 = v83;
  v48 = sub_10000B6F4(v83);
  if (!v48)
  {
    goto LABEL_29;
  }

  v49 = v48;
  if (v48 >= 1)
  {
    v50 = 0;
    v51 = v47 & 0xC000000000000001;
    do
    {
      if (v51)
      {
        sub_100006C30();
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v52 = *(v47 + 8 * v50 + 32);
      }

      v53 = v52;
      sub_100008D34();
      v54 = *(v4 + v9);
      v55 = v53;
      sub_10003719C();
      if (v57)
      {
        v58 = v56;
        v59 = *(v4 + v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = *(v4 + v9);
        v61 = v84;
        *(v4 + v9) = 0x8000000000000000;
        v62 = *(v61 + 24);
        sub_10026D814(&unk_1006A6EC8, &qword_1005880B0);
        v63 = isUniquelyReferenced_nonNull_native;
        v47 = v83;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v63, v62);
        v64 = v84;

        v65 = *(*(v64 + 56) + 16 * v58 + 8);

        sub_100051C70();
        _NativeDictionary._delete(at:)();

        *(v4 + v9) = v64;
      }

      else
      {
      }

      ++v50;
      swift_endAccess();
    }

    while (v49 != v50);
LABEL_29:

    return;
  }

  __break(1u);
}

uint64_t sub_100036ED4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v2 = __CocoaDictionary.lookup(_:)();

    if (v2)
    {
      sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
      swift_dynamicCast();
      return v7;
    }
  }

  else if (*(a2 + 16) && (sub_10003719C(), (v5 & 1) != 0))
  {
    sub_10000C5FC(v4);
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t sub_100036F90(void *a1)
{
  v1 = [a1 providerContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

_DWORD *initializeBufferWithCopyOfBuffer for DisclosureDescriptor(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t sub_100037034(void *a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E55;
  }

  v1 = a1;
  if ([v1 isBluetooth])
  {

    return 0x746F6F7465756C42;
  }

  else if ([v1 isSpeaker])
  {

    return 0x72656B61657053;
  }

  else if ([v1 isReceiver])
  {

    return 0x7265766965636552;
  }

  else if (([v1 isWiredHeadset] & 1) != 0 || objc_msgSend(v1, "isWiredHeadphones"))
  {

    return 0x6465726957;
  }

  else
  {
    v3 = [v1 isAuxiliary];

    if (v3)
    {
      return 0x7261696C69787541;
    }

    else
    {
      return 0x726568744FLL;
    }
  }
}