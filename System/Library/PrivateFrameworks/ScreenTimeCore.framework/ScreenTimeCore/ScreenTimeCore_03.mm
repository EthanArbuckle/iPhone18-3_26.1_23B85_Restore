id _s15ScreenTimeAgent17STExceptionServerC26controllerDidChangeContentyySo26NSFetchedResultsControllerCySo20NSFetchRequestResult_pGF_0()
{
  v1 = v0;
  if (qword_1001DF0E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000A2B1C(v2, qword_1001DFF00);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetch controller did change content", v5, 2u);
  }

  result = *(v1 + OBJC_IVAR____TtC15ScreenTimeAgent17STExceptionServer_exceptionsListUpdateDelegate);
  if (result)
  {

    return [result appExceptionsDidUpdate];
  }

  return result;
}

unint64_t sub_1000B2874()
{
  result = qword_1001DFF30;
  if (!qword_1001DFF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DFF30);
  }

  return result;
}

uint64_t sub_1000B28F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_1000B2914, 0, 0);
}

uint64_t sub_1000B2914()
{
  v1 = [objc_allocWithZone(STRegionRatingsRequestOptions) initWithUnrated:1 userDSID:v0[19]];
  v0[21] = v1;
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000B2A74;
  v3 = swift_continuation_init();
  v0[17] = sub_1000A0F2C(&qword_1001DFFF8, &unk_1001408F0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000B390C;
  v0[13] = &unk_1001A71D0;
  v0[14] = v3;
  [v2 loadRegionRatingsWithOptions:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000B2A74()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1000B30C8;
  }

  else
  {
    v3 = sub_1000B2B84;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000B2B84()
{
  v42 = v0;
  v1 = v0[18];
  v2 = [v1 preferredRegion];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = [v1 localizedAppRatingsForRegion:v2];

  sub_1000A0F74(0, &qword_1001E0000, NSNumber_ptr);
  sub_1000B3788(&qword_1001E0008, &qword_1001E0000, NSNumber_ptr);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = *(v4 + 16);
  if (v5)
  {
    v40 = v1;
    v6 = sub_1000B1D2C(v5, 0);
    v7 = sub_1000B1ECC(v41, v6 + 4, v5, v4);
    v1 = v41[0];
    v8 = v41[4];

    sub_100003410();
    if (v7 != v5)
    {
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_13;
    }

    v1 = v40;
  }

  v9 = v0[20];
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = String._bridgeToObjectiveC()();
  v8 = [v1 getClosestRestrictionMatch:v9 within:isa forPayloadKey:v11];

  if (!v8)
  {

    if (qword_1001DF0E0 != -1)
    {
      swift_once();
    }

    v29 = v0[20];
    v30 = type metadata accessor for Logger();
    sub_1000A2B1C(v30, qword_1001DFF00);
    v31 = v29;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v0[20];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v34;
      *v36 = v34;
      v37 = v34;
      _os_log_impl(&_mh_execute_header, v32, v33, "[notifyUser] No closest match for restriction value %@", v35, 0xCu);
      sub_1000B1DD4(v36);
    }

    v27 = v0[21];

    sub_1000B2874();
    swift_allocError();
    *v38 = 4;
    swift_willThrow();
    goto LABEL_21;
  }

  if (*(v4 + 16))
  {
    v12 = sub_1000CBABC(v8);
    if (v13)
    {
      v14 = v0[21];
      v15 = (*(v4 + 56) + 16 * v12);
      v16 = *v15;
      v17 = v15[1];

      v18 = v0[1];

      return v18(v16, v17);
    }
  }

  if (qword_1001DF0E0 != -1)
  {
    goto LABEL_25;
  }

LABEL_13:
  v20 = type metadata accessor for Logger();
  sub_1000A2B1C(v20, qword_1001DFF00);
  v21 = v8;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v8;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "[notifyUser] No localized string for restriction value %@", v24, 0xCu);
    sub_1000B1DD4(v25);
  }

  v27 = v0[21];

  sub_1000B2874();
  swift_allocError();
  *v28 = 4;
  swift_willThrow();

LABEL_21:
  v39 = v0[1];

  return v39();
}

uint64_t sub_1000B30C8()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[22];
  v4 = v0[1];

  return v4();
}

unint64_t sub_1000B3160()
{
  result = qword_1001DFF40;
  if (!qword_1001DFF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DFF40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for STExceptionServer.ExceptionServerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for STExceptionServer.ExceptionServerError(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1000B3304()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  isa = Notification._bridgeToObjectiveC()().super.isa;
  [v2 mergeChangesFromContextDidSaveNotification:isa];
}

uint64_t sub_1000B3398(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B33B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A4F84;

  return sub_1000B18A8(v2, v3, v4);
}

uint64_t sub_1000B3464()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000AE488(v2, v3, v4);
}

uint64_t sub_1000B3518()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000ADC68(v2, v3, v5, v4);
}

uint64_t sub_1000B35D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000AD3B0(v2, v3, v4);
}

uint64_t sub_1000B368C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B36D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000ACADC(v2, v3, v4);
}

uint64_t sub_1000B3788(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000A0F74(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_1000B3894(uint64_t a1, uint64_t *a2)
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

void sub_1000B3910(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000B39BC()
{
  v1 = [objc_allocWithZone(DMFCreateConfigurationOrganizationRequest) init];
  v0[3] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[2];
    [v1 setOrganizationIdentifier:STOrganizationIdentifierScreenTime];
    v4 = String._bridgeToObjectiveC()();
    [v2 setOrganizationDisplayName:v4];

    [v2 setOrganizationType:DMFConfigurationOrganizationTypeScreenTime];
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Starting DMF Organization creation", v7, 2u);
    }

    v8 = v0[2];

    v9 = swift_task_alloc();
    v0[4] = v9;
    *(v9 + 16) = v2;
    *(v9 + 24) = v8;
    v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v11 = swift_task_alloc();
    v0[5] = v11;
    *v11 = v0;
    v11[1] = sub_1000B3BF8;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)();
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1000B3BF8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1000B3D78;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1000B3D14;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000B3D14()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B3D78()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);
  v3 = *(v0 + 48);

  return v2();
}

