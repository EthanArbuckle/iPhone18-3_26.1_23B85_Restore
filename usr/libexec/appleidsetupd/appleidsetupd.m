int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000018E0(&qword_100010298, &qword_10000A4F8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Daemon();
  sub_100001928(v7, qword_100010280);
  v8 = sub_10000198C(v7, qword_100010280);
  v9 = objc_autoreleasePoolPush();
  sub_1000019C4(v8);
  objc_autoreleasePoolPop(v9);
  TaskPriority.init(rawValue:)();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_100003178(0, 0, v6, &unk_10000A508, v11);

  sub_10000387C(v6, &qword_100010298, &qword_10000A4F8);
  v12 = [objc_opt_self() currentRunLoop];
  [v12 run];

  return 0;
}

uint64_t sub_1000018E0(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_100001928(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000198C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000019C4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = type metadata accessor for Logger();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = type metadata accessor for AppleIDSetupFeature();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v9[13];
  v13(v12, enum case for AppleIDSetupFeature.ageBasedAccountSupport(_:), v8);
  v14 = AppleIDSetupFeature.isFeatureEnabled.getter();
  v15 = v9[1];
  v15(v12, v8);
  if (v14)
  {
    static AISLogger.daemon.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_10;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Registering client/server SK", v18, 2u);
    goto LABEL_7;
  }

  v13(v12, enum case for AppleIDSetupFeature.ageMigration(_:), v8);
  v19 = AppleIDSetupFeature.isFeatureEnabled.getter();
  v15(v12, v8);
  if (v19)
  {
    static AISLogger.daemon.getter();
    v16 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v16, v20))
    {
      v7 = v5;
      goto LABEL_10;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v16, v20, "Registering client/server SK for age migration", v21, 2u);
    v7 = v5;
LABEL_7:

LABEL_10:

    (*(v24 + 8))(v7, v25);
    static RuntimeDependencies.configureV1AppleIDSetupClient(withInit:)();
    static RuntimeDependencies.configureV1AppleIDSetupServer(withInit:)();
  }

  return Daemon.init()();
}

