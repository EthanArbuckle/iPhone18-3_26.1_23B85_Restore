void sub_100032330()
{
  sub_10003265C();
  v3 = v0;
  sub_1000326B8();
  v4 = type metadata accessor for ResolvedPredictedLocation();
  v5 = sub_100006FBC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_1000188B0();
  v29 = v10;
  sub_100030F24();
  __chkstk_darwin(v11);
  sub_10003264C();
  v12 = 0;
  v13 = *v0;
  v14 = *(*v0 + 16);
  v30 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v14 == v12)
    {

      *v3 = v30;
      sub_100032678();
      return;
    }

    if (v12 >= *(v13 + 16))
    {
      break;
    }

    v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v16 = *(v7 + 72);
    sub_1000324E0(v13 + v15 + v16 * v12, v1);
    v17 = *(v4 + 24);
    v18 = v1 + *(v4 + 28);
    Date.timeIntervalSince(_:)();
    if (v19 >= v2)
    {
      sub_1000325A0(v1, v29);
      v20 = v30;
      v32 = v30;
      v28 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10003261C(v30[2]);
        v20 = v30;
      }

      v22 = v20[2];
      v21 = v20[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_10003263C(v21);
        v31 = v24;
        sub_1000326AC();
        sub_1000147D4(v25, v26, v27);
        v23 = v31;
        v20 = v32;
      }

      ++v12;
      v20[2] = v23;
      v30 = v20;
      sub_1000325A0(v29, v20 + v15 + v22 * v16);
      v3 = v28;
    }

    else
    {
      sub_100032544(v1);
      ++v12;
    }
  }

  __break(1u);
}

uint64_t sub_1000324E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedPredictedLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032544(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedPredictedLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000325A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedPredictedLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_10003261C@<X0>(uint64_t a1@<X8>)
{

  return sub_1000147D4(0, a1 + 1, 1);
}

void sub_1000326D0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = 0;
  v17 = a3 & 0xC000000000000001;
  v18 = sub_100036C5C(a3);
  v6 = _swiftEmptyArrayStorage;
  while (v18 != v5)
  {
    if (v17)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v7 = *(a3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v21 = v7;
    a1(&v19, &v21);
    if (v3)
    {

      return;
    }

    v9 = v20;
    if (v20)
    {
      v10 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = v6[2];
        sub_10005B5C4();
        v6 = v14;
      }

      v11 = v6[2];
      if (v11 >= v6[3] >> 1)
      {
        sub_10005B5C4();
        v6 = v15;
      }

      v6[2] = v11 + 1;
      v12 = &v6[2 * v11];
      v12[4] = v10;
      v12[5] = v9;
    }

    ++v5;
  }
}

void *sub_100032854(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v7 == v6)
    {
      return v13;
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = type metadata accessor for WidgetNames();
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    result = v5(&v14, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {
      v12 = v13;

      return v12;
    }

    ++v6;
    if (v14)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v15;
      v6 = v11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1000329C0()
{
  v1 = *(v0 + 24);

  sub_100006994((v0 + 32));
  return v0;
}

uint64_t sub_1000329F0()
{
  sub_1000329C0();

  return _swift_deallocClassInstance(v0, 72, 7);
}

void sub_100032A48()
{
  sub_100030E38();
  v78 = v1;
  v3 = v2;
  v4 = *v0;
  v5 = type metadata accessor for SevereNotificationSubscription();
  v6 = sub_10000E960(v5);
  v76 = v7;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v6);
  sub_100037AFC(v10, v11, v12, v13, v14, v15, v16, v17, v69);
  v18 = type metadata accessor for SevereNotificationContent();
  v19 = sub_100006FF0(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_10000E970();
  v72 = (v23 - v22);
  v24 = type metadata accessor for SevereNotification(0);
  v25 = sub_10000E960(v24);
  v73 = v26;
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v25);
  v74 = v30;
  v75 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v69 - v31;
  v33 = type metadata accessor for Logger();
  v34 = sub_100006FBC(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34);
  sub_10000E970();
  v41 = v40 - v39;
  static Logger.notifications.getter();
  sub_100037A24();
  sub_100037338(v3, v32, v42);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = sub_100031128();
    v71 = v0;
    v46 = v45;
    v47 = sub_100037B44();
    v70 = v3;
    v48 = v47;
    v79 = v47;
    *v46 = 136446210;
    v49 = sub_10005047C();
    v69 = v33;
    v51 = v50;
    sub_100037AC4();
    v52 = sub_10000D9FC(v49, v51, &v79);

    *(v46 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v43, v44, "Scheduling notification with identifier %{public}s", v46, 0xCu);
    sub_100006994(v48);
    v3 = v70;
    sub_10000FA7C();
    sub_10000FA7C();

    (*(v36 + 8))(v41, v69);
  }

  else
  {

    sub_100037AC4();
    (*(v36 + 8))(v41, v33);
  }

  sub_100030944(0, &qword_1000A42F0, UNNotificationRequest_ptr);
  v53 = sub_10005047C();
  v55 = v54;
  sub_100030944(0, &qword_1000A42F8, UNMutableNotificationContent_ptr);
  v56 = v72;
  sub_1000505D4(v72);
  v57 = sub_1000737B8(v56);
  v58 = sub_100032F98(v53, v55, v57, 0);
  v59 = sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v60 = static OS_dispatch_queue.notifications.getter();
  *(swift_allocObject() + 16) = v58;
  v61 = v58;
  firstly<A, B>(on:disposeOn:closure:)();

  v62 = static OS_dispatch_queue.notifications.getter();
  sub_100037A24();
  sub_100037338(v3, v75, v63);
  sub_100037AEC(v73);
  v64 = sub_100037B2C();
  sub_100037A70(v64);
  Promise.then<A, B>(on:disposeOn:closure:)();

  v65 = v59;
  v66 = static OS_dispatch_queue.notifications.getter();
  v67 = v77;
  sub_100037338(v78, v77, type metadata accessor for SevereNotificationSubscription);
  sub_100037AEC(v76);
  v68 = sub_100037B2C();
  sub_1000374FC(v67, v68 + v65, type metadata accessor for SevereNotificationSubscription);
  Promise.then<A, B>(on:disposeOn:closure:)();

  sub_100030E08();
}

id sub_100032F98(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [swift_getObjCClassFromMetadata() requestWithIdentifier:v6 content:a3 trigger:a4];

  return v7;
}

uint64_t sub_10003301C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 24);
  ReferenceCountedLazy.increase()();
  sub_1000330E8(v4, v5, a3, v12);
  ReferenceCountedLazy.decrease()();
  v7 = sub_100003020(&qword_1000A4020, &qword_100080F50);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = Promise.init(value:)();

  return v10;
}

uint64_t sub_1000330E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v144 = a4;
  v147 = a3;
  v132 = a2;
  v131 = a1;
  v107 = type metadata accessor for Logger();
  v106 = *(v107 - 8);
  v4 = *(v106 + 64);
  __chkstk_darwin(v107);
  v6 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Expression();
  v102 = *(v103 - 8);
  v7 = *(v102 + 64);
  __chkstk_darwin(v103);
  v105 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for Date();
  v9 = *(*(v104 - 8) + 64);
  v10 = __chkstk_darwin(v104);
  v130 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v129 = &v101 - v12;
  v13 = type metadata accessor for UUID();
  v160 = *(v13 - 8);
  v161 = v13;
  v14 = *(v160 + 64);
  v15 = __chkstk_darwin(v13);
  v128 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v127 = &v101 - v17;
  v143 = type metadata accessor for SevereNotificationContent();
  v18 = *(*(v143 - 8) + 64);
  v19 = __chkstk_darwin(v143);
  v142 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v101 - v21;
  v141 = type metadata accessor for CloudChannelSevereNotification(0);
  v23 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v149 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for PeriodicSevereNotification(0);
  v25 = *(*(v140 - 8) + 64);
  __chkstk_darwin(v140);
  v139 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for Location();
  v27 = *(v138 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v138);
  v137 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v136 = &v101 - v31;
  v164 = type metadata accessor for SevereNotification(0);
  v32 = *(*(v164 - 8) + 64);
  v33 = __chkstk_darwin(v164);
  v126 = &v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v135 = &v101 - v36;
  v37 = __chkstk_darwin(v35);
  v134 = &v101 - v38;
  __chkstk_darwin(v37);
  v133 = &v101 - v39;
  v145 = type metadata accessor for SevereNotificationEntity.NotificationKind();
  v40 = *(v145 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v145);
  v162 = &v101 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for SevereNotificationEntity();
  v159 = *(v125 - 8);
  v43 = *(v159 + 64);
  __chkstk_darwin(v125);
  v124 = &v101 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for WeatherAlert();
  v45 = *(v146 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v146);
  v163 = &v101 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  v52 = &v101 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for JSONEncoder();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v56 = JSONEncoder.init()();
  (*(v49 + 104))(v52, enum case for JSONEncoder.DateEncodingStrategy.secondsSince1970(_:), v48);
  v57 = v147;
  v148 = v56;
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  result = sub_10005076C();
  v113 = *(result + 16);
  if (v113)
  {
    v59 = 0;
    v121 = result + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v120 = v45 + 16;
    v119 = enum case for SevereNotificationEntity.NotificationKind.periodic(_:);
    v118 = (v40 + 104);
    v117 = (v27 + 16);
    v116 = (v27 + 32);
    v115 = enum case for SevereNotificationEntity.NotificationKind.cloudChannel(_:);
    v114 = (v27 + 8);
    v160 += 8;
    v111 = (v159 + 8);
    v123 = (v45 + 8);
    v112 = v6;
    v60 = v146;
    v109 = v40;
    v61 = v163;
    v110 = v22;
    v108 = v45;
    v122 = result;
    while (1)
    {
      if (v59 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      (*(v45 + 16))(v61, v121 + *(v45 + 72) * v59, v60);
      v62 = v133;
      sub_100037338(v57, v133, type metadata accessor for SevereNotification);
      v63 = swift_getEnumCaseMultiPayload() == 1 ? v115 : v119;
      (*v118)(v162, v63, v145);
      sub_100036FB8(v62, type metadata accessor for SevereNotification);
      v64 = v134;
      sub_100037338(v57, v134, type metadata accessor for SevereNotification);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v157 = v59;
      if (EnumCaseMultiPayload == 1)
      {
        v66 = v149;
        sub_1000374FC(v64, v149, type metadata accessor for CloudChannelSevereNotification);
        v67 = v137;
        v68 = v138;
        (*v117)(v137, v66 + *(v141 + 32), v138);
        v69 = type metadata accessor for CloudChannelSevereNotification;
      }

      else
      {
        v66 = v139;
        sub_1000374FC(v64, v139, type metadata accessor for PeriodicSevereNotification);
        v67 = v137;
        v68 = v138;
        (*v117)(v137, v66 + *(v140 + 28), v138);
        v69 = type metadata accessor for PeriodicSevereNotification;
      }

      sub_100036FB8(v66, v69);
      v70 = v142;
      v71 = v136;
      (*v116)(v136, v67, v68);
      v158 = Location.id.getter();
      v159 = v72;
      (*v114)(v71, v68);
      v73 = v135;
      sub_100037338(v57, v135, type metadata accessor for SevereNotification);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v74 = v73;
        v75 = v149;
        sub_1000374FC(v74, v149, type metadata accessor for CloudChannelSevereNotification);
        sub_100037338(v75 + *(v141 + 28), v70, type metadata accessor for SevereNotificationContent);
        v76 = type metadata accessor for CloudChannelSevereNotification;
      }

      else
      {
        v77 = v73;
        v75 = v139;
        sub_1000374FC(v77, v139, type metadata accessor for PeriodicSevereNotification);
        sub_100037338(v75 + *(v140 + 24), v70, type metadata accessor for SevereNotificationContent);
        v76 = type metadata accessor for PeriodicSevereNotification;
      }

      sub_100036FB8(v75, v76);
      sub_1000374FC(v70, v22, type metadata accessor for SevereNotificationContent);
      sub_1000379B8(&qword_1000A4320, type metadata accessor for SevereNotificationContent);
      v78 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v80 = v79;
      sub_100036FB8(v22, type metadata accessor for SevereNotificationContent);
      sub_1000379B8(&qword_1000A4328, &type metadata accessor for WeatherAlert);
      v153 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v155 = v78;
      v156 = 0;
      v81 = v127;
      WeatherAlert.id.getter();
      v82 = UUID.uuidString.getter();
      v151 = v83;
      v152 = v82;
      v84 = *v160;
      (*v160)(v81, v161);
      v85 = v126;
      sub_100037338(v57, v126, type metadata accessor for SevereNotification);
      v86 = swift_getEnumCaseMultiPayload();
      v154 = v80;
      if (v86 == 1)
      {
        v87 = v149;
        sub_1000374FC(v85, v149, type metadata accessor for CloudChannelSevereNotification);
        v88 = *(v87 + 24);
        v150 = *(v87 + 16);

        sub_100036FB8(v87, type metadata accessor for CloudChannelSevereNotification);
      }

      else
      {
        sub_100036FB8(v85, type metadata accessor for SevereNotification);
        v150 = 0;
      }

      WeatherAlert.description.getter();
      WeatherAlert.issuedTime.getter();
      WeatherAlert.expireTime.getter();
      v89 = v128;
      UUID.init()();
      UUID.uuidString.getter();
      v84(v89, v161);

      v90 = v124;
      SevereNotificationEntity.init(identifier:notificationIdentifier:notificationKind:subscription:notification:alert:alertIdentifier:messageIdentifier:alertDescription:issuedTime:expireTime:replacementAlert:)();
      v91 = v156;
      NotificationStore.severeNotifications.getter();
      if (v91)
      {
        break;
      }

      dispatch thunk of Table.save.getter();

      dispatch thunk of Save.entity(_:)();
      v60 = v146;
      v59 = v157 + 1;

      (*v111)(v90, v125);
      v61 = v163;
      (*v123)(v163, v60);
      v57 = v147;
      v22 = v110;
      v45 = v108;
      result = v122;
      if (v113 == v59)
      {
        goto LABEL_18;
      }
    }

    (*v111)(v90, v125);
    (*v123)(v163, v146);
    v93 = v112;
    static Logger.notifications.getter();
    swift_errorRetain();
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v165[0] = v97;
      *v96 = 136446210;
      v165[5] = v91;
      swift_errorRetain();
      sub_100003020(&qword_1000A37F0, &unk_100080850);
      v98 = String.init<A>(describing:)();
      v100 = sub_10000D9FC(v98, v99, v165);

      *(v96 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v94, v95, "An error occurred while saving severe notification entity: %{public}s", v96, 0xCu);
      sub_100006994(v97);
    }

    else
    {
    }

    return (*(v106 + 8))(v93, v107);
  }

  else
  {
LABEL_18:

    NotificationStore.severeNotifications.getter();
    dispatch thunk of Table.delete.getter();

    v165[3] = v104;
    v165[4] = &protocol witness table for Date;
    sub_100006D18(v165);
    Date.init(timeIntervalSinceNow:)();
    v92 = v105;
    <= infix(_:_:)();
    sub_100006994(v165);
    dispatch thunk of Delete.where(_:)();
    (*(v102 + 8))(v92, v103);
  }
}

uint64_t sub_100034438(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SevereNotificationSubscription();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = *a1;
  v9 = a1[1];
  sub_100003020(&qword_1000A4020, &qword_100080F50);
  sub_100037338(a3, v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SevereNotificationSubscription);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  sub_1000374FC(v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SevereNotificationSubscription);
  v13 = (v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v10;
  v13[1] = v9;

  return Promise.__allocating_init<A>(task:)();
}

uint64_t sub_1000345C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000379B8(&qword_1000A40F8, &type metadata accessor for NotificationsActor.Actor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_100034690, v7, v6);
}

uint64_t sub_100034690()
{
  v1 = *sub_1000032B8((v0[3] + 32), *(v0[3] + 56));
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_100034738;
  v3 = v0[4];

  return sub_100055668();
}

uint64_t sub_100034738()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_100034858, v4, v3);
}

uint64_t sub_100034858()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];

  *v4 = v3;
  v4[1] = v2;
  v6 = v0[1];

  return v6();
}

void sub_1000348E0()
{
  sub_100030E38();
  v2 = v1;
  v4 = v3;
  v40 = v5;
  v6 = *v0;
  v7 = type metadata accessor for SevereNotification(0);
  v8 = sub_10000E960(v7);
  v38 = v9;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v8);
  sub_100037AFC(v12, v13, v14, v15, v16, v17, v18, v19, v37);
  v20 = type metadata accessor for Logger();
  v21 = sub_100006FBC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_10000E970();
  sub_100037B1C();
  static Logger.notifications.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = sub_100031128();
    v29 = sub_100037B44();
    v41 = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_10000D9FC(v40, v4, &v41);
    _os_log_impl(&_mh_execute_header, v26, v27, "Replacing content for notification with identifier %{public}s", v28, 0xCu);
    sub_100006994(v29);
    sub_10000FA7C();
    sub_10000FA7C();
  }

  v30 = (*(v23 + 8))(v0, v20);
  __chkstk_darwin(v30);
  v31 = sub_100003020(&qword_1000A4020, &qword_100080F50);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  Promise.init(resolver:)();
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v34 = static OS_dispatch_queue.notifications.getter();
  sub_100037A24();
  sub_100037338(v2, v39, v35);
  sub_100037AEC(v38);
  v36 = sub_100037B2C();
  sub_100037A70(v36);
  Promise.then<A, B>(on:disposeOn:closure:)();

  sub_100030E08();
}

void sub_100034BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SevereNotificationContent();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = (aBlock - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  sub_100030944(0, &qword_1000A42F8, UNMutableNotificationContent_ptr);

  sub_1000505D4(v18);
  v20 = sub_1000737B8(v18);
  v21 = *(a6 + 16);
  v22 = String._bridgeToObjectiveC()();
  v23 = swift_allocObject();
  v23[2] = a7;
  v23[3] = a8;
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = sub_100037044;
  v23[7] = v19;
  aBlock[4] = sub_1000370C4;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035188;
  aBlock[3] = &unk_10009BC48;
  v24 = _Block_copy(aBlock);

  [v21 replaceContentForRequestWithIdentifier:v22 replacementContent:v20 completionHandler:v24];
  _Block_release(v24);
}

uint64_t sub_100034DE4(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t))
{
  v32 = a4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  if (a1)
  {
    swift_errorRetain();
    static Logger.notifications.getter();
    swift_errorRetain();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v10;
      v34 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_10000D9FC(a2, a3, &v34);
      *(v20 + 12) = 2082;
      v33 = a1;
      swift_errorRetain();
      sub_100003020(&qword_1000A37F0, &unk_100080850);
      v22 = String.init<A>(describing:)();
      v24 = sub_10000D9FC(v22, v23, &v34);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to replace content of notification: %{public}s with error: %{public}s", v20, 0x16u);
      swift_arrayDestroy();

      (*(v11 + 8))(v17, v31);
    }

    else
    {

      (*(v11 + 8))(v17, v10);
    }

    v32(a1);
  }

  else
  {
    static Logger.notifications.getter();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v31 = v10;
      v28 = v27;
      v29 = swift_slowAlloc();
      v34 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10000D9FC(a2, a3, &v34);
      _os_log_impl(&_mh_execute_header, v25, v26, "Replaced content of notification: %{public}s", v28, 0xCu);
      sub_100006994(v29);

      (*(v11 + 8))(v15, v31);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

    return a6(a2, a3);
  }
}

void sub_100035188(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1000351F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 24);
  ReferenceCountedLazy.increase()();
  sub_1000330E8(v4, v5, a3, v12);
  v7 = sub_100003020(&qword_1000A4020, &qword_100080F50);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = Promise.init(value:)();
  ReferenceCountedLazy.decrease()();

  return v10;
}

void sub_1000352C0()
{
  sub_100030E38();
  v2 = v1;
  v38 = *v0;
  v3 = type metadata accessor for SevereNotificationContent();
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
  v18 = v17 - v16;
  v19 = type metadata accessor for UUID();
  v20 = sub_100006FBC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_10000E970();
  sub_100037B1C();
  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  (*(v22 + 8))(v0, v19);
  static Logger.notifications.getter();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = sub_100031128();
    v37 = v10;
    v31 = v2;
    v32 = sub_100037B44();
    v39 = v32;
    *v30 = 136446210;
    *(v30 + 4) = sub_10000D9FC(v25, v27, &v39);
    _os_log_impl(&_mh_execute_header, v28, v29, "Scheduling notification with identifier %{public}s", v30, 0xCu);
    sub_100006994(v32);
    v2 = v31;
    sub_10000FA7C();
    sub_10000FA7C();

    (*(v13 + 8))(v18, v37);
  }

  else
  {

    (*(v13 + 8))(v18, v10);
  }

  sub_100030944(0, &qword_1000A42F0, UNNotificationRequest_ptr);
  sub_100030944(0, &qword_1000A42F8, UNMutableNotificationContent_ptr);
  sub_100037338(v2, v9, type metadata accessor for SevereNotificationContent);
  v33 = sub_1000737B8(v9);
  v34 = sub_100032F98(v25, v27, v33, 0);
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v35 = static OS_dispatch_queue.notifications.getter();
  *(swift_allocObject() + 16) = v34;
  v36 = v34;
  firstly<A, B>(on:disposeOn:closure:)();

  sub_100030E08();
}

uint64_t sub_100035634()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003566C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  return UNUserNotificationCenter.addNotificationRequest(_:)();
}

void sub_1000356A0()
{
  sub_100030E38();
  v1 = *v0;
  v2 = type metadata accessor for SevereMessage();
  v3 = sub_10000E960(v2);
  v39 = v4;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v3);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v8;
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = type metadata accessor for Logger();
  v13 = sub_100006FBC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_10000E970();
  sub_100037B1C();
  static Logger.notifications.getter();
  v18 = sub_100037A3C();
  sub_100037338(v18, v11, v19);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = sub_100031128();
    v35 = v12;
    v23 = v22;
    v24 = sub_100037B44();
    v38 = v0;
    v25 = v24;
    v41 = v24;
    *v23 = 136315138;
    v36 = v9;
    v37 = v1;
    v27 = *(v11 + 2);
    v26 = *(v11 + 3);

    sub_100037A9C();
    v28 = sub_10000D9FC(v27, v26, &v41);
    v9 = v36;

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Determining whether to revoke cancelled notifications for channel: %s", v23, 0xCu);
    sub_100006994(v25);
    sub_10000FA7C();
    sub_10000FA7C();

    (*(v15 + 8))(v0, v35);
  }

  else
  {

    sub_100037A9C();
    (*(v15 + 8))(v0, v12);
  }

  sub_100003020(&qword_1000A4300, &qword_100081330);
  firstly<A>(closure:)();
  v29 = sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.notifications.getter();
  v31 = sub_100037A3C();
  sub_100037338(v31, v9, v32);
  sub_100037AEC(v39);
  v33 = sub_100037B2C();
  sub_1000374FC(v9, v33 + v29, type metadata accessor for SevereMessage);
  Promise.then<A, B>(on:disposeOn:closure:)();

  sub_100030E08();
}

void sub_1000359F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  __chkstk_darwin(v6);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a1;
  v35 = a2;
  v42 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = ReferenceCountedLazy.increase()();
  v10 = 0;
  v41 = v43;
  v40 = a3;
  v11 = *(a3 + 32);
  v12 = *(v11 + 16);
  v13 = (v11 + 40);
  v14 = _swiftEmptyArrayStorage;
  while (v12 != v10)
  {
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
      return;
    }

    v16 = *(v13 - 1);
    v15 = *v13;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = v14[2];
      sub_10005B5C4();
      v14 = isUniquelyReferenced_nonNull_native;
    }

    v17 = v14[2];
    if (v17 >= v14[3] >> 1)
    {
      sub_10005B5C4();
      v14 = isUniquelyReferenced_nonNull_native;
    }

    v14[2] = v17 + 1;
    v18 = &v14[2 * v17];
    v18[4] = v16;
    v18[5] = v15;
    v13 += 5;
    ++v10;
  }

  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v20 = v39;
  v21 = v40;
  *(&v34 - 4) = v41;
  *(&v34 - 3) = v21;
  *(&v34 - 2) = v14;
  sub_1000326D0(sub_100036E18, (&v34 - 6), v20);
  v23 = v22;

  if (*(v23 + 16))
  {
    v24 = v38;
    static Logger.notifications.getter();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43 = v28;
      *v27 = 136446210;
      v29 = Array.description.getter();
      v31 = sub_10000D9FC(v29, v30, &v43);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Revoking notifications with identifiers: %{public}s", v27, 0xCu);
      sub_100006994(v28);

      (*(v36 + 8))(v38, v37);
    }

    else
    {

      (*(v36 + 8))(v24, v37);
    }

    v32 = *(v35 + 16);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v32 removeDeliveredNotificationsWithIdentifiers:isa];
  }

  else
  {
  }

  ReferenceCountedLazy.decrease()();
}