void sub_1000B3DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = sub_1000A0F2C(&qword_1001E0060, qword_100140928);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = type metadata accessor for LocalDeviceManagement();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() systemConnection];
  if (v14)
  {
    v15 = v14;
    sub_1000B428C(a3, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v9, a1, v5);
    v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v17 = (v12 + *(v6 + 80) + v16) & ~*(v6 + 80);
    v18 = swift_allocObject();
    sub_1000B42F0(v13, v18 + v16);
    (*(v6 + 32))(v18 + v17, v9, v5);
    aBlock[4] = sub_1000B4354;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B3910;
    aBlock[3] = &unk_1001A7220;
    v19 = _Block_copy(aBlock);

    [v15 performRequest:v21 completion:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000B4078(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138543362;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "DMF Create Organization Failed: %{public}@", v4, 0xCu);
      sub_1000B1DD4(v5);
    }

    swift_errorRetain();
    sub_1000A0F2C(&qword_1001E0060, qword_100140928);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "DMF Organiztion created successfully", v10, 2u);
    }

    sub_1000A0F2C(&qword_1001E0060, qword_100140928);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t type metadata accessor for LocalDeviceManagement()
{
  result = qword_1001E00C0;
  if (!qword_1001E00C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B428C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalDeviceManagement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B42F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalDeviceManagement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B4354(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for LocalDeviceManagement() - 8);
  v5 = ((*(v4 + 80) + 16) & ~*(v4 + 80)) + *(v4 + 64);
  v6 = *(*(sub_1000A0F2C(&qword_1001E0060, qword_100140928) - 8) + 80);

  return sub_1000B4078(a1, a2);
}

uint64_t sub_1000B4444(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B445C(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_1000B44B4()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000B4520()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1000B457C(void *a1, void *a2)
{
  sub_1000B67FC();
  sub_1000B4B18();
  sub_1000B4EA0();
  v4 = [a1 viewContext];
  sub_1000B51B4();

  sub_1000B6A5C(a2);
  sub_1000B6BD4();
}

void __swiftcall STDowngradeMigrator.init()(STDowngradeMigrator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id STDowngradeMigrator.init()()
{
  v1 = (v0 + OBJC_IVAR___STDowngradeMigrator_defaultStoreName);
  *v1 = 0x746C7561666544;
  v1[1] = 0xE700000000000000;
  v2 = v0 + OBJC_IVAR___STDowngradeMigrator_restricitonsStoreName;
  strcpy((v0 + OBJC_IVAR___STDowngradeMigrator_restricitonsStoreName), "restrictions");
  *(v2 + 13) = 0;
  *(v2 + 14) = -5120;
  v3 = (v0 + OBJC_IVAR___STDowngradeMigrator_shareAcrossDevicesStoreName);
  *v3 = 0xD000000000000012;
  v3[1] = 0x800000010014CEF0;
  v4 = (v0 + OBJC_IVAR___STDowngradeMigrator_userSafetyStoreName);
  *v4 = 0x6566615372657355;
  v4[1] = 0xEF65726F74537974;
  v6.super_class = STDowngradeMigrator;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_1000B4960()
{
  v0 = type metadata accessor for Logger();
  sub_1000B3894(v0, qword_1001E01B0);
  sub_1000A2B1C(v0, qword_1001E01B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B49E0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B3894(v3, qword_1001E01C8);
  sub_1000A2B1C(v0, qword_1001E01C8);
  v6 = [objc_opt_self() persistentStoreDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:)();
  return (*(v1 + 8))(v5, v0);
}

void sub_1000B4B18()
{
  if (qword_1001DF0E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000A2B1C(v1, qword_1001E01B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Migrating ManagedSettings data...", v4, 2u);
  }

  v5 = *(v0 + OBJC_IVAR___STDowngradeMigrator_shareAcrossDevicesStoreName);
  v6 = *(v0 + OBJC_IVAR___STDowngradeMigrator_shareAcrossDevicesStoreName + 8);
  v7 = STManagedSettingsContainer;
  v8 = objc_allocWithZone(MOLocalSettingsStore);
  v9 = v7;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 initWithName:v10 sharedContainer:v9];

  v33 = [objc_allocWithZone(MOLocalSettingsStore) initWithSharedContainer:v9];
  v12 = [v33 deviceActivity];
  v13 = [v11 deviceActivity];
  v14 = [v13 shareAcrossDevices];

  [v12 setShareAcrossDevices:v14];
  v15 = *(v0 + OBJC_IVAR___STDowngradeMigrator_restricitonsStoreName);
  v16 = *(v0 + OBJC_IVAR___STDowngradeMigrator_restricitonsStoreName + 8);
  v17 = objc_allocWithZone(MOLocalSettingsStore);
  v18 = v9;
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 initWithName:v19 sharedContainer:v18];

  v21 = *(v0 + OBJC_IVAR___STDowngradeMigrator_userSafetyStoreName);
  v22 = *(v0 + OBJC_IVAR___STDowngradeMigrator_userSafetyStoreName + 8);
  v23 = objc_allocWithZone(MOLocalSettingsStore);
  v24 = v18;
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 initWithName:v25 sharedContainer:v24];

  v27 = [v26 userSafety];
  v28 = [v20 userSafety];
  v29 = [v28 scanningPolicy];

  [v27 setScanningPolicy:v29];
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Migrated ManagedSettings data", v32, 2u);
  }
}

void sub_1000B4EA0()
{
  v1 = v0;
  if (qword_1001DF0E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000A2B1C(v2, qword_1001E01B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting unused ManagedSettings stores...", v5, 2u);
  }

  v6 = objc_opt_self();
  v7 = STManagedSettingsContainer;
  v8 = [v6 storesForSharedContainer:STManagedSettingsContainer];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000A0F2C(&qword_1001E0230, &qword_100141390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10013FFC0;
  v10 = *(v1 + OBJC_IVAR___STDowngradeMigrator_defaultStoreName + 8);
  *(inited + 32) = *(v1 + OBJC_IVAR___STDowngradeMigrator_defaultStoreName);
  *(inited + 40) = v10;
  v11 = *(v1 + OBJC_IVAR___STDowngradeMigrator_userSafetyStoreName + 8);
  *(inited + 48) = *(v1 + OBJC_IVAR___STDowngradeMigrator_userSafetyStoreName);
  *(inited + 56) = v11;

  sub_1000B5138(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v6 deleteStoresWithStoreNames:isa sharedContainer:v7];

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Deleted unused ManagedSettings stores", v15, 2u);
  }
}

uint64_t sub_1000B5138(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_1000B5D88(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void sub_1000B51B4()
{
  swift_getObjectType();
  if (qword_1001DF0E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000A2B1C(v1, qword_1001E01B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Recreating local organization...", v4, 2u);
  }

  __chkstk_darwin(v5);
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (!v0)
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Recreated local organization", v8, 2u);
    }
  }
}

void sub_1000B5394(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v80 = 0;
  v8 = [v7 fetchScreenTimeSettingsInContext:a1 error:&v80];
  v9 = v80;
  if (!v8)
  {
    v24 = v80;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v10 = v8;
  v11 = objc_opt_self();
  v80 = 0;
  v12 = v9;
  v13 = [v11 fetchLocalUserInContext:a1 error:&v80];
  if (!v13)
  {
    v25 = v80;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v14 = v13;
  v79 = v3;
  v15 = v80;
  if ([v10 cloudSyncEnabled])
  {
    sub_1000A0F74(0, &qword_1001E0000, NSNumber_ptr);
    v16 = [v14 dsid];
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v18 = static NSObject.== infix(_:_:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (os_variant_has_internal_content() && (v19 = [objc_opt_self() standardUserDefaults], v20 = String._bridgeToObjectiveC()(), v21 = objc_msgSend(v19, "BOOLForKey:", v20), v19, v20, (v21 & 1) != 0) || (v22 = objc_msgSend(v14, "localSettings")) == 0)
  {
    if (qword_1001DF0E8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    v77 = sub_1000A2B1C(v26, qword_1001E01B0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Share across devices is off, recreating local organization", v29, 2u);
    }

    v30 = objc_opt_self();
    v80 = 0;
    v31 = [v30 fetchOrCreateLocalOrganizationWithContext:a1 error:&v80];
    v32 = v80;
    if (!v31)
    {
      v49 = v80;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_24;
    }

    v33 = v31;
    v34 = objc_opt_self();
    v80 = 0;
    v35 = v32;
    v36 = [v34 fetchWithContext:a1 error:&v80];
    if (!v36)
    {
      v50 = v80;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_25;
    }

    v78 = v36;
    v37 = v80;
    v38 = [v33 settings];
    v39 = v33;
    v40 = v38;
    if (!v38)
    {
      v40 = [objc_allocWithZone(STLocalOrganizationSettings) initWithContext:a1];
    }

    v41 = v38;
    [v40 setUser:v14];
    v75 = v39;
    [v40 setOrganization:v39];

    v42 = v78;
    v43 = [v78 settings];
    v76 = v40;
    if (v43)
    {
      v44 = v43;
      v45 = [v44 passcode];
      [v40 setPasscode:v45];

      [v40 setNeedsToSetPasscode:{objc_msgSend(v44, "needsToSetPasscode")}];
      [v40 setAllLimitsEnabled:{objc_msgSend(v44, "allLimitsEnabled")}];
      [v40 setCommunicationPolicy:{objc_msgSend(v44, "communicationPolicy")}];
      [v40 setCommunicationWhileLimitedPolicy:{objc_msgSend(v44, "communicationWhileLimitedPolicy")}];
      [v40 setContactManagementState:{objc_msgSend(v44, "contactManagementState")}];
      [v40 setIsCommunicationSafetySendingRestricted:{objc_msgSend(v44, "isCommunicationSafetySendingRestricted")}];
      [v40 setIsCommunicationSafetyReceivingRestricted:{objc_msgSend(v44, "isCommunicationSafetyReceivingRestricted")}];
      [v40 setIsCommunicationSafetyNotificationEnabled:{objc_msgSend(v44, "isCommunicationSafetyNotificationEnabled")}];
      [v40 setIsCommunicationSafetyAnalyticsEnabled:{objc_msgSend(v44, "isCommunicationSafetyAnalyticsEnabled")}];
      v46 = [v44 modificationDate];
      if (v46)
      {
        v47 = v46;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v48.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (v79)[1](v6, v2);
      }

      else
      {
        v48.super.isa = 0;
      }

      v51 = v76;
      [v76 setModificationDate:v48.super.isa];

      v52 = [v44 isEyeReliefEnabled];
      [v51 setIsEyeReliefEnabled:v52];

      v42 = v78;
    }

    v53 = [objc_opt_self() fetchRequestMatchingBlueprintsForUser:v14 fromOrganization:v42 includeTombstones:0];
    v80 = 0;
    v54 = [v53 execute:&v80];
    v55 = v80;
    if (!v54)
    {
      v64 = v42;
      v65 = v80;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_25;
    }

    v56 = v54;
    v74 = v53;
    v79 = v14;
    sub_1000A0F74(0, &qword_1001E0240, STBlueprint_ptr);
    v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v55;

    v59 = v75;
    if (v57 >> 62)
    {
      v60 = _CocoaArrayWrapper.endIndex.getter();
      if (v60)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v60 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v60)
      {
LABEL_32:
        if (v60 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v60; ++i)
        {
          if ((v57 & 0xC000000000000001) != 0)
          {
            v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v62 = *(v57 + 8 * i + 32);
          }

          v63 = v62;
          [v62 setOrganization:v59];
        }
      }
    }

    v66 = v79;
    v67 = v76;
    [v79 setLocalSettings:v76];
    [v66 setCloudSettings:0];
    v68 = v78;
    [a1 deleteObject:v78];
    v23 = v59;
    v14 = v66;
    if ([a1 hasChanges])
    {
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "Saving changes...", v71, 2u);
      }

      v80 = 0;
      if (![a1 save:&v80])
      {
        v73 = v80;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_25;
      }

      v72 = v80;
      v68 = v78;
    }

    v10 = v74;
    goto LABEL_9;
  }

  v23 = v14;
  v14 = v22;
LABEL_9:

  v10 = v23;
LABEL_24:

LABEL_25:
}

uint64_t sub_1000B5D88(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000B61D4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1000B6498(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_1000B5EC4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_1000B606C();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_1000A0F74(0, &qword_1001DF550, NSXPCConnection_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000B6358(&qword_1001DF548, &qword_10013F348);
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_1000B665C(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_1000B606C()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1000D1BB8(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1000A0F74(0, &qword_1001DF550, NSXPCConnection_ptr);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1000B665C(v9);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000B61D4()
{
  v1 = v0;
  sub_1000A0F2C(&qword_1001E0238, &unk_100141B60);
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

id sub_1000B6358(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000A0F2C(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

unint64_t sub_1000B6498(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1000B665C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000B67FC()
{
  v0 = type metadata accessor for DeviceActivityCenter();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001DF0E8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000A2B1C(v5, qword_1001E01B0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Stopping DeviceActivity schedules...", v8, 2u);
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  DeviceActivityCenter.init(clientIdentifier:extensionIdentifier:)();
  DeviceActivityCenter.stopMonitoring(_:)(&_swiftEmptyArrayStorage);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Stopped DeviceActivity schedules", v11, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_1000B6A3C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1000B5394(*(v0 + 16));
}

void sub_1000B6A5C(void *a1)
{
  if (qword_1001DF0E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000A2B1C(v2, qword_1001E01B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Adding active declarations to DeviceManagement...", v5, 2u);
  }

  [a1 processBlueprintChanges];
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Added active declarations to DeviceManagement", v7, 2u);
  }
}

void sub_1000B6BD4()
{
  if (qword_1001DF0E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000A2B1C(v0, qword_1001E01B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Deleting version.plist", v3, 2u);
  }

  v4 = [objc_opt_self() defaultManager];
  if (qword_1001DF0F0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for URL();
  sub_1000A2B1C(v5, qword_1001E01C8);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v15 = 0;
  v9 = [v4 removeItemAtURL:v7 error:&v15];

  if (v9)
  {
    v10 = v15;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Deleted version.plist", v13, 2u);
    }
  }

  else
  {
    v14 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id sub_1000B6E30()
{
  if (os_variant_has_internal_content() && (v0 = [objc_opt_self() standardUserDefaults], v1 = String._bridgeToObjectiveC()(), v2 = objc_msgSend(v0, "BOOLForKey:", v1), v0, v1, (v2 & 1) != 0))
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v5 = [objc_opt_self() defaultManager];
    if (qword_1001DF0F0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for URL();
    sub_1000A2B1C(v6, qword_1001E01C8);
    URL.path.getter();
    v7 = String._bridgeToObjectiveC()();

    v3 = [v5 fileExistsAtPath:v7];

    v4 = 0;
  }

  if (qword_1001DF0E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000A2B1C(v8, qword_1001E01B0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v19 = v4;
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v11 = 136446466;
    if (v3)
    {
      v12 = 5457241;
    }

    else
    {
      v12 = 20302;
    }

    if (v3)
    {
      v13 = 0xE300000000000000;
    }

    else
    {
      v13 = 0xE200000000000000;
    }

    v14 = sub_1000A2E68(v12, v13, &v20);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    if (v19)
    {
      v15 = 5457241;
    }

    else
    {
      v15 = 20302;
    }

    if (v19)
    {
      v16 = 0xE300000000000000;
    }

    else
    {
      v16 = 0xE200000000000000;
    }

    v17 = sub_1000A2E68(v15, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Should run downgrade migration: %{public}s forcedOff: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  return v3;
}

uint64_t sub_1000B7114()
{
  v0 = type metadata accessor for Logger();
  sub_1000B3894(v0, qword_1001E0250);
  sub_1000A2B1C(v0, qword_1001E0250);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B7194()
{
  v1[2] = v0;
  v2 = type metadata accessor for STExpressIntroduction.User();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_1000A0F2C(&qword_1001E0318, qword_100140A10) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for STExpressIntroduction.SettingsDefaults();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000B7300, 0, 0);
}

uint64_t sub_1000B7300()
{
  v1 = v0[2];
  v2 = v1[10];
  v3 = v1[11];
  sub_1000A9618(v1 + 7, v2);
  v4 = async function pointer to dispatch thunk of STExpressIntroduction.Internal.SettingsDefaultsDataSource.load()[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1000B73C0;
  v6 = v0[6];

  return dispatch thunk of STExpressIntroduction.Internal.SettingsDefaultsDataSource.load()(v6, v2, v3);
}

uint64_t sub_1000B73C0()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1000B7E40;
  }

  else
  {
    v3 = sub_1000B74D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000B74D4()
{
  v51 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000B80B0(v3);
    if (qword_1001DF0F8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2B1C(v4, qword_1001E0250);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No saved settings defaults found; not merging", v7, 2u);
    }

    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    v12 = v0[5];
    v11 = v0[6];

    v13 = v0[1];

    return v13();
  }

  else
  {
    (*(v2 + 32))(v0[11], v3, v1);
    if (qword_1001DF0F8 != -1)
    {
      swift_once();
    }

    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[7];
    v18 = v0[8];
    v19 = type metadata accessor for Logger();
    v0[14] = sub_1000A2B1C(v19, qword_1001E0250);
    v20 = *(v18 + 16);
    v20(v16, v15, v17);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[10];
    if (v23)
    {
      v25 = v0[8];
      v26 = v0[9];
      v27 = v0[7];
      v28 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v28 = 136446210;
      v20(v26, v24, v27);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      v32 = *(v25 + 8);
      v32(v24, v27);
      v33 = sub_1000A2E68(v29, v31, &v50);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v21, v22, "Found saved settings defaults: %{public}s", v28, 0xCu);
      sub_1000A462C(v49);
    }

    else
    {
      v34 = v0[7];
      v35 = v0[8];

      v32 = *(v35 + 8);
      v32(v24, v34);
    }

    v0[15] = v32;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Saving settings defaults for local user", v38, 2u);
    }

    v40 = v0[4];
    v39 = v0[5];
    v42 = v0[2];
    v41 = v0[3];

    v43 = v42[5];
    v44 = v42[6];
    sub_1000A9618(v42 + 2, v43);
    (*(v40 + 104))(v39, enum case for STExpressIntroduction.User.local(_:), v41);
    v45 = async function pointer to dispatch thunk of STExpressIntroduction.STSettingsStore.save(defaults:forUser:)[1];
    v46 = swift_task_alloc();
    v0[16] = v46;
    *v46 = v0;
    v46[1] = sub_1000B7974;
    v47 = v0[11];
    v48 = v0[5];

    return dispatch thunk of STExpressIntroduction.STSettingsStore.save(defaults:forUser:)(v47, v48, v43, v44);
  }
}

uint64_t sub_1000B7974()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1000B7EDC;
  }

  else
  {
    v6 = sub_1000B7AE4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000B7AE4()
{
  v1 = v0[14];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done saving settings defaults for local user", v4, 2u);
  }

  v5 = v0[14];

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Clearing settings defaults store", v8, 2u);
  }

  v9 = v0[2];

  v10 = v9[10];
  v11 = v9[11];
  sub_1000A9618(v9 + 7, v10);
  v12 = async function pointer to dispatch thunk of STExpressIntroduction.Internal.SettingsDefaultsDataSource.clear()[1];
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_1000B7C7C;

  return dispatch thunk of STExpressIntroduction.Internal.SettingsDefaultsDataSource.clear()(v10, v11);
}

uint64_t sub_1000B7C7C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1000B7F94;
  }

  else
  {
    v3 = sub_1000B7D90;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000B7D90()
{
  v1 = *(v0 + 64) + 8;
  (*(v0 + 120))(*(v0 + 88), *(v0 + 56));
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000B7E40()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v6 = v0[5];
  v5 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000B7EDC()
{
  v1 = *(v0 + 64) + 8;
  (*(v0 + 120))(*(v0 + 88), *(v0 + 56));
  v2 = *(v0 + 136);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000B7F94()
{
  v1 = *(v0 + 64) + 8;
  (*(v0 + 120))(*(v0 + 88), *(v0 + 56));
  v2 = *(v0 + 152);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000B804C()
{
  sub_1000A462C((v0 + 16));
  sub_1000A462C((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1000B80B0(uint64_t a1)
{
  v2 = sub_1000A0F2C(&qword_1001E0318, qword_100140A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B8118()
{
  v0 = type metadata accessor for Logger();
  sub_1000B3894(v0, qword_1001E0320);
  sub_1000A2B1C(v0, qword_1001E0320);
  return Logger.init(subsystem:category:)();
}

char *sub_1000B8198(uint64_t a1)
{
  if (_swiftEmptyArrayStorage >> 62)
  {
    v9 = a1;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1000A0B8C(_swiftEmptyArrayStorage);
      v2 = v10;
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }

    a1 = v9;
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = &v1[OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_activeConnections];
  *v3 = 0;
  *(v3 + 1) = v2;
  *&v1[OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_exceptionServer] = a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for STExceptionListener();
  v4 = objc_msgSendSuper2(&v11, "init");
  v5 = *&v4[OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_exceptionServer];
  v6 = *(v5 + OBJC_IVAR____TtC15ScreenTimeAgent17STExceptionServer_exceptionsListUpdateDelegate);
  *(v5 + OBJC_IVAR____TtC15ScreenTimeAgent17STExceptionServer_exceptionsListUpdateDelegate) = v4;
  v7 = v4;
  swift_unknownObjectRelease();
  return v7;
}

void sub_1000B827C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1001DF100 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000A2B1C(v5, qword_1001E0320);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "connection invalidated)", v8, 2u);
    }

    v9 = &v4[OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_activeConnections];
    os_unfair_lock_lock(&v4[OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_activeConnections]);

    os_unfair_lock_unlock(v9);
  }
}

Swift::Void __swiftcall STExceptionListener.appExceptionsDidUpdate()()
{
  v1 = v0 + OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_activeConnections;
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  if (qword_1001DF100 != -1)
  {
LABEL_29:
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000A2B1C(v3, qword_1001E0320);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = v2 & 0xC000000000000001;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (v6)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *(v2 + 16);
    }

    *(v7 + 4) = v8;

    _os_log_impl(&_mh_execute_header, v4, v5, "Exceptions list updated. Notifying %ld connections)", v7, 0xCu);

    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if (!v6)
    {
LABEL_9:
      v9 = v2 + 56;
      v12 = -1 << *(v2 + 32);
      v10 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(v2 + 56);
      goto LABEL_13;
    }
  }

  __CocoaSet.makeIterator()();
  sub_1000B8ED8();
  sub_1000B8F24();
  Set.Iterator.init(_cocoa:)();
  v2 = aBlock[6];
  v9 = aBlock[7];
  v10 = aBlock[8];
  v6 = aBlock[9];
  v11 = aBlock[10];
LABEL_13:
  v15 = (v10 + 64) >> 6;
  while ((v2 & 0x8000000000000000) == 0)
  {
    v16 = v6;
    v17 = v11;
    v18 = v6;
    if (!v11)
    {
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v18 >= v15)
        {
          goto LABEL_27;
        }

        v17 = *(v9 + 8 * v18);
        ++v16;
        if (v17)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_21:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v2 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_27;
    }

LABEL_25:
    aBlock[4] = sub_1000B89BC;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B87F4;
    aBlock[3] = &unk_1001A7258;
    v22 = _Block_copy(aBlock);

    v23 = [v20 remoteObjectProxyWithErrorHandler:v22];
    _Block_release(v22);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000A0F2C(&qword_1001E0350, qword_100140A28);
    if (swift_dynamicCast())
    {
      [v24 appExceptionsDidUpdate];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v6 = v18;
    v11 = v19;
  }

  v21 = __CocoaSet.Iterator.next()();
  if (v21)
  {
    v24 = v21;
    sub_1000B8ED8();
    swift_dynamicCast();
    v20 = aBlock[0];
    v18 = v6;
    v19 = v11;
    if (aBlock[0])
    {
      goto LABEL_25;
    }
  }

LABEL_27:
  sub_100003410();
}

void sub_1000B87F4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id STExceptionListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STExceptionListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000B898C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1000B89BC()
{
  if (qword_1001DF100 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000A2B1C(v0, qword_1001E0320);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138412290;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Error obtaining update delegate:%@", v2, 0xCu);
    sub_1000A5148(v3, &unk_1001E1820, &qword_100140020);
  }
}

uint64_t sub_1000B8B18(void *a1)
{
  ObjectType = swift_getObjectType();
  if ([a1 valueForEntitlement:STEntitlementScreenTimePrivate])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v21 = v26;
  v22 = v27;
  if (*(&v27 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v25 == 1)
    {
      v4 = objc_opt_self();
      v5 = [v4 interfaceWithProtocol:{&OBJC_PROTOCOL___STExceptionClientProtocol, v21, v22}];
      [a1 setExportedInterface:v5];
      [a1 setExportedObject:*(v1 + OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_exceptionServer)];
      v6 = [v4 interfaceWithProtocol:&OBJC_PROTOCOL___STAppExceptionsUpdateMonitoring];
      [a1 setRemoteObjectInterface:v6];
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      v8[2] = v7;
      v8[3] = a1;
      v8[4] = ObjectType;
      v23 = sub_1000B8FB8;
      v24 = v8;
      *&v21 = _NSConcreteStackBlock;
      *(&v21 + 1) = 1107296256;
      *&v22 = sub_1000D48E0;
      *(&v22 + 1) = &unk_1001A72D0;
      v9 = _Block_copy(&v21);
      v10 = a1;

      [v10 setInvalidationHandler:v9];
      _Block_release(v9);
      [v10 resume];
      v11 = (v1 + OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_activeConnections);
      os_unfair_lock_lock((v1 + OBJC_IVAR____TtC15ScreenTimeAgent19STExceptionListener_activeConnections));
      sub_1000D1DDC(&v21, v10);

      os_unfair_lock_unlock(v11);
      return 1;
    }
  }

  else
  {
    sub_1000A5148(&v21, &qword_1001E03A0, qword_100140A70);
  }

  if (qword_1001DF100 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000A2B1C(v13, qword_1001E0320);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v21 = v17;
    *v16 = 136446210;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = sub_1000A2E68(v18, v19, &v21);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "connection does not have required entitlement: %{public}s", v16, 0xCu);
    sub_1000A462C(v17);
  }

  return 0;
}

unint64_t sub_1000B8ED8()
{
  result = qword_1001DF550;
  if (!qword_1001DF550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001DF550);
  }

  return result;
}

unint64_t sub_1000B8F24()
{
  result = qword_1001E0348;
  if (!qword_1001E0348)
  {
    sub_1000B8ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E0348);
  }

  return result;
}

uint64_t sub_1000B8F7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B8FCC()
{
  v0 = type metadata accessor for Logger();
  sub_1000B3894(v0, qword_1001E03A8);
  sub_1000A2B1C(v0, qword_1001E03A8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B904C()
{
  v1 = v0;
  v35 = *v0;
  v2 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v34 = &v32 - v4;
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v33 = sub_1000A0F2C(&qword_1001E04E0, &qword_100140B48);
  v13 = *(v33 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v33);
  v16 = &v32 - v15;
  if (qword_1001DF108 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000A2B1C(v17, qword_1001E03A8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Start observing sync", v20, 2u);
  }

  v21 = v1[24];
  if (qword_1001DF150 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();
  NSNotificationCenter.publisher(for:object:)();
  sub_1000BABD4();
  Publisher.merge(with:)();
  v22 = *(v6 + 8);
  v22(v10, v5);
  v22(v12, v5);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v25 = v35;
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  sub_1000BAC34();
  v26 = v33;
  v27 = Publisher<>.sink(receiveValue:)();

  (*(v13 + 8))(v16, v26);
  v28 = type metadata accessor for TaskPriority();
  v29 = v34;
  (*(*(v28 - 8) + 56))(v34, 1, 1, v28);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v1;
  v30[5] = v27;
  v30[6] = v25;

  sub_1000A2630(0, 0, v29, &unk_100140B58, v30);
}

uint64_t sub_1000B94B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - v7;
  if (qword_1001DF108 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000A2B1C(v9, qword_1001E03A8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received notification", v12, 2u);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a3;

  sub_1000A2630(0, 0, v8, &unk_100140B68, v14);
}

uint64_t sub_1000B96A0()
{
  if (qword_1001DF108 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000A2B1C(v1, qword_1001E03A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Calling didSync", v4, 2u);
  }

  v5 = v0[5];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_1000B9848;

    return sub_1000B9B08();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000B9848()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000B9958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000B9978, 0, 0);
}

uint64_t sub_1000B9978()
{
  if (qword_1001DF108 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000A2B1C(v1, qword_1001E03A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting notification cancellable", v4, 2u);
  }

  v5 = *(v0 + 16);

  return _swift_task_switch(sub_1000B9A98, v5, 0);
}

uint64_t sub_1000B9A98()
{
  v1 = v0[2];
  v2 = *(v1 + 200);
  *(v1 + 200) = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000B9B28()
{
  if (qword_1001DF108 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000A2B1C(v1, qword_1001E03A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Did sync. Merging user settings if needed.", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1000B9C74;
  v6 = *(v0 + 16);

  return sub_1000B9D68();
}

uint64_t sub_1000B9C74()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000B9D88()
{
  v1 = v0[2];
  if (*(v1 + 208))
  {
    if (qword_1001DF108 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000A2B1C(v2, qword_1001E03A8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Merge is in progress; returning", v5, 2u);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    if (qword_1001DF108 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v0[3] = sub_1000A2B1C(v8, qword_1001E03A8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Setting merge in progress to true", v11, 2u);
    }

    *(v1 + 208) = 1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Checking if user is eligible for settings merge", v14, 2u);
    }

    v15 = swift_task_alloc();
    v0[4] = v15;
    *v15 = v0;
    v15[1] = sub_1000BA040;
    v16 = v0[2];

    return sub_1000BA6D8();
  }
}

uint64_t sub_1000BA040(char a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_1000BA158, v3, 0);
}

uint64_t sub_1000BA158()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  if (v1 == 1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "User is eligible for settings merge", v6, 2u);
    }

    v7 = *(v0 + 24);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Merging user settings if needed", v10, 2u);
    }

    v11 = *(v0 + 16);

    v12 = *sub_1000A9618((v11 + 152), *(v11 + 176));
    v13 = swift_task_alloc();
    *(v0 + 40) = v13;
    *v13 = v0;
    v13[1] = sub_1000BA37C;

    return sub_1000B7194();
  }

  else
  {
    if (v5)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "User is not eligible for settings merge; returning", v15, 2u);
    }

    v16 = *(v0 + 16);

    sub_1000BAAF4(v16);
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1000BA37C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_1000BA580;
  }

  else
  {
    v6 = sub_1000BA4A8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000BA4A8()
{
  v1 = v0[3];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done merging user settings if needed", v4, 2u);
  }

  sub_1000BAAF4(v0[2]);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1000BA580()
{
  v1 = v0[6];
  v2 = v0[3];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to merge user settings: %{public}@", v7, 0xCu);
    sub_1000B1DD4(v8);
  }

  else
  {
  }

  sub_1000BAAF4(v0[2]);
  v10 = v0[1];

  return v10();
}

uint64_t sub_1000BA6F8()
{
  v1 = *sub_1000A9618((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000BA798;

  return sub_1000BF820();
}

uint64_t sub_1000BA798(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = *(v4 + 16);

    return _swift_task_switch(sub_1000BA8E8, v7, 0);
  }

  else
  {
    v8 = *(v6 + 8);

    return v8(a1 & 1);
  }
}

uint64_t sub_1000BA8E8()
{
  if (qword_1001DF108 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  sub_1000A2B1C(v2, qword_1001E03A8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to check if should merge settings: %{public}@; not updating settings", v7, 0xCu);
    sub_1000B1DD4(v8);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_1000BAA80()
{
  sub_1000A462C((v0 + 112));
  sub_1000A462C((v0 + 152));

  v1 = *(v0 + 200);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1000BAAF4(uint64_t a1)
{
  if (qword_1001DF108 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000A2B1C(v2, qword_1001E03A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Setting merge in progress to false", v5, 2u);
  }

  *(a1 + 208) = 0;
}

unint64_t sub_1000BABD4()
{
  result = qword_1001E04E8;
  if (!qword_1001E04E8)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E04E8);
  }

  return result;
}

unint64_t sub_1000BAC34()
{
  result = qword_1001E04F0;
  if (!qword_1001E04F0)
  {
    sub_1000A53D0(&qword_1001E04E0, &qword_100140B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E04F0);
  }

  return result;
}

uint64_t sub_1000BAC98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000A5418;

  return sub_1000B9958(a1, v4, v5, v6, v7);
}

uint64_t sub_1000BAD60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A4F84;

  return sub_1000B9680(a1, v4, v5, v7);
}

uint64_t _s24ExpressIntroductionErrorOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s24ExpressIntroductionErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000BAF74()
{
  result = qword_1001E04F8;
  if (!qword_1001E04F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E04F8);
  }

  return result;
}

uint64_t sub_1000BAFC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001DFDC0, &unk_1001405E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC15ScreenTimeAgent20CommunicationService____lazy_storage___logger;
  swift_beginAccess();
  sub_1000BBA38(v1 + v10, v9);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000ABF3C(v9);
  Logger.init(subsystem:category:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000BBAA8(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1000BB340(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000BB3F0, 0, 0);
}

uint64_t sub_1000BB3F0()
{
  v2 = v0[2];
  v1 = v0[3];
  Logger.init(subsystem:category:)();
  v3 = sub_100107CA8("CommunicationService.currentCommunicationConfiguration", 54, 2, v1, 0);

  v4 = v0[4];
  (v4)[2](v4, v3, 0);
  _Block_release(v4);

  v5 = v0[3];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000BB6C4(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1000BB794;

  return sub_1000BBBCC();
}

uint64_t sub_1000BB794()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1000BB8F0()
{
  sub_1000ABF3C(v0 + OBJC_IVAR____TtC15ScreenTimeAgent20CommunicationService____lazy_storage___logger);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CommunicationService()
{
  result = qword_1001E0590;
  if (!qword_1001E0590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BB9A8()
{
  sub_1000AB584();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000BBA38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0F2C(&qword_1001DFDC0, &unk_1001405E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BBAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0F2C(&qword_1001DFDC0, &unk_1001405E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BBB18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000BB6C4(v2, v3, v4);
}

uint64_t sub_1000BBBCC()
{
  v1[6] = v0;
  v2 = type metadata accessor for Logger();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000BBC98, 0, 0);
}

uint64_t sub_1000BBC98()
{
  v1 = v0[10];
  Logger.init(subsystem:category:)();
  sub_100106EE8("CommunicationService.authenticateRestrictionsPasscode", 53, 2, v1, 0);
  v3 = v0[9];
  v2 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000BBEC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A4F84;

  return sub_1000BB340(v2, v3);
}

id sub_1000BBF74()
{
  result = [objc_allocWithZone(type metadata accessor for PersistentContainer()) init];
  qword_1001E6FF0 = result;
  return result;
}

id sub_1000BBFA8()
{
  v0 = [objc_opt_self() persistentStoreDescriptionForConfigurationName:STPersistenceConfigurationNameCloud type:NSSQLiteStoreType];
  v1 = String._bridgeToObjectiveC()();
  [v0 setConfiguration:v1];

  sub_1000A0F74(0, &qword_1001E0000, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v0 setOption:isa forKey:NSPersistentStoreRemoteChangeNotificationPostOptionKey];

  v3 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v0 setOption:v3 forKey:NSPersistentHistoryTrackingKey];

  v4 = sub_1000BC0E4();
  [v0 setCloudKitContainerOptions:v4];

  return v0;
}

id sub_1000BC0E4()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent19PersistentContainer____lazy_storage___cloudKitContainerOptions;
  v2 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent19PersistentContainer____lazy_storage___cloudKitContainerOptions);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent19PersistentContainer____lazy_storage___cloudKitContainerOptions);
  }

  else
  {
    v4 = objc_allocWithZone(NSPersistentCloudKitContainerOptions);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithContainerIdentifier:v5];

    [v6 setUseDeviceToDeviceEncryption:1];
    v7 = String._bridgeToObjectiveC()();
    [v6 setApsConnectionMachServiceName:v7];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1000BC1F4()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent19PersistentContainer____lazy_storage___logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC15ScreenTimeAgent19PersistentContainer____lazy_storage___cloudKitContainerOptions] = 0;
  v0[OBJC_IVAR____TtC15ScreenTimeAgent19PersistentContainer_cloudKitStatus] = 0;
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 managedObjectModel];
  v11.receiver = v0;
  v11.super_class = type metadata accessor for PersistentContainer();
  v6 = objc_msgSendSuper2(&v11, "initWithName:managedObjectModel:", v3, v5);

  sub_1000A0F2C(&unk_1001E0010, &qword_100140140);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100140CA0;
  v8 = v6;
  *(v7 + 32) = sub_1000BBFA8();
  *(v7 + 40) = [v4 persistentStoreDescriptionForConfigurationName:STPersistenceConfigurationNameLocal type:NSSQLiteStoreType];
  sub_1000A0F74(0, &qword_1001E0690, NSPersistentStoreDescription_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setPersistentStoreDescriptions:isa];

  return v8;
}

id sub_1000BC418()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersistentContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PersistentContainer()
{
  result = qword_1001E0678;
  if (!qword_1001E0678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BC4F0()
{
  sub_1000AB584();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for PersistentContainer.CloudKitStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PersistentContainer.CloudKitStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000BC6F4()
{
  result = qword_1001E0688;
  if (!qword_1001E0688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E0688);
  }

  return result;
}

uint64_t sub_1000BC8C0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000BC970, 0, 0);
}

uint64_t sub_1000BC970()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  Logger.init(subsystem:category:)();
  v4 = sub_100107D3C("SettingsService.startCoreDataServer", 35, 2, v1, 0);

  if (v2)
  {
    v5 = v0[4];
    (v5)[2](v5, v4, 0);

    _Block_release(v5);
  }

  else
  {
  }

  v6 = v0[3];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000BCC68(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v3[4] = _Block_copy(a2);

  return _swift_task_switch(sub_1000BCD18, 0, 0);
}

uint64_t sub_1000BCD18()
{
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000BCE14;
  v3 = *(v0 + 24);

  return sub_10010DB7C("SettingsService.processSettingsChanges", 38, 2, v3, 0);
}

uint64_t sub_1000BCE14()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1000BCFB0;
  }

  else
  {
    v3 = sub_1000BCF28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000BCF28()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  (*(v1 + 16))(v1, 0);
  v3 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000BCFB0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  v4 = _convertErrorToNSError(_:)();

  (*(v2 + 16))(v2, v4);

  v5 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000BD1D4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000BD284, 0, 0);
}

uint64_t sub_1000BD284()
{
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000BD380;
  v3 = *(v0 + 24);

  return sub_10010ED2C("SettingsService.updateLegacyUsage", 33, 2, v3, 0);
}

uint64_t sub_1000BD380(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v5 = sub_1000BD52C;
  }

  else
  {
    v5 = sub_1000BD498;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000BD498()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  if (v1)
  {
    v3 = *(v0 + 32);
    v3[2](v3, *(v0 + 56), 0);
    _Block_release(v3);
  }

  v4 = *(v0 + 24);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000BD52C()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = v0[6];
  if (v1)
  {
    v4 = v0[4];
    v5 = v0[6];
    v6 = _convertErrorToNSError(_:)();

    (v4)[2](v4, 0, v6);
    _Block_release(v4);
  }

  else
  {
    v7 = v0[6];
  }

  v8 = v0[3];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000BD77C(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v7 = a1;

  return _swift_task_switch(sub_1000BD83C, 0, 0);
}

uint64_t sub_1000BD83C()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000BD938;
  v3 = *(v0 + 32);

  return sub_10010ED2C("SettingsService.requestLegacyUsage", 34, 2, v3, 0);
}

uint64_t sub_1000BD938(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_1000BDAEC;
  }

  else
  {
    v5 = sub_1000BDA50;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000BDA50()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  if (v1)
  {
    v3 = *(v0 + 40);
    v3[2](v3, *(v0 + 64), 0);
    _Block_release(v3);
  }

  v4 = *(v0 + 32);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000BDAEC()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];

  v4 = v0[7];
  if (v1)
  {
    v5 = v0[5];
    v6 = v0[7];
    v7 = _convertErrorToNSError(_:)();

    (v5)[2](v5, 0, v7);
    _Block_release(v5);
  }

  else
  {
    v8 = v0[7];
  }

  v9 = v0[4];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000BDD3C(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v3[4] = _Block_copy(a2);

  return _swift_task_switch(sub_1000BDDEC, 0, 0);
}

uint64_t sub_1000BDDEC()
{
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000BDEE8;
  v3 = *(v0 + 24);

  return sub_10010DB7C("SettingsService.setCloudSync", 28, 2, v3, 0);
}

uint64_t sub_1000BDEE8()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1000BEC44;
  }

  else
  {
    v3 = sub_1000BEC40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000BE174(const void *a1)
{
  v3 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000BE210, 0, 0);
}

uint64_t sub_1000BE210()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = sub_100106124("SettingsService.isCloudSyncEnabled", 34, 2, v1, 0);
  (*(*(v0 + 24) + 16))(*(v0 + 24), v2 & 1, 0);
  v3 = *(v0 + 16);
  _Block_release(*(v0 + 24));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000BE4B0(const void *a1)
{
  v3 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000BE54C, 0, 0);
}

uint64_t sub_1000BE54C()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = sub_100106124("SettingsService.isRestrictAdultContentEnabled", 45, 2, v1, 0);
  (*(*(v0 + 24) + 16))(*(v0 + 24), v2 & 1, 0);
  v3 = *(v0 + 16);
  _Block_release(*(v0 + 24));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000BE674()
{
  sub_1000ABF3C(v0 + OBJC_IVAR____TtC15ScreenTimeAgent15SettingsService____lazy_storage___logger);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SettingsService()
{
  result = qword_1001E0728;
  if (!qword_1001E0728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BE72C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000BE4B0(v2);
}

uint64_t sub_1000BE7D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000BE174(v2);
}

uint64_t sub_1000BE884()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000BDD3C(v2, v4, v3);
}

uint64_t sub_1000BE938()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000BD77C(v2, v3, v4);
}

uint64_t sub_1000BE9EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000BD1D4(v2, v3);
}

uint64_t sub_1000BEA98()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BEAE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A4F84;

  return sub_1000BCC68(v2, v3, v4);
}

uint64_t sub_1000BEB94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000BC8C0(v2, v3);
}

id sub_1000BED50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STExpressIntroductionUserContextStoreObjC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for STExpressIntroductionUserContextStoreObjC()
{
  result = qword_1001E0840;
  if (!qword_1001E0840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BEE48()
{
  result = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore();
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

ScreenTimeAgent::FamilyMessagingDestination::DestinationType_optional __swiftcall FamilyMessagingDestination.DestinationType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t *sub_1000BEEF0@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t FamilyMessagingDestination.identifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void sub_1000BEF84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = String._bridgeToObjectiveC()();
  v11 = a3();

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *a5 = a4;
    *(a5 + 8) = v12;
    *(a5 + 16) = v14;
    *(a5 + 24) = a1;
    *(a5 + 32) = a2;
  }

  else
  {
    __break(1u);
  }
}

void *FamilyMessagingDestination.init(device:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = IDSCopyIDForDevice();
  if (result)
  {
    v5 = result;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    sub_1000BF0EC();
    result = StringProtocol.components<A>(separatedBy:)();
    if (result[2] >= 2uLL)
    {
      v10 = result[6];
      v9 = result[7];

      *a2 = 2;
      *(a2 + 8) = v6;
      *(a2 + 16) = v8;
      *(a2 + 24) = v10;
      *(a2 + 32) = v9;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000BF0EC()
{
  result = qword_1001E0850;
  if (!qword_1001E0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E0850);
  }

  return result;
}

void __swiftcall FamilyMessagingDestination.init(stringRepresentation:)(ScreenTimeAgent::FamilyMessagingDestination_optional *__return_ptr retstr, Swift::String stringRepresentation)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = IDSCopyRawAddressForDestination();

  if (v4 && (v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v7 = v6, v4, sub_1000BF294(v5, v7, &v12), (v4 = v14) != 0))
  {
    v8 = *(&v15 + 1);
    v9 = v15;
    v11 = v12;
    v10 = v13;
    v16[0] = v13;
    v16[1] = v14;

    sub_1000BF428(v16);
    v17 = v15;
    sub_1000BF428(&v17);
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
  }

  *&retstr->value.type = v11;
  retstr->value.destination._countAndFlagsBits = v10;
  retstr->value.destination._object = v4;
  retstr->value.identifier._countAndFlagsBits = v9;
  retstr->value.identifier._object = v8;
}

void __swiftcall FamilyMessagingDestination.init(rawAddress:)(ScreenTimeAgent::FamilyMessagingDestination_optional *__return_ptr retstr, Swift::String rawAddress)
{
  sub_1000BF294(rawAddress._countAndFlagsBits, rawAddress._object, v4);
  v3 = v4[1];
  *&retstr->value.type = v4[0];
  *&retstr->value.destination._object = v3;
  retstr->value.identifier._object = v5;
}

uint64_t FamilyMessagingDestination.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void sub_1000BF294(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [v6 _appearsToBePhoneNumber];

  v8 = String._bridgeToObjectiveC()();
  v9 = v8;
  if (v7)
  {
    v10 = IDSCopyIDForPhoneNumber();

    if (v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      sub_1000BF598();
      Collection<>.trimmingPrefix<A>(_:)();

      a1 = static String._fromSubstring(_:)();
      a2 = v14;

      v15 = 1;
LABEL_8:
      *a3 = v15;
      a3[1] = v11;
      a3[2] = v13;
      a3[3] = a1;
      a3[4] = a2;
      return;
    }

    __break(1u);
  }

  else
  {
    v16 = [v8 _appearsToBeEmail];

    if (!v16)
    {

      v15 = 0;
      v11 = 0;
      v13 = 0;
      a1 = 0;
      a2 = 0;
      goto LABEL_8;
    }

    v17 = String._bridgeToObjectiveC()();
    v18 = IDSCopyIDForEmailAddress();

    if (v18)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v19;

      v15 = 0;
      goto LABEL_8;
    }
  }

  __break(1u);
}

unint64_t sub_1000BF480()
{
  result = qword_1001E0858;
  if (!qword_1001E0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E0858);
  }

  return result;
}

__n128 sub_1000BF4D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000BF4E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BF530(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1000BF598()
{
  result = qword_1001E0860;
  if (!qword_1001E0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E0860);
  }

  return result;
}

uint64_t sub_1000BF5F0()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent9Blueprint_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Blueprint()
{
  result = qword_1001E08A0;
  if (!qword_1001E08A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BF700()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000BF7A0()
{
  v0 = type metadata accessor for Logger();
  sub_1000B3894(v0, qword_1001E0950);
  sub_1000A2B1C(v0, qword_1001E0950);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000BF840()
{
  if (qword_1001DF118 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[3] = sub_1000A2B1C(v1, qword_1001E0950);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching userAltDSID", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1000BF990;
  v6 = v0[2];

  return sub_1000BFCE4();
}

uint64_t sub_1000BF990(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 32);
  v5 = *v3;
  v5[5] = a1;
  v5[6] = a2;
  v5[7] = v2;

  if (v2)
  {
    v6 = v5[1];

    return v6(0);
  }

  else
  {

    return _swift_task_switch(sub_1000BFACC, 0, 0);
  }
}

uint64_t sub_1000BFACC()
{
  v26 = v0;
  v1 = v0[6];
  v2 = v0[3];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136380675;
    *(v7 + 4) = sub_1000A2E68(v6, v5, &v25);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetched userAltDSID: %{private}s ; checking if teen or child", v7, 0xCu);
    sub_1000A462C(v8);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  v12 = v0[2];
  v13 = v12[6];
  v14 = v12[7];
  sub_1000A9618(v12 + 3, v13);
  v15 = (*(v14 + 8))(v11, v9, v13, v14);
  v16 = v0[6];
  if (v10)
  {

    v17 = v0[1];
    v18 = 0;
  }

  else
  {
    if (v15)
    {

      v19 = 1;
    }

    else
    {
      v20 = v0[5];
      v21 = v12[6];
      v22 = v12[7];
      v23 = v0[6];
      sub_1000A9618(v12 + 3, v21);
      v19 = (*(v22 + 16))(v20, v23, v21, v22);
    }

    v17 = v0[1];
    v18 = v19 & 1;
  }

  return v17(v18);
}

uint64_t sub_1000BFCE4()
{
  v1[4] = v0;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000BFDA4, 0, 0);
}

uint64_t sub_1000BFDA4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[8] = [*(v0[4] + 16) newBackgroundContext];
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v4 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1000BFEB0;
  v6 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v6, sub_1000C010C, 0, &type metadata for String);
}

uint64_t sub_1000BFEB0()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1000C00A0;
  }

  else
  {
    v6 = sub_1000C0020;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000C0020()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_1000C00A0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2();
}

void sub_1000C010C(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() fetchRequestMatchingLocalUser];
  v17 = 0;
  v3 = [v2 execute:&v17];

  v4 = v17;
  if (!v3)
  {
    v14 = v17;
    _convertNSErrorToError(_:)();

LABEL_13:
    swift_willThrow();
    return;
  }

  sub_1000C0650();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v4;

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    sub_1000C069C();
    swift_allocError();
    *v16 = 1;
    goto LABEL_13;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;

  v9 = [v8 altDSID];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *a1 = v11;
    a1[1] = v13;
  }

  else
  {
    sub_1000C069C();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
  }
}

uint64_t sub_1000C0318()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1000A462C((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1000C0378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v14 - v11;
  (*(v6 + 16))(a1, a2, v7, v6);
  if (!v3)
  {
    v6 = (*(v6 + 24))(v12, v7, v6);
    (*(v9 + 8))(v12, AssociatedTypeWitness);
  }

  return v6;
}

id sub_1000C0520@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  result = sub_1000C0550();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_1000C0550()
{
  v1 = String._bridgeToObjectiveC()();
  v6 = 0;
  v2 = [v0 authKitAccountWithAltDSID:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1000C0650()
{
  result = qword_1001E0A40;
  if (!qword_1001E0A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001E0A40);
  }

  return result;
}

unint64_t sub_1000C069C()
{
  result = qword_1001E0A48[0];
  if (!qword_1001E0A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001E0A48);
  }

  return result;
}

uint64_t sub_1000C06F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000C0768(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1000C08A8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1000C0AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 232) = a7;
  *(v8 + 184) = a6;
  *(v8 + 192) = a8;
  *(v8 + 168) = a4;
  *(v8 + 176) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 200) = v9;
  v10 = *(v9 - 8);
  *(v8 + 208) = v10;
  *(v8 + 216) = *(v10 + 64);
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1000C0BF4, 0, 0);
}

uint64_t sub_1000C0BF4()
{
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  if (qword_1001DF138 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = _os_activity_create(&_mh_execute_header, "Create TapToRadar", qword_1001E12B0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  os_activity_scope_enter(v2, (v0 + 40));
  swift_endAccess();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Tap To radar background task initiated...", v5, 2u);
  }

  v37 = *(v0 + 224);
  v38 = *(v0 + 216);
  v36 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);
  v34 = *(v0 + 208);
  v35 = *(v0 + 168);
  v9 = *(v0 + 232);

  v10 = [objc_allocWithZone(RadarDraft) init];
  v11 = objc_allocWithZone(RadarComponent);
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 initWithName:v12 version:v13 identifier:994329];

  [v10 setComponent:v14];
  StaticString.description.getter();
  v15._countAndFlagsBits = 8250;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  swift_getErrorValue();
  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v18 = *(v0 + 96);
  v19._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v19);

  sub_1000C1298(299);

  static String._fromSubstring(_:)();

  v20 = String._bridgeToObjectiveC()();

  [v10 setTitle:v20];

  sub_1000A9564();
  isa = NSNumber.init(integerLiteral:)(1779200).super.super.isa;
  sub_1000A0F2C(&unk_1001E0010, &qword_100140140);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10013FFF0;
  *(v22 + 32) = isa;
  v33 = isa;
  v23 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setKeywords:v23];

  swift_getErrorValue();
  v25 = *(v0 + 104);
  v24 = *(v0 + 112);
  v26 = *(v0 + 120);
  Error.localizedDescription.getter();
  v27 = String._bridgeToObjectiveC()();

  [v10 setProblemDescription:v27];

  [v10 setClassification:7];
  [v10 setReproducibility:6];
  type metadata accessor for TapToRadarService();
  v28 = static TapToRadarService.shared.getter();
  (*(v34 + 16))(v37, v35, v36);
  v29 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v30 = swift_allocObject();
  (*(v34 + 32))(v30 + v29, v37, v36);
  TapToRadarService.createDraft(_:processName:displayReason:completion:)();

  swift_beginAccess();
  os_activity_scope_leave((v0 + 40));
  swift_endAccess();
  swift_unknownObjectRelease();

  v31 = *(v0 + 8);

  return v31();
}

void sub_1000C1138(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v8 = v4;
      *v3 = 136446210;
      swift_getErrorValue();
      v5 = Error.localizedDescription.getter();
      v7 = sub_1000A2E68(v5, v6, &v8);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v1, v2, "Tap-to-Radar failed with: %{public}s", v3, 0xCu);
      sub_1000A462C(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_1000C1298(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

void sub_1000C1334(uint64_t a1)
{
  v2 = *(*(type metadata accessor for Logger() - 8) + 80);

  sub_1000C1138(a1);
}

uint64_t sub_1000C13A4()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent15FamilyMessaging_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for FamilyMessaging()
{
  result = qword_1001E0B00;
  if (!qword_1001E0B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C1470()
{
  result = type metadata accessor for Logger();
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

id sub_1000C1534()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

uint64_t sub_1000C15E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001DFDC0, &unk_1001405E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC15ScreenTimeAgent18DiagnosticsService____lazy_storage___logger;
  swift_beginAccess();
  sub_1000BBA38(v1 + v10, v9);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000A5148(v9, &qword_1001DFDC0, &unk_1001405E0);
  Logger.init(subsystem:category:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000BBAA8(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1000C17F4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v4 = __chkstk_darwin(v3);
  v6 = v24 - v5;
  __chkstk_darwin(v4);
  v8 = v24 - v7;
  v9 = Notification.userInfo.getter();
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  v24[1] = 1635017060;
  v24[2] = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v10 + 16) || (v11 = sub_1000CBB00(v25), (v12 & 1) == 0))
  {

    sub_1000C8034(v25);
LABEL_8:
    v26 = 0u;
    v27 = 0u;
    goto LABEL_9;
  }

  sub_1000A5078(*(v10 + 56) + 32 * v11, &v26);
  sub_1000C8034(v25);

  if (!*(&v27 + 1))
  {
LABEL_9:
    sub_1000A5148(&v26, &qword_1001E03A0, qword_100140A70);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_1000C15E4(v6);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "DiagnosticsService: notification has no data", v18, 2u);
    }

    (*(v1 + 8))(v6, v0);
    return 0;
  }

  v14 = v25[0];
  v13 = v25[1];
  sub_1000A0F74(0, &qword_1001E0E68, NSKeyedUnarchiver_ptr);
  sub_1000A0F74(0, &unk_1001E0E70, off_1001A1188);
  v15 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (v15)
  {
    v20 = v15;
    sub_1000A99A4(v14, v13);
    return v20;
  }

  sub_1000C15E4(v8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "unarchived message payload was nil", v23, 2u);
  }

  sub_1000A99A4(v14, v13);

  (*(v1 + 8))(v8, v0);
  return 0;
}

uint64_t sub_1000C1C7C()
{
  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent18DiagnosticsService____lazy_storage___logger, &qword_1001DFDC0, &unk_1001405E0);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DiagnosticsService()
{
  result = qword_1001E0D70;
  if (!qword_1001E0D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C1D4C()
{
  sub_1000AB584();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000C1F60(const void *a1)
{
  v3 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C1FFC, 0, 0);
}

uint64_t sub_1000C1FFC()
{
  v2 = v0[2];
  v1 = v0[3];
  Logger.init(subsystem:category:)();
  v3 = sub_100108BA8("DiagnosticsService.localConfigurationVersion", 44, 2, v2, 0);
  if (v1)
  {
    v4 = v0[3];
    v5 = v3;
    (v4)[2](v4, v3, 0);

    _Block_release(v4);
  }

  else
  {
  }

  v6 = v0[2];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000C22E0(void *a1, const void *a2)
{
  v2[2] = a1;
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a2);
  v6 = a1;

  return _swift_task_switch(sub_1000C238C, 0, 0);
}

uint64_t sub_1000C238C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  Logger.init(subsystem:category:)();
  sub_100106EE8("DiagnosticsService.setLocalConfigurationVersion", 47, 2, v2, 0);

  if (v1)
  {
    v4 = v0[4];
    v4[2](v4, 0);
    _Block_release(v4);
  }

  v5 = v0[3];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000C2654(const void *a1)
{
  v3 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C26F0, 0, 0);
}

uint64_t sub_1000C26F0()
{
  v2 = v0[2];
  v1 = v0[3];
  Logger.init(subsystem:category:)();
  v3 = sub_100108BA8("DiagnosticsService.configurationVersion", 39, 2, v2, 0);
  if (v1)
  {
    v4 = v0[3];
    v5 = v3;
    (v4)[2](v4, v3, 0);

    _Block_release(v4);
  }

  else
  {
  }

  v6 = v0[2];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000C29C0(const void *a1)
{
  v3 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C2A5C, 0, 0);
}

uint64_t sub_1000C2A5C()
{
  v2 = v0[2];
  v1 = v0[3];
  Logger.init(subsystem:category:)();
  v3 = sub_100106124("DiagnosticsService.repairBlueprints", 35, 2, v2, 0);
  if (v1)
  {
    v4 = v0[3];
    v4[2](v4, v3 & 1, 0);
    _Block_release(v4);
  }

  v5 = v0[2];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000C2D1C(const void *a1)
{
  v3 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C2DB8, 0, 0);
}

uint64_t sub_1000C2DB8()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000C2EB4;
  v3 = *(v0 + 16);

  return sub_10010ED2C("DiagnosticsService.sendCheckInRequest", 37, 2, v3, 0);
}

uint64_t sub_1000C2EB4(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v5 = sub_1000C8098;
  }

  else
  {
    v5 = sub_1000C809C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000C3144(const void *a1)
{
  v3 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C31E0, 0, 0);
}

uint64_t sub_1000C31E0()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000C2EB4;
  v3 = *(v0 + 16);

  return sub_10010ED2C("DiagnosticsService.sendCheckInRequestOnV2", 41, 2, v3, 0);
}

uint64_t sub_1000C3454(const void *a1)
{
  v3 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C34F0, 0, 0);
}

uint64_t sub_1000C34F0()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000C2EB4;
  v3 = *(v0 + 16);

  return sub_10010ED2C("DiagnosticsService.sendBlueprints", 33, 2, v3, 0);
}

uint64_t sub_1000C3764(const void *a1)
{
  v3 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C3800, 0, 0);
}

uint64_t sub_1000C3800()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000C2EB4;
  v3 = *(v0 + 16);

  return sub_10010ED2C("DiagnosticsService.sendBlueprintChanges", 39, 2, v3, 0);
}

uint64_t sub_1000C3A74(const void *a1)
{
  v3 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C3B10, 0, 0);
}

