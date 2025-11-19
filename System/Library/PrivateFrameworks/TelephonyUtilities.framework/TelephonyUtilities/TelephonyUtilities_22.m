uint64_t type metadata accessor for CallHistoryNotificationProvider()
{
  result = qword_1006A7938;
  if (!qword_1006A7938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100394314()
{
  sub_100316450();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100394448()
{
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C();
  }

  v0 = type metadata accessor for Logger();
  sub_1000075F0(v0, qword_1006BA6D0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Call interactions changed", v3, 2u);
    sub_100008AE8();
  }

  sub_10038CD10();
}

void sub_100394574()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100007FEC(v3);
  v37 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = type metadata accessor for DispatchQoS();
  v13 = sub_100007FEC(v12);
  v35 = v14;
  v36 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13, v17);
  sub_100007FDC();
  v20 = v19 - v18;
  v21 = type metadata accessor for Notification();
  v22 = sub_100007FEC(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22, v27);
  v34[1] = *&v0[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_queue];
  (*(v24 + 16))(v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v21);
  v28 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v0;
  (*(v24 + 32))(v29 + v28, v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  v39[4] = sub_10039C270;
  v39[5] = v29;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 1107296256;
  sub_10000A600();
  v39[2] = v30;
  v39[3] = &unk_10062B2D0;
  v31 = _Block_copy(v39);
  v32 = v0;
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_100022D34();
  sub_10000EFA8(v33);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100006958(&qword_1006A2CD0);
  sub_100008B50();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);
  (*(v37 + 8))(v11, v3);
  (*(v35 + 8))(v20, v36);

  sub_100005EDC();
}

void sub_100394874(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000AF9C(v10, qword_1006BA6D0);
  (*(v5 + 16))(v9, a2, v4);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    v16 = v11;
    v23 = Notification.name.getter();
    type metadata accessor for Name(0);
    v17 = String.init<A>(reflecting:)();
    v19 = v18;
    (*(v5 + 8))(v9, v4);
    v20 = sub_10002741C(v17, v19, &v24);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "%@ is handling %s", v14, 0x16u);
    sub_100009A04(v15, &unk_1006A2630, &qword_10057CB40);

    sub_100395FFC(v22);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  sub_100391F48();
}

uint64_t sub_100394C84()
{
  swift_getObjectType();
  v16 = _typeName(_:qualified:)();
  v1._countAndFlagsBits = 40;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  _StringGuts.grow(_:)(21);

  v13 = *(v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_notificationType);
  v2._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v2);

  sub_100008384(v3);
  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = 0x800000010056FE30;
  String.append(_:)(v4);

  _StringGuts.grow(_:)(24);

  v14 = *(v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_supportedMediaTypes);

  sub_10026D814(&unk_1006A7B90, &unk_100583470);
  v5._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v5);

  sub_100008384(v6);
  v7._countAndFlagsBits = 0xD000000000000015;
  v7._object = 0x800000010056FE50;
  String.append(_:)(v7);

  _StringGuts.grow(_:)(23);

  v15 = *(v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_supportedProviders);

  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  v8._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v8);

  sub_100008384(v9);
  v10._countAndFlagsBits = 0xD000000000000014;
  v10._object = 0x800000010056FE70;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return v16;
}

uint64_t sub_100394EAC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a1[3];
  v8 = a1[4];
  sub_100009B14(a1, v7);
  result = (*(v8 + 104))(v7, v8);
  if (result)
  {
    v10 = sub_1002E8D2C(result);

    if (v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;
          if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
          {
          }

          else
          {
            v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v22 & 1) == 0)
            {
              v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v25 = v24;
              if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
              {

                return 1;
              }

              v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v28)
              {

                return 1;
              }

              if (qword_1006A0B48 != -1)
              {
                swift_once();
              }

              v34 = type metadata accessor for Logger();
              sub_10000AF9C(v34, qword_1006BA658);
              v35 = Logger.logObject.getter();
              v36 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v35, v36))
              {
                v37 = swift_slowAlloc();
                *v37 = 0;
                _os_log_impl(&_mh_execute_header, v35, v36, "Unhandled outgoing communication limit", v37, 2u);
              }

              return 0;
            }
          }

          v31 = sub_1003951DC();
          v32 = sub_1003953F4(v31, a4);
          v33 = sub_10000B6D0(v32);

          return v33 > 0;
        }
      }

      v29 = sub_1003951DC();
      v30 = sub_100395304(v29, a4, a5);

      return v30 & 1;
    }

    return 0;
  }

  return result;
}

id sub_1003951DC()
{
  v1 = [v0 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = String.count.getter();

  if (v2 < 1)
  {
    return 0;
  }

  v3 = [v0 type];
  if (v3 >= 4)
  {
    type metadata accessor for CHHandleType(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v4 = qword_100583520[v3];
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    v5 = [v0 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000112D0();
    return sub_100389560(v6, v7);
  }

  return result;
}

id sub_100395304(void *a1, void *a2, void *a3)
{
  v4 = sub_1003953F4(a1, a2);
  v5 = sub_10000B6D0(v4);
  v6 = 0;
  v7 = v4 & 0xC000000000000001;
  while (1)
  {
    v8 = v6;
    if (v5 == v6)
    {
LABEL_9:

      return (v5 != v8);
    }

    sub_100024D54(v6, v7 == 0, v4);
    result = v7 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v4 + 8 * v8 + 32);
    v10 = result;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v11 = a3[3];
    v12 = a3[4];
    sub_100009B14(a3, v11);
    LOBYTE(v11) = sub_1003C3D54(v10, v11, v12);

    v6 = v8 + 1;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003953F4(void *a1, void *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  sub_10026D814(&unk_1006A79E0, &unk_10057DD90);
  v4 = Dictionary.init(dictionaryLiteral:)();
  v5 = a2[3];
  v6 = a2[4];
  sub_100009B14(a2, v5);
  v7 = [v3 value];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v49 = v3;
  v18 = (*(v6 + 8))(v8, v10, v5, v6);

  v19 = v18;
LABEL_7:
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  v26 = _swiftEmptyArrayStorage;
  v50 = v19;
  v52 = v24;
  v53 = v19 + 64;
  while (v23)
  {
LABEL_15:
    v28 = *(*(v19 + 56) + ((v25 << 9) | (8 * __clz(__rbit64(v23)))));
    if (v28 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = v26 >> 62;
    if (v26 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = v29;
    v31 = __OFADD__(v30, v29);
    v32 = v30 + v29;
    if (v31)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      swift_once();
      v11 = type metadata accessor for Logger();
      sub_10000AF9C(v11, qword_1006BA658);
      swift_errorRetain();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      v19 = v4;
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v16;
        *v15 = v16;
        _os_log_impl(&_mh_execute_header, v12, v13, "Contact fetch failed with the following error %@", v14, 0xCu);
        sub_100009A04(v15, &unk_1006A2630, &qword_10057CB40);
      }

      else
      {
      }

      goto LABEL_7;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v4)
      {
        goto LABEL_27;
      }

      v33 = v26;
      v34 = v26 & 0xFFFFFFFFFFFFFF8;
      if (v32 <= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v4)
      {
LABEL_27:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_28;
      }

      v34 = v26 & 0xFFFFFFFFFFFFFF8;
    }

    v35 = *(v34 + 16);
LABEL_28:
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v34 = v33 & 0xFFFFFFFFFFFFFF8;
LABEL_29:
    v56 = v33;
    v23 &= v23 - 1;
    v36 = *(v34 + 16);
    v4 = (*(v34 + 24) >> 1) - v36;
    v37 = v34 + 8 * v36;
    v54 = v34;
    if (v28 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
      if (!v39)
      {
        goto LABEL_43;
      }

      v40 = v39;
      v41 = _CocoaArrayWrapper.endIndex.getter();
      if (v4 < v41)
      {
        goto LABEL_53;
      }

      if (v40 < 1)
      {
        goto LABEL_54;
      }

      v51 = v41;
      v42 = v37 + 32;
      sub_10039C0F4(&qword_1006A79F0);
      for (i = 0; i != v40; ++i)
      {
        v44 = sub_100024CFC(v57, i, v28);
        v46 = *v45;
        v44(v57, 0);
        *(v42 + 8 * i) = v46;
      }

      v19 = v50;
      v4 = v51;
LABEL_39:

      v26 = v56;
      v24 = v52;
      v20 = v53;
      if (v4 < v55)
      {
        goto LABEL_50;
      }

      if (v4 > 0)
      {
        v47 = *(v54 + 16);
        v31 = __OFADD__(v47, v4);
        v48 = v47 + v4;
        if (v31)
        {
          goto LABEL_51;
        }

        *(v54 + 16) = v48;
      }
    }

    else
    {
      v38 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38)
      {
        if (v4 < v38)
        {
          goto LABEL_52;
        }

        v4 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100006AF0(0, &unk_1006AB420, CNContact_ptr);
        swift_arrayInitWithCopy();
        goto LABEL_39;
      }

LABEL_43:

      v26 = v56;
      v24 = v52;
      v20 = v53;
      if (v55 > 0)
      {
        goto LABEL_50;
      }
    }
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v27 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v27);
    ++v25;
    if (v23)
    {
      v25 = v27;
      goto LABEL_15;
    }
  }

  return v26;
}

uint64_t sub_1003959AC()
{
  v3 = sub_10039BD00(v1);
  if (v3)
  {
    v0 = v3;
    sub_10001E550(v3);
    sub_10039C4B0();
    if (!v2)
    {
      return 1;
    }
  }

  result = sub_10039BD00(v1);
  if (result)
  {
    sub_1002E8D2C(result);
    sub_100005F0C();

    if (v0)
    {
      v5 = [v0 value];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String.count.getter();

      return v6 == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100395A70()
{
  v1 = [v0 ttyType];
  if (v1 < 3)
  {
    return v1 + 1;
  }

  type metadata accessor for CHRecentCallTTYType(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_100395AD8()
{
  sub_10003D4BC();
  v2 = v1;
  v4 = v3;
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10039C15C(&qword_1006A3C50);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v0 initWithConversationLink:v4 otherInvitedHandles:isa sendLetMeInRequest:v2 & 1];

  sub_100035CE8();
}

id sub_100395B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = String._bridgeToObjectiveC()();

LABEL_6:
  v8 = [v4 initWithDigits:v6 countryCode:v7];

  return v8;
}

id sub_100395C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10039C15C(&qword_1006A2660);
  isa = Set._bridgeToObjectiveC()().super.isa;

  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10039C15C(&qword_1006A3C50);
  v6 = Set._bridgeToObjectiveC()().super.isa;

  v7 = [v3 initWithRemoteMembers:isa otherInvitedHandles:v6 originatingUIType:a3];

  return v7;
}

char *sub_100395D70(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1000085FC(a3, result);
  }

  return result;
}

char *sub_100395D94(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1000085FC(a3, result);
  }

  return result;
}

char *sub_100395E08(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1000085FC(a3, result);
  }

  return result;
}

