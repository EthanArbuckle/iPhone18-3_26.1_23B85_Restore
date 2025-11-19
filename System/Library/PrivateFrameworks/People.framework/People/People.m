void sub_10000235C(id a1)
{
  qword_100064040 = os_log_create("com.apple.people", "IMCoreInterface");

  _objc_release_x1();
}

void sub_1000024C0(id a1, NSArray *a2)
{
  if (a2 || [0 count])
  {
    IMSPIMarkSPIMessagesAsRead();
  }

  _objc_release_x1();
}

void sub_1000026BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.people.checkWithWait", v4);

  v13 = *(a1 + 32);
  v6 = [NSArray arrayWithObjects:&v13 count:1];
  v12 = *(a1 + 40);
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v3;
  v8 = v3;
  IMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOS();
}

void sub_10000284C(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[IMCoreInterface logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 count];
    v6 = a1[4];
    v7 = a1[5];
    v9[0] = 67109634;
    v9[1] = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "checkWithWait returned %d items for %@ on %@", v9, 0x1Cu);
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  (*(a1[6] + 16))(a1[6], v8, 0);
}

id sub_100002DB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:IMSPIiMessageService];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002EBC;
  v10[3] = &unk_10005D910;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_100002EC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:IMSPISMSService];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002FCC;
  v10[3] = &unk_10005D910;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_100002FD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:@"RCS"];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000030D8;
  v10[3] = &unk_10005D910;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_1000030E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:@"SatelliteSMS"];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000031E4;
  v10[3] = &unk_10005D910;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_1000031F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:@"iMessageLite"];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000032F0;
  v10[3] = &unk_10005D910;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_1000032FC(id a1, NSArray *a2)
{
  v2 = a2;
  if ([(NSArray *)v2 count])
  {
    v3 = [[NSSortDescriptor alloc] initWithKey:@"date" ascending:1];
    v4 = [NSMutableArray arrayWithArray:v2];
    v10 = v3;
    v5 = [NSArray arrayWithObjects:&v10 count:1];
    [v4 sortUsingDescriptors:v5];

    +[NSMutableArray array];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003470;
    v6 = v8[3] = &unk_10005D978;
    v9 = v6;
    [v4 enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

void sub_100003470(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [MinMessageItem alloc];
  v7 = [v3 date];
  v5 = [v3 body];

  v6 = [(MinMessageItem *)v4 initWith:v7 andText:v5];
  [v2 addObject:v6];
}

uint64_t sub_10000351C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!a2)
  {
    a2 = &__NSArray0__struct;
  }

  return (*(v2 + 16))(v2, a2);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  sub_1000035E8(v3, qword_100062350);
  sub_10000364C(v3, qword_100062350);
  static PeopleLogger.daemon.getter();
  v4 = objc_autoreleasePoolPush();
  sub_100003684();
  objc_autoreleasePoolPop(v4);
  v5 = [objc_opt_self() currentRunLoop];
  [v5 run];

  return 0;
}

uint64_t *sub_1000035E8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000364C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_100003684()
{
  v0 = type metadata accessor for Logger();
  sub_10000364C(v0, &unk_100062350);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v16 = v4;
    *v3 = 136315138;
    static CommandLine.arguments.getter();
    v5 = Array.description.getter();
    v7 = v6;

    v8 = sub_10002580C(v5, v7, &v16);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Launching peopled with args %s", v3, 0xCu);
    sub_100003938(v4);
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Daemon entering sandbox", v11, 2u);
  }

  if (_set_user_dir_suffix())
  {
    if (qword_1000623E0 != -1)
    {
      swift_once();
    }

    v12 = qword_100065528;
    v13 = *(qword_100065528 + OBJC_IVAR____TtC7peopled11XPCListener_eventObserver);
    sub_1000211C8();
    v14 = OBJC_IVAR____TtC7peopled11XPCListener__listener;
    [*(v12 + OBJC_IVAR____TtC7peopled11XPCListener__listener) setDelegate:v12];
    result = [*(v12 + v14) resume];
    if (qword_1000623F0 != -1)
    {
      return swift_once();
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100003938(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_100003984(void *a1@<X8>)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithStatusTypeIdentifier:v3];

  *a1 = v4;
}

id sub_1000039FC(uint64_t a1)
{
  v2 = [*v1 statusSubscriptionForHandle:a1];

  return v2;
}

uint64_t sub_100003A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = String._bridgeToObjectiveC()();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100003B00;
  v11[3] = &unk_10005DBA8;
  v9 = _Block_copy(v11);

  [v7 allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier:v8 completion:v9];
  _Block_release(v9);
}

uint64_t sub_100003B00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100007E38();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_100003B94()
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

uint64_t sub_100003CD0(void *a1)
{
  v2 = type metadata accessor for StatusType();
  v67 = *(v2 - 8);
  v3 = *(v67 + 64);
  __chkstk_darwin(v2);
  v66 = &i - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v64 = &i - v7;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v69 = &i - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &i - v14;
  __chkstk_darwin(v13);
  v17 = &i - v16;
  static PeopleLogger.daemon.getter();
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "Got UserStatusChangeEvent: %@", v21, 0xCu);
    sub_100007DB0(v22, &qword_100062758, &unk_10004E8A0);
  }

  v24 = *(v9 + 8);
  v24(v17, v8);
  v25 = [v18 statusChangeType];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      static PeopleLogger.daemon.getter();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Got a biome event with a non-kettle status type", v51, 2u);
      }

      v24(v15, v8);
      sub_100005E30(&qword_100062750, &qword_10004D990);
      v70 = 0;
      v71 = 0;
      return Promise.__allocating_init(with:)();
    }
  }

  isa = [v18 idsHandles];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v32 = [objc_opt_self() predicateForContactsMatchingHandleStrings:isa];

  v33 = v68[12];
  sub_100005E78(v68 + 8, v68[11]);
  v65 = v32;
  v34 = dispatch thunk of ContactFetcherProtocol.contacts(withPredicate:includeImages:)();
  v35 = v34;
  if (v34 >> 62)
  {
    goto LABEL_28;
  }

  v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v2; v36; i = v2)
  {
    v37 = 0;
    v69 = (v35 & 0xC000000000000001);
    v2 = v35 & 0xFFFFFFFFFFFFFF8;
    v38 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v69)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v39 = *(v35 + 8 * v37 + 32);
      }

      v40 = v39;
      v41 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v42 = [v39 identifier];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_100022130(0, *(v38 + 2) + 1, 1, v38);
      }

      v47 = *(v38 + 2);
      v46 = *(v38 + 3);
      if (v47 >= v46 >> 1)
      {
        v38 = sub_100022130((v46 > 1), v47 + 1, 1, v38);
      }

      *(v38 + 2) = v47 + 1;
      v48 = &v38[16 * v47];
      *(v48 + 4) = v43;
      *(v48 + 5) = v45;
      ++v37;
      if (v41 == v36)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v36 = _CocoaArrayWrapper.endIndex.getter();
  }

  v38 = _swiftEmptyArrayStorage;
LABEL_30:

  if (*(v38 + 2))
  {
    v53 = v68;
    Strong = swift_unknownObjectWeakLoadStrong();
    v55 = i;
    v57 = v66;
    v56 = v67;
    v58 = v65;
    if (Strong)
    {
      sub_10001CFB0(v53, v38, Strong);
      swift_unknownObjectRelease();
    }

    v59 = type metadata accessor for TaskPriority();
    v60 = v64;
    (*(*(v59 - 8) + 56))(v64, 1, 1, v59);
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    sub_100014EE4(0, 0, v60, &unk_10004D9A0, v61);
  }

  else
  {

    v55 = i;
    v57 = v66;
    v56 = v67;
    v58 = v65;
  }

  type metadata accessor for PeopleAnalytics();
  (*(v56 + 104))(v57, enum case for StatusType.dndAvailability(_:), v55);
  static PeopleAnalytics.eventReceived(foundContacts:statusType:)();
  (*(v56 + 8))(v57, v55);
  sub_100005E30(&qword_100062750, &qword_10004D990);
  v70 = 0;
  v71 = 0;
  v62 = Promise.__allocating_init(with:)();

  return v62;
}

uint64_t sub_10000469C()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100004758, 0, 0);
}

uint64_t sub_100004758()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.dndAvailability(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004810, v2, v1);
}

uint64_t sub_100004810()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  static MetricTemplate.updateStatusCount(for:signaled:)();
  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

id sub_1000048A8(uint64_t a1)
{
  v2 = sub_100005E30(&qword_100062738, &qword_10004D970);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v75 = &v61 - v4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v61 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v77 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v20 = *(a1 + 16);
  if (!v20)
  {
    return 0;
  }

  v81 = (v17 + 8);
  v65 = (v6 + 32);
  v69 = (v6 + 56);
  v70 = &v61 - v18;
  v62 = (v6 + 48);
  v68 = (v6 + 8);
  v21 = 0;
  v22 = (a1 + 40);
  *&v19 = 136315394;
  v64 = v19;
  *&v19 = 136315138;
  v63 = v19;
  v73 = v10;
  v74 = v5;
  v71 = v13;
  v72 = v12;
  do
  {
    v25 = *(v22 - 1);
    v24 = *v22;

    v26 = sub_100007210(v25, v24, (v78 + 104));
    if (v26)
    {
      v27 = v26;
      v82 = v21;
      v80 = v20;
      v28 = v70;
      static PeopleLogger.daemon.getter();

      v76 = v27;
      v29 = v27;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v83[0] = swift_slowAlloc();
        *v32 = v64;
        v33 = sub_10002580C(v25, v24, v83);

        *(v32 + 4) = v33;
        *(v32 + 12) = 2080;
        v34 = [v29 debugDescription];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v38 = sub_10002580C(v35, v37, v83);
        v5 = v74;

        *(v32 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v30, v31, "status for %s - %s", v32, 0x16u);
        swift_arrayDestroy();
        v10 = v73;

        v13 = v71;
      }

      else
      {
      }

      v39 = *v81;
      (*v81)(v28, v13);
      v40 = v77;
      static PeopleLogger.daemon.getter();
      v41 = v29;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      v44 = os_log_type_enabled(v42, v43);
      v20 = v80;
      v79 = v41;
      if (v44)
      {
        v67 = v39;
        v45 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v83[0] = v66;
        *v45 = v63;
        v46 = [v41 statusPayload];
        if (v46 && (v47 = v46, v48 = [v46 payloadDictionary], v47, v48))
        {
          static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          sub_10000760C(_swiftEmptyArrayStorage);
        }

        v49 = Dictionary.description.getter();
        v51 = v50;

        v52 = sub_10002580C(v49, v51, v83);

        *(v45 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v42, v43, " => %s", v45, 0xCu);
        sub_100003938(v66);

        v13 = v71;
        v67(v77, v71);
        v10 = v73;
        v5 = v74;
      }

      else
      {

        v39(v40, v13);
      }

      v53 = v72;
      if (v82)
      {
        v54 = [v82 datePublished];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v55 = *v65;
        v56 = v75;
        (*v65)(v75, v10, v5);
        (*v69)(v56, 0, 1, v5);
        v55(v53, v56, v5);
      }

      else
      {
        v57 = v75;
        (*v69)(v75, 1, 1, v5);
        static Date.distantPast.getter();
        if ((*v62)(v57, 1, v5) != 1)
        {
          sub_100007DB0(v75, &qword_100062738, &qword_10004D970);
        }
      }

      v58 = v79;
      v59 = [v79 datePublished];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v59) = static Date.< infix(_:_:)();
      v60 = *v68;
      (*v68)(v10, v5);
      v60(v53, v5);
      if (v59)
      {

        result = v76;
      }

      else
      {

        result = v82;
      }
    }

    else
    {

      result = v21;
    }

    v22 += 2;
    v21 = result;
    --v20;
  }

  while (v20);
  return result;
}

void sub_100005038(void (*a1)(char **), uint64_t a2, uint64_t a3, void *a4)
{
  v52 = a2;
  v53 = a1;
  v5 = type metadata accessor for StatusType();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = *(v64 + 64);
  __chkstk_darwin(v5);
  v63 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Logger();
  v68 = *(v70 - 8);
  v8 = *(v68 + 64);
  __chkstk_darwin(v70);
  v67 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v50 - v15;
  v16 = type metadata accessor for AvailabilityType();
  v66 = *(v16 - 8);
  v17 = *(v66 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v50 - v21;
  v23 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v25 = [v23 predicateForContactsWithIdentifiers:isa];

  v26 = a4[12];
  v27 = a4;
  sub_100005E78(a4 + 8, a4[11]);
  v51 = v25;
  v28 = dispatch thunk of ContactFetcherProtocol.contacts(withPredicate:includeImages:)();
  v29 = v66;
  v62 = v22;
  v63 = v20;
  v68 = v16;
  v67 = sub_100007A44(_swiftEmptyArrayStorage, &qword_100062718, &qword_10004D950);
  if (!(v28 >> 62))
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v68;
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_19:

    v71 = v67;
    v72 = 0;
    v53(&v71);

    return;
  }

  v30 = _CocoaArrayWrapper.endIndex.getter();
  v31 = v68;
  if (!v30)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v30 >= 1)
  {
    v32 = 0;
    v70 = v28 & 0xC000000000000001;
    v59 = enum case for AvailabilityType.busy(_:);
    v58 = (v29 + 104);
    v57 = enum case for AvailabilityType.free(_:);
    v56 = (v29 + 16);
    v55 = (v29 + 8);
    v54 = xmmword_10004D790;
    v60 = v28;
    v61 = v27;
    v64 = v30;
    do
    {
      v33 = v14;
      if (v70)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v28 + 8 * v32 + 32);
      }

      v35 = v34;
      v36 = CNContact.people_normalizedHandles.getter();
      v37 = sub_1000048A8(v36);

      if (v37)
      {
        v38 = [objc_allocWithZone(AKAvailability) initWithPublishedStatus:v37];
        if (v38)
        {
          v39 = v38;
          if ([v38 isAvailableToMe])
          {
            v40 = v57;
          }

          else
          {
            v40 = v59;
          }

          v41 = v62;
          (*v58)(v62, v40, v31);
          v42 = [v35 identifier];
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = v44;
          v66 = v43;

          sub_100005E30(&qword_100063260, &qword_10004E2B0);
          v45 = swift_allocObject();
          *(v45 + 16) = v54;
          (*v56)(v63, v41, v68);
          Date.init()();
          v46 = [v37 datePublished];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          *(v45 + 56) = type metadata accessor for AvailabilityPersonStatus();
          *(v45 + 64) = sub_10000773C(&qword_100062710, 255, &type metadata accessor for AvailabilityPersonStatus);
          sub_100007784((v45 + 32));
          AvailabilityPersonStatus.init(availability:date:availabilityDate:)();
          v47 = v67;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71 = v47;
          v31 = v68;
          sub_100006B74(v45, v66, v65, isUniquelyReferenced_nonNull_native);

          v67 = v71;
          v49 = v41;
          v28 = v60;
          (*v55)(v49, v31);
        }

        else
        {
        }

        v30 = v64;
      }

      else
      {
      }

      ++v32;
      v14 = v33;
    }

    while (v30 != v32);
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_1000058C8()
{
  v1 = v0[2];

  sub_100003938(v0 + 3);
  sub_100003938(v0 + 8);
  sub_100003938(v0 + 13);
  sub_100007E10((v0 + 18));
  v2 = v0[20];

  return swift_deallocClassInstance();
}