uint64_t sub_1000C3B10()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000C3C0C;
  v3 = *(v0 + 16);

  return sub_10010ED2C("DiagnosticsService.sendSettings", 31, 2, v3, 0);
}

uint64_t sub_1000C3C0C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v5 = sub_1000C3DAC;
  }

  else
  {
    v5 = sub_1000C3D24;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000C3D24()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v1[2](*(v0 + 24), *(v0 + 48), 0);
    _Block_release(v1);
  }

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000C3DAC()
{
  v1 = v0[3];
  v2 = v0[5];
  if (v1)
  {
    v3 = _convertErrorToNSError(_:)();

    (v1)[2](v1, 0, v3);
    _Block_release(v1);
  }

  else
  {
  }

  v4 = v0[2];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000C3FDC(const void *a1)
{
  v3 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C4078, 0, 0);
}

uint64_t sub_1000C4078()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000C2EB4;
  v3 = *(v0 + 16);

  return sub_10010ED2C("DiagnosticsService.sendSettingsChanges", 38, 2, v3, 0);
}

uint64_t sub_1000C42EC(const void *a1)
{
  v3 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000C4388, 0, 0);
}

uint64_t sub_1000C4388()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000C2EB4;
  v3 = *(v0 + 16);

  return sub_10010ED2C("DiagnosticsService.sendUserDeviceState", 38, 2, v3, 0);
}

