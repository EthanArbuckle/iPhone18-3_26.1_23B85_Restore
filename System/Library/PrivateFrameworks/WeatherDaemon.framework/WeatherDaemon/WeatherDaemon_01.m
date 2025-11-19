uint64_t sub_10001A20C()
{
  sub_100030C58();
  v1 = *(v0 + 96);
  v2 = type metadata accessor for NotificationSubscription();
  sub_100030DE0();
  sub_100006BD4(v3, v4, v5, v2);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  sub_10002FFD0();
  v8 = sub_100031110(v7);
  v9 = *(v0 + 88);
  if (v8 == 1)
  {
    sub_10000E904(*(v0 + 88), &qword_1000A3FA8, &qword_100080F00);
    v10 = 0;
  }

  else
  {
    v10 = NotificationSubscription.severeEnabled.getter();
    sub_100030C40(v2);
    v12 = *(v11 + 8);
    v13 = sub_100030F18();
    v14(v13);
  }

  *(v0 + 152) = v10 & 1;
  v15 = *(v0 + 16);
  v16 = v15[58];
  v17 = v15[59];
  sub_100030DA0(v15 + 55);
  v18 = async function pointer to dispatch thunk of PredictedLocationsFeatureStateManagerType.severeNotificationFeatureState()[1];
  swift_task_alloc();
  sub_100030CD4();
  *(v0 + 144) = v19;
  *v19 = v20;
  v21 = sub_100030C7C(v19);

  return dispatch thunk of PredictedLocationsFeatureStateManagerType.severeNotificationFeatureState()(v21, v22, v23);
}

uint64_t sub_10001A398(uint64_t *a1)
{
  v64 = a1;
  v57 = *v1;
  v58 = v1;
  v2 = type metadata accessor for APSMessage();
  v59 = *(v2 - 1);
  v3 = *(v59 + 64);
  __chkstk_darwin(v2);
  v60 = v4;
  v61 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SevereNotificationContent();
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v55 = v9;
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v51 - v10;
  v62 = type metadata accessor for Date();
  v52 = *(v62 - 8);
  v12 = *(v52 + 64);
  __chkstk_darwin(v62);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003020(&qword_1000A3F88, &qword_100080EE0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v63 = &v51 - v20;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Received a severe weather notification; creating debug presentation", v28, 2u);
  }

  (*(v22 + 8))(v25, v21);
  v29 = *v64;
  v30 = v64[1];
  v31 = (v64 + v2[7]);
  v32 = v31[1];
  if (v32)
  {
    v33 = *v31;
  }

  else
  {
    v33 = 0x6E776F6E6B6E55;
  }

  if (v32)
  {
    v34 = v31[1];
  }

  else
  {
    v34 = 0xE700000000000000;
  }

  v35 = v2[5];
  v36 = *(v64 + v2[6]);
  (*(v52 + 16))(v14, v64 + v35, v62);
  swift_bridgeObjectRetain_n();

  sub_100012AB4(v29, v30, v33, v34, v14, v63);
  v65 = 0x3A6C656E6E616843;
  v66 = 0xE900000000000020;
  v37._countAndFlagsBits = v33;
  v37._object = v34;
  String.append(_:)(v37);

  v38 = v65;
  v39 = v66;
  sub_10002FFD0();
  v40 = type metadata accessor for SevereMessage();
  if (sub_100007374(v19, 1, v40) == 1)
  {
    sub_10000E904(v19, &qword_1000A3F88, &qword_100080EE0);
    v41 = 0;
    v42 = 0xE000000000000000;
  }

  else
  {
    v41 = sub_100014378();
    v42 = v43;
    sub_100030508();
  }

  v44 = Dictionary.init(dictionaryLiteral:)();
  sub_100006BD4(&v11[*(v53 + 40)], 1, 1, v62);
  *v11 = 0xD000000000000021;
  *(v11 + 1) = 0x8000000100085170;
  *(v11 + 2) = v38;
  *(v11 + 3) = v39;
  *(v11 + 4) = v41;
  *(v11 + 5) = v42;
  *(v11 + 6) = 0x6775626564;
  *(v11 + 7) = 0xE500000000000000;
  *(v11 + 8) = v44;
  v11[72] = 0;
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v45 = static OS_dispatch_queue.notifications.getter();
  sub_1000304B0();
  v46 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  swift_allocObject();
  sub_10002FEA4();
  firstly<A, B>(on:disposeOn:closure:)();

  v47 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  sub_1000304B0();
  v48 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  swift_allocObject();
  sub_10002FEA4();
  v49 = zalgo.getter();
  Promise.error(on:closure:)();

  sub_100030508();
  return sub_10000E904(v63, &qword_1000A3F88, &qword_100080EE0);
}

uint64_t sub_10001AB28(uint64_t *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  static Logger.notifications.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v16[1] = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_10000D9FC(v8, v9, &v17);
    _os_log_impl(&_mh_execute_header, v10, v11, "Delivered debug notification with identifier: %{public}s", v13, 0xCu);
    sub_100006994(v14);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10001ACE0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SevereMessage();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v7);
  v9 = (v29 - v8);
  v31 = type metadata accessor for Logger();
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v31);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  sub_1000304B0();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29[0] = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = v2;
    v19 = v18;
    v32 = v18;
    *v17 = 136446210;
    v29[1] = a1;
    v29[2] = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = *v9;
    v21 = v9[1];

    sub_100030508();
    v22 = sub_10000D9FC(v20, v21, &v32);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Handling severe message with identifier: %{public}s", v17, 0xCu);
    sub_100006994(v19);
    v2 = v30;

    v5 = v29[0];
  }

  else
  {

    sub_100030508();
  }

  (*(v10 + 8))(v13, v31);
  sub_1000304B0();
  v23 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = v2;
  sub_10002FEA4();
  v24 = objc_allocWithZone(sub_100003020(&qword_1000A3F98, &qword_100080EE8));

  v25 = AsyncBlockOperation.init(_:)();
  sub_100003020(&qword_1000A3538, &qword_100080EF0);
  v26 = v25;
  v27 = Promise.__allocating_init(_:scheduleOn:)();

  return v27;
}

uint64_t sub_10001B090(uint64_t a1)
{
  v2 = type metadata accessor for SevereMessage();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v5 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A3FA0, &qword_100080EF8);
  type metadata accessor for SevereNotificationsManager();
  firstly<A, B>(on:disposeOn:closure:)();

  v6 = static OS_dispatch_queue.notifications.getter();
  sub_1000304B0();
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = a1;
  sub_10002FEA4();

  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  Promise.then<A, B>(on:disposeOn:closure:)();

  v8 = zalgo.getter();
  v9 = Promise.error(on:closure:)();

  return v9;
}

uint64_t sub_10001B2CC(uint64_t a1)
{
  sub_100003020(&qword_1000A40E0, &qword_100081000);

  Promise.__allocating_init<A>(task:)();
  sub_100003020(&qword_1000A40E8, &qword_100081018);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;

  Promise.__allocating_init<A>(task:)();
  v3 = combine<A, B>(_:_:)();

  return v3;
}

uint64_t sub_10001B3BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a3;
  v82 = a4;
  v5 = type metadata accessor for SevereNotificationSubscription();
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = *(v91 + 64);
  __chkstk_darwin(v5);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SevereMessage();
  v78 = *(v9 - 8);
  v10 = *(v78 + 64);
  __chkstk_darwin(v9 - 8);
  v80 = v11;
  v81 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Location();
  v12 = *(v89 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v89);
  v88 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for NotificationSubscription.Location();
  v15 = *(v87 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v87);
  v86 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NotificationSubscription();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v93 = (&v73 - v24);
  v25 = sub_100003020(&qword_1000A3FA8, &qword_100080F00);
  v76 = *(v25 - 8);
  v26 = *(v76 + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v77 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v28;
  __chkstk_darwin(v27);
  v83 = &v73 - v29;
  v31 = *a1;
  v30 = a1[1];
  v32 = *(*a1 + 16);
  v94 = (v19 + 16);
  v84 = (v12 + 8);
  v85 = (v15 + 8);
  v90 = v19;
  v33 = (v19 + 8);

  v74 = v30;

  v35 = 0;
  v97 = v8;
  while (1)
  {
    if (v32 == v35)
    {
      v45 = 1;
      v46 = v83;
      goto LABEL_13;
    }

    if (v35 >= *(v31 + 16))
    {
      __break(1u);
      return result;
    }

    v36 = v31;
    (*(v90 + 16))(v93, v31 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v35, v18);
    v37 = v86;
    NotificationSubscription.location.getter();
    v38 = v88;
    NotificationSubscription.Location.locationOverride.getter();
    (*v85)(v37, v87);
    Location.kind.getter();
    (*v84)(v38, v89);
    v39 = Location.Identifier.Kind.rawValue.getter();
    v41 = v40;
    if (v39 == Location.Identifier.Kind.rawValue.getter() && v41 == v42)
    {
      break;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v44)
    {
      goto LABEL_12;
    }

    result = (*v33)(v93, v18);
    ++v35;
    v31 = v36;
  }

LABEL_12:
  v46 = v83;
  (*(v90 + 32))(v83, v93, v18);
  v45 = 0;
  v31 = v36;
LABEL_13:
  sub_100006BD4(v46, v45, 1, v18);
  if (v32)
  {
    v47 = *(v90 + 80);
    v89 = v31;
    v48 = v31 + ((v47 + 32) & ~v47);
    v93 = *(v90 + 72);
    v49 = *(v90 + 16);
    v50 = _swiftEmptyArrayStorage;
    do
    {
      v49(v23, v48, v18);
      NotificationSubscription.location.getter();
      (*v33)(v23, v18);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = v50[2];
        sub_10005B698();
        v50 = v55;
      }

      v51 = v50[2];
      if (v51 >= v50[3] >> 1)
      {
        sub_10005B698();
        v50 = v56;
      }

      v50[2] = v51 + 1;
      v52 = v50 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
      v53 = *(v91 + 72);
      sub_10002FEA4();
      v48 += v93;
      --v32;
    }

    while (v32);
  }

  else
  {

    v50 = _swiftEmptyArrayStorage;
  }

  v95 = v50;
  v96 = v74;
  v57 = sub_100003020(&qword_1000A3FB0, &qword_100080F08);
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  Promise.init(value:)();
  v97 = sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v60 = static OS_dispatch_queue.notifications.getter();
  v94 = type metadata accessor for SevereMessage;
  sub_1000304B0();
  v61 = *(v78 + 80);
  swift_allocObject();
  v93 = type metadata accessor for SevereMessage;
  sub_10002FEA4();
  sub_100003020(&qword_1000A3FB8, &qword_100080F10);
  type metadata accessor for SevereNotificationsManager();
  v62 = v79;
  Promise.then<A, B>(on:disposeOn:closure:)();

  sub_10002FFD0();
  v63 = (v75 + ((*(v76 + 80) + 16) & ~*(v76 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  sub_10002FEFC();
  *(v64 + v63) = v62;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_10002B428;
  *(v65 + 24) = v64;

  v66 = zalgo.getter();
  sub_100006CD0(&qword_1000A3FC0, &qword_1000A3FB8, &qword_100080F10);
  Promise<A>.filter(on:closure:)();

  sub_1000304B0();
  v67 = swift_allocObject();
  *(v67 + 16) = v62;
  sub_10002FEA4();
  v68 = swift_allocObject();
  *(v68 + 16) = sub_10002B5F4;
  *(v68 + 24) = v67;

  v69 = zalgo.getter();
  sub_100003020(&qword_1000A3538, &qword_100080EF0);
  Promise<A>.compactMap<A>(on:closure:)();

  v70 = zalgo.getter();
  sub_100003020(&qword_1000A3FC8, &qword_100080F18);
  Promise.then<A>(on:closure:)();

  v71 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  sub_100006CD0(&qword_1000A3FD0, &qword_1000A3FC8, &qword_100080F18);
  sub_100006CD0(&qword_1000A34D0, &qword_1000A34C0, &qword_1000804D0);
  v72 = Promise<A>.flatMap<A>(on:closure:)();

  sub_10000E904(v83, &qword_1000A3FA8, &qword_100080F00);
  return v72;
}

uint64_t sub_10001BEBC(uint64_t *a1, uint64_t a2, char **a3)
{
  v77 = a3;
  v76 = type metadata accessor for WeatherAlertEntity();
  v69 = *(v76 - 8);
  v5 = *(v69 + 64);
  __chkstk_darwin(v76);
  v75 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v87 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v68 - v12;
  v14 = *a1;
  v15 = a1[1];
  static Logger.notifications.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v80 = v7;
  v85 = v15;
  v71 = v14;
  if (v18)
  {
    v19 = swift_slowAlloc();
    LODWORD(v88) = v17;
    v20 = v19;
    v86 = swift_slowAlloc();
    *&v90 = v86;
    *v20 = 141558275;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    v89[0] = v14;

    sub_10002AA18();
    type metadata accessor for SevereNotificationSubscription();
    v21 = v8;
    v22 = Array.description.getter();
    v24 = v23;

    v25 = v22;
    v8 = v21;
    v26 = sub_10000D9FC(v25, v24, &v90);
    v15 = v85;

    *(v20 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v88, "Filtering events for notification subscriptions; subscriptions=%{private,mask.hash}s", v20, 0x16u);
    sub_100006994(v86);
  }

  v82 = *(v8 + 8);
  v82(v13, v7);
  v72 = *(a2 + 376);
  result = ReferenceCountedLazy.increase()();
  v28 = 0;
  v81 = v90;
  v29 = v77[4];
  v86 = *(v29 + 2);
  v84 = v29;
  v30 = v29 + 64;
  v74 = _swiftEmptyArrayStorage;
  *&v31 = 136446210;
  v78 = v31;
  v32 = v80;
  v79 = a2;
  v83 = v8 + 8;
  v70 = v29 + 64;
LABEL_4:
  v33 = &v30[40 * v28];
  while (v86 != v28)
  {
    if (v28 >= *(v84 + 2))
    {
      __break(1u);
      return result;
    }

    v88 = v28;
    v34 = *(v33 - 4);
    v35 = *(v33 - 3);
    v36 = *(v33 - 1);
    v37 = *v33;
    v38 = *(v33 - 2);
    *&v90 = v34;
    *(&v90 + 1) = v35;
    *&v91 = v38;
    *(&v91 + 1) = v36;
    v92 = v37;

    if ((sub_10001C6FC(&v90) & 1) == 0)
    {
      v43 = v74;
      result = swift_isUniquelyReferenced_nonNull_native();
      v89[0] = v43;
      if ((result & 1) == 0)
      {
        result = sub_100014634(0, v43[2] + 1, 1);
        v43 = v89[0];
      }

      v15 = v85;
      v44 = v88;
      v30 = v70;
      v46 = v43[2];
      v45 = v43[3];
      if (v46 >= v45 >> 1)
      {
        result = sub_100014634((v45 > 1), v46 + 1, 1);
        v43 = v89[0];
      }

      v28 = v44 + 1;
      v43[2] = v46 + 1;
      v74 = v43;
      v47 = &v43[5 * v46];
      v48 = v90;
      v49 = v91;
      v47[8] = v92;
      *(v47 + 2) = v48;
      *(v47 + 3) = v49;
      goto LABEL_4;
    }

    static Logger.notifications.getter();

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v93 = v42;
      *v41 = v78;
      *(v41 + 4) = sub_10000D9FC(v34, v35, &v93);
      _os_log_impl(&_mh_execute_header, v39, v40, "Previously handled event with identifier: %{public}s", v41, 0xCu);
      sub_100006994(v42);
      v32 = v80;
    }

    v82(v87, v32);

    v33 += 5;
    v28 = v88 + 1;
    v15 = v85;
  }

  v50 = v74;
  v51 = sub_10001CE78(v74, v71, v15);
  v85 = v52;
  v53 = v50[2];
  v83 = v51;
  if (v53)
  {
    v84 = (v69 + 8);
    v54 = v50 + 8;
    v55 = v73;
    do
    {
      v56 = *(v54 - 3);
      v57 = *(v54 - 2);
      v58 = *(v54 - 1);
      v59 = *v54;
      v89[0] = *(v54 - 4);
      v89[1] = v56;
      v89[2] = v57;
      v89[3] = v58;
      v89[4] = v59;

      NotificationStore.weatherAlerts.getter();
      if (v55)
      {
      }

      else
      {
        v88 = dispatch thunk of Table.save.getter();

        v60 = *v77;
        v61 = v77[1];
        v62 = v77[3];
        v86 = v77[2];
        v87 = v60;

        sub_10001CF2C(v89, v85);
        v63 = v75;
        WeatherAlertEntity.init(alertIdentifier:messageIdentifier:channelIdentifier:boundingBox:relevant:)();

        dispatch thunk of Save.entity(_:)();
        (*v84)(v63, v76);
      }

      v55 = 0;
      v54 += 5;
      --v53;
    }

    while (v53);
  }

  v93 = v83;
  v64 = sub_100003020(&qword_1000A40B8, &qword_100080FD0);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  v67 = Promise.init(value:)();
  ReferenceCountedLazy.decrease()();

  return v67;
}

uint64_t sub_10001C6FC(__int128 *a1)
{
  v43 = a1;
  v2 = *v1;
  v3 = type metadata accessor for Logger();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  __chkstk_darwin(v3);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003020(&qword_1000A40D0, &qword_100080FF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v41 = v40 - v9;
  v10 = sub_100003020(&qword_1000A3808, &qword_100080F70);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v40 - v15;
  v17 = type metadata accessor for Expression();
  v44 = *(v17 - 8);
  v18 = *(v44 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v40 - v22;
  v24 = sub_100003020(&qword_1000A40D8, &qword_100080FF8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = v40 - v26;
  static Settings.Notifications.Severe.filterHandledAlerts.getter();
  sub_1000306FC(&qword_1000A3F90, v28, type metadata accessor for SevereNotificationsManager);
  Configurable.setting<A>(_:)();

  if (LOBYTE(v47[0]) != 1)
  {
    return 0;
  }

  v29 = v1[47];
  ReferenceCountedLazy.increase()();
  v42 = v47[0];
  NotificationStore.weatherAlerts.getter();
  v40[0] = v6;
  v40[1] = v29;
  dispatch thunk of Table.query.getter();

  v50 = *v43;
  v48 = &type metadata for String;
  v49 = &protocol witness table for String;
  *v47 = v50;
  swift_bridgeObjectRetain_n();
  == infix(_:_:)();
  sub_100006994(v47);
  v30 = type metadata accessor for OrderBy();
  sub_100006BD4(v16, 1, 1, v30);
  dispatch thunk of Query.first(_:orderBy:)();
  v43 = v30;

  sub_10000E904(v16, &qword_1000A3808, &qword_100080F70);
  v33 = v44 + 8;
  v34 = *(v44 + 8);
  v34(v23, v17);
  v35 = type metadata accessor for WeatherAlertEntity();
  v36 = sub_100007374(v27, 1, v35);
  if (v36 == 1)
  {
    v44 = v33;
    sub_10000E904(v27, &qword_1000A40D8, &qword_100080FF8);
    NotificationStore.periodicWeatherAlerts.getter();
    dispatch thunk of Table.query.getter();

    v48 = &type metadata for String;
    v49 = &protocol witness table for String;
    *v47 = v50;
    == infix(_:_:)();
    sub_100006994(v47);
    sub_100006BD4(v14, 1, 1, v43);
    v37 = v41;
    dispatch thunk of Query.first(_:orderBy:)();

    sub_10000E904(v14, &qword_1000A3808, &qword_100080F70);
    v34(v21, v17);
    v38 = type metadata accessor for PeriodicWeatherAlertEntity();
    v31 = 1;
    v39 = sub_100007374(v37, 1, v38);
    sub_10000E904(v37, &qword_1000A40D0, &qword_100080FF0);
    if (v39 == 1)
    {
      v31 = 0;
    }
  }

  else
  {
    sub_100030028(&v50);
    sub_10000E904(v27, &qword_1000A40D8, &qword_100080FF8);
    v31 = 1;
  }

  ReferenceCountedLazy.decrease()();

  return v31;
}

void *sub_10001CE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = &_swiftEmptySetSingleton;

  v6 = sub_100019204(a2, a1, &v9, sub_10001E094);

  v7 = sub_100019204(a3, a1, &v9, sub_10001E4C8);
  sub_10002A8CC(v7);
  return v6;
}

uint64_t sub_10001CF2C(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10002F9FC(v27, v7);
  v9 = Hasher._finalize()();
  v10 = a2 + 56;
  v11 = -1 << *(a2 + 32);
  v12 = v9 & ~v11;
  if (((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v25 = v7;
  v26 = ~v11;
  v13 = *(a2 + 48);
  v24 = (v7 + 32);
  while (1)
  {
    v14 = (v13 + 40 * v12);
    v15 = v14[2];
    v16 = v14[3];
    v17 = v14[4];
    v18 = *v14 == v3 && v14[1] == v4;
    if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v19 = v15 == v5 && v16 == v6;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v20 = *(v17 + 16);
        if (v20 == *(v25 + 16))
        {
          break;
        }
      }
    }

LABEL_21:
    v12 = (v12 + 1) & v26;
    if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  if (v20 && v17 != v25)
  {
    v21 = (v17 + 32);
    for (i = v24; *v21 == *i; ++i)
    {
      ++v21;
      if (!--v20)
      {
        return 1;
      }
    }

    goto LABEL_21;
  }

  return 1;
}

uint64_t sub_10001D0E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v68 = a4;
  v74 = a3;
  v4 = type metadata accessor for Logger();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  __chkstk_darwin(v4);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NotificationSubscription.Location();
  v67 = *(v7 - 8);
  v8 = *(v67 + 64);
  __chkstk_darwin(v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003020(&qword_1000A3FA8, &qword_100080F00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v62 - v13;
  v15 = type metadata accessor for NotificationSubscription();
  v72 = *(v15 - 8);
  v16 = *(v72 + 64);
  __chkstk_darwin(v15);
  v73 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Location();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v70 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v69 = &v62 - v24;
  v25 = __chkstk_darwin(v23);
  v71 = &v62 - v26;
  __chkstk_darwin(v25);
  v28 = &v62 - v27;
  sub_100037B5C();
  Location.kind.getter();
  v29 = Location.Identifier.Kind.rawValue.getter();
  v31 = v30;
  if (v29 == Location.Identifier.Kind.rawValue.getter() && v31 == v32)
  {

    goto LABEL_9;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
LABEL_9:
    (*(v19 + 8))(v28, v18);
    return 1;
  }

  sub_10002FFD0();
  v35 = v15;
  v36 = v18;
  if (sub_100007374(v14, 1, v15) == 1)
  {
    (*(v19 + 8))(v28, v18);
    sub_10000E904(v14, &qword_1000A3FA8, &qword_100080F00);
    return 1;
  }

  v39 = v72;
  v38 = v73;
  (*(v72 + 32))(v73, v14, v35);
  if ((NotificationSubscription.severeEnabled.getter() & 1) == 0)
  {
    (*(v39 + 8))(v38, v35);
    (*(v19 + 8))(v28, v36);
    return 1;
  }

  NotificationSubscription.location.getter();
  v40 = v71;
  NotificationSubscription.Location.locationOverride.getter();
  (*(v67 + 8))(v10, v7);
  v41 = v68[41];
  sub_1000032B8(v68 + 37, v68[40]);
  if ((dispatch thunk of NotificationLocationComparatorType.areLocationsEquivalent(_:_:)() & 1) == 0)
  {
    v60 = *(v19 + 8);
    v60(v40, v36);
    (*(v39 + 8))(v38, v35);
    v60(v28, v36);
    return 1;
  }

  v42 = v66;
  static Logger.notifications.getter();
  v43 = *(v19 + 16);
  v43(v69, v28, v36);
  v43(v70, v40, v36);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v75 = v68;
    *v46 = 141558787;
    *(v46 + 4) = 1752392040;
    *(v46 + 12) = 2081;
    sub_1000306FC(&qword_1000A40B0, 255, &type metadata accessor for Location);
    v74 = v35;
    LODWORD(v67) = v45;
    v47 = v69;
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v44;
    v49 = v48;
    v51 = v50;
    v52 = *(v19 + 8);
    v52(v47, v36);
    v53 = sub_10000D9FC(v49, v51, &v75);

    *(v46 + 14) = v53;
    *(v46 + 22) = 2160;
    *(v46 + 24) = 1752392040;
    *(v46 + 32) = 2081;
    v54 = v70;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v52(v54, v36);
    v58 = sub_10000D9FC(v55, v57, &v75);

    *(v46 + 34) = v58;
    v59 = v63;
    _os_log_impl(&_mh_execute_header, v63, v67, "Suppressing notifications for location because it's near current location, subscriptionLocation=%{private,mask.hash}s, currentLocation=%{private,mask.hash}s", v46, 0x2Au);
    swift_arrayDestroy();

    (*(v64 + 8))(v66, v65);
    v52(v71, v36);
    (*(v39 + 8))(v73, v74);
    v52(v28, v36);
  }

  else
  {

    v61 = *(v19 + 8);
    v61(v70, v36);
    v61(v69, v36);
    (*(v64 + 8))(v42, v65);
    v61(v40, v36);
    (*(v39 + 8))(v38, v35);
    v61(v28, v36);
  }

  return 0;
}

uint64_t sub_10001D944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v69 = a2;
  v7 = type metadata accessor for SevereMessage();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v70 = v10;
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SevereNotificationSubscription();
  v65 = *(v12 - 8);
  v13 = *(v65 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v66 = v15;
  v67 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v57 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v68 = a3;
  sub_1000304B0();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v64 = v24;
  if (os_log_type_enabled(v23, v24))
  {
    v59 = v23;
    v60 = v8;
    v61 = v11;
    v63 = v4;
    v25 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v72 = v57;
    v58 = v25;
    *v25 = 136446723;
    v26 = *(a1 + 16);
    v62 = a1;
    v27 = (a1 + 40);
    v28 = _swiftEmptyArrayStorage;
    for (i = v17; v26; v22 = v29)
    {
      v29 = v22;
      v30 = v19;
      v31 = v18;
      v33 = *(v27 - 1);
      v32 = *v27;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = v28[2];
        sub_10005B5C4();
        v28 = v37;
      }

      v34 = v28[2];
      if (v34 >= v28[3] >> 1)
      {
        sub_10005B5C4();
        v28 = v38;
      }

      v28[2] = v34 + 1;
      v35 = &v28[2 * v34];
      v35[4] = v33;
      v35[5] = v32;
      v27 += 5;
      --v26;
      v18 = v31;
      v19 = v30;
    }

    v39 = Array.description.getter();
    v41 = v40;

    v42 = sub_10000D9FC(v39, v41, &v72);

    v43 = v58;
    *(v58 + 1) = v42;
    *(v43 + 6) = 2160;
    *(v43 + 14) = 1752392040;
    *(v43 + 11) = 2081;
    sub_1000383B8();
    v45 = v44;
    v47 = v46;
    sub_100030508();
    v48 = sub_10000D9FC(v45, v47, &v72);

    *(v43 + 3) = v48;
    v49 = v59;
    _os_log_impl(&_mh_execute_header, v59, v64, "Handling severe events for subscription; eventIdentifiers=%{public}s, subscription=%{private,mask.hash}s", v43, 0x20u);
    swift_arrayDestroy();

    (*(v19 + 8))(v22, v18);
    a1 = v62;
    v4 = v63;
    v8 = v60;
  }

  else
  {

    sub_100030508();
    (*(v19 + 8))(v22, v18);
  }

  sub_1000304B0();
  sub_1000304B0();
  v50 = (v66 + *(v8 + 80) + ((*(v65 + 80) + 32) & ~*(v65 + 80))) & ~*(v8 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = a1;
  *(v51 + 24) = v4;
  sub_10002FEA4();
  sub_10002FEA4();
  v52 = objc_allocWithZone(sub_100003020(&qword_1000A3F98, &qword_100080EE8));

  v53 = AsyncBlockOperation.init(_:)();
  sub_100003020(&qword_1000A3538, &qword_100080EF0);
  v54 = v53;
  v55 = Promise.__allocating_init(_:scheduleOn:)();

  return v55;
}

uint64_t sub_10001DF4C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100003020(&qword_1000A3FE8, &qword_100080F28);
  result = a2(a1, *(a1 + *(v6 + 48)));
  *a3 = result;
  return result;
}

uint64_t sub_10001DFBC(uint64_t *a1)
{
  v1 = *a1;
  sub_100003020(&qword_1000A3538, &qword_100080EF0);
  v2 = zalgo.getter();
  sub_100003020(&qword_1000A3FD8, &qword_100080F20);
  sub_100006CD0(&qword_1000A3FE0, &qword_1000A3FD8, &qword_100080F20);
  v3 = static Promise.all<A>(on:_:)();

  return v3;
}

uint64_t sub_10001E094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SevereNotificationSubscription();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;

  v14 = sub_100018AE4(sub_10003007C, v35, a2);
  if (*(v14 + 16))
  {

    sub_10001E3F8(v15);
    v16 = sub_100003020(&qword_1000A3FE8, &qword_100080F28);
    v17 = *(v16 + 48);
    sub_1000304B0();
    *(a3 + v17) = v14;
    v18 = a3;
    v19 = 0;
    v20 = v16;
  }

  else
  {
    v34 = v10;

    static Logger.notifications.getter();
    sub_1000304B0();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = v3;
      v24 = v23;
      v32 = swift_slowAlloc();
      v37 = v32;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      sub_1000383B8();
      v26 = v25;
      v28 = v27;
      sub_100030508();
      v29 = sub_10000D9FC(v26, v28, &v37);

      *(v24 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "None of the events are relevant to subscription; subscription=%{private,mask.hash}s", v24, 0x16u);
      sub_100006994(v32);
    }

    else
    {

      sub_100030508();
    }

    (*(v34 + 8))(v13, v9);
    v20 = sub_100003020(&qword_1000A3FE8, &qword_100080F28);
    v18 = a3;
    v19 = 1;
  }

  return sub_100006BD4(v18, v19, 1, v20);
}

uint64_t sub_10001E3F8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 64);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 - 4);
    v5 = *(v4 - 3);
    v7 = *(v4 - 2);
    v8 = *(v4 - 1);
    v9 = *v4;
    v4 += 5;
    v11[0] = v6;
    v11[1] = v5;
    v11[2] = v7;
    v11[3] = v8;
    v11[4] = v9;
    ++v2;

    sub_10002C7B8(&v10, v11);
  }
}

