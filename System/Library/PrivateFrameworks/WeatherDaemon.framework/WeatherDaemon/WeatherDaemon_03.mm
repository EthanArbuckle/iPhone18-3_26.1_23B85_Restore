uint64_t sub_10004C9B4()
{
  sub_100006994((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_10004CA18(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_10004CA60(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithKey:v5 ascending:a3 & 1];

  return v6;
}

id sub_10004CACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DateInterval();
  isa = 0;
  if (sub_100007374(a1, 1, v8) != 1)
  {
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(*(v8 - 8) + 8))(a1, v8);
  }

  if (a3)
  {
    sub_100030944(0, &qword_1000A49A8, CLLocation_ptr);
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  sub_100030944(0, &qword_1000A49A0, NSSortDescriptor_ptr);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v4 initWithForecastWindowDateInterval:isa filterContextTypeMask:a2 filterLocations:v10.super.isa resultSortDescriptors:v11];

  return v12;
}

uint64_t sub_10004CC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_10004CCA8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_10004CD14(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_10004CE28(uint64_t a1)
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = sub_100006FBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000E970();
  v9 = v8 - v7;
  v23 = type metadata accessor for DispatchQoS();
  v10 = sub_100006FBC(v23);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000E970();
  v17 = v16 - v15;
  v18 = type metadata accessor for MachService();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_10000E970();
  v20 = qword_1000A49B0;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  type metadata accessor for Settings.Daemon.Performance();
  static Settings.Daemon.Performance.clearCachesWithinXPCActivity.getter();
  SettingReader.read<A>(_:)();

  *(v24 + v20) = v26;
  *(v24 + qword_1000A49B8) = a1;

  static MachServices.Database.getter();
  sub_100005360();
  static DispatchQoS.background.getter();
  sub_10004E404();
  sub_100003020(&qword_1000A4A18, &qword_100081C38);
  sub_10004E45C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static OS_dispatch_queue.schedulingQueue(named:attributes:qualityOfService:)();
  (*(v4 + 8))(v9, v1);
  (*(v12 + 8))(v17, v23);
  v21 = XPCDaemonService.init(machService:targetQueue:)();

  return v21;
}

uint64_t sub_10004D0C4()
{
  PartyProcessXCPDaemonConnectionPredicate = type metadata accessor for FirstPartyProcessXCPDaemonConnectionPredicate();
  v1 = sub_100006FBC(PartyProcessXCPDaemonConnectionPredicate);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10000E970();
  v8 = v7 - v6;
  static XPCDaemonConnectionPredicate<>.firstPartyProcess.getter();
  dispatch thunk of XPCDaemonService.evaluate<each A>(_:is:)();
  return (*(v3 + 8))(v8, PartyProcessXCPDaemonConnectionPredicate);
}

uint64_t sub_10004D208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1000A3258 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002FE8(v6, static Logger.daemon);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Performing database management activities", v9, 2u);
  }

  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = a1;
  v10[4] = a2;
  v11 = v3;

  dispatch thunk of XPCDaemonService.enqueue(_:)();
}

uint64_t sub_10004D354(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v32 = a2;
  v3 = type metadata accessor for Database.Location();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + qword_1000A49B0) == 1)
  {
    if (qword_1000A3258 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100002FE8(v8, static Logger.daemon);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Performing pruning of expired Weather data caches", v11, 2u);
    }

    if (*(a1 + qword_1000A49B8))
    {
      ReferenceCountedLazy.value(_:)();
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Finished pruning of expired Weather data caches", v14, 2u);
    }
  }

  if (qword_1000A3258 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100002FE8(v15, static Logger.daemon);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Performing incremental vacuum on NotificationStore database", v18, 2u);
  }

  type metadata accessor for NotificationStore();
  static NotificationStore.location.getter();
  sub_10004D86C(v7);
  v19 = *(v4 + 8);
  v19(v7, v3);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Performing incremental vacuum on GeocodeStore database", v22, 2u);
  }

  type metadata accessor for GeocodeStore();
  static GeocodeStore.location.getter();
  sub_10004D86C(v7);
  v19(v7, v3);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Performing incremental vacuum on LocationMetadataStore database", v25, 2u);
  }

  type metadata accessor for LocationMetadataStore();
  static LocationMetadataStore.location.getter();
  sub_10004D86C(v7);
  v19(v7, v3);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Performing incremental vacuum on WeatherDataStore database", v28, 2u);
  }

  type metadata accessor for WeatherDataStore();
  static WeatherDataStore.location.getter();
  sub_10004D86C(v7);
  v29 = (v19)(v7, v3);
  return v32(v29);
}

void sub_10004D86C(uint64_t a1)
{
  v55 = a1;
  v1 = type metadata accessor for Database.VacuumMode();
  v53 = *(v1 - 8);
  v54 = v1;
  v2 = *(v53 + 64);
  __chkstk_darwin(v1);
  v52 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Database.CacheSize();
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v51);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for Database.RecoveryMode();
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v50);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Database.JournalingMode();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AssertionOptions();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = type metadata accessor for Database.Location();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v47 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v48 = v20;
  v49 = v24;
  v46 = *(v20 + 16);
  v46(&v45 - v25, v55);
  static AssertionOptions.weatherAssertions.getter();
  (*(v13 + 104))(v16, enum case for Database.JournalingMode.wal(_:), v12);
  (*(v8 + 104))(v11, enum case for Database.RecoveryMode.truncate(_:), v50);
  *v7 = 16;
  (*(v4 + 104))(v7, enum case for Database.CacheSize.pages(_:), v51);
  (*(v53 + 104))(v52, enum case for Database.VacuumMode.incremental(_:), v54);
  v26 = type metadata accessor for Database();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  LOBYTE(v57[0]) = 1;
  Database.init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:)();
  Database.incrementalVacuum()();
  if (v29)
  {

    v30 = v49;
    v31 = v47;
    if (qword_1000A3258 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100002FE8(v32, static Logger.daemon);
    (v46)(v31, v55, v30);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v56 = v29;
      v57[0] = v36;
      *v35 = 136446466;
      swift_errorRetain();
      sub_100003020(&qword_1000A37F0, &unk_100080850);
      v37 = String.init<A>(describing:)();
      v39 = sub_10000D9FC(v37, v38, v57);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      v40 = Database.Location.path.getter();
      if (v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = 7104878;
      }

      if (v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = 0xE300000000000000;
      }

      (*(v48 + 8))(v31, v30);
      v44 = sub_10000D9FC(v42, v43, v57);

      *(v35 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v33, v34, "An error occurred while performing incremental vacuum %{public}s at location: %{public}s", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v48 + 8))(v31, v30);
    }
  }

  else
  {
  }
}

uint64_t sub_10004DEAC(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  sub_10004D208(sub_10004E584, v5);
}

uint64_t sub_10004DF38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  sub_100006BD4(a1, 0, 1, v4);
  return 0;
}

uint64_t sub_10004DFC0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_10004D208(sub_10004E4F8, v4);

  return 1;
}

uint64_t sub_10004E038(void (*a1)(char *, void, uint64_t))
{
  v2 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for Date();
  sub_100006BD4(v5, 1, 1, v6);
  a1(v5, 0, 1);
  return sub_10000FA04(v5);
}

void sub_10004E0EC(void *a1)
{
  if (*a1)
  {
    WeatherDataStore.purgeExpiredData()();
  }
}

uint64_t sub_10004E114(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_10004DFC0(a1, a2);
  return 1;
}

uint64_t sub_10004E15C()
{
  v0 = type metadata accessor for XPCActivity.XPCPriority();
  v1 = sub_100006FBC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10000E970();
  v8 = v7 - v6;
  v9 = type metadata accessor for XPCActivity();
  sub_10004E58C(v9, static XPCActivity.Databases);
  sub_100002FE8(v9, static XPCActivity.Databases);
  (*(v3 + 104))(v8, enum case for XPCActivity.XPCPriority.maintenance(_:), v0);
  return XPCActivity.init(identifier:gracePeriod:priority:requiresNetworkConnectivity:)();
}

uint64_t XPCActivity.Databases.unsafeMutableAddressor()
{
  if (qword_1000A3248 != -1)
  {
    sub_10004E5F0();
  }

  v0 = type metadata accessor for XPCActivity();

  return sub_100002FE8(v0, static XPCActivity.Databases);
}

uint64_t static XPCActivity.Databases.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000A3248 != -1)
  {
    sub_10004E5F0();
  }

  v2 = type metadata accessor for XPCActivity();
  v3 = sub_100002FE8(v2, static XPCActivity.Databases);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for DatabaseManager()
{
  result = qword_1000A49C0;
  if (!qword_1000A49C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10004E404()
{
  result = qword_1000A4A10;
  if (!qword_1000A4A10)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A10);
  }

  return result;
}

unint64_t sub_10004E45C()
{
  result = qword_1000A4A20;
  if (!qword_1000A4A20)
  {
    sub_10000325C(&qword_1000A4A18, &qword_100081C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A20);
  }

  return result;
}

uint64_t sub_10004E4C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004E500()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004E54C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_10004E58C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10004E5F0()
{

  return swift_once();
}

uint64_t sub_10004E610@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v28 = type metadata accessor for PredictedLocationsConfiguration();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v28);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppConfiguration();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[26];
  sub_1000032B8(v1 + 22, v1[25]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.predictedLocations.getter();
  PredictedLocationsConfiguration.minDistanceFromCurrentLocationToConsiderLocationForDonation.getter();
  v15 = v14;
  PredictedLocationsConfiguration.minDistanceFromSavedLocationsToConsiderLocationForDonation.getter();
  v17 = v16;
  PredictedLocationsConfiguration.maxAgeForWidgetDonationToBeConsideredRecent.getter();
  v19 = v18;
  PredictedLocationsConfiguration.minProbabilityToConsiderLocationForDonationWithRecentDonation.getter();
  v21 = v20;
  PredictedLocationsConfiguration.minProbabilityToConsiderLocationForDonationWithNoRecentDonation.getter();
  v23 = v22;
  (*(v4 + 8))(v7, v28);
  (*(v9 + 8))(v12, v8);
  v24 = v1[28];

  SettingProperty.wrappedValue.getter();

  if (v29 == 1)
  {
    v26 = v2[29];

    SettingProperty.wrappedValue.getter();

    v21 = v29;
    v27 = v2[29];

    SettingProperty.wrappedValue.getter();

    v23 = v29;
  }

  *a1 = v15;
  a1[1] = v17;
  a1[2] = v19;
  a1[3] = v21;
  a1[4] = v23;
  return result;
}

uint64_t sub_10004E864(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for Logger();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for Location.Identifier();
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();
  v9 = type metadata accessor for LocationCoordinate();
  v2[18] = v9;
  v10 = *(v9 - 8);
  v2[19] = v10;
  v11 = *(v10 + 64) + 15;
  v2[20] = swift_task_alloc();
  v12 = type metadata accessor for LocationDataModel();
  v2[21] = v12;
  v13 = *(v12 - 8);
  v2[22] = v13;
  v14 = *(v13 + 64) + 15;
  v2[23] = swift_task_alloc();
  v15 = type metadata accessor for Date();
  v2[24] = v15;
  v16 = *(v15 - 8);
  v2[25] = v16;
  v17 = *(v16 + 64) + 15;
  v2[26] = swift_task_alloc();
  v18 = *(*(sub_100003020(&qword_1000A3800, &unk_100080860) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_10004EAF0, 0, 0);
}

uint64_t sub_10004EAF0()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 72);
  sub_10004E610((v0 + 16));
  v5 = v4[11];
  sub_1000032B8(v4 + 7, v4[10]);
  dispatch thunk of PredictedLocationsScheduleStoreType.mostRecentSuccessfulExecution()();
  sub_10000F994(v1, v2);
  v6 = sub_100007374(v2, 1, v3);
  v7 = *(v0 + 216);
  if (v6 == 1)
  {
    sub_10000FA04(*(v0 + 216));
LABEL_4:
    v15 = 32;
    goto LABEL_6;
  }

  v9 = *(v0 + 200);
  v8 = *(v0 + 208);
  v10 = *(v0 + 192);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v12 = v11;
  v13 = *(v9 + 8);
  v13(v8, v10);
  v14 = *(v0 + 32);
  v13(v7, v10);
  if (v12 > v14)
  {
    goto LABEL_4;
  }

  v15 = 24;
LABEL_6:
  v16 = *(v0 + 16 + v15);
  *(v0 + 56) = *(v0 + 64);

  sub_100031B60();
  if (*(*(v0 + 56) + 16))
  {
    v17 = *(v0 + 72);
    v18 = *(v0 + 16);
    v19 = v17[16];
    sub_1000032B8(v17 + 12, v17[15]);
    v20 = dispatch thunk of LocationManagerType.currentCLLocation.getter();
    sub_100031D00();

    if (*(*(v0 + 56) + 16))
    {
      v21 = *(v0 + 72);
      v22 = v21[20];
      v23 = v21[21];
      sub_1000032B8(v21 + 17, v22);
      v24 = async function pointer to dispatch thunk of SavedLocationsReaderType.fetchSavedLocationsAsync()[1];
      v25 = swift_task_alloc();
      *(v0 + 232) = v25;
      *v25 = v0;
      v25[1] = sub_10004EEBC;

      return dispatch thunk of SavedLocationsReaderType.fetchSavedLocationsAsync()(v22, v23);
    }

    v27 = (v0 + 104);
    v32 = *(v0 + 104);

    static Logger.predictedLocationIntentDonations.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (sub_100031158(v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = v18;
      v31 = "No predicted locations met the min current location distance (%f, returning empty array.";
      goto LABEL_15;
    }
  }

  else
  {
    v27 = (v0 + 96);
    v26 = *(v0 + 96);

    static Logger.predictedLocationIntentDonations.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (sub_100031158(v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = v16;
      v31 = "No predicted locations met the probability threshold (%f, returning empty array.";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v28, v29, v31, v30, 0xCu);
    }
  }

  v33 = *v27;
  v34 = *(v0 + 80);
  v35 = *(v0 + 88);

  v36 = sub_100030CAC();
  v37(v36);
  v38 = *(v0 + 216);
  v39 = *(v0 + 208);
  v40 = *(v0 + 184);
  v41 = *(v0 + 160);
  v42 = *(v0 + 136);
  v44 = *(v0 + 104);
  v43 = *(v0 + 112);
  v45 = *(v0 + 96);
  sub_10000FA04(*(v0 + 224));

  v46 = *(v0 + 8);

  return v46(_swiftEmptyArrayStorage);
}

uint64_t sub_10004EEBC(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_10004EFBC, 0, 0);
}

uint64_t sub_10004EFBC()
{
  if (v0[30])
  {
    v1 = v0[30];
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = v1[2];
  if (v2)
  {
    v3 = v0[22];
    v4 = v0[19];
    v5 = v0[16];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = *(v3 + 16);
    v3 += 16;
    v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v39 = *(v3 + 56);
    v40 = v6;
    v37 = (v4 + 8);
    v38 = (v5 + 8);
    v36 = (v3 - 8);
    do
    {
      v8 = v0[23];
      v10 = v0[20];
      v9 = v0[21];
      v12 = v0[17];
      v11 = v0[18];
      v13 = v0[15];
      v40(v8, v7, v9);
      LocationDataModel.identifier.getter();
      Location.Identifier.coordinate.getter();
      (*v38)(v12, v13);
      LocationCoordinate.init(_:)();
      LocationCoordinate.clLocation.getter();
      (*v37)(v10, v11);
      (*v36)(v8, v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v14 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 += v39;
      --v2;
    }

    while (v2);
  }

  v15 = v0[3];
  sub_100031F80();

  v16 = v0[7];
  if (!v16[2])
  {
    v17 = v0[14];
    v18 = v0[7];

    static Logger.predictedLocationIntentDonations.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (sub_100031158(v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v19, v20, "No predicted locations met the min saved locations distance (%f, returning empty array.", v21, 0xCu);
    }

    v22 = v0[14];
    v23 = v0[10];
    v24 = v0[11];

    v25 = sub_100030CAC();
    v26(v25);
    v16 = _swiftEmptyArrayStorage;
  }

  v27 = v0[27];
  v28 = v0[26];
  v29 = v0[23];
  v30 = v0[20];
  v31 = v0[17];
  v33 = v0[13];
  v32 = v0[14];
  v41 = v0[12];
  sub_10000FA04(v0[28]);

  v34 = v0[1];

  return v34(v16);
}

uint64_t sub_10004F30C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10004F3CC, 0, 0);
}

uint64_t sub_10004F3CC()
{
  v1 = v0[5];
  static Logger.predictedLocationIntentDonations.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100031158(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will fetch predicted locations for intent donations", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  v9 = sub_100030CAC();
  v10(v9);
  v11 = *sub_1000032B8((v8 + 16), *(v8 + 40));
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_10004F504;

  return sub_1000389D0(0);
}

uint64_t sub_10004F504(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *v1;
  v3[7] = a1;

  v6 = swift_task_alloc();
  v3[8] = v6;
  *v6 = v5;
  v6[1] = sub_10004F658;
  v7 = v3[2];

  return sub_10004E864(a1);
}

uint64_t sub_10004F658(uint64_t a1)
{
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v8 = *v1;

  v6 = *(v8 + 8);

  return v6(a1);
}

uint64_t sub_10004F794()
{
  sub_100006994((v0 + 16));
  sub_100006994((v0 + 56));
  sub_100006994((v0 + 96));
  sub_100006994((v0 + 136));
  sub_100006994((v0 + 176));

  v1 = *(v0 + 224);

  v2 = *(v0 + 232);

  return v0;
}

uint64_t sub_10004F7EC()
{
  sub_10004F794();

  return _swift_deallocClassInstance(v0, 240, 7);
}

void sub_10004F844()
{
  if (qword_1000A3258 != -1)
  {
    sub_1000033B4();
  }

  v0 = type metadata accessor for Logger();
  sub_100002FE8(v0, static Logger.daemon);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_100031158(v2))
  {
    *sub_100030F7C() = 0;
    sub_10005045C(&_mh_execute_header, v3, v4, "Daemon has been requested to unregister and exit");
    sub_10000FA7C();
  }

  type metadata accessor for XPCActivityManager();
  sub_100003020(&qword_1000A4B88, &unk_100081D60);
  v5 = type metadata accessor for XPCActivity();
  sub_100006FBC(v5);
  v7 = v6;
  v9 = *(v8 + 72);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100080320;
  v12 = v11 + v10;
  static XPCActivity.Notifications.getter();
  if (qword_1000A3248 != -1)
  {
    sub_10004E5F0();
  }

  v13 = sub_100002FE8(v5, static XPCActivity.Databases);
  (*(v7 + 16))(v12 + v9, v13, v5);
  static XPCActivity.predictedLocationNotifications.getter();
  static XPCActivity.predictedLocationIntentDonations.getter();
  static XPCActivityManager.unregister(_:)();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    *sub_100030F7C() = 0;
    sub_10005043C(&_mh_execute_header, v16, v17, "Exiting after unregistering activities");
    sub_10000FA7C();
  }

  exit(0);
}