uint64_t sub_1000C45FC(const void *a1)
{
  v2 = _Block_copy(a1);
  v2[2](v2, 1, 0);
  _Block_release(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000C4804(void *a1, const void *a2)
{
  v2[2] = a1;
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a2);
  v6 = a1;

  return _swift_task_switch(sub_1000C48B0, 0, 0);
}

uint64_t sub_1000C48B0()
{
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000C49AC;
  v3 = *(v0 + 24);

  return sub_10010ED2C("DiagnosticsService.postNotification", 35, 2, v3, 0);
}

uint64_t sub_1000C49AC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1000C4B68;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v7 = sub_1000C4AD8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000C4AD8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  (*(v2 + 16))(v2, v1, 0);
  v3 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000C4B68()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  v3 = _convertErrorToNSError(_:)();

  (*(v2 + 16))(v2, 0, v3);

  v4 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000C4DA4(void *a1, const void *a2)
{
  v2[2] = a1;
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a2);
  v6 = a1;

  return _swift_task_switch(sub_1000C4E50, 0, 0);
}

uint64_t sub_1000C4E50()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v3 = sub_100106124("DiagnosticsService.removeNotification", 37, 2, v1, 0);

  (*(*(v0 + 32) + 16))(*(v0 + 32), v3 & 1, 0);
  v4 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000C4F88()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C15E4(v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "DiagnosticsService client would like to register for IDS messages", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v24.opaque[0] = 0;
  v24.opaque[1] = 0;
  if (qword_1001DF138 != -1)
  {
    swift_once();
  }

  v10 = _os_activity_create(&_mh_execute_header, "DiagnosticsService.registerForIDSMessages", qword_1001E12B0, OS_ACTIVITY_FLAG_DEFAULT);
  v23[1] = v10;
  swift_beginAccess();
  os_activity_scope_enter(v10, &v24);
  swift_endAccess();
  v11 = String._bridgeToObjectiveC()();
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  v29 = sub_1000C6D04;
  v30 = v1;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1000C547C;
  v28 = &unk_1001A7C30;
  v14 = _Block_copy(&aBlock);
  v15 = v11;

  v16 = [v13 addObserverForName:v15 object:0 queue:0 usingBlock:v14];
  _Block_release(v14);
  swift_unknownObjectRelease();

  v17 = String._bridgeToObjectiveC()();
  v18 = [v12 defaultCenter];
  v29 = sub_1000C6D3C;
  v30 = v1;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1000C547C;
  v28 = &unk_1001A7C58;
  v19 = _Block_copy(&aBlock);

  v20 = v17;

  v21 = [v18 addObserverForName:v20 object:0 queue:0 usingBlock:v19];
  _Block_release(v19);

  swift_unknownObjectRelease();
  swift_beginAccess();
  os_activity_scope_leave(&v24);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1000C53C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000C53E4, 0, 0);
}

