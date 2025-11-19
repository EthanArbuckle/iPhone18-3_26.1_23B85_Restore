int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v79 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v78 = *(v7 - 8);
  v8 = *(v78 + 64);
  __chkstk_darwin(v7);
  v77 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Container.Environment();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  __chkstk_darwin(v10);
  v76 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContainerLock();
  v71 = *(v13 - 8);
  v72 = v13;
  v14 = *(v71 + 64);
  __chkstk_darwin(v13);
  v73 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v69 - v23;
  __chkstk_darwin(v22);
  v26 = &v69 - v25;
  if ((WDWeatherAppIsInstalled() & 1) == 0)
  {
    v70 = v7;
    if (qword_1000A3258 != -1)
    {
      sub_1000033B4();
    }

    v27 = sub_100002FE8(v16, static Logger.daemon);
    (*(v17 + 16))(v26, v27, v16);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Launched while Weather is uninstalled", v30, 2u);
    }

    (*(v17 + 8))(v26, v16);
    type metadata accessor for Daemon();
    sub_10004F844();
  }

  if ((WDDeviceUnlockedSinceBoot() & 1) == 0)
  {
    if (qword_1000A3258 != -1)
    {
      sub_1000033B4();
    }

    v31 = sub_100002FE8(v16, static Logger.daemon);
    (*(v17 + 16))(v24, v31, v16);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v70 = v21;
      *v34 = 0;
      sub_1000033F0(&_mh_execute_header, v35, v36, "Launched before first unlock");
    }

    (*(v17 + 8))(v24, v16);
    type metadata accessor for Daemon();
    sub_10004FA50();
  }

  if (_set_user_dir_suffix())
  {
  }

  else
  {
    if (qword_1000A3258 != -1)
    {
      sub_1000033B4();
    }

    v37 = sub_100002FE8(v16, static Logger.daemon);
    (*(v17 + 16))(v21, v37, v16);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      *swift_slowAlloc() = 0;
      sub_1000033F0(&_mh_execute_header, v40, v41, "Failed to set temporary directory suffix");
    }

    (*(v17 + 8))(v21, v16);
  }

  v42 = CFNotificationCenterGetDarwinNotifyCenter();
  v43 = String._bridgeToObjectiveC()();
  CFNotificationCenterAddObserver(v42, 0, sub_100002E84, v43, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  qword_1000A5E30 = [objc_allocWithZone(NSRecursiveLock) init];
  sub_100003020(&qword_1000A3260, &qword_100080340);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100080310;
  v45 = type metadata accessor for Assembly();
  sub_100003410(v45);
  v46 = Assembly.init()();
  *(v44 + 56) = v45;
  *(v44 + 64) = sub_1000031B0(&qword_1000A3268, &type metadata accessor for Assembly);
  *(v44 + 32) = v46;
  v47 = type metadata accessor for Assembly();
  sub_100003410(v47);
  v48 = Assembly.init()();
  *(v44 + 96) = v47;
  *(v44 + 104) = sub_1000031B0(&qword_1000A3270, &type metadata accessor for Assembly);
  *(v44 + 72) = v48;
  sub_100003020(&qword_1000A3278, &qword_100080348);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100080320;
  type metadata accessor for AnalyticsAssembly();
  v50 = sub_1000033D4();
  *(v49 + 56) = v47;
  *(v49 + 64) = sub_1000031B0(&qword_1000A3280, type metadata accessor for AnalyticsAssembly);
  *(v49 + 32) = v50;
  v51 = qword_1000A5E30;
  v52 = type metadata accessor for DaemonAssembly();
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v49 + 96) = v52;
  *(v49 + 104) = sub_1000031B0(&qword_1000A3288, type metadata accessor for DaemonAssembly);
  *(v49 + 72) = v53;
  type metadata accessor for NotificationAssembly();
  v54 = sub_1000033D4();
  *(v49 + 136) = v52;
  *(v49 + 144) = sub_1000031B0(&qword_1000A3290, type metadata accessor for NotificationAssembly);
  *(v49 + 112) = v54;
  type metadata accessor for PredictedLocationsAssembly();
  v55 = sub_1000033D4();
  *(v49 + 176) = v52;
  *(v49 + 184) = sub_1000031B0(&qword_1000A3298, type metadata accessor for PredictedLocationsAssembly);
  *(v49 + 152) = v55;
  v56 = type metadata accessor for SingletonPool();
  sub_100003410(v56);
  v57 = v51;
  SingletonPool.init()();
  v58 = qword_1000A5E30;
  v59 = v72;
  v60 = v73;
  *v73 = qword_1000A5E30;
  (*(v71 + 104))(v60, enum case for ContainerLock.lock(_:), v59);
  (*(v74 + 104))(v76, enum case for Container.Environment.normal(_:), v75);
  v61 = type metadata accessor for Container();
  sub_100003410(v61);
  v62 = v58;
  qword_1000A5E38 = Container.init(bundleAssemblies:assemblies:singletonPool:environment:containerLock:)();
  Container.resolver.getter();
  v63 = [objc_opt_self() currentProcess];
  sub_1000030F0(0xD000000000000011, 0x8000000100084790, v63);

  [objc_opt_self() setSuppressEngagement:1];
  sub_100003154();
  v64 = static OS_dispatch_workloop.daemonWorkloop.getter();
  aBlock[4] = sub_100002F20;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002FA4;
  aBlock[3] = &unk_10009AFB0;
  v65 = _Block_copy(aBlock);
  v66 = v77;
  static DispatchQoS.unspecified.getter();
  v80 = &_swiftEmptyArrayStorage;
  sub_1000031B0(&qword_1000A4B70, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003020(&unk_1000A32B0, &qword_100080350);
  sub_1000031F8();
  v67 = v79;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v65);

  (*(v4 + 8))(v67, v3);
  (*(v78 + 8))(v66, v7);
  dispatch_main();
}

void sub_100002DB4()
{
  if (qword_1000A3258 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002FE8(v0, static Logger.daemon);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Exiting due to language change", v3, 2u);
  }

  exit(0);
}

void sub_100002E84(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = a3;
  a5;
  sub_100002DB4();
}

void sub_100002EE8()
{
}

void sub_100002F20()
{
  sub_1000032B8(qword_1000A3220, qword_1000A3238);
  type metadata accessor for Daemon();
  v0 = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v0)
  {
    v1 = v0;
    sub_10004FD0C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100002FA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100002FE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003020(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003068@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10000309C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1000030B8@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

void sub_1000030F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setProxyAppBundleID:v4];
}

unint64_t sub_100003154()
{
  result = qword_1000A32A0;
  if (!qword_1000A32A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A32A0);
  }

  return result;
}

uint64_t sub_100003198(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000031B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000031F8()
{
  result = qword_1000A4B80;
  if (!qword_1000A4B80)
  {
    sub_10000325C(&unk_1000A32B0, &qword_100080350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B80);
  }

  return result;
}

uint64_t sub_10000325C(uint64_t *a1, uint64_t *a2)
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

void *sub_1000032B8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

__n128 sub_1000032FC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000330C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000332C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_100003368(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000033B4()
{

  return swift_once();
}

uint64_t sub_1000033D4()
{

  return swift_allocObject();
}

void sub_1000033F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_100003410(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_100003428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v47 = v3;
  v54 = v6;
  v7 = type metadata accessor for Location();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v11;
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v51 = v8;
  v52 = a1;
  v19 = *(v8 + 16);
  v53 = v7;
  v48 = v19;
  v49 = v8 + 16;
  v19(v13, a1, v7);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v45 = v14;
    v55 = v23;
    *v22 = 141558531;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    v24 = Location.id.getter();
    v26 = v25;
    (*(v51 + 8))(v13, v53);
    v27 = sub_10000D9FC(v24, v26, &v55);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2082;
    v28 = Array.description.getter();
    v30 = sub_10000D9FC(v28, v29, &v55);

    *(v22 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v20, v21, "Finding cloud channel for location: %{private,mask.hash}s in assets: %{public}s", v22, 0x20u);
    swift_arrayDestroy();

    (*(v15 + 8))(v18, v45);
  }

  else
  {

    (*(v51 + 8))(v13, v53);
    (*(v15 + 8))(v18, v14);
  }

  v45 = sub_100005360();
  v31 = static OS_dispatch_queue.notifications.getter();
  *(swift_allocObject() + 16) = a2;

  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  v32 = v47;
  firstly<A, B>(on:disposeOn:closure:)();

  v33 = static OS_dispatch_queue.notifications.getter();
  v34 = v46;
  v35 = v53;
  v48(v46, v52, v53);
  v36 = v51;
  v37 = *(v51 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v32;
  v51 = *(v36 + 32);
  (v51)(v38 + ((v37 + 24) & ~v37), v34, v35);

  sub_100003020(&qword_1000A34C8, &qword_1000804D8);
  sub_100006CD0(&qword_1000A34D0, &qword_1000A34C0, &qword_1000804D0);
  Promise<A>.compactMap<A>(on:closure:)();

  v39 = zalgo.getter();
  sub_100003020(&qword_1000A34D8, &qword_1000804E0);
  Promise.then<A>(on:closure:)();

  v40 = static OS_dispatch_queue.notifications.getter();
  v48(v34, v52, v35);
  v41 = swift_allocObject();
  (v51)(v41 + ((v37 + 16) & ~v37), v34, v35);
  sub_100003020(&qword_1000A34B0, &qword_1000804C0);
  v42 = Promise.then<A, B>(on:disposeOn:closure:)();

  return v42;
}

uint64_t sub_100003A48()
{
  v0 = sub_100003020(&qword_1000A3538, &qword_100080EF0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  return Promise.init(value:)();
}

uint64_t sub_100003AB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v17[1] = a2;
  v18 = a3;
  v19 = a4;
  v5 = type metadata accessor for Location();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = *a1;
  v9 = a1[1];
  sub_100005360();
  v10 = static OS_dispatch_queue.notifications.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;

  sub_100003020(&qword_1000A3528, &qword_100080508);
  type metadata accessor for CloudChannelMapProvider();
  firstly<A, B>(on:disposeOn:closure:)();

  v12 = static OS_dispatch_queue.notifications.getter();
  (*(v6 + 16))(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_100003020(&qword_1000A3530, &unk_100080510);
  v15 = Promise.then<A>(on:closure:)();

  *v19 = v15;
  return result;
}

uint64_t sub_100003D2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[4];
  sub_1000032B8(a1, a1[3]);
  v6 = dispatch thunk of CloudChannelMapType.regions.getter();
  v8[2] = a2;
  result = sub_100018988(sub_100006B60, v8, v6);
  *a3 = result;
  return result;
}

uint64_t sub_100003DB4(void *a1)
{
  v1 = a1[4];
  sub_1000032B8(a1, a1[3]);
  Location.coordinate.getter();
  return dispatch thunk of CloudChannelRegionType.contains(_:)() & 1;
}

uint64_t sub_100003E14(uint64_t *a1)
{
  v1 = *a1;
  sub_100003020(&qword_1000A34C8, &qword_1000804D8);
  v2 = zalgo.getter();
  sub_100003020(&qword_1000A34F0, &qword_1000804F0);
  sub_100006CD0(&qword_1000A34F8, &qword_1000A34F0, &qword_1000804F0);
  static Promise.all<A>(on:_:)();

  v3 = zalgo.getter();
  sub_100003020(&qword_1000A34D8, &qword_1000804E0);
  sub_100006CD0(&qword_1000A3500, &qword_1000A3508, &qword_1000804F8);
  Promise<A>.compactMap<A>(on:closure:)();

  v4 = zalgo.getter();
  sub_100006CD0(&qword_1000A3510, &qword_1000A3518, &qword_100080500);
  sub_100006CD0(&qword_1000A3520, &qword_1000A34D8, &qword_1000804E0);
  v5 = Promise<A>.flatMap<A>(on:closure:)();

  return v5;
}

uint64_t sub_100004020(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v47 = v3;
  v46 = v6;
  v7 = type metadata accessor for Location();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v18 = *(v8 + 16);
  v51 = a1;
  v52 = v7;
  v49 = v18;
  v50 = v8 + 16;
  v18(v12, a1, v7);
  v53 = a2;
  swift_bridgeObjectRetain_n();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v48 = v8;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v44 = v14;
    v23 = v22;
    v24 = swift_slowAlloc();
    v54 = v24;
    *v23 = 141558531;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    v25 = Location.id.getter();
    v43 = v13;
    v26 = v9;
    v28 = v27;
    (*(v8 + 8))(v12, v52);
    v29 = sub_10000D9FC(v25, v28, &v54);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2050;
    v30 = *(v53 + 16);

    *(v23 + 24) = v30;
    v9 = v26;

    _os_log_impl(&_mh_execute_header, v19, v20, "Locating cloud channel for location: %{private,mask.hash}s in %{public}ld regions", v23, 0x20u);
    sub_100006994(v24);

    (*(v44 + 8))(v17, v43);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v8 + 8))(v12, v52);
    (*(v14 + 8))(v17, v13);
  }

  sub_100005360();
  v31 = static OS_dispatch_queue.notifications.getter();
  v32 = v45;
  v33 = v52;
  v49(v45, v51, v52);
  v34 = v48;
  v35 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v36 = swift_allocObject();
  v37 = *(v34 + 32);
  v37(v36 + v35, v32, v33);
  v48 = firstly<A, B>(on:disposeOn:closure:)();

  v38 = static OS_dispatch_queue.notifications.getter();
  v49(v32, v51, v33);
  v39 = (v35 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v37(v40 + v35, v32, v33);
  *(v40 + v39) = v53;

  sub_100003020(&qword_1000A34B0, &qword_1000804C0);
  v41 = Promise.then<A>(on:closure:)();

  return v41;
}

uint64_t sub_100004504(void *a1)
{
  v1 = a1[12];
  sub_1000032B8(a1 + 8, a1[11]);
  return dispatch thunk of LocationMetadataManagerType.resolveCountryCode(for:)();
}

uint64_t sub_10000455C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Location();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v60[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v14);
  v67 = &v60[-v18];
  __chkstk_darwin(v17);
  v63 = &v60[-v20];
  v64 = a1[1];
  if (v64)
  {
    v21 = *(a3 + 16);
    if (v21)
    {
      v62 = *a1;
      v22 = a3 + 32;
      v23 = (v12 + 8);
      *&v19 = 141558275;
      v61 = v19;
      v65 = v23;
      do
      {
        sub_100006930(v22, v73);
        sub_1000032B8(v73, v74);
        v24 = dispatch thunk of CloudChannelRegionType.channel.getter();
        if (v25)
        {
          v26 = v24;
          v27 = v25;
          sub_1000032B8(v73, v74);
          v28 = dispatch thunk of CloudChannelRegionType.country.getter();
          if (v29)
          {
            v70 = v28;
            v71 = v29;
            v68 = v62;
            v69 = v64;
            sub_1000069E0();
            v30 = StringProtocol.caseInsensitiveCompare<A>(_:)();

            if (!v30)
            {
              v70 = v26;
              v71 = v27;
              v57 = sub_100003020(&qword_1000A34B8, &qword_1000804C8);
              v58 = *(v57 + 48);
              v59 = *(v57 + 52);
              swift_allocObject();
              v55 = Promise.init(value:)();
              sub_100006994(v73);
              return v55;
            }
          }

          v31 = v67;
          static Logger.notifications.getter();
          sub_100006930(v73, &v70);
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v75 = v66;
            *v34 = v61;
            *(v34 + 4) = 1752392040;
            *(v34 + 12) = 2081;
            sub_1000032B8(&v70, v72);
            v68 = dispatch thunk of CloudChannelRegionType.country.getter();
            v69 = v35;
            sub_100003020(&qword_1000A34E0, &qword_1000804E8);
            v36 = String.init<A>(describing:)();
            v38 = v37;
            sub_100006994(&v70);
            v39 = sub_10000D9FC(v36, v38, &v75);
            v23 = v65;

            *(v34 + 14) = v39;
            _os_log_impl(&_mh_execute_header, v32, v33, "Ignoring channel region due to mismatching country: %{private,mask.hash}s", v34, 0x16u);
            sub_100006994(v66);

            (*v23)(v67, v11);
          }

          else
          {

            (*v23)(v31, v11);
            sub_100006994(&v70);
          }
        }

        else
        {
          v40 = v63;
          static Logger.notifications.getter();
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 0;
            _os_log_impl(&_mh_execute_header, v41, v42, "Channel region is missing channel identifier", v43, 2u);
            v23 = v65;
          }

          (*v23)(v40, v11);
        }

        sub_100006994(v73);
        v22 += 40;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    static Logger.notifications.getter();
    (*(v7 + 16))(v10, a2, v6);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v67 = v11;
      v47 = v46;
      v66 = swift_slowAlloc();
      v73[0] = v66;
      *v47 = 141558275;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2081;
      LODWORD(v65) = v45;
      v48 = Location.id.getter();
      v50 = v49;
      (*(v7 + 8))(v10, v6);
      v51 = sub_10000D9FC(v48, v50, v73);

      *(v47 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v44, v65, "Failed to resolve country code for location: %{private,mask.hash}s", v47, 0x16u);
      sub_100006994(v66);

      (*(v12 + 8))(v16, v67);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
      (*(v12 + 8))(v16, v11);
    }
  }

  v73[0] = 0;
  v73[1] = 0;
  v52 = sub_100003020(&qword_1000A34B8, &qword_1000804C8);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  return Promise.init(value:)();
}

Swift::Int sub_100004C74(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100004CD8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void *sub_100004D2C()
{
  v1 = v0[2];

  sub_100006994(v0 + 3);
  sub_100006994(v0 + 8);
  return v0;
}

uint64_t sub_100004D5C()
{
  sub_100004D2C();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_100004DB4(uint64_t a1)
{
  v54 = *v1;
  v55 = v1;
  v3 = type metadata accessor for Location();
  v4 = sub_100006FBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v4);
  v52 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v10;
  __chkstk_darwin(v9);
  v12 = &v50 - v11;
  v13 = type metadata accessor for Logger();
  v14 = sub_100006FBC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v56 = v6;
  v57 = v3;
  v21 = *(v6 + 16);
  v58 = a1;
  v59 = v21;
  v53 = v6 + 16;
  v21(v12, a1, v3);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v61 = v25;
    *v24 = 141558275;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2081;
    v26 = Location.id.getter();
    v27 = v13;
    v29 = v28;
    (*(v56 + 8))(v12, v57);
    v30 = sub_10000D9FC(v26, v29, &v61);

    *(v24 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Requested cloud channel for location: %{private,mask.hash}s", v24, 0x16u);
    sub_100006994(v25);

    (*(v16 + 8))(v20, v27);
  }

  else
  {

    (*(v56 + 8))(v12, v57);
    (*(v16 + 8))(v20, v13);
  }

  v51 = sub_100005360();
  v31 = static OS_dispatch_queue.notifications.getter();
  type metadata accessor for NotificationConfiguration();
  firstly<A, B>(on:disposeOn:closure:)();

  v32 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A34A0, &qword_1000804B8);
  Promise.then<A, B>(on:disposeOn:closure:)();

  v33 = v52;
  v35 = v57;
  v34 = v58;
  v59(v52, v58, v57);
  v36 = v56;
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = sub_100007034();
  v56 = *(v36 + 32);
  v39 = sub_100007008(v38);
  v40(v39);
  v41 = zalgo.getter();
  sub_100006CD0(&qword_1000A34A8, &qword_1000A34A0, &qword_1000804B8);
  v50 = Promise<A>.compactMap<A>(on:closure:)();

  v42 = static OS_dispatch_queue.notifications.getter();
  v59(v33, v34, v35);
  v43 = sub_100007034();
  v44 = sub_100007008(v43);
  (v56)(v44);
  v51 = sub_100003020(&qword_1000A34B0, &qword_1000804C0);
  Promise.then<A, B>(on:disposeOn:closure:)();

  v59(v33, v58, v35);
  v45 = sub_100007034();
  v46 = sub_100007008(v45);
  (v56)(v46);
  v47 = zalgo.getter();
  v48 = Promise.then<A>(on:closure:)();

  return v48;
}

unint64_t sub_100005360()
{
  result = qword_1000A5B70;
  if (!qword_1000A5B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A5B70);
  }

  return result;
}

NSObject *sub_1000053D0()
{
  v0 = sub_100003020(&qword_1000A3540, &unk_100080520);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v54 - v2;
  v59 = sub_100003020(&qword_1000A3548, &qword_100080FC0);
  v57 = *(v59 - 8);
  v4 = *(v57 + 64);
  __chkstk_darwin(v59);
  v56 = &v54 - v5;
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  v13 = __chkstk_darwin(v11);
  v55 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v54 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v54 - v19;
  __chkstk_darwin(v18);
  v22 = &v54 - v21;
  NotificationConfiguration.cloudChannelsConfiguration.getter();
  if (!v23)
  {
    static Logger.notifications.getter();
    v27 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v27, v30, "App configuration is missing cloud channels configuration", v31, 2u);
    }

    (*(v60 + 8))(v22, v61);
    goto LABEL_9;
  }

  static String.Encoding.utf8.getter();
  v24 = String.data(using:allowLossyConversion:)();
  v26 = v25;

  (*(v7 + 8))(v10, v6);
  if (v26 >> 60 == 15)
  {
    static Logger.notifications.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to encode the cloud channels configuration to JSON", v29, 2u);
    }

    (*(v60 + 8))(v20, v61);