void sub_10004FA50()
{
  if (qword_1000A3258 != -1)
  {
    sub_1000033B4();
  }

  v0 = type metadata accessor for Logger();
  sub_100002FE8(v0, static Logger.daemon);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_100031158(v2))
  {
    *sub_100030F7C() = 0;
    sub_10005045C(&_mh_execute_header, v3, v4, "Daemon has been requested to exit");
    sub_10000FA7C();
  }

  v5 = dispatch_semaphore_create(0);
  type metadata accessor for XPCActivityManager();
  sub_100003020(&qword_1000A4B88, &unk_100081D60);
  v6 = type metadata accessor for XPCActivity();
  sub_100006FBC(v6);
  v8 = v7;
  v10 = *(v9 + 72);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100080320;
  v13 = v12 + v11;
  static XPCActivity.Notifications.getter();
  if (qword_1000A3248 != -1)
  {
    sub_10004E5F0();
  }

  v14 = sub_100002FE8(v6, static XPCActivity.Databases);
  (*(v8 + 16))(v13 + v10, v14, v6);
  static XPCActivity.predictedLocationNotifications.getter();
  static XPCActivity.predictedLocationIntentDonations.getter();
  *(swift_allocObject() + 16) = v5;
  v5;
  static XPCActivityManager.defer(_:completion:)();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (sub_100031158(v16))
  {
    v17 = sub_100030F7C();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Daemon is waiting at defer semaphore", v17, 2u);
    sub_10000FA7C();
  }

  OS_dispatch_semaphore.wait()();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    *sub_100030F7C() = 0;
    sub_10005043C(&_mh_execute_header, v20, v21, "Exiting after deferring activities");
    sub_10000FA7C();
  }

  exit(0);
}

void sub_10004FD0C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = sub_100006FBC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = sub_100006FBC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A3258 != -1)
  {
    sub_1000033B4();
  }

  v16 = type metadata accessor for Logger();
  sub_100002FE8(v16, static Logger.daemon);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (sub_100031158(v18))
  {
    v19 = sub_100030F7C();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Daemon running", v19, 2u);
    sub_10000FA7C();
  }

  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  type metadata accessor for Settings.Daemon.Performance();
  static Settings.Daemon.Performance.deferXPCServiceLaunch.getter();
  SettingReader.read<A>(_:)();

  if (LOBYTE(aBlock[0]) == 1)
  {
    v34 = v15;
    v35 = v11;
    v20 = v7;
    v21 = v8;
    v22 = sub_1000500F8();
    v23 = sub_100037A1C();
    if (v23)
    {
      v24 = v23;
      if (v23 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v24; ++i)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v26 = *(v22 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        [v26 start];
        swift_unknownObjectRelease();
      }
    }

    v8 = v21;
    v7 = v20;
    v15 = v34;
    v11 = v35;
  }

  type metadata accessor for Settings();
  static Settings.memoryTesting.getter();
  v27 = dispatch thunk of SettingGroup.isEnabled.getter();

  if ((v27 & 1) == 0)
  {
    v28 = v36;
    v29 = *(v36 + OBJC_IVAR____TtC8weatherd6Daemon_activityManager + 32);
    sub_1000032B8((v36 + OBJC_IVAR____TtC8weatherd6Daemon_activityManager), *(v36 + OBJC_IVAR____TtC8weatherd6Daemon_activityManager + 24));
    dispatch thunk of XPCActivityManagerType.checkIn()();
    v30 = *(v28 + OBJC_IVAR____TtC8weatherd6Daemon_severeNotificationsManager);
    sub_100024A98();
    v31 = *(v28 + OBJC_IVAR____TtC8weatherd6Daemon_sigtermListener);
    swift_getObjectType();
    aBlock[4] = sub_1000501C4;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002FA4;
    aBlock[3] = &unk_10009BF08;
    v32 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    sub_1000501D8();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v32);
    (*(v3 + 8))(v7, v0);
    (*(v11 + 8))(v15, v8);
    OS_dispatch_source.resume()();
  }
}

uint64_t sub_1000500F8()
{
  sub_100003020(&qword_1000A4988, &qword_100081BA0);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC8weatherd6Daemon_databaseManager);
  v3 = *(v0 + OBJC_IVAR____TtC8weatherd6Daemon_notificationsManager);
  *(v1 + 16) = xmmword_100081D30;
  v4 = *(v0 + OBJC_IVAR____TtC8weatherd6Daemon_decommissioningService);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v5 = *(v0 + OBJC_IVAR____TtC8weatherd6Daemon_severeNotificationsManager);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 64) = *(v0 + OBJC_IVAR____TtC8weatherd6Daemon_predictedLocationsService);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_1000501D8()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100050388();
  sub_100003020(&unk_1000A32B0, &qword_100080350);
  sub_1000031F8();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100050370(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100050388()
{
  result = qword_1000A4B70;
  if (!qword_1000A4B70)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B70);
  }

  return result;
}