uint64_t sub_1000C53E4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_1000C17F4();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1000C6F98(v3, 1);
    if (v5)
    {
      v6 = v5;
      [*(v0 + 16) didReceiveIDSMessage:v5];

      v4 = v6;
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000C547C(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000C5570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a2;
  (*(v8 + 32))(&v16[v15], &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_1000A2630(0, 0, v13, a4, v16);
}

uint64_t sub_1000C574C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000C576C, 0, 0);
}

uint64_t sub_1000C576C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_1000C17F4();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1000C6F98(v3, 0);
    if (v5)
    {
      v6 = v5;
      [*(v0 + 16) didReceiveIDSMessage:v5];

      v4 = v6;
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000C581C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C15E4(v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "DiagnosticsService client would like to register for CloudKit messages", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v24.opaque[0] = 0;
  v24.opaque[1] = 0;
  if (qword_1001DF138 != -1)
  {
    swift_once();
  }

  v10 = _os_activity_create(&_mh_execute_header, "DiagnosticsService.registerForCloudKitMessages", qword_1001E12B0, OS_ACTIVITY_FLAG_DEFAULT);
  v23[1] = v10;
  swift_beginAccess();
  os_activity_scope_enter(v10, &v24);
  swift_endAccess();
  v11 = String._bridgeToObjectiveC()();
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  v29 = sub_1000C80B0;
  v30 = v1;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1000C547C;
  v28 = &unk_1001A7BE0;
  v14 = _Block_copy(&aBlock);
  v15 = v11;

  v16 = [v13 addObserverForName:v15 object:0 queue:0 usingBlock:v14];
  _Block_release(v14);
  swift_unknownObjectRelease();

  v17 = String._bridgeToObjectiveC()();
  v18 = [v12 defaultCenter];
  v29 = sub_1000C6CDC;
  v30 = v1;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1000C547C;
  v28 = &unk_1001A7C08;
  v19 = _Block_copy(&aBlock);

  v20 = v17;

  v21 = [v18 addObserverForName:v20 object:0 queue:0 usingBlock:v19];
  _Block_release(v19);

  swift_unknownObjectRelease();
  swift_beginAccess();
  os_activity_scope_leave(&v24);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1000C5C6C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000C15E4(v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "DiagnosticsService client would like to register for generic messages", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  if (qword_1001DF138 != -1)
  {
    swift_once();
  }

  v10 = _os_activity_create(&_mh_execute_header, "DiagnosticsService.registerForGenericMessages", qword_1001E12B0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  os_activity_scope_enter(v10, &v18);
  swift_endAccess();
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() defaultCenter];
  aBlock[4] = sub_1000C6C9C;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000C547C;
  aBlock[3] = &unk_1001A7BB8;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  v15 = [v12 addObserverForName:v14 object:0 queue:0 usingBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  swift_beginAccess();
  os_activity_scope_leave(&v18);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void sub_1000C5F9C(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  if (Notification.userInfo.getter())
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(STDiagnosticsServiceMessage) initWithMessageType:a3 withUserInfo:v7.super.isa];

  [a2 *a4];
}

uint64_t sub_1000C6084(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_1000C60C8(uint64_t a1)
{

  return sub_1000C6290(a1, "DiagnosticsService.didReceiveIDSMessage", &selRef_didReceiveIDSMessage_);
}

uint64_t sub_1000C6144(uint64_t a1)
{

  return sub_1000C6290(a1, "DiagnosticsService.didReceiveCloudKitMessage", &selRef_didReceiveCloudKitMessage_);
}

uint64_t sub_1000C61C0(uint64_t a1, uint64_t a2, void *a3, const char *a4, SEL *a5)
{
  v7 = a3;

  sub_1000C6290(v7, a4, a5);
}

uint64_t sub_1000C6228(uint64_t a1)
{

  return sub_1000C6290(a1, "DiagnosticsService.didReceiveGenericMessage", &selRef_didReceiveGenericMessage_);
}

uint64_t sub_1000C6290(uint64_t a1, const char *a2, SEL *a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OSActivity();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  if (qword_1001DF138 != -1)
  {
    swift_once();
  }

  v13 = _os_activity_create(&_mh_execute_header, a2, qword_1001E12B0, OS_ACTIVITY_FLAG_DEFAULT);
  *(inited + 16) = v13;
  swift_beginAccess();
  os_activity_scope_enter(v13, (inited + 24));
  swift_endAccess();
  v14 = *(v3 + 16);
  if (v14)
  {
    v15 = [v14 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000C6C8C(v21, v22);
    sub_1000A5078(v22, v21);
    sub_1000A0F2C(&qword_1001E0E40, &qword_100141368);
    swift_dynamicCast();
    [v20[1] *a3];

    swift_unknownObjectRelease();
    return sub_1000A462C(v22);
  }

  else
  {
    sub_1000C15E4(v11);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Remote object was nil", v19, 2u);
    }

    else
    {
    }

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1000C6588(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000C664C, 0, 0);
}

void sub_1000C664C()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_1000C15E4(v0[7]);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    v10 = v0 + 2;
    v8 = v0[2];
    v9 = v10[1];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1000A2E68(v8, v9, &v16);
    _os_log_impl(&_mh_execute_header, v3, v4, "Exiting ScreenTimeAgent with reason: %s", v11, 0xCu);
    sub_1000A462C(v12);

    (*(v6 + 8))(v5, v7);
    exit(0);
  }

  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];

  (*(v14 + 8))(v13, v15);
  exit(0);
}

uint64_t sub_1000C6940(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000C6A14;

  return sub_1000C6588(v4, v6);
}

uint64_t sub_1000C6A14()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v0)
  {
    if (v5)
    {
      v8 = *(v2 + 24);
      v9 = _convertErrorToNSError(_:)();

      (v8)[2](v8, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v10 = *(v2 + 24);
    v10[2](v10, 0);
    _Block_release(v10);
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_1000C6BD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A4F84;

  return sub_1000C6940(v2, v3, v4);
}

_OWORD *sub_1000C6C8C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000C6CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C6D74(uint64_t a1)
{
  v4 = *(type metadata accessor for Notification() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000A5418;

  return sub_1000C574C(a1, v6, v7, v8, v1 + v5);
}

char *sub_1000C6E6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000A0F2C(&qword_1001E0230, &qword_100141390);
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

char *sub_1000C6F78(char *a1, int64_t a2, char a3)
{
  result = sub_1000C6E6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C6F98(void *a1, char a2)
{
  v3 = [a1 payloadType];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = [a1 userInfo];
  *&v45 = @"FromID";
  type metadata accessor for STIDSTransportUserInfoKey(0);
  v8 = @"FromID";
  v9 = [v7 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47[0] = v45;
  v47[1] = v46;
  if (*(&v46 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v43;
      v11 = v44;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1000A5148(v47, &qword_1001E03A0, qword_100140A70);
  }

  v11 = 0xE700000000000000;
  v10 = 0x6E776F6E6B6E55;
LABEL_9:
  v37 = v10;
  v39 = a1;
  v12 = [a1 destinations];
  sub_1000A0F74(0, &qword_1001E0E48, STUnifiedTransportPayloadDestination_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v6;
  v42 = v4;
  v38 = v11;
  if (v14)
  {
    *&v47[0] = &_swiftEmptyArrayStorage;
    result = sub_1000C6F78(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = 0;
    v17 = *&v47[0];
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v13 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v18 address];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      *&v47[0] = v17;
      v25 = v17[2];
      v24 = v17[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000C6F78((v24 > 1), v25 + 1, 1);
        v17 = *&v47[0];
      }

      ++v16;
      v17[2] = v25 + 1;
      v26 = &v17[2 * v25];
      *(v26 + 4) = v21;
      *(v26 + 5) = v23;
    }

    while (v14 != v16);
  }

  else
  {

    v17 = &_swiftEmptyArrayStorage;
  }

  v27 = [v39 UUID];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  sub_1000A0F2C(&qword_1001E0E50, qword_100143270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001412E0;
  *&v47[0] = 5456969;
  *(&v47[0] + 1) = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  v32 = 0x646E756F6274756FLL;
  if (a2)
  {
    v32 = 0x646E756F626E69;
  }

  v33 = 0xE800000000000000;
  *(inited + 96) = &type metadata for String;
  if (a2)
  {
    v33 = 0xE700000000000000;
  }

  *(inited + 72) = v32;
  *(inited + 80) = v33;
  *&v47[0] = 0x5464616F6C796170;
  *(&v47[0] + 1) = 0xEB00000000657079;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v42;
  *(inited + 152) = v41;
  *&v47[0] = 0x7265646E6573;
  *(&v47[0] + 1) = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v37;
  *(inited + 224) = v38;
  *&v47[0] = 0x6E65697069636572;
  *(&v47[0] + 1) = 0xEA00000000007374;
  AnyHashable.init<A>(_:)();
  *(inited + 312) = sub_1000A0F2C(&qword_1001E0E58, &qword_100141380);
  *(inited + 288) = v17;
  *&v47[0] = 0x5564616F6C796170;
  *(&v47[0] + 1) = 0xEB00000000444955;
  AnyHashable.init<A>(_:)();
  *(inited + 384) = &type metadata for String;
  *(inited + 360) = v28;
  *(inited + 368) = v30;
  sub_10010DA40(inited);
  swift_setDeallocating();
  sub_1000A0F2C(&qword_1001E0E60, &qword_100141388);
  swift_arrayDestroy();
  v34 = objc_allocWithZone(STDiagnosticsServiceMessage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = [v34 initWithMessageType:1 withUserInfo:isa];

  return v36;
}

uint64_t sub_1000C74F0()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000C75BC(uint64_t a1)
{
  v4 = *(type metadata accessor for Notification() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000A5418;

  return sub_1000C53C4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000C76B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000C4DA4(v2, v3);
}

uint64_t sub_1000C7768()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000C4804(v2, v3);
}

uint64_t sub_1000C781C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000C45FC(v2);
}

uint64_t sub_1000C78C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000C42EC(v2);
}

uint64_t sub_1000C7974()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000C3FDC(v2);
}

uint64_t sub_1000C7A20()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000C3A74(v2);
}

uint64_t sub_1000C7ACC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000C3764(v2);
}

uint64_t sub_1000C7B78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000C3454(v2);
}

uint64_t sub_1000C7C24()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000C3144(v2);
}

uint64_t sub_1000C7CD0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000C2D1C(v2);
}

uint64_t sub_1000C7D7C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000C29C0(v2);
}