LABEL_9:
    sub_100006B80();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
    return v27;
  }

  v33 = v26;
  v34 = type metadata accessor for JSONDecoder();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100006CD0(&qword_1000A3558, &qword_1000A3548, &qword_100080FC0);
  v37 = v58;
  v38 = v59;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v37)
  {

    sub_100006BD4(v3, 1, 1, v38);
    sub_100006BFC(v3);
    static Logger.notifications.getter();
    v27 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v27, v39, "Failed to decode the cloud channels configuration to GeoJSON", v40, 2u);
    }

    (*(v60 + 8))(v17, v61);
    sub_100006B80();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();
    sub_100006C64(v24, v33);
  }

  else
  {
    v58 = v24;

    sub_100006BD4(v3, 0, 1, v38);
    v44 = v56;
    v43 = v57;
    (*(v57 + 32))(v56, v3, v38);
    v45 = GeoJSON<>.assets.getter();
    if (v45)
    {
      v46 = sub_100005B0C(v45);

      v62 = v46;
      v47 = sub_100003020(&qword_1000A3560, &qword_100080530);
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      swift_allocObject();
      v27 = Promise.init(value:)();
      sub_100006C64(v58, v33);
      (*(v43 + 8))(v44, v38);
    }

    else
    {
      v50 = v55;
      static Logger.notifications.getter();
      v27 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v27, v51, "Cloud channels configuration did not provide any assets", v52, 2u);
      }

      (*(v60 + 8))(v50, v61);
      sub_100006B80();
      swift_allocError();
      *v53 = 0;
      swift_willThrow();
      sub_100006C64(v58, v33);
      (*(v43 + 8))(v44, v38);
    }
  }

  return v27;
}

void *sub_100005B0C(uint64_t a1)
{
  v2 = sub_100003020(&qword_1000A3568, &qword_100080538);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_100014538(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v9 = v11;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v18 = *(v10 + 56);
    do
    {
      v9(v6, v12, v2);
      v22 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_100014538((v13 > 1), v14 + 1, 1);
        v8 = v22;
      }

      v20 = v2;
      v21 = sub_100006CD0(&qword_1000A3570, &qword_1000A3568, &qword_100080538);
      v15 = sub_100006D18(&v19);
      v9(v15, v6, v2);
      v8[2] = v14 + 1;
      sub_100006D78(&v19, &v8[5 * v14 + 4]);
      (*(v10 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_100005D08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v30 = type metadata accessor for Logger();
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v11 = a1[4];
  sub_1000032B8(a1, a1[3]);
  v12 = dispatch thunk of CloudChannelMapAssetType.identifier.getter();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v29 = v2;
    v16 = a1[4];
    sub_1000032B8(a1, a1[3]);
    if (dispatch thunk of CloudChannelMapAssetType.boundingBox.getter())
    {
      Location.coordinate.getter();
      v17 = Array<A>.contains(_:)();

      if (v17)
      {
        v19 = v31;
        *v31 = v14;
        v19[1] = v15;
      }

      else
      {

        v28 = v31;
        *v31 = 0;
        v28[1] = 0;
      }
    }

    else
    {

      static Logger.notifications.getter();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "CloudChannelMapAsset is missing bounding box", v26, 2u);
      }

      result = (*(v4 + 8))(v8, v30);
      v27 = v31;
      *v31 = 0;
      v27[1] = 0;
    }
  }

  else
  {
    static Logger.notifications.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unusable CloudChannelMapAsset due to invalid identifier", v22, 2u);
    }

    result = (*(v4 + 8))(v10, v30);
    v23 = v31;
    *v31 = 0;
    v23[1] = 0;
  }

  return result;
}

uint64_t sub_100005FE0()
{
  v0 = sub_100006FD0();
  sub_100006FF0(v0);
  v2 = *(v1 + 80);
  sub_100006FAC();
  v3 = sub_100006FFC();
  return sub_100005D08(v3, v4);
}

uint64_t sub_100006068(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for Location();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v42[-v11];
  v13 = type metadata accessor for Logger();
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = *(v46 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v42[-v18];
  v20 = *a1;
  v21 = a1[1];
  v49 = v20;
  if (v21)
  {
    static Logger.notifications.getter();
    (*(v6 + 16))(v12, a2, v5);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43 = v23;
      v25 = v24;
      v44 = swift_slowAlloc();
      v48[0] = v44;
      *v25 = 136446723;
      *(v25 + 4) = sub_10000D9FC(v49, v21, v48);
      *(v25 + 12) = 2160;
      *(v25 + 14) = 1752392040;
      *(v25 + 22) = 2081;
      v26 = Location.id.getter();
      v45 = v2;
      v28 = v27;
      (*(v6 + 8))(v12, v5);
      v29 = sub_10000D9FC(v26, v28, v48);

      *(v25 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v22, v43, "Found channel %{public}s for location %{private,mask.hash}s", v25, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v6 + 8))(v12, v5);
    }

    (*(v46 + 8))(v19, v47);
  }

  else
  {
    static Logger.notifications.getter();
    (*(v6 + 16))(v10, a2, v5);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v45 = v2;
      v33 = v32;
      v44 = swift_slowAlloc();
      v48[0] = v44;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      v43 = v31;
      v34 = Location.id.getter();
      v36 = v35;
      (*(v6 + 8))(v10, v5);
      v37 = sub_10000D9FC(v34, v36, v48);

      *(v33 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v30, v43, "Failed to find channel for location: %{private,mask.hash}s", v33, 0x16u);
      sub_100006994(v44);
    }

    else
    {

      (*(v6 + 8))(v10, v5);
    }

    (*(v46 + 8))(v17, v47);
  }

  v48[0] = v49;
  v48[1] = v21;
  v38 = sub_100003020(&qword_1000A34B8, &qword_1000804C8);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();

  return Promise.init(value:)();
}

uint64_t sub_100006550()
{
  v0 = sub_100007018();
  sub_100006FF0(v0);
  v2 = *(v1 + 80);
  sub_100006FAC();
  v3 = sub_100006FFC();
  return sub_100006068(v3, v4);
}

uint64_t sub_1000065A0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000065F4()
{
  v1 = type metadata accessor for Location();
  sub_100006FBC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000066AC()
{
  v1 = sub_100006FD0();
  sub_100006FF0(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  v5 = sub_100006FFC();
  return sub_100003AB4(v5, v6, v7, v8);
}

uint64_t sub_100006740(void *a1, uint64_t a2, uint64_t (*a3)(unint64_t, void))
{
  v6 = type metadata accessor for Location();
  sub_100006FF0(v6);
  return a3(v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80)), *a1);
}

uint64_t sub_1000067C8()
{
  v0 = sub_100007018();
  sub_100006FF0(v0);
  v2 = *(v1 + 80);
  sub_100006FAC();
  v3 = sub_100006FFC();
  return sub_100004504(v3);
}

uint64_t sub_100006818()
{
  v1 = type metadata accessor for Location();
  sub_100007050(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000068A8()
{
  v1 = *(sub_100007018() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = sub_100006FFC();
  return sub_10000455C(v3, v4, v5);
}

uint64_t sub_100006930(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006994(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000069E0()
{
  result = qword_1000A34E8;
  if (!qword_1000A34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A34E8);
  }

  return result;
}

uint64_t sub_100006A34()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006A88()
{
  v1 = type metadata accessor for Location();
  sub_100007050(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100006B04()
{
  v0 = sub_100006FD0();
  sub_100006FF0(v0);
  v2 = *(v1 + 80);
  sub_100006FAC();
  v3 = sub_100006FFC();
  return sub_100003D2C(v3, v4, v5);
}

unint64_t sub_100006B80()
{
  result = qword_1000A3550;
  if (!qword_1000A3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3550);
  }

  return result;
}

uint64_t sub_100006BFC(uint64_t a1)
{
  v2 = sub_100003020(&qword_1000A3540, &unk_100080520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006C64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006C78(a1, a2);
  }

  return a1;
}

uint64_t sub_100006C78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100006CD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000325C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100006D18(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100006D78(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for CloudChannelMapProvider.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudChannelMapProvider.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100006EF0);
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

unint64_t sub_100006F44()
{
  result = qword_1000A3578;
  if (!qword_1000A3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3578);
  }

  return result;
}

uint64_t sub_100006FD0()
{

  return type metadata accessor for Location();
}

uint64_t sub_100007018()
{

  return type metadata accessor for Location();
}

uint64_t sub_100007034()
{
  v3 = v0 + *(v1 - 96);

  return swift_allocObject();
}

void sub_100007064(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  v22[1] = [v9 identifier];
  *a2 = dispatch thunk of CustomStringConvertible.description.getter();
  a2[1] = v10;
  v11 = [v9 timestamp];
  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = v11;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = type metadata accessor for APSMessage();
  (*(v5 + 32))(a2 + v13[5], v8, v4);
  v14 = sub_100007260(v9);
  if (!v14)
  {
LABEL_8:
    __break(1u);
    return;
  }

  *(a2 + v13[6]) = v14;
  v15 = [v9 channelID];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = (a2 + v13[7]);
    *v20 = v17;
    v20[1] = v19;
  }

  else
  {

    v21 = (a2 + v13[7]);
    *v21 = 0;
    v21[1] = 0;
  }
}

uint64_t type metadata accessor for APSMessage()
{
  result = qword_1000A35D8;
  if (!qword_1000A35D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007260(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000072EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
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

    return sub_100007374(v9, a2, v8);
  }
}

uint64_t sub_1000073B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_100006BD4(v8, a2, a2, v7);
  }

  return result;
}

void sub_100007430()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1000074DC();
    if (v1 <= 0x3F)
    {
      sub_100007540();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000074DC()
{
  if (!qword_1000A35E8)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A35E8);
    }
  }
}

void sub_100007540()
{
  if (!qword_1000A35F0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A35F0);
    }
  }
}

uint64_t sub_1000075A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();

  return sub_100007374(a1, a2, v4);
}

uint64_t sub_100007600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();

  return sub_100006BD4(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PredictedLocationsRefresh()
{
  result = qword_1000A3680;
  if (!qword_1000A3680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007698()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000770C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265506563617267 && a2 == 0xEB00000000646F69)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000077EC(char a1)
{
  if (a1)
  {
    return 0x7265506563617267;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_10000782C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000770C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100007874@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000077D8();
  *a1 = result;
  return result;
}

uint64_t sub_10000789C(uint64_t a1)
{
  v2 = sub_100007DD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000078D8(uint64_t a1)
{
  v2 = sub_100007DD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100007914(void *a1)
{
  v3 = v1;
  v5 = sub_100003020(&qword_1000A36D0, &qword_100080678);
  v6 = sub_100006FBC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v16[-v11];
  v13 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100007DD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16[15] = 0;
  type metadata accessor for Date();
  sub_100007EE4(&qword_1000A36D8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = *(v3 + *(type metadata accessor for PredictedLocationsRefresh() + 20));
    v16[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_100007AAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v32 = type metadata accessor for Date();
  v4 = sub_100006FBC(v32);
  v30 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100003020(&qword_1000A36B8, &qword_100080670);
  v10 = sub_100006FBC(v33);
  v31 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v14 = type metadata accessor for PredictedLocationsRefresh();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100007DD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006994(a1);
  }

  v28 = v17;
  v19 = v30;
  v35 = 0;
  sub_100007EE4(&qword_1000A36C8);
  v20 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v28;
  (*(v19 + 32))(v28, v9, v20);
  v34 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v22;
  v24 = sub_100008134();
  v25(v24);
  *(v21 + *(v14 + 20)) = v23;
  sub_100007E24(v21, v29);
  sub_100006994(a1);
  return sub_100007E88(v21);
}

unint64_t sub_100007DD0()
{
  result = qword_1000A36C0;
  if (!qword_1000A36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A36C0);
  }

  return result;
}

uint64_t sub_100007E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedLocationsRefresh();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007E88(uint64_t a1)
{
  v2 = type metadata accessor for PredictedLocationsRefresh();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007EE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsRefresh.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100007FF4);
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

unint64_t sub_100008030()
{
  result = qword_1000A36E0;
  if (!qword_1000A36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A36E0);
  }

  return result;
}

unint64_t sub_100008088()
{
  result = qword_1000A36E8;
  if (!qword_1000A36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A36E8);
  }

  return result;
}

unint64_t sub_1000080E0()
{
  result = qword_1000A36F0;
  if (!qword_1000A36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A36F0);
  }

  return result;
}

uint64_t sub_100008134()
{
  v2 = *(*(v1 - 112) + 8);
  result = v0;
  v4 = *(v1 - 96);
  return result;
}

uint64_t sub_100008148()
{
  v1 = v0;
  v2 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 192))
  {
    v7 = *(v0 + 192);
  }

  else
  {
    v8 = type metadata accessor for JSONEncoder();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = JSONEncoder.init()();
    (*(v3 + 104))(v6, enum case for JSONEncoder.DateEncodingStrategy.secondsSince1970(_:), v2);
    dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
    v11 = *(v1 + 192);
    *(v1 + 192) = v7;
  }

  return v7;
}

uint64_t sub_100008270()
{
  v1 = v0;
  v2 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 200))
  {
    v7 = *(v0 + 200);
  }

  else
  {
    v8 = type metadata accessor for JSONDecoder();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = JSONDecoder.init()();
    (*(v3 + 104))(v6, enum case for JSONDecoder.DateDecodingStrategy.secondsSince1970(_:), v2);
    dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
    v11 = *(v1 + 200);
    *(v1 + 200) = v7;
  }

  return v7;
}

void *sub_100008398(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  v6[24] = 0;
  v6[25] = 0;
  v6[2] = a1;
  sub_100006D78(a2, (v6 + 3));
  v6[8] = a3;
  sub_100006D78(a4, (v6 + 9));
  sub_100006D78(a5, (v6 + 14));
  sub_100006D78(a6, (v6 + 19));
  return v6;
}

