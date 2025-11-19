uint64_t sub_100017504(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100007CBC;

  return sub_100016DE0(a1, a2);
}

uint64_t sub_1000175AC(uint64_t a1)
{
  result = sub_10001764C(&qword_100062D18, type metadata accessor for AskToBuyStatusSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10001764C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100017694()
{
  result = qword_100062D38;
  if (!qword_100062D38)
  {
    sub_100010594(&qword_100062D28, &qword_10004DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062D38);
  }

  return result;
}

void sub_100017718(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v4 = v3;
  if (*(a1 + 16))
  {
    v8 = *(v4 + qword_100065548 + 32);
    sub_100005E78((v4 + qword_100065548), *(v4 + qword_100065548 + 24));
    v9 = swift_allocObject();
    v9[2] = v4;
    v9[3] = a1;
    v9[4] = a2;
    v9[5] = a3;

    dispatch thunk of EventCollectorProtocol.collectEvents(statusType:maxAge:completion:)();
  }

  else
  {
    _StringGuts.grow(_:)(20);
    type metadata accessor for StatusType();
    sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
    dispatch thunk of CustomStringConvertible.description.getter();

    v10._object = 0x8000000100050700;
    v10._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v10);
    v11 = static PeopleErrors.createError(_:code:)();

    a2(v11, 1);
  }
}

void sub_100017934(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v4 = v3;
  if (*(a1 + 16))
  {
    v8 = *(v4 + qword_100065548 + 32);
    sub_100005E78((v4 + qword_100065548), *(v4 + qword_100065548 + 24));
    v9 = swift_allocObject();
    v9[2] = v4;
    v9[3] = a1;
    v9[4] = a2;
    v9[5] = a3;

    dispatch thunk of EventCollectorProtocol.collectEvents(statusType:maxAge:completion:)();
  }

  else
  {
    _StringGuts.grow(_:)(20);

    type metadata accessor for StatusType();
    sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
    dispatch thunk of CustomStringConvertible.description.getter();
    v10._object = 0x8000000100050700;
    v10._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v10);
    v11 = static PeopleErrors.createError(_:code:)();

    a2(v11, 1);
  }
}

uint64_t sub_100017B44(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v63 = a3;
  v62 = 0;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100018924(a1, BMAskToBuyEvent_ptr);
  if (!v14)
  {
    static PeopleLogger.daemon.getter();

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v76[0] = v54;
      *v53 = 136315138;
      type metadata accessor for StatusType();
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;

      v58 = sub_10002580C(v55, v57, v76);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "%s event type array not [EventType]!", v53, 0xCu);
      sub_100003938(v54);
    }

    else
    {
    }

    return (*(v10 + 8))(v13, v9);
  }

  v15 = v14;
  v16 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v59 = a5;
    v60 = a4;
    v61 = a2;
    v18 = &_swiftEmptyDictionarySingleton;
    if (i)
    {
      a2 = 0;
      v66 = v15;
      v67 = v15 & 0xC000000000000001;
      v65 = v16;
      v64 = i;
      do
      {
        if (v67)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a2 >= *(v16 + 16))
          {
            goto LABEL_41;
          }

          v19 = *(v15 + 8 * a2 + 32);
        }

        v20 = v19;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_40;
        }

        v68 = a2 + 1;
        v16 = sub_100010734(0, &qword_100062D40, BMAskToBuyEvent_ptr);
        v76[3] = v16;
        v76[4] = &protocol witness table for BMAskToBuyEvent;
        v76[0] = v20;
        v21 = *sub_100005E78(v76, v16);
        a5 = v20;
        v22 = BMAskToBuyEvent.requestId.getter();
        v24 = v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = &protocol witness table for BMAskToBuyEvent;
        v75 = v18;
        v73 = v16;
        *&v72 = a5;
        v15 = a5;
        a4 = v18;
        v27 = sub_100005EBC(v22, v24);
        v28 = v18[2];
        v29 = (v26 & 1) == 0;
        v30 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
          goto LABEL_42;
        }

        a5 = v26;
        if (v18[3] >= v30)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v18 = v75;
            if (v26)
            {
              goto LABEL_6;
            }
          }

          else
          {
            sub_100006EF4();
            v18 = v75;
            if (a5)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
          sub_100006474(v30, isUniquelyReferenced_nonNull_native);
          v31 = sub_100005EBC(v22, v24);
          if ((a5 & 1) != (v32 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            goto LABEL_46;
          }

          v27 = v31;
          v18 = v75;
          if (a5)
          {
LABEL_6:
            a4 = (v18[7] + 40 * v27);
            sub_100003938(a4);
            sub_10000784C(&v72, a4);

            goto LABEL_7;
          }
        }

        a4 = v73;
        v33 = sub_1000106B4(&v72, v73);
        v34 = *(*(a4 - 1) + 64);
        __chkstk_darwin(v33);
        a5 = (&v59 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v36 + 16))(a5);
        v37 = *a5;
        v70 = v16;
        v71 = &protocol witness table for BMAskToBuyEvent;
        *&v69 = v37;
        v18[(v27 >> 6) + 8] |= 1 << v27;
        v38 = (v18[6] + 16 * v27);
        *v38 = v22;
        v38[1] = v24;
        sub_10000784C(&v69, v18[7] + 40 * v27);
        v39 = v18[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_43;
        }

        v18[2] = v41;
        sub_100003938(&v72);
LABEL_7:
        sub_100003938(v76);

        ++a2;
        v16 = v65;
        v15 = v66;
      }

      while (v68 != v64);
    }

    *&v72 = &_swiftEmptyDictionarySingleton;
    v42 = 1 << *(v18 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & v18[8];
    a4 = ((v42 + 63) >> 6);

    v45 = 0;
    v16 = 40;
    v46 = v61;
    v47 = v63;
    a5 = v62;
    if (v44)
    {
      break;
    }

LABEL_28:
    while (1)
    {
      v15 = (v45 + 1);
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v15 >= a4)
      {

        v48 = v72;
        type metadata accessor for PeopleAnalytics();
        v49 = *(v48 + 16);
        static PeopleAnalytics.eventsCollected(statusType:eventCount:)();
        (v60)(v48, 0);
      }

      v44 = v18[v15 + 8];
      ++v45;
      if (v44)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  while (1)
  {
    v15 = v45;
LABEL_31:
    sub_1000077E8(v18[7] + 40 * (__clz(__rbit64(v44)) | (v15 << 6)), v76);
    sub_100018A98(&v72, v76, v46, v47);
    if (a5)
    {
      break;
    }

    v44 &= v44 - 1;
    sub_100003938(v76);
    v45 = v15;
    if (!v44)
    {
      goto LABEL_28;
    }
  }

LABEL_46:

  sub_100003938(v76);

  __break(1u);
  return result;
}

uint64_t sub_100018234(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v63 = a3;
  v62 = 0;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100018924(a1, BMScreenTimeRequestEvent_ptr);
  if (!v14)
  {
    static PeopleLogger.daemon.getter();

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v76[0] = v54;
      *v53 = 136315138;
      type metadata accessor for StatusType();
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;

      v58 = sub_10002580C(v55, v57, v76);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "%s event type array not [EventType]!", v53, 0xCu);
      sub_100003938(v54);
    }

    else
    {
    }

    return (*(v10 + 8))(v13, v9);
  }

  v15 = v14;
  v16 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v59 = a5;
    v60 = a4;
    v61 = a2;
    v18 = &_swiftEmptyDictionarySingleton;
    if (i)
    {
      a2 = 0;
      v66 = v15;
      v67 = v15 & 0xC000000000000001;
      v65 = v16;
      v64 = i;
      do
      {
        if (v67)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a2 >= *(v16 + 16))
          {
            goto LABEL_41;
          }

          v19 = *(v15 + 8 * a2 + 32);
        }

        v20 = v19;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_40;
        }

        v68 = a2 + 1;
        v16 = sub_100010734(0, &qword_100062D78, BMScreenTimeRequestEvent_ptr);
        v76[3] = v16;
        v76[4] = &protocol witness table for BMScreenTimeRequestEvent;
        v76[0] = v20;
        v21 = *sub_100005E78(v76, v16);
        a5 = v20;
        v22 = BMScreenTimeRequestEvent.requestId.getter();
        v24 = v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = &protocol witness table for BMScreenTimeRequestEvent;
        v75 = v18;
        v73 = v16;
        *&v72 = a5;
        v15 = a5;
        a4 = v18;
        v27 = sub_100005EBC(v22, v24);
        v28 = v18[2];
        v29 = (v26 & 1) == 0;
        v30 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
          goto LABEL_42;
        }

        a5 = v26;
        if (v18[3] >= v30)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v18 = v75;
            if (v26)
            {
              goto LABEL_6;
            }
          }

          else
          {
            sub_100006EF4();
            v18 = v75;
            if (a5)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
          sub_100006474(v30, isUniquelyReferenced_nonNull_native);
          v31 = sub_100005EBC(v22, v24);
          if ((a5 & 1) != (v32 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            goto LABEL_46;
          }

          v27 = v31;
          v18 = v75;
          if (a5)
          {
LABEL_6:
            a4 = (v18[7] + 40 * v27);
            sub_100003938(a4);
            sub_10000784C(&v72, a4);

            goto LABEL_7;
          }
        }

        a4 = v73;
        v33 = sub_1000106B4(&v72, v73);
        v34 = *(*(a4 - 1) + 64);
        __chkstk_darwin(v33);
        a5 = (&v59 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v36 + 16))(a5);
        v37 = *a5;
        v70 = v16;
        v71 = &protocol witness table for BMScreenTimeRequestEvent;
        *&v69 = v37;
        v18[(v27 >> 6) + 8] |= 1 << v27;
        v38 = (v18[6] + 16 * v27);
        *v38 = v22;
        v38[1] = v24;
        sub_10000784C(&v69, v18[7] + 40 * v27);
        v39 = v18[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_43;
        }

        v18[2] = v41;
        sub_100003938(&v72);
LABEL_7:
        sub_100003938(v76);

        ++a2;
        v16 = v65;
        v15 = v66;
      }

      while (v68 != v64);
    }

    *&v72 = &_swiftEmptyDictionarySingleton;
    v42 = 1 << *(v18 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & v18[8];
    a4 = ((v42 + 63) >> 6);

    v45 = 0;
    v16 = 40;
    v46 = v61;
    v47 = v63;
    a5 = v62;
    if (v44)
    {
      break;
    }

LABEL_28:
    while (1)
    {
      v15 = (v45 + 1);
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v15 >= a4)
      {

        v48 = v72;
        type metadata accessor for PeopleAnalytics();
        v49 = *(v48 + 16);
        static PeopleAnalytics.eventsCollected(statusType:eventCount:)();
        (v60)(v48, 0);
      }

      v44 = v18[v15 + 8];
      ++v45;
      if (v44)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  while (1)
  {
    v15 = v45;
LABEL_31:
    sub_1000077E8(v18[7] + 40 * (__clz(__rbit64(v44)) | (v15 << 6)), v76);
    sub_1000199D8(&v72, v76, v46, v47);
    if (a5)
    {
      break;
    }

    v44 &= v44 - 1;
    sub_100003938(v76);
    v45 = v15;
    if (!v44)
    {
      goto LABEL_28;
    }
  }

LABEL_46:

  sub_100003938(v76);

  __break(1u);
  return result;
}

void *sub_100018924(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a1 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_12;
          }
        }

        v9 = *a2;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v10 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v6;
      }

      while (v8 != v5);
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100018A98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v101 = a1;
  v7 = type metadata accessor for BMAskToBuyEvent.ProductType();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v100[1] = v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for StatusType();
  v106 = *(v114 - 8);
  v10 = *(v106 + 64);
  __chkstk_darwin(v114);
  v105 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Date();
  v107 = *(v108 - 8);
  v12 = *(v107 + 64);
  v13 = __chkstk_darwin(v108);
  v103 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v111 = v100 - v15;
  v16 = sub_100005E30(&qword_100062D48, &qword_10004DF98);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v100 - v18;
  v20 = type metadata accessor for RequestStatus();
  v21 = *(v20 - 8);
  v112 = v20;
  v113 = v21;
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v102 = v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v110 = v100 - v25;
  v26 = type metadata accessor for Logger();
  v27 = *(v26 - 8);
  v115 = v26;
  v116 = v27;
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v104 = v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v109 = v100 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = v100 - v34;
  __chkstk_darwin(v33);
  v37 = v100 - v36;
  v38 = a2[4];
  sub_100005E78(a2, a2[3]);
  v39 = dispatch thunk of FamilyRequestEvent.dsid.getter();
  if (v40)
  {
    static PeopleLogger.daemon.getter();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v122 = v44;
      *v43 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;

      v48 = sub_10002580C(v45, v47, &v122);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "%s invalid dsid", v43, 0xCu);
      sub_100003938(v44);
    }

    else
    {
    }

    return (*(v116 + 8))(v37, v115);
  }

  if (!*(a4 + 16) || (v49 = sub_100005F78(v39), (v50 & 1) == 0))
  {
    static PeopleLogger.daemon.getter();

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v122 = v69;
      *v68 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;

      v73 = sub_10002580C(v70, v72, &v122);

      *(v68 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v66, v67, "%s no family member found", v68, 0xCu);
      sub_100003938(v69);
    }

    else
    {
    }

    return (*(v116 + 8))(v35, v115);
  }

  v51 = *(*(a4 + 56) + 8 * v49);
  v52 = [v51 contactsIncludingImage:0];
  sub_100010734(0, &qword_100062C10, CNContact_ptr);
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v53 >> 62)
  {
    v92 = _CocoaArrayWrapper.endIndex.getter();
    v54 = v112;
    if (v92)
    {
      goto LABEL_8;
    }

LABEL_27:

    v57 = v109;
    static PeopleLogger.daemon.getter();

    v58 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v122 = v95;
      *v94 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v97;

      v99 = sub_10002580C(v96, v98, &v122);

      *(v94 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v58, v93, "%s no contacts found", v94, 0xCu);
      sub_100003938(v95);

      goto LABEL_29;
    }

LABEL_30:

    goto LABEL_31;
  }

  v54 = v112;
  if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