uint64_t sub_100001D74(uint64_t a1)
{
  v2 = type metadata accessor for BLEDevice();
  v79 = *(v2 - 8);
  v80 = v2;
  v3 = *(v79 + 64);
  __chkstk_darwin(v2);
  v73 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000018E0(&qword_1000102B0, &qword_10000A578);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v72 = &v62 - v8;
  v9 = type metadata accessor for DiscoveryModel.CodeType();
  v77 = *(v9 - 8);
  v78 = v9;
  v10 = *(v77 + 64);
  __chkstk_darwin(v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BleAdvertisementFlags();
  v74 = *(v13 - 8);
  v75 = v13;
  v14 = *(v74 + 64);
  __chkstk_darwin(v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000018E0(&qword_1000102C8, &qword_10000A588);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v62 - v22;
  v24 = AppleIDSetupBaseConfig.queue.getter();
  AppleIDSetupBaseConfig.peerDevice.getter();
  v68 = AppleIDSetupBaseConfig.persistentPairing.getter();
  v67 = AppleIDSetupBaseConfig.reversePairing.getter();
  v25 = AppleIDSetupBaseConfig.fixedPin.getter();
  v65 = v26;
  v66 = v25;
  v27 = AppleIDSetupBaseConfig.targetAuthTag.getter();
  v63 = v28;
  v64 = v27;
  v71 = v16;
  v29 = v21;
  AppleIDSetupBaseConfig.advertisementFlags.getter();
  v76 = v12;
  AppleIDSetupBaseConfig.pinType.getter();
  v30 = v72;
  (*(v6 + 16))(v72, a1, v5);
  v31 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v69 = swift_allocObject();
  v70 = v6;
  (*(v6 + 32))(v69 + v31, v30, v5);
  sub_100003A88(0, &qword_1000102F8, SKSetupAppleIDSignInClient_ptr);
  v32 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v33 = sub_1000018E0(&qword_1000102E8, &unk_10000A598);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  swift_defaultActor_initialize();
  v37 = *(*v36 + 192);
  v38 = enum case for BluetoothBaseState.unactivated<A>(_:);
  v39 = sub_1000018E0(&qword_1000102D8, &qword_10000A590);
  v40 = v36 + v37;
  v41 = v38;
  v43 = v79;
  v42 = v80;
  (*(*(v39 - 8) + 104))(v40, v41, v39);
  *(v36 + 112) = v32;
  *(v36 + 120) = v24;
  v72 = v23;
  sub_100003814(v23, v29, &qword_1000102C8, &qword_10000A588);
  if ((*(v43 + 48))(v29, 1, v42) == 1)
  {
    v44 = v32;
    v45 = v24;
    v46 = 0;
  }

  else
  {
    (*(v43 + 32))(v73, v29, v42);
    v47 = v32;
    v48 = v24;
    v49 = BLEDevice.proximityServicePSM.getter();
    BLEDevice.identifier.getter();
    v51 = v50;
    v46 = [objc_allocWithZone(SKDevice) init];
    [v46 setBlePSM:v49];
    if (v51)
    {
      v52 = String._bridgeToObjectiveC()();
    }

    else
    {
      v52 = 0;
    }

    [v46 setIdentifier:v52];

    (*(v79 + 8))(v73, v80);
  }

  *(v36 + 128) = v46;
  *(v36 + 136) = v68 & 1;
  *(v36 + 137) = v67 & 1;
  v53 = v65;
  *(v36 + 144) = v66;
  *(v36 + 152) = v53;
  v54 = v63;
  *(v36 + 160) = v64;
  *(v36 + 168) = v54;
  v55 = v74;
  v56 = v75;
  v57 = v71;
  (*(v74 + 16))(v36 + direct field offset for SetupBase.advertisementFlags, v71, v75);
  v58 = v76;
  v59 = DiscoveryModel.CodeType.into()();

  (*(v70 + 8))(a1, v5);
  (*(v77 + 8))(v58, v78);
  (*(v55 + 8))(v57, v56);
  sub_10000387C(v72, &qword_1000102C8, &qword_10000A588);
  *(v36 + 176) = v59;
  v60 = v69;
  *(v36 + 184) = sub_1000039BC;
  *(v36 + 192) = v60;
  return v36;
}

uint64_t sub_1000023DC(uint64_t a1)
{
  v2 = type metadata accessor for BLEDevice();
  v79 = *(v2 - 8);
  v80 = v2;
  v3 = *(v79 + 64);
  __chkstk_darwin(v2);
  v73 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000018E0(&qword_1000102B0, &qword_10000A578);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v72 = &v62 - v8;
  v9 = type metadata accessor for DiscoveryModel.CodeType();
  v77 = *(v9 - 8);
  v78 = v9;
  v10 = *(v77 + 64);
  __chkstk_darwin(v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BleAdvertisementFlags();
  v74 = *(v13 - 8);
  v75 = v13;
  v14 = *(v74 + 64);
  __chkstk_darwin(v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000018E0(&qword_1000102C8, &qword_10000A588);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v62 - v22;
  v24 = AppleIDSetupBaseConfig.queue.getter();
  AppleIDSetupBaseConfig.peerDevice.getter();
  v68 = AppleIDSetupBaseConfig.persistentPairing.getter();
  v67 = AppleIDSetupBaseConfig.reversePairing.getter();
  v25 = AppleIDSetupBaseConfig.fixedPin.getter();
  v65 = v26;
  v66 = v25;
  v27 = AppleIDSetupBaseConfig.targetAuthTag.getter();
  v63 = v28;
  v64 = v27;
  v71 = v16;
  v29 = v21;
  AppleIDSetupBaseConfig.advertisementFlags.getter();
  v76 = v12;
  AppleIDSetupBaseConfig.pinType.getter();
  v30 = v72;
  (*(v6 + 16))(v72, a1, v5);
  v31 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v69 = swift_allocObject();
  v70 = v6;
  (*(v6 + 32))(v69 + v31, v30, v5);
  sub_100003A88(0, &qword_1000102D0, SKSetupAppleIDSignInServer_ptr);
  v32 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v33 = sub_1000018E0(&qword_1000102B8, &qword_10000A580);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  swift_defaultActor_initialize();
  v37 = *(*v36 + 192);
  v38 = enum case for BluetoothBaseState.unactivated<A>(_:);
  v39 = sub_1000018E0(&qword_1000102D8, &qword_10000A590);
  v40 = v36 + v37;
  v41 = v38;
  v43 = v79;
  v42 = v80;
  (*(*(v39 - 8) + 104))(v40, v41, v39);
  *(v36 + 112) = v32;
  *(v36 + 120) = v24;
  v72 = v23;
  sub_100003814(v23, v29, &qword_1000102C8, &qword_10000A588);
  if ((*(v43 + 48))(v29, 1, v42) == 1)
  {
    v44 = v32;
    v45 = v24;
    v46 = 0;
  }

  else
  {
    (*(v43 + 32))(v73, v29, v42);
    v47 = v32;
    v48 = v24;
    v49 = BLEDevice.proximityServicePSM.getter();
    BLEDevice.identifier.getter();
    v51 = v50;
    v46 = [objc_allocWithZone(SKDevice) init];
    [v46 setBlePSM:v49];
    if (v51)
    {
      v52 = String._bridgeToObjectiveC()();
    }

    else
    {
      v52 = 0;
    }

    [v46 setIdentifier:v52];

    (*(v79 + 8))(v73, v80);
  }

  *(v36 + 128) = v46;
  *(v36 + 136) = v68 & 1;
  *(v36 + 137) = v67 & 1;
  v53 = v65;
  *(v36 + 144) = v66;
  *(v36 + 152) = v53;
  v54 = v63;
  *(v36 + 160) = v64;
  *(v36 + 168) = v54;
  v55 = v74;
  v56 = v75;
  v57 = v71;
  (*(v74 + 16))(v36 + direct field offset for SetupBase.advertisementFlags, v71, v75);
  v58 = v76;
  v59 = DiscoveryModel.CodeType.into()();

  (*(v70 + 8))(a1, v5);
  (*(v77 + 8))(v58, v78);
  (*(v55 + 8))(v57, v56);
  sub_10000387C(v72, &qword_1000102C8, &qword_10000A588);
  *(v36 + 176) = v59;
  v60 = v69;
  *(v36 + 184) = sub_1000037F8;
  *(v36 + 192) = v60;
  return v36;
}

uint64_t sub_100002A74@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, unint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_1000018E0(&qword_1000102B0, &qword_10000A578);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v19 - v14;
  (*(v16 + 16))(&v19 - v14, a1);
  v17 = a2(v15);
  a6[3] = sub_1000018E0(a3, a4);
  result = sub_100003AD0(a5, a3, a4);
  a6[4] = result;
  *a6 = v17;
  return result;
}

uint64_t sub_100002BD8()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = type metadata accessor for Daemon();
  sub_10000198C(v4, qword_100010280);
  v5 = async function pointer to Daemon.start()[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_100002CDC;

  return Daemon.start()();
}

uint64_t sub_100002CDC()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100002E18, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100002E18()
{
  v1 = v0[6];
  v2 = v0[4];
  static AISLogger.daemon.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to start daemon: %@", v7, 0xCu);
    sub_10000387C(v8, &qword_1000102A8, &qword_10000A570);
  }

  else
  {
    v10 = v0[6];
  }

  (*(v0[3] + 8))(v0[4], v0[2]);
  v11 = v0[4];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100002FA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002FD8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100003084;

  return sub_100002BD8();
}

uint64_t sub_100003084()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000018E0(&qword_100010298, &qword_10000A4F8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100003814(a3, v27 - v11, &qword_100010298, &qword_10000A4F8);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000387C(v12, &qword_100010298, &qword_10000A4F8);
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

uint64_t variable initialization expression of SetupBase.state@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for BluetoothBaseState.unactivated<A>(_:);
  type metadata accessor for MessageSessionTransport();
  v3 = type metadata accessor for BluetoothBaseState();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void type metadata accessor for CUPasswordType()
{
  if (!qword_1000102A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000102A0);
    }
  }
}

uint64_t sub_100003508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  sub_1000018E0(&qword_1000102B0, &qword_10000A578);
  v13 = AppleIDSetupBaseConfig.stateHandler.getter();
  v15[3] = sub_1000018E0(a5, a6);
  v15[4] = sub_100003AD0(a7, a5, a6);
  v15[0] = a1;

  v13(v15, a2, a3);

  return sub_1000038DC(v15);
}