uint64_t sub_100035D78@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v122 = a4;
  v113 = a3;
  v131 = a5;
  v117 = type metadata accessor for Logger();
  v116 = *(v117 - 8);
  v7 = *(v116 + 64);
  __chkstk_darwin(v117);
  v115 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003020(&qword_1000A4308, &qword_100081338);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v121 = &v106 - v11;
  v12 = type metadata accessor for IncomingMessageEntity();
  v119 = *(v12 - 8);
  v120 = v12;
  v13 = *(v119 + 64);
  v14 = __chkstk_darwin(v12);
  v114 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v118 = &v106 - v16;
  v17 = type metadata accessor for SevereNotificationEntity.NotificationKind();
  v124 = *(v17 - 8);
  v125 = v17;
  v18 = *(v124 + 64);
  __chkstk_darwin(v17);
  v126 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003020(&qword_1000A4310, &unk_100081340);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v123 = &v106 - v22;
  v127 = type metadata accessor for SevereNotificationEntity();
  v23 = *(v127 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v127);
  v27 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v106 - v28;
  v30 = sub_100003020(&qword_1000A3808, &qword_100080F70);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v34 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v129 = (&v106 - v35);
  v36 = type metadata accessor for Expression();
  v37 = *(v36 - 8);
  v38 = v37[8];
  v39 = __chkstk_darwin(v36);
  v41 = &v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v128 = &v106 - v42;
  v130 = *a1;
  v43 = v138;
  NotificationStore.severeNotifications.getter();
  if (v43)
  {

LABEL_5:
    v55 = v131;
    *v131 = 0;
    v55[1] = 0;
    return result;
  }

  v107 = v41;
  v108 = v34;
  v138 = v37;
  v112 = v36;
  v109 = a2;
  v110 = v29;
  v111 = 0;
  dispatch thunk of Table.query.getter();

  v45 = [v130 identifier];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  v136 = &type metadata for String;
  v137 = &protocol witness table for String;
  v134 = v46;
  v135 = v48;
  v49 = v128;
  == infix(_:_:)();
  sub_100006994(&v134);
  v50 = v129;
  *v129 = 1702125924;
  *(v50 + 8) = 0xE400000000000000;
  v51 = enum case for OrderBy.descending(_:);
  v52 = type metadata accessor for OrderBy();
  (*(*(v52 - 8) + 104))(v50, v51, v52);
  sub_100006BD4(v50, 0, 1, v52);
  v53 = v111;
  v54 = dispatch thunk of Query.where(_:orderBy:limit:)();
  if (v53)
  {

    sub_10000E904(v50, &qword_1000A3808, &qword_100080F70);
    result = (v138[1])(v49, v112);
    goto LABEL_5;
  }

  v56 = v54;
  v106 = v52;
  v111 = 0;

  sub_10000E904(v50, &qword_1000A3808, &qword_100080F70);
  v129 = v138[1];
  v129(v49, v112);
  v57 = 0;
  v58 = *(v56 + 16);
  v59 = (v23 + 16);
  v138 = (v23 + 8);
  for (i = v127; ; (*v138)(v27, i))
  {
    if (v58 == v57)
    {
      goto LABEL_40;
    }

    if (v57 >= *(v56 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    (*(v23 + 16))(v27, v56 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v57, i);
    SevereNotificationEntity.replacementAlert.getter();
    dispatch thunk of Column.value.getter();

    if (v135 == 1)
    {
      break;
    }

    ++v57;
    sub_10000E344(v134, v135);
  }

  v59 = v110;
  (*(v23 + 32))(v110, v27, i);
  SevereNotificationEntity.notificationKind.getter();
  v61 = v123;
  dispatch thunk of Column.value.getter();

  v62 = sub_100003020(&qword_1000A4318, &qword_100081350);
  result = sub_100007374(v61, 1, v62);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_42;
  }

  v63 = v126;
  JSON.value.getter();
  (*(*(v62 - 8) + 8))(v61, v62);
  v65 = v124;
  v64 = v125;
  v66 = (*(v124 + 88))(v63, v125);
  v67 = v111;
  v68 = v108;
  if (v66 == enum case for SevereNotificationEntity.NotificationKind.periodic(_:))
  {
    goto LABEL_17;
  }

  if (v66 != enum case for SevereNotificationEntity.NotificationKind.cloudChannel(_:))
  {
    (*(v65 + 8))(v126, v64);
    goto LABEL_17;
  }

  NotificationStore.incomingMessages.getter();
  if (v67)
  {

    v80 = v120;
    (*v138)(v59, v127);
    v81 = v121;
    sub_100006BD4(v121, 1, 1, v80);
LABEL_23:
    result = sub_10000E904(v81, &qword_1000A4308, &qword_100081338);
    goto LABEL_5;
  }

  dispatch thunk of Table.query.getter();

  SevereNotificationEntity.messageIdentifier.getter();
  dispatch thunk of Column.value.getter();

  if (!v133)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v136 = &type metadata for String;
  v137 = &protocol witness table for String;
  v134 = v132;
  v135 = v133;
  == infix(_:_:)();
  sub_100006994(&v134);
  sub_100006BD4(v68, 1, 1, v106);
  v79 = v121;
  dispatch thunk of Query.first(_:orderBy:)();
  i = 0;

  sub_10000E904(v68, &qword_1000A3808, &qword_100080F70);
  v129(v107, v112);
  v57 = v120;
  v81 = v79;
  if (sub_100007374(v79, 1, v120) == 1)
  {
    (*v138)(v59, v127);

    goto LABEL_23;
  }

  v58 = v118;
  v23 = v119;
  (*(v119 + 32))(v118, v79, v57);
  IncomingMessageEntity.channel.getter();
  dispatch thunk of Column.value.getter();

  v82 = v135;
  if (v135 < 2)
  {
LABEL_34:
    v111 = i;

    v87 = v115;
    static Logger.notifications.getter();
    v88 = v114;
    (*(v23 + 16))(v114, v58, v57);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    v91 = os_log_type_enabled(v89, v90);
    v92 = v117;
    v93 = v58;
    v94 = v116;
    if (!v91)
    {
      v103 = v93;

      v104 = *(v23 + 8);
      v104(v88, v57);
      (*(v94 + 8))(v87, v92);
      v104(v103, v57);
      result = (*v138)(v59, v127);
      goto LABEL_5;
    }

    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v132 = v96;
    *v95 = 136315138;
    IncomingMessageEntity.messageID.getter();
    dispatch thunk of Column.value.getter();

    v97 = v135;
    if (v135)
    {
      v98 = v88;
      v99 = v134;
      v100 = v120;
      v101 = *(v119 + 8);
      v101(v98, v120);
      v102 = sub_10000D9FC(v99, v97, &v132);

      *(v95 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v89, v90, "Encountered incoming message without channel identifier: %s", v95, 0xCu);
      sub_100006994(v96);

      (*(v116 + 8))(v115, v117);
      v101(v118, v100);
      result = (*v138)(v110, v127);
      goto LABEL_5;
    }

    goto LABEL_44;
  }

  v83 = v134;
  if (v134 == *(v113 + 16) && v135 == *(v113 + 24))
  {
    sub_10000E344(v134, v135);
    (*(v23 + 8))(v58, v57);
    goto LABEL_17;
  }

  v111 = 0;
  v85 = v23;
  v86 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_10000E344(v83, v82);
  (*(v85 + 8))(v58, v57);
  if (v86)
  {
LABEL_17:
    SevereNotificationEntity.alertIdentifier.getter();
    dispatch thunk of Column.value.getter();

    v69 = v135;
    v70 = v122;
    v71 = v130;
    if (v135)
    {
      v72 = v134;

      v132 = v72;
      v133 = v69;
      __chkstk_darwin(v73);
      *(&v106 - 2) = &v132;
      LOBYTE(v72) = sub_100036E7C(sub_100036F58, (&v106 - 4), v70);

      if (v72)
      {
        result = (*v138)(v59, v127);
        goto LABEL_5;
      }

      v74 = [v71 identifier];
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      result = (*v138)(v59, v127);
      v78 = v131;
      *v131 = v75;
      v78[1] = v77;
      return result;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  (*v138)(v59, v127);
LABEL_40:

  v105 = v131;
  *v131 = 0;
  v105[1] = 0;
  return result;
}

uint64_t sub_100036C5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_100036CAC()
{
  v1 = (type metadata accessor for SevereMessage() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 32);

  v8 = v1[9];
  v9 = type metadata accessor for Date();
  sub_100007050(v9);
  (*(v10 + 8))(v0 + v3 + v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100036D98(unint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for SevereMessage();
  sub_100006FF0(v5);
  sub_1000359F4(a1, a2, v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)));
}

uint64_t sub_100036E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

BOOL sub_100036E7C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_100036FB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100007050(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10003700C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100037044(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_10003707C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000370D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000370EC()
{
  sub_100030E38();
  v2 = type metadata accessor for SevereNotification(0);
  sub_100030BE8(v2);
  v5 = *(v4 + 64);
  v6 = (v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v6 + 1);

  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(v6 + 3);

    v10 = *(v6 + 4);

    v11 = type metadata accessor for CloudChannelSevereNotification(0);
    v12 = &v6[*(v11 + 28)];
    v13 = *(v12 + 1);

    v14 = *(v12 + 3);

    v15 = *(v12 + 5);

    v16 = *(v12 + 7);

    v17 = *(v12 + 8);

    v18 = *(type metadata accessor for SevereNotificationContent() + 40);
    v19 = type metadata accessor for Date();
    if (!sub_100031070(v19))
    {
      (*(*(v1 - 8) + 8))(&v12[v18], v1);
    }

    v20 = (v11 + 32);
  }

  else
  {
    v21 = *(v6 + 2);

    v22 = type metadata accessor for PeriodicSevereNotification(0);
    v23 = &v6[*(v22 + 24)];
    v24 = *(v23 + 1);

    v25 = *(v23 + 3);

    v26 = *(v23 + 5);

    v27 = *(v23 + 7);

    v28 = *(v23 + 8);

    v29 = *(type metadata accessor for SevereNotificationContent() + 40);
    v30 = type metadata accessor for Date();
    if (!sub_100031070(v30))
    {
      (*(*(v1 - 8) + 8))(&v23[v29], v1);
    }

    v20 = (v22 + 28);
  }

  v31 = *v20;
  v32 = type metadata accessor for Location();
  sub_100007050(v32);
  (*(v33 + 8))(&v6[v31]);
  sub_100030E08();

  return _swift_deallocObject(v34, v35, v36);
}

uint64_t sub_100037338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100018904(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100037398()
{
  sub_100030E38();
  v1 = type metadata accessor for SevereNotificationSubscription();
  sub_100030BE8(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Location();
    sub_100007050(v7);
    (*(v8 + 8))(v0 + v3);
    v9 = type metadata accessor for ResolvedPredictedLocation();
    v10 = *(v9 + 24);
    v11 = type metadata accessor for Date();
    sub_100018904(v11);
    v13 = *(v12 + 8);
    v13(v6 + v10, v11);
    v13(v6 + *(v9 + 28), v11);
  }

  else
  {
    v14 = type metadata accessor for NotificationSubscription.Location();
    sub_100007050(v14);
    (*(v15 + 8))(v0 + v3);
  }

  sub_100030E08();

  return _swift_deallocObject(v16, v17, v18);
}

uint64_t sub_1000374FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100018904(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10003759C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, unint64_t))
{
  v8 = a3(0);
  sub_100006FF0(v8);
  return a4(a1, a2, v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80)));
}

uint64_t sub_100037620()
{
  sub_100030E38();
  v1 = type metadata accessor for SevereNotificationSubscription();
  sub_100030BE8(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for Location();
    sub_100007050(v8);
    (*(v9 + 8))(v0 + v3);
    v10 = type metadata accessor for ResolvedPredictedLocation();
    v11 = *(v10 + 24);
    v12 = type metadata accessor for Date();
    sub_100018904(v12);
    v14 = *(v13 + 8);
    v14(v7 + v11, v12);
    v14(v7 + *(v10 + 28), v12);
  }

  else
  {
    v15 = type metadata accessor for NotificationSubscription.Location();
    sub_100007050(v15);
    (*(v16 + 8))(v0 + v3);
  }

  v17 = *(v0 + ((v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  sub_100030E08();

  return _swift_deallocObject(v18, v19, v20);
}

uint64_t sub_1000377A8(uint64_t a1)
{
  v4 = type metadata accessor for SevereNotificationSubscription();
  sub_10000E960(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = *(v1 + 16);
  v9 = (v1 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000378C4;

  return sub_1000345C4(a1, v8, v1 + v6, v10, v11);
}

uint64_t sub_1000378C4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000379B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100037A70(uint64_t a1)
{

  return sub_1000374FC(v2, a1 + v1, type metadata accessor for SevereNotification);
}

uint64_t sub_100037A9C()
{

  return sub_100036FB8(v0, type metadata accessor for SevereMessage);
}

uint64_t sub_100037AC4()
{

  return sub_100036FB8(v0, type metadata accessor for SevereNotification);
}

uint64_t sub_100037AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 112) = v9;
  *(v10 - 104) = &a9 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  return 0;
}

uint64_t sub_100037B2C()
{

  return swift_allocObject();
}

uint64_t sub_100037B44()
{

  return swift_slowAlloc();
}

void sub_100037B8C()
{
  sub_100030E38();
  v3 = v2;
  v4 = v0;
  v6 = v5;
  v7 = type metadata accessor for ResolvedPredictedLocation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_10000E970();
  v11 = v10 - v9;
  v12 = type metadata accessor for NotificationSubscription.Location();
  v13 = sub_100006FBC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_10000E970();
  v18 = sub_100038978();
  v19 = sub_100018904(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_10000E970();
  v24 = v23 - v22;
  sub_10001868C(v4, v23 - v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000325A0(v24, v11);
    v25 = type metadata accessor for Location();
    sub_100018904(v25);
    (*(v26 + 16))(v6, v11);
    sub_100038938();
    sub_1000387D4(v11, v27);
  }

  else
  {
    v28 = sub_1000389BC();
    v30 = v29(v28);
    v3(v30);
    (*(v15 + 8))(v1, v12);
  }

  sub_100030E08();
}

void sub_100037D44()
{
  sub_100030E38();
  v39 = v1;
  v3 = v2;
  v38 = type metadata accessor for ResolvedPredictedLocation();
  v4 = sub_100018904(v38);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000E970();
  v9 = v8 - v7;
  v10 = type metadata accessor for NotificationSubscription.Location();
  v11 = sub_100006FBC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000E970();
  v16 = sub_100038978();
  v17 = sub_100018904(v16);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v38 - v23;
  v25 = sub_100003020(&qword_1000A4148, &qword_1000810C8);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v29 = &v38 - v28;
  v30 = *(v27 + 56);
  sub_10001868C(v3, &v38 - v28);
  sub_10001868C(v39, &v29[v30]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10001868C(v29, v24);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v13 + 32))(v0, &v29[v30], v10);
      static NotificationSubscription.Location.== infix(_:_:)();
      v35 = *(v13 + 8);
      v35(v0, v10);
      v35(v24, v10);
      sub_100038950();
      goto LABEL_14;
    }

    (*(v13 + 8))(v24, v10);
    goto LABEL_10;
  }

  sub_10001868C(v29, v22);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100038938();
    sub_1000387D4(v22, v34);
LABEL_10:
    sub_10003876C(v29);
    goto LABEL_14;
  }

  sub_1000325A0(&v29[v30], v9);
  if (static Location.== infix(_:_:)() & 1) != 0 && *&v22[v38[5]] == *(v9 + v38[5]) && (v31 = v38[6], (static Date.== infix(_:_:)()))
  {
    v32 = v38[7];
    static Date.== infix(_:_:)();
    sub_100038938();
    sub_1000387D4(v9, v33);
  }

  else
  {
    sub_100038938();
    sub_1000387D4(v9, v36);
  }

  sub_100038938();
  sub_1000387D4(v22, v37);
  sub_100038950();
LABEL_14:
  sub_100030E08();
}

void sub_10003807C()
{
  sub_100030E38();
  v2 = type metadata accessor for ResolvedPredictedLocation();
  v3 = sub_100018904(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000E970();
  v8 = v7 - v6;
  v9 = type metadata accessor for NotificationSubscription.Location();
  v10 = sub_100006FBC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000E970();
  v15 = sub_100038978();
  v16 = sub_100018904(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000E970();
  v21 = v20 - v19;
  sub_10001868C(v0, v20 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000325A0(v21, v8);
    Hasher._combine(_:)(1uLL);
    type metadata accessor for Location();
    sub_1000388F0(&qword_1000A4158, &type metadata accessor for Location);
    dispatch thunk of Hashable.hash(into:)();
    v22 = *(v8 + v2[5]);
    if (v22 == 0.0)
    {
      v22 = 0.0;
    }

    Hasher._combine(_:)(*&v22);
    v23 = v2[6];
    type metadata accessor for Date();
    sub_1000388F0(&qword_1000A4160, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    v24 = v8 + v2[7];
    dispatch thunk of Hashable.hash(into:)();
    sub_100038938();
    sub_1000387D4(v8, v25);
  }

  else
  {
    v26 = sub_1000389BC();
    v27(v26);
    Hasher._combine(_:)(0);
    sub_1000388F0(&qword_1000A4168, &type metadata accessor for NotificationSubscription.Location);
    dispatch thunk of Hashable.hash(into:)();
    (*(v12 + 8))(v1, v9);
  }

  sub_100030E08();
}

Swift::Int sub_100038330()
{
  Hasher.init(_seed:)();
  sub_10003807C();
  return Hasher._finalize()();
}

Swift::Int sub_10003837C()
{
  Hasher.init(_seed:)();
  sub_10003807C();
  return Hasher._finalize()();
}

void sub_1000383B8()
{
  sub_100030E38();
  v43 = v0;
  v1 = type metadata accessor for ResolvedPredictedLocation();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  sub_10000E970();
  v5 = v4 - v3;
  v44 = type metadata accessor for Location.Identifier();
  v6 = sub_100006FBC(v44);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000E970();
  v42 = type metadata accessor for Location();
  v9 = sub_100006FBC(v42);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10000E970();
  v16 = v15 - v14;
  v17 = type metadata accessor for NotificationSubscription.Location();
  v18 = sub_100006FBC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_10000E970();
  v25 = v24 - v23;
  v26 = type metadata accessor for SevereNotificationSubscription();
  v27 = sub_100018904(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_10000E970();
  v32 = v31 - v30;
  sub_10001868C(v43, v31 - v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000325A0(v32, v5);
    _StringGuts.grow(_:)(32);

    sub_1000389A8();
    Location.identifier.getter();
    v33 = Location.Identifier.uniqueID.getter();
    v34 = sub_100038994();
    v35(v34);
    v36._countAndFlagsBits = v33;
    v36._object = v11;
    String.append(_:)(v36);

    sub_100038938();
    sub_1000387D4(v5, v37);
  }

  else
  {
    (*(v20 + 32))(v25, v32, v17);
    _StringGuts.grow(_:)(35);

    sub_1000389A8();
    NotificationSubscription.Location.location.getter();
    Location.identifier.getter();
    v11[1](v16, v42);
    v38 = Location.Identifier.uniqueID.getter();
    v39 = sub_100038994();
    v40(v39);
    v41._countAndFlagsBits = v38;
    v41._object = v11 + 1;
    String.append(_:)(v41);

    (*(v20 + 8))(v25, v17);
  }

  sub_100030E08();
}

uint64_t type metadata accessor for SevereNotificationSubscription()
{
  result = qword_1000A43A0;
  if (!qword_1000A43A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003876C(uint64_t a1)
{
  v2 = sub_100003020(&qword_1000A4148, &qword_1000810C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000387D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100018904(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100038834()
{
  result = type metadata accessor for NotificationSubscription.Location();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ResolvedPredictedLocation();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000388F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100038950()
{

  return sub_1000387D4(v0, type metadata accessor for SevereNotificationSubscription);
}

uint64_t sub_100038978()
{

  return type metadata accessor for SevereNotificationSubscription();
}

uint64_t sub_100038994()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 104);
  return result;
}

uint64_t sub_1000389D0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 120) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100039C88();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 64) = v7;
  *(v2 + 72) = v6;

  return _swift_task_switch(sub_100038AD0, v7, v6);
}

uint64_t sub_100038AD0()
{
  v1 = *(v0 + 120);
  v2 = *sub_1000032B8((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_100038B7C;

  return sub_10004B484(v1 & 1);
}

uint64_t sub_100038B7C(uint64_t a1)
{
  v4 = *v2;
  sub_100030C64();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *v2;
  sub_100030C64();
  *v9 = v8;
  v4[11] = v1;

  if (v1)
  {
    v10 = v4[8];
    v11 = v4[9];

    return _swift_task_switch(sub_100038FBC, v10, v11);
  }

  else
  {
    v4[12] = a1;
    v12 = swift_task_alloc();
    v4[13] = v12;
    *v12 = v8;
    v12[1] = sub_100038CF8;
    v13 = v4[2];

    return sub_100039138(a1);
  }
}

uint64_t sub_100038CF8()
{
  v1 = *v0;
  sub_100030C64();
  *v3 = v2;
  v4 = v1[13];
  v5 = v1[12];
  v6 = *v0;
  sub_100030C64();
  *v7 = v6;
  *(v9 + 112) = v8;

  v10 = v1[9];
  v11 = v1[8];

  return _swift_task_switch(sub_100038E3C, v11, v10);
}

uint64_t sub_100038E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_100039F38();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  v23 = v20[14];
  v25 = v20[6];
  v24 = v20[7];

  static Logger.predictedLocations.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v20[14];
    v29 = v20[6];
    v30 = v20[3];
    v31 = v20[4];
    v32 = swift_slowAlloc();
    v33 = sub_100037B44();
    a9 = v33;
    sub_100039EC0(7.2225e-34);
    type metadata accessor for ResolvedPredictedLocation();
    v34 = Array.description.getter();
    v36 = sub_10000D9FC(v34, v35, &a9);

    *(v32 + 14) = v36;
    sub_100039F54(&_mh_execute_header, v37, v38, "Successfully refreshed predicted locations; resolvedPredictedLocations=%{private,mask.hash}s");
    sub_100006994(v33);
    sub_10000FA7C();
    sub_10000FA7C();

    v39 = *(v31 + 8);
  }

  else
  {
    v42 = v20[6];
    v43 = v20[3];
    v44 = v20[4];

    v45 = *(v44 + 8);
  }

  v40 = sub_100030CE0();
  v41(v40);
  v46 = v20[14];
  v48 = v20[5];
  v47 = v20[6];

  sub_100039EDC();
  sub_100039EA4();

  return v51(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12);
}

uint64_t sub_100038FBC()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[5];

  static Logger.predictedLocations.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to refresh predicted locations; error=%{public}@", v7, 0xCu);
    sub_100039CE0(v8);
    sub_10000FA7C();
    sub_10000FA7C();
  }

  v10 = v0[11];
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];

  (*(v12 + 8))(v11, v13);

  v15 = v0[5];
  v14 = v0[6];

  v16 = v0[1];

  return v16(_swiftEmptyArrayStorage);
}

uint64_t sub_100039138(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ResolvedPredictedLocation();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Location();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for PredictedLocation();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v2[15] = v12;
  v13 = *(v12 - 8);
  v2[16] = v13;
  v14 = *(v13 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100039C88();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[20] = v16;
  v2[21] = v15;

  return _swift_task_switch(sub_100039360, v16, v15);
}

uint64_t sub_100039360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100039F38();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  v23 = *(v20 + 144);
  v24 = *(v20 + 16);
  static Logger.predictedLocations.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v20 + 144);
  v29 = *(v20 + 120);
  v30 = *(v20 + 128);
  if (v27)
  {
    v31 = *(v20 + 80);
    v32 = *(v20 + 16);
    v33 = swift_slowAlloc();
    v34 = sub_100037B44();
    a9 = v34;
    sub_100039EC0(7.2225e-34);
    v35 = Array.description.getter();
    v37 = sub_10000D9FC(v35, v36, &a9);

    *(v33 + 14) = v37;
    sub_100039F54(&_mh_execute_header, v38, v39, "Will reverse geocode predicted locations; locations=%{private,mask.hash}s");
    sub_100006994(v34);
    sub_10000FA7C();
    sub_10000FA7C();
  }

  v40 = *(v30 + 8);
  v41 = sub_100030CE0();
  v40(v41);
  *(v20 + 176) = v40;
  v42 = *(v20 + 16);
  v43 = *(v42 + 16);
  *(v20 + 184) = v43;
  if (v43)
  {
    v44 = *(v20 + 112);
    v45 = *(v20 + 88);
    v46 = *(v20 + 24);
    v47 = *(v45 + 80);
    *(v20 + 240) = v47;
    v48 = *(v45 + 72);
    *(v20 + 200) = 0;
    *(v20 + 208) = _swiftEmptyArrayStorage;
    *(v20 + 192) = v48;
    sub_100039D48(v42 + ((v47 + 32) & ~v47), v44);
    *(v20 + 216) = sub_100039E30();
    v49 = async function pointer to Promise.resolveAsync()[1];
    v50 = swift_task_alloc();
    v51 = sub_100039EEC(v50);
    *v51 = v52;
    sub_100039E08(v51);
    sub_100039EA4();

    return Promise.resolveAsync()(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
  }

  else
  {
    v62 = *(v20 + 144);
    v61 = *(v20 + 152);
    v63 = *(v20 + 136);
    v65 = *(v20 + 104);
    v64 = *(v20 + 112);
    v66 = *(v20 + 96);
    v67 = *(v20 + 72);
    v68 = *(v20 + 48);

    v69 = *(v20 + 8);
    sub_100039EA4();

    return v72(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12);
  }
}

uint64_t sub_1000395AC()
{
  v2 = *v1;
  sub_100030C64();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  sub_100030C64();
  *v7 = v6;
  v2[29] = v0;

  if (v0)
  {
    v8 = v2[20];
    v9 = v2[21];
    v10 = sub_100039918;
  }

  else
  {
    v11 = v2[27];

    v8 = v2[20];
    v9 = v2[21];
    v10 = sub_1000396C0;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_1000396C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100039F38();
  v57 = v12[26];
  v14 = v12[13];
  v13 = v12[14];
  v15 = v12[10];
  v16 = v12[6];
  v17 = v12[4];
  (*(v12[8] + 16))(v16, v12[9], v12[7]);
  v18 = sub_100030CE0();
  sub_100039D48(v18, v19);
  *(v16 + v17[5]) = *(v14 + 16);
  v20 = *(v15 + 28);
  v21 = v17[6];
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 32);
  v23(v16 + v21, v14 + v20, v22);
  v23(v16 + v17[7], v14 + *(v15 + 32), v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v12[26];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v53 = *(v25 + 16);
    v54 = v12[26];
    sub_10005BAEC();
    v25 = v55;
  }

  v26 = *(v25 + 16);
  if (v26 >= *(v25 + 24) >> 1)
  {
    sub_10005BAEC();
    v25 = v56;
  }

  v27 = v12[14];
  v28 = v12[6];
  v29 = v12[5];
  (*(v12[8] + 8))(v12[9], v12[7]);
  sub_100039DAC(v27);
  *(v25 + 16) = v26 + 1;
  sub_1000325A0(v28, v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26);
  sub_100039F24();
  if (v31)
  {
    sub_100039EFC();

    sub_100039EDC();
    sub_100039EA4();

    return v34(v32, v33, v34, v35, v36, v37, v38, v39, v57, a10, a11, a12);
  }

  else
  {
    v12[25] = v30;
    v12[26] = v25;
    sub_100039E70(v30);
    v12[27] = sub_100039E30();
    v41 = async function pointer to Promise.resolveAsync()[1];
    v42 = swift_task_alloc();
    v43 = sub_100039EEC(v42);
    *v43 = v44;
    sub_100039E08();
    sub_100039EA4();

    return Promise.resolveAsync()(v45, v46, v47, v48, v49, v50, v51, v52, v57, a10, a11, a12);
  }
}

uint64_t sub_100039918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v63 = v12;
  v13 = v12[29];
  v14 = v12[27];
  v15 = v12[17];
  v16 = v12[14];
  v17 = v12[12];

  static Logger.predictedLocations.getter();
  sub_100039D48(v16, v17);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v12[29];
  v22 = v12[22];
  v23 = v12[16];
  v24 = v12[17];
  v25 = v12[14];
  v26 = v12[15];
  if (v20)
  {
    v61 = v12[22];
    v27 = v12[12];
    v28 = v12[13];
    v29 = v12[10];
    v60 = v12[14];
    v30 = sub_100037B44();
    v59 = v26;
    v31 = swift_slowAlloc();
    v58 = v24;
    v32 = sub_100037B44();
    v62 = v32;
    *v30 = 138412803;
    swift_errorRetain();
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v33;
    *v31 = v33;
    *(v30 + 12) = 2160;
    *(v30 + 14) = 1752392040;
    *(v30 + 22) = 2081;
    sub_100039D48(v27, v28);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    sub_100039DAC(v27);
    v37 = sub_10000D9FC(v34, v36, &v62);

    *(v30 + 24) = v37;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to reverse geocode predicted location. Will be dropped from predicted locations list; error=%@, location=%{private,mask.hash}s", v30, 0x20u);
    sub_100039CE0(v31);
    sub_10000FA7C();
    sub_100006994(v32);
    sub_10000FA7C();
    sub_10000FA7C();

    v61(v58, v59);
    v38 = v60;
  }

  else
  {
    v39 = v12[12];

    sub_100039DAC(v39);
    v22(v24, v26);
    v38 = v25;
  }

  sub_100039DAC(v38);
  sub_100039F24();
  if (v41)
  {
    v42 = v12[26];
    sub_100039EFC();

    v43 = sub_100039EDC();

    return v44(v43);
  }

  else
  {
    v12[25] = v40;
    sub_100039E70(v40);
    v12[27] = sub_100039E30();
    v46 = async function pointer to Promise.resolveAsync()[1];
    v47 = swift_task_alloc();
    v48 = sub_100039EEC(v47);
    *v48 = v49;
    v50 = sub_100039E08();

    return Promise.resolveAsync()(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12);
  }
}

uint64_t sub_100039C24()
{
  sub_100006994((v0 + 16));
  sub_100006994((v0 + 56));

  return _swift_deallocClassInstance(v0, 96, 7);
}

unint64_t sub_100039C88()
{
  result = qword_1000A4488;
  if (!qword_1000A4488)
  {
    type metadata accessor for LocIntelActor.Actor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4488);
  }

  return result;
}

uint64_t sub_100039CE0(uint64_t a1)
{
  v2 = sub_100003020(&qword_1000A4030, &qword_100080F58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100039D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039DAC(uint64_t a1)
{
  v2 = type metadata accessor for PredictedLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100039E30()
{
  v2 = v1[10];
  v3 = v1[11];
  sub_1000032B8(v1 + 7, v2);
  v4.n128_u64[0] = *v0;
  v5.n128_u64[0] = v0[1];

  return dispatch thunk of GeocodeManagerType.reverseGeocode(coordinate:)(v2, v3, v4, v5);
}

uint64_t sub_100039E70@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16) + ((*(v1 + 240) + 32) & ~*(v1 + 240)) + *(v1 + 192) * a1;
  v5 = *(v1 + 112);

  return sub_100039D48(v4, v5);
}

void sub_100039EC0(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t sub_100039EFC()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[6];
}

void sub_100039F54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100039F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = a1 + *(a3 + 28);

  return sub_100007374(v7, a2, v6);
}

uint64_t sub_100039FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = a1 + *(a4 + 28);

  return sub_100006BD4(v8, a2, a2, v7);
}