LABEL_8:
  v55 = a2[4];
  sub_100005E78(a2, a2[3]);
  dispatch thunk of FamilyRequestEvent.requestStatus.getter();
  v56 = v113;
  if ((*(v113 + 48))(v19, 1, v54) == 1)
  {

    sub_100007DB0(v19, &qword_100062D48, &qword_10004DF98);
    v57 = v104;
    static PeopleLogger.daemon.getter();

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v122 = v61;
      *v60 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;

      v65 = sub_10002580C(v62, v64, &v122);

      *(v60 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v58, v59, "%s invalid status for event", v60, 0xCu);
      sub_100003938(v61);

LABEL_29:

LABEL_31:
      return (*(v116 + 8))(v57, v115);
    }

    goto LABEL_30;
  }

  v115 = v51;
  v116 = v53;
  v75 = v110;
  (*(v56 + 32))(v110, v19, v54);
  v76 = a2[4];
  sub_100005E78(a2, a2[3]);
  v77 = v56;
  dispatch thunk of FamilyRequestEvent.time.getter();
  v78 = v111;
  Date.init(timeIntervalSinceReferenceDate:)();
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v79 = v106;
  v80 = a3 + qword_100065530;
  v81 = v105;
  v82 = v114;
  (*(v106 + 16))(v105, v80, v114);
  v83 = (*(v79 + 88))(v81, v82);
  if (v83 == enum case for StatusType.askToBuyRequest(_:))
  {
    (*(v77 + 16))(v102, v75, v54);
    v84 = v107;
    v85 = v78;
    v86 = v108;
    (*(v107 + 16))(v103, v85, v108);
    sub_1000077E8(a2, &v119);
    sub_100005E30(&qword_100062D60, &qword_10004DFA8);
    sub_100010734(0, &qword_100062D40, BMAskToBuyEvent_ptr);
    swift_dynamicCast();
    v87 = v117;
    BMAskToBuyEvent.productFromRequest()();

    type metadata accessor for PeopleFeatureFlags();
    static PeopleFeatureFlags.shared.getter();
    *(&v120 + 1) = type metadata accessor for AskToBuyRequestPersonStatus();
    v121 = sub_10001764C(&qword_100062D68, &type metadata accessor for AskToBuyRequestPersonStatus);
    sub_100007784(&v119);
    AskToBuyRequestPersonStatus.init(requestState:date:productType:featureFlags:)();
    sub_100007DB0(&v122, &qword_100062D50, &qword_10004DFA0);
    v122 = v119;
    v123 = v120;
    v124 = v121;
    v88 = v75;
  }

  else
  {
    v86 = v108;
    v84 = v107;
    if (v83 == enum case for StatusType.screenTimeRequest(_:))
    {
      v88 = v110;
      (*(v113 + 16))(v102, v110, v54);
      (*(v84 + 16))(v103, v111, v86);
      type metadata accessor for PeopleFeatureFlags();
      static PeopleFeatureFlags.shared.getter();
      *(&v120 + 1) = type metadata accessor for ScreenTimeRequestPersonStatus();
      v121 = sub_10001764C(&qword_100062D58, &type metadata accessor for ScreenTimeRequestPersonStatus);
      sub_100007784(&v119);
      ScreenTimeRequestPersonStatus.init(requestState:date:featureFlags:)();
      sub_100007DB0(&v122, &qword_100062D50, &qword_10004DFA0);
      v122 = v119;
      v123 = v120;
      v124 = v121;
    }

    else
    {
      (*(v79 + 8))(v81, v82);
      v88 = v110;
    }
  }

  v90 = v115;
  v89 = v116;
  sub_10001E738(&v122, &v117, &qword_100062D50, &qword_10004DFA0);
  if (v118)
  {
    v91 = sub_10000784C(&v117, &v119);
    __chkstk_darwin(v91);
    v100[-2] = v101;
    v100[-1] = &v119;
    sub_1000155A4(sub_10001E4E8, &v100[-4], v89);

    sub_100007DB0(&v122, &qword_100062D50, &qword_10004DFA0);
    (*(v84 + 8))(v111, v86);
    (*(v113 + 8))(v88, v54);
    return sub_100003938(&v119);
  }

  else
  {

    sub_100007DB0(&v122, &qword_100062D50, &qword_10004DFA0);
    (*(v84 + 8))(v111, v86);
    (*(v113 + 8))(v88, v54);
    return sub_100007DB0(&v117, &qword_100062D50, &qword_10004DFA0);
  }
}

uint64_t sub_1000199D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v101 = a1;
  v7 = type metadata accessor for BMAskToBuyEvent.ProductType();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v100[1] = v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for StatusType();
  v106 = *(v114 - 8);
  v10 = *(v106 + 64);
  __chkstk_darwin(v114);
  v105 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Date();
  v107 = *(v108 - 8);
  v12 = *(v107 + 64);
  v13 = __chkstk_darwin(v108);
  v103 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v111 = v100 - v15;
  v16 = sub_100005E30(&qword_100062D48, &qword_10004DF98);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v100 - v18;
  v20 = type metadata accessor for RequestStatus();
  v21 = *(v20 - 8);
  v112 = v20;
  v113 = v21;
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v102 = v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v110 = v100 - v25;
  v26 = type metadata accessor for Logger();
  v27 = *(v26 - 8);
  v115 = v26;
  v116 = v27;
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v104 = v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v109 = v100 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = v100 - v34;
  __chkstk_darwin(v33);
  v37 = v100 - v36;
  v38 = a2[4];
  sub_100005E78(a2, a2[3]);
  v39 = dispatch thunk of FamilyRequestEvent.dsid.getter();
  if (v40)
  {
    static PeopleLogger.daemon.getter();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v122 = v44;
      *v43 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;

      v48 = sub_10002580C(v45, v47, &v122);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "%s invalid dsid", v43, 0xCu);
      sub_100003938(v44);
    }

    else
    {
    }

    return (*(v116 + 8))(v37, v115);
  }

  if (!*(a4 + 16) || (v49 = sub_100005F78(v39), (v50 & 1) == 0))
  {
    static PeopleLogger.daemon.getter();

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v122 = v69;
      *v68 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;

      v73 = sub_10002580C(v70, v72, &v122);

      *(v68 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v66, v67, "%s no family member found", v68, 0xCu);
      sub_100003938(v69);
    }

    else
    {
    }

    return (*(v116 + 8))(v35, v115);
  }

  v51 = *(*(a4 + 56) + 8 * v49);
  v52 = [v51 contactsIncludingImage:0];
  sub_100010734(0, &qword_100062C10, CNContact_ptr);
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v53 >> 62)
  {
    v92 = _CocoaArrayWrapper.endIndex.getter();
    v54 = v112;
    if (v92)
    {
      goto LABEL_8;
    }

LABEL_27:

    v57 = v109;
    static PeopleLogger.daemon.getter();

    v58 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v122 = v95;
      *v94 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v97;

      v99 = sub_10002580C(v96, v98, &v122);

      *(v94 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v58, v93, "%s no contacts found", v94, 0xCu);
      sub_100003938(v95);

      goto LABEL_29;
    }

LABEL_30:

    goto LABEL_31;
  }

  v54 = v112;
  if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

LABEL_8:
  v55 = a2[4];
  sub_100005E78(a2, a2[3]);
  dispatch thunk of FamilyRequestEvent.requestStatus.getter();
  v56 = v113;
  if ((*(v113 + 48))(v19, 1, v54) == 1)
  {

    sub_100007DB0(v19, &qword_100062D48, &qword_10004DF98);
    v57 = v104;
    static PeopleLogger.daemon.getter();

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v122 = v61;
      *v60 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;

      v65 = sub_10002580C(v62, v64, &v122);

      *(v60 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v58, v59, "%s invalid status for event", v60, 0xCu);
      sub_100003938(v61);

LABEL_29:

LABEL_31:
      return (*(v116 + 8))(v57, v115);
    }

    goto LABEL_30;
  }

  v115 = v51;
  v116 = v53;
  v75 = v110;
  (*(v56 + 32))(v110, v19, v54);
  v76 = a2[4];
  sub_100005E78(a2, a2[3]);
  v77 = v56;
  dispatch thunk of FamilyRequestEvent.time.getter();
  v78 = v111;
  Date.init(timeIntervalSinceReferenceDate:)();
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v79 = v106;
  v80 = a3 + qword_100065530;
  v81 = v105;
  v82 = v114;
  (*(v106 + 16))(v105, v80, v114);
  v83 = (*(v79 + 88))(v81, v82);
  if (v83 == enum case for StatusType.askToBuyRequest(_:))
  {
    (*(v77 + 16))(v102, v75, v54);
    v84 = v107;
    v85 = v78;
    v86 = v108;
    (*(v107 + 16))(v103, v85, v108);
    sub_1000077E8(a2, &v119);
    sub_100005E30(&qword_100062D60, &qword_10004DFA8);
    sub_100010734(0, &qword_100062D40, BMAskToBuyEvent_ptr);
    swift_dynamicCast();
    v87 = v117;
    BMAskToBuyEvent.productFromRequest()();

    type metadata accessor for PeopleFeatureFlags();
    static PeopleFeatureFlags.shared.getter();
    *(&v120 + 1) = type metadata accessor for AskToBuyRequestPersonStatus();
    v121 = sub_10001764C(&qword_100062D68, &type metadata accessor for AskToBuyRequestPersonStatus);
    sub_100007784(&v119);
    AskToBuyRequestPersonStatus.init(requestState:date:productType:featureFlags:)();
    sub_100007DB0(&v122, &qword_100062D50, &qword_10004DFA0);
    v122 = v119;
    v123 = v120;
    v124 = v121;
    v88 = v75;
  }

  else
  {
    v86 = v108;
    v84 = v107;
    if (v83 == enum case for StatusType.screenTimeRequest(_:))
    {
      v88 = v110;
      (*(v113 + 16))(v102, v110, v54);
      (*(v84 + 16))(v103, v111, v86);
      type metadata accessor for PeopleFeatureFlags();
      static PeopleFeatureFlags.shared.getter();
      *(&v120 + 1) = type metadata accessor for ScreenTimeRequestPersonStatus();
      v121 = sub_10001764C(&qword_100062D58, &type metadata accessor for ScreenTimeRequestPersonStatus);
      sub_100007784(&v119);
      ScreenTimeRequestPersonStatus.init(requestState:date:featureFlags:)();
      sub_100007DB0(&v122, &qword_100062D50, &qword_10004DFA0);
      v122 = v119;
      v123 = v120;
      v124 = v121;
    }

    else
    {
      (*(v79 + 8))(v81, v82);
      v88 = v110;
    }
  }

  v90 = v115;
  v89 = v116;
  sub_10001E738(&v122, &v117, &qword_100062D50, &qword_10004DFA0);
  if (v118)
  {
    v91 = sub_10000784C(&v117, &v119);
    __chkstk_darwin(v91);
    v100[-2] = v101;
    v100[-1] = &v119;
    sub_1000155A4(sub_10001EC78, &v100[-4], v89);

    sub_100007DB0(&v122, &qword_100062D50, &qword_10004DFA0);
    (*(v84 + 8))(v111, v86);
    (*(v113 + 8))(v88, v54);
    return sub_100003938(&v119);
  }

  else
  {

    sub_100007DB0(&v122, &qword_100062D50, &qword_10004DFA0);
    (*(v84 + 8))(v111, v86);
    (*(v113 + 8))(v88, v54);
    return sub_100007DB0(&v117, &qword_100062D50, &qword_10004DFA0);
  }
}