uint64_t sub_1000C7E28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000C2654(v2);
}

uint64_t sub_1000C7ED4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000C22E0(v2, v3);
}

uint64_t sub_1000C7F88()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000C1F60(v2);
}

uint64_t sub_1000C80C8()
{
  v0 = type metadata accessor for Logger();
  sub_1000B3894(v0, qword_1001E0E88);
  sub_1000A2B1C(v0, qword_1001E0E88);
  return Logger.init(subsystem:category:)();
}

CKRecordZoneID sub_1000C8148()
{
  sub_1000A0F74(0, &unk_1001E1128, CKRecordZoneID_ptr);
  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0._object = v1;
  v2._countAndFlagsBits = 0x617461646174656DLL;
  v2._object = 0xED0000656E6F7A5FLL;
  result.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v2, v0).super.isa;
  qword_1001E0EA0 = result.super.isa;
  return result;
}

uint64_t sub_1000C81C4@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000A5148(v19, &qword_1001E03A0, qword_100140A70);
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000A2B1C(v5, qword_1001E0E88);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Using test device record provider", v8, 2u);
    }

    v9 = type metadata accessor for LegacyUsageShutdownScheduler.DeviceRecordProvider();
    result = swift_allocObject();
    v11 = result;
    v12 = &off_1001E0FF8;
  }

  else
  {
    memset(v19, 0, sizeof(v19));
    sub_1000A5148(v19, &qword_1001E03A0, qword_100140A70);
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000A2B1C(v13, qword_1001E0E88);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Using CloudKit container", v16, 2u);
    }

    v17 = objc_opt_self();
    v18 = [v17 remotemanagement_mirroringContainerIdentifier];
    if (!v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = String._bridgeToObjectiveC()();
    }

    v11 = [v17 containerWithIdentifier:v18];

    result = sub_1000A0F74(0, &qword_1001E1150, CKContainer_ptr);
    v9 = result;
    v12 = &off_1001E0F10;
  }

  a1[3] = v9;
  a1[4] = v12;
  *a1 = v11;
  return result;
}

void sub_1000C84D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000A2B1C(v11, qword_1001E0E88);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    sub_1000CD43C(a1, 1);
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_17;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136446210;
    swift_errorRetain();
    sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
    v16 = String.init<A>(describing:)();
    v18 = sub_1000A2E68(v16, v17, &v34);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed to determine whether we can disable legacy usage: %{public}s", v14, 0xCu);
    sub_1000A462C(v15);

LABEL_16:

LABEL_17:

    v28 = 0;
    goto LABEL_18;
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000A2B1C(v25, qword_1001E0E88);
    v12 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v26))
    {
      goto LABEL_17;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v12, v26, "We can't disable legacy usage yet.", v27, 2u);
    goto LABEL_16;
  }

  if (qword_1001DF128 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000A2B1C(v21, qword_1001E0E88);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Disabling legacy usage.", v24, 2u);
  }

  sub_1000CCA4C(a4, a5);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, &v34);
    _os_log_impl(&_mh_execute_header, v30, v31, "Successfully disabled legacy usage %{public}s", v32, 0xCu);
    sub_1000A462C(v33);
  }

  v28 = 1;
LABEL_18:
  ObjectType = swift_getObjectType();
  sub_1000CBCE4(a6, v28, a3, ObjectType, a7);
}

uint64_t sub_1000C89D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (qword_1001DF128 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000A2B1C(v4, qword_1001E0E88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Local user is not eligible to disable legacy usage. Skipping device OS version check.", v7, 2u);
  }

  return a3(0, 0);
}