uint64_t sub_10001E4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for SevereNotificationSubscription();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v39 = a3;

  v16 = sub_100018AE4(sub_10002FF54, v37, a2);
  if (*(v16 + 16))
  {

    sub_10001E3F8(v17);
    v18 = sub_100003020(&qword_1000A3FE8, &qword_100080F28);
    v19 = *(v18 + 48);
    sub_1000304B0();
    *(a4 + v19) = v16;
    v20 = a4;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v36 = v12;

    static Logger.notifications.getter();
    sub_1000304B0();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = v4;
      v26 = v25;
      v34 = swift_slowAlloc();
      v40 = v34;
      *v26 = 141558275;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      sub_1000383B8();
      v28 = v27;
      v30 = v29;
      sub_100030508();
      v31 = sub_10000D9FC(v28, v30, &v40);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "None of the events are relevant to subscription; subscription=%{private,mask.hash}s", v26, 0x16u);
      sub_100006994(v34);
    }

    else
    {

      sub_100030508();
    }

    (*(v36 + 8))(v15, v11);
    v22 = sub_100003020(&qword_1000A3FE8, &qword_100080F28);
    v20 = a4;
    v21 = 1;
  }

  return sub_100006BD4(v20, v21, 1, v22);
}

uint64_t sub_10001E82C(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for SevereNotificationSubscription();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v32 = *a1;
  v33 = v13;
  v34 = *(a1 + 4);
  if ((sub_10007BF9C() & 1) == 0)
  {
    return 0;
  }

  v14 = *a3;

  v15 = sub_10001CF2C(&v32, v14);

  if ((v15 & 1) == 0)
  {
    return 1;
  }

  v30 = v3;
  static Logger.notifications.getter();
  v16 = *(&v32 + 1);
  v29 = v32;
  v35 = v33;
  v36 = v34;
  sub_1000304B0();

  sub_10002FF74(&v35, v31);
  sub_10002FFD0();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  sub_100030028(&v35);
  sub_10000E904(&v36, &qword_1000A3BC8, &qword_100080AD8);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31[0] = v28;
    *v19 = 136446723;
    *(v19 + 4) = sub_10000D9FC(v29, v16, v31);
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    v20 = v18;
    sub_1000383B8();
    v22 = v21;
    v24 = v23;
    sub_100030508();
    v25 = sub_10000D9FC(v22, v24, v31);

    *(v19 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v17, v20, "Filtering out event that was relevant for another subscription; Event will not be handled by this subscription; event=%{public}s, subscription=%{private,mask.hash}s", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100030508();
  }

  (*(v9 + 8))(v12, v8);
  return 0;
}

uint64_t sub_10001EBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v30 = a2;
  v22[1] = a3;
  v5 = type metadata accessor for SevereMessage();
  v28 = *(v5 - 8);
  v27 = *(v28 + 64);
  __chkstk_darwin(v5 - 8);
  v26 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SevereNotificationSubscription();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.notifications.getter();
  *(swift_allocObject() + 16) = a1;

  sub_100003020(&qword_1000A3FF0, &qword_100080F30);
  firstly<A>(on:closure:)();

  v11 = static OS_dispatch_queue.notifications.getter();
  v22[0] = type metadata accessor for SevereNotificationSubscription;
  sub_1000304B0();
  v12 = *(v8 + 80);
  v23 = ((v12 + 24) & ~v12) + v9;
  v25 = v12 | 7;
  *(swift_allocObject() + 16) = v30;
  v24 = type metadata accessor for SevereNotificationSubscription;
  sub_10002FEA4();

  sub_100003020(&qword_1000A3FF8, &qword_100080F38);
  sub_100006CD0(&qword_1000A4000, &qword_1000A3FF0, &qword_100080F30);
  Promise<A>.compactMap<A>(on:closure:)();

  v13 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A4008, &qword_100080F40);
  Promise.then<A>(on:closure:)();

  v14 = static OS_dispatch_queue.notifications.getter();
  type metadata accessor for WeatherAlert();
  sub_100006CD0(&qword_1000A4010, &qword_1000A4008, &qword_100080F40);
  Promise<A>.compactMap<A>(on:closure:)();

  v15 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A4018, &qword_100080F48);
  Promise.then<A>(on:closure:)();

  sub_1000304B0();
  sub_1000304B0();
  v16 = (v23 + *(v28 + 80)) & ~*(v28 + 80);
  *(swift_allocObject() + 16) = v30;
  sub_10002FEA4();
  sub_10002FEA4();

  v17 = zalgo.getter();
  sub_100003020(&qword_1000A4020, &qword_100080F50);
  sub_100006CD0(&qword_1000A4028, &qword_1000A4018, &qword_100080F48);
  Promise<A>.compactMap<A>(on:closure:)();

  v18 = zalgo.getter();
  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  Promise.then<A>(on:closure:)();

  v19 = zalgo.getter();
  v20 = Promise.error(on:closure:)();

  return v20;
}