void sub_10001A918(uint64_t a1, char a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    static PeopleLogger.daemon.getter();

    sub_100014AA4(a1, 1);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    sub_100014AB8(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = a4;
      v17 = v16;
      v25 = swift_slowAlloc();
      v28 = v25;
      *v17 = 136315394;
      type metadata accessor for StatusType();
      v27 = a5;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;

      v21 = sub_10002580C(v18, v20, &v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = sub_10002580C(v22, v23, &v28);

      *(v17 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s family lookup error: %s", v17, 0x16u);
      swift_arrayDestroy();

      a4 = v26;
    }

    else
    {
    }

    (*(v10 + 8))(v13, v9);
    a4(a1, 1);
  }

  else
  {
    sub_100017718(a1, a4, a5);
  }
}

void sub_10001ABFC(uint64_t a1, char a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    static PeopleLogger.daemon.getter();

    sub_100014AA4(a1, 1);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    sub_100014AB8(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = a4;
      v17 = v16;
      v25 = swift_slowAlloc();
      v28 = v25;
      *v17 = 136315394;
      type metadata accessor for StatusType();
      v27 = a5;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;

      v21 = sub_10002580C(v18, v20, &v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = sub_10002580C(v22, v23, &v28);

      *(v17 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s family lookup error: %s", v17, 0x16u);
      swift_arrayDestroy();

      a4 = v26;
    }

    else
    {
    }

    (*(v10 + 8))(v13, v9);
    a4(a1, 1);
  }

  else
  {
    sub_100017934(a1, a4, a5);
  }
}

uint64_t sub_10001AEE0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001AFD8;

  return v7(a1);
}

uint64_t sub_10001AFD8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001B0D0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10001B17C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10001C054(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10001B2CC(uint64_t a1, void *a2, int a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v25 = a3;
  Hasher._combine(_:)(a3 & 1);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_100010734(0, &qword_100062D80, NSObject_ptr);
    while (1)
    {
      v12 = *(v6 + 48) + 16 * v10;
      v13 = *(v12 + 8);
      v14 = *v12;
      v15 = static NSObject.== infix(_:_:)();

      if ((v15 & 1) != 0 && ((v13 ^ v25) & 1) == 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v16 = *(v6 + 48) + 16 * v10;
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 8);
    *a1 = v17;
    *(a1 + 8) = v16;
    v18 = v17;
    return 0;
  }

  else
  {
LABEL_7:
    v20 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    v22 = a2;
    sub_10001C1D4(v22, v25 & 1, v10, isUniquelyReferenced_nonNull_native);
    *v23 = v26;
    *a1 = v22;
    *(a1 + 8) = v25 & 1;
    return 1;
  }
}

uint64_t sub_10001B474(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100010734(0, &qword_100062D90, EKEvent_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10001B6BC(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10001BDB0(v21 + 1, &qword_100062DA0, &unk_10004DFF0);
    }

    v19 = v8;
    sub_10001BFD0(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100010734(0, &qword_100062D90, EKEvent_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_10001C38C(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_10001B6BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100005E30(&qword_100062DA0, &unk_10004DFF0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100010734(0, &qword_100062D90, EKEvent_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10001BDB0(v9 + 1, &qword_100062DA0, &unk_10004DFF0);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10001B8CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100005E30(&qword_100062D70, &qword_10004DFB0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10001BB40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100005E30(&qword_100062D88, &unk_10004ED90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 16 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      NSObject.hash(into:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 16 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10001BDB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_100005E30(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_10001BFD0(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_10001C054(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10001B8CC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10001C50C();
      goto LABEL_16;
    }

    sub_10001C91C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10001C1D4(uint64_t a1, int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a4)
  {
    sub_10001BB40(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_10001C668();
      goto LABEL_14;
    }

    sub_10001CB54(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(a2 & 1);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v10 + 32);
  a3 = v12 & ~v13;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    sub_100010734(0, &qword_100062D80, NSObject_ptr);
    while (1)
    {
      v15 = *(v10 + 48) + 16 * a3;
      v16 = *(v15 + 8);
      v17 = *v15;
      v18 = static NSObject.== infix(_:_:)();

      if ((v18 & 1) != 0 && ((v16 ^ a2) & 1) == 0)
      {
        break;
      }

      a3 = (a3 + 1) & v14;
      if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_14:
  v19 = *v24;
  *(*v24 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = *(v19 + 48) + 16 * a3;
  *v20 = a1;
  *(v20 + 8) = a2 & 1;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }
}

void sub_10001C38C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001BDB0(v6 + 1, &qword_100062DA0, &unk_10004DFF0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10001C7CC();
      goto LABEL_12;
    }

    sub_10001CD9C(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100010734(0, &qword_100062D90, EKEvent_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_10001C50C()
{
  v1 = v0;
  sub_100005E30(&qword_100062D70, &qword_10004DFB0);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

id sub_10001C668()
{
  v1 = v0;
  sub_100005E30(&qword_100062D88, &unk_10004ED90);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(v4 + 48) + v17;
        *v20 = v19;
        *(v20 + 8) = v18;
        result = v19;
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

id sub_10001C7CC()
{
  v1 = v0;
  sub_100005E30(&qword_100062DA0, &unk_10004DFF0);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_10001C91C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100005E30(&qword_100062D70, &qword_10004DFB0);
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10001CB54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100005E30(&qword_100062D88, &unk_10004ED90);
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = *(v3 + 48) + 16 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      v22 = v19;
      NSObject.hash(into:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 16 * v13;
      *v14 = v22;
      *(v14 + 8) = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v30;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10001CD9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100005E30(&qword_100062DA0, &unk_10004DFF0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10001CFB0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for StatusType();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v45 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  v16 = sub_10001764C(&qword_1000629C0, type metadata accessor for DNDStatusSource);
  static PeopleLogger.daemon.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v49 = v10;
  v50 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *&v52[0] = swift_slowAlloc();
    *v20 = 136315394;
    swift_getObjectType();
    v51 = a1;
    v21 = *(v16 + 8);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = sub_10002580C(v22, v23, v52);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = Array.description.getter();
    v27 = sub_10002580C(v25, v26, v52);

    *(v20 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "status source: %s has updated statuses for contacts: %s", v20, 0x16u);
    swift_arrayDestroy();
    v10 = v49;

    v9 = v50;
  }

  v28 = *(v10 + 8);
  result = v28(v15, v9);
  if (*(a2 + 16))
  {
    sub_100005E78(a3 + 4, a3[7]);
    type metadata accessor for WidgetConfigurationReader();
    sub_10000D0E8();
    sub_1000077E8((a3 + 4), v52);
    v30 = swift_allocObject();
    sub_10000784C(v52, v30 + 16);
    *(v30 + 56) = a2;
    *(v30 + 64) = a3;

    dispatch thunk of Promise.then<A>(_:)();

    dispatch thunk of Promise.catch<A>(_:)();

    v31 = v48;
    static PeopleLogger.daemon.getter();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v52[0] = v35;
      *v34 = 136315138;
      v36 = Array.description.getter();
      v38 = sub_10002580C(v36, v37, v52);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Will attempt suggesting widgets for contacts: %s", v34, 0xCu);
      sub_100003938(v35);

      v39 = v48;
    }

    else
    {

      v39 = v31;
    }

    v28(v39, v50);
    v40 = sub_100005E78(a3 + 14, a3[17]);
    v42 = v45;
    v41 = v46;
    v43 = v47;
    (*(v46 + 104))(v45, enum case for StatusType.dndAvailability(_:), v47);
    v44 = *v40;
    sub_100048ED4(v42, a2);
    (*(v41 + 8))(v42, v43);
    dispatch thunk of Promise.catch<A>(_:)();
  }

  return result;
}

uint64_t sub_10001D5A0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v51 = a7;
  v48[1] = a5;
  v48[2] = a6;
  v10 = type metadata accessor for StatusType();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  __chkstk_darwin(v10);
  v50 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v54 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v48 - v18;
  static PeopleLogger.daemon.getter();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v49 = v13;
    v23 = v22;
    *&v55[0] = swift_slowAlloc();
    *v23 = 136315394;
    v24 = a4();
    v26 = sub_10002580C(v24, v25, v55);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = Array.description.getter();
    v29 = sub_10002580C(v27, v28, v55);

    *(v23 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "status source: %s has updated statuses for contacts: %s", v23, 0x16u);
    swift_arrayDestroy();

    v13 = v49;
  }

  v30 = *(v14 + 8);
  result = v30(v19, v13);
  if (*(a2 + 16))
  {
    sub_100005E78(a3 + 4, a3[7]);
    type metadata accessor for WidgetConfigurationReader();
    sub_10000D0E8();
    sub_1000077E8((a3 + 4), v55);
    v32 = swift_allocObject();
    sub_10000784C(v55, v32 + 16);
    *(v32 + 56) = a2;
    *(v32 + 64) = a3;

    dispatch thunk of Promise.then<A>(_:)();

    dispatch thunk of Promise.catch<A>(_:)();

    v33 = v54;
    static PeopleLogger.daemon.getter();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v55[0] = v37;
      *v36 = 136315138;
      v38 = Array.description.getter();
      v49 = v13;
      v40 = sub_10002580C(v38, v39, v55);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Will attempt suggesting widgets for contacts: %s", v36, 0xCu);
      sub_100003938(v37);

      v41 = v54;
      v42 = v49;
    }

    else
    {

      v41 = v33;
      v42 = v13;
    }

    v30(v41, v42);
    v43 = sub_100005E78(a3 + 14, a3[17]);
    v44 = v52;
    v45 = v50;
    v46 = v53;
    (*(v52 + 104))(v50, *v51, v53);
    v47 = *v43;
    sub_100048ED4(v45, a2);
    (*(v44 + 8))(v45, v46);
    dispatch thunk of Promise.catch<A>(_:)();
  }

  return result;
}

uint64_t sub_10001DB84(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for StatusType();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v45 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  v16 = sub_10001764C(&qword_1000629B8, type metadata accessor for LocationStatusEventListener);
  static PeopleLogger.daemon.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v49 = v10;
  v50 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *&v52[0] = swift_slowAlloc();
    *v20 = 136315394;
    swift_getObjectType();
    v51 = a1;
    v21 = *(v16 + 8);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = sub_10002580C(v22, v23, v52);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = Array.description.getter();
    v27 = sub_10002580C(v25, v26, v52);

    *(v20 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "status source: %s has updated statuses for contacts: %s", v20, 0x16u);
    swift_arrayDestroy();
    v10 = v49;

    v9 = v50;
  }

  v28 = *(v10 + 8);
  result = v28(v15, v9);
  if (*(a2 + 16))
  {
    sub_100005E78(a3 + 4, a3[7]);
    type metadata accessor for WidgetConfigurationReader();
    sub_10000D0E8();
    sub_1000077E8((a3 + 4), v52);
    v30 = swift_allocObject();
    sub_10000784C(v52, v30 + 16);
    *(v30 + 56) = a2;
    *(v30 + 64) = a3;

    dispatch thunk of Promise.then<A>(_:)();

    dispatch thunk of Promise.catch<A>(_:)();

    v31 = v48;
    static PeopleLogger.daemon.getter();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v52[0] = v35;
      *v34 = 136315138;
      v36 = Array.description.getter();
      v38 = sub_10002580C(v36, v37, v52);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Will attempt suggesting widgets for contacts: %s", v34, 0xCu);
      sub_100003938(v35);

      v39 = v48;
    }

    else
    {

      v39 = v31;
    }

    v28(v39, v50);
    v40 = sub_100005E78(a3 + 14, a3[17]);
    v42 = v45;
    v41 = v46;
    v43 = v47;
    (*(v46 + 104))(v45, enum case for StatusType.location(_:), v47);
    v44 = *v40;
    sub_100048ED4(v42, a2);
    (*(v41 + 8))(v42, v43);
    dispatch thunk of Promise.catch<A>(_:)();
  }

  return result;
}

uint64_t sub_10001E174(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10001E1CC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_10001E2C0;

  return v6(v2 + 16);
}

uint64_t sub_10001E2C0()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10001E3F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10001B17C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10001E488()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001E504()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E55C(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10001E5C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E600()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001E654()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E68C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100007CBC;

  return sub_10001616C();
}

uint64_t sub_10001E738(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005E30(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001E7A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001ECE4;

  return sub_10001AEE0(a1, v5);
}

uint64_t sub_10001E87C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001E8D0()
{
  sub_100003938(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001E918(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_100010734(0, &qword_100062D90, EKEvent_ptr);
    sub_10001EA58();
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10001B474(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_10001EA58()
{
  result = qword_100062D98;
  if (!qword_100062D98)
  {
    sub_100010734(255, &qword_100062D90, EKEvent_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062D98);
  }

  return result;
}

uint64_t sub_10001EAC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001ECE4;

  return sub_10001E1CC(a1, v5);
}

uint64_t sub_10001EB78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007CBC;

  return sub_10001E1CC(a1, v5);
}

uint64_t sub_10001EC30()
{
  v1 = *(v0 + 24);

  sub_100003938((v0 + 32));

  return _swift_deallocObject(v0, 73, 7);
}

id sub_10001ECE8()
{
  result = [objc_allocWithZone(type metadata accessor for XPCListener()) init];
  qword_100065528 = result;
  return result;
}

id sub_10001ED18()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7peopled11XPCListener__machServiceName];
  *v2 = 0xD000000000000016;
  *(v2 + 1) = 0x8000000100050830;
  v3 = OBJC_IVAR____TtC7peopled11XPCListener_eventObserver;
  v4 = type metadata accessor for XPCStreamHandler();
  v5 = swift_allocObject();
  v6 = type metadata accessor for PeopleTimelineControllerFactory();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v9 = PeopleTimelineControllerFactory.init()();
  type metadata accessor for PeopleFeatureFlags();

  v10 = static PeopleFeatureFlags.shared.getter();
  v29[3] = v4;
  v29[4] = &off_10005E9C8;
  v29[0] = v5;
  v27 = v6;
  v28 = &protocol witness table for PeopleTimelineControllerFactory;
  *&v26 = v9;
  type metadata accessor for XPCEventObserver();
  v11 = swift_allocObject();
  v12 = sub_1000106B4(v29, v4);
  v13 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v11[5] = v4;
  v11[6] = &off_10005E9C8;
  v11[2] = v17;
  v11[13] = sub_100007914(_swiftEmptyArrayStorage);
  sub_10000784C(&v26, (v11 + 7));
  v11[12] = v10;
  sub_100003938(v29);

  *&v1[v3] = v11;
  v18 = *v2;
  v19 = *(v2 + 1);
  v20 = objc_allocWithZone(NSXPCListener);

  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 initWithMachServiceName:v21];

  *&v1[OBJC_IVAR____TtC7peopled11XPCListener__listener] = v22;
  v23 = type metadata accessor for XPCListener();
  v25.receiver = v1;
  v25.super_class = v23;
  return objc_msgSendSuper2(&v25, "init");
}

id sub_10001EFA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001F0BC(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v28[-v10];
  v12 = String._bridgeToObjectiveC()();
  v13 = [a2 valueForEntitlement:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (*(&v30 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v28[15] == 1)
    {
      v14 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP6People23ServiceDelegateProtocol_];
      [a2 setExportedInterface:v14];
      if (qword_1000623F8 != -1)
      {
        swift_once();
      }

      [a2 setExportedObject:qword_100065588];
      [a2 resume];
      static PeopleLogger.daemon.getter();
      v15 = a1;
      v16 = a2;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412546;
        *(v19 + 4) = v15;
        *(v19 + 12) = 2112;
        *(v19 + 14) = v16;
        *v20 = v15;
        v20[1] = v16;
        v21 = v15;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, v17, v18, "%@: New connection established %@", v19, 0x16u);
        sub_100005E30(&qword_100062758, &unk_10004E8A0);
        swift_arrayDestroy();

        v23 = v14;
      }

      else
      {
        v23 = v17;
        v17 = v14;
      }

      v26 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    sub_10001F498(v31);
  }

  static PeopleLogger.daemon.getter();
  v17 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v17, v24, "connection is not entitled. declining.", v25, 2u);
  }

  v26 = 0;
  v11 = v9;
LABEL_15:

  (*(v5 + 8))(v11, v4);
  return v26;
}

uint64_t sub_10001F498(uint64_t a1)
{
  v2 = sub_100005E30(&qword_100062E60, &qword_10004F030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001F500()
{
  sub_100003938(v0 + 2);
  v1 = v0[7];

  sub_100003938(v0 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_10001F56C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.location(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10001F5E0(uint64_t a1)
{
  v2 = sub_10001F814(&qword_1000629A8);

  return StatusSource.debugID.getter(a1, v2);
}

uint64_t sub_10001F638(uint64_t a1)
{
  v4 = *v1;
  v5 = async function pointer to static LocateFriend.statusFromFMCache(for:with:friendLocateProvider:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001F6DC;

  return static LocateFriend.statusFromFMCache(for:with:friendLocateProvider:)(a1, v4 + 16, v4 + 64);
}

uint64_t sub_10001F6DC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10001F814(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationStatusSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10001F854(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10001F8C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a3[5];
  v8 = a3[6];
  sub_100005E78(a3 + 2, v7);

  v9 = static PeopleConstants.appBundleID.getter();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10000D1F8;
  *(v12 + 24) = v6;
  (*(v8 + 24))(v9, v11, sub_100020AD8, v12, v7, v8);
}

uint64_t sub_10001F9CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  sub_100005E30(&qword_100063008, &unk_10004E180);
  static Result<>.foundation_from(_:_:)();
  a3(v5, v6);
  return sub_100014AB8(v5, v6);
}

void *sub_10001FA54@<X0>(void *result@<X0>, char **a2@<X8>)
{
  v2 = *result;
  if (*result >> 62)
  {
    goto LABEL_30;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      v5 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v6 = *(v2 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v9 = sub_10000C3F4(v6);

        v10 = *(v9 + 2);
        v11 = *(v5 + 2);
        v12 = v11 + v10;
        if (__OFADD__(v11, v10))
        {
          goto LABEL_26;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v12 <= *(v5 + 3) >> 1)
        {
          if (*(v9 + 2))
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (v11 <= v12)
          {
            v14 = v11 + v10;
          }

          else
          {
            v14 = v11;
          }

          v5 = sub_100022130(isUniquelyReferenced_nonNull_native, v14, 1, v5);
          if (*(v9 + 2))
          {
LABEL_19:
            if ((*(v5 + 3) >> 1) - *(v5 + 2) < v10)
            {
              goto LABEL_28;
            }

            swift_arrayInitWithCopy();

            if (v10)
            {
              v15 = *(v5 + 2);
              v16 = __OFADD__(v15, v10);
              v17 = v15 + v10;
              if (v16)
              {
                goto LABEL_29;
              }

              *(v5 + 2) = v17;
            }

            goto LABEL_5;
          }
        }

        if (v10)
        {
          goto LABEL_27;
        }

LABEL_5:
        ++v4;
        if (v8 == v3)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = _CocoaArrayWrapper.endIndex.getter();
      v3 = result;
    }

    while (result);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_32:
  *a2 = v5;
  return result;
}

char *sub_10001FC20@<X0>(char *result@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *result;
  v23 = *(*result + 16);
  if (!v23)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_23:
    v21 = sub_10001E3F0(v7);

    *a3 = v21;
    return result;
  }

  v5 = 0;
  v6 = (v3 + 40);
  v7 = _swiftEmptyArrayStorage;
  while (v5 < *(v3 + 16))
  {
    v8 = *(v6 - 1);
    v9 = *v6;
    v10 = a2[16];
    sub_100005E78(a2 + 12, a2[15]);

    v11 = dispatch thunk of ContactFetcherProtocol.contact(for:includeImages:)();
    if (v11)
    {
      v12 = v11;
      v13 = CNContact.people_normalizedHandles.getter();
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    v14 = v13[2];
    v15 = *(v7 + 2);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_25;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v16 <= *(v7 + 3) >> 1)
    {
      if (v13[2])
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v17 = v15 + v14;
      }

      else
      {
        v17 = v15;
      }

      result = sub_100022130(result, v17, 1, v7);
      v7 = result;
      if (v13[2])
      {
LABEL_18:
        if ((*(v7 + 3) >> 1) - *(v7 + 2) < v14)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v18 = *(v7 + 2);
          v19 = __OFADD__(v18, v14);
          v20 = v18 + v14;
          if (v19)
          {
            goto LABEL_28;
          }

          *(v7 + 2) = v20;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_26;
    }

LABEL_4:
    ++v5;
    v6 += 2;
    if (v23 == v5)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10001FE00()
{
  sub_100003938(v0 + 2);
  sub_100003938(v0 + 7);
  sub_100003938(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_10001FE6C()
{
  sub_100005E30(&qword_100062FE0, &qword_10004E160);
  v1 = sub_100005E30(&qword_100062FE8, &qword_10004E168);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();

  Promise.init(startBlock:)();
  sub_100005E78((v0 + 56), *(v0 + 80));
  type metadata accessor for WidgetConfigurationReader();
  sub_10000D0E8();

  sub_100005E30(&qword_100062FF0, &qword_10004E170);
  dispatch thunk of Promise.then<A>(_:)();

  sub_100005E30(&qword_100062FF8, &qword_10004E178);
  dispatch thunk of Promise.then<A>(_:)();

  static Promise.join<A, B>(_:_:)();

  dispatch thunk of Promise.then<A>(_:)();

  v4 = dispatch thunk of Promise.catch<A>(_:)();

  return v4;
}

void sub_1000200B4(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  aBlock[0] = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_50:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v2;
  v63 = v3;
  if (v3)
  {
    v4 = 0;
    v56 = v2 & 0xFFFFFFFFFFFFFF8;
    v57 = v2 & 0xC000000000000001;
    v55 = v2 + 32;
    do
    {
      while (1)
      {
        if (v57)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v56 + 16))
          {
            goto LABEL_49;
          }

          v6 = *(v55 + 8 * v4);
        }

        v7 = v6;
        v8 = __OFADD__(v4++, 1);
        if (v8)
        {
          goto LABEL_48;
        }

        v9 = [v6 ownerHandles];
        if (v9)
        {
          v10 = v9;
          sub_100020A3C();
          v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v11 >> 62)
          {
            v12 = _CocoaArrayWrapper.endIndex.getter();
            v59 = v7;
            v60 = v4;
            if (v12)
            {
LABEL_13:
              v13 = 0;
              v14 = _swiftEmptyArrayStorage;
              while (1)
              {
                if ((v11 & 0xC000000000000001) != 0)
                {
                  v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_47;
                  }

                  v15 = *(v11 + 8 * v13 + 32);
                }

                v16 = v15;
                v2 = v13 + 1;
                if (__OFADD__(v13, 1))
                {
                  break;
                }

                v17 = [v15 handleString];
                static String._unconditionallyBridgeFromObjectiveC(_:)();

                v18 = String.lowercased()();

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v14 = sub_100022130(0, *(v14 + 2) + 1, 1, v14);
                }

                v20 = *(v14 + 2);
                v19 = *(v14 + 3);
                if (v20 >= v19 >> 1)
                {
                  v14 = sub_100022130((v19 > 1), v20 + 1, 1, v14);
                }

                *(v14 + 2) = v20 + 1;
                *&v14[16 * v20 + 32] = v18;
                ++v13;
                if (v2 == v12)
                {
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }
          }

          else
          {
            v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v59 = v7;
            v60 = v4;
            if (v12)
            {
              goto LABEL_13;
            }
          }

          v14 = _swiftEmptyArrayStorage;
LABEL_29:

          v2 = v62;
          v3 = v63;
          v7 = v59;
          v4 = v60;
        }

        else
        {
          v14 = _swiftEmptyArrayStorage;
        }

        v21 = sub_10000DCD4(v14, a2);

        if (v21)
        {
          break;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v5 = *(aBlock[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v4 == v3)
        {
          goto LABEL_32;
        }
      }
    }

    while (v4 != v3);
LABEL_32:
    v22 = aBlock[0];
    p_weak_ivar_lyt = (&ScreenTimeStatusSource + 56);
    if ((aBlock[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

  v22 = _swiftEmptyArrayStorage;
  p_weak_ivar_lyt = &ScreenTimeStatusSource.weak_ivar_lyt;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

LABEL_35:
  if ((v22 & 0x4000000000000000) != 0)
  {
LABEL_51:
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (!v24)
    {
      goto LABEL_52;
    }

    goto LABEL_37;
  }

  v24 = *(v22 + 16);
  if (!v24)
  {
LABEL_52:

    v26 = _swiftEmptyArrayStorage;
    goto LABEL_53;
  }

LABEL_37:
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000D6D4(0, v24 & ~(v24 >> 63), 0);
  if (v24 < 0)
  {
LABEL_79:
    __break(1u);
    return;
  }

  v25 = 0;
  v26 = aBlock[0];
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v27 = *(v22 + 8 * v25 + 32);
    }

    v28 = v27;
    v29 = [v28 p_weak_ivar_lyt[397]];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    aBlock[0] = v26;
    v34 = v26[2];
    v33 = v26[3];
    if (v34 >= v33 >> 1)
    {
      sub_10000D6D4((v33 > 1), v34 + 1, 1);
      v26 = aBlock[0];
    }

    ++v25;
    v26[2] = v34 + 1;
    v35 = &v26[2 * v34];
    v35[4] = v30;
    v35[5] = v32;
  }

  while (v24 != v25);

  v2 = v62;
  v3 = v63;
LABEL_53:
  v36 = sub_10001E3F0(v26);

  if (v3)
  {
    v37 = 0;
    v38 = v2 & 0xC000000000000001;
    v64 = v2 & 0xFFFFFFFFFFFFFF8;
    v61 = v2 + 32;
    v39 = v36 + 56;
    while (1)
    {
      if (v38)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= *(v64 + 16))
        {
          goto LABEL_78;
        }

        v42 = *(v61 + 8 * v37);
      }

      v43 = v42;
      v8 = __OFADD__(v37++, 1);
      if (v8)
      {
        break;
      }

      v44 = [v42 subscriptionIdentifier];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      if (*(v36 + 16) && (v48 = *(v36 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v49 = Hasher._finalize()(), v50 = -1 << *(v36 + 32), v51 = v49 & ~v50, ((*(v39 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0))
      {
        v52 = ~v50;
        while (1)
        {
          v53 = (*(v36 + 48) + 16 * v51);
          v54 = *v53 == v45 && v53[1] == v47;
          if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v51 = (v51 + 1) & v52;
          if (((*(v39 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {
LABEL_55:

        static PeopleConstants.appBundleID.getter();
        v40 = String._bridgeToObjectiveC()();

        aBlock[4] = sub_10002074C;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10001F854;
        aBlock[3] = &unk_10005E200;
        v41 = _Block_copy(aBlock);
        [v43 releasePersistentSubscriptionAssertionForApplicationIdentifier:v40 completion:v41];
        _Block_release(v41);
      }

      if (v37 == v63)
      {

        return;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }
}

uint64_t sub_10002074C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  Logger.ifError(_:message:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100020860()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v15[1] = v0;
    v9 = v8;
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_10002580C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v9, 0xCu);
    sub_100003938(v10);
  }

  return (*(v2 + 8))(v5, v1);
}

unint64_t sub_100020A3C()
{
  result = qword_100063000;
  if (!qword_100063000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100063000);
  }

  return result;
}

uint64_t sub_100020A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100020AA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020AE4()
{
  v1 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();

  v2 = *(v0 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 104);
  *(v0 + 104) = 0x8000000000000000;
  sub_1000069EC(sub_100021B88, v1, 0xD00000000000002DLL, 0x8000000100050A40, isUniquelyReferenced_nonNull_native);
  *(v0 + 104) = v11;
  swift_endAccess();

  v4 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();

  v5 = *(v0 + 104);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + 104);
  *(v0 + 104) = 0x8000000000000000;
  sub_1000069EC(sub_100021B90, v4, 0xD00000000000001FLL, 0x8000000100050A70, v6);
  *(v0 + 104) = v12;
  swift_endAccess();

  v7 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();

  v8 = *(v0 + 104);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + 104);
  *(v0 + 104) = 0x8000000000000000;
  sub_1000069EC(sub_100021B98, v7, 0xD000000000000035, 0x8000000100050A90, v9);
  *(v0 + 104) = v13;
  swift_endAccess();
}

uint64_t sub_100020D14(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_100005E30(&qword_100062930, &qword_10004DB40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10004E190;
    *(inited + 32) = static PeopleConstants.singleContactWidgetKind.getter();
    *(inited + 40) = v5;
    *(inited + 48) = static PeopleConstants.multipleContactsWidgetKind.getter();
    *(inited + 56) = v6;
    v7 = *sub_100005E78(a1, a1[3]);
    v9[3] = &type metadata for XPCEvent;
    v9[4] = &off_10005E2F0;
    v9[0] = v7;
    __chkstk_darwin(v7);
    v8[2] = v9;
    v8[3] = v3;
    swift_unknownObjectRetain();
    sub_1000154F8(sub_100021C10, v8, inited);
    swift_setDeallocating();
    swift_arrayDestroy();

    return sub_100003938(v9);
  }

  return result;
}

uint64_t sub_100020E64(void *a1)
{
  v2 = type metadata accessor for PeopleFeatureFlagNames();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(result + 96);
    (*(v3 + 104))(v6, enum case for PeopleFeatureFlagNames.calendarStatus(_:), v2);
    LOBYTE(v9) = dispatch thunk of FeatureFlagsProvider.isEnabled(_:)();
    (*(v3 + 8))(v6, v2);
    if (v9)
    {
      sub_100005E30(&qword_100062930, &qword_10004DB40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10004E190;
      *(inited + 32) = static PeopleConstants.singleContactWidgetKind.getter();
      *(inited + 40) = v11;
      *(inited + 48) = static PeopleConstants.multipleContactsWidgetKind.getter();
      *(inited + 56) = v12;
      v13 = *sub_100005E78(a1, a1[3]);
      v15[3] = &type metadata for XPCEvent;
      v15[4] = &off_10005E2F0;
      v15[0] = v13;
      __chkstk_darwin(v13);
      *&v14[-16] = v15;
      *&v14[-8] = v8;
      swift_unknownObjectRetain();
      sub_1000154F8(sub_100021C10, &v14[-32], inited);
      swift_setDeallocating();
      swift_arrayDestroy();

      return sub_100003938(v15);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10002108C(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_100005E30(&qword_100062930, &qword_10004DB40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10004D790;
    *(inited + 32) = static PeopleConstants.singleContactWidgetKind.getter();
    *(inited + 40) = v5;
    v6 = *sub_100005E78(a1, a1[3]);
    v8[3] = &type metadata for XPCEvent;
    v8[4] = &off_10005E2F0;
    v8[0] = v6;
    __chkstk_darwin(v6);
    v7[2] = v8;
    v7[3] = v3;
    swift_unknownObjectRetain();
    sub_1000154F8(sub_100021BA0, v7, inited);
    swift_setDeallocating();
    sub_100021BBC(inited + 32);

    return sub_100003938(v8);
  }

  return result;
}

uint64_t sub_1000211C8()
{
  sub_100020AE4();
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_1000216F4;
  *(v1 + 24) = v0;
  v5[4] = sub_100021B08;
  v5[5] = v1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100021B10;
  v5[3] = &unk_10005E2C8;
  v2 = _Block_copy(v5);
  swift_retain_n();

  v3 = String.utf8CString.getter();
  xpc_set_event_stream_handler((v3 + 32), 0, v2);

  _Block_release(v2);
}

uint64_t sub_10002130C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  sub_1000077E8(a1, v32);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v30 = a1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    v11 = sub_100005E78(v32, v32[3]);
    if (xpc_dictionary_get_string(*v11, _xpc_event_key_name))
    {
      v12 = String.init(cString:)();
      v14 = v13;
    }

    else
    {
      v12 = 0xD000000000000021;
      v14 = 0x8000000100050A10;
    }

    sub_100003938(v32);
    v15 = sub_10002580C(v12, v14, &v31);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received event %s", v9, 0xCu);
    sub_100003938(v10);

    (*(v3 + 8))(v6, v2);
    a1 = v30;
  }

  else
  {

    (*(v3 + 8))(v6, v2);
    sub_100003938(v32);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = sub_100005E78(a1, a1[3]);
    if (xpc_dictionary_get_string(*v18, _xpc_event_key_name))
    {
      v19 = String.init(cString:)();
      v21 = v20;
    }

    else
    {
      v19 = 0xD000000000000021;
      v21 = 0x8000000100050A10;
    }

    swift_beginAccess();
    v22 = *(v17 + 104);

    if (*(v22 + 16))
    {
      v23 = sub_100005EBC(v19, v21);
      v25 = v24;

      if (v25)
      {
        v26 = *(v22 + 56) + 16 * v23;
        v27 = *v26;
        v28 = *(v26 + 8);

        v27(a1);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100021648()
{
  sub_100003938(v0 + 2);
  sub_100003938(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t sub_1000216BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000216FC(uint64_t *a1, uint64_t a2, void *a3)
{
  v32 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = *a1;
  v13 = a1[1];
  static PeopleLogger.daemon.getter();
  sub_1000077E8(a2, v37);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v33 = v12;
  if (v16)
  {
    v31 = v5;
    v17 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10002580C(v12, v13, &v35);
    *(v17 + 12) = 2080;
    v18 = sub_100005E78(v37, v38);
    if (xpc_dictionary_get_string(*v18, _xpc_event_key_name))
    {
      v19 = String.init(cString:)();
      v21 = v20;
    }

    else
    {
      v21 = 0x8000000100050A10;
      v19 = 0xD000000000000021;
    }

    sub_100003938(v37);
    v23 = sub_10002580C(v19, v21, &v35);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "reloading timelines of kind: %s due to xpc event: %s", v17, 0x16u);
    swift_arrayDestroy();

    v22 = *(v6 + 8);
    v5 = v31;
    v22(v11, v31);
  }

  else
  {

    v22 = *(v6 + 8);
    v22(v11, v5);
    sub_100003938(v37);
  }

  v24 = v32[11];
  sub_100005E78(v32 + 7, v32[10]);
  static PeopleConstants.widgetBundleID.getter();
  v25 = v33;
  dispatch thunk of TimelineControllerFactoryProtocol.timelineController(for:in:)();

  sub_100005E78(v37, v38);
  dispatch thunk of TimelineControllerProtocol.reloadTimeline()();
  v26 = v34;
  static PeopleLogger.daemon.getter();
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  v35 = 0xD000000000000023;
  v36 = 0x8000000100050AD0;
  v27._countAndFlagsBits = v25;
  v27._object = v13;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x203A726F72726520;
  v28._object = 0xEA00000000004025;
  String.append(_:)(v28);
  Logger.ifError(_:message:)();

  v22(v26, v5);
  return sub_100003938(v37);
}

uint64_t sub_100021AD0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021B10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100021B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100021C3C()
{
  v0 = type metadata accessor for StatusType();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100013A1C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_100021D10(id *a1, uint64_t **a2, uint64_t a3)
{
  v5 = [*a1 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_1000077E8(a3, v34);
  v9 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *a2;
  v11 = v33;
  *a2 = 0x8000000000000000;
  v13 = sub_100005EBC(v6, v8);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
LABEL_15:
    v8 = sub_100022348(0, v8[2] + 1, 1, v8);
    *v11 = v8;
    goto LABEL_11;
  }

  v17 = v12;
  if (v11[3] >= v16)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100006EE0();
    }
  }

  else
  {
    sub_100006460(v16, isUniquelyReferenced_nonNull_native);
    v18 = sub_100005EBC(v6, v8);
    if ((v17 & 1) != (v19 & 1))
    {
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v13 = v18;
  }

  v20 = *a2;
  *a2 = v33;

  v21 = *a2;
  if (v17)
  {
  }

  else
  {
    sub_100007E88(v13, v6, v8, _swiftEmptyArrayStorage, *a2);
  }

  v11 = (v21[7] + 8 * v13);
  v8 = *v11;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v8;
  if ((v22 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v24 = v8[2];
  v23 = v8[3];
  if (v24 >= v23 >> 1)
  {
    *v11 = sub_100022348((v23 > 1), v24 + 1, 1, v8);
  }

  v25 = v35;
  v26 = v36;
  v27 = sub_1000106B4(v34, v35);
  v28 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = &v34[-1] - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_1000226E4(v24, v30, v11, v25, v26);
  return sub_100003938(v34);
}

uint64_t sub_100021FA8()
{
  v1 = qword_100065530;
  v2 = type metadata accessor for StatusType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100003938((v0 + qword_100065538));
  v3 = qword_100065540;
  v4 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100003938((v0 + qword_100065548));
  return v0;
}

uint64_t sub_100022074()
{
  sub_100021FA8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1000220E4()
{
  result = qword_100062AF0;
  if (!qword_100062AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100062AF0);
  }

  return result;
}

char *sub_100022130(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005E30(&qword_100062930, &qword_10004DB40);
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

char *sub_10002223C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005E30(&unk_100063268, &unk_10004E2B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100022348(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005E30(&qword_100063260, &qword_10004E2B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005E30(&qword_100062950, &qword_10004DB60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100022508(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005E30(a5, a6);
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

uint64_t sub_1000226E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100007784(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10000784C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1000227AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = *(*(sub_100005E30(&qword_100063368, &qword_10004E5B0) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v8 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v6[14] = v8;
  v9 = *(v8 - 8);
  v6[15] = v9;
  v10 = *(v9 + 64) + 15;
  v6[16] = swift_task_alloc();
  v11 = *(*(sub_100005E30(&qword_100063370, &unk_10004E330) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v12 = type metadata accessor for MessageDetails();
  v6[18] = v12;
  v13 = *(v12 - 8);
  v6[19] = v13;
  v14 = *(v13 + 64) + 15;
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_10002294C, 0, 0);
}

uint64_t sub_10002294C()
{
  v1 = v0[11];
  v2 = v1[4];
  sub_100005E78(v1, v1[3]);
  if (dispatch thunk of MessageConduitProtocol.enabledOnPlatform.getter())
  {
    v3 = v0[16];
    v4 = v0[11];
    v5 = v0[12];
    v6 = OBJC_IVAR____TtC7peopled20RequestMessageSender_messageConduit;
    v0[21] = OBJC_IVAR____TtC7peopled20RequestMessageSender_messageConduit;
    sub_1000077E8(v4, v5 + v6);
    v7 = type metadata accessor for RequestMessageDetailsBuilder();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v0[22] = RequestMessageDetailsBuilder.init()();
    v10 = [objc_opt_self() hours];
    sub_1000220E4();
    Measurement.init(value:unit:)();
    v11 = type metadata accessor for ContactFetcher();
    v0[2] = static ContactFetcher.shared.getter();
    v0[5] = v11;
    v0[6] = &protocol witness table for ContactFetcher;
    v12 = *(&async function pointer to dispatch thunk of RequestMessageDetailsBuilder.fromPersistence(_:eventID:useFamilyCache:resolveAppBundleInfo:maxAge:withContactFetcher:) + 1);
    v34 = &async function pointer to dispatch thunk of RequestMessageDetailsBuilder.fromPersistence(_:eventID:useFamilyCache:resolveAppBundleInfo:maxAge:withContactFetcher:) + async function pointer to dispatch thunk of RequestMessageDetailsBuilder.fromPersistence(_:eventID:useFamilyCache:resolveAppBundleInfo:maxAge:withContactFetcher:);
    v13 = swift_task_alloc();
    v0[23] = v13;
    *v13 = v0;
    v13[1] = sub_100022C4C;
    v15 = v0[16];
    v14 = v0[17];
    v17 = v0[8];
    v16 = v0[9];
    v18 = v0[7];

    return (v34)(v14, v16, v18, v17, 0, 0, v15, v0 + 2);
  }

  else
  {
    v21 = v0[9];
    v20 = v0[10];
    v22 = v0[8];

    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    v23 = type metadata accessor for ResolvedFamily();
    (*(*(v23 - 8) + 8))(v20, v23);
    v24 = type metadata accessor for MessageDetails.EventSource();
    (*(*(v24 - 8) + 8))(v21, v24);
    v25 = v0[20];
    v27 = v0[16];
    v26 = v0[17];
    v29 = v0[12];
    v28 = v0[13];
    v30 = v0[11];
    type metadata accessor for RequestMessageSender();
    v31 = *(*v29 + 48);
    v32 = *(*v29 + 52);
    swift_deallocPartialClassInstance();
    sub_100003938(v30);

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_100022C4C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 184);
  v5 = *v1;

  v6 = v2[16];
  v7 = v2[15];
  v8 = v2[14];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    sub_100003938(v3 + 2);
    v9 = sub_100022DFC;
  }

  else
  {
    v10 = v3[8];
    (*(v7 + 8))(v6, v8);

    sub_100003938(v3 + 2);
    v9 = sub_10002302C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100022DFC()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[17];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  (*(v0[19] + 56))(v3, 1, 1, v0[18]);
  sub_100007DB0(v3, &qword_100063370, &unk_10004E330);
  _StringGuts.grow(_:)(29);

  v9._countAndFlagsBits = v8;
  v9._object = v7;
  String.append(_:)(v9);

  static PeopleErrors.createError(_:code:)();

  swift_willThrow();

  v10 = type metadata accessor for ResolvedFamily();
  (*(*(v10 - 8) + 8))(v6, v10);
  v11 = type metadata accessor for MessageDetails.EventSource();
  (*(*(v11 - 8) + 8))(v5, v11);
  sub_100003938((v4 + v2));
  v12 = v0[20];
  v14 = v0[16];
  v13 = v0[17];
  v16 = v0[12];
  v15 = v0[13];
  v17 = v0[11];
  type metadata accessor for RequestMessageSender();
  v18 = *(*v16 + 48);
  v19 = *(*v16 + 52);
  swift_deallocPartialClassInstance();
  sub_100003938(v17);

  v20 = v0[1];

  return v20();
}

uint64_t sub_10002302C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[13];
  v16 = v0[12];
  v6 = v0[10];
  v17 = v0[11];
  v18 = v0[16];
  v14 = v0[22];
  v15 = v0[9];
  (*(v2 + 56))(v3, 0, 1, v4);
  v7 = *(v2 + 32);
  v7(v1, v3, v4);
  v8 = type metadata accessor for ResolvedFamily();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v5, v6, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  MessageDetails.family.setter();

  (*(v9 + 8))(v6, v8);
  v10 = type metadata accessor for MessageDetails.EventSource();
  (*(*(v10 - 8) + 8))(v15, v10);
  v7(v16 + OBJC_IVAR____TtC7peopled20RequestMessageSender_details, v1, v4);
  sub_100003938(v17);

  v11 = v0[1];
  v12 = v0[12];

  return v11(v12);
}

uint64_t sub_100023238()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_100005E30(&qword_100063368, &qword_10004E5B0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for MessageDetails();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100023398, 0, 0);
}

uint64_t sub_100023398()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[2];
  v6 = OBJC_IVAR____TtC7peopled20RequestMessageSender_details;
  v7 = *(v3 + 16);
  v7(v1, v5 + OBJC_IVAR____TtC7peopled20RequestMessageSender_details, v2);
  MessageDetails.family.getter();
  v8 = *(v3 + 8);
  v0[11] = v8;
  v0[12] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v2);
  v9 = type metadata accessor for ResolvedFamily();
  LODWORD(v1) = (*(*(v9 - 8) + 48))(v4, 1, v9);
  sub_100007DB0(v4, &qword_100063368, &qword_10004E5B0);
  if (v1 == 1)
  {
    v10 = static PeopleErrors.createError(_:code:)();
    v12 = v0[9];
    v11 = v0[10];
    v14 = v0[5];
    v13 = v0[6];

    v15 = v0[1];

    return v15(v10);
  }

  else
  {
    v17 = v0[9];
    v18 = v0[7];
    v19 = (v0[2] + OBJC_IVAR____TtC7peopled20RequestMessageSender_messageConduit);
    v20 = v19[3];
    v21 = v19[4];
    sub_100005E78(v19, v20);
    v7(v17, v5 + v6, v18);
    v22 = async function pointer to dispatch thunk of MessageConduitProtocol.sendMessage(details:)[1];
    v23 = swift_task_alloc();
    v0[13] = v23;
    *v23 = v0;
    v23[1] = sub_1000235EC;
    v24 = v0[9];

    return dispatch thunk of MessageConduitProtocol.sendMessage(details:)(v24, v20, v21);
  }
}

uint64_t sub_1000235EC(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 112) = a1;

  v4(v5, v6);

  return _swift_task_switch(sub_100023754, 0, 0);
}

uint64_t sub_100023754()
{
  v1 = v0[14];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  static PeopleLogger.messages.getter();
  Logger.ifError(_:message:)();
  (*(v3 + 8))(v2, v4);
  v5 = v0[14];
  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[5];
  v8 = v0[6];

  v10 = v0[1];

  return v10(v5);
}

uint64_t sub_100023830()
{
  v1 = OBJC_IVAR____TtC7peopled20RequestMessageSender_details;
  v2 = type metadata accessor for MessageDetails();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100003938((v0 + OBJC_IVAR____TtC7peopled20RequestMessageSender_messageConduit));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RequestMessageSender()
{
  result = qword_1000632B8;
  if (!qword_1000632B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100023930()
{
  result = type metadata accessor for MessageDetails();
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

uint64_t sub_1000239C8()
{
  result = static PeopleErrors.createError(_:code:)();
  qword_100065558 = result;
  return result;
}

id sub_100023A08()
{
  if (qword_1000623D8 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(type metadata accessor for PeopleIndexingClient());

  result = sub_100023A7C(v1);
  qword_100065560 = result;
  return result;
}

id sub_100023A7C(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC7peopled20PeopleIndexingClient_statusManager] = a1;
  v8 = type metadata accessor for PeopleIndexingClient();
  v15.receiver = v1;
  v15.super_class = v8;

  v9 = objc_msgSendSuper2(&v15, "init");
  static PeopleConstants.peopleReindexRegistration.getter();
  v10 = String._bridgeToObjectiveC()();

  SpotlightDaemonClientRegister();

  static PeopleLogger.daemon.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "PeopleIndexingClient: SpotlightDaemonClientRegister completed.", v13, 2u);
  }

  else
  {
  }

  (*(v4 + 8))(v7, v3);
  return v9;
}

uint64_t PeopleIndexingClient.provideData(forBundleID:protectionClass:itemIdentifier:typeIdentifier:options:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void, unint64_t, uint64_t))
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Unimplemented SpotlightDaemonClient method!", v17, 2u);
  }

  (*(v11 + 8))(v14, v10);
  if (qword_1000623E8 != -1)
  {
    swift_once();
  }

  return a10(0, 0xF000000000000000, qword_100065558);
}

uint64_t PeopleIndexingClient.provideFileURL(forBundleID:protectionClass:itemIdentifier:typeIdentifier:options:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(char *, uint64_t))
{
  v10 = sub_100005E30(&qword_100063378, &qword_10004E340);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Unimplemented SpotlightDaemonClient method!", v21, 2u);
  }

  (*(v15 + 8))(v18, v14);
  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  if (qword_1000623E8 != -1)
  {
    swift_once();
  }

  a10(v13, qword_100065558);
  return sub_100007DB0(v13, &qword_100063378, &qword_10004E340);
}

void sub_100024074(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, void *aBlock, void (*a9)(void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a1;
  a9(v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t PeopleIndexingClient.reindexAllItems(for:protectionClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000241B8, 0, 0);
}

uint64_t sub_1000241B8()
{
  v21 = v0;
  v1 = v0[9];
  v2 = v0[3];
  static PeopleLogger.daemon.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10002580C(v10, v9, &v20);
    _os_log_impl(&_mh_execute_header, v3, v4, "PeopleIndexingClient reindexAllItems for %s", v11, 0xCu);
    sub_100003938(v12);
  }

  (*(v7 + 8))(v6, v8);
  v13 = *(v0[6] + OBJC_IVAR____TtC7peopled20PeopleIndexingClient_statusManager);
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_100024380;
  v15 = v0[4];
  v16 = v0[5];
  v18 = v0[2];
  v17 = v0[3];

  return sub_10000B248(v18, v17, _swiftEmptyArrayStorage, v15, v16);
}

uint64_t sub_100024380()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100024620(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_10002471C;

  return PeopleIndexingClient.reindexAllItems(for:protectionClass:)(v6, v8, v9, v11);
}

uint64_t sub_10002471C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  v4[2](v4);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t PeopleIndexingClient.reindexItems(for:bundleID:protectionClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for Logger();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_100024968, 0, 0);
}

uint64_t sub_100024968()
{
  v44 = v0;
  v1 = v0[11];
  v2 = v0[4];
  v3 = v0[2];
  static PeopleLogger.daemon.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  v9 = v0[8];
  v8 = v0[9];
  if (v6)
  {
    v41 = v0[11];
    v11 = v0[3];
    v10 = v0[4];
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v43 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_10002580C(v11, v10, &v43);
    *(v13 + 12) = 2048;
    *(v13 + 14) = *(v12 + 16);

    _os_log_impl(&_mh_execute_header, v4, v5, "PeopleIndexingClient reindexAllItems for %s for %ld ids", v13, 0x16u);
    sub_100003938(v14);

    v15 = *(v8 + 8);
    v15(v41, v9);
  }

  else
  {
    v16 = v0[2];

    v15 = *(v8 + 8);
    v15(v7, v9);
  }

  if (*(v0[2] + 16))
  {
    v17 = *(v0[7] + OBJC_IVAR____TtC7peopled20PeopleIndexingClient_statusManager);
    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    v18[1] = sub_100024CD8;
    v19 = v0[5];
    v20 = v0[6];
    v22 = v0[3];
    v21 = v0[4];
    v23 = v0[2];

    return sub_10000B248(v22, v21, v23, v19, v20);
  }

  else
  {
    v25 = v0[10];
    v26 = v0[4];
    static PeopleLogger.daemon.getter();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[9];
    v31 = v0[10];
    v32 = v0[8];
    if (v29)
    {
      v42 = v0[10];
      v34 = v0[3];
      v33 = v0[4];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_10002580C(v34, v33, &v43);
      _os_log_impl(&_mh_execute_header, v27, v28, "Reindex for %s provided empty id array.", v35, 0xCu);
      sub_100003938(v36);

      v37 = v42;
    }

    else
    {

      v37 = v31;
    }

    v15(v37, v32);
    v39 = v0[10];
    v38 = v0[11];

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_100024CD8()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v7 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100024FA8(int a1, int a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[4] = v7;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[5] = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v5[6] = v12;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_1000250CC;

  return PeopleIndexingClient.reindexItems(for:bundleID:protectionClass:)(v7, v8, v10, v11, v13);
}

uint64_t sub_1000250CC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v9 = *v0;

  v5[2](v5);
  _Block_release(v5);
  v7 = *(v9 + 8);

  return v7();
}

id PeopleIndexingClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeopleIndexingClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeopleIndexingClient();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100025340(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10001ECE4;

  return v7();
}

uint64_t sub_100025428(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100007CBC;

  return v8();
}

uint64_t sub_100025510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10001E738(a3, v25 - v11, &qword_100062A80, &qword_10004ED60);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100007DB0(v12, &qword_100062A80, &qword_10004ED60);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);

    return v23;
  }

LABEL_8:
  sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10002580C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000258D8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100010658(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003938(v11);
  return v7;
}

unint64_t sub_1000258D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000259E4(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

char *sub_1000259E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100025A30(a1, a2);
  sub_100025B60(&off_10005DAA8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100025A30(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100013EDC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100013EDC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100025B60(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100025C4C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100025C4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005E30(&qword_100062C18, &unk_10004DDF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100025D64()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100025DBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100007CBC;

  return sub_100024FA8(v2, v3, v4, v5, v6);
}

uint64_t sub_100025E84()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001ECE4;

  return sub_100025340(v2, v3, v5);
}

uint64_t sub_100025F48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001ECE4;

  return sub_100025428(a1, v4, v5, v7);
}

uint64_t sub_100026014()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002604C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001ECE4;

  return sub_10001AEE0(a1, v5);
}

uint64_t sub_100026104(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007CBC;

  return sub_10001AEE0(a1, v5);
}

uint64_t sub_1000261BC()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002620C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001ECE4;

  return sub_100024620(v2, v3, v5, v4);
}

uint64_t sub_1000262CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10002630C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unimplemented SpotlightDaemonClient method!", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  if (qword_1000623E8 != -1)
  {
    swift_once();
  }

  v10 = _convertErrorToNSError(_:)();
  (*(a1 + 16))(a1, 0, v10);
}

uint64_t sub_1000264A8(uint64_t a1)
{
  v2 = sub_100005E30(&qword_100063378, &qword_10004E340);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Unimplemented SpotlightDaemonClient method!", v16, 2u);
  }

  (*(v10 + 8))(v13, v9);
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v8, 1, 1, v17);
  if (qword_1000623E8 != -1)
  {
    swift_once();
  }

  sub_10001E738(v8, v6, &qword_100063378, &qword_10004E340);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {
    v20 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v19);
    v20 = v21;
    (*(v18 + 8))(v6, v17);
  }

  v22 = _convertErrorToNSError(_:)();
  (*(a1 + 16))(a1, v20, v22);

  return sub_100007DB0(v8, &qword_100063378, &qword_10004E340);
}

uint64_t sub_1000267B4()
{
  if (*(v0 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_listener))
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v1 = 0xE000000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
    v2 = 4271950;
  }

  _StringGuts.grow(_:)(51);
  v3._object = 0x8000000100050D20;
  v3._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 0x6E657473696C0A2CLL;
  v4._object = 0xEC000000203A7265;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v2;
  v5._object = v1;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 10506;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_1000268EC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  type metadata accessor for PeopleUserDefaults();
  v13 = static PeopleUserDefaults.shared.getter();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 BOOLForKey:v14];

  if (v15)
  {
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a1;
    v18 = a1;
    sub_100027770(0, 0, v12, &unk_10004E5A8, v17);
  }

  else
  {
    static PeopleLogger.daemon.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "AskTo enabled for Screen Time, people bowing out", v21, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v2;
  v23[5] = a1;
  v24 = a1;

  sub_100014EE4(0, 0, v12, &unk_10004E598, v23);

  v25 = sub_100005E30(&qword_100062750, &qword_10004D990);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  return Promise.init(startBlock:)();
}

uint64_t sub_100026C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = type metadata accessor for MessageDetails.EventSource();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = *(*(sub_100005E30(&qword_100063368, &qword_10004E5B0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v12 = type metadata accessor for ResolvedFamily();
  v4[20] = v12;
  v13 = *(v12 - 8);
  v4[21] = v13;
  v14 = *(v13 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100026E08, 0, 0);
}

uint64_t sub_100026E08()
{
  v1 = type metadata accessor for ContactFetcher();
  v2 = static ContactFetcher.shared.getter();
  v0[5] = v1;
  v0[6] = &protocol witness table for ContactFetcher;
  v0[2] = v2;
  v3 = async function pointer to static ResolvedFamily.getFamilyForLoggedInChild(withContactFetcher:)[1];
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_100026EC8;
  v5 = v0[19];

  return static ResolvedFamily.getFamilyForLoggedInChild(withContactFetcher:)(v5, v0 + 2);
}

uint64_t sub_100026EC8()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v6 = *v1;
  *(v2 + 200) = v0;

  sub_100003938((v2 + 16));
  if (v0)
  {
    v4 = sub_1000276DC;
  }

  else
  {
    v4 = sub_100026FE4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100026FE4()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[18];
    sub_100007DB0(v3, &qword_100063368, &qword_10004E5B0);
    static PeopleLogger.daemon.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[16];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "ST send message task: no family found", v11, 2u);
    }

    (*(v9 + 8))(v8, v10);
    v13 = v0[22];
    v12 = v0[23];
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[15];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[23];
    v38 = v0[22];
    v20 = v0[14];
    v21 = v0[15];
    v22 = v0[12];
    v23 = v0[13];
    (*(v2 + 32))(v19, v3, v1);
    v24 = [v22 requestID];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    (*(v20 + 104))(v21, enum case for MessageDetails.EventSource.screenTime(_:), v23);
    (*(v2 + 16))(v38, v19, v1);
    v28 = type metadata accessor for MessageConduit();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = MessageConduit.init()();
    v0[10] = v28;
    v0[11] = &protocol witness table for MessageConduit;
    v0[7] = v31;
    v32 = type metadata accessor for RequestMessageSender();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = swift_task_alloc();
    v0[26] = v35;
    *v35 = v0;
    v35[1] = sub_1000272E4;
    v36 = v0[22];
    v37 = v0[15];

    return sub_1000227AC(v25, v27, v37, v36, (v0 + 7));
  }
}

uint64_t sub_1000272E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;

  if (v1)
  {

    return _swift_task_switch(sub_100027630, 0, 0);
  }

  else
  {
    *(v4 + 216) = a1;
    v7 = swift_task_alloc();
    *(v4 + 224) = v7;
    *v7 = v6;
    v7[1] = sub_10002746C;

    return sub_100023238();
  }
}

uint64_t sub_10002746C()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return _swift_task_switch(sub_100027574, 0, 0);
}

uint64_t sub_100027574()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];

  (*(v4 + 8))(v2, v3);
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[15];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100027630()
{
  (*(v0[21] + 8))(v0[23], v0[20]);
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000276DC()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];

  v6 = v0[1];
  v7 = v0[25];

  return v6();
}

uint64_t sub_100027770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10002A4B0(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007DB0(v11, &qword_100062A80, &qword_10004ED60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100027A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = type metadata accessor for StatusType();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_100027B34, 0, 0);
}

uint64_t sub_100027B34()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v17 = v0[6];
  v18 = v0[5];
  v4 = v0[4];
  v15 = v0[7];
  v16 = v0[3];
  v5 = enum case for StatusType.screenTimeRequest(_:);
  v6 = *(v2 + 104);
  v6(v1, enum case for StatusType.screenTimeRequest(_:), v3);
  v7 = [objc_opt_self() screenTimeRequestStream];
  v8 = sub_100005E30(&qword_100063508, &qword_10004E560);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v0[2] = BiomeStreamReader.init(statusType:readerStream:)();
  v6(v1, v5, v3);
  static PeopleConstants.screenTimeRequestEventTTL.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v16;
  sub_100029F94();
  v12 = v4;

  dispatch thunk of EventCollectorProtocol.collectEvents(statusType:maxAge:completion:)();

  (*(v17 + 8))(v15, v18);
  (*(v2 + 8))(v1, v3);

  v13 = v0[1];

  return v13();
}

unint64_t sub_100027D30(unint64_t a1, void *a2, uint64_t a3)
{
  v54 = a3;
  v5 = type metadata accessor for Logger();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  v7 = __chkstk_darwin(v5);
  __chkstk_darwin(v7);
  v53 = &v53 - v8;
  v57 = v9;
  *&v58[0] = _swiftEmptyArrayStorage;
  if (!(a1 >> 62))
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_21:
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

LABEL_20:
  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_3:
  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  do
  {
    v13 = v11;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v14 = *(a1 + 8 * v13 + 32);
        swift_unknownObjectRetain();
        v11 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v13;
      if (v11 == v10)
      {
        goto LABEL_22;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v58[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((*&v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12 = *&v58[0];
  }

  while (v11 != v10);
LABEL_22:
  v16 = a2;
  if (!(v12 >> 62))
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v57;
    if (v17)
    {
      goto LABEL_24;
    }

LABEL_40:

    goto LABEL_41;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v18 = v57;
  if (!v17)
  {
    goto LABEL_40;
  }

LABEL_24:
  v19 = __OFSUB__(v17, 1);
  result = v17 - 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_45:
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_29;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (result >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_47:
    __break(1u);
    return result;
  }

  v21 = *(v12 + 8 * result + 32);
LABEL_29:
  v22 = v21;

  v23 = [v22 requestID];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = [v16 requestID];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v24 == v28 && v26 == v30)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
LABEL_34:

LABEL_41:
      static PeopleLogger.daemon.getter();
      v41 = v16;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        *(v44 + 4) = v41;
        *v45 = v41;
        v46 = v41;
        _os_log_impl(&_mh_execute_header, v42, v43, "Indexing ST %@", v44, 0xCu);
        sub_100007DB0(v45, &qword_100062758, &unk_10004E8A0);
      }

      (*(v55 + 8))(v18, v56);
      v47 = v54;
      sub_1000077E8(v54 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_indexer, v58);
      v48 = swift_allocObject();
      *(v48 + 16) = v41;
      *(v48 + 24) = v47;
      sub_10000784C(v58, v48 + 32);
      *(v48 + 72) = 1;
      v49 = sub_100005E30(&qword_100062750, &qword_10004D990);
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      v52 = v41;

      Promise.init(startBlock:)();
    }
  }

  sub_100010734(0, &qword_100062D78, BMScreenTimeRequestEvent_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    goto LABEL_34;
  }

  v32 = v53;
  static PeopleLogger.daemon.getter();
  v33 = v16;
  v34 = v22;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412546;
    *(v37 + 4) = v33;
    *(v37 + 12) = 2112;
    *(v37 + 14) = v34;
    *v38 = v33;
    v38[1] = v34;
    v39 = v33;
    v40 = v34;
    _os_log_impl(&_mh_execute_header, v35, v36, "Dropping %@ since prior event sorted higher %@", v37, 0x16u);
    sub_100005E30(&qword_100062758, &unk_10004E8A0);
    swift_arrayDestroy();
  }

  else
  {
    v40 = v35;
    v35 = v34;
  }

  return (*(v55 + 8))(v32, v56);
}

uint64_t sub_10002835C(uint64_t (*a1)(uint64_t *))
{
  v2 = 0;
  v3 = 0;
  return a1(&v2);
}

uint64_t sub_10002839C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  type metadata accessor for PeopleBiomeEventIndexer();
  v11 = type metadata accessor for AppBundleResolver();

  v14[3] = v11;
  v14[4] = &protocol witness table for AppBundleResolver;
  v14[0] = AppBundleResolver.__allocating_init()();
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a4;
  *(v12 + 32) = sub_100014D78;
  *(v12 + 40) = v10;

  static PeopleBiomeEventIndexer.indexEvent(screenTimeRequest:bundleResolver:withContactFetcher:withIndexer:completion:)();

  return sub_100003938(v14);
}

uint64_t sub_1000284C8(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v67 = a6;
  v68 = a5;
  v64 = type metadata accessor for StatusType();
  v10 = *(v64 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v64);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v65 = *(v14 - 8);
  v66 = v14;
  v15 = *(v65 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v62 - v20;
  __chkstk_darwin(v19);
  v23 = &v62 - v22;
  v24 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v62 - v26;
  if ((a2 & 1) == 0)
  {
    v63 = *(a1 + 16);
    if (v63)
    {
      if (a3)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_10001DB0C(a4, a1, Strong);
          swift_unknownObjectRelease();
        }

        v42 = type metadata accessor for TaskPriority();
        (*(*(v42 - 8) + 56))(v27, 1, 1, v42);
        v43 = swift_allocObject();
        *(v43 + 16) = 0;
        *(v43 + 24) = 0;
        sub_100014EE4(0, 0, v27, &unk_10004E588, v43);
      }

      static PeopleLogger.daemon.getter();

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v69 = v47;
        *v46 = 136315138;
        v48 = v64;
        (*(v10 + 104))(v13, enum case for StatusType.screenTimeRequest(_:), v64);
        sub_10002A068(&qword_100062708, &type metadata accessor for StatusType);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        (*(v10 + 8))(v13, v48);
        v52 = sub_10002580C(v49, v51, &v69);

        *(v46 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v44, v45, "%s event consume complete", v46, 0xCu);
        sub_100003938(v47);

        (*(v65 + 8))(v23, v66);
LABEL_18:
        type metadata accessor for PeopleAnalytics();
        (*(v10 + 104))(v13, enum case for StatusType.screenTimeRequest(_:), v48);
        static PeopleAnalytics.eventReceived(foundContacts:statusType:)();
        (*(v10 + 8))(v13, v48);
        v39 = 0;
        v40 = 0;
        return v68(v39, v40);
      }

      (*(v65 + 8))(v23, v66);
    }

    else
    {
      static PeopleLogger.daemon.getter();

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v69 = v56;
        *v55 = 136315138;
        v48 = v64;
        (*(v10 + 104))(v13, enum case for StatusType.screenTimeRequest(_:), v64);
        sub_10002A068(&qword_100062708, &type metadata accessor for StatusType);
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v58;
        (*(v10 + 8))(v13, v48);
        v60 = sub_10002580C(v57, v59, &v69);

        *(v55 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v53, v54, "%s event consume complete w/o local contact", v55, 0xCu);
        sub_100003938(v56);

        (*(v65 + 8))(v21, v66);
        goto LABEL_18;
      }

      (*(v65 + 8))(v21, v66);
    }

    v48 = v64;
    goto LABEL_18;
  }

  static PeopleLogger.daemon.getter();

  sub_100014AA4(a1, 1);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  sub_100014AB8(a1, 1);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v69 = v63;
    *v30 = 136315394;
    v31 = v64;
    (*(v10 + 104))(v13, enum case for StatusType.screenTimeRequest(_:), v64);
    sub_10002A068(&qword_100062708, &type metadata accessor for StatusType);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v10 + 8))(v13, v31);
    v35 = sub_10002580C(v32, v34, &v69);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    swift_getErrorValue();
    v36 = Error.localizedDescription.getter();
    v38 = sub_10002580C(v36, v37, &v69);

    *(v30 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s consume error: %s", v30, 0x16u);
    swift_arrayDestroy();
  }

  (*(v65 + 8))(v18, v66);
  v39 = a1;
  v40 = 1;
  return v68(v39, v40);
}

uint64_t sub_100028D24()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100028DE0, 0, 0);
}

uint64_t sub_100028DE0()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.screenTimeRequest(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004810, v2, v1);
}

uint64_t sub_100028EBC(uint64_t a1)
{
  v2 = v1;
  v60 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v62 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  __chkstk_darwin(v7);
  v10 = &v53 - v9;
  v11 = type metadata accessor for StatusType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v53 - v17;
  __chkstk_darwin(v16);
  v20 = &v53 - v19;
  v21 = enum case for StatusType.screenTimeRequest(_:);
  v22 = *(v12 + 104);
  v22(&v53 - v19, enum case for StatusType.screenTimeRequest(_:), v11);
  sub_1000077E8(v2 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_contactFetcher, v65);
  v22(v18, v21, v11);
  v23 = [objc_opt_self() screenTimeRequestStream];
  v24 = sub_100005E30(&qword_100063508, &qword_10004E560);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = BiomeStreamReader.init(statusType:readerStream:)();
  v28 = *(v61 + 16);
  v28(v10, v2 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_ttl, v7);
  v29 = sub_100005E30(&qword_100063510, &unk_10004E568);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v64[3] = v24;
  v64[4] = sub_100029F94();
  v64[0] = v27;
  v55 = v12;
  v33 = v12;
  v34 = v54;
  v35 = *(v33 + 16);
  v35(v32 + qword_100065530, v20, v11);
  sub_1000077E8(v65, v32 + qword_100065538);
  v56 = v10;
  v57 = v7;
  v28((v32 + qword_100065540), v10, v7);
  sub_1000077E8(v64, v32 + qword_100065548);
  static PeopleLogger.daemon.getter();
  v53 = v20;
  v35(v34, v20, v11);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v63 = v39;
    *v38 = 136315138;
    sub_10002A068(&qword_100062708, &type metadata accessor for StatusType);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v34;
    v43 = v42;
    v44 = *(v55 + 8);
    v44(v41, v11);
    v45 = sub_10002580C(v40, v43, &v63);

    *(v38 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "FamilyStatusEventProcessor for %s init", v38, 0xCu);
    sub_100003938(v39);

    (*(v61 + 8))(v56, v57);
    sub_100003938(v65);
    v44(v53, v11);
  }

  else
  {

    (*(v61 + 8))(v56, v57);
    sub_100003938(v65);
    v46 = *(v55 + 8);
    v46(v53, v11);
    v46(v34, v11);
  }

  (*(v59 + 8))(v62, v58);
  sub_100003938(v64);
  v47 = swift_allocObject();
  v48 = v60;
  *(v47 + 16) = v32;
  *(v47 + 24) = v48;
  v49 = sub_100005E30(&qword_100062700, &unk_10004D940);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();

  return Promise.init(startBlock:)();
}

uint64_t sub_1000294C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_10001E3F0(v7);

  v8 = *(a3 + qword_100065538 + 32);
  sub_100005E78((a3 + qword_100065538), *(a3 + qword_100065538 + 24));
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = sub_100014D78;
  v9[4] = v6;

  dispatch thunk of FamilyMemberContactFetching.familyWithDSIDs(completion:)();
}

uint64_t sub_1000295DC()
{
  sub_100007E10((v0 + 16));
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_ttl;
  v3 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  sub_100003938(&v0[OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_indexer]);
  sub_100003938(&v0[OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_contactFetcher]);
  sub_100003938(&v0[OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_messageConduit]);
  v4 = *&v0[OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_listener];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScreenTimeStatusSource()
{
  result = qword_100063440;
  if (!qword_100063440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100029728()
{
  sub_100013A1C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000297E8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.screenTimeRequest(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10002985C(uint64_t a1)
{
  v2 = sub_10002A068(&qword_100062980, type metadata accessor for ScreenTimeStatusSource);

  return StatusSource.debugID.getter(a1, v2);
}

uint64_t sub_1000298EC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for StatusType();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000299BC, 0, 0);
}

void sub_1000299BC()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = enum case for StatusType.screenTimeRequest(_:);
  v7 = *(v0[11] + 104);
  v7(v0[13], enum case for StatusType.screenTimeRequest(_:), v2);
  v22 = swift_allocObject();
  v0[14] = v22;
  *(v22 + 16) = v5;
  v8 = swift_allocObject();
  v0[15] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  v7(v1, v6, v2);
  v9 = objc_opt_self();

  v10 = [v9 screenTimeRequestStream];
  v11 = sub_100005E30(&qword_100063508, &qword_10004E560);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = BiomeStreamReader.init(statusType:readerStream:)();
  v0[5] = v11;
  v15 = sub_100029F94();
  v0[2] = v14;
  v0[6] = v15;
  v16 = *(&async function pointer to dispatch thunk of ReindexCoordinator.reindex<A>(statusType:squashEvents:includeEvent:handleEvent:withReader:) + 1);
  v20 = &async function pointer to dispatch thunk of ReindexCoordinator.reindex<A>(statusType:squashEvents:includeEvent:handleEvent:withReader:) + async function pointer to dispatch thunk of ReindexCoordinator.reindex<A>(statusType:squashEvents:includeEvent:handleEvent:withReader:);
  v17 = swift_task_alloc();
  v0[16] = v17;
  sub_100010734(0, &qword_100062D78, BMScreenTimeRequestEvent_ptr);
  *v17 = v0;
  v17[1] = sub_10001710C;
  v18 = v0[13];
  v19 = v0[8];

  __asm { BR              X8 }
}

uint64_t sub_100029C18(uint64_t a1)
{
  v2 = sub_100010734(0, &qword_100062D78, BMScreenTimeRequestEvent_ptr);

  return static BMStoreDataPeople.squashRequestEvents<A>(_:)(a1, v2);
}

uint64_t sub_100029C68(void *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = [a1 requestID];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v11[0] = v4;
    v11[1] = v6;
    __chkstk_darwin(v7);
    v10[2] = v11;
    v8 = sub_10001B0D0(sub_10002A294, v10, a2);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_100029D34(void *a1, uint64_t a2)
{
  v4 = ReindexCoordinator.indexer.getter();
  v13[3] = type metadata accessor for SpotlightIndexer();
  v13[4] = &protocol witness table for SpotlightIndexer;
  v13[0] = v4;
  sub_1000077E8(v13, v12);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_10000784C(v12, v5 + 32);
  *(v5 + 72) = 0;
  v6 = sub_100005E30(&qword_100062750, &qword_10004D990);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = a1;

  v10 = Promise.init(startBlock:)();
  sub_100003938(v13);
  return v10;
}

uint64_t sub_100029E4C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100007CBC;

  return sub_1000298EC(a1, a2);
}

uint64_t sub_100029EF4(uint64_t a1)
{
  result = sub_10002A068(&qword_1000634F8, type metadata accessor for ScreenTimeStatusSource);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100029F94()
{
  result = qword_100063518;
  if (!qword_100063518)
  {
    sub_100010594(&qword_100063508, &qword_10004E560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063518);
  }

  return result;
}

uint64_t sub_10002A018()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002A068(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002A0B0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002A124()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A15C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002A1B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A1E8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001ECE4;

  return sub_100028D24();
}

uint64_t sub_10002A2B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002A2FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007CBC;

  return sub_100027A0C(a1, v4, v5, v7, v6);
}

uint64_t sub_10002A3BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002A3FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007CBC;

  return sub_100026C4C(a1, v4, v5, v6);
}

uint64_t sub_10002A4B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A520()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A578()
{
  v0 = type metadata accessor for XPCEncoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = XPCEncoder.init()();
  v4 = type metadata accessor for XPCDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *&v35 = v3;
  v34[0] = XPCDecoder.init()();
  v7 = sub_100005E30(&qword_100063600, &qword_10004E600);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = MessageDispatcher.init<A, B>(encoder:decoder:)();
  if (qword_1000623D8 != -1)
  {
    swift_once();
  }

  v11 = qword_1000654E0;
  v12 = AKAvailabilityStatusTypeIdentifier;
  v13 = objc_allocWithZone(SKStatusSubscriptionService);

  v14 = v12;
  v15 = [v13 initWithStatusTypeIdentifier:v14];

  v16 = [objc_allocWithZone(CHSWidgetConfigurationReader) init];
  v36 = sub_100010734(0, &unk_100062A20, CHSWidgetConfigurationReader_ptr);
  v37 = &protocol witness table for CHSWidgetConfigurationReader;
  *&v35 = v16;
  v17 = type metadata accessor for WidgetConfigurationReader();
  v18 = swift_allocObject();
  sub_10000784C(&v35, v18 + 16);
  v19 = type metadata accessor for ContactFetcher();
  v20 = static ContactFetcher.shared.getter();
  v36 = sub_100010734(0, &qword_100062A70, SKStatusSubscriptionService_ptr);
  v37 = &off_10005DAD0;
  *&v35 = v15;
  v34[3] = v17;
  v34[4] = &off_10005DBD0;
  v34[0] = v18;
  v32 = v19;
  v33 = &protocol witness table for ContactFetcher;
  *&v31 = v20;
  type metadata accessor for AvailabilitySubscriptionManager();
  v21 = swift_allocObject();
  v22 = sub_1000106B4(v34, v17);
  v23 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v21[10] = v17;
  v21[11] = &off_10005DBD0;
  v21[7] = v27;
  sub_10000784C(&v35, (v21 + 2));
  sub_10000784C(&v31, (v21 + 12));
  sub_100003938(v34);
  v28 = sub_10002C89C(v10, v11, v21);

  qword_100065588 = v28;
  return result;
}

uint64_t sub_10002A898(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005B08;

  return sub_10002BD30(a1);
}

uint64_t sub_10002A930(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10002AA28;

  return v8(a2);
}

uint64_t sub_10002AA28(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_10002AB38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002ABE0;

  return sub_10002D39C();
}

uint64_t sub_10002ABE0(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_10002ACF0(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10002ADE8;

  return v8(a2);
}

uint64_t sub_10002ADE8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_10002AF04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100030C9C;

  return sub_10002D5D0(a1);
}

uint64_t sub_10002AFAC(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100030C98;

  return v8(a2);
}

uint64_t sub_10002B0A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002B14C;

  return sub_10002E5AC(a1);
}

uint64_t sub_10002B14C(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_10002B254(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100030C9C;

  return sub_10002F3CC(a1);
}

uint64_t sub_10002B2FC(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10002B3F4;

  return v8(a2);
}

uint64_t sub_10002B3F4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_10002B508(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a3;
  v9 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = v5;
    v21 = v20;
    v22 = swift_slowAlloc();
    v32 = a1;
    v23 = a2;
    v24 = a4;
    v25 = v22;
    v34 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10002580C(0xD00000000000001DLL, 0x8000000100050DF0, &v34);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s", v21, 0xCu);
    sub_100003938(v25);
    a4 = v24;
    a2 = v23;
    a1 = v32;
  }

  (*(v14 + 8))(v17, v13);
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v27;
  v28[5] = a1;
  v29 = v33;
  v28[6] = a2;
  v28[7] = v29;
  v28[8] = a4;
  sub_10002C3C0(a1, a2);

  sub_100014EE4(0, 0, v12, &unk_10004E5F8, v28);
}

uint64_t sub_10002B7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  return _swift_task_switch(sub_10002B820, 0, 0);
}

uint64_t sub_10002B820()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    *(v0 + 112) = *(Strong + 16);

    *(v0 + 56) = v4;
    *(v0 + 64) = v3;
    v5 = *(&async function pointer to dispatch thunk of MessageDispatcher.handleMessage(with:) + 1);
    v10 = (&async function pointer to dispatch thunk of MessageDispatcher.handleMessage(with:) + async function pointer to dispatch thunk of MessageDispatcher.handleMessage(with:));
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_10002B980;

    return v10(v0 + 40, v0 + 56);
  }

  else
  {
    v8 = *(v0 + 104);
    (*(v0 + 96))(0, 0xF000000000000000, 0);
    sub_10002C414(0, 0xF000000000000000);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10002B980()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_10002BB38;
  }

  else
  {
    v4 = sub_10002BAB0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002BAB0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 104);
  (*(v0 + 96))(v1, v2, 0);
  sub_10002C414(v1, v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10002BB38()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  swift_errorRetain();
  v3(0, 0xF000000000000000, v1);

  v4 = v0[1];

  return v4();
}

void sub_10002BC98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_10002BD30(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10002BDF0, 0, 0);
}

uint64_t sub_10002BDF0()
{
  v1 = v0[6];
  static PeopleLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "handling fetch contacts status message", v4, 2u);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  (*(v6 + 8))(v5, v7);
  v10 = sub_100005E78((v8 + 24), *(v8 + 48));
  ContactsStatus = FetchContactsStatusMessage.contactIDs.getter();
  v0[7] = ContactsStatus;
  v12 = FetchContactsStatusMessage.types.getter();
  v0[8] = v12;
  v13 = *v10;
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_10002BF5C;

  return sub_100009BB8(ContactsStatus, v12);
}

uint64_t sub_10002BF5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 56);
  v8 = *v2;

  if (v1)
  {
    v9 = *(v4 + 48);

    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    *(v4 + 80) = a1;

    return _swift_task_switch(sub_10002C0F4, 0, 0);
  }
}

uint64_t sub_10002C0F4()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = *sub_100005E78((v0[3] + 64), *(v0[3] + 88));
  sub_10001FE6C();

  v4 = Dictionary<>.typeErased()();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10002C19C()
{
  v1 = v0[2];

  sub_100003938(v0 + 3);
  sub_100003938(v0 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_10002C208()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C240()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_10002C290(v0[5], v0[6]);
  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002C290(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10002C2E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100007CBC;

  return sub_10002B7F8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10002C3C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10002C414(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10002C290(a1, a2);
  }

  return a1;
}

uint64_t sub_10002C428()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = type metadata accessor for StatusManager();
  v19[4] = &off_10005DBF8;
  v19[0] = a2;
  v18[3] = type metadata accessor for AvailabilitySubscriptionManager();
  v18[4] = &off_10005E1F0;
  v18[0] = a3;
  *(a4 + 16) = a1;
  sub_1000077E8(v19, a4 + 24);
  sub_1000077E8(v18, a4 + 64);
  type metadata accessor for FetchContactsStatusMessage();
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_10004E610;
  *(v8 + 24) = a4;
  sub_100030C3C(&qword_100063608, &type metadata accessor for FetchContactsStatusMessage);

  dispatch thunk of MessageDispatcher.registerHandler<A>(for:_:)();

  v9 = *(a4 + 16);
  type metadata accessor for PingMessage();
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_10004E630;
  *(v10 + 24) = a4;
  sub_100030C3C(&qword_100063610, &type metadata accessor for PingMessage);

  dispatch thunk of MessageDispatcher.registerHandler<A>(for:_:)();

  v11 = *(a4 + 16);
  type metadata accessor for FamilyWillSendScreenTimeMessage();
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_10004E650;
  *(v12 + 24) = a4;
  sub_100030C3C(&qword_100063618, &type metadata accessor for FamilyWillSendScreenTimeMessage);

  dispatch thunk of MessageDispatcher.registerHandler<A>(for:_:)();

  v13 = *(a4 + 16);
  type metadata accessor for FamilyWillSendAskToBuyMessage();
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_10004E670;
  *(v14 + 24) = a4;
  sub_100030C3C(&qword_100063620, &type metadata accessor for FamilyWillSendAskToBuyMessage);

  dispatch thunk of MessageDispatcher.registerHandler<A>(for:_:)();

  v15 = *(a4 + 16);
  type metadata accessor for FamilyATBSendIMessage();
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_10004E690;
  *(v16 + 24) = a4;
  sub_100030C3C(&qword_100063628, &type metadata accessor for FamilyATBSendIMessage);

  dispatch thunk of MessageDispatcher.registerHandler<A>(for:_:)();

  sub_100003938(v18);
  sub_100003938(v19);
  return a4;
}

uint64_t sub_10002C89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StatusManager();
  v24[3] = v6;
  v24[4] = &off_10005DBF8;
  v24[0] = a2;
  v22 = type metadata accessor for AvailabilitySubscriptionManager();
  v23 = &off_10005E1F0;
  v21[0] = a3;
  type metadata accessor for ServiceDelegate();
  v7 = swift_allocObject();
  v8 = sub_1000106B4(v24, v6);
  v9 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = v22;
  v14 = sub_1000106B4(v21, v22);
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_10002C468(a1, *v11, *v17, v7);
  sub_100003938(v21);
  sub_100003938(v24);
  return v19;
}

uint64_t sub_10002CA7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002CB14;

  return sub_10002A898(a1);
}

uint64_t sub_10002CB14(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10002CC10()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002CC48(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001ECE4;

  return sub_10002A930(a1, a2, v7);
}

uint64_t sub_10002CD10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002CDA8;

  return sub_10002AB38();
}

uint64_t sub_10002CDA8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_10002CEB4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100007CBC;

  return sub_10002ACF0(a1, a2, v7);
}

uint64_t sub_10002CF7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100030C94;

  return sub_10002AF04(a1);
}

uint64_t sub_10002D014(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001ECE4;

  return sub_10002AFAC(a1, a2, v7);
}

uint64_t sub_10002D0DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002CB14;

  return sub_10002B0A4(a1);
}

uint64_t sub_10002D174(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001ECE4;

  return sub_10002AFAC(a1, a2, v7);
}

uint64_t sub_10002D23C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100030C94;

  return sub_10002B254(a1);
}

uint64_t sub_10002D2D4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001ECE4;

  return sub_10002B2FC(a1, a2, v7);
}