uint64_t type metadata accessor for PredictedLocation()
{
  result = qword_1000A44E8;
  if (!qword_1000A44E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003A09C()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10003A168(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  v2 = type metadata accessor for PredictedLocation();
  v3 = *(v2 + 28);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 32);

  return static Date.== infix(_:_:)();
}

uint64_t sub_10003A214()
{
  v1 = v0;
  v2 = *v0;
  if (*v0 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v0[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = v0[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = type metadata accessor for PredictedLocation();
  v6 = *(v5 + 28);
  type metadata accessor for Date();
  sub_10003A39C(&qword_1000A4160, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v7 = v1 + *(v5 + 32);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10003A314()
{
  Hasher.init(_seed:)();
  sub_10003A214();
  return Hasher._finalize()();
}

Swift::Int sub_10003A360()
{
  Hasher.init(_seed:)();
  sub_10003A214();
  return Hasher._finalize()();
}

uint64_t sub_10003A39C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10003A3E4()
{
  v1 = v0;
  v2 = type metadata accessor for PredictedLocationsConfiguration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0[22];

  SettingProperty.wrappedValue.getter();

  if (v20 == 1)
  {
    v13 = v1[23];

    SettingProperty.wrappedValue.getter();

    v14 = v20;
    v15 = v1[23];

    SettingProperty.wrappedValue.getter();
  }

  else
  {
    v16 = v1[21];
    sub_1000032B8(v1 + 17, v1[20]);
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    AppConfiguration.predictedLocations.getter();
    PredictedLocationsConfiguration.firstSchedulingInterval.getter();
    v14 = v17;
    PredictedLocationsConfiguration.reschedulingIntervalForDonations.getter();
    PredictedLocationsConfiguration.reschedulingGracePeriodInterval.getter();
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  return v14;
}

uint64_t sub_10003A634(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for XPCActivity();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  __chkstk_darwin(v8);
  v41 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for PredictedLocationsRefresh();
  v11 = *(*(v45 - 8) + 64);
  v12 = __chkstk_darwin(v45);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.predictedLocationIntentDonations.getter();
  v44 = a1;
  sub_100007E24(a1, v16);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v17;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = v7;
    v27 = v26;
    v46 = v26;
    *v25 = 136446210;
    sub_100007E24(v16, v14);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    sub_100007E88(v16);
    v31 = sub_10000D9FC(v28, v30, &v46);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "Will schedule refresh: %{public}s", v25, 0xCu);
    sub_100006994(v27);
    v7 = v40;

    (*(v18 + 8))(v21, v39);
  }

  else
  {

    sub_100007E88(v16);
    (*(v18 + 8))(v21, v17);
  }

  v32 = v2[6];
  sub_1000032B8(v2 + 2, v2[5]);
  v33 = v41;
  static XPCActivity.predictedLocationIntentDonations.getter();
  v34 = v44;
  v35 = *(v44 + *(v45 + 20));
  dispatch thunk of XPCActivityManagerType.scheduleActivity(_:on:with:)();
  (*(v42 + 8))(v33, v43);
  v36 = v2[11];
  sub_1000032B8(v2 + 7, v2[10]);
  v37 = type metadata accessor for Date();
  (*(*(v37 - 8) + 16))(v7, v34, v37);
  sub_100006BD4(v7, 0, 1, v37);
  dispatch thunk of PredictedLocationsScheduleStoreType.recordNextRefresh(at:)();
  return sub_100018858(v7, &qword_1000A3800, &unk_100080860);
}

uint64_t sub_10003AA50@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v6 = sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100006FF0(v6);
  v8 = *(v7 + 64);
  sub_100018920();
  __chkstk_darwin(v9);
  v53 = &v47 - v10;
  v11 = sub_100003020(&qword_1000A4600, &qword_100081A30);
  v12 = sub_100018904(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100015754();
  v17 = v15 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v47 - v20;
  __chkstk_darwin(v19);
  v23 = &v47 - v22;
  v51 = type metadata accessor for Logger();
  v24 = sub_100006FBC(v51);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  sub_10003C888();
  v49 = v3;
  sub_10003AE6C(v3, a1, a3);
  static Logger.predictedLocationIntentDonations.getter();
  v50 = a3;
  sub_10003C7D0(a3, v23, &qword_1000A4600, &qword_100081A30);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v48 = v17;
    v33 = v32;
    v54[0] = v32;
    *v31 = 136446210;
    sub_10003C7D0(v23, v21, &qword_1000A4600, &qword_100081A30);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    sub_100018858(v23, &qword_1000A4600, &qword_100081A30);
    v37 = sub_10000D9FC(v34, v36, v54);

    *(v31 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "Calculated next refresh: %{public}s", v31, 0xCu);
    sub_100006994(v33);
    v17 = v48;
    sub_10000FA7C();
    sub_10000FA7C();
  }

  else
  {

    sub_100018858(v23, &qword_1000A4600, &qword_100081A30);
  }

  result = (*(v26 + 8))(v3, v51);
  if (v52)
  {
    sub_100006930((v49 + 7), v54);
    sub_1000032B8(v54, v54[3]);
    sub_10003C7D0(v50, v17, &qword_1000A4600, &qword_100081A30);
    v39 = type metadata accessor for PredictedLocationsRefresh();
    if (sub_100007374(v17, 1, v39) == 1)
    {
      sub_100018858(v17, &qword_1000A4600, &qword_100081A30);
      v40 = type metadata accessor for Date();
      v41 = v53;
      v42 = 1;
    }

    else
    {
      v43 = type metadata accessor for Date();
      sub_100018904(v43);
      v45 = v53;
      (*(v44 + 16))(v53, v17, v43);
      sub_100007E88(v17);
      v41 = v45;
      v42 = 0;
      v40 = v43;
    }

    sub_100006BD4(v41, v42, 1, v40);
    v46 = v53;
    dispatch thunk of PredictedLocationsScheduleStoreType.recordNextRefresh(at:)();
    sub_100018858(v46, &qword_1000A3800, &unk_100080860);
    return sub_100006994(v54);
  }

  return result;
}

uint64_t sub_10003AE6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v130 = a2;
  v5 = type metadata accessor for Logger();
  v133 = *(v5 - 8);
  v134 = v5;
  v6 = *(v133 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v120 = &v113 - v11;
  __chkstk_darwin(v10);
  v126 = &v113 - v12;
  v118 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v13 = *(*(v118 - 8) + 64);
  v14 = __chkstk_darwin(v118);
  v125 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v117 = &v113 - v17;
  v18 = __chkstk_darwin(v16);
  v124 = &v113 - v19;
  v20 = __chkstk_darwin(v18);
  v123 = &v113 - v21;
  v22 = __chkstk_darwin(v20);
  v121 = &v113 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v113 - v25;
  __chkstk_darwin(v24);
  v132 = &v113 - v27;
  v131 = type metadata accessor for Date();
  v128 = *(v131 - 8);
  v28 = *(v128 + 64);
  v29 = __chkstk_darwin(v131);
  v119 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v33 = &v113 - v32;
  v34 = __chkstk_darwin(v31);
  v122 = &v113 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v113 - v37;
  v39 = __chkstk_darwin(v36);
  v127 = &v113 - v40;
  __chkstk_darwin(v39);
  v129 = &v113 - v41;
  v42 = type metadata accessor for PredictedLocationsFeatureState();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = __chkstk_darwin(v42);
  v47 = &v113 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v49 = &v113 - v48;
  if (WDWeatherAppIsInstalled())
  {
    v115 = v33;
    v116 = a3;
    v50 = a1[16];
    sub_1000032B8(a1 + 12, a1[15]);
    dispatch thunk of PredictedLocationsFeatureStateManagerType.syncIntentDonationFeatureState()();
    (*(v43 + 104))(v47, enum case for PredictedLocationsFeatureState.active(_:), v42);
    LOBYTE(v50) = static PredictedLocationsFeatureState.== infix(_:_:)();
    v51 = *(v43 + 8);
    v51(v47, v42);
    v51(v49, v42);
    if (v50)
    {
      v52 = v129;
      Date.init()();
      v53 = sub_10003A3E4();
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v60 = a1[11];
      sub_1000032B8(a1 + 7, a1[10]);
      v61 = v132;
      dispatch thunk of PredictedLocationsScheduleStoreType.mostRecentRefreshDate()();
      v62 = a1[11];
      sub_1000032B8(a1 + 7, a1[10]);
      dispatch thunk of PredictedLocationsScheduleStoreType.nextScheduledRefreshDate()();
      v63 = v131;
      sub_100007374(v26, 1, v131);
      sub_100018858(v26, &qword_1000A3800, &unk_100080860);
      v64 = v61;
      v65 = v121;
      sub_10003C7D0(v64, v121, &qword_1000A3800, &unk_100080860);
      if (sub_100007374(v65, 1, v63) == 1)
      {
        v66 = v128;
        (*(v128 + 16))(v38, v52, v63);
        v67 = sub_100007374(v65, 1, v63);
        v68 = v126;
        v69 = v127;
        v70 = v122;
        if (v67 != 1)
        {
          sub_100018858(v65, &qword_1000A3800, &unk_100080860);
        }
      }

      else
      {
        v66 = v128;
        (*(v128 + 32))(v38, v65, v63);
        v68 = v126;
        v69 = v127;
        v70 = v122;
      }

      sub_100068054(v69);
      v122 = *(v66 + 8);
      (v122)(v38, v63);
      static Logger.predictedLocationIntentDonations.getter();
      v81 = v123;
      sub_10003C7D0(v132, v123, &qword_1000A3800, &unk_100080860);
      (*(v66 + 16))(v70, v69, v63);
      v82 = v124;
      sub_10003C7D0(v130, v124, &qword_1000A3800, &unk_100080860);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v139[0] = v120;
        *v85 = 136446978;
        v135 = v53;
        v136 = v55;
        v137 = v57;
        v138 = v59;
        v86 = String.init<A>(describing:)();
        v114 = v84;
        v88 = sub_10000D9FC(v86, v87, v139);

        *(v85 + 4) = v88;
        *(v85 + 12) = 2080;
        v89 = v117;
        v121 = v66 + 8;
        sub_10003C7D0(v81, v117, &qword_1000A3800, &unk_100080860);
        v113 = v83;
        v90 = String.init<A>(describing:)();
        v92 = v91;
        sub_100018858(v81, &qword_1000A3800, &unk_100080860);
        v93 = sub_10000D9FC(v90, v92, v139);

        *(v85 + 14) = v93;
        *(v85 + 22) = 2080;
        sub_10003C830();
        v94 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v95;
        (v122)(v70, v131);
        v97 = sub_10000D9FC(v94, v96, v139);

        *(v85 + 24) = v97;
        *(v85 + 32) = 2080;
        v66 = v128;
        sub_10003C7D0(v82, v89, &qword_1000A3800, &unk_100080860);
        v98 = String.init<A>(describing:)();
        v100 = v99;
        v69 = v127;
        sub_100018858(v82, &qword_1000A3800, &unk_100080860);
        v101 = sub_10000D9FC(v98, v100, v139);

        *(v85 + 34) = v101;
        v102 = v113;
        _os_log_impl(&_mh_execute_header, v113, v114, "Will determine next refresh, config=%{public}s, lastRefresh=%s, nextLogicalRefreshDate=%s, currentScheduledDate=%s)", v85, 0x2Au);
        swift_arrayDestroy();

        v63 = v131;

        (*(v133 + 8))(v126, v134);
        v103 = v122;
      }

      else
      {

        sub_100018858(v82, &qword_1000A3800, &unk_100080860);
        v103 = v122;
        (v122)(v70, v63);
        sub_100018858(v81, &qword_1000A3800, &unk_100080860);
        (*(v133 + 8))(v68, v134);
      }

      v104 = v125;
      sub_10003C7D0(v130, v125, &qword_1000A3800, &unk_100080860);
      if (sub_100007374(v104, 1, v63) == 1)
      {
        sub_100018858(v132, &qword_1000A3800, &unk_100080860);
        v103(v129, v63);
        sub_100018858(v104, &qword_1000A3800, &unk_100080860);
        v105 = *(v66 + 32);
      }

      else
      {
        v105 = *(v66 + 32);
        v106 = v119;
        v105();
        v107 = v129;
        if (static Date.> infix(_:_:)())
        {
          v108 = static Date.< infix(_:_:)();
          sub_100018858(v132, &qword_1000A3800, &unk_100080860);
          v103(v107, v63);
          if (v108)
          {
            v103(v69, v63);
            v109 = v115;
            (v105)(v115, v106, v63);
LABEL_26:
            v111 = v116;
            (v105)(v116, v109, v63);
            v74 = type metadata accessor for PredictedLocationsRefresh();
            *(v111 + *(v74 + 20)) = v57;
            v75 = v111;
            v80 = 0;
            return sub_100006BD4(v75, v80, 1, v74);
          }

          v110 = v106;
        }

        else
        {
          v103(v106, v63);
          sub_100018858(v132, &qword_1000A3800, &unk_100080860);
          v110 = v107;
        }

        v103(v110, v63);
      }

      v109 = v115;
      (v105)(v115, v69, v63);
      goto LABEL_26;
    }

    v76 = v120;
    static Logger.predictedLocationIntentDonations.getter();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "Intent donation feature state is not active; no next refresh", v79, 2u);
    }

    (*(v133 + 8))(v76, v134);
    v74 = type metadata accessor for PredictedLocationsRefresh();
    v75 = v116;
  }

  else
  {
    static Logger.predictedLocationIntentDonations.getter();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Weather app was uninstalled; no next refresh", v73, 2u);
    }

    (*(v133 + 8))(v9, v134);
    v74 = type metadata accessor for PredictedLocationsRefresh();
    v75 = a3;
  }

  v80 = 1;
  return sub_100006BD4(v75, v80, 1, v74);
}

uint64_t sub_10003BBA0(uint64_t a1, uint64_t a2)
{
  v99 = a1;
  v3 = type metadata accessor for Date();
  v4 = sub_100006FBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100015754();
  v91 = (v9 - v10);
  sub_100030F24();
  __chkstk_darwin(v11);
  v92 = &v86[-v12];
  v13 = type metadata accessor for Logger();
  v14 = sub_100006FBC(v13);
  v97 = v15;
  v98 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_100015754();
  v93 = v18 - v19;
  sub_100030F24();
  __chkstk_darwin(v20);
  v95 = &v86[-v21];
  v22 = sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100006FF0(v22);
  v24 = *(v23 + 64);
  sub_100018920();
  __chkstk_darwin(v25);
  v27 = &v86[-v26];
  v28 = sub_100003020(&qword_1000A4600, &qword_100081A30);
  sub_100006FF0(v28);
  v30 = *(v29 + 64);
  sub_100018920();
  __chkstk_darwin(v31);
  v33 = &v86[-v32];
  v34 = type metadata accessor for PredictedLocationsRefresh();
  v35 = sub_100018904(v34);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  sub_100015754();
  v90 = v38 - v39;
  sub_100030F24();
  __chkstk_darwin(v40);
  v89 = &v86[-v41];
  sub_100030F24();
  __chkstk_darwin(v42);
  v44 = &v86[-v43];
  v96 = v6;
  v45 = *(v6 + 16);
  v46 = a2;
  (v45)(v27, a2, v3);
  sub_100006BD4(v27, 0, 1, v3);
  sub_10003AA50(v27, 1, v33);
  sub_100018858(v27, &qword_1000A3800, &unk_100080860);
  v94 = v34;
  v47 = sub_100007374(v33, 1, v34);
  if (v47 == 1)
  {
    sub_100018858(v33, &qword_1000A4600, &qword_100081A30);
    v48 = v93;
    static Logger.predictedLocationIntentDonations.getter();
    v49 = sub_10003C8B4();
    v45(v49);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v100 = v53;
      *v52 = 136446210;
      sub_10003C830();
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v57 = sub_10003C8A0();
      v58(v57);
      v59 = sub_10000D9FC(v54, v56, &v100);

      *(v52 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v50, v51, "Verified schedule date=%{public}s, will reject rescheduling.", v52, 0xCu);
      sub_100006994(v53);
      sub_10000FA7C();
      sub_10000FA7C();
    }

    else
    {

      v79 = sub_10003C8A0();
      v80(v79);
    }

    (*(v97 + 8))(v48, v98);
    sub_100006BD4(v99, 1, 1, v46);
    return 0;
  }

  else
  {
    sub_10003C76C(v33, v44);
    static Logger.predictedLocationIntentDonations.getter();
    v60 = v92;
    v61 = sub_10003C8B4();
    v45(v61);
    v62 = v89;
    sub_100007E24(v44, v89);
    v63 = v90;
    sub_100007E24(v44, v90);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v91 = v45;
      v67 = v66;
      v88 = swift_slowAlloc();
      v100 = v88;
      *v67 = 136446722;
      sub_10003C830();
      LODWORD(v93) = v47;
      v87 = v65;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v60;
      v71 = v70;
      (*(v96 + 8))(v69, v46);
      v72 = sub_10000D9FC(v68, v71, &v100);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2082;
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      sub_100007E88(v62);
      v76 = sub_10000D9FC(v73, v75, &v100);

      *(v67 + 14) = v76;
      *(v67 + 22) = 2050;
      v77 = v94;
      v78 = *(v63 + *(v94 + 20));
      sub_100007E88(v63);
      *(v67 + 24) = v78;
      _os_log_impl(&_mh_execute_header, v64, v87, "Verified schedule date=%{public}s returning date=%{public}s gracePeriod=%{public}f", v67, 0x20u);
      swift_arrayDestroy();
      sub_10000FA7C();
      v45 = v91;
      sub_10000FA7C();

      (*(v97 + 8))(v95, v98);
    }

    else
    {

      sub_100007E88(v63);
      sub_100007E88(v62);
      v82 = sub_10003C8A0();
      v83(v82);
      (*(v97 + 8))(v95, v98);
      v77 = v94;
    }

    v84 = v99;
    (v45)(v99, v44, v46);
    sub_100006BD4(v84, 0, 1, v46);
    v81 = *&v44[*(v77 + 20)];
    sub_100007E88(v44);
  }

  return v81;
}