uint64_t sub_10001F174()
{
  v0 = sub_100003020(&qword_1000A40A8, &qword_100080FC8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  return Promise.init(value:)();
}

uint64_t sub_10001F1E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10001F224(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10001F224(uint64_t a1, uint64_t a2)
{
  v16 = *v2;
  v5 = type metadata accessor for SevereNotificationSubscription();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.notifications.getter();
  sub_1000304B0();
  v9 = *(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_10002FEA4();
  type metadata accessor for WeatherAlert();

  firstly<A, B>(on:disposeOn:closure:)();

  sub_1000304B0();
  v11 = (v7 + ((v9 + 16) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  sub_10002FEA4();
  *(v12 + v11) = v2;

  v13 = zalgo.getter();
  sub_100003020(&qword_1000A3E30, &unk_100080CE0);
  v14 = Promise.then<A>(on:closure:)();

  return v14;
}

uint64_t sub_10001F4AC(uint64_t *a1)
{
  v1 = *a1;
  sub_100003020(&qword_1000A3FF8, &qword_100080F38);
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v2 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A4090, &unk_100080FB0);
  sub_100006CD0(&qword_1000A4098, &qword_1000A4090, &unk_100080FB0);
  v3 = static Promise.all<A>(on:_:)();

  return v3;
}

uint64_t sub_10001F5D4(uint64_t *a1)
{
  v28 = *a1;
  sub_100003020(&qword_1000A3B88, &qword_100080FA0);
  sub_100006CD0(&qword_1000A4080, &qword_1000A3B88, &qword_100080FA0);
  v1 = Sequence.groupedBy<A>(_:)();
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100014654(0, v2, 0);
    result = sub_10002FA68(v1);
    v6 = result;
    v7 = 0;
    v8 = v1 + 64;
    v24 = v4;
    v25 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v1 + 36) != v4)
      {
        goto LABEL_23;
      }

      v27 = v4;
      v26 = v5;
      v10 = *(*(v1 + 56) + 8 * v6);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];

      if (v12 >= v11 >> 1)
      {
        result = sub_100014654((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
      v13 = 1 << *(v1 + 32);
      if (v6 >= v13)
      {
        goto LABEL_24;
      }

      v8 = v1 + 64;
      v14 = *(v1 + 64 + 8 * v9);
      if ((v14 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v1 + 36) != v27)
      {
        goto LABEL_26;
      }

      v15 = v14 & (-2 << (v6 & 0x3F));
      if (v15)
      {
        v13 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v9 << 6;
        v17 = v9 + 1;
        v18 = (v1 + 72 + 8 * v9);
        while (v17 < (v13 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_10002FAA8(v6, v27, v26 & 1);
            v13 = __clz(__rbit64(v19)) + v16;
            goto LABEL_19;
          }
        }

        result = sub_10002FAA8(v6, v27, v26 & 1);
      }

LABEL_19:
      v5 = 0;
      ++v7;
      v6 = v13;
      v4 = v24;
      if (v7 == v25)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:

    v21 = sub_100003020(&qword_1000A4088, &qword_100080FA8);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    return Promise.init(value:)();
  }

  return result;
}

uint64_t sub_10001F8D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100075D5C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001F904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a3;
  v76 = *v3;
  v77 = v3;
  v6 = type metadata accessor for SevereMessage();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  __chkstk_darwin(v6 - 8);
  v75 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for UUID();
  v68 = *(v82 - 8);
  v8 = *(v68 + 64);
  __chkstk_darwin(v82);
  v81 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for WeatherAlert();
  v83 = *(v80 - 8);
  v10 = *(v83 + 64);
  __chkstk_darwin(v80);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SevereNotificationSubscription();
  v70 = *(v13 - 8);
  v14 = *(v70 + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v71 = v16;
  v72 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v58 - v17;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v24 = a2;
  sub_1000304B0();

  v25 = Logger.logObject.getter();
  LODWORD(a2) = static os_log_type_t.default.getter();

  v69 = a2;
  if (os_log_type_enabled(v25, a2))
  {
    v60 = v25;
    v61 = v18;
    v62 = v23;
    v63 = v20;
    v65 = v24;
    v66 = v7;
    v26 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v84[0] = v58;
    v59 = v26;
    *v26 = 136446723;
    v27 = *(a1 + 16);
    v67 = a1;
    v64 = v19;
    if (v27)
    {
      v28 = *(v83 + 16);
      v29 = a1 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
      v78 = *(v83 + 72);
      v79 = v28;
      v30 = (v68 + 8);
      v83 += 16;
      v31 = (v83 - 8);
      v32 = _swiftEmptyArrayStorage;
      do
      {
        v33 = v80;
        v79(v12, v29, v80);
        v34 = v81;
        WeatherAlert.id.getter();
        v35 = UUID.uuidString.getter();
        v37 = v36;
        (*v30)(v34, v82);
        (*v31)(v12, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = v32[2];
          sub_10005B5C4();
          v32 = v41;
        }

        v38 = v32[2];
        if (v38 >= v32[3] >> 1)
        {
          sub_10005B5C4();
          v32 = v42;
        }

        v32[2] = v38 + 1;
        v39 = &v32[2 * v38];
        v39[4] = v35;
        v39[5] = v37;
        v29 += v78;
        --v27;
      }

      while (v27);
    }

    v43 = Array.description.getter();
    v45 = v44;

    v46 = sub_10000D9FC(v43, v45, v84);

    v47 = v59;
    *(v59 + 1) = v46;
    *(v47 + 6) = 2160;
    *(v47 + 14) = 1752392040;
    *(v47 + 11) = 2081;
    sub_1000383B8();
    v49 = v48;
    v51 = v50;
    sub_100030508();
    v52 = sub_10000D9FC(v49, v51, v84);

    *(v47 + 3) = v52;
    v53 = v60;
    _os_log_impl(&_mh_execute_header, v60, v69, "Deliver notification for alerts; alerts=%{public}s, subscription=%{private,mask.hash}s", v47, 0x20u);
    swift_arrayDestroy();

    (*(v63 + 8))(v62, v64);
    a1 = v67;
  }

  else
  {

    sub_100030508();
    (*(v20 + 8))(v23, v19);
  }

  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v54 = static OS_dispatch_queue.notifications.getter();
  sub_1000304B0();
  sub_1000304B0();
  v55 = (v71 + *(v73 + 80) + ((*(v70 + 80) + 24) & ~*(v70 + 80))) & ~*(v73 + 80);
  *(swift_allocObject() + 16) = a1;
  sub_10002FEA4();
  sub_10002FEA4();

  v56 = firstly<A, B>(on:disposeOn:closure:)();

  return v56;
}

uint64_t sub_1000200CC(uint64_t *a1)
{
  v1 = *a1;
  sub_100003020(&qword_1000A4020, &qword_100080F50);
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v2 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A4038, &unk_100080F60);
  sub_100006CD0(&qword_1000A4040, &qword_1000A4038, &unk_100080F60);
  v3 = static Promise.all<A>(on:_:)();

  return v3;
}

void sub_1000201B8()
{
  if (qword_1000A3258 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002FE8(v0, static Logger.daemon);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 141558275;
    *(v2 + 4) = 1752392040;
    *(v2 + 12) = 2113;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 14) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Cannot handle severe message event. error=%{private,mask.hash}@", v2, 0x16u);
    sub_10000E904(v3, &qword_1000A4030, &qword_100080F58);
  }
}

uint64_t sub_100020328(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Location();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000032B8((a1 + 96), *(a1 + 120));
  sub_100037B5C();
  v12 = *v11;
  v13 = sub_100069254(a2, a3, v10);
  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_10002043C(uint64_t a1, uint64_t a2, void *a3)
{
  v147 = a2;
  v131 = *a3;
  v132 = a3;
  v129 = type metadata accessor for Date();
  v128 = *(v129 - 8);
  v4 = *(v128 + 64);
  v5 = __chkstk_darwin(v129);
  v127 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v126 = &v122 - v7;
  v8 = sub_100003020(&qword_1000A3E30, &unk_100080CE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v144 = &v122 - v10;
  v11 = type metadata accessor for UUID();
  v134 = *(v11 - 8);
  v135 = v11;
  v12 = *(v134 + 64);
  __chkstk_darwin(v11);
  v136 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WeatherAlert();
  v142 = *(v14 - 8);
  v143 = v14;
  v15 = *(v142 + 64);
  v16 = __chkstk_darwin(v14);
  v138 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v137 = (&v122 - v19);
  __chkstk_darwin(v18);
  v123 = &v122 - v20;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v139 = v21;
  v140 = v22;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v146 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v125 = &v122 - v26;
  v133 = type metadata accessor for SevereNotificationSubscription();
  v27 = *(*(v133 - 8) + 64);
  v28 = __chkstk_darwin(v133);
  v145 = &v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v124 = &v122 - v31;
  __chkstk_darwin(v30);
  v32 = type metadata accessor for ResolvedPredictedLocation();
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v130 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Location();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v122 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100003020(&qword_1000A3540, &unk_100080520);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v122 - v42;
  v44 = sub_100003020(&qword_1000A3548, &qword_100080FC0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  v48 = &v122 - v47;
  v141 = a1;
  WeatherAlert.area.getter();
  if (sub_100007374(v43, 1, v44) == 1)
  {
    sub_10000E904(v43, &qword_1000A3540, &unk_100080520);
LABEL_8:
    v61 = v143;
    v62 = v146;
    static Logger.notifications.getter();
    v63 = v142;
    v64 = v138;
    (*(v142 + 16))(v138, v141, v61);
    sub_1000304B0();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v148 = v147;
      *v67 = 136446723;
      LODWORD(v143) = v66;
      v68 = v61;
      v69 = v136;
      WeatherAlert.id.getter();
      sub_1000306FC(&qword_1000A40A0, 255, &type metadata accessor for UUID);
      v70 = v135;
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      v74 = v69;
      v61 = v68;
      (*(v134 + 8))(v74, v70);
      (*(v63 + 8))(v64, v68);
      v75 = sub_10000D9FC(v71, v73, &v148);

      *(v67 + 4) = v75;
      *(v67 + 12) = 2160;
      *(v67 + 14) = 1752392040;
      *(v67 + 22) = 2081;
      sub_1000383B8();
      v77 = v76;
      v79 = v78;
      sub_100030508();
      v80 = sub_10000D9FC(v77, v79, &v148);

      *(v67 + 24) = v80;
      _os_log_impl(&_mh_execute_header, v65, v143, "Filtering out weather alert that does not apply to subscription; alert=%{public}s, subscription=%{private,mask.hash}s", v67, 0x20u);
      swift_arrayDestroy();

      (*(v140 + 8))(v146, v139);
    }

    else
    {

      sub_100030508();
      (*(v63 + 8))(v64, v61);
      (*(v140 + 8))(v62, v139);
    }

    sub_100006BD4(v144, 1, 1, v61);
    v81 = sub_100003020(&qword_1000A3FF8, &qword_100080F38);
    v82 = *(v81 + 48);
    v83 = *(v81 + 52);
    swift_allocObject();
    return Promise.init(value:)();
  }

  (*(v45 + 32))(v48, v43, v44);
  sub_100037B5C();
  Location.coordinate.getter();
  v50 = v49;
  v52 = v51;
  (*(v36 + 8))(v39, v35);
  v53 = v44;
  if (!GeoJSON.contains(_:)(__PAIR128__(v52, v50)))
  {
    (*(v45 + 8))(v48, v44);
    goto LABEL_8;
  }

  sub_1000304B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v55 = v143;
  v56 = v45;
  if (EnumCaseMultiPayload == 1)
  {
    v57 = v130;
    sub_10002FEA4();
    v58 = v141;
    v59 = sub_1000766F0(v57);
    v60 = v142;
    if ((v59 & 1) == 0)
    {
      v95 = v56;
      v145 = v48;
      v96 = v125;
      static Logger.notifications.getter();
      v97 = v123;
      (*(v60 + 16))(v123, v58, v55);
      sub_1000304B0();
      v98 = Logger.logObject.getter();
      LODWORD(v141) = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v98, v141))
      {
        v99 = swift_slowAlloc();
        v147 = v95;
        v100 = v97;
        v101 = v99;
        v138 = swift_slowAlloc();
        v148 = v138;
        *v101 = 136446723;
        v102 = v55;
        v103 = v136;
        v137 = v98;
        WeatherAlert.id.getter();
        sub_1000306FC(&qword_1000A40A0, 255, &type metadata accessor for UUID);
        v104 = v135;
        v105 = dispatch thunk of CustomStringConvertible.description.getter();
        v146 = v53;
        v107 = v106;
        v108 = v103;
        v55 = v102;
        (*(v134 + 8))(v108, v104);
        (*(v60 + 8))(v100, v102);
        v109 = sub_10000D9FC(v105, v107, &v148);

        *(v101 + 4) = v109;
        *(v101 + 12) = 2160;
        *(v101 + 14) = 1752392040;
        *(v101 + 22) = 2081;
        sub_1000383B8();
        v111 = v110;
        v113 = v112;
        sub_100030508();
        v114 = sub_10000D9FC(v111, v113, &v148);
        v53 = v146;

        *(v101 + 24) = v114;
        v115 = v137;
        _os_log_impl(&_mh_execute_header, v137, v141, "Filtering out weather alert that is not relevant to subscription; alert=%{public}s, subscription=%{private,mask.hash}s", v101, 0x20u);
        swift_arrayDestroy();
        v116 = v145;

        v117 = v147;

        (*(v140 + 8))(v125, v139);
      }

      else
      {

        sub_100030508();
        (*(v60 + 8))(v97, v55);
        (*(v140 + 8))(v96, v139);
        v116 = v145;
        v117 = v95;
      }

      sub_100006BD4(v144, 1, 1, v55);
      v118 = sub_100003020(&qword_1000A3FF8, &qword_100080F38);
      v119 = *(v118 + 48);
      v120 = *(v118 + 52);
      swift_allocObject();
      v84 = Promise.init(value:)();
      sub_100030508();
      (*(v117 + 8))(v116, v53);
      return v84;
    }

    sub_100030508();
  }

  else
  {
    sub_100030508();
    v60 = v142;
  }

  v85 = v137;
  sub_100077D84(v137);
  static Settings.Notifications.Severe.simulateAlertUpdates.getter();
  sub_1000306FC(&qword_1000A3F90, v86, type metadata accessor for SevereNotificationsManager);
  Configurable.setting<A>(_:)();

  if (v148 == 1)
  {
    UUID.init()();
    WeatherAlert.id.setter();
    v87 = v127;
    WeatherAlert.issuedTime.getter();
    sub_10002F8F8(0.0, 1000.0);
    v146 = v44;
    Date.addingTimeInterval(_:)();
    v147 = v56;
    v88 = *(v128 + 8);
    v89 = v129;
    v88(v87, v129);
    WeatherAlert.issuedTime.setter();
    WeatherAlert.expireTime.getter();
    sub_10002F8F8(0.0, 10000.0);
    Date.addingTimeInterval(_:)();
    v90 = v87;
    v85 = v137;
    v88(v90, v89);
    v53 = v146;
    v56 = v147;
    WeatherAlert.expireTime.setter();
  }

  v91 = v144;
  (*(v60 + 16))(v144, v85, v55);
  sub_100006BD4(v91, 0, 1, v55);
  v92 = sub_100003020(&qword_1000A3FF8, &qword_100080F38);
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  swift_allocObject();
  v84 = Promise.init(value:)();
  (*(v60 + 8))(v85, v55);
  (*(v56 + 8))(v48, v53);
  return v84;
}

uint64_t sub_10002138C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100003020(&qword_1000A3E30, &unk_100080CE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v167 = &v132 - v10;
  v166 = type metadata accessor for SevereNotificationEntity();
  v168 = *(v166 - 8);
  v11 = *(v168 + 64);
  __chkstk_darwin(v166);
  v165 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v152 = *(v153 - 8);
  v13 = *(v152 + 64);
  __chkstk_darwin(v153);
  v151 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SevereNotification(0);
  v149 = *(v15 - 8);
  v16 = *(v149 + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = (&v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v17);
  v22 = (&v132 - v21);
  v23 = __chkstk_darwin(v20);
  v148 = &v132 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = (&v132 - v26);
  v150 = v28;
  __chkstk_darwin(v25);
  v157 = (&v132 - v29);
  v30 = sub_100003020(&qword_1000A3808, &qword_100080F70);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v161 = &v132 - v32;
  v156 = type metadata accessor for Expression();
  v155 = *(v156 - 8);
  v33 = *(v155 + 64);
  __chkstk_darwin(v156);
  v154 = &v132 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for UUID();
  v169 = *(v175 - 8);
  v35 = *(v169 + 64);
  __chkstk_darwin(v175);
  v174 = &v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for WeatherAlert();
  v158 = *(v180 - 8);
  v37 = *(v158 + 64);
  v38 = __chkstk_darwin(v180);
  v162 = &v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v173 = &v132 - v40;
  v41 = type metadata accessor for SevereNotificationSubscription();
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v163 = &v132 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for Logger();
  v159 = *(v160 - 8);
  v44 = *(v159 + 64);
  __chkstk_darwin(v160);
  v164 = (&v132 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Settings.Notifications.Severe.filterHandledAlerts.getter();
  v46 = type metadata accessor for SevereNotificationsManager();
  sub_1000306FC(&qword_1000A3F90, v47, type metadata accessor for SevereNotificationsManager);
  v147 = v46;
  Configurable.setting<A>(_:)();

  if (v176 != 1)
  {
    v77 = v172;
    sub_100022724(a2, a3, a4, v19);
    if (!v77)
    {
      v78 = *sub_1000032B8(a1 + 22, a1[25]);
      sub_100032A48();
      a3 = v79;
      sub_100030508();
    }

    return a3;
  }

  v145 = v27;
  v48 = a1[47];
  v49 = ReferenceCountedLazy.increase()();
  v50 = v176;
  __chkstk_darwin(v49);
  *(&v132 - 2) = v50;
  *(&v132 - 1) = a3;
  v51 = v172;
  v52 = sub_100023390(&_swiftEmptySetSingleton, sub_10002BF18, (&v132 - 4), a2);
  v146 = v51;
  if (*(v52 + 16) != 1)
  {

    goto LABEL_16;
  }

  v144 = sub_100015F60(v52);
  v54 = v53;

  if (!v54)
  {
LABEL_16:
    v80 = v22;
    v81 = a2;
    v82 = a3;
    v83 = a4;
    v84 = v146;
LABEL_22:
    sub_100022724(v81, v82, v83, v80);
    if (v84)
    {
      ReferenceCountedLazy.decrease()();

      return a3;
    }

    v102 = *sub_1000032B8(a1 + 22, a1[25]);
    sub_100032A48();
    a3 = v103;
    sub_100030508();
    ReferenceCountedLazy.decrease()();
LABEL_26:

    return a3;
  }

  v139 = a4;
  v141 = a1;
  v55 = v164;
  static Logger.notifications.getter();
  sub_1000304B0();

  v56 = v48;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  v137 = v58;
  v59 = os_log_type_enabled(v57, v58);
  v143 = v56;
  v138 = a2;
  v142 = v50;
  v140 = v54;
  if (v59)
  {
    v135 = v57;
    v136 = a3;
    v60 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v176 = v133;
    *v60 = 136315907;
    *(v60 + 4) = sub_10000D9FC(v144, v54, &v176);
    v134 = v60;
    *(v60 + 12) = 2082;
    v61 = *(a2 + 16);
    if (v61)
    {
      v62 = *(v158 + 16);
      v63 = a2 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
      v170 = *(v158 + 72);
      v171 = v62;
      v169 += 8;
      v172 = (v158 + 16);
      v64 = (v158 + 8);
      v65 = _swiftEmptyArrayStorage;
      do
      {
        v66 = v173;
        v67 = v180;
        v171(v173, v63, v180);
        v68 = v174;
        WeatherAlert.id.getter();
        v69 = UUID.uuidString.getter();
        v71 = v70;
        (*v169)(v68, v175);
        (*v64)(v66, v67);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = v65[2];
          sub_10005B5C4();
          v65 = v75;
        }

        v72 = v65[2];
        if (v72 >= v65[3] >> 1)
        {
          sub_10005B5C4();
          v65 = v76;
        }

        v65[2] = v72 + 1;
        v73 = &v65[2 * v72];
        v73[4] = v69;
        v73[5] = v71;
        v63 += v170;
        --v61;
      }

      while (v61);
    }

    v87 = Array.description.getter();
    v89 = v88;

    v90 = sub_10000D9FC(v87, v89, &v176);

    v91 = v134;
    *(v134 + 14) = v90;
    *(v91 + 22) = 2160;
    *(v91 + 24) = 1752392040;
    *(v91 + 32) = 2081;
    sub_1000383B8();
    v93 = v92;
    v95 = v94;
    sub_100030508();
    v96 = sub_10000D9FC(v93, v95, &v176);

    *(v91 + 34) = v96;
    v97 = v135;
    _os_log_impl(&_mh_execute_header, v135, v137, "Updating existing notification; notificationIdentifier=%s, alerts=%{public}s, subscription=%{private,mask.hash}s", v91, 0x2Au);
    swift_arrayDestroy();

    (*(v159 + 8))(v164, v160);
    a1 = v141;
    a3 = v136;
    v85 = v144;
    v86 = v161;
  }

  else
  {

    sub_100030508();
    (*(v159 + 8))(v55, v160);
    v85 = v144;
    v86 = v161;
    a1 = v141;
  }

  v98 = v146;
  NotificationStore.severeNotifications.getter();
  if (v98)
  {

    v84 = 0;
    v80 = v157;
    v81 = v138;
    v82 = a3;
    v83 = v139;
    goto LABEL_22;
  }

  dispatch thunk of Table.query.getter();

  v178 = &type metadata for String;
  v179 = &protocol witness table for String;
  v176 = v85;
  v177 = v140;

  v99 = v154;
  == infix(_:_:)();
  sub_100006994(&v176);
  v100 = type metadata accessor for OrderBy();
  sub_100006BD4(v86, 1, 1, v100);
  v101 = dispatch thunk of Query.where(_:orderBy:limit:)();
  v136 = a3;
  v175 = v101;

  sub_10000E904(v86, &qword_1000A3808, &qword_100080F70);
  (*(v155 + 8))(v99, v156);
  v105 = swift_allocObject();
  v169 = v105;
  *(v105 + 16) = &_swiftEmptyDictionarySingleton;
  v164 = (v105 + 16);
  v106 = type metadata accessor for JSONDecoder();
  v107 = *(v106 + 48);
  v108 = *(v106 + 52);
  swift_allocObject();
  v109 = JSONDecoder.init()();
  (*(v152 + 104))(v151, enum case for JSONDecoder.DateDecodingStrategy.secondsSince1970(_:), v153);
  v171 = v109;
  dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  result = v175;
  if (!*(v175 + 16))
  {
    v172 = _swiftEmptyArrayStorage;
LABEL_43:

    v126 = v138;

    v176 = sub_100018CB4(v172, v126, v164);

    sub_10002AA18();
    sub_100022724(v176, v136, v139, v145);

    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    v127 = static OS_dispatch_queue.notifications.getter();
    sub_1000304B0();
    v128 = (*(v149 + 80) + 32) & ~*(v149 + 80);
    v129 = swift_allocObject();
    v130 = v140;
    *(v129 + 16) = v144;
    *(v129 + 24) = v130;
    sub_10002FEA4();
    firstly<A, B>(on:disposeOn:closure:)();

    v131 = static OS_dispatch_queue.notifications.getter();

    a3 = Promise.then<A, B>(on:disposeOn:closure:)();

    sub_100030508();

    ReferenceCountedLazy.decrease()();
    goto LABEL_26;
  }

  v110 = *(v175 + 16);
  v111 = 0;
  v112 = v167;
  v174 = (v175 + ((*(v168 + 80) + 32) & ~*(v168 + 80)));
  v173 = (v168 + 16);
  v113 = (v168 + 8);
  v170 = (v158 + 32);
  v172 = _swiftEmptyArrayStorage;
  v114 = v165;
  v115 = v166;
  while (v111 < *(result + 16))
  {
    (*(v168 + 16))(v114, &v174[*(v168 + 72) * v111], v115);
    SevereNotificationEntity.replacementAlert.getter();
    dispatch thunk of Column.value.getter();

    if (v177 == 1)
    {
      SevereNotificationEntity.alert.getter();
      dispatch thunk of Column.value.getter();

      v116 = v177;
      if (v177 >> 60 == 15)
      {
        goto LABEL_45;
      }

      v117 = v176;
      sub_1000306FC(&qword_1000A4048, 255, &type metadata accessor for WeatherAlert);
      v118 = v167;
      v119 = v180;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      (*v113)(v165, v166);
      sub_100006C64(v117, v116);
      sub_100006BD4(v118, 0, 1, v119);
      v120 = *v170;
      (*v170)(v162, v118, v119);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v123 = v172[2];
        sub_10005B794();
        v172 = v124;
      }

      v121 = v172[2];
      v115 = v166;
      if (v121 >= v172[3] >> 1)
      {
        sub_10005B794();
        v172 = v125;
      }

      v122 = v172;
      v172[2] = v121 + 1;
      v120(&v122[((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v121], v162, v119);
      v112 = v167;
      v114 = v165;
    }

    else
    {
      sub_10000E344(v176, v177);
      (*v113)(v114, v115);
      sub_100006BD4(v112, 1, 1, v180);
      sub_10000E904(v112, &qword_1000A3E30, &unk_100080CE0);
    }

    ++v111;
    result = v175;
    if (v110 == v111)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_100022724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v41 = a4;
  v8 = type metadata accessor for Location();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  __chkstk_darwin(v8);
  v44 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003020(&qword_1000A4070, &unk_100080F90);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = (&v36 - v17);
  v19 = type metadata accessor for SevereNotificationContent();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  __chkstk_darwin(v21);
  v22 = *sub_1000032B8((v4 + 136), *(v4 + 160));
  v23 = *(type metadata accessor for SevereMessage() + 28);
  v42 = a3;
  v43 = a2;
  v45 = a1;
  sub_100016658(a1, a2, a3 + v23, v18);
  if (sub_100007374(v18, 1, v19) == 1)
  {
    sub_10000E904(v18, &qword_1000A4070, &unk_100080F90);
    sub_10002F274();
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }

  else
  {
    v38 = type metadata accessor for SevereNotificationContent;
    sub_10002FEA4();
    UUID.init()();
    v26 = UUID.uuidString.getter();
    v36 = v27;
    v37 = v26;
    (*(v39 + 8))(v14, v40);
    v29 = *v42;
    v28 = v42[1];
    sub_1000304B0();

    v30 = v45;

    v31 = v44;
    sub_100037B5C();
    sub_100030508();
    v32 = v41;
    v33 = v36;
    *v41 = v37;
    *(v32 + 1) = v33;
    *(v32 + 2) = v29;
    *(v32 + 3) = v28;
    *(v32 + 4) = v30;
    v34 = type metadata accessor for CloudChannelSevereNotification(0);
    v35 = *(v34 + 28);
    sub_10002FEA4();
    (*(v46 + 32))(&v32[*(v34 + 32)], v31, v47);
    type metadata accessor for SevereNotification(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_100022AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a4;
  v77 = a2;
  v72 = a1;
  v4 = type metadata accessor for SevereNotificationEntity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v68 - v11;
  __chkstk_darwin(v10);
  v14 = &v68 - v13;
  v15 = sub_100003020(&qword_1000A3808, &qword_100080F70);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v81 = &v68 - v17;
  v18 = type metadata accessor for Location();
  v75 = *(v18 - 8);
  v76 = v18;
  v19 = *(v75 + 64);
  __chkstk_darwin(v18);
  v74 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Expression();
  v82 = *(v80 - 1);
  v21 = v82[8];
  v22 = __chkstk_darwin(v80);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v68 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v68 - v29;
  v31 = __chkstk_darwin(v28);
  v73 = &v68 - v32;
  __chkstk_darwin(v31);
  v78 = &v68 - v33;
  v34 = v90;
  NotificationStore.severeNotifications.getter();
  if (v34)
  {
  }

  v68 = v14;
  v69 = v9;
  v83 = v12;
  v70 = v4;
  v90 = 0;
  v71 = dispatch thunk of Table.query.getter();

  v36 = type metadata accessor for Date();
  v88 = v36;
  v89 = &protocol witness table for Date;
  sub_100006D18(&v86);
  Date.init(timeIntervalSinceNow:)();
  >= infix(_:_:)();
  sub_100006994(&v86);
  v37 = WeatherAlert.description.getter();
  v88 = &type metadata for String;
  v89 = &protocol witness table for String;
  v86 = v37;
  v87 = v38;
  == infix(_:_:)();
  sub_100006994(&v86);
  && infix(_:_:)();
  v39 = v82[1];
  v40 = v80;
  v39(v24, v80);
  v39(v27, v40);
  v88 = v36;
  v89 = &protocol witness table for Date;
  sub_100006D18(&v86);
  WeatherAlert.issuedTime.getter();
  >= infix(_:_:)();
  sub_100006994(&v86);
  v41 = v73;
  && infix(_:_:)();
  v39(v27, v40);
  v39(v30, v40);
  v42 = v74;
  sub_100037B5C();
  v43 = Location.id.getter();
  v45 = v44;
  (*(v75 + 8))(v42, v76);
  v88 = &type metadata for String;
  v89 = &protocol witness table for String;
  v86 = v43;
  v87 = v45;
  == infix(_:_:)();
  sub_100006994(&v86);
  v46 = v78;
  && infix(_:_:)();
  v39(v30, v40);
  v39(v41, v40);
  v47 = type metadata accessor for OrderBy();
  v48 = v81;
  sub_100006BD4(v81, 1, 1, v47);
  v49 = v90;
  v50 = dispatch thunk of Query.where(_:orderBy:limit:)();
  if (v49)
  {

    sub_10000E904(v48, &qword_1000A3808, &qword_100080F70);
    return (v39)(v46, v40);
  }

  else
  {
    v79 = 0;
    v82 = v50;

    sub_10000E904(v48, &qword_1000A3808, &qword_100080F70);
    v39(v46, v40);
    result = v82;
    v51 = 0;
    v52 = v82[2];
    v80 = (v5 + 32);
    v81 = v52;
    v90 = _swiftEmptyArrayStorage;
    v53 = v70;
    v54 = v68;
    while (v81 != v51)
    {
      if (v51 >= *(result + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v55 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v56 = *(v5 + 72);
      (*(v5 + 16))(v54, result + v55 + v56 * v51, v53);
      SevereNotificationEntity.replacementAlert.getter();
      dispatch thunk of Column.value.getter();

      if (v87 == 1)
      {
        v78 = *v80;
        (v78)(v69, v54, v53);
        v57 = v90;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000146CC(0, *(v57 + 16) + 1, 1);
          v54 = v68;
          v57 = v84;
        }

        v60 = *(v57 + 16);
        v59 = *(v57 + 24);
        v61 = v60 + 1;
        v62 = v69;
        if (v60 >= v59 >> 1)
        {
          v64 = v60 + 1;
          v90 = v60;
          sub_1000146CC(v59 > 1, v60 + 1, 1);
          v61 = v64;
          v60 = v90;
          v54 = v68;
          v57 = v84;
        }

        ++v51;
        *(v57 + 16) = v61;
        v90 = v57;
        v63 = v57 + v55 + v60 * v56;
        v53 = v70;
        (v78)(v63, v62, v70);
        result = v82;
      }

      else
      {
        sub_10000E344(v86, v87);
        (*(v5 + 8))(v54, v53);
        ++v51;
        result = v82;
      }
    }

    v65 = 0;
    result = v90;
    v66 = v90[2];
    v67 = v83;
    while (v66 != v65)
    {
      if (v65 >= *(result + 16))
      {
        goto LABEL_22;
      }

      (*(v5 + 16))(v67, result + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v65, v53);
      SevereNotificationEntity.notificationIdentifier.getter();
      (*(v5 + 8))(v67, v53);
      dispatch thunk of Column.value.getter();

      if (!v85)
      {
        goto LABEL_23;
      }

      ++v65;
      sub_10002CA88(&v86, v84, v85);

      result = v90;
    }
  }
}

uint64_t sub_100023390(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for WeatherAlert() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

BOOL sub_100023474(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v102 = a3;
  v101 = type metadata accessor for Logger();
  v100 = *(v101 - 8);
  v5 = *(v100 + 64);
  __chkstk_darwin(v101);
  v103 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Date();
  v7 = *(v108 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v108);
  v107 = (&v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v106 = (&v98 - v11);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v118 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v98 - v17;
  v19 = type metadata accessor for WeatherAlert();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v104 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v24 = __chkstk_darwin(v23);
  v26 = &v98 - v25;
  v27 = 0;
  v113 = v28;
  v114 = a2;
  v119 = *(a2 + 16);
  v120 = a1;
  v117 = (v28 + 16);
  v29 = (v13 + 8);
  v105 = (v7 + 8);
  v115 = (v28 + 8);
  v111 = v12;
  v112 = &v98 - v25;
  v99 = v30;
  v116 = v24;
  while (v119 != v27)
  {
    v31 = v114 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
    v32 = *(v113 + 9);
    v121 = v27;
    v109 = *(v113 + 2);
    v109(v26, v31 + v32 * v27, v19);
    WeatherAlert.id.getter();
    v33 = v118;
    WeatherAlert.id.getter();
    v34 = static UUID.== infix(_:_:)();
    v35 = v18;
    v36 = *v29;
    (*v29)(v33, v12);
    v37 = v29;
    v38 = v35;
    v39 = v35;
    v40 = v37;
    v110 = v36;
    v36(v39, v12);
    if (v34)
    {
      (*v115)(v26, v19);
LABEL_18:
      v27 = v121;
      return v119 == v27;
    }

    v41 = WeatherAlert.description.getter();
    v43 = v42;
    if (v41 == WeatherAlert.description.getter() && v43 == v44)
    {

      v26 = v112;
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v26 = v112;
      if ((v46 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v47 = v106;
    WeatherAlert.issuedTime.getter();
    v48 = v107;
    WeatherAlert.expireTime.getter();
    sub_1000306FC(&qword_1000A4058, 255, &type metadata accessor for Date);
    v49 = v108;
    v50 = dispatch thunk of static Comparable.< infix(_:_:)();
    v51 = *v105;
    (*v105)(v48, v49);
    v51(v47, v49);
    if ((v50 & 1) == 0)
    {
      v52 = v103;
      static Logger.notifications.getter();
      v53 = v99;
      v54 = v116;
      v55 = v109;
      v109(v99, v120, v116);
      v55(v104, v26, v54);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      v58 = os_log_type_enabled(v56, v57);
      v98 = v40;
      if (v58)
      {
        v59 = swift_slowAlloc();
        v113 = v59;
        v109 = swift_slowAlloc();
        v122 = v109;
        *v59 = 136446466;
        v60 = v53;
        v61 = v38;
        WeatherAlert.id.getter();
        v62 = UUID.uuidString.getter();
        v64 = v63;
        LODWORD(v108) = v57;
        v65 = v111;
        v110(v38, v111);
        v107 = v56;
        v66 = *v115;
        v114 = v115 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v67 = v60;
        v68 = v116;
        v66(v67, v116);
        v69 = sub_10000D9FC(v62, v64, &v122);

        v70 = v113;
        *(v113 + 1) = v69;
        *(v70 + 6) = 2082;
        v71 = v104;
        WeatherAlert.id.getter();
        v72 = UUID.uuidString.getter();
        v74 = v73;
        v75 = v65;
        v76 = v110;
        v110(v61, v75);
        v77 = v71;
        v78 = v76;
        v117 = v66;
        v66(v77, v68);
        v79 = sub_10000D9FC(v72, v74, &v122);

        v80 = v113;
        *(v113 + 14) = v79;
        v81 = v107;
        _os_log_impl(&_mh_execute_header, v107, v108, "Replacing existing alert: %{public}s with alert: %{public}s", v80, 0x16u);
        swift_arrayDestroy();

        (*(v100 + 8))(v103, v101);
      }

      else
      {

        v82 = v116;
        v83 = *v115;
        v114 = v115 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v83(v104, v116);
        v117 = v83;
        v83(v53, v82);
        (*(v100 + 8))(v52, v101);
        v61 = v38;
        v78 = v110;
      }

      WeatherAlert.id.getter();
      v84 = UUID.uuidString.getter();
      v86 = v85;
      v87 = v111;
      v78(v61, v111);
      v88 = v118;
      v89 = v112;
      WeatherAlert.id.getter();
      v90 = UUID.uuidString.getter();
      v91 = v78;
      v93 = v92;
      v91(v88, v87);
      v94 = v102;
      v95 = *v102;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = *v94;
      sub_10002C2D0(v90, v93, v84, v86, isUniquelyReferenced_nonNull_native);
      *v94 = v122;

      v117(v89, v116);
      goto LABEL_18;
    }

LABEL_12:
    v19 = v116;
    (*v115)(v26, v116);
    v27 = v121 + 1;
    v12 = v111;
    v18 = v38;
    v29 = v40;
  }

  return v119 == v27;
}

uint64_t sub_100023DB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = *a1;
  v26 = a1[1];
  v27 = *(a2 + 376);
  ReferenceCountedLazy.increase()();
  swift_beginAccess();
  v4 = *(a3 + 16);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = *(a3 + 16);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v7; result = )
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (v12 << 10) | (16 * v13);
    v15 = (*(v4 + 48) + v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = (*(v4 + 56) + v14);
    v19 = *v18;
    v20 = v18[1];

    sub_100023F74(v16, v17, v19, v20, v28);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      v21 = sub_100003020(&qword_1000A4020, &qword_100080F50);
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();

      v24 = Promise.init(value:)();
      ReferenceCountedLazy.decrease()();

      return v24;
    }

    v7 = *(v4 + 64 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100023F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a3;
  v40 = a4;
  v41 = a1;
  v42 = a2;
  v6 = sub_100003020(&qword_1000A3808, &qword_100080F70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for Expression();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003020(&qword_1000A4050, &qword_100080F78);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33 - v16;
  v44 = type metadata accessor for SevereNotificationEntity();
  v18 = *(v44 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v44);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v33 - v23;
  NotificationStore.severeNotifications.getter();
  v37 = v18;
  v38 = v10;
  v34 = v22;
  v35 = v24;
  v36 = a5;
  dispatch thunk of Table.query.getter();

  v45[3] = &type metadata for String;
  v45[4] = &protocol witness table for String;
  v45[0] = v41;
  v45[1] = v42;

  == infix(_:_:)();
  sub_100006994(v45);
  v25 = type metadata accessor for OrderBy();
  sub_100006BD4(v9, 1, 1, v25);
  dispatch thunk of Query.first(_:orderBy:)();

  sub_10000E904(v9, &qword_1000A3808, &qword_100080F70);
  (*(v43 + 8))(v13, v38);
  v27 = v44;
  v28 = sub_100007374(v17, 1, v44);
  if (v28 == 1)
  {
    return sub_10000E904(v17, &qword_1000A4050, &qword_100080F78);
  }

  v29 = v37;
  v30 = v35;
  (*(v37 + 32))(v35, v17, v27);
  NotificationStore.severeNotifications.getter();
  dispatch thunk of Table.save.getter();

  v31 = v34;
  SevereNotificationEntity.markAsReplaced(by:)();
  dispatch thunk of Save.entity(_:)();

  v32 = *(v29 + 8);
  v32(v31, v27);
  return (v32)(v30, v27);
}

uint64_t sub_1000243C8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for NotificationSubscription.Kind();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v7;
  v2[9] = v6;

  return _swift_task_switch(sub_1000244EC, v7, v6);
}

uint64_t sub_1000244EC()
{
  sub_100030C58();
  v1 = v0[6];
  v2 = v0[3];
  v3 = v2[30];
  v4 = v2[31];
  sub_1000032B8(v2 + 27, v3);
  static NotificationSubscription.Kind.severe.getter();
  v5 = async function pointer to dispatch thunk of NotificationSubscriptionManagerType.subscriptions(of:)[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1000245B8;
  v7 = v0[6];

  return dispatch thunk of NotificationSubscriptionManagerType.subscriptions(of:)(v7, v3, v4);
}

uint64_t sub_1000245B8()
{
  sub_100030E20();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_10000FA6C();
  *v6 = v5;
  v7 = v4[10];
  *v6 = *v1;
  v5[11] = v0;

  v8 = v4[6];
  v9 = v4[5];
  v10 = v4[4];
  if (v0)
  {
    (*(v9 + 8))(v8, v10);
    v11 = v5[8];
    v12 = v5[9];
    v13 = sub_1000247AC;
  }

  else
  {
    v5[12] = v3;
    (*(v9 + 8))(v8, v10);
    v11 = v5[8];
    v12 = v5[9];
    v13 = sub_100024734;
  }

  return _swift_task_switch(v13, v11, v12);
}

uint64_t sub_100024734()
{
  sub_100030C58();
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[2];

  *v4 = v1;

  sub_100030C70();

  return v5();
}

uint64_t sub_1000247AC()
{
  sub_100030C4C();
  v2 = v0[6];
  v1 = v0[7];

  sub_100030C70();
  v4 = v0[11];

  return v3();
}

uint64_t sub_100024810()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  *v6 = static OS_dispatch_queue.notifications.getter();
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (*(v1 + 496) == 1)
    {
      v9 = *(v1 + 288);
      sub_1000032B8((v1 + 256), *(v1 + 280));
      sub_1000306FC(&qword_1000A4170, v10, type metadata accessor for SevereNotificationsManager);
      result = dispatch thunk of LocationManagerType.removeObserver(_:)();
      *(v1 + 496) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000249A0()
{
  sub_100006994((v0 + 16));
  sub_100006994((v0 + 56));
  sub_100006994((v0 + 96));
  sub_100006994((v0 + 136));
  sub_100006994((v0 + 176));
  sub_100006994((v0 + 216));
  sub_100006994((v0 + 256));
  sub_100006994((v0 + 296));
  sub_100006994((v0 + 336));
  v1 = *(v0 + 376);

  v2 = *(v0 + 384);

  v3 = *(v0 + 392);

  sub_100006994((v0 + 400));
  sub_100006994((v0 + 440));

  v4 = *(v0 + 504);

  return v0;
}

uint64_t sub_100024A40()
{
  sub_1000249A0();

  return _swift_deallocClassInstance(v0, 512, 7);
}

void sub_100024A98()
{
  sub_10003119C();
  v1 = type metadata accessor for Logger();
  v2 = sub_100006FBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000E970();
  sub_100030DEC();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    *sub_100030F7C() = 0;
    sub_1000310F0(&_mh_execute_header, v9, v10, "Setting up severe weather notifications");
    sub_10000FA7C();
  }

  v11 = *(v4 + 8);
  v12 = sub_100030E5C();
  v13(v12);
  v14 = sub_1000032B8(v0 + 2, v0[5]);
  sub_10005C2E8(v0, *v14);
  v15 = v0[63];

  Debouncer.execute(_:)();

  sub_100031188();
}

void sub_100024BD4()
{
  sub_10003119C();
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = sub_100006FBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000E970();
  sub_100030DEC();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    *sub_100030F7C() = 0;
    sub_1000310F0(&_mh_execute_header, v10, v11, "Invalidating severe notifications management");
    sub_10000FA7C();
  }

  v12 = *(v5 + 8);
  v13 = sub_100030E5C();
  v14(v13);
  v15 = *(v0 + 504);
  Debouncer.cancel()();
  [*(v1 + 480) cancelAllOperations];
  [*(v1 + 488) cancelAllOperations];
  v16 = objc_allocWithZone(sub_100003020(&qword_1000A4120, &unk_1000810A0));

  v17 = AsyncBlockOperation.init(_:)();
  sub_100003020(&qword_1000A37D0, &qword_100080838);
  v18 = v17;
  Promise.__allocating_init(_:scheduleOn:)();

  sub_100031188();
}

uint64_t sub_100024D78(uint64_t *a1)
{
  v1 = *a1;
  sub_100024810();
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v2 = static OS_dispatch_queue.notifications.getter();
  firstly<A, B>(on:disposeOn:closure:)();

  v3 = static OS_dispatch_queue.notifications.getter();
  v4 = Promise.then<A, B>(on:disposeOn:closure:)();

  return v4;
}

void sub_100024EF0(uint64_t a1)
{
  sub_100030944(0, &qword_1000A4188, NSOperationQueue_ptr);
  v2 = static NSOperationQueue.notifications.getter();
  [v2 addOperation:a1];
}

void sub_100024F60()
{
  sub_100030E38();
  v1 = v0;
  v3 = v2;
  v4 = sub_100003020(&unk_1000A3930, &qword_100080900);
  sub_100006FF0(v4);
  v6 = *(v5 + 64);
  sub_100018920();
  __chkstk_darwin(v7);
  sub_100031010();
  v8 = type metadata accessor for Logger();
  v9 = sub_100006FBC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10000E970();
  sub_100030DEC();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_100030F7C();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Requested cloud channel subscription validation", v16, 2u);
    sub_10000FA7C();
  }

  (*(v11 + 8))(v0, v8);
  v17 = *(v0 + 384);
  ReferenceCountedLazy.increase()();
  NotificationEnablementTracker.trackEnablement()();
  ReferenceCountedLazy.decrease()();
  type metadata accessor for TaskPriority();
  sub_100030DE0();
  sub_100006BD4(v18, v19, v20, v21);
  v22 = swift_allocObject();
  swift_weakInit();

  v23 = static NotificationsActor.shared.getter();
  sub_100030B44();
  v26 = sub_1000306FC(v24, 255, v25);
  sub_100030E74();
  v27 = swift_allocObject();
  v27[2] = v23;
  v27[3] = v26;
  v27[4] = v22;

  sub_100030EC0();
  sub_10006CAAC();

  sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
  v28 = sub_10006D068();
  sub_100030E74();
  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = v3;
  v29[4] = v28;
  v30 = objc_allocWithZone(sub_100003020(&qword_1000A4120, &unk_1000810A0));

  v31 = v28;

  v32 = AsyncBlockOperation.init(_:)();
  sub_100003020(&qword_1000A37D0, &qword_100080838);
  v33 = v32;
  Promise.__allocating_init(_:scheduleOn:)();

  sub_100030E08();
}

uint64_t sub_100025294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v4[7] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_10002535C, v6, v5);
}

uint64_t sub_10002535C()
{
  sub_100030C4C();
  sub_100030F3C();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_100025430;

    return sub_10001973C();
  }

  else
  {
    v4 = v0[7];

    sub_100030C20();

    return v5();
  }
}

uint64_t sub_100025430()
{
  sub_100030C58();
  sub_100030E50();
  v2 = v0[11];
  v3 = v0[10];
  v4 = *v1;
  sub_10000FA6C();
  *v5 = v4;

  sub_100030E68();
  v7 = *(v6 + 72);
  v8 = v0[8];

  return _swift_task_switch(sub_100030B24, v8, v7);
}

uint64_t sub_100025560(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v5 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A4128, &qword_1000810B0);
  type metadata accessor for SevereNotificationsManager();
  firstly<A, B>(on:disposeOn:closure:)();

  v6 = static OS_dispatch_queue.notifications.getter();
  type metadata accessor for NotificationSubscription();
  sub_100006CD0(&qword_1000A4130, &qword_1000A4128, &qword_1000810B0);

  Promise<A>.compactMap<A>(on:closure:)();

  v7 = static OS_dispatch_queue.notifications.getter();
  *(swift_allocObject() + 16) = a2;

  sub_100003020(&qword_1000A4138, &qword_1000810B8);
  Promise.then<A, B>(on:disposeOn:closure:)();

  v8 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A4140, &qword_1000810C0);
  Promise.then<A, B>(on:disposeOn:closure:)();

  v9 = static OS_dispatch_queue.notifications.getter();
  Promise.then<A, B>(on:disposeOn:closure:)();

  v10 = zalgo.getter();
  Promise.error(on:closure:)();

  *(swift_allocObject() + 16) = a3;
  v11 = a3;
  v12 = zalgo.getter();
  v13 = Promise.always(on:closure:)();

  return v13;
}

uint64_t sub_100025890()
{
  sub_100003020(&qword_1000A40E0, &qword_100081000);

  return Promise.__allocating_init<A>(task:)();
}

uint64_t sub_1000258F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a1;
  v5 = type metadata accessor for NotificationSubscription();
  v86 = *(v5 - 8);
  v6 = *(v86 + 64);
  v7 = __chkstk_darwin(v5);
  v85 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v79 = &v71 - v9;
  v10 = type metadata accessor for Logger();
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = *(v80 + 64);
  __chkstk_darwin(v10);
  v83 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Location();
  v14 = *(v13 - 8);
  v89 = v13;
  v90 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v88 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NotificationSubscription.Location();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v87 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v71 - v22;
  v24 = a2[46];
  sub_1000032B8(a2 + 42, a2[45]);
  if ((dispatch thunk of NotificationAuthorizationStatusProviderType.hasNotificationAuthorization()() & 1) == 0)
  {
    v37 = a3;
    v38 = 1;
    v39 = v5;
    return sub_100006BD4(v37, v38, 1, v39);
  }

  v82 = a3;
  v84 = v5;
  v25 = v91;
  NotificationSubscription.location.getter();
  v26 = NotificationSubscription.Location.id.getter();
  v28 = v27;
  v31 = *(v18 + 8);
  v29 = v18 + 8;
  v30 = v31;
  v31(v23, v17);
  if (v26 == static Location.currentLocationID.getter() && v28 == v32)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      v35 = v82;
      v36 = v84;
      (*(v86 + 16))(v82, v25, v84);
      v37 = v35;
      v38 = 0;
      v39 = v36;
      return sub_100006BD4(v37, v38, 1, v39);
    }
  }

  v40 = a2[36];
  sub_1000032B8(a2 + 32, a2[35]);
  if (dispatch thunk of LocationManagerType.authorizationState.getter() == 3)
  {
    v41 = v87;
    NotificationSubscription.location.getter();
    v42 = v88;
    NotificationSubscription.Location.locationOverride.getter();
    v78 = v29;
    v30(v41, v17);
    LOBYTE(v41) = Location.isNotificationSubscriptionCurrentLocationPlaceholder.getter();
    v43 = v90 + 8;
    v44 = *(v90 + 8);
    v44(v42, v89);
    v45 = v84;
    v37 = v82;
    if (v41)
    {
      v38 = 1;
    }

    else
    {
      v74 = v44;
      v77 = v17;
      v90 = v43;
      v46 = v83;
      static Logger.notifications.getter();
      v47 = v86;
      v48 = v86 + 16;
      v49 = *(v86 + 16);
      v50 = v79;
      v49(v79, v25, v45);
      v75 = v49;
      v76 = v48;
      v49(v85, v25, v45);
      v51 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v73))
      {
        v52 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v92[0] = v72;
        *v52 = 141558787;
        *(v52 + 4) = 1752392040;
        *(v52 + 12) = 2081;
        v53 = v87;
        NotificationSubscription.location.getter();
        v54 = v88;
        NotificationSubscription.Location.location.getter();
        v30(v53, v77);
        Location.coordinate.getter();
        v55 = v50;
        v74(v54, v89);
        v56 = Double.description.getter();
        v71 = v51;
        v57 = v56;
        v59 = v58;
        v60 = *(v47 + 8);
        v60(v55, v84);
        v61 = sub_10000D9FC(v57, v59, v92);

        *(v52 + 14) = v61;
        *(v52 + 22) = 2160;
        *(v52 + 24) = 1752392040;
        *(v52 + 32) = 2081;
        v62 = v85;
        NotificationSubscription.location.getter();
        NotificationSubscription.Location.location.getter();
        v30(v53, v77);
        Location.coordinate.getter();
        v74(v54, v89);
        v63 = Double.description.getter();
        v65 = v64;
        v60(v62, v84);
        v66 = sub_10000D9FC(v63, v65, v92);

        *(v52 + 34) = v66;
        v67 = v71;
        _os_log_impl(&_mh_execute_header, v71, v73, "Validate channel subscription with coordinate: %{private,mask.hash}s %{private,mask.hash}s", v52, 0x2Au);
        swift_arrayDestroy();

        v68 = v82;
        v45 = v84;

        (*(v80 + 8))(v83, v81);
      }

      else
      {

        v69 = *(v47 + 8);
        v69(v85, v45);
        v69(v50, v45);
        (*(v80 + 8))(v46, v81);
        v68 = v82;
      }

      v75(v68, v91, v45);
      v37 = v68;
      v38 = 0;
    }

    v39 = v45;
  }

  else
  {
    v37 = v82;
    v38 = 1;
    v39 = v84;
  }

  return sub_100006BD4(v37, v38, 1, v39);
}