void sub_1000C8E80(uint64_t a1, unsigned __int8 *a2)
{
  v8 = 0;
  v3 = [objc_opt_self() fetchLocalUserDeviceStateInContext:a1 error:&v8];
  if (v3)
  {
    v4 = v3;
    v5 = v8;
    v6 = [v4 isLegacyUsageDisabled];

    *a2 = v6;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000C8F64(uint64_t a1, _BYTE *a2)
{
  v4 = objc_opt_self();
  v22 = 0;
  v5 = [v4 fetchLocalUserInContext:a1 error:&v22];
  if (v5)
  {
    v6 = v5;
    v7 = v22;
    if ([v6 isManaged])
    {
      v8 = [v4 fetchRequest];
      v22 = 0;
      v9 = [v8 execute:&v22];

      v10 = v22;
      if (v9)
      {
        sub_1000A0F74(0, &qword_1001E0A40, STCoreUser_ptr);
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v10;

        if (v11 >> 62)
        {
          goto LABEL_21;
        }

        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        for (i = a2; v13; i = a2)
        {
          v14 = 0;
          while (1)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v15 = *(v11 + 8 * v14 + 32);
            }

            a2 = v15;
            v16 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            v22 = v15;
            v17 = v6;
            v18 = sub_1000CD174(&v22, v6);

            if (v18)
            {

              *i = 0;
              return;
            }

            ++v14;
            v6 = v17;
            if (v16 == v13)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v13 = _CocoaArrayWrapper.endIndex.getter();
        }

LABEL_22:

        *i = 1;
      }

      else
      {
        v20 = v22;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {

      *a2 = 1;
    }
  }

  else
  {
    v19 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000C9200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a3;
  v28 = a1;
  v25 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v10 = *(v26 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v25 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_1000A0F2C(&unk_1001E0010, &qword_100140140);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10013FFF0;
  if (qword_1001DF130 != -1)
  {
    swift_once();
  }

  v16 = qword_1001E0EA0;
  *(v15 + 32) = qword_1001E0EA0;
  v17 = *(AssociatedConformanceWitness + 40);
  v18 = v16;
  v17(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = v13;
  v19[5] = v6;
  v20 = *(AssociatedConformanceWitness + 64);

  v20(sub_1000CC9E8, v19, AssociatedTypeWitness, AssociatedConformanceWitness);
  v21 = swift_allocObject();
  v22 = v27;
  v21[2] = v25;
  v21[3] = v22;
  v21[4] = v13;
  v23 = *(AssociatedConformanceWitness + 88);

  v23(sub_1000CC9F4, v21, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a5 + 24))(v12, a4, a5);
  (*(v26 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_1000C94F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v191 = a1;
  v5 = type metadata accessor for Calendar.Component();
  v184 = *(v5 - 8);
  v185 = v5;
  v6 = *(v184 + 64);
  __chkstk_darwin(v5);
  v182 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for Calendar();
  v181 = *(v183 - 8);
  v8 = *(v181 + 64);
  __chkstk_darwin(v183);
  v179 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000A0F2C(&unk_1001E1830, &unk_100141720);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v180 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v186 = (&v164 - v15);
  __chkstk_darwin(v14);
  v187 = (&v164 - v16);
  v17 = type metadata accessor for Date();
  v189 = *(v17 - 8);
  v190 = v17;
  v18 = v189[8];
  v19 = __chkstk_darwin(v17);
  v177 = &v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v175 = &v164 - v22;
  v23 = __chkstk_darwin(v21);
  v178 = &v164 - v24;
  v25 = __chkstk_darwin(v23);
  v176 = &v164 - v26;
  __chkstk_darwin(v25);
  v188 = &v164 - v27;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v32 = &v164 - v31;
  sub_1000A53D0(&unk_1001E1110, &unk_100140900);
  v33 = type metadata accessor for Result();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = (&v164 - v35);
  (*(v37 + 16))(&v164 - v35, a2, v33);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = *v36;
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000A2B1C(v39, qword_1001E0E88);
    v40 = v191;
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v195 = v45;
      *v43 = 138543618;
      *(v43 + 4) = v40;
      *v44 = v40;
      *(v43 + 12) = 2082;
      v193 = v38;
      v46 = v40;
      swift_errorRetain();
      v47 = String.init<A>(describing:)();
      v49 = sub_1000A2E68(v47, v48, &v195);

      *(v43 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "Failed to fetch changes for %{public}@: %{public}s", v43, 0x16u);
      sub_1000A5148(v44, &unk_1001E1820, &qword_100140020);

      sub_1000A462C(v45);
    }

    else
    {
    }

    goto LABEL_26;
  }

  (*(v29 + 32))(v32, v36, AssociatedTypeWitness);
  swift_beginAccess();
  if (*(a3 + 16) != 1)
  {
    v67 = v32;
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_1000A2B1C(v68, qword_1001E0E88);
    v69 = v191;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138543362;
      *(v72 + 4) = v69;
      *v73 = v69;
      v74 = v69;
      _os_log_impl(&_mh_execute_header, v70, v71, "All devices are not running new_usage. Skipping %{public}@", v72, 0xCu);
      sub_1000A5148(v73, &unk_1001E1820, &qword_100140020);
    }

    return (*(v29 + 8))(v67, AssociatedTypeWitness);
  }

  v174 = v29;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = *(AssociatedConformanceWitness + 24);
  v52 = v51(0xD000000000000015, 0x800000010014EAE0, AssociatedTypeWitness, AssociatedConformanceWitness);
  v53 = v32;
  if (!v52 || (v192 = v52, sub_1000A0F2C(&unk_1001E10E0, &unk_1001416F0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_1000A2B1C(v76, qword_1001E0E88);
    v77 = v191;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 138543362;
      *(v80 + 4) = v77;
      *v81 = v77;
      v82 = v77;
      _os_log_impl(&_mh_execute_header, v78, v79, "Failed to get OS version number and type for %{public}@", v80, 0xCu);
      sub_1000A5148(v81, &unk_1001E1820, &qword_100140020);
    }

    (*(v174 + 8))(v53, AssociatedTypeWitness);
    goto LABEL_26;
  }

  v54 = v193;
  v55 = v194;
  v56 = v51(0x534F656369766544uLL, 0xEC00000065707954, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v56 || (v192 = v56, (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_21;
  }

  v172 = v55;
  v170 = v193;
  v171 = v194;
  v57 = v186;
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v59 = v189;
  v58 = v190;
  v60 = AssociatedTypeWitness;
  v62 = v189 + 6;
  v61 = v189[6];
  v63 = v61(v57, 1, v190);
  v173 = v60;
  if (v63 == 1)
  {
    v64 = *(AssociatedConformanceWitness + 16);
    v65 = AssociatedConformanceWitness;
    v66 = v187;
    v64(v60, v65);
    v58 = v190;
    if (v61(v57, 1, v190) != 1)
    {
      sub_1000A5148(v57, &unk_1001E1830, &unk_100141720);
    }
  }

  else
  {
    v66 = v187;
    (v59[4])(v187, v57, v58);
    (v59[7])(v66, 0, 1, v58);
  }

  if (v61(v66, 1, v58) == 1)
  {

    sub_1000A5148(v66, &unk_1001E1830, &unk_100141720);
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    sub_1000A2B1C(v83, qword_1001E0E88);
    v84 = v191;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    v87 = os_log_type_enabled(v85, v86);
    v88 = v173;
    v89 = v174;
    if (v87)
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v90 = 138543362;
      *(v90 + 4) = v84;
      *v91 = v84;
      v92 = v84;
      _os_log_impl(&_mh_execute_header, v85, v86, "Failed to get last modified date for %{public}@", v90, 0xCu);
      sub_1000A5148(v91, &unk_1001E1820, &qword_100140020);

      v89 = v174;
    }

    (*(v89 + 8))(v53, v88);
    goto LABEL_26;
  }

  v186 = v61;
  v187 = v62;
  v93 = v59[4];
  v93(v188, v66, v58);
  v94 = v170;
  v95 = v171;
  if (v170 == 5459817 && v171 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v96 = v54;
    v97 = v172;
    if (v54 != 892221233 || v172 != 0xE400000000000000)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v97 = v172;
    v96 = v54;
    if (v94 == 5788495 && v95 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v54 != 892220465 || v97 != 0xE400000000000000))
    {
LABEL_39:
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        if (qword_1001DF128 != -1)
        {
          swift_once();
        }

        v98 = type metadata accessor for Logger();
        v99 = sub_1000A2B1C(v98, qword_1001E0E88);
        v100 = v191;

        v191 = v99;
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.default.getter();

        v166 = v102;
        v168 = v101;
        v103 = os_log_type_enabled(v101, v102);
        v167 = v93;
        v172 = v100;
        if (v103)
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v165 = v105;
          v193 = swift_slowAlloc();
          *v104 = 138543874;
          *(v104 + 4) = v100;
          *v105 = v100;
          *(v104 + 12) = 2082;
          v106 = v100;
          v107 = sub_1000A2E68(v170, v95, &v193);

          *(v104 + 14) = v107;
          *(v104 + 22) = 2082;
          v108 = sub_1000A2E68(v96, v97, &v193);

          *(v104 + 24) = v108;
          v109 = v168;
          _os_log_impl(&_mh_execute_header, v168, v166, "%{public}@ is running legacy usage: %{public}s: %{public}s", v104, 0x20u);
          sub_1000A5148(v165, &unk_1001E1820, &qword_100140020);

          swift_arrayDestroy();
        }

        else
        {
        }

        v121 = v179;
        static Calendar.current.getter();
        v122 = v184;
        v123 = v182;
        (*(v184 + 104))(v182, enum case for Calendar.Component.day(_:), v185);
        v124 = v178;
        static Date.now.getter();
        v125 = v180;
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        v126 = v189[1];
        v127 = v124;
        v128 = v190;
        (v126)(v127, v190);
        (*(v122 + 8))(v123, v185);
        (*(v181 + 8))(v121, v183);
        v129 = v186(v125, 1, v128);
        v169 = v53;
        if (v129 == 1)
        {
          sub_1000A5148(v125, &unk_1001E1830, &unk_100141720);
          v130 = v188;
LABEL_61:
          v149 = v177;
          (v189[2])(v177, v130, v128);
          v150 = v172;
          v151 = Logger.logObject.getter();
          v152 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            v191 = v126;
            v155 = v154;
            v189 = swift_slowAlloc();
            v193 = v189;
            *v153 = 138543618;
            *(v153 + 4) = v150;
            *v155 = v150;
            *(v153 + 12) = 2082;
            sub_1000CCA04(&qword_1001E1120, &type metadata accessor for Date);
            v156 = v149;
            v157 = v150;
            v158 = dispatch thunk of CustomStringConvertible.description.getter();
            v160 = v159;
            v161 = v156;
            v162 = v191;
            (v191)(v161, v128);
            v163 = sub_1000A2E68(v158, v160, &v193);

            *(v153 + 14) = v163;
            _os_log_impl(&_mh_execute_header, v151, v152, "%{public}@ is NOT an old device: %{public}s", v153, 0x16u);
            sub_1000A5148(v155, &unk_1001E1820, &qword_100140020);

            sub_1000A462C(v189);

            (v162)(v188, v128);
          }

          else
          {

            (v126)(v149, v128);
            (v126)(v130, v128);
          }

          (*(v174 + 8))(v169, v173);
LABEL_26:
          result = swift_beginAccess();
          *(a3 + 16) = 0;
          return result;
        }

        v131 = v176;
        v167(v176, v125, v128);
        v130 = v188;
        v132 = static Date.< infix(_:_:)();
        (v126)(v131, v128);
        if ((v132 & 1) == 0)
        {
          goto LABEL_61;
        }

        v133 = v175;
        (v189[2])(v175, v130, v128);
        v134 = v172;
        v135 = Logger.logObject.getter();
        v136 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v191 = v126;
          v140 = v139;
          v193 = v139;
          *v137 = 138543618;
          *(v137 + 4) = v134;
          *v138 = v134;
          *(v137 + 12) = 2082;
          sub_1000CCA04(&qword_1001E1120, &type metadata accessor for Date);
          v141 = v133;
          v142 = v134;
          v143 = dispatch thunk of CustomStringConvertible.description.getter();
          v145 = v144;
          v146 = v141;
          v147 = v191;
          (v191)(v146, v128);
          v148 = sub_1000A2E68(v143, v145, &v193);

          *(v137 + 14) = v148;
          _os_log_impl(&_mh_execute_header, v135, v136, "Ignoring %{public}@ because it is an old device: %{public}s", v137, 0x16u);
          sub_1000A5148(v138, &unk_1001E1820, &qword_100140020);

          sub_1000A462C(v140);

          (v147)(v188, v128);
        }

        else
        {

          (v126)(v133, v128);
          (v126)(v130, v128);
        }

        return (*(v174 + 8))(v169, v173);
      }
    }
  }

  if (qword_1001DF128 != -1)
  {
    swift_once();
  }

  v110 = type metadata accessor for Logger();
  sub_1000A2B1C(v110, qword_1001E0E88);
  v111 = v191;

  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = v94;
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v191 = v96;
    v117 = v116;
    v193 = swift_slowAlloc();
    *v115 = 138543874;
    *(v115 + 4) = v111;
    *v117 = v111;
    v169 = v53;
    *(v115 + 12) = 2082;
    v118 = v111;
    v119 = sub_1000A2E68(v114, v95, &v193);

    *(v115 + 14) = v119;
    *(v115 + 22) = 2082;
    v120 = sub_1000A2E68(v191, v97, &v193);

    *(v115 + 24) = v120;
    _os_log_impl(&_mh_execute_header, v112, v113, "%{public}@ is running new usage: %{public}s: %{public}s", v115, 0x20u);
    sub_1000A5148(v117, &unk_1001E1820, &qword_100140020);

    swift_arrayDestroy();

    (v189[1])(v188, v190);
    return (*(v174 + 8))(v169, v173);
  }

  (v189[1])(v188, v190);
  return (*(v174 + 8))(v53, v173);
}

uint64_t sub_1000CACEC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 1;
  }

  else
  {
    swift_beginAccess();
    a1 = *(a5 + 16);
    v6 = 0;
  }

  return a3(a1, v6);
}

void sub_1000CAD54(void *a1)
{
  v32[0] = 0;
  v2 = [objc_opt_self() fetchLocalUserInContext:a1 error:v32];
  if (v2)
  {
    v3 = v2;
    v4 = v32[0];
    [v3 setAllDevicesAreNewUsage:1];
    v5 = objc_opt_self();
    v32[0] = 0;
    v6 = [v5 fetchLocalUserDeviceStateInContext:a1 error:v32];
    if (v6)
    {
      v7 = v6;
      v8 = v32[0];
      [v7 setIsLegacyUsageDisabled:1];
      v9 = [v3 usages];
      v30 = v7;
      if (v9)
      {
        v10 = v9;
        sub_1000A0F74(0, &qword_1001DF4E0, STUsage_ptr);
        sub_1000CD4B8();
        i = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        goto LABEL_9;
      }

      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_32;
      }

LABEL_8:
      for (i = &_swiftEmptySetSingleton; ; i = v28)
      {
LABEL_9:
        v31 = v3;
        if ((i & 0xC000000000000001) != 0)
        {
          __CocoaSet.makeIterator()();
          sub_1000A0F74(0, &qword_1001DF4E0, STUsage_ptr);
          sub_1000CD4B8();
          Set.Iterator.init(_cocoa:)();
          i = v32[1];
          v14 = v32[2];
          v15 = v32[3];
          v3 = v32[4];
          v16 = v32[5];
        }

        else
        {
          v3 = 0;
          v17 = -1 << *(i + 32);
          v14 = (i + 56);
          v15 = ~v17;
          v18 = -v17;
          v19 = v18 < 64 ? ~(-1 << v18) : -1;
          v16 = (v19 & *(i + 56));
        }

        v29 = v15;
        v20 = (v15 + 64) >> 6;
        if (i < 0)
        {
          break;
        }

        while (1)
        {
          v24 = v3;
          v25 = v16;
          v22 = v3;
          if (!v16)
          {
            break;
          }

LABEL_23:
          v23 = (v25 - 1) & v25;
          v21 = *(*(i + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v25)))));
          if (!v21)
          {
            goto LABEL_26;
          }

LABEL_24:
          [a1 deleteObject:{v21, v29}];

          v3 = v22;
          v16 = v23;
          if (i < 0)
          {
            goto LABEL_16;
          }
        }

        while (1)
        {
          v22 = (v24 + 1);
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v22 >= v20)
          {
            goto LABEL_26;
          }

          v25 = v14[v22];
          ++v24;
          if (v25)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_32:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_8;
        }

        sub_1000A0F08(_swiftEmptyArrayStorage);
      }

LABEL_16:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000A0F74(0, &qword_1001DF4E0, STUsage_ptr);
        swift_dynamicCast();
        v21 = v32[0];
        v22 = v3;
        v23 = v16;
        if (v32[0])
        {
          goto LABEL_24;
        }
      }

LABEL_26:
      sub_100003410();
      if ([a1 hasChanges])
      {
        v32[0] = 0;
        if ([a1 save:v32])
        {
          v26 = v32[0];
        }

        else
        {
          v27 = v32[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }
    }

    else
    {
      v13 = v32[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v12 = v32[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id STEventStreams.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000CB23C@<X0>(SEL *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = [*v2 *a1];
  if (v4)
  {
    v5 = v4;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

id sub_1000CB30C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_1000CB348(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    sub_1000A0F74(0, &unk_1001E1128, CKRecordZoneID_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v2 setRecordZoneIDs:isa];
}

uint64_t sub_1000CB3E0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  v6 = *v2;
  return CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter();
}

void sub_1000CB480(uint64_t *a1)
{
  v2 = *a1;
  v3 = [*v1 privateCloudDatabase];
  [v3 addOperation:v2];
}

uint64_t sub_1000CB50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1000CBA38(0xD000000000000010, 0x800000010014EAA0, sub_1000CB968), (v5 & 1) != 0))
  {
    v11 = *(*(a1 + 56) + 8 * v4);
    swift_unknownObjectRetain();
    sub_1000A0F2C(&unk_1001E10E0, &unk_1001416F0);
    v6 = type metadata accessor for Date();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
  }

  else
  {
    v9 = type metadata accessor for Date();
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

uint64_t sub_1000CB660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1000CBA38(0x6E6F697461657263, 0xEC00000065746144, sub_1000CB968), (v5 & 1) != 0))
  {
    v11 = *(*(a1 + 56) + 8 * v4);
    swift_unknownObjectRetain();
    sub_1000A0F2C(&unk_1001E10E0, &unk_1001416F0);
    v6 = type metadata accessor for Date();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
  }

  else
  {
    v9 = type metadata accessor for Date();
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

uint64_t sub_1000CB7C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1000CBA38(a1, a2, sub_1000CB968);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  return swift_unknownObjectRetain();
}

double sub_1000CB820@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1000CB830(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1000CB85C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_1000CBB44;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(v2 + 16);
  result = sub_100003A94(*(v2 + 8));
  *(v2 + 8) = v6;
  *(v2 + 16) = v5;
  return result;
}

uint64_t sub_1000CB8D4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  result = sub_100003A94(*(v2 + 24));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t sub_1000CB968(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000CBA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  return a3(a1, a2, v7);
}

unint64_t sub_1000CBABC(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000CBB48(a1, v4);
}

unint64_t sub_1000CBB00(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000CBC1C(a1, v4);
}

unint64_t sub_1000CBB48(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000A0F74(0, &qword_1001E0000, NSNumber_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000CBC1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000CC96C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000C8034(v8);
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

void sub_1000CBCE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_1001DF120 != -1)
    {
      swift_once();
    }

    (*(a5 + 40))(a4, a5, *&qword_1001E0E80);
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000A2B1C(v12, qword_1001E0E88);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, &v17);
      _os_log_impl(&_mh_execute_header, oslog, v13, "Successfully completed and expired %{public}s", v14, 0xCu);
      sub_1000A462C(v15);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000A2B1C(v7, qword_1001E0E88);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, &v17);
      _os_log_impl(&_mh_execute_header, v8, v9, "Successfully completed %{public}s", v10, 0xCu);
      sub_1000A462C(v11);
    }

    (*(a5 + 32))(a4, a5);
  }
}