uint64_t sub_10000594C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.dndAvailability(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000059C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100005A04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return StatusSource.debugID.getter(a1, WitnessTable);
}

uint64_t sub_100005A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to StatusFetcher.fetchStatus@Sendable (for:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100005B08;

  return StatusFetcher.fetchStatus@Sendable (for:)(a1, a2, a3);
}

uint64_t sub_100005B08(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100005C08(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = sub_100005E30(&qword_100062700, &unk_10004D940);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  return Promise.init(startBlock:)();
}

uint64_t sub_100005CA4()
{
  v1 = *v0;
  _StringGuts.grow(_:)(35);
  v2._object = 0x80000001000504F0;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 2689580;
  v3._object = 0xE300000000000000;
  String.append(_:)(v3);
  return 0;
}

uint64_t sub_100005D48(uint64_t a1, uint64_t a2)
{
  result = sub_10000773C(&qword_1000626F0, a2, type metadata accessor for DNDStatusSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100005DE8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005E30(uint64_t *a1, uint64_t *a2)
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

void *sub_100005E78(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100005EBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100005FBC(a1, a2, v6);
}

unint64_t sub_100005F34(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100006074(a1, v4);
}

unint64_t sub_100005F78(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_10000613C(a1, v4);
}

unint64_t sub_100005FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100006074(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100007864(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000078C0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000613C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1000061A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005E30(&qword_100062730, &qword_10004D968);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
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
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100006474(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005E30(&qword_100062720, &qword_10004D958);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_10000784C(v25, v37);
      }

      else
      {
        sub_1000077E8(v25, v37);
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
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10000784C(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10000674C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100005E30(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1000069EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100005EBC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000061A8(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100005EBC(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100006D60();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_100006B74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005EBC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000674C(v16, a4 & 1, &qword_100062718, &qword_10004D950);
      v20 = *v5;
      v11 = sub_100005EBC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000070B0(&qword_100062718, &qword_10004D950);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_100006D18(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_100006D60()
{
  v1 = v0;
  sub_100005E30(&qword_100062730, &qword_10004D968);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100006EF4()
{
  v1 = v0;
  sub_100005E30(&qword_100062720, &qword_10004D958);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1000077E8(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000784C(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1000070B0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100005E30(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_100007210(uint64_t a1, unint64_t a2, void *a3)
{
  v33 = type metadata accessor for Logger();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v33);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v13 = a3[3];
  v14 = a3[4];
  sub_100005E78(a3, v13);
  v15 = objc_allocWithZone(SKHandle);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithString:v16];

  v18 = (*(v14 + 16))(v17, v13, v14);
  if (v18)
  {
    static PeopleConstants.appBundleID.getter();
    v19 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_100003B94;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001F854;
    aBlock[3] = &unk_10005DB58;
    v20 = _Block_copy(aBlock);
    [v18 retainPersistentSubscriptionAssertionForApplicationIdentifier:v19 completion:v20];
    _Block_release(v20);

    v21 = [v18 currentStatus];
    if (v21)
    {
      v22 = v21;

      return v22;
    }

    static PeopleLogger.daemon.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_10002580C(a1, a2, aBlock);
      _os_log_impl(&_mh_execute_header, v28, v29, "no status for %s", v30, 0xCu);
      sub_100003938(v31);
    }

    (*(v6 + 8))(v12, v33);
  }

  else
  {
    static PeopleLogger.daemon.getter();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_10002580C(a1, a2, aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, "no status subscription for %s", v26, 0xCu);
      sub_100003938(v27);
    }

    (*(v6 + 8))(v10, v33);
  }

  return 0;
}

unint64_t sub_10000760C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005E30(&qword_100062740, &qword_10004D978);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007B40(v4, v13);
      result = sub_100005F34(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100007BB0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000773C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t *sub_100007784(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000077E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000784C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100007914(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005E30(&qword_100062730, &qword_10004D968);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_100005EBC(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100007A44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100005E30(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100005EBC(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100007B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100062748, &unk_10004D980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100007BB0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100007BC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007BD8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007C10()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100007CBC;

  return sub_10000469C();
}

uint64_t sub_100007CBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100007DB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005E30(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100007E38()
{
  result = qword_100062760;
  if (!qword_100062760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100062760);
  }

  return result;
}

uint64_t sub_100007E90()
{
  v0 = type metadata accessor for SpotlightIndexer();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = SpotlightIndexer.init()();
  qword_100065450 = result;
  return result;
}

uint64_t sub_100007ED0()
{
  type metadata accessor for ContactFetcher();
  result = static ContactFetcher.shared.getter();
  qword_100065458 = result;
  return result;
}

uint64_t sub_100007F04()
{
  v0 = type metadata accessor for MessageConduit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = MessageConduit.init()();
  qword_100065478 = v0;
  unk_100065480 = &protocol witness table for MessageConduit;
  qword_100065460 = result;
  return result;
}

uint64_t sub_100007F58()
{
  type metadata accessor for PeopleLocateFriendProvider();
  result = static PeopleLocateFriendProvider.shared.getter();
  qword_100065488 = result;
  return result;
}

uint64_t sub_100007F8C()
{
  v0 = [objc_allocWithZone(CHSWidgetConfigurationReader) init];
  v4 = sub_100010734(0, &unk_100062A20, CHSWidgetConfigurationReader_ptr);
  v5 = &protocol witness table for CHSWidgetConfigurationReader;
  *&v3 = v0;
  type metadata accessor for WidgetConfigurationReader();
  v1 = swift_allocObject();
  result = sub_10000784C(&v3, v1 + 16);
  qword_100065490 = v1;
  return result;
}

uint64_t sub_100008084(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, _BYTE *, uint64_t), uint64_t *a4)
{
  if (qword_100062368 != -1)
  {
    swift_once();
  }

  v7 = qword_100065450;
  v8 = qword_100062370;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_100065458;
  v10 = qword_100062378;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_1000077E8(&qword_100065460, v18);
  type metadata accessor for PeopleFeatureFlags();
  v11 = static PeopleFeatureFlags.shared.getter();
  v12 = a2(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();

  v16 = a3(v11, v7, v9, v18, v15);

  *a4 = v16;
  return result;
}

uint64_t sub_1000081F8()
{
  if (qword_100062370 != -1)
  {
    swift_once();
  }

  v0 = qword_100065458;
  v1 = qword_100062380;
  swift_retain_n();
  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_100065488;
  v3 = qword_100062388;
  swift_retain_n();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_100065490;
  v5 = qword_100062368;
  swift_retain_n();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_100065450;
  type metadata accessor for PeopleFeatureFlags();
  swift_retain_n();
  v7 = static PeopleFeatureFlags.shared.getter();
  v8 = sub_10000FE6C(v7, v0, 1, v2, v4, v6);

  qword_1000654A8 = v8;
  return result;
}

uint64_t sub_100008388()
{
  if (qword_100062370 != -1)
  {
    swift_once();
  }

  v0 = qword_100065458;
  type metadata accessor for PeopleFeatureFlags();

  v1 = static PeopleFeatureFlags.shared.getter();
  v2 = type metadata accessor for KettleStatusFetcher();
  v3 = swift_allocObject();
  v4 = sub_100010734(0, &qword_100062A70, SKStatusSubscriptionService_ptr);
  v15[3] = v2;
  v15[4] = &off_10005DB20;
  v15[0] = v3;
  type metadata accessor for DNDStatusSource();
  v5 = swift_allocObject();
  v6 = sub_1000106B4(v15, v2);
  v7 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;

  v12 = sub_10000DE20(v1, v0, v11, v4, &off_10005DAD0, v5);

  result = sub_100003938(v15);
  qword_1000654B0 = v12;
  return result;
}

uint64_t sub_10000855C()
{
  if (qword_100062370 != -1)
  {
    swift_once();
  }

  v0 = qword_100065458;
  v1 = type metadata accessor for CallHistoryFetcher();
  v2 = swift_allocObject();
  type metadata accessor for PeopleFeatureFlags();

  v3 = static PeopleFeatureFlags.shared.getter();
  v4 = type metadata accessor for UserDefaultsLaunchDiaryWriter();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v22 = v4;
  v23 = &protocol witness table for UserDefaultsLaunchDiaryWriter;
  v21[0] = UserDefaultsLaunchDiaryWriter.init()();
  v7 = type metadata accessor for LaunchRecordReader();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = LaunchRecordReader.init(withDataWriter:)();
  v22 = v1;
  v23 = &off_10005EE58;
  v21[0] = v2;
  type metadata accessor for MissedCallStatusSource();
  v11 = swift_allocObject();
  v12 = sub_1000106B4(v21, v1);
  v13 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;

  v18 = sub_10000EE2C(v0, v17, v3, v10, v11);

  result = sub_100003938(v21);
  qword_1000654B8 = v18;
  return result;
}

uint64_t sub_100008770()
{
  if (qword_100062370 != -1)
  {
    swift_once();
  }

  v0 = qword_100065458;
  v1 = objc_allocWithZone(IMCoreInterface);

  v2 = [v1 init];
  v25 = sub_100010734(0, &qword_100062A48, &off_10005CEF8);
  v26 = &off_10005E8A8;
  *&v24 = v2;
  v3 = type metadata accessor for MessageFetcher();
  v4 = swift_allocObject();
  sub_10000784C(&v24, v4 + 16);
  type metadata accessor for PeopleFeatureFlags();
  v5 = static PeopleFeatureFlags.shared.getter();
  v6 = type metadata accessor for UserDefaultsLaunchDiaryWriter();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = UserDefaultsLaunchDiaryWriter.init()();
  v25 = v6;
  v26 = &protocol witness table for UserDefaultsLaunchDiaryWriter;
  *&v24 = v9;
  v10 = type metadata accessor for LaunchRecordReader();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = LaunchRecordReader.init(withDataWriter:)();
  v25 = v3;
  v26 = &off_10005E8E8;
  *&v24 = v4;
  type metadata accessor for IMessageStatusSource();
  v14 = swift_allocObject();
  v15 = sub_1000106B4(&v24, v3);
  v16 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;

  v21 = sub_10000F3C8(v5, v0, v20, v13, v14);

  result = sub_100003938(&v24);
  qword_1000654C0 = v21;
  return result;
}

uint64_t sub_1000089DC()
{
  v0 = [objc_allocWithZone(EKEventStore) init];
  v5 = type metadata accessor for ContactFetcher();
  v6 = &protocol witness table for ContactFetcher;
  *&v4 = static ContactFetcher.shared.getter();
  type metadata accessor for PeopleFeatureFlags();
  v1 = static PeopleFeatureFlags.shared.getter();
  type metadata accessor for CalendarStatusSource();
  v2 = swift_allocObject();
  v2[10] = 0;
  swift_unknownObjectWeakInit();
  v2[3] = v0;
  result = sub_10000784C(&v4, (v2 + 4));
  v2[2] = v1;
  qword_1000654C8 = v2;
  return result;
}

uint64_t sub_100008A9C()
{
  if (qword_100062370 != -1)
  {
    swift_once();
  }

  v0 = qword_100065458;
  type metadata accessor for PeopleFeatureFlags();

  v1 = static PeopleFeatureFlags.shared.getter();
  v2 = [objc_allocWithZone(STDowntimeClient) init];
  v3 = type metadata accessor for ChildStateStatusSource();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();

  v7 = v2;
  v8 = sub_10000F8F8(v1, v0, v7, v6);

  qword_1000654D0 = v8;
  return result;
}

uint64_t sub_100008B84()
{
  if (qword_100062370 != -1)
  {
    swift_once();
  }

  v0 = qword_100065458;
  v1 = qword_100062380;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_100065488;
  type metadata accessor for PeopleFeatureFlags();

  v3 = static PeopleFeatureFlags.shared.getter();
  v10 = type metadata accessor for ContactFetcher();
  v11 = &protocol witness table for ContactFetcher;
  *&v9 = v0;
  FriendProvider = type metadata accessor for PeopleLocateFriendProvider();
  v8 = &protocol witness table for PeopleLocateFriendProvider;
  *&v6 = v2;
  type metadata accessor for LocationStatusSource();
  v4 = swift_allocObject();
  sub_10000784C(&v9, v4 + 16);
  result = sub_10000784C(&v6, v4 + 64);
  *(v4 + 56) = v3;
  qword_1000654D8 = v4;
  return result;
}

uint64_t sub_100008CB0()
{
  v0 = type metadata accessor for ContactFormatter.Style();
  v92 = *(v0 - 8);
  v93 = v0;
  v1 = *(v92 + 64);
  __chkstk_darwin(v0);
  v94 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005E30(&qword_100062968, &qword_10004DB78);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10004D9C0;
  if (qword_1000623A8 != -1)
  {
    swift_once();
  }

  v4 = qword_1000654B0;
  *(v3 + 56) = type metadata accessor for DNDStatusSource();
  *(v3 + 64) = sub_100010884(&qword_100062970, type metadata accessor for DNDStatusSource);
  *(v3 + 32) = v4;
  v5 = qword_100062390;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_100065498;
  v97 = type metadata accessor for AskToBuyStatusSource();
  *(v3 + 96) = v97;
  *(v3 + 104) = sub_100010884(&qword_100062978, type metadata accessor for AskToBuyStatusSource);
  *(v3 + 72) = v6;
  v7 = qword_100062398;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1000654A0;
  v96 = type metadata accessor for ScreenTimeStatusSource();
  *(v3 + 136) = v96;
  *(v3 + 144) = sub_100010884(&qword_100062980, type metadata accessor for ScreenTimeStatusSource);
  *(v3 + 112) = v8;
  v9 = qword_1000623B0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1000654B8;
  *(v3 + 176) = type metadata accessor for MissedCallStatusSource();
  *(v3 + 184) = sub_100010884(&qword_100062988, type metadata accessor for MissedCallStatusSource);
  *(v3 + 152) = v10;
  v11 = qword_1000623B8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_1000654C0;
  *(v3 + 216) = type metadata accessor for IMessageStatusSource();
  *(v3 + 224) = sub_100010884(&qword_100062990, type metadata accessor for IMessageStatusSource);
  *(v3 + 192) = v12;
  v13 = qword_1000623C0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_1000654C8;
  *(v3 + 256) = type metadata accessor for CalendarStatusSource();
  *(v3 + 264) = sub_100010884(&qword_100062998, type metadata accessor for CalendarStatusSource);
  *(v3 + 232) = v14;
  v15 = qword_1000623C8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1000654D0;
  *(v3 + 296) = type metadata accessor for ChildStateStatusSource();
  *(v3 + 304) = sub_100010884(&qword_1000629A0, type metadata accessor for ChildStateStatusSource);
  *(v3 + 272) = v16;
  v17 = v3;
  v18 = qword_1000623D0;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_1000654D8;
  v17[42] = type metadata accessor for LocationStatusSource();
  v17[43] = sub_100010884(&qword_1000629A8, type metadata accessor for LocationStatusSource);
  v17[39] = v19;
  sub_100005E30(&qword_1000629B0, &qword_10004DB80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10004D9D0;
  v21 = qword_1000623A0;

  v95 = v17;
  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_1000654A8;
  v23 = sub_100010884(&qword_1000629B8, type metadata accessor for LocationStatusEventListener);
  *(v20 + 32) = v22;
  *(v20 + 40) = v23;
  v24 = qword_1000654B0;
  v25 = sub_100010884(&qword_1000629C0, type metadata accessor for DNDStatusSource);
  *(v20 + 48) = v24;
  *(v20 + 56) = v25;
  v26 = qword_100065498;
  v27 = sub_100010884(&qword_1000629C8, type metadata accessor for AskToBuyStatusSource);
  *(v20 + 64) = v26;
  *(v20 + 72) = v27;
  v28 = qword_1000654A0;
  v29 = sub_100010884(&qword_1000629D0, type metadata accessor for ScreenTimeStatusSource);
  *(v20 + 80) = v28;
  *(v20 + 88) = v29;
  v30 = qword_1000654B8;
  v31 = sub_100010884(&qword_1000629D8, type metadata accessor for MissedCallStatusSource);
  *(v20 + 96) = v30;
  *(v20 + 104) = v31;
  v32 = qword_1000654C0;
  v33 = sub_100010884(&qword_1000629E0, type metadata accessor for IMessageStatusSource);
  *(v20 + 112) = v32;
  *(v20 + 120) = v33;
  v34 = qword_1000654D0;
  v35 = sub_100010884(&qword_1000629E8, type metadata accessor for ChildStateStatusSource);
  *(v20 + 128) = v34;
  *(v20 + 136) = v35;
  v98 = v20;
  v36 = type metadata accessor for ContactFetcher();

  v37 = static ContactFetcher.shared.getter();
  v38 = [objc_opt_self() defaultStore];
  if (qword_100062388 != -1)
  {
    swift_once();
  }

  v39 = qword_100065490;
  (*(v92 + 104))(v94, enum case for ContactFormatter.Style.fullName(_:), v93);

  String.localized.getter();
  v121 = type metadata accessor for ContactFormatter();
  v122 = &protocol witness table for ContactFormatter;
  sub_100007784(&v120);
  ContactFormatter.init(style:fallback:)();
  type metadata accessor for PeopleUserDefaults();
  v40 = static PeopleUserDefaults.shared.getter();
  v118 = sub_100010734(0, &qword_1000629F0, NSUserDefaults_ptr);
  v119 = &protocol witness table for NSUserDefaults;
  *&v117 = v40;
  v41 = type metadata accessor for RelevantIntentManager();
  v42 = static RelevantIntentManager.shared.getter();
  v115 = v36;
  v116 = &protocol witness table for ContactFetcher;
  *&v114 = v37;
  v112 = sub_100010734(0, &qword_1000629F8, INRelevantShortcutStore_ptr);
  v113 = &off_10005EEB8;
  *&v111 = v38;
  v43 = type metadata accessor for WidgetConfigurationReader();
  v109 = v43;
  v110 = &off_10005DBD0;
  v108[0] = v39;
  v106 = v41;
  v107 = &off_10005EEC8;
  v105[0] = v42;
  v94 = type metadata accessor for WidgetSuggester();
  v44 = swift_allocObject();
  v45 = sub_1000106B4(v108, v43);
  v92 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v45);
  v93 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v47 = (&v90 - v93);
  v49 = *(v48 + 16);
  v90 = v48 + 16;
  v91 = v49;
  v49(&v90 - v93);
  v50 = v106;
  v51 = sub_1000106B4(v105, v106);
  v52 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v51);
  v54 = (&v90 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54);
  v56 = *v47;
  v57 = *v54;
  v103 = v43;
  v104 = &off_10005DBD0;
  *&v102 = v56;
  v100 = v41;
  v101 = &off_10005EEC8;
  *&v99 = v57;
  sub_10000784C(&v114, v44 + 16);
  sub_10000784C(&v111, v44 + 56);
  sub_10000784C(&v102, v44 + 96);
  sub_10000784C(&v120, v44 + 136);
  sub_10000784C(&v117, v44 + 176);
  sub_10000784C(&v99, v44 + 216);
  sub_100003938(v105);
  sub_100003938(v108);
  sub_100005E30(&qword_100062A00, &qword_10004DB88);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_10004D9E0;
  v59 = qword_1000654A8;
  *(v58 + 56) = type metadata accessor for LocationStatusEventListener();
  *(v58 + 64) = sub_100010884(&qword_100062A08, type metadata accessor for LocationStatusEventListener);
  *(v58 + 32) = v59;
  v60 = qword_100065498;
  *(v58 + 96) = v97;
  *(v58 + 104) = sub_100010884(&qword_100062A10, type metadata accessor for AskToBuyStatusSource);
  *(v58 + 72) = v60;
  v61 = qword_1000654A0;
  *(v58 + 136) = v96;
  *(v58 + 144) = sub_100010884(&qword_100062A18, type metadata accessor for ScreenTimeStatusSource);
  *(v58 + 112) = v61;
  v62 = objc_allocWithZone(CHSWidgetConfigurationReader);

  v63 = [v62 init];
  v121 = sub_100010734(0, &unk_100062A20, CHSWidgetConfigurationReader_ptr);
  v122 = &protocol witness table for CHSWidgetConfigurationReader;
  *&v120 = v63;
  v64 = swift_allocObject();
  sub_10000784C(&v120, v64 + 16);
  v65 = type metadata accessor for PeopleTimelineControllerFactory();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  v68 = PeopleTimelineControllerFactory.init()();
  v121 = v65;
  v122 = &protocol witness table for PeopleTimelineControllerFactory;
  v119 = &off_10005DBD0;
  *&v120 = v68;
  v118 = v43;
  *&v117 = v64;
  v69 = v94;
  v115 = v94;
  v116 = &off_10005EED8;
  *&v114 = v44;
  type metadata accessor for StatusManager();
  v70 = swift_allocObject();
  v71 = sub_1000106B4(&v117, v43);
  __chkstk_darwin(v71);
  v72 = (&v90 - v93);
  v91(&v90 - v93);
  v73 = v115;
  v74 = sub_1000106B4(&v114, v115);
  v97 = &v90;
  v75 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v74);
  v77 = (&v90 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77);
  v79 = *v72;
  v80 = *v77;
  v112 = v43;
  v113 = &off_10005DBD0;
  v110 = &off_10005EED8;
  *&v111 = v79;
  v109 = v69;
  v108[0] = v80;
  v81 = v98;
  v70[2] = v95;
  v70[3] = v81;
  sub_1000077E8(&v111, (v70 + 4));
  sub_1000077E8(&v120, (v70 + 9));
  sub_1000077E8(v108, (v70 + 14));
  v70[19] = v58;
  v82 = *(v81 + 16);
  if (v82)
  {
    v96 = &v90;

    v83 = (v81 + 40);
    do
    {
      v84 = *(v83 - 1);
      v85 = *v83;
      ObjectType = swift_getObjectType();
      v87 = *(v85 + 24);
      swift_unknownObjectRetain();

      v87(v88, &off_10005DBE8, ObjectType, v85);
      swift_unknownObjectRelease();
      v83 += 2;
      --v82;
    }

    while (v82);
  }

  sub_100003938(&v120);
  sub_100003938(v108);
  sub_100003938(&v111);
  sub_100003938(&v114);
  result = sub_100003938(&v117);
  qword_1000654E0 = v70;
  return result;
}

uint64_t sub_100009BB8(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for StatusType();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v9 = *(v8 + 64) + 15;
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_100009CE4, 0, 0);
}

uint64_t sub_100009CE4(uint64_t a1, void *a2, __n128 a3)
{
  v4 = *(*(v3 + 112) + 16);
  v35 = *(v4 + 16);
  if (v35)
  {
    v5 = 0;
    v6 = *(v3 + 128);
    v33 = v4 + 32;
    v34 = *(v3 + 104);
    v32 = (v6 + 8);
    while (v5 < *(v4 + 16))
    {
      sub_1000077E8(v33 + 40 * v5, v3 + 16);
      v7 = *(v34 + 16);
      if (v7)
      {
        v8 = v4;
        v9 = *(v3 + 136);
        v10 = *(v3 + 104);
        v11 = *(v3 + 48);
        sub_100005E78((v3 + 16), *(v3 + 40));
        dispatch thunk of StatusSource.statusType.getter();
        v12 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v13 = *(v6 + 72);
        sub_100010884(&qword_100062A90, &type metadata accessor for StatusType);
        v14 = v12;
        v15 = v7 + 1;
        do
        {
          v16 = *(v3 + 136);
          v17 = *(v3 + 120);
          if (!--v15)
          {
            (*v32)(*(v3 + 136), *(v3 + 120));
            a1 = sub_100003938((v3 + 16));
            v4 = v8;
            goto LABEL_4;
          }

          v18 = v14 + v13;
          v19 = *(v3 + 120);
          v20 = dispatch thunk of static Equatable.== infix(_:_:)();
          v14 = v18;
        }

        while ((v20 & 1) == 0);
        (*v32)(*(v3 + 136), *(v3 + 120));
        v4 = v8;
      }

      sub_10000784C((v3 + 16), v3 + 56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000D694(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v22 = _swiftEmptyArrayStorage[2];
      v21 = _swiftEmptyArrayStorage[3];
      if (v22 >= v21 >> 1)
      {
        sub_10000D694((v21 > 1), v22 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v22 + 1;
      a1 = sub_10000784C((v3 + 56), &_swiftEmptyArrayStorage[5 * v22 + 4]);
LABEL_4:
      if (++v5 == v35)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v24 = *(v3 + 152);
    v23 = *(v3 + 160);
    v25 = *(v3 + 144);
    v26 = sub_100035AD0(_swiftEmptyArrayStorage);
    *(v3 + 168) = v26;

    static PeopleConstants.statusSourceTimeout.getter();
    Measurement<>.timeInterval.getter();
    v28 = v27;
    (*(v24 + 8))(v23, v25);
    v29 = async function pointer to static StatusCoalescer.fetchStatus(for:statusFetchers:timeout:)[1];
    v30 = swift_task_alloc();
    *(v3 + 176) = v30;
    *v30 = v3;
    v30[1] = sub_100009FF8;
    a1 = *(v3 + 96);
    a2 = v26;
    a3.n128_u64[0] = v28;
  }

  return static StatusCoalescer.fetchStatus(for:statusFetchers:timeout:)(a1, a2, a3);
}

uint64_t sub_100009FF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 168);
  v7 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10000A188, 0, 0);
  }

  else
  {
    v8 = *(v4 + 160);
    v9 = *(v4 + 136);

    v10 = *(v7 + 8);

    return v10(a1);
  }
}

uint64_t sub_10000A188()
{
  v1 = v0[20];
  v2 = v0[17];

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

void *sub_10000A1F8(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v23 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = v23[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

uint64_t sub_10000A3A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v54[2] = a2;
  v54[3] = a3;

  v15 = sub_10000A1F8(sub_1000105DC, v54, v14);
  v16 = v15;
  v51 = v5;
  if (v15 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_13:

    v20 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_3:
  v55 = _swiftEmptyArrayStorage;
  result = sub_10000D6D4(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
    goto LABEL_28;
  }

  v49 = v13;
  v50 = a4;
  v19 = 0;
  v20 = v55;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v21 = *(v16 + 8 * v19 + 32);
    }

    v22 = v21;
    v23 = [v22 kind];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v55 = v20;
    v28 = v20[2];
    v27 = v20[3];
    if (v28 >= v27 >> 1)
    {
      sub_10000D6D4((v27 > 1), v28 + 1, 1);
      v20 = v55;
    }

    ++v19;
    v20[2] = v28 + 1;
    v29 = &v20[2 * v28];
    v29[4] = v24;
    v29[5] = v26;
  }

  while (v17 != v19);

  v13 = v49;
LABEL_14:
  v30 = sub_10001E3F0(v20);

  static PeopleLogger.daemon.getter();

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v55 = v34;
    *v33 = 136315138;
    v35 = Set.description.getter();
    v37 = sub_10002580C(v35, v36, &v55);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "refreshing widgets of kinds %s", v33, 0xCu);
    sub_100003938(v34);
  }

  (*(v52 + 8))(v13, v53);
  v38 = 1 << *(v30 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v30 + 56);
  v41 = (v38 + 63) >> 6;

  for (i = 0; v40; result = )
  {
    v43 = i;
LABEL_24:
    v44 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v45 = (*(v30 + 48) + ((v43 << 10) | (16 * v44)));
    v47 = *v45;
    v46 = v45[1];

    sub_10000AC2C(v47, v46);
  }

  while (1)
  {
    v43 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v43 >= v41)
    {
    }

    v40 = *(v30 + 56 + 8 * v43);
    ++i;
    if (v40)
    {
      i = v43;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

BOOL sub_10000A7C8(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C3F4(*a1);
  v11 = sub_10001E3F0(v10);

  static PeopleLogger.daemon.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;
    v17 = Set.description.getter();
    v26 = a3;
    v19 = sub_10002580C(v17, v18, &v27);
    v24 = v5;
    v20 = v19;
    a3 = v26;

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "contactId in widget %s", v15, 0xCu);
    sub_100003938(v16);

    (*(v25 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v21 = sub_10000DCD4(a3, v11);

  return (v21 & 1) == 0;
}

uint64_t sub_10000AA4C(uint64_t a1, const char *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19[0] = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19[1] = v2;
    v14 = v13;
    v20 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = sub_10002580C(v15, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, v19[0], v12, 0xCu);
    sub_100003938(v14);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10000AC2C(uint64_t a1, unint64_t a2)
{
  v5 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for Logger();
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = v2[13];
  sub_100005E78(v2 + 9, v2[12]);
  static PeopleConstants.widgetBundleID.getter();
  dispatch thunk of TimelineControllerFactoryProtocol.timelineController(for:in:)();

  type metadata accessor for PeopleAnalytics();
  static PeopleAnalytics.timelineStopwatch(timeline:)();
  sub_100005E78(v35, v35[3]);
  v17 = dispatch thunk of TimelineControllerProtocol.reloadTimeline()();
  dispatch thunk of PeopleAnalytics.StopWatch.stop()();
  if (v17)
  {
    swift_errorRetain();
    static PeopleLogger.daemon.getter();
    swift_errorRetain();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = v9;
      v21 = v20;
      v34 = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_10002580C(a1, a2, &v34);
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = sub_10002580C(v22, v23, &v34);

      *(v21 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Widget (%s) timeline refresh error: %s ", v21, 0x16u);
      swift_arrayDestroy();

      (*(v33 + 8))(v15, v32);
    }

    else
    {

      (*(v33 + 8))(v15, v9);
    }
  }

  else
  {
    static PeopleLogger.daemon.getter();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_10002580C(a1, a2, &v34);
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully requested widget timeline refresh for widgetKind %s", v27, 0xCu);
      sub_100003938(v28);
    }

    (*(v33 + 8))(v13, v9);
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = a1;
    v30[5] = a2;

    sub_100014EE4(0, 0, v8, &unk_10004DBD8, v30);
  }

  return sub_100003938(v35);
}

uint64_t sub_10000B124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10000B144, 0, 0);
}

uint64_t sub_10000B144()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000B1D8, v2, v1);
}

uint64_t sub_10000B1D8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  static MetricTemplate.updateRefreshRequestedCount(for:)();
  v4 = v0[1];

  return v4();
}

uint64_t sub_10000B248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  v7 = type metadata accessor for Logger();
  v6[23] = v7;
  v8 = *(v7 - 8);
  v6[24] = v8;
  v9 = *(v8 + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_10000B34C, 0, 0);
}

void sub_10000B34C()
{
  v63 = v0;
  v1 = *(*(v0 + 176) + 152);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v6 = *(v0 + 136);
      v5 = *(v0 + 144);
      sub_1000077E8(v4, v0 + 96);
      v7 = *(v0 + 128);
      sub_100005E78((v0 + 96), *(v0 + 120));
      if (dispatch thunk of SpotlightReindexHandler.bundleId.getter() == v6 && v8 == v5)
      {
        break;
      }

      v10 = *(v0 + 136);
      v11 = *(v0 + 144);
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_16;
      }

      ++v3;
      sub_100003938((v0 + 96));
      v4 += 40;
      if (v2 == v3)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    v32 = *(v0 + 240);
    v34 = *(v0 + 136);
    v33 = *(v0 + 144);
    sub_10000784C((v0 + 96), v0 + 56);
    sub_10000784C((v0 + 56), v0 + 16);
    v35 = type metadata accessor for ReindexCoordinator();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    *(v0 + 248) = ReindexCoordinator.init()();
    type metadata accessor for PeopleAnalytics();
    *(v0 + 256) = static PeopleAnalytics.reIndexingStopwatch(_:)();
    static PeopleConstants.reindexTransactionName.getter();
    v38 = type metadata accessor for OSTransaction();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    *(v0 + 264) = OSTransaction.init(name:)();
    static PeopleLogger.daemon.getter();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 240);
    v46 = *(v0 + 184);
    v45 = *(v0 + 192);
    if (v43)
    {
      v47 = *(v0 + 136);
      v48 = *(v0 + 144);
      v60 = *(v0 + 240);
      v49 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v49 = 136315394;
      *(v49 + 4) = sub_10002580C(v47, v48, &v62);
      *(v49 + 12) = 2080;
      v50 = OSTransaction.description.getter();
      v52 = sub_10002580C(v50, v51, &v62);

      *(v49 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v41, v42, "Start batch reindex: %s with %s", v49, 0x16u);
      swift_arrayDestroy();

      v53 = *(v45 + 8);
      v53(v60, v46);
    }

    else
    {

      v53 = *(v45 + 8);
      v53(v44, v46);
    }

    *(v0 + 272) = v53;
    *(v0 + 280) = ReindexCoordinator.indexer.getter();
    v54 = *(&async function pointer to dispatch thunk of SpotlightIndexer.startBatchMode(forBundle:protectionClass:) + 1);
    v61 = (&async function pointer to dispatch thunk of SpotlightIndexer.startBatchMode(forBundle:protectionClass:) + async function pointer to dispatch thunk of SpotlightIndexer.startBatchMode(forBundle:protectionClass:));
    v55 = swift_task_alloc();
    *(v0 + 288) = v55;
    *v55 = v0;
    v55[1] = sub_10000B844;
    v56 = *(v0 + 160);
    v57 = *(v0 + 168);
    v59 = *(v0 + 136);
    v58 = *(v0 + 144);

    v61(v59, v58, v56, v57);
  }

  else
  {
LABEL_10:
    v13 = *(v0 + 208);
    v14 = *(v0 + 144);
    static PeopleLogger.daemon.getter();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 208);
    v19 = *(v0 + 184);
    v20 = *(v0 + 192);
    if (v17)
    {
      v22 = *(v0 + 136);
      v21 = *(v0 + 144);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v62 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_10002580C(v22, v21, &v62);
      _os_log_impl(&_mh_execute_header, v15, v16, "No reindex support for %s", v23, 0xCu);
      sub_100003938(v24);
    }

    (*(v20 + 8))(v18, v19);
    v26 = *(v0 + 232);
    v25 = *(v0 + 240);
    v28 = *(v0 + 216);
    v27 = *(v0 + 224);
    v30 = *(v0 + 200);
    v29 = *(v0 + 208);

    v31 = *(v0 + 8);

    v31();
  }
}

uint64_t sub_10000B844()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return _swift_task_switch(sub_10000B95C, 0, 0);
}

uint64_t sub_10000B95C()
{
  v23 = v0;
  v1 = v0[29];
  v2 = v0[18];
  static PeopleLogger.daemon.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[34];
  v7 = v0[29];
  v8 = v0[23];
  v9 = v0[24];
  if (v5)
  {
    v21 = v0[34];
    v11 = v0[17];
    v10 = v0[18];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10002580C(v11, v10, &v22);
    _os_log_impl(&_mh_execute_header, v3, v4, "Calling reindexEvents: %s ", v12, 0xCu);
    sub_100003938(v13);

    v21(v7, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v14 = v0[5];
  v15 = v0[6];
  sub_100005E78(v0 + 2, v14);
  v16 = async function pointer to dispatch thunk of SpotlightReindexHandler.reindexEvents(includeIds:withCoordinator:)[1];
  v17 = swift_task_alloc();
  v0[37] = v17;
  *v17 = v0;
  v17[1] = sub_10000BB58;
  v18 = v0[31];
  v19 = v0[19];

  return dispatch thunk of SpotlightReindexHandler.reindexEvents(includeIds:withCoordinator:)(v19, v18, v14, v15);
}

uint64_t sub_10000BB58()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return _swift_task_switch(sub_10000BC54, 0, 0);
}

uint64_t sub_10000BC54()
{
  v23 = v0;
  v1 = v0[28];
  v2 = v0[18];
  static PeopleLogger.daemon.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[34];
  v7 = v0[28];
  v8 = v0[23];
  v9 = v0[24];
  if (v5)
  {
    v20 = v0[34];
    v11 = v0[17];
    v10 = v0[18];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10002580C(v11, v10, &v22);
    _os_log_impl(&_mh_execute_header, v3, v4, "Cleaning up batch: %s ", v12, 0xCu);
    sub_100003938(v13);

    v20(v7, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v14 = v0[31];
  v0[38] = ReindexCoordinator.indexer.getter();
  v15 = *(&async function pointer to dispatch thunk of SpotlightIndexer.endBatchMode(forBundle:) + 1);
  v21 = (&async function pointer to dispatch thunk of SpotlightIndexer.endBatchMode(forBundle:) + async function pointer to dispatch thunk of SpotlightIndexer.endBatchMode(forBundle:));
  v16 = swift_task_alloc();
  v0[39] = v16;
  *v16 = v0;
  v16[1] = sub_10000BE50;
  v18 = v0[17];
  v17 = v0[18];

  return v21(v18, v17);
}

uint64_t sub_10000BE50()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_10000C1BC;
  }

  else
  {
    v5 = *(v2 + 304);

    v4 = sub_10000BF6C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000BF6C()
{
  v35 = v0;
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[18];
  static PeopleLogger.daemon.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[34];
  if (v6)
  {
    v8 = v0[33];
    v9 = v0[24];
    v32 = v0[23];
    v33 = v0[27];
    v11 = v0[17];
    v10 = v0[18];
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10002580C(v11, v10, &v34);
    *(v12 + 12) = 2080;
    v13 = OSTransaction.description.getter();
    v15 = sub_10002580C(v13, v14, &v34);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Completed reindex for: %s with %s", v12, 0x16u);
    swift_arrayDestroy();

    v17 = v32;
    v16 = v33;
  }

  else
  {
    v18 = v0[27];
    v19 = v0[23];
    v20 = v0[24];

    v16 = v18;
    v17 = v19;
  }

  v7(v16, v17);
  v22 = v0[32];
  v21 = v0[33];
  v23 = v0[31];
  dispatch thunk of PeopleAnalytics.StopWatch.stop()();
  OSTransaction.complete()();

  sub_100003938(v0 + 2);
  v25 = v0[29];
  v24 = v0[30];
  v27 = v0[27];
  v26 = v0[28];
  v29 = v0[25];
  v28 = v0[26];

  v30 = v0[1];

  return v30();
}

uint64_t sub_10000C1BC()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[34];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v8 = v0[17];
  v7 = v0[18];

  static PeopleLogger.daemon.getter();
  swift_errorRetain();
  _StringGuts.grow(_:)(25);

  v9._countAndFlagsBits = v8;
  v9._object = v7;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 4203786;
  v10._object = 0xE300000000000000;
  String.append(_:)(v10);
  Logger.ifError(_:message:)();

  v3(v4, v6);
  v12 = v0[32];
  v11 = v0[33];
  v13 = v0[31];
  dispatch thunk of PeopleAnalytics.StopWatch.stop()();
  OSTransaction.complete()();

  sub_100003938(v0 + 2);
  v15 = v0[29];
  v14 = v0[30];
  v17 = v0[27];
  v16 = v0[28];
  v19 = v0[25];
  v18 = v0[26];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10000C370()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_100003938(v0 + 4);
  sub_100003938(v0 + 9);
  sub_100003938(v0 + 14);
  v3 = v0[19];

  return swift_deallocClassInstance();
}

char *sub_10000C3F4(void *a1)
{
  v2 = [a1 intent];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();

    if (v4)
    {
      v5 = [a1 intent];
      if (v5)
      {
        v6 = v5;
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          v8 = [v7 serializedParameters];
          v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v55 = 0x6E6F73726570;
          v56 = 0xE600000000000000;
          AnyHashable.init<A>(_:)();
          if (!*(v9 + 16) || (v10 = sub_100005F34(v57), (v11 & 1) == 0))
          {
LABEL_12:

            sub_1000078C0(v57);
            goto LABEL_39;
          }

          sub_100010658(*(v9 + 56) + 32 * v10, v58);
          sub_1000078C0(v57);

          sub_100005E30(&qword_100062938, &qword_10004DB48);
          if (swift_dynamicCast())
          {
            v12 = v55;
            v55 = 0x696669746E656469;
            v56 = 0xEA00000000007265;
            AnyHashable.init<A>(_:)();
            if (*(v12 + 16))
            {
              v13 = sub_100005F34(v57);
              if (v14)
              {
                sub_100010658(*(v12 + 56) + 32 * v13, v58);
                sub_1000078C0(v57);

                if (swift_dynamicCast())
                {
                  v15 = v55;
                  v16 = v56;
                  sub_100005E30(&qword_100062930, &qword_10004DB40);
                  v17 = swift_allocObject();
                  *(v17 + 16) = xmmword_10004D790;
                  *(v17 + 32) = v15;
                  *(v17 + 40) = v16;

                  return v17;
                }

                goto LABEL_39;
              }
            }

            goto LABEL_12;
          }

LABEL_39:

          return _swiftEmptyArrayStorage;
        }
      }
    }
  }

  v19 = [a1 intent];
  v6 = INTypedIntentWithIntent();

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for SelectPeopleIntent();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_39;
  }

  [a1 family];
  v20 = SelectPeopleIntent.people(for:)();
  v21 = v20;
  if (v20 >> 62)
  {
LABEL_44:
    v54 = v21 & 0xFFFFFFFFFFFFFF8;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v51 = v6;
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_45:
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_46;
  }

  v54 = v20 & 0xFFFFFFFFFFFFFF8;
  v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v51 = v6;
  if (!v22)
  {
    goto LABEL_45;
  }

LABEL_18:
  v6 = 0;
  v23 = _swiftEmptyArrayStorage;
  v53 = v21 & 0xC000000000000001;
  do
  {
    v52 = v23;
    v24 = v6;
    while (1)
    {
      if (v53)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *(v54 + 16))
        {
          goto LABEL_43;
        }

        v25 = *(v21 + 8 * v24 + 32);
      }

      v26 = v25;
      v6 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v27 = [v25 id];
      if (v27)
      {
        v35 = v27;
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        goto LABEL_33;
      }

      v28 = [v26 identifier];
      if (v28)
      {
        break;
      }

LABEL_21:
      ++v24;
      if (v6 == v22)
      {
        v23 = v52;
        goto LABEL_46;
      }
    }

    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v57[0] = 124;
    v57[1] = 0xE100000000000000;
    __chkstk_darwin(v33);
    v50[2] = v57;
    v34 = sub_10000D294(0x7FFFFFFFFFFFFFFFLL, 1, sub_100010600, v50, v30, v32, &v51);
    if (!v34[2])
    {

      goto LABEL_21;
    }

    v39 = v34[4];
    v40 = v34[5];
    v42 = v34[6];
    v41 = v34[7];
    swift_bridgeObjectRetain_n();

    v36 = static String._fromSubstring(_:)();
    v38 = v43;

    swift_bridgeObjectRelease_n();
LABEL_33:
    v44 = v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_100022130(0, *(v44 + 2) + 1, 1, v44);
    }

    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    v47 = v44;
    if (v46 >= v45 >> 1)
    {
      v47 = sub_100022130((v45 > 1), v46 + 1, 1, v44);
    }

    *(v47 + 2) = v46 + 1;
    v48 = &v47[16 * v46];
    v23 = v47;
    *(v48 + 4) = v36;
    *(v48 + 5) = v38;
  }

  while (v6 != v22);
LABEL_46:
  v49 = v23;

  return v49;
}

uint64_t sub_10000C988(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a3[4];
  sub_100005E78(a3, a3[3]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10000D1F8;
  *(v8 + 24) = v6;

  dispatch thunk of ChronoConfigurationReaderProtocol.allConfiguredWidgets(completion:)();
}

uint64_t sub_10000CA60(unint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v4 = sub_10000CD08(a1);
    a3(v4, 0);
  }

  else
  {
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      sub_10000D240();
      v6 = swift_allocError();
    }

    swift_errorRetain();
    a3(v6, 1);
  }
}

uint64_t sub_10000CB38@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  static PeopleConstants.appBundleID.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 widgetConfigurationsForApplicationContainerBundleIdentifier:v4];

  sub_100005E30(&qword_100062928, &qword_10004DB38);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:

    *a2 = _swiftEmptyArrayStorage;
    return result;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      ++v9;
      v11 = [v10 widget];
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v7 != v9);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void *sub_10000CD08(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_50;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v32 = v3;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (v35)
    {
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        goto LABEL_44;
      }

LABEL_9:
      v40 = v6;
      v8 = v2;
      sub_10000CB38(&v40, &v39);
      if (v2)
      {
        goto LABEL_43;
      }

      swift_unknownObjectRelease();
      v9 = v39;
      v10 = v39 >> 62;
      if (v39 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v5 >> 62;
      if (v5 >> 62)
      {
        v28 = _CocoaArrayWrapper.endIndex.getter();
        v14 = v28 + v11;
        if (__OFADD__(v28, v11))
        {
LABEL_42:
          __break(1u);
LABEL_43:

          swift_unknownObjectRelease();
          return v5;
        }
      }

      else
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_42;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v37 = v11;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v12)
        {
          goto LABEL_21;
        }

        v15 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v12)
        {
LABEL_21:
          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_22;
        }

        v15 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v16 = *(v15 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v17 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v10)
      {
        v20 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v15 = v20;
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v37 > 0)
          {
            goto LABEL_46;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_4;
        }
      }

      if (((v18 >> 1) - v17) < v37)
      {
        goto LABEL_47;
      }

      v36 = v5;
      v21 = v15 + 8 * v17 + 32;
      v31 = v15;
      if (v10)
      {
        if (v19 < 1)
        {
          goto LABEL_49;
        }

        sub_100010530();
        for (i = 0; i != v19; ++i)
        {
          sub_100005E30(&qword_100062918, &qword_10004F050);
          v23 = sub_1000104A8(v38, i, v9);
          v25 = *v24;
          (v23)(v38, 0);
          *(v21 + 8 * i) = v25;
        }
      }

      else
      {
        sub_100010734(0, &qword_100062910, CHSWidget_ptr);
        swift_arrayInitWithCopy();
      }

      v2 = v8;
      v5 = v36;
      if (v37 >= 1)
      {
        v26 = *(v31 + 16);
        v7 = __OFADD__(v26, v37);
        v27 = v26 + v37;
        if (v7)
        {
          goto LABEL_48;
        }

        *(v31 + 16) = v27;
      }