uint64_t sub_100026070(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v41 = type metadata accessor for NotificationSubscription();
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v41);
  v40 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SevereNotificationSubscription();
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v12 = *a1;
  v13 = *(*a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v33 = a3;
    v34 = a2;
    v35 = v3;
    v42 = _swiftEmptyArrayStorage;
    sub_100014724(0, v13, 0);
    v14 = v42;
    v15 = v7 + 16;
    v16 = *(v7 + 16);
    v17 = v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v36 = *(v7 + 72);
    v37 = v16;
    v18 = (v7 + 8);
    do
    {
      v19 = v40;
      v20 = v41;
      v21 = v15;
      v37(v40, v17, v41);
      NotificationSubscription.location.getter();
      (*v18)(v19, v20);
      swift_storeEnumTagMultiPayload();
      v42 = v14;
      v23 = v14[2];
      v22 = v14[3];
      if (v23 >= v22 >> 1)
      {
        sub_100014724(v22 > 1, v23 + 1, 1);
        v14 = v42;
      }

      v14[2] = v23 + 1;
      v24 = v14 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
      v25 = *(v38 + 72);
      sub_10002FEA4();
      v17 += v36;
      --v13;
      v15 = v21;
    }

    while (v13);
    a2 = v34;
    a3 = v33;
  }

  v42 = v14;
  v26 = sub_100003020(&qword_1000A40E8, &qword_100081018);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  Promise.init(value:)();
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  *(v29 + 24) = a3;

  Promise.__allocating_init<A>(task:)();
  v30 = combine<A, B>(_:_:)();

  return v30;
}