uint64_t sub_10002D39C()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10002D458, 0, 0);
}

uint64_t sub_10002D458()
{
  v14 = v0;
  v1 = v0[4];
  static PeopleLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10002580C(0xD000000000000015, 0x8000000100050EB0, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100003938(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = v0[4];

  v11 = v0[1];

  return v11(1735290736, 0xE400000000000000);
}

uint64_t sub_10002D5D0(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_100005E30(&qword_100063630, &qword_10004E6B0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = type metadata accessor for AskToMetrics.RequestJourneyCheckpoint();
  v1[11] = v6;
  v7 = *(v6 - 8);
  v1[12] = v7;
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();
  v9 = type metadata accessor for AskToMetrics();
  v1[14] = v9;
  v10 = *(v9 - 8);
  v1[15] = v10;
  v11 = *(v10 + 64) + 15;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_10002D7B0, 0, 0);
}

uint64_t sub_10002D7B0()
{
  v23 = v0;
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[2];
  FamilyWillSendScreenTimeMessage.isCallerAskToProcess.getter();
  AskToMetrics.init(isAskToProcess:)();
  v7 = enum case for AskToMetrics.RequestJourneyCheckpoint.daemonReceivedCanSendCall(_:);
  v8 = *(v3 + 104);
  v0[17] = v8;
  v0[18] = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v2, v7, v4);
  AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)();
  v9 = *(v3 + 8);
  v0[19] = v9;
  v0[20] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  static PeopleLogger.daemon.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[10];
  v14 = v0[4];
  v15 = v0[5];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_10002580C(0xD000000000000029, 0x8000000100050E80, &v22);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v16, 0xCu);
    sub_100003938(v17);
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  v0[21] = v18;
  sub_100010734(0, &qword_100063638, FAFamilyCircle_ptr);
  v19 = async function pointer to static FAFamilyCircle.fetch()[1];
  v20 = swift_task_alloc();
  v0[22] = v20;
  *v20 = v0;
  v20[1] = sub_10002D9EC;

  return static FAFamilyCircle.fetch()();
}