uint64_t sub_100395E38(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_100007710();
  if (v9 < v8 || (v10 = (a4)(0), result = sub_100008070(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    sub_10001140C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_10001140C();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100395F24(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_100007710();
  if (v11 < v10 || (v12 = sub_10026D814(a4, a5), result = sub_100008070(v12), v6 + *(v14 + 72) * v5 <= a3))
  {
    sub_10026D814(a4, a5);
    sub_10001140C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v6)
  {
    sub_10001140C();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100395FFC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return sub_1000089A8(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100396044(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10057F880;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_1003960CC(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = *v2;
  v9 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  v39 = v4;
  Hasher._combine(_:)(v4);
  Hasher._finalize()();
  v10 = v8 + 56;
  v11 = v8;
  v12 = *(v8 + 32);
  sub_1000052DC();
  v15 = ~v14;
  while (1)
  {
    v16 = v13 & v15;
    v17 = (1 << (v13 & v15)) & *(v10 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v17)
    {
      v26 = *v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *v36;

      sub_100397FB0(a2, v16, isUniquelyReferenced_nonNull_native);
      *v36 = v40;
      v28 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v28;
      *(a1 + 32) = a2[4];
      return v17 == 0;
    }

    v18 = (*(v11 + 48) + 40 * v16);
    v19 = *v18;
    v20 = v18[1];
    v22 = v18[2];
    v21 = v18[3];
    v23 = v18[4];
    Hasher.init(_seed:)();

    String.hash(into:)();
    sub_10001AC50();
    String.hash(into:)();
    Hasher._combine(_:)(v23);
    v24 = Hasher._finalize()();
    Hasher.init(_seed:)();
    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v39);
    v25 = Hasher._finalize()();

    if (v24 == v25)
    {
      break;
    }

    v13 = v16 + 1;
  }

  v29 = (*(v11 + 48) + 40 * v16);
  v31 = *v29;
  v30 = v29[1];
  v32 = v29[2];
  v33 = v29[3];
  v34 = v29[4];
  *a1 = v31;
  *(a1 + 8) = v30;
  *(a1 + 16) = v32;
  *(a1 + 24) = v33;
  *(a1 + 32) = v34;

  return v17 == 0;
}

uint64_t sub_1003963F8(uint64_t a1, Swift::Int a2, char a3)
{
  sub_10039C460();
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    v8 = a2;
  }

  Hasher._combine(_:)(v8);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v5 + 32);
  v11 = v9 & ~v10;
  if ((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    do
    {
      v13 = *(v5 + 48) + 16 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      if (v15 == 1)
      {
        if (a3)
        {
          result = 0;
          a2 = v14;
          goto LABEL_13;
        }
      }

      else if ((a3 & 1) == 0 && v14 == a2)
      {
        result = 0;
        goto LABEL_13;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  v16 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v4;
  sub_1003981F4(a2, a3 & 1, v11, isUniquelyReferenced_nonNull_native);
  *v4 = v19;
  result = 1;
  LOBYTE(v15) = a3;
LABEL_13:
  *v3 = a2;
  *(v3 + 8) = v15 & 1;
  return result;
}

void sub_10039653C()
{
  sub_100005EF4();
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  sub_100007FDC();
  sub_100017EE0();
  sub_10002F688();
  sub_10000EFA8(v9);
  sub_10000B994();
  v10 = *(v1 + 32);
  sub_1000052DC();
  sub_100022E1C();
  while (1)
  {
    sub_100016FC0(v11);
    if (v12)
    {
      v15 = *v24;
      swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_100006E74();
      v17(v16);
      v18 = sub_10004A00C();
      sub_100398388(v18, v19, v20);
      v21 = sub_10000BBF4();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_100007A18();
    v3(v13);
    sub_10002F688();
    sub_10000EFA8(&qword_1006A2620);
    sub_100033390();
    v14 = sub_10001CA08();
    (v1)(v14);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  (v1)(v25, v4);
  v23 = sub_100021F90();
  v3(v23);
LABEL_7:
  sub_100005EDC();
}

void sub_1003966D8()
{
  sub_100005EF4();
  v4 = type metadata accessor for Participant();
  v5 = sub_100007FEC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  sub_100007FDC();
  sub_100017EE0();
  sub_10000C24C();
  sub_10000EFA8(v9);
  sub_10000B994();
  v10 = *(v1 + 32);
  sub_1000052DC();
  sub_100022E1C();
  while (1)
  {
    sub_100016FC0(v11);
    if (v12)
    {
      v15 = *v24;
      swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_100006E74();
      v17(v16);
      v18 = sub_10004A00C();
      sub_100398638(v18, v19, v20);
      v21 = sub_10000BBF4();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_100007A18();
    v3(v13);
    sub_10000C24C();
    sub_10000EFA8(&unk_1006A8F00);
    sub_100033390();
    v14 = sub_10001CA08();
    (v1)(v14);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  (v1)(v25, v4);
  v23 = sub_100021F90();
  v3(v23);
LABEL_7:
  sub_100005EDC();
}

void sub_100396920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000D698();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = *v10;
  v17 = *(v16 + 40);
  static Hasher._hash(seed:_:)();
  sub_100035D14();
  while (1)
  {
    v22 = v18 & v20;
    if (((v21 << (v18 & v20)) & *(v19 + (((v18 & v20) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    if (*(*(v16 + 48) + 8 * v22) == v13)
    {
      goto LABEL_6;
    }

    v18 = v22 + 1;
  }

  v23 = *v11;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10039C424();
  sub_1003988E8(v13, v22);
  *v11 = a10;
LABEL_6:
  *v15 = v13;
  sub_100006048();
}

void sub_100396A28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10039C438();
    sub_10039C498(v2, v3, v4, v5);
    v6 = static _SetStorage.convert(_:capacity:)();
    v19 = v6;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return;
      }

      sub_10001AC50();
      sub_100006AF0(v7, v8, v9);
      swift_dynamicCast();
      if (*(v6 + 24) <= *(v6 + 16))
      {
        sub_100005364();
        sub_100397DE8();
      }

      v6 = v19;
      v10 = NSObject._rawHashValue(seed:)(*(v19 + 40)) & ~(-1 << *(v19 + 32));
      if (((-1 << v10) & ~*(v19 + 56 + 8 * (v10 >> 6))) == 0)
      {
        break;
      }

      sub_100018658();
LABEL_13:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v19 + 48) + 8 * v12) = v18;
      ++*(v19 + 16);
    }

    sub_100035E64();
    while (v14 + 1 != v16 || (v15 & 1) == 0)
    {
      sub_10003EA94(v13);
      if (!v17)
      {
        sub_10003DC00();
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100396BF8(uint64_t a1)
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
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_100396044(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100396E54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10026D814(&qword_1006A7C50, &qword_1005834F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v34 = v2;
  v35 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v36 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      sub_100396044(0, (v33 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v36 = (v11 - 1) & v11;
LABEL_14:
    v17 = (*(v3 + 48) + 40 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = v17[4];
    v23 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v22);
    result = Hasher._finalize()();
    v24 = -1 << *(v6 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v6 + 48) + 40 * v27);
    *v32 = v18;
    v32[1] = v19;
    v32[2] = v20;
    v32[3] = v21;
    v32[4] = v22;
    ++*(v6 + 16);
    v3 = v35;
    v11 = v36;
    if (!v36)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v13 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1003970F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10026D814(&unk_1006A7A30, &qword_100583380);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_100396044(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = static Hasher._hash(seed:bytes:count:)();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 4 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100397320(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10026D814(&qword_1006A7C08, &qword_1005834B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_32:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_100396044(0, (v31 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 16 * (v14 | (v7 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    if (v19)
    {
      v21 = 0;
    }

    else
    {
      Hasher._combine(_:)(1uLL);
      v21 = v18;
    }

    Hasher._combine(_:)(v21);
    result = Hasher._finalize()();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v6 + 48) + 16 * v25;
    *v30 = v18;
    *(v30 + 8) = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_100397598(uint64_t a1)
{
  v2 = v1;
  v42 = type metadata accessor for UUID();
  v4 = *(v42 - 8);
  v5 = v4[8];
  __chkstk_darwin(v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10026D814(&unk_1006A7BC8, &qword_100583490);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v36 = v2;
  v37 = v8;
  v12 = 0;
  v13 = (v8 + 56);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 56);
  v17 = (v14 + 63) >> 6;
  v40 = v4 + 4;
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      sub_100396044(0, (v34 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_14:
    v22 = *(v8 + 48) + v4[9] * (v19 | (v12 << 6));
    v23 = v4[4];
    v38 = v4[9];
    v39 = v23;
    v23(v41, v22, v42);
    v24 = v11;
    v25 = *(v11 + 40);
    sub_10000EFA8(&qword_1006A3BE0);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = v24;
    v26 = -1 << *(v24 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v18 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = v39(*(v24 + 48) + v29 * v38, v41, v42);
    ++*(v24 + 16);
    v8 = v37;
    if (!v16)
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
    v33 = *(v18 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1003978F0(uint64_t a1)
{
  v2 = v1;
  v42 = type metadata accessor for Participant();
  v4 = *(v42 - 8);
  v5 = v4[8];
  __chkstk_darwin(v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10026D814(&qword_1006A7C68, &unk_100583510);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v36 = v2;
  v37 = v8;
  v12 = 0;
  v13 = (v8 + 56);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 56);
  v17 = (v14 + 63) >> 6;
  v40 = v4 + 4;
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      sub_100396044(0, (v34 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_14:
    v22 = *(v8 + 48) + v4[9] * (v19 | (v12 << 6));
    v23 = v4[4];
    v38 = v4[9];
    v39 = v23;
    v23(v41, v22, v42);
    v24 = v11;
    v25 = *(v11 + 40);
    sub_10000EFA8(&unk_1006A4860);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = v24;
    v26 = -1 << *(v24 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v18 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = v39(*(v24 + 48) + v29 * v38, v41, v42);
    ++*(v24 + 16);
    v8 = v37;
    if (!v16)
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
    v33 = *(v18 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_100397C5C()
{
  sub_10000D698();
  sub_10000FE58(v2, v3, v4);
  sub_10001140C();
  v6 = v5;
  static _SetStorage.resize(original:capacity:move:)();
  sub_10000670C();
  if (!v7)
  {
LABEL_28:

    *v0 = v6;
    sub_100006048();
    return;
  }

  v8 = 0;
  v10 = (v1 + 56);
  v9 = *(v1 + 56);
  v11 = 1 << *(v1 + 32);
  v32 = v0;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v9;
  v14 = v6 + 56;
  if ((v12 & v9) == 0)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= ((v11 + 63) >> 6))
      {
        break;
      }

      ++v16;
      if (v10[v8])
      {
        sub_100007C8C();
        v13 = v18 & v17;
        goto LABEL_12;
      }
    }

    if (v11 >= 64)
    {
      v29 = sub_100008AB0();
      sub_100396044(v29, v30, v31);
    }

    else
    {
      *v10 = -1 << v11;
    }

    v0 = v32;
    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    sub_10039C410();
LABEL_12:
    v19 = *(*(v1 + 48) + 8 * (v15 | (v8 << 6)));
    v20 = *(v6 + 40);
    v21 = static Hasher._hash(seed:_:)() & ~(-1 << *(v6 + 32));
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    sub_10000FE84();
LABEL_22:
    sub_100007DC0();
    *(v14 + v26) |= v27;
    *(*(v6 + 48) + 8 * v28) = v19;
    ++*(v6 + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  sub_10000E7C0();
  while (1)
  {
    sub_100007A0C();
    if (v25)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    if (*(v14 + 8 * v22) != -1)
    {
      sub_10000A950();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_100397DE8()
{
  sub_100005EF4();
  sub_10000FE58(v6, v7, v8);
  sub_10001140C();
  v9 = static _SetStorage.resize(original:capacity:move:)();
  if (!*(v1 + 16))
  {
LABEL_25:

    *v0 = v9;
    sub_100005EDC();
    return;
  }

  sub_10000FAC4();
  v10 = v9 + 56;
  if (!v4)
  {
LABEL_4:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= v5)
      {
        break;
      }

      ++v12;
      if (v2[v3])
      {
        sub_100007C8C();
        v4 = v14 & v13;
        goto LABEL_9;
      }
    }

    v24 = 1 << *(v1 + 32);
    if (v24 >= 64)
    {
      sub_100396044(0, (v24 + 63) >> 6, v2);
    }

    else
    {
      sub_1000052DC();
      *v2 = v25;
    }

    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    sub_100035B9C();
LABEL_9:
    v15 = *(*(v1 + 48) + 8 * (v11 | (v3 << 6)));
    v16 = NSObject._rawHashValue(seed:)(*(v9 + 40));
    sub_100006BFC(v16, *(v9 + 32));
    if (v17)
    {
      break;
    }

    sub_10000FE84();
LABEL_19:
    sub_100007DC0();
    *(v10 + v21) |= v22;
    *(*(v9 + 48) + 8 * v23) = v15;
    sub_10003FB9C();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  sub_10000E7C0();
  while (1)
  {
    sub_100007A0C();
    if (v17)
    {
      if (v19)
      {
        break;
      }
    }

    if (v18 == v20)
    {
      v18 = 0;
    }

    if (*(v10 + 8 * v18) != -1)
    {
      sub_10000A950();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_100397F38()
{
  sub_100007710();
  NSObject._rawHashValue(seed:)(*(v2 + 40));
  v3 = *(v0 + 32);
  sub_1000052DC();
  _HashTable.nextHole(atOrAfter:)();
  sub_100006F34();
  *(v0 + 56 + v6) |= v5 << v4;
  *(*(v0 + 48) + 8 * v4) = v1;
  ++*(v0 + 16);
}

Swift::Int sub_100397FB0(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100396E54(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1003994D0(v6 + 1);
LABEL_8:
      v8 = *v5;
      v9 = v5[1];
      v10 = v5[2];
      v34 = v3;
      v35 = v5;
      v13 = v5 + 3;
      v11 = v5[3];
      v12 = v13[1];
      v14 = *v3;
      v15 = *(*v3 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      v16 = v12;
      Hasher._combine(_:)(v12);
      result = Hasher._finalize()();
      v17 = v14 + 56;
      v18 = v14;
      v19 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = result & v19;
        if (((*(v17 + (((result & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v19)) & 1) == 0)
        {
          break;
        }

        v20 = (*(v18 + 48) + 40 * a2);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        v25 = v20[4];
        Hasher.init(_seed:)();

        String.hash(into:)();
        String.hash(into:)();
        Hasher._combine(_:)(v25);
        v26 = Hasher._finalize()();
        Hasher.init(_seed:)();
        String.hash(into:)();
        String.hash(into:)();
        Hasher._combine(_:)(v16);
        v27 = Hasher._finalize()();

        if (v26 == v27)
        {
          goto LABEL_16;
        }

        result = a2 + 1;
      }

      v3 = v34;
      v5 = v35;
      goto LABEL_13;
    }

    result = sub_100398AD0();
  }

LABEL_13:
  v28 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v29 = *(v28 + 48) + 40 * a2;
  v30 = *(v5 + 1);
  *v29 = *v5;
  *(v29 + 16) = v30;
  *(v29 + 32) = v5[4];
  v31 = *(v28 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v33;
  }

  return result;
}

Swift::Int sub_1003981F4(Swift::Int result, char a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100397320(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_100398F34();
        goto LABEL_19;
      }

      sub_100399948(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    Hasher.init(_seed:)();
    if (a2)
    {
      v12 = 0;
    }

    else
    {
      Hasher._combine(_:)(1uLL);
      v12 = v7;
    }

    Hasher._combine(_:)(v12);
    result = Hasher._finalize()();
    v13 = -1 << *(v10 + 32);
    a3 = result & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      do
      {
        v15 = *(v10 + 48) + 16 * a3;
        if (*(v15 + 8) == 1)
        {
          if (a2)
          {
            goto LABEL_22;
          }
        }

        else if ((a2 & 1) == 0 && *v15 == v7)
        {
          goto LABEL_22;
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_19:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = *(v16 + 48) + 16 * a3;
  *v17 = v7;
  *(v17 + 8) = a2 & 1;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_22:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_100398388(uint64_t a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100397598(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_100399B90(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_10000EFA8(&qword_1006A3BE0);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_10000EFA8(&qword_1006A2620);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_1003990D4();
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_100398638(uint64_t a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = type metadata accessor for Participant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1003978F0(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_100399EA8(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_10000EFA8(&unk_1006A4860);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_10000EFA8(&unk_1006A8F00);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_1003990D4();
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void sub_1003988E8(uint64_t a1, uint64_t a2)
{
  sub_10039C3E8();
  if (!(!v11 & v10) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_10000BA78(v8);
      sub_100397C5C();
      goto LABEL_11;
    }

    if (v9 <= v8)
    {
      sub_10000BA78(v8);
      sub_10039A1C0();
LABEL_11:
      v17 = *v3;
      v18 = *(*v3 + 40);
      v19 = static Hasher._hash(seed:_:)();
      v20 = ~(-1 << *(v17 + 32));
      while (1)
      {
        a2 = v19 & v20;
        if (((*(v17 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v17 + 48) + 8 * a2) == v2)
        {
          goto LABEL_16;
        }

        v19 = a2 + 1;
      }
    }

    sub_1003992FC(v6, v7);
  }

LABEL_8:
  sub_10039C3D4(*v3);
  *(v13 + 8 * a2) = v2;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_16:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
  }
}

void sub_1003989F8()
{
  sub_10003D4BC();
  sub_10026D814(&unk_1006A7A40, &unk_100583390);
  sub_10039C394();
  sub_10000670C();
  if (v6)
  {
    v7 = sub_10000E7D4();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v2, 8 * v8);
    }

    sub_10000C7A0();
    while (v5)
    {
      sub_100035B9C();
LABEL_15:
      v16 = v12 | (v3 << 6);
      v17 = (*(v1 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = (v0[6] + 16 * v16);
      *v19 = *v17;
      v19[1] = v18;
    }

    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v13;
      if (*(v2 + v3))
      {
        sub_100007C8C();
        v5 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    sub_100035CE8();
  }
}

void *sub_100398AD0()
{
  v1 = v0;
  sub_10026D814(&qword_1006A7C50, &qword_1005834F8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 5 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        v24 = (*(v4 + 48) + 8 * v17);
        *v24 = v20;
        v24[1] = v19;
        v24[2] = v21;
        v24[3] = v22;
        v24[4] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100398C58()
{
  v1 = v0;
  sub_10026D814(&unk_1006A7A30, &qword_100583380);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100398D98()
{
  v1 = v0;
  sub_10026D814(&unk_1006A7B80, &qword_100583460);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 9 * v17;
        v19 = (*(v2 + 48) + 72 * v17);
        memcpy(__dst, v19, sizeof(__dst));
        memmove((*(v4 + 48) + 8 * v18), v19, 0x48uLL);
        result = sub_10001C174(__dst, &v20);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100398F34()
{
  v1 = v0;
  sub_10026D814(&qword_1006A7C08, &qword_1005834B8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(v4 + 48) + 16 * v14;
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1003990D4()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6(0);
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  v15 = &v32 - v14;
  sub_10026D814(v4, v2);
  v16 = *v0;
  v17 = static _SetStorage.copy(original:)();
  v18 = v17;
  if (*(v16 + 16))
  {
    v33 = v5;
    v19 = (v17 + 56);
    v20 = ((1 << *(v18 + 32)) + 63) >> 6;
    if (v18 != v16 || v19 >= v16 + 56 + 8 * v20)
    {
      memmove(v19, (v16 + 56), 8 * v20);
    }

    v22 = 0;
    *(v18 + 16) = *(v16 + 16);
    v23 = 1 << *(v16 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v16 + 56);
    v26 = (v23 + 63) >> 6;
    v34 = v10 + 32;
    v35 = v10 + 16;
    while (v25)
    {
      v27 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_17:
      v31 = *(v10 + 72) * (v27 | (v22 << 6));
      (*(v10 + 16))(v15, *(v16 + 48) + v31, v7);
      (*(v10 + 32))(*(v18 + 48) + v31, v15, v7);
    }

    v28 = v22;
    while (1)
    {
      v22 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v22 >= v26)
      {

        v5 = v33;
        goto LABEL_21;
      }

      ++v28;
      if (*(v16 + 56 + 8 * v22))
      {
        sub_100007C8C();
        v25 = v30 & v29;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v18;
    sub_100005EDC();
  }
}

void *sub_1003992FC(uint64_t *a1, uint64_t *a2)
{
  sub_10026D814(a1, a2);
  sub_10039C394();
  sub_10000670C();
  if (v5)
  {
    result = sub_10000E7D4();
    if (v9)
    {
      v10 = result >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      result = memmove(result, v4, 8 * v7);
    }

    v11 = 0;
    v2[2] = *(v3 + 16);
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 56);
    for (i = (v12 + 63) >> 6; v14; *(v2[6] + 8 * v17) = *(*(v3 + 48) + 8 * v17))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_17:
      ;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= i)
      {
        goto LABEL_19;
      }

      v19 = *(v4 + v11);
      ++v18;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v11 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v2;
  }

  return result;
}

void sub_1003993FC()
{
  sub_10003D4BC();
  sub_10026D814(v6, v7);
  sub_10039C394();
  sub_10000670C();
  if (v8)
  {
    v9 = sub_10000E7D4();
    if (v12)
    {
      v13 = v9 >= v11;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      memmove(v9, v2, 8 * v10);
    }

    sub_10000C7A0();
    for (; v5; v20 = v19)
    {
      sub_100035B9C();
LABEL_15:
      v18 = v14 | (v3 << 6);
      v19 = *(*(v1 + 48) + 8 * v18);
      *(v0[6] + 8 * v18) = v19;
    }

    v15 = v3;
    while (1)
    {
      v3 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v15;
      if (*(v2 + v3))
      {
        sub_100007C8C();
        v5 = v17 & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    sub_100035CE8();
  }
}

uint64_t sub_1003994D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10026D814(&qword_1006A7C50, &qword_1005834F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v35 = (v11 - 1) & v11;
LABEL_14:
        v17 = (*(v3 + 48) + 40 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v21 = v17[2];
        v20 = v17[3];
        v22 = v17[4];
        v23 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        String.hash(into:)();
        Hasher._combine(_:)(v22);
        result = Hasher._finalize()();
        v24 = -1 << *(v6 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v32 = (*(v6 + 48) + 40 * v27);
        *v32 = v18;
        v32[1] = v19;
        v32[2] = v21;
        v32[3] = v20;
        v32[4] = v22;
        ++*(v6 + 16);
        v3 = v34;
        v11 = v35;
        if (!v35)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v13 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v33;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v35 = (v16 - 1) & v16;
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

uint64_t sub_100399758(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10026D814(&unk_1006A7A30, &qword_100583380);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
        v16 = *(*(v3 + 48) + 4 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = static Hasher._hash(seed:bytes:count:)();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 4 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
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
          goto LABEL_25;
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
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_100399948(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10026D814(&qword_1006A7C08, &qword_1005834B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
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
        v16 = *(v3 + 48) + 16 * (v13 | (v7 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();
        if (v18)
        {
          v20 = 0;
        }

        else
        {
          Hasher._combine(_:)(1uLL);
          v20 = v17;
        }

        Hasher._combine(_:)(v20);
        result = Hasher._finalize()();
        v21 = -1 << *(v6 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = *(v6 + 48) + 16 * v24;
        *v29 = v17;
        *(v29 + 8) = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
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

          v2 = v30;
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

uint64_t sub_100399B90(uint64_t a1)
{
  v2 = v1;
  v38 = type metadata accessor for UUID();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_10026D814(&unk_1006A7BC8, &qword_100583490);
  v11 = static _SetStorage.resize(original:capacity:move:)();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    if (v17)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v23 = *(v37 + 72);
        (*(v37 + 16))(v8, *(result + 48) + v23 * (v20 | (v13 << 6)), v38);
        v24 = *(v11 + 40);
        sub_10000EFA8(&qword_1006A3BE0);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v25 = -1 << *(v11 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v19 + 8 * (v26 >> 6))) == 0)
        {
          break;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v19 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v19 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        (*v34)(*(v11 + 48) + v28 * v23, v8, v38);
        ++*(v11 + 16);
        result = v35;
        if (!v17)
        {
          goto LABEL_9;
        }
      }

      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v19 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v21 = v13;
      while (1)
      {
        v13 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v13 >= v18)
        {

          v2 = v33;
          goto LABEL_27;
        }

        v22 = *(v14 + 8 * v13);
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v17 = (v22 - 1) & v22;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_100399EA8(uint64_t a1)
{
  v2 = v1;
  v38 = type metadata accessor for Participant();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_10026D814(&qword_1006A7C68, &unk_100583510);
  v11 = static _SetStorage.resize(original:capacity:move:)();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    if (v17)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v23 = *(v37 + 72);
        (*(v37 + 16))(v8, *(result + 48) + v23 * (v20 | (v13 << 6)), v38);
        v24 = *(v11 + 40);
        sub_10000EFA8(&unk_1006A4860);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v25 = -1 << *(v11 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v19 + 8 * (v26 >> 6))) == 0)
        {
          break;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v19 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v19 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        (*v34)(*(v11 + 48) + v28 * v23, v8, v38);
        ++*(v11 + 16);
        result = v35;
        if (!v17)
        {
          goto LABEL_9;
        }
      }

      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v19 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v21 = v13;
      while (1)
      {
        v13 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v13 >= v18)
        {

          v2 = v33;
          goto LABEL_27;
        }

        v22 = *(v14 + 8 * v13);
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v17 = (v22 - 1) & v22;
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
    *v2 = v11;
  }

  return result;
}

void sub_10039A1C0()
{
  sub_100005EF4();
  sub_10000FE58(v6, v7, v8);
  sub_10001140C();
  v10 = v9;
  static _SetStorage.resize(original:capacity:move:)();
  sub_10000670C();
  if (v11)
  {
    sub_10000FAC4();
    v12 = v10 + 56;
    if (v4)
    {
      while (1)
      {
        sub_100035B9C();
LABEL_9:
        v17 = *(*(v1 + 48) + 8 * (v13 | (v3 << 6)));
        v18 = *(v10 + 40);
        v19 = static Hasher._hash(seed:_:)();
        sub_100006BFC(v19, *(v10 + 32));
        if (v20)
        {
          break;
        }

        sub_10000FE84();
LABEL_19:
        sub_100007DC0();
        *(v12 + v24) |= v25;
        *(*(v10 + 48) + 8 * v26) = v17;
        ++*(v10 + 16);
        if (!v4)
        {
          goto LABEL_4;
        }
      }

      sub_10000E7C0();
      while (1)
      {
        sub_100007A0C();
        if (v20)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        if (*(v12 + 8 * v21) != -1)
        {
          sub_10000A950();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v14 = v3;
      while (1)
      {
        v3 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v3 >= v5)
        {
          goto LABEL_21;
        }

        ++v14;
        if (*(v2 + 8 * v3))
        {
          sub_100007C8C();
          v4 = v16 & v15;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    *v0 = v10;
    sub_100005EDC();
  }
}

char *sub_10039A300(char *a1, int64_t a2, char a3)
{
  result = sub_10039A5EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10039A320(char *a1, int64_t a2, char a3)
{
  result = sub_10039A700(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10039A340(size_t a1, int64_t a2, char a3)
{
  result = sub_10039A80C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10039A360(char *a1, int64_t a2, char a3)
{
  result = sub_10039A9D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_10039A380()
{
  v1 = *v0;
  sub_10039ABC4();
  *v0 = v2;
}

void sub_10039A3C0()
{
  v1 = *v0;
  sub_10039AE88();
  *v0 = v2;
}

void sub_10039A400()
{
  v1 = *v0;
  sub_10039AE88();
  *v0 = v2;
}

void *sub_10039A440(void *a1, int64_t a2, char a3)
{
  result = sub_10039AD58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_10039A460()
{
  v1 = *v0;
  sub_10039AE88();
  *v0 = v2;
}

char *sub_10039A4A0(char *a1, int64_t a2, char a3)
{
  result = sub_10039AF8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10039A4C0(void *a1, int64_t a2, char a3)
{
  result = sub_10039B08C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_10039A4E0(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_10000A27C();
    if (v7 != v8)
    {
      sub_10000E7FC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000862C();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    v11 = swift_allocObject();
    j__malloc_size(v11);
    sub_1000103FC();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_10039A5EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10026D814(&qword_1006A7C48, &qword_1005834F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10039A700(char *result, int64_t a2, char a3, char *a4)
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
    sub_10026D814(&qword_1006ACA20, &qword_100583388);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10039A80C(size_t result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10026D814(&qword_1006A7C38, &qword_1005834E0);
  v10 = *(type metadata accessor for Caption() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Caption() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_100395E38(a4 + v16, v8, v13 + v16, &type metadata accessor for Caption);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10039A9D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10026D814(&qword_1006A7C10, &qword_1005834C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
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

void sub_10039AAE8(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_10000A27C();
    if (v7 != v8)
    {
      sub_10000E7FC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000862C();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_10026D814(&unk_1006ACA30, &qword_100583468);
    v11 = swift_allocObject();
    j__malloc_size(v11);
    sub_1000103FC();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 16 * v9;
  if (a1)
  {
    if (v11 != a4 || &v14[v15] <= v13)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }
}

void sub_10039ABC4()
{
  sub_100005EF4();
  sub_10000F3AC();
  if (v7)
  {
    sub_10000A27C();
    if (v9 != v10)
    {
      sub_10000E7FC();
      if (v9)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_10000862C();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 16);
  if (v8 <= v11)
  {
    v12 = *(v0 + 16);
  }

  else
  {
    v12 = v8;
  }

  if (!v12)
  {
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_10026D814(v5, v6);
  v13 = sub_100008B14();
  v15 = *(sub_10026D814(v13, v14) - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v19 = j__malloc_size(v18);
  if (!v16)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v19 - v17 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_23;
  }

  v18[2] = v11;
  v18[3] = 2 * ((v19 - v17) / v16);
LABEL_18:
  v21 = sub_100008B14();
  v23 = *(sub_10026D814(v21, v22) - 8);
  if (v3)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_100395F24(v0 + v24, v11, v18 + v24, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_100005EDC();
}

void *sub_10039AD58(void *result, int64_t a2, char a3, void *a4)
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
    sub_10026D814(&qword_1006AB190, &unk_100583400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10026D814(&unk_1006A7AD0, &unk_100587100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10039AE88()
{
  sub_10003D4BC();
  sub_10000F3AC();
  if (v5)
  {
    sub_10000A27C();
    if (v7 != v8)
    {
      sub_10000E7FC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000862C();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_10026D814(v3, v4);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v11 != v0 || &v0[5 * v9 + 4] <= v11 + 4)
    {
      v14 = sub_1000060A8();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = sub_100008B14();
    sub_10026D814(v17, v18);
    sub_1000060A8();
    swift_arrayInitWithCopy();
  }

  sub_100035CE8();
}

char *sub_10039AF8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10026D814(&qword_1006A7AB8, &unk_1005833F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_10039B08C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10026D814(&unk_1006A7A80, &unk_1005833C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10026D814(&qword_1006ABFF0, &qword_100588080);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10039B204(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a1;
  if (sub_10000B6D0(a1))
  {
    sub_10026D814(a2, a3);
    v6 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  v30 = sub_10000B6D0(v5);
  if (v30)
  {
    v7 = 0;
    v8 = (v6 + 7);
    v28 = v5;
    v29 = v5 & 0xC000000000000001;
    v27 = v5 + 32;
    while (1)
    {
      sub_100024D54(v7, v29 == 0, v5);
      v9 = v29 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v27 + 8 * v7);
      v10 = v9;
      v11 = __OFADD__(v7++, 1);
      if (v11)
      {
        break;
      }

      NSObject._rawHashValue(seed:)(v6[5]);
      v12 = *(v6 + 32);
      sub_1000052DC();
      v15 = ~v14;
      while (1)
      {
        v16 = v13 & v15;
        v17 = (v13 & v15) >> 6;
        v18 = *&v8[8 * v17];
        v19 = 1 << (v13 & v15);
        if ((v19 & v18) == 0)
        {
          break;
        }

        sub_10001AC50();
        sub_100006AF0(v20, v21, v22);
        v23 = *(v6[6] + 8 * v16);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {

          goto LABEL_17;
        }

        v13 = v16 + 1;
      }

      *&v8[8 * v17] = v19 | v18;
      *(v6[6] + 8 * v16) = v10;
      v25 = v6[2];
      v11 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v11)
      {
        goto LABEL_20;
      }

      v6[2] = v26;
LABEL_17:
      v5 = v28;
      if (v7 == v30)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_10039B400()
{
  sub_10000B8E8();
  v5 = v4;
  if (*(v4 + 16) && (sub_10026D814(&qword_1006A7B20, &unk_100583420), sub_100007694(), v6 = static _SetStorage.allocate(capacity:)(), (v7 = *(v5 + 16)) != 0))
  {
    sub_10000C5A4();
    while (v0 < *(v5 + 16))
    {
      v8 = *(v2 + 8 * v0++);
      v9 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v8);
      v10 = Hasher._finalize()();
      v11 = ~(v3 << *(v6 + 32));
      while (1)
      {
        sub_10000C154(v10, v11);
        if (v16)
        {
          break;
        }

        if (*(*(v6 + 48) + 8 * v12) == v8)
        {
          goto LABEL_11;
        }

        v10 = v12 + 1;
      }

      *(v1 + 8 * v13) = v15 | v14;
      *(*(v6 + 48) + 8 * v12) = v8;
      v17 = *(v6 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_14;
      }

      *(v6 + 16) = v19;
LABEL_11:
      if (v0 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    sub_1000089B0();
  }
}

void sub_10039B534()
{
  sub_10000B8E8();
  v1 = v0;
  if (*(v0 + 16) && (sub_10026D814(&unk_1006A7A40, &unk_100583390), sub_100007694(), v2 = static _SetStorage.allocate(capacity:)(), v3 = v2, (v4 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v1 + 16))
    {
      v7 = (v1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      sub_100005364();
      String.hash(into:)();
      Hasher._finalize()();
      v11 = *(v3 + 32);
      sub_1000052DC();
      v14 = ~v13;
      while (1)
      {
        v15 = v12 & v14;
        v16 = (v12 & v14) >> 6;
        v17 = *(v6 + 8 * v16);
        v18 = 1 << (v12 & v14);
        if ((v18 & v17) == 0)
        {
          break;
        }

        v19 = (*(v3 + 48) + 16 * v15);
        v20 = *v19 == v9 && v19[1] == v8;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_16;
        }

        v12 = v15 + 1;
      }

      *(v6 + 8 * v16) = v18 | v17;
      v21 = (*(v3 + 48) + 16 * v15);
      *v21 = v9;
      v21[1] = v8;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v24;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1000089B0();
  }
}

void sub_10039B6A0()
{
  sub_10000B8E8();
  v5 = v4;
  if (*(v4 + 16) && (sub_10026D814(&qword_1006A7C40, &qword_1005834E8), sub_100007694(), v6 = static _SetStorage.allocate(capacity:)(), (v7 = *(v5 + 16)) != 0))
  {
    sub_10000C5A4();
    while (v0 < *(v5 + 16))
    {
      v8 = *(v2 + 4 * v0++);
      v9 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v8);
      v10 = Hasher._finalize()();
      v11 = ~(v3 << *(v6 + 32));
      while (1)
      {
        sub_10000C154(v10, v11);
        if (v16)
        {
          break;
        }

        if (*(*(v6 + 48) + 4 * v12) == v8)
        {
          goto LABEL_11;
        }

        v10 = v12 + 1;
      }

      *(v1 + 8 * v13) = v15 | v14;
      *(*(v6 + 48) + 4 * v12) = v8;
      v17 = *(v6 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_14;
      }

      *(v6 + 16) = v19;
LABEL_11:
      if (v0 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    sub_1000089B0();
  }
}

uint64_t sub_10039B864(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v3 = sub_1003849A4(v9, v5, v3);

      return v3;
    }
  }

  __chkstk_darwin(a1, a2);
  v6 = &v10 - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100396044(0, v5, v6);
  sub_1003848B8(v6, v5, v3);
  if (!v2)
  {
    return v7;
  }

  swift_willThrow();
  return v3;
}

void *sub_10039B9C8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10039BA98(v9, a2, a3, a4, a5, sub_1003EB64C);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_10039BA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v27 = 0;
  v7 = 0;
  v9 = a3 + 56;
  v8 = *(a3 + 56);
  v10 = *(a3 + 32);
  sub_100007990();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_9:
    v30 = *(*(a3 + 48) + 8 * (v16 | (v7 << 6)));
    v20 = v30;
    v21 = a4(&v30);

    if (v6)
    {
      return;
    }

    if (v21)
    {
      sub_100006F34();
      sub_10003EB98(v22);
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_14:

        a6(a1, a2, v27, a3);
        return;
      }
    }
  }

  v17 = v7;
  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v7 >= v15)
    {
      goto LABEL_14;
    }

    ++v17;
    if (*(v9 + 8 * v7))
    {
      sub_100007C8C();
      v13 = v19 & v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10039BBE4(uint64_t a1, unint64_t a2, uint64_t a3)
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

uint64_t sub_10039BC3C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10000A90C(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    sub_100008B14();
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v8;
  return sub_100018FB8();
}

uint64_t sub_10039BCA0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10000A90C(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    sub_100008B14();
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v8;
  return sub_100018FB8();
}

uint64_t sub_10039BD00(void *a1)
{
  v1 = [a1 remoteParticipantHandles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10000528C();
  sub_100006AF0(v3, v4, v5);
  sub_10000528C();
  sub_10039C15C(v6);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

uint64_t sub_10039BD94(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100006B30();
}

void sub_10039BDF0(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a4 setBlockIncomingCommunication:a1 & 1 forEmailAddress:v6];
}

uint64_t sub_10039BE6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  sub_1002A1D5C(&v12);
  v8 = *(*(a4 - 8) + 32);
  sub_10001AC50();
  v9();
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10002F0C8(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_10039BF00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20[3] = sub_100006AF0(0, &unk_1006AB6A0, CNFavorites_ptr);
  v20[4] = &off_10062CD70;
  v20[0] = a2;
  v8 = *(a4 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 24);
  v9 = *(a4 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 32);
  sub_100009B14((a4 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource), v8);
  v10 = a2;
  v11 = sub_100391B64();
  v12 = (*(v9 + 16))(v11, v8, v9);

  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a1;
  v19[5] = v20;
  v13 = *(sub_100388EDC(sub_10039C0D0, v19, v12) + 16);

  if (qword_1006A0B48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA658);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v15, v16, "Calculating current badge value for Clarity Board %ld", v17, 0xCu);
  }

  sub_100395FFC(v20);
  return v13;
}

unint64_t sub_10039C0F4(uint64_t a1)
{
  result = sub_10004448C(a1);
  if (!result)
  {
    sub_10026DCB4(v3, v4);
    sub_100007694();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10039C15C(uint64_t a1)
{
  result = sub_10004448C(a1);
  if (!result)
  {
    sub_100006AF0(255, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_10039C1A8()
{
  sub_100007710();
  v5 = sub_10039C498(v1, v2, v3, v4);
  sub_100008070(v5);
  v7 = *(v6 + 40);
  v8 = sub_100006B30();
  v9(v8);
  return v0;
}

uint64_t sub_10039C200()
{
  sub_100007710();
  v5 = sub_10039C498(v1, v2, v3, v4);
  sub_100008070(v5);
  v7 = *(v6 + 16);
  v8 = sub_100006B30();
  v9(v8);
  return v0;
}

void sub_10039C270()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_100394874(v2, v3);
}

unint64_t sub_10039C2D4(uint64_t a1)
{
  result = sub_10004448C(a1);
  if (!result)
  {
    type metadata accessor for CommunicationTrustScoreOptions();
    sub_100007694();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_10039C310()
{
  sub_100007710();
  v5 = sub_10039C498(v1, v2, v3, v4);
  sub_100008070(v5);
  v7 = *(v6 + 32);
  v8 = sub_100006B30();
  v9(v8);
  return v0;
}

uint64_t sub_10039C394()
{
  v2 = *v0;

  return static _SetStorage.copy(original:)();
}

uint64_t sub_10039C3B0()
{

  return swift_dynamicCast();
}

uint64_t sub_10039C460()
{
  v2 = *(*v0 + 40);

  return Hasher.init(_seed:)();
}

void sub_10039C480(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_10039C498(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10026D814(a3, a4);
}

uint64_t sub_10039C4B0()
{
}

uint64_t type metadata accessor for ConversationLinkKeyAgreement()
{
  result = qword_1006A7D28;
  if (!qword_1006A7D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10039C53C()
{
  result = type metadata accessor for P256.KeyAgreement.PrivateKey();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10039C5A8(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v2) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v2 = v2;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_10;
    case 2uLL:
      v4 = *(result + 16);
      v3 = *(result + 24);
      v5 = __OFSUB__(v3, v4);
      v2 = v3 - v4;
      if (!v5)
      {
        goto LABEL_6;
      }

LABEL_10:
      __break(1u);
      break;
    case 3uLL:
      goto LABEL_7;
    default:
      v2 = BYTE6(a2);
LABEL_6:
      if (v2 > 27)
      {
        sub_1003B4C8C(result, a2);
        result = AES.GCM.SealedBox.init(combined:)();
      }

      else
      {
LABEL_7:
        sub_100049B14(result, a2);
        v6 = type metadata accessor for CryptoKitError();
        sub_10039D288(&qword_1006A7D60, &type metadata accessor for CryptoKitError);
        swift_allocError();
        (*(*(v6 - 8) + 104))(v7, enum case for CryptoKitError.incorrectParameterSize(_:), v6);
        result = swift_willThrow();
      }

      break;
  }

  return result;
}

NSObject *sub_10039C6E0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10026D814(&qword_1006A3858, &qword_10057E7A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v30 - v8;
  v10 = type metadata accessor for AES.GCM.SealedBox();
  v11 = sub_100007FEC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v30[0] = a1;
  v30[1] = a2;
  v20 = type metadata accessor for AES.GCM.Nonce();
  sub_10000AF74(v9, 1, 1, v20);
  sub_1002BCBD4();
  static AES.GCM.seal<A>(_:using:nonce:)();
  sub_1000099A4(v9, &qword_1006A3858, &qword_10057E7A8);
  if (!v2)
  {
    v21 = v10;
    AES.GCM.SealedBox.combined.getter();
    sub_10000F730();
    if (!v24 & v23)
    {
      if (qword_1006A0B20 != -1)
      {
        sub_100008228();
      }

      v25 = type metadata accessor for Logger();
      sub_10000AF9C(v25, qword_1006BA5E0);
      v10 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v10, v26, "Failed to retrieve combined data from encrypted LMI response", v27, 2u);
      }

      sub_1002BCB28();
      swift_allocError();
      *v28 = 3;
      swift_willThrow();
      (*(v13 + 8))(v19, v21);
    }

    else
    {
      v10 = v22;
      (*(v13 + 8))(v19, v21);
    }
  }

  return v10;
}

void sub_10039C97C(uint64_t a1, void *a2)
{
  v77 = a1;
  v4 = type metadata accessor for AES.GCM.SealedBox();
  v5 = sub_100007FEC(v4);
  v65 = v6;
  v66 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  sub_100007FDC();
  v71 = v11 - v10;
  v12 = type metadata accessor for SharedSecret();
  v13 = sub_100007FEC(v12);
  v67 = v14;
  v68 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13, v17);
  sub_100007FDC();
  v20 = v19 - v18;
  v70 = type metadata accessor for SymmetricKey();
  v21 = sub_100007FEC(v70);
  v73 = v22;
  v24 = *(v23 + 64);
  v26 = __chkstk_darwin(v21, v25);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v29);
  v72 = &v63 - v30;
  v31 = sub_10026D814(&qword_1006A3838, &qword_10057E7A0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8, v33);
  v35 = &v63 - v34;
  v36 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v37 = sub_100007FEC(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v37, v42);
  sub_100007FDC();
  v45 = v44 - v43;
  v69 = a2;
  sub_10039D224(a2);
  sub_10000F730();
  if (!v49 & v48)
  {
    __break(1u);
    goto LABEL_16;
  }

  *&v76 = v46;
  *(&v76 + 1) = v47;
  P256.KeyAgreement.PublicKey.init<A>(compactRepresentation:)();
  if (!v2)
  {
    sub_10000AF74(v35, 0, 1, v36);
    (*(v39 + 32))(v45, v35, v36);
    P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
    type metadata accessor for SHA256();
    v63 = xmmword_10057E760;
    v76 = xmmword_10057E760;
    if (qword_1006A0B98 != -1)
    {
      swift_once();
    }

    v74 = qword_1006A8A00;
    v75 = *algn_1006A8A08;
    sub_100290AC4(qword_1006A8A00, *algn_1006A8A08);
    v55 = sub_10039D288(&qword_1006A3848, &type metadata accessor for SHA256);
    sub_1002BCBD4();
    sub_100010410();
    v64 = v55;
    SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
    sub_100049B14(v74, v75);
    sub_100049B14(v76, *(&v76 + 1));
    v76 = v63;
    if (qword_1006A0BA0 != -1)
    {
      swift_once();
    }

    v74 = qword_1006A8A10;
    v75 = *algn_1006A8A18;
    sub_100290AC4(qword_1006A8A10, *algn_1006A8A18);
    sub_100010410();
    SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
    sub_100049B14(v74, v75);
    sub_100049B14(v76, *(&v76 + 1));
    (*(v67 + 8))(v20, v68);
    v56 = v70;
    (*(v73 + 32))(v72, v28, v70);
    sub_1003699E8(v69);
    sub_10000F730();
    if (!(!v49 & v48))
    {
      sub_10039C5A8(v57, v58);
      v59 = static AES.GCM.open(_:using:)();
      v61 = v60;
      v62 = objc_allocWithZone(CSDMessagingConversationMessage);
      sub_100290AC4(v59, v61);
      if (sub_10039D1B4())
      {
        sub_100049B14(v59, v61);
        (*(v65 + 8))(v71, v66);
        (*(v73 + 8))(v72, v56);
        (*(v39 + 8))(v45, v36);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  sub_10000AF74(v35, 1, 1, v36);
  sub_1000099A4(v35, &qword_1006A3838, &qword_10057E7A0);
  if (qword_1006A0B20 != -1)
  {
    sub_100008228();
  }

  v50 = type metadata accessor for Logger();
  sub_10000AF9C(v50, qword_1006BA5E0);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Failed to derive public key from public key data, ignoring let me in", v53, 2u);
  }

  sub_1002BCB28();
  swift_allocError();
  *v54 = 0;
  swift_willThrow();
}

uint64_t sub_10039D050@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = type metadata accessor for ConversationLinkKeyAgreement();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  sub_100007FDC();
  v17 = v16 - v15;
  P256.KeyAgreement.PrivateKey.init<A>(rawRepresentation:)();
  (*(v5 + 32))(v17, v11, v2);
  sub_10036A424(v17, a1);
  return sub_10000AF74(a1, 0, 1, v12);
}

id sub_10039D1B4()
{
  sub_10000F730();
  if (!v4 & v3)
  {
    v7.super.isa = 0;
  }

  else
  {
    v5 = v2;
    v6 = v1;
    v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100290B6C(v6, v5);
  }

  v8 = [v0 initWithData:v7.super.isa];

  return v8;
}

uint64_t sub_10039D224(void *a1)
{
  v1 = [a1 publicKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10039D288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10039D2D0(uint64_t result, int a2, int a3)
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

uint64_t sub_10039D320(char a1)
{
  if (a1)
  {
    return 0x656E6E6F63736944;
  }

  else
  {
    return 0x657463656E6E6F43;
  }
}

uint64_t sub_10039D36C(char a1, void *a2)
{
  type metadata accessor for AVAudioSessionProvider();
  swift_initStackObject();
  if (sub_10003B7A8(a2))
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
    }
  }

  [a2 provider];

  return a1 & 1;
}

BOOL sub_10039D420(unsigned __int8 a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, uint64_t a5, unint64_t a6)
{
  v8 = a1;
  if (a1 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (a4 == 2 || ((a4 ^ v8) & 1) != 0)
    {
      return result;
    }
  }

  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  result = (a3 | a6) == 0;
  if (a3)
  {
    if (a6)
    {
      sub_100006AF0(0, &qword_1006A2B48, AVAudioSession_ptr);
      v10 = a6;
      v11 = a3;
      v12 = static NSObject.== infix(_:_:)();

      return v12 & 1;
    }
  }

  return result;
}

id sub_10039D770@<X0>(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1;
  v7 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7 - 8, v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v60 - v15;
  v18 = __chkstk_darwin(v14, v17);
  v20 = &v60 - v19;
  __chkstk_darwin(v18, v21);
  v23 = &v60 - v22;
  if (v6 != 2)
  {
    v26 = [a2 isFaceTimeProvider];
    if (a1)
    {
      if (!v26)
      {
        if (![a2 isTelephonyProvider])
        {
          goto LABEL_2;
        }

        result = TUBundle();
        if (result)
        {
          v43 = result;
          sub_10000863C();
          v48 = sub_1003A14F4(v44, v45, v46, v47, v43);

          if (v48)
          {
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            type metadata accessor for URL();
            sub_10000A964();
          }

          else
          {
            type metadata accessor for URL();
            sub_10000A28C();
          }

          sub_10000AF74(v20, v49, 1, v50);
          v59 = v20;
          return sub_1002A01B0(v59, a3);
        }

        goto LABEL_33;
      }

      result = TUBundle();
      if (result)
      {
        v27 = result;
        sub_10000863C();
        v32 = sub_1003A14F4(v28, v29, v30, v31, v27);

        if (v32)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          type metadata accessor for URL();
          sub_10000A964();
        }

        else
        {
          type metadata accessor for URL();
          sub_10000A28C();
        }

        sub_10000AF74(v23, v33, 1, v34);
        v59 = v23;
        return sub_1002A01B0(v59, a3);
      }

      __break(1u);
    }

    else
    {
      if (!v26)
      {
        if (![a2 isTelephonyProvider])
        {
          goto LABEL_2;
        }

        result = TUBundle();
        if (result)
        {
          v51 = result;
          sub_10000863C();
          v56 = sub_1003A14F4(v52, v53, v54, v55, v51);

          if (v56)
          {
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            type metadata accessor for URL();
            sub_10000A964();
          }

          else
          {
            type metadata accessor for URL();
            sub_10000A28C();
          }

          sub_10000AF74(v12, v57, 1, v58);
          v59 = v12;
          return sub_1002A01B0(v59, a3);
        }

LABEL_34:
        __break(1u);
        return result;
      }

      result = TUBundle();
      if (result)
      {
        v35 = result;
        sub_10000863C();
        v40 = sub_1003A14F4(v36, v37, v38, v39, v35);

        if (v40)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          type metadata accessor for URL();
          sub_10000A964();
        }

        else
        {
          type metadata accessor for URL();
          sub_10000A28C();
        }

        sub_10000AF74(v16, v41, 1, v42);
        v59 = v16;
        return sub_1002A01B0(v59, a3);
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_2:
  v24 = type metadata accessor for URL();

  return sub_10000AF74(a3, 1, 1, v24);
}

_BYTE *storeEnumTagSinglePayload for HapticPattern(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_10039DBF8()
{
  result = qword_1006A7D68;
  if (!qword_1006A7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7D68);
  }

  return result;
}

id sub_10039DC4C(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = [objc_allocWithZone(TUFeatureFlags) init];
  *&v3[OBJC_IVAR___CSDCallRecordingControllerFacade_featureFlags] = v7;
  *&v3[OBJC_IVAR___CSDCallRecordingControllerFacade_queue] = a1;
  v8 = type metadata accessor for AudioCallRecordingController();
  v9 = a1;
  v10 = a2;
  v11 = sub_1003E3A1C(v9, v10);
  v12 = &v3[OBJC_IVAR___CSDCallRecordingControllerFacade_audioCallRecordingController];
  v12[3] = v8;
  v12[4] = &off_10062E150;
  *v12 = v11;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "init");

  return v13;
}

void sub_10039DD80(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a3 + OBJC_IVAR___CSDCallRecordingControllerFacade_queue);
  *v13 = v14;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v8);
  _Block_copy(a4);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v8);
  if (v14)
  {
    v16 = sub_100009B14((a3 + OBJC_IVAR___CSDCallRecordingControllerFacade_audioCallRecordingController), *(a3 + OBJC_IVAR___CSDCallRecordingControllerFacade_audioCallRecordingController + 24));
    sub_1003E8B00(a1, a2, *v16, a4);
    _Block_release(a4);
  }

  else
  {
    __break(1u);
  }
}

void CallRecordingControllerFacade.perform(_:_:_:)(void *a1, void *a2, void (*a3)(id), void (*a4)(void))
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v4 + OBJC_IVAR___CSDCallRecordingControllerFacade_queue);
  *v14 = v15;
  (*(v10 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v9);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v14, v9);
  if (v15)
  {
    v17 = *sub_100009B14((v4 + OBJC_IVAR___CSDCallRecordingControllerFacade_audioCallRecordingController), *(v4 + OBJC_IVAR___CSDCallRecordingControllerFacade_audioCallRecordingController + 24));
    sub_1003E8F60(a1, a2, a3, a4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10039E194()
{
  sub_10004D4B4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t sub_10039E1C0()
{
  sub_10039E194();

  return _swift_deallocClassInstance(v0, 48, 7);
}

double sub_10039E218()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

void sub_10039E228(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  v7 = [objc_msgSend(objc_opt_self() "capabilitiesForHardware")];
  swift_unknownObjectRelease();
  if (!v7)
  {
    if (qword_1006A0B38 != -1)
    {
      sub_10000864C();
    }

    v17 = type metadata accessor for Logger();
    sub_10000AF9C(v17, qword_1006BA628);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v14))
    {
      goto LABEL_13;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Haptics are not supported on this device";
    goto LABEL_12;
  }

  v8 = *(v3 + 24);
  if (v8)
  {
    v9 = *(v3 + 32);
    v10 = *(v3 + 16);
    v11 = v9;
    v12 = v8;
    LOBYTE(v9) = sub_10039D420(a1, a2, a3, v10, v12, v9);

    if (v9)
    {
      if (qword_1006A0B38 != -1)
      {
        sub_10000864C();
      }

      v13 = type metadata accessor for Logger();
      sub_10000AF9C(v13, qword_1006BA628);
      oslog = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v14))
      {
        goto LABEL_13;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Asked to begin or update playback of Haptic but new descriptor is equal to activeDescriptor so doing nothing";
LABEL_12:
      _os_log_impl(&_mh_execute_header, oslog, v14, v16, v15, 2u);

LABEL_13:
      sub_100006048();

      return;
    }
  }

  sub_10004D0B4();
  sub_100006048();

  sub_10039E470(v20, v21, v22, v23, v24);
}

void sub_10039E470(uint64_t a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v105 = a5;
  v109 = a4;
  v110 = a1;
  v7 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v97 - v10;
  v111 = type metadata accessor for URL();
  v12 = *(v111 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v111, v14);
  v102 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15, v17);
  v106 = &v97 - v19;
  __chkstk_darwin(v18, v20);
  v108 = &v97 - v21;
  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_10000AF9C(v22, qword_1006BA628);
  v24 = a3;
  v25 = a2;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v103 = v24;

  v28 = os_log_type_enabled(v26, v27);
  v107 = v12;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136315138;
    v31 = sub_10039D52C(v110, v25, a3);
    v33 = v25;
    v34 = sub_10002741C(v31, v32, aBlock);

    *(v29 + 4) = v34;
    v25 = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "Attempting to play Haptic descriptor %s", v29, 0xCu);
    sub_100009B7C(v30);
    v12 = v107;
  }

  sub_10039D770(v110, v25, v11);
  v35 = sub_100015468(v11, 1, v111);
  v36 = v106;
  if (v35 != 1)
  {
    v100 = v25;
    v101 = a3;
    v40 = v108;
    v41 = v111;
    (*(v12 + 32))(v108, v11, v111);
    v42 = *(v12 + 16);
    v42(v36, v40, v41);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    v45 = os_log_type_enabled(v43, v44);
    v99 = v23;
    if (v45)
    {
      v46 = v36;
      v47 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      aBlock[0] = v98;
      *v47 = 136315138;
      sub_10039FAF0();
      v48 = v111;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v106 = *(v12 + 8);
      (v106)(v46, v48);
      v52 = sub_10002741C(v49, v51, aBlock);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v43, v44, "Fetched URL for Haptic ahap file: %s", v47, 0xCu);
      sub_100009B7C(v98);
    }

    else
    {

      v106 = *(v12 + 8);
      (v106)(v36, v111);
    }

    v54 = v100;
    v53 = v101;
    v55 = v104;
    v56 = sub_10039EE44(v110);
    if (!v56)
    {
      v66 = v54;
      v67 = v103;
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        aBlock[0] = v71;
        *v70 = 136315138;
        v72 = sub_10039D52C(v110, v66, v101);
        v74 = sub_10002741C(v72, v73, aBlock);

        *(v70 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v68, v69, "No Haptic engine could be found for descriptor %s", v70, 0xCu);
        sub_100009B7C(v71);
      }

      if (v109)
      {
        v109();
      }

      goto LABEL_30;
    }

    v57 = v55[5];
    v55[5] = v56;
    v58 = v56;

    v59 = v55[2];
    v60 = v55[3];
    v61 = v55[4];
    v55[2] = v110;
    v55[3] = v54;
    v55[4] = v53;
    sub_10004D4B4(v59, v60, v61);
    v62 = v102;
    v42(v102, v108, v111);
    v63 = objc_allocWithZone(CHHapticPattern);
    v64 = v54;
    v65 = v103;
    v75 = sub_10039F99C(v62);
    aBlock[0] = 0;
    v76 = [v58 createPlayerWithPattern:v75 error:aBlock];
    v77 = aBlock[0];
    if (v76)
    {
      v78 = v76;
      aBlock[0] = 0;
      v79 = v77;
      v80 = [v58 startAndReturnError:aBlock];
      v81 = aBlock[0];
      if (v80)
      {
        aBlock[0] = 0;
        v82 = v81;
        v83 = [v78 startAtTime:aBlock error:0.0];
        v81 = aBlock[0];
        if (v83)
        {
          v84 = swift_allocObject();
          v85 = v109;
          v86 = v105;
          v84[2] = v109;
          v84[3] = v86;
          aBlock[4] = sub_10039FAE8;
          aBlock[5] = v84;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10039F7C8;
          aBlock[3] = &unk_10062B470;
          v87 = _Block_copy(aBlock);
          v88 = v81;
          sub_1000115CC(v85);

          [v58 notifyWhenPlayersFinished:v87];
          _Block_release(v87);

          swift_unknownObjectRelease();
          goto LABEL_30;
        }
      }

      v89 = v81;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      v90 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    swift_errorRetain();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      swift_errorRetain();
      v95 = _swift_stdlib_bridgeErrorToNSError();
      *(v93 + 4) = v95;
      *v94 = v95;
      _os_log_impl(&_mh_execute_header, v91, v92, "Attempt to play call Haptic pattern returned error %@", v93, 0xCu);
      sub_1000099A4(v94, &unk_1006A2630, &qword_10057CB40);
    }

    v96 = [v58 stopWithCompletionHandler:0];
    if (!v109)
    {
      (v106)(v108, v111);

      return;
    }

    (v109)(v96);

LABEL_30:
    (v106)(v108, v111);
    return;
  }

  sub_1000099A4(v11, &unk_1006A52C0, &unk_10057D930);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "No URL could be determined", v39, 2u);
  }

  if (v109)
  {
    v109();
  }
}

id sub_10039EE44(char a1)
{
  if (a1)
  {
    v1 = [objc_opt_self() sharedInstance];
    if (qword_1006A0B38 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000AF9C(v2, qword_1006BA628);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Trying to create Haptic Engine using shared audio Session for telephony call disconnect", v5, 2u);
    }

    v6 = objc_allocWithZone(CHHapticEngine);
    v7 = sub_10039F824(v1);
  }

  else
  {
    if (qword_1006A0B38 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000AF9C(v8, qword_1006BA628);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Trying to create Haptic Engine ", v11, 2u);
    }

    v12 = objc_allocWithZone(CHHapticEngine);
    v7 = sub_10039F8EC();
    [v7 setPlaysHapticsOnly:1];
  }

  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA628);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Succesfully created Haptic Engine", v16, 2u);
  }

  v24 = sub_10039F34C;
  v25 = 0;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10039F44C;
  v23 = &unk_10062B498;
  v17 = _Block_copy(&aBlock);
  [v7 setStoppedHandler:v17];
  _Block_release(v17);
  v24 = sub_10039F4A0;
  v25 = 0;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100004CEC;
  v23 = &unk_10062B4C0;
  v18 = _Block_copy(&aBlock);
  [v7 setResetHandler:v18];
  _Block_release(v18);

  return v7;
}

void sub_10039F34C(uint64_t a1)
{
  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA628);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "The Haptic engine stopped because %ld", v4, 0xCu);
  }
}

uint64_t sub_10039F44C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_10039F4A0()
{
  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA628);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "The Haptic engine reset --> NOT doing anything", v2, 2u);
  }
}

uint64_t sub_10039F588(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006A0B38 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA628);
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
      _os_log_impl(&_mh_execute_header, v4, v5, "Player finished error: %@", v6, 0xCu);
      sub_1000099A4(v7, &unk_1006A2630, &qword_10057CB40);
    }

    else
    {
    }
  }

  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000AF9C(v9, qword_1006BA628);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Players finished. Stopping haptic engine", v12, 2u);
  }

  if (a2)
  {
    a2();
  }

  return 1;
}

uint64_t sub_10039F7C8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4(a2);

  return v6;
}

id sub_10039F824(void *a1)
{
  v2 = v1;
  v8 = 0;
  v4 = [v2 initWithAudioSession:a1 error:&v8];
  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

id sub_10039F8EC()
{
  v5 = 0;
  v1 = [v0 initAndReturnError:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

id sub_10039F99C(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

unint64_t sub_10039FAF0()
{
  result = qword_1006A3BD0;
  if (!qword_1006A3BD0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3BD0);
  }

  return result;
}

uint64_t sub_10039FB58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10039FB90()
{
  sub_10039FB58();

  return _swift_deallocClassInstance(v0, 48, 7);
}

unint64_t sub_10039FBE8()
{
  result = qword_1006A3DE0;
  if (!qword_1006A3DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A3DE0);
  }

  return result;
}

void sub_10039FC2C()
{
  type metadata accessor for TUCallSoundPlayerSoundType(319);
  if (v0 <= 0x3F)
  {
    sub_100006AF0(319, &unk_1006A7B10, TUCallProvider_ptr);
    if (v1 <= 0x3F)
    {
      type metadata accessor for TUCallSoundRegion(319);
      if (v2 <= 0x3F)
      {
        sub_100296D6C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10039FCF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v29 - v13;
  v15 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v29 - v18;
  if (*a1 != *a2)
  {
    goto LABEL_14;
  }

  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  v20 = *(a1 + 8);
  v21 = *(a2 + 8);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_14;
  }

  v30 = type metadata accessor for SoundDescriptor();
  v22 = *(v30 + 32);
  v23 = *(v15 + 48);
  sub_1002A5F90(a1 + v22, v19);
  sub_1002A5F90(a2 + v22, &v19[v23]);
  sub_10000A970(v19);
  if (v24)
  {
    sub_10000A970(&v19[v23]);
    if (v24)
    {
      sub_1000099A4(v19, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_17:
      v25 = *(a1 + *(v30 + 36)) ^ *(a2 + *(v30 + 36)) ^ 1;
      return v25 & 1;
    }

    goto LABEL_13;
  }

  sub_1002A5F90(v19, v14);
  sub_10000A970(&v19[v23]);
  if (v24)
  {
    (*(v5 + 8))(v14, v4);
LABEL_13:
    sub_1000099A4(v19, &unk_1006A2A30, &unk_10057D150);
    goto LABEL_14;
  }

  (*(v5 + 32))(v9, &v19[v23], v4);
  sub_1003A0348();
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v5 + 8);
  v28(v9, v4);
  v28(v14, v4);
  sub_1000099A4(v19, &unk_1006A3DD0, &unk_10057C9D0);
  if (v27)
  {
    goto LABEL_17;
  }

LABEL_14:
  v25 = 0;
  return v25 & 1;
}

unint64_t sub_1003A0348()
{
  result = qword_1006A2620;
  if (!qword_1006A2620)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2620);
  }

  return result;
}

id sub_1003A03A0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithName:v1];

  return v2;
}

id sub_1003A0414()
{
  type metadata accessor for FaceTimeSyncIDSService();
  result = sub_1003A03A0();
  qword_1006A7FD0 = result;
  return result;
}

id sub_1003A0484()
{
  if (qword_1006A0AC8 != -1)
  {
    swift_once();
  }

  v1 = qword_1006A7FD0;

  return v1;
}

id sub_1003A04E0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v10.receiver = v4;
  v10.super_class = type metadata accessor for FaceTimeSyncIDSService();
  v8 = objc_msgSendSuper2(&v10, "initWithName:service:queryController:", v7, a3, a4);

  return v8;
}

id sub_1003A05D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FaceTimeSyncIDSService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1003A0630()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler];
  *v2 = 0;
  v2[1] = 0;
  v0[OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_activeDescriptor] = 1;
  *&v0[OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizer] = 0;
  *&v0[OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_audioPlayer] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

void sub_1003A0748(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_activeDescriptor;
  if (*(v2 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_activeDescriptor) == 1)
  {
    v4 = (v2 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler);
    v5 = *(v2 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler);
    v6 = *(v2 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler + 8);
    *v4 = a1;
    v4[1] = a2;
    sub_1000115CC(a1);
    sub_1000051F8(v5);
    *(v2 + v3) = 0;

    sub_1003A0828();
  }

  else
  {
    v7 = sub_100010B20();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

void sub_1003A0828()
{
  v1 = v0;
  sub_1003A09EC();
  v2 = TUBundle();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_1003A1588();
  v16._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x8000000100570420;
  v6.value._object = 0x800000010056B140;
  v6.value._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v3, v7, v16);

  v8 = sub_100050758();
  *&v9 = AVSpeechUtteranceDefaultSpeechRate;
  [v8 setRate:v9];
  LODWORD(v10) = 1053609165;
  [v8 setVolume:v10];
  v11 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10057D690;
  *(v12 + 56) = v4;
  *(v12 + 64) = sub_1003A15CC();
  *(v12 + 32) = v8;
  v14 = v8;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v13 = *(v1 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizer);
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v13 speakUtterance:v14];
}

void sub_1003A09EC()
{
  v1 = OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizer;
  if (!*(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizer))
  {
    v2 = [objc_allocWithZone(AVSpeechSynthesizer) init];
    [v2 setUsesApplicationAudioSession:0];
    [v2 setDelegate:v0];
    [v2 setAudioQueueFlags:{objc_msgSend(v2, "audioQueueFlags") | 0x100}];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }
}

void sub_1003A0AAC()
{
  sub_1003A0BC4();
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_audioPlayer);
  if (v1)
  {
    v4 = v1;
    v2 = [v4 play];
    v3 = sub_100010B20();
    if (v2)
    {
      static os_log_type_t.default.getter();
    }

    else
    {
      static os_log_type_t.error.getter();
    }

    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v4 = sub_100010B20();
    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
  }
}

void sub_1003A0BC4()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v34[-v11];
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v34[-v15];
  __chkstk_darwin(v14, v17);
  v19 = &v34[-v18];
  v20 = OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_audioPlayer;
  if (!*(v1 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_audioPlayer))
  {
    v21 = TUBundle();
    if (v21)
    {
      v22 = v21;
      v23 = sub_1003A14F4(1684828008, 0xE400000000000000, 7758199, 0xE300000000000000, v21);

      if (v23)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v3 + 32))(v19, v16, v2);
        v35 = *(v3 + 16);
        (v35)(v12, v19, v2);
        v24 = objc_allocWithZone(AVAudioPlayer);
        v26 = sub_10039F99C(v12);
        v27 = sub_100010B20();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_10057D690;
        (v35)(v8, v19, v2);
        v29 = String.init<A>(reflecting:)();
        v31 = v30;
        *(v28 + 56) = &type metadata for String;
        *(v28 + 64) = sub_100009D88();
        *(v28 + 32) = v29;
        *(v28 + 40) = v31;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        [v26 setMixToUplink:1];
        [v26 setNumberOfLoops:-1];
        LODWORD(v32) = 1058642330;
        [v26 setVolume:v32];
        (*(v3 + 8))(v19, v2);
        v33 = *(v1 + v20);
        *(v1 + v20) = v26;
      }

      else
      {
        v35 = sub_100010B20();
        static os_log_type_t.error.getter();
        os_log(_:dso:log:type:_:)();
        v25 = v35;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1003A10F0()
{
  v1 = sub_100010B20();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = *(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler + 8);

    v3(sub_1003A14EC, v2);
    sub_1000051F8(v3);
  }
}

void sub_1003A11DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1003A0AAC();
  }
}

void sub_1003A12A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100010B20();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v8 = *(v5 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler);
  if (v8)
  {
    v9 = *(v5 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler + 8);

    v8(a5, 0);

    sub_1000051F8(v8);
  }
}

uint64_t sub_1003A13F4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003A140C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
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

uint64_t sub_1003A1460(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1003A14BC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

id sub_1003A14F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

unint64_t sub_1003A1588()
{
  result = qword_1006A80D0;
  if (!qword_1006A80D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A80D0);
  }

  return result;
}

unint64_t sub_1003A15CC()
{
  result = qword_1006A80D8;
  if (!qword_1006A80D8)
  {
    sub_1003A1588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A80D8);
  }

  return result;
}

uint64_t sub_1003A1624()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A80E0);
  v1 = sub_10000AF9C(v0, qword_1006A80E0);
  if (qword_1006A0B78 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AF9C(v0, qword_1006BA6E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003A16EC(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  v4 = *(type metadata accessor for SharePlayAvailabilityManager.CallAndHandle() + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_1003A1764()
{
  type metadata accessor for UUID();
  sub_10000A298();
  sub_100050E78(v1, v2);
  sub_100007624();
  dispatch thunk of Hashable.hash(into:)();
  v3 = *(v0 + *(type metadata accessor for SharePlayAvailabilityManager.CallAndHandle() + 20));
  return NSObject.hash(into:)();
}

Swift::Int sub_1003A17E0()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10000A298();
  sub_100050E78(v1, v2);
  dispatch thunk of Hashable.hash(into:)();
  v3 = *(v0 + *(type metadata accessor for SharePlayAvailabilityManager.CallAndHandle() + 20));
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1003A1878(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10000A298();
  sub_100050E78(v4, v5);
  dispatch thunk of Hashable.hash(into:)();
  v6 = *(v2 + *(a2 + 20));
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

id sub_1003A190C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  sub_10026D814(&unk_1006A75C0, &qword_100583BB0);
  *(v6 + 152) = Dictionary.init(dictionaryLiteral:)();
  *(v6 + 160) = _swiftEmptyDictionarySingleton;
  *(v6 + 168) = 1;
  swift_unknownObjectWeakAssign();
  *(v6 + 120) = a2;
  *(v6 + 128) = a3;
  *(v6 + 112) = a4;
  *(v6 + 136) = a5;
  *(v6 + 137) = a6;
  v14.receiver = v6;
  v14.super_class = type metadata accessor for SharePlayAvailabilityManager();
  v12 = objc_msgSendSuper2(&v14, "init");
  swift_unknownObjectRelease();
  return v12;
}

void sub_1003A1AA4(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_1003A1B00(char a1)
{
  v2 = v1;
  if (a1 || *(v1 + 137) != 1)
  {
    if (qword_1006A0AD0 != -1)
    {
      sub_100008688();
    }

    v8 = type metadata accessor for Logger();
    sub_1000075F0(v8, qword_1006A80E0);
    v5 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v9))
    {
      v10 = swift_slowAlloc();
      v11 = sub_100005E84();
      v19 = v11;
      *v10 = 136315138;
      if (a1)
      {
        sub_100021FAC();
        v13 = sub_10000D380(v12);
        if (v16)
        {
          v17 = v14;
        }

        else
        {
          v17 = v15;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        v13 = 0x6E776F6E6B6E75;
      }

      v18 = sub_10002741C(v13, v17, &v19);

      *(v10 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v5, v9, "[SharePlayAvailabilityManager] Setting localAvailability to %s", v10, 0xCu);
      sub_100009B7C(v11);
      sub_100005F40();
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1006A0AD0 != -1)
    {
      sub_100008688();
    }

    v4 = type metadata accessor for Logger();
    sub_1000075F0(v4, qword_1006A80E0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "[SharePlayAvailabilityManager] Setting localAvailability to .unknown, this is not expected behavior", v7, 2u);
LABEL_16:
      sub_100005F40();
    }
  }

  *(v2 + 168) = a1;
}

void sub_1003A1CFC(void *a1, void *a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(CSDMessagingSharePlayAvailable) init];
  if (!v6)
  {
    __break(1u);
    goto LABEL_27;
  }

  v7 = v6;
  [v6 setSupportsRequestToScreenShare:*(v2 + 136)];
  v8 = [objc_opt_self() sharedInstance];
  if (!v8)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 deviceType];

  if (v10 == 2 || *(v3 + 137) == 1)
  {
    v11 = *(v3 + 168);
  }

  else
  {
    v11 = 0;
  }

  [v7 setState:v11];
  if (qword_1006A0AD0 != -1)
  {
    sub_100008688();
  }

  v12 = type metadata accessor for Logger();
  sub_1000075F0(v12, qword_1006A80E0);
  v47 = v7;
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_100007C08();
    v17 = sub_10000777C();
    v46 = sub_100005E84();
    v48 = v46;
    *v16 = 136315394;
    v18 = [v47 debugDescription];
    v19 = a2;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_10002741C(v20, v22, &v48);

    *(v16 + 4) = v23;
    a2 = v19;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v13;
    *v17 = v13;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "[SharePlayAvailabilityManager] Sending message: %s to: %@", v16, 0x16u);
    sub_100009A04(v17, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100009B7C(v46);
    sub_100005F40();
    sub_100005F40();
  }

  v25 = [a2 value];
  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  v26 = IMCanonicalizeFormattedString();

  if (v26)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    v28 = sub_100389560(2, v27);
    sub_10000F3C0();
    sub_100050924(v29);
    v31 = v30;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      goto LABEL_23;
    }

    [Strong sendWithMessage:v47 toHandle:v13 fromHandle:v31];
  }

  else
  {
    v33 = a2;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = sub_100005E84();
      v48 = v37;
      *v36 = 136315138;
      v38 = [v33 value];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = sub_10002741C(v39, v41, &v48);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "[SharePlayAvailabilityManager] Could not canonicalize phone number: %s", v36, 0xCu);
      sub_100009B7C(v37);
      sub_100005F40();
      sub_100005F40();
    }

    sub_10000F3C0();
    sub_100050924(v33);
    v44 = v43;
    v45 = swift_unknownObjectWeakLoadStrong();
    if (!v45)
    {

      goto LABEL_23;
    }

    [v45 sendWithMessage:v47 toHandle:v13 fromHandle:v44];
  }

  swift_unknownObjectRelease();
LABEL_23:
}

uint64_t sub_1003A21B4()
{
  sub_100006810();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v5 = type metadata accessor for UUID();
  v1[15] = v5;
  sub_100005EB4(v5);
  v1[16] = v6;
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();
  v9 = sub_10026D814(&qword_1006A81D0, &qword_100583B78);
  v1[18] = v9;
  sub_100007BF0(v9);
  v11 = *(v10 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v12 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle();
  sub_100005EB4(v12);
  v1[22] = v13;
  v15 = *(v14 + 64) + 15;
  v1[23] = swift_task_alloc();
  v16 = sub_10026D814(&qword_1006A81D8, &qword_100583B80);
  sub_100007BF0(v16);
  v18 = *(v17 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v19 = type metadata accessor for Date();
  v1[27] = v19;
  sub_100005EB4(v19);
  v1[28] = v20;
  v22 = *(v21 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return _swift_task_switch(sub_1003A23D0, v0, 0);
}

uint64_t sub_1003A23D0()
{
  v127 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = sub_1003A3258(*(v0 + 88), *(v0 + 104));
  v6 = v5;
  v7 = *(v2 + 128);
  (*(v2 + 120))();
  sub_10000F3C0();
  sub_100050924(v3);
  v9 = v8;
  *(v0 + 264) = v8;
  if ((sub_1003A4484(v4) & 1) == 0)
  {
    v28 = *(v0 + 248);
    v29 = *(v0 + 104) / 1000.0;
    Date.init(timeIntervalSince1970:)();
    if (qword_1006A0AD0 != -1)
    {
      sub_100008688();
    }

    v30 = *(v0 + 248);
    v31 = *(v0 + 256);
    v33 = *(v0 + 232);
    v32 = *(v0 + 240);
    v34 = *(v0 + 216);
    v35 = *(v0 + 224);
    v120 = *(v0 + 88);
    v36 = type metadata accessor for Logger();
    sub_10000AF9C(v36, qword_1006A80E0);
    v37 = *(v35 + 16);
    v38 = sub_100006884();
    v37(v38);
    (v37)(v33, v31, v34);
    v39 = v9;
    v40 = v120;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 248);
    v121 = *(v0 + 256);
    v45 = *(v0 + 232);
    v46 = *(v0 + 240);
    v47 = *(v0 + 216);
    v48 = *(v0 + 224);
    if (v43)
    {
      v114 = *(v0 + 88);
      v117 = *(v0 + 248);
      v49 = swift_slowAlloc();
      v115 = sub_10000777C();
      v126[0] = swift_slowAlloc();
      *v49 = 138413058;
      *(v49 + 4) = v39;
      *v115 = v39;
      *(v49 + 12) = 2080;
      sub_10000E808();
      sub_100050E78(v50, v51);
      v116 = v39;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v113 = v42;
      v54 = v53;
      v55 = *(v48 + 8);
      v55(v46, v47);
      v56 = sub_10002741C(v52, v54, v126);

      *(v49 + 14) = v56;
      *(v49 + 22) = 2080;
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v60 = sub_100007624();
      (v55)(v60);
      sub_10002741C(v57, v59, v126);
      sub_100006064();
      *(v49 + 24) = v57;
      *(v49 + 32) = 2080;
      v61 = [v114 debugDescription];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      sub_10002741C(v62, v64, v126);
      sub_100006064();
      *(v49 + 34) = v61;
      _os_log_impl(&_mh_execute_header, v41, v113, "[SharePlayAvailabilityManager] Disregarding message from: %@ since it is outdated (sent at: %s, vs. ref: %s), message: %s", v49, 0x2Au);
      sub_100009A04(v115, &unk_1006A2630, &qword_10057CB40);
      sub_100007CBC();
      swift_arrayDestroy();
      sub_100007CBC();
      sub_100005F40();

      v55(v117, v47);
      v55(v121, v47);
    }

    else
    {

      v65 = *(v48 + 8);
      v66 = sub_100007624();
      v65(v66);
      (v65)(v46, v47);
      (v65)(v44, v47);
      (v65)(v121, v47);
    }

    goto LABEL_15;
  }

  v10 = *(v0 + 256);
  v11 = *(v0 + 112);
  v12 = sub_1003A43E4(v9);
  sub_100008D34();
  sub_1003A32CC(v9, v4, v6 & 0x1FF);
  swift_endAccess();
  if (qword_1006A0AD0 != -1)
  {
    sub_100008688();
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006A80E0);
  v14 = v9;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = "com.apple.callservicesd.shareplay-session-server-terminated";
  if (os_log_type_enabled(v15, v16))
  {
    v18 = sub_100007C08();
    v19 = sub_10000777C();
    v119 = v12;
    v20 = sub_100005E84();
    v126[0] = v20;
    *v18 = 138412546;
    *(v18 + 4) = v14;
    *v19 = v14;
    *(v18 + 12) = 2080;
    v21 = v14;
    v22 = sub_1003A4960(v4, v6 & 0x1FF);
    v4 = v23;
    v6 = sub_10002741C(v22, v23, v126);

    *(v18 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v15, v16, "[SharePlayAvailabilityManager] Added handle: %@ with indicator: %s", v18, 0x16u);
    sub_100009A04(v19, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100009B7C(v20);
    v12 = v119;
    sub_100005F40();
    v17 = "com.apple.callservicesd.shareplay-session-server-terminated";
    sub_100005F40();
  }

  sub_100008D34();
  sub_1003A355C(v14);
  v25 = v24;
  swift_endAccess();
  if ((v25 & 0xFF00) == 0x200 || v25 == v12 && v12 > 0xFFu == (v25 & 0x100) >> 8)
  {
    v26 = sub_100022D4C();
    v27(v26);

LABEL_15:
    sub_100016330();
    v122 = *(v0 + 136);

    sub_100009EF4();

    return v67();
  }

  v69 = v14;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v14 = sub_100007C08();
    v6 = sub_10000777C();
    v4 = sub_100005E84();
    v126[0] = v4;
    *v14 = *(v17 + 462);
    *(v14 + 1) = v69;
    *v6 = v69;
    *(v14 + 6) = 2080;
    v72 = v25 & 0x1FF;
    v73 = v69;
    v74 = sub_1003A4C0C(v72);
    v16 = sub_10002741C(v74, v75, v126);

    *(v14 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v70, v71, "[SharePlayAvailabilityManager] Resolved handle: %@ to state: %s", v14, 0x16u);
    sub_100009A04(v6, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100009B7C(v4);
    sub_100005F40();
    sub_100006868();
  }

  else
  {

    LOWORD(v72) = v25 & 0x1FF;
  }

  *(v0 + 312) = v72;
  v76 = *(v0 + 112);
  swift_beginAccess();
  v77 = *(v76 + 160);
  v78 = v69;

  v80 = sub_1003A5A80(v79, v78);
  *(v0 + 272) = v80;

  v81 = *(v80 + 32);
  *(v0 + 314) = v81;
  v82 = -1;
  v83 = -1 << v81;
  if (-(-1 << v81) < 64)
  {
    v82 = ~(-1 << -(-1 << v81));
  }

  v84 = v82 & v80[8];
  if (v84)
  {
    v14 = 0;
    v85 = *(v0 + 272);
LABEL_28:
    sub_10001141C(v84);
    v123 = *(*(v85 + 56) + 16 * v6);
    v88 = sub_100006B30();
    sub_1002DB564(v88, v89);
    sub_10000FC50(v123);

    v87 = v14;
  }

  else
  {
    v86 = 0;
    v87 = ((63 - v83) >> 6) - 1;
    while (v87 != v86)
    {
      v14 = (v86 + 1);
      v85 = *(v0 + 272);
      v84 = *(v85 + 8 * v86++ + 72);
      if (v84)
      {
        goto LABEL_28;
      }
    }

    sub_10000AF74(*(v0 + 192), 1, 1, *(v0 + 144));
    v4 = 0;
  }

  *(v0 + 280) = v4;
  *(v0 + 288) = v87;
  v90 = *(v0 + 192);
  v91 = *(v0 + 144);
  sub_10000EA40();
  if (!v92)
  {
    sub_10001E41C();
    sub_100007C2C();
    v93 = swift_allocObject();
    sub_10000C7DC(v93);
    sub_1000172A4();
    v91 = *(v0 + 144);
  }

  sub_10000BA88();
  sub_10000EA40();
  if (v92)
  {
    v94 = *(v0 + 264);
    v95 = *(v0 + 272);
    v96 = sub_100022D4C();
    v97(v96);

    goto LABEL_15;
  }

  v98 = sub_1000100AC();
  v124 = v99;
  v100 = *(v0 + 120);
  v101 = *(v16 + 48);
  v118 = *(v98 + v101);
  sub_1002DB564(v98, v90);
  *(v90 + v101) = v118;
  v102 = sub_100006B30();
  sub_10002F780(v102, v103);
  v104 = (v91 + *(v16 + 48));
  v105 = *v104;
  *(v0 + 296) = v104[1];
  v106 = sub_100007624();
  sub_10002F780(v106, v107);
  v108 = *(*(v16 + 48) + 9);

  (*(v14 + 2))(v124, 1, v100);
  sub_1002DB508(1);
  sub_10000F73C();
  v125 = v109;
  v110 = *(v105 + 4);
  v111 = swift_task_alloc();
  *(v0 + 304) = v111;
  *v111 = v0;
  v112 = sub_100010424(v111);

  return v125(v112);
}

uint64_t sub_1003A2DD0()
{
  sub_1000066BC();
  sub_100005F18();
  v2 = v1[38];
  v3 = v1[37];
  v4 = v1[17];
  v5 = v1[16];
  v6 = v1[15];
  v7 = v1[14];
  v8 = *v0;
  sub_100008060();
  *v9 = v8;

  v10 = *(v5 + 8);
  v11 = sub_100007624();
  v12(v11);

  return _swift_task_switch(sub_1003A2F4C, v7, 0);
}

uint64_t sub_1003A2F4C()
{
  v5 = *(v1 + 160);
  sub_100009A04(*(v1 + 168), &qword_1006A81D0, &qword_100583B78);
  result = sub_1002DB508(v5);
  v7 = *(v1 + 280);
  v8 = *(v1 + 288);
  if (v7)
  {
    v9 = *(v1 + 272);
LABEL_7:
    sub_10001141C(v7);
    v11 = *(v9 + 56);
    v12 = *(v0 + 48);
    v40 = *(v11 + 16 * v3);
    v13 = sub_100006B30();
    sub_1002DB564(v13, v14);
    sub_10000FC50(v40);

LABEL_8:
    *(v1 + 280) = v2;
    *(v1 + 288) = v8;
    v15 = *(v1 + 192);
    v16 = *(v1 + 144);
    sub_10000EA40();
    if (!v17)
    {
      sub_10001E41C();
      sub_100007C2C();
      v18 = swift_allocObject();
      sub_10000C7DC(v18);
      sub_1000172A4();
      v16 = *(v1 + 144);
    }

    sub_10000BA88();
    sub_10000EA40();
    if (v17)
    {
      v19 = *(v1 + 264);
      v20 = *(v1 + 272);
      v21 = sub_100022D4C();
      v22(v21);

      sub_100016330();
      v41 = *(v1 + 136);

      sub_100009EF4();

      return v23();
    }

    else
    {
      v24 = sub_1000100AC();
      v42 = v25;
      v26 = *(v1 + 120);
      v27 = *(v4 + 48);
      v39 = *(v24 + v27);
      sub_1002DB564(v24, v15);
      *(v15 + v27) = v39;
      v28 = sub_100006B30();
      sub_10002F780(v28, v29);
      v30 = (v16 + *(v4 + 48));
      v31 = *v30;
      *(v1 + 296) = v30[1];
      v32 = sub_100007624();
      sub_10002F780(v32, v33);
      v34 = *(*(v4 + 48) + 9);

      (*(v8 + 16))(v42, 1, v26);
      sub_1002DB508(1);
      sub_10000F73C();
      v43 = v35;
      v36 = *(v31 + 4);
      v37 = swift_task_alloc();
      *(v1 + 304) = v37;
      *v37 = v1;
      v38 = sub_100010424();

      return v43(v38);
    }
  }

  else
  {
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= (((1 << *(v1 + 314)) + 63) >> 6))
      {
        sub_10000AF74(*(v1 + 192), 1, 1, *(v1 + 144));
        v2 = 0;
        goto LABEL_8;
      }

      v9 = *(v1 + 272);
      v7 = *(v9 + 8 * v10 + 64);
      ++v8;
      if (v7)
      {
        v8 = v10;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003A3258(void *a1, uint64_t a2)
{
  [a1 state];
  [a1 supportsRequestToScreenShare];
  return a2;
}

void sub_1003A32CC(uint64_t *a1, uint64_t a2, __int16 a3)
{
  v4 = v3;
  v7 = a1;
  v8 = sub_10005104C(a1);
  if (!v9)
  {
    if (qword_1006A0AD0 == -1)
    {
LABEL_9:
      v24 = type metadata accessor for Logger();
      v25 = sub_10000AF9C(v24, qword_1006A80E0);
      v26 = v7;
      oslog = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v27))
      {
        sub_100007C08();
        v28 = sub_10000FE98();
        v29 = sub_100005E84();
        v45 = v29;
        *v25 = 136315394;
        v30 = sub_10002741C(0xD000000000000019, 0x8000000100570690, &v45);
        sub_10001866C(v30);
        sub_10000C4A4(&_mh_execute_header, v31, v32, "[RemoteAvailabilityCache] %s Cannot normalize handle: %@", v33, v34, v35, v36, oslog);
        sub_100009A04(v28, &unk_1006A2630, &qword_10057CB40);
        sub_100006868();
        sub_100009B7C(v29);
        sub_100005F40();
        sub_100005F40();

LABEL_13:
        sub_100006048();
        return;
      }

      sub_100006048();

      return;
    }

LABEL_18:
    sub_100008688();
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v4;
  v7 = v45;
  v14 = sub_100005208();
  v16 = v45[2];
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_18;
  }

  v19 = v14;
  v20 = v15;
  sub_10026D814(&qword_1006A75B8, &unk_100582D10);
  v21 = v45;
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18))
  {
LABEL_6:
    *v4 = v45;
    if (v20)
    {
    }

    else
    {
      sub_100016F0C(v19, v10, v11, _swiftEmptyArrayStorage, v21);
    }

    v37 = *(v21 + 56) + 8 * v19;
    sub_100461AA4();
    v38 = *(*v37 + 16);
    sub_100461BA8(v38);
    v39 = *v37;
    *(v39 + 16) = v38 + 1;
    v40 = v39 + 16 * v38;
    *(v40 + 32) = a2;
    *(v40 + 40) = a3;
    *(v40 + 41) = HIBYTE(a3) & 1;
    goto LABEL_13;
  }

  v22 = sub_100005208();
  if ((v20 & 1) == (v23 & 1))
  {
    v19 = v22;
    goto LABEL_6;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1003A355C(_DWORD *a1)
{
  v3 = *v1;
  v4 = sub_1003A4DEC(a1);
  if (v4[2])
  {
    v5 = v4[4];
    v6 = *(v4 + 40);
    v7 = *(v4 + 41);

    if (v7)
    {
      v8 = 256;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8 | v6;
    sub_100050EC0(a1);
    v10 = sub_100006884();
    sub_1003A32CC(v10, v11, v9);
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_1003A35E8(uint64_t a1, __int16 a2, int *a3)
{
  *(v3 + 24) = a2;
  *(v3 + 25) = HIBYTE(a2) & 1;
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100035FE4;

  return v7();
}

uint64_t sub_1003A3798(void *a1, void *a2, int a3, void *aBlock, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;

  v10 = swift_task_alloc();
  v5[6] = v10;
  *v10 = v5;
  v10[1] = sub_1003A3880;

  return sub_1003A21B4();
}

uint64_t sub_1003A3880()
{
  sub_100005F18();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = v1[3];
  v6 = v1[2];
  v7 = *v0;
  sub_100008060();
  *v8 = v7;

  v3[2](v3);
  _Block_release(v3);
  sub_100009EF4();

  return v9();
}

uint64_t sub_1003A39E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v129 = a4;
  v124 = a5;
  v126 = a3;
  v7 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v8 = sub_100007BF0(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v125 = &v113 - v12;
  v13 = type metadata accessor for Date();
  v14 = sub_100007FEC(v13);
  v128 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14, v18);
  sub_100007BAC();
  v122 = v19 - v20;
  sub_100006838();
  __chkstk_darwin(v21, v22);
  v121 = &v113 - v23;
  sub_100006838();
  __chkstk_darwin(v24, v25);
  v120 = &v113 - v26;
  sub_100006838();
  __chkstk_darwin(v27, v28);
  v127 = &v113 - v29;
  v30 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle();
  v31 = sub_100008070(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31, v34);
  v123 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v37 = sub_100007BF0(v36);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37, v40);
  v42 = &v113 - v41;
  v43 = type metadata accessor for UUID();
  v44 = sub_100007FEC(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  __chkstk_darwin(v44, v49);
  sub_100007BAC();
  v119 = v50 - v51;
  sub_100006838();
  __chkstk_darwin(v52, v53);
  v55 = &v113 - v54;
  sub_10000F3C0();
  sub_100050924(a1);
  v57 = v56;
  sub_100285FC4(a2, v42, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v42, 1, v43) == 1)
  {
    sub_100009A04(v42, &unk_1006A3DD0, &unk_10057C9D0);
  }

  else
  {
    (*(v46 + 32))(v55, v42, v43);
    v58 = v129;
    if (v129)
    {
      v117 = v46;
      v59 = v57;
      v60 = v123;
      v61 = *(v46 + 16);
      v61(v123);
      *(v60 + *(v30 + 20)) = v59;
      v62 = v130;
      swift_beginAccess();
      v63 = *(v62 + 160);
      v118 = v59;
      v116 = v59;

      sub_1000115CC(v58);
      v64 = sub_1002CBA60(v60, v63);

      if (v64)
      {
        v65 = sub_100027E34();
        sub_1000051F8(v65);
        v66 = 0xE800000000000000;
        v67 = 0x646563616C706552;
      }

      else
      {
        v66 = 0xEA00000000006465;
        v67 = 0x7265747369676552;
      }

      v115 = v67;
      sub_100007C2C();
      v68 = swift_allocObject();
      v69 = v129;
      v70 = v130;
      v71 = v124;
      *(v68 + 16) = v129;
      *(v68 + 24) = v71;
      sub_100008D34();
      sub_1000115CC(v69);
      v72 = *(v70 + 160);
      swift_isUniquelyReferenced_nonNull_native();
      v131 = *(v70 + 160);
      sub_100379948();
      *(v70 + 160) = v131;
      swift_endAccess();
      if (qword_1006A0AD0 != -1)
      {
        sub_100008688();
      }

      v73 = type metadata accessor for Logger();
      sub_1000075F0(v73, qword_1006A80E0);
      v74 = v119;
      v75 = v55;
      (v61)(v119, v55, v43);
      v76 = v116;

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = sub_100005E84();
        v114 = v77;
        v80 = v66;
        v81 = v79;
        v82 = sub_10000777C();
        v116 = swift_slowAlloc();
        v132[0] = v116;
        *v81 = 136315650;
        v83 = sub_10002741C(v115, v80, v132);
        LODWORD(v115) = v78;
        v84 = v83;

        *(v81 + 4) = v84;
        *(v81 + 12) = 2112;
        *(v81 + 14) = v76;
        *v82 = v76;
        *(v81 + 22) = 2080;
        sub_10000A298();
        sub_100050E78(v85, v86);
        v87 = v76;
        dispatch thunk of CustomStringConvertible.description.getter();
        v88 = v75;
        v89 = *(v117 + 8);
        v89(v74, v43);
        v90 = sub_100027E34();
        v93 = sub_10002741C(v90, v91, v92);

        *(v81 + 24) = v93;
        v94 = v114;
        _os_log_impl(&_mh_execute_header, v114, v115, "[SharePlayAvailabilityManager] %s callback for handle: %@, callUUID: %s", v81, 0x20u);
        sub_100009A04(v82, &unk_1006A2630, &qword_10057CB40);
        sub_100005F40();
        swift_arrayDestroy();
        sub_100007CBC();
        sub_100005F40();

        sub_1000051F8(v129);
        sub_1002DB508(v123);
        v89(v88, v43);
      }

      else
      {

        sub_1000051F8(v129);
        v95 = *(v117 + 8);
        v95(v74, v43);
        sub_1002DB508(v123);
        v95(v75, v43);
      }

      v57 = v118;
    }

    else
    {
      (*(v46 + 8))(v55, v43);
    }
  }

  v96 = v130;
  v97 = v125;
  sub_100285FC4(v126, v125, &qword_1006A3C70, &unk_10057EA80);
  v98 = sub_100015468(v97, 1, v13);
  v99 = v128;
  if (v98 == 1)
  {
    v100 = sub_100009A04(v97, &qword_1006A3C70, &unk_10057EA80);
    v101 = *(v96 + 128);
    v102 = v127;
    (*(v96 + 120))(v100);
  }

  else
  {
    v103 = v120;
    v104 = (*(v128 + 32))(v120, v97, v13);
    v105 = *(v96 + 128);
    v106 = v121;
    (*(v96 + 120))(v104);
    v107 = v122;
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v102 = v127;
    Date.addingTimeInterval(_:)();
    v108 = *(v99 + 8);
    v108(v107, v13);
    v108(v106, v13);
    v108(v103, v13);
  }

  v109 = sub_1003A43E4(v57);
  v110 = v109;
  v111 = v109 > 0xFFu;

  (*(v99 + 8))(v102, v13);
  return v110 | (v111 << 8);
}

uint64_t sub_1003A426C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int *a4)
{
  v6 = *a3;
  v7 = a3[1];
  v12 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  if (v7)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  *v9 = v4;
  v9[1] = sub_100035FE4;

  return (v12)(a2, v10 | v6);
}

id sub_1003A4380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)())
  {
    return [*(a1 + *(type metadata accessor for SharePlayAvailabilityManager.CallAndHandle() + 20)) isEquivalentToHandle:a3];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003A43E4(_DWORD *a1)
{
  sub_100008D34();
  v2 = sub_1003A355C(a1);
  v4 = v3;
  swift_endAccess();
  if ((v4 & 0xFF00) == 0x200)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = sub_1003A4484(v2);
    v6 = v4 & 0x100;
    if (v7)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    if ((v7 & 1) == 0)
    {
      v6 = 0;
    }
  }

  return v6 | v5;
}

uint64_t sub_1003A4484(unint64_t a1)
{
  result = Date.timeIntervalSince1970.getter();
  v5 = v4 * 1000.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v1 + 112);
  if (!is_mul_ok(v6, 0x3E8uLL))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = 1000 * v6;
  v8 = v5 - a1;
  if (v5 <= a1)
  {
    v8 = a1 - v5;
  }

  return v7 >= v8;
}

void sub_1003A4534()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void *sub_1003A4584()
{
  v1 = v0[16];

  sub_100060500((v0 + 18));
  v2 = v0[19];

  v3 = v0[20];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1003A45C4()
{
  sub_1003A4584();

  return _swift_defaultActor_deallocate(v0);
}

_BYTE *storeEnumTagSinglePayload for SharePlayAvailabilityManager.SharePlayAvailability(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t getEnumTagSinglePayload for SharePlayAvailabilityManager.AvailabilityQueryResponse(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SharePlayAvailabilityManager.AvailabilityQueryResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1003A4874()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = sub_100006AF0(319, &qword_1006A2640, TUHandle_ptr);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003A4B8C()
{
  if (*(v0 + 9))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1003A4960(*v0, v1 | *(v0 + 8));
}

unint64_t sub_1003A4BAC(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  sub_100021FAC();
  return sub_10000D380(v1);
}

uint64_t sub_1003A4D28(__int16 a1, __int16 a2)
{
  if (a2 != a1)
  {
    return 0;
  }

  else
  {
    return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }
}

uint64_t sub_1003A4D48(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1003A4D28(v2 | *a1, v3 | *a2);
}

uint64_t sub_1003A4D78()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1003A4C0C(v1 | *v0);
}

unint64_t sub_1003A4D98()
{
  result = qword_1006A81B8;
  if (!qword_1006A81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A81B8);
  }

  return result;
}

void *sub_1003A4DEC(void *a1)
{
  v2 = sub_10005104C(a1);
  if (v3)
  {
    v4 = sub_100005E74(v2);

    if (v4)
    {
      v14 = v4;

      sub_1003A4FAC(&v14);

      return v14;
    }
  }

  else
  {
    if (qword_1006A0AD0 != -1)
    {
      sub_100008688();
    }

    v6 = type metadata accessor for Logger();
    sub_1000075F0(v6, qword_1006A80E0);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = sub_100007C08();
      v11 = sub_10000777C();
      v12 = sub_100005E84();
      v14 = v12;
      *v10 = 136315394;
      *(v10 + 4) = sub_10002741C(0xD000000000000017, 0x80000001005706B0, &v14);
      *(v10 + 12) = 2112;
      *(v10 + 14) = v7;
      *v11 = v7;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "[RemoteAvailabilityCache] %s Cannot normalize handle: %@", v10, 0x16u);
      sub_100009A04(v11, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40();
      sub_100009B7C(v12);
      sub_100006868();
      sub_100007CBC();
    }
  }

  return _swiftEmptyArrayStorage;
}

Swift::Int sub_1003A4FAC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003A604C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1003A5018(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_1003A5018(uint64_t *a1)
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
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1003A5188(v7, v8, a1, v4);
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
    return sub_1003A510C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1003A510C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 + 9;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = v8 - 9;
        v10 = *(v8 - 9);
        if (*(v8 - 25) >= v10)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v11 = *(v8 - 25);
        *(v8 - 16) = *v8;
        v8 -= 16;
        v12 = v8[15];
        *v9 = v11;
        *(v8 - 9) = v10;
        *(v8 - 1) = v12;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1003A5188(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = 16 * v7;
        v12 = (*a3 + 16 * v7);
        v15 = *v12;
        v14 = v12 + 4;
        v13 = v15;
        v16 = v7 + 2;
        while (1)
        {
          v17 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = (v13 < v10) ^ (*(v14 - 2) >= *v14);
          v14 += 2;
          ++v16;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_114;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v19 = 16 * v6 - 16;
            v20 = v9;
            v21 = v7;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_119;
                }

                v23 = v22 + v11;
                v24 = v22 + v19;
                v25 = *v23;
                v26 = *(v23 + 8);
                v27 = *(v23 + 9);
                v28 = v11 != v19 || v23 >= v24 + 16;
                if (v28)
                {
                  *v23 = *v24;
                }

                *v24 = v25;
                *(v24 + 8) = v26;
                *(v24 + 9) = v27;
              }

              ++v21;
              v19 -= 16;
              v11 += 16;
            }

            while (v21 < v20);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_113;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_115;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 + 9;
            v31 = v7 - v9;
            do
            {
              v32 = v31;
              v33 = v30;
              do
              {
                v34 = v33 - 9;
                v35 = *(v33 - 9);
                if (*(v33 - 25) >= v35)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_117;
                }

                v36 = *(v33 - 25);
                *(v33 - 16) = *v33;
                v33 -= 16;
                v37 = v33[15];
                *v34 = v36;
                *(v33 - 9) = v35;
                *(v33 - 1) = v37;
                v28 = __CFADD__(v32++, 1);
              }

              while (!v28);
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_112;
      }

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10047002C(0, v8[2] + 1, 1, v8);
        v8 = v82;
      }

      v39 = v8[2];
      v38 = v8[3];
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        sub_10047002C(v38 > 1, v39 + 1, 1, v8);
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v9;
      v87 = *a1;
      if (!*a1)
      {
        goto LABEL_120;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_62:
            if (v49)
            {
              goto LABEL_102;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_105;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_108;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_110;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v40 < 2)
          {
            goto LABEL_104;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_77:
          if (v64)
          {
            goto LABEL_107;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_109;
          }

          if (v71 < v63)
          {
            goto LABEL_91;
          }

LABEL_84:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
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
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1003A57BC((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v87);
          if (v5)
          {
            goto LABEL_95;
          }

          if (v78 < v76)
          {
            goto LABEL_97;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_98;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_99;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_91;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_100;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_101;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_103;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_106;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_111;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_91:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_121;
  }

  sub_1003A5690(&v89, *a1, a3);
LABEL_95:
}