uint64_t sub_1000263A8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v7 = *a1;

  sub_10002AA18();
  v4 = *sub_1000032B8((a2 + 56), *(a2 + 80));
  v5 = sub_10005DF58(v7);

  return v5;
}

void sub_100026454(uint64_t *a1, uint64_t a2)
{
  v64 = a2;
  v3 = type metadata accessor for CloudChannelSubscription();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v69 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v57 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  static Logger.notifications.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v65 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v67 = v16;
    v68 = v14;
    v59 = v11;
    v61 = v10;
    v18 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v72 = v57;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    v58 = v18;
    *(v18 + 12) = 2081;
    v19 = *(v15 + 16);
    v62 = v3;
    v63 = v4;
    v60 = v15;
    if (v19)
    {
      v20 = &v9[*(v3 + 20)];
      v21 = v4;
      v22 = v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v66 = *(v21 + 72);
      v23 = _swiftEmptyArrayStorage;
      do
      {
        sub_1000304B0();
        v70 = Location.id.getter();
        v71 = v24;
        v25._countAndFlagsBits = 58;
        v25._object = 0xE100000000000000;
        String.append(_:)(v25);
        if (v20[1])
        {
          v26 = *v20;
          v27 = v20[1];
        }

        else
        {
          v27 = 0xE400000000000000;
          v26 = 1701736270;
        }

        v28._countAndFlagsBits = v26;
        v28._object = v27;
        String.append(_:)(v28);

        v29 = v70;
        v30 = v71;
        sub_100030508();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = v23[2];
          sub_10005B5C4();
          v23 = v36;
        }

        v31 = v23[2];
        if (v31 >= v23[3] >> 1)
        {
          sub_10005B5C4();
          v23 = v37;
        }

        v23[2] = v31 + 1;
        v32 = &v23[2 * v31];
        v32[4] = v29;
        v32[5] = v30;
        v33 = v67;
        v22 += v66;
        --v19;
        v34 = v68;
      }

      while (v19);
    }

    else
    {
      v33 = v67;
      v34 = v68;
    }

    v38 = Array.description.getter();
    v40 = v39;

    v41 = sub_10000D9FC(v38, v40, &v72);

    v42 = v58;
    *(v58 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v33, v65, "Validated channel subscriptions: %{private,mask.hash}s", v42, 0x16u);
    sub_100006994(v57);

    (*(v59 + 8))(v34, v61);
    v3 = v62;
    v4 = v63;
    v15 = v60;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v43 = *(v15 + 16);
  if (v43)
  {
    v44 = &v69[*(v3 + 20)];
    v45 = v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v46 = *(v4 + 72);
    v47 = _swiftEmptyArrayStorage;
    do
    {
      sub_1000304B0();
      v49 = *v44;
      v48 = *(v44 + 1);

      sub_100030508();
      if (v48)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = v47[2];
          sub_10005B86C();
          v47 = v53;
        }

        v50 = v47[2];
        if (v50 >= v47[3] >> 1)
        {
          sub_10005B86C();
          v47 = v54;
        }

        v47[2] = v50 + 1;
        v51 = &v47[2 * v50];
        v51[4] = v49;
        v51[5] = v48;
      }

      v45 += v46;
      --v43;
    }

    while (v43);
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
  }

  v55 = v47[2];

  if (!v55)
  {
    v56 = *sub_1000032B8((v64 + 16), *(v64 + 40));
    sub_1000723D8();
  }
}

void sub_1000269B4()
{
  sub_100030E38();
  v2 = v1;
  v3 = type metadata accessor for Logger();
  v4 = sub_100006FBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000E970();
  sub_100030DEC();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    sub_100031128();
    v11 = sub_100030F60();
    v18 = v11;
    *v0 = 136446210;
    swift_errorRetain();
    sub_100003020(&qword_1000A37F0, &unk_100080850);
    v12 = String.init<A>(describing:)();
    v14 = sub_10000D9FC(v12, v13, &v18);

    *(v0 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, v2, v0, 0xCu);
    sub_100006994(v11);
    sub_10000FA7C();
    sub_100030D84();
  }

  v15 = *(v6 + 8);
  v16 = sub_100030F18();
  v17(v16);
  sub_100030E08();
}

uint64_t sub_100026B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for SevereNotificationSubscription();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v10 = sub_100003020(&qword_1000A40F0, &qword_100081030);
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();
  v13 = type metadata accessor for PredictedLocationsFeatureState();
  v3[17] = v13;
  v14 = *(v13 - 8);
  v3[18] = v14;
  v15 = *(v14 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor);
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[22] = v17;
  v3[23] = v16;

  return _swift_task_switch(sub_100026D98, v17, v16);
}

uint64_t sub_100026D98()
{
  sub_100030C58();
  v1 = v0[4];
  v2 = v1[58];
  v3 = v1[59];
  sub_100030DA0(v1 + 55);
  v4 = async function pointer to dispatch thunk of PredictedLocationsFeatureStateManagerType.severeNotificationFeatureState()[1];
  swift_task_alloc();
  sub_100030CD4();
  v0[24] = v5;
  *v5 = v6;
  v5[1] = sub_100026E48;
  v7 = v0[20];

  return dispatch thunk of PredictedLocationsFeatureStateManagerType.severeNotificationFeatureState()(v7, v2, v3);
}

uint64_t sub_100026E48()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *(v0 + 192);
  v3 = *v1;
  sub_10000FA6C();
  *v4 = v3;

  sub_100030E68();
  v6 = *(v5 + 184);
  v7 = *(v0 + 176);

  return _swift_task_switch(sub_100026F54, v7, v6);
}

uint64_t sub_100026F54()
{
  sub_100030E20();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v3 + 104);
  v5 = sub_100031064();
  v6(v5);
  sub_100030F18();
  v7 = static PredictedLocationsFeatureState.== infix(_:_:)();
  v8 = *(v3 + 8);
  v9 = sub_100030CE0();
  v8(v9);
  v10 = sub_100030E5C();
  v8(v10);
  if (v7)
  {
    v11 = swift_task_alloc();
    *(v0 + 200) = v11;
    *v11 = v0;
    v11[1] = sub_100027154;
    v12 = *(v0 + 32);
    v13 = *(v0 + 40);

    return sub_1000276F4(v13, v12);
  }

  else
  {
    v15 = *(v0 + 168);
    v16 = *(v0 + 88);

    static Logger.predictedLocationNotifications.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (sub_100031158(v18))
    {
      *sub_100030F7C() = 0;
      sub_1000310B0(&_mh_execute_header, v19, v20, "Predicted locations notifications were not active when resolving notification subscriptions");
      sub_10000FA7C();
    }

    v22 = *(v0 + 80);
    v21 = *(v0 + 88);
    v23 = *(v0 + 72);

    v24 = sub_100030CAC();
    v25(v24);
    v27 = *(v0 + 152);
    v26 = *(v0 + 160);
    v28 = *(v0 + 128);
    v30 = *(v0 + 96);
    v29 = *(v0 + 104);
    v31 = *(v0 + 88);
    v32 = *(v0 + 64);
    **(v0 + 24) = _swiftEmptyArrayStorage;

    sub_100030C70();

    return v33();
  }
}

uint64_t sub_100027154()
{
  sub_100030C4C();
  sub_100030E50();
  sub_100030C64();
  *v3 = v2;
  v4 = *(v0 + 200);
  v5 = *v1;
  sub_100030C64();
  *v6 = v5;
  *(v8 + 208) = v7;

  sub_100030E68();
  v10 = *(v9 + 184);
  v11 = *(v0 + 176);

  return _swift_task_switch(sub_100027268, v11, v10);
}

uint64_t sub_100027268()
{
  v55 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);

  if (*(v1 + 16))
  {
    *(v0 + 16) = *(v0 + 208);
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 112);
    swift_getKeyPath();
    KeyPathComparator.init<A>(_:order:)();
    sub_100003020(&qword_1000A4100, &unk_100081060);
    sub_100006CD0(&qword_1000A4108, &qword_1000A4100, &unk_100081060);
    sub_100006CD0(&qword_1000A4110, &qword_1000A40F0, &qword_100081030);
    v6 = Sequence.sorted<A>(using:)();
    (*(v4 + 8))(v3, v5);

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = *(v0 + 56);
      v54 = _swiftEmptyArrayStorage;
      sub_100014724(0, v7, 0);
      v9 = _swiftEmptyArrayStorage;
      v10 = type metadata accessor for ResolvedPredictedLocation();
      sub_10000E960(v10);
      v12 = v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v14 = *(v13 + 72);
      do
      {
        v15 = *(v0 + 64);
        v16 = *(v0 + 48);
        sub_1000304B0();
        swift_storeEnumTagMultiPayload();
        v54 = v9;
        v18 = v9[2];
        v17 = v9[3];
        if (v18 >= v17 >> 1)
        {
          sub_100014724(v17 > 1, v18 + 1, 1);
          v9 = v54;
        }

        v19 = *(v0 + 64);
        v9[2] = v18 + 1;
        v20 = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
        v21 = *(v8 + 72);
        sub_100030D4C();
        sub_10002FEA4();
        v12 += v14;
        --v7;
      }

      while (v7);
    }

    else
    {

      v9 = _swiftEmptyArrayStorage;
    }

    v33 = *(v0 + 104);
    static Logger.predictedLocationNotifications.getter();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 104);
    v39 = *(v0 + 72);
    v38 = *(v0 + 80);
    if (v36)
    {
      v40 = *(v0 + 48);
      sub_100031140();
      v41 = sub_100030F60();
      v54 = v41;
      *v37 = 141558275;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      v42 = Array.description.getter();
      v44 = sub_10000D9FC(v42, v43, &v54);

      *(v37 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v34, v35, "Relevant predicted locations resolved to notification subscriptions; subscriptions=%{private,mask.hash}s", v37, 0x16u);
      sub_100006994(v41);
      sub_10000FA7C();
      sub_100030D84();

      (*(v38 + 8))(v37, v39);
    }

    else
    {

      (*(v38 + 8))(v37, v39);
    }
  }

  else
  {
    v22 = *(v0 + 208);
    v23 = *(v0 + 96);

    static Logger.predictedLocationNotifications.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (sub_100031158(v25))
    {
      *sub_100030F7C() = 0;
      sub_1000310B0(&_mh_execute_header, v26, v27, "No relevant predicted locations found when resolving notification subscriptions");
      sub_10000FA7C();
    }

    v28 = *(v0 + 96);
    v29 = *(v0 + 72);
    v30 = *(v0 + 80);

    v31 = sub_100030CAC();
    v32(v31);
    v9 = _swiftEmptyArrayStorage;
  }

  v46 = *(v0 + 152);
  v45 = *(v0 + 160);
  v47 = *(v0 + 128);
  v49 = *(v0 + 96);
  v48 = *(v0 + 104);
  v50 = *(v0 + 88);
  v51 = *(v0 + 64);
  **(v0 + 24) = v9;

  sub_100030C70();

  return v52();
}

uint64_t sub_1000276F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1000277BC, v4, v3);
}

uint64_t sub_1000277BC()
{
  sub_100030C4C();
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[4];
    v3 = v0[2];

    v4 = v0[1];

    return v4(v1);
  }

  else
  {
    v6 = *sub_1000032B8((v0[3] + 400), *(v0[3] + 424));
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_1000278A8;

    return sub_100068DE0();
  }
}

uint64_t sub_1000278A8()
{
  sub_100030C4C();
  sub_100030E50();
  sub_100030C64();
  *v3 = v2;
  v4 = *(v0 + 56);
  v5 = *v1;
  sub_100030C64();
  *v6 = v5;
  *(v8 + 64) = v7;

  sub_100030E68();
  v10 = *(v9 + 48);
  v11 = *(v0 + 40);

  return _swift_task_switch(sub_1000279BC, v11, v10);
}

uint64_t sub_1000279BC()
{
  sub_100030C4C();
  v1 = v0[4];

  v2 = v0[8];
  v3 = v0[1];

  return v3(v2);
}

void sub_100027ADC()
{
  sub_100030E38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v144 = *v0;
  v140 = type metadata accessor for SevereMessage();
  v8 = sub_100006FBC(v140);
  v124 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_10000E980();
  v130 = v12;
  __chkstk_darwin(v13);
  sub_100018938();
  v129 = v14;
  v125 = v15;
  __chkstk_darwin(v16);
  sub_100018938();
  v134 = v17;
  v18 = type metadata accessor for Date();
  v19 = sub_100006FBC(v18);
  v136 = v20;
  v137 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_10000E970();
  v138 = (v24 - v23);
  v25 = sub_100003020(&qword_1000A3F88, &qword_100080EE0);
  v26 = sub_100006FF0(v25);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_1000188B0();
  v139 = v29;
  sub_100030F24();
  __chkstk_darwin(v30);
  v32 = &v122 - v31;
  v135 = type metadata accessor for APSMessage();
  v33 = sub_100006FBC(v135);
  v123 = v34;
  v36 = *(v35 + 64);
  __chkstk_darwin(v33);
  sub_10000E980();
  v127 = v37;
  v126 = v38;
  __chkstk_darwin(v39);
  v41 = (&v122 - v40);
  v146 = type metadata accessor for Logger();
  v42 = sub_100006FBC(v146);
  v44 = v43;
  v46 = *(v45 + 64);
  __chkstk_darwin(v42);
  sub_1000188B0();
  v132 = v47;
  sub_100030F24();
  __chkstk_darwin(v48);
  v128 = &v122 - v49;
  sub_100030F24();
  __chkstk_darwin(v50);
  v52 = &v122 - v51;
  static Logger.notifications.getter();
  sub_100030BD0();
  v145 = v7;
  sub_1000304B0();
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  v55 = os_log_type_enabled(v53, v54);
  v142 = v5;
  v143 = v44;
  if (v55)
  {
    v56 = sub_100031128();
    v57 = swift_slowAlloc();
    v148[0] = v57;
    *v56 = 136315138;
    v131 = v32;
    v58 = v3;
    v133 = v1;
    v59 = *v41;
    v60 = v41[1];

    sub_100030B74();
    sub_100030508();
    v61 = v59;
    v3 = v58;
    v32 = v131;
    v62 = sub_10000D9FC(v61, v60, v148);
    v1 = v133;

    *(v56 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v53, v54, "Severe notifications manager received message with identifier: %s", v56, 0xCu);
    sub_100006994(v57);
    sub_10000FA7C();
    sub_10000FA7C();

    v63 = v143;
  }

  else
  {

    sub_100030B74();
    sub_100030508();
    v63 = v44;
  }

  v64 = *(v63 + 8);
  v64(v52, v146);
  v65 = v3;
  v66 = v1[48];
  ReferenceCountedLazy.increase()();
  v141 = v148[0];
  NotificationEnablementTracker.trackEnablement()();
  ReferenceCountedLazy.decrease()();
  static Settings.Notifications.Severe.debugNotifications.getter();
  sub_100030CEC();
  sub_1000306FC(v67, v68, v69);
  Configurable.setting<A>(_:)();

  if (LOBYTE(v148[0]) == 1)
  {
    sub_10001A398(v145);
  }

  v70 = *v145;
  v71 = v145[1];
  v72 = (v145 + v135[7]);
  v73 = *v72;
  v74 = v72[1];
  v75 = *(v145 + v135[6]);
  v76 = v138;
  (*(v136 + 16))(v138, v145 + v135[5], v137);

  v77 = sub_100030E2C();
  sub_100012AB4(v77, v78, v73, v74, v76, v79);
  v80 = v139;
  sub_10002FFD0();
  if (sub_100007374(v80, 1, v140) == 1)
  {
    sub_10000E904(v80, &qword_1000A3F88, &qword_100080EE0);
LABEL_17:
    v100 = v142;
    v101 = v132;
    static Logger.notifications.getter();
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = sub_100030F7C();
      *v104 = 0;
      _os_log_impl(&_mh_execute_header, v102, v103, "Unable to parse APSMessage into a SevereMessage", v104, 2u);
      sub_10000FA7C();
    }

    v105 = (v64)(v101, v146);
    v100(v105);

    sub_10000E904(v32, &qword_1000A3F88, &qword_100080EE0);
    goto LABEL_23;
  }

  sub_100030D1C();
  v81 = v134;
  sub_10002FEA4();
  v82 = v65;
  if (!*(*(v81 + 32) + 16))
  {
    sub_100030BA0();
    sub_100030508();
    goto LABEL_17;
  }

  v83 = v128;
  static Logger.notifications.getter();
  sub_100030D04();
  v84 = v129;
  sub_1000304B0();
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  v87 = os_log_type_enabled(v85, v86);
  v122 = v82;
  v131 = v32;
  v133 = v1;
  if (v87)
  {
    LODWORD(v140) = v86;
    v88 = sub_100031128();
    v89 = swift_slowAlloc();
    v90 = v89;
    v148[0] = v89;
    *v88 = 136446210;
    v91 = *(v84 + 32);
    v92 = *(v91 + 16);
    if (v92)
    {
      v138 = v89;
      v139 = v88;
      v147 = _swiftEmptyArrayStorage;
      sub_100014558(0, v92, 0);
      v93 = v147;
      v94 = (v91 + 40);
      do
      {
        v96 = *(v94 - 1);
        v95 = *v94;
        v147 = v93;
        v97 = v93[2];
        v98 = v93[3];

        if (v97 >= v98 >> 1)
        {
          sub_100014558((v98 > 1), v97 + 1, 1);
          v93 = v147;
        }

        v93[2] = v97 + 1;
        v99 = &v93[2 * v97];
        v99[4] = v96;
        v99[5] = v95;
        v94 += 5;
        --v92;
      }

      while (v92);
      v90 = v138;
      v88 = v139;
    }

    v106 = Array.description.getter();
    v108 = v107;

    sub_100030BA0();
    sub_100030508();
    v109 = sub_10000D9FC(v106, v108, v148);

    *(v88 + 4) = v109;
    _os_log_impl(&_mh_execute_header, v85, v140, "Severe message contains the following events: %{public}s", v88, 0xCu);
    sub_100006994(v90);
    sub_100030D84();
    sub_10000FA7C();

    v64(v128, v146);
  }

  else
  {

    v64(v83, v146);
    sub_100030BA0();
    sub_100030508();
  }

  v146 = sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v110 = static OS_dispatch_queue.notifications.getter();
  sub_100030D04();
  v143 = v111;
  sub_1000304B0();
  v140 = *(v124 + 80);
  v137 = ((v140 + 16) & ~v140) + v125;
  v139 = (v140 + 16) & ~v140;
  swift_allocObject();
  sub_100030D1C();
  v138 = v112;
  sub_10002FEA4();
  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  firstly<A, B>(on:disposeOn:closure:)();

  sub_100030BD0();
  v136 = v113;
  sub_1000304B0();
  v114 = *(v123 + 80);
  swift_allocObject();
  sub_10002FEA4();
  v115 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  sub_1000304B0();
  swift_allocObject();
  sub_10002FEA4();
  v116 = zalgo.getter();
  Promise.error(on:closure:)();

  v117 = static OS_dispatch_queue.notifications.getter();
  sub_1000304B0();
  v118 = (v137 + 7) & 0xFFFFFFFFFFFFFFF8;
  v119 = swift_allocObject();
  sub_10002FEA4();
  v120 = (v119 + v118);
  v121 = v122;
  *v120 = v142;
  v120[1] = v121;

  Promise.always<A>(on:disposeOn:closure:)();

  sub_10000E904(v131, &qword_1000A3F88, &qword_100080EE0);
  sub_100030508();
LABEL_23:
  sub_100030E08();
}

uint64_t sub_10002865C(uint64_t *a1)
{
  v3 = type metadata accessor for APSMessage();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  static Logger.notifications.getter();
  sub_1000304B0();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v8;
    v28 = v16;
    *v15 = 136446466;
    v27 = v1;
    v25 = v7;
    v17 = *v6;
    v18 = v6[1];

    sub_100030508();
    v19 = sub_10000D9FC(v17, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = Array.description.getter();
    v22 = sub_10000D9FC(v20, v21, &v28);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Message with identifier %{public}s resulted in notifications %{public}s", v15, 0x16u);
    swift_arrayDestroy();

    return (*(v26 + 8))(v11, v25);
  }

  else
  {

    sub_100030508();
    return (*(v8 + 8))(v11, v7);
  }
}

void sub_100028938()
{
  sub_100030E38();
  v2 = v1;
  sub_100030ED0();
  v3 = type metadata accessor for APSMessage();
  v4 = sub_100006FF0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000E970();
  v9 = (v8 - v7);
  v10 = type metadata accessor for Logger();
  v11 = sub_100006FBC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000E970();
  sub_100030DEC();
  sub_100030BD0();
  sub_1000304B0();
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v29 = v2;
    v18 = sub_100031140();
    v31 = swift_slowAlloc();
    *v18 = 136446466;
    v30 = v10;
    v20 = *v9;
    v19 = v9[1];

    sub_100030B74();
    sub_100030508();
    v21 = sub_10000D9FC(v20, v19, &v31);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    swift_errorRetain();
    sub_100003020(&qword_1000A37F0, &unk_100080850);
    v22 = String.init<A>(describing:)();
    v24 = sub_10000D9FC(v22, v23, &v31);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, v29, v18, 0x16u);
    swift_arrayDestroy();
    sub_10000FA7C();
    sub_100030D84();

    (*(v13 + 8))(v0, v30);
  }

  else
  {

    sub_100030B74();
    sub_100030508();
    v25 = *(v13 + 8);
    v26 = sub_100030E5C();
    v28(v26, v27);
  }

  sub_100030E08();
}