uint64_t sub_100008418(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a2;
  HourForecast = type metadata accessor for NextHourForecast();
  v55 = *(HourForecast - 8);
  v6 = *(v55 + 64);
  __chkstk_darwin(HourForecast);
  v52 = v7;
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NotificationSubscription();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v50 = v12;
  v51 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  v15 = type metadata accessor for Logger();
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  __chkstk_darwin(v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v56 = v9;
  v57 = v8;
  v49 = *(v9 + 16);
  v49(v14, a1, v8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v47 = v3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v45 = v15;
    v46 = HourForecast;
    v24 = a1;
    v25 = v23;
    v58 = v23;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    v26 = NotificationSubscription.identifier.getter();
    v28 = v27;
    (*(v56 + 8))(v14, v57);
    v29 = sub_10000D9FC(v26, v28, &v58);

    *(v22 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "Validating accuracy for subscription: %{private,mask.hash}s", v22, 0x16u);
    sub_100006994(v25);
    a1 = v24;
    HourForecast = v46;

    v3 = v47;

    v30 = (*(v48 + 8))(v18, v45);
  }

  else
  {

    (*(v56 + 8))(v14, v57);
    v30 = (*(v48 + 8))(v18, v15);
  }

  __chkstk_darwin(v30);
  v31 = v3;
  *(&v45 - 2) = v3;
  *(&v45 - 1) = a1;
  type metadata accessor for PrecipitationNotificationConfiguration();
  v48 = firstly<A>(closure:)();
  sub_100005360();
  v47 = static OS_dispatch_queue.notifications.getter();
  v32 = v51;
  v33 = a1;
  v34 = v57;
  v49(v51, v33, v57);
  v36 = v54;
  v35 = v55;
  v37 = HourForecast;
  (*(v55 + 16))(v54, v53, HourForecast);
  v38 = v56;
  v39 = (*(v56 + 80) + 24) & ~*(v56 + 80);
  v40 = (v50 + *(v35 + 80) + v39) & ~*(v35 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v31;
  (*(v38 + 32))(v41 + v39, v32, v34);
  (*(v35 + 32))(v41 + v40, v36, v37);

  v42 = v47;
  v43 = Promise.then<A>(on:closure:)();

  return v43;
}

uint64_t sub_100008920(void *a1)
{
  v1 = a1[7];
  sub_1000032B8(a1 + 3, a1[6]);
  return dispatch thunk of PreciptationNotificationConfigurationProviderType.configuration(for:)();
}

uint64_t sub_100008978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v197 = a4;
  v210 = a3;
  v198 = a1;
  v185 = type metadata accessor for PrecipitationNotificationType();
  v184 = *(v185 - 8);
  v7 = *(v184 + 64);
  __chkstk_darwin(v185);
  v183 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for NotificationSubscription();
  v181 = *(v182 - 8);
  v9 = *(v181 + 64);
  v10 = __chkstk_darwin(v182);
  v178 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v177 = &v169 - v12;
  v13 = type metadata accessor for Logger();
  v212 = *(v13 - 8);
  v213 = v13;
  v14 = *(v212 + 64);
  v15 = __chkstk_darwin(v13);
  v214 = &v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v180 = &v169 - v18;
  __chkstk_darwin(v17);
  v179 = &v169 - v19;
  v188 = type metadata accessor for PrecipitationType();
  v187 = *(v188 - 8);
  v20 = *(v187 + 64);
  __chkstk_darwin(v188);
  v186 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v189 = &v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v195 = &v169 - v26;
  v27 = type metadata accessor for ForecastSummary();
  v199 = *(v27 - 8);
  v200 = v27;
  v28 = v199[8];
  v29 = __chkstk_darwin(v27);
  v190 = &v169 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v196 = &v169 - v31;
  v192 = type metadata accessor for Date();
  v32 = *(*(v192 - 8) + 64);
  __chkstk_darwin(v192);
  v193 = &v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v191 = &v169 - v36;
  v194 = type metadata accessor for PrecipitationForecastSummaries();
  v37 = *(*(v194 - 8) + 64);
  v38 = __chkstk_darwin(v194);
  v202 = &v169 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v203 = &v169 - v40;
  HourForecast = type metadata accessor for NextHourForecast();
  v201 = *(HourForecast - 8);
  v41 = *(v201 + 64);
  __chkstk_darwin(HourForecast);
  v205 = &v169 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100003020(&qword_1000A3808, &qword_100080F70);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v208 = (&v169 - v45);
  v46 = type metadata accessor for Expression();
  v209 = *(v46 - 8);
  v47 = *(v209 + 64);
  __chkstk_darwin(v46);
  v207 = &v169 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100003020(&qword_1000A3810, &qword_100080870);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8);
  v206 = &v169 - v51;
  ResultEntity = type metadata accessor for FetchResultEntity();
  v53 = *(ResultEntity - 8);
  v54 = *(v53 + 64);
  __chkstk_darwin(ResultEntity);
  v56 = &v169 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a2;
  v58 = *(a2 + 16);
  ReferenceCountedLazy.increase()();
  v59 = v215;
  NotificationStore.fetchResults.getter();
  if (v4)
  {
    v60 = v214;
    v61 = v59;
    goto LABEL_4;
  }

  v176 = v46;
  v174 = v56;
  v172 = v53;
  v173 = ResultEntity;
  v171 = v57;
  v211 = v59;
  v175 = v58;
  dispatch thunk of Table.query.getter();

  v62 = NotificationSubscription.identifier.getter();
  v217 = &type metadata for String;
  v218 = &protocol witness table for String;
  v215 = v62;
  v216 = v63;
  v64 = v207;
  == infix(_:_:)();
  sub_100006994(&v215);
  v65 = v208;
  *v208 = 0x64657461657263;
  *(v65 + 8) = 0xE700000000000000;
  v66 = enum case for OrderBy.descending(_:);
  v67 = type metadata accessor for OrderBy();
  (*(*(v67 - 8) + 104))(v65, v66, v67);
  sub_100006BD4(v65, 0, 1, v67);
  v68 = v206;
  dispatch thunk of Query.first(_:orderBy:)();
  v170 = 0;

  sub_10000E904(v65, &qword_1000A3808, &qword_100080F70);
  (*(v209 + 8))(v64, v176);
  v82 = v173;
  if (sub_100007374(v68, 1, v173) == 1)
  {
    sub_10000E904(v68, &qword_1000A3810, &qword_100080870);
    v83 = sub_100003020(&qword_1000A37D0, &qword_100080838);
    v84 = *(v83 + 48);
    v85 = *(v83 + 52);
    swift_allocObject();
    v80 = Promise.init(value:)();
    goto LABEL_8;
  }

  v86 = v172;
  (*(v172 + 32))(v174, v68, v82);
  sub_100008270();
  FetchResultEntity.forecast.getter();
  dispatch thunk of Column.value.getter();

  v87 = v216;
  v88 = v170;
  if (v216 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v89 = v215;
    sub_10000E8BC(&qword_1000A3818, &type metadata accessor for NextHourForecast);
    v90 = v88;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v91 = v203;
    if (v90)
    {
      (*(v86 + 8))(v174, v82);
      sub_100006C64(v89, v87);

      v5 = v90;
      v60 = v214;
      v61 = v211;
LABEL_4:
      static Logger.notifications.getter();
      swift_errorRetain();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v211 = v61;
        v72 = v71;
        v73 = swift_slowAlloc();
        v215 = v73;
        *v72 = 136446210;
        v219 = v5;
        swift_errorRetain();
        sub_100003020(&qword_1000A37F0, &unk_100080850);
        v74 = String.init<A>(describing:)();
        v76 = sub_10000D9FC(v74, v75, &v215);

        *(v72 + 4) = v76;
        _os_log_impl(&_mh_execute_header, v69, v70, "An error occurred while validating accuracy: %{public}s", v72, 0xCu);
        sub_100006994(v73);

        (*(v212 + 8))(v214, v213);
      }

      else
      {

        (*(v212 + 8))(v60, v213);
      }

      goto LABEL_7;
    }

    v92 = v202;

    sub_100006C64(v89, v87);
    FetchResultEntity.created.getter();
    v93 = v191;
    dispatch thunk of Column.value.getter();

    result = sub_100007374(v93, 1, v192);
    if (result != 1)
    {
      Hour = NextHourForecast.summary.getter();
      sub_10006AA5C(v93, Hour, v91);
      v95 = v193;
      PrecipitationNotificationConfiguration.now.getter();
      v96 = NextHourForecast.summary.getter();
      sub_10006AA5C(v95, v96, v92);
      v97 = v194;
      v98 = v91 + *(v194 + 20);
      v99 = v195;
      sub_10000E244(v98, v195);
      v100 = v200;
      v101 = sub_100007374(v99, 1, v200);
      v102 = v201;
      v103 = v199;
      if (v101 == 1)
      {
        v104 = v172;
LABEL_19:
        sub_10000E904(v99, &qword_1000A37F8, &unk_100082A40);
        v107 = sub_100003020(&qword_1000A37D0, &qword_100080838);
        v108 = *(v107 + 48);
        v109 = *(v107 + 52);
        swift_allocObject();
        v80 = Promise.init(value:)();
        sub_10000E2B4(v202);
        sub_10000E2B4(v203);
        (*(v104 + 8))(v174, v82);
        (*(v102 + 8))(v205, HourForecast);
        goto LABEL_8;
      }

      v105 = v199[4];
      v106 = v196;
      v105(v196, v99, v100);
      v99 = v189;
      sub_10000E244(v92 + *(v97 + 20), v189);
      if (sub_100007374(v99, 1, v100) == 1)
      {
        (v103[1])(v106, v100);
        v82 = v173;
        v104 = v172;
        v102 = v201;
        goto LABEL_19;
      }

      v105(v190, v99, v100);
      FetchResultEntity.notification.getter();
      dispatch thunk of Column.value.getter();

      v110 = v216;
      if (v216 != 1)
      {
        sub_10000E344(v215, v216);
      }

      v111 = v186;
      ForecastSummary.condition.getter();
      LODWORD(v214) = PrecipitationType.isClear.getter();
      v112 = *(v187 + 8);
      v113 = v188;
      v112(v111, v188);
      ForecastSummary.condition.getter();
      LODWORD(v209) = PrecipitationType.isClear.getter();
      v112(v111, v113);
      v114 = ForecastSummary.meetsNotificationThresholds(with:)();
      v115 = ForecastSummary.meetsNotificationThresholds(with:)();
      v116 = v203;
      if (v214)
      {
        v117 = v210;
        v118 = v173;
        v119 = HourForecast;
        if (v110 == 1 && ((v209 | v115 ^ 1) & 1) == 0)
        {
          v120 = v179;
          static Logger.notifications.getter();
          v121 = v181;
          v122 = v177;
          v123 = v182;
          (*(v181 + 16))(v177, v117, v182);
          v124 = Logger.logObject.getter();
          v125 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v124, v125))
          {
            v126 = v121;
            v127 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            v215 = v128;
            *v127 = 141558275;
            *(v127 + 4) = 1752392040;
            *(v127 + 12) = 2081;
            v129 = NotificationSubscription.identifier.getter();
            v130 = v122;
            v132 = v131;
            (*(v126 + 8))(v130, v123);
            v133 = sub_10000D9FC(v129, v132, &v215);

            *(v127 + 14) = v133;
            _os_log_impl(&_mh_execute_header, v124, v125, "Detected missing starting notification for subscription: %{private,mask.hash}s", v127, 0x16u);
            sub_100006994(v128);

            (*(v212 + 8))(v179, v213);
          }

          else
          {

            (*(v121 + 8))(v122, v123);
            (*(v212 + 8))(v120, v213);
          }

          v151 = v185;
          v152 = v184;
          v153 = v183;
          v154 = (*(v184 + 104))(v183, enum case for PrecipitationNotificationType.starting(_:), v185);
          __chkstk_darwin(v154);
          v155 = v210;
          *(&v169 - 6) = v171;
          *(&v169 - 5) = v155;
          v156 = v205;
          v157 = v197;
          *(&v169 - 4) = v205;
          *(&v169 - 3) = v157;
          *(&v169 - 2) = v153;
          v158 = sub_100003020(&qword_1000A37D0, &qword_100080838);
          v159 = *(v158 + 48);
          v160 = *(v158 + 52);
          swift_allocObject();
LABEL_36:
          v80 = Promise.init(resolver:)();
          v167 = v200;
          v168 = v199[1];
          v168(v190, v200);
          v168(v196, v167);
          sub_10000E2B4(v202);
          sub_10000E2B4(v203);
          (*(v172 + 8))(v174, v173);
          (*(v152 + 8))(v153, v151);
          (*(v201 + 8))(v156, HourForecast);
          goto LABEL_8;
        }
      }

      else
      {
        v134 = v210;
        v118 = v173;
        v119 = HourForecast;
        if (v110 == 1 && (v114 & v209 & 1) != 0)
        {
          v135 = v180;
          static Logger.notifications.getter();
          v136 = v181;
          v137 = v178;
          v138 = v182;
          (*(v181 + 16))(v178, v134, v182);
          v139 = Logger.logObject.getter();
          v140 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v139, v140))
          {
            v141 = v136;
            v142 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            v215 = v143;
            *v142 = 141558275;
            *(v142 + 4) = 1752392040;
            *(v142 + 12) = 2081;
            v144 = NotificationSubscription.identifier.getter();
            v145 = v137;
            v147 = v146;
            (*(v141 + 8))(v145, v138);
            v148 = sub_10000D9FC(v144, v147, &v215);

            *(v142 + 14) = v148;
            _os_log_impl(&_mh_execute_header, v139, v140, "Detected missing stopping notification for subscription: %{private,mask.hash}s ", v142, 0x16u);
            sub_100006994(v143);

            (*(v212 + 8))(v180, v213);
          }

          else
          {

            (*(v136 + 8))(v137, v138);
            (*(v212 + 8))(v135, v213);
          }

          v151 = v185;
          v152 = v184;
          v153 = v183;
          v161 = (*(v184 + 104))(v183, enum case for PrecipitationNotificationType.stopping(_:), v185);
          __chkstk_darwin(v161);
          v162 = v210;
          *(&v169 - 6) = v171;
          *(&v169 - 5) = v162;
          v156 = v205;
          v163 = v197;
          *(&v169 - 4) = v205;
          *(&v169 - 3) = v163;
          *(&v169 - 2) = v153;
          v164 = sub_100003020(&qword_1000A37D0, &qword_100080838);
          v165 = *(v164 + 48);
          v166 = *(v164 + 52);
          swift_allocObject();
          goto LABEL_36;
        }
      }

      v149 = v200;
      v150 = v199[1];
      v150(v190, v200);
      v150(v196, v149);
      sub_10000E2B4(v202);
      sub_10000E2B4(v116);
      (*(v172 + 8))(v174, v118);
      (*(v201 + 8))(v205, v119);
LABEL_7:
      v77 = sub_100003020(&qword_1000A37D0, &qword_100080838);
      v78 = *(v77 + 48);
      v79 = *(v77 + 52);
      swift_allocObject();
      v80 = Promise.init(value:)();
LABEL_8:
      ReferenceCountedLazy.decrease()();

      return v80;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100009F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v67 = a7;
  v68 = a8;
  v66 = a6;
  v55 = a5;
  v69 = a9;
  v12 = type metadata accessor for PrecipitationNotificationType();
  v72 = *(v12 - 8);
  v73 = v12;
  v70 = *(v72 + 64);
  __chkstk_darwin(v12);
  v77 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  HourForecast = type metadata accessor for NextHourForecast();
  v63 = *(HourForecast - 8);
  v64 = HourForecast;
  v65 = *(v63 + 64);
  v15 = __chkstk_darwin(HourForecast);
  v76 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v74 = &v54 - v17;
  v18 = type metadata accessor for NotificationSubscription();
  v59 = *(v18 - 8);
  v60 = v18;
  v62 = *(v59 + 64);
  __chkstk_darwin(v18);
  v71 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Date();
  v78 = *(v75 - 8);
  v20 = *(v78 + 64);
  __chkstk_darwin(v75);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Session.Kind();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = swift_allocObject();
  v61 = v33;
  *(v33 + 16) = a1;
  *(v33 + 24) = a2;
  v34 = *(a5 + 64);
  (*(v29 + 104))(v32, enum case for Session.Kind.telemetry(_:), v28);

  UUID.init()();
  UUID.uuidString.getter();
  (*(v24 + 8))(v27, v23);
  Date.init()();
  v57 = v22;
  v56 = v34;
  SessionManager.start(for:identifier:startDate:)();

  v35 = *(v78 + 8);
  v78 += 8;
  v58 = v35;
  v35(v22, v75);
  (*(v29 + 8))(v32, v28);
  v54 = SessionManager.tracker.getter();
  v36 = v59;
  v37 = v60;
  (*(v59 + 16))(v71, v66, v60);
  v39 = v63;
  v38 = v64;
  v40 = *(v63 + 16);
  v40(v74, v67, v64);
  v40(v76, v68, v38);
  v41 = v72;
  (*(v72 + 16))(v77, v69, v73);
  v42 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v43 = (v62 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = *(v39 + 80);
  v45 = (v44 + v43 + 8) & ~v44;
  v46 = (v65 + v44 + v45) & ~v44;
  v47 = (v65 + *(v41 + 80) + v46) & ~*(v41 + 80);
  v48 = swift_allocObject();
  (*(v36 + 32))(v48 + v42, v71, v37);
  *(v48 + v43) = v55;
  v49 = *(v39 + 32);
  v49(v48 + v45, v74, v38);
  v49(v48 + v46, v76, v38);
  (*(v72 + 32))(v48 + v47, v77, v73);

  Tracker.transaction(block:)();

  v50 = swift_allocObject();
  v51 = v61;
  *(v50 + 16) = sub_10000E358;
  *(v50 + 24) = v51;
  v52 = v57;
  Date.init()();
  SessionManager.end(endDate:completion:)();

  return v58(v52, v75);
}