uint64_t sub_10002D9EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v7 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v5 = sub_10002E4C8;
  }

  else
  {
    v5 = sub_10002DB00;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002DB00()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v3 = *(v0 + 152);
    v2 = *(v0 + 160);
    v4 = *(v0 + 144);
    v5 = *(v0 + 128);
    v6 = *(v0 + 104);
    v7 = *(v0 + 88);
    (*(v0 + 136))(v6, enum case for AskToMetrics.RequestJourneyCheckpoint.familyCircleFetchSucceeded(_:), v7);
    AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)();
    v3(v6, v7);
    v8 = FAFamilyCircle.requestingFamilyMember.getter();
    *(v0 + 200) = v8;
    if (v8)
    {
      v9 = v8;
      v11 = *(v0 + 152);
      v10 = *(v0 + 160);
      v12 = *(v0 + 144);
      v13 = *(v0 + 128);
      v14 = *(v0 + 104);
      v15 = *(v0 + 88);
      (*(v0 + 136))(v14, enum case for AskToMetrics.RequestJourneyCheckpoint.familyCircleHasRequester(_:), v15);
      AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)();
      v11(v14, v15);
      v16 = FAFamilyCircle.approvers.getter();
      *(v0 + 208) = v16;
      if (v16)
      {
        v17 = v16;
        v19 = *(v0 + 152);
        v18 = *(v0 + 160);
        v20 = *(v0 + 144);
        v21 = *(v0 + 128);
        v22 = *(v0 + 104);
        v23 = *(v0 + 88);
        v24 = *(v0 + 24);
        (*(v0 + 136))(v22, enum case for AskToMetrics.RequestJourneyCheckpoint.familyCircleHasApprovers(_:), v23);
        AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)();
        v19(v22, v23);
        type metadata accessor for MessageSendRules();
        *(v0 + 216) = static MessageSendRules.sharedInstance.getter();
        v25 = type metadata accessor for DiscoveredHandles();
        (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
        v26 = *(&async function pointer to dispatch thunk of MessageSendRules.willSendScreenTimeRequest(from:to:client:askToMetrics:discoveredHandles:) + 1);
        v75 = (&async function pointer to dispatch thunk of MessageSendRules.willSendScreenTimeRequest(from:to:client:askToMetrics:discoveredHandles:) + async function pointer to dispatch thunk of MessageSendRules.willSendScreenTimeRequest(from:to:client:askToMetrics:discoveredHandles:));
        v27 = swift_task_alloc();
        *(v0 + 224) = v27;
        *v27 = v0;
        v27[1] = sub_10002E0A4;
        v28 = *(v0 + 128);
        v29 = *(v0 + 24);

        return v75(v9, v17, 1, v28, v29);
      }

      v54 = *(v0 + 64);
      static PeopleLogger.daemon.getter();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 168);
      v59 = *(v0 + 120);
      v60 = *(v0 + 128);
      v74 = v58;
      v77 = *(v0 + 112);
      v61 = *(v0 + 64);
      v63 = *(v0 + 32);
      v62 = *(v0 + 40);
      if (v57)
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Failed to get approvers for logged in user", v64, 2u);
      }

      v74(v61, v63);
      (*(v59 + 8))(v60, v77);
    }

    else
    {
      v43 = *(v0 + 56);
      static PeopleLogger.daemon.getter();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 168);
      v49 = *(v0 + 120);
      v48 = *(v0 + 128);
      v76 = *(v0 + 112);
      v50 = *(v0 + 56);
      v52 = *(v0 + 32);
      v51 = *(v0 + 40);
      if (v46)
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Failed to get requesting Family member for logged in user", v53, 2u);
      }

      v47(v50, v52);
      (*(v49 + 8))(v48, v76);
    }
  }

  else
  {
    v31 = *(v0 + 48);
    static PeopleLogger.daemon.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 168);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    v38 = *(v0 + 112);
    v39 = *(v0 + 40);
    v40 = *(v0 + 48);
    v41 = *(v0 + 32);
    if (v34)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to fetch FamilyCircle", v42, 2u);
    }

    v35(v40, v41);
    (*(v37 + 8))(v36, v38);
  }

  v65 = *(v0 + 128);
  v66 = *(v0 + 104);
  v68 = *(v0 + 72);
  v67 = *(v0 + 80);
  v70 = *(v0 + 56);
  v69 = *(v0 + 64);
  v71 = *(v0 + 48);
  v72 = *(v0 + 24);

  v73 = *(v0 + 8);

  return v73(0);
}