uint64_t sub_100028B7C(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v19 = a4;
  v20 = a3;
  v5 = type metadata accessor for Expression();
  v18 = *(v5 - 8);
  v6 = *(v18 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = a1[47];
  ReferenceCountedLazy.increase()();
  v13 = *sub_1000032B8(a1 + 22, a1[25]);
  sub_1000356A0();
  v14 = a1[49];
  SevereNotificationsPowerLogger.report()();
  NotificationStore.weatherAlerts.getter();
  dispatch thunk of Table.delete.getter();

  v22 = type metadata accessor for Date();
  v23 = &protocol witness table for Date;
  sub_100006D18(v21);
  Date.init(timeIntervalSinceNow:)();
  <= infix(_:_:)();
  sub_100006994(v21);
  dispatch thunk of Delete.where(_:)();
  (*(v18 + 8))(v11, v5);

  NotificationStore.severeNotifications.getter();
  dispatch thunk of Table.delete.getter();

  v22 = type metadata accessor for Date();
  v23 = &protocol witness table for Date;
  sub_100006D18(v21);
  Date.init(timeIntervalSinceNow:)();
  <= infix(_:_:)();
  sub_100006994(v21);
  dispatch thunk of Delete.where(_:)();
  (*(v18 + 8))(v9, v5);

  v20(v15);
  ReferenceCountedLazy.decrease()();
}

uint64_t sub_100028E74()
{
  sub_100003020(&qword_1000A4178, &qword_100081AD0);
  sub_100030FB0();
  updated = type metadata accessor for LocationManagerUpdateType();
  sub_100006FBC(updated);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100080310;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, enum case for LocationManagerUpdateType.authorization(_:), updated);
  v8(v7 + v4, enum case for LocationManagerUpdateType.currentCLLocation(_:), updated);
  return v6;
}

uint64_t sub_100028F70(uint64_t a1, int a2)
{
  v3 = sub_100003020(&unk_1000A3930, &qword_100080900);
  sub_100006FF0(v3);
  v5 = *(v4 + 64);
  sub_100018920();
  result = __chkstk_darwin(v6);
  if (a2)
  {
    type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    type metadata accessor for Settings.Daemon.Performance();
    static Settings.Daemon.Performance.enableWorkloop.getter();
    SettingReader.read<A>(_:)();

    if (v18 == 1)
    {
      type metadata accessor for TaskPriority();
      sub_100030DE0();
      sub_100006BD4(v8, v9, v10, v11);
      v12 = swift_allocObject();
      swift_weakInit();

      v13 = static NotificationsActor.shared.getter();
      sub_100030B44();
      v16 = sub_1000306FC(v14, 255, v15);
      sub_100030E74();
      v17 = swift_allocObject();
      v17[2] = v13;
      v17[3] = v16;
      v17[4] = v12;

      sub_100030EC0();
      sub_10006CAAC();
    }

    else
    {
      return sub_10002979C();
    }
  }

  return result;
}

uint64_t sub_10002912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v4[7] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1000291F4, v6, v5);
}

uint64_t sub_1000291F4()
{
  sub_100030C4C();
  sub_100030F3C();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1000292C8;

    return sub_100029450();
  }

  else
  {
    v4 = v0[7];

    sub_100030C20();

    return v5();
  }
}

uint64_t sub_1000292C8()
{
  sub_100030C58();
  sub_100030E50();
  v2 = v0[11];
  v3 = v0[10];
  v4 = *v1;
  sub_10000FA6C();
  *v5 = v4;

  sub_100030E68();
  v7 = *(v6 + 72);
  v8 = v0[8];

  return _swift_task_switch(sub_1000293F8, v8, v7);
}

uint64_t sub_1000293F8()
{
  sub_100030C4C();
  v1 = *(v0 + 56);

  sub_100030C20();

  return v2();
}