uint64_t sub_10000A610(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v212 = a6;
  v229 = a5;
  v238 = a4;
  v236 = a3;
  v218 = a1;
  v198 = type metadata accessor for NotificationSubscription();
  v197 = *(v198 - 8);
  v7 = *(v197 + 64);
  __chkstk_darwin(v198);
  v194 = v8;
  v195 = v178 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003020(&qword_1000A3820, &qword_100080878);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v184 = v178 - v11;
  v12 = sub_100003020(&qword_1000A3828, &qword_100080880);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v215 = v178 - v14;
  v15 = sub_100003020(&qword_1000A3830, &qword_100080888);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v214 = v178 - v17;
  v18 = sub_100003020(&qword_1000A3838, &qword_100080890);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v189 = v178 - v20;
  v203 = type metadata accessor for Locale.Language();
  v202 = *(v203 - 8);
  v21 = *(v202 + 64);
  v22 = __chkstk_darwin(v203);
  v183 = v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v200 = v178 - v24;
  v217 = type metadata accessor for Locale();
  v201 = *(v217 - 8);
  v25 = *(v201 + 64);
  v26 = __chkstk_darwin(v217);
  v188 = v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v185 = v178 - v28;
  v29 = sub_100003020(&qword_1000A3840, &qword_100080898);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v186 = v178 - v31;
  v210 = type metadata accessor for TimeZone();
  v209 = *(v210 - 8);
  v32 = *(v209 + 64);
  __chkstk_darwin(v210);
  v208 = v178 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for SessionData();
  v193 = *(v216 - 8);
  v34 = *(v193 + 64);
  __chkstk_darwin(v216);
  v192 = v178 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for PrecipitationNotificationType();
  v206 = *(v207 - 8);
  v36 = *(v206 + 64);
  __chkstk_darwin(v207);
  v211 = v178 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for MissedPrecipitationNotificationData();
  v190 = *(v191 - 8);
  v38 = *(v190 + 64);
  __chkstk_darwin(v191);
  v219 = v178 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for Date();
  v228 = *(v224 - 8);
  v40 = *(v228 + 64);
  __chkstk_darwin(v224);
  v227 = v178 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = type metadata accessor for Metadata();
  v213 = *(v226 - 8);
  v42 = *(v213 + 64);
  __chkstk_darwin(v226);
  v225 = v178 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for PrecipitationForecastData();
  v221 = *(v222 - 8);
  v44 = *(v221 + 64);
  v45 = __chkstk_darwin(v222);
  v205 = v178 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v204 = v178 - v48;
  v49 = __chkstk_darwin(v47);
  v220 = v178 - v50;
  __chkstk_darwin(v49);
  v223 = v178 - v51;
  v52 = type metadata accessor for String.Encoding();
  v53 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52 - 8);
  v230 = v178 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for LocationData();
  v232 = *(v234 - 8);
  v55 = *(v232 + 64);
  __chkstk_darwin(v234);
  v239 = v178 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for AppConfiguration();
  v240 = *(v235 - 8);
  v57 = *(v240 + 64);
  v58 = __chkstk_darwin(v235);
  v187 = v178 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v61 = v178 - v60;
  v237 = type metadata accessor for Location();
  v233 = *(v237 - 8);
  v62 = *(v233 + 8);
  __chkstk_darwin(v237);
  v64 = v178 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for NotificationSubscription.Location();
  v66 = *(v65 - 8);
  v67 = *(v66 + 64);
  __chkstk_darwin(v65);
  v69 = v178 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for LocationCoordinate();
  v71 = *(v70 - 8);
  v72 = *(v71 + 64);
  v73 = __chkstk_darwin(v70);
  v75 = v178 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v77 = v178 - v76;
  v196 = a2;
  NotificationSubscription.location.getter();
  NotificationSubscription.Location.location.getter();
  (*(v66 + 8))(v69, v65);
  Location.coordinate.getter();
  (*(v233 + 1))(v64, v237);
  LocationCoordinate.init(_:)();
  v78 = v236;
  v79 = v236[18];
  sub_1000032B8(v236 + 14, v236[17]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.locationDecimalPrecision.getter();
  v80 = *(v240 + 8);
  v182 = v61;
  v240 += 8;
  v199 = v80;
  v80(v61, v235);
  LocationCoordinate.rounded(with:)();
  v81 = *(v71 + 8);
  v237 = v70;
  v231 = v81;
  v81(v75, v70);
  LocationCoordinate.latitude.getter();
  v233 = v77;
  LocationCoordinate.longitude.getter();
  LocationData.init(latitudeDouble:longitudeDouble:)();
  sub_100008148();
  *&v241[0] = NextHourForecast.summary.getter();
  sub_100003020(&qword_1000A3848, &qword_1000808A0);
  sub_10000E71C();
  v82 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v89 = v88;
  v90 = v82;

  static String.Encoding.utf8.getter();
  v91 = String.init(data:encoding:)();
  if (!v92)
  {
    sub_100006C78(v90, v89);
    v99 = v239;
    v100 = v237;
    if (qword_1000A3250 != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    sub_100002FE8(v83, static Logger.analytics);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "Failed to encode previous forecast summaries for missed notification event", v86, 2u);
    }

    (*(v232 + 8))(v99, v234);
    return v231(v233, v100);
  }

  v178[1] = v91;
  v181 = v92;
  v179 = v90;
  v180 = v89;
  v93 = v78[24];

  *&v241[0] = NextHourForecast.summary.getter();
  v101 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v103 = v102;
  v178[0] = v71 + 8;

  static String.Encoding.utf8.getter();
  String.init(data:encoding:)();
  v105 = v237;
  if (!v104)
  {

    sub_100006C78(v101, v103);
    v94 = v239;
    if (qword_1000A3250 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_100002FE8(v95, static Logger.analytics);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Failed to encode current forecast summaries for missed notification event", v98, 2u);
    }

    sub_100006C78(v179, v180);

    (*(v232 + 8))(v94, v234);
    return v231(v233, v105);
  }

  v230 = v101;
  v106 = v225;
  NextHourForecast.metadata.getter();
  v107 = v227;
  Metadata.readTime.getter();
  v108 = *(v213 + 8);
  v108(v106, v226);
  Date.timeIntervalSince1970.getter();
  v110 = v109;
  v111 = v109;
  v112 = *(v228 + 8);
  v113 = v107;
  v114 = v224;
  v228 += 8;
  v115 = v112;
  result = v112(v113, v224);
  if ((*&v111 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  v116 = v223;
  if (v110 <= -2147483650.0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v110 >= 2147483650.0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  PrecipitationForecastData.init(date:summaries:)();
  v117 = v225;
  NextHourForecast.metadata.getter();
  v118 = v227;
  Metadata.readTime.getter();
  v108(v117, v226);
  Date.timeIntervalSince1970.getter();
  v120 = v119;
  v121 = v119;
  result = v115(v118, v114);
  if ((*&v121 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v122 = v222;
  v123 = v221;
  v124 = v220;
  v125 = v212;
  v126 = v211;
  if (v120 <= -2147483650.0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v120 >= 2147483650.0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v238 = v103;
  PrecipitationForecastData.init(date:summaries:)();
  (*(v206 + 16))(v126, v125, v207);
  v127 = *(v123 + 16);
  v127(v204, v116, v122);
  v127(v205, v124, v122);
  MissedPrecipitationNotificationData.init(notificationType:currentPrecipitationForecastData:previousPrecipitationForecastData:)();
  v128 = AccessTracker.isDiagnosticSubmissionAllowed.getter();
  v129 = v208;
  static TimeZone.current.getter();
  v130 = v227;
  Date.init()();
  v131 = TimeZone.secondsFromGMT(for:)();
  v115(v130, v224);
  result = (*(v209 + 8))(v129, v210);
  if (v131 < 0xFFFFFFFF80000000)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  v229 = v131;
  v132 = v131 <= 0x7FFFFFFF;
  v133 = v203;
  v134 = v202;
  v135 = v217;
  v136 = v201;
  v137 = v200;
  v138 = v199;
  if (!v132)
  {
    goto LABEL_43;
  }

  v139 = v185;
  static Locale.current.getter();
  Locale.language.getter();
  v140 = *(v136 + 8);
  v140(v139, v135);
  v141 = v186;
  Locale.Language.languageCode.getter();
  v142 = *(v134 + 8);
  v142(v137, v133);
  v143 = type metadata accessor for Locale.LanguageCode();
  if (sub_100007374(v141, 1, v143) == 1)
  {
    sub_10000E904(v141, &qword_1000A3840, &qword_100080898);
    v227 = 45;
    v228 = 0xE100000000000000;
  }

  else
  {
    v227 = Locale.LanguageCode.identifier.getter();
    v228 = v144;
    (*(*(v143 - 8) + 8))(v141, v143);
  }

  v145 = v183;
  v146 = v182;
  v147 = v188;
  static Locale.current.getter();
  Locale.language.getter();
  v140(v147, v217);
  v148 = v189;
  Locale.Language.region.getter();
  v142(v145, v133);
  v149 = type metadata accessor for Locale.Region();
  if (sub_100007374(v148, 1, v149) == 1)
  {
    sub_10000E904(v148, &qword_1000A3838, &qword_100080890);
    v226 = 0xE100000000000000;
    v225 = 45;
  }

  else
  {
    v225 = Locale.Region.identifier.getter();
    v226 = v150;
    (*(*(v149 - 8) + 8))(v148, v149);
  }

  v151 = v236;
  if (v128)
  {
    v152 = enum case for StartMethod.unknown(_:);
    started = type metadata accessor for StartMethod();
    v154 = v214;
    (*(*(started - 8) + 104))(v214, v152, started);
    sub_100006BD4(v154, 0, 1, started);
    v155 = v151[13];
    sub_1000032B8(v151 + 9, v151[12]);
    v156 = v215;
    dispatch thunk of LocationAccessDataProviderType.locationAccessData.getter();
    v157 = type metadata accessor for LocationAccessData();
    sub_100006BD4(v156, 0, 1, v157);
    v158 = v151[23];
    sub_1000032B8(v151 + 19, v151[22]);
    v159 = v184;
    dispatch thunk of CellularRadioAccessTechnologyProviderType.cellularRadioAccessTechnology.getter();
    v160 = 0;
  }

  else
  {
    v161 = type metadata accessor for StartMethod();
    v160 = 1;
    sub_100006BD4(v214, 1, 1, v161);
    v162 = type metadata accessor for LocationAccessData();
    sub_100006BD4(v215, 1, 1, v162);
    v159 = v184;
  }

  v163 = type metadata accessor for CellularRadioAccessTechnology();
  sub_100006BD4(v159, v160, 1, v163);
  v164 = v151[18];
  sub_1000032B8(v151 + 14, v151[17]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.treatmentIDs.getter();
  v165 = v235;
  v138(v146, v235);
  v166 = v151[18];
  sub_1000032B8(v151 + 14, v151[17]);
  v167 = v187;
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.segmentSetIDs.getter();
  v138(v167, v165);
  v168 = v192;
  SessionData.init(utcOffset:languageCode:countryCode:startMethod:productType:locationAccess:cellularRadioAccessTechnology:userSegmentationTreatmentIDs:userSegmentationSegmentSetIDs:)();
  sub_10000E8BC(&qword_1000A3860, &type metadata accessor for SessionData);
  AccessTracker.push<A>(data:traits:file:line:)();
  sub_10000E8BC(&qword_1000A3868, &type metadata accessor for LocationData);
  AccessTracker.push<A>(data:traits:file:line:)();
  sub_10000E8BC(&qword_1000A3870, &type metadata accessor for MissedPrecipitationNotificationData);
  v169 = v219;
  v170 = v191;
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for PrecipitationNotificationMissedEvent();
  memset(v241, 0, sizeof(v241));
  v171 = v197;
  v172 = v195;
  v173 = v198;
  (*(v197 + 16))(v195, v196, v198);
  v174 = (*(v171 + 80) + 16) & ~*(v171 + 80);
  v175 = swift_allocObject();
  (*(v171 + 32))(v175 + v174, v172, v173);
  sub_10000E8BC(&qword_1000A3878, &type metadata accessor for PrecipitationNotificationMissedEvent);
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  sub_100006C78(v179, v180);
  sub_100006C78(v230, v238);

  sub_10000E904(v241, &unk_1000A3880, &qword_1000808A8);
  (*(v193 + 8))(v168, v216);
  (*(v190 + 8))(v169, v170);
  v176 = *(v221 + 8);
  v177 = v222;
  v176(v220, v222);
  v176(v223, v177);
  (*(v232 + 8))(v239, v234);
  return v231(v233, v237);
}

void sub_10000C0A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NotificationSubscription();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A3250 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002FE8(v8, static Logger.analytics);
  (*(v4 + 16))(v7, a2, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v13 = NotificationSubscription.identifier.getter();
    v15 = v14;
    (*(v4 + 8))(v7, v3);
    v16 = sub_10000D9FC(v13, v15, &v18);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Finished missed notification event submit for subscription: %{private,mask.hash}s", v11, 0x16u);
    sub_100006994(v12);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t *sub_10000C2F0()
{
  v1 = v0[2];

  sub_100006994(v0 + 3);
  v2 = v0[8];

  sub_100006994(v0 + 9);
  sub_100006994(v0 + 14);
  sub_100006994(v0 + 19);
  v3 = v0[24];

  v4 = v0[25];

  return v0;
}

uint64_t sub_10000C348()
{
  sub_10000C2F0();

  return _swift_deallocClassInstance(v0, 208, 7);
}

uint64_t sub_10000C3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v154 = a3;
  v145 = a2;
  HourForecast = type metadata accessor for NextHourForecast();
  v5 = sub_100006FBC(HourForecast);
  v147 = v6;
  v148 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v146 = v9;
  v155 = v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = sub_100006FBC(v10);
  v142 = v12;
  v143 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_10000E970();
  v149 = v16 - v15;
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  v18 = sub_100006FBC(Schedule);
  v158 = v19;
  v159 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_10000E980();
  v140 = v22;
  v144 = v23;
  __chkstk_darwin(v24);
  v157 = v131 - v25;
  v136 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  v26 = sub_100006FBC(v136);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_10000E970();
  v33 = v32 - v31;
  v34 = type metadata accessor for PrecipitationNotification();
  v35 = sub_100006FBC(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  sub_10000E970();
  v42 = v41 - v40;
  v43 = type metadata accessor for PrecipitationNotificationPolicy();
  v44 = sub_100006FBC(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  __chkstk_darwin(v44);
  sub_10000E970();
  v51 = v50 - v49;
  v52 = type metadata accessor for NotificationSubscription();
  v53 = sub_100006FBC(v52);
  v152 = v54;
  v153 = v53;
  v56 = *(v55 + 64);
  __chkstk_darwin(v53);
  sub_10000E980();
  v151 = v57;
  v59 = __chkstk_darwin(v58);
  v139 = v131 - v60;
  v141 = v61;
  __chkstk_darwin(v59);
  v63 = v131 - v62;
  (*(v46 + 16))(v51, a1, v43);
  v64 = *(v46 + 88);
  v65 = sub_10000E994();
  v67 = v66(v65);
  if (v67 == enum case for PrecipitationNotificationPolicy.notify(_:))
  {
    v68 = *(v46 + 96);
    v69 = sub_10000E994();
    v70(v69);
    v71 = sub_100003020(&qword_1000A37D8, &qword_100080840);
    v72 = *(v71 + 48);
    v73 = (v51 + *(v71 + 64));
    (*(v37 + 32))(v42, v51, v34);
    v74 = v136;
    (*(v28 + 32))(v33, v51 + v72, v136);
    PrecipitationNotificationDeliverySchedule.subscription.getter();
    v138 = PrecipitationNotification.identifier.getter();
    v137 = v75;
    (*(v28 + 8))(v33, v74);
    (*(v37 + 8))(v42, v34);
    v76 = v159;
  }

  else
  {
    if (v67 != enum case for PrecipitationNotificationPolicy.reschedule(_:))
    {
      v124 = sub_100003020(&qword_1000A37D0, &qword_100080838);
      v125 = *(v124 + 48);
      v126 = *(v124 + 52);
      swift_allocObject();
      v123 = Promise.init(value:)();
      v127 = *(v46 + 8);
      v128 = sub_10000E994();
      v129(v128);
      return v123;
    }

    v77 = *(v46 + 96);
    v78 = sub_10000E994();
    v79(v78);
    v73 = v157;
    v76 = v159;
    (*(v158 + 32))(v157, v51, v159);
    PrecipitationNotificationFetchSchedule.subscription.getter();
    v138 = 0;
    v137 = 0;
  }

  v80 = v158;
  v132 = *(v158 + 8);
  v132(v73, v76);
  v81 = v149;
  static Logger.notifications.getter();
  v83 = v152;
  v82 = v153;
  v84 = *(v152 + 16);
  v85 = v139;
  v150 = v63;
  v135 = v152 + 16;
  v134 = v84;
  v84(v139, v63, v153);
  v87 = *(v80 + 16);
  v86 = v80 + 16;
  v88 = v140;
  v133 = v87;
  v87(v140, v154, v76);
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = v83;
    v92 = swift_slowAlloc();
    v131[0] = swift_slowAlloc();
    v160[0] = v131[0];
    *v92 = 141558531;
    *(v92 + 4) = 1752392040;
    *(v92 + 12) = 2081;
    v93 = NotificationSubscription.identifier.getter();
    v131[1] = v86;
    v94 = v88;
    v96 = v95;
    v97 = *(v91 + 8);
    v136 = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v139 = v97;
    (v97)(v85, v82);
    v98 = sub_10000D9FC(v93, v96, v160);

    *(v92 + 14) = v98;
    *(v92 + 22) = 2082;
    v99 = PrecipitationNotificationFetchSchedule.identifier.getter();
    v100 = v82;
    v102 = v101;
    v103 = v159;
    v132(v94, v159);
    v104 = sub_10000D9FC(v99, v102, v160);

    *(v92 + 24) = v104;
    _os_log_impl(&_mh_execute_header, v89, v90, "Tracking fetch result for subscription %{private,mask.hash}s on schedule %{public}s", v92, 0x20u);
    swift_arrayDestroy();

    v105 = (*(v142 + 8))(v149, v143);
  }

  else
  {

    v132(v88, v76);
    v106 = *(v83 + 8);
    v136 = (v83 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v139 = v106;
    (v106)(v85, v82);
    v105 = (*(v142 + 8))(v81, v143);
    v103 = v76;
    v100 = v82;
  }

  __chkstk_darwin(v105);
  v107 = v150;
  v131[-4] = v156;
  v131[-3] = v107;
  v108 = v145;
  v131[-2] = v145;
  v149 = firstly<A>(closure:)();
  sub_100005360();
  v143 = static OS_dispatch_queue.notifications.getter();
  v110 = v147;
  v109 = v148;
  (*(v147 + 16))(v155, v108, v148);
  v134(v151, v107, v100);
  v133(v157, v154, v103);
  v111 = (*(v110 + 80) + 24) & ~*(v110 + 80);
  v112 = v152;
  v113 = (v146 + *(v152 + 80) + v111) & ~*(v152 + 80);
  v114 = v158;
  v115 = (v141 + *(v158 + 80) + v113) & ~*(v158 + 80);
  v116 = (v144 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
  v117 = swift_allocObject();
  v118 = v155;
  *(v117 + 16) = v156;
  (*(v110 + 32))(v117 + v111, v118, v109);
  v119 = v153;
  (*(v112 + 32))(v117 + v113, v151, v153);
  (*(v114 + 32))(v117 + v115, v157, v159);
  v120 = (v117 + v116);
  v121 = v137;
  *v120 = v138;
  v120[1] = v121;

  v122 = v143;
  v123 = Promise.then<A>(on:closure:)();

  (v139)(v150, v119);
  return v123;
}

uint64_t sub_10000CE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *a7)
{
  v74 = a3;
  v68 = a6;
  v69 = a7;
  v67 = a5;
  v80 = a4;
  v8 = type metadata accessor for NotificationSubscription();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = *(v77 + 64);
  __chkstk_darwin(v8);
  v76 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = *(v72 + 64);
  __chkstk_darwin(v11);
  v79 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Expression();
  v64 = *(v14 - 8);
  v15 = *(v64 + 64);
  __chkstk_darwin(v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v65 = *(v18 - 8);
  v66 = v18;
  v19 = *(v65 + 64);
  __chkstk_darwin(v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  ResultEntity = type metadata accessor for FetchResultEntity();
  v70 = *(ResultEntity - 8);
  v23 = *(v70 + 64);
  __chkstk_darwin(ResultEntity);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 + 16);
  ReferenceCountedLazy.increase()();
  v27 = v81[0];
  sub_100008148();
  type metadata accessor for NextHourForecast();
  sub_10000E8BC(&qword_1000A37E8, &type metadata accessor for NextHourForecast);
  v28 = v75;
  v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v71 = v27;
  if (v28)
  {

    v75 = 0;
    v31 = v79;
    v36 = v77;
    v35 = v78;
    v37 = v76;
    static Logger.notifications.getter();
    (*(v36 + 16))(v37, v80, v35);
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v74 = v26;
      v41 = v40;
      v81[0] = swift_slowAlloc();
      *v41 = 141558531;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      v42 = NotificationSubscription.identifier.getter();
      v43 = v36;
      v45 = v44;
      (*(v43 + 8))(v37, v35);
      v46 = sub_10000D9FC(v42, v45, v81);

      *(v41 + 14) = v46;
      *(v41 + 22) = 2082;
      v81[7] = v28;
      swift_errorRetain();
      sub_100003020(&qword_1000A37F0, &unk_100080850);
      v47 = String.init<A>(describing:)();
      v49 = sub_10000D9FC(v47, v48, v81);

      *(v41 + 24) = v49;
      _os_log_impl(&_mh_execute_header, v38, v39, "An error occurred while tracking fetch results for subscription: %{private,mask.hash}s error: %{public}s", v41, 0x20u);
      swift_arrayDestroy();

      (*(v72 + 8))(v79, v73);
    }

    else
    {

      (*(v36 + 8))(v37, v35);
      (*(v72 + 8))(v31, v73);
    }
  }

  else
  {
    v60 = v17;
    v61 = v14;
    v74 = v26;
    v75 = ResultEntity;
    v32 = v29;
    v33 = v30;

    v63 = NotificationSubscription.identifier.getter();
    v62 = v34;
    v67 = PrecipitationNotificationFetchSchedule.identifier.getter();
    sub_10000DFCC(v32, v33);
    UUID.init()();
    UUID.uuidString.getter();
    (*(v65 + 8))(v21, v66);

    FetchResultEntity.init(identifier:subscriptionIdentifier:scheduleIdentifier:notificationIdentifier:forecast:)();
    NotificationStore.fetchResults.getter();
    v67 = v32;
    v68 = v33;
    v69 = v25;
    dispatch thunk of Table.delete.getter();

    v55 = NotificationSubscription.identifier.getter();
    v81[3] = &type metadata for String;
    v81[4] = &protocol witness table for String;
    v81[0] = v55;
    v81[1] = v56;
    v57 = v60;
    == infix(_:_:)();
    sub_100006994(v81);
    dispatch thunk of Delete.where(_:)();
    (*(v64 + 8))(v57, v61);

    NotificationStore.fetchResults.getter();
    v58 = dispatch thunk of Table.save.getter();

    v66 = v58;
    dispatch thunk of Save.entity(_:)();
    (*(v70 + 8))(v69, v75);
    sub_100006C78(v67, v68);
  }

  v50 = sub_100003020(&qword_1000A37D0, &qword_100080838);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = Promise.init(value:)();
  ReferenceCountedLazy.decrease()();

  return v53;
}

uint64_t sub_10000D6B0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_100008418(v1, v2);
}

uint64_t sub_10000D6E4()
{
  HourForecast = type metadata accessor for NextHourForecast();
  sub_100006FBC(HourForecast);
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);
  v25 = type metadata accessor for NotificationSubscription();
  sub_100006FBC(v25);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v4 + v6 + v9) & ~v9;
  v12 = *(v11 + 64);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  sub_100006FBC(Schedule);
  v15 = v14;
  v17 = v16;
  v18 = *(v15 + 80);
  v19 = (v10 + v12 + v18) & ~v18;
  v20 = v3 | v9 | v18;
  v21 = (*(v17 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, HourForecast);
  (*(v8 + 8))(v0 + v10, v25);
  (*(v15 + 8))(v0 + v19, Schedule);
  v23 = *(v0 + v21 + 8);

  return _swift_deallocObject(v0, v21 + 16, v20 | 7);
}

uint64_t sub_10000D8AC(uint64_t a1)
{
  HourForecast = type metadata accessor for NextHourForecast();
  sub_10000E960(HourForecast);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for NotificationSubscription();
  sub_10000E960(v8);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  sub_10000E960(Schedule);
  v15 = v14;
  v17 = v16;
  v18 = (v10 + v12 + *(v15 + 80)) & ~*(v15 + 80);
  v19 = v1 + ((*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_10000CE08(a1, *(v1 + 16), v1 + v5, v1 + v10, v1 + v18, *v19, *(v19 + 8));
}

uint64_t sub_10000D9FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000DAC0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000DF6C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100006994(v11);
  return v7;
}

unint64_t sub_10000DAC0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000DBC0(a5, a6);
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

char *sub_10000DBC0(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000DC0C(a1, a2);
  sub_10000DD24(&off_10009AD48);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000DC0C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10000DE08(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10000DD24(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_10000DE78(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000DE08(uint64_t a1, uint64_t a2)
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

  sub_100003020(&qword_1000A37E0, &qword_100080848);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10000DE78(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003020(&qword_1000A37E0, &qword_100080848);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_10000DF6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000DFCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000E040()
{
  v1 = type metadata accessor for NotificationSubscription();
  sub_100006FBC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  HourForecast = type metadata accessor for NextHourForecast();
  sub_100006FBC(HourForecast);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  v17 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, HourForecast);

  return _swift_deallocObject(v0, v14 + v15, v16 | 7);
}

uint64_t sub_10000E178(uint64_t a1)
{
  v3 = type metadata accessor for NotificationSubscription();
  sub_10000E960(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(type metadata accessor for NextHourForecast() - 8);
  return sub_100008978(a1, *(v1 + 16), v1 + v5, v1 + ((v5 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
}

uint64_t sub_10000E244(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E2B4(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationForecastSummaries();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E344(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10000E358()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000E380()
{
  v1 = type metadata accessor for NotificationSubscription();
  v2 = sub_100006FBC(v1);
  v4 = v3;
  v5 = *(v3 + 80);
  v29 = (v5 + 16) & ~v5;
  v30 = v2;
  v7 = (*(v6 + 64) + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = v7;
  HourForecast = type metadata accessor for NextHourForecast();
  sub_100006FBC(HourForecast);
  v10 = v9;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + 8) & ~v11;
  v14 = *(v13 + 64);
  v15 = (v14 + v11 + v12) & ~v11;
  v28 = type metadata accessor for PrecipitationNotificationType();
  sub_100006FBC(v28);
  v17 = v16;
  v19 = v18;
  v20 = *(v17 + 80);
  v21 = (v15 + v14 + v20) & ~v20;
  v26 = *(v19 + 64);
  v22 = v5 | v11 | v20;
  (*(v4 + 8))(v0 + v29, v30);
  v23 = *(v0 + v27);

  v24 = *(v10 + 8);
  v24(v0 + v12, HourForecast);
  v24(v0 + v15, HourForecast);
  (*(v17 + 8))(v0 + v21, v28);

  return _swift_deallocObject(v0, v21 + v26, v22 | 7);
}

uint64_t sub_10000E56C(uint64_t a1)
{
  v3 = type metadata accessor for NotificationSubscription();
  sub_10000E960(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  HourForecast = type metadata accessor for NextHourForecast();
  sub_10000E960(HourForecast);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 8) & ~v13;
  v15 = *(v12 + 64);
  v16 = (v15 + v13 + v14) & ~v13;
  v17 = *(type metadata accessor for PrecipitationNotificationType() - 8);
  v18 = *(v1 + v7);
  v19 = v1 + ((v16 + v15 + *(v17 + 80)) & ~*(v17 + 80));

  return sub_10000A610(a1, v1 + v5, v18, v1 + v14, v1 + v16, v19);
}

uint64_t sub_10000E6BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E6F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_10000E71C()
{
  result = qword_1000A3850;
  if (!qword_1000A3850)
  {
    sub_10000325C(&qword_1000A3848, &qword_1000808A0);
    sub_10000E8BC(&qword_1000A3858, &type metadata accessor for ForecastSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3850);
  }

  return result;
}

uint64_t sub_10000E7D0()
{
  v1 = type metadata accessor for NotificationSubscription();
  sub_100007050(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10000E84C(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationSubscription() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10000C0A8(a1, v4);
}

uint64_t sub_10000E8BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000E904(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003020(a2, a3);
  sub_100007050(v4);
  (*(v5 + 8))(a1);
  return a1;
}

id sub_10000E9A0(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8weatherd32NotificationAuthorizationManager_notificationsManager] = a1;
  sub_100006930(a2, &v4[OBJC_IVAR____TtC8weatherd32NotificationAuthorizationManager_predictedLocationsNotificationsManager]);
  *&v4[OBJC_IVAR____TtC8weatherd32NotificationAuthorizationManager_notificationCenter] = a3;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  swift_unknownObjectRetain();
  v9 = a3;
  v10 = objc_msgSendSuper2(&v12, "init");
  [v9 setPrivateDelegate:{v10, v12.receiver, v12.super_class}];
  [v9 setWantsNotificationResponsesDelivered];
  swift_unknownObjectRelease();

  sub_100006994(a2);
  return v10;
}

id NotificationsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000EB84(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    *(v17 + 4) = [v14 authorizationStatus];

    _os_log_impl(&_mh_execute_header, v15, v16, "Notification settings changed with authorization status: %{public}ld", v17, 0xCu);
    sub_10000FA7C();
  }

  else
  {

    v15 = v14;
  }

  (*(v10 + 8))(v13, v9);
  v18 = type metadata accessor for TaskPriority();
  sub_100006BD4(v8, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v3;
  v20 = v3;
  sub_10006C7F8();
}

uint64_t sub_10000EDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = type metadata accessor for Logger();
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v8 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v4[23] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return _swift_task_switch(sub_10000EEE0, 0, 0);
}

uint64_t sub_10000EEE0()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC8weatherd32NotificationAuthorizationManager_notificationsManager);
  v2 = v0[26];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_10000F008;
  v3 = swift_continuation_init();
  v0[17] = sub_100003020(&unk_1000A3940, &unk_100080920);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000F544;
  v0[13] = &unk_10009B450;
  v0[14] = v3;
  [v1 scheduleWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000F008()
{
  v4 = *v0;
  v1 = *v0;
  sub_10000FA6C();
  *v2 = v1;

  return _swift_task_switch(sub_10000F0E0, 0, 0);
}

uint64_t sub_10000F0E0()
{
  v37 = v0;
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[22];
  sub_10000F924(v0[26], v1);
  static Logger.notifications.getter();
  sub_10000F994(v1, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  if (v6)
  {
    v9 = v0[23];
    v8 = v0[24];
    v35 = v0[22];
    v11 = v0[19];
    v10 = v0[20];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = v13;
    *v12 = 136446210;
    sub_10000F994(v7, v8);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    sub_10000FA04(v7);
    v17 = sub_10000D9FC(v14, v16, &v36);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Rescheduled notification fetching in response to settings change to date: %{public}s", v12, 0xCu);
    sub_100006994(v13);
    sub_10000FA7C();
    sub_10000FA7C();

    v18 = *(v10 + 8);
    v18(v35, v11);
  }

  else
  {
    v19 = v0[22];
    v20 = v0[19];
    v21 = v0[20];

    sub_10000FA04(v7);
    v18 = *(v21 + 8);
    v18(v19, v20);
  }

  v22 = v0[21];
  static Logger.predictedLocationNotifications.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Will rescheduled predicted location notifications in response to settings change", v25, 2u);
    sub_10000FA7C();
  }

  v27 = v0[20];
  v26 = v0[21];
  v29 = v0[18];
  v28 = v0[19];

  v18(v26, v28);
  v30 = *(v29 + OBJC_IVAR____TtC8weatherd32NotificationAuthorizationManager_predictedLocationsNotificationsManager + 24);
  v31 = *(v29 + OBJC_IVAR____TtC8weatherd32NotificationAuthorizationManager_predictedLocationsNotificationsManager + 32);
  sub_1000032B8((v29 + OBJC_IVAR____TtC8weatherd32NotificationAuthorizationManager_predictedLocationsNotificationsManager), v30);
  v32 = async function pointer to dispatch thunk of PredictedLocationsNotificationsManagerType.reschedulePredictedLocationNotifications()[1];
  v33 = swift_task_alloc();
  v0[28] = v33;
  *v33 = v0;
  v33[1] = sub_10000F3A4;

  return dispatch thunk of PredictedLocationsNotificationsManagerType.reschedulePredictedLocationNotifications()(v30, v31);
}

uint64_t sub_10000F3A4()
{
  v1 = *(*v0 + 224);
  v2 = *v0;
  sub_10000FA6C();
  *v3 = v2;

  return _swift_task_switch(sub_10000F498, 0, 0);
}

uint64_t sub_10000F498()
{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  sub_10000FA04(v0[27]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10000F544(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  v11 = *sub_1000032B8((a1 + 32), *(a1 + 56));
  if (a2)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for Date();
    v13 = 0;
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = 1;
  }

  sub_100006BD4(v8, v13, 1, v12);
  sub_10000F924(v8, v10);
  return sub_10000F64C(v11, v10);
}

uint64_t sub_10000F64C(uint64_t a1, uint64_t a2)
{
  sub_10000F924(a2, *(*(a1 + 64) + 40));

  return _swift_continuation_resume(a1);
}

uint64_t sub_10000F718()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000F80C;

  return sub_10000EDB4(a1, v4, v5, v6);
}

uint64_t sub_10000F80C()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_10000FA6C();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_10000F924(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A3800, &unk_100080860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F994(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A3800, &unk_100080860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FA04(uint64_t a1)
{
  v2 = sub_100003020(&qword_1000A3800, &unk_100080860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000FA7C()
{
}

uint64_t sub_10000FA94()
{
  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3A48, &qword_100080980);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3A50, &qword_100080988);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3A58, &qword_100080990);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3A60, &qword_100080998);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3A68, &unk_1000809A0);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3A70, &unk_100082230);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

uint64_t sub_10000FC88(void *a1)
{
  v2 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A58, &qword_100080990);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7[3])
  {
    v4 = a1[4];
    sub_1000032B8(a1, a1[3]);
    sub_100003020(&qword_1000A3A60, &qword_100080998);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6[3])
    {
      v5 = objc_allocWithZone(type metadata accessor for PredictedLocationsService());
      return sub_100078664(v7, v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000FD60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A78, &qword_1000809B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v28)
  {
    v6 = a1[4];
    sub_1000032B8(a1, a1[3]);
    sub_100003020(&qword_1000A3B50, &qword_100080A58);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v26)
    {
      v7 = v28;
      v8 = sub_1000123F0(v27, v28);
      v9 = *(*(v7 - 8) + 64);
      __chkstk_darwin(v8);
      v11 = (&v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v11;
      v14 = type metadata accessor for PredictedLocationsProvider();
      v24[3] = v14;
      v24[4] = &off_10009BE48;
      v24[0] = v13;
      v15 = type metadata accessor for PredictedLocationsManager();
      v16 = swift_allocObject();
      v17 = sub_1000123F0(v24, v14);
      v18 = *(*(v14 - 8) + 64);
      __chkstk_darwin(v17);
      v20 = (&v24[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v21 + 16))(v20);
      v22 = *v20;
      v16[5] = v14;
      v16[6] = &off_10009BE48;
      v16[2] = v22;
      sub_100006D78(&v25, (v16 + 7));
      sub_100006994(v24);
      result = sub_100006994(v27);
      a2[3] = v15;
      a2[4] = &off_10009BD10;
      *a2 = v16;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000FFE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PredictedLocationsScheduleStore.Feature();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v133)
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AD0, &qword_100080A08);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v131[3])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A80, &qword_1000809B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = result;
  v14 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v102 = result;
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B28, &qword_100080A40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v130)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B30, &qword_100080A48);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v128)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B38, &qword_100080A50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v101 = v125;
  if (!v125)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v100 = v126;
  v18 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AE0, &qword_100080A18);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v124)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A70, &unk_100082230);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v122)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A88, &qword_1000809C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v120)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v98 = v13;
  v99 = a2;
  (*(v5 + 104))(v8, enum case for PredictedLocationsScheduleStore.Feature.notifications(_:), v4);
  v21 = type metadata accessor for PredictedLocationsScheduleStore();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = PredictedLocationsScheduleStore.init(feature:)();
  v25 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA8, &unk_1000809E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v118[3])
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v26 = v130;
  v27 = sub_1000123F0(v129, v130);
  v97 = &v87;
  v28 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (&v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = v128;
  v33 = sub_1000123F0(v127, v128);
  v96 = &v87;
  v34 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = (&v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  v38 = v122;
  v39 = sub_1000123F0(v121, v122);
  v95 = &v87;
  v40 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v39);
  v42 = (&v87 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = v120;
  v45 = sub_1000123F0(v119, v120);
  v94 = &v87;
  v46 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v45);
  v48 = (&v87 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  v50 = *v30;
  v51 = *v36;
  v52 = *v42;
  v53 = *v48;
  v54 = type metadata accessor for SevereNotificationContentFactory();
  v117[3] = v54;
  v117[4] = &off_10009B530;
  v117[0] = v50;
  v88 = type metadata accessor for SevereNotificationScheduler();
  v115 = v88;
  v116 = &off_10009BB58;
  v114[0] = v51;
  v87 = type metadata accessor for PredictedLocationsNotificationLocationsProvider();
  v112 = v87;
  v113 = &off_10009C408;
  v111[0] = v52;
  v55 = type metadata accessor for PredictedLocationsNotificationScheduler();
  v109 = v55;
  v110 = &off_10009C2E0;
  v108[0] = v53;
  v107[3] = v21;
  v107[4] = &protocol witness table for PredictedLocationsScheduleStore;
  v107[0] = v24;
  v93 = type metadata accessor for PredictedLocationsNotificationsManager();
  v56 = swift_allocObject();
  v57 = sub_1000123F0(v117, v54);
  v92 = &v87;
  v58 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v57);
  v60 = (&v87 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60);
  v62 = v115;
  v63 = sub_1000123F0(v114, v115);
  v91 = &v87;
  v64 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v63);
  v66 = (&v87 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v67 + 16))(v66);
  v68 = v112;
  v69 = sub_1000123F0(v111, v112);
  v90 = &v87;
  v70 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v69);
  v72 = (&v87 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v73 + 16))(v72);
  v74 = v109;
  v75 = sub_1000123F0(v108, v109);
  v89 = &v87;
  v76 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v75);
  v78 = (&v87 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v79 + 16))(v78);
  v80 = *v60;
  v81 = *v66;
  v82 = *v72;
  v83 = *v78;
  v106[3] = v54;
  v106[4] = &off_10009B530;
  v106[0] = v80;
  v105[4] = &off_10009BB58;
  v105[3] = v88;
  v105[0] = v81;
  v104[3] = v87;
  v104[4] = &off_10009C408;
  v104[0] = v82;
  v103[3] = v55;
  v103[4] = &off_10009C2E0;
  v103[0] = v83;
  *(v56 + 416) = 0;
  *(v56 + 424) = 0;

  sub_100006930(v132, v56 + 16);
  sub_100006930(v131, v56 + 56);
  v84 = v102;
  *(v56 + 96) = v98;
  *(v56 + 104) = v84;
  sub_100006930(v106, v56 + 112);
  sub_100006930(v105, v56 + 152);
  v85 = v100;
  *(v56 + 192) = v101;
  *(v56 + 200) = v85;
  sub_100006930(v123, v56 + 208);
  sub_100006930(v104, v56 + 248);
  sub_100006930(v103, v56 + 288);
  sub_100006930(v107, v56 + 328);
  sub_100006930(v118, v56 + 368);
  sub_1000032B8(v132, v133);

  swift_unknownObjectRetain();
  *(v56 + 408) = dispatch thunk of LocationManagerType.authorizationState.getter();
  sub_1000032B8(v123, v124);
  if (dispatch thunk of PredictedLocationsAuthorizationManagerType.isFeatureAvailable()())
  {
    sub_1000032B8(v132, v133);
    sub_100012A54(&qword_1000A3B48, type metadata accessor for PredictedLocationsNotificationsManager);

    dispatch thunk of LocationManagerType.addObserver(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v86 = v99;

  sub_100006994(v118);
  sub_100006994(v131);
  sub_100006994(v107);
  sub_100006994(v103);
  sub_100006994(v104);
  sub_100006994(v105);
  sub_100006994(v106);
  sub_100006994(v123);
  sub_100006994(v132);
  sub_100006994(v108);
  sub_100006994(v111);
  sub_100006994(v114);
  sub_100006994(v117);
  sub_100006994(v119);
  sub_100006994(v121);
  sub_100006994(v127);
  sub_100006994(v129);
  v86[3] = v93;
  result = sub_100012A54(&qword_1000A3B40, type metadata accessor for PredictedLocationsNotificationsManager);
  v86[4] = result;
  *v86 = v56;
  return result;
}

uint64_t sub_100010CCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  v4 = type metadata accessor for PredictedLocationsIntentDonationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_100012A54(&qword_1000A3B18, type metadata accessor for PredictedLocationsIntentDonationManager);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100010D74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  v4 = type metadata accessor for PredictedLocationsIntentDonationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a2[3] = v4;
    a2[4] = &off_10009BFE0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100010DE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A50, &qword_100080988);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v40)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v38)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AD0, &qword_100080A08);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v36)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v34)
  {
    v9 = v40;
    v10 = sub_1000123F0(v39, v40);
    v11 = *(*(v9 - 8) + 64);
    __chkstk_darwin(v10);
    v13 = (&v32[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v16 = type metadata accessor for PredictedLocationsManager();
    v32[3] = v16;
    v32[4] = &off_10009BD10;
    v32[0] = v15;
    v17 = type metadata accessor for PredictedLocationsNotificationLocationsProvider();
    v18 = swift_allocObject();
    v19 = sub_1000123F0(v32, v16);
    v20 = *(*(v16 - 8) + 64);
    __chkstk_darwin(v19);
    v22 = (&v32[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = *v22;
    v18[5] = v16;
    v18[6] = &off_10009BD10;
    v18[2] = v24;
    static Settings.LocationIntelligence.Debug.Notifications.enableLocIntelOverrides.getter();
    v25 = sub_100003020(&qword_1000A3AB8, &qword_1000809F0);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v18[22] = SettingProperty.init(_:)();
    static Settings.LocationIntelligence.Debug.Notifications.minProbabilityThreshold.getter();
    v28 = sub_100003020(&qword_1000A3AD8, &qword_100080A10);
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v18[23] = SettingProperty.init(_:)();
    sub_100006D78(&v37, (v18 + 7));
    sub_100006D78(&v35, (v18 + 12));
    sub_100006D78(&v33, (v18 + 17));
    sub_100006994(v32);
    result = sub_100006994(v39);
    a2[3] = v17;
    a2[4] = &off_10009C408;
    *a2 = v18;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100011194()
{
  sub_100003020(&qword_1000A3A78, &qword_1000809B0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A3A80, &qword_1000809B8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A3A88, &qword_1000809C0);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for PredictedLocationsIntentDonationManager();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A3A90, &qword_1000809C8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A3A98, &unk_1000809D0);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100011334@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(RTRoutineManager) init];
  v5 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v10)
  {
    v7 = type metadata accessor for PredictedLocationsProvider();
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    result = sub_100006D78(&v9, v8 + 24);
    a2[3] = v7;
    a2[4] = &off_10009BE48;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100011410(uint64_t a1)
{
  v2 = type metadata accessor for LazyOptions();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_100006930(a1, v9);
  v4 = swift_allocObject();
  sub_100006D78(v9, v4 + 16);
  *&v9[0] = &_swiftEmptyArrayStorage;
  sub_100012A54(&qword_1000A3AF0, &type metadata accessor for LazyOptions);
  sub_100003020(&qword_1000A3AF8, &qword_100080A20);
  sub_1000129F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v5 = sub_100003020(&qword_1000A3A80, &qword_1000809B8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return ReferenceCountedLazy.init(options:loadBlock:)();
}

uint64_t sub_100011584@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B08, &qword_100080A28);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B10, &unk_100080A30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v10)
  {
    v8 = type metadata accessor for PredictedLocationsWeatherAlertService();
    swift_allocObject();
    result = sub_10003C8C8(&v13, &v11, &v9);
    a2[3] = v8;
    a2[4] = &off_10009BD48;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000116D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PredictedLocationsScheduleStore.Feature();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA0, &qword_100082220);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v32)
  {
    __break(1u);
    goto LABEL_6;
  }

  (*(v5 + 104))(v8, enum case for PredictedLocationsScheduleStore.Feature.notifications(_:), v4);
  v11 = type metadata accessor for PredictedLocationsScheduleStore();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PredictedLocationsScheduleStore.init(feature:)();
  v15 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA8, &unk_1000809E0);

  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v30)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v28)
  {
    v17 = type metadata accessor for PredictedLocationsNotificationScheduler();
    v18 = swift_allocObject();
    v18[10] = v11;
    v18[11] = &protocol witness table for PredictedLocationsScheduleStore;
    v18[7] = v14;

    static Settings.LocationIntelligence.Debug.Notifications.enableLocIntelOverrides.getter();
    v19 = sub_100003020(&qword_1000A3AB8, &qword_1000809F0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v18[22] = SettingProperty.init(_:)();
    static Settings.LocationIntelligence.Debug.Notifications.refreshInterval.getter();
    v22 = sub_100003020(&qword_1000A3AC0, &qword_1000809F8);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = SettingProperty.init(_:)();

    v18[23] = v25;
    sub_100006D78(&v31, (v18 + 2));
    sub_100006D78(&v29, (v18 + 12));
    sub_100006D78(&v27, (v18 + 17));

    a2[3] = v17;
    a2[4] = &off_10009C2E0;
    *a2 = v18;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000119B4(void *a1)
{
  v2 = type metadata accessor for PredictedLocationsScheduleStore.Feature();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v31[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v37[3])
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AE0, &qword_100080A18);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v36[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A90, &qword_1000809C8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v35)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A98, &unk_1000809D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v33)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  (*(v3 + 104))(v6, enum case for PredictedLocationsScheduleStore.Feature.intentDonations(_:), v2);
  v12 = type metadata accessor for PredictedLocationsScheduleStore();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = PredictedLocationsScheduleStore.init(feature:)();
  v16 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA8, &unk_1000809E0);

  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v31[3])
  {
    v17 = v35;
    v18 = sub_1000123F0(v34, v35);
    v19 = *(*(v17 - 8) + 64);
    __chkstk_darwin(v18);
    v21 = (&v31[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = v33;
    v24 = sub_1000123F0(v32, v33);
    v25 = *(*(v23 - 8) + 64);
    __chkstk_darwin(v24);
    v27 = (&v31[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    v29 = sub_100012440(v37, v36, *v21, *v27, v15, v31);

    sub_100006994(v32);
    sub_100006994(v34);
    return v29;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_100011DA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PredictedLocationsScheduleStore.Feature();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A50, &qword_100080988);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v32)
  {
    __break(1u);
    goto LABEL_7;
  }

  (*(v5 + 104))(v8, enum case for PredictedLocationsScheduleStore.Feature.intentDonations(_:), v4);
  v11 = type metadata accessor for PredictedLocationsScheduleStore();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PredictedLocationsScheduleStore.init(feature:)();
  v15 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);

  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v30)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v16 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AD0, &qword_100080A08);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v28)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v26)
  {
    v18 = v32;
    v19 = sub_1000123F0(v31, v32);
    v20 = *(*(v18 - 8) + 64);
    __chkstk_darwin(v19);
    v22 = (&v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = sub_100012798(*v22, v14, &v29, &v27, &v25);

    sub_100006994(v31);
    result = type metadata accessor for PredictedLocationsIntentDonationLocationsProvider();
    a2[3] = result;
    a2[4] = &off_10009BEF8;
    *a2 = v24;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000120C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PredictedLocationsScheduleStore.Feature();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA0, &qword_100082220);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v32)
  {
    __break(1u);
    goto LABEL_6;
  }

  (*(v5 + 104))(v8, enum case for PredictedLocationsScheduleStore.Feature.intentDonations(_:), v4);
  v11 = type metadata accessor for PredictedLocationsScheduleStore();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PredictedLocationsScheduleStore.init(feature:)();
  v15 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA8, &unk_1000809E0);

  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v30)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v28)
  {
    v17 = type metadata accessor for PredictedLocationsIntentDonationScheduler();
    v18 = swift_allocObject();
    v18[10] = v11;
    v18[11] = &protocol witness table for PredictedLocationsScheduleStore;
    v18[7] = v14;

    static Settings.LocationIntelligence.Debug.IntentDonations.enableLocIntelOverrides.getter();
    v19 = sub_100003020(&qword_1000A3AB8, &qword_1000809F0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v18[22] = SettingProperty.init(_:)();
    static Settings.LocationIntelligence.Debug.IntentDonations.refreshInterval.getter();
    v22 = sub_100003020(&qword_1000A3AC0, &qword_1000809F8);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = SettingProperty.init(_:)();

    v18[23] = v25;
    sub_100006D78(&v31, (v18 + 2));
    sub_100006D78(&v29, (v18 + 12));
    sub_100006D78(&v27, (v18 + 17));

    a2[3] = v17;
    a2[4] = &off_10009BD20;
    *a2 = v18;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000123F0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100012440(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = type metadata accessor for PredictedLocationsIntentDonationLocationsProvider();
  v38[3] = v12;
  v38[4] = &off_10009BEF8;
  v38[0] = a3;
  v13 = type metadata accessor for PredictedLocationsIntentDonationScheduler();
  v36 = v13;
  v37 = &off_10009BD20;
  v35[0] = a4;
  v34[3] = type metadata accessor for PredictedLocationsScheduleStore();
  v34[4] = &protocol witness table for PredictedLocationsScheduleStore;
  v34[0] = a5;
  type metadata accessor for PredictedLocationsIntentDonationManager();
  v14 = swift_allocObject();
  v15 = sub_1000123F0(v38, v12);
  v16 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = v36;
  v21 = sub_1000123F0(v35, v36);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v18;
  v27 = *v24;
  v33[3] = v12;
  v33[4] = &off_10009BEF8;
  v32[4] = &off_10009BD20;
  v33[0] = v26;
  v32[3] = v13;
  v32[0] = v27;
  sub_100006930(a1, v14 + 16);
  sub_100006930(a2, v14 + 56);
  sub_100006930(v33, v14 + 96);
  sub_100006930(v32, v14 + 136);
  sub_100006930(v34, v14 + 176);
  sub_100006930(a6, v14 + 216);
  v28 = a1[4];
  sub_1000032B8(a1, a1[3]);
  *(v14 + 256) = dispatch thunk of LocationManagerType.authorizationState.getter();
  v29 = a2[4];
  sub_1000032B8(a2, a2[3]);
  if (dispatch thunk of PredictedLocationsAuthorizationManagerType.isFeatureAvailable()())
  {
    v30 = a1[4];
    sub_1000032B8(a1, a1[3]);
    sub_100012A54(&qword_1000A3AE8, type metadata accessor for PredictedLocationsIntentDonationManager);

    dispatch thunk of LocationManagerType.addObserver(_:)();
  }

  sub_100006994(a6);
  sub_100006994(v34);
  sub_100006994(v32);
  sub_100006994(v33);
  sub_100006994(a2);
  sub_100006994(a1);
  sub_100006994(v35);
  sub_100006994(v38);
  return v14;
}

void *sub_100012798(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v10 = type metadata accessor for PredictedLocationsManager();
  v29[3] = v10;
  v29[4] = &off_10009BD10;
  v29[0] = a1;
  v27 = type metadata accessor for PredictedLocationsScheduleStore();
  v28 = &protocol witness table for PredictedLocationsScheduleStore;
  *&v26 = a2;
  type metadata accessor for PredictedLocationsIntentDonationLocationsProvider();
  v11 = swift_allocObject();
  v12 = sub_1000123F0(v29, v10);
  v13 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v11[5] = v10;
  v11[6] = &off_10009BD10;
  v11[2] = v17;
  type metadata accessor for AppGroup();
  static AppGroup.weather.getter();
  v18 = AppGroup.userDefaults.getter();

  v11[27] = v18;
  static Settings.LocationIntelligence.Debug.IntentDonations.enableLocIntelOverrides.getter();
  v19 = sub_100003020(&qword_1000A3AB8, &qword_1000809F0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v11[28] = SettingProperty.init(_:)();
  static Settings.LocationIntelligence.Debug.IntentDonations.minProbabilityThreshold.getter();
  v22 = sub_100003020(&qword_1000A3AD8, &qword_100080A10);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v11[29] = SettingProperty.init(_:)();
  sub_100006D78(&v26, (v11 + 7));
  sub_100006D78(a3, (v11 + 12));
  sub_100006D78(a4, (v11 + 17));
  sub_100006D78(a5, (v11 + 22));
  sub_100006994(v29);
  return v11;
}

uint64_t sub_1000129B0()
{
  sub_100006994((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000129F0()
{
  result = qword_1000A3B00;
  if (!qword_1000A3B00)
  {
    sub_10000325C(&qword_1000A3AF8, &qword_100080A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3B00);
  }

  return result;
}

uint64_t sub_100012A54(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100012AB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v131 = a5;
  v127 = a3;
  v126 = a1;
  v9 = type metadata accessor for Date();
  v132 = sub_100006FBC(v9);
  v133 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v132);
  sub_100015754();
  v125 = v13 - v14;
  __chkstk_darwin(v15);
  v123 = &v118[-v16];
  v17 = type metadata accessor for Logger();
  v18 = sub_100006FBC(v17);
  v134 = v19;
  *&v135 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_100015754();
  v24 = v22 - v23;
  v26 = __chkstk_darwin(v25);
  v130 = &v118[-v27];
  v28 = __chkstk_darwin(v26);
  v30 = &v118[-v29];
  __chkstk_darwin(v28);
  v32 = &v118[-v31];
  v33 = type metadata accessor for SevereMessage();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  sub_100015754();
  v124 = (v35 - v36);
  __chkstk_darwin(v37);
  v39 = &v118[-v38];
  if (!a4)
  {

    static Logger.notifications.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = v134;
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Attempted to parse APSMessage without channel identifier", v45, 2u);
      sub_10000FA7C();

      v47 = sub_100015744();
      v48(v47);
      (*(v46 + 8))(v32, v135);
    }

    else
    {

      v89 = sub_100015744();
      v90(v89);
      (*(v134 + 8))(v32, v135);
    }

    v91 = 1;
    v40 = a6;
    goto LABEL_47;
  }

  v129 = a2;
  v136 = 0x6E6F6973726576;
  v137 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  sub_100015764();
  sub_100014EB0(&v138);
  v128 = a6;
  if (!v143)
  {
    sub_100014F04(v142);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v122 = a4;
    v41 = 0;
    LODWORD(v42) = 1;
    goto LABEL_10;
  }

  v40 = a6;
  v41 = v136;
  if ((v136 - 1) > 1)
  {

    static Logger.notifications.getter();
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v142[0] = v97;
      *v96 = 136446210;
      v138 = v41;
      LOBYTE(v139) = 0;
      sub_100003020(&qword_1000A3BB8, &qword_100080AC8);
      v98 = String.init<A>(describing:)();
      v100 = sub_10000D9FC(v98, v99, v142);
      v101 = v134;
      v102 = v40;
      v103 = v100;

      *(v96 + 4) = v103;
      v40 = v102;
      _os_log_impl(&_mh_execute_header, v94, v95, "Attempted to parse APSMessage with unsupported version %{public}s", v96, 0xCu);
      sub_100006994(v97);
      sub_10000FA7C();
      sub_10000FA7C();

      v104 = sub_100015744();
      v105(v104);
      (*(v101 + 8))(v24, v135);
    }

    else
    {

      v116 = sub_100015744();
      v117(v116);
      (*(v134 + 8))(v24, v135);
    }

    goto LABEL_46;
  }

  v122 = a4;
  LODWORD(v42) = 0;
LABEL_10:
  static Logger.notifications.getter();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  v51 = os_log_type_enabled(v49, v50);
  v120 = v39;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v121 = v33;
    v54 = v53;
    v142[0] = v53;
    *v52 = 136446210;
    v138 = v41;
    LOBYTE(v139) = v42;
    sub_100003020(&qword_1000A3BB8, &qword_100080AC8);
    v55 = String.init<A>(describing:)();
    v119 = v42;
    v42 = v41;
    v57 = sub_10000D9FC(v55, v56, v142);
    v58 = v134;
    v59 = v135;

    *(v52 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v49, v50, "Parse APSMessage with version %{public}s", v52, 0xCu);
    sub_100006994(v54);
    v33 = v121;
    sub_10000FA7C();
    sub_10000FA7C();

    v60 = *(v58 + 8);
    v61 = v59;
    v41 = v42;
    LOBYTE(v42) = v119;
    v60(v30, v61);
  }

  else
  {

    v60 = *(v134 + 8);
    v60(v30, v135);
  }

  if (v41 == 2)
  {
    v62 = v42;
  }

  else
  {
    v62 = 1;
  }

  if ((v62 & 1) == 0)
  {
    v136 = 0x737472656C61;
    v137 = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    sub_100015764();

    sub_100014EB0(&v138);
    v40 = v128;
    if (v143)
    {
      v79 = swift_dynamicCast();
      v80 = v130;
      if (v79)
      {
        v81 = v136;
        v82 = v137;
        v84 = v132;
        v83 = v133;
        v85 = v123;
        v86 = v131;
        (*(v133 + 16))(v123, v131, v132);
        v87 = v81;
        v88 = v120;
        sub_10001373C(v126, v129, v127, v122, v87, v82, v85, v120);
        (*(v83 + 8))(v86, v84);
LABEL_44:
        sub_100014F6C(v88, v40);
        v91 = 0;
        goto LABEL_47;
      }
    }

    else
    {

      sub_100014F04(v142);
      v80 = v130;
    }

    static Logger.notifications.getter();
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&_mh_execute_header, v108, v109, "Attempted to parse APSMessage with version 2, without binary alert payload", v110, 2u);
      sub_10000FA7C();
    }

    v111 = sub_100015744();
    v112(v111);
    v60(v80, v135);
    goto LABEL_46;
  }

  v136 = 0x73746E657665;
  v137 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  sub_100015764();

  sub_100014EB0(&v138);
  v40 = v128;
  if (!v143)
  {
    v92 = sub_100015744();
    v93(v92);

    sub_100014F04(v142);
LABEL_46:
    v91 = 1;
LABEL_47:
    sub_100006BD4(v40, v91, 1, v33);
    return;
  }

  sub_100003020(&qword_1000A3BB0, &qword_100080AC0);
  v63 = swift_dynamicCast();
  v64 = v122;
  v65 = v129;
  if ((v63 & 1) == 0)
  {
    v106 = sub_100015744();
    v107(v106);

    goto LABEL_46;
  }

  v121 = v33;
  v66 = v136;
  (*(v133 + 16))(v125, v131, v132);
  v67 = 0;
  v68 = v124;
  *v124 = v126;
  v68[1] = v65;
  v68[2] = v127;
  v68[3] = v64;
  v69 = *(v66 + 16);
  v70 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v69 == v67)
    {

      v114 = v132;
      v113 = v133;
      (*(v133 + 8))(v131, v132);
      v115 = v124;
      v124[4] = v70;
      v33 = v121;
      (*(v113 + 32))(v115 + *(v121 + 28), v125, v114);
      v88 = v120;
      sub_100014F6C(v115, v120);
      v40 = v128;
      goto LABEL_44;
    }

    if (v67 >= *(v66 + 16))
    {
      break;
    }

    v142[0] = *(v66 + 8 * v67 + 32);
    sub_1000140A8(v142, &v138);
    v71 = v139;
    if (v139)
    {
      v72 = v138;
      v73 = v140;
      v135 = v141;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = v70[2];
        sub_10005B31C();
        v70 = v77;
      }

      v74 = v70[2];
      if (v74 >= v70[3] >> 1)
      {
        sub_10005B31C();
        v70 = v78;
      }

      v70[2] = v74 + 1;
      v75 = &v70[5 * v74];
      *(v75 + 4) = v72;
      *(v75 + 5) = v71;
      *(v75 + 6) = v73;
      *(v75 + 56) = v135;
    }

    ++v67;
  }

  __break(1u);
}