LABEL_5:
      if (v4 == v32)
      {
        return v5;
      }
    }

    if (v4 >= *(v34 + 16))
    {
      goto LABEL_45;
    }

    v6 = *(v33 + 8 * v4);
    isUniquelyReferenced_nonNull_bridgeObject = swift_unknownObjectRetain();
    v7 = __OFADD__(v4++, 1);
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v29;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000D08C()
{
  sub_100003938((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10000D0E8()
{
  sub_1000077E8(*v0 + 16, v6);
  v1 = swift_allocObject();
  sub_10000784C(v6, v1 + 16);
  v2 = sub_100005E30(&qword_100062900, qword_10004DB20);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return Promise.init(startBlock:)();
}

uint64_t sub_10000D180()
{
  sub_100003938((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000D1C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D1F8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

unint64_t sub_10000D240()
{
  result = qword_100062908;
  if (!qword_100062908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062908);
  }

  return result;
}

void *sub_10000D294@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_10002223C(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_10002223C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_10002223C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_10002223C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_10002223C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_10000D654(void *a1, int64_t a2, char a3)
{
  result = sub_10000D880(a1, a2, a3, *v3, &qword_100062A98, &qword_10004DBE8, &qword_100062AA0, &unk_10004DBF0);
  *v3 = result;
  return result;
}

void *sub_10000D694(void *a1, int64_t a2, char a3)
{
  result = sub_10000D880(a1, a2, a3, *v3, &qword_100062968, &qword_10004DB78, &qword_100062AA8, &unk_10004EB10);
  *v3 = result;
  return result;
}

char *sub_10000D6D4(char *a1, int64_t a2, char a3)
{
  result = sub_10000D774(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000D6F4(void *a1, int64_t a2, char a3)
{
  result = sub_10000D880(a1, a2, a3, *v3, &qword_100063260, &qword_10004E2B0, &qword_100062950, &qword_10004DB60);
  *v3 = result;
  return result;
}

void *sub_10000D734(void *a1, int64_t a2, char a3)
{
  result = sub_10000D9C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000D754(size_t a1, int64_t a2, char a3)
{
  result = sub_10000DAFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000D774(char *result, int64_t a2, char a3, char *a4)
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_10000D880(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100005E30(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005E30(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10000D9C8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005E30(&qword_100062958, &qword_10004DB68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005E30(&qword_100062960, &qword_10004DB70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10000DAFC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005E30(&unk_100062940, &unk_10004DB50);
  v10 = *(type metadata accessor for ContactPerson() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ContactPerson() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000DCD4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    v10 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(a2 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(a2 + 48) + 16 * v13);
    v16 = *v15 == v9 && v15[1] == v8;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

void *sub_10000DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = type metadata accessor for Logger();
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  __chkstk_darwin(v12);
  v61 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StatusType();
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  __chkstk_darwin(v15);
  v60 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67[3] = type metadata accessor for ContactFetcher();
  v67[4] = &protocol witness table for ContactFetcher;
  v67[0] = a2;
  v66[3] = type metadata accessor for KettleStatusFetcher();
  v66[4] = &off_10005DB20;
  v66[0] = a3;
  a6[19] = 0;
  swift_unknownObjectWeakInit();
  a6[20] = 0;
  a6[2] = a1;
  sub_1000077E8(v67, (a6 + 8));
  sub_1000077E8(v66, (a6 + 3));
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = *(a5 + 8);
  v64 = a4;
  v65 = a5;
  sub_100007784(&v63);
  v57 = a1;
  v22 = v15;
  v23 = v62;

  v21(v18, v20, a4, a5);
  sub_10000784C(&v63, (a6 + 13));
  type metadata accessor for BiomeUtilities();
  static BiomeUtilities.shared.getter();
  v24 = enum case for StatusType.dndAvailability(_:);
  v25 = *(v23 + 104);
  v26 = v60;
  v25(v60, enum case for StatusType.dndAvailability(_:), v22);
  v27 = dispatch thunk of BiomeUtilities.scheduler(for:isDaemon:)();

  v28 = *(v23 + 8);
  v62 = v23 + 8;
  v28(v26, v22);
  v29 = [objc_opt_self() userStatusChangeStream];
  v30 = [v29 publisher];

  v31 = [v30 subscribeOn:v27];
  v54 = v22;
  v55 = v25;
  v25(v26, v24, v22);
  v32 = sub_100005E30(&qword_100062A78, &unk_10004DBC0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = v31;

  v56 = v35;
  v36 = BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)();
  v37 = a6[20];
  a6[20] = v36;

  static PeopleLogger.daemon.getter();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v52 = v28;
    v41 = v40;
    v42 = swift_slowAlloc();
    v53 = v27;
    v43 = v42;
    *&v63 = v42;
    *v41 = 136315138;
    v44 = v60;
    v45 = v54;
    v55(v60, v24, v54);
    sub_100010884(&qword_100062708, &type metadata accessor for StatusType);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v52(v44, v45);
    v49 = sub_10002580C(v46, v48, &v63);

    *(v41 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v38, v39, "%s init complete", v41, 0xCu);
    sub_100003938(v43);
  }

  else
  {
  }

  (*(v58 + 8))(v61, v59);
  sub_100003938(v67);
  sub_100003938(v66);
  return a6;
}

uint64_t sub_10000E3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v48 = type metadata accessor for Logger();
  v51 = *(v48 - 8);
  v10 = *(v51 + 64);
  __chkstk_darwin(v48);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StatusType();
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin(v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[3] = type metadata accessor for SpotlightIndexer();
  v55[4] = &protocol witness table for SpotlightIndexer;
  v55[0] = a2;
  v54[3] = type metadata accessor for ContactFetcher();
  v54[4] = &protocol witness table for ContactFetcher;
  v54[0] = a3;
  *(a5 + 24) = 0;
  swift_unknownObjectWeakInit();
  static PeopleConstants.askToBuyEventTTL.getter();
  *(a5 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_listener) = 0;
  *(a5 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_featureFlags) = a1;
  sub_1000077E8(v55, a5 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_indexer);
  sub_1000077E8(v54, a5 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_contactFetcher);
  v52 = a4;
  sub_1000077E8(a4, a5 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_messageConduit);
  type metadata accessor for BiomeUtilities();
  v49 = a1;

  static BiomeUtilities.shared.getter();
  v18 = enum case for StatusType.askToBuyRequest(_:);
  v19 = v14[13];
  v19(v17, enum case for StatusType.askToBuyRequest(_:), v13);
  v20 = dispatch thunk of BiomeUtilities.scheduler(for:isDaemon:)();

  v46 = v14[1];
  v47 = v14 + 1;
  v46(v17, v13);
  v21 = v18;
  v22 = [objc_opt_self() askToBuyStream];
  v23 = [v22 publisher];

  v24 = [v23 subscribeOn:v20];
  v25 = v13;
  v45 = v19;
  v19(v17, v21, v13);
  v26 = sub_100005E30(&qword_100062A68, &qword_10004DBB8);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = v24;

  v30 = BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)();
  v31 = *(a5 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_listener);
  *(a5 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_listener) = v30;

  static PeopleLogger.daemon.getter();

  v50 = v12;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v44 = v29;
    v35 = v34;
    v36 = swift_slowAlloc();
    v43 = v20;
    v37 = v36;
    v53 = v36;
    *v35 = 136315138;
    v45(v17, v21, v25);
    sub_100010884(&qword_100062708, &type metadata accessor for StatusType);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v46(v17, v25);
    v41 = sub_10002580C(v38, v40, &v53);

    *(v35 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "%s init complete", v35, 0xCu);
    sub_100003938(v37);
  }

  else
  {
  }

  sub_100003938(v52);
  (*(v51 + 8))(v50, v48);
  sub_100003938(v54);
  sub_100003938(v55);
  return a5;
}

uint64_t sub_10000E8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v48 = type metadata accessor for Logger();
  v51 = *(v48 - 8);
  v10 = *(v51 + 64);
  __chkstk_darwin(v48);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StatusType();
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin(v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[3] = type metadata accessor for SpotlightIndexer();
  v55[4] = &protocol witness table for SpotlightIndexer;
  v55[0] = a2;
  v54[3] = type metadata accessor for ContactFetcher();
  v54[4] = &protocol witness table for ContactFetcher;
  v54[0] = a3;
  *(a5 + 24) = 0;
  swift_unknownObjectWeakInit();
  static PeopleConstants.screenTimeRequestEventTTL.getter();
  *(a5 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_listener) = 0;
  *(a5 + 32) = a1;
  sub_1000077E8(v55, a5 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_indexer);
  sub_1000077E8(v54, a5 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_contactFetcher);
  v52 = a4;
  sub_1000077E8(a4, a5 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_messageConduit);
  type metadata accessor for BiomeUtilities();
  v49 = a1;

  static BiomeUtilities.shared.getter();
  v18 = enum case for StatusType.screenTimeRequest(_:);
  v19 = v14[13];
  v19(v17, enum case for StatusType.screenTimeRequest(_:), v13);
  v20 = dispatch thunk of BiomeUtilities.scheduler(for:isDaemon:)();

  v46 = v14[1];
  v47 = v14 + 1;
  v46(v17, v13);
  v21 = v18;
  v22 = [objc_opt_self() screenTimeRequestStream];
  v23 = [v22 publisher];

  v24 = [v23 subscribeOn:v20];
  v25 = v13;
  v45 = v19;
  v19(v17, v21, v13);
  v26 = sub_100005E30(&qword_100062A60, &qword_10004DBB0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = v24;

  v30 = BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)();
  v31 = *(a5 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_listener);
  *(a5 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_listener) = v30;

  static PeopleLogger.daemon.getter();

  v50 = v12;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v44 = v29;
    v35 = v34;
    v36 = swift_slowAlloc();
    v43 = v20;
    v37 = v36;
    v53 = v36;
    *v35 = 136315138;
    v45(v17, v21, v25);
    sub_100010884(&qword_100062708, &type metadata accessor for StatusType);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v46(v17, v25);
    v41 = sub_10002580C(v38, v40, &v53);

    *(v35 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "%s init complete", v35, 0xCu);
    sub_100003938(v37);
  }

  else
  {
  }

  sub_100003938(v52);
  (*(v51 + 8))(v50, v48);
  sub_100003938(v54);
  sub_100003938(v55);
  return a5;
}

void *sub_10000EE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v51 = v10;
  v52 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v55 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for StatusType();
  v14 = *(v53 - 8);
  v15 = v14[8];
  __chkstk_darwin(v53);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59[3] = type metadata accessor for LaunchRecordReader();
  v59[4] = &protocol witness table for LaunchRecordReader;
  v59[0] = a4;
  v58[3] = type metadata accessor for ContactFetcher();
  v58[4] = &protocol witness table for ContactFetcher;
  v58[0] = a1;
  v57[3] = type metadata accessor for CallHistoryFetcher();
  v57[4] = &off_10005EE58;
  v57[0] = a2;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = 0;
  sub_1000077E8(v59, (a5 + 16));
  a5[15] = a3;
  sub_1000077E8(v58, (a5 + 5));
  sub_1000077E8(v57, (a5 + 10));
  type metadata accessor for BiomeUtilities();
  v50 = a3;

  static BiomeUtilities.shared.getter();
  v18 = enum case for StatusType.missedCall(_:);
  v19 = v14[13];
  v20 = v53;
  v19(v17, enum case for StatusType.missedCall(_:), v53);
  v54 = dispatch thunk of BiomeUtilities.scheduler(for:isDaemon:)();

  v21 = v14[1];
  v49 = v14 + 1;
  v48 = v21;
  v21(v17, v20);
  v22 = [objc_opt_self() intent];
  v23 = [v22 publisher];

  static PeopleConstants.intentClassKeyPath.getter();
  v24 = String._bridgeToObjectiveC()();

  static PeopleConstants.startCallIntent.getter();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v23 filterWithKeyPath:v24 value:v25];

  v27 = [v26 subscribeOn:v54];
  v47 = v18;
  v28 = v18;
  v29 = v53;
  v46 = v19;
  v19(v17, v28, v53);
  v30 = sub_100005E30(&qword_100062A58, &qword_10004DBA8);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = v27;

  v34 = BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)();
  v35 = a5[4];
  a5[4] = v34;

  static PeopleLogger.daemon.getter();

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56 = v39;
    *v38 = 136315138;
    v46(v17, v47, v29);
    sub_100010884(&qword_100062708, &type metadata accessor for StatusType);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v48(v17, v29);
    v43 = sub_10002580C(v40, v42, &v56);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s init complete", v38, 0xCu);
    sub_100003938(v39);
  }

  else
  {
  }

  (*(v52 + 8))(v55, v51);
  sub_100003938(v59);
  sub_100003938(v58);
  sub_100003938(v57);
  return a5;
}

void *sub_10000F3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v47 = type metadata accessor for Logger();
  v49 = *(v47 - 8);
  v10 = *(v49 + 64);
  __chkstk_darwin(v47);
  v50 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StatusType();
  v13 = *(v12 - 8);
  v14 = v13[8];
  __chkstk_darwin(v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[3] = type metadata accessor for LaunchRecordReader();
  v54[4] = &protocol witness table for LaunchRecordReader;
  v54[0] = a4;
  v53[3] = type metadata accessor for ContactFetcher();
  v53[4] = &protocol witness table for ContactFetcher;
  v53[0] = a2;
  v52[3] = type metadata accessor for MessageFetcher();
  v52[4] = &off_10005E8E8;
  v52[0] = a3;
  a5[18] = 0;
  a5[20] = 0;
  swift_unknownObjectWeakInit();
  sub_1000077E8(v54, (a5 + 3));
  a5[2] = a1;
  sub_1000077E8(v53, (a5 + 8));
  sub_1000077E8(v52, (a5 + 13));
  type metadata accessor for BiomeUtilities();
  v48 = a1;

  static BiomeUtilities.shared.getter();
  v17 = enum case for StatusType.readMessage(_:);
  v18 = v13[13];
  v18(v16, enum case for StatusType.readMessage(_:), v12);
  v19 = dispatch thunk of BiomeUtilities.scheduler(for:isDaemon:)();

  v20 = v13[1];
  v46 = v13 + 1;
  v45 = v20;
  v20(v16, v12);
  v21 = [objc_opt_self() readMessageStream];
  v22 = [v21 publisher];

  v23 = v19;
  v24 = [v22 subscribeOn:v19];

  v43 = v17;
  v44 = v18;
  v18(v16, v17, v12);
  v25 = sub_100005E30(&qword_100062A50, &qword_10004DBA0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = v24;

  v29 = BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)();
  v30 = a5[18];
  a5[18] = v29;

  static PeopleLogger.daemon.getter();

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v23;
    v35 = v28;
    v36 = v34;
    v51 = v34;
    *v33 = 136315138;
    v44(v16, v43, v12);
    sub_100010884(&qword_100062708, &type metadata accessor for StatusType);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v45(v16, v12);
    v40 = sub_10002580C(v37, v39, &v51);

    *(v33 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s init complete", v33, 0xCu);
    sub_100003938(v36);
  }

  else
  {
  }

  (*(v49 + 8))(v50, v47);
  sub_100003938(v54);
  sub_100003938(v53);
  sub_100003938(v52);
  return a5;
}

uint64_t sub_10000F8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = type metadata accessor for Logger();
  v46 = *(v43 - 8);
  v8 = *(v46 + 64);
  __chkstk_darwin(v43);
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StatusType();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = sub_100010734(0, &qword_100062A38, STDowntimeClient_ptr);
  v50[4] = &off_10005DCD0;
  v50[0] = a3;
  v49[3] = type metadata accessor for ContactFetcher();
  v49[4] = &protocol witness table for ContactFetcher;
  v49[0] = a2;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  static PeopleConstants.childStateEventTTL.getter();
  *(a4 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_listener) = 0;
  *(a4 + 32) = a1;
  sub_1000077E8(v49, a4 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_contactFetcher);
  sub_1000077E8(v50, a4 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_downtimeClient);
  type metadata accessor for BiomeUtilities();
  v45 = a1;

  static BiomeUtilities.shared.getter();
  v15 = enum case for StatusType.childState(_:);
  v16 = v11[13];
  v16(v14, enum case for StatusType.childState(_:), v10);
  v17 = dispatch thunk of BiomeUtilities.scheduler(for:isDaemon:)();

  v41 = v11[1];
  v42 = v11 + 1;
  v41(v14, v10);
  v18 = [BiomeLibrary() Family];
  swift_unknownObjectRelease();
  v19 = [v18 ScreenTime];
  swift_unknownObjectRelease();
  v20 = [v19 ChildState];
  swift_unknownObjectRelease();
  v21 = [v20 DSLPublisher];

  v44 = v17;
  v22 = [v21 subscribeOn:v17];

  v40 = v15;
  v39 = v16;
  v16(v14, v15, v10);
  v23 = sub_100005E30(&qword_100062A40, &qword_10004DB98);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = v22;

  v27 = BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)();
  v28 = *(a4 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_listener);
  *(a4 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_listener) = v27;

  static PeopleLogger.daemon.getter();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v48 = v32;
    *v31 = 136315138;
    v39(v14, v40, v10);
    sub_100010884(&qword_100062708, &type metadata accessor for StatusType);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v41(v14, v10);
    v36 = sub_10002580C(v33, v35, &v48);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s init complete", v31, 0xCu);
    sub_100003938(v32);
  }

  else
  {
  }

  (*(v46 + 8))(v47, v43);
  sub_100003938(v50);
  sub_100003938(v49);
  return a4;
}

void *sub_10000FE6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = type metadata accessor for Logger();
  v50 = *(v51 - 8);
  v12 = *(v50 + 64);
  __chkstk_darwin(v51);
  v52 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StatusType();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[3] = type metadata accessor for ContactFetcher();
  v58[4] = &protocol witness table for ContactFetcher;
  v58[0] = a2;
  v57[3] = type metadata accessor for PeopleLocateFriendProvider();
  v57[4] = &protocol witness table for PeopleLocateFriendProvider;
  v57[0] = a4;
  v19 = type metadata accessor for WidgetConfigurationReader();
  v56[3] = v19;
  v56[4] = &off_10005DBD0;
  v56[0] = a5;
  v55[3] = type metadata accessor for SpotlightIndexer();
  v55[4] = &protocol witness table for SpotlightIndexer;
  v55[0] = a6;
  type metadata accessor for LocationStatusEventListener();
  v20 = swift_allocObject();
  v21 = sub_1000106B4(v56, v19);
  v22 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v54[4] = &off_10005DBD0;
  v54[3] = v19;
  v54[0] = v26;
  v20[3] = 0;
  swift_unknownObjectWeakInit();
  v20[4] = 0;
  v20[5] = a1;
  sub_1000077E8(v58, (v20 + 6));
  sub_1000077E8(v55, (v20 + 11));
  sub_1000077E8(v57, (v20 + 16));
  sub_1000077E8(v54, (v20 + 21));
  v49[1] = a1;
  v49[0] = v15;
  if (a3)
  {
    type metadata accessor for BiomeUtilities();

    static BiomeUtilities.shared.getter();
    v27 = enum case for StatusType.location(_:);
    v28 = *(v15 + 104);
    v28(v18, enum case for StatusType.location(_:), v14);
    v29 = dispatch thunk of BiomeUtilities.scheduler(for:isDaemon:)();

    (*(v15 + 8))(v18, v14);
    v30 = [objc_opt_self() findMyLocationChangeStream];
    v31 = [v30 publisher];

    v32 = [v31 subscribeOn:v29];
    v28(v18, v27, v14);
    v33 = sub_100005E30(&qword_100062A30, &qword_10004DB90);
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();

    v36 = BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)();

    v37 = v20[4];
    v20[4] = v36;
  }

  else
  {
  }

  v38 = v52;
  static PeopleLogger.daemon.getter();

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v53 = v42;
    *v41 = 136315138;
    v43 = v49[0];
    (*(v49[0] + 104))(v18, enum case for StatusType.location(_:), v14);
    sub_100010884(&qword_100062708, &type metadata accessor for StatusType);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    (*(v43 + 8))(v18, v14);
    v47 = sub_10002580C(v44, v46, &v53);

    *(v41 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s init complete", v41, 0xCu);
    sub_100003938(v42);

    (*(v50 + 8))(v52, v51);
  }

  else
  {

    (*(v50 + 8))(v38, v51);
  }

  sub_100003938(v55);
  sub_100003938(v57);
  sub_100003938(v58);
  sub_100003938(v54);
  sub_100003938(v56);
  return v20;
}

void (*sub_1000104A8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_100010528;
  }

  __break(1u);
  return result;
}

unint64_t sub_100010530()
{
  result = qword_100062920;
  if (!qword_100062920)
  {
    sub_100010594(&qword_100062918, &qword_10004F050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062920);
  }

  return result;
}

uint64_t sub_100010594(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100010600(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100010658(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000106B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100010734(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100010784()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000107C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007CBC;

  return sub_10000B124(a1, v4, v5, v7, v6);
}

uint64_t sub_100010884(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000108E0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_100010948()
{
  if (*(v0 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_listener))
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
  v3._object = 0x8000000100050720;
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

uint64_t sub_100010AA4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Got BMScreenTimeChildState: %@", v12, 0xCu);
    sub_100014C2C(v13);
  }

  (*(v5 + 8))(v8, v4);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v9;
  v16 = sub_100005E30(&qword_100062750, &qword_10004D990);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = v9;

  return Promise.init(startBlock:)();
}

uint64_t sub_100010CA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a3 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_contactFetcher + 32);
  sub_100005E78((a3 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_contactFetcher), *(a3 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_contactFetcher + 24));
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = sub_100014D78;
  v10[4] = v8;
  v10[5] = a4;

  v11 = a4;
  dispatch thunk of FamilyMemberContactFetching.familyWithDSIDs(completion:)();
}

uint64_t sub_100010DA0(uint64_t a1, char a2, uint64_t *a3, uint64_t (*a4)(void, void), uint64_t a5, void *a6)
{
  v12 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v100 = &v96 - v14;
  v15 = type metadata accessor for StatusType();
  v106 = *(v15 - 8);
  v107 = v15;
  v16 = *(v106 + 64);
  __chkstk_darwin(v15);
  v105 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 1);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v22 = __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v26 = &v96 - v25;
  if (a2)
  {
    static PeopleLogger.daemon.getter();

    sub_100014AA4(a1, 1);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    sub_100014AB8(a1, 1);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v101 = v19;
      v102 = v18;
      v30 = v29;
      v31 = swift_slowAlloc();
      v103 = a5;
      v104 = a4;
      v108 = v31;
      v109 = v31;
      *v30 = 136315394;
      v32 = v105;
      v33 = v106;
      v34 = v107;
      (*(v106 + 104))(v105, enum case for StatusType.childState(_:), v107);
      sub_100014CE8(&qword_100062708, &type metadata accessor for StatusType);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v33 + 8))(v32, v34);
      v38 = sub_10002580C(v35, v37, &v109);

      *(v30 + 4) = v38;
      *(v30 + 12) = 2080;
      swift_getErrorValue();
      v39 = Error.localizedDescription.getter();
      v41 = sub_10002580C(v39, v40, &v109);

      *(v30 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s family lookup error: %s", v30, 0x16u);
      swift_arrayDestroy();
      a4 = v104;

      (*(v101 + 8))(v26, v102);
    }

    else
    {

      (*(v19 + 8))(v26, v18);
    }

    return a4(a1, 1);
  }

  else
  {
    v97 = v24;
    v98 = v23;
    v99 = a3;
    sub_100012FFC(a6, a1);
    v43 = v42;
    if (v42 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v101 = v19;
      v102 = v18;
      v103 = a5;
      v104 = a4;
      if (!i)
      {
        break;
      }

      v45 = 0;
      v108 = v43 & 0xC000000000000001;
      v19 = v43 & 0xFFFFFFFFFFFFFF8;
      v46 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v108)
        {
          v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v47 = *(v43 + 8 * v45 + 32);
        }

        v18 = v47;
        v48 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        a5 = i;
        v49 = [v47 identifier];
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        a4 = v51;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_100022130(0, *(v46 + 2) + 1, 1, v46);
        }

        v53 = *(v46 + 2);
        v52 = *(v46 + 3);
        v18 = (v53 + 1);
        if (v53 >= v52 >> 1)
        {
          v46 = sub_100022130((v52 > 1), v53 + 1, 1, v46);
        }

        *(v46 + 2) = v18;
        v54 = &v46[16 * v53];
        *(v54 + 4) = v50;
        *(v54 + 5) = a4;
        ++v45;
        i = a5;
        if (v48 == a5)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

    v46 = _swiftEmptyArrayStorage;