uint64_t sub_100029450()
{
  v1[2] = v0;
  v2 = *(*(sub_100003020(&qword_1000A3FA8, &qword_100080F00) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for NotificationSubscription();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v7;
  v1[9] = v6;

  return _swift_task_switch(sub_1000295AC, v7, v6);
}

uint64_t sub_1000295AC()
{
  sub_100030E20();
  v1 = v0[2];
  v2 = v1[30];
  v3 = v1[31];
  sub_100030DA0(v1 + 27);
  static Location.currentLocationID.getter();
  v0[10] = v4;
  v5 = async function pointer to dispatch thunk of NotificationSubscriptionManagerType.subscription(with:)[1];
  swift_task_alloc();
  sub_100030CD4();
  v0[11] = v6;
  *v6 = v7;
  v6[1] = sub_10002966C;
  v8 = v0[3];
  sub_100030CBC();

  return dispatch thunk of NotificationSubscriptionManagerType.subscription(with:)();
}

uint64_t sub_10002966C()
{
  sub_100030C58();
  sub_100030FBC();
  v3 = v1;
  sub_10000FA6C();
  *v4 = v1;
  v5 = *(v1 + 88);
  *v4 = *v2;

  sub_100031030();
  v7 = *(v6 + 80);
  if (v0)
  {

    v8 = *(v3 + 64);
    v9 = *(v3 + 72);
    v10 = sub_100030B1C;
  }

  else
  {
    v11 = *(v6 + 80);

    v8 = *(v3 + 64);
    v9 = *(v3 + 72);
    v10 = sub_100030B20;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_10002979C()
{
  sub_100030F30();
  v1 = sub_100003020(&unk_1000A3930, &qword_100080900);
  sub_100006FF0(v1);
  v3 = *(v2 + 64);
  sub_100018920();
  __chkstk_darwin(v4);
  sub_100031010();
  type metadata accessor for TaskPriority();
  sub_100030DE0();
  sub_100006BD4(v5, v6, v7, v8);

  v9 = static NotificationsActor.shared.getter();
  sub_100030B44();
  v12 = sub_1000306FC(v10, 255, v11);
  sub_100030E74();
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v12;
  v13[4] = v0;
  sub_10006C7F8();
}

uint64_t sub_10002988C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_100003020(&qword_1000A3FA8, &qword_100080F00) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = type metadata accessor for NotificationSubscription();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v10;
  v4[9] = v9;

  return _swift_task_switch(sub_1000299E8, v10, v9);
}

uint64_t sub_1000299E8()
{
  sub_100030E20();
  v1 = v0[2];
  v2 = v1[30];
  v3 = v1[31];
  sub_100030DA0(v1 + 27);
  static Location.currentLocationID.getter();
  v0[10] = v4;
  v5 = async function pointer to dispatch thunk of NotificationSubscriptionManagerType.subscription(with:)[1];
  swift_task_alloc();
  sub_100030CD4();
  v0[11] = v6;
  *v6 = v7;
  v6[1] = sub_100029AA8;
  v8 = v0[3];
  sub_100030CBC();

  return dispatch thunk of NotificationSubscriptionManagerType.subscription(with:)();
}

uint64_t sub_100029AA8()
{
  sub_100030C58();
  sub_100030FBC();
  v3 = v1;
  sub_10000FA6C();
  *v4 = v1;
  v5 = *(v1 + 88);
  *v4 = *v2;

  sub_100031030();
  v7 = *(v6 + 80);
  if (v0)
  {

    v8 = *(v3 + 64);
    v9 = *(v3 + 72);
    v10 = sub_100029CC0;
  }

  else
  {
    v11 = *(v6 + 80);

    v8 = *(v3 + 64);
    v9 = *(v3 + 72);
    v10 = sub_100029BD8;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_100029BD8()
{
  sub_100030C58();
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];

  if (sub_100007374(v2, 1, v3) == 1)
  {
    sub_10000E904(v0[3], &qword_1000A3FA8, &qword_100080F00);
  }

  else
  {
    v4 = v0[6];
    v5 = v0[3];
    v6 = v0[4];
    v7 = v0[2];
    v8 = *(v0[5] + 32);
    v9 = sub_100031064();
    v10(v9);
    sub_100029D58();
    v11 = sub_100030CAC();
    v12(v11);
  }

  v13 = v0[6];
  v14 = v0[3];

  sub_100030C70();

  return v15();
}

uint64_t sub_100029CC0()
{
  sub_100030C4C();
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];

  sub_100030DE0();
  sub_100006BD4(v4, v5, v6, v3);
  sub_10000E904(v0[3], &qword_1000A3FA8, &qword_100080F00);
  v7 = v0[6];
  v8 = v0[3];

  sub_100030C70();

  return v9();
}

uint64_t sub_100029D58()
{
  result = NotificationSubscription.severeEnabled.getter();
  if (result)
  {
    v2 = *(v0 + 504);

    Debouncer.execute(_:)();
  }

  return result;
}

uint64_t sub_100029DCC()
{
  sub_100024F60();
}

void sub_100029E04(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_100003020(&unk_1000A3930, &qword_100080900);
  sub_100006FF0(v5);
  v7 = *(v6 + 64);
  sub_100018920();
  __chkstk_darwin(v8);
  sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
  v9 = sub_10006D068();
  type metadata accessor for TaskPriority();
  sub_100030DE0();
  sub_100006BD4(v10, v11, v12, v13);
  v14 = a2;

  v15 = v9;
  v16 = static NotificationsActor.shared.getter();
  sub_100030B44();
  v19 = sub_1000306FC(v17, 255, v18);
  v20 = swift_allocObject();
  v20[2] = v16;
  v20[3] = v19;
  v20[4] = v14;
  v20[5] = v3;
  v20[6] = v15;
  sub_100030EC0();
  sub_10006C7F8();
}

uint64_t sub_100029F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = *(*(sub_100003020(&qword_1000A4118, &unk_100081080) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v11 = type metadata accessor for NotificationSubscription.Location();
  v6[10] = v11;
  v12 = *(v11 - 8);
  v6[11] = v12;
  v13 = *(v12 + 64) + 15;
  v6[12] = swift_task_alloc();
  v14 = *(*(sub_100003020(&qword_1000A3800, &unk_100080860) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v15 = *(*(type metadata accessor for TimeZone() - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v16 = type metadata accessor for Location();
  v6[15] = v16;
  v17 = *(v16 - 8);
  v6[16] = v17;
  v18 = *(v17 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor);
  v20 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[20] = v20;
  v6[21] = v19;

  return _swift_task_switch(sub_10002A1F0, v20, v19);
}

uint64_t sub_10002A1F0()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v22 = v0[17];
  v23 = v0[12];
  v21 = v0[9];
  v7 = v0[3];
  v6 = v0[4];
  static Location.currentLocationID.getter();
  static TimeZone.current.getter();
  [v7 coordinate];
  type metadata accessor for Date();
  sub_100030DE0();
  sub_100006BD4(v8, v9, v10, v11);
  Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
  v12 = v6[30];
  v13 = v6[31];
  sub_1000032B8(v6 + 27, v12);
  (*(v2 + 16))(v22, v1, v3);
  sub_100030DE0();
  sub_100006BD4(v14, v15, v16, v3);
  sub_100030E2C();
  NotificationSubscription.Location.init(location:locationOverride:)();
  v17 = async function pointer to dispatch thunk of NotificationSubscriptionManagerType.updateSubscription(for:)[1];
  v18 = swift_task_alloc();
  v0[22] = v18;
  *v18 = v0;
  v18[1] = sub_10002A3B0;
  v19 = v0[12];

  return dispatch thunk of NotificationSubscriptionManagerType.updateSubscription(for:)(v19, v12, v13);
}

uint64_t sub_10002A3B0()
{
  sub_100030E20();
  sub_100030FBC();
  sub_100030C64();
  *v4 = v3;
  v5 = v1[22];
  v6 = v1[12];
  v7 = v1[11];
  v8 = v1[10];
  *v4 = *v2;
  *(v3 + 184) = v0;

  (*(v7 + 8))(v6, v8);
  sub_100031030();
  v10 = *(v9 + 168);
  v11 = v1[20];
  if (v0)
  {
    v12 = sub_10002A64C;
  }

  else
  {
    v12 = sub_10002A538;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_10002A538()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[4];
  v6 = v0[5];

  v7 = *(v5 + 504);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;

  v9 = v6;
  Debouncer.execute(_:)();

  v10 = *(v4 + 8);
  v11 = sub_100030CE0();
  v12(v11);
  sub_1000310D0();

  sub_100030C70();

  return v13();
}

uint64_t sub_10002A64C()
{
  v30 = v0;
  v2 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[8];

  v8 = *(v6 + 8);
  v9 = sub_100030E5C();
  v10(v9);
  static Logger.notifications.getter();
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[23];
    v14 = v0[7];
    v28 = v0[8];
    v15 = v0[6];
    sub_100031128();
    v16 = sub_100030F60();
    v29 = v16;
    *v1 = 136315138;
    v0[2] = v13;
    swift_errorRetain();
    sub_100003020(&qword_1000A37F0, &unk_100080850);
    v17 = String.init<A>(describing:)();
    v19 = sub_10000D9FC(v17, v18, &v29);

    *(v1 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to update current location subscription with error: %s", v1, 0xCu);
    sub_100006994(v16);
    sub_10000FA7C();
    sub_100030D84();

    (*(v14 + 8))(v28, v15);
  }

  else
  {
    v20 = v0[23];
    v22 = v0[7];
    v21 = v0[8];
    v23 = v0[6];

    v24 = sub_100030CAC();
    v25(v24);
  }

  sub_1000310D0();

  sub_100030C70();

  return v26();
}

uint64_t sub_10002A8CC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10002C740(result, 1, sub_10005B770);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_100003020(&qword_1000A3FE8, &qword_100080F28);
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_10002AA18()
{
  sub_10003119C();
  v4 = v3;
  v5 = *(v3 + 16);
  v6 = *(*v0 + 16);
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v2;
  sub_10002C740(v6 + v5, 1, v1);
  v8 = *v0;
  if (!*(v4 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v9 = (*(v8 + 24) >> 1) - *(v8 + 16);
  v10 = *(v7(0) - 8);
  if (v9 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v0 = v8;
    sub_100031188();
    return;
  }

  v13 = *(v8 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10002AB24(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002AB80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10002AC10()
{
  sub_100030DBC();
  v1 = type metadata accessor for SevereMessage();
  sub_100006FF0(v1);
  return sub_10001ACE0(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
}

uint64_t sub_10002AC78()
{
  sub_100030DCC();
  v0 = type metadata accessor for APSMessage();
  sub_100006FF0(v0);
  v2 = *(v1 + 80);
  sub_100006FAC();
  v3 = sub_100006FFC();
  return sub_10002865C(v3);
}

uint64_t sub_10002ACE4()
{
  v2 = type metadata accessor for SevereMessage();
  sub_100030C0C(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + v8;
  v11 = *(v1 + v8 + 8);

  v12 = *(v10 + 24);

  v13 = *(v10 + 32);

  v14 = *(v0 + 36);
  v15 = type metadata accessor for Date();
  sub_100007050(v15);
  (*(v16 + 8))(v10 + v14);
  v17 = *(v1 + v9 + 8);

  return _swift_deallocObject(v1, v9 + 16, v7 | 7);
}

uint64_t sub_10002ADDC()
{
  sub_100030FB0();
  v2 = type metadata accessor for SevereMessage();
  sub_10000E960(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  sub_100030EE0();
  v11 = v1 + v10;
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_100028B7C(v0, v1 + v9, v12, v13);
}

uint64_t sub_10002AE68()
{
  sub_10003119C();
  v2 = type metadata accessor for SevereNotificationContent();
  sub_100030C0C(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_100031170();
  v7 = *(v1 + 3);

  v8 = *(v1 + 5);

  v9 = *(v1 + 7);

  v10 = *(v1 + 8);

  v11 = *(v0 + 48);
  v12 = type metadata accessor for Date();
  if (!sub_100031110(&v1[v11]))
  {
    sub_100030C40(v12);
    (*(v13 + 8))(&v1[v11], v12);
  }

  sub_100030D74();
  sub_100031188();

  return _swift_deallocObject(v14, v15, v16);
}

void sub_10002AF60()
{
  sub_100030DBC();
  v0 = type metadata accessor for SevereNotificationContent();
  sub_100006FF0(v0);
  v2 = *(v1 + 80);
  sub_100006FAC();
  v3 = sub_100006FFC();
  sub_10001AAE0(v3);
}

uint64_t sub_10002AFB8()
{
  sub_10003119C();
  v2 = type metadata accessor for APSMessage();
  sub_100030C0C(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_100031170();
  v7 = v0[7];
  v8 = type metadata accessor for Date();
  sub_100007050(v8);
  (*(v9 + 8))(v1 + v7);
  v10 = *(v1 + v0[8]);

  v11 = *(v1 + v0[9] + 8);

  sub_100030D74();
  sub_100031188();

  return _swift_deallocObject(v12, v13, v14);
}

void sub_10002B0A0()
{
  sub_100030F30();
  v0 = type metadata accessor for APSMessage();
  sub_100006FF0(v0);
  v2 = *(v1 + 80);
  sub_100006FAC();
  sub_100028938();
}

uint64_t sub_10002B108()
{
  v1 = type metadata accessor for SevereMessage();
  sub_100006FF0(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);

  return sub_10001B090(v4);
}

uint64_t sub_10002B17C()
{
  sub_100030ED0();
  v3 = type metadata accessor for SevereMessage();
  sub_100006FF0(v3);
  return sub_10001B3BC(v2, v1, *(v0 + 16), v0 + ((*(v4 + 80) + 24) & ~*(v4 + 80)));
}

uint64_t sub_10002B1F0()
{
  v2 = type metadata accessor for SevereMessage();
  sub_100030C0C(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_100031170();
  v7 = *(v1 + 24);

  v8 = *(v1 + 32);

  v9 = *(v0 + 36);
  v10 = type metadata accessor for Date();
  sub_100007050(v10);
  (*(v11 + 8))(v1 + v9);
  v12 = sub_100030D74();

  return _swift_deallocObject(v12, v13, v14);
}

uint64_t sub_10002B2C0()
{
  sub_100030ED0();
  v3 = type metadata accessor for SevereMessage();
  sub_100006FF0(v3);
  return sub_10001BEBC(v2, v1, (v0 + ((*(v4 + 80) + 16) & ~*(v4 + 80))));
}

uint64_t sub_10002B330()
{
  v1 = sub_100003020(&qword_1000A3FA8, &qword_100080F00);
  sub_10000E960(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for NotificationSubscription();
  if (!sub_100031110(v0 + v4))
  {
    sub_100030C40(v7);
    (*(v8 + 8))(v0 + v4, v7);
  }

  v9 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9);

  return _swift_deallocObject(v0, v9 + 8, v3 | 7);
}

uint64_t sub_10002B428()
{
  sub_100030F30();
  v3 = sub_100003020(&qword_1000A3FA8, &qword_100080F00);
  sub_10000E960(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  sub_100030EE0();
  v12 = *(v1 + v11);

  return sub_10001D0E4(v2, v0, v1 + v10, v12);
}

uint64_t sub_10002B4CC()
{
  v1 = *(v0 + 24);

  v2 = sub_100030EB0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10002B51C()
{
  v3 = type metadata accessor for SevereMessage();
  sub_100030C0C(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);

  sub_100031170();
  v9 = *(v2 + 24);

  v10 = *(v2 + 32);

  v11 = *(v0 + 36);
  v12 = type metadata accessor for Date();
  sub_100007050(v12);
  (*(v13 + 8))(v2 + v11);
  v14 = sub_100030D74();

  return _swift_deallocObject(v14, v15, v16);
}

uint64_t sub_10002B5F4()
{
  sub_100030F30();
  v1 = type metadata accessor for SevereMessage();
  sub_100006FF0(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = sub_100031064();
  return sub_10001D944(v5, v6, v7);
}

uint64_t sub_10002B680()
{
  v1 = type metadata accessor for SevereNotificationSubscription();
  sub_100030BE8(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SevereMessage();
  sub_100006FBC(v6);
  v8 = *(v7 + 80);
  v29 = *(v9 + 64);
  v10 = *(v0 + 16);

  v11 = *(v0 + 24);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for Location();
    sub_100007050(v12);
    (*(v13 + 8))(v0 + v3);
    v14 = type metadata accessor for ResolvedPredictedLocation();
    v6 = sub_100031090(v14);
    sub_100018904(v6);
    v16 = *(v15 + 8);
    v16(v0 + v3 + v3, v6);
    v17 = sub_100030FE8();
    (v16)(v17);
  }

  else
  {
    v18 = type metadata accessor for NotificationSubscription.Location();
    sub_100007050(v18);
    (*(v19 + 8))(v0 + v3);
  }

  sub_100030EF0();
  v20 = *(v1 + 24);

  v21 = *(v1 + 32);

  v22 = *(v6 + 28);
  v23 = type metadata accessor for Date();
  sub_100007050(v23);
  (*(v24 + 8))(v1 + v22);
  v25 = sub_100030FD4();

  return _swift_deallocObject(v25, v26, v27);
}

uint64_t sub_10002B888()
{
  v1 = type metadata accessor for SevereNotificationSubscription();
  sub_10000E960(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SevereMessage();
  sub_100006FF0(v6);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = v0 + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_10001EBB0(v8, v9, v0 + v3, v10);
}

uint64_t sub_10002B94C()
{
  v1 = *(v0 + 16);

  v2 = sub_100030EA0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10002B998()
{
  sub_100030E38();
  v2 = type metadata accessor for SevereNotificationSubscription();
  sub_100030BE8(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  sub_100030CE0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for Location();
    sub_100007050(v8);
    (*(v9 + 8))(v0 + v4);
    v10 = type metadata accessor for ResolvedPredictedLocation();
    v11 = sub_100030F94(v10);
    sub_100018904(v11);
    v13 = *(v12 + 8);
    v13(v0 + v4 + v1, v11);
    v14 = sub_100030E90();
    (v13)(v14);
  }

  else
  {
    v15 = type metadata accessor for NotificationSubscription.Location();
    sub_100007050(v15);
    (*(v16 + 8))(v0 + v4);
  }

  sub_100030E80();
  sub_100030E08();

  return _swift_deallocObject(v17, v18, v19);
}

uint64_t sub_10002BAE8()
{
  sub_100030DCC();
  v1 = type metadata accessor for SevereNotificationSubscription();
  sub_100006FF0(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  v5 = sub_100006FFC();
  return sub_10001F1E0(v5, v6);
}

uint64_t sub_10002BB6C()
{
  sub_100030DCC();
  v3 = type metadata accessor for SevereNotificationSubscription();
  sub_10000E960(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for SevereMessage();
  sub_100006FF0(v8);
  v10 = v0 + v5;
  v11 = v0 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));
  v12 = *(v0 + 16);
  result = sub_10001F904(*v1, v10, v11);
  *v2 = result;
  return result;
}

uint64_t sub_10002BC54(void (*a1)(void))
{
  v3 = type metadata accessor for SevereNotificationSubscription();
  sub_100030BE8(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for SevereMessage();
  sub_100006FBC(v8);
  v10 = *(v9 + 80);
  v29 = *(v11 + 64);
  a1(*(v1 + 16));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for Location();
    sub_100007050(v12);
    (*(v13 + 8))(v1 + v5);
    v14 = type metadata accessor for ResolvedPredictedLocation();
    v8 = sub_100031090(v14);
    sub_100018904(v8);
    v16 = *(v15 + 8);
    v16(v1 + v5 + v5, v8);
    v17 = sub_100030FE8();
    (v16)(v17);
  }

  else
  {
    v18 = type metadata accessor for NotificationSubscription.Location();
    sub_100007050(v18);
    (*(v19 + 8))(v1 + v5);
  }

  sub_100030EF0();
  v20 = *(v3 + 24);

  v21 = *(v3 + 32);

  v22 = *(v8 + 28);
  v23 = type metadata accessor for Date();
  sub_100007050(v23);
  (*(v24 + 8))(v3 + v22);
  v25 = sub_100030FD4();

  return _swift_deallocObject(v25, v26, v27);
}

uint64_t sub_10002BE5C()
{
  sub_100030DBC();
  v1 = type metadata accessor for SevereNotificationSubscription();
  sub_10000E960(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SevereMessage();
  sub_100006FF0(v6);
  v8 = *(v7 + 80);
  v9 = *(v0 + 16);
  v10 = sub_100006FFC();
  return sub_10002138C(v10, v11, v12, v13);
}

uint64_t sub_10002BF34()
{
  sub_100030E38();
  v2 = type metadata accessor for SevereNotification(0);
  sub_100030BE8(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 24);

  v8 = (v0 + v4);
  sub_100030CE0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v0 + v4 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v8 + 3);

    v12 = *(v8 + 4);

    v13 = type metadata accessor for CloudChannelSevereNotification(0);
    v14 = &v8[*(v13 + 28)];
    v15 = *(v14 + 1);

    v16 = *(v14 + 3);

    v17 = *(v14 + 5);

    v18 = *(v14 + 7);

    v19 = *(v14 + 8);

    v20 = *(type metadata accessor for SevereNotificationContent() + 40);
    v21 = type metadata accessor for Date();
    if (!sub_100031070(v21))
    {
      sub_100030C40(v1);
      (*(v22 + 8))(&v14[v20], v1);
    }

    v23 = (v13 + 32);
  }

  else
  {
    v24 = *(v8 + 2);

    v25 = type metadata accessor for PeriodicSevereNotification(0);
    v26 = &v8[*(v25 + 24)];
    v27 = *(v26 + 1);

    v28 = *(v26 + 3);

    v29 = *(v26 + 5);

    v30 = *(v26 + 7);

    v31 = *(v26 + 8);

    v32 = *(type metadata accessor for SevereNotificationContent() + 40);
    v33 = type metadata accessor for Date();
    if (!sub_100031070(v33))
    {
      sub_100030C40(v1);
      (*(v34 + 8))(&v26[v32], v1);
    }

    v23 = (v25 + 28);
  }

  v35 = *v23;
  v36 = type metadata accessor for Location();
  sub_100007050(v36);
  (*(v37 + 8))(&v8[v35]);
  sub_100030E80();
  sub_100030E08();

  return _swift_deallocObject(v38, v39, v40);
}

_OWORD *sub_10002C1A4()
{
  sub_10003119C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_100074DF4(v6, v4);
  sub_100030FFC(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  sub_100003020(&qword_1000A3E50, &qword_100080CF0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v3 & 1, v10))
  {
    goto LABEL_5;
  }

  v18 = *v1;
  v19 = sub_100074DF4(v7, v5);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v1;
  if (v17)
  {
    sub_100006994((v21[7] + 32 * v16));
    sub_100030E2C();
    sub_100031188();

    return sub_100018804(v22, v23);
  }

  else
  {
    sub_10002C584(v16, v7, v5, v9, v21);
    sub_100031188();
  }
}

uint64_t sub_10002C2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100074DF4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  sub_100003020(&qword_1000A4060, &qword_100080F80);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = sub_100074DF4(a3, a4);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v18);
    v25 = v24[1];
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_10002C5F0(v18, a3, a4, a1, a2, v23);
  }
}

void sub_10002C424()
{
  sub_100030E38();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_100030FB0();
  v7 = type metadata accessor for ResolvedPredictedLocation();
  v8 = sub_100018904(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10000E970();
  v13 = v12 - v11;
  v14 = *v1;
  v15 = sub_100074E6C(v6);
  sub_100030FFC(v15, v16);
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = v17;
  v21 = v18;
  sub_100003020(&qword_1000A4180, &qword_100081120);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v4 & 1, v14))
  {
    goto LABEL_5;
  }

  v22 = *v2;
  v23 = sub_100074E6C(v6);
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v20 = v23;
LABEL_5:
  v25 = *v2;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v20);
    *(v26 + 8 * v20) = v0;
    sub_100030E08();
  }

  else
  {
    sub_1000304B0();
    sub_10002C63C(v20, v13, v0, v25);
    sub_100030E08();
  }
}

_OWORD *sub_10002C584(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100018804(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_10002C5F0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_10002C63C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6];
  v8 = type metadata accessor for ResolvedPredictedLocation();
  sub_100006FF0(v8);
  v10 = *(v9 + 72);
  sub_100030D34();
  result = sub_10002FEA4();
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_10002C6DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100080D40;
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

uint64_t sub_10002C740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_10002C7B8(void *a1, void *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = *v2;
  v10 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10002F9FC(v42, v8);
  v11 = Hasher._finalize()();
  v12 = v9 + 56;
  v13 = -1 << *(v9 + 32);
  v14 = v11 & ~v13;
  v41 = v8;
  if ((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v39 = ~v13;
    v35 = v9;
    v40 = *(v9 + 48);
    v37 = (v8 + 32);
    while (1)
    {
      v15 = (v40 + 40 * v14);
      result = *v15;
      v18 = v15[2];
      v17 = v15[3];
      v19 = v15[4];
      v20 = *v15 == v5 && v15[1] == v4;
      if (v20 || (v21 = v15[1], result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        v22 = v18 == v7 && v17 == v6;
        if (v22 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
          v23 = *(v19 + 16);
          if (v23 == *(v41 + 16))
          {
            break;
          }
        }
      }

LABEL_23:
      v14 = (v14 + 1) & v39;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if (v23)
    {
      v24 = v19 == v41;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
LABEL_25:

      v30 = (*(v35 + 48) + 40 * v14);
      v31 = v30[1];
      v32 = v30[2];
      v33 = v30[3];
      v34 = v30[4];
      *a1 = *v30;
      a1[1] = v31;
      a1[2] = v32;
      a1[3] = v33;
      a1[4] = v34;

      return 0;
    }

    else
    {
      v25 = (v19 + 32);
      v26 = v37;
      while (v23)
      {
        if (*v25 != *v26)
        {
          goto LABEL_23;
        }

        ++v25;
        ++v26;
        if (!--v23)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_24:
    v27 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = *v36;

    sub_10002DDA0(a2, v14, isUniquelyReferenced_nonNull_native);
    *v36 = v42[0];
    v29 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v29;
    a1[4] = a2[4];
    return 1;
  }

  return result;
}

BOOL sub_10002CA88(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_10002DFFC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

void sub_10002CBD4()
{
  sub_100030E38();
  v2 = v1;
  v59 = v3;
  v64 = type metadata accessor for ResolvedPredictedLocation();
  v4 = sub_100018904(v64);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000E970();
  v69 = v8 - v7;
  v68 = type metadata accessor for NotificationSubscription.Location();
  v9 = sub_100006FBC(v68);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10000E970();
  v65 = v15 - v14;
  v16 = sub_100003020(&qword_1000A4148, &qword_1000810C8);
  sub_100018904(v16);
  v18 = *(v17 + 64);
  sub_100018920();
  __chkstk_darwin(v19);
  v21 = &v57 - v20;
  v22 = type metadata accessor for SevereNotificationSubscription();
  v23 = sub_100006FBC(v22);
  v72 = v24;
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v23);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = &v57 - v31;
  v33 = __chkstk_darwin(v30);
  __chkstk_darwin(v33);
  sub_100018938();
  v57 = v34;
  v58 = v0;
  v35 = *v0;
  v36 = *(*v0 + 40);
  Hasher.init(_seed:)();
  v74 = v2;
  sub_10003807C();
  v37 = Hasher._finalize()();
  v38 = -1 << *(v35 + 32);
  v39 = v37 & ~v38;
  v73 = v35 + 56;
  if (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
  {
LABEL_19:
    v52 = v58;
    v53 = *v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100030BB8();
    v55 = v57;
    sub_1000304B0();
    v75 = *v52;
    sub_10002E164(v55, v39, isUniquelyReferenced_nonNull_native);
    *v52 = v75;
    sub_100030D4C();
    sub_10002FEA4();
    goto LABEL_20;
  }

  v71 = ~v38;
  v72 = *(v72 + 72);
  v62 = (v11 + 32);
  v67 = (v11 + 8);
  v63 = v35;
  v61 = v22;
  v60 = v29;
  while (1)
  {
    v40 = *(v35 + 48);
    v70 = v72 * v39;
    sub_1000304B0();
    v41 = *(v16 + 48);
    sub_1000304B0();
    sub_1000304B0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_100030BB8();
    sub_1000304B0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100030B2C();
      sub_100030508();
      (*v67)(v32, v68);
LABEL_13:
      sub_10000E904(v21, &qword_1000A4148, &qword_1000810C8);
      goto LABEL_18;
    }

    v47 = v16;
    v48 = v65;
    v49 = v68;
    (*v62)(v65, &v21[v41], v68);
    v66 = static NotificationSubscription.Location.== infix(_:_:)();
    v50 = *v67;
    v51 = v48;
    v35 = v63;
    (*v67)(v51, v49);
    sub_100030B2C();
    sub_100030508();
    v50(v32, v49);
    if (v66)
    {
      goto LABEL_21;
    }

    sub_100030B2C();
    sub_100030508();
    v16 = v47;
    v29 = v60;
LABEL_18:
    v39 = (v39 + 1) & v71;
    if (((*(v73 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  sub_100030BB8();
  sub_1000304B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v43 = v69;
  if (EnumCaseMultiPayload != 1)
  {
    sub_100030B2C();
    sub_100030508();
    sub_100030B5C();
    sub_100030508();
    goto LABEL_13;
  }

  sub_100030D34();
  sub_10002FEA4();
  if ((static Location.== infix(_:_:)() & 1) == 0 || *&v29[v64[5]] != *(v43 + v64[5]) || (v44 = v64[6], (static Date.== infix(_:_:)() & 1) == 0))
  {
    sub_100030B5C();
    sub_100030508();
    sub_100030B2C();
    sub_100030508();
    goto LABEL_17;
  }

  v45 = v64[7];
  v46 = static Date.== infix(_:_:)();
  sub_100030B5C();
  sub_100030508();
  sub_100030B2C();
  sub_100030508();
  if ((v46 & 1) == 0)
  {
LABEL_17:
    sub_100030B5C();
    sub_100030508();
    sub_100030B2C();
    sub_100030508();
    goto LABEL_18;
  }

  sub_100030B5C();
  sub_100030508();
LABEL_21:
  sub_100030508();
  sub_100030508();
  v56 = *(v35 + 48) + v70;
  sub_1000304B0();
LABEL_20:
  sub_100030E08();
}

uint64_t sub_10002D1D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003020(&qword_1000A40C8, &unk_100080FE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_34:
    v40 = v6;

    *v2 = v40;
    return result;
  }

  v41 = v2;
  v42 = v3;
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
        goto LABEL_36;
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
        v43 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v38 = 1 << *(v3 + 32);
    if (v38 >= 64)
    {
      v39 = v6;
      sub_10002C6DC(0, (v38 + 63) >> 6, v8);
      v6 = v39;
    }

    else
    {
      *v8 = -1 << v38;
    }

    v2 = v41;
    *(v3 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v43 = (v11 - 1) & v11;
LABEL_14:
    v17 = (*(v3 + 48) + 40 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v21 = v17[2];
    v20 = v17[3];
    v22 = v17[4];
    v23 = v6;
    v24 = *(v6 + 40);
    Hasher.init(_seed:)();
    v45 = v19;
    String.hash(into:)();
    v44 = v21;
    String.hash(into:)();
    Hasher._combine(_:)(*(v22 + 16));
    v25 = *(v22 + 16);
    if (v25)
    {
      v26 = (v22 + 32);
      do
      {
        v27 = *v26++;
        v28 = v27;
        if (v27 == 0.0)
        {
          v28 = 0.0;
        }

        Hasher._combine(_:)(*&v28);
        --v25;
      }

      while (v25);
    }

    result = Hasher._finalize()();
    v6 = v23;
    v29 = -1 << *(v23 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v13 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v13 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    *(v13 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v23 + 48) + 40 * v32);
    *v37 = v18;
    v37[1] = v45;
    v37[2] = v44;
    v37[3] = v20;
    v37[4] = v22;
    ++*(v23 + 16);
    v3 = v42;
    v11 = v43;
    if (!v43)
    {
      goto LABEL_9;
    }
  }

  v33 = 0;
  v34 = (63 - v29) >> 6;
  while (++v31 != v34 || (v33 & 1) == 0)
  {
    v35 = v31 == v34;
    if (v31 == v34)
    {
      v31 = 0;
    }

    v33 |= v35;
    v36 = *(v13 + 8 * v31);
    if (v36 != -1)
    {
      v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      goto LABEL_28;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10002D4CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003020(&qword_1000A4068, &qword_100080F88);
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
      sub_10002C6DC(0, (v30 + 63) >> 6, v3 + 56);
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

uint64_t sub_10002D728(uint64_t a1)
{
  v2 = v1;
  v57 = type metadata accessor for ResolvedPredictedLocation();
  v4 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v56 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for NotificationSubscription.Location();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v55);
  v54 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SevereNotificationSubscription();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v48 - v15;
  v16 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v17 = *(*v2 + 24);
  }

  sub_100003020(&qword_1000A4150, &qword_1000810D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v19 = result;
  if (!*(v16 + 16))
  {
LABEL_34:

    *v2 = v19;
    return result;
  }

  v48 = v2;
  v20 = 0;
  v21 = *(v16 + 56);
  v49 = (v16 + 56);
  v22 = 1 << *(v16 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v51 = (v6 + 32);
  v50 = (v6 + 8);
  v26 = result + 56;
  v58 = v25;
  v52 = v14;
  v53 = v9;
  if (!v24)
  {
LABEL_9:
    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v20 >= v25)
      {
        break;
      }

      v28 = v49[v20];
      ++v27;
      if (v28)
      {
        v60 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    v47 = 1 << *(v16 + 32);
    if (v47 >= 64)
    {
      sub_10002C6DC(0, (v47 + 63) >> 6, v49);
    }

    else
    {
      *v49 = -1 << v47;
    }

    v2 = v48;
    *(v16 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v60 = (v24 - 1) & v24;
LABEL_14:
    v29 = *(v16 + 48);
    v59 = *(v10 + 72);
    sub_10002FEA4();
    v30 = *(v19 + 40);
    Hasher.init(_seed:)();
    sub_1000304B0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v56;
      sub_10002FEA4();
      Hasher._combine(_:)(1uLL);
      type metadata accessor for Location();
      sub_1000306FC(&qword_1000A4158, 255, &type metadata accessor for Location);
      dispatch thunk of Hashable.hash(into:)();
      v32 = v57;
      v33 = *&v31[*(v57 + 20)];
      if (v33 == 0.0)
      {
        v33 = 0.0;
      }

      Hasher._combine(_:)(*&v33);
      v34 = *(v32 + 24);
      type metadata accessor for Date();
      sub_1000306FC(&qword_1000A4160, 255, &type metadata accessor for Date);
      dispatch thunk of Hashable.hash(into:)();
      v35 = &v31[*(v32 + 28)];
      v14 = v52;
      dispatch thunk of Hashable.hash(into:)();
      sub_100030508();
    }

    else
    {
      v37 = v54;
      v36 = v55;
      (*v51)(v54, v14, v55);
      Hasher._combine(_:)(0);
      sub_1000306FC(&qword_1000A4168, 255, &type metadata accessor for NotificationSubscription.Location);
      dispatch thunk of Hashable.hash(into:)();
      (*v50)(v37, v36);
    }

    result = Hasher._finalize()();
    v38 = -1 << *(v19 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v26 + 8 * (v39 >> 6))) == 0)
    {
      break;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v26 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    *(v26 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v46 = *(v19 + 48) + v41 * v59;
    result = sub_10002FEA4();
    ++*(v19 + 16);
    v25 = v58;
    v24 = v60;
    if (!v60)
    {
      goto LABEL_9;
    }
  }

  v42 = 0;
  v43 = (63 - v38) >> 6;
  while (++v40 != v43 || (v42 & 1) == 0)
  {
    v44 = v40 == v43;
    if (v40 == v43)
    {
      v40 = 0;
    }

    v42 |= v44;
    v45 = *(v26 + 8 * v40);
    if (v45 != -1)
    {
      v41 = __clz(__rbit64(~v45)) + (v40 << 6);
      goto LABEL_28;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

Swift::Int sub_10002DDA0(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v38 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_31;
  }

  if (a3)
  {
    sub_10002D1D4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10002E888();
      goto LABEL_31;
    }

    sub_10002ED6C(v6 + 1);
  }

  v8 = *v5;
  v9 = v5[1];
  v10 = v5[2];
  v11 = v5[3];
  v12 = v5[4];
  v13 = *v3;
  v14 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v41 = v10;
  v15 = v11;
  String.hash(into:)();
  sub_10002F9FC(v42, v12);
  result = Hasher._finalize()();
  v16 = v13 + 56;
  v17 = -1 << *(v13 + 32);
  a2 = result & ~v17;
  if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
LABEL_31:
    v31 = *v37;
    *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    v32 = *(v31 + 48) + 40 * a2;
    v33 = *(v38 + 16);
    *v32 = *v38;
    *(v32 + 16) = v33;
    *(v32 + 32) = *(v38 + 32);
    v34 = *(v31 + 16);
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (!v35)
    {
      *(v31 + 16) = v36;
      return result;
    }

    goto LABEL_34;
  }

  v18 = v12;
  v19 = ~v17;
  v20 = *(v13 + 48);
  v39 = (v18 + 32);
  v40 = v18;
  while (1)
  {
    v21 = (v20 + 40 * a2);
    result = *v21;
    v22 = v21[2];
    v23 = v21[3];
    v24 = v21[4];
    v25 = *v21 == v8 && v21[1] == v9;
    if (v25 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      v26 = v22 == v41 && v23 == v15;
      if (v26 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        v27 = *(v24 + 16);
        if (v27 == *(v40 + 16))
        {
          break;
        }
      }
    }

LABEL_30:
    a2 = (a2 + 1) & v19;
    if (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (v27)
  {
    v28 = v24 == v40;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    goto LABEL_35;
  }

  v29 = (v24 + 32);
  v30 = v39;
  while (v27)
  {
    if (*v29 != *v30)
    {
      goto LABEL_30;
    }

    ++v29;
    ++v30;
    if (!--v27)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10002DFFC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10002D4CC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10002F040(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_10002EA0C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_10002E164(uint64_t a1, unint64_t a2, char a3)
{
  v63 = a1;
  v54 = type metadata accessor for ResolvedPredictedLocation();
  v6 = *(*(v54 - 1) + 64);
  __chkstk_darwin(v54);
  v56 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for NotificationSubscription.Location();
  v8 = *(v59 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v59);
  v55 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003020(&qword_1000A4148, &qword_1000810C8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v15 = type metadata accessor for SevereNotificationSubscription();
  v53 = *(v15 - 8);
  v16 = *(v53 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v48 - v21;
  __chkstk_darwin(v20);
  v23 = *(*v3 + 16);
  v24 = *(*v3 + 24);
  v48 = v3;
  if (v24 <= v23 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10002D728(v23 + 1);
    }

    else
    {
      if (v24 > v23)
      {
        sub_10002EB64();
        goto LABEL_26;
      }

      sub_10002F2C8(v23 + 1);
    }

    v25 = *v3;
    v26 = *(*v3 + 40);
    Hasher.init(_seed:)();
    sub_10003807C();
    v27 = Hasher._finalize()();
    v28 = -1 << *(v25 + 32);
    a2 = v27 & ~v28;
    v62 = v25 + 56;
    if ((*(v25 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v61 = ~v28;
      v60 = *(v53 + 72);
      v50 = (v8 + 32);
      v58 = (v8 + 8);
      v52 = v15;
      v51 = v25;
      v49 = v19;
      do
      {
        v29 = *(v25 + 48);
        sub_1000304B0();
        v30 = *(v11 + 48);
        sub_1000304B0();
        sub_1000304B0();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1000304B0();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v31 = v56;
            sub_10002FEA4();
            if (static Location.== infix(_:_:)() & 1) != 0 && *&v19[v54[5]] == *&v31[v54[5]] && (v32 = v54[6], (static Date.== infix(_:_:)()))
            {
              v33 = v54[7];
              v34 = static Date.== infix(_:_:)();
              sub_100030508();
              sub_100030508();
              if (v34)
              {
                goto LABEL_29;
              }
            }

            else
            {
              sub_100030508();
              sub_100030508();
            }

            sub_100030508();
            sub_100030508();
            goto LABEL_25;
          }

          sub_100030508();
          sub_100030508();
        }

        else
        {
          sub_1000304B0();
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v35 = v11;
            v36 = v22;
            v37 = v55;
            v38 = v59;
            (*v50)(v55, &v14[v30], v59);
            v57 = static NotificationSubscription.Location.== infix(_:_:)();
            v39 = *v58;
            v40 = v37;
            v22 = v36;
            (*v58)(v40, v38);
            sub_100030508();
            v39(v36, v38);
            if (v57)
            {
              goto LABEL_30;
            }

            sub_100030508();
            v11 = v35;
            v19 = v49;
            v25 = v51;
            goto LABEL_25;
          }

          sub_100030508();
          (*v58)(v22, v59);
        }

        sub_10000E904(v14, &qword_1000A4148, &qword_1000810C8);
LABEL_25:
        a2 = (a2 + 1) & v61;
      }

      while (((*(v62 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_26:
  v41 = *v48;
  *(*v48 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v42 = *(v41 + 48);
  v43 = *(v53 + 72);
  result = sub_10002FEA4();
  v45 = *(v41 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (v46)
  {
    __break(1u);
LABEL_29:
    sub_100030508();
LABEL_30:
    sub_100030508();
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v41 + 16) = v47;
  }

  return result;
}

void *sub_10002E888()
{
  v1 = v0;
  sub_100003020(&qword_1000A40C8, &unk_100080FE0);
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
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[4];
        v23 = (*(v4 + 48) + 8 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        v23[4] = v22;
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

void *sub_10002EA0C()
{
  v1 = v0;
  sub_100003020(&qword_1000A4068, &qword_100080F88);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

void *sub_10002EB64()
{
  v1 = v0;
  v2 = type metadata accessor for SevereNotificationSubscription();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100003020(&qword_1000A4150, &qword_1000810D0);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 56 + 8 * v9)
    {
      result = memmove(result, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 56);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = *(v5 + 48);
        v21 = *(v3 + 72) * (v17 | (v11 << 6));
        sub_1000304B0();
        v22 = *(v7 + 48);
        result = sub_10002FEA4();
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v7;
  }

  return result;
}

uint64_t sub_10002ED6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003020(&qword_1000A40C8, &unk_100080FE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
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
    v39 = result;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v42 = (v11 - 1) & v11;
LABEL_14:
        v17 = (*(v3 + 48) + 40 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        v22 = v17[4];
        v23 = *(v6 + 40);
        Hasher.init(_seed:)();

        v41 = v18;
        String.hash(into:)();
        v40 = v20;
        String.hash(into:)();
        Hasher._combine(_:)(*(v22 + 16));
        v24 = *(v22 + 16);
        if (v24)
        {
          v25 = (v22 + 32);
          do
          {
            v26 = *v25++;
            v27 = v26;
            if (v26 == 0.0)
            {
              v27 = 0.0;
            }

            Hasher._combine(_:)(*&v27);
            --v24;
          }

          while (v24);
        }

        result = Hasher._finalize()();
        v6 = v39;
        v28 = -1 << *(v39 + 32);
        v29 = result & ~v28;
        v30 = v29 >> 6;
        if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
        {
          break;
        }

        v31 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
        v3 = v38;
        *(v13 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        v36 = (*(v39 + 48) + 40 * v31);
        *v36 = v41;
        v36[1] = v19;
        v36[2] = v40;
        v36[3] = v21;
        v36[4] = v22;
        ++*(v39 + 16);
        v11 = v42;
        if (!v42)
        {
          goto LABEL_9;
        }
      }

      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v13 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_28;
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

          v2 = v37;
          goto LABEL_32;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v42 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10002F040(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003020(&qword_1000A4068, &qword_100080F88);
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

unint64_t sub_10002F274()
{
  result = qword_1000A4078;
  if (!qword_1000A4078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4078);
  }

  return result;
}

uint64_t sub_10002F2C8(uint64_t a1)
{
  v2 = v1;
  v53 = type metadata accessor for ResolvedPredictedLocation();
  v4 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for NotificationSubscription.Location();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v51);
  v50 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SevereNotificationSubscription();
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  v11 = __chkstk_darwin(v9);
  v54 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v59 = &v46 - v13;
  v14 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v15 = *(*v2 + 24);
  }

  sub_100003020(&qword_1000A4150, &qword_1000810D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v14 + 16))
  {
    v46 = v2;
    v18 = 0;
    v19 = v14 + 56;
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 56);
    v23 = (v20 + 63) >> 6;
    v48 = (v6 + 32);
    v47 = (v6 + 8);
    v24 = result + 56;
    v25 = v54;
    v49 = v9;
    v55 = v14;
    if (v22)
    {
      while (1)
      {
        v58 = (v22 - 1) & v22;
LABEL_14:
        v28 = *(v14 + 48);
        v57 = *(v56 + 72);
        sub_1000304B0();
        v29 = *(v17 + 40);
        Hasher.init(_seed:)();
        sub_1000304B0();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v30 = v52;
          sub_10002FEA4();
          Hasher._combine(_:)(1uLL);
          type metadata accessor for Location();
          sub_1000306FC(&qword_1000A4158, 255, &type metadata accessor for Location);
          dispatch thunk of Hashable.hash(into:)();
          v31 = v53;
          v32 = *&v30[*(v53 + 20)];
          if (v32 == 0.0)
          {
            v32 = 0.0;
          }

          Hasher._combine(_:)(*&v32);
          v33 = *(v31 + 24);
          type metadata accessor for Date();
          sub_1000306FC(&qword_1000A4160, 255, &type metadata accessor for Date);
          dispatch thunk of Hashable.hash(into:)();
          v34 = &v30[*(v31 + 28)];
          v25 = v54;
          dispatch thunk of Hashable.hash(into:)();
          sub_100030508();
        }

        else
        {
          v36 = v50;
          v35 = v51;
          (*v48)(v50, v25, v51);
          Hasher._combine(_:)(0);
          sub_1000306FC(&qword_1000A4168, 255, &type metadata accessor for NotificationSubscription.Location);
          dispatch thunk of Hashable.hash(into:)();
          (*v47)(v36, v35);
        }

        result = Hasher._finalize()();
        v37 = -1 << *(v17 + 32);
        v38 = result & ~v37;
        v39 = v38 >> 6;
        v14 = v55;
        if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
        {
          break;
        }

        v40 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
        *(v24 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        v45 = *(v17 + 48) + v40 * v57;
        result = sub_10002FEA4();
        ++*(v17 + 16);
        v22 = v58;
        if (!v58)
        {
          goto LABEL_9;
        }
      }

      v41 = 0;
      v42 = (63 - v37) >> 6;
      while (++v39 != v42 || (v41 & 1) == 0)
      {
        v43 = v39 == v42;
        if (v39 == v42)
        {
          v39 = 0;
        }

        v41 |= v43;
        v44 = *(v24 + 8 * v39);
        if (v44 != -1)
        {
          v40 = __clz(__rbit64(~v44)) + (v39 << 6);
          goto LABEL_28;
        }
      }
    }

    else
    {
LABEL_9:
      v26 = v18;
      while (1)
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v18 >= v23)
        {

          v2 = v46;
          goto LABEL_32;
        }

        v27 = *(v19 + 8 * v18);
        ++v26;
        if (v27)
        {
          v58 = (v27 - 1) & v27;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v17;
  }

  return result;
}

void sub_10002F8F8(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_10002F970(0x20000000000001uLL);
  }
}

unint64_t sub_10002F970(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10002F9FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 == 0.0)
      {
        v6 = 0.0;
      }

      Hasher._combine(_:)(*&v6);
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10002FA68(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_10002FAA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10002FAB4()
{
  sub_100030E38();
  v2 = type metadata accessor for SevereNotificationSubscription();
  sub_100030BE8(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 24);

  sub_100030CE0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for Location();
    sub_100007050(v8);
    (*(v9 + 8))(v0 + v4);
    v10 = type metadata accessor for ResolvedPredictedLocation();
    v11 = sub_100030F94(v10);
    sub_100018904(v11);
    v13 = *(v12 + 8);
    v13(v0 + v4 + v1, v11);
    v14 = sub_100030E90();
    (v13)(v14);
  }

  else
  {
    v15 = type metadata accessor for NotificationSubscription.Location();
    sub_100007050(v15);
    (*(v16 + 8))(v0 + v4);
  }

  sub_100030E80();
  sub_100030E08();

  return _swift_deallocObject(v17, v18, v19);
}

uint64_t sub_10002FC44(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, void, void, unint64_t))
{
  v6 = a2(0);
  sub_100006FF0(v6);
  return a3(a1, *(v3 + 16), *(v3 + 24), v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
}

uint64_t sub_10002FCC4()
{
  sub_100030E38();
  v2 = type metadata accessor for SevereNotificationSubscription();
  sub_100030BE8(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Location();
    sub_100007050(v7);
    (*(v8 + 8))(v0 + v4);
    v9 = type metadata accessor for ResolvedPredictedLocation();
    v10 = sub_100030F94(v9);
    sub_100018904(v10);
    v12 = *(v11 + 8);
    v12(v0 + v4 + v1, v10);
    v13 = sub_100030E90();
    (v12)(v13);
  }

  else
  {
    v14 = type metadata accessor for NotificationSubscription.Location();
    sub_100007050(v14);
    (*(v15 + 8))(v0 + v4);
  }

  v16 = *(v0 + ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100030E08();

  return _swift_deallocObject(v17, v18, v19);
}

uint64_t sub_10002FE28()
{
  sub_100030DBC();
  v1 = type metadata accessor for SevereNotificationSubscription();
  sub_10000E960(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  sub_100030EE0();
  v9 = *(v0 + v8);
  v10 = sub_100006FFC();
  return sub_10002043C(v10, v11, v12);
}

uint64_t sub_10002FEA4()
{
  sub_100031024();
  v2 = v1(0);
  sub_100018904(v2);
  v4 = *(v3 + 32);
  v5 = sub_100030E2C();
  v6(v5);
  return v0;
}

uint64_t sub_10002FEFC()
{
  sub_100031024();
  v3 = sub_100003020(v1, v2);
  sub_100018904(v3);
  v5 = *(v4 + 32);
  v6 = sub_100030E2C();
  v7(v6);
  return v0;
}

uint64_t sub_10002FFD0()
{
  sub_100031024();
  v3 = sub_100003020(v1, v2);
  sub_100018904(v3);
  v5 = *(v4 + 16);
  v6 = sub_100030E2C();
  v7(v6);
  return v0;
}

uint64_t sub_10003007C(__int128 *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  return sub_10007BF9C() & 1;
}

uint64_t sub_1000300CC()
{
  sub_100030C4C();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  v3 = sub_10003103C(v1);

  return sub_1000243C8(v3, v4);
}

uint64_t sub_100030150()
{
  sub_100030C58();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100030BFC(v3);
  *v4 = v5;
  v6 = sub_100030B8C(v4);

  return sub_100026B2C(v6, v7, v1);
}

uint64_t sub_1000301E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100030234()
{
  sub_100030E20();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_100030BFC(v6);
  *v7 = v8;
  v9 = sub_100030B8C(v7);

  return sub_100029F68(v9, v10, v2, v3, v4, v5);
}

uint64_t sub_1000302E4()
{
  v1 = *(v0 + 16);

  v2 = sub_100030EB0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10003031C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100029DCC();
}

uint64_t sub_100030324()
{
  swift_weakDestroy();
  v0 = sub_100030EA0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100030354()
{
  sub_100030C58();
  sub_100030D64();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  sub_100030B8C(v1);
  sub_100030FC8();

  return sub_100025294(v3, v4, v5, v6);
}

uint64_t sub_1000303E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_100030E74();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100030480()
{
  v1 = sub_100030EA0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000304B0()
{
  sub_100031024();
  v2 = v1(0);
  sub_100018904(v2);
  v4 = *(v3 + 16);
  v5 = sub_100030E2C();
  v6(v5);
  return v0;
}

uint64_t sub_100030508()
{
  v1 = sub_100030FB0();
  v3 = v2(v1);
  sub_100007050(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_10003055C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = sub_100030EB0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100030594()
{
  sub_100030C4C();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  v3 = sub_10003103C(v1);

  return sub_1000243C8(v3, v4);
}

uint64_t sub_100030618()
{
  sub_100030C4C();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030C70();

  return v4();
}

uint64_t sub_1000306FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100030748()
{
  sub_100030C58();
  sub_100030D64();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  sub_100030B8C(v1);
  sub_100030FC8();

  return sub_10002912C(v3, v4, v5, v6);
}

uint64_t sub_1000307E0()
{
  sub_100030C58();
  sub_100030D64();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  sub_100030B8C(v1);
  sub_100030FC8();

  return sub_10002988C(v3, v4, v5, v6);
}

uint64_t sub_100030870()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_100030E74();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000308AC()
{
  sub_100030C58();
  sub_100030D64();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  sub_100030B8C(v1);
  sub_100030FC8();

  return sub_100019500();
}

uint64_t sub_100030944(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SevereNotificationsManager.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100030A50);
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

unint64_t sub_100030A8C()
{
  result = qword_1000A4190;
  if (!qword_1000A4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4190);
  }

  return result;
}

uint64_t sub_100030C20()
{
  **(v0 + 40) = *(v0 + 80) == 0;
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100030C70()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_100030D64()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_100030D84()
{
}

uint64_t sub_100030DEC()
{

  return static Logger.notifications.getter();
}

uint64_t sub_100030EF0()
{
  v5 = *(v0 + ((v2 + v1 + v3) & ~v3) + 8);
}

uint64_t sub_100030F3C()
{
  v2 = *(v0 + 48);

  return swift_beginAccess();
}

uint64_t sub_100030F60()
{

  return swift_slowAlloc();
}

uint64_t sub_100030F7C()
{

  return swift_slowAlloc();
}

uint64_t sub_100030F94(uint64_t a1)
{
  v2 = *(a1 + 24);

  return type metadata accessor for Date();
}

uint64_t sub_100031070(uint64_t a1)
{

  return sub_100007374(v1 + v2, 1, a1);
}

uint64_t sub_100031090(uint64_t a1)
{
  v2 = *(a1 + 24);

  return type metadata accessor for Date();
}

void sub_1000310B0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_1000310D0()
{
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
}

void sub_1000310F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100031110(uint64_t a1)
{

  return sub_100007374(a1, 1, v1);
}

uint64_t sub_100031128()
{

  return swift_slowAlloc();
}

uint64_t sub_100031140()
{

  return swift_slowAlloc();
}

BOOL sub_100031158(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100031170()
{
  v3 = *(v0 + v1 + 8);
}

uint64_t ResolvedPredictedLocation.location.getter()
{
  v1 = type metadata accessor for Location();
  sub_100018904(v1);
  v3 = *(v2 + 16);
  v4 = sub_1000326C4();

  return v5(v4, v0);
}

uint64_t type metadata accessor for ResolvedPredictedLocation()
{
  result = qword_1000A4200;
  if (!qword_1000A4200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ResolvedPredictedLocation.startDate.getter()
{
  v0 = *(type metadata accessor for ResolvedPredictedLocation() + 24);
  v1 = type metadata accessor for Date();
  sub_100018904(v1);
  v3 = *(v2 + 16);
  v4 = sub_1000326C4();

  return v5(v4);
}

uint64_t ResolvedPredictedLocation.endDate.getter()
{
  v0 = *(type metadata accessor for ResolvedPredictedLocation() + 28);
  v1 = type metadata accessor for Date();
  sub_100018904(v1);
  v3 = *(v2 + 16);
  v4 = sub_1000326C4();

  return v5(v4);
}

uint64_t ResolvedPredictedLocation.init(location:probability:startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = type metadata accessor for Location();
  sub_100018904(v10);
  (*(v11 + 32))(a4, a1);
  v12 = type metadata accessor for ResolvedPredictedLocation();
  *(a4 + v12[5]) = a5;
  v13 = v12[6];
  v14 = type metadata accessor for Date();
  sub_100018904(v14);
  v18 = *(v15 + 32);
  v18(a4 + v13, a2, v14);
  v16 = a4 + v12[7];

  return (v18)(v16, a3, v14);
}

uint64_t static ResolvedPredictedLocation.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ResolvedPredictedLocation();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 28);

  return static Date.== infix(_:_:)();
}

uint64_t ResolvedPredictedLocation.hash(into:)()
{
  v1 = v0;
  type metadata accessor for Location();
  sub_100031920(&qword_1000A4158, &type metadata accessor for Location);
  sub_1000326C4();
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for ResolvedPredictedLocation();
  v3 = *(v0 + v2[5]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = v2[6];
  type metadata accessor for Date();
  sub_100032604();
  sub_100031920(v5, v6);
  dispatch thunk of Hashable.hash(into:)();
  v7 = v1 + v2[7];
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int ResolvedPredictedLocation.hashValue.getter()
{
  Hasher.init(_seed:)();
  ResolvedPredictedLocation.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100031658()
{
  Hasher.init(_seed:)();
  ResolvedPredictedLocation.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ResolvedPredictedLocation.description.getter()
{
  v2 = v0;
  v3 = type metadata accessor for Location.Identifier();
  v4 = sub_100006FBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100032694();
  _StringGuts.grow(_:)(57);
  v9._countAndFlagsBits = 0x6F697461636F6C7BLL;
  v9._object = 0xEC0000003D44496ELL;
  String.append(_:)(v9);
  Location.identifier.getter();
  v10 = Location.Identifier.uniqueID.getter();
  v12 = v11;
  (*(v6 + 8))(v1, v3);
  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x6261626F7270202CLL;
  v14._object = 0xEE003D7974696C69;
  String.append(_:)(v14);
  v15 = type metadata accessor for ResolvedPredictedLocation();
  v16 = *(v0 + v15[5]);
  Double.write<A>(to:)();
  v17._countAndFlagsBits = 0x447472617473202CLL;
  v17._object = 0xEC0000003D657461;
  String.append(_:)(v17);
  v18 = v15[6];
  type metadata accessor for Date();
  sub_100032604();
  sub_100031920(v19, v20);
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x746144646E65202CLL;
  v22._object = 0xEA00000000003D65;
  String.append(_:)(v22);
  v23 = v2 + v15[7];
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 125;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  return 0;
}

uint64_t sub_100031920(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100031980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Location();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = a1 + *(a3 + 24);
  }

  return sub_100007374(v8, a2, v7);
}

uint64_t sub_100031A30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Location();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for Date();
    v10 = a1 + *(a4 + 24);
  }

  return sub_100006BD4(v10, a2, a2, v9);
}

uint64_t sub_100031AD4()
{
  result = type metadata accessor for Location();
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

void sub_100031B60()
{
  sub_10003265C();
  sub_1000326B8();
  v3 = type metadata accessor for ResolvedPredictedLocation();
  v4 = sub_100006FBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_1000188B0();
  v27 = v9;
  sub_100030F24();
  __chkstk_darwin(v10);
  sub_10003264C();
  v11 = 0;
  v12 = *v0;
  v13 = *(*v0 + 16);
  v14 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v13 == v11)
    {

      *v0 = v14;
      sub_100032678();
      return;
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = *(v6 + 72);
    sub_1000324E0(v12 + v15 + v16 * v11, v1);
    if (*(v1 + *(v3 + 20)) >= v2)
    {
      sub_1000325A0(v1, v27);
      v28 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10003261C(v14[2]);
      }

      v18 = v14[2];
      v17 = v14[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_10003263C(v17);
        v21 = v20;
        sub_1000326AC();
        v26 = v22;
        sub_1000147D4(v23, v24, v25);
        v19 = v21;
        v18 = v26;
        v14 = v28;
      }

      ++v11;
      v14[2] = v19;
      sub_1000325A0(v27, v14 + v15 + v18 * v16);
    }

    else
    {
      sub_100032544(v1);
      ++v11;
    }
  }

  __break(1u);
}

void sub_100031D00()
{
  sub_10003265C();
  v4 = v3;
  sub_1000326B8();
  v39 = type metadata accessor for LocationCoordinate();
  v5 = sub_100006FBC(v39);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100032694();
  v10 = type metadata accessor for ResolvedPredictedLocation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_1000188B0();
  v37 = v13;
  sub_100030F24();
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  if (v4)
  {
    v36 = v0;
    v17 = *v0;
    v41 = *(*v0 + 16);
    v18 = (v7 + 8);
    v40 = v4;
    v19 = 0;
    v38 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v41 == v19)
      {

        *v36 = v38;
        goto LABEL_13;
      }

      if (v19 >= *(v17 + 16))
      {
        break;
      }

      v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v21 = *(v11 + 72);
      sub_1000324E0(v17 + v20 + v21 * v19, v16);
      Location.coordinate.getter();
      LocationCoordinate.init(_:)();
      v22 = LocationCoordinate.clLocation.getter();
      (*v18)(v1, v39);
      [v22 distanceFromLocation:v40];
      v24 = v23;

      if (v24 >= v2)
      {
        sub_1000325A0(v16, v37);
        v25 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v25;
        v42 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10003261C(v25[2]);
          v27 = v42;
        }

        v29 = v27[2];
        v28 = v27[3];
        v30 = (v29 + 1);
        if (v29 >= v28 >> 1)
        {
          sub_10003263C(v28);
          v38 = v31;
          sub_1000326AC();
          sub_1000147D4(v32, v33, v34);
          v30 = v38;
          v27 = v42;
        }

        ++v19;
        v27[2] = v30;
        v38 = v27;
        sub_1000325A0(v37, v27 + v20 + v29 * v21);
      }

      else
      {
        sub_100032544(v16);
        ++v19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    sub_100032678();
  }
}

void sub_100031F80()
{
  sub_10003265C();
  v4 = v3;
  sub_1000326B8();
  v5 = type metadata accessor for ResolvedPredictedLocation();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  sub_1000188B0();
  v27 = v8;
  sub_100030F24();
  __chkstk_darwin(v9);
  sub_10003264C();
  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v26 = v0;
      v10 = *v0;
      v11 = *(*v0 + 16);

      v12 = 0;
      v0 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v11 == v12)
        {
          swift_bridgeObjectRelease_n();
          *v26 = _swiftEmptyArrayStorage;
          goto LABEL_14;
        }

        if (v12 >= *(v10 + 16))
        {
          break;
        }

        v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v14 = *(v6 + 72);
        sub_1000324E0(v10 + v13 + v14 * v12, v1);
        sub_10003218C(v2, v1, v4);
        if (v15)
        {
          sub_1000325A0(v1, v27);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10003261C(_swiftEmptyArrayStorage[2]);
          }

          v17 = _swiftEmptyArrayStorage[2];
          v16 = _swiftEmptyArrayStorage[3];
          v18 = v17 + 1;
          if (v17 >= v16 >> 1)
          {
            sub_10003263C(v16);
            v24 = v19;
            v25 = v20;
            sub_1000326AC();
            sub_1000147D4(v21, v22, v23);
            v17 = v24;
            v18 = v25;
          }

          ++v12;
          _swiftEmptyArrayStorage[2] = v18;
          sub_1000325A0(v27, _swiftEmptyArrayStorage + v13 + v17 * v14);
        }

        else
        {
          sub_100032544(v1);
          ++v12;
        }
      }

      __break(1u);
LABEL_16:
      ;
    }

    while (_CocoaArrayWrapper.endIndex.getter());
  }

LABEL_14:
  sub_100032678();
}

void sub_10003218C(double a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LocationCoordinate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Location.coordinate.getter();
  LocationCoordinate.init(_:)();
  v10 = LocationCoordinate.clLocation.getter();
  (*(v6 + 8))(v9, v5);
  v11 = sub_100037A1C(a3);
  v12 = 0;
  while (1)
  {
    v13 = v12;
    if (v11 == v12)
    {
LABEL_10:

      return;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v14 = *(a3 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    [v10 distanceFromLocation:v14];
    v17 = v16;

    v12 = v13 + 1;
    if (v17 < a1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}