double sub_1000135D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_100074DB0(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_10000DF6C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100013638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100074DF4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_100013688(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_100074E6C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

double sub_1000136D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100074DF4(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10000DF6C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_10001373C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v70 = a7;
  v68 = a4;
  v67 = a3;
  v80 = a1;
  v69 = a8;
  v78 = type metadata accessor for Logger();
  v11 = *(v78 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v78);
  v64[1] = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v64[0] = v64 - v16;
  __chkstk_darwin(v15);
  v79 = v64 - v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a5;
  v84 = a6;
  sub_10000DFCC(a5, a6);
  v23 = 0;
  v76 = (v19 + 8);
  v24 = &_swiftEmptyArrayStorage;
  v77 = (v11 + 8);
  *(&v25 + 1) = 8;
  v75 = xmmword_100080320;
  v26 = &type metadata for Int16;
  *&v25 = 136315394;
  v71 = v25;
  v66 = a6;
  v27 = a6;
  v65 = a5;
  v28 = a5;
  v73 = v18;
  v74 = v22;
  while (2)
  {
    v29 = v80;
    switch(v27 >> 62)
    {
      case 1uLL:
        v30 = v28;
        v31 = v28 >> 32;
        goto LABEL_7;
      case 2uLL:
        v30 = *(v28 + 16);
        v31 = *(v28 + 24);
LABEL_7:
        if (v30 != v31)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      case 3uLL:
        goto LABEL_17;
      default:
        if ((v27 & 0xFF000000000000) == 0)
        {
LABEL_17:
          v53 = v24;
          sub_100006C78(v65, v66);
          sub_100006C78(v28, v27);
          v55 = v69;
          v54 = v70;
          v56 = v68;
          v57 = v67;
          goto LABEL_22;
        }

LABEL_8:
        if (v23 != 500)
        {
          v81 = v23;
          static FixedSizeTypeBinaryCodable.read(from:)();
          v32 = v26;
          v33 = UUID.uuidString.getter();
          v35 = v34;
          (*v76)(v22, v18);
          sub_100003020(&qword_1000A3BC0, &qword_100080AD0);
          v36 = swift_allocObject();
          *(v36 + 16) = v75;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v36 + 32) = (bswap32(LOWORD(v82[0])) >> 16) / 100.0;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v36 + 40) = (bswap32(LOWORD(v82[0])) >> 16) / 100.0;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v36 + 48) = (bswap32(LOWORD(v82[0])) >> 16) / 100.0;
          v37 = v32;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v36 + 56) = (bswap32(LOWORD(v82[0])) >> 16) / 100.0;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = v24[2];
            sub_10005B31C();
            v24 = v51;
          }

          v38 = v24[2];
          if (v38 >= v24[3] >> 1)
          {
            sub_10005B31C();
            v24 = v52;
          }

          v24[2] = v38 + 1;
          v39 = &v24[5 * v38];
          v39[4] = v33;
          v39[5] = v35;
          v39[6] = v29;
          v39[7] = a2;
          v39[8] = v36;
          v40 = v79;
          static Logger.notifications.getter();

          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.default.getter();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v72 = v24;
            v82[0] = v44;
            *v43 = v71;
            v45 = sub_10000D9FC(v33, v35, v82);

            *(v43 + 4) = v45;
            *(v43 + 12) = 2080;
            v46 = Array.description.getter();
            v48 = v47;

            v49 = sub_10000D9FC(v46, v48, v82);

            *(v43 + 14) = v49;
            _os_log_impl(&_mh_execute_header, v41, v42, "Received weather alert: %s - %s", v43, 0x16u);
            swift_arrayDestroy();
            v24 = v72;

            (*v77)(v79, v78);
          }

          else
          {

            (*v77)(v40, v78);
          }

          v26 = v37;
          v23 = v81 + 1;
          v28 = v83;
          v27 = v84;
          v18 = v73;
          v22 = v74;
          continue;
        }

        v53 = v24;
        static Logger.notifications.getter();
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v58, v59, "Breaking out of SevereMessage parsing", v60, 2u);

          sub_100006C78(v65, v66);
        }

        else
        {
          sub_100006C78(v65, v66);
        }

        v55 = v69;
        v54 = v70;
        v56 = v68;
        v57 = v67;
        (*v77)(v64[0], v78);
        sub_100006C78(v83, v84);