uint64_t sub_1000503E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10005043C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_10005045C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10005047C()
{
  v2 = type metadata accessor for CloudChannelSevereNotification(0);
  v3 = sub_100006FF0(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000E970();
  v8 = (v7 - v6);
  v9 = type metadata accessor for PeriodicSevereNotification(0);
  v10 = sub_100006FF0(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000E970();
  v13 = sub_10005101C();
  v14 = type metadata accessor for SevereNotification(v13);
  v15 = sub_100018904(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000E970();
  v20 = v19 - v18;
  sub_100050FBC();
  sub_100050A10(v0, v20, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100051004();
    sub_100050958(v20, v8, v22);
    v23 = *v8;
    v24 = v8[1];

    v25 = v8;
    v26 = v1;
  }

  else
  {
    sub_100050FEC();
    sub_100050958(v20, v1, v27);
    v23 = *v1;
    v28 = v1[1];

    v25 = v1;
    v26 = v8;
  }

  sub_1000509B8(v25, v26);
  return v23;
}

uint64_t sub_1000505D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for CloudChannelSevereNotification(0);
  v6 = sub_100018904(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000E970();
  v9 = sub_10005101C();
  v10 = type metadata accessor for PeriodicSevereNotification(v9);
  v11 = sub_100018904(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000E970();
  v16 = v15 - v14;
  v17 = type metadata accessor for SevereNotification(0);
  v18 = sub_100018904(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10000E970();
  v23 = v22 - v21;
  sub_100050FBC();
  sub_100050A10(v3, v23, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100050958(v23, v2, type metadata accessor for CloudChannelSevereNotification);
    v25 = *(v5 + 28);
    sub_100050FD4();
    sub_100050A10(v2 + v26, a1, v27);
    v28 = v2;
    v29 = type metadata accessor for CloudChannelSevereNotification;
  }

  else
  {
    sub_100050958(v23, v16, type metadata accessor for PeriodicSevereNotification);
    v30 = *(v10 + 24);
    sub_100050FD4();
    sub_100050A10(v16 + v31, a1, v32);
    v28 = v16;
    v29 = type metadata accessor for PeriodicSevereNotification;
  }

  return sub_1000509B8(v28, v29);
}

uint64_t sub_10005076C()
{
  v2 = type metadata accessor for CloudChannelSevereNotification(0);
  v3 = sub_100006FF0(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000E970();
  v8 = v7 - v6;
  v9 = type metadata accessor for PeriodicSevereNotification(0);
  v10 = sub_100006FF0(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000E970();
  v13 = sub_10005101C();
  v14 = type metadata accessor for SevereNotification(v13);
  v15 = sub_100018904(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000E970();
  v20 = v19 - v18;
  sub_100050FBC();
  sub_100050A10(v0, v20, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100051004();
    sub_100050958(v20, v8, v22);
    v23 = *(v8 + 32);

    v24 = v8;
    v25 = v1;
  }

  else
  {
    sub_100050FEC();
    sub_100050958(v20, v1, v26);
    v23 = *(v1 + 16);

    v24 = v1;
    v25 = v8;
  }

  sub_1000509B8(v24, v25);
  return v23;
}

uint64_t sub_100050920(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100050958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100018904(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000509B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100018904(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100050A10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100018904(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100050A84()
{
  sub_100051044();
  if (v0 == v2)
  {
    return sub_10005102C();
  }

  v4 = v1;
  v5 = v0;
  v6 = type metadata accessor for SevereNotificationContent();
  sub_10005105C(v6);
  if (*(v7 + 84) == v5)
  {
    v8 = *(v4 + 28);
  }

  else
  {
    type metadata accessor for Location();
    v8 = *(v4 + 32);
  }

  v9 = sub_100051050(v8);

  return sub_100007374(v9, v10, v11);
}

void sub_100050B48(uint64_t a1, uint64_t a2)
{
  sub_100051044();
  if (v4 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v5;
    v8 = v4;
    v9 = type metadata accessor for SevereNotificationContent();
    sub_10005105C(v9);
    if (*(v10 + 84) == v8)
    {
      v11 = *(v7 + 28);
    }

    else
    {
      type metadata accessor for Location();
      v11 = *(v7 + 32);
    }

    v12 = sub_100051050(v11);

    sub_100006BD4(v12, v13, a2, v14);
  }
}

void sub_100050C04()
{
  sub_100050CB0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SevereNotificationContent();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Location();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100050CB0()
{
  if (!qword_1000A4BF8)
  {
    type metadata accessor for WeatherAlert();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A4BF8);
    }
  }
}

uint64_t sub_100050D1C()
{
  sub_100051044();
  if (v0 == v2)
  {
    return sub_10005102C();
  }

  v4 = v1;
  v5 = v0;
  v6 = type metadata accessor for SevereNotificationContent();
  sub_10005105C(v6);
  if (*(v7 + 84) == v5)
  {
    v8 = *(v4 + 24);
  }

  else
  {
    type metadata accessor for Location();
    v8 = *(v4 + 28);
  }

  v9 = sub_100051050(v8);

  return sub_100007374(v9, v10, v11);
}

void sub_100050DE0(uint64_t a1, uint64_t a2)
{
  sub_100051044();
  if (v4 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v5;
    v8 = v4;
    v9 = type metadata accessor for SevereNotificationContent();
    sub_10005105C(v9);
    if (*(v10 + 84) == v8)
    {
      v11 = *(v7 + 24);
    }

    else
    {
      type metadata accessor for Location();
      v11 = *(v7 + 28);
    }

    v12 = sub_100051050(v11);

    sub_100006BD4(v12, v13, a2, v14);
  }
}

void sub_100050E9C()
{
  sub_100050CB0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SevereNotificationContent();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Location();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100050F48()
{
  result = type metadata accessor for PeriodicSevereNotification(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CloudChannelSevereNotification(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005102C()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_100051068()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_1000510C0();
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000510C0()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setMaxConcurrentOperationCount:1];
  sub_100005360();
  v1 = static OS_dispatch_queue.notifications.getter();
  [v0 setUnderlyingQueue:v1];

  return v0;
}

uint64_t sub_100051138(__int128 *a1)
{
  v3 = type metadata accessor for PromiseDeduperFlags();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  *(v1 + 16) = 0;
  sub_100051D80();
  sub_100003020(&qword_1000A4E28, &qword_100082DA0);
  sub_100051DD8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v5 = sub_100003020(&qword_1000A4E30, &qword_100081E80);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v1 + 64) = PromiseDeduper.init(options:)();
  sub_100006D78(a1, v1 + 24);
  return v1;
}

uint64_t sub_100051250()
{
  sub_100006994((v0 + 24));
  v1 = *(v0 + 64);

  return v0;
}

uint64_t sub_100051280()
{
  sub_100051250();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_1000512D8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_10000D9FC(a1, a2, &v23);
    _os_log_impl(&_mh_execute_header, v11, v12, "Requested channel map asset download with identifier: %{public}s", v13, 0xCu);
    sub_100006994(v14);
  }

  (*(v7 + 8))(v10, v6);
  v15 = *(v3 + 64);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v15;
  v16[5] = v3;
  v17 = objc_allocWithZone(sub_100003020(&qword_1000A4E38, &qword_100081E88));

  v18 = AsyncBlockOperation.init(_:)();
  sub_100003020(&qword_1000A4E40, &qword_100081E90);
  v19 = v18;
  v20 = Promise.__allocating_init(_:scheduleOn:)();

  return v20;
}

uint64_t sub_10005154C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v21[0] = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_10000D9FC(a1, a2, v21);
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting channel map download for identifier: %{public}s", v15, 0xCu);
    sub_100006994(v16);

    a4 = v20;
  }

  v17 = (*(v8 + 8))(v11, v7);
  v21[0] = a1;
  v21[1] = a2;
  __chkstk_darwin(v17);
  *(&v19 - 4) = a4;
  *(&v19 - 3) = a1;
  *(&v19 - 2) = a2;
  return PromiseDeduper.promise(key:createBlock:)();
}

uint64_t sub_100051760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100005360();
  v5 = static OS_dispatch_queue.notifications.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  sub_100003020(&qword_1000A3528, &qword_100080508);
  type metadata accessor for CloudChannelMapManager();
  firstly<A, B>(on:disposeOn:closure:)();

  v7 = static OS_dispatch_queue.notifications.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  Promise.then<A>(on:closure:)();

  v9 = zalgo.getter();
  v10 = Promise.error(on:closure:)();

  return v10;
}

uint64_t sub_1000518D4(void *a1)
{
  v1 = a1[7];
  sub_1000032B8(a1 + 3, a1[6]);
  return dispatch thunk of ChannelMapServiceType.channelMap(with:)();
}

uint64_t sub_10005193C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v6;
    v14 = a2;
    v15 = v13;
    v16 = swift_slowAlloc();
    v24 = a1;
    v17 = v16;
    v23[0] = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_10000D9FC(v14, a3, v23);
    _os_log_impl(&_mh_execute_header, v11, v12, "Completed channel map download with identifier: %{public}s", v15, 0xCu);
    sub_100006994(v17);
    a1 = v24;

    (*(v7 + 8))(v10, v22);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  sub_100006930(a1, v23);
  v18 = sub_100003020(&qword_1000A4E40, &qword_100081E90);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_100051B54(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = a1;
    v16 = v10;
    *v9 = 136446210;
    swift_errorRetain();
    sub_100003020(&qword_1000A37F0, &unk_100080850);
    v11 = String.init<A>(describing:)();
    v13 = sub_10000D9FC(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to download cloud channel: %{public}s", v9, 0xCu);
    sub_100006994(v10);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_100051D28(uint64_t a1)
{
  v2 = sub_100051068();
  [v2 addOperation:a1];
}

unint64_t sub_100051D80()
{
  result = qword_1000A5BA0;
  if (!qword_1000A5BA0)
  {
    type metadata accessor for PromiseDeduperFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5BA0);
  }

  return result;
}

unint64_t sub_100051DD8()
{
  result = qword_1000A5BB0;
  if (!qword_1000A5BB0)
  {
    sub_10000325C(&qword_1000A4E28, &qword_100082DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5BB0);
  }

  return result;
}

uint64_t sub_100051E3C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100051EA4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100051EDC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000518D4(a1);
}

uint64_t sub_100051F1C(uint64_t a1, uint64_t a2)
{
  sub_100003020(&qword_1000A37F0, &unk_100080850);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t *sub_100051FAC()
{
  sub_100006930((v0 + 2), v3);
  sub_1000032B8(v3, v3[3]);
  sub_100057F40(&qword_1000A3AE8, v1, type metadata accessor for PredictedLocationsIntentDonationManager);
  sub_10004B08C();
  dispatch thunk of LocationManagerType.removeObserver(_:)();
  sub_100006994(v3);
  sub_100006994(v0 + 2);
  sub_100006994(v0 + 7);
  sub_100006994(v0 + 12);
  sub_100006994(v0 + 17);
  sub_100006994(v0 + 22);
  sub_100006994(v0 + 27);
  return v0;
}

uint64_t sub_10005207C()
{
  sub_100051FAC();

  return _swift_deallocClassInstance(v0, 260, 7);
}

uint64_t sub_1000520D4(uint64_t a1, void *a2)
{
  v3 = sub_1000032B8((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_100051F1C(*v3, a2);
  }

  v5 = *v3;

  return j__swift_continuation_throwingResume();
}

uint64_t sub_100052138(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for Logger();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v6 = sub_100003020(&qword_1000A40F0, &qword_100081030);
  v2[25] = v6;
  v7 = *(v6 - 8);
  v2[26] = v7;
  v8 = *(v7 + 64) + 15;
  v2[27] = swift_task_alloc();
  v9 = *(*(sub_100003020(&qword_1000A4F70, &qword_1000820B0) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100057F40(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[30] = v11;
  v2[31] = v10;

  return _swift_task_switch(sub_100052308, v11, v10);
}

uint64_t sub_100052308()
{
  sub_10005809C();
  v1 = v0;
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v5 = v1[25];
  v6 = v1[19];
  v7 = v1[20];
  v8 = v7[26];
  sub_1000032B8(v7 + 22, v7[25]);
  PredictedLocationsScheduleStoreType.recordRefresh()();
  v1[18] = v6;
  swift_getKeyPath();
  KeyPathComparator.init<A>(_:order:)();
  sub_100003020(&qword_1000A4100, &unk_100081060);
  sub_100006CD0(&qword_1000A4108, &qword_1000A4100, &unk_100081060);
  sub_100006CD0(&qword_1000A4110, &qword_1000A40F0, &qword_100081030);
  v9 = Sequence.sorted<A>(using:)();
  (*(v4 + 8))(v3, v5);
  sub_100015FC8(v9);

  v1[32] = sub_100052AA0(v2, v7);
  v10 = [objc_opt_self() defaultStore];
  v1[33] = v10;
  sub_100030944(0, &qword_1000A4F48, INRelevantShortcut_ptr);
  sub_10004B08C();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1[34] = isa;
  v12 = sub_1000580B8();
  v1[35] = v12;
  v1[2] = v1;
  v1[3] = sub_1000525C0;
  v13 = swift_continuation_init();
  v1[17] = sub_100003020(&qword_1000A4F50, &unk_100082060);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000520D4;
  v1[13] = &unk_10009C018;
  v1[14] = v13;
  [v10 setRelevantShortcuts:isa forBundleIdentifier:v12 completionHandler:?];
  sub_10005805C();

  return _swift_continuation_await(v14);
}

uint64_t sub_1000525C0()
{
  sub_100030C4C();
  sub_100043668();
  v1 = *v0;
  v3 = v2[6];
  v2[36] = v3;
  v4 = v2[31];
  v5 = v2[30];
  if (v3)
  {
    v6 = sub_10005288C;
  }

  else
  {
    v6 = sub_1000526E8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000526E8()
{
  sub_100030E20();
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[29];
  v6 = v0[24];

  static Logger.predictedLocationIntentDonations.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = sub_10004B070(v8);
  v10 = v0[32];
  if (v9)
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    v12 = sub_100036C5C(v10);

    *(v11 + 4) = v12;

    _os_log_impl(&_mh_execute_header, v7, v6, "Intent donation of %ld shortcut(s) was successful", v11, 0xCu);
    sub_10000FA7C();
  }

  else
  {
    v13 = v0[32];
    swift_bridgeObjectRelease_n();
  }

  v14 = v0[20];
  (*(v0[22] + 8))(v0[24], v0[21]);
  v15 = v14[26];
  sub_1000032B8(v14 + 22, v14[25]);
  sub_100030F18();
  PredictedLocationsScheduleStoreType.recordSuccessfulExecution()();
  v16 = v0[27];
  v18 = v0[23];
  v17 = v0[24];
  sub_100018858(v0[28], &qword_1000A4F70, &qword_1000820B0);

  sub_100030C70();

  return v19();
}

uint64_t sub_10005288C()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[23];

  swift_willThrow();

  static Logger.predictedLocationIntentDonations.getter();

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  LOBYTE(v7) = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = v0[36];
    v10 = v0[32];
    v11 = sub_100037B44();
    v12 = swift_slowAlloc();
    *v11 = 134218499;
    v13 = sub_100036C5C(v10);

    *(v11 + 4) = v13;

    *(v11 + 12) = 2160;
    sub_1000436A8();
    *(v11 + 14) = v14;
    *(v11 + 22) = 2113;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v15;
    *v12 = v15;
    sub_10004AFE8();
    _os_log_impl(v16, v17, v18, v19, v20, 0x20u);
    sub_100018858(v12, &qword_1000A4030, &qword_100080F58);
    sub_10000FA7C();
    sub_10000FA7C();
  }

  else
  {
    v21 = v0[32];
    swift_bridgeObjectRelease_n();
  }

  v22 = v0[36];
  v24 = v0[22];
  v23 = v0[23];
  v25 = v0[21];

  v26 = *(v24 + 8);
  v27 = sub_100030F18();
  v28(v27);
  v29 = v0[27];
  v31 = v0[23];
  v30 = v0[24];
  sub_100018858(v0[28], &qword_1000A4F70, &qword_1000820B0);

  sub_100030C70();

  return v32();
}

void *sub_100052AA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = sub_100003020(&qword_1000A4F70, &qword_1000820B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v37 - v14;
  v16 = type metadata accessor for ResolvedPredictedLocation();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  sub_100057B8C(a1, v15);
  if (sub_100007374(v15, 1, v16) == 1)
  {
    sub_100018858(v15, &qword_1000A4F70, &qword_1000820B0);
    static Logger.predictedLocationIntentDonations.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "No relevant predicted locations for intent donation. Will clear out all donations.", v25, 2u);
    }

    (*(v5 + 8))(v11, v4);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    sub_100057DDC(v15, v22, type metadata accessor for ResolvedPredictedLocation);
    static Logger.predictedLocationIntentDonations.getter();
    sub_1000579D8(v22, v20, type metadata accessor for ResolvedPredictedLocation);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v4;
      v31 = v30;
      v40 = v30;
      *v29 = 141558275;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      v32 = ResolvedPredictedLocation.description.getter();
      v39 = a2;
      v34 = v33;
      sub_100057E3C(v20, type metadata accessor for ResolvedPredictedLocation);
      v35 = sub_10000D9FC(v32, v34, &v40);

      *(v29 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Found relevant predicted locations for intent donation; Will make a donation for location=%{private,mask.hash}s", v29, 0x16u);
      sub_100006994(v31);

      (*(v5 + 8))(v9, v38);
    }

    else
    {

      sub_100057E3C(v20, type metadata accessor for ResolvedPredictedLocation);
      (*(v5 + 8))(v9, v4);
    }

    v26 = sub_100052EE0(v22);
    sub_100057E3C(v22, type metadata accessor for ResolvedPredictedLocation);
  }

  return v26;
}

void *sub_100052EE0(uint64_t a1)
{
  v101 = type metadata accessor for WidgetNames();
  v98 = *(v101 - 8);
  v2 = *(v98 + 64);
  v3 = __chkstk_darwin(v101);
  v100 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v99 = &v80 - v5;
  v6 = type metadata accessor for Location.Identifier();
  v86 = *(v6 - 8);
  v87 = v6;
  v7 = *(v86 + 64);
  __chkstk_darwin(v6);
  v85 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ResolvedPredictedLocation();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v97 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v92 = *(v13 - 8);
  v93 = v13;
  v14 = *(v92 + 64);
  __chkstk_darwin(v13);
  v94 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Calendar();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v80 - v27;
  static Date.now.getter();
  v29 = *(v10 + 32);
  static Calendar.current.getter();
  Date.wc_addHours(_:calendar:)();
  v30 = *(v17 + 8);
  v90 = v16;
  v88 = v30;
  (v30)(v20, v16);
  sub_100057F40(&qword_1000A4058, 255, &type metadata accessor for Date);
  v89 = v29;
  LOBYTE(v10) = dispatch thunk of static Comparable.< infix(_:_:)();
  v33 = *(v22 + 8);
  v32 = v22 + 8;
  v31 = v33;
  v33(v26, v21);
  v96 = v33;
  v91 = v21;
  if (v10 & 1) != 0 && (static Calendar.current.getter(), Date.wc_addHours(_:calendar:)(), (v88)(v20, v90), v34 = dispatch thunk of static Comparable.< infix(_:_:)(), v31(v26, v21), (v34))
  {
    static Calendar.current.getter();
    v84 = v28;
    Date.wc_addDays(_:calendar:)();
    (v88)(v20, v90);
    v35 = dispatch thunk of static Comparable.< infix(_:_:)();
    v31(v26, v21);
    if (v35)
    {
      v36 = v31;
      v37 = _swiftEmptyArrayStorage;
      v39 = v94;
      v38 = v95;
      v28 = v84;
      v40 = a1;
      v41 = v97;
      goto LABEL_7;
    }

    v42 = &enum case for WidgetNames.DailyForecast(_:);
    v39 = v94;
    v38 = v95;
    v28 = v84;
    v40 = a1;
  }

  else
  {
    v42 = &enum case for WidgetNames.Forecast(_:);
    v39 = v94;
    v38 = v95;
    v40 = a1;
  }

  v41 = v97;
  sub_100003020(&qword_1000A4F78, &unk_1000820E0);
  v43 = v98;
  v44 = *(v98 + 72);
  v45 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100081610;
  v47 = *v42;
  v37 = v46;
  (*(v43 + 104))(v46 + v45, v47, v101);
  v36 = v96;
LABEL_7:
  static Logger.predictedLocationIntentDonations.getter();
  sub_1000579D8(v40, v41, type metadata accessor for ResolvedPredictedLocation);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v83 = v49;
    v89 = v48;
    v50 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v103[0] = v82;
    v88 = v50;
    *v50 = 136315651;
    v51 = v37[2];
    v90 = v37;
    if (v51)
    {
      v84 = v28;
      v80 = v32;
      v81 = v40;
      v102 = _swiftEmptyArrayStorage;
      sub_100014558(0, v51, 0);
      v52 = v102;
      v53 = v98 + 16;
      v54 = *(v98 + 16);
      v55 = v37 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
      v98 = *(v98 + 72);
      v56 = (v53 - 8);
      do
      {
        v57 = v99;
        v58 = v101;
        v54(v99, v55, v101);
        v54(v100, v57, v58);
        v59 = String.init<A>(describing:)();
        v61 = v60;
        (*v56)(v57, v58);
        v102 = v52;
        v63 = v52[2];
        v62 = v52[3];
        if (v63 >= v62 >> 1)
        {
          sub_100014558((v62 > 1), v63 + 1, 1);
          v52 = v102;
        }

        v52[2] = v63 + 1;
        v64 = &v52[2 * v63];
        v64[4] = v59;
        v64[5] = v61;
        v55 += v98;
        --v51;
      }

      while (v51);
      v40 = v81;
      v39 = v94;
      v38 = v95;
      v28 = v84;
    }

    v66 = Array.description.getter();
    v68 = v67;

    v69 = sub_10000D9FC(v66, v68, v103);

    v70 = v88;
    *(v88 + 1) = v69;
    *(v70 + 6) = 2160;
    *(v70 + 14) = 1752392040;
    *(v70 + 11) = 2081;
    v71 = v85;
    v72 = v97;
    Location.identifier.getter();
    v73 = Location.Identifier.uniqueID.getter();
    v75 = v74;
    (*(v86 + 8))(v71, v87);
    sub_100057E3C(v72, type metadata accessor for ResolvedPredictedLocation);
    v76 = sub_10000D9FC(v73, v75, v103);

    *(v70 + 3) = v76;
    v77 = v89;
    _os_log_impl(&_mh_execute_header, v89, v83, "Relevant widgets are %s for location=%{private,mask.hash}s", v70, 0x20u);
    swift_arrayDestroy();

    v65 = (*(v92 + 8))(v39, v93);
    v36 = v96;
    v37 = v90;
  }

  else
  {

    sub_100057E3C(v41, type metadata accessor for ResolvedPredictedLocation);
    v65 = (*(v92 + 8))(v39, v93);
  }

  __chkstk_darwin(v65);
  *(&v80 - 2) = v38;
  *(&v80 - 1) = v40;
  v78 = sub_100032854(sub_100057BFC, (&v80 - 4), v37);

  v36(v28, v91);
  return v78;
}

id sub_100053870(NSObject *a1, uint64_t a2)
{
  v126 = a1;
  v127 = a2;
  v2 = type metadata accessor for Location.Identifier();
  v116 = *(v2 - 8);
  v117 = v2;
  v3 = *(v116 + 64);
  __chkstk_darwin(v2);
  v115 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WidgetNames();
  v121 = *(v5 - 8);
  v6 = *(v121 + 64);
  v7 = __chkstk_darwin(v5);
  v124 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v118 = &v105 - v10;
  __chkstk_darwin(v9);
  v114 = &v105 - v11;
  v110 = type metadata accessor for ResolvedPredictedLocation();
  v12 = *(*(v110 - 8) + 64);
  v13 = __chkstk_darwin(v110);
  v119 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v113 = &v105 - v15;
  v16 = type metadata accessor for Logger();
  v122 = *(v16 - 8);
  v123 = v16;
  v17 = *(v122 + 64);
  v18 = __chkstk_darwin(v16);
  v125 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v120 = &v105 - v20;
  v21 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v109 = &v105 - v23;
  v108 = type metadata accessor for Date();
  v106 = *(v108 - 8);
  v24 = *(v106 + 64);
  __chkstk_darwin(v108);
  v107 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100003020(&qword_1000A4F58, &qword_100082070);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v105 - v28;
  v30 = type metadata accessor for INShortcut();
  v112 = *(v30 - 8);
  v31 = *(v112 + 64);
  v32 = __chkstk_darwin(v30);
  v105 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v111 = &v105 - v34;
  v35 = type metadata accessor for Location();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = 0;
  v129 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v128 = v40;
  v129 = v42;
  v43._object = 0x8000000100085B20;
  v43._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x726568746165572ELL;
  v44._object = 0xEE00746E65746E49;
  String.append(_:)(v44);
  v45 = String._bridgeToObjectiveC()();

  v46 = INIntentCreate();

  if (!v46)
  {
    static Logger.predictedLocationIntentDonations.getter();
    v73 = v119;
    sub_1000579D8(v126, v119, type metadata accessor for ResolvedPredictedLocation);
    v74 = v121;
    v75 = *(v121 + 16);
    v75(v124, v127, v5);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    v78 = v5;
    if (os_log_type_enabled(v76, v77))
    {
      v79 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v128 = v127;
      *v79 = 141558531;
      *(v79 + 4) = 1752392040;
      *(v79 + 12) = 2081;
      v80 = v115;
      LODWORD(v126) = v77;
      Location.identifier.getter();
      v81 = Location.Identifier.uniqueID.getter();
      v83 = v82;
      (*(v116 + 8))(v80, v117);
      sub_100057E3C(v73, type metadata accessor for ResolvedPredictedLocation);
      v84 = sub_10000D9FC(v81, v83, &v128);

      *(v79 + 14) = v84;
      *(v79 + 22) = 2080;
      v85 = v124;
      v75(v118, v124, v78);
      v86 = String.init<A>(describing:)();
      v88 = v87;
      (*(v74 + 8))(v85, v78);
      v89 = sub_10000D9FC(v86, v88, &v128);

      *(v79 + 24) = v89;
      _os_log_impl(&_mh_execute_header, v76, v126, "Failed to make weather intent for location=%{private,mask.hash}s, widget=%s", v79, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v74 + 8))(v124, v5);
      sub_100057E3C(v73, type metadata accessor for ResolvedPredictedLocation);
    }

    (*(v122 + 8))(v125, v123);
    return 0;
  }

  v125 = v5;
  sub_100057B20(0xD000000000000011, 0x8000000100084790, v46, &selRef__setLaunchId_);
  sub_100057AC8(0xD000000000000020, 0x8000000100085B20, v46);
  type metadata accessor for WeatherLocation();
  v47 = v126;
  (*(v36 + 16))(v39, v126, v35);
  v48 = sub_1000545EC(v39);
  v49 = String._bridgeToObjectiveC()();
  [v46 setValue:v48 forKey:v49];

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v51 = String._bridgeToObjectiveC()();
  [v46 setValue:isa forKey:v51];

  v52 = v46;
  INShortcut.init(intent:)();
  if (sub_100007374(v29, 1, v30) == 1)
  {
    v124 = v52;
    sub_100018858(v29, &qword_1000A4F58, &qword_100082070);
    v53 = v120;
    static Logger.predictedLocationIntentDonations.getter();
    v54 = v113;
    sub_1000579D8(v47, v113, type metadata accessor for ResolvedPredictedLocation);
    v55 = v121;
    v56 = *(v121 + 16);
    v57 = v114;
    v58 = v125;
    v56(v114, v127, v125);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v128 = v127;
      *v61 = 141558531;
      *(v61 + 4) = 1752392040;
      *(v61 + 12) = 2081;
      v126 = v59;
      v62 = v57;
      v63 = v115;
      LODWORD(v119) = v60;
      Location.identifier.getter();
      v64 = Location.Identifier.uniqueID.getter();
      v66 = v65;
      (*(v116 + 8))(v63, v117);
      sub_100057E3C(v54, type metadata accessor for ResolvedPredictedLocation);
      v67 = sub_10000D9FC(v64, v66, &v128);

      *(v61 + 14) = v67;
      *(v61 + 22) = 2080;
      v56(v118, v62, v58);
      v68 = String.init<A>(describing:)();
      v70 = v69;
      (*(v55 + 8))(v62, v58);
      v71 = sub_10000D9FC(v68, v70, &v128);

      *(v61 + 24) = v71;
      v72 = v126;
      _os_log_impl(&_mh_execute_header, v126, v119, "Failed to make shortcut for location=%{private,mask.hash}s, widget=%s", v61, 0x20u);
      swift_arrayDestroy();

      (*(v122 + 8))(v120, v123);
    }

    else
    {

      (*(v55 + 8))(v57, v58);
      sub_100057E3C(v54, type metadata accessor for ResolvedPredictedLocation);
      (*(v122 + 8))(v53, v123);
    }

    return 0;
  }

  v91 = v111;
  v90 = v112;
  (*(v112 + 32))(v111, v29, v30);
  v92 = v107;
  static Date.now.getter();
  v93 = v109;
  v94 = v108;
  (*(v106 + 16))(v109, v47 + *(v110 + 28), v108);
  sub_100006BD4(v93, 0, 1, v94);
  v95 = objc_allocWithZone(INDateRelevanceProvider);
  v96 = sub_1000578D8(v92, v93);
  sub_100030944(0, &qword_1000A4F48, INRelevantShortcut_ptr);
  v97 = v105;
  (*(v90 + 16))(v105, v91, v30);
  v98 = sub_100054744(v97);
  v99 = WidgetNames.rawValue.getter();
  sub_100057B20(v99, v100, v98, &selRef_setWidgetKind_);
  sub_100003020(&qword_1000A4988, &qword_100081BA0);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_100081EA0;
  *(v101 + 32) = v96;
  sub_100030944(0, &qword_1000A4F60, INRelevanceProvider_ptr);
  v102 = v96;
  v103 = Array._bridgeToObjectiveC()().super.isa;

  [v98 setRelevanceProviders:v103];

  [v98 setShortcutRole:1];
  (*(v90 + 8))(v91, v30);
  return v98;
}

id sub_1000545EC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = Location.intentIdentifier.getter();
  v6 = v5;
  Location.name.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = sub_100057A64(v4, v6, v7, v3);

  sub_100030944(0, &qword_1000A4F68, CLPlacemark_ptr);
  v9 = v8;
  Location.coordinate.getter();
  v11 = v10;
  Location.coordinate.getter();
  v13 = [objc_allocWithZone(CLLocation) initWithLatitude:v11 longitude:v12];
  Location.name.getter();
  sub_100058090();
  v16 = sub_10005783C(v13, v14, v15, 0);
  [v9 setGeolocation:v16];

  v17 = type metadata accessor for Location();
  sub_100018904(v17);
  (*(v18 + 8))(a1);
  return v9;
}

id sub_100054744(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = INShortcut._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithShortcut:isa];

  v5 = type metadata accessor for INShortcut();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1000547E0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000435A4;

  return sub_100054870();
}

uint64_t sub_100054870()
{
  sub_100030C4C();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_10000E960(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = sub_100058078();
  v6 = type metadata accessor for PredictedLocationsFeatureState();
  v1[6] = v6;
  sub_10000E960(v6);
  v1[7] = v7;
  v9 = *(v8 + 64);
  v1[8] = sub_1000580D8();
  v1[9] = swift_task_alloc();
  v1[10] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100057F94();
  sub_100057F40(v10, 255, v11);
  sub_10004B08C();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[11] = v13;
  v1[12] = v12;

  return _swift_task_switch(sub_1000549C4, v13, v12);
}

uint64_t sub_1000549C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100030C58();
  v15 = v14[2];
  v16 = v15[30];
  v17 = v15[31];
  sub_1000032B8(v15 + 27, v16);
  v18 = async function pointer to dispatch thunk of PredictedLocationsFeatureStateManagerType.intentDonationFeatureState()[1];
  v24 = swift_task_alloc();
  v14[13] = v24;
  *v24 = v14;
  v24[1] = sub_100054A80;
  v25 = v14[9];

  return dispatch thunk of PredictedLocationsFeatureStateManagerType.intentDonationFeatureState()(v25, v16, v17, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100054A80()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *(v0 + 104);
  v3 = *v1;
  sub_10000FA6C();
  *v4 = v3;

  sub_100030E68();
  v6 = *(v5 + 96);
  v7 = *(v0 + 88);

  return _swift_task_switch(sub_100054B8C, v7, v6);
}

uint64_t sub_100054B8C()
{
  sub_100030E20();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_100058018();
  v6(v5);
  sub_100030F18();
  v7 = static PredictedLocationsFeatureState.== infix(_:_:)();
  v8 = *(v4 + 8);
  v9 = sub_100030CE0();
  v8(v9);
  (v8)(v2, v3);
  if (v7)
  {
    v10 = *sub_1000032B8((v0[2] + 96), *(v0[2] + 120));
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_100054D70;

    return sub_10004F30C();
  }

  else
  {
    v13 = v0[10];
    v14 = v0[5];

    static Logger.predictedLocationIntentDonations.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[4];
    v18 = v0[5];
    v20 = v0[3];
    if (v17)
    {
      v21 = sub_100030F7C();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Skipping intent donation, feature is not active", v21, 2u);
      sub_10000FA7C();
    }

    v22 = *(v19 + 8);
    v23 = sub_100030CE0();
    v24(v23);
    v26 = v0[8];
    v25 = v0[9];
    v27 = v0[5];

    sub_100030C70();

    return v28();
  }
}

uint64_t sub_100054D70()
{
  sub_100030E20();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  sub_10000FA6C();
  *v5 = v4;
  v6 = *(v3 + 112);
  v7 = *v0;
  *v5 = *v0;
  *(v4 + 120) = v2;

  v8 = swift_task_alloc();
  *(v4 + 128) = v8;
  *v8 = v7;
  v8[1] = sub_100054EB8;
  v9 = *(v3 + 16);

  return sub_100052138(v2);
}

uint64_t sub_100054EB8()
{
  sub_100030C58();
  sub_100030E50();
  v2 = v0[16];
  v3 = v0[15];
  v4 = *v1;
  sub_10000FA6C();
  *v5 = v4;

  sub_100030E68();
  v7 = *(v6 + 96);
  v8 = v0[11];

  return _swift_task_switch(sub_100054FE8, v8, v7);
}

uint64_t sub_100054FE8()
{
  sub_100030C4C();
  v1 = v0[10];

  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];

  sub_100030C70();

  return v5();
}

uint64_t sub_10005505C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100043300;

  return sub_1000550EC();
}

uint64_t sub_1000550EC()
{
  sub_100030C4C();
  v1[2] = v0;
  v2 = sub_100003020(&qword_1000A4600, &qword_100081A30);
  sub_100006FF0(v2);
  v4 = *(v3 + 64);
  v1[3] = sub_100058078();
  v1[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100057F94();
  sub_100057F40(v5, 255, v6);
  sub_10004B08C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100058090();
  v7 = sub_10005804C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000551BC()
{
  sub_100030C4C();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_10005802C();
  sub_10003C268(v2);
  sub_100018858(v2, &qword_1000A4600, &qword_100081A30);

  sub_100030C70();

  return v4();
}

uint64_t sub_100055244()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000435A4;

  return sub_1000552D4();
}

uint64_t sub_1000552D4()
{
  sub_100030C4C();
  *(v1 + 16) = v0;
  *(v1 + 24) = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100057F94();
  sub_100057F40(v2, 255, v3);
  sub_10004B08C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100058090();
  v4 = sub_10005804C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100055378()
{
  sub_100030C4C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  sub_10005802C();
  sub_10003C4D8();
  sub_100030C70();

  return v3();
}

uint64_t sub_1000553D8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000435A4;

  return sub_100055468();
}

uint64_t sub_100055468()
{
  sub_100030C4C();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_10000E960(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = sub_100058078();
  v1[6] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100057F94();
  sub_100057F40(v6, 255, v7);
  sub_10004B08C();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v9;
  v1[8] = v8;

  return _swift_task_switch(sub_100055564, v9, v8);
}

uint64_t sub_100055564()
{
  sub_100030C58();
  v1 = v0[5];
  static Logger.predictedLocationIntentDonations.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_10004B070(v3))
  {
    *sub_100030F7C() = 0;
    sub_10004AFE8();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_10000FA7C();
  }

  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];

  v12 = *(v10 + 8);
  v13 = sub_100030CE0();
  v14(v13);
  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_100046D7C;
  v16 = v0[2];

  return sub_1000552D4();
}

uint64_t sub_100055668()
{
  sub_100030C4C();
  v1[18] = v2;
  v1[19] = v0;
  v3 = type metadata accessor for Logger();
  v1[20] = v3;
  sub_10000E960(v3);
  v1[21] = v4;
  v6 = *(v5 + 64);
  v1[22] = sub_1000580D8();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v7 = type metadata accessor for WidgetNames();
  v1[26] = v7;
  sub_10000E960(v7);
  v1[27] = v8;
  v10 = *(v9 + 64);
  v1[28] = sub_100058078();
  v11 = type metadata accessor for PredictedLocationsFeatureState();
  v1[29] = v11;
  sub_10000E960(v11);
  v1[30] = v12;
  v14 = *(v13 + 64);
  v1[31] = sub_1000580D8();
  v1[32] = swift_task_alloc();
  v15 = type metadata accessor for SevereNotificationSubscription();
  v1[33] = v15;
  sub_100006FF0(v15);
  v17 = *(v16 + 64);
  v1[34] = sub_100058078();
  v18 = type metadata accessor for ResolvedPredictedLocation();
  sub_100006FF0(v18);
  v20 = *(v19 + 64);
  v1[35] = sub_1000580D8();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100057F94();
  sub_100057F40(v21, 255, v22);
  sub_10004B08C();
  v24 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[40] = v24;
  v1[41] = v23;

  return _swift_task_switch(sub_100055894, v24, v23);
}

uint64_t sub_100055894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10005809C();
  v15 = v14[33];
  sub_1000579D8(v14[18], v14[34], type metadata accessor for SevereNotificationSubscription);
  sub_100030F18();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = v14[34];
  if (EnumCaseMultiPayload == 1)
  {
    v18 = v14[19];
    sub_100057DDC(v14[34], v14[38], type metadata accessor for ResolvedPredictedLocation);
    v19 = v18[31];
    sub_1000032B8(v18 + 27, v18[30]);
    v20 = async function pointer to dispatch thunk of PredictedLocationsFeatureStateManagerType.intentDonationFeatureState()[1];
    v21 = swift_task_alloc();
    v14[42] = v21;
    *v21 = v14;
    v21[1] = sub_100055A64;
    v22 = v14[32];
    sub_10005805C();

    return dispatch thunk of PredictedLocationsFeatureStateManagerType.intentDonationFeatureState()(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v31 = v14[39];

    sub_100057E3C(v17, type metadata accessor for SevereNotificationSubscription);
    sub_100057FC4();
    v43 = v33;
    v44 = v32;

    sub_100030C70();
    sub_10005805C();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, v44, a12, a13, a14);
  }
}

uint64_t sub_100055A64()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *(v0 + 336);
  v3 = *v1;
  sub_10000FA6C();
  *v4 = v3;

  sub_100030E68();
  v6 = *(v5 + 328);
  v7 = *(v0 + 320);

  return _swift_task_switch(sub_100055B70, v7, v6);
}

uint64_t sub_100055B70()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = sub_100058018();
  v6(v5);
  sub_100030F18();
  v7 = static PredictedLocationsFeatureState.== infix(_:_:)();
  v8 = *(v4 + 8);
  v9 = sub_100030CE0();
  v8(v9);
  (v8)(v2, v3);
  if (v7)
  {
    v10 = v0[38];
    v12 = v0[27];
    v11 = v0[28];
    v13 = v0[26];
    v14 = v0[19];
    v15 = sub_100058018();
    v16(v15);
    v17 = sub_100053870(v10, v11);
    v0[43] = v17;
    v18 = *(v12 + 8);
    v19 = sub_100030CE0();
    v20(v19);
    if (v17)
    {
      v21 = [objc_opt_self() defaultStore];
      v0[44] = v21;
      sub_100003020(&qword_1000A4988, &qword_100081BA0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100081EA0;
      *(v22 + 32) = v17;
      sub_100030944(0, &qword_1000A4F48, INRelevantShortcut_ptr);
      v23 = v17;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v0[45] = isa;

      v25 = sub_1000580B8();
      v0[46] = v25;
      v0[2] = v0;
      v0[3] = sub_1000560A8;
      v26 = swift_continuation_init();
      v0[17] = sub_100003020(&qword_1000A4F50, &unk_100082060);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_1000520D4;
      v0[13] = &unk_10009BFF0;
      v0[14] = v26;
      [v21 setRelevantShortcuts:isa forBundleIdentifier:v25 completionHandler:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v40 = v0[38];
    v39 = v0[39];
    v41 = v0[36];
    v42 = v0[24];

    static Logger.predictedLocationIntentDonations.getter();
    v43 = sub_100057FE4();
    sub_1000579D8(v43, v41, v44);
    v45 = v42;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[38];
    v50 = v0[36];
    v51 = v0[24];
    v53 = v0[20];
    v52 = v0[21];
    if (v48)
    {
      v65 = v0[20];
      v54 = swift_slowAlloc();
      v66 = sub_100037B44();
      *v54 = 141558275;
      sub_1000436A8();
      *(v54 + 4) = v55;
      *(v54 + 12) = 2081;
      v45 = v50;
      ResolvedPredictedLocation.description.getter();
      v64 = v49;
      sub_100058000();
      sub_100057E3C(v50, v56);
      v57 = sub_100030CE0();
      v60 = sub_10000D9FC(v57, v58, v59);

      *(v54 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v46, v47, "Failed to make shortcut for severe weather notification subscription; predictedLocation=%{private,mask.hash}s", v54, 0x16u);
      sub_100006994(v66);
      sub_10000FA7C();
      sub_10000FA7C();

      (*(v52 + 8))(v51, v65);
      v38 = v64;
    }

    else
    {

      sub_100058000();
      sub_100057E3C(v50, v61);
      (*(v52 + 8))(v51, v53);
      v38 = v49;
    }

    v37 = v45;
  }

  else
  {
    v27 = v0[39];
    v28 = v0[23];

    static Logger.predictedLocationIntentDonations.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[38];
    v33 = v0[23];
    v34 = v0[20];
    v35 = v0[21];
    if (v31)
    {
      v36 = sub_100030F7C();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Skipping intent donation, feature is not active", v36, 2u);
      sub_10000FA7C();
    }

    (*(v35 + 8))(v33, v34);
    sub_100057FAC();
    v38 = v32;
  }

  sub_100057E3C(v38, v37);
  sub_100057FC4();

  sub_100030C70();

  return v62();
}

uint64_t sub_1000560A8()
{
  sub_100030C4C();
  sub_100043668();
  v1 = *v0;
  v3 = v2[6];
  v2[47] = v3;
  v4 = v2[41];
  v5 = v2[40];
  if (v3)
  {
    v6 = sub_100056420;
  }

  else
  {
    v6 = sub_1000561D0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000561D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10005809C();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v26 = v22[45];
  v25 = v22[46];
  v27 = v22[44];
  v29 = v22[38];
  v28 = v22[39];
  v30 = v22[37];
  v31 = v22[25];

  static Logger.predictedLocationIntentDonations.getter();
  v32 = sub_100057FE4();
  sub_1000579D8(v32, v30, v33);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v22[37];
  v38 = v22[25];
  v40 = v22[20];
  v39 = v22[21];
  if (v36)
  {
    v67 = v22[25];
    v41 = swift_slowAlloc();
    v42 = sub_100037B44();
    a11 = v42;
    *v41 = 141558275;
    sub_1000436A8();
    *(v41 + 4) = v43;
    *(v41 + 12) = 2081;
    v44 = ResolvedPredictedLocation.description.getter();
    v46 = v45;
    sub_100057FAC();
    sub_100057E3C(v37, v47);
    v48 = sub_10000D9FC(v44, v46, &a11);

    *(v41 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v34, v35, "Intent donation was successful for severe weather notification subscription; predictedLocation=%{private,mask.hash}s", v41, 0x16u);
    sub_100006994(v42);
    sub_10000FA7C();
    sub_10000FA7C();

    (*(v39 + 8))(v67, v40);
  }

  else
  {

    sub_100057FAC();
    sub_100057E3C(v37, v49);
    (*(v39 + 8))(v38, v40);
  }

  v50 = v22[43];
  v51 = v22[38];
  v52 = v22[19];
  v53 = v52[26];
  sub_1000032B8(v52 + 22, v52[25]);
  PredictedLocationsScheduleStoreType.recordSuccessfulExecution()();

  sub_100057FAC();
  sub_100057E3C(v51, v54);
  sub_100057FC4();
  v66 = v56;
  v68 = v55;

  sub_100030C70();
  sub_10005805C();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, v66, v68, a11, a12, a13, a14);
}

uint64_t sub_100056420()
{
  v43 = v0;
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[35];
  v8 = v0[22];

  swift_willThrow();

  static Logger.predictedLocationIntentDonations.getter();
  v9 = sub_100057FE4();
  sub_1000579D8(v9, v7, v10);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[47];
  v15 = v0[43];
  v16 = v0[38];
  v17 = v0[35];
  v19 = v0[21];
  v18 = v0[22];
  v20 = v0[20];
  if (v13)
  {
    v41 = v0[20];
    v21 = swift_slowAlloc();
    v40 = v15;
    v22 = swift_slowAlloc();
    v23 = sub_100037B44();
    v42 = v23;
    *v21 = 141558787;
    sub_1000436A8();
    *(v21 + 4) = v24;
    *(v21 + 12) = 2081;
    v38 = v18;
    v39 = v16;
    v25 = ResolvedPredictedLocation.description.getter();
    v27 = v26;
    sub_100057FAC();
    v37 = v28;
    sub_100057E3C(v17, v29);
    v30 = sub_10000D9FC(v25, v27, &v42);

    *(v21 + 14) = v30;
    *(v21 + 22) = 2160;
    sub_1000436A8();
    *(v21 + 24) = v31;
    *(v21 + 32) = 2113;
    swift_errorRetain();
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 34) = v32;
    *v22 = v32;
    _os_log_impl(&_mh_execute_header, v11, v12, "Intent donation failed for severe weather notification subscription; predictedLocation=%{private,mask.hash}s, error=%{private,mask.hash}@", v21, 0x2Au);
    sub_100018858(v22, &qword_1000A4030, &qword_100080F58);
    sub_10000FA7C();
    sub_100006994(v23);
    sub_10000FA7C();
    sub_10000FA7C();

    (*(v19 + 8))(v38, v41);
    v33 = v39;
    v34 = v37;
  }

  else
  {

    sub_100057E3C(v17, type metadata accessor for ResolvedPredictedLocation);
    (*(v19 + 8))(v18, v20);
    v33 = v16;
    v34 = type metadata accessor for ResolvedPredictedLocation;
  }

  sub_100057E3C(v33, v34);
  sub_100057FC4();

  sub_100030C70();

  return v35();
}

uint64_t sub_100056734(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_10005675C(a1, a2);
  return 1;
}

uint64_t sub_10005675C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v7 = sub_100006FF0(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = type metadata accessor for Logger();
  v11 = sub_100006FBC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v11);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v47 - v19;
  static Logger.predictedLocationIntentDonations.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = sub_100030F7C();
    v48 = v18;
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Running predicted locations manager as xpc activity", v23, 2u);
    v18 = v48;
    sub_10000FA7C();
  }

  v24 = *(v13 + 8);
  v24(v20, v10);
  if (WDWeatherAppIsInstalled())
  {
    type metadata accessor for TaskPriority();
    sub_100030DE0();
    sub_100006BD4(v25, v26, v27, v28);

    v29 = static LocIntelActor.shared.getter();
    sub_100057F94();
    v32 = sub_100057F40(v30, 255, v31);
    v33 = swift_allocObject();
    v33[2] = v29;
    v33[3] = v32;
    v33[4] = v3;
    v33[5] = a1;
    v33[6] = a2;
  }

  else
  {
    static Logger.predictedLocationIntentDonations.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = sub_100030F7C();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Weather app was uninstalled; rejecting xpc run instructions", v36, 2u);
      sub_10000FA7C();
    }

    v24(v18, v10);
    type metadata accessor for TaskPriority();
    sub_100030DE0();
    sub_100006BD4(v37, v38, v39, v40);

    v41 = static LocIntelActor.shared.getter();
    sub_100057F94();
    v44 = sub_100057F40(v42, 255, v43);
    v45 = swift_allocObject();
    v45[2] = v41;
    v45[3] = v44;
    v45[4] = a1;
    v45[5] = a2;
  }

  sub_10006C7F8();

  return 1;
}