uint64_t sub_10002E0A4(char a1)
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 232) = a1;

  sub_100030BD4(v5);

  return _swift_task_switch(sub_10002E204, 0, 0);
}

uint64_t sub_10002E204()
{
  v45 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 72);
  static PeopleLogger.daemon.getter();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v35 = *(v0 + 232);
    v6 = *(v0 + 184);
    v7 = *(v0 + 120);
    v42 = *(v0 + 128);
    v40 = *(v0 + 168);
    v41 = *(v0 + 112);
    v36 = *(v0 + 200);
    v37 = *(v0 + 40);
    v38 = *(v0 + 32);
    v39 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44 = v9;
    *v8 = 136315394;
    v10 = v6;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002580C(v12, v14, &v44);

    *(v8 + 4) = v15;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetched family %s willSend: %{BOOL}d", v8, 0x12u);
    sub_100003938(v9);

    v40(v39, v38);
    (*(v7 + 8))(v42, v41);
  }

  else
  {
    v16 = *(v0 + 200);
    v17 = *(v0 + 184);
    v18 = *(v0 + 168);
    v19 = *(v0 + 120);
    v43 = *(v0 + 128);
    v20 = *(v0 + 112);
    v21 = *(v0 + 72);
    v23 = *(v0 + 32);
    v22 = *(v0 + 40);

    v18(v21, v23);
    (*(v19 + 8))(v43, v20);
  }

  v24 = *(v0 + 232);
  v25 = *(v0 + 128);
  v26 = *(v0 + 104);
  v28 = *(v0 + 72);
  v27 = *(v0 + 80);
  v30 = *(v0 + 56);
  v29 = *(v0 + 64);
  v31 = *(v0 + 48);
  v32 = *(v0 + 24);

  v33 = *(v0 + 8);

  return v33(v24);
}