LABEL_22:
        *v55 = v80;
        *(v55 + 1) = a2;
        *(v55 + 2) = v57;
        *(v55 + 3) = v56;
        *(v55 + 4) = v53;
        v61 = *(type metadata accessor for SevereMessage() + 28);
        v62 = type metadata accessor for Date();
        return (*(*(v62 - 8) + 32))(&v55[v61], v54, v62);
    }
  }
}

double sub_1000140A8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v25 - v10;
  v12 = *a1;
  v13 = sub_100013638(0x696669746E656469, 0xEA00000000007265, v12);
  if (v13 && (v26 = v13, (swift_dynamicCast() & 1) != 0))
  {
    v15 = v25[0];
    v14 = v25[1];
    v16 = sub_100013638(2020565602, 0xE400000000000000, v12);
    if (v16)
    {
      v25[0] = v16;
      sub_100003020(&qword_1000A3BC8, &qword_100080AD8);
      if (swift_dynamicCast())
      {
        v17 = v26;
        *a2 = v15;
        a2[1] = v14;
        a2[2] = v15;
        a2[3] = v14;
        a2[4] = v17;

        return result;
      }
    }

    static Logger.notifications.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Message event payload did not include bounding box", v24, 2u);
    }

    (*(v5 + 8))(v9, v4);
  }

  else
  {
    static Logger.notifications.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Message event payload did not include identifier", v21, 2u);
    }

    (*(v5 + 8))(v11, v4);
  }

  a2[4] = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