_DWORD *sub_1000035E8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100003604()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000363C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003B20;

  return sub_100006FB0(a1, v5);
}

uint64_t sub_1000036F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003084;

  return sub_100006FB0(a1, v5);
}

uint64_t sub_1000037AC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003814(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000018E0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000387C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000018E0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000038DC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003928()
{
  v1 = sub_1000018E0(&qword_1000102B0, &qword_10000A578);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100003A88(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100003AD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000037AC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *SetupBase.__allocating_init(with:)(uint64_t a1)
{
  v3 = sub_100008504(a1);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = type metadata accessor for AppleIDSetupBaseConfig();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v3;
}

void *SetupBase.peerDevice.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

uint64_t SetupBase.fixedPin.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t SetupBase.targetAuthTag.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t SetupBase.stateHandler.getter()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return v1;
}

uint64_t SetupBase.advertisementFlags.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for SetupBase.advertisementFlags;
  v4 = type metadata accessor for BleAdvertisementFlags();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100003CF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *(a2 + a3 - 8);
  v7 = *a1;
  v8 = *(**a1 + 192);
  swift_beginAccess();
  type metadata accessor for MessageSessionTransport();
  v9 = type metadata accessor for BluetoothBaseState();
  return (*(*(v9 - 8) + 16))(a4, v7 + v8, v9);
}

uint64_t sub_100003DB0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  type metadata accessor for MessageSessionTransport();
  v7 = type metadata accessor for BluetoothBaseState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v13 = *(v1 + 23);
  v12 = *(v1 + 24);
  v14 = *(v4 + 192);
  swift_beginAccess();
  (*(v8 + 16))(v11, &v2[v14], v7);
  v13(v2, a1, v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t SetupBase.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  swift_beginAccess();
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  type metadata accessor for MessageSessionTransport();
  v7 = type metadata accessor for BluetoothBaseState();
  return (*(*(v7 - 8) + 16))(a1, v1 + v4, v7);
}

uint64_t sub_100003FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 96);
  type metadata accessor for AppleIDSetupBaseConfig();
  v9 = AppleIDSetupBaseConfig.stateHandler.getter();
  v10 = *(v6 + 80);
  v12[3] = type metadata accessor for SetupBase();
  v12[4] = swift_getWitnessTable();
  v12[0] = a1;

  v9(v12, a2, a3);

  return sub_1000038DC(v12);
}

void *SetupBase.__allocating_init(base:queue:peerDevice:persistentPairing:reversePairing:fixedPin:targetAuthTag:advertisementFlags:pinType:stateHandler:)(void *a1, void *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = sub_10000843C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);

  return v15;
}

void *SetupBase.init(base:queue:peerDevice:persistentPairing:reversePairing:fixedPin:targetAuthTag:advertisementFlags:pinType:stateHandler:)(void *a1, void *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = sub_100008024(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);

  return v15;
}

id SKDevice.init(blePsm:identifier:)(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setBlePSM:a1];
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v5 setIdentifier:v6];

  return v5;
}