uint64_t sub_10003C268@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100006FF0(v3);
  v5 = *(v4 + 64);
  sub_100018920();
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = sub_100003020(&qword_1000A4600, &qword_100081A30);
  sub_100006FF0(v9);
  v11 = *(v10 + 64);
  sub_100018920();
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for Logger();
  v16 = sub_100006FBC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_10003C888();
  static Logger.predictedLocationIntentDonations.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Will attempt to reschedule", v23, 2u);
    sub_10000FA7C();
  }

  (*(v18 + 8))(v1, v15);
  v24 = type metadata accessor for Date();
  sub_100006BD4(v8, 1, 1, v24);
  sub_10003AA50(v8, 1, v14);
  sub_100018858(v8, &qword_1000A3800, &unk_100080860);
  v25 = type metadata accessor for PredictedLocationsRefresh();
  if (sub_100007374(v14, 1, v25) == 1)
  {
    sub_100018858(v14, &qword_1000A4600, &qword_100081A30);
    sub_10003C4D8();
    v26 = 1;
  }

  else
  {
    sub_10003C76C(v14, a1);
    sub_10003A634(a1);
    v26 = 0;
  }

  return sub_100006BD4(a1, v26, 1, v25);
}

uint64_t sub_10003C4D8()
{
  v1 = type metadata accessor for XPCActivity();
  v2 = sub_100006FBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = sub_100006FBC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10003C888();
  static Logger.predictedLocationIntentDonations.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Will unschedule next refresh", v17, 2u);
    sub_10000FA7C();
  }

  (*(v12 + 8))(v0, v9);
  v18 = v0[6];
  sub_1000032B8(v0 + 2, v0[5]);
  static XPCActivity.predictedLocationIntentDonations.getter();
  dispatch thunk of XPCActivityManagerType.unscheduleActivity(_:)();
  (*(v4 + 8))(v8, v1);
  v19 = v0[11];
  sub_1000032B8(v0 + 7, v0[10]);
  return dispatch thunk of PredictedLocationsScheduleStoreType.clearNextRefreshRecord()();
}

uint64_t *sub_10003C6CC()
{
  sub_100006994(v0 + 2);
  sub_100006994(v0 + 7);
  sub_100006994(v0 + 12);
  sub_100006994(v0 + 17);
  v1 = v0[22];

  v2 = v0[23];

  return v0;
}

uint64_t sub_10003C714()
{
  sub_10003C6CC();

  return _swift_deallocClassInstance(v0, 192, 7);
}

uint64_t sub_10003C76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedLocationsRefresh();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003C7D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003020(a3, a4);
  sub_100018904(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_10003C830()
{
  result = qword_1000A4198;
  if (!qword_1000A4198)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4198);
  }

  return result;
}

uint64_t sub_10003C8C8(__int128 *a1, __int128 *a2, __int128 *a3)
{
  sub_100006D78(a1, v3 + 16);
  sub_100006D78(a2, v3 + 56);
  sub_100006D78(a3, v3 + 96);
  return v3;
}