LABEL_22:

    v56 = *(v46 + 2);
    if (v56)
    {
      v57 = v99;
      Strong = swift_unknownObjectWeakLoadStrong();
      v59 = v104;
      if (Strong)
      {
        sub_10001D564(v57, v46, Strong);
        swift_unknownObjectRelease();
      }

      v60 = v98;
      static PeopleLogger.daemon.getter();

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v108 = v56;
        v64 = v63;
        v99 = swift_slowAlloc();
        v109 = v99;
        *v64 = 136315138;
        v65 = v105;
        v66 = v106;
        v67 = v59;
        v68 = v107;
        (*(v106 + 104))(v105, enum case for StatusType.childState(_:), v107);
        sub_100014CE8(&qword_100062708, &type metadata accessor for StatusType);
        v69 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = v70;
        v72 = v66;
        v73 = v65;
        v74 = v68;
        v59 = v67;
        (*(v72 + 8))(v65, v74);
        v75 = sub_10002580C(v69, v71, &v109);

        *(v64 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v61, v62, "%s event consume complete", v64, 0xCu);
        sub_100003938(v99);

        (*(v101 + 8))(v60, v102);
      }

      else
      {

        (*(v101 + 8))(v60, v102);
        v73 = v105;
      }

      v91 = v100;
      v92 = type metadata accessor for TaskPriority();
      (*(*(v92 - 8) + 56))(v91, 1, 1, v92);
      v93 = swift_allocObject();
      *(v93 + 16) = 0;
      *(v93 + 24) = 0;
      sub_100014EE4(0, 0, v91, &unk_10004DE08, v93);
    }

    else
    {

      v76 = v97;
      static PeopleLogger.daemon.getter();

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.debug.getter();

      v79 = os_log_type_enabled(v77, v78);
      v59 = v104;
      if (v79)
      {
        v80 = swift_slowAlloc();
        v108 = 0;
        v81 = v80;
        v82 = swift_slowAlloc();
        v109 = v82;
        *v81 = 136315138;
        v84 = v105;
        v83 = v106;
        v85 = v107;
        (*(v106 + 104))(v105, enum case for StatusType.childState(_:), v107);
        sub_100014CE8(&qword_100062708, &type metadata accessor for StatusType);
        LODWORD(v100) = v78;
        v86 = dispatch thunk of CustomStringConvertible.description.getter();
        v88 = v87;
        v89 = v83;
        v73 = v84;
        (*(v89 + 8))(v84, v85);
        v90 = sub_10002580C(v86, v88, &v109);

        *(v81 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v77, v100, "%s event consume complete w/o local contact", v81, 0xCu);
        sub_100003938(v82);
        v59 = v104;

        (*(v101 + 8))(v76, v102);
      }

      else
      {

        (*(v101 + 8))(v76, v102);
        v73 = v105;
      }
    }

    type metadata accessor for PeopleAnalytics();
    v95 = v106;
    v94 = v107;
    (*(v106 + 104))(v73, enum case for StatusType.childState(_:), v107);
    static PeopleAnalytics.eventReceived(foundContacts:statusType:)();
    (*(v95 + 8))(v73, v94);
    return v59(0, 0);
  }
}