uint64_t *SetupBase.deinit()
{
  v1 = *v0;
  [v0[14] invalidate];

  v2 = v0[19];

  v3 = v0[21];

  v4 = v0[24];

  v5 = direct field offset for SetupBase.advertisementFlags;
  v6 = type metadata accessor for BleAdvertisementFlags();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 192);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  type metadata accessor for MessageSessionTransport();
  v10 = type metadata accessor for BluetoothBaseState();
  (*(*(v10 - 8) + 8))(v0 + v7, v10);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SetupBase.__deallocating_deinit()
{
  SetupBase.deinit();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SetupBase.activate()()
{
  v38 = *v0;
  v1 = v38;
  v2 = v38[11];
  v39 = v38[12];
  v40 = v2;
  type metadata accessor for MessageSessionTransport();
  v3 = type metadata accessor for BluetoothBaseState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v11 = v1[24];
  swift_beginAccess();
  (*(v4 + 16))(v10, v0 + v11, v3);
  LODWORD(v1) = (*(v4 + 88))(v10, v3);
  v12 = enum case for BluetoothBaseState.unactivated<A>(_:);
  v13 = *(v4 + 8);
  v13(v10, v3);
  if (v1 == v12)
  {
    (*(v4 + 104))(v8, enum case for BluetoothBaseState.activating<A>(_:), v3);
    sub_100008808(v8);
    v13(v8, v3);
    v14 = *(v0 + 112);
    if (*(v0 + 152))
    {
      v15 = *(v0 + 144);
      v16 = String._bridgeToObjectiveC()();
    }

    else
    {
      v16 = 0;
    }

    [v14 setPassword:v16];

    v19 = *(v0 + 168);
    if (v19)
    {
      v20 = *(v0 + 160);
      v21 = *(v0 + 168);

      v22 = sub_100004980(v20, v19);
      v24 = v23;
      v25.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100008CB8(v22, v24);
    }

    else
    {
      v25.super.isa = 0;
    }

    [v14 setAuthTagOverride:v25.super.isa];

    [v14 setPasswordType:*(v0 + 176)];
    v45 = sub_100008990;
    v46 = v0;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_100004EA0;
    v44 = &unk_10000C950;
    v26 = _Block_copy(&aBlock);

    [v14 setEventHandler:v26];
    _Block_release(v26);
    v45 = sub_1000089AC;
    v46 = v0;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_100004F08;
    v44 = &unk_10000C978;
    v27 = _Block_copy(&aBlock);

    [v14 setPasswordTypeChangedHandler:v27];
    _Block_release(v27);
    [v14 setBluetoothUseCase:393219];
    [v14 setDispatchQueue:*(v0 + 120)];
    [v14 setPeerDevice:*(v0 + 128)];
    [v14 setPersistentPairing:*(v0 + 136)];
    [v14 setReversePairing:*(v0 + 137)];
    v28 = String._bridgeToObjectiveC()();
    [v14 setLabel:v28];

    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (v29)
    {
      v30 = v29;
      v31 = v14;
      [v30 setNearbyActionType:95];
      sub_1000018E0(qword_100010308, &qword_10000A5F0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_10000A5D0;
      *(v32 + 32) = BleAdvertisementFlags.rawValue.getter();
      v33 = sub_100008C08(v32);
      v35 = v34;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100008CB8(v33, v35);
      [v30 setNearbyActionExtraData:isa];
    }

    [v14 activate];
  }

  else
  {
    v17 = v38[10];
    type metadata accessor for SetupBase.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }
}

uint64_t sub_100004980(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_1000018E0(&qword_100010428, &qword_10000A878);
  if (swift_dynamicCast())
  {
    sub_1000098D8(__src, &v41);
    sub_1000098F0(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v40;
    sub_1000038DC(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10000387C(__src, &qword_100010430, &qword_10000A880);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_10000782C(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_100008A68(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_1000078F4(sub_100009808);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_100007F58(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_100007F58(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    Data._Representation.append(contentsOf:)();
    sub_1000098C4(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_1000098C4(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_100009870(*&__src[0], *(&__src[0] + 1));

  sub_100008CB8(v32, *(&v32 + 1));
  return v32;
}

void sub_100004EA0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100004F08(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_100004F6C(void *a1)
{
  v51 = *v1;
  v3 = v51;
  v4 = type metadata accessor for Logger();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  v6 = __chkstk_darwin(v4);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v50 - v8;
  v10 = *(v3 + 88);
  v11 = *(v3 + 96);
  type metadata accessor for MessageSessionTransport();
  v12 = type metadata accessor for BluetoothBaseState();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v50 - v18;
  v20 = [a1 eventType];
  if (v20 > 40)
  {
    if (v20 <= 119)
    {
      if (v20 != 41)
      {
        if (v20 == 110)
        {
          objc_opt_self();
          v26 = swift_dynamicCastObjCClass();
          if (!v26)
          {
            return;
          }

          v27 = v26;
          v54 = a1;
          sub_100005A48(v27);
          goto LABEL_25;
        }

        goto LABEL_32;
      }

      v25 = &enum case for BluetoothBaseState.connectionEnded<A>(_:);
    }

    else
    {
      if (v20 == 120)
      {
        objc_opt_self();
        v28 = swift_dynamicCastObjCClass();
        if (!v28)
        {
          return;
        }

        v29 = v28;
        v54 = a1;
        sub_100005C14(v29);
        goto LABEL_25;
      }

      if (v20 != 140)
      {
        if (v20 == 300)
        {
          objc_opt_self();
          v21 = swift_dynamicCastObjCClass();
          if (!v21)
          {
            return;
          }

          v22 = v21;
          v23 = *(v51 + 80);
          v54 = a1;
          sub_1000092A4(v22);
LABEL_25:
          v30 = v54;

          return;
        }

        goto LABEL_32;
      }

      __chkstk_darwin(v20);
      *(&v50 - 2) = v1;
      *(&v50 - 1) = a1;
      v31 = sub_1000018E0(&qword_100010410, &qword_10000A860);
      sub_10000560C(sub_100009738, v31, v19);
      v25 = &enum case for BluetoothBaseState.paired<A>(_:);
    }

LABEL_30:
    (*(v13 + 104))(v19, *v25, v12);
    sub_100008808(v19);
    (*(v13 + 8))(v19, v12);
    return;
  }

  if (v20 > 29)
  {
    if (v20 == 30)
    {
      v25 = &enum case for BluetoothBaseState.invalidated<A>(_:);
      goto LABEL_30;
    }

    if (v20 == 40)
    {
      v25 = &enum case for BluetoothBaseState.connectionStarted<A>(_:);
      goto LABEL_30;
    }

LABEL_32:
    static AISLogger.setup.getter();
    v32 = a1;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&_mh_execute_header, v33, v34, "Not handling unexpected event: %@", v35, 0xCu);
      sub_10000387C(v36, &qword_1000102A8, &qword_10000A570);
    }

    v38 = v54;
    v39 = *(v53 + 8);
    v39(v9, v54);
    v40 = [v32 error];
    v41 = v52;
    if (v40)
    {
      v42 = v40;
      static AISLogger.setup.getter();
      v43 = v42;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        v48 = v43;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v49;
        *v47 = v49;
        _os_log_impl(&_mh_execute_header, v44, v45, "Received event with error: %@", v46, 0xCu);
        sub_10000387C(v47, &qword_1000102A8, &qword_10000A570);
      }

      else
      {
        v48 = v44;
        v44 = v43;
      }

      v39(v41, v38);
    }

    return;
  }

  if (v20 == 10)
  {
    v25 = &enum case for BluetoothBaseState.activated<A>(_:);
    goto LABEL_30;
  }

  if (v20 != 20)
  {
    goto LABEL_32;
  }

  v24 = [a1 error];
  if (v24)
  {
    swift_willThrow();
  }

  *v17 = v24;
  v17[8] = v24 != 0;
  (*(v13 + 104))(v17, enum case for BluetoothBaseState.completed<A>(_:), v12);
  sub_100008808(v17);
  (*(v13 + 8))(v17, v12);
}

uint64_t sub_10000560C@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Result();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v14[-v11];
  a1(v7);
  swift_storeEnumTagMultiPayload();
  return (*(v9 + 32))(a3, v12, v8);
}

uint64_t sub_1000057C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v22 = *a1;
  v23 = v4;
  v8 = v22[11];
  v9 = v22[12];
  v10 = type metadata accessor for MessageSessionTransport();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  if ([*(a1 + 112) messageSessionTemplate])
  {
    ProximityAppleIDSetupBaseIdentifier.getter();
    MessageSessionTransport.init(templateSession:identifier:)();
    v16 = *(v10 - 8);
    if ((*(v16 + 48))(v15, 1, v10) != 1)
    {
      return (*(v16 + 32))(a4, v15, v10);
    }

    (*(v12 + 8))(v15, v11);
  }

  v17 = [a2 error];
  if (!v17)
  {
    v18 = v22[10];
    type metadata accessor for SetupBase.Failure();
    swift_getWitnessTable();
    v17 = swift_allocError();
    *v19 = 0;
  }

  v20 = v17;
  result = swift_willThrow();
  *v24 = v20;
  return result;
}

id sub_100005A48(void *a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 96);
  type metadata accessor for MessageSessionTransport();
  v5 = type metadata accessor for BluetoothBaseState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  result = [a1 password];
  if (result)
  {
    v11 = result;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = [a1 passwordType];
    v16 = v1[44];
    if (v15)
    {
      v16 = v15;
    }

    *v9 = v12;
    *(v9 + 1) = v14;
    *(v9 + 4) = v16;
    v17 = enum case for BluetoothBasePairingState.present(_:);
    v18 = type metadata accessor for BluetoothBasePairingState();
    (*(*(v18 - 8) + 104))(v9, v17, v18);
    (*(v6 + 104))(v9, enum case for BluetoothBaseState.pairing<A>(_:), v5);
    sub_100008808(v9);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_100005C14(void *a1)
{
  v3 = *v1;
  v24 = *(*v1 + 88);
  v23 = *(v3 + 96);
  type metadata accessor for MessageSessionTransport();
  v25 = type metadata accessor for BluetoothBaseState();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v25);
  v7 = &v22 - v6;
  v8 = [a1 passwordType];
  v9 = v1[44];
  v10 = [a1 pairingFlags];
  v11 = [a1 throttleSeconds];
  v12 = 1000000000000000000 * v11;
  v13 = (__PAIR128__(v11 >> 31, v11) * 0xDE0B6B3A7640000) >> 64;
  if (v8)
  {
    v9 = v8;
  }

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = *(v3 + 80);
  v16 = v23;
  v15[3] = v24;
  v15[4] = v16;
  v15[5] = v14;
  v15[6] = a1;
  *v7 = v9;
  *(v7 + 1) = v10;
  *(v7 + 1) = v12;
  *(v7 + 2) = v13;
  *(v7 + 3) = sub_100009290;
  *(v7 + 4) = v15;
  v17 = enum case for BluetoothBasePairingState.request(_:);
  v18 = type metadata accessor for BluetoothBasePairingState();
  (*(*(v18 - 8) + 104))(v7, v17, v18);
  v19 = v25;
  (*(v4 + 104))(v7, enum case for BluetoothBaseState.pairing<A>(_:), v25);

  v20 = a1;
  sub_100008808(v7);
  (*(v4 + 8))(v7, v19);
}

void sub_100005E94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000666C(a1, a5);
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = objc_allocWithZone(SKAuthenticationResponseEvent);
      v10 = String._bridgeToObjectiveC()();
      v11 = [v9 initWithPassword:v10];

      [*(v8 + 112) postEvent:v11];
    }
  }
}

uint64_t sub_100005F94(int a1)
{
  v2 = v1;
  v61 = a1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 96);
  type metadata accessor for MessageSessionTransport();
  v5 = type metadata accessor for BluetoothBaseState();
  v62 = *(v5 - 8);
  v6 = *(v62 + 64);
  v7 = __chkstk_darwin(v5);
  v58 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = &v56 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v60 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v56 - v17;
  __chkstk_darwin(v16);
  v20 = &v56 - v19;
  static AISLogger.setup.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v59 = v18;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v57 = v5;
    v25 = v24;
    v56 = swift_slowAlloc();
    v65 = v56;
    *v25 = 136315138;
    LODWORD(v64) = v61;
    type metadata accessor for CUPasswordType();
    v26 = String.init<A>(describing:)();
    v28 = sub_100007284(v26, v27, &v65);

    *(v25 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Password type changed to %s", v25, 0xCu);
    sub_1000038DC(v56);

    v5 = v57;
  }

  v29 = *(v12 + 8);
  v29(v20, v11);
  v30 = *(*v2 + 192);
  swift_beginAccess();
  v31 = v62;
  (*(v62 + 16))(v10, v2 + v30, v5);
  v32 = (*(v31 + 88))(v10, v5);
  if (v32 == enum case for BluetoothBaseState.pairing<A>(_:))
  {
    v33 = v32;
    v57 = v29;
    (*(v31 + 96))(v10, v5);
    v34 = v5;
    v5 = type metadata accessor for BluetoothBasePairingState();
    v35 = *(v5 - 8);
    v36 = (*(v35 + 88))(v10, v5);
    if (v36 == enum case for BluetoothBasePairingState.present(_:))
    {
      v37 = v36;
      (*(v35 + 96))(v10, v5);
      v38 = *v10;
      v39 = *(v10 + 1);
      LODWORD(v60) = *(v10 + 4);
      v40 = v58;
      *v58 = v38;
      *(v40 + 8) = v39;
      *(v40 + 16) = v61;
      (*(v35 + 104))(v40, v37, v5);
      (*(v31 + 104))(v40, v33, v34);
      sub_100008808(v40);
      (*(v31 + 8))(v40, v34);
      v41 = v59;
      static AISLogger.setup.getter();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v44 = 136315394;
        v63 = v60;
        type metadata accessor for CUPasswordType();
        v45 = String.init<A>(describing:)();
        v47 = sub_100007284(v45, v46, &v64);

        *(v44 + 4) = v47;
        *(v44 + 12) = 2080;
        v63 = v61;
        v48 = String.init<A>(describing:)();
        v50 = sub_100007284(v48, v49, &v64);

        *(v44 + 14) = v50;
        _os_log_impl(&_mh_execute_header, v42, v43, "Updated password pairing type from %s to %s", v44, 0x16u);
        swift_arrayDestroy();
      }

      return v57(v41, v11);
    }

    v31 = v35;
    v29 = v57;
  }

  (*(v31 + 8))(v10, v5);
  v51 = v60;
  static AISLogger.setup.getter();
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Unable to update password pairing type", v54, 2u);
  }

  return (v29)(v51, v11);
}

uint64_t sub_10000666C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000018E0(&qword_100010298, &qword_10000A4F8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AISLogger.setup.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Changing password to %d", v17, 8u);
  }

  (*(v11 + 8))(v14, v10);
  [*(v3 + 112) setPasswordType:a1];
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v3;
  *(v19 + 40) = a1;
  *(v19 + 48) = a2;

  v20 = a2;
  sub_100006A18(0, 0, v9, &unk_10000A848, v19);
}