uint64_t sub_100056B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = sub_100006FBC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (WDWeatherAppIsInstalled())
  {
    sub_10005802C();
    return sub_10003BBA0(a1, a2);
  }

  else
  {
    static Logger.predictedLocationIntentDonations.getter();
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

uint64_t sub_100056C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(sub_100003020(&qword_1000A3800, &unk_100080860) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v5[5] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100057F40(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100049F28, v8, v7);
}

uint64_t sub_100056D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v11[1] = sub_100056EBC;

  return sub_100054870();
}

uint64_t sub_100056EBC()
{
  sub_100030C4C();
  sub_100043668();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  sub_10000FA6C();
  *v5 = v4;

  type metadata accessor for LocIntelActor.Actor();
  sub_100057F94();
  sub_100057F40(v6, 255, v7);
  sub_10004B08C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100058090();
  v8 = sub_10005804C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100056FF4()
{
  sub_100030E20();
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = v0[2];

  sub_10005802C();
  v6 = type metadata accessor for Date();
  sub_100030DE0();
  sub_100006BD4(v7, v8, v9, v6);
  sub_10003AA50(v4, 1, v3);
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
    sub_100057DDC(v0[6], v16, type metadata accessor for PredictedLocationsRefresh);
    (*(*(v6 - 8) + 16))(v18, v16, v6);
    sub_100006BD4(v18, 0, 1, v6);
    v20(v18, *(v16 + *(v17 + 20)), 0);
    sub_100018858(v18, &qword_1000A3800, &unk_100080860);
    sub_100057E3C(v16, type metadata accessor for PredictedLocationsRefresh);
  }

  v21 = v0[8];
  v22 = v0[5];
  v23 = v0[6];

  sub_100030C70();

  return v24();
}

uint64_t sub_1000571FC(uint64_t a1, int a2)
{
  v4 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v5 = sub_100006FF0(v4);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v9 = *(v2 + 256);
  if (v9)
  {
    *(v2 + 256) = a2;
    if (v9 != a2)
    {
      type metadata accessor for TaskPriority();
      sub_100030DE0();
      sub_100006BD4(v10, v11, v12, v13);

      v14 = static LocIntelActor.shared.getter();
      sub_100057F94();
      v17 = sub_100057F40(v15, 255, v16);
      v18 = swift_allocObject();
      *(v18 + 16) = v14;
      *(v18 + 24) = v17;
      *(v18 + 32) = v9;
      *(v18 + 36) = a2;
      *(v18 + 40) = v2;
      sub_10006C7F8();
    }
  }

  else
  {
    *(v2 + 256) = a2;
  }

  return result;
}