uint64_t sub_100011800()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000118BC, 0, 0);
}

uint64_t sub_1000118BC()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.childState(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004810, v2, v1);
}

uint64_t sub_100011974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a3 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_contactFetcher + 32);
  sub_100005E78((a3 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_contactFetcher), *(a3 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_contactFetcher + 24));
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = sub_10000D1F8;
  v10[4] = v8;
  v10[5] = a4;

  dispatch thunk of FamilyMemberContactFetching.familyWithDSIDs(completion:)();
}

uint64_t sub_100011A74(uint64_t a1, char a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, NSObject *a6)
{
  v36 = a6;
  v38 = a4;
  v9 = type metadata accessor for StatusType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v33[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v37 = a5;
    static PeopleLogger.daemon.getter();

    sub_100014AA4(a1, 1);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    sub_100014AB8(a1, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v21 = 136315394;
      (*(v10 + 104))(v13, enum case for StatusType.childState(_:), v9);
      sub_100014CE8(&qword_100062708, &type metadata accessor for StatusType);
      v35 = v19;
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v20;
      v24 = v23;
      (*(v10 + 8))(v13, v9);
      v25 = sub_10002580C(v22, v24, &v39);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v26 = Error.localizedDescription.getter();
      v28 = sub_10002580C(v26, v27, &v39);

      *(v21 + 14) = v28;
      v19 = v35;
      _os_log_impl(&_mh_execute_header, v35, v34, "%s family lookup error: %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    (*(v15 + 8))(v18, v14);
    return (v38)(a1, 1);
  }

  else
  {
    v30 = *(a1 + 16);
    if (v30)
    {
      v37 = a5;
      v31 = sub_100013E54(v30, 0);
      v32 = sub_100014950(&v39, v31 + 4, v30, a1);
      sub_100014AA4(a1, 0);
      result = sub_100014AB0();
      if (v32 != v30)
      {
        __break(1u);
        return result;
      }

      a5 = v37;
    }

    else
    {
      v31 = _swiftEmptyArrayStorage;
    }

    sub_100011EA4(v36, v31, v38, a5);
  }
}

void sub_100011EA4(NSObject *a1, char *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v142 = a4;
  v143 = a3;
  v7 = type metadata accessor for StatusType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for ChildStateType();
  v12 = *(v139 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v139);
  v138 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for ChildStatePersonStatus();
  v15 = *(v150 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v150);
  v149 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v155 = &v129 - v19;
  v159 = type metadata accessor for Logger();
  v20 = *(v159 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v159);
  v157 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v152 = &v129 - v25;
  v26 = __chkstk_darwin(v24);
  v151 = &v129 - v27;
  __chkstk_darwin(v26);
  v156 = &v129 - v28;
  v148 = type metadata accessor for Date();
  v147 = *(v148 - 8);
  v29 = *(v147 + 64);
  v30 = __chkstk_darwin(v148);
  v137 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v129 - v32;
  v164 = a2;
  if (a2 >> 62)
  {
LABEL_72:
    v122 = v33;
    v123 = _CocoaArrayWrapper.endIndex.getter();
    v33 = v122;
    v163 = v123;
    if (v123)
    {
      goto LABEL_3;
    }

LABEL_73:
    *&v165 = 0;
    *(&v165 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    (*(v8 + 104))(v11, enum case for StatusType.childState(_:), v7);
    sub_100014CE8(&qword_100062708, &type metadata accessor for StatusType);
    v124 = dispatch thunk of CustomStringConvertible.description.getter();
    v126 = v125;

    *&v165 = v124;
    *(&v165 + 1) = v126;
    (*(v8 + 8))(v11, v7);
    v127._object = 0x8000000100050700;
    v127._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v127);
    v128 = static PeopleErrors.createError(_:code:)();

    v143(v128, 1);

    return;
  }

  v163 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v163)
  {
    goto LABEL_73;
  }

LABEL_3:
  v141 = v33;
  Date.init()();
  isa = a1[2].isa;
  if (!isa)
  {
    v153 = 0;
    v154 = &_swiftEmptyDictionarySingleton;
LABEL_69:
    v143(v154, 0);

    (*(v147 + 8))(v141, v148);
    sub_100014C1C(v153);
    return;
  }

  v153 = 0;
  v35 = 0;
  v146 = (v4 + OBJC_IVAR____TtC7peopled22ChildStateStatusSource_downtimeClient);
  v160 = a1 + 4;
  v11 = v164;
  v36 = v164 & 0xC000000000000001;
  v8 = v164 & 0xFFFFFFFFFFFFFF8;
  v158 = (v20 + 8);
  v134 = enum case for ChildStateType.onDemandDowntime(_:);
  v133 = (v12 + 104);
  v132 = (v147 + 16);
  v144 = (v15 + 16);
  v131 = (v15 + 8);
  v154 = &_swiftEmptyDictionarySingleton;
  *&v34 = 138412290;
  v135 = v34;
  *&v34 = 138412546;
  v145 = v34;
  v4 = v163;
  while (2)
  {
    v37 = &v160[2 * v35];
    v12 = *v37;
    v15 = v37[1];
    v162 = (v35 + 1);

    v7 = 0;
    while (1)
    {
      if (v36)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(v8 + 16);
        if (v7 >= v33)
        {
          goto LABEL_71;
        }

        v38 = *&v11[8 * v7 + 32];
      }

      a1 = v38;
      v39 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v40 = [v38 contact];
      if (v40)
      {
        break;
      }

LABEL_8:

      ++v7;
      if (v39 == v4)
      {

        goto LABEL_6;
      }
    }

    v41 = v40;
    v42 = [v40 identifier];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    if (v12 != v43 || v15 != v45)
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v4 = v163;
      v11 = v164;
      if (v20)
      {
        goto LABEL_22;
      }

      goto LABEL_8;
    }

LABEL_22:
    v47 = [a1 dsid];
    if (!v47)
    {

      static PeopleLogger.daemon.getter();
      v20 = a1;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        a1 = swift_slowAlloc();
        *v68 = v135;
        v69 = [v20 firstName];
        if (v69)
        {
          v70 = v69;
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          sub_100014C94();
          swift_allocError();
          *v74 = v71;
          v74[1] = v73;
          v69 = _swift_stdlib_bridgeErrorToNSError();
          v75 = v69;
        }

        else
        {
          v75 = 0;
        }

        *(v68 + 4) = v69;
        a1->isa = v75;
        _os_log_impl(&_mh_execute_header, v66, v67, "ODD %@ impossible no dsid", v68, 0xCu);
        sub_100014C2C(a1);

        v86 = v20;
      }

      else
      {
        v86 = v66;
        v66 = v20;
      }

      (*v158)(v157, v159);
      goto LABEL_66;
    }

    v48 = v47;
    v49 = [objc_allocWithZone(STUserID) initWithDSID:v47];
    v50 = [v49 dsid];
    v51 = [v50 integerValue];

    if (v51 != [v48 integerValue])
    {

      static PeopleLogger.daemon.getter();
      a1 = a1;
      v20 = v49;
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = v145;
        v80 = [a1 firstName];
        if (v80)
        {
          v81 = v80;
          v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v136 = v82;

          sub_100014C94();
          swift_allocError();
          v83 = v136;
          *v84 = v140;
          v84[1] = v83;
          v80 = _swift_stdlib_bridgeErrorToNSError();
          v85 = v80;
        }

        else
        {
          v85 = 0;
        }

        *(v78 + 4) = v80;
        *(v78 + 12) = 2112;
        *(v78 + 14) = v20;
        *v79 = v85;
        v79[1] = v20;
        v99 = v20;
        _os_log_impl(&_mh_execute_header, v76, v77, "ODD %@ bad st user id %@", v78, 0x16u);
        sub_100005E30(&qword_100062758, &unk_10004E8A0);
        swift_arrayDestroy();

        v97 = a1;
        v20 = v48;
        v48 = v99;
      }

      else
      {
        v97 = v76;
        v76 = a1;
      }

      v11 = v164;

      (*v158)(v156, v159);
      goto LABEL_67;
    }

    v52 = v146[3];
    v53 = v146[4];
    sub_100005E78(v146, v52);
    if (((*(v53 + 8))(v49, v52, v53) & 1) == 0)
    {

      static PeopleLogger.daemon.getter();
      a1 = a1;
      v20 = v49;
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *v89 = v145;
        v91 = [a1 firstName];
        if (v91)
        {
          v92 = v91;
          v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v136 = v93;

          sub_100014C94();
          swift_allocError();
          v94 = v136;
          *v95 = v140;
          v95[1] = v94;
          v91 = _swift_stdlib_bridgeErrorToNSError();
          v96 = v91;
        }

        else
        {
          v96 = 0;
        }

        *(v89 + 4) = v91;
        *(v89 + 12) = 2112;
        *(v89 + 14) = v20;
        *v90 = v96;
        v90[1] = v20;
        v111 = v20;
        _os_log_impl(&_mh_execute_header, v87, v88, "ODD %@ has downtime off %@", v89, 0x16u);
        sub_100005E30(&qword_100062758, &unk_10004E8A0);
        swift_arrayDestroy();

        v98 = a1;
        v20 = v48;
        v48 = v111;
      }

      else
      {
        v98 = v87;
        v87 = a1;
      }

      (*v158)(v152, v159);
      goto LABEL_66;
    }

    (*v133)(v138, v134, v139);
    (*v132)(v137, v141, v148);
    type metadata accessor for PeopleFeatureFlags();
    static PeopleFeatureFlags.shared.getter();
    ChildStatePersonStatus.init(childStateType:date:featureFlags:)();
    static PeopleLogger.daemon.getter();
    v54 = a1;
    v55 = v49;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();

    v140 = v54;
    if (os_log_type_enabled(v56, v57))
    {
      v136 = v55;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = v145;
      v60 = [v140 firstName];
      if (v60)
      {
        v61 = v60;
        v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v129 = v62;

        sub_100014C94();
        swift_allocError();
        v63 = v129;
        *v64 = v130;
        v64[1] = v63;
        v60 = _swift_stdlib_bridgeErrorToNSError();
        v65 = v60;
      }

      else
      {
        v65 = 0;
      }

      *(v58 + 4) = v60;
      *(v58 + 12) = 2112;
      v55 = v136;
      *(v58 + 14) = v136;
      *v59 = v65;
      v59[1] = v55;
      v100 = v55;
      _os_log_impl(&_mh_execute_header, v56, v57, "ODD %@ has downtime on %@", v58, 0x16u);
      sub_100005E30(&qword_100062758, &unk_10004E8A0);
      swift_arrayDestroy();
    }

    (*v158)(v151, v159);
    v136 = *v144;
    v136(v149, v155, v150);
    sub_100014C1C(v153);
    v101 = v154;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v165 = v101;
    v20 = sub_100005EBC(v12, v15);
    v104 = v101[2];
    v105 = (v103 & 1) == 0;
    v106 = v104 + v105;
    if (__OFADD__(v104, v105))
    {
      __break(1u);
    }

    else
    {
      v107 = v103;
      if (v101[3] >= v106)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v110 = v165;
          if ((v103 & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          sub_100006EE0();
          v110 = v165;
          if ((v107 & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        goto LABEL_55;
      }

      sub_100006460(v106, isUniquelyReferenced_nonNull_native);
      v108 = sub_100005EBC(v12, v15);
      if ((v107 & 1) == (v109 & 1))
      {
        v20 = v108;
        v110 = v165;
        if ((v107 & 1) == 0)
        {
LABEL_60:
          sub_100007E88(v20, v12, v15, _swiftEmptyArrayStorage, v110);
LABEL_61:
          v112 = v110[7];
          v113 = *(v112 + 8 * v20);
          v114 = swift_isUniquelyReferenced_nonNull_native();
          *(v112 + 8 * v20) = v113;
          v154 = v110;
          if ((v114 & 1) == 0)
          {
            v113 = sub_100022348(0, v113[2] + 1, 1, v113);
            *(v112 + 8 * v20) = v113;
          }

          v116 = v113[2];
          v115 = v113[3];
          if (v116 >= v115 >> 1)
          {
            *(v112 + 8 * v20) = sub_100022348((v115 > 1), v116 + 1, 1, v113);
          }

          a1 = v131;
          v117 = *v131;
          v118 = v150;
          (*v131)(v155, v150);
          v166 = v118;
          v167 = sub_100014CE8(&qword_100062C28, &type metadata accessor for ChildStatePersonStatus);
          v119 = sub_100007784(&v165);
          v120 = v149;
          v136(v119, v149, v118);
          v121 = *(v112 + 8 * v20);
          *(v121 + 16) = v116 + 1;
          sub_10000784C(&v165, v121 + 40 * v116 + 32);
          v117(v120, v118);
          v153 = sub_100012FEC;
LABEL_66:
          v11 = v164;
LABEL_67:
          v4 = v163;
LABEL_6:
          v35 = v162;
          if (v162 == isa)
          {
            goto LABEL_69;
          }

          continue;
        }

LABEL_55:

        goto LABEL_61;
      }
    }

    break;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100012FFC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v76 = *(v9 - 8);
  v10 = *(v76 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v74 - v14;
  v16 = [a1 userDSID];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = HIBYTE(v20) & 0xF;
    v22 = v18 & 0xFFFFFFFFFFFFLL;
    if ((v20 & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(v20) & 0xF;
    }

    else
    {
      v23 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {

LABEL_72:
      static PeopleLogger.daemon.getter();

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v77[0] = v63;
        *v62 = 136315138;
        v64 = v8;
        (*(v5 + 104))(v8, enum case for StatusType.childState(_:), v4);
        sub_100014CE8(&qword_100062708, &type metadata accessor for StatusType);
        v65 = dispatch thunk of CustomStringConvertible.description.getter();
        v75 = v15;
        v66 = v65;
        v67 = v76;
        v68 = v4;
        v69 = v9;
        v71 = v70;
        (*(v5 + 8))(v64, v68);
        v72 = sub_10002580C(v66, v71, v77);

        *(v62 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v60, v61, "%s no family member found", v62, 0xCu);
        sub_100003938(v63);

        (*(v67 + 8))(v75, v69);
      }

      else
      {

        (*(v76 + 8))(v15, v9);
      }

      return;
    }

    if ((v20 & 0x1000000000000000) != 0)
    {
      v78 = 0;
      v26 = sub_100013F50(v18, v20, 10);
      v55 = v73;
      goto LABEL_67;
    }

    if ((v20 & 0x2000000000000000) != 0)
    {
      v77[0] = v18;
      v77[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v21)
        {
          if (--v21)
          {
            v26 = 0;
            v47 = v77 + 1;
            while (1)
            {
              v48 = *v47 - 48;
              if (v48 > 9)
              {
                break;
              }

              v49 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v49 + v48;
              if (__OFADD__(v49, v48))
              {
                break;
              }

              ++v47;
              if (!--v21)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_80:
        __break(1u);
        return;
      }

      if (v18 != 45)
      {
        if (v21)
        {
          v26 = 0;
          v52 = v77;
          while (1)
          {
            v53 = *v52 - 48;
            if (v53 > 9)
            {
              break;
            }

            v54 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v54 + v53;
            if (__OFADD__(v54, v53))
            {
              break;
            }

            v52 = (v52 + 1);
            if (!--v21)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v21)
      {
        if (--v21)
        {
          v26 = 0;
          v41 = v77 + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 - v42;
            if (__OFSUB__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v21)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        v24 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v24 = _StringObject.sharedUTF8.getter();
      }

      v25 = *v24;
      if (v25 == 43)
      {
        if (v22 >= 1)
        {
          v21 = v22 - 1;
          if (v22 != 1)
          {
            v26 = 0;
            if (v24)
            {
              v44 = v24 + 1;
              while (1)
              {
                v45 = *v44 - 48;
                if (v45 > 9)
                {
                  goto LABEL_65;
                }

                v46 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_65;
                }

                v26 = v46 + v45;
                if (__OFADD__(v46, v45))
                {
                  goto LABEL_65;
                }

                ++v44;
                if (!--v21)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_79;
      }

      if (v25 != 45)
      {
        if (v22)
        {
          v26 = 0;
          if (v24)
          {
            while (1)
            {
              v50 = *v24 - 48;
              if (v50 > 9)
              {
                goto LABEL_65;
              }

              v51 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v51 + v50;
              if (__OFADD__(v51, v50))
              {
                goto LABEL_65;
              }

              ++v24;
              if (!--v22)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v26 = 0;
        LOBYTE(v21) = 1;
        goto LABEL_66;
      }

      if (v22 >= 1)
      {
        v21 = v22 - 1;
        if (v22 != 1)
        {
          v26 = 0;
          if (v24)
          {
            v27 = v24 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_65;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v21)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v21) = 0;
LABEL_66:
          v78 = v21;
          v55 = v21;
LABEL_67:

          if ((v55 & 1) == 0)
          {
            if (*(a2 + 16))
            {
              v56 = sub_100005F78(v26);
              if (v57)
              {
                v58 = *(*(a2 + 56) + 8 * v56);
                v59 = [v58 contactsIncludingImage:0];
                sub_100010734(0, &qword_100062C10, CNContact_ptr);
                static Array._unconditionallyBridgeFromObjectiveC(_:)();

                return;
              }
            }
          }

          goto LABEL_72;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  static PeopleLogger.daemon.getter();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = v8;
    v34 = swift_slowAlloc();
    v77[0] = v34;
    *v32 = 136315138;
    (*(v5 + 104))(v33, enum case for StatusType.childState(_:), v4);
    sub_100014CE8(&qword_100062708, &type metadata accessor for StatusType);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v4;
    v37 = v76;
    v75 = v9;
    v39 = v38;
    (*(v5 + 8))(v33, v36);
    v40 = sub_10002580C(v35, v39, v77);

    *(v32 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s invalid dsid", v32, 0xCu);
    sub_100003938(v34);

    (*(v37 + 8))(v13, v75);
  }

  else
  {

    (*(v76 + 8))(v13, v9);
  }
}

uint64_t sub_100013824()
{
  sub_100007E10((v0 + 16));
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC7peopled22ChildStateStatusSource_ttl;
  v3 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  sub_100003938(&v0[OBJC_IVAR____TtC7peopled22ChildStateStatusSource_contactFetcher]);
  sub_100003938(&v0[OBJC_IVAR____TtC7peopled22ChildStateStatusSource_downtimeClient]);
  v4 = *&v0[OBJC_IVAR____TtC7peopled22ChildStateStatusSource_listener];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChildStateStatusSource()
{
  result = qword_100062AE0;
  if (!qword_100062AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013960()
{
  sub_100013A1C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100013A1C()
{
  if (!qword_100063250)
  {
    sub_100010734(255, &qword_100062AF0, NSUnitDuration_ptr);
    v0 = type metadata accessor for Measurement();
    if (!v1)
    {
      atomic_store(v0, &qword_100063250);
    }
  }
}

uint64_t sub_100013A84@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.childState(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100013AF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100013B3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return StatusSource.debugID.getter(a1, WitnessTable);
}

uint64_t sub_100013B90(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = sub_100005E30(&qword_100062700, &unk_10004D940);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  return Promise.init(startBlock:)();
}

uint64_t sub_100013C50(uint64_t a1)
{
  result = sub_100014CE8(&qword_100062BF8, type metadata accessor for ChildStateStatusSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100013CF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013D38()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013D70()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_100013DD0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100005E30(&qword_100062930, &qword_10004DB40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100013E54(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100005E30(&qword_100062C08, &unk_10004DDE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_100013EDC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100005E30(&qword_100062C18, &unk_10004DDF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_100013F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000144DC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000144DC()
{
  v0 = String.subscript.getter();
  v4 = sub_10001455C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10001455C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100013EDC(v9, 0);
  v12 = sub_1000146B4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000146B4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000148D4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000148D4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000148D4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_100014950(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100014AA4(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_100014AB8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void *sub_100014AC4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100014C1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100014C2C(uint64_t a1)
{
  v2 = sub_100005E30(&qword_100062758, &unk_10004E8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100014C94()
{
  result = qword_100062C20;
  if (!qword_100062C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062C20);
  }

  return result;
}

uint64_t sub_100014CE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100014D30()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014D84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014DFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014E34()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100007CBC;

  return sub_100011800();
}

uint64_t sub_100014EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001E738(a3, v27 - v11, &qword_100062A80, &qword_10004ED60);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100007DB0(v12, &qword_100062A80, &qword_10004ED60);
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

      sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);

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

  sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);
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

uint64_t sub_1000151E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001E738(a3, v27 - v11, &qword_100062A80, &qword_10004ED60);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100007DB0(v12, &qword_100062A80, &qword_10004ED60);
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

      sub_100005E30(&unk_100062DB0, &qword_10004E010);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);

      return v24;
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

  sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100005E30(&unk_100062DB0, &qword_10004E010);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000154F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1000155A4(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1000156A4()
{
  if (*(v0 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_listener))
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

  _StringGuts.grow(_:)(49);
  v3._object = 0x8000000100050780;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
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

uint64_t sub_1000157DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  type metadata accessor for PeopleBiomeEventIndexer();
  v11 = swift_allocObject();
  *(v11 + 16) = a6;
  *(v11 + 24) = a4;
  *(v11 + 32) = sub_10000D1F8;
  *(v11 + 40) = v10;

  static PeopleBiomeEventIndexer.indexEvent(askToBuyEvent:withContactFetcher:withIndexer:completion:)();
}

uint64_t sub_1000158E4(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
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
          sub_10001D5A0(a4, a1, Strong, sub_1000156A4, &unk_10005E048, sub_10001E85C, &enum case for StatusType.askToBuyRequest(_:));
          swift_unknownObjectRelease();
        }

        v42 = type metadata accessor for TaskPriority();
        (*(*(v42 - 8) + 56))(v27, 1, 1, v42);
        v43 = swift_allocObject();
        *(v43 + 16) = 0;
        *(v43 + 24) = 0;
        sub_100014EE4(0, 0, v27, &unk_10004DFC8, v43);
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
        (*(v10 + 104))(v13, enum case for StatusType.askToBuyRequest(_:), v64);
        sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
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
        (*(v10 + 104))(v13, enum case for StatusType.askToBuyRequest(_:), v48);
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
        (*(v10 + 104))(v13, enum case for StatusType.askToBuyRequest(_:), v64);
        sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
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
    (*(v10 + 104))(v13, enum case for StatusType.askToBuyRequest(_:), v64);
    sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
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

uint64_t sub_10001616C()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100016228, 0, 0);
}

uint64_t sub_100016228()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.askToBuyRequest(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004810, v2, v1);
}

uint64_t sub_1000162E0(void *a1, uint64_t a2)
{
  sub_1000077E8(a2 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_indexer, v10);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_10000784C(v10, v4 + 32);
  *(v4 + 72) = 1;
  v5 = sub_100005E30(&qword_100062750, &qword_10004D990);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = a1;

  return Promise.init(startBlock:)();
}

uint64_t sub_1000163A8(uint64_t a1)
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
  v21 = enum case for StatusType.askToBuyRequest(_:);
  v22 = *(v12 + 104);
  v22(&v53 - v19, enum case for StatusType.askToBuyRequest(_:), v11);
  sub_1000077E8(v2 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_contactFetcher, v65);
  v22(v18, v21, v11);
  v23 = [objc_opt_self() askToBuyStream];
  v24 = sub_100005E30(&qword_100062D28, &qword_10004DF80);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = BiomeStreamReader.init(statusType:readerStream:)();
  v28 = *(v61 + 16);
  v28(v10, v2 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_ttl, v7);
  v29 = sub_100005E30(&qword_100062D30, &unk_10004DF88);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v64[3] = v24;
  v64[4] = sub_100017694();
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
    sub_10001764C(&qword_100062708, &type metadata accessor for StatusType);
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

uint64_t sub_1000169AC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100016AC8()
{
  sub_100007E10(v0 + 16);
  v1 = OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_ttl;
  v2 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_featureFlags);

  sub_100003938((v0 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_indexer));
  sub_100003938((v0 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_contactFetcher));
  sub_100003938((v0 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_messageConduit));
  v4 = *(v0 + OBJC_IVAR____TtC7peopled20AskToBuyStatusSource_listener);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AskToBuyStatusSource()
{
  result = qword_100062C60;
  if (!qword_100062C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016C1C()
{
  sub_100013A1C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100016CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.askToBuyRequest(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100016D50(uint64_t a1)
{
  v2 = sub_10001764C(&qword_100062978, type metadata accessor for AskToBuyStatusSource);

  return StatusSource.debugID.getter(a1, v2);
}

uint64_t sub_100016DE0(uint64_t a1, uint64_t a2)
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

  return _swift_task_switch(sub_100016EB0, 0, 0);
}

void sub_100016EB0()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = enum case for StatusType.askToBuyRequest(_:);
  v7 = *(v0[11] + 104);
  v7(v0[13], enum case for StatusType.askToBuyRequest(_:), v2);
  v22 = swift_allocObject();
  v0[14] = v22;
  *(v22 + 16) = v5;
  v8 = swift_allocObject();
  v0[15] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  v7(v1, v6, v2);
  v9 = objc_opt_self();

  v10 = [v9 askToBuyStream];
  v11 = sub_100005E30(&qword_100062D28, &qword_10004DF80);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = BiomeStreamReader.init(statusType:readerStream:)();
  v0[5] = v11;
  v15 = sub_100017694();
  v0[2] = v14;
  v0[6] = v15;
  v16 = *(&async function pointer to dispatch thunk of ReindexCoordinator.reindex<A>(statusType:squashEvents:includeEvent:handleEvent:withReader:) + 1);
  v20 = &async function pointer to dispatch thunk of ReindexCoordinator.reindex<A>(statusType:squashEvents:includeEvent:handleEvent:withReader:) + async function pointer to dispatch thunk of ReindexCoordinator.reindex<A>(statusType:squashEvents:includeEvent:handleEvent:withReader:);
  v17 = swift_task_alloc();
  v0[16] = v17;
  sub_100010734(0, &qword_100062D40, BMAskToBuyEvent_ptr);
  *v17 = v0;
  v17[1] = sub_10001710C;
  v18 = v0[13];
  v19 = v0[8];

  __asm { BR              X8 }
}

uint64_t sub_10001710C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 104);
  v6 = *(*v0 + 96);
  v7 = *(*v0 + 88);
  v8 = *(*v0 + 80);
  v11 = *v0;

  (*(v7 + 8))(v5, v8);
  sub_100003938((v1 + 16));

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_1000172D0(uint64_t a1)
{
  v2 = sub_100010734(0, &qword_100062D40, BMAskToBuyEvent_ptr);

  return static BMStoreDataPeople.squashRequestEvents<A>(_:)(a1, v2);
}

uint64_t sub_100017320(void *a1, uint64_t a2)
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
    v8 = sub_10001B0D0(sub_100010600, v10, a2);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_1000173EC(void *a1, uint64_t a2)
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