void sub_1000CC1B0()
{
  if (qword_1001DF128 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000A2B1C(v0, qword_1001E0E88);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Legacy usage shutdown task expired", v2, 2u);
  }
}

unint64_t sub_1000CC298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000A0F2C(&qword_1001E1100, &qword_100141708);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000CC8FC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000CBA38(v13, v14, sub_1000CB968);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000C6C8C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1000CC3BC(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  sub_1000A9618(a2, v3);
  v5 = *(v4 + 16);
  v6 = v5(1, 8, v3, v4);
  v7 = v5(1, 4, v3, v4);
  v8 = v5(1, 1, v3, v4);
  v9 = 0;
  if (v6 & 1) != 0 && (v7 & 1) != 0 && (v8)
  {
    __chkstk_darwin(v8);
    NSManagedObjectContext.performAndWait<A>(_:)();
    if (!v2)
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

void sub_1000CC4FC(void (*a1)(void, void, void), uint64_t a2, void (*a3)(void, void))
{
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 valueForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29[0] = v27;
  v29[1] = v28;
  if (!*(&v28 + 1))
  {
    sub_1000A5148(v29, &qword_1001E03A0, qword_100140A70);
    goto LABEL_24;
  }

  sub_1000A0F2C(&unk_1001E10F0, &qword_100141700);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    if (a3)
    {
      a3(0, 0);
    }

    return;
  }

  v25 = v5;
  if (*(v26 + 16))
  {
    v24 = a3;
    v8 = 0;
    v9 = 1 << *(v26 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v26 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = a1;
      v14 = v8;
LABEL_18:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v14 << 6);
      v17 = (*(v26 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v26 + 56) + 8 * v16);
      v21 = objc_allocWithZone(CKRecordID);

      v22 = String._bridgeToObjectiveC()();

      v23 = [v21 initWithRecordName:v22];

      if (*(v20 + 16))
      {
        a1 = v13;
        if (v13)
        {
          v13(v23, v20, 0);
        }
      }

      else
      {

        a1 = v13;
        if (v13)
        {
          type metadata accessor for CKError(0);
          sub_1000CCA04(&qword_1001DF6B8, type metadata accessor for CKError);
          _BridgedStoredNSError.init(_:userInfo:)();
          v13(v23, *&v29[0], 1);
        }
      }

      v8 = v14;
    }

    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v14 >= v12)
      {
        break;
      }

      v11 = *(v26 + 64 + 8 * v14);
      ++v8;
      if (v11)
      {
        v13 = a1;
        goto LABEL_18;
      }
    }

    if (v24)
    {
      v24(0, 0);
    }
  }

  else
  {

    if (a3)
    {
      type metadata accessor for CKError(0);
      sub_1000CC298(&_swiftEmptyArrayStorage);
      sub_1000CCA04(&qword_1001DF6B8, type metadata accessor for CKError);
      _BridgedStoredNSError.init(_:userInfo:)();
      a3(*&v29[0], 1);
    }
  }
}

uint64_t sub_1000CC8FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0F2C(&qword_1001E1108, &unk_100141710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CC9E8(uint64_t *a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[5];
  return sub_1000C94F8(a1, a2, v2[4]);
}

uint64_t sub_1000CCA04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000CCA4C(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  sub_1000A9618(a2, v3);
  v5 = *(v4 + 8);
  v5(1, 8, v3, v4);
  v5(1, 4, v3, v4);
  v5(1, 1, v3, v4);
  v6 = a2[3];
  v7 = a2[4];
  sub_1000A9618(a2, v6);
  v8 = *(v7 + 16);
  v9 = v8(1, 8, v6, v7);
  v10 = v8(1, 4, v6, v7);
  v11 = v8(1, 1, v6, v7);
  if (v9 & 1) != 0 && (v10 & 1) != 0 && (v11)
  {
    __chkstk_darwin(v11);
    return NSManagedObjectContext.performAndWait<A>(_:)();
  }

  else
  {
    sub_1000CD448();
    swift_allocError();
    return swift_willThrow();
  }
}

void sub_1000CCC14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 taskRequestForIdentifier:v6];

  if (v7)
  {

    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000A2B1C(v8, qword_1001E0E88);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, &v18);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s is already scheduled", v11, 0xCu);
      sub_1000A462C(v12);
    }

    goto LABEL_11;
  }

  v13 = (*(a3 + 16))(0xD000000000000033, 0x800000010014EB00, a2, a3);
  (*(a3 + 32))(a2, a3, 86400.0);
  (*(a3 + 56))(1, a2, a3);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v18 = 0;
    v9 = v13;
    if ([a1 submitTaskRequest:v15 error:&v18])
    {
      v16 = v18;
    }

    else
    {
      v17 = v18;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

LABEL_11:
    return;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000CCF20(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  LODWORD(a1) = [a1 deregisterTaskWithIdentifier:v2];

  if (a1)
  {
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000A2B1C(v3, qword_1001E0E88);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, &v10);
      v7 = "Successfully deregistered %{public}s";
LABEL_10:
      _os_log_impl(&_mh_execute_header, oslog, v4, v7, v5, 0xCu);
      sub_1000A462C(v6);

      return;
    }
  }

  else
  {
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000A2B1C(v8, qword_1001E0E88);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, &v10);
      v7 = "Failed to deregister %{public}s";
      goto LABEL_10;
    }
  }
}

uint64_t sub_1000CD174(id *a1, void *a2)
{
  v3 = *a1;
  if (([*a1 isParent] & 1) != 0 || (result = objc_msgSend(v3, "isFamilyOrganizer"), result))
  {
    if ([v3 allDevicesAreNewUsage])
    {
      return 0;
    }

    else
    {
      if (qword_1001DF128 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000A2B1C(v5, qword_1001E0E88);
      v6 = v3;
      v7 = a2;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v10 = 136446466;
        v11 = [v6 appleID];
        if (!v11)
        {
          v12 = [v6 dsid];
          v11 = [v12 stringValue];
        }

        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = sub_1000A2E68(v13, v15, &v23);

        *(v10 + 4) = v16;
        *(v10 + 12) = 2082;
        v17 = [v7 appleID];
        if (!v17)
        {
          v18 = [v7 dsid];
          v17 = [v18 stringValue];
        }

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = sub_1000A2E68(v19, v21, &v23);

        *(v10 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s's devices are not compatible with DeviceActivity. %{public}s is not eligible for legacy usage shutdown.", v10, 0x16u);
        swift_arrayDestroy();
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1000CD43C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1000CD448()
{
  result = qword_1001E1138;
  if (!qword_1001E1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E1138);
  }

  return result;
}

unint64_t sub_1000CD4B8()
{
  result = qword_1001E1148;
  if (!qword_1001E1148)
  {
    sub_1000A0F74(255, &qword_1001DF4E0, STUsage_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E1148);
  }

  return result;
}

uint64_t sub_1000CD53C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = a2;
  v8 = a3 & 1;
  return v4(a1, &v7);
}

uint64_t sub_1000CD59C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000CD5F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1000CD668()
{
  result = qword_1001E1170;
  if (!qword_1001E1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E1170);
  }

  return result;
}

uint64_t type metadata accessor for ManagedUser()
{
  result = qword_1001E11A8;
  if (!qword_1001E11A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CD720@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001DFDC0, &unk_1001405E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC15ScreenTimeAgent19ATDispatchConnector____lazy_storage___logger;
  swift_beginAccess();
  sub_1000BBA38(v1 + v10, v9);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000A5148(v9, &qword_1001DFDC0, &unk_1001405E0);
  Logger.init(subsystem:category:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000BBAA8(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1000CD92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = type metadata accessor for Logger();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_1000CD9F4, 0, 0);
}

uint64_t sub_1000CD9F4()
{
  v46 = v0;
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  sub_1000CD720(v0[15]);
  v4 = v3;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  if (v7)
  {
    v11 = v0[9];
    v12 = v0[7];
    v41 = v0[10];
    v42 = v0[8];
    v44 = v0[13];
    v13 = swift_slowAlloc();
    v43 = v8;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v45 = v15;
    *v13 = 134349570;
    *(v13 + 4) = v12;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1000A2E68(v11, v41, &v45);
    *(v13 + 22) = 2112;
    *(v13 + 24) = v4;
    *v14 = v42;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Telling AskTo about response with answer %{public}ld for %{public}s %@", v13, 0x20u);
    sub_1000A5148(v14, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v15);

    (*(v9 + 8))(v43, v44);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v17 = v0[7];
  if (v17 == 1)
  {
    v0[3] = 0;
    dispatch thunk of CustomStringConvertible.description.getter();
    String.localized.getter();
    String.localized.getter();
    v20 = objc_allocWithZone(type metadata accessor for ATAnswerChoice());
    v21 = ATAnswerChoice.init(id:title:completedRequestTitle:)();
LABEL_11:
    v23 = v21;
    goto LABEL_16;
  }

  if (v17)
  {
    v0[2] = 0;
    dispatch thunk of CustomStringConvertible.description.getter();
    String.localized.getter();
    String.localized.getter();
    v22 = objc_allocWithZone(type metadata accessor for ATAnswerChoice());
    v21 = ATAnswerChoice.init(id:title:completedRequestTitle:)();
    goto LABEL_11;
  }

  if (v0[8])
  {
    v18 = v4;
    [v18 doubleValue];
    if (v19 / 60.0 == 15.0)
    {
      v0[6] = 1;
    }

    else
    {
      v0[5] = 2;
    }

    dispatch thunk of CustomStringConvertible.description.getter();
    String.localized.getter();
    String.localized.getter();
    v26 = objc_allocWithZone(type metadata accessor for ATAnswerChoice());
    v25 = ATAnswerChoice.init(id:title:completedRequestTitle:)();
  }

  else
  {
    v0[4] = 3;
    dispatch thunk of CustomStringConvertible.description.getter();
    String.localized.getter();
    String.localized.getter();
    v24 = objc_allocWithZone(type metadata accessor for ATAnswerChoice());
    v25 = ATAnswerChoice.init(id:title:completedRequestTitle:)();
  }

  v23 = v25;
LABEL_16:
  ATAnswerChoice.kind.setter();
  v0[16] = v23;
  v27 = v0[11];

  if (v27)
  {
    v28 = v0[11];
    type metadata accessor for ATDispatchCenter();
    v29 = v28;
    v0[17] = static ATDispatchCenter.shared.getter();
    v30 = [v29 stringValue];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v0[18] = v33;
    v34 = async function pointer to ATDispatchCenter.screenTimeDidReceiveAnswer(_:forRequestWithID:responderDSID:)[1];
    v35 = swift_task_alloc();
    v0[19] = v35;
    *v35 = v0;
    v35[1] = sub_1000CE060;
    v36 = v0[9];
    v37 = v0[10];

    return ATDispatchCenter.screenTimeDidReceiveAnswer(_:forRequestWithID:responderDSID:)(v23, v36, v37, v31, v33);
  }

  else
  {
    sub_1000CE86C();
    swift_allocError();
    swift_willThrow();

    v38 = v0[15];

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_1000CE060()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);

  if (v0)
  {
    v7 = sub_1000CE220;
  }

  else
  {
    v7 = sub_1000CE1AC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000CE1AC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000CE220()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 160);
  v3 = *(v0 + 120);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000CE43C(uint64_t a1, void *a2, int a3, void *a4, void *aBlock, void *a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a2;
  v6[5] = _Block_copy(aBlock);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v6[6] = v12;
  v14 = a2;
  v15 = a4;
  a6;
  v16 = swift_task_alloc();
  v6[7] = v16;
  *v16 = v6;
  v16[1] = sub_1000CE548;

  return sub_1000CD92C(a1, a2, v11, v13, a4);
}

uint64_t sub_1000CE548()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  v11 = *(v3 + 40);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v13 = *(v10 + 8);

  return v13();
}

id sub_1000CE7AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATDispatchConnector();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ATDispatchConnector()
{
  result = qword_1001E1290;
  if (!qword_1001E1290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000CE86C()
{
  result = qword_1001E12A0;
  if (!qword_1001E12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E12A0);
  }

  return result;
}

uint64_t sub_1000CE8C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1000A4F84;

  return sub_1000CE43C(v2, v3, v4, v5, v7, v6);
}

unint64_t sub_1000CE9A8()
{
  result = qword_1001E12A8;
  if (!qword_1001E12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E12A8);
  }

  return result;
}

uint64_t sub_1000CE9FC()
{
  swift_beginAccess();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

uint64_t sub_1000CEA78()
{
  qword_1001E12B0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

os_activity_t sub_1000CEAB4(char *description, char a2, void *dso)
{
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1001DF138 == -1)
        {
LABEL_5:
          v4 = dso;
          v5 = qword_1001E12B0;

          return _os_activity_create(v4, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v7 = description + 1;
    goto LABEL_13;
  }

  v8 = (description & 0x3F) << 8;
  v9 = (description >> 6) + v8 + 33217;
  v10 = (v8 | (description >> 6) & 0x3F) << 8;
  v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v12 = (description >> 12) + v10 + 8487393;
  if (description >> 16)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  if (description < 0x800)
  {
    v7 = v9;
  }

LABEL_13:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_1001DF138 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_1001E12B0, OS_ACTIVITY_FLAG_DEFAULT);
}