uint64_t sub_1000068C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  return _swift_task_switch(sub_1000068EC, 0, 0);
}

uint64_t sub_1000068EC()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = [objc_allocWithZone(SKAuthenticationRequestEvent) initWithPasswordType:*(v0 + 40) pairingFlags:objc_msgSend(*(v0 + 24) throttleSeconds:{"pairingFlags"), objc_msgSend(*(v0 + 24), "throttleSeconds")}];

  return _swift_task_switch(sub_1000069AC, v1, 0);
}

uint64_t sub_1000069AC()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_100005C14(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100006A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000018E0(&qword_100010298, &qword_10000A4F8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100003814(a3, v27 - v11, &qword_100010298, &qword_10000A4F8);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000387C(v12, &qword_100010298, &qword_10000A4F8);
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

      sub_10000387C(a3, &qword_100010298, &qword_10000A4F8);

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

  sub_10000387C(a3, &qword_100010298, &qword_10000A4F8);
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

Swift::Int sub_100006D50(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100006DB4()
{
  Hasher.init(_seed:)();
  sub_100006D28(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_100006E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_100008504(a1);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  v9 = type metadata accessor for AppleIDSetupBaseConfig();
  result = (*(*(v9 - 8) + 8))(a1, v9);
  *a3 = v6;
  return result;
}

uint64_t sub_100006EA4()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_100006EC4, v2, 0);
}

uint64_t sub_100006EC4()
{
  v1 = *(v0 + 16);
  SetupBase.activate()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100006F64(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100006FB0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000070A8;

  return v7(a1);
}

uint64_t sub_1000070A8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000071A0(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_100007200(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100007210(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100007284(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100007350(v11, 0, 0, 1, a1, a2);
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
    sub_1000091B8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000038DC(v11);
  return v7;
}

unint64_t sub_100007350(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000745C(a5, a6);
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

char *sub_10000745C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000074A8(a1, a2);
  sub_1000075D8(&off_10000C840);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000074A8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000076C4(v5, 0);
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
        v7 = sub_1000076C4(v10, 0);
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

uint64_t sub_1000075D8(uint64_t result)
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

  result = sub_100007738(result, v12, 1, v3);
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

void *sub_1000076C4(uint64_t a1, uint64_t a2)
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

  sub_1000018E0(qword_100010308, &qword_10000A5F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007738(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000018E0(qword_100010308, &qword_10000A5F0);
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

uint64_t sub_10000782C@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1000089B0(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_1000078F4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100008CB8(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100008CB8(v6, v5);
    *v3 = xmmword_10000A5E0;
    sub_100008CB8(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_100007D98(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_100008CB8(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_10000A5E0;
    sub_100008CB8(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_100007D98(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_100007C98@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1000089B0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100008B08(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100008B84(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_100007D2C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_100007D98(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_100007E4C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100007E90(a1, v4);
}

unint64_t sub_100007E90(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000097AC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100009758(v8);
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

uint64_t sub_100007F58(unsigned __int16 a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100007FD4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
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

void *sub_100008024(void *a1, void *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v61 = a7;
  v62 = a8;
  v60 = a6;
  v58 = a4;
  v59 = a5;
  v66 = a12;
  v67 = a13;
  v63 = a11;
  v64 = a10;
  v56 = a2;
  v57 = a9;
  v17 = *v13;
  v18 = type metadata accessor for BLEDevice();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000018E0(&qword_1000102C8, &qword_10000A588);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v55 - v25;
  swift_defaultActor_initialize();
  v27 = *(*v14 + 192);
  v28 = enum case for BluetoothBaseState.unactivated<A>(_:);
  v29 = *(v17 + 88);
  v30 = *(v17 + 96);
  type metadata accessor for MessageSessionTransport();
  v31 = type metadata accessor for BluetoothBaseState();
  v32 = v14 + v27;
  v33 = v56;
  (*(*(v31 - 8) + 104))(v32, v28, v31);
  v14[14] = a1;
  v14[15] = v33;
  v65 = a3;
  v34 = a3;
  v35 = v19;
  sub_100003814(v34, v26, &qword_1000102C8, &qword_10000A588);
  if ((*(v19 + 48))(v26, 1, v18) == 1)
  {
    v36 = a1;
    v37 = v33;
    v38 = 0;
  }

  else
  {
    (*(v19 + 32))(v22, v26, v18);
    v39 = a1;
    v40 = v33;
    v41 = BLEDevice.proximityServicePSM.getter();
    BLEDevice.identifier.getter();
    v43 = v42;
    v38 = [objc_allocWithZone(SKDevice) init];
    [v38 setBlePSM:v41];
    if (v43)
    {
      v44 = String._bridgeToObjectiveC()();
    }

    else
    {
      v44 = 0;
    }

    [v38 setIdentifier:v44];

    (*(v35 + 8))(v22, v18);
  }

  v14[16] = v38;
  *(v14 + 136) = v58 & 1;
  *(v14 + 137) = v59 & 1;
  v45 = v61;
  v14[18] = v60;
  v14[19] = v45;
  v46 = v57;
  v14[20] = v62;
  v14[21] = v46;
  v47 = direct field offset for SetupBase.advertisementFlags;
  v48 = type metadata accessor for BleAdvertisementFlags();
  v49 = *(v48 - 8);
  v50 = v64;
  (*(v49 + 16))(v14 + v47, v64, v48);
  v51 = v63;
  LODWORD(v47) = DiscoveryModel.CodeType.into()();
  v52 = type metadata accessor for DiscoveryModel.CodeType();
  (*(*(v52 - 8) + 8))(v51, v52);
  (*(v49 + 8))(v50, v48);
  sub_10000387C(v65, &qword_1000102C8, &qword_10000A588);
  *(v14 + 44) = v47;
  v53 = v67;
  v14[23] = v66;
  v14[24] = v53;
  return v14;
}

void *sub_10000843C(void *a1, void *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v22 = v13[10];
  v23 = v13[11];
  v24 = v13[12];
  v25 = type metadata accessor for SetupBase();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  return sub_100008024(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

void *sub_100008504(uint64_t a1)
{
  v2 = v1;
  v4 = v2[11];
  v41 = v2[12];
  v42 = v4;
  v5 = type metadata accessor for AppleIDSetupBaseConfig();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = type metadata accessor for DiscoveryModel.CodeType();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BleAdvertisementFlags();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000018E0(&qword_1000102C8, &qword_10000A588);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v34 - v20;
  v40 = AppleIDSetupBaseConfig.queue.getter();
  AppleIDSetupBaseConfig.peerDevice.getter();
  v39 = AppleIDSetupBaseConfig.persistentPairing.getter();
  v38 = AppleIDSetupBaseConfig.reversePairing.getter();
  v22 = AppleIDSetupBaseConfig.fixedPin.getter();
  v36 = v23;
  v37 = v22;
  v24 = AppleIDSetupBaseConfig.targetAuthTag.getter();
  v34 = v25;
  v35 = v24;
  AppleIDSetupBaseConfig.advertisementFlags.getter();
  AppleIDSetupBaseConfig.pinType.getter();
  (*(v6 + 16))(v9, a1, v5);
  v26 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v27 = swift_allocObject();
  v28 = v41;
  v29 = v42;
  *(v27 + 2) = v2[10];
  *(v27 + 3) = v29;
  *(v27 + 4) = v28;
  (*(v6 + 32))(&v27[v26], v9, v5);
  v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = v40;
  v32 = sub_10000843C(v30, v40, v21, v39 & 1, v38 & 1, v37, v36, v35, v34, v17, v13, sub_100009A44, v27);

  return v32;
}

uint64_t sub_100008808(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  type metadata accessor for MessageSessionTransport();
  v6 = type metadata accessor for BluetoothBaseState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  v11 = *(v3 + 192);
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v11, v6);
  swift_beginAccess();
  (*(v7 + 24))(v1 + v11, a1, v6);
  swift_endAccess();
  sub_100003DB0(v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100008994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000089B0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100008A68(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100008B08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100008B84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100008C08(uint64_t a1)
{
  v9 = sub_1000018E0(&qword_100010438, &qword_10000A888);
  v10 = sub_100009954();
  v8[0] = a1;
  v2 = sub_1000098F0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100007C98(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1000038DC(v8);
  return v5;
}

uint64_t sub_100008CB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 sub_100008D78(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100008D90(uint64_t a1)
{
  result = type metadata accessor for BleAdvertisementFlags();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v4 = *(a1 + 88);
    v5 = *(a1 + 96);
    type metadata accessor for MessageSessionTransport();
    result = type metadata accessor for BluetoothBaseState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100008EF8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100008F88(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000906C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000090B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003084;

  return sub_1000068C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100009180()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000091B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009218()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009250()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100009290(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  sub_100005E94(a1, a2, a3 & 1, *(v3 + 40), *(v3 + 48));
}

uint64_t sub_1000092A4(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 basicConfig];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v40 = 0x676E616C5FLL;
  *(&v40 + 1) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16) || (v10 = sub_100007E4C(&v38), (v11 & 1) == 0))
  {

    sub_100009758(&v38);
LABEL_12:
    v40 = 0u;
    v41 = 0u;
    goto LABEL_13;
  }

  sub_1000091B8(*(v9 + 56) + 32 * v10, &v40);
  sub_100009758(&v38);

  if (!*(&v41 + 1))
  {
LABEL_13:
    sub_10000387C(&v40, &qword_100010418, &qword_10000A868);
    v13 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v12 = swift_dynamicCast();
  if (v12)
  {
    v13 = v38;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v39;
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  v15 = [a1 basicConfig];
  if (!v15)
  {
LABEL_25:
    v40 = 0u;
    v41 = 0u;
    goto LABEL_26;
  }

  v16 = v15;
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v40 = 0x656C61636F6C5FLL;
  *(&v40 + 1) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v18 = sub_100007E4C(&v38), (v19 & 1) == 0))
  {

    sub_100009758(&v38);
    goto LABEL_25;
  }

  sub_1000091B8(*(v17 + 56) + 32 * v18, &v40);
  sub_100009758(&v38);

  if (!*(&v41 + 1))
  {
LABEL_26:
    sub_10000387C(&v40, &qword_100010418, &qword_10000A868);
    v21 = 0;
    v22 = 0;
    goto LABEL_27;
  }

  v20 = swift_dynamicCast();
  if (v20)
  {
    v21 = v38;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = v39;
  }

  else
  {
    v22 = 0;
  }

LABEL_27:
  static AISLogger.common.getter();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v37 = v2;
    v26 = v25;
    v27 = swift_slowAlloc();
    v36 = v6;
    *&v40 = v27;
    *v26 = 136315394;
    v38 = v13;
    v39 = v14;
    sub_1000018E0(&qword_100010420, &qword_10000A870);
    v28 = String.init<A>(describing:)();
    v30 = sub_100007284(v28, v29, &v40);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v38 = v21;
    v39 = v22;
    v31 = String.init<A>(describing:)();
    v33 = sub_100007284(v31, v32, &v40);

    *(v26 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Received basic config language code (%s) and locale (%s)", v26, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v36, v37);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

void *sub_100009808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_100007D2C(sub_100009934, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_100009870(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000098C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008CB8(a1, a2);
  }

  return a1;
}

uint64_t sub_1000098D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1000098F0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100009954()
{
  result = qword_100010440;
  if (!qword_100010440)
  {
    sub_1000037AC(&qword_100010438, &qword_10000A888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010440);
  }

  return result;
}

uint64_t sub_1000099B8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for AppleIDSetupBaseConfig();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return _swift_deallocObject(v0, v6 + v7, v5 | 7);
}

uint64_t sub_100009A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(*(type metadata accessor for AppleIDSetupBaseConfig() - 8) + 80);

  return sub_100003FE4(a1, a2, a3);
}