uint64_t sub_10002E4C8()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v7 = v0[3];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v8 = v0[1];
  v9 = v0[24];

  return v8(0);
}

uint64_t sub_10002E5AC(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_100005E30(&qword_100063630, &qword_10004E6B0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = type metadata accessor for AskToMetrics();
  v1[11] = v6;
  v7 = *(v6 - 8);
  v1[12] = v7;
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10002E730, 0, 0);
}

uint64_t sub_10002E730()
{
  v17 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[2];
  FamilyWillSendAskToBuyMessage.isCallerAskToProcess.getter();
  AskToMetrics.init(isAskToProcess:)();
  static PeopleLogger.daemon.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  v8 = v0[4];
  v9 = v0[5];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10002580C(0xD000000000000027, 0x8000000100050E50, &v16);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v10, 0xCu);
    sub_100003938(v11);
  }

  v12 = *(v9 + 8);
  v12(v7, v8);
  v0[14] = v12;
  sub_100010734(0, &qword_100063638, FAFamilyCircle_ptr);
  v13 = async function pointer to static FAFamilyCircle.fetch()[1];
  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = sub_10002E904;

  return static FAFamilyCircle.fetch()();
}

uint64_t sub_10002E904(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_10002F2F4;
  }

  else
  {
    v5 = sub_10002EA18;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002EA18()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[16];
    v3 = FAFamilyCircle.requestingFamilyMember.getter();
    v0[18] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = FAFamilyCircle.approvers.getter();
      v0[19] = v5;
      if (v5)
      {
        v6 = v5;
        v7 = v0[3];
        type metadata accessor for MessageSendRules();
        v0[20] = static MessageSendRules.sharedInstance.getter();
        v8 = type metadata accessor for DiscoveredHandles();
        (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
        v9 = *(&async function pointer to dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:) + 1);
        v57 = (&async function pointer to dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:) + async function pointer to dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:));
        v10 = swift_task_alloc();
        v0[21] = v10;
        *v10 = v0;
        v10[1] = sub_10002EEE4;
        v11 = v0[13];
        v12 = v0[3];

        return v57(v4, v6, 1, v11, v12);
      }

      v37 = v0[8];
      static PeopleLogger.daemon.getter();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      v40 = os_log_type_enabled(v38, v39);
      v42 = v0[13];
      v41 = v0[14];
      v43 = v0[12];
      v56 = v41;
      v59 = v0[11];
      v44 = v0[8];
      v46 = v0[4];
      v45 = v0[5];
      if (v40)
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Failed to get approvers for logged in user", v47, 2u);
      }

      v56(v44, v46);
      (*(v43 + 8))(v42, v59);
    }

    else
    {
      v26 = v0[7];
      static PeopleLogger.daemon.getter();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      v29 = os_log_type_enabled(v27, v28);
      v31 = v0[13];
      v30 = v0[14];
      v32 = v0[12];
      v58 = v0[11];
      v33 = v0[7];
      v35 = v0[4];
      v34 = v0[5];
      if (v29)
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to get requesting Family member for logged in user", v36, 2u);
      }

      v30(v33, v35);
      (*(v32 + 8))(v31, v58);
    }
  }

  else
  {
    v14 = v0[6];
    static PeopleLogger.daemon.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[13];
    v19 = v0[14];
    v20 = v0[11];
    v21 = v0[12];
    v22 = v0[5];
    v23 = v0[6];
    v24 = v0[4];
    if (v17)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to fetch FamilyCircle", v25, 2u);
    }

    v19(v23, v24);
    (*(v21 + 8))(v18, v20);
  }

  v48 = v0[13];
  v49 = v0[9];
  v50 = v0[10];
  v52 = v0[7];
  v51 = v0[8];
  v53 = v0[6];
  v54 = v0[3];

  v55 = v0[1];

  return v55(0);
}