uint64_t sub_10003C918()
{
  v1 = type metadata accessor for AppConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[16];
  sub_1000032B8(v0 + 12, v0[15]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v7 = AppConfiguration.locationDecimalPrecision.getter();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_10003CA0C(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = *v2;
  v4 = type metadata accessor for Logger();
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = type metadata accessor for LocationCoordinate();
  v3[21] = v7;
  v8 = *(v7 - 8);
  v3[22] = v8;
  v9 = *(v8 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v10 = type metadata accessor for WeatherAlerts();
  v3[25] = v10;
  v11 = *(v10 - 8);
  v3[26] = v11;
  v12 = *(v11 + 64) + 15;
  v3[27] = swift_task_alloc();
  v13 = type metadata accessor for WeatherDataResponse();
  v3[28] = v13;
  v14 = *(v13 - 8);
  v3[29] = v14;
  v15 = *(v14 + 64) + 15;
  v3[30] = swift_task_alloc();
  v16 = *(*(sub_100003020(&qword_1000A46D0, &qword_100081718) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v17 = type metadata accessor for Units();
  v3[33] = v17;
  v18 = *(v17 - 8);
  v3[34] = v18;
  v19 = *(v18 + 64) + 15;
  v3[35] = swift_task_alloc();
  v20 = *(*(sub_100003020(&qword_1000A46D8, &qword_100081720) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v21 = *(*(sub_100003020(&qword_1000A46E0, &qword_100081728) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v22 = *(*(sub_100003020(&qword_1000A46E8, &qword_100081730) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v23 = *(*(sub_100003020(&qword_1000A46F0, &qword_100081738) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v24 = *(*(sub_100003020(&qword_1000A46F8, &qword_100081740) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v25 = *(*(sub_100003020(&qword_1000A4700, &qword_100081748) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v26 = type metadata accessor for WeatherDataCaching.Options();
  v3[43] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v28 = *(*(sub_100003020(&qword_1000A4708, &qword_100081750) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v29 = *(*(sub_100003020(&qword_1000A4710, &qword_100081758) - 8) + 64) + 15;
  v3[46] = swift_task_alloc();
  v30 = type metadata accessor for WeatherDataRequestOptions();
  v3[47] = v30;
  v31 = *(v30 - 8);
  v3[48] = v31;
  v32 = *(v31 + 64) + 15;
  v3[49] = swift_task_alloc();
  v33 = *(*(sub_100003020(&qword_1000A4718, &unk_100081760) - 8) + 64) + 15;
  v3[50] = swift_task_alloc();
  v34 = type metadata accessor for WeatherServiceRequestLocation();
  v3[51] = v34;
  v35 = *(v34 - 8);
  v3[52] = v35;
  v36 = *(v35 + 64) + 15;
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v37 = sub_100003020(&qword_1000A4720, &qword_1000822B0);
  v3[55] = v37;
  v38 = *(v37 - 8);
  v3[56] = v38;
  v39 = *(v38 + 64) + 15;
  v3[57] = swift_task_alloc();
  v40 = type metadata accessor for ResolvedPredictedLocation();
  v3[58] = v40;
  v41 = *(v40 - 8);
  v3[59] = v41;
  v42 = *(v41 + 64) + 15;
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v43 = sub_100003020(&qword_1000A3C18, &qword_100081770);
  v3[65] = v43;
  v44 = *(v43 - 8);
  v3[66] = v44;
  v45 = *(v44 + 64) + 15;
  v3[67] = swift_task_alloc();

  return _swift_task_switch(sub_10003D124, 0, 0);
}

uint64_t sub_10003D124()
{
  v1 = *(*(v0 + 96) + 16);
  *(v0 + 544) = v1;
  if (!v1)
  {
    v22 = *(v0 + 464);
    sub_100003020(&qword_1000A3B88, &qword_100080FA0);
    sub_1000435DC();
    sub_100042EB8(v23, 255, v24);
    Dictionary.init(dictionaryLiteral:)();
    goto LABEL_12;
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  static Settings.LocationIntelligence.Debug.useMockedWeatherAlert.getter();
  sub_100042EB8(&qword_1000A4728, v4, type metadata accessor for PredictedLocationsWeatherAlertService);
  Configurable.setting<A>(_:)();

  if (*(v0 + 600) == 1)
  {
    v5 = *(v0 + 528);
    v35 = *(v0 + 520);
    v6 = *(v0 + 472);
    v7 = *(v0 + 96);
    sub_10001482C(0, v1, 0);
    v8 = *(v6 + 80);
    sub_100043674();
    v10 = v7 + v9;
    v34 = *(v6 + 72);
    do
    {
      v11 = *(v0 + 536);
      v12 = *(v0 + 512);
      v13 = *(v0 + 112);
      sub_100042EFC(v10, v12, type metadata accessor for ResolvedPredictedLocation);
      v14 = *(v35 + 48);
      sub_100042EFC(v12, v11, type metadata accessor for ResolvedPredictedLocation);
      v15 = sub_10003E8D0(v12);
      sub_100042F58(v12, type metadata accessor for ResolvedPredictedLocation);
      *(v11 + v14) = v15;
      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_10001482C(v16 > 1, v17 + 1, 1);
      }

      v18 = *(v0 + 536);
      _swiftEmptyArrayStorage[2] = v17 + 1;
      v19 = *(v5 + 80);
      sub_100043674();
      sub_100043558(v21, _swiftEmptyArrayStorage + v20 + *(v5 + 72) * v17, &qword_1000A3C18, &qword_100081770);
      v10 += v34;
      --v1;
    }

    while (v1);
    sub_10003ED54(_swiftEmptyArrayStorage, &qword_1000A4750, &unk_100081788, sub_100042168);
LABEL_12:
    sub_1000435F4();
    sub_100043680();

    v31 = *(v0 + 8);
    sub_1000436E0();

    __asm { BRAA            X2, X16 }
  }

  v25 = swift_task_alloc();
  *(v0 + 552) = v25;
  *v25 = v0;
  v25[1] = sub_10003D530;
  v26 = *(v0 + 112);
  v27 = *(v0 + 96);
  sub_1000436E0();

  return sub_10003EE04(v28);
}

uint64_t sub_10003D530()
{
  sub_100030C4C();
  sub_100043668();
  sub_100030C64();
  *v2 = v1;
  v4 = *(v3 + 552);
  *v2 = *v0;
  *(v1 + 560) = v5;

  v6 = sub_100043658();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10003D61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = 0;
  v14 = v12[70];
  v15 = v12[56];
  v93 = v12[55];
  v16 = *(v14 + 16);
  v89 = v12[52];
  v91 = (v89 + 32);
  v95 = _swiftEmptyArrayStorage;
  while (1)
  {
    v12[71] = v95;
    if (v16 == v13)
    {
      break;
    }

    if (v13 >= *(v14 + 16))
    {
      __break(1u);
      return Promise.resolveAsync()(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
    }

    v17 = v12[57];
    v19 = v12[50];
    v18 = v12[51];
    sub_10004350C(v12[70] + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13, v17, &qword_1000A4720, &qword_1000822B0);
    sub_10003F050(v17, *(v17 + *(v93 + 48)), *(v17 + *(v93 + 48) + 8), v19);
    sub_100018858(v17, &qword_1000A4720, &qword_1000822B0);
    if (sub_100007374(v19, 1, v18) == 1)
    {
      a1 = sub_100018858(v12[50], &qword_1000A4718, &unk_100081760);
      ++v13;
    }

    else
    {
      v85 = v12[54];
      v87 = v12[53];
      v20 = v12[50];
      v21 = v12[51];
      v22 = *v91;
      (*v91)();
      (v22)(v87, v85, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = v95[2];
        sub_10005BBC4();
        v95 = v31;
      }

      v23 = v95[2];
      if (v23 >= v95[3] >> 1)
      {
        sub_10005BBC4();
        v95 = v32;
      }

      ++v13;
      v24 = v12[53];
      v25 = v12[51];
      v95[2] = v23 + 1;
      v26 = *(v89 + 80);
      sub_100043674();
      a1 = (v22)(v28 + v27 + *(v29 + 72) * v23);
    }
  }

  v33 = v12[70];
  v88 = v12[49];
  v90 = v12[48];
  v92 = v12[47];
  v81 = v12[46];
  v34 = v12[45];
  v94 = v12[44];
  v35 = v12[43];
  v76 = v12[42];
  v77 = v12[41];
  v36 = v12[38];
  v78 = v12[40];
  v79 = v12[39];
  v37 = v12[37];
  v80 = v12[36];
  v83 = v12[35];
  v82 = v12[34];
  v84 = v12[33];
  v39 = v12[13];
  v38 = v12[14];

  v86 = v38[6];
  sub_1000032B8(v38 + 2, v38[5]);
  static Locale.languageIdentifier.getter();
  type metadata accessor for TimeZone();
  sub_100030DE0();
  sub_100006BD4(v40, v41, v42, v43);
  WeatherRequestLocationOptions.init(decimalPrecision:limitsPrecision:)();
  v44 = type metadata accessor for WeatherRequestLocationOptions();
  sub_100006BD4(v34, 0, 1, v44);
  v12[10] = _swiftEmptyArrayStorage;
  sub_100042EB8(&qword_1000A4730, 255, &type metadata accessor for WeatherDataCaching.Options);
  sub_100003020(&qword_1000A4738, &qword_100081780);
  sub_1000434C8(&qword_1000A4740, &qword_1000A4738, &qword_100081780);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v45 = type metadata accessor for DateInterval();
  sub_100030DE0();
  sub_100006BD4(v46, v47, v48, v45);
  sub_100030DE0();
  sub_100006BD4(v49, v50, v51, v45);
  type metadata accessor for WeatherRequestPeriodicRelativeRange();
  sub_100030DE0();
  sub_100006BD4(v52, v53, v54, v55);
  type metadata accessor for WeatherRequestDailyRelativeRange();
  sub_100030DE0();
  sub_100006BD4(v56, v57, v58, v59);
  type metadata accessor for WeatherRequestHourlyRelativeRange();
  sub_100030DE0();
  sub_100006BD4(v60, v61, v62, v63);
  type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  sub_100030DE0();
  sub_100006BD4(v64, v65, v66, v67);
  type metadata accessor for WDSNetworkActivity();
  sub_100030DE0();
  sub_100006BD4(v68, v69, v70, v71);
  static Locale.preferredLanguages.getter();
  (*(v82 + 104))(v83, enum case for Units.metric(_:), v84);
  WeatherDataRequestOptions.init(language:timeZone:units:countryCode:locationOptions:cachingOptions:treatmentIdentifiers:dailyDateInterval:hourlyDateInterval:periodicRelativeRange:dailyRelativeRange:hourlyRelativeRange:marineHourlyRelativeRange:networkActivity:needsMarineData:needsTwilightData:preferredLanguages:)();
  v12[72] = dispatch thunk of WeatherDataServiceType.perform(requests:for:with:)();
  (*(v90 + 8))(v88, v92);
  v72 = async function pointer to Promise.resolveAsync()[1];
  swift_task_alloc();
  sub_100030CD4();
  v12[73] = v73;
  *v73 = v74;
  v73[1] = sub_10003DB84;
  a1 = (v12 + 9);

  return Promise.resolveAsync()(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_10003DB84()
{
  sub_100030C58();
  v2 = *v1;
  v3 = *v1;
  sub_10000FA6C();
  *v4 = v3;
  v5 = *(v2 + 584);
  *v4 = *v1;
  *(v3 + 592) = v0;

  v6 = *(v2 + 576);
  if (v0)
  {
    v7 = *(v3 + 568);

    v8 = sub_10003E560;
  }

  else
  {

    v8 = sub_10003DCBC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10003DCBC()
{
  v209 = v0;
  v171 = v0 + 2;
  v1 = v0[58];
  v192 = v0[59];
  v197 = v0[29];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[17];
  v5 = v0[9];
  sub_100003020(&qword_1000A3B88, &qword_100080FA0);
  sub_1000435DC();
  sub_100042EB8(v6, 255, v7);
  result = Dictionary.init(dictionaryLiteral:)();
  v207 = result;
  v201 = *(v5 + 16);
  v203 = v5;
  v199 = v5 + 32;
  v9 = (v3 + 8);
  v188 = (v2 + 8);
  v191 = (v2 + 32);
  v10 = 0;
  v195 = (v4 + 8);
  v185 = v0[74];
  *&v11 = 141558275;
  v193 = v11;
LABEL_2:
  while (v10 != v201)
  {
    if (v10 >= *(v203 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    v12 = (v199 + 24 * v10);
    v13 = v12[2];
    if (!*(v13 + 16))
    {
      goto LABEL_31;
    }

    v15 = *v12;
    v14 = v12[1];
    ++v10;
    v16 = v0[28];
    sub_100042EFC(v13 + ((*(v197 + 80) + 32) & ~*(v197 + 80)), v0[30], &type metadata accessor for WeatherDataResponse);
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      v17 = v0[31];
      v18 = v0[32];
      v19 = v0[25];
      sub_100043558(v0[30], v18, &qword_1000A46D0, &qword_100081718);
      sub_10004350C(v18, v17, &qword_1000A46D0, &qword_100081718);
      if (sub_100007374(v17, 1, v19) == 1)
      {
        v20 = v0[31];
        sub_100018858(v0[32], &qword_1000A46D0, &qword_100081718);
        sub_100018858(v20, &qword_1000A46D0, &qword_100081718);
        goto LABEL_9;
      }

      v206 = v10;
      v33 = v0[12];
      (*v191)(v0[27], v0[31], v0[25]);
      v34 = 0;
      v35 = *(v192 + 80);
      sub_100043674();
      v37 = v33 + v36;
      for (i = *(v38 + 72); ; v37 += i)
      {
        if (v34 == v0[68])
        {
          v51 = v0[20];
          static Logger.predictedLocationNotifications.getter();
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();
          v54 = os_log_type_enabled(v52, v53);
          v55 = v0[32];
          v56 = v0[27];
          v57 = v0[25];
          v58 = v0[20];
          v59 = v0[16];
          if (v54)
          {
            v182 = v0[25];
            v60 = swift_slowAlloc();
            v178 = v55;
            v61 = sub_100037B44();
            v208[0] = v61;
            *v60 = v193;
            sub_1000436A8();
            *(v60 + 4) = v62;
            *(v60 + 12) = 2081;
            v63 = CLLocationCoordinate2D.id.getter();
            v65 = sub_10000D9FC(v63, v64, v208);

            *(v60 + 14) = v65;
            _os_log_impl(&_mh_execute_header, v52, v53, "Failed to retrieve matching predicted location from response for location=%{private,mask.hash}s", v60, 0x16u);
            sub_100006994(v61);
            sub_10000FA7C();
            sub_10000FA7C();

            v74 = sub_1000436CC(v66, v67, v68, v69, v70, v71, v72, v73, v147, v150, v153, v156, v159, v162, v165, v168, v171, v56, v178, v182, v185, v188, v191, v192, v193, *(&v193 + 1), v194, v195);
            v76 = v75(v74);
            sub_1000436B4(v76, v77, v78, v79, v80, v81, v82, v83, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v179, v183, v186, v189);
            v84(v174, v181);
            v85 = v177;
          }

          else
          {

            v109 = sub_1000436CC(v101, v102, v103, v104, v105, v106, v107, v108, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v181, v185, v188, v191, v192, v193, *(&v193 + 1), v194, v195);
            v111 = v110(v109);
            sub_1000436B4(v111, v112, v113, v114, v115, v116, v117, v118, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v180, v184, v187, v190);
            v119(v56, v57);
            v85 = v55;
          }

          result = sub_100018858(v85, &qword_1000A46D0, &qword_100081718);
          v10 = v206;
          goto LABEL_2;
        }

        v40 = v0[61];
        v42 = v0[23];
        v41 = v0[24];
        v43 = v0[21];
        sub_1000435C4();
        v44 = sub_100030E2C();
        sub_100042EFC(v44, v45, v46);
        Location.coordinate.getter();
        LocationCoordinate.init(_:)();
        LocationCoordinate.init(_:)();
        LOBYTE(v40) = static LocationCoordinate.== infix(_:_:)();
        v47 = *v9;
        (*v9)(v42, v43);
        v47(v41, v43);
        if (v40)
        {
          break;
        }

        v48 = v0[61];
        ++v34;
        sub_1000435AC();
        sub_100042F58(v49, v50);
      }

      v86 = v0[62];
      v87 = v0[63];
      v88 = v0[27];
      sub_1000325A0(v0[61], v86);
      sub_1000325A0(v86, v87);
      v89 = WeatherAlerts.alerts.getter();
      v90 = swift_task_alloc();
      *(v90 + 16) = v87;
      sub_100018F68(sub_100042FB0, v90, v89);

      v91 = sub_100013688(v87, v207);
      v92 = v0[63];
      if (v91)
      {
        v93 = v0[60];

        sub_1000435C4();
        sub_100042EFC(v92, v93, v94);
        v95 = sub_10003F438(v171, v93);
        v97 = v0[60];
        v98 = v0[32];
        v99 = v0[27];
        v100 = v0[25];
        if (*v96)
        {
          sub_10002A9EC();
        }

        else
        {
        }

        (v95)(v171, 0);
        sub_1000435AC();
        v133 = sub_100042F58(v97, v132);
        sub_1000436B4(v133, v134, v135, v136, v137, v138, v139, v140, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v181, v185, v188);
        v141(v99, v100);
        sub_100018858(v98, &qword_1000A46D0, &qword_100081718);
      }

      else
      {
        v120 = v0[32];
        v121 = v0[27];
        v122 = v0[25];
        swift_isUniquelyReferenced_nonNull_native();
        v208[0] = v207;
        sub_10002C424();
        sub_1000436B4(v123, v124, v125, v126, v127, v128, v129, v130, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v181, v185, v188);
        v131(v121, v122);
        sub_100018858(v120, &qword_1000A46D0, &qword_100081718);
        v207 = v208[0];
      }

      v142 = v0[63];
      sub_1000435AC();
      result = sub_100042F58(v143, v144);
      v10 = v206;
    }

    else
    {
      sub_100042F58(v0[30], &type metadata accessor for WeatherDataResponse);
LABEL_9:
      v21 = v0[19];
      static Logger.predictedLocationNotifications.getter();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      v24 = os_log_type_enabled(v22, v23);
      v25 = v0[19];
      v26 = v0[16];
      if (v24)
      {
        v205 = v10;
        v27 = swift_slowAlloc();
        v28 = sub_100037B44();
        v208[0] = v28;
        *v27 = v193;
        sub_1000436A8();
        *(v27 + 4) = v29;
        *(v27 + 12) = 2081;
        v30 = CLLocationCoordinate2D.id.getter();
        v32 = sub_10000D9FC(v30, v31, v208);

        *(v27 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v22, v23, "Failed to retrieve weather alerts from response for location=%{private,mask.hash}s", v27, 0x16u);
        sub_100006994(v28);
        sub_10000FA7C();
        v10 = v205;
        sub_10000FA7C();
      }

      result = (*v195)(v25, v26);
    }
  }

  v145 = v0[71];

  sub_1000435F4();
  v196 = v0[24];
  v198 = v0[23];
  v200 = v0[20];
  v202 = v0[19];
  v204 = v0[18];

  v146 = v0[1];

  return v146(v207);
}

void sub_10003E560()
{
  v1 = v0[74];
  v2 = v0[18];
  v3 = v0[12];
  static Logger.predictedLocationNotifications.getter();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[74];
    v7 = v0[58];
    v8 = v0[17];
    v32 = v0[18];
    v9 = v0[16];
    v10 = v0[12];
    v11 = sub_100037B44();
    v33[0] = swift_slowAlloc();
    *v11 = 141558531;
    sub_1000436A8();
    *(v11 + 4) = v12;
    *(v11 + 12) = 2081;
    v13 = Array.description.getter();
    v15 = sub_10000D9FC(v13, v14, v33);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2082;
    swift_getErrorValue();
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[8];
    v19 = Error.logSafeDescription.getter();
    v21 = sub_10000D9FC(v19, v20, v33);

    *(v11 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch weather alerts for location=%{private,mask.hash}s; error=%{public}s", v11, 0x20u);
    swift_arrayDestroy();
    sub_10000FA7C();
    sub_10000FA7C();

    (*(v8 + 8))(v32, v9);
  }

  else
  {
    v23 = v0[17];
    v22 = v0[18];
    v24 = v0[16];

    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[74];
  v26 = v0[58];
  sub_100003020(&qword_1000A3B88, &qword_100080FA0);
  sub_1000435DC();
  sub_100042EB8(v27, 255, v28);
  Dictionary.init(dictionaryLiteral:)();

  sub_1000435F4();
  sub_100043680();

  v29 = v0[1];
  sub_1000436E0();

  __asm { BRAA            X2, X16 }
}

size_t sub_10003E8D0(uint64_t a1)
{
  v39 = a1;
  v2 = *v1;
  v3 = type metadata accessor for WeatherAlert();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ResolvedPredictedLocation();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Settings.LocationIntelligence.Debug.mockWeatherAlertCount.getter();
  sub_100042EB8(&qword_1000A4728, v17, type metadata accessor for PredictedLocationsWeatherAlertService);
  Configurable.setting<A>(_:)();

  v18 = v40;
  static Logger.predictedLocationNotifications.getter();
  sub_100042EFC(v39, v11, type metadata accessor for ResolvedPredictedLocation);
  v39 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = v13;
    v22 = v21;
    v36 = swift_slowAlloc();
    v40 = v36;
    *v22 = 134218499;
    *(v22 + 4) = v18;
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    v23 = ResolvedPredictedLocation.description.getter();
    v37 = v12;
    v25 = v24;
    sub_100042F58(v11, type metadata accessor for ResolvedPredictedLocation);
    v26 = sub_10000D9FC(v23, v25, &v40);

    *(v22 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Using mock weather alerts for predicted location; count=%ld, location=%{private,mask.hash}s", v22, 0x20u);
    sub_100006994(v36);

    result = (*(v38 + 8))(v39, v37);
  }

  else
  {

    sub_100042F58(v11, type metadata accessor for ResolvedPredictedLocation);
    result = (*(v13 + 8))(v39, v12);
  }

  if (v18 < 1)
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
    result = sub_100014674(0, v18, 0);
    v28 = 0;
    v29 = v40;
    v30 = 1;
    v31 = v18;
    while (!v28)
    {
      sub_1000404DC(result);
      v40 = v29;
      v33 = v29[2];
      v32 = v29[3];
      if (v33 >= v32 >> 1)
      {
        sub_100014674(v32 > 1, v33 + 1, 1);
        v29 = v40;
      }

      v29[2] = v33 + 1;
      result = (*(v4 + 32))(v29 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33, v7, v3);
      v28 = v30 == v18;
      if (v30 == v18)
      {
        v30 = 0;
      }

      else if (__OFADD__(v30++, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (!--v31)
      {
        return v29;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_10003ED54(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, void **))
{
  if (*(a1 + 16))
  {
    sub_100003020(a2, a3);
    sub_1000436C0();
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = &_swiftEmptyDictionarySingleton;
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_10003EE04(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_10003EE24, 0, 0);
}

uint64_t sub_10003EE24()
{
  sub_100030C58();
  v1 = sub_100003020(&qword_1000A4778, &qword_1000817C8);
  v2 = sub_100003020(&qword_1000A4780, &qword_1000817D0);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = *(v0 + 24);
  v4 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  swift_task_alloc();
  sub_100030CD4();
  *(v0 + 48) = v5;
  *v5 = v6;
  v5[1] = sub_10003EF38;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v1, v2, 0, 0, &unk_1000817E0, v3, v1);
}

uint64_t sub_10003EF38()
{
  sub_100030C4C();
  sub_100043668();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_10000FA6C();
  *v5 = v4;

  v6 = sub_100043658();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10003F050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a4;
  v6 = type metadata accessor for Location.Identifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ResolvedPredictedLocation();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003020(&qword_1000A4710, &qword_100081758);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v36 - v22;
  if (a3)
  {
    Location.coordinate.getter();
    Location.timeZone.getter();
    v24 = type metadata accessor for TimeZone();
    sub_100006BD4(v23, 0, 1, v24);

    WeatherServiceRequestLocation.init(coordinate:countryCode:timeZone:)();
    v25 = 0;
  }

  else
  {
    v37 = v6;
    v38 = v15;
    v39 = v16;
    static Logger.predictedLocationNotifications.getter();
    sub_100042EFC(a1, v14, type metadata accessor for ResolvedPredictedLocation);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      Location.identifier.getter();
      v30 = Location.Identifier.uniqueID.getter();
      v32 = v31;
      (*(v7 + 8))(v10, v37);
      sub_100042F58(v14, type metadata accessor for ResolvedPredictedLocation);
      v33 = sub_10000D9FC(v30, v32, &v41);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Skipping weather alert fetch due to missing country code for predicted location. predictedLocation=%{private,mask.hash}s", v28, 0x16u);
      sub_100006994(v29);
    }

    else
    {

      sub_100042F58(v14, type metadata accessor for ResolvedPredictedLocation);
    }

    (*(v39 + 8))(v19, v38);
    v25 = 1;
  }

  v34 = type metadata accessor for WeatherServiceRequestLocation();
  return sub_100006BD4(v40, v25, 1, v34);
}

void (*sub_10003F438(void *a1, uint64_t a2))(void *a1)
{
  v4 = sub_100042FE8(0x30uLL);
  *a1 = v4;
  v5 = type metadata accessor for ResolvedPredictedLocation();
  v6 = sub_100042FE8(*(*(v5 - 8) + 64));
  v4[4] = v6;
  sub_100042EFC(a2, v6, type metadata accessor for ResolvedPredictedLocation);
  v4[5] = sub_1000429F8(v4, v6);
  return sub_10003F4F4;
}

void sub_10003F4F4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_1000435AC();
  sub_100042F58(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_10003F554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_100003020(&qword_1000A4720, &qword_1000822B0);
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = sub_100003020(&qword_1000A4778, &qword_1000817C8);
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v11 = *(type metadata accessor for ResolvedPredictedLocation() - 8);
  v4[21] = v11;
  v4[22] = *(v11 + 64);
  v4[23] = swift_task_alloc();
  v12 = *(*(sub_100003020(&unk_1000A3930, &qword_100080900) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_10003F73C, 0, 0);
}

uint64_t sub_10003F73C()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 168);
    v35 = *(v0 + 176);
    v34 = **(v0 + 88);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v33 = *(v3 + 72);
    v32 = (v4 + 40) & ~v4;
    v6 = type metadata accessor for TaskPriority();
    do
    {
      v36 = v2;
      v8 = *(v0 + 192);
      v7 = *(v0 + 200);
      v9 = *(v0 + 184);
      v10 = *(v0 + 104);
      sub_100030DE0();
      sub_100006BD4(v11, v12, v13, v6);
      sub_1000435C4();
      sub_100042EFC(v5, v9, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v16 = v15 + 2;
      v15[3] = 0;
      v15[4] = v10;
      sub_1000325A0(v9, v15 + v32);
      sub_10004350C(v7, v8, &unk_1000A3930, &qword_100080900);
      LODWORD(v8) = sub_100007374(v8, 1, v6);

      v17 = *(v0 + 192);
      if (v8 == 1)
      {
        sub_100018858(*(v0 + 192), &unk_1000A3930, &qword_100080900);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(*(v6 - 8) + 8))(v17, v6);
      }

      if (*v16)
      {
        v18 = v15[3];
        v19 = *v16;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v20 = dispatch thunk of Actor.unownedExecutor.getter();
        v22 = v21;
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      v23 = swift_allocObject();
      *(v23 + 16) = &unk_100081800;
      *(v23 + 24) = v15;

      if (v22 | v20)
      {
        v24 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v20;
        *(v0 + 40) = v22;
      }

      else
      {
        v24 = 0;
      }

      v25 = *(v0 + 200);
      v26 = *(v0 + 136);
      *(v0 + 48) = 1;
      *(v0 + 56) = v24;
      *(v0 + 64) = v34;
      swift_task_create();

      sub_100018858(v25, &unk_1000A3930, &qword_100080900);
      v5 += v33;
      v2 = v36 - 1;
    }

    while (v36 != 1);
  }

  *(v0 + 72) = **(v0 + 88);
  v27 = async function pointer to AsyncSequence.collect()[1];
  v28 = swift_task_alloc();
  *(v0 + 208) = v28;
  v29 = sub_100003020(&qword_1000A4788, &qword_100081810);
  v30 = sub_1000434C8(&qword_1000A4790, &qword_1000A4788, &qword_100081810);
  *v28 = v0;
  v28[1] = sub_10003FAE8;

  return AsyncSequence.collect()(v29, v30);
}

uint64_t sub_10003FAE8()
{
  sub_100030C4C();
  sub_100043668();
  sub_100030C64();
  *v3 = v2;
  v5 = *(v4 + 208);
  *v3 = *v1;
  *(v2 + 216) = v6;

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_10003FC04, 0, 0);
  }
}

uint64_t sub_10003FC04()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v30 = *(v0 + 120);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = _swiftEmptyArrayStorage;
    v6 = *(v3 + 72);
    do
    {
      v8 = *(v0 + 152);
      v7 = *(v0 + 160);
      v9 = *(v0 + 112);
      sub_10004350C(v4, v7, &qword_1000A4778, &qword_1000817C8);
      sub_100043558(v7, v8, &qword_1000A4778, &qword_1000817C8);
      v10 = sub_100007374(v8, 1, v9);
      v11 = *(v0 + 152);
      if (v10 == 1)
      {
        sub_100018858(v11, &qword_1000A4778, &qword_1000817C8);
      }

      else
      {
        sub_100043558(v11, *(v0 + 128), &qword_1000A4720, &qword_1000822B0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10005BC9C(0, v5[2] + 1, 1, v5);
          v5 = v19;
        }

        v13 = v5[2];
        v12 = v5[3];
        if (v13 >= v12 >> 1)
        {
          sub_10005BC9C(v12 > 1, v13 + 1, 1, v5);
          v5 = v20;
        }

        v14 = *(v0 + 128);
        v5[2] = v13 + 1;
        v15 = *(v30 + 80);
        sub_100043674();
        sub_100043558(v18, v5 + v16 + *(v17 + 72) * v13, &qword_1000A4720, &qword_1000822B0);
      }

      v4 += v6;
      --v2;
    }

    while (v2);
    v21 = *(v0 + 216);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v23 = *(v0 + 192);
  v22 = *(v0 + 200);
  v24 = *(v0 + 184);
  v26 = *(v0 + 152);
  v25 = *(v0 + 160);
  v27 = *(v0 + 128);
  **(v0 + 80) = v5;

  sub_100030C70();

  return v28();
}

uint64_t sub_10003FE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  v6 = type metadata accessor for Location.Identifier();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(type metadata accessor for ResolvedPredictedLocation() - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_10003FF7C, 0, 0);
}

uint64_t sub_10003FF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100030C58();
  v13 = v12[5];
  v14 = v12[6];
  v15 = v13[11];
  sub_1000032B8(v13 + 7, v13[10]);
  sub_1000436C0();
  v12[14] = dispatch thunk of LocationMetadataManagerType.resolveCountryCode(for:)();
  v16 = async function pointer to Promise.resolveAsync()[1];
  swift_task_alloc();
  sub_100030CD4();
  v12[15] = v24;
  *v24 = v25;
  v24[1] = sub_100040044;

  return Promise.resolveAsync()(v12 + 2, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_100040044()
{
  sub_100030C4C();
  sub_100043668();
  v3 = v2;
  sub_100030C64();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  sub_10000FA6C();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = sub_10004021C;
  }

  else
  {
    v10 = *(v3 + 112);

    v9 = sub_10004014C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10004014C()
{
  sub_100030C58();
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_100003020(&qword_1000A4720, &qword_1000822B0);
  if (v2)
  {
    v4 = v0[6];
    v5 = (v0[4] + *(v3 + 48));
    sub_1000435C4();
    sub_100042EFC(v6, v7, v8);
    v9 = 0;
    *v5 = v1;
    v5[1] = v2;
  }

  else
  {
    v9 = 1;
  }

  v10 = v0[13];
  v12 = v0[9];
  v11 = v0[10];
  sub_100006BD4(v0[4], v9, 1, v3);

  sub_100030C70();

  return v13();
}

uint64_t sub_10004021C()
{
  v43 = v0;
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v5 = v0[6];

  static Logger.predictedLocationNotifications.getter();
  sub_1000435C4();
  sub_100042EFC(v5, v4, v6);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[10];
  v13 = v0[11];
  if (v9)
  {
    v41 = v0[11];
    v15 = v0[8];
    v14 = v0[9];
    v36 = v0[7];
    v37 = v0[16];
    v16 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = sub_100037B44();
    v42 = v39;
    *v16 = 141558787;
    sub_1000436A8();
    *(v16 + 4) = v17;
    *(v16 + 12) = 2081;
    v40 = v10;
    Location.identifier.getter();
    v18 = Location.Identifier.uniqueID.getter();
    v20 = v19;
    (*(v15 + 8))(v14, v36);
    sub_1000435AC();
    sub_100042F58(v12, v21);
    v22 = sub_10000D9FC(v18, v20, &v42);

    *(v16 + 14) = v22;
    *(v16 + 22) = 2160;
    sub_1000436A8();
    *(v16 + 24) = v23;
    *(v16 + 32) = 2113;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 34) = v24;
    *v38 = v24;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to resolve country code for location; predictedLocation=%{private,mask.hash}s, error=%{private,mask.hash}@", v16, 0x2Au);
    sub_100018858(v38, &qword_1000A4030, &qword_100080F58);
    sub_10000FA7C();
    sub_100006994(v39);
    sub_10000FA7C();
    sub_10000FA7C();

    (*(v11 + 8))(v40, v41);
  }

  else
  {

    sub_1000435AC();
    sub_100042F58(v12, v25);
    (*(v11 + 8))(v10, v13);
  }

  sub_100003020(&qword_1000A4720, &qword_1000822B0);
  v26 = v0[13];
  v28 = v0[9];
  v27 = v0[10];
  v29 = v0[4];
  sub_100030DE0();
  sub_100006BD4(v30, v31, v32, v33);

  sub_100030C70();

  return v34();
}

uint64_t *sub_100040EE4()
{
  sub_100006994(v0 + 2);
  sub_100006994(v0 + 7);
  sub_100006994(v0 + 12);
  return v0;
}

uint64_t sub_100040F14()
{
  sub_100040EE4();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_100040F6C()
{
  sub_100030C4C();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_100003020(&qword_1000A46B8, &unk_1000816F0);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_100003020(&qword_1000A3C08, &qword_100080B18);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = sub_100043658();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100041074()
{
  sub_100030C4C();
  v1 = v0[3];
  v2 = sub_10003C918();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100041114;
  v4 = v0[2];
  v5 = v0[3];

  return sub_10003CA0C(v4, v2);
}

uint64_t sub_100041114()
{
  sub_100030C4C();
  sub_100043668();
  sub_100030C64();
  *v2 = v1;
  v4 = *(v3 + 80);
  *v2 = *v0;
  *(v1 + 88) = v5;

  v6 = sub_100043658();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100041200()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v31 = v0[7];
    v32 = v0[8];
    v30 = v0[4];
    sub_10001484C(0, v2, 0);
    result = sub_100030B04(v1);
    v5 = result;
    v6 = v1 + 64;
    v7 = v2 - 1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v1 + 32))
      {
        if ((*(v6 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_18;
        }

        if (v4 != *(v1 + 36))
        {
          goto LABEL_19;
        }

        v33 = v7;
        v34 = v4;
        v8 = v0[9];
        v10 = v0[5];
        v9 = v0[6];
        v11 = *(v1 + 48);
        v12 = *(*(type metadata accessor for ResolvedPredictedLocation() - 8) + 72);
        sub_1000435C4();
        sub_100042EFC(v13, v9, v14);
        v15 = *(*(v1 + 56) + 8 * v5);
        sub_1000325A0(v9, v10);
        *(v10 + *(v30 + 48)) = v15;
        v16 = *(v31 + 48);

        *(v8 + v16) = sub_1000414F8(v8, v10, v15);
        sub_100018858(v10, &qword_1000A46B8, &unk_1000816F0);
        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          sub_10001484C(v17 > 1, v18 + 1, 1);
        }

        v19 = v0[9];
        _swiftEmptyArrayStorage[2] = v18 + 1;
        v20 = *(v32 + 80);
        sub_100043674();
        result = sub_100043558(v23, _swiftEmptyArrayStorage + v21 + *(v22 + 72) * v18, &qword_1000A3C08, &qword_100080B18);
        if (v5 >= -(-1 << *(v1 + 32)))
        {
          goto LABEL_20;
        }

        v6 = v1 + 64;
        if ((*(v1 + 64 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_21;
        }

        if (v34 != *(v1 + 36))
        {
          goto LABEL_22;
        }

        result = _HashTable.occupiedBucket(after:)();
        if (!v33)
        {
          goto LABEL_14;
        }

        v5 = result;
        v4 = *(v1 + 36);
        v7 = v33 - 1;
        if (result < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_14:
    v24 = v0[11];

    v25 = v0[9];
    v27 = v0[5];
    v26 = v0[6];
    v28 = sub_10003ED54(_swiftEmptyArrayStorage, &qword_1000A46C0, &qword_100081708, sub_1000425B0);

    v29 = v0[1];

    return v29(v28);
  }

  return result;
}

uint64_t sub_1000414F8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Location.Identifier();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  __chkstk_darwin(v6);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ResolvedPredictedLocation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v62 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a3;
  v17 = sub_100003020(&qword_1000A3B88, &qword_100080FA0);
  sub_1000434C8(&qword_1000A4080, &qword_1000A3B88, &qword_100080FA0);
  v58 = v17;
  v18 = Sequence.groupedBy<A>(_:)();
  v19 = *(v18 + 16);
  v64 = v12;
  v65 = a1;
  v63 = v16;
  if (v19)
  {
    v56 = v13;
    v57 = a2;
    v72 = _swiftEmptyArrayStorage;
    sub_100014654(0, v19, 0);
    v20 = v72;
    result = sub_100030B04(v18);
    v24 = result;
    v25 = 0;
    v26 = v18 + 64;
    v67 = v22;
    v68 = v19;
    v66 = v18 + 72;
    v69 = v18 + 64;
    while ((v24 & 0x8000000000000000) == 0 && v24 < 1 << *(v18 + 32))
    {
      v27 = v24 >> 6;
      if ((*(v26 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v18 + 36) != v22)
      {
        goto LABEL_29;
      }

      v70 = v23;
      v28 = *(*(v18 + 56) + 8 * v24);
      v71 = v22;
      v72 = v20;
      v30 = v20[2];
      v29 = v20[3];

      if (v30 >= v29 >> 1)
      {
        result = sub_100014654((v29 > 1), v30 + 1, 1);
        v20 = v72;
      }

      v20[2] = v30 + 1;
      v20[v30 + 4] = v28;
      v31 = 1 << *(v18 + 32);
      if (v24 >= v31)
      {
        goto LABEL_30;
      }

      v26 = v69;
      v32 = *(v69 + 8 * v27);
      if ((v32 & (1 << v24)) == 0)
      {
        goto LABEL_31;
      }

      if (*(v18 + 36) != v71)
      {
        goto LABEL_32;
      }

      v33 = v32 & (-2 << (v24 & 0x3F));
      if (v33)
      {
        v31 = __clz(__rbit64(v33)) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = v20;
        v35 = v27 << 6;
        v36 = v27 + 1;
        v37 = (v66 + 8 * v27);
        while (v36 < (v31 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_10002FAA8(v24, v71, v70 & 1);
            v31 = __clz(__rbit64(v38)) + v35;
            goto LABEL_19;
          }
        }

        result = sub_10002FAA8(v24, v71, v70 & 1);
LABEL_19:
        v20 = v34;
      }

      v23 = 0;
      ++v25;
      v24 = v31;
      v22 = v67;
      if (v25 == v68)
      {

        v12 = v64;
        a1 = v65;
        v13 = v56;
        a2 = v57;
        v16 = v63;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
LABEL_23:
    v40 = v62;
    static Logger.predictedLocationNotifications.getter();
    sub_100042EFC(a2, v40, type metadata accessor for ResolvedPredictedLocation);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v72 = v71;
      *v43 = 141558531;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2081;
      v44 = a2;
      v45 = v59;
      Location.identifier.getter();
      v46 = Location.Identifier.uniqueID.getter();
      v47 = v20;
      v49 = v48;
      v50 = v45;
      a2 = v44;
      (*(v60 + 8))(v50, v61);
      sub_100042F58(v40, type metadata accessor for ResolvedPredictedLocation);
      v51 = sub_10000D9FC(v46, v49, &v72);

      *(v43 + 14) = v51;
      *(v43 + 22) = 2080;
      v52 = Array.description.getter();
      v54 = sub_10000D9FC(v52, v53, &v72);

      *(v43 + 24) = v54;
      v20 = v47;
      _os_log_impl(&_mh_execute_header, v41, v42, "Successfully fetched weather alerts for location=%{private,mask.hash}s; alerts=%s", v43, 0x20u);
      swift_arrayDestroy();
      a1 = v65;

      (*(v13 + 8))(v63, v64);
    }

    else
    {

      sub_100042F58(v40, type metadata accessor for ResolvedPredictedLocation);
      (*(v13 + 8))(v16, v12);
    }

    sub_100042EFC(a2, a1, type metadata accessor for ResolvedPredictedLocation);
    return v20;
  }

  return result;
}

uint64_t sub_100041B38(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041C30;

  return v7(a1);
}

uint64_t sub_100041C30()
{
  sub_100030C4C();
  sub_100043668();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000FA6C();
  *v4 = v3;

  sub_100030C70();

  return v5();
}

uint64_t sub_100041D14(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for ResolvedPredictedLocation();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v15 = *(*v7 + 24);
  }

  sub_100003020(a3, a4);
  v50 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = result;
  if (!*(v14 + 16))
  {
LABEL_36:

LABEL_37:
    *v7 = v17;
    return result;
  }

  v46 = v7;
  v47 = v14;
  v18 = 0;
  v19 = (v14 + 64);
  v20 = 1 << *(v14 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v14 + 64);
  v23 = (v20 + 63) >> 6;
  v24 = result + 64;
  v25 = v49;
  if (!v22)
  {
LABEL_9:
    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v26 = __clz(__rbit64(v29));
        v27 = (v29 - 1) & v29;
        goto LABEL_14;
      }
    }

    if ((v50 & 1) == 0)
    {

      v7 = v46;
      goto LABEL_37;
    }

    v45 = 1 << *(v14 + 32);
    v7 = v46;
    if (v45 >= 64)
    {
      sub_10002C6DC(0, (v45 + 63) >> 6, v19);
    }

    else
    {
      *v19 = -1 << v45;
    }

    *(v14 + 16) = 0;
    goto LABEL_36;
  }

  while (1)
  {
    v26 = __clz(__rbit64(v22));
    v27 = (v22 - 1) & v22;
LABEL_14:
    v30 = v26 | (v18 << 6);
    v31 = *(v14 + 48);
    v52 = *(v48 + 72);
    v53 = v27;
    v32 = v31 + v52 * v30;
    if (v50)
    {
      sub_1000325A0(v32, v13);
      v51 = *(*(v14 + 56) + 8 * v30);
    }

    else
    {
      sub_100042EFC(v32, v13, type metadata accessor for ResolvedPredictedLocation);
      v51 = *(*(v14 + 56) + 8 * v30);
    }

    v33 = *(v17 + 40);
    Hasher.init(_seed:)();
    type metadata accessor for Location();
    sub_100042EB8(&qword_1000A4158, 255, &type metadata accessor for Location);
    dispatch thunk of Hashable.hash(into:)();
    v34 = *&v13[v25[5]];
    if (v34 == 0.0)
    {
      v34 = 0.0;
    }

    Hasher._combine(_:)(*&v34);
    v35 = v25[6];
    type metadata accessor for Date();
    sub_100042EB8(&qword_1000A4160, 255, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    v36 = &v13[v25[7]];
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v37 = -1 << *(v17 + 32);
    v38 = result & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
    {
      break;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
    v14 = v47;
LABEL_28:
    *(v24 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    result = sub_1000325A0(v13, *(v17 + 48) + v52 * v40);
    *(*(v17 + 56) + 8 * v40) = v51;
    ++*(v17 + 16);
    v22 = v53;
    if (!v53)
    {
      goto LABEL_9;
    }
  }

  v41 = 0;
  v42 = (63 - v37) >> 6;
  v14 = v47;
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

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_100042168(uint64_t a1, char a2, uint64_t *a3)
{
  v45 = a3;
  v6 = type metadata accessor for ResolvedPredictedLocation();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v46 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003020(&qword_1000A3C18, &qword_100081770);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v14 = v40 - v13;
  v43 = *(a1 + 16);
  if (!v43)
  {
  }

  v40[0] = v6;
  v40[1] = v3;
  v15 = 0;
  v16 = *(v11 + 48);
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v42 = v16;
  while (1)
  {
    if (v15 >= *(a1 + 16))
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

    v17 = v12;
    sub_10004350C(v41 + *(v12 + 72) * v15, v14, &qword_1000A3C18, &qword_100081770);
    v18 = v46;
    sub_1000325A0(v14, v46);
    v19 = *&v14[v42];
    v20 = *v45;
    v22 = sub_100074E6C(v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_100003020(&qword_1000A4180, &qword_100081120);
      _NativeDictionary.copy()();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v31 = v46;
    v32 = *v45;
    *(*v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    sub_1000325A0(v31, v32[6] + *(v44 + 72) * v22);
    *(v32[7] + 8 * v22) = v19;
    v33 = v32[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_20;
    }

    ++v15;
    v32[2] = v35;
    a2 = 1;
    v12 = v17;
    if (v43 == v15)
    {
    }
  }

  v27 = v45;
  sub_100041D14(v25, a2 & 1, &qword_1000A4750, &unk_100081788);
  v28 = *v27;
  v29 = sub_100074E6C(v46);
  if ((v26 & 1) != (v30 & 1))
  {
    goto LABEL_21;
  }

  v22 = v29;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v36 = swift_allocError();
  swift_willThrow();
  v49 = v36;
  swift_errorRetain();
  sub_100003020(&qword_1000A37F0, &unk_100080850);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100042F58(v46, type metadata accessor for ResolvedPredictedLocation);
  }

LABEL_22:
  v47 = 0;
  v48 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v38._object = 0x80000001000854D0;
  v38._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v38);
  _print_unlocked<A, B>(_:_:)();
  v39._countAndFlagsBits = 39;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000425B0(uint64_t a1, char a2, uint64_t *a3)
{
  v45 = a3;
  v6 = type metadata accessor for ResolvedPredictedLocation();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v46 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003020(&qword_1000A3C08, &qword_100080B18);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v14 = v40 - v13;
  v43 = *(a1 + 16);
  if (!v43)
  {
  }

  v40[0] = v6;
  v40[1] = v3;
  v15 = 0;
  v16 = *(v11 + 48);
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v42 = v16;
  while (1)
  {
    if (v15 >= *(a1 + 16))
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

    v17 = v12;
    sub_10004350C(v41 + *(v12 + 72) * v15, v14, &qword_1000A3C08, &qword_100080B18);
    v18 = v46;
    sub_1000325A0(v14, v46);
    v19 = *&v14[v42];
    v20 = *v45;
    v22 = sub_100074E6C(v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_100003020(&qword_1000A46C8, &qword_100081710);
      _NativeDictionary.copy()();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v31 = v46;
    v32 = *v45;
    *(*v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    sub_1000325A0(v31, v32[6] + *(v44 + 72) * v22);
    *(v32[7] + 8 * v22) = v19;
    v33 = v32[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_20;
    }

    ++v15;
    v32[2] = v35;
    a2 = 1;
    v12 = v17;
    if (v43 == v15)
    {
    }
  }

  v27 = v45;
  sub_100041D14(v25, a2 & 1, &qword_1000A46C0, &qword_100081708);
  v28 = *v27;
  v29 = sub_100074E6C(v46);
  if ((v26 & 1) != (v30 & 1))
  {
    goto LABEL_21;
  }

  v22 = v29;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v36 = swift_allocError();
  swift_willThrow();
  v49 = v36;
  swift_errorRetain();
  sub_100003020(&qword_1000A37F0, &unk_100080850);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100042F58(v46, type metadata accessor for ResolvedPredictedLocation);
  }

LABEL_22:
  v47 = 0;
  v48 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v38._object = 0x80000001000854D0;
  v38._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v38);
  _print_unlocked<A, B>(_:_:)();
  v39._countAndFlagsBits = 39;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*sub_1000429F8(void *a1, uint64_t a2))(uint64_t a1)
{
  v5 = sub_100042FE8(0x58uLL);
  *a1 = v5;
  v6 = type metadata accessor for ResolvedPredictedLocation();
  v7 = sub_100042FE8(*(*(v6 - 8) + 64));
  v5[8] = v7;
  v8 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100042EFC(a2, v7, type metadata accessor for ResolvedPredictedLocation);
  v5[9] = sub_100042E18(v5);
  v5[10] = sub_100042B54(v5 + 4, v7, isUniquelyReferenced_nonNull_native);
  return sub_100042AD4;
}

void sub_100042AD4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_1000435AC();
  sub_100042F58(v3, v4);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_100042B54(void *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = sub_100042FE8(0x40uLL);
  *a1 = v8;
  v8[1] = a2;
  v8[2] = v3;
  v9 = type metadata accessor for ResolvedPredictedLocation();
  v8[3] = v9;
  v10 = *(v9 - 8);
  v8[4] = v10;
  v8[5] = sub_100042FE8(*(v10 + 64));
  v11 = *v3;
  v12 = sub_100074E6C(a2);
  *(v8 + 56) = v13 & 1;
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v12;
  v18 = v13;
  sub_100003020(&qword_1000A4180, &qword_100081120);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v16))
  {
    v19 = *v4;
    v20 = sub_100074E6C(a2);
    if ((v18 & 1) == (v21 & 1))
    {
      v17 = v20;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[6] = v17;
  if (v18)
  {
    v22 = *(*(*v4 + 56) + 8 * v17);
  }

  else
  {
    v22 = 0;
  }

  *v8 = v22;
  return sub_100042CE0;
}

void sub_100042CE0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v14 = v1[5];
      v15 = v1[1];
      sub_1000435C4();
      sub_100042EFC(v16, v14, v17);
      sub_10002C63C(v5, v14, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = v1[3];
    v8 = *(*v1[2] + 48);
    v9 = *(v1[4] + 72);
    sub_1000435AC();
    sub_100042F58(v10, v11);
    sub_100003020(&qword_1000A3B88, &qword_100080FA0);
    sub_1000435DC();
    sub_100042EB8(v12, 255, v13);
    _NativeDictionary._delete(at:)();
  }

  v18 = v1[5];
  v19 = *v1;

  free(v18);

  free(v1);
}

uint64_t (*sub_100042E18(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100042E40;
}

unint64_t sub_100042E4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = sub_10002F970(*(a2 + 16));
  if (result < v2)
  {
    v5 = a2 + 16 * result;
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100042EB8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_1000436C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100042EFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100018904(v4);
  v6 = *(v5 + 16);
  v7 = sub_100030E2C();
  v8(v7);
  return a2;
}

uint64_t sub_100042F58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100018904(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void *sub_100042FE8(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_10004301C()
{
  sub_100030C58();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  sub_100030CD4();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1000435A4;

  return sub_10003F554(v5, v3, v7, v6);
}

uint64_t sub_1000430C8()
{
  v1 = (type metadata accessor for ResolvedPredictedLocation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = type metadata accessor for Location();
  sub_100018904(v7);
  (*(v8 + 8))(v0 + v3);
  v9 = v1[8];
  v10 = type metadata accessor for Date();
  sub_100018904(v10);
  v12 = *(v11 + 8);
  v12(v0 + v3 + v9, v10);
  v12(v0 + v3 + v1[9], v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004320C(uint64_t a1)
{
  v4 = *(type metadata accessor for ResolvedPredictedLocation() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  swift_task_alloc();
  sub_100030CD4();
  *(v2 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_100043300;

  return sub_10003FE30(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100043300()
{
  sub_100030C4C();
  sub_100043668();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000FA6C();
  *v4 = v3;

  sub_100030C70();

  return v5();
}

uint64_t sub_1000433E0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100043418()
{
  sub_100030C58();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  sub_100030CD4();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_100043300;

  return sub_100041B38(v3, v5);
}

uint64_t sub_1000434C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000325C(a2, a3);
    sub_1000436C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004350C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1000436FC(a1, a2, a3, a4);
  sub_100018904(v5);
  v7 = *(v6 + 16);
  v8 = sub_100030E2C();
  v9(v8);
  return v4;
}

uint64_t sub_100043558(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1000436FC(a1, a2, a3, a4);
  sub_100018904(v5);
  v7 = *(v6 + 32);
  v8 = sub_100030E2C();
  v9(v8);
  return v4;
}

uint64_t sub_1000435F4()
{
  result = v0[67];
  v3 = v0[63];
  v2 = v0[64];
  v5 = v0[61];
  v4 = v0[62];
  v6 = v0[60];
  v7 = v0[57];
  v9 = v0[53];
  v8 = v0[54];
  v10 = v0[50];
  v12 = v0[49];
  v13 = v0[46];
  v14 = v0[45];
  v15 = v0[44];
  v16 = v0[42];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[39];
  v20 = v0[38];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[35];
  v24 = v0[32];
  v25 = v0[31];
  v11 = v0[30];
  v26 = v0[27];
  return result;
}

uint64_t sub_100043680()
{
  v7 = v0[24];
  v4 = v0[19];
  v3 = v0[20];
  *(v1 - 128) = v0[23];
  *(v1 - 120) = v3;
  v5 = v0[18];
  *(v1 - 112) = v4;
  *(v1 - 104) = v5;
}

uint64_t sub_1000436FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100003020(a3, a4);
}

uint64_t *sub_10004371C()
{
  sub_100006930((v0 + 2), v6);
  sub_1000032B8(v6, v6[3]);
  sub_10004AEC8(&qword_1000A3B48, v1, type metadata accessor for PredictedLocationsNotificationsManager);
  sub_10004B08C();
  dispatch thunk of LocationManagerType.removeObserver(_:)();
  sub_100006994(v6);
  sub_100006994(v0 + 2);
  sub_100006994(v0 + 7);
  v2 = v0[12];

  v3 = v0[13];

  sub_100006994(v0 + 14);
  sub_100006994(v0 + 19);
  v4 = v0[24];
  swift_unknownObjectRelease();
  sub_100006994(v0 + 26);
  sub_100006994(v0 + 31);
  sub_100006994(v0 + 36);
  sub_100006994(v0 + 41);
  sub_100006994(v0 + 46);
  sub_100018858((v0 + 53), &qword_1000A48D0, &qword_100081AD8);
  return v0;
}

uint64_t sub_100043834()
{
  sub_10004371C();

  return _swift_deallocClassInstance(v0, 432, 7);
}

char *sub_10004388C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100003020(&qword_1000A48A0, &qword_1000818B8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1000438BC()
{
  sub_100030C4C();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_10000E960(v2);
  v1[4] = v3;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for PredictedLocationsFeatureState();
  v1[9] = v6;
  sub_10000E960(v6);
  v1[10] = v7;
  v9 = *(v8 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AF38();
  sub_10004AEC8(v10, 255, v11);
  sub_10004B08C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10004B180();
  v1[14] = v12;
  v1[15] = v13;
  v14 = sub_10004B174();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_100043A3C()
{
  sub_10004B284();
  sub_100030E20();
  if (WDWeatherAppIsInstalled())
  {
    v1 = v0[2];
    v2 = v1[50];
    sub_1000032B8(v1 + 46, v1[49]);
    v3 = async function pointer to dispatch thunk of PredictedLocationsFeatureStateManagerType.severeNotificationFeatureState()[1];
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_100043BCC;
    v5 = v0[12];
    sub_10004B250();

    return dispatch thunk of PredictedLocationsFeatureStateManagerType.severeNotificationFeatureState()(v6, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[5];

    static Logger.predictedLocationNotifications.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = sub_10004B118(v13);
    v16 = v0[4];
    v15 = v0[5];
    v17 = v0[3];
    if (v14)
    {
      *sub_100030F7C() = 0;
      sub_10004B21C(&_mh_execute_header, v18, v19, "Weather app was uninstalled; skipping processing of notifications");
      sub_10000FA7C();
    }

    v20 = *(v16 + 8);
    v21 = sub_100030CE0();
    v22(v21);
    sub_10004B0FC();

    sub_100030C70();
    sub_10004B250();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30);
  }
}

uint64_t sub_100043BCC()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *(v0 + 128);
  v3 = *v1;
  sub_10000FA6C();
  *v4 = v3;

  sub_100030E68();
  v6 = *(v5 + 120);
  v7 = *(v0 + 112);

  return _swift_task_switch(sub_100043CD8, v7, v6);
}

uint64_t sub_100043CD8()
{
  sub_10004B284();
  sub_100030E20();
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  (*(v3 + 104))(v0[11], enum case for PredictedLocationsFeatureState.active(_:), v2);
  v4 = static PredictedLocationsFeatureState.== infix(_:_:)();
  v5 = *(v3 + 8);
  v6 = sub_100030CE0();
  v5(v6);
  (v5)(v1, v2);
  if (v4)
  {
    v7 = v0[8];
    v8 = v0[2];
    v9 = v8[45];
    sub_1000032B8(v8 + 41, v8[44]);
    PredictedLocationsScheduleStoreType.recordRefresh()();
    static Logger.predictedLocationNotifications.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (sub_10004B070(v11))
    {
      v12 = sub_100030F7C();
      sub_10004B0A8(v12);
      sub_10004AFE8();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      sub_10004B030();
    }

    v18 = v0[8];
    v19 = v0[3];
    v20 = v0[4];
    v21 = v0[2];

    v0[17] = *(v20 + 8);
    v22 = sub_100030CE0();
    v23(v22);
    v24 = *sub_1000032B8((v21 + 248), *(v21 + 272));
    v25 = swift_task_alloc();
    v0[18] = v25;
    *v25 = v0;
    v25[1] = sub_100043F4C;
    sub_10004B250();

    return sub_100068DE0();
  }

  else
  {
    v28 = v0[13];
    v29 = v0[6];

    static Logger.predictedLocationNotifications.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = sub_10004B118(v31);
    v33 = v0[6];
    v34 = v0[3];
    v35 = v0[4];
    if (v32)
    {
      *sub_100030F7C() = 0;
      sub_10004B21C(&_mh_execute_header, v36, v37, "Predicted locations notification feature state is not active; skipping processing of notifications");
      sub_10000FA7C();
    }

    v38 = *(v35 + 8);
    v39 = sub_100030CE0();
    v40(v39);
    sub_10004B0FC();

    sub_100030C70();
    sub_10004B250();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48);
  }
}

uint64_t sub_100043F4C()
{
  sub_100030C4C();
  sub_100030E50();
  sub_10004AFD8();
  *v3 = v2;
  v4 = *(v0 + 144);
  v5 = *v1;
  sub_10004B098();
  *v6 = v5;
  *(v8 + 152) = v7;

  sub_100030E68();
  v10 = *(v9 + 120);
  v11 = *(v0 + 112);

  return _swift_task_switch(sub_100044058, v11, v10);
}

uint64_t sub_100044058()
{
  sub_10004B23C();
  sub_100030E20();
  v1 = v0[7];
  static Logger.predictedLocationNotifications.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_10004B070(v3))
  {
    v4 = sub_100030F7C();
    sub_10004B0A8(v4);
    sub_10004AFE8();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_10004B030();
  }

  v10 = v0[17];
  v11 = v0[7];
  v12 = v0[3];
  v13 = v0[4];

  v14 = sub_100030CE0();
  v10(v14);
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_10004415C;
  v16 = v0[2];
  sub_10004B064(v0[19]);
  sub_10004B1C0();

  return sub_1000445C0(v17);
}

uint64_t sub_10004415C()
{
  sub_10004B23C();
  sub_100030E20();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  sub_10000FA6C();
  *v5 = v4;
  v6 = *(v3 + 160);
  v7 = *v0;
  *v5 = *v0;
  *(v4 + 168) = v2;

  v8 = swift_task_alloc();
  *(v4 + 176) = v8;
  *v8 = v7;
  v8[1] = sub_10004429C;
  v9 = *(v3 + 16);
  sub_10004B1C0();

  return sub_1000448B4(v10);
}

uint64_t sub_10004429C()
{
  sub_100030C58();
  sub_100030E50();
  sub_10000FA6C();
  *v2 = v0;
  v3 = v0[22];
  v4 = v0[21];
  v5 = *v1;
  *v2 = *v1;

  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v5;
  v6[1] = sub_1000443FC;
  v7 = v0[19];
  v8 = v0[2];
  v9 = sub_10004B064(v7);

  return sub_100045238(v9);
}

uint64_t sub_1000443FC()
{
  sub_100030C58();
  sub_100030E50();
  v2 = v0[23];
  v3 = v0[19];
  v4 = *v1;
  sub_10000FA6C();
  *v5 = v4;

  sub_100030E68();
  v7 = *(v6 + 120);
  v8 = v0[14];

  return _swift_task_switch(sub_10004452C, v8, v7);
}

uint64_t sub_10004452C()
{
  sub_10004B23C();
  sub_100030E20();
  v1 = *(v0 + 104);
  v2 = *(v0 + 16);

  sub_10004B134();
  sub_10004B0FC();

  sub_100030C70();
  sub_10004B1C0();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000445C0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v4;
  v2[11] = v3;

  return _swift_task_switch(sub_100044688, v4, v3);
}

uint64_t sub_100044688()
{
  sub_100030C4C();
  v0[12] = *(v0[8] + 96);
  ReferenceCountedLazy.increase()();
  v1 = *sub_1000032B8(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_100044738;
  sub_10004B064(v0[7]);

  return sub_100040F6C();
}

uint64_t sub_100044738()
{
  sub_100030C4C();
  sub_100030E50();
  sub_10004AFD8();
  *v3 = v2;
  v4 = *(v0 + 104);
  v5 = *v1;
  sub_10004B098();
  *v6 = v5;
  *(v8 + 112) = v7;

  sub_100030E68();
  v10 = *(v9 + 88);
  v11 = *(v0 + 80);

  return _swift_task_switch(sub_100044844, v11, v10);
}

uint64_t sub_100044844()
{
  sub_100030C4C();
  v1 = v0[12];
  v2 = v0[9];

  ReferenceCountedLazy.decrease()();
  sub_100006994(v0 + 2);
  v3 = v0[1];
  v4 = v0[14];

  return v3(v4);
}

uint64_t sub_1000448B4(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for Expression();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = *(type metadata accessor for ResolvedPredictedLocation() - 8);
  v2[14] = v6;
  v7 = *(v6 + 64) + 15;
  v2[15] = swift_task_alloc();
  v8 = sub_100003020(&qword_1000A40F0, &qword_100081030);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = *(v9 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[20] = v12;
  v2[21] = v11;

  return _swift_task_switch(sub_100044A98, v12, v11);
}

void sub_100044A98()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 72);
  *(v0 + 176) = *(*(v0 + 80) + 104);
  ReferenceCountedLazy.increase()();
  *(v0 + 64) = v4;
  *(v0 + 184) = *(v0 + 56);
  swift_getKeyPath();

  KeyPathComparator.init<A>(_:order:)();
  sub_100003020(&qword_1000A48B0, &qword_100081A78);
  sub_100006CD0(&qword_1000A48B8, &qword_1000A48B0, &qword_100081A78);
  sub_100006CD0(&qword_1000A4110, &qword_1000A40F0, &qword_100081030);
  v5 = Sequence.sorted<A>(using:)();
  *(v0 + 192) = v5;
  (*(v2 + 8))(v1, v3);

  v6 = *(v5 + 16);
  *(v0 + 200) = v6;
  if (v6)
  {
    v7 = 0;
    *(v0 + 256) = *(*(v0 + 112) + 80);
    while (1)
    {
      sub_10004B198(v7);
      if (v8)
      {
        __break(1u);
        return;
      }

      v9 = *(v0 + 256);
      v10 = *(v0 + 120);
      v11 = *(v0 + 72);
      v12 = *(*(v0 + 112) + 72);
      sub_10004AF50();
      sub_10004AB4C(v13, v14, v15);
      if (!*(v11 + 16))
      {
        goto LABEL_7;
      }

      v16 = *(v0 + 72);
      v17 = sub_100074E6C(*(v0 + 120));
      if (v18)
      {
        v19 = *(*(*(v0 + 72) + 56) + 8 * v17);
      }

      else
      {
LABEL_7:
        v20 = _swiftEmptyArrayStorage;
      }

      *(v0 + 216) = v20;
      v21 = v20[2];
      *(v0 + 224) = v21;
      if (v21)
      {
        break;
      }

      v23 = *(v0 + 200);
      v22 = *(v0 + 208);
      v24 = *(v0 + 120);

      sub_10004AF20();
      sub_10004AD90(v24, v25);
      if (v22 + 1 == v23)
      {
        v31 = *(v0 + 192);
        v32 = *(v0 + 152);
        goto LABEL_16;
      }

      v7 = *(v0 + 208) + 1;
    }

    *(v0 + 232) = 0;
    *(v0 + 240) = v20[4];

    v27 = swift_task_alloc();
    *(v0 + 248) = v27;
    *v27 = v0;
    v28 = sub_10004AFF8(v27);

    sub_100046EE8(v28, v29, v30);
  }

  else
  {
    v26 = *(v0 + 152);
LABEL_16:

    v33 = *(v0 + 184);
    NotificationStore.periodicWeatherAlerts.getter();
    v34 = *(v0 + 104);
    dispatch thunk of Table.delete.getter();

    *(v0 + 40) = type metadata accessor for Date();
    *(v0 + 48) = &protocol witness table for Date;
    sub_100006D18((v0 + 16));
    Date.init(timeIntervalSinceNow:)();
    sub_10004B1AC();
    <= infix(_:_:)();
    sub_100006994((v0 + 16));
    dispatch thunk of Delete.where(_:)();
    v36 = *(v0 + 96);
    v35 = *(v0 + 104);
    v37 = *(v0 + 88);
    v38 = sub_100030CAC();
    v39(v38);

    sub_10004B1FC();

    sub_100030C70();

    v40();
  }
}

uint64_t sub_100044E78()
{
  sub_100030C58();
  sub_100030E50();
  v2 = v0[31];
  v3 = v0[30];
  v4 = *v1;
  sub_10000FA6C();
  *v5 = v4;

  sub_100030E68();
  v7 = *(v6 + 168);
  v8 = v0[20];

  return _swift_task_switch(sub_100044FA8, v8, v7);
}

void sub_100044FA8()
{
  sub_10004B23C();
  sub_100030E20();
  v1 = *(v0 + 232) + 1;
  if (v1 == *(v0 + 224))
  {
    v2 = *(v0 + 216);
    while (1)
    {
      v4 = *(v0 + 200);
      v3 = *(v0 + 208);
      v5 = *(v0 + 120);

      sub_10004AF20();
      sub_10004AD90(v5, v6);
      if (v3 + 1 == v4)
      {
        break;
      }

      sub_10004B198(*(v0 + 208) + 1);
      if (v7)
      {
        __break(1u);
        return;
      }

      v8 = *(v0 + 256);
      v9 = *(v0 + 120);
      v10 = *(v0 + 72);
      v11 = *(*(v0 + 112) + 72);
      sub_10004AF50();
      sub_10004AB4C(v12, v13, v14);
      if (*(v10 + 16) && (v15 = *(v0 + 72), v16 = sub_100074E6C(*(v0 + 120)), (v17 & 1) != 0))
      {
        v18 = *(*(*(v0 + 72) + 56) + 8 * v16);
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      *(v0 + 216) = v19;
      v20 = v19[2];
      *(v0 + 224) = v20;
      if (v20)
      {
        v1 = 0;
        goto LABEL_12;
      }
    }

    v26 = *(v0 + 192);
    v27 = *(v0 + 152);

    v28 = *(v0 + 184);
    NotificationStore.periodicWeatherAlerts.getter();
    v29 = *(v0 + 104);
    dispatch thunk of Table.delete.getter();

    *(v0 + 40) = type metadata accessor for Date();
    *(v0 + 48) = &protocol witness table for Date;
    sub_100006D18((v0 + 16));
    Date.init(timeIntervalSinceNow:)();
    sub_10004B1AC();
    <= infix(_:_:)();
    sub_100006994((v0 + 16));
    dispatch thunk of Delete.where(_:)();
    v31 = *(v0 + 96);
    v30 = *(v0 + 104);
    v32 = *(v0 + 88);
    v33 = sub_100030CAC();
    v34(v33);

    sub_10004B1FC();

    sub_100030C70();
    sub_10004B1C0();

    v36(v35, v36, v37, v38, v39, v40, v41, v42);
  }

  else
  {
    v19 = *(v0 + 216);
LABEL_12:
    *(v0 + 232) = v1;
    *(v0 + 240) = v19[v1 + 4];

    v21 = swift_task_alloc();
    *(v0 + 248) = v21;
    *v21 = v0;
    sub_10004AFF8();
    sub_10004B1C0();

    sub_100046EE8(v22, v23, v24);
  }
}

uint64_t sub_100045238(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_10004AEC8(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[9] = v7;
  v2[10] = v6;

  return _swift_task_switch(sub_100045368, v7, v6);
}

uint64_t sub_100045368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10004B284();
  sub_100030E20();
  v13 = v12[7];
  static Logger.predictedLocationNotifications.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (sub_10004B070(v15))
  {
    v16 = sub_100030F7C();
    sub_10004B0A8(v16);
    sub_10004AFE8();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    sub_10004B030();
  }

  v22 = v12[7];
  v23 = v12[4];
  v24 = v12[5];
  v25 = v12[2];
  v26 = v12[3];

  v12[11] = *(v24 + 8);
  v27 = sub_100030CE0();
  v28(v27);
  v29 = *(v26 + 192);
  sub_100024F60();
  v12[12] = v30;
  v31 = async function pointer to Promise.resolveAsync()[1];
  v32 = swift_task_alloc();
  v12[13] = v32;
  *v32 = v12;
  v32[1] = sub_100045480;
  sub_10004B250();

  return Promise.resolveAsync()(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_100045480()
{
  sub_100030C4C();
  sub_100043668();
  v3 = v2;
  sub_10004AFD8();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_10000FA6C();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    v9 = v3[9];
    v10 = v3[10];
    v11 = sub_1000455EC;
  }

  else
  {
    v12 = v3[12];

    v9 = v3[9];
    v10 = v3[10];
    v11 = sub_100045584;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100045584()
{
  sub_100030C4C();
  v1 = v0[8];

  v3 = v0[6];
  v2 = v0[7];

  sub_100030C70();

  return v4();
}

uint64_t sub_1000455EC()
{
  sub_10004B23C();
  sub_100030E20();
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);

  static Logger.predictedLocationNotifications.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to validate cloud channel subscriptions when processing notifications for predicted locations; error=%{public}@", v9, 0xCu);
    sub_100018858(v10, &qword_1000A4030, &qword_100080F58);
    sub_10000FA7C();
    sub_10000FA7C();
  }

  else
  {
    v12 = *(v0 + 112);
  }

  v13 = *(v0 + 40) + 8;
  (*(v0 + 88))(*(v0 + 48), *(v0 + 32));
  v15 = *(v0 + 48);
  v14 = *(v0 + 56);

  sub_100030C70();
  sub_10004B1C0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_100045778()
{
  sub_100030C4C();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_10000E960(v2);
  v1[4] = v3;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AF38();
  sub_10004AEC8(v6, 255, v7);
  sub_10004B08C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10004B180();
  v1[7] = v8;
  v1[8] = v9;
  v10 = sub_10004B174();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100045874()
{
  v23 = v0;
  v1 = v0[5];
  static Logger.predictedLocationNotifications.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_10004B070(v3))
  {
    v4 = sub_100030F7C();
    sub_10004B0A8(v4);
    sub_10004AFE8();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_10004B030();
  }

  v11 = v0[4];
  v10 = v0[5];
  v13 = v0[2];
  v12 = v0[3];

  v14 = *(v11 + 8);
  v15 = sub_100030CE0();
  v16(v15);
  os_unfair_lock_lock((v13 + 416));
  sub_100045B70((v13 + 424), v13, &v22);
  os_unfair_lock_unlock((v13 + 416));
  v17 = v22;
  v0[9] = v22;
  v18 = async function pointer to Task.value.getter[1];
  v19 = swift_task_alloc();
  v0[10] = v19;
  v20 = sub_100003020(&qword_1000A37F0, &unk_100080850);
  *v19 = v0;
  v19[1] = sub_1000459F8;

  return Task.value.getter(v20, v17, &type metadata for () + 8, v20, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000459F8()
{
  sub_100030C58();
  sub_100043668();
  v3 = v2;
  sub_10004AFD8();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_10000FA6C();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v3 + 56);
    v10 = *(v3 + 64);
    v11 = sub_10004AF1C;
  }

  else
  {
    v9 = *(v3 + 56);
    v10 = *(v3 + 64);
    v11 = sub_100045B04;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100045B04()
{
  sub_100030C4C();
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];

  sub_100030C70();

  return v4();
}

uint64_t sub_100045B70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = a2;
  v5 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v25 = a1;
    static Logger.predictedLocationNotifications.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v24 = a3;
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Cancelling in progress rescheduling task", v16, 2u);
      a3 = v24;
    }

    (*(v10 + 8))(v13, v9);
    sub_100003020(&qword_1000A37F0, &unk_100080850);
    Task.cancel()();

    a1 = v25;
  }

  v17 = type metadata accessor for TaskPriority();
  sub_100006BD4(v8, 1, 1, v17);
  v18 = v26;

  v19 = static LocIntelActor.shared.getter();
  v20 = sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = v18;
  v22 = sub_1000465F0(0, 0, v8, &unk_100081A28, v21);
  *a1 = v22;
  *a3 = v22;
}

uint64_t sub_100045E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_100003020(&qword_1000A4600, &qword_100081A30) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v7;
  v4[6] = v6;

  return _swift_task_switch(sub_100045F30, v7, v6);
}

uint64_t sub_100045F30()
{
  sub_100030C58();
  v1 = v0[3];
  v2 = *sub_1000032B8((v0[2] + 288), *(v0[2] + 312));
  sub_10006419C();
  v3 = type metadata accessor for PredictedLocationsRefresh();
  LODWORD(v2) = sub_100007374(v1, 1, v3);
  sub_100018858(v1, &qword_1000A4600, &qword_100081A30);
  static Task<>.checkCancellation()();
  v0[7] = 0;
  if (v2 == 1)
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    sub_10004B1D4(v4);
    v5 = sub_10004B064(_swiftEmptyArrayStorage);

    return sub_100045238(v5);
  }

  else
  {
    v7 = *sub_1000032B8((v0[2] + 248), *(v0[2] + 272));
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_100046114;

    return sub_100068DE0();
  }
}

uint64_t sub_100046114()
{
  sub_100030C4C();
  sub_100030E50();
  sub_10004AFD8();
  *v3 = v2;
  v4 = *(v0 + 64);
  v5 = *v1;
  sub_10004B098();
  *v6 = v5;
  *(v8 + 72) = v7;

  sub_100030E68();
  v10 = *(v9 + 48);
  v11 = *(v0 + 40);

  return _swift_task_switch(sub_100046220, v11, v10);
}

uint64_t sub_100046220()
{
  sub_100030C58();
  v1 = v0[7];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[9];

    v4 = v0[3];
    v3 = v0[4];
    v5 = v0[2];

    os_unfair_lock_lock((v5 + 416));
    v6 = *(v5 + 424);

    *(v5 + 424) = 0;
    os_unfair_lock_unlock((v5 + 416));

    sub_100030C70();

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_100046330;
    v10 = v0[2];
    v11 = sub_10004B064(v0[9]);

    return sub_100045238(v11);
  }
}

uint64_t sub_100046330()
{
  sub_100030C58();
  sub_100030E50();
  v2 = v0[10];
  v3 = v0[9];
  v4 = *v1;
  sub_10000FA6C();
  *v5 = v4;

  sub_100030E68();
  v7 = *(v6 + 48);
  v8 = v0[5];

  return _swift_task_switch(sub_100046460, v8, v7);
}

uint64_t sub_100046460()
{
  sub_100030C4C();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  os_unfair_lock_lock((v3 + 416));
  v4 = *(v3 + 424);

  *(v3 + 424) = 0;
  os_unfair_lock_unlock((v3 + 416));

  sub_100030C70();

  return v5();
}

uint64_t sub_1000464E4()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *(v0 + 88);
  v3 = *v1;
  sub_10000FA6C();
  *v4 = v3;

  sub_100030E68();
  v6 = *(v5 + 48);
  v7 = *(v0 + 40);

  return _swift_task_switch(sub_10004AF18, v7, v6);
}

uint64_t sub_1000465F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  sub_10003C7D0(a3, v23 - v10, &unk_1000A3930, &qword_100080900);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100007374(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100018858(v11, &unk_1000A3930, &qword_100080900);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_100018858(a3, &unk_1000A3930, &qword_100080900);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100018858(a3, &unk_1000A3930, &qword_100080900);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100046880()
{
  sub_100030C4C();
  v1[2] = v0;
  v1[3] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AF38();
  sub_10004AEC8(v2, 255, v3);
  sub_10004B08C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10004B180();
  v1[4] = v4;
  v1[5] = v5;
  v6 = sub_10004B174();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100046A28()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *(v0 + 48);
  v3 = *v1;
  sub_10000FA6C();
  *v4 = v3;

  sub_100030E68();
  v6 = *(v5 + 40);
  v7 = *(v0 + 32);

  return _swift_task_switch(sub_100046B34, v7, v6);
}

uint64_t sub_100046B34()
{
  sub_100030C4C();
  v1 = *(v0 + 24);

  sub_100030C70();

  return v2();
}

uint64_t sub_100046B8C()
{
  sub_100030C4C();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_10000E960(v2);
  v1[4] = v3;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AF38();
  sub_10004AEC8(v6, 255, v7);
  sub_10004B08C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10004B180();
  v1[7] = v8;
  v1[8] = v9;
  v10 = sub_10004B174();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100046C88()
{
  sub_100030C58();
  v1 = v0[5];
  static Logger.predictedLocationNotifications.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_10004B070(v3))
  {
    v4 = sub_100030F7C();
    sub_10004B0A8(v4);
    sub_10004AFE8();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_10004B030();
  }

  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[3];

  v13 = sub_100030CAC();
  v14(v13);
  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  sub_10004B1D4(v15);

  return sub_100046880();
}

uint64_t sub_100046D7C()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *(v0 + 72);
  v3 = *v1;
  sub_10000FA6C();
  *v4 = v3;

  sub_100030E68();
  v6 = *(v5 + 64);
  v7 = *(v0 + 56);

  return _swift_task_switch(sub_100046E88, v7, v6);
}

uint64_t sub_100046E88()
{
  sub_100030C4C();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  sub_100030C70();

  return v3();
}

uint64_t sub_100046EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UUID();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = type metadata accessor for PeriodicWeatherAlertEntity();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = type metadata accessor for WeatherAlert();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor);
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v18;
  v4[22] = v17;

  return _swift_task_switch(sub_10004713C, v18, v17);
}

uint64_t sub_10004713C()
{
  sub_10004B23C();
  sub_100030E20();
  v1 = v0[5];
  if (sub_100047830(v0[3], v0[4]))
  {
    v2 = v0[20];

    sub_10004B0D8();

    sub_100030C70();
    sub_10004B1C0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    v12 = swift_task_alloc();
    v0[23] = v12;
    *v12 = v0;
    v12[1] = sub_100047248;
    v13 = v0[5];
    v14 = v0[3];
    sub_10004B064(v0[2]);
    sub_10004B1C0();

    return sub_100048450(v15, v16);
  }
}

uint64_t sub_100047248()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *(v0 + 184);
  v3 = *v1;
  sub_10000FA6C();
  *v4 = v3;

  sub_100030E68();
  v6 = *(v5 + 176);
  v7 = *(v0 + 168);

  return _swift_task_switch(sub_100047354, v7, v6);
}

uint64_t sub_100047354()
{
  v1 = v0[20];
  v2 = v0[5];
  v3 = v0[3];

  sub_10004B134();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v0[16];
    v7 = *(v5 + 16);
    v5 += 16;
    v6 = v7;
    v8 = v0[3] + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v21 = (v0[13] + 8);
    v25 = (v5 - 8);
    v26 = *(v5 + 56);
    v24 = v0[10] + 8;
    v22 = v0[7] + 8;
    v23 = v7;
    do
    {
      v9 = v0[4];
      v6(v0[19], v8, v0[15]);
      NotificationStore.periodicWeatherAlerts.getter();
      v27 = v8;
      v11 = v0[18];
      v10 = v0[19];
      v12 = v6;
      v14 = v0[14];
      v13 = v0[15];
      dispatch thunk of Table.save.getter();

      v12(v11, v10, v13);
      PeriodicWeatherAlertEntity.init(weatherAlert:)();
      dispatch thunk of Save.entity(_:)();
      v15 = v0[19];
      v17 = v0[14];
      v16 = v0[15];
      v18 = v0[12];

      (*v21)(v17, v18);
      (*v25)(v15, v16);
      v6 = v23;
      v8 = v27 + v26;
      --v4;
    }

    while (v4);
  }

  sub_10004B0D8();

  sub_100030C70();

  return v19();
}

uint64_t sub_100047830(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v4 = *v2;
  v87 = type metadata accessor for Logger();
  v85 = *(v87 - 8);
  v5 = *(v85 + 64);
  v6 = __chkstk_darwin(v87);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v71 = &v67 - v10;
  __chkstk_darwin(v9);
  v12 = &v67 - v11;
  v13 = sub_100003020(&qword_1000A40D8, &qword_100080FF8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v73 = &v67 - v15;
  v16 = sub_100003020(&qword_1000A3808, &qword_100080F70);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v72 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v67 - v20;
  v83 = type metadata accessor for Expression();
  v22 = *(v83 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v83);
  v75 = (&v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v80 = &v67 - v26;
  v27 = sub_100003020(&qword_1000A40D0, &qword_100080FF0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v79 = &v67 - v29;
  v88 = type metadata accessor for UUID();
  v30 = *(v88 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v88);
  v33 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Settings.Notifications.Severe.filterHandledAlerts.getter();
  sub_10004AEC8(&qword_1000A48C0, v34, type metadata accessor for PredictedLocationsNotificationsManager);
  Configurable.setting<A>(_:)();

  if (v90 != 1)
  {
    return 0;
  }

  v67 = v12;
  v35 = *(a1 + 16);
  if (!v35)
  {
    return 0;
  }

  v36 = *(type metadata accessor for WeatherAlert() - 8);
  v37 = a1 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v86 = (v30 + 8);
  v78 = (v22 + 8);
  v69 = (v22 + 104);
  v84 = (v85 + 8);
  v68 = enum case for Expression.and(_:);
  v85 = *(v36 + 72);
  *&v38 = 138543362;
  v81 = v38;
  v82 = v21;
  v77 = v8;
  v76 = v33;
  while (1)
  {
    WeatherAlert.id.getter();
    v39 = UUID.uuidString.getter();
    v41 = v40;
    (*v86)(v33, v88);
    NotificationStore.periodicWeatherAlerts.getter();
    dispatch thunk of Table.query.getter();

    v92 = &type metadata for String;
    v93 = &protocol witness table for String;
    v90 = v39;
    v91 = v41;

    v42 = v39;
    v43 = v80;
    == infix(_:_:)();
    sub_100006994(&v90);
    v44 = type metadata accessor for OrderBy();
    sub_100006BD4(v21, 1, 1, v44);
    v45 = v79;
    dispatch thunk of Query.first(_:orderBy:)();
    v74 = v44;

    sub_100018858(v21, &qword_1000A3808, &qword_100080F70);
    v46 = *v78;
    (*v78)(v43, v83);
    v47 = type metadata accessor for PeriodicWeatherAlertEntity();
    v48 = sub_100007374(v45, 1, v47);
    sub_100018858(v45, &qword_1000A40D0, &qword_100080FF0);
    if (v48 != 1)
    {
      break;
    }

    NotificationStore.weatherAlerts.getter();
    v70 = v46;
    dispatch thunk of Table.query.getter();

    v49 = sub_100003020(&qword_1000A48C8, &qword_100081A90);
    v50 = swift_allocBox();
    v51 = *(v49 + 48);
    v92 = &type metadata for String;
    v93 = &protocol witness table for String;
    v90 = v42;
    v91 = v41;

    == infix(_:_:)();
    sub_100006994(&v90);
    v92 = &type metadata for Bool;
    v93 = &protocol witness table for Bool;
    LOBYTE(v90) = 1;
    == infix(_:_:)();
    sub_100006994(&v90);
    v52 = v75;
    *v75 = v50;
    (*v69)(v52, v68, v83);
    v53 = v72;
    sub_100006BD4(v72, 1, 1, v74);
    dispatch thunk of Query.first(_:orderBy:)();
    v33 = v76;

    sub_100018858(v53, &qword_1000A3808, &qword_100080F70);
    v70(v75, v83);
    v54 = type metadata accessor for WeatherAlertEntity();
    v55 = v73;
    if (sub_100007374(v73, 1, v54) != 1)
    {
      sub_100018858(v55, &qword_1000A40D8, &qword_100080FF8);
      v57 = v67;
      static Logger.predictedLocationNotifications.getter();

      v58 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v58, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v90 = v65;
        *v64 = 136446210;
        v66 = sub_10000D9FC(v42, v41, &v90);

        *(v64 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v58, v63, "Will skip notification for previously handled cloud channel weather alert with identifier: %{public}s", v64, 0xCu);
        sub_100006994(v65);

        goto LABEL_13;
      }

      goto LABEL_16;
    }

    sub_100018858(v55, &qword_1000A40D8, &qword_100080FF8);
    v21 = v82;
    v37 += v85;
    if (!--v35)
    {
      return 0;
    }
  }

  v57 = v71;
  static Logger.predictedLocationNotifications.getter();

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v90 = v61;
    *v60 = 136446210;
    v62 = sub_10000D9FC(v42, v41, &v90);

    *(v60 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v58, v59, "Will skip notification for previously handled periodic weather alert with identifier: %{public}s", v60, 0xCu);
    sub_100006994(v61);

LABEL_13:

    goto LABEL_17;
  }

LABEL_16:

LABEL_17:

  (*v84)(v57, v87);
  return 1;
}

uint64_t sub_100048450(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for WeatherAlert();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = *(*(type metadata accessor for ResolvedPredictedLocation() - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v11 = type metadata accessor for SevereNotification(0);
  v3[18] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v3[20] = v13;
  v14 = *(v13 - 8);
  v3[21] = v14;
  v15 = *(v14 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v16 = type metadata accessor for PeriodicSevereNotification(0);
  v3[24] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v18 = type metadata accessor for SevereNotificationContent();
  v3[26] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v20 = type metadata accessor for Date();
  v3[28] = v20;
  v21 = *(v20 - 8);
  v3[29] = v21;
  v22 = *(v21 + 64) + 15;
  v3[30] = swift_task_alloc();
  v23 = type metadata accessor for SevereNotificationSubscription();
  v3[31] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v25 = *(*(sub_100003020(&qword_1000A4070, &unk_100080F90) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor);
  v27 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[36] = v27;
  v3[37] = v26;

  return _swift_task_switch(sub_1000487F8, v27, v26);
}

uint64_t sub_1000487F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v97 = v12;
  v13 = v12[33];
  v14 = v12[34];
  v15 = v12[31];
  v16 = v12[32];
  v18 = v12[29];
  v17 = v12[30];
  v90 = v12[28];
  v93 = v12[26];
  v19 = v12[5];
  v20 = v12[4];
  v21 = sub_1000032B8((v12[6] + 112), *(v12[6] + 136));
  sub_10004AF50();
  sub_10004AB4C(v20, v16, v22);
  swift_storeEnumTagMultiPayload();
  static Date.now.getter();
  v23 = *v21;
  sub_100016658(v19, v16, v17, v14);
  (*(v18 + 8))(v17, v90);
  sub_10004B04C();
  sub_10004AD90(v16, v24);
  sub_10003C7D0(v14, v13, &qword_1000A4070, &unk_100080F90);
  if (sub_100007374(v13, 1, v93) == 1)
  {
    v25 = v12[35];
    v26 = v12[33];
    v27 = v12[16];
    v28 = v12[11];
    v30 = v12[4];
    v29 = v12[5];

    sub_100018858(v26, &qword_1000A4070, &unk_100080F90);
    static Logger.predictedLocationNotifications.getter();
    sub_10004AF50();
    sub_10004AB4C(v30, v28, v31);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v12[34];
    v36 = v12[16];
    v37 = v12[13];
    v38 = v12[14];
    v39 = v12[11];
    if (v34)
    {
      v86 = v12[7];
      v94 = v12[34];
      v40 = v12[5];
      v41 = sub_100037B44();
      v96 = swift_slowAlloc();
      *v41 = 141558531;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      v88 = v37;
      v91 = v36;
      v42 = ResolvedPredictedLocation.description.getter();
      v44 = v43;
      sub_10004AF20();
      sub_10004AD90(v39, v45);
      v46 = sub_10000D9FC(v42, v44, &v96);

      *(v41 + 14) = v46;
      *(v41 + 22) = 2080;
      v47 = Array.description.getter();
      v49 = sub_10000D9FC(v47, v48, &v96);

      *(v41 + 24) = v49;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to make notification content for location=%{private,mask.hash}s, weatherAlerts=%s", v41, 0x20u);
      swift_arrayDestroy();
      sub_10000FA7C();
      sub_10000FA7C();

      (*(v38 + 8))(v91, v88);
      v50 = v94;
    }

    else
    {

      sub_10004AF20();
      sub_10004AD90(v39, v80);
      (*(v38 + 8))(v36, v37);
      v50 = v35;
    }

    sub_100018858(v50, &qword_1000A4070, &unk_100080F90);
    sub_10004AF98();
    sub_10004B0B4();

    sub_100030C70();
    sub_10004B1E0();

    __asm { BRAA            X1, X16 }
  }

  v51 = v12[32];
  v52 = v12[27];
  v53 = v12[24];
  v54 = v12[25];
  v55 = v12[23];
  v56 = v12[20];
  v57 = v12[21];
  v58 = v12[19];
  v92 = v12[18];
  v95 = v12[31];
  v59 = v12[6];
  v87 = v12[4];
  v89 = v12[5];
  sub_10004AD30(v12[33], v52, type metadata accessor for SevereNotificationContent);
  UUID.init()();
  v60 = UUID.uuidString.getter();
  v84 = v61;
  v85 = v60;
  (*(v57 + 8))(v55, v56);
  sub_10004AB4C(v52, v54 + *(v53 + 24), type metadata accessor for SevereNotificationContent);
  v62 = *(v53 + 28);
  v63 = type metadata accessor for Location();
  sub_100018904(v63);
  (*(v64 + 16))(v54 + v62, v87);
  *v54 = v85;
  v54[1] = v84;
  v54[2] = v89;
  v65 = sub_1000032B8((v59 + 152), *(v59 + 176));
  sub_10004AB4C(v54, v58, type metadata accessor for PeriodicSevereNotification);
  swift_storeEnumTagMultiPayload();
  sub_10004AF50();
  sub_10004AB4C(v87, v51, v66);
  swift_storeEnumTagMultiPayload();
  v67 = *v65;

  sub_100032A48();
  v12[38] = v68;
  sub_10004B04C();
  sub_10004AD90(v51, v69);
  sub_10004AD90(v58, type metadata accessor for SevereNotification);
  v70 = async function pointer to Promise.resolveAsync()[1];
  v71 = swift_task_alloc();
  v12[39] = v71;
  *v71 = v12;
  v71[1] = sub_100048DA4;
  sub_10004B1E0();

  return Promise.resolveAsync()(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12);
}

uint64_t sub_100048DA4()
{
  sub_100030C4C();
  sub_100043668();
  v3 = v2;
  sub_10004AFD8();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  sub_10000FA6C();
  *v8 = v7;
  v3[40] = v0;

  if (v0)
  {
    v9 = v3[36];
    v10 = v3[37];
    v11 = sub_100049378;
  }

  else
  {
    v12 = v3[38];

    v9 = v3[36];
    v10 = v3[37];
    v11 = sub_100048EA8;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100048EA8()
{
  v71 = v0;
  v1 = v0[35];
  v2 = v0[17];
  v3 = v0[12];
  v4 = v0[4];
  v5 = v0[5];

  v7 = v0[2];
  v6 = v0[3];
  static Logger.predictedLocationNotifications.getter();
  sub_10004AF50();
  sub_10004AB4C(v4, v3, v8);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v60 = v10;
    log = v9;
    v11 = v0[12];
    v12 = v0[5];
    v13 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v13 = 136315907;
    v14 = sub_10000D9FC(v7, v6, &v69);

    *(v13 + 4) = v14;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v15 = ResolvedPredictedLocation.description.getter();
    v17 = v16;
    sub_10004AF20();
    sub_10004AD90(v11, v18);
    v19 = sub_10000D9FC(v15, v17, &v69);

    *(v13 + 24) = v19;
    *(v13 + 32) = 2080;
    v20 = *(v12 + 16);
    if (v20)
    {
      v21 = v0[21];
      v22 = v0[8];
      v23 = v0[5];
      v70 = _swiftEmptyArrayStorage;
      sub_10001486C(0, v20, 0);
      v24 = v70;
      v25 = *(v22 + 16);
      v22 += 16;
      v26 = v23 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
      v63 = *(v22 + 56);
      v65 = v25;
      v27 = (v22 - 8);
      do
      {
        v28 = v0[22];
        v29 = v0[9];
        v30 = v0[7];
        v65(v29, v26, v30);
        WeatherAlert.id.getter();
        (*v27)(v29, v30);
        v70 = v24;
        v32 = v24[2];
        v31 = v24[3];
        if (v32 >= v31 >> 1)
        {
          sub_10001486C(v31 > 1, v32 + 1, 1);
          v24 = v70;
        }

        v33 = v0[22];
        v34 = v0[20];
        v24[2] = v32 + 1;
        (*(v21 + 32))(v24 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v32, v33, v34);
        v26 += v63;
        --v20;
      }

      while (v20);
    }

    v67 = v0[34];
    v46 = v0[27];
    v47 = v0[25];
    v48 = v0[20];
    v49 = v0[17];
    v51 = v0[13];
    v50 = v0[14];
    v52 = Array.description.getter();
    v54 = v53;

    v55 = sub_10000D9FC(v52, v54, &v69);

    *(v13 + 34) = v55;
    _os_log_impl(&_mh_execute_header, log, v60, "Successfully sent notification with id=%s for location=%{private,mask.hash}s; weatherAlerts=%s", v13, 0x2Au);
    swift_arrayDestroy();
    sub_10004B030();
    sub_10000FA7C();

    (*(v50 + 8))(v49, v51);
    sub_10004AF80();
    sub_10004AD90(v47, v56);
    sub_10004AF68();
    sub_10004AD90(v46, v57);
    v45 = v67;
  }

  else
  {
    v35 = v0[34];
    v36 = v0[27];
    v37 = v0[25];
    v38 = v0[17];
    v40 = v0[13];
    v39 = v0[14];
    v41 = v0[12];

    sub_10004AF20();
    sub_10004AD90(v41, v42);
    (*(v39 + 8))(v38, v40);
    sub_10004AF80();
    sub_10004AD90(v37, v43);
    sub_10004AF68();
    sub_10004AD90(v36, v44);
    v45 = v35;
  }

  sub_100018858(v45, &qword_1000A4070, &unk_100080F90);
  sub_10004AF98();
  loga = v0[12];
  v64 = v0[11];
  v66 = v0[10];
  v68 = v0[9];

  sub_100030C70();

  return v58();
}

void sub_100049378()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[15];
  v5 = v0[10];
  v6 = v0[4];

  static Logger.predictedLocationNotifications.getter();
  sub_10004AF50();
  sub_10004AB4C(v6, v5, v7);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v40 = v0[40];
  v11 = v0[34];
  v12 = v0[27];
  v13 = v0[25];
  v15 = v0[14];
  v14 = v0[15];
  v16 = v0[13];
  v17 = v0[10];
  if (v10)
  {
    v39 = v0[34];
    v18 = sub_100037B44();
    v37 = v13;
    v19 = swift_slowAlloc();
    v38 = v12;
    v20 = sub_100037B44();
    v41 = v20;
    *v18 = 141558531;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    v35 = v16;
    v36 = v14;
    v21 = ResolvedPredictedLocation.description.getter();
    v23 = v22;
    sub_10004AF20();
    sub_10004AD90(v17, v24);
    v25 = sub_10000D9FC(v21, v23, &v41);

    *(v18 + 14) = v25;
    *(v18 + 22) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v26;
    *v19 = v26;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to send notification for location=%{private,mask.hash}s; error=%{public}@", v18, 0x20u);
    sub_100018858(v19, &qword_1000A4030, &qword_100080F58);
    sub_10000FA7C();
    sub_100006994(v20);
    sub_10004B030();
    sub_10000FA7C();

    (*(v15 + 8))(v36, v35);
    sub_10004AF80();
    sub_10004AD90(v37, v27);
    sub_10004AF68();
    sub_10004AD90(v38, v28);
    v29 = v39;
  }

  else
  {

    sub_10004AF20();
    sub_10004AD90(v17, v30);
    (*(v15 + 8))(v14, v16);
    sub_10004AF80();
    sub_10004AD90(v13, v31);
    sub_10004AF68();
    sub_10004AD90(v12, v32);
    v29 = v11;
  }

  sub_100018858(v29, &qword_1000A4070, &unk_100080F90);
  sub_10004AF98();
  sub_10004B0B4();

  sub_100030C70();
  sub_10004B1E0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000496A8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000435A4;

  return sub_1000438BC();
}

uint64_t sub_100049738()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100043300;

  return sub_100045778();
}

uint64_t sub_1000497C8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000435A4;

  return sub_100046880();
}

uint64_t sub_100049858()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000435A4;

  return sub_100046B8C();
}

uint64_t sub_1000498E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_100049910(a1, a2);
  return 1;
}

uint64_t sub_100049910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for Logger();
  v9 = sub_100006FBC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v9);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v45 - v17;
  static Logger.predictedLocationNotifications.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = sub_100030F7C();
    v46 = v16;
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Running predicted locations manager as xpc activity", v21, 2u);
    v16 = v46;
    sub_10000FA7C();
  }

  v22 = *(v11 + 8);
  v22(v18, v8);
  if (WDWeatherAppIsInstalled())
  {
    type metadata accessor for TaskPriority();
    sub_100030DE0();
    sub_100006BD4(v23, v24, v25, v26);

    v27 = static LocIntelActor.shared.getter();
    sub_10004AF38();
    v30 = sub_10004AEC8(v28, 255, v29);
    v31 = swift_allocObject();
    v31[2] = v27;
    v31[3] = v30;
    v31[4] = v3;
    v31[5] = a1;
    v31[6] = a2;
  }

  else
  {
    static Logger.predictedLocationNotifications.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (sub_10004B118(v33))
    {
      v34 = sub_100030F7C();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v3, "Weather app was uninstalled; rejecting xpc run instructions", v34, 2u);
      sub_10000FA7C();
    }

    v22(v16, v8);
    type metadata accessor for TaskPriority();
    sub_100030DE0();
    sub_100006BD4(v35, v36, v37, v38);

    v39 = static LocIntelActor.shared.getter();
    sub_10004AF38();
    v42 = sub_10004AEC8(v40, 255, v41);
    v43 = swift_allocObject();
    v43[2] = v39;
    v43[3] = v42;
    v43[4] = a1;
    v43[5] = a2;
  }

  sub_10006C7F8();

  return 1;
}

uint64_t sub_100049CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = sub_100006FBC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (WDWeatherAppIsInstalled())
  {
    sub_10004B264();
    return sub_100063AEC(a1, a2);
  }

  else
  {
    static Logger.predictedLocationNotifications.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = sub_100030F7C();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Weather app was uninstalled; rejecting verification request", v15, 2u);
      sub_10000FA7C();
    }

    (*(v7 + 8))(v11, v4);
    type metadata accessor for Date();
    sub_100030DE0();
    sub_100006BD4(v16, v17, v18, v19);
    return 0;
  }
}

uint64_t sub_100049E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(sub_100003020(&qword_1000A3800, &unk_100080860) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v5[5] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100049F28, v8, v7);
}

uint64_t sub_100049F28()
{
  sub_100030C58();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  type metadata accessor for Date();
  sub_100030DE0();
  sub_100006BD4(v5, v6, v7, v8);
  v4(v2, 0, 1);
  sub_100018858(v2, &qword_1000A3800, &unk_100080860);

  sub_100030C70();

  return v9();
}

uint64_t sub_100049FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_100003020(&qword_1000A3800, &unk_100080860) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v8 = *(*(sub_100003020(&qword_1000A4600, &qword_100081A30) - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v9 = type metadata accessor for PredictedLocationsRefresh();
  v6[7] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = static LocIntelActor.shared.getter();
  v11 = swift_task_alloc();
  v6[10] = v11;
  *v11 = v6;
  v11[1] = sub_10004A118;

  return sub_1000438BC();
}

uint64_t sub_10004A118()
{
  sub_100030C4C();
  sub_100043668();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  sub_10000FA6C();
  *v5 = v4;

  type metadata accessor for LocIntelActor.Actor();
  sub_10004AF38();
  sub_10004AEC8(v6, 255, v7);
  sub_10004B08C();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004A25C, v9, v8);
}

uint64_t sub_10004A25C()
{
  sub_10004B284();
  sub_100030E20();
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = v0[2];

  sub_10004B264();
  v6 = type metadata accessor for Date();
  sub_100030DE0();
  sub_100006BD4(v7, v8, v9, v6);
  sub_1000629B8();
  sub_100018858(v4, &qword_1000A3800, &unk_100080860);
  if (sub_100007374(v3, 1, v2) == 1)
  {
    v10 = v0[5];
    v12 = v0[3];
    v11 = v0[4];
    sub_100018858(v0[6], &qword_1000A4600, &qword_100081A30);
    sub_100030DE0();
    sub_100006BD4(v13, v14, v15, v6);
    v12(v10, 0, 1);
    sub_100018858(v10, &qword_1000A3800, &unk_100080860);
  }

  else
  {
    v17 = v0[7];
    v16 = v0[8];
    v18 = v0[5];
    v20 = v0[3];
    v19 = v0[4];
    sub_10004AD30(v0[6], v16, type metadata accessor for PredictedLocationsRefresh);
    (*(*(v6 - 8) + 16))(v18, v16, v6);
    sub_100006BD4(v18, 0, 1, v6);
    v20(v18, *(v16 + *(v17 + 20)), 0);
    sub_100018858(v18, &qword_1000A3800, &unk_100080860);
    sub_10004AD90(v16, type metadata accessor for PredictedLocationsRefresh);
  }

  v21 = v0[8];
  v22 = v0[5];
  v23 = v0[6];

  sub_100030C70();
  sub_10004B250();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_10004A45C()
{
  sub_100003020(&qword_1000A4178, &qword_100081AD0);
  updated = type metadata accessor for LocationManagerUpdateType();
  sub_100006FBC(updated);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100081610;
  (*(v2 + 104))(v6 + v5, enum case for LocationManagerUpdateType.authorization(_:), updated);
  return v6;
}

uint64_t sub_10004A530(uint64_t a1, int a2)
{
  v4 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v7 = *(v2 + 408);
  if (v7)
  {
    *(v2 + 408) = a2;
    if (v7 != a2)
    {
      type metadata accessor for TaskPriority();
      sub_100030DE0();
      sub_100006BD4(v8, v9, v10, v11);

      v12 = static LocIntelActor.shared.getter();
      sub_10004AF38();
      v15 = sub_10004AEC8(v13, 255, v14);
      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      *(v16 + 24) = v15;
      *(v16 + 32) = v7;
      *(v16 + 36) = a2;
      *(v16 + 40) = v2;
      sub_10006C7F8();
    }
  }

  else
  {
    *(v2 + 408) = a2;
  }

  return result;
}

uint64_t sub_10004A66C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  *(v6 + 80) = a4;
  *(v6 + 84) = a5;
  v7 = type metadata accessor for Logger();
  *(v6 + 24) = v7;
  v8 = *(v7 - 8);
  *(v6 + 32) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 40) = swift_task_alloc();
  *(v6 + 48) = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 56) = v11;
  *(v6 + 64) = v10;

  return _swift_task_switch(sub_10004A794, v11, v10);
}

uint64_t sub_10004A794()
{
  sub_10004B23C();
  sub_100030E20();
  v1 = *(v0 + 40);
  static Logger.predictedLocationNotifications.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_10004B070(v3))
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 84);
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    *(v6 + 4) = v5;
    *(v6 + 8) = 1024;
    *(v6 + 10) = v4;
    sub_10004AFE8();
    _os_log_impl(v7, v8, v9, v10, v11, 0xEu);
    sub_10004B030();
  }

  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v14 = *(v0 + 24);

  v15 = sub_100030CAC();
  v16(v15);
  v17 = swift_task_alloc();
  *(v0 + 72) = v17;
  *v17 = v0;
  sub_10004B1D4(v17);
  sub_10004B1C0();

  return sub_100045778();
}

uint64_t sub_10004A8B0()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *(v0 + 72);
  v3 = *v1;
  sub_10000FA6C();
  *v4 = v3;

  sub_100030E68();
  v6 = *(v5 + 64);
  v7 = *(v0 + 56);

  return _swift_task_switch(sub_10004AF10, v7, v6);
}

uint64_t sub_10004AA78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004AAB8()
{
  sub_100030C58();
  sub_10004B18C();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100030BFC(v2);
  *v3 = v4;
  v5 = sub_10004AFC0(v3);

  return sub_100045E30(v5, v6, v7, v1);
}

uint64_t sub_10004AB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100018904(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10004ABB0()
{
  sub_10004B23C();
  sub_100030E20();
  sub_10004B18C();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_100030BFC(v3);
  *v4 = v5;
  sub_10004AFC0(v4);
  sub_10004B1C0();

  return sub_100049E28(v6, v7, v8, v9, v10);
}

uint64_t sub_10004AC48()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004AC90()
{
  sub_10004B284();
  sub_100030E20();
  sub_10004B18C();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_100030BFC(v4);
  *v5 = v6;
  sub_10004AFC0(v5);
  sub_10004B250();

  return sub_100049FD8(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10004AD30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100018904(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10004AD90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100018904(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10004ADE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004AE28()
{
  sub_10004B284();
  sub_100030E20();
  sub_10004B18C();
  v1 = *(v0 + 32);
  v2 = *(v0 + 36);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = sub_100030BFC(v4);
  *v5 = v6;
  sub_10004AFC0(v5);
  sub_10004B250();

  return sub_10004A66C(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10004AEC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10004AF98()
{
  v2 = v0[33];
  result = v0[34];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[19];
  v10 = v0[16];
  v11 = v0[17];
  v12 = v0[15];
  return result;
}

uint64_t sub_10004AFF8(uint64_t a1)
{
  *(a1 + 8) = sub_100044E78;
  v2 = v1[23];
  v3 = v1[10];
  return v1[15];
}

uint64_t sub_10004B030()
{
}

BOOL sub_10004B070(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10004B0B4()
{
  v3 = v0[12];
  v4 = v0[11];
  v5 = v0[10];
  v6 = v0[9];
}

uint64_t sub_10004B0D8()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[8];
}

uint64_t sub_10004B0FC()
{
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
}

BOOL sub_10004B118(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_10004B134()
{
  v1 = v0[45];
  sub_1000032B8(v0 + 41, v0[44]);

  PredictedLocationsScheduleStoreType.recordSuccessfulExecution()();
}

uint64_t sub_10004B1D4(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 16);
  return result;
}

void sub_10004B1FC()
{
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[13];

  ReferenceCountedLazy.decrease()();
}

void sub_10004B21C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t *sub_10004B264()
{
  result = sub_1000032B8((v0 + 288), *(v0 + 312));
  v2 = *result;
  return result;
}

double sub_10004B298(char a1)
{
  v3 = type metadata accessor for AppConfiguration();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[7];
  sub_1000032B8(v1 + 3, v1[6]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  return sub_10004B340(v6, a1 & 1);
}

double sub_10004B340(uint64_t a1, char a2)
{
  v4 = type metadata accessor for PredictedLocationsConfiguration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppConfiguration.predictedLocations.getter();
  if (a2)
  {
    PredictedLocationsConfiguration.forecastWindowIntervalStartForSevereWeatherNotification.getter();
    v10 = v9;
    PredictedLocationsConfiguration.forecastWindowIntervalEndForSevereWeatherNotification.getter();
  }

  else
  {
    PredictedLocationsConfiguration.forecastWindowIntervalStartForDonations.getter();
    v10 = v11;
    PredictedLocationsConfiguration.forecastWindowIntervalEndForDonations.getter();
  }

  v12 = type metadata accessor for AppConfiguration();
  (*(*(v12 - 8) + 8))(a1, v12);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_10004B484(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 281) = a1;
  *(v2 + 160) = *v1;
  v3 = type metadata accessor for PredictedLocation();
  *(v2 + 168) = v3;
  v4 = *(v3 - 8);
  *(v2 + 176) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  v6 = *(*(sub_100003020(&qword_1000A4700, &qword_100081748) - 8) + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v2 + 216) = v7;
  v8 = *(v7 - 8);
  *(v2 + 224) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004CA18(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 248) = v11;
  *(v2 + 256) = v10;

  return _swift_task_switch(sub_10004B680, v11, v10);
}

uint64_t sub_10004B680()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  static Settings.LocationIntelligence.Debug.useMockedPredictedLocations.getter();
  sub_10004CA18(&qword_1000A4980, v3, type metadata accessor for PredictedLocationsProvider);
  Configurable.setting<A>(_:)();

  v4 = *(v0 + 152);
  if (*(v0 + 280) == 1)
  {
    v5 = *(v0 + 240);

    sub_10004C0AC();
    v7 = v6;
    v8 = *(v0 + 232);
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);

    v13 = *(v0 + 8);

    return v13(v7);
  }

  else
  {
    v15 = *(v0 + 232);
    sub_10004B298(*(v0 + 281) & 1);
    static Logger.predictedLocations.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Will fetch predicted context locations from CoreRoutine", v18, 2u);
    }

    v20 = *(v0 + 224);
    v19 = *(v0 + 232);
    v21 = *(v0 + 208);
    v22 = *(v0 + 216);
    v23 = *(v0 + 152);

    (*(v20 + 8))(v19, v22);
    sub_10004C7E0();
    v24 = type metadata accessor for DateInterval();
    sub_100006BD4(v21, 0, 1, v24);
    sub_100003020(&qword_1000A4988, &qword_100081BA0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100081AE0;
    v26 = objc_allocWithZone(NSSortDescriptor);
    *(v25 + 32) = sub_10004CA60(0xD00000000000001BLL, 0x80000001000856F0, 1);
    v27 = objc_allocWithZone(NSSortDescriptor);
    *(v25 + 40) = sub_10004CA60(0x6C696261626F7270, 0xEB00000000797469, 0);
    v28 = objc_allocWithZone(RTPredictedContextOptions);
    v29 = sub_10004CACC(v21, 1, 0);
    *(v0 + 264) = v29;
    v30 = *(v23 + 16);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_10004BA58;
    v31 = swift_continuation_init();
    *(v0 + 136) = sub_100003020(&qword_1000A4990, &qword_100081BA8);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10004C924;
    *(v0 + 104) = &unk_10009BE58;
    *(v0 + 112) = v31;
    [v30 fetchPredictedContextWithOptions:v29 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10004BA58()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 272) = v3;
  v4 = *(v1 + 256);
  v5 = *(v1 + 248);
  if (v3)
  {
    v6 = sub_10004BFF4;
  }

  else
  {
    v6 = sub_10004BB88;
  }

  return _swift_task_switch(v6, v5, v4);
}

void sub_10004BB88()
{
  v1 = v0[30];
  v46 = v0[22];
  v47 = v0[23];
  v45 = v0[21];

  v48 = v0[18];
  v2 = [v48 nextStepPredictedContextsWithFilterMask:1];
  sub_100030944(0, &qword_1000A4998, RTPredictedContext_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_100037A1C(v3);
  v5 = 0;
  v50 = _swiftEmptyArrayStorage;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v43 = v0[24];
      v44 = v0[25];
      v49 = v0[23];
      v41 = v7;
      v11 = [v10 locationOfInterest];
      v12 = [v11 location];

      [v12 latitude];
      v14 = v13;

      v15 = [v10 locationOfInterest];
      v16 = [v15 location];

      [v16 longitude];
      v18 = v17;

      v42 = v41;
      [v10 probability];
      v20 = v19;
      v21 = [v10 dateInterval];
      v22 = [v21 startDate];

      v23 = [v22 date];
      v24 = v49 + *(v45 + 28);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = [v10 dateInterval];
      v26 = [v25 endDate];

      v27 = [v26 date];
      v28 = v49 + *(v45 + 32);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      *v49 = v14;
      *(v47 + 8) = v18;
      *(v47 + 16) = v20;
      sub_10004CC44(v49, v43);
      sub_10004CC44(v43, v44);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = v50[2];
        sub_10005BA14();
        v50 = v32;
      }

      v29 = v50[2];
      if (v29 >= v50[3] >> 1)
      {
        sub_10005BA14();
        v50 = v33;
      }

      v30 = v0[25];
      v50[2] = v29 + 1;
      sub_10004CC44(v30, v50 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v29);
      v5 = v8;
    }

    else
    {

      ++v5;
    }
  }

  v34 = v0[33];

  v35 = v0[29];
  v37 = v0[25];
  v36 = v0[26];
  v39 = v0[23];
  v38 = v0[24];

  v40 = v0[1];

  v40(v50);
}

uint64_t sub_10004BFF4()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];

  swift_willThrow();

  v9 = v0[1];
  v10 = v0[34];

  return v9();
}

void sub_10004C0AC()
{
  v1 = *v0;
  v79 = type metadata accessor for Calendar();
  v67 = *(v79 - 8);
  v2 = *(v67 + 64);
  __chkstk_darwin(v79);
  v78 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Date();
  v66 = *(v77 - 8);
  v4 = *(v66 + 64);
  __chkstk_darwin(v77);
  v76 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PredictedLocation();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  __chkstk_darwin(v6);
  v9 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Logger();
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  __chkstk_darwin(v10);
  v68 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Settings.LocationIntelligence.Debug.mockPredictedLocationCoordinates.getter();
  sub_10004CA18(&qword_1000A4980, v13, type metadata accessor for PredictedLocationsProvider);
  Configurable.setting<A>(_:)();

  v82 = v84;
  v83 = v85;
  v80 = 59;
  v81 = 0xE100000000000000;
  v14 = sub_1000069E0();
  v15 = &type metadata for String;
  v16 = StringProtocol.components<A>(separatedBy:)();

  v17 = 0;
  v18 = *(v16 + 16);
  v19 = v16 + 40;
  v71 = _swiftEmptyArrayStorage;
  v72 = v18;
  v73 = v14;
  v65 = v16 + 40;
LABEL_2:
  v20 = (v19 + 16 * v17);
  while (v18 != v17)
  {
    if (v17 >= *(v16 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    v21 = *v20;
    v84 = *(v20 - 1);
    v85 = v21;
    v82 = 44;
    v83 = 0xE100000000000000;
    v22 = StringProtocol.components<A>(separatedBy:)();
    v23 = v22;
    if (v22[2] == 2)
    {
      v24 = v9;
      v25 = v16;
      v26 = v15;
      v28 = v22[4];
      v27 = v22[5];
      v84 = 0;

      v29 = sub_10004CD14(v28, v27);

      if (v23[2] < 2uLL)
      {
        goto LABEL_26;
      }

      v30 = v84;
      v32 = v23[6];
      v31 = v23[7];

      v84 = 0;
      v33 = sub_10004CD14(v32, v31);

      if (v29 && v33)
      {
        v34 = v84;
        v15 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = v71[2];
          sub_10005B940();
          v71 = v39;
        }

        v16 = v25;
        v35 = v71[2];
        v9 = v24;
        if (v35 >= v71[3] >> 1)
        {
          sub_10005B940();
          v71 = v40;
        }

        v18 = v72;
        ++v17;
        v36 = v71;
        v71[2] = v35 + 1;
        v37 = &v36[2 * v35];
        v37[4] = v30;
        v37[5] = v34;
        v19 = v65;
        goto LABEL_2;
      }

      v15 = v26;
      v16 = v25;
      v9 = v24;
      v18 = v72;
    }

    else
    {
    }

    v20 += 2;
    ++v17;
  }

  v41 = v68;
  static Logger.predictedLocations.getter();
  v42 = v71;

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v84 = v46;
    *v45 = 136315138;
    type metadata accessor for CLLocationCoordinate2D(0);
    v47 = Array.description.getter();
    v49 = sub_10000D9FC(v47, v48, &v84);

    *(v45 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v43, v44, "Returning mock coordinates for predicted locations; coordinates=%s", v45, 0xCu);
    sub_100006994(v46);
  }

  (*(v69 + 8))(v41, v70);
  v50 = v42[2];
  if (v50)
  {
    v84 = _swiftEmptyArrayStorage;
    sub_10001477C(0, v50, 0);
    v51 = v84;
    v52 = (v67 + 8);
    v53 = (v66 + 8);
    v54 = v42 + 5;
    do
    {
      v55 = *(v54 - 1);
      v56 = *v54;
      v57 = v75;
      v58 = v9 + *(v75 + 28);
      Date.init()();
      v59 = v76;
      Date.init()();
      v60 = v78;
      static Calendar.current.getter();
      v61 = v9 + *(v57 + 32);
      Date.wc_addHours(_:calendar:)();
      (*v52)(v60, v79);
      (*v53)(v59, v77);
      *v9 = v55;
      v9[1] = v56;
      v9[2] = 0x3FF0000000000000;
      v84 = v51;
      v63 = v51[2];
      v62 = v51[3];
      if (v63 >= v62 >> 1)
      {
        sub_10001477C(v62 > 1, v63 + 1, 1);
        v51 = v84;
      }

      v51[2] = v63 + 1;
      sub_10004CC44(v9, v51 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v63);
      v54 += 2;
      --v50;
    }

    while (v50);
  }
}

uint64_t sub_10004C7E0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v4 = __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  Date.init()();
  Date.addingTimeInterval(_:)();
  Date.addingTimeInterval(_:)();
  DateInterval.init(start:end:)();
  return (*(v1 + 8))(v6, v0);
}

uint64_t *sub_10004C924(uint64_t a1, void *a2, void *a3)
{
  result = sub_1000032B8((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_100051F18(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_100051F88(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}