uint64_t sub_100014378()
{
  _StringGuts.grow(_:)(25);

  strcpy(v15, "Identifier: ");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  String.append(_:)(*v0);
  v1._countAndFlagsBits = 0x3A737472656C410ALL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  countAndFlagsBits = v0[2]._countAndFlagsBits;
  v3 = *(countAndFlagsBits + 16);
  if (v3)
  {
    sub_100014558(0, v3, 0);
    v4 = (countAndFlagsBits + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v8 >= v7 >> 1)
      {
        sub_100014558((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      *(v9 + 4) = v6;
      *(v9 + 5) = v5;
      v4 += 5;
      --v3;
    }

    while (v3);
  }

  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  sub_100014578();
  v10 = BidirectionalCollection<>.joined(separator:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  return v15[0];
}

char *sub_100014518(char *a1, int64_t a2, char a3)
{
  result = sub_10001491C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100014538(char *a1, int64_t a2, char a3)
{
  result = sub_100014A34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100014558(char *a1, int64_t a2, char a3)
{
  result = sub_100014B4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_100014578()
{
  result = qword_1000A3B58;
  if (!qword_1000A3B58)
  {
    sub_10000325C(&qword_1000A34C0, &qword_1000804D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3B58);
  }

  return result;
}

size_t sub_1000145DC(size_t a1, int64_t a2, char a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3B78, &unk_100082260, &type metadata accessor for URLQueryItem, sub_10005C064);
  *v3 = result;
  return result;
}

char *sub_100014634(char *a1, int64_t a2, char a3)
{
  result = sub_100014C4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100014654(char *a1, int64_t a2, char a3)
{
  result = sub_100014D54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100014674(size_t a1, int64_t a2, char a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3B68, &qword_100080A98, &type metadata accessor for WeatherAlert, sub_10005C0B4);
  *v3 = result;
  return result;
}

size_t sub_1000146CC(size_t a1, int64_t a2, char a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3B70, &qword_100080AA0, &type metadata accessor for SevereNotificationEntity, sub_10005C0CC);
  *v3 = result;
  return result;
}

size_t sub_100014724(size_t a1, int64_t a2, char a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3B98, &qword_100080AB8, type metadata accessor for SevereNotificationSubscription, sub_10005C07C);
  *v3 = result;
  return result;
}

size_t sub_10001477C(size_t a1, int64_t a2, char a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3BA8, &unk_100082290, type metadata accessor for PredictedLocation, sub_10005C0E4);
  *v3 = result;
  return result;
}

size_t sub_1000147D4(size_t a1, int64_t a2, char a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3BA0, &qword_100082280, type metadata accessor for ResolvedPredictedLocation, sub_10005C0FC);
  *v3 = result;
  return result;
}

size_t sub_10001482C(size_t a1, int64_t a2, char a3)
{
  result = sub_100014FD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10001484C(size_t a1, int64_t a2, char a3)
{
  result = sub_10001519C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10001486C(size_t a1, int64_t a2, char a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3BF8, &qword_100080B08, &type metadata accessor for UUID, sub_10005C204);
  *v3 = result;
  return result;
}

size_t sub_1000148C4(size_t a1, int64_t a2, char a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3BD0, &qword_100080AE0, type metadata accessor for CloudChannelSubscription, sub_10005C21C);
  *v3 = result;
  return result;
}

char *sub_10001491C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_100003020(&qword_1000A3BD8, &qword_100080AE8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10005C578((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100003020(&qword_1000A3BE0, &qword_100080AF0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100014A34(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_100003020(&qword_1000A3BE8, &qword_100080AF8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10005C578((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100003020(&qword_1000A3BF0, &qword_100080B00);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100014B4C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_100003020(&qword_1000A3B60, &unk_100082250);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_10005C044((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100014C4C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_100003020(&qword_1000A3B90, &qword_100080AB0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10005C01C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100014D54(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_100003020(&qword_1000A3B80, &qword_100080AA8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_10005C094((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100003020(&qword_1000A3B88, &qword_100080FA0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SevereMessage()
{
  result = qword_1000A3C78;
  if (!qword_1000A3C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014F04(uint64_t a1)
{
  v2 = sub_100003020(&unk_1000A3880, &qword_1000808A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100014F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SevereMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_100014FD0(size_t result, int64_t a2, char a3, uint64_t a4)
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

  sub_100003020(&qword_1000A3C10, &qword_100080B20);
  v10 = *(sub_100003020(&qword_1000A3C18, &qword_100081770) - 8);
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
  v15 = *(sub_100003020(&qword_1000A3C18, &qword_100081770) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10005C114(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_10001519C(size_t result, int64_t a2, char a3, uint64_t a4)
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

  sub_100003020(&qword_1000A3C00, &qword_100080B10);
  v10 = *(sub_100003020(&qword_1000A3C08, &qword_100080B18) - 8);
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
  v15 = *(sub_100003020(&qword_1000A3C08, &qword_100080B18) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10005C128(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_100015368(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003020(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    a8(a4 + v22, v14, v19 + v22);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_100015544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 28);

    return sub_100007374(v9, a2, v8);
  }
}

uint64_t sub_1000155E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 28);

    return sub_100006BD4(v8, a2, a2, v7);
  }

  return result;
}

void sub_100015660()
{
  sub_1000156F4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000156F4()
{
  if (!qword_1000A3C88)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A3C88);
    }
  }
}

uint64_t sub_100015744()
{
  v1 = *(v0 - 232);
  v2 = *(*(v0 - 224) + 8);
  return *(v0 - 240);
}

double sub_100015764()
{

  return sub_1000135D4(v1 - 160, v0, (v1 - 120));
}

Swift::Int sub_1000157A8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000157FC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10001583C()
{
  sub_100006994((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100015898(uint64_t a1, void *a2)
{
  v4 = v2[6];
  sub_1000032B8(v2 + 2, v2[5]);
  [a2 coordinate];
  dispatch thunk of WeatherDataServiceType.perform(requests:for:with:)();
  v5 = zalgo.getter();
  type metadata accessor for LocationInfo();
  v6 = Promise.then<A>(on:closure:)();

  return v6;
}

uint64_t sub_100015954(uint64_t *a1)
{
  v2 = type metadata accessor for LocationInfo();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v62 = &v53 - v8;
  v9 = __chkstk_darwin(v7);
  v61 = &v53 - v10;
  v11 = __chkstk_darwin(v9);
  v64 = &v53 - v12;
  __chkstk_darwin(v11);
  v53 = &v53 - v13;
  v14 = type metadata accessor for WeatherDataResponse();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v53 - v20;
  v22 = sub_100003020(&qword_1000A3D60, &qword_100080B98);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v55 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v56 = &v53 - v26;
  v27 = *a1;
  v28 = *(*a1 + 16);
  v63 = v3;
  if (v28)
  {
    v29 = v27 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v30 = *(v15 + 72);
    v31 = (v3 + 32);
    v32 = &_swiftEmptyArrayStorage;
    v59 = v14;
    v60 = v2;
    v57 = v30;
    v58 = v21;
    do
    {
      sub_100016344(v29, v21, &type metadata accessor for WeatherDataResponse);
      sub_10001609C(v21, v19);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v33 = *v31;
        v34 = v62;
        (*v31)(v62, v19, v2);
        v35 = v2;
        v36 = v61;
        v33(v61, v34, v35);
        v33(v64, v36, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = *(v32 + 2);
          sub_10005B414();
          v32 = v39;
        }

        v37 = *(v32 + 2);
        v21 = v58;
        if (v37 >= *(v32 + 3) >> 1)
        {
          sub_10005B414();
          v32 = v40;
        }

        *(v32 + 2) = v37 + 1;
        v2 = v60;
        v33(&v32[((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v37], v64, v60);
        v30 = v57;
      }

      else
      {
        sub_100016100(v19);
      }

      v29 += v30;
      --v28;
    }

    while (v28);
  }

  else
  {
    v32 = &_swiftEmptyArrayStorage;
  }

  v41 = v56;
  sub_100015EC0(v32);

  v42 = v55;
  sub_10001615C(v41, v55);
  if (sub_100007374(v42, 1, v2) == 1)
  {
    sub_1000161CC(v42);
    sub_100016234();
    swift_allocError();
    v43 = sub_100003020(&qword_1000A3D70, &qword_100080BA0);
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    v46 = Promise.init(error:)();
  }

  else
  {
    v47 = v63;
    v48 = v53;
    (*(v63 + 32))(v53, v42, v2);
    (*(v47 + 16))(v54, v48, v2);
    v49 = sub_100003020(&qword_1000A3D70, &qword_100080BA0);
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    v46 = Promise.init(value:)();
    (*(v47 + 8))(v48, v2);
  }

  sub_1000161CC(v41);
  return v46;
}

uint64_t sub_100015EC0(uint64_t a1)
{
  v4 = sub_100016534(a1);
  v6 = v5(v4);
  v7 = v6;
  if (v3)
  {
    (*(*(v6 - 8) + 16))(v1, v2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_100006BD4(v1, v8, 1, v7);
}

uint64_t sub_100015F60(uint64_t a1)
{
  result = sub_100016288(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1000162C8(result, v3, 0, a1);
  }
}

uint64_t sub_100015FC8(uint64_t a1)
{
  sub_100016534(a1);
  v4 = type metadata accessor for ResolvedPredictedLocation();
  v5 = v4;
  if (v3)
  {
    sub_100016344(v2 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v1, type metadata accessor for ResolvedPredictedLocation);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return sub_100006BD4(v1, v6, 1, v5);
}

uint64_t sub_10001609C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016100(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001615C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A3D60, &qword_100080B98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000161CC(uint64_t a1)
{
  v2 = sub_100003020(&qword_1000A3D60, &qword_100080B98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100016234()
{
  result = qword_1000A3D68;
  if (!qword_1000A3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3D68);
  }

  return result;
}

uint64_t sub_100016288(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1000162C8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100016344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for GeocodeWeatherService.Error(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for GeocodeWeatherService.Error(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10001649CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000164E0()
{
  result = qword_1000A3D78;
  if (!qword_1000A3D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3D78);
  }

  return result;
}

uint64_t sub_100016554()
{
  type metadata accessor for Severity();
  sub_1000187BC(&qword_1000A3E40, &type metadata accessor for Severity);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

uint64_t sub_100016658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v178 = a3;
  v188 = a4;
  v6 = sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100006FF0(v6);
  v8 = *(v7 + 64);
  sub_100018920();
  __chkstk_darwin(v9);
  sub_100018914();
  v179 = v10;
  sub_1000188E8();
  v170 = type metadata accessor for Urgency();
  v11 = sub_100006FBC(v170);
  v168 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_1000188C4();
  v164 = v15;
  v183 = sub_100003020(&qword_1000A3E20, &unk_100080CD0);
  sub_100018904(v183);
  v17 = *(v16 + 64);
  sub_100018920();
  __chkstk_darwin(v18);
  sub_100018914();
  v169 = v19;
  v20 = sub_100003020(&qword_1000A3E28, &qword_1000817A0);
  v21 = sub_100006FF0(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v24);
  sub_1000188D8();
  __chkstk_darwin(v25);
  sub_100018938();
  v172 = v26;
  sub_1000188E8();
  v27 = type metadata accessor for Severity();
  v28 = sub_100006FBC(v27);
  v176 = v29;
  v177 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v32);
  sub_100018938();
  v174 = v33;
  v34 = sub_100003020(&qword_1000A3E30, &unk_100080CE0);
  sub_100006FF0(v34);
  v36 = *(v35 + 64);
  sub_100018920();
  __chkstk_darwin(v37);
  sub_100018914();
  v182 = v38;
  sub_1000188E8();
  v194 = type metadata accessor for UUID();
  v39 = sub_100006FBC(v194);
  v192 = v40;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39);
  sub_1000188C4();
  v193 = v43;
  sub_1000188E8();
  v44 = type metadata accessor for WeatherAlert();
  v45 = sub_100006FBC(v44);
  v189 = v46;
  v48 = *(v47 + 64);
  __chkstk_darwin(v45);
  sub_1000188B0();
  v186 = v49;
  __chkstk_darwin(v50);
  v52 = &v156 - v51;
  v166 = type metadata accessor for SevereNotificationSubscription();
  v53 = sub_100018904(v166);
  v55 = *(v54 + 64);
  __chkstk_darwin(v53);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v56);
  v58 = &v156 - v57;
  v59 = type metadata accessor for Logger();
  v60 = sub_100006FBC(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  __chkstk_darwin(v60);
  v66 = &v156 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Location();
  v68 = sub_100006FBC(v67);
  v184 = v69;
  v185 = v68;
  v71 = *(v70 + 64);
  __chkstk_darwin(v68);
  sub_1000188C4();
  v187 = v72;
  sub_100037B5C();
  static Logger.notifications.getter();
  v73 = a2;
  sub_10001868C(a2, v58);

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();

  v173 = v75;
  v76 = os_log_type_enabled(v74, v75);
  v195 = v44;
  v180 = v73;
  if (v76)
  {
    v159 = v58;
    v160 = v66;
    v161 = v62;
    v162 = v59;
    v77 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v196 = v156;
    v157 = v77;
    *v77 = 136446723;
    v78 = *(a1 + 16);
    v163 = a1;
    v158 = v74;
    if (v78)
    {
      v79 = *(v189 + 16);
      v80 = a1 + ((*(v189 + 80) + 32) & ~*(v189 + 80));
      v190 = *(v189 + 72);
      v191 = v79;
      v81 = (v192 + 8);
      v192 = v189 + 16;
      v82 = (v189 + 8);
      v83 = _swiftEmptyArrayStorage;
      do
      {
        v191(v52, v80, v44);
        v84 = v193;
        WeatherAlert.id.getter();
        v85 = UUID.uuidString.getter();
        v87 = v86;
        (*v81)(v84, v194);
        (*v82)(v52, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = v83[2];
          sub_1000188F4();
          sub_10005B5C4();
          v83 = v92;
        }

        v89 = v83[2];
        v88 = v83[3];
        if (v89 >= v88 >> 1)
        {
          sub_10001892C(v88);
          sub_10005B5C4();
          v83 = v93;
        }

        v83[2] = v89 + 1;
        v90 = &v83[2 * v89];
        v90[4] = v85;
        v90[5] = v87;
        v80 += v190;
        --v78;
        v44 = v195;
      }

      while (v78);
    }

    v99 = Array.description.getter();
    v101 = v100;

    v102 = sub_10000D9FC(v99, v101, &v196);

    v103 = v157;
    *(v157 + 1) = v102;
    *(v103 + 6) = 2160;
    *(v103 + 14) = 1752392040;
    *(v103 + 11) = 2081;
    v104 = v159;
    sub_1000383B8();
    v106 = v105;
    v108 = v107;
    sub_1000186F0(v104);
    v109 = sub_10000D9FC(v106, v108, &v196);

    *(v103 + 3) = v109;
    v110 = v158;
    _os_log_impl(&_mh_execute_header, v158, v173, "Creating notification content; alerts=%{public}s, subscription=%{private,mask.hash}s", v103, 0x20u);
    swift_arrayDestroy();
    sub_10000FA7C();
    sub_10000FA7C();

    (*(v161 + 8))(v160, v162);
    v94 = v188;
    v95 = v189;
    v97 = v180;
    v98 = v186;
    v96 = v183;
    a1 = v163;
  }

  else
  {

    sub_1000186F0(v58);
    (*(v62 + 8))(v66, v59);
    v94 = v188;
    v95 = v189;
    v96 = v183;
    v97 = v73;
    v98 = v186;
  }

  v111 = v182;
  sub_100015EA8(a1);
  if (sub_100007374(v111, 1, v44) != 1)
  {
    (*(v95 + 32))(v98, v111, v44);
    v115 = v181;
    v194 = sub_10001739C(v187, v97, v181, a1);
    v116 = v174;
    WeatherAlert.severity.getter();
    v118 = v176;
    v117 = v177;
    v119 = v175;
    (*(v176 + 104))(v175, enum case for Severity.extreme(_:), v177);
    v120 = sub_100016554();
    v121 = *(v118 + 8);
    v121(v119, v117);
    v121(v116, v117);
    if ((v120 & 1) == 0)
    {
      goto LABEL_26;
    }

    v122 = v172;
    WeatherAlert.urgency.getter();
    v123 = v168;
    v124 = v171;
    v125 = v170;
    (*(v168 + 104))(v171, enum case for Urgency.immediate(_:), v170);
    sub_100006BD4(v124, 0, 1, v125);
    v126 = *(v96 + 48);
    v127 = v169;
    sub_10001874C(v122, v169);
    sub_10001874C(v124, v127 + v126);
    sub_100018968(v127);
    if (v130)
    {
      sub_100018950(v124);
      sub_100018950(v122);
      sub_100018968(v127 + v126);
      v128 = v180;
      if (v130)
      {
        sub_100018858(v127, &qword_1000A3E28, &qword_1000817A0);
        v98 = v186;
        v115 = v181;
LABEL_25:
        v135 = v165;
        sub_10001868C(v128, v165);
        LODWORD(v193) = swift_getEnumCaseMultiPayload() != 1;
        sub_1000186F0(v135);
        goto LABEL_27;
      }
    }

    else
    {
      v129 = v167;
      sub_10001874C(v127, v167);
      sub_100018968(v127 + v126);
      v128 = v180;
      if (!v130)
      {
        v131 = v127 + v126;
        v132 = v164;
        (*(v123 + 32))(v164, v131, v125);
        sub_1000187BC(&qword_1000A3E38, &type metadata accessor for Urgency);
        sub_100018944();
        v133 = dispatch thunk of static Equatable.== infix(_:_:)();
        v134 = *(v123 + 8);
        v134(v132, v125);
        sub_100018858(v171, &qword_1000A3E28, &qword_1000817A0);
        sub_100018858(v172, &qword_1000A3E28, &qword_1000817A0);
        v134(v129, v125);
        sub_100018858(v127, &qword_1000A3E28, &qword_1000817A0);
        v98 = v186;
        v115 = v181;
        if (v133)
        {
          goto LABEL_25;
        }

LABEL_26:
        LODWORD(v193) = 0;
        goto LABEL_27;
      }

      sub_100018950(v171);
      sub_100018950(v172);
      (*(v123 + 8))(v129, v125);
    }

    sub_100018858(v127, &qword_1000A3E20, &unk_100080CD0);
    LODWORD(v193) = 0;
    v98 = v186;
    v115 = v181;
LABEL_27:
    v136 = v179;
    sub_100018540(v179);
    v137 = v98;
    v138 = v115[6];
    sub_1000032B8(v115 + 2, v115[5]);
    v192 = dispatch thunk of SevereNotificationStringBuilderType.title(for:)();
    v140 = v139;
    v141 = v115[6];
    sub_1000032B8(v115 + 2, v115[5]);
    v142 = v187;
    v143 = dispatch thunk of SevereNotificationStringBuilderType.subtitle(for:)();
    v145 = v144;
    v146 = v115[6];
    sub_1000032B8(v115 + 2, v115[5]);
    v147 = dispatch thunk of SevereNotificationStringBuilderType.body(for:at:timestamp:)();
    v149 = v148;
    v150 = Location.id.getter();
    v152 = v151;
    (*(v189 + 8))(v137, v195);
    (*(v184 + 8))(v142, v185);
    v153 = v188;
    *v188 = v192;
    v153[1] = v140;
    v153[2] = v143;
    v153[3] = v145;
    v153[4] = v147;
    v153[5] = v149;
    v153[6] = v150;
    v153[7] = v152;
    v153[8] = v194;
    *(v153 + 72) = v193;
    v154 = type metadata accessor for SevereNotificationContent();
    sub_10000F924(v136, v153 + *(v154 + 40));
    v113 = v153;
    v114 = 0;
    v112 = v154;
    return sub_100006BD4(v113, v114, 1, v112);
  }

  (*(v184 + 8))(v187, v185);
  sub_100018858(v111, &qword_1000A3E30, &unk_100080CE0);
  v112 = type metadata accessor for SevereNotificationContent();
  v113 = v94;
  v114 = 1;
  return sub_100006BD4(v113, v114, 1, v112);
}

Swift::Int *sub_10001739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = type metadata accessor for TimeZone();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v45);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SevereNotificationSubscription();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Location.id.getter();
  *(&v49 + 1) = &type metadata for String;
  *&v48 = v14;
  *(&v48 + 1) = v15;
  sub_100018804(&v48, v47);
  swift_isUniquelyReferenced_nonNull_native();
  v46 = &_swiftEmptyDictionarySingleton;
  sub_10002C1A4();
  v16 = v46;
  sub_10001868C(a2, v13);
  LOBYTE(a2) = swift_getEnumCaseMultiPayload() == 1;
  sub_1000186F0(v13);
  *(&v49 + 1) = &type metadata for Bool;
  LOBYTE(v48) = a2;
  sub_100018804(&v48, v47);
  swift_isUniquelyReferenced_nonNull_native();
  v46 = v16;
  sub_10002C1A4();
  v17 = v46;
  v18 = sub_100017924(a4);
  if (v19)
  {
    *(&v49 + 1) = &type metadata for String;
    *&v48 = v18;
    *(&v48 + 1) = v19;
    sub_100018804(&v48, v47);
    swift_isUniquelyReferenced_nonNull_native();
    v46 = v17;
    sub_10002C1A4();
    v17 = v46;
  }

  else
  {
    v20 = sub_100074DF4(0x55736C6961746544, 0xEA00000000004C52);
    if (v21)
    {
      v22 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v47[0] = v17;
      v24 = v17[3];
      sub_100003020(&qword_1000A3E50, &qword_100080CF0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v24);
      v17 = *&v47[0];
      v25 = *(*(*&v47[0] + 48) + 16 * v22 + 8);

      sub_100018804((v17[7] + 32 * v22), &v48);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
    }

    sub_100018858(&v48, &unk_1000A3880, &qword_1000808A8);
  }

  v26 = Location.name.getter();
  *(&v49 + 1) = &type metadata for String;
  *&v48 = v26;
  *(&v48 + 1) = v27;
  sub_100018804(&v48, v47);
  swift_isUniquelyReferenced_nonNull_native();
  v46 = v17;
  sub_10002C1A4();
  v28 = v46;
  Location.coordinate.getter();
  *(&v49 + 1) = &type metadata for Double;
  *&v48 = v29;
  sub_100018804(&v48, v47);
  swift_isUniquelyReferenced_nonNull_native();
  v46 = v28;
  sub_10002C1A4();
  v30 = v46;
  Location.coordinate.getter();
  *(&v49 + 1) = &type metadata for Double;
  *&v48 = v31;
  sub_100018804(&v48, v47);
  swift_isUniquelyReferenced_nonNull_native();
  v46 = v30;
  sub_10002C1A4();
  v32 = v46;
  Location.timeZone.getter();
  v33 = TimeZone.identifier.getter();
  v35 = v34;
  (*(v6 + 8))(v9, v45);
  *(&v49 + 1) = &type metadata for String;
  *&v48 = v33;
  *(&v48 + 1) = v35;
  sub_100018804(&v48, v47);
  swift_isUniquelyReferenced_nonNull_native();
  v46 = v32;
  sub_10002C1A4();
  v36 = v46;
  type metadata accessor for Capabilities();
  if (static Capabilities.isInternalBuild()())
  {
    sub_100018814();
    v37 = static NSUserDefaults.weatherSharedInternal.getter();
    if (v37)
    {
      v38 = v37;
      v39 = String._bridgeToObjectiveC()();
      v40 = [v38 stringForKey:v39];

      if (v40)
      {
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        *(&v49 + 1) = &type metadata for String;
        *&v48 = v41;
        *(&v48 + 1) = v43;
        sub_100018804(&v48, v47);
        swift_isUniquelyReferenced_nonNull_native();
        v46 = v36;
        sub_10002C1A4();
        return v46;
      }
    }
  }

  return v36;
}

uint64_t sub_100017924(uint64_t a1)
{
  v148 = type metadata accessor for URLQueryItem();
  v2 = sub_100006FBC(v148);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_1000188B0();
  sub_1000188D8();
  v8 = __chkstk_darwin(v7);
  v10 = &v132 - v9;
  __chkstk_darwin(v8);
  sub_1000188D8();
  __chkstk_darwin(v11);
  sub_100018938();
  v149 = v12;
  v13 = sub_100003020(&qword_1000A3E58, &qword_100080CF8);
  sub_100006FF0(v13);
  v15 = *(v14 + 64);
  sub_100018920();
  __chkstk_darwin(v16);
  sub_100018914();
  v142 = v17;
  sub_1000188E8();
  v143 = type metadata accessor for URLComponents();
  v18 = sub_100006FBC(v143);
  v141 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_1000188C4();
  v140 = v22;
  sub_1000188E8();
  v157 = type metadata accessor for UUID();
  v23 = sub_100006FBC(v157);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  sub_1000188C4();
  v156 = v28;
  sub_1000188E8();
  v159 = type metadata accessor for WeatherAlert();
  v29 = sub_100006FBC(v159);
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v29);
  sub_1000188B0();
  v158 = v34;
  __chkstk_darwin(v35);
  sub_100018938();
  v155 = v36;
  sub_1000188E8();
  v37 = type metadata accessor for Logger();
  v38 = sub_100006FBC(v37);
  v145 = v39;
  v146 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v42);
  sub_1000188D8();
  __chkstk_darwin(v43);
  v45 = &v132 - v44;
  v46 = *(a1 + 16);
  v47 = _swiftEmptyArrayStorage;
  v147 = v4;
  v136 = v10;
  v144 = a1;
  v150 = v31;
  if (v46)
  {
    v134 = &v132 - v44;
    v160 = _swiftEmptyArrayStorage;
    sub_100014558(0, v46, 0);
    v47 = v160;
    v49 = *(v31 + 16);
    v48 = v31 + 16;
    v50 = a1 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v152 = *(v48 + 56);
    v153 = v49;
    v151 = (v25 + 8);
    v154 = v48;
    v51 = (v48 - 8);
    v135 = v46;
    v52 = v46;
    v53 = v155;
    do
    {
      v54 = v159;
      v153(v53, v50, v159);
      v55 = v156;
      WeatherAlert.id.getter();
      v56 = UUID.uuidString.getter();
      v58 = v57;
      (*v151)(v55, v157);
      (*v51)(v53, v54);
      v160 = v47;
      v4 = v47[2];
      v59 = v47[3];
      if (v4 >= v59 >> 1)
      {
        v61 = sub_10001892C(v59);
        sub_100014558(v61, v4 + 1, 1);
        v47 = v160;
      }

      v47[2] = v4 + 1;
      v60 = &v47[2 * v4];
      v60[4] = v56;
      v60[5] = v58;
      v50 += v152;
      --v52;
    }

    while (v52);
    v46 = v135;
    v45 = v134;
  }

  static Logger.notifications.getter();

  v62 = v47;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  v65 = os_log_type_enabled(v63, v64);
  v156 = v62;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v160 = v67;
    *v66 = 136315138;
    v68 = Array.description.getter();
    v4 = v69;
    v70 = sub_10000D9FC(v68, v69, &v160);

    *(v66 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v63, v64, "Creating weather alert details URL based with identifiers: %s", v66, 0xCu);
    sub_100006994(v67);
    sub_10000FA7C();
    sub_10000FA7C();
  }

  v155 = *(v145 + 8);
  v155(v45, v146);
  if (v46)
  {
    v157 = *(v150 + 16);
    v71 = v144 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
    v72 = *(v150 + 72);
    v73 = (v150 + 8);
    v74 = _swiftEmptyArrayStorage;
    v150 += 16;
    do
    {
      v75 = v158;
      v76 = v159;
      v157(v158, v71, v159);
      v77 = WeatherAlert.detailsUrl.getter();
      v4 = v78;
      (*v73)(v75, v76);
      if (v4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = v74[2];
          sub_1000188F4();
          sub_10005B5C4();
          v74 = v83;
        }

        v80 = v74[2];
        v79 = v74[3];
        if (v80 >= v79 >> 1)
        {
          sub_10001892C(v79);
          sub_10005B5C4();
          v74 = v84;
        }

        v74[2] = v80 + 1;
        v81 = &v74[2 * v80];
        v81[4] = v77;
        v81[5] = v4;
      }

      v71 += v72;
      --v46;
    }

    while (v46);
  }

  else
  {
    v74 = _swiftEmptyArrayStorage;
  }

  if (!v74[2])
  {

    v98 = v138;
    static Logger.notifications.getter();
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&_mh_execute_header, v99, v100, "None of the weather alerts specify detail URLs", v101, 2u);
      sub_10000FA7C();
    }

    v102 = v98;
    goto LABEL_46;
  }

  v86 = v74[4];
  v85 = v74[5];

  v87 = v142;
  sub_100018944();
  URLComponents.init(string:)();
  v88 = v143;
  if (sub_100007374(v87, 1, v143) == 1)
  {

    sub_100018858(v87, &qword_1000A3E58, &qword_100080CF8);
    v89 = v137;
    static Logger.notifications.getter();

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v160 = v93;
      *v92 = 136315138;
      v94 = sub_100018944();
      v97 = sub_10000D9FC(v94, v95, v96);

      *(v92 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v90, v91, "Failed to construct components from URL: %s", v92, 0xCu);
      sub_100006994(v93);
      sub_10000FA7C();
      sub_10000FA7C();
    }

    else
    {
    }

    v102 = v89;
LABEL_46:
    v155(v102, v146);
    return 0;
  }

  (*(v141 + 32))(v140, v87, v88);
  v103 = URLComponents.queryItems.getter();
  if (v103)
  {
    v104 = v103;
    v105 = 0;
    v106 = *(v103 + 16);
    v107 = v148;
    v159 = (v147 + 32);
    v108 = (v147 + 8);
    for (i = _swiftEmptyArrayStorage; ; v158(i + v4 + v116 * v110, v133, v107))
    {
      while (1)
      {
        if (v106 == v105)
        {

          v4 = v147;
          v121 = v136;
          goto LABEL_48;
        }

        if (v105 >= *(v104 + 16))
        {
          __break(1u);
LABEL_56:
          v129 = i[2];
          sub_1000188F4();
          sub_10005B4EC();
          i = v130;
LABEL_50:
          v123 = i[2];
          if (v123 >= i[3] >> 1)
          {
            sub_10005B4EC();
            i = v131;
          }

          i[2] = v123 + 1;
          (*(v4 + 32))(i + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v123, v139, v148);
          goto LABEL_53;
        }

        v4 = (*(v147 + 80) + 32) & ~*(v147 + 80);
        v110 = *(v147 + 72);
        (*(v147 + 16))(v149, v104 + v4 + v110 * v105, v107);
        if (URLQueryItem.name.getter() != 7562345 || v111 != 0xE300000000000000)
        {
          break;
        }

LABEL_42:
        v107 = v148;
        (*v108)(v149, v148);
        ++v105;
      }

      v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v113)
      {
        goto LABEL_42;
      }

      v107 = v148;
      v158 = *v159;
      v158(v133, v149, v148);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000145DC(0, i[2] + 1, 1);
        v107 = v148;
        i = v160;
      }

      v116 = i[2];
      v115 = i[3];
      v117 = v116 + 1;
      if (v116 >= v115 >> 1)
      {
        v118 = sub_10001892C(v115);
        v120 = v119;
        sub_1000145DC(v118, v119, 1);
        v117 = v120;
        v107 = v148;
        i = v160;
      }

      ++v105;
      i[2] = v117;
    }
  }

  i = 0;
  v121 = v136;
  v4 = v147;
LABEL_48:
  v160 = v156;
  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  sub_100014578();
  BidirectionalCollection<>.joined(separator:)();

  URLQueryItem.init(name:value:)();

  if (i)
  {
    (*(v4 + 16))(v139, v121, v148);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

LABEL_53:

  v124 = v140;
  URLComponents.queryItems.setter();
  v122 = URLComponents.string.getter();
  v125 = *(v4 + 8);
  v126 = sub_100018944();
  v127(v126);
  (*(v141 + 8))(v124, v143);

  return v122;
}

uint64_t sub_100018540@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  WeatherAlert.expireTime.getter();
  Date.init()();
  v10 = static Date.> infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v7, v2);
  v11(v9, v2);
  if (v10)
  {
    WeatherAlert.expireTime.getter();
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return sub_100006BD4(a1, v12, 1, v2);
}

uint64_t sub_10001868C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SevereNotificationSubscription();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000186F0(uint64_t a1)
{
  v2 = type metadata accessor for SevereNotificationSubscription();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001874C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A3E28, &qword_1000817A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000187BC(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_100018804(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100018814()
{
  result = qword_1000A3E48;
  if (!qword_1000A3E48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A3E48);
  }

  return result;
}

uint64_t sub_100018858(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003020(a2, a3);
  sub_100018904(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100018950(uint64_t a1)
{

  return sub_100018858(a1, v1, v2);
}

uint64_t sub_100018988(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = _swiftEmptyArrayStorage;
  v18 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_100006930(v8, v20);
    v10 = v5(v20);
    if (v3)
    {
      sub_100006994(v20);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_100006D78(v20, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = v9[2];
        v13 = sub_100031050();
        sub_100014518(v13, v14, v15);
        v9 = v21;
      }

      v17 = v9[2];
      v16 = v9[3];
      if (v17 >= v16 >> 1)
      {
        sub_100014518((v16 > 1), v17 + 1, 1);
        v9 = v21;
      }

      v9[2] = v17 + 1;
      result = sub_100006D78(v19, &v9[5 * v17 + 4]);
      v5 = v18;
    }

    else
    {
      result = sub_100006994(v20);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100018AE4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v5 = 0;
  v19 = *(a3 + 16);
  v6 = (a3 + 64);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v19 == v5)
    {
      goto LABEL_15;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v20 = v5;
    v8 = *(v6 - 4);
    v9 = *(v6 - 3);
    v10 = *(v6 - 2);
    v11 = *(v6 - 1);
    v12 = *v6;
    v21[0] = v8;
    v21[1] = v9;
    v21[2] = v10;
    v21[3] = v11;
    v21[4] = v12;

    v13 = v18(v21);
    if (v3)
    {

LABEL_15:

      return v7;
    }

    if (v13)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v22 = v7;
      if ((result & 1) == 0)
      {
        result = sub_100014634(0, v7[2] + 1, 1);
        v7 = v22;
      }

      v15 = v7[2];
      v14 = v7[3];
      v3 = 0;
      if (v15 >= v14 >> 1)
      {
        result = sub_100014634((v14 > 1), v15 + 1, 1);
        v3 = 0;
        v7 = v22;
      }

      v7[2] = v15 + 1;
      v16 = &v7[5 * v15];
      v16[4] = v8;
      v16[5] = v9;
      v16[6] = v10;
      v16[7] = v11;
      v16[8] = v12;
      v4 = a3;
    }

    else
    {

      v3 = 0;
    }

    v6 += 5;
    v5 = v20 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100018CB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v30 = a3;
  v32 = a2;
  v33 = type metadata accessor for WeatherAlert();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v33);
  v28 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v12 = &v24 - v11;
  v13 = 0;
  v31 = *(a1 + 16);
  v29 = v5 + 16;
  v14 = (v5 + 8);
  v27 = (v5 + 32);
  v15 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v31 == v13)
    {

LABEL_14:

      return v15;
    }

    if (v13 >= *(v10 + 16))
    {
      break;
    }

    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = *(v5 + 72);
    v18 = v10;
    (*(v5 + 16))(v12, v10 + v16 + v17 * v13, v33);
    v19 = sub_100023474(v12, v32, v30);
    if (v3)
    {
      (*v14)(v12, v33);

      goto LABEL_14;
    }

    if (v19)
    {
      v26 = *v27;
      v26(v28, v12, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100014674(0, v15[2] + 1, 1);
        v15 = v34;
      }

      v22 = v15[2];
      v21 = v15[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v24 = v15[2];
        v25 = v22 + 1;
        sub_100014674(v21 > 1, v22 + 1, 1);
        v22 = v24;
        v23 = v25;
        v15 = v34;
      }

      ++v13;
      v15[2] = v23;
      result = (v26)(v15 + v16 + v22 * v17, v28, v33);
      v10 = v18;
    }

    else
    {
      result = (*v14)(v12, v33);
      ++v13;
      v10 = v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100018F68(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v41 = type metadata accessor for WeatherAlert();
  v5 = sub_100006FBC(v41);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_1000188B0();
  v35 = v10;
  sub_100030F24();
  result = __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = 0;
  v40 = *(a3 + 16);
  v37 = v7 + 16;
  v16 = (v7 + 8);
  v34 = (v7 + 32);
  v36 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v40 == v15)
    {

      return v36;
    }

    if (v15 >= *(a3 + 16))
    {
      break;
    }

    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v18 = *(v7 + 72);
    v19 = a3;
    (*(v7 + 16))(v14, a3 + v17 + v18 * v15, v41);
    v20 = v38(v14);
    if (v3)
    {
      (*v16)(v14, v41);
      v31 = v36;

      return v31;
    }

    if (v20)
    {
      v33 = *v34;
      v33(v35, v14, v41);
      v21 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v21;
      if (isUniquelyReferenced_nonNull_native)
      {
        v23 = v21;
      }

      else
      {
        v24 = v21[2];
        v25 = sub_100031050();
        sub_100014674(v25, v26, v27);
        v23 = v42;
      }

      a3 = v19;
      v29 = v23[2];
      v28 = v23[3];
      v30 = (v29 + 1);
      if (v29 >= v28 >> 1)
      {
        v36 = (v29 + 1);
        v32 = v29;
        sub_100014674(v28 > 1, v29 + 1, 1);
        v30 = v36;
        v29 = v32;
        a3 = v19;
        v23 = v42;
      }

      ++v15;
      v23[2] = v30;
      v36 = v23;
      result = (v33)(v23 + v17 + v29 * v18, v35, v41);
    }

    else
    {
      result = (*v16)(v14, v41);
      ++v15;
    }
  }

  __break(1u);
  return result;
}

void *sub_100019204(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t, uint64_t))
{
  v9 = sub_100003020(&qword_1000A40C0, &qword_100080FD8);
  sub_100006FF0(v9);
  v11 = *(v10 + 64);
  sub_100018920();
  __chkstk_darwin(v12);
  v14 = v38 - v13;
  v15 = sub_100003020(&qword_1000A3FE8, &qword_100080F28);
  v16 = sub_100006FBC(v15);
  v40 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_1000188B0();
  v42 = v20;
  sub_100030F24();
  __chkstk_darwin(v21);
  sub_100018938();
  v41 = v22;
  v23 = 0;
  v24 = *(a1 + 16);
  v43 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v24 == v23)
    {

      return v43;
    }

    v25 = type metadata accessor for SevereNotificationSubscription();
    sub_10000E960(v25);
    a4(a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v27 + 72) * v23, a2, a3);
    if (v4)
    {
      break;
    }

    if (sub_100007374(v14, 1, v15) == 1)
    {
      sub_10000E904(v14, &qword_1000A40C0, &qword_100080FD8);
      ++v23;
    }

    else
    {
      sub_10002FEFC();
      sub_10002FEFC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10005B770(0, v43[2] + 1, 1, v43);
        v43 = v34;
      }

      v29 = v43[2];
      v28 = v43[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v38[1] = v43[2];
        v39 = v29 + 1;
        sub_10005B770(v28 > 1, v29 + 1, 1, v43);
        v30 = v39;
        v43 = v35;
      }

      ++v23;
      v31 = v43;
      v43[2] = v30;
      v32 = v31 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
      v33 = *(v40 + 72);
      sub_10002FEFC();
    }
  }

  v36 = v43;

  return v36;
}

uint64_t sub_100019500()
{
  *(v0 + 16) = static NotificationsActor.shared.getter();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100019598;

  return sub_10001973C();
}

uint64_t sub_100019598()
{
  sub_100030C4C();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v3 = *v0;
  sub_10000FA6C();
  *v4 = v3;

  type metadata accessor for NotificationsActor.Actor();
  sub_100030B44();
  sub_1000306FC(v5, 255, v6);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000196E4, v8, v7);
}

uint64_t sub_1000196E4()
{
  sub_100030C4C();
  v1 = *(v0 + 16);

  sub_100030C70();

  return v2();
}

uint64_t sub_10001973C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for PredictedLocationsFeatureState();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = *(*(sub_100003020(&qword_1000A3FA8, &qword_100080F00) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v10;
  v1[15] = v9;

  return _swift_task_switch(sub_100019918, v10, v9);
}

uint64_t sub_100019918()
{
  sub_100030E20();
  v1 = v0[2];
  v2 = v1[45];
  v3 = v1[46];
  sub_100030DA0(v1 + 42);
  sub_100030CE0();
  if (dispatch thunk of NotificationAuthorizationStatusProviderType.hasNotificationAuthorization()())
  {
    v4 = v0[2];
    v5 = v4[30];
    v6 = v4[31];
    sub_100030DA0(v4 + 27);
    static Location.currentLocationID.getter();
    v0[16] = v7;
    v8 = async function pointer to dispatch thunk of NotificationSubscriptionManagerType.subscription(with:)[1];
    swift_task_alloc();
    sub_100030CD4();
    v0[17] = v9;
    *v9 = v10;
    v9[1] = sub_100019A70;
    v11 = v0[12];
    sub_100030CBC();

    return dispatch thunk of NotificationSubscriptionManagerType.subscription(with:)();
  }

  else
  {
    v12 = v0[13];
    v13 = v0[2];

    sub_100024810();
    v15 = v0[11];
    v14 = v0[12];
    v17 = v0[9];
    v16 = v0[10];
    v19 = v0[5];
    v18 = v0[6];

    sub_100030C70();

    return v20();
  }
}

uint64_t sub_100019A70()
{
  sub_100030C58();
  sub_100030FBC();
  v3 = v1;
  sub_10000FA6C();
  *v4 = v1;
  v5 = *(v1 + 136);
  *v4 = *v2;

  sub_100031030();
  v7 = *(v6 + 128);
  if (v0)
  {

    v8 = *(v3 + 112);
    v9 = *(v3 + 120);
    v10 = sub_10001A20C;
  }

  else
  {
    v11 = *(v6 + 128);

    v8 = *(v3 + 112);
    v9 = *(v3 + 120);
    v10 = sub_100019BA0;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_100019BA0()
{
  sub_100030C58();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  sub_10002FFD0();
  v3 = type metadata accessor for NotificationSubscription();
  v4 = sub_100031110(v2);
  v5 = *(v0 + 88);
  if (v4 == 1)
  {
    sub_10000E904(*(v0 + 88), &qword_1000A3FA8, &qword_100080F00);
    v6 = 0;
  }

  else
  {
    v6 = NotificationSubscription.severeEnabled.getter();
    sub_100030C40(v3);
    v8 = *(v7 + 8);
    v9 = sub_100030F18();
    v10(v9);
  }

  *(v0 + 152) = v6 & 1;
  v11 = *(v0 + 16);
  v12 = v11[58];
  v13 = v11[59];
  sub_100030DA0(v11 + 55);
  v14 = async function pointer to dispatch thunk of PredictedLocationsFeatureStateManagerType.severeNotificationFeatureState()[1];
  swift_task_alloc();
  sub_100030CD4();
  *(v0 + 144) = v15;
  *v15 = v16;
  v17 = sub_100030C7C(v15);

  return dispatch thunk of PredictedLocationsFeatureStateManagerType.severeNotificationFeatureState()(v17, v18, v19);
}

uint64_t sub_100019CBC()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *(v0 + 144);
  v3 = *v1;
  sub_10000FA6C();
  *v4 = v3;

  sub_100030E68();
  v6 = *(v5 + 120);
  v7 = *(v0 + 112);

  return _swift_task_switch(sub_100019DC8, v7, v6);
}

uint64_t sub_100019DC8()
{
  v63 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  v7 = *(v6 + 104);
  v8 = sub_100031064();
  v9(v8);
  sub_100030F18();
  v10 = static PredictedLocationsFeatureState.== infix(_:_:)();
  v11 = *(v6 + 8);
  v12 = sub_100030CE0();
  v11(v12);
  v13 = sub_100030E5C();
  v11(v13);
  if ((v1 & 1) == 0 && (v10 & 1) == 0)
  {
    v14 = *(v0 + 40);
    static Logger.notifications.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = sub_100031158(v16);
    v19 = *(v0 + 32);
    v18 = *(v0 + 40);
    v20 = *(v0 + 24);
    if (v17)
    {
      v21 = sub_100031140();
      v62 = swift_slowAlloc();
      *v21 = 136446466;
      *(v21 + 4) = sub_10000D9FC(0x65736C6166, 0xE500000000000000, &v62);
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_10000D9FC(0x65736C6166, 0xE500000000000000, &v62);
      _os_log_impl(&_mh_execute_header, v15, v16, "Removing observer of location manager; currentLocationSevereEnabled=%{public}s predictedLocationsSevereEnabled=%{public}s", v21, 0x16u);
      swift_arrayDestroy();
      sub_100030D84();
      sub_10000FA7C();
    }

    v22 = *(v19 + 8);
    v23 = sub_100030CE0();
    v24(v23);
    v25 = *(v0 + 96);
    v26 = *(v0 + 16);
    sub_100024810();
    v27 = v25;
    goto LABEL_8;
  }

  v28 = *(v0 + 16);
  if (*(v28 + 496))
  {
    v27 = *(v0 + 96);
LABEL_8:
    sub_10000E904(v27, &qword_1000A3FA8, &qword_100080F00);
    goto LABEL_25;
  }

  v29 = *(v0 + 48);
  static Logger.notifications.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (sub_100031158(v31))
  {
    v32 = *(v0 + 152);
    v59 = *(v0 + 32);
    v60 = *(v0 + 24);
    v61 = *(v0 + 48);
    v33 = sub_100031140();
    v62 = swift_slowAlloc();
    *v33 = 136446466;
    if (v32)
    {
      v34 = 1702195828;
    }

    else
    {
      v34 = 0x65736C6166;
    }

    if (v32)
    {
      v35 = 0xE400000000000000;
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    v36 = sub_10000D9FC(v34, v35, &v62);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2082;
    if (v10)
    {
      v37 = 1702195828;
    }

    else
    {
      v37 = 0x65736C6166;
    }

    if (v10)
    {
      v38 = 0xE400000000000000;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    v39 = sub_10000D9FC(v37, v38, &v62);

    *(v33 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "Adding observer to location manager; currentLocationSevereEnabled=%{public}s predictedLocationsSevereEnabled=%{public}s", v33, 0x16u);
    swift_arrayDestroy();
    sub_10000FA7C();
    sub_10000FA7C();

    (*(v59 + 8))(v61, v60);
  }

  else
  {
    v40 = *(v0 + 48);
    v41 = *(v0 + 24);
    v42 = *(v0 + 32);

    v43 = sub_100030CAC();
    v44(v43);
  }

  v45 = *(v0 + 96);
  v46 = *(v0 + 16);
  v47 = v46[36];
  sub_1000032B8(v46 + 32, v46[35]);
  sub_100030CEC();
  sub_1000306FC(v48, v49, v50);
  dispatch thunk of LocationManagerType.addObserver(_:)();
  sub_10000E904(v45, &qword_1000A3FA8, &qword_100080F00);
  *(v28 + 496) = 1;
LABEL_25:
  v52 = *(v0 + 88);
  v51 = *(v0 + 96);
  v54 = *(v0 + 72);
  v53 = *(v0 + 80);
  v56 = *(v0 + 40);
  v55 = *(v0 + 48);

  sub_100030C70();

  return v57();
}