uint64_t sub_10002EEE4(char a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 176) = a1;

  sub_100030BD4(v5);

  return _swift_task_switch(sub_10002F044, 0, 0);
}

uint64_t sub_10002F044()
{
  v44 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  static PeopleLogger.daemon.getter();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v34 = *(v0 + 176);
    v6 = *(v0 + 128);
    v41 = *(v0 + 104);
    v7 = *(v0 + 96);
    v39 = *(v0 + 112);
    v40 = *(v0 + 88);
    v35 = *(v0 + 144);
    v36 = *(v0 + 40);
    v37 = *(v0 + 32);
    v38 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v43 = v9;
    *v8 = 136315394;
    v10 = v6;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002580C(v12, v14, &v43);

    *(v8 + 4) = v15;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetched family %s willSend: %{BOOL}d", v8, 0x12u);
    sub_100003938(v9);

    v39(v38, v37);
    (*(v7 + 8))(v41, v40);
  }

  else
  {
    v16 = *(v0 + 144);
    v17 = *(v0 + 128);
    v18 = *(v0 + 112);
    v42 = *(v0 + 104);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    v21 = *(v0 + 72);
    v23 = *(v0 + 32);
    v22 = *(v0 + 40);

    v18(v21, v23);
    (*(v20 + 8))(v42, v19);
  }

  v24 = *(v0 + 176);
  v25 = *(v0 + 104);
  v27 = *(v0 + 72);
  v26 = *(v0 + 80);
  v29 = *(v0 + 56);
  v28 = *(v0 + 64);
  v30 = *(v0 + 48);
  v31 = *(v0 + 24);

  v32 = *(v0 + 8);

  return v32(v24);
}

uint64_t sub_10002F2F4()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[3];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v7 = v0[1];
  v8 = v0[17];

  return v7(0);
}

uint64_t sub_10002F3CC(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for MessageDetails.EventSource();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = *(*(sub_100005E30(&qword_100063630, &qword_10004E6B0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v6 = type metadata accessor for ResolvedFamily();
  v1[12] = v6;
  v7 = *(v6 - 8);
  v1[13] = v7;
  v8 = *(v7 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v1[16] = v9;
  v10 = *(v9 - 8);
  v1[17] = v10;
  v11 = *(v10 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v12 = type metadata accessor for AskToMetrics();
  v1[25] = v12;
  v13 = *(v12 - 8);
  v1[26] = v13;
  v14 = *(v13 + 64) + 15;
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_10002F62C, 0, 0);
}