uint64_t sub_100057334(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
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
  sub_100057F40(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 56) = v11;
  *(v6 + 64) = v10;

  return _swift_task_switch(sub_10005745C, v11, v10);
}

uint64_t sub_10005745C()
{
  sub_100030E20();
  v1 = *(v0 + 40);
  static Logger.predictedLocationIntentDonations.getter();
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
    sub_10000FA7C();
  }

  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v14 = *(v0 + 24);

  v15 = *(v13 + 8);
  v16 = sub_100030CE0();
  v17(v16);
  v18 = swift_task_alloc();
  *(v0 + 72) = v18;
  *v18 = v0;
  v18[1] = sub_10004A8B0;
  v19 = *(v0 + 16);

  return sub_1000550EC();
}

id sub_10005758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = String._bridgeToObjectiveC()();

  if (a6)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for WeatherLocation();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id sub_10005770C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WeatherLocation();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10005779C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherLocation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10005783C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() placemarkWithLocation:a1 name:v6 postalAddress:a4];

  return v7;
}

id sub_1000578D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v7 = type metadata accessor for Date();
  isa = 0;
  if (sub_100007374(a2, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v7 - 8) + 8))(a2, v7);
  }

  v9 = [v3 initWithStartDate:v6.super.isa endDate:isa];

  (*(*(v7 - 8) + 8))(a1, v7);
  return v9;
}

uint64_t sub_1000579D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100018904(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

id sub_100057A64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [a4 initWithIdentifier:v6 displayString:a3];

  return v7;
}

void sub_100057AC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 _setExtensionBundleId:v4];
}

void sub_100057B20(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

uint64_t sub_100057B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A4F70, &qword_1000820B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100057BFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  result = sub_100053870(v5, a1);
  *a2 = result;
  return result;
}

uint64_t sub_100057C44()
{
  sub_100030E20();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100030BFC(v5);
  *v6 = v7;
  v8 = sub_10004AFC0(v6);

  return sub_100056C7C(v8, v9, v10, v4, v3);
}

uint64_t sub_100057CE8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100057D30()
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
  v9 = sub_10004AFC0(v7);

  return sub_100056D7C(v9, v10, v11, v3, v4, v5);
}

uint64_t sub_100057DDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100018904(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100057E3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100018904(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100057E94()
{
  sub_100030E20();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 36);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  v7 = sub_100030BFC(v6);
  *v7 = v8;
  v9 = sub_10004AFC0(v7);

  return sub_100057334(v9, v10, v11, v3, v4, v5);
}

uint64_t sub_100057F40(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100057FC4()
{
  v2 = v0[37];
  result = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[28];
  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[22];
  v12 = v0[23];
  return result;
}

uint64_t *sub_10005802C()
{
  result = sub_1000032B8((v0 + 136), *(v0 + 160));
  v2 = *result;
  return result;
}

uint64_t sub_100058078()
{

  return swift_task_alloc();
}

NSString sub_1000580B8()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_1000580D8()
{

  return swift_task_alloc();
}

uint64_t sub_1000580F0()
{
  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5018, &qword_100082168);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5020, &qword_100082170);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  type metadata accessor for PrecipitationNotificationsManager();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  sub_100003020(&qword_1000A5028, &unk_100082178);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  type metadata accessor for NotificationAuthorizationManager();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3B38, &qword_100080A50);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5030, &qword_100082188);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3B28, &qword_100080A40);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3B30, &qword_100080A48);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

uint64_t sub_100058398(void *a1)
{
  v2 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5020, &qword_100082170);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v10[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B38, &qword_100080A50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5090, &qword_1000821E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v6 = result;
    v7 = objc_allocWithZone(type metadata accessor for NotificationsManager());
    return sub_10006D0E0(v10, v8, v9, v6);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000584C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  v4 = type metadata accessor for PrecipitationNotificationsManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a2[3] = v4;
    a2[4] = &protocol witness table for PrecipitationNotificationsManager;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005853C(void *a1)
{
  v2 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50A8, &qword_1000821F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5040, &qword_100082190);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v24)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5048, &qword_100082198);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v23)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5050, &qword_1000821A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5058, &qword_1000821A8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50A0, &qword_1000821F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5030, &qword_100082188);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50C8, &qword_100082228);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5028, &unk_100082178);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5090, &qword_1000821E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50D0, &qword_100082240);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v15 = objc_allocWithZone(type metadata accessor for PrecipitationNotificationsManager());
    return PrecipitationNotificationsManager.init(weatherDataService:policyHandler:notificationContentFactory:notificationDeliveryScheduler:notificationFetchScheduler:notificationSubscriptionManager:notificationConfigurationProvider:notificationAuthorizationStatusProvider:locationManager:locationComparator:notificationsEnablementTracker:notificationAccuracyTracker:)();
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100058914@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    v5 = type metadata accessor for NotificationLocationComparator();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = NotificationLocationComparator.init(appConfigurationManager:)();
    a2[3] = v5;
    a2[4] = &protocol witness table for NotificationLocationComparator;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000589BC(void *a1)
{
  v2 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5018, &qword_100082168);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  v5 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A58, &qword_100080990);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100030944(0, &qword_1000A5038, UNUserNotificationCenter_ptr);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v7 = result;
    v8 = objc_allocWithZone(type metadata accessor for NotificationAuthorizationManager());
    return sub_10000E9A0(v4, v9, v7);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100058AE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5060, &qword_1000821B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v175)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5068, &qword_1000821B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v173)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5080, &qword_1000821D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v171)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B28, &qword_100080A40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v169)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B30, &qword_100080A48);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v167)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50A0, &qword_1000821F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v165[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v164[3])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5028, &unk_100082178);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v163[3])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50C8, &qword_100082228);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v162[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = result;
  v16 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5090, &qword_1000821E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = result;
  v18 = a1[4];
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for SevereNotificationsPowerLogger();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = result;
  v20 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A70, &unk_100082230);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v161)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v133 = v19;
  v134 = v17;
  v135 = v15;
  v136 = a2;
  v21 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA8, &unk_1000809E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v159[3])
  {
    v22 = v175;
    v23 = sub_1000123F0(v174, v175);
    v132 = &v115;
    v24 = *(*(v22 - 8) + 64);
    __chkstk_darwin(v23);
    v26 = (&v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = v173;
    v29 = sub_1000123F0(v172, v173);
    v131 = &v115;
    v30 = *(*(v28 - 8) + 64);
    __chkstk_darwin(v29);
    v32 = (&v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32);
    v34 = v171;
    v35 = sub_1000123F0(v170, v171);
    v130 = &v115;
    v36 = *(*(v34 - 8) + 64);
    __chkstk_darwin(v35);
    v38 = (&v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38);
    v40 = v169;
    v41 = sub_1000123F0(v168, v169);
    v129 = &v115;
    v42 = *(*(v40 - 8) + 64);
    __chkstk_darwin(v41);
    v44 = (&v115 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v45 + 16))(v44);
    v46 = v167;
    v47 = sub_1000123F0(v166, v167);
    v128 = &v115;
    v48 = *(*(v46 - 8) + 64);
    __chkstk_darwin(v47);
    v50 = (&v115 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v50);
    v52 = v161;
    v53 = sub_1000123F0(v160, v161);
    v127 = &v115;
    v54 = *(*(v52 - 8) + 64);
    __chkstk_darwin(v53);
    v56 = (&v115 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v57 + 16))(v56);
    v58 = *v26;
    v59 = *v32;
    v60 = *v38;
    v61 = *v44;
    v62 = *v50;
    v63 = *v56;
    v64 = type metadata accessor for APSConnectionManager();
    v158[4] = &off_10009C8C0;
    v158[3] = v64;
    v158[0] = v58;
    v121 = type metadata accessor for CloudChannelManager();
    v157 = &off_10009C190;
    v156 = v121;
    v155[0] = v59;
    v120 = type metadata accessor for SevereWeatherEventDataProvider();
    v154 = &off_10009C498;
    v153 = v120;
    v152[0] = v60;
    v119 = type metadata accessor for SevereNotificationContentFactory();
    v151 = &off_10009B530;
    v150 = v119;
    v149[0] = v61;
    v117 = type metadata accessor for SevereNotificationScheduler();
    v147 = v117;
    v148 = &off_10009BB58;
    v146[0] = v62;
    v116 = type metadata accessor for PredictedLocationsNotificationLocationsProvider();
    v144 = v116;
    v145 = &off_10009C408;
    v143[0] = v63;
    type metadata accessor for SevereNotificationsManager();
    v65 = swift_allocObject();
    v66 = sub_1000123F0(v158, v64);
    v126 = &v115;
    v67 = *(*(v64 - 8) + 64);
    __chkstk_darwin(v66);
    v69 = (&v115 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v70 + 16))(v69);
    v71 = v156;
    v72 = sub_1000123F0(v155, v156);
    v125 = &v115;
    v73 = *(*(v71 - 8) + 64);
    __chkstk_darwin(v72);
    v75 = (&v115 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v76 + 16))(v75);
    v77 = v153;
    v78 = sub_1000123F0(v152, v153);
    v124 = &v115;
    v79 = *(*(v77 - 8) + 64);
    __chkstk_darwin(v78);
    v81 = (&v115 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v82 + 16))(v81);
    v83 = v150;
    v84 = sub_1000123F0(v149, v150);
    v123 = &v115;
    v85 = *(*(v83 - 8) + 64);
    __chkstk_darwin(v84);
    v87 = (&v115 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v88 + 16))(v87);
    v89 = v147;
    v90 = sub_1000123F0(v146, v147);
    v122 = &v115;
    v91 = *(*(v89 - 8) + 64);
    __chkstk_darwin(v90);
    v93 = (&v115 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v94 + 16))(v93);
    v95 = v144;
    v96 = sub_1000123F0(v143, v144);
    v118 = &v115;
    v97 = *(*(v95 - 8) + 64);
    __chkstk_darwin(v96);
    v99 = (&v115 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v100 + 16))(v99);
    v101 = *v69;
    v102 = *v75;
    v103 = *v81;
    v104 = *v87;
    v105 = *v93;
    v106 = *v99;
    v142[3] = v64;
    v142[4] = &off_10009C8C0;
    v142[0] = v101;
    v141[4] = &off_10009C190;
    v141[3] = v121;
    v141[0] = v102;
    v140[3] = v120;
    v140[4] = &off_10009C498;
    v140[0] = v103;
    v139[3] = v119;
    v139[4] = &off_10009B530;
    v139[0] = v104;
    v138[3] = v117;
    v138[4] = &off_10009BB58;
    v138[0] = v105;
    v137[3] = v116;
    v137[4] = &off_10009C408;
    v137[0] = v106;
    sub_100030944(0, &qword_1000A4188, NSOperationQueue_ptr);
    *(v65 + 480) = static NSOperationQueue.notifications.getter();
    *(v65 + 496) = 0;
    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.notifications.getter();
    v107 = type metadata accessor for Debouncer();
    v108 = *(v107 + 48);
    v109 = *(v107 + 52);
    swift_allocObject();
    *(v65 + 504) = Debouncer.init(interval:queue:)();
    sub_100006930(v142, v65 + 16);
    sub_100006930(v141, v65 + 56);
    sub_100006930(v140, v65 + 96);
    sub_100006930(v139, v65 + 136);
    sub_100006930(v138, v65 + 176);
    sub_100006930(v165, v65 + 216);
    sub_100006930(v164, v65 + 256);
    sub_100006930(v163, v65 + 296);
    sub_100006930(v162, v65 + 336);
    v110 = v134;
    *(v65 + 376) = v135;
    *(v65 + 384) = v110;
    *(v65 + 392) = v133;
    sub_100006930(v137, v65 + 400);
    sub_100006930(v159, v65 + 440);
    v111 = [objc_allocWithZone(NSOperationQueue) init];
    *(v65 + 488) = v111;
    [v111 setMaxConcurrentOperationCount:1];
    v112 = *(v65 + 488);
    v113 = static OS_dispatch_queue.notifications.getter();
    [v112 setUnderlyingQueue:v113];

    sub_100006994(v159);
    sub_100006994(v162);
    sub_100006994(v163);
    sub_100006994(v164);
    sub_100006994(v165);
    sub_100006994(v137);
    sub_100006994(v138);
    sub_100006994(v139);
    sub_100006994(v140);
    sub_100006994(v141);
    sub_100006994(v142);
    sub_100006994(v143);
    sub_100006994(v146);
    sub_100006994(v149);
    sub_100006994(v152);
    sub_100006994(v155);
    sub_100006994(v158);
    sub_100006994(v160);
    sub_100006994(v166);
    sub_100006994(v168);
    sub_100006994(v170);
    sub_100006994(v172);
    result = sub_100006994(v174);
    v114 = v136;
    *v136 = v65;
    v114[1] = &off_10009B558;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100059A94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for NotificationConfigurationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v6 = a1[4];
    sub_1000032B8(a1, a1[3]);
    sub_100003020(&qword_1000A5050, &qword_1000821A0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v10)
    {
      v7 = type metadata accessor for PreciptationNotificationConfigurationProvider();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      result = PreciptationNotificationConfigurationProvider.init(notificationConfigurationManager:notificationDeliveryScheduler:)();
      a2[3] = v7;
      a2[4] = &protocol witness table for PreciptationNotificationConfigurationProvider;
      *a2 = result;
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

uint64_t sub_100059B84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5088, &qword_1000821D8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    v5 = type metadata accessor for SevereNotificationContentFactory();
    v6 = swift_allocObject();
    result = sub_100006D78(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_10009B530;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100059C30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100030944(0, &qword_1000A5038, UNUserNotificationCenter_ptr);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  v7 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A68, &unk_1000809A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v10 = v28;
  if (v28)
  {
    v11 = sub_1000123F0(v27, v28);
    v12 = *(*(v10 - 8) + 64);
    __chkstk_darwin(v11);
    v14 = (v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v17 = type metadata accessor for PredictedLocationsIntentDonationManager();
    v26[3] = v17;
    v26[4] = &off_10009BFE0;
    v26[0] = v16;
    v18 = type metadata accessor for SevereNotificationScheduler();
    v19 = swift_allocObject();
    v20 = sub_1000123F0(v26, v17);
    v21 = *(*(v17 - 8) + 64);
    __chkstk_darwin(v20);
    v23 = (v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v25 = *v23;
    v19[7] = v17;
    v19[8] = &off_10009BFE0;
    v19[3] = v8;
    v19[4] = v25;
    v19[2] = v6;
    sub_100006994(v26);
    result = sub_100006994(v27);
    a2[3] = v18;
    a2[4] = &off_10009BB58;
    *a2 = v19;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100059EF0()
{
  sub_100030944(0, &qword_1000A5038, UNUserNotificationCenter_ptr);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5040, &qword_100082190);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5048, &qword_100082198);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5050, &qword_1000821A0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5058, &qword_1000821A8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5060, &qword_1000821B0);
  RegistrationContainer.register<A>(_:name:factory:)();
  Definition.thenConfigure(_:)();

  sub_100003020(&qword_1000A5068, &qword_1000821B8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5070, &qword_1000821C0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5078, &qword_1000821C8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5080, &qword_1000821D0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5088, &qword_1000821D8);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for APSIncomingMessageStore();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5090, &qword_1000821E0);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for SevereNotificationsPowerLogger();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5098, &qword_1000821E8);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_10005A39C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v6 = a1[4];
    sub_1000032B8(a1, a1[3]);
    sub_100030944(0, &qword_1000A5038, UNUserNotificationCenter_ptr);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v7 = type metadata accessor for PrecipitationNotificationDeliveryScheduler();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      result = PrecipitationNotificationDeliveryScheduler.init(notificationStore:userNotificationCenter:)();
      a2[3] = v7;
      a2[4] = &protocol witness table for PrecipitationNotificationDeliveryScheduler;
      *a2 = result;
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

uint64_t sub_10005A494@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v6 = a1[4];
    sub_1000032B8(a1, a1[3]);
    sub_100003020(&qword_1000A3AA0, &qword_100082220);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v10)
    {
      Scheduler = type metadata accessor for PrecipitationNotificationFetchScheduler();
      v8 = *(Scheduler + 48);
      v9 = *(Scheduler + 52);
      swift_allocObject();
      result = PrecipitationNotificationFetchScheduler.init(notificationStore:activityManager:)();
      a2[3] = Scheduler;
      a2[4] = &protocol witness table for PrecipitationNotificationFetchScheduler;
      *a2 = result;
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

id sub_10005A590@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for APSConnectionManager();
  result = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  a1[4] = &off_10009C8C0;
  *a1 = result;
  return result;
}

uint64_t sub_10005A5DC(void *a1, void *a2)
{
  v3 = sub_1000032B8(a1, a1[3]);
  v4 = a2[4];
  sub_1000032B8(a2, a2[3]);
  type metadata accessor for APSIncomingMessageStore();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10005C2F4(result, *v3, &off_10009C4D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005A66C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5098, &qword_1000821E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  v7 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5060, &qword_1000821B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = a1[4];
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for NotificationConfigurationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v9 = result;
    v10 = v19;
    v11 = sub_1000123F0(v18, v19);
    v12 = *(*(v10 - 8) + 64);
    __chkstk_darwin(v11);
    v14 = (&v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = sub_10005C448(v6, *v14, v9);
    sub_100006994(v18);
    result = type metadata accessor for CloudChannelManager();
    a2[3] = result;
    a2[4] = &off_10009C190;
    *a2 = v16;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10005A83C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for NotificationConfigurationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  v7 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5078, &qword_1000821C8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v30)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B10, &unk_100080A30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v28)
  {
    v9 = v30;
    v10 = sub_1000123F0(v29, v30);
    v11 = *(*(v9 - 8) + 64);
    __chkstk_darwin(v10);
    v13 = (&v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v16 = type metadata accessor for CloudChannelMapManager();
    v26[3] = v16;
    v26[4] = &off_10009BF58;
    v26[0] = v15;
    v17 = type metadata accessor for CloudChannelMapProvider();
    v18 = swift_allocObject();
    v19 = sub_1000123F0(v26, v16);
    v20 = *(*(v16 - 8) + 64);
    __chkstk_darwin(v19);
    v22 = (&v26[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = *v22;
    v18[6] = v16;
    v18[7] = &off_10009BF58;
    v18[2] = v6;
    v18[3] = v24;
    sub_100006D78(&v27, (v18 + 8));
    sub_100006994(v26);
    result = sub_100006994(v29);
    a2[3] = v17;
    a2[4] = &off_10009B078;
    *a2 = v18;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10005AAFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50B0, &unk_100082200);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v5 = type metadata accessor for CloudChannelMapManager();
    swift_allocObject();
    result = sub_100051138(&v6);
    a2[3] = v5;
    a2[4] = &off_10009BF58;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005ABA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50A8, &qword_1000821F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SevereWeatherEventDataProvider();
    result = swift_allocObject();
    *(result + 16) = v5;
    a2[3] = v6;
    a2[4] = &off_10009C498;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005AC6C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_10005ACD4(void *a1)
{
  v1 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v3 = result;
    type metadata accessor for APSIncomingMessageStore();
    result = swift_allocObject();
    *(result + 16) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005AD80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A50A0, &qword_1000821F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    v5 = type metadata accessor for NotificationEnablementTracker();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = NotificationEnablementTracker.init(subscriptionManager:)();
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005AE18(void *a1)
{
  v1 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v3 = type metadata accessor for SevereNotificationsPowerLogger();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    return SevereNotificationsPowerLogger.init(notificationStore:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005AECC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = type metadata accessor for LazyOptions();
  v8 = sub_100018904(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100006930(a1, v16);
  v11 = swift_allocObject();
  sub_100006D78(v16, v11 + 16);
  *&v16[0] = _swiftEmptyArrayStorage;
  sub_10005B100();
  sub_100003020(&qword_1000A3AF8, &qword_100080A20);
  sub_1000129F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = sub_100003020(a3, a4);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  return ReferenceCountedLazy.init(options:loadBlock:)();
}

uint64_t sub_10005B004@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5070, &qword_1000821C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    return sub_100006D78(&v5, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_10005B0C0()
{
  sub_100006994((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10005B100()
{
  result = qword_1000A3AF0;
  if (!qword_1000A3AF0)
  {
    type metadata accessor for LazyOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3AF0);
  }

  return result;
}

void *sub_10005B160()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_10005B1EC(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_10005B1AC(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_10005B1EC((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void *sub_10005B1EC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003020(&qword_1000A50B8, &qword_100082210);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100003020(&qword_1000A50C0, &qword_100082218);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10005B31C()
{
  sub_10005C6A0();
  if (v5)
  {
    sub_10005C614();
    if (v7 != v8)
    {
      sub_10005C668();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10005C604();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10005C658(v6);
  if (v3)
  {
    sub_100003020(&qword_1000A3B90, &qword_100080AB0);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[40 * v2] <= v11)
    {
      memmove(v11, v12, 40 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10005B414()
{
  sub_10005C58C();
  if (v4)
  {
    sub_10005C59C();
    if (v6 != v7)
    {
      sub_10005C64C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10005C5AC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10005C674(v2, v5, &qword_1000A50D8, &qword_100082248);
  sub_10005C640();
  v9 = type metadata accessor for LocationInfo();
  sub_10005105C(v9);
  v11 = *(v10 + 80);
  sub_100043674();
  if (v1)
  {
    sub_10005C624(&type metadata accessor for LocationInfo, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10005C5BC();
  }
}

void sub_10005B4EC()
{
  sub_10005C58C();
  if (v4)
  {
    sub_10005C59C();
    if (v6 != v7)
    {
      sub_10005C64C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10005C5AC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10005C674(v2, v5, &qword_1000A3B78, &unk_100082260);
  sub_10005C640();
  v9 = type metadata accessor for URLQueryItem();
  sub_10005105C(v9);
  v11 = *(v10 + 80);
  sub_100043674();
  if (v1)
  {
    sub_10005C624(&type metadata accessor for URLQueryItem, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10005C5BC();
  }
}

void sub_10005B5C4()
{
  sub_10005C6A0();
  if (v5)
  {
    sub_10005C614();
    if (v7 != v8)
    {
      sub_10005C668();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10005C604();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10005C658(v6);
  if (v3)
  {
    sub_100003020(&qword_1000A3B60, &unk_100082250);
    v9 = sub_10005C6AC();
    j__malloc_size(v9);
    sub_10005C5F0();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10005B698()
{
  sub_10005C58C();
  if (v4)
  {
    sub_10005C59C();
    if (v6 != v7)
    {
      sub_10005C64C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10005C5AC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10005C674(v2, v5, &qword_1000A3B98, &qword_100080AB8);
  sub_10005C640();
  v9 = type metadata accessor for SevereNotificationSubscription();
  sub_10005105C(v9);
  v11 = *(v10 + 80);
  sub_100043674();
  if (v1)
  {
    sub_10005C624(type metadata accessor for SevereNotificationSubscription, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10005C5BC();
  }
}

void sub_10005B794()
{
  sub_10005C58C();
  if (v4)
  {
    sub_10005C59C();
    if (v6 != v7)
    {
      sub_10005C64C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10005C5AC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10005C674(v2, v5, &qword_1000A3B68, &qword_100080A98);
  sub_10005C640();
  v9 = type metadata accessor for WeatherAlert();
  sub_10005105C(v9);
  v11 = *(v10 + 80);
  sub_100043674();
  if (v1)
  {
    sub_10005C624(&type metadata accessor for WeatherAlert, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10005C5BC();
  }
}

void sub_10005B86C()
{
  sub_10005C6A0();
  if (v5)
  {
    sub_10005C614();
    if (v7 != v8)
    {
      sub_10005C668();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10005C604();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10005C658(v6);
  if (v3)
  {
    sub_100003020(&qword_1000A50F0, &qword_1000822A0);
    v9 = sub_10005C6AC();
    j__malloc_size(v9);
    sub_10005C5F0();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10005B940()
{
  sub_10005C6A0();
  if (v3)
  {
    sub_10005C614();
    if (v5 != v6)
    {
      sub_10005C668();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10005C604();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100003020(&qword_1000A50E8, &qword_100082288);
    v9 = sub_10005C6AC();
    j__malloc_size(v9);
    sub_10005C5F0();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_10005BA14()
{
  sub_10005C58C();
  if (v4)
  {
    sub_10005C59C();
    if (v6 != v7)
    {
      sub_10005C64C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10005C5AC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10005C674(v2, v5, &qword_1000A3BA8, &unk_100082290);
  sub_10005C640();
  v9 = type metadata accessor for PredictedLocation();
  sub_10005105C(v9);
  v11 = *(v10 + 80);
  sub_100043674();
  if (v1)
  {
    sub_10005C624(type metadata accessor for PredictedLocation, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10005C5BC();
  }
}

void sub_10005BAEC()
{
  sub_10005C58C();
  if (v4)
  {
    sub_10005C59C();
    if (v6 != v7)
    {
      sub_10005C64C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10005C5AC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10005C674(v2, v5, &qword_1000A3BA0, &qword_100082280);
  sub_10005C640();
  v9 = type metadata accessor for ResolvedPredictedLocation();
  sub_10005105C(v9);
  v11 = *(v10 + 80);
  sub_100043674();
  if (v1)
  {
    sub_10005C624(type metadata accessor for ResolvedPredictedLocation, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10005C5BC();
  }
}

void sub_10005BBC4()
{
  sub_10005C58C();
  if (v4)
  {
    sub_10005C59C();
    if (v6 != v7)
    {
      sub_10005C64C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10005C5AC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10005C674(v2, v5, &qword_1000A50F8, &qword_1000822A8);
  sub_10005C640();
  v9 = type metadata accessor for WeatherServiceRequestLocation();
  sub_10005105C(v9);
  v11 = *(v10 + 80);
  sub_100043674();
  if (v1)
  {
    sub_10005C624(&type metadata accessor for WeatherServiceRequestLocation, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10005C5BC();
  }
}

void sub_10005BCC0(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    sub_10005C614();
    if (v13 != v14)
    {
      sub_10005C668();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_10005C604();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_10005BF1C(v15, v12, a5, a6, a7, a8);
  v17 = sub_100003020(a7, a8);
  sub_10005105C(v17);
  v19 = *(v18 + 80);
  sub_100043674();
  if (a1)
  {
    sub_10005C13C(a4 + v20, v15, v16 + v20, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_10005BDBC(uint64_t a1, uint64_t a2)
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

  sub_100003020(&qword_1000A3B60, &unk_100082250);
  v4 = sub_10005C6AC();
  j__malloc_size(v4);
  sub_10005C5F0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

char *sub_10005BE24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100003020(a3, a4);
  v8 = sub_10005C640();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v10)
  {
    if (&result[-v11] != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * (&result[-v11] / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10005BF1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003020(a3, a4);
  v10 = *(sub_100003020(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_10005C01C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_10005C57C(a3, result);
  }

  return result;
}

char *sub_10005C044(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_10005C57C(a3, result);
  }

  return result;
}

char *sub_10005C094(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_10005C57C(a3, result);
  }

  return result;
}

uint64_t sub_10005C13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_10005C68C();
  if (v10 && (v11 = sub_100003020(a4, a5), result = sub_100018904(v11), v6 + *(v13 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v14 = sub_10005C5DC();

      return _swift_arrayInitWithTakeBackToFront(v14);
    }
  }

  else
  {
    sub_100003020(a4, a5);
    v15 = sub_10005C5DC();

    return _swift_arrayInitWithTakeFrontToBack(v15);
  }

  return result;
}

uint64_t sub_10005C234(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_10005C68C();
  if (v8 && (v9 = (a4)(0), result = sub_100018904(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v12 = sub_10005C5DC();

      return _swift_arrayInitWithTakeBackToFront(v12);
    }
  }

  else
  {
    a4(0);
    v13 = sub_10005C5DC();

    return _swift_arrayInitWithTakeFrontToBack(v13);
  }

  return result;
}

void sub_10005C2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC8weatherd20APSConnectionManager_lock);
  UnfairLock.lock()();
  v7 = OBJC_IVAR____TtC8weatherd20APSConnectionManager_observers;
  swift_beginAccess();
  sub_10005B160();
  v8 = *(*(a2 + v7) + 16);
  sub_10005B1AC(v8);
  v9 = *(a2 + v7);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = a1;
  *(v10 + 40) = a3;
  *(a2 + v7) = v9;
  swift_endAccess();

  UnfairLock.unlock()();
}

void *sub_10005C3B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = type metadata accessor for APSConnectionManager();
  v11 = &off_10009C8C0;
  *&v9 = a2;
  sub_100030944(0, &qword_1000A4188, NSOperationQueue_ptr);
  a4[9] = static NSOperationQueue.cloudChannels.getter();
  a4[2] = a1;
  sub_100006D78(&v9, (a4 + 3));
  a4[8] = a3;
  return a4;
}

void *sub_10005C448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for APSConnectionManager();
  v16[3] = v6;
  v16[4] = &off_10009C8C0;
  v16[0] = a2;
  type metadata accessor for CloudChannelManager();
  v7 = swift_allocObject();
  v8 = sub_1000123F0(v16, v6);
  v9 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10005C3B8(a1, *v11, a3, v7);
  sub_100006994(v16);
  return v13;
}

uint64_t sub_10005C5BC()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10005C624@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_10005C234(v2 + a2, v4, v3 + a2, a1);
}

void sub_10005C658(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

char *sub_10005C674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10005BE24(v5, a2, a3, a4, v4);
}

uint64_t sub_10005C6AC()
{

  return swift_allocObject();
}

uint64_t sub_10005C6C4()
{
  v7 = Location.id.getter();
  v1._countAndFlagsBits = 58;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2 = (v0 + *(type metadata accessor for CloudChannelSubscription() + 20));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1701736270;
  }

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);

  return v7;
}

uint64_t type metadata accessor for CloudChannelSubscription()
{
  result = qword_1000A5160;
  if (!qword_1000A5160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005C7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Location();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100007374(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_10005C890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Location();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100006BD4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_10005C93C()
{
  type metadata accessor for Location();
  if (v0 <= 0x3F)
  {
    sub_10005C9C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10005C9C0()
{
  if (!qword_1000A5170)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5170);
    }
  }
}

uint64_t sub_10005CA10(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = a2[4];

  return sub_10002AB24(v6, v7);
}

void sub_10005CAA0(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  String.hash(into:)();
  v5 = v1[2];
  v6 = v1[3];
  String.hash(into:)();
  v7 = v1[4];

  sub_10002F9FC(a1, v7);
}

Swift::Int sub_10005CAEC()
{
  sub_10005CCE0();
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10002F9FC(v2, v0);
  return Hasher._finalize()();
}

Swift::Int sub_10005CB68()
{
  sub_10005CCE0();
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10002F9FC(v2, v0);
  return Hasher._finalize()();
}

__n128 sub_10005CBDC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10005CBF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10005CC30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005CC8C()
{
  result = qword_1000A51A0;
  if (!qword_1000A51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A51A0);
  }

  return result;
}

void sub_10005CCE0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
}

uint64_t sub_10005CCF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Location();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v46 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v40 - v8;
  v10 = type metadata accessor for SevereNotificationSubscription();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v43 = *(v14 - 8);
  v44 = v14;
  v15 = *(v43 + 64);
  __chkstk_darwin(v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v45 = a1;
  sub_10005F478(a1, v13, type metadata accessor for SevereNotificationSubscription);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40[1] = v6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v42 = v2;
    v23 = v22;
    v48[0] = v22;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    sub_1000383B8();
    v25 = v24;
    v41 = v9;
    v26 = v5;
    v27 = v4;
    v29 = v28;
    sub_1000600C4(v13, type metadata accessor for SevereNotificationSubscription);
    v30 = sub_10000D9FC(v25, v29, v48);
    v4 = v27;
    v5 = v26;
    v9 = v41;

    *(v21 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "Enqueuing request to get cloud channel for notification subscription; subscription=%{private,mask.hash}s", v21, 0x16u);
    sub_100006994(v23);
    v2 = v42;
  }

  else
  {

    sub_1000600C4(v13, type metadata accessor for SevereNotificationSubscription);
  }

  (*(v43 + 8))(v17, v44);
  v31 = *(v2 + 16);
  ReferenceCountedLazy.increase()();
  sub_100037B74();
  sub_100006930(v48, v47);
  v32 = v46;
  (*(v5 + 16))(v46, v9, v4);
  v33 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v2;
  sub_1000435A8(v47, v34 + 24);
  (*(v5 + 32))(v34 + v33, v32, v4);
  v35 = objc_allocWithZone(sub_100003020(&qword_1000A5298, &qword_100082458));

  v36 = AsyncBlockOperation.init(_:)();
  sub_100003020(&qword_1000A5268, &qword_100082440);
  v37 = v36;
  v38 = Promise.__allocating_init(_:scheduleOn:)();

  (*(v5 + 8))(v9, v4);
  sub_100006994(v48);
  return v38;
}

uint64_t sub_10005D170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v22 = a1;
  v5 = type metadata accessor for Location();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v18 = sub_100005360();
  v8 = static OS_dispatch_queue.notifications.getter();
  sub_100006930(a2, v23);
  v19 = *(v6 + 16);
  v19(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v9 = *(v6 + 80);
  v10 = swift_allocObject();
  sub_1000435A8(v23, v10 + 16);
  v17 = *(v6 + 32);
  v17(v10 + ((v9 + 56) & ~v9), &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_100003020(&qword_1000A34B0, &qword_1000804C0);
  v21 = type metadata accessor for CloudChannelManager();
  firstly<A, B>(on:disposeOn:closure:)();

  v11 = static OS_dispatch_queue.notifications.getter();
  v19(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v5);
  v12 = swift_allocObject();
  v17(v12 + ((v9 + 16) & ~v9), &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  type metadata accessor for CloudChannelSubscription();
  Promise.then<A>(on:closure:)();

  v13 = zalgo.getter();
  v14 = Promise.always<A>(on:disposeOn:closure:)();

  return v14;
}

uint64_t sub_10005D45C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = type metadata accessor for Location();
  (*(*(v7 - 8) + 16))(a3, a2, v7);
  v8 = (a3 + *(type metadata accessor for CloudChannelSubscription() + 20));
  *v8 = v6;
  v8[1] = v5;
}

uint64_t sub_10005D518(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = v6;
    v13 = v12;
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136446210;

    sub_10005D9BC(v15);
    v16 = Set.description.getter();
    v28 = v4;
    v17 = v16;
    v26 = v5;
    v19 = v18;

    v20 = sub_10000D9FC(v17, v19, &v29);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "Expecting to subscribe to channels: %{public}s", v13, 0xCu);
    sub_100006994(v14);

    (*(v27 + 8))(v9, v26);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_100005360();
  v21 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A5BC0, &unk_100082DB0);
  firstly<A, B>(on:disposeOn:closure:)();

  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v2;

  v23 = zalgo.getter();
  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  v24 = Promise.then<A>(on:closure:)();

  return v24;
}

uint64_t sub_10005D840(uint64_t a1)
{
  v2 = type metadata accessor for SevereNotificationSubscription();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_10005F2B0();
  v11 = Set.init(minimumCapacity:)();
  v18 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_10005F478(v13, v7, type metadata accessor for SevereNotificationSubscription);
      sub_10002CBD4();
      sub_1000600C4(v9, type metadata accessor for SevereNotificationSubscription);
      v13 += v14;
      --v12;
    }

    while (v12);

    return v18;
  }

  else
  {
    v15 = v11;
  }

  return v15;
}

uint64_t sub_10005D9BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v10 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v10;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_10002CA88(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_10005DAB4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  static Logger.notifications.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v45 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v46 = v3;
    v42 = v18;
    v47 = v18;
    *v17 = 136446210;
    v44 = v8;

    v19 = a3;
    v20 = Array.description.getter();
    v43 = v9;
    v22 = v21;

    v23 = v20;
    a3 = v19;
    v24 = sub_10000D9FC(v23, v22, &v47);

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Currently subscribed to channels: %{public}s", v17, 0xCu);
    sub_100006994(v42);
    v4 = v46;

    a2 = v45;

    (*(v43 + 8))(v12, v44);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v26 = sub_10005D9BC(v25);
  if (v13)
  {
    v27 = v13;
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  v28 = sub_10005F53C(v27, v26);

  v29 = sub_10005D9BC(v27);
  v30 = sub_10005F53C(a2, v29);
  if (v28[2])
  {
    v31 = sub_1000032B8((a3 + 24), *(a3 + 48));
    v32 = sub_10005DE38(v28);
    v33 = *v31;
    sub_100071424(v32);
    if (v4)
    {
    }
  }

  else
  {
  }

  if (!v30[2])
  {

    goto LABEL_16;
  }

  v35 = sub_1000032B8((a3 + 24), *(a3 + 48));
  v36 = sub_10005DE38(v30);
  v37 = *v35;
  sub_100071818(v36);

  if (!v4)
  {
LABEL_16:
    v47 = a2;
    v38 = sub_100003020(&qword_1000A3538, &qword_100080EF0);
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();

    return Promise.init(value:)();
  }

  return result;
}

void *sub_10005DE38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10005BDBC(*(a1 + 16), 0);
  v4 = sub_10005FF68(&v6, v3 + 4, v2, a1);
  sub_100060178();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_10005DEC8()
{
  v1 = *(v0 + 16);

  sub_100006994((v0 + 24));
  v2 = *(v0 + 64);

  return v0;
}

uint64_t sub_10005DF00()
{
  sub_10005DEC8();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_10005DF58(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for Logger();
  v5 = sub_100006FBC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v3;
    v15 = v14;
    v28 = swift_slowAlloc();
    v30 = v28;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;

    sub_10005D840(v16);
    type metadata accessor for SevereNotificationSubscription();
    v27 = v4;
    sub_10005F2B0();
    v17 = Set.description.getter();
    v19 = v18;

    v20 = sub_10000D9FC(v17, v19, &v30);

    *(v15 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Validating cloud channel subscriptions; notificationSubscriptions=%{private,mask.hash}s", v15, 0x16u);
    sub_100006994(v28);

    v21 = (*(v7 + 8))(v11, v27);
  }

  else
  {

    v21 = (*(v7 + 8))(v11, v4);
  }

  __chkstk_darwin(v21);
  *(&v27 - 2) = a1;
  sub_100003020(&qword_1000A5260, &qword_100082438);
  firstly<A>(closure:)();
  sub_100005360();
  v22 = static OS_dispatch_queue.notifications.getter();

  sub_100003020(&qword_1000A5268, &qword_100082440);
  sub_100006CD0(&qword_1000A5270, &qword_1000A5260, &qword_100082438);
  Promise<A>.compactMap<A>(on:closure:)();

  v23 = zalgo.getter();
  sub_100003020(&qword_1000A4140, &qword_1000810C0);
  Promise.then<A>(on:closure:)();

  v24 = static OS_dispatch_queue.notifications.getter();
  v25 = Promise.then<A, B>(on:disposeOn:closure:)();

  return v25;
}

uint64_t sub_10005E350()
{
  v0 = sub_100003020(&qword_1000A40E8, &qword_100081018);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  return Promise.init(value:)();
}

uint64_t sub_10005E3D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10005CCF4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10005E408(uint64_t *a1)
{
  v1 = *a1;
  sub_100003020(&qword_1000A5268, &qword_100082440);
  v2 = zalgo.getter();
  sub_100003020(&qword_1000A5288, &qword_100082450);
  sub_100006CD0(&qword_1000A5290, &qword_1000A5288, &qword_100082450);
  v3 = static Promise.all<A>(on:_:)();

  return v3;
}

uint64_t sub_10005E4D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_100005360();
  v4 = static OS_dispatch_queue.notifications.getter();
  type metadata accessor for NotificationConfiguration();

  firstly<A>(on:closure:)();

  v5 = static OS_dispatch_queue.notifications.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a2;

  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  Promise.then<A>(on:closure:)();

  v7 = static OS_dispatch_queue.notifications.getter();
  *(swift_allocObject() + 16) = v3;

  sub_100003020(&qword_1000A4140, &qword_1000810C0);
  v8 = Promise.then<A>(on:closure:)();

  return v8;
}

uint64_t sub_10005E68C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v80 = a1;
  v6 = type metadata accessor for Logger();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  __chkstk_darwin(v6);
  v78 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CloudChannelSubscription();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v81 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v16 = &v70 - v15;
  v17 = *(a2 + 16);
  v18 = _swiftEmptyArrayStorage;
  v77 = v17;
  v73 = v14;
  v74 = a2;
  v72 = v13;
  if (v17)
  {
    v4 = &v16[*(v13 + 20)];
    v19 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v83 = *(v14 + 72);
    do
    {
      v3 = type metadata accessor for CloudChannelSubscription;
      sub_10005F478(v19, v16, type metadata accessor for CloudChannelSubscription);
      v20 = *v4;
      v21 = *(v4 + 1);

      sub_1000600C4(v16, type metadata accessor for CloudChannelSubscription);
      if (v21)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = *(v18 + 16);
          sub_10005B5C4();
          v18 = v25;
        }

        v22 = *(v18 + 16);
        v3 = v22 + 1;
        if (v22 >= *(v18 + 24) >> 1)
        {
          sub_10005B5C4();
          v18 = v26;
        }

        *(v18 + 16) = v3;
        v23 = v18 + 16 * v22;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
      }

      v19 += v83;
      --v17;
    }

    while (v17);
  }

  v27 = v80;
  v28 = NotificationConfiguration.channelSubscriptionLimit.getter();
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  v29 = v28;
  if (v28 < *(v18 + 16))
  {
    v30 = v78;
    static Logger.notifications.getter();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v33 = os_log_type_enabled(v31, v32);
    v71 = v29;
    if (v33)
    {
      v34 = swift_slowAlloc();
      *v34 = 134349312;
      v35 = *(v18 + 16);

      *(v34 + 4) = v35;
      v30 = v78;

      *(v34 + 12) = 2050;
      *(v34 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v31, v32, "Required number of channel subscriptions exceeds threshold: %{public}ld/%{public}ld", v34, 0x16u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v37 = v81;
    v38 = v77;
    v39 = _swiftEmptyArrayStorage;
    (*(v75 + 8))(v30, v76);
    v85 = _swiftEmptyArrayStorage;
    if (v38)
    {
      v40 = (v37 + *(v72 + 20));
      v41 = v74 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
      v83 = *(v73 + 72);
      v80 = v40;
      while (1)
      {
        sub_10005F478(v41, v37, type metadata accessor for CloudChannelSubscription);
        v42 = v40[1];
        if (v42)
        {
          break;
        }

        sub_1000600C4(v37, type metadata accessor for CloudChannelSubscription);
LABEL_39:
        v41 += v83;
        if (!--v38)
        {
          goto LABEL_40;
        }
      }

      v43 = *v40;
      v44 = v40[1];

      Location.kind.getter();
      v45 = Location.Identifier.Kind.rawValue.getter();
      v47 = v46;
      if (v45 == Location.Identifier.Kind.rawValue.getter() && v47 == v48)
      {
      }

      else
      {
        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v50 & 1) == 0)
        {
          v37 = v81;
LABEL_31:
          v84[0] = v43;
          v84[1] = v42;
          __chkstk_darwin(v51);
          *(&v70 - 2) = v84;

          v55 = v82;
          v56 = sub_100036E7C(sub_1000604E4, (&v70 - 4), v39);
          v82 = v55;

          if (v56)
          {
            sub_1000600C4(v37, type metadata accessor for CloudChannelSubscription);
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = v39[2];
              sub_10005B5C4();
              v39 = v60;
            }

            v57 = v39[2];
            if (v57 >= v39[3] >> 1)
            {
              sub_10005B5C4();
              v39 = v61;
            }

            sub_1000600C4(v37, type metadata accessor for CloudChannelSubscription);
            v39[2] = v57 + 1;
            v58 = &v39[2 * v57];
            v58[4] = v43;
            v58[5] = v42;
          }

          v40 = v80;
          goto LABEL_39;
        }
      }

      v52 = v39[2];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v39;
      if (!isUniquelyReferenced_nonNull_native || v52 >= v39[3] >> 1)
      {
        sub_10005B5C4();
        v39 = v54;
        v85 = v54;
      }

      v37 = v81;
      v51 = sub_10005FD94(0, 0, 1, v43, v42);
      goto LABEL_31;
    }

LABEL_40:
    v3 = sub_10005ED9C(v71, v39);
    v27 = v62;
    v4 = v63;
    v18 = v64;
    if ((v64 & 1) == 0)
    {
      goto LABEL_41;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v67 = swift_dynamicCastClass();
    if (!v67)
    {
      swift_unknownObjectRelease();
      v67 = _swiftEmptyArrayStorage;
    }

    v68 = v67[2];

    if (!__OFSUB__(v18 >> 1, v4))
    {
      if (v68 == (v18 >> 1) - v4)
      {
        v66 = swift_dynamicCastClass();
        if (!v66)
        {
          swift_unknownObjectRelease();
          v66 = _swiftEmptyArrayStorage;
        }

        goto LABEL_48;
      }

      goto LABEL_52;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    swift_unknownObjectRelease();
LABEL_41:
    sub_10005F308(v3, v27, v4, v18);
    v66 = v65;
LABEL_48:
    v36 = sub_10005D518(v66);
    swift_unknownObjectRelease();

    return v36;
  }

  v36 = sub_10005D518(v18);

  return v36;
}

uint64_t sub_10005ED9C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_10005FF1C(0, result, v3);
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
      v6 = sub_10005FEB0(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005EE30(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v47 = type metadata accessor for Logger();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v47);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for CloudChannelSubscription();
  v10 = *(v48 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v48);
  v50 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v49 = *a1;
    v54 = _swiftEmptyArrayStorage;
    v15 = sub_1000148C4(0, v13, 0);
    v14 = v54;
    v52 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = a2 + v52;
    v46 = (v6 + 8);
    v51 = *(v10 + 72);
    *&v17 = 136315138;
    v44 = v17;
    v18 = v9;
    v19 = v48;
    v20 = v50;
    v43 = v9;
    while (1)
    {
      v21 = (v16 + *(v19 + 20));
      v22 = v21[1];
      if (!v22)
      {
        break;
      }

      v53[0] = *v21;
      v53[1] = v22;
      __chkstk_darwin(v15);
      *(&v42 - 2) = v53;
      if (sub_100036E7C(sub_100036F58, (&v42 - 4), v49))
      {
        v23 = v16;
        v20 = v50;
LABEL_7:
        sub_10005F478(v23, v20, type metadata accessor for CloudChannelSubscription);
        goto LABEL_12;
      }

      static Logger.notifications.getter();

      v24 = Logger.logObject.getter();
      v25 = v18;
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v45 = v3;
        v29 = v28;
        v53[0] = v28;
        *v27 = v44;
        v30 = String.identifier.getter();
        v32 = sub_10000D9FC(v30, v31, v53);

        *(v27 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v24, v26, "Failed to subscribe to channel %s due to channel limit", v27, 0xCu);
        sub_100006994(v29);
        v3 = v45;

        v18 = v43;
        (*v46)(v43, v47);
      }

      else
      {

        (*v46)(v25, v47);
        v18 = v25;
      }

      v33 = type metadata accessor for Location();
      v20 = v50;
      (*(*(v33 - 8) + 16))(v50, v16, v33);
      v19 = v48;
      v34 = (v20 + *(v48 + 20));
      *v34 = 0;
      v34[1] = 0;
LABEL_12:
      v54 = v14;
      v36 = v14[2];
      v35 = v14[3];
      if (v36 >= v35 >> 1)
      {
        sub_1000148C4(v35 > 1, v36 + 1, 1);
        v19 = v48;
        v14 = v54;
      }

      v14[2] = v36 + 1;
      v37 = v51;
      v15 = sub_10005F4D8(v20, v14 + v52 + v36 * v51);
      v16 += v37;
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

    v23 = v16;
    goto LABEL_7;
  }

LABEL_15:
  v53[0] = v14;
  v38 = sub_100003020(&qword_1000A5280, &qword_100082448);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  return Promise.init(value:)();
}

unint64_t sub_10005F2B0()
{
  result = qword_1000A5278;
  if (!qword_1000A5278)
  {
    type metadata accessor for SevereNotificationSubscription();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5278);
  }

  return result;
}

void sub_10005F308(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_100003020(&qword_1000A3B60, &unk_100082250);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_10005F424()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005F478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100018904(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10005F4D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudChannelSubscription();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t *sub_10005F53C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v45[0] = a1;
    v3 = *(a1 + 16);
    v43 = a1 + 32;
    v4 = a2 + 7;
    v5 = 0;

    v42 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v43 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      v9 = v2[5];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();
      v11 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = 1 << (v10 & v11);
        if ((v14 & v4[v13]) == 0)
        {

          v3 = v42;
          goto LABEL_3;
        }

        v15 = (v2[6] + 16 * v12);
        v16 = *v15 == v8 && v15[1] == v7;
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v10 = v12 + 1;
      }

      v17 = v5;
      v45[1] = v5;

      v19 = *(v2 + 32);
      v20 = ((1 << v19) + 63) >> 6;
      v21 = 8 * v20;
      if ((v19 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v36 = swift_slowAlloc();
          v37 = sub_10005FAF0(v36, v20, v2 + 7, v20, v2, v12, v45);

          return v37;
        }
      }

      v38[0] = v20;
      v38[1] = v38;
      __chkstk_darwin(v18);
      v22 = v38 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v22, v2 + 7, v21);
      v23 = *&v22[8 * v13] & ~v14;
      v40 = v22;
      *&v22[8 * v13] = v23;
      v24 = v2[2] - 1;
      v12 = v44;
      v42 = *(v44 + 16);
      v20 = v17;
      while (1)
      {
        v39 = v24;
        v41 = v17;
LABEL_16:
        while (2)
        {
          if (v20 == v42)
          {
            v2 = sub_10005FB78(v40, v38[0], v39, v2);
            goto LABEL_33;
          }

          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v20 >= *(v12 + 16))
          {
            goto LABEL_37;
          }

          v25 = (v43 + 16 * v20);
          v14 = *v25;
          v13 = v25[1];
          ++v20;
          v26 = v2[5];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v27 = Hasher._finalize()();
          v21 = ~(-1 << *(v2 + 32));
          do
          {
            v28 = v27 & v21;
            v29 = (v27 & v21) >> 6;
            v30 = 1 << (v27 & v21);
            if ((v30 & v4[v29]) == 0)
            {

              v12 = v44;
              v17 = v41;
              goto LABEL_16;
            }

            v31 = (v2[6] + 16 * v28);
            if (*v31 == v14 && v31[1] == v13)
            {
              break;
            }

            v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v27 = v28 + 1;
          }

          while ((v33 & 1) == 0);

          v34 = v40[v29];
          v40[v29] = v34 & ~v30;
          v16 = (v34 & v30) == 0;
          v12 = v44;
          v17 = v41;
          if (v16)
          {
            continue;
          }

          break;
        }

        v24 = v39 - 1;
        if (__OFSUB__(v39, 1))
        {
          break;
        }

        v17 = v20;
        if (v39 == 1)
        {

          v2 = &_swiftEmptySetSingleton;
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t *sub_10005F944(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v26 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v27 = a5;
  while (1)
  {
    v25 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_10005FB78(v26, a2, v25, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    v14 = *(a3 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v15 = Hasher._finalize()();
    v16 = ~(-1 << *(a3 + 32));
    do
    {
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = 1 << (v15 & v16);
      if ((v19 & *(v8 + 8 * v18)) == 0)
      {

        a5 = v27;
        goto LABEL_3;
      }

      v20 = (*(a3 + 48) + 16 * v17);
      if (*v20 == v13 && v20[1] == v12)
      {
        break;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v15 = v17 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = v26[v18];
    v26[v18] = v23 & ~v19;
    a5 = v27;
    if ((v23 & v19) == 0)
    {
      goto LABEL_3;
    }

    v7 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_20;
    }

    if (v25 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *sub_10005FAF0(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_10005F944(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_10005FB78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100003020(&qword_1000A4068, &qword_100080F88);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10005FD94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  result = sub_10005C044((v11 + 32 + 16 * a2), v14 - a2, &v12[2 * a3]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if (v12 + 2 < &v12[2 * a3])
    {

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_10005FEB0(unint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_10005FF1C(uint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_10005FF68(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000600C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100018904(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10006011C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100060180()
{
  v1 = type metadata accessor for Location();
  sub_100006FBC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  sub_100006994((v0 + 24));
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100060240()
{
  v1 = *(type metadata accessor for Location() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_10005D170(v2, v0 + 24, v3);
}

uint64_t sub_1000602BC()
{
  v1 = type metadata accessor for Location();
  sub_100006FBC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  sub_100006994((v0 + 16));
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000603E4()
{
  v1 = type metadata accessor for Location();
  sub_100018904(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100060500()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for Client();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5338, &qword_1000824C0);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5340, qword_1000824C8);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A50D0, &qword_100082240);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for UploadBatchEventConfig();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for UploadBatchEventProcessor();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for FlushManager();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  (*(v1 + 104))(v4, enum case for Scope.singleton(_:), v0);
  Definition.inScope(_:)();

  (*(v1 + 8))(v4, v0);
  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

void sub_1000607D0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForInfoDictionaryKey:v1];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100018804(v8, v9);
  swift_dynamicCast();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 objectForInfoDictionaryKey:v3];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100018804(v8, v9);
  swift_dynamicCast();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v0 objectForInfoDictionaryKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100018804(v8, v9);
    swift_dynamicCast();
    v7 = objc_allocWithZone(type metadata accessor for Client());
    Client.init(identifier:name:version:buildNumber:)();

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100060A38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    v5 = type metadata accessor for LocationAccessDataProvider();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = LocationAccessDataProvider.init(locationManager:)();
    a2[3] = v5;
    a2[4] = &protocol witness table for LocationAccessDataProvider;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100060AE0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NonAppCellularRadioAccessTechnologyProvider();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = NonAppCellularRadioAccessTechnologyProvider.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for NonAppCellularRadioAccessTechnologyProvider;
  *a1 = result;
  return result;
}

uint64_t sub_100060B38(uint64_t a1)
{
  v2 = type metadata accessor for LazyOptions();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_100006930(a1, v9);
  v4 = swift_allocObject();
  sub_100006D78(v9, v4 + 16);
  *&v9[0] = _swiftEmptyArrayStorage;
  sub_100062714(&qword_1000A3AF0, &type metadata accessor for LazyOptions);
  sub_100003020(&qword_1000A3AF8, &qword_100080A20);
  sub_1000626C0(&qword_1000A3B00, &qword_1000A3AF8, &qword_100080A20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v5 = sub_100003020(&qword_1000A50D0, &qword_100082240);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return ReferenceCountedLazy.init(options:loadBlock:)();
}

uint64_t sub_100060CCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5030, &qword_100082188);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v22)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = a1[4];
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for SessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  v10 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5338, &qword_1000824C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5340, qword_1000824C8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v16)
  {
    v13 = type metadata accessor for PrecipitationNotificationAccuracyTracker();
    swift_allocObject();
    v14 = sub_100008398(v6, &v21, v9, &v19, &v17, &v15);
    a2[3] = v13;
    result = sub_100062714(&qword_1000A53B8, type metadata accessor for PrecipitationNotificationAccuracyTracker);
    a2[4] = result;
    *a2 = v14;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100060F24()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UploadBatchEventConfig();
  v5 = static UploadBatchEventConfig.default.getter();
  URL.init(fileURLWithPath:)();
  v6 = UploadBatchEventConfig.with(directory:)();

  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_100061034(void *a1)
{
  v2 = a1[4];
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for AppSessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for Client();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5348, &qword_1000824E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = a1[4];
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for UploadBatchEventConfig();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    type metadata accessor for FlushManager();
    v7 = type metadata accessor for URLSessionUploadClientFactory();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    URLSessionUploadClientFactory.init()();
    return FlushManager.__allocating_init(appSessionManager:client:endpoint:contentType:config:clientFactory:)();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000611B8()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimestampJitter();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for SessionManager();
  RegistrationContainer.register<A>(_:name:factory:)();
  Definition.thenConfigure(_:)();

  type metadata accessor for DiagnosticsConsentProvider();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for AppSessionManager();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for TrackingConsent();
  RegistrationContainer.register<A>(_:name:factory:)();
  Definition.thenConfigure(_:)();

  type metadata accessor for LoggingEventProcessor();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for UploadBatchEventProcessor();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for UploadBatchEventConfig();
  RegistrationContainer.register<A>(_:name:factory:)();
  (*(v1 + 104))(v4, enum case for Scope.singleton(_:), v0);
  Definition.inScope(_:)();

  (*(v1 + 8))(v4, v0);
  sub_100003020(&qword_1000A5348, &qword_1000824E0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5350, &qword_1000824E8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5358, &qword_1000824F0);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100061578@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_100082460;
  v2 = enum case for TimestampJitter.enabled(_:);
  v3 = type metadata accessor for TimestampJitter();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000615F8(void *a1)
{
  v2 = type metadata accessor for TimeDurationGranularity();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003020(&qword_1000A5368, &qword_100082508);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v34 - v7;
  v9 = sub_100003020(&qword_1000A5370, &qword_100082510);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for SessionManager.Options();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = type metadata accessor for SessionManagerConfiguration();
  v34 = *(v16 - 8);
  v35 = v16;
  v17 = *(v34 + 64);
  __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003020(&qword_1000A5378, &qword_100082518);
  v20 = *(v14 + 72);
  v21 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100080310;
  static SessionManager.Options.gracefulNoSessionEventSubmission.getter();
  static SessionManager.Options.gracefulEventCreation.getter();
  v37[0] = v22;
  sub_100062714(&qword_1000A5380, &type metadata accessor for SessionManager.Options);
  sub_100003020(&qword_1000A5388, &qword_100082520);
  sub_1000626C0(&qword_1000A5390, &qword_1000A5388, &qword_100082520);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = a1[4];
  sub_1000032B8(a1, a1[3]);
  v24 = type metadata accessor for TimestampJitter();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100007374(v12, 1, v24);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v37[3] = v24;
  v37[4] = &protocol witness table for TimestampJitter;
  v26 = sub_100006D18(v37);
  (*(*(v24 - 8) + 32))(v26, v12, v24);
  v27 = a1[4];
  sub_1000032B8(a1, a1[3]);
  v28 = type metadata accessor for DiagnosticsConsentProvider();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100007374(v8, 1, v28);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_100061AA4();
  v29 = type metadata accessor for DisabledPrivacyValidationProvider();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  DisabledPrivacyValidationProvider.init()();
  static TimeDurationGranularity.milliseconds.getter();
  SessionManagerConfiguration.init(options:flushProcessor:timestampConfigurationProvider:privacyValidationProvider:diagnosticsConsentProvider:timeDurationGranularity:)();
  v32 = a1[4];
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for AppSessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v33 = AppSessionManager.createSessionManager(with:)();

    (*(v34 + 8))(v19, v35);
    return v33;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100061AA4()
{
  v0 = type metadata accessor for FlushEvents();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  sub_100003020(&qword_1000A5398, &qword_100082528);
  v3 = *(v1 + 72);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_100082470;
  static FlushEvents.didStartSession.getter();
  static FlushEvents.didEndSession.getter();
  static FlushEvents.didLeaveGroup.getter();
  sub_100062714(&qword_1000A53A0, &type metadata accessor for FlushEvents);
  sub_100003020(&qword_1000A53A8, &unk_100082530);
  sub_1000626C0(&qword_1000A53B0, &qword_1000A53A8, &unk_100082530);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v5 = type metadata accessor for FlushProcessor();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return FlushProcessor.init(flushEvents:flushInterval:)();
}

uint64_t sub_100061C74(uint64_t *a1, void *a2)
{
  v3 = *a1;
  SessionManager.processorManager.getter();
  v4 = a2[4];
  sub_1000032B8(a2, a2[3]);
  type metadata accessor for LoggingEventProcessor();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  ProcessorManager.add(eventProcessor:)();

  SessionManager.processorManager.getter();
  v6 = a2[4];
  sub_1000032B8(a2, a2[3]);
  type metadata accessor for UploadBatchEventProcessor();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  ProcessorManager.add(eventProcessor:)();
}

uint64_t sub_100061D7C()
{
  v0 = type metadata accessor for DiagnosticsConsentProvider();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v4 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  static DiagnosticsConsentProvider.default.getter();
  (*(v1 + 16))(v4, v6, v0);
  v7 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v8 = swift_allocObject();
  (*(v1 + 32))(v8 + v7, v4, v0);
  static DiagnosticsConsentProvider.custom(_:)();

  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_100061EFC@<X0>(uint64_t a1@<X8>)
{
  static Settings.WeatherAnalytics.Debugging.overrides.getter();
  v2 = dispatch thunk of SettingGroup.isEnabled.getter();

  if ((v2 & 1) == 0)
  {
    return DiagnosticsConsentProvider.status.getter();
  }

  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  type metadata accessor for Settings.WeatherAnalytics.Debugging.Overrides();
  static Settings.WeatherAnalytics.Debugging.Overrides.dnuConsent.getter();
  SettingReader.read<A>(_:)();

  v3 = type metadata accessor for DiagnosticsConsentStatus();
  if (v6 == 1)
  {
    v4 = &enum case for DiagnosticsConsentStatus.allowed(_:);
  }

  else
  {
    v4 = &enum case for DiagnosticsConsentStatus.disallowed(_:);
  }

  return (*(*(v3 - 8) + 104))(a1, *v4, v3);
}

uint64_t sub_100061FFC(void *a1)
{
  v2 = type metadata accessor for SummaryEventConfiguration();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for TrackingConsent();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    type metadata accessor for AppSessionManager();
    type metadata accessor for CrashDetector();
    static CrashDetector.shared.getter();
    static SummaryEventConfiguration.disabled.getter();
    return AppSessionManager.__allocating_init(trackingConsent:crashDetector:summaryEventConfiguration:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100062140()
{
  v0 = type metadata accessor for LoggingEventProcessorFormat();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for LoggingEventProcessor();
  *v4 = 11;
  (*(v1 + 104))(v4, enum case for LoggingEventProcessorFormat.json(_:), v0);
  return LoggingEventProcessor.__allocating_init(logFormat:)();
}

uint64_t sub_10006222C(void *a1)
{
  v2 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_10006275C();
  type metadata accessor for Client();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5348, &qword_1000824E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_10006275C();
  type metadata accessor for UploadBatchEventConfig();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10006275C();
    type metadata accessor for UploadBatchEventProcessor();
    return UploadBatchEventProcessor.__allocating_init(client:endpoint:contentType:config:)();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10006235C(void *a1)
{
  v1 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    type metadata accessor for AnalyticsEndpoint();
    v3 = swift_allocObject();
    *(v3 + 16) = 7;
    sub_100006D78(&v4, v3 + 24);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000623FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5360, &qword_1000824F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    v5 = type metadata accessor for PrivacySaltProvider();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = PrivacySaltProvider.init(identityService:)();
    a2[3] = v5;
    a2[4] = &protocol witness table for PrivacySaltProvider;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000624A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5350, &qword_1000824E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    v5 = type metadata accessor for PrivacySampler();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = PrivacySampler.init(saltProvider:)();
    a2[3] = v5;
    a2[4] = &protocol witness table for PrivacySampler;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100062588()
{
  v1 = type metadata accessor for DiagnosticsConsentProvider();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100062610@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for DiagnosticsConsentProvider() - 8) + 80);

  return sub_100061EFC(a1);
}

uint64_t sub_100062680()
{
  sub_100006994((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000626C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_100062714(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100062768()
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
    PredictedLocationsConfiguration.reschedulingIntervalForSevereWeatherNotifications.getter();
    PredictedLocationsConfiguration.reschedulingGracePeriodInterval.getter();
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  return v14;
}

void sub_1000629B8()
{
  sub_100030E38();
  v51 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100006FF0(v6);
  v8 = *(v7 + 64);
  sub_100018920();
  __chkstk_darwin(v9);
  v52 = &v46 - v10;
  v11 = sub_100003020(&qword_1000A4600, &qword_100081A30);
  v12 = sub_100018904(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100015754();
  v17 = v15 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v46 - v20;
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v50 = type metadata accessor for Logger();
  v24 = sub_100006FBC(v50);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  sub_10003C888();
  v48 = v0;
  sub_100062DB8(v0, v3, v5);
  static Logger.predictedLocationNotifications.getter();
  v49 = v5;
  sub_10003C7D0(v5, v23, &qword_1000A4600, &qword_100081A30);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = sub_100037B44();
    v47 = v17;
    v33 = v32;
    v53[0] = v32;
    *v31 = 136446210;
    sub_10003C7D0(v23, v21, &qword_1000A4600, &qword_100081A30);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    sub_100018858(v23, &qword_1000A4600, &qword_100081A30);
    v37 = sub_10000D9FC(v34, v36, v53);

    *(v31 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "Calculated next refresh: %{public}s", v31, 0xCu);
    sub_100006994(v33);
    v17 = v47;
    sub_10000FA7C();
    sub_10000FA7C();
  }

  else
  {

    sub_100018858(v23, &qword_1000A4600, &qword_100081A30);
  }

  (*(v26 + 8))(v0, v50);
  if (v51)
  {
    sub_100006930((v48 + 7), v53);
    sub_1000032B8(v53, v53[3]);
    sub_10003C7D0(v49, v17, &qword_1000A4600, &qword_100081A30);
    v38 = type metadata accessor for PredictedLocationsRefresh();
    if (sub_100007374(v17, 1, v38) == 1)
    {
      sub_100018858(v17, &qword_1000A4600, &qword_100081A30);
      v39 = type metadata accessor for Date();
      v40 = v52;
      v41 = 1;
      v42 = 1;
    }

    else
    {
      v43 = type metadata accessor for Date();
      sub_100018904(v43);
      (*(v44 + 16))(v52, v17, v43);
      sub_100007E88(v17);
      sub_1000649AC();
      v39 = v43;
    }

    sub_100006BD4(v40, v41, v42, v39);
    v45 = v52;
    dispatch thunk of PredictedLocationsScheduleStoreType.recordNextRefresh(at:)();
    sub_100018858(v45, &qword_1000A3800, &unk_100080860);
    sub_100006994(v53);
  }

  sub_100030E08();
}

uint64_t sub_100062DB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    dispatch thunk of PredictedLocationsFeatureStateManagerType.syncSevereNotificationFeatureState()();
    (*(v43 + 104))(v47, enum case for PredictedLocationsFeatureState.active(_:), v42);
    LOBYTE(v50) = static PredictedLocationsFeatureState.== infix(_:_:)();
    v51 = *(v43 + 8);
    v51(v47, v42);
    v51(v49, v42);
    if (v50)
    {
      v52 = v129;
      Date.init()();
      v53 = sub_100062768();
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
      static Logger.predictedLocationNotifications.getter();
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
    static Logger.predictedLocationNotifications.getter();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "Predicted locations notification feature state is not active; no next refresh", v79, 2u);
    }

    (*(v133 + 8))(v76, v134);
    v74 = type metadata accessor for PredictedLocationsRefresh();
    v75 = v116;
  }

  else
  {
    static Logger.predictedLocationNotifications.getter();
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

uint64_t sub_100063AEC(uint64_t a1, uint64_t a2)
{
  v104 = a1;
  v3 = type metadata accessor for Date();
  v4 = sub_100006FBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100015754();
  v96 = (v9 - v10);
  sub_100030F24();
  __chkstk_darwin(v11);
  v97 = &v91[-v12];
  v13 = type metadata accessor for Logger();
  v14 = sub_100006FBC(v13);
  v102 = v15;
  v103 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_100015754();
  v98 = v18 - v19;
  sub_100030F24();
  __chkstk_darwin(v20);
  v100 = &v91[-v21];
  v22 = sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100006FF0(v22);
  v24 = *(v23 + 64);
  sub_100018920();
  __chkstk_darwin(v25);
  v27 = &v91[-v26];
  v28 = sub_100003020(&qword_1000A4600, &qword_100081A30);
  sub_100006FF0(v28);
  v30 = *(v29 + 64);
  sub_100018920();
  __chkstk_darwin(v31);
  v33 = &v91[-v32];
  v34 = type metadata accessor for PredictedLocationsRefresh();
  v35 = sub_100018904(v34);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  sub_100015754();
  v95 = v38 - v39;
  sub_100030F24();
  __chkstk_darwin(v40);
  v94 = &v91[-v41];
  sub_100030F24();
  __chkstk_darwin(v42);
  v44 = &v91[-v43];
  v101 = v6;
  v45 = *(v6 + 16);
  v46 = a2;
  (v45)(v27, a2, v3);
  sub_1000649AC();
  sub_100006BD4(v47, v48, v49, v3);
  sub_1000629B8();
  sub_100018858(v27, &qword_1000A3800, &unk_100080860);
  v99 = v34;
  v50 = sub_100007374(v33, 1, v34);
  if (v50 == 1)
  {
    sub_100018858(v33, &qword_1000A4600, &qword_100081A30);
    v51 = v98;
    static Logger.predictedLocationNotifications.getter();
    v52 = sub_10003C8B4();
    v45(v52);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = sub_100037B44();
      v105 = v56;
      *v55 = 136446210;
      sub_10003C830();
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v60 = sub_10003C8A0();
      v61(v60);
      v62 = sub_10000D9FC(v57, v59, &v105);

      *(v55 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v53, v54, "Verified schedule date=%{public}s, will reject rescheduling.", v55, 0xCu);
      sub_100006994(v56);
      sub_10000FA7C();
      sub_10000FA7C();
    }

    else
    {

      v82 = sub_10003C8A0();
      v83(v82);
    }

    (*(v102 + 8))(v51, v103);
    sub_100006BD4(v104, 1, 1, v46);
    return 0;
  }

  else
  {
    sub_10003C76C(v33, v44);
    static Logger.predictedLocationNotifications.getter();
    v63 = v97;
    v64 = sub_10003C8B4();
    v45(v64);
    v65 = v94;
    sub_100007E24(v44, v94);
    v66 = v95;
    sub_100007E24(v44, v95);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = sub_100037B44();
      v96 = v45;
      v70 = v69;
      v93 = swift_slowAlloc();
      v105 = v93;
      *v70 = 136446722;
      sub_10003C830();
      LODWORD(v98) = v50;
      v92 = v68;
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v63;
      v74 = v73;
      (*(v101 + 8))(v72, v46);
      v75 = sub_10000D9FC(v71, v74, &v105);

      *(v70 + 4) = v75;
      *(v70 + 12) = 2082;
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      sub_100007E88(v65);
      v79 = sub_10000D9FC(v76, v78, &v105);

      *(v70 + 14) = v79;
      *(v70 + 22) = 2050;
      v80 = v99;
      v81 = *(v66 + *(v99 + 20));
      sub_100007E88(v66);
      *(v70 + 24) = v81;
      _os_log_impl(&_mh_execute_header, v67, v92, "Verified schedule date=%{public}s returning date=%{public}s gracePeriod=%{public}f", v70, 0x20u);
      swift_arrayDestroy();
      sub_10000FA7C();
      v45 = v96;
      sub_10000FA7C();

      (*(v102 + 8))(v100, v103);
    }

    else
    {

      sub_100007E88(v66);
      sub_100007E88(v65);
      v85 = sub_10003C8A0();
      v86(v85);
      (*(v102 + 8))(v100, v103);
      v80 = v99;
    }

    (v45)(v104, v44, v46);
    sub_1000649AC();
    sub_100006BD4(v87, v88, v89, v46);
    v84 = *&v44[*(v80 + 20)];
    sub_100007E88(v44);
  }

  return v84;
}

void sub_1000643FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100030E38();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for XPCActivity();
  v24 = sub_100006FBC(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Logger();
  v32 = sub_100006FBC(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  sub_10003C888();
  static Logger.predictedLocationNotifications.getter();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Will unschedule next refresh", v39, 2u);
    sub_10000FA7C();
  }

  (*(v34 + 8))(v20, v31);
  v40 = v20[6];
  sub_1000032B8(v20 + 2, v20[5]);
  static XPCActivity.predictedLocationNotifications.getter();
  dispatch thunk of XPCActivityManagerType.unscheduleActivity(_:)();
  (*(v26 + 8))(v30, v23);
  v41 = v20[11];
  sub_1000032B8(v20 + 7, v20[10]);
  dispatch thunk of PredictedLocationsScheduleStoreType.clearNextRefreshRecord()();
  sub_100030E08();
}

void sub_1000645E0()
{
  sub_100030E38();
  v2 = v1;
  v3 = sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100006FF0(v3);
  v5 = *(v4 + 64);
  sub_100018920();
  __chkstk_darwin(v6);
  v8 = &v50 - v7;
  v9 = type metadata accessor for XPCActivity();
  v10 = sub_100006FBC(v9);
  v53 = v11;
  v54 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v52 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for PredictedLocationsRefresh();
  v15 = sub_100018904(v56);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100015754();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = &v50 - v22;
  v24 = type metadata accessor for Logger();
  v25 = sub_100006FBC(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_10003C888();
  static Logger.predictedLocationNotifications.getter();
  v55 = v2;
  sub_100007E24(v2, v23);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v50 = v24;
    v33 = v32;
    v34 = sub_100037B44();
    v51 = v8;
    v35 = v34;
    v57 = v34;
    *v33 = 136446210;
    sub_100007E24(v23, v20);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    sub_100007E88(v23);
    v39 = sub_10000D9FC(v36, v38, &v57);

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "Will schedule refresh: %{public}s", v33, 0xCu);
    sub_100006994(v35);
    v8 = v51;
    sub_10000FA7C();
    sub_10000FA7C();

    (*(v27 + 8))(v0, v50);
  }

  else
  {

    sub_100007E88(v23);
    (*(v27 + 8))(v0, v24);
  }

  v40 = v0[6];
  sub_1000032B8(v0 + 2, v0[5]);
  v41 = v52;
  static XPCActivity.predictedLocationNotifications.getter();
  v42 = v55;
  v43 = *(v55 + *(v56 + 20));
  dispatch thunk of XPCActivityManagerType.scheduleActivity(_:on:with:)();
  (*(v53 + 8))(v41, v54);
  v44 = v0[11];
  sub_1000032B8(v0 + 7, v0[10]);
  v45 = type metadata accessor for Date();
  sub_100018904(v45);
  (*(v46 + 16))(v8, v42, v45);
  sub_1000649AC();
  sub_100006BD4(v47, v48, v49, v45);
  dispatch thunk of PredictedLocationsScheduleStoreType.recordNextRefresh(at:)();
  sub_100018858(v8, &qword_1000A3800, &unk_100080860);
  sub_100030E08();
}