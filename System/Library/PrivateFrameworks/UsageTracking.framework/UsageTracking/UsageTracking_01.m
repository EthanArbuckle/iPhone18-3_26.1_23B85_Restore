uint64_t sub_100027DC4()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_100027ED4, v2, 0);
}

uint64_t sub_100027EE8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100020D2C(v1, qword_100092E98);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v6 = String.init<A>(describing:)();
      v8 = sub_100033140(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to upload local activity: %{public}s", v4, 0xCu);
      sub_1000208BC(v5);
    }

    else
    {
    }
  }

  sub_100020818(&qword_100091378, &qword_10006D970);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000280A8()
{
  sub_1000208BC((v0 + 112));
  v1 = *(v0 + 152);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100028118(uint64_t a1)
{
  v2 = sub_100020818(&qword_100091378, &qword_10006D970);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v13 - v6;
  if (qword_100090CD0 != -1)
  {
    swift_once();
  }

  v8 = qword_100092DE8;
  v9 = unk_100092DF0;
  (*(v3 + 16))(v7, a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v7, v2);
  (*(v9 + 8))(sub_100028348, v11, v8, v9);
}

uint64_t sub_1000282B4()
{
  v1 = sub_100020818(&qword_100091378, &qword_10006D970);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100028348(uint64_t a1)
{
  v2 = *(*(sub_100020818(&qword_100091378, &qword_10006D970) - 8) + 80);

  return sub_100027EE8(a1);
}

uint64_t *sub_1000283C4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100028428(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100028440(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10002848C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002C9DC;

  return sub_100022908(a1, v4, v5, v6);
}

uint64_t sub_100028540()
{
  v0 = type metadata accessor for Calendar();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v6 = Calendar.firstWeekday.getter();
  if (qword_100090CC8 != -1)
  {
    swift_once();
  }

  sub_1000297C4(&xmmword_100092DC0, &v14, &qword_100091398, &unk_10006DC00);
  if (v15)
  {
    sub_100028428(&v14, v16);
  }

  else
  {
    v17 = type metadata accessor for DeviceActivityDataStore();
    v18 = &protocol witness table for DeviceActivityDataStore;
    sub_1000283C4(v16);
    DeviceActivityDataStore.init()();
    if (v15)
    {
      sub_100028FF4(&v14, &qword_100091398, &unk_10006DC00);
    }
  }

  sub_100020908(v16, v17);
  v7 = dispatch thunk of DeviceActivityDataStoring.localFirstWeekday()();
  sub_1000208BC(v16);
  if (v6 == v7)
  {
    (*(v1 + 8))(v5, v0);
    return 0;
  }

  else
  {
    sub_1000297C4(&xmmword_100092DC0, &v14, &qword_100091398, &unk_10006DC00);
    if (v15)
    {
      sub_100028428(&v14, v16);
    }

    else
    {
      v17 = type metadata accessor for DeviceActivityDataStore();
      v18 = &protocol witness table for DeviceActivityDataStore;
      sub_1000283C4(v16);
      DeviceActivityDataStore.init()();
      if (v15)
      {
        sub_100028FF4(&v14, &qword_100091398, &unk_10006DC00);
      }
    }

    sub_100020908(v16, v17);
    dispatch thunk of DeviceActivityDataStoring.write(localFirstWeekday:)();
    sub_1000208BC(v16);
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100020D2C(v9, qword_100092E98);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134349312;
      *(v12 + 4) = v7;
      *(v12 + 12) = 2050;
      *(v12 + 14) = v6;
      _os_log_impl(&_mh_execute_header, v10, v11, "Local first weekday changed from %{public}ld to %{public}ld", v12, 0x16u);
    }

    (*(v1 + 8))(v5, v0);
    return 1;
  }
}

void sub_100028A0C(char a1, uint64_t a2)
{
  v4 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v16 - v7;
  if (qword_100090CB8 != -1)
  {
    swift_once();
  }

  sub_100020F40(&qword_100092D88, v18);
  v9 = v19;
  v10 = v20;
  sub_100020908(v18, v19);
  v16 = 0u;
  v17 = 0u;
  v10[5](&v16, 0x726665527473616CLL, 0xEF65746144687365, v9, v10);
  sub_100028FF4(&v16, &qword_100091360, &unk_10006D960);
  sub_1000208BC(v18);
  if (a1)
  {
    if (qword_100090CC8 != -1)
    {
      swift_once();
    }

    sub_1000297C4(&xmmword_100092DC0, &v16, &qword_100091398, &unk_10006DC00);
    if (*(&v17 + 1))
    {
      sub_100028428(&v16, v18);
    }

    else
    {
      v19 = type metadata accessor for DeviceActivityDataStore();
      v20 = &protocol witness table for DeviceActivityDataStore;
      sub_1000283C4(v18);
      DeviceActivityDataStore.init()();
      if (*(&v17 + 1))
      {
        sub_100028FF4(&v16, &qword_100091398, &unk_10006DC00);
      }
    }

    sub_100020908(v18, v19);
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    dispatch thunk of DeviceActivityDataStoring.write(localStartDate:)();
    sub_100028FF4(v8, &qword_1000913D0, &qword_10006D9C0);
    sub_1000208BC(v18);
  }

  if (qword_100090CD0 != -1)
  {
    swift_once();
  }

  (*(unk_100092DF0 + 24))(a2);
  if (qword_100090CC8 != -1)
  {
    swift_once();
  }

  sub_1000297C4(&xmmword_100092DC0, &v16, &qword_100091398, &unk_10006DC00);
  if (*(&v17 + 1))
  {
    sub_100028428(&v16, v18);
  }

  else
  {
    v19 = type metadata accessor for DeviceActivityDataStore();
    v20 = &protocol witness table for DeviceActivityDataStore;
    sub_1000283C4(v18);
    DeviceActivityDataStore.init()();
    if (*(&v17 + 1))
    {
      sub_100028FF4(&v16, &qword_100091398, &unk_10006DC00);
    }
  }

  sub_100020908(v18, v19);
  dispatch thunk of DeviceActivityDataStoring.deleteLocalData(deleteDeviceIdentifier:segmentIntervals:)();
  sub_1000208BC(v18);
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100020D2C(v12, qword_100092E98);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Successfully reset all local activity", v15, 2u);
  }
}

uint64_t sub_100028FF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100020818(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100029054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v7 = type metadata accessor for Calendar();
  v65 = *(v7 - 8);
  v8 = *(v65 + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DateComponents();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v67 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v21 = &v60 - v20;
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    sub_100020818(&qword_1000913C8, &qword_10006D9B8);
    v28 = type metadata accessor for _SegmentInterval();
    v29 = *(v28 - 8);
    v30 = *(v29 + 72);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    a2 = swift_allocObject();
    *(a2 + 16) = xmmword_10006D8A0;
    (*(v29 + 104))(a2 + v31, enum case for _SegmentInterval.hourly(_:), v28);
    return a2;
  }

  v64 = v27;
  sub_1000297C4(a3, v21, &qword_1000913D0, &qword_10006D9C0);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100028FF4(v21, &qword_1000913D0, &qword_10006D9C0);
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100020D2C(v32, qword_100092E98);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Last refresh date is nil, refreshing all segment intervals", v35, 2u);
    }

    goto LABEL_18;
  }

  v62 = v13;
  v63 = v12;
  v61 = v23;
  (*(v23 + 32))(v64, v21, v22);
  static Calendar.current.getter();
  sub_100020818(&qword_1000913D8, &qword_10006D9D8);
  v36 = type metadata accessor for Calendar.Component();
  v37 = *(v36 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10006D8A0;
  (*(v37 + 104))(v40 + v39, enum case for Calendar.Component.minute(_:), v36);
  sub_100049638(v40);
  swift_setDeallocating();
  (*(v37 + 8))(v40 + v39, v36);
  swift_deallocClassInstance();
  v41 = v67;
  Calendar.dateComponents(_:from:to:)();

  (*(v65 + 8))(v11, v7);
  v42 = DateComponents.minute.getter();
  if (v43)
  {
    v44 = v62;
    v45 = v63;
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100020D2C(v46, qword_100092E98);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v61;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Unable to compute minutes since last refresh date, refreshing all segment intervals.", v51, 2u);
    }

    (*(v44 + 8))(v41, v45);
    goto LABEL_17;
  }

  v52 = v62;
  v53 = v63;
  if (v42 >= 2)
  {
    (*(v62 + 8))(v41, v63);
    v50 = v61;
LABEL_17:
    (*(v50 + 8))(v64, v22);
LABEL_18:

    return a2;
  }

  v55 = v61;
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_100020D2C(v56, qword_100092E98);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "Last refresh was less than one minute ago, skipping refresh.", v59, 2u);
  }

  (*(v52 + 8))(v41, v53);
  (*(v55 + 8))(v64, v22);
  return 0;
}

uint64_t sub_1000297C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100020818(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100029830(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100020818(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100029898(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_100020818(&qword_1000913D0, &qword_10006D9C0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for Date() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v20 = v1[3];
  v21 = v1[2];
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1 + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = v12[8];
  v15 = (v1 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v15;
  v17 = v15[1];
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_10002C9DC;

  return sub_100026E6C(a1, v21, v20, v10, v11, v1 + v5, v1 + v8, v13);
}

uint64_t sub_100029A64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100029AA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002C9DC;

  return sub_10002264C(a1, v4, v5, v6);
}

uint64_t sub_100029B58(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100029B68()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029BB0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[5])
  {
    v2 = v0[6];
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100029BF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100029CC0;

  return sub_100023BB4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100029CC0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100029DB4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100029DC4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[7])
  {
    v2 = v0[8];
  }

  v3 = v0[9];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100029E14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10002C9DC;

  return sub_100023768(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_100029F04()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Calendar();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v41, v8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = v40 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(v16, v19);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v23);
  v25 = v40 - v24;
  static Calendar.current.getter();
  (*(v1 + 104))(v5, enum case for Calendar.Component.day(_:), v0);
  static Date.now.getter();
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v40[0] = *(v17 + 8);
  v40[1] = v17 + 8;
  (v40[0])(v22, v16);
  (*(v1 + 8))(v5, v0);
  (*(v6 + 8))(v10, v41);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100028FF4(v15, &qword_1000913D0, &qword_10006D9C0);
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100020D2C(v26, qword_100092E98);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to calculate thirty days ago. Skipping deletion of expired activity segments.", v29, 2u);
    }
  }

  else
  {
    (*(v17 + 32))(v25, v15, v16);
    if (qword_100090CC8 != -1)
    {
      swift_once();
    }

    sub_1000297C4(&xmmword_100092DC0, &v42, &qword_100091398, &unk_10006DC00);
    if (v43)
    {
      sub_100028428(&v42, v44);
    }

    else
    {
      v45 = type metadata accessor for DeviceActivityDataStore();
      v46 = &protocol witness table for DeviceActivityDataStore;
      sub_1000283C4(v44);
      DeviceActivityDataStore.init()();
      if (v43)
      {
        sub_100028FF4(&v42, &qword_100091398, &unk_10006DC00);
      }
    }

    sub_100020908(v44, v45);
    v30 = dispatch thunk of DeviceActivityDataStoring.deleteData(olderThan:)();
    sub_1000208BC(v44);
    if (*(v30 + 16))
    {
      type metadata accessor for Feature();
      if (static Feature.isDeviceActivityUIEnabled.getter())
      {
        if (qword_100090CD0 != -1)
        {
          swift_once();
        }

        (*(unk_100092DF0 + 32))(v30);
      }
    }

    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100020D2C(v31, qword_100092E98);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44[0] = v35;
      *v34 = 136315138;

      sub_100020818(&qword_1000913E8, &qword_10006DA40);
      v36 = Dictionary.description.getter();
      v38 = v37;

      v39 = sub_100033140(v36, v38, v44);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Successfully pruned local device activity data: %s", v34, 0xCu);
      sub_1000208BC(v35);
    }

    else
    {
    }

    (v40[0])(v25, v16);
  }
}

uint64_t sub_10002A72C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v101 = a4;
  v102 = a2;
  v100 = a3;
  v109 = a1;
  v8 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v103 = &v92 - v11;
  v12 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  v98 = *(v12 - 8);
  v13 = *(v98 + 64);
  v15 = __chkstk_darwin(v12 - 8, v14);
  v16 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15, v17);
  v99 = &v92 - v19;
  v21 = __chkstk_darwin(v18, v20);
  v23 = &v92 - v22;
  __chkstk_darwin(v21, v24);
  v26 = &v92 - v25;
  v108 = type metadata accessor for Date();
  v104 = *(v108 - 8);
  v27 = *(v104 + 64);
  v29 = __chkstk_darwin(v108, v28);
  v97 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29, v30);
  v105 = &v92 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v36 = &v92 - v35;
  __chkstk_darwin(v34, v37);
  v39 = &v92 - v38;
  v40 = swift_allocObject();
  v106 = a5;
  v107 = a6;
  *(v40 + 16) = a5;
  *(v40 + 24) = a6;
  v41 = qword_100090CB0;

  if (v41 != -1)
  {
    swift_once();
  }

  if (![swift_getObjCClassFromMetadata() isAuthorized])
  {
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100020D2C(v42, qword_100092E98);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_17;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "Device Activity is not authorized, skipping device activity collection";
    goto LABEL_16;
  }

  if (v109 != 2)
  {
    goto LABEL_8;
  }

  if (qword_100090D00 != -1)
  {
    swift_once();
  }

  if (byte_100092E70)
  {
LABEL_8:
    if (qword_100090CC8 != -1)
    {
      swift_once();
    }

    sub_1000297C4(&xmmword_100092DC0, &v110, &qword_100091398, &unk_10006DC00);
    v96 = v23;
    v95 = v40;
    if (v111)
    {
      sub_100028428(&v110, v112);
    }

    else
    {
      v113 = type metadata accessor for DeviceActivityDataStore();
      v114 = &protocol witness table for DeviceActivityDataStore;
      sub_1000283C4(v112);
      DeviceActivityDataStore.init()();
      if (v111)
      {
        sub_100028FF4(&v110, &qword_100091398, &unk_10006DC00);
      }
    }

    sub_100020908(v112, v113);
    dispatch thunk of DeviceActivityDataStoring.localStartDate()();
    v48 = v104;
    v49 = v108;
    if ((*(v104 + 48))(v26, 1, v108) == 1)
    {
      sub_100028FF4(v26, &qword_1000913D0, &qword_10006D9C0);
      sub_1000208BC(v112);
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_100020D2C(v50, qword_100092E98);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Saving device activity collection start date", v53, 2u);
      }

      sub_1000297C4(&xmmword_100092DC0, &v110, &qword_100091398, &unk_10006DC00);
      if (v111)
      {
        sub_100028428(&v110, v112);
      }

      else
      {
        v113 = type metadata accessor for DeviceActivityDataStore();
        v114 = &protocol witness table for DeviceActivityDataStore;
        sub_1000283C4(v112);
        DeviceActivityDataStore.init()();
        if (v111)
        {
          sub_100028FF4(&v110, &qword_100091398, &unk_10006DC00);
        }
      }

      sub_100020908(v112, v113);
      static Date.now.getter();
      (*(v104 + 56))(v16, 0, 1, v49);
      dispatch thunk of DeviceActivityDataStoring.write(localStartDate:)();
      sub_100028FF4(v16, &qword_1000913D0, &qword_10006D9C0);
      sub_1000208BC(v112);
    }

    else
    {
      (*(v48 + 32))(v39, v26, v49);
      sub_1000208BC(v112);
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_100020D2C(v55, qword_100092E98);
      (*(v48 + 16))(v36, v39, v49);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v112[0] = v94;
        *v58 = 136446210;
        v93 = Date.debugDescription.getter();
        v60 = v59;
        v61 = *(v48 + 8);
        v61(v36, v108);
        v62 = sub_100033140(v93, v60, v112);
        v49 = v108;

        *(v58 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v56, v57, "Device activity collection has already started on %{public}s", v58, 0xCu);
        sub_1000208BC(v94);

        v61(v39, v49);
      }

      else
      {

        v63 = *(v48 + 8);
        v63(v36, v49);
        v63(v39, v49);
      }
    }

    v64 = v105;
    v65 = v96;
    v66 = v109;
    sub_100021ED0(v109, v96);
    static Date.now.getter();
    v67 = sub_100029054(v66, v102, v65, v64);
    if (v67)
    {
      v109 = v67;
      v68 = type metadata accessor for TaskPriority();
      (*(*(v68 - 8) + 56))(v103, 1, 1, v68);
      v69 = v101;
      v107 = *(v101 + 152);
      v70 = v99;
      sub_1000297C4(v65, v99, &qword_1000913D0, &qword_10006D9C0);
      v71 = v104;
      v72 = v97;
      (*(v104 + 16))(v97, v64, v49);
      v74 = sub_100028440(&qword_100091368, v73, type metadata accessor for _DeviceActivityCollector);
      v75 = (*(v98 + 80) + 48) & ~*(v98 + 80);
      v76 = (v13 + *(v71 + 80) + v75) & ~*(v71 + 80);
      v77 = v76 + v27;
      v78 = (v76 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v79 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
      v80 = swift_allocObject();
      v80[2] = v69;
      v80[3] = v74;
      v80[4] = v107;
      v80[5] = v69;
      sub_100029830(v70, v80 + v75, &qword_1000913D0, &qword_10006D9C0);
      v81 = v80 + v76;
      v82 = v108;
      (*(v71 + 32))(v81, v72, v108);
      v83 = v80 + v78;
      *v83 = v109;
      v83[8] = v100 & 1;
      v84 = (v80 + v79);
      v85 = v95;
      *v84 = sub_10002C7A8;
      v84[1] = v85;

      swift_retain_n();
      v86 = sub_100035B98(0, 0, v103, &unk_10006DA58, v80);
      (*(v71 + 8))(v105, v82);
      sub_100028FF4(v96, &qword_1000913D0, &qword_10006D9C0);
      v87 = *(v69 + 152);
      *(v69 + 152) = v86;
    }

    else
    {
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      sub_100020D2C(v88, qword_100092E98);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&_mh_execute_header, v89, v90, "No segment intervals need to be refreshed.", v91, 2u);
      }

      sub_100023114(v106);
      (*(v104 + 8))(v64, v49);
      sub_100028FF4(v96, &qword_1000913D0, &qword_10006D9C0);
    }
  }

  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_100020D2C(v54, qword_100092E98);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "Not refreshing local device activity data for budget tracking";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v43, v44, v46, v45, 2u);
  }

LABEL_17:

  sub_100023114(v106);
}

void sub_10002B59C(void (*a1)(void))
{
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100020D2C(v2, qword_100092E98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished collecting local device activity data", v5, 2u);
  }

  if (a1)
  {
    a1();
  }
}

uint64_t sub_10002B694(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7)
{
  v104 = a4;
  v103 = a3;
  v105 = a2;
  v113 = a1;
  v10 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v106 = &v96 - v13;
  v14 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  v101 = *(v14 - 8);
  v15 = *(v101 + 64);
  v17 = __chkstk_darwin(v14 - 8, v16);
  v18 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17, v19);
  v102 = &v96 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v109 = &v96 - v24;
  __chkstk_darwin(v23, v25);
  v27 = &v96 - v26;
  v112 = type metadata accessor for Date();
  v107 = *(v112 - 8);
  v28 = *(v107 + 64);
  v30 = __chkstk_darwin(v112, v29);
  v100 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30, v31);
  v108 = &v96 - v33;
  v35 = __chkstk_darwin(v32, v34);
  v37 = &v96 - v36;
  __chkstk_darwin(v35, v38);
  v40 = &v96 - v39;
  v41 = swift_allocObject();
  *(v41 + 2) = a5;
  *(v41 + 3) = a6;
  *(v41 + 4) = a7;
  v110 = a5;
  v111 = a6;
  sub_100029DB4(a5);
  v42 = qword_100090CB0;
  swift_unknownObjectRetain();
  if (v42 != -1)
  {
    swift_once();
  }

  if (![swift_getObjCClassFromMetadata() isAuthorized])
  {
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100020D2C(v43, qword_100092E98);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_17;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Device Activity is not authorized, skipping device activity collection";
    goto LABEL_16;
  }

  if (v113 != 2)
  {
    goto LABEL_8;
  }

  if (qword_100090D00 != -1)
  {
    swift_once();
  }

  if (byte_100092E70)
  {
LABEL_8:
    if (qword_100090CC8 != -1)
    {
      swift_once();
    }

    sub_1000297C4(&xmmword_100092DC0, &v114, &qword_100091398, &unk_10006DC00);
    v99 = v41;
    if (v115)
    {
      sub_100028428(&v114, v116);
    }

    else
    {
      v117 = type metadata accessor for DeviceActivityDataStore();
      v118 = &protocol witness table for DeviceActivityDataStore;
      sub_1000283C4(v116);
      DeviceActivityDataStore.init()();
      if (v115)
      {
        sub_100028FF4(&v114, &qword_100091398, &unk_10006DC00);
      }
    }

    sub_100020908(v116, v117);
    dispatch thunk of DeviceActivityDataStoring.localStartDate()();
    v49 = v107;
    v50 = v112;
    if ((*(v107 + 48))(v27, 1, v112) == 1)
    {
      sub_100028FF4(v27, &qword_1000913D0, &qword_10006D9C0);
      sub_1000208BC(v116);
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100020D2C(v51, qword_100092E98);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      v54 = os_log_type_enabled(v52, v53);
      v55 = v108;
      if (v54)
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "Saving device activity collection start date", v56, 2u);
      }

      sub_1000297C4(&xmmword_100092DC0, &v114, &qword_100091398, &unk_10006DC00);
      if (v115)
      {
        sub_100028428(&v114, v116);
      }

      else
      {
        v117 = type metadata accessor for DeviceActivityDataStore();
        v118 = &protocol witness table for DeviceActivityDataStore;
        sub_1000283C4(v116);
        DeviceActivityDataStore.init()();
        if (v115)
        {
          sub_100028FF4(&v114, &qword_100091398, &unk_10006DC00);
        }
      }

      sub_100020908(v116, v117);
      static Date.now.getter();
      (*(v107 + 56))(v18, 0, 1, v112);
      dispatch thunk of DeviceActivityDataStoring.write(localStartDate:)();
      sub_100028FF4(v18, &qword_1000913D0, &qword_10006D9C0);
      sub_1000208BC(v116);
      v95 = v109;
    }

    else
    {
      (*(v49 + 32))(v40, v27, v50);
      sub_1000208BC(v116);
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      sub_100020D2C(v84, qword_100092E98);
      (*(v49 + 16))(v37, v40, v50);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v116[0] = v97;
        *v87 = 136446210;
        v88 = Date.debugDescription.getter();
        v90 = v89;
        v98 = *(v49 + 8);
        v91 = v37;
        v92 = v112;
        v98(v91, v112);
        v93 = sub_100033140(v88, v90, v116);

        *(v87 + 4) = v93;
        _os_log_impl(&_mh_execute_header, v85, v86, "Device activity collection has already started on %{public}s", v87, 0xCu);
        sub_1000208BC(v97);

        v98(v40, v92);
      }

      else
      {

        v94 = *(v49 + 8);
        v94(v37, v50);
        v94(v40, v50);
      }

      v55 = v108;
      v95 = v109;
    }

    v57 = v113;
    sub_100021ED0(v113, v95);
    static Date.now.getter();
    v58 = sub_100029054(v57, v105, v95, v55);
    if (v58)
    {
      v113 = v58;
      v59 = type metadata accessor for TaskPriority();
      (*(*(v59 - 8) + 56))(v106, 1, 1, v59);
      v60 = v104;
      v111 = *(v104 + 152);
      v61 = v102;
      sub_1000297C4(v95, v102, &qword_1000913D0, &qword_10006D9C0);
      v62 = v107;
      v63 = v100;
      (*(v107 + 16))(v100, v55, v112);
      v65 = sub_100028440(&qword_100091368, v64, type metadata accessor for _DeviceActivityCollector);
      v66 = (*(v101 + 80) + 48) & ~*(v101 + 80);
      v67 = (v15 + *(v62 + 80) + v66) & ~*(v62 + 80);
      v68 = v67 + v28;
      v69 = (v67 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
      v70 = (v68 + 23) & 0xFFFFFFFFFFFFFFF8;
      v71 = swift_allocObject();
      v71[2] = v60;
      v71[3] = v65;
      v71[4] = v111;
      v71[5] = v60;
      sub_100029830(v61, v71 + v66, &qword_1000913D0, &qword_10006D9C0);
      v72 = v71 + v67;
      v73 = v112;
      (*(v62 + 32))(v72, v63, v112);
      v74 = v71 + v69;
      *v74 = v113;
      v74[8] = v103 & 1;
      v75 = (v71 + v70);
      v76 = v99;
      *v75 = sub_10002C55C;
      v75[1] = v76;

      swift_retain_n();
      v77 = sub_100035B98(0, 0, v106, &unk_10006DA20, v71);
      (*(v62 + 8))(v108, v73);
      sub_100028FF4(v109, &qword_1000913D0, &qword_10006D9C0);
      v78 = *(v60 + 152);
      *(v60 + 152) = v77;
    }

    else
    {
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      sub_100020D2C(v79, qword_100092E98);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "No segment intervals need to be refreshed.", v82, 2u);
      }

      sub_10002B59C(v110);
      (*(v107 + 8))(v55, v112);
      sub_100028FF4(v95, &qword_1000913D0, &qword_10006D9C0);
    }
  }

  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v83 = type metadata accessor for Logger();
  sub_100020D2C(v83, qword_100092E98);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Not refreshing local device activity data for budget tracking";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v44, v45, v47, v46, 2u);
  }

LABEL_17:

  sub_10002B59C(v110);
}

uint64_t sub_10002C514()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002C57C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002C5B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002C9DC;

  return sub_10002320C();
}

uint64_t sub_10002C668()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002C6A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002C9DC;

  return sub_100022EB0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10002C770()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C7B0()
{
  v1 = *(sub_100020818(&qword_1000913D0, &qword_10006D9C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 2);
  swift_unknownObjectRelease();
  v10 = *(v0 + 4);

  v11 = *(v0 + 5);

  v12 = (*(v6 + 48))(&v0[v3], 1, v5);
  v13 = *(v6 + 8);
  if (!v12)
  {
    v13(&v0[v3], v5);
  }

  v14 = (v3 + v4 + v7) & ~v7;
  v15 = (v14 + v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13(&v0[v14], v5);
  v17 = *&v0[v16];

  v18 = *&v0[v15 + 8];

  return _swift_deallocObject(v0, v15 + 16, v2 | v7 | 7);
}

unint64_t sub_10002C970()
{
  result = qword_1000913F0;
  if (!qword_1000913F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000913F0);
  }

  return result;
}

uint64_t sub_10002C9E8()
{
  result = sub_100021848(0, &qword_1000914A0, USUsageQuerying_ptr);
  qword_100092DF8 = result;
  unk_100092E00 = &off_100087FA0;
  return result;
}

uint64_t sub_10002CAB8()
{
  v28 = type metadata accessor for ActivityCategory();
  v1 = *(*(v28 - 8) + 64);
  v3 = __chkstk_darwin(v28, v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v5);
  v26 = &v25 - v7;
  v8 = *(v0 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_categoryIdentifiers);
  v11 = *(v8 + 56);
  v10 = v8 + 56;
  v9 = v11;
  v29 = *(v0 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_categoryIdentifiers);
  v30 = &_swiftEmptySetSingleton;
  v12 = 1 << *(v29 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v16 = (v6 + 8);

  for (i = 0; v14; result = (*v16)(v24, v28))
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v21 = *(*(v29 + 48) + ((v19 << 9) | (8 * v20)));
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    v23 = v27;
    ActivityCategory.init(identifier:localizedDisplayName:)();
    v24 = v26;
    sub_10005E438(v26, v23);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return v30;
    }

    v14 = *(v10 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002CD04(uint64_t a1, uint64_t (*a2)(void), void *a3, void (*a4)(uint64_t, uint64_t), void (*a5)(char *, char *))
{
  v32 = a4;
  v33 = a5;
  v31 = a2(0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v31, v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v31 - v15;
  if (a1)
  {
    v17 = a1;
  }

  else
  {
    v17 = *(v5 + *a3);
  }

  v18 = *(v17 + 56);
  v34 = &_swiftEmptySetSingleton;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v23 = (v8 + 8);

  for (i = 0; v21; result = (*v23)(v16, v31))
  {
    v26 = i;
LABEL_12:
    v27 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v28 = (*(v17 + 48) + ((v26 << 10) | (16 * v27)));
    v29 = *v28;
    v30 = v28[1];
    swift_bridgeObjectRetain_n();
    v32(v29, v30);
    v33(v16, v13);
  }

  while (1)
  {
    v26 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v26 >= v22)
    {

      return v34;
    }

    v21 = *(v17 + 56 + 8 * v26);
    ++i;
    if (v21)
    {
      i = v26;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002CF2C()
{
  result = type metadata accessor for DeviceActivityAuthorization();
  qword_100092E08 = result;
  return result;
}

uint64_t sub_10002CF50()
{
  v0 = [objc_opt_self() sharedCategories];
  result = sub_100021848(0, &qword_1000914D0, CTCategories_ptr);
  qword_100092E28 = result;
  unk_100092E30 = &off_100090F70;
  qword_100092E10 = v0;
  return result;
}

uint64_t sub_10002CFC0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100090CF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000297C4(&xmmword_100092E38, &v6, &qword_100091398, &unk_10006DC00);
  if (v7)
  {
    sub_100028428(&v6, &v8);
    return sub_100028428(&v8, a1);
  }

  else
  {
    sub_100028FF4(&v6, &qword_100091398, &unk_10006DC00);
    v3 = type metadata accessor for DeviceActivityDataStore();
    a1[3] = v3;
    a1[4] = &protocol witness table for DeviceActivityDataStore;
    v4 = sub_1000283C4(a1);
    DeviceActivityDataStore.init()();
    v9 = v3;
    v10 = &protocol witness table for DeviceActivityDataStore;
    v5 = sub_1000283C4(&v8);
    (*(*(v3 - 8) + 16))(v5, v4, v3);
    swift_beginAccess();
    sub_1000340A4(&v8, &xmmword_100092E38, &qword_100091398, &unk_10006DC00);
    return swift_endAccess();
  }
}

double sub_10002D144()
{
  qword_100092E58 = 0;
  result = 0.0;
  xmmword_100092E38 = 0u;
  unk_100092E48 = 0u;
  return result;
}

uint64_t sub_10002D15C()
{
  result = type metadata accessor for EventStreams();
  qword_100092E60 = result;
  *algn_100092E68 = &off_100087048;
  return result;
}

uint64_t sub_10002D18C()
{
  type metadata accessor for DeviceActivityQuery();
  result = sub_10002D1B8();
  byte_100092E70 = result & 1;
  return result;
}

uint64_t sub_10002D1B8()
{
  if (qword_100090CE0 != -1)
  {
LABEL_24:
    swift_once();
  }

  result = [swift_getObjCClassFromMetadata() isAuthorized];
  if (result)
  {
    sub_10002CFC0(v21);
    sub_100020908(v21, v21[3]);
    v1 = dispatch thunk of DeviceActivityDataStoring.deviceIdentifierByCoreDuetIdentifier.getter();
    sub_1000208BC(v21);
    if (qword_100090CF8 != -1)
    {
      swift_once();
    }

    v2 = (*(*algn_100092E68 + 56))();
    v3 = v2;
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = (v2 + 40);
      while (1)
      {
        if (v5 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v8 = *(v6 - 1);
        v7 = *v6;
        v9 = *(v1 + 16);

        if (!v9)
        {
          break;
        }

        sub_100033790(v8, v7);
        if ((v10 & 1) == 0)
        {
          break;
        }

        ++v5;

        v6 += 2;
        if (v4 == v5)
        {
          goto LABEL_11;
        }
      }

      if (qword_100090D08 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100020D2C(v15, qword_100092E80);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v21[0] = v19;
        *v18 = 136446210;
        v20 = sub_100033140(v8, v7, v21);

        *(v18 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v16, v17, "CoreDuet identifier is not tracked in DeviceActivity database: %{public}s", v18, 0xCu);
        sub_1000208BC(v19);
      }

      else
      {
      }

      return 0;
    }

    else
    {
LABEL_11:

      if (qword_100090D08 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100020D2C(v11, qword_100092E80);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "All CoreDuet identifiers are tracked in DeviceActivity database", v14, 2u);
      }

      return 1;
    }
  }

  return result;
}

void sub_10002D740(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v88 = a2;
  v87 = a1;
  v86 = a4;
  v84 = type metadata accessor for DeviceActivityFilter.SegmentInterval();
  v83 = *(v84 - 8);
  v7 = *(v83 + 64);
  __chkstk_darwin(v84, v8);
  v85 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DispatchTime();
  v81 = *(v82 - 8);
  v10 = *(v81 + 64);
  v12 = __chkstk_darwin(v82, v11);
  v79 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v80 = v74 - v15;
  v16 = dispatch_group_create();
  v17 = swift_allocObject();
  v93 = v17;
  *(v17 + 16) = 0;
  v77 = (v17 + 16);
  v18 = *(v5 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_bundleIdentifiers);
  v19 = *(v18 + 16);
  v94 = v5;
  v78 = v18;
  v90 = a3;
  v91 = v16;
  if (v19)
  {
    dispatch_group_enter(v16);
    v20 = a3[3];
    v21 = a3[4];
    v92 = sub_100020908(a3, v20);
    v22 = *(v18 + 16);
    if (v22)
    {
      v23 = sub_100033038(*(v18 + 16), 0);
      v24 = sub_100033CC0(&v99, v23 + 4, v22, v18);

      sub_100034580();
      if (v24 != v22)
      {
        __break(1u);
        goto LABEL_33;
      }

      v16 = v91;
      v5 = v94;
    }

    else
    {
      v23 = &_swiftEmptyArrayStorage;
    }

    v25 = swift_allocObject();
    *(v25 + 16) = v93;
    *(v25 + 24) = v16;
    v26 = swift_allocObject();
    v26[2] = v20;
    v26[3] = v21;
    v26[4] = sub_10003458C;
    v26[5] = v25;
    v27 = *(v21 + 48);

    v28 = v16;
    v27(v23, sub_1000345E8, v26, v20, v21);

    a3 = v90;
  }

  v29 = swift_allocObject();
  v92 = v29;
  *(v29 + 16) = 0;
  v76 = (v29 + 16);
  v30 = *(v5 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_exemptBundleIdentifiers);
  v31 = *(v30 + 16);
  v89 = v30;
  if (!v31)
  {
    goto LABEL_13;
  }

  dispatch_group_enter(v16);
  v32 = a3[3];
  v33 = a3[4];
  v75 = sub_100020908(a3, v32);
  v34 = *(v30 + 16);
  if (!v34)
  {
    v35 = &_swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v35 = sub_100033038(*(v30 + 16), 0);
  v36 = sub_100033CC0(&v99, v35 + 4, v34, v30);

  sub_100034580();
  if (v36 != v34)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = v91;
LABEL_12:
  v37 = swift_allocObject();
  *(v37 + 16) = v92;
  *(v37 + 24) = v16;
  v38 = swift_allocObject();
  v38[2] = v32;
  v38[3] = v33;
  v38[4] = sub_1000345F4;
  v38[5] = v37;
  v39 = *(v33 + 48);
  v40 = v16;

  v39(v35, sub_100034B60, v38, v32, v33);

  v5 = v94;
  v30 = v89;
  a3 = v90;
LABEL_13:
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v75 = (v41 + 16);
  v42 = *(v5 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_domains);
  if (!*(v42 + 16))
  {
    goto LABEL_19;
  }

  dispatch_group_enter(v16);
  v44 = a3[3];
  v43 = a3[4];
  v74[1] = sub_100020908(a3, v44);
  v45 = *(v42 + 16);
  if (!v45)
  {
    v46 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  v90 = v41;
  v46 = sub_100033038(v45, 0);
  v74[0] = sub_100033CC0(&v99, v46 + 4, v45, v42);

  sub_100034580();
  if (v74[0] != v45)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v41 = v90;
LABEL_18:
  v47 = swift_allocObject();
  v16 = v91;
  *(v47 + 16) = v41;
  *(v47 + 24) = v16;
  v48 = swift_allocObject();
  v48[2] = v44;
  v48[3] = v43;
  v48[4] = sub_100034658;
  v48[5] = v47;
  v49 = *(v43 + 56);
  v50 = v16;

  v49(v46, sub_100034B60, v48, v44, v43);

  v5 = v94;
  v30 = v89;
LABEL_19:
  v51 = v79;
  static DispatchTime.now()();
  v52 = v80;
  + infix(_:_:)();
  v53 = *(v81 + 8);
  v54 = v82;
  v53(v51, v82);
  OS_dispatch_group.wait(timeout:)();
  v53(v52, v54);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_100090D08 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100020D2C(v55, qword_100092E80);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Timed out waiting to categorize applications and web domains for filter", v58, 2u);
    }

    v59 = OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_interval;
    v60 = type metadata accessor for DateInterval();
    v61 = v85;
    (*(*(v60 - 8) + 16))(v85, v5 + v59, v60);
    (*(v83 + 104))(v61, enum case for DeviceActivityFilter.SegmentInterval.hourly(_:), v84);
    sub_10002CA28(0);
    sub_10002CA70(0);
    sub_10002CAB8();
    sub_10002CCBC(0);

    DeviceActivityFilter.init(segment:userAltDSID:deviceIdentifier:untokenizedApplications:untokenizedExemptApplications:untokenizedCategories:untokenizedWebDomains:untokenizedExemptWebDomains:)();
  }

  else
  {
    v97 = v30;
    v98 = v78;
    v96 = v42;
    v62 = v77;
    swift_beginAccess();
    v63 = *v62;

    if (v63)
    {

      sub_10003467C(&v98, &v96, v63);
    }

    v64 = v84;
    v65 = v76;
    v66 = v75;
    swift_beginAccess();
    v67 = *v66;
    if (v67)
    {

      sub_10003467C(&v98, &v96, v67);
    }

    v90 = v41;
    v95 = &_swiftEmptySetSingleton;
    swift_beginAccess();
    v68 = *v65;
    if (*v65)
    {
      v69 = *v65;

      sub_10003467C(&v97, &v95, v68);
    }

    v70 = OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_interval;
    v71 = type metadata accessor for DateInterval();
    v72 = v85;
    (*(*(v71 - 8) + 16))(v85, v5 + v70, v71);
    (*(v83 + 104))(v72, enum case for DeviceActivityFilter.SegmentInterval.hourly(_:), v64);
    v73 = v98;

    sub_10002CA28(v73);

    sub_10002CA70(v97);

    sub_10002CAB8();
    sub_10002CCBC(v96);

    sub_10002CCBC(v95);

    DeviceActivityFilter.init(segment:userAltDSID:deviceIdentifier:untokenizedApplications:untokenizedExemptApplications:untokenizedCategories:untokenizedWebDomains:untokenizedExemptWebDomains:)();
  }
}

uint64_t sub_10002E254(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = a1;
  if (a1)
  {
    swift_getAssociatedTypeWitness();
    sub_100020818(&qword_100091510, &qword_10006DC90);
    v4 = _dictionaryUpCast<A, B, C, D>(_:)();
  }

  a3(v4);
}

void sub_10002E320(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, const char *a5)
{
  if (a1)
  {
    swift_beginAccess();
    v8 = *(a3 + 16);
    *(a3 + 16) = a1;
  }

  else
  {
    if (qword_100090D08 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100020D2C(v11, qword_100092E80);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19[0] = v15;
      *v14 = 136446210;
      v19[3] = a2;
      swift_errorRetain();
      sub_100020818(&qword_100091508, &qword_10006DC88);
      v16 = String.init<A>(describing:)();
      v18 = sub_100033140(v16, v17, v19);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, a5, v14, 0xCu);
      sub_1000208BC(v15);
    }
  }

  dispatch_group_leave(a4);
}

uint64_t type metadata accessor for DeviceActivityQuery()
{
  result = qword_100091448;
  if (!qword_100091448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002E638()
{
  result = type metadata accessor for DateInterval();
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

uint64_t sub_10002E6DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18UsageTrackingAgent22DeviceActivityQuerying____lazy_storage___dataSource;
  swift_beginAccess();
  sub_1000297C4(v1 + v3, &v5, &qword_1000914E8, &qword_10006DC28);
  if (v6)
  {
    return sub_100028428(&v5, a1);
  }

  sub_100028FF4(&v5, &qword_1000914E8, &qword_10006DC28);
  a1[3] = type metadata accessor for DeviceActivityDataSource();
  a1[4] = &off_100086DA8;
  sub_1000283C4(a1);
  DeviceActivityDataSource.init()();
  sub_100020F40(a1, &v5);
  swift_beginAccess();
  sub_1000340A4(&v5, v1 + v3, &qword_1000914E8, &qword_10006DC28);
  return swift_endAccess();
}

uint64_t sub_10002E7E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18UsageTrackingAgent22DeviceActivityQuerying____lazy_storage___usageQuerying;
  swift_beginAccess();
  sub_1000297C4(v1 + v3, &v11, &qword_1000914E0, &qword_10006DC20);
  if (v12)
  {
    return sub_100028428(&v11, a1);
  }

  sub_100028FF4(&v11, &qword_1000914E0, &qword_10006DC20);
  v5 = *(v1 + OBJC_IVAR____TtC18UsageTrackingAgent22DeviceActivityQuerying__query);
  v6 = v1;
  v7 = (*(*(v1 + OBJC_IVAR____TtC18UsageTrackingAgent22DeviceActivityQuerying__query + 8) + 8))();
  v9 = v8;
  v10 = *(v8 + 8);
  a1[3] = v7;
  a1[4] = v8;
  sub_1000283C4(a1);
  v10(v7, v9);
  sub_100020F40(a1, &v11);
  swift_beginAccess();
  sub_1000340A4(&v11, v6 + v3, &qword_1000914E0, &qword_10006DC20);
  return swift_endAccess();
}

Class sub_10002E938(uint64_t a1)
{
  v205 = a1;
  v200 = type metadata accessor for _DeviceActivityData.WebDomainActivity();
  v195 = *(v200 - 8);
  v2 = *(v195 + 64);
  __chkstk_darwin(v200, v3);
  v5 = v170 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for _DeviceActivityData.ApplicationActivity();
  v222 = *(v224 - 8);
  v6 = *(v222 + 64);
  v8 = __chkstk_darwin(v224, v7);
  v10 = v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v8, v11);
  v218 = v170 - v13;
  v15 = __chkstk_darwin(v12, v14);
  v219 = v170 - v16;
  __chkstk_darwin(v15, v17);
  v214 = v170 - v18;
  v204 = type metadata accessor for _DeviceActivityData.CategoryActivity();
  v203 = *(v204 - 8);
  v19 = *(v203 + 64);
  __chkstk_darwin(v204, v20);
  v207 = v170 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for _DeviceActivityData.ActivitySegment();
  v221 = *(v22 - 8);
  v23 = *(v221 + 64);
  __chkstk_darwin(v22, v24);
  v26 = v170 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100020818(&qword_100091790, &qword_10006DC10);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8, v29);
  v196 = v170 - v30;
  v198 = sub_100020818(&qword_1000914D8, &qword_10006DC18);
  v220 = *(v198 - 8);
  v31 = *(v220 + 64);
  __chkstk_darwin(v198, v32);
  v197 = v170 - v33;
  v34 = type metadata accessor for _DeviceActivityData();
  v182 = *(v34 - 8);
  v35 = *(v182 + 64);
  __chkstk_darwin(v34, v36);
  v179 = v170 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for _DeviceActivityData.User();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38, v41);
  v43 = v170 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for DeviceActivityFilter();
  v180 = *(v181 - 8);
  v44 = *(v180 + 64);
  __chkstk_darwin(v181, v45);
  v201 = (v170 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v223 = v1;
  v47 = *&v1[OBJC_IVAR____TtC18UsageTrackingAgent22DeviceActivityQuerying__query];
  if (((*(*&v1[OBJC_IVAR____TtC18UsageTrackingAgent22DeviceActivityQuerying__query + 8] + 16))() & 1) == 0)
  {
    if (qword_100090D08 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100020D2C(v62, qword_100092E80);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v205;
    if (v65)
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Falling back to CoreDuet streams for budget tracking", v67, 2u);
    }

    sub_10002E7E4(&v226);
    v68 = v227;
    v69 = v228;
    sub_100020908(&v226, v227);
    isa = (*(v69 + 16))(*(v66 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_bundleIdentifiers), *(v66 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_exemptBundleIdentifiers), *(v66 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_domains), *(v66 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_categoryIdentifiers), v66 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_interval, v68, v69);
    sub_1000208BC(&v226);
    return isa;
  }

  v178 = v34;
  v193 = v5;
  if (qword_100090D08 != -1)
  {
    swift_once();
  }

  v191 = v26;
  v194 = v22;
  v192 = v10;
  v48 = type metadata accessor for Logger();
  sub_100020D2C(v48, qword_100092E80);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Using DeviceActivity database for budget tracking", v51, 2u);
  }

  sub_10002E6DC(&v226);
  sub_100020908(&v226, v227);
  DeviceActivityDataSource.localUser.getter();
  v52 = _DeviceActivityData.User.altDSID.getter();
  v54 = v53;
  v56 = *(v39 + 8);
  isa = (v39 + 8);
  v56(v43, v38);
  v57 = [objc_opt_self() sharedCategories];
  v229[3] = sub_100021848(0, &qword_1000914D0, CTCategories_ptr);
  v229[4] = &off_100090F70;
  v229[0] = v57;
  v58 = v201;
  sub_10002D740(v52, v54, v229, v201);

  sub_1000208BC(v229);
  sub_1000208BC(&v226);
  sub_10002E6DC(&v226);
  sub_100020908(&v226, v227);
  v59 = v225;
  v60 = DeviceActivityDataSource.activity(filteredBy:)();
  v61 = v207;
  if (v59)
  {
    (*(v180 + 8))(v58, v181);
    sub_1000208BC(&v226);
    return isa;
  }

  v71 = v60;
  sub_1000208BC(&v226);
  result = v71;
  v173 = *(v71 + 16);
  if (!v173)
  {
    goto LABEL_104;
  }

  v170[1] = 0;
  v72 = 0;
  v202 = OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_categoryIdentifiers;
  v176 = v71 + ((*(v182 + 80) + 32) & ~*(v182 + 80));
  v175 = v182 + 16;
  v174 = v182 + 8;
  v190 = (v221 + 48);
  v187 = (v221 + 32);
  v210 = CTCategoryIdentifierSystemHidden;
  v73 = v203;
  v209 = v203 + 16;
  v74 = (v222 + 8);
  v208 = (v203 + 8);
  v215 = 0x800000010006FDA0;
  v206 = 0x800000010006FDC0;
  v199 = 0x800000010006FDE0;
  v183 = 0x800000010006FE00;
  v217 = (v222 + 32);
  v184 = (v221 + 8);
  v171 = (v220 + 8);
  v75 = 0.0;
  v76 = v200;
  v77 = v204;
  v172 = result;
  v225 = v222 + 16;
  v189 = v195 + 16;
  v188 = (v195 + 8);
  while (1)
  {
    if (v72 >= *(result + 2))
    {
      __break(1u);
      return result;
    }

    v78 = v182;
    v79 = *(v182 + 72);
    v177 = v72;
    v80 = v176 + v79 * v72;
    v81 = v179;
    v82 = v178;
    (*(v182 + 16))(v179, v80, v178);
    _DeviceActivityData.activitySegments(filteredBy:)();
    (*(v78 + 8))(v81, v82);
    v83 = v196;
    _DeviceActivityResults.next()();
    v186 = *v190;
    if (v186(v83, 1, v194) != 1)
    {
      break;
    }

LABEL_16:
    v72 = v177 + 1;
    (*v171)(v197, v198);
    result = v172;
    if (v72 == v173)
    {
      goto LABEL_107;
    }
  }

  v185 = *v187;
  v185(v191, v196, v194);
  while (1)
  {
    v87 = _DeviceActivityData.ActivitySegment.categoryActivities.getter();
    v213 = *(v87 + 16);
    if (v213)
    {
      break;
    }

LABEL_20:

    v84 = v191;
    v85 = v194;
    (*v184)(v191, v194);
    v86 = v196;
    _DeviceActivityResults.next()();
    if (v186(v86, 1, v85) == 1)
    {
      goto LABEL_16;
    }

    v185(v84, v86, v85);
  }

  v88 = 0;
  v212 = v87 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
  v89 = v205;
  v211 = v87;
  while (1)
  {
    if (v88 >= *(v87 + 16))
    {
      __break(1u);
LABEL_107:

      v58 = v201;
      goto LABEL_105;
    }

    v90 = *(v73 + 72);
    v216 = v88;
    (*(v73 + 16))(v61, v212 + v90 * v88, v77);
    _DeviceActivityData.CategoryActivity.identifier.getter();
    v91 = String._bridgeToObjectiveC()();

    v223 = v91;
    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v93;
    if (v92 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v58 != v94)
    {
      break;
    }

LABEL_29:
    (*v208)(v61, v77);
    v96 = v223;

LABEL_30:
    v87 = v211;
    v97 = v216;
LABEL_31:
    v88 = v97 + 1;
    if (v88 == v213)
    {
      goto LABEL_20;
    }
  }

  v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v95)
  {
    goto LABEL_29;
  }

  v98 = *(v89 + v202);
  if (!*(v98 + 16))
  {
    goto LABEL_42;
  }

  v99 = *(v98 + 40);
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v100 = Hasher._finalize()();

  v101 = -1 << *(v98 + 32);
  v102 = v100 & ~v101;
  if ((*(v98 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102))
  {
    v103 = ~v101;
    while (1)
    {
      v104 = *(*(v98 + 48) + 8 * v102);
      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v106;
      if (v105 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v107)
      {

        goto LABEL_56;
      }

      v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v109)
      {
        break;
      }

      v102 = (v102 + 1) & v103;
      if (((*(v98 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

LABEL_56:
    v111 = v214;
  }

  else
  {
LABEL_42:

    v110 = DeviceActivityFilter.includesAllActivity.getter();
    v111 = v214;
    if ((v110 & 1) == 0)
    {
      v61 = v207;
      v112 = _DeviceActivityData.CategoryActivity.applicationActivities.getter();
      v113 = *(v112 + 16);
      if (v113)
      {
        v114 = *(v222 + 80);
        v221 = v112;
        v115 = v112 + ((v114 + 32) & ~v114);
        v116 = *(v222 + 72);
        v117 = *(v222 + 16);
        v118 = v224;
        v119 = v192;
        do
        {
          v117(v119, v115, v118);
          _DeviceActivityData.ApplicationActivity.totalActivityDuration.getter();
          v121 = v120;
          (*v74)(v119, v118);
          v75 = v75 + v121;
          v115 += v116;
          --v113;
        }

        while (v113);

        v61 = v207;
      }

      else
      {
      }

      v122 = _DeviceActivityData.CategoryActivity.webDomainActivities.getter();
      v123 = *(v122 + 16);
      if (v123)
      {
        v124 = *(v195 + 80);
        v221 = v122;
        v125 = v122 + ((v124 + 32) & ~v124);
        v126 = *(v195 + 72);
        v127 = *(v195 + 16);
        v128 = v193;
        v129 = v188;
        do
        {
          v127(v128, v125, v76);
          _DeviceActivityData.WebDomainActivity.totalActivityDuration.getter();
          v131 = v130;
          (*v129)(v128, v76);
          v75 = v75 + v131;
          v125 += v126;
          --v123;
        }

        while (v123);

        v61 = v207;
      }

      else
      {
      }

      v77 = v204;
      (*v208)(v61, v204);
      v73 = v203;
      v87 = v211;
      v97 = v216;
      v89 = v205;
      goto LABEL_31;
    }
  }

  v132 = _DeviceActivityData.CategoryActivity.applicationActivities.getter();
  v133 = v224;
  v221 = *(v132 + 16);
  if (!v221)
  {
    v135 = &_swiftEmptyArrayStorage;
LABEL_83:

    v148 = v135[2];
    if (v148)
    {
      v149 = v135 + ((*(v222 + 80) + 32) & ~*(v222 + 80));
      v150 = *(v222 + 72);
      v151 = *(v222 + 16);
      v152 = &_swiftEmptyArrayStorage;
      do
      {
        v153 = v219;
        v154 = v224;
        v151(v219, v149, v224);
        _DeviceActivityData.ApplicationActivity.totalActivityDuration.getter();
        v156 = v155;
        (*v74)(v153, v154);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v152 = sub_1000465E8(0, *(v152 + 2) + 1, 1, v152);
        }

        v158 = *(v152 + 2);
        v157 = *(v152 + 3);
        if (v158 >= v157 >> 1)
        {
          v152 = sub_1000465E8((v157 > 1), v158 + 1, 1, v152);
        }

        *(v152 + 2) = v158 + 1;
        *&v152[8 * v158 + 32] = v156;
        v149 += v150;
        --v148;
      }

      while (v148);
    }

    else
    {

      v152 = &_swiftEmptyArrayStorage;
    }

    v159 = *(v152 + 2);
    v89 = v205;
    v76 = v200;
    v77 = v204;
    v73 = v203;
    v61 = v207;
    if (!v159)
    {
      v161 = 0.0;
      goto LABEL_101;
    }

    if (v159 > 3)
    {
      v160 = v159 & 0x7FFFFFFFFFFFFFFCLL;
      v162 = v152 + 48;
      v161 = 0.0;
      v163 = v159 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v164 = *v162;
        v161 = v161 + *(v162 - 2) + *(v162 - 1) + *v162 + *(v162 + 1);
        v162 += 32;
        v163 -= 4;
      }

      while (v163);
      if (v159 == v160)
      {
LABEL_101:

        _DeviceActivityData.CategoryActivity.totalActivityDuration.getter();
        v169 = v168;

        (*v208)(v61, v77);
        if (v169 - v161 > 0.0)
        {
          v75 = v75 + v169 - v161;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v160 = 0;
      v161 = 0.0;
    }

    v165 = v159 - v160;
    v166 = &v152[8 * v160 + 32];
    do
    {
      v167 = *v166++;
      v161 = v161 + v167;
      --v165;
    }

    while (v165);
    goto LABEL_101;
  }

  v134 = 0;
  v135 = &_swiftEmptyArrayStorage;
  v220 = v132;
  while (v134 < *(v132 + 16))
  {
    v58 = v74;
    v136 = (*(v222 + 80) + 32) & ~*(v222 + 80);
    v137 = *(v222 + 72);
    (*(v222 + 16))(v111, v132 + v136 + v137 * v134, v133);
    if (_DeviceActivityData.ApplicationActivity.isTrusted.getter())
    {
      v139 = _DeviceActivityData.ApplicationActivity.bundleIdentifier.getter();
      v140 = v138;
      if (v139 == 0xD000000000000010 && v215 == v138 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v139 == 0xD000000000000016 && v206 == v140 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v139 == 0xD000000000000015 && v199 == v140 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v139 == 0xD000000000000019 && v183 == v140)
      {

LABEL_75:
        v141 = v111;
        v142 = *v217;
        (*v217)(v218, v141, v133);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v226 = v135;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100046A90(0, v135[2] + 1, 1);
          v135 = v226;
        }

        v145 = v135[2];
        v144 = v135[3];
        if (v145 >= v144 >> 1)
        {
          sub_100046A90(v144 > 1, v145 + 1, 1);
          v135 = v226;
        }

        v135[2] = v145 + 1;
        v146 = v135 + v136 + v145 * v137;
        v133 = v224;
        v142(v146, v218, v224);
        v111 = v214;
        v74 = v58;
        goto LABEL_60;
      }

      v147 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v147)
      {
        goto LABEL_75;
      }
    }

    v74 = v58;
    (*v58)(v111, v133);
LABEL_60:
    ++v134;
    v132 = v220;
    if (v221 == v134)
    {
      goto LABEL_83;
    }
  }

  __break(1u);
LABEL_104:

LABEL_105:
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  (*(v180 + 8))(v58, v181);
  return isa;
}

uint64_t sub_10002FFEC(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = *(*(sub_100020818(&qword_1000913D0, &qword_10006D9C0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for DateInterval();
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v6 = *(v5 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000300FC, 0, 0);
}

uint64_t sub_1000300FC()
{
  v62 = v0;
  v1 = swift_allocObject();
  v0[23] = v1;
  *(v1 + 16) = &_swiftEmptyDictionarySingleton;
  type metadata accessor for Feature();
  if ((static Feature.isDeviceActivityBiomeEnabled.getter() & 1) == 0)
  {
    if (qword_100090D28 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100020D2C(v23, qword_100092EE0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Using CoreDuet to query for uncategorized web usage", v26, 2u);
    }

    v27 = v0[16];

    sub_10002E7E4(v0 + 2);
    v28 = v0[5];
    v29 = v0[6];
    sub_100020908(v0 + 2, v28);
    v30 = *(v29 + 24);
    v59 = (v30 + *v30);
    v31 = v30[1];
    v32 = swift_task_alloc();
    v0[39] = v32;
    *v32 = v0;
    v32[1] = sub_10003154C;
    v18 = v0[15];
    v19 = v28;
    v20 = v29;
    v21 = v59;

    return v21(v18, v19, v20);
  }

  if (qword_100090D28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[24] = sub_100020D2C(v2, qword_100092EE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Using Biome to query for uncategorized web usage", v5, 2u);
  }

  if (qword_100090CF8 != -1)
  {
    swift_once();
  }

  v6 = v0[22];
  v7 = qword_100092E60;
  v8 = *algn_100092E68;
  (*(*algn_100092E68 + 40))(v0[15], qword_100092E60, *algn_100092E68);
  v9 = (*(v8 + 48))(v6, v7, v8);
  v11 = v10;
  v0[25] = v9;
  v0[26] = v10;
  if (*(v10 + 16))
  {
    v12 = qword_100090CE8;

    if (v12 != -1)
    {
      swift_once();
    }

    sub_100020F40(&qword_100092E10, (v0 + 7));
    v13 = v0[10];
    v14 = v0[11];
    sub_100020908(v0 + 7, v13);
    v15 = *(v14 + 40);
    v58 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[27] = v17;
    *v17 = v0;
    v17[1] = sub_100030810;
    v18 = v11;
    v19 = v13;
    v20 = v14;
    v21 = v58;

    return v21(v18, v19, v20);
  }

  v34 = v0[19];
  v33 = v0[20];
  v35 = v0[18];
  v36 = v0[15];

  (*(v34 + 16))(v33, v36, v35);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v0[22];
  v42 = v0[19];
  v41 = v0[20];
  v43 = v0[18];
  if (v39)
  {
    v44 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = v60;
    *v44 = 136446210;
    sub_100034B18(&qword_1000914B0, &type metadata accessor for DateInterval);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v40;
    v47 = v46;
    v48 = *(v42 + 8);
    v48(v41, v43);
    v49 = sub_100033140(v45, v47, &v61);

    *(v44 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v37, v38, "No web domains were used during %{public}s", v44, 0xCu);
    sub_1000208BC(v60);

    v48(v57, v43);
  }

  else
  {

    v50 = *(v42 + 8);
    v50(v41, v43);
    v50(v40, v43);
  }

  v51 = *(v1 + 16);

  v53 = v0[21];
  v52 = v0[22];
  v54 = v0[20];
  v55 = v0[17];

  v56 = v0[1];

  return v56(v51);
}

uint64_t sub_100030810(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  v4[28] = a1;
  v4[29] = v1;

  v7 = v3[26];
  if (v1)
  {
    v8 = v4[25];
    swift_bridgeObjectRelease_n();

    v9 = sub_10003174C;
  }

  else
  {

    v9 = sub_100030960;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100030960()
{
  v39 = v0;
  if (*(v0[28] + 16))
  {
    v1 = v0[10];
    v2 = v0[11];
    sub_100020908(v0 + 7, v1);
    v3 = *(v2 + 24);
    v36 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[30] = v5;
    *v5 = v0;
    v5[1] = sub_100030CFC;
    v6 = v0[25];

    return v36(v6, v1, v2);
  }

  else
  {
    v8 = v0[25];
    v9 = v0[26];
    v10 = v0[24];
    v11 = v0[21];
    v12 = v0[18];
    v13 = v0[19];
    v14 = v0[15];

    (*(v13 + 16))(v11, v14, v12);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[21];
    v19 = v0[22];
    v21 = v0[18];
    v20 = v0[19];
    if (v17)
    {
      v37 = v0[22];
      v22 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38 = v35;
      *v22 = 136446210;
      sub_100034B18(&qword_1000914B0, &type metadata accessor for DateInterval);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v26 = *(v20 + 8);
      v26(v18, v21);
      v27 = sub_100033140(v23, v25, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v15, v16, "No uncategorized web domains were used during %{public}s", v22, 0xCu);
      sub_1000208BC(v35);

      v26(v37, v21);
    }

    else
    {

      v28 = *(v20 + 8);
      v28(v18, v21);
      v28(v19, v21);
    }

    v29 = *(v0[23] + 16);

    sub_1000208BC(v0 + 7);

    v31 = v0[21];
    v30 = v0[22];
    v32 = v0[20];
    v33 = v0[17];

    v34 = v0[1];

    return v34(v29);
  }
}

uint64_t sub_100030CFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v8 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {
    v5 = v3[28];

    v6 = sub_100031800;
  }

  else
  {
    v6 = sub_100030E18;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100030E18()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_100020908(v0 + 7, v1);
  v3 = *(v2 + 32);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_100030F44;
  v6 = v0[26];

  return v8(v6, v1, v2);
}

uint64_t sub_100030F44(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v11 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {
    v5 = v3[31];
    v6 = v3[28];

    v7 = sub_1000318D4;
  }

  else
  {
    v8 = v3[25];
    v9 = v3[26];

    v7 = sub_10003107C;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_10003107C()
{
  if (qword_100090CD8 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[17];
  v5 = v0[15];
  v6 = unk_100092E00;
  DateInterval.duration.getter();
  DateInterval.start.getter();
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  v8 = static EventStreams.Biome.all.getter();
  v0[36] = sub_100031A48(v8);

  v9 = swift_allocObject();
  v0[37] = v9;
  *(v9 + 16) = v1;
  *(v9 + 24) = v2;
  v10 = *(v6 + 32);

  v17 = v10 + *v10;
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[38] = v12;
  *v12 = v0;
  v12[1] = sub_1000312C8;
  v13 = v0[34];
  v14 = v0[31];
  v15 = v0[17];
  v16 = v0[15];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1000312C8()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 272);
  v5 = *(*v0 + 248);
  v6 = *(*v0 + 136);
  v8 = *v0;

  sub_100028FF4(v6, &qword_1000913D0, &qword_10006D9C0);

  return _swift_task_switch(sub_100031470, 0, 0);
}

uint64_t sub_100031470()
{
  (*(v0[19] + 8))(v0[22], v0[18]);
  sub_1000208BC(v0 + 7);
  v1 = v0[23];
  swift_beginAccess();
  v2 = *(v1 + 16);

  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[17];

  v7 = v0[1];

  return v7(v2);
}

uint64_t sub_10003154C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v7 = sub_1000319A8;
  }

  else
  {
    *(v4 + 328) = a1;
    v7 = sub_100031674;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100031674()
{
  v1 = v0[23];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[41];

  sub_1000208BC(v0 + 2);
  v3 = v0[23];
  swift_beginAccess();
  v4 = *(v3 + 16);

  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[17];

  v9 = v0[1];

  return v9(v4);
}

uint64_t sub_10003174C()
{
  v1 = v0[23];
  (*(v0[19] + 8))(v0[22], v0[18]);
  sub_1000208BC(v0 + 7);

  v2 = v0[29];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[17];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100031800()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[18];
  v6 = v0[19];

  (*(v6 + 8))(v4, v5);
  sub_1000208BC(v0 + 7);

  v7 = v0[32];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  v11 = v0[17];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000318D4()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[18];
  v6 = v0[19];

  (*(v6 + 8))(v4, v5);
  sub_1000208BC(v0 + 7);

  v7 = v0[35];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  v11 = v0[17];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000319A8()
{
  v1 = v0[23];
  sub_1000208BC(v0 + 2);

  v2 = v0[40];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[17];

  v7 = v0[1];

  return v7();
}

char *sub_100031A48(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_100046AD4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100021848(0, &qword_1000914C8, NSObject_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100046AD4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100034094(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100021848(0, &qword_1000914C8, NSObject_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100046AD4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100034094(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100031C44(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v4 = [a1 categoryUsage];
  sub_100021848(0, &qword_1000914B8, USCategoryUsageReport_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v8 = v5;
    v5 = 0;
    v40 = i;
    v41 = v8 & 0xC000000000000001;
    v38 = v8 & 0xFFFFFFFFFFFFFF8;
    v39 = v8;
    v37 = v8 + 32;
    v44 = a2;
    while (1)
    {
      if (v41)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v38 + 16))
        {
          goto LABEL_33;
        }

        v9 = *(v37 + 8 * v7);
      }

      v10 = v9;
      v11 = __OFADD__(v7, 1);
      v12 = v7 + 1;
      if (v11)
      {
        break;
      }

      v13 = [v9 webUsage];
      sub_100021848(0, &qword_1000914C0, USWebUsageReport_ptr);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = v12;
      if (v14 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = v10;
      v16 = &off_10008E000;
      if (v15)
      {
        if (v15 < 1)
        {
          goto LABEL_32;
        }

        v17 = 0;
        v46 = v15;
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v18 = *(v14 + 8 * v17 + 32);
          }

          v19 = v18;
          if ([v18 v16[441]])
          {
            v20 = [v19 domainIdentifier];
            v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v23 = v22;

            v48[0] = v21;
            v48[1] = v23;
            __chkstk_darwin(v24, v25);
            v36[2] = v48;
            if (sub_100033E18(sub_10003403C, v36, a2))
            {
              v26 = v45;
              swift_beginAccess();
              v27 = *(v26 + 16);
              if (*(v27 + 16) && (v28 = sub_100033790(v21, v23), (v29 & 1) != 0))
              {
                v30 = *(*(v27 + 56) + 8 * v28);
                swift_endAccess();
                [v30 doubleValue];
              }

              else
              {
                swift_endAccess();
              }

              [v19 totalUsageTime];
              isa = Double._bridgeToObjectiveC()().super.super.isa;
              v32 = v45;
              swift_beginAccess();
              v33 = *(v32 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v47 = *(v32 + 16);
              *(v32 + 16) = 0x8000000000000000;
              sub_100033EC4(isa, v21, v23, isUniquelyReferenced_nonNull_native);

              *(v32 + 16) = v47;
              swift_endAccess();

              a2 = v44;
              v16 = &off_10008E000;
            }

            else
            {
            }

            v15 = v46;
          }

          else
          {
          }

          ++v17;
        }

        while (v15 != v17);
      }

      v7 = v43;
      if (v43 == v40)
      {
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }
}

uint64_t sub_1000321C8(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for DateInterval();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a2);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_1000322F4;

  return sub_10002FFEC(v9);
}

uint64_t sub_1000322F4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *v1;

  v7 = v3[2];
  (*(v3[4] + 8))(v3[5], v3[3]);

  if (v2)
  {
    isa = _convertErrorToNSError(_:)();

    v9 = isa;
    v10 = 0;
  }

  else
  {
    sub_100021848(0, &qword_1000914F0, NSNumber_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
  }

  v11 = isa;
  v12 = v4[6];
  v12[2](v12, v10, v9);

  _Block_release(v12);

  v13 = *(v6 + 8);

  return v13();
}

id sub_1000327D8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100032894()
{
  if (qword_100090CD8 != -1)
  {
    swift_once();
  }

  return qword_100092DF8;
}

uint64_t sub_1000328E4()
{
  if (qword_100090D00 != -1)
  {
    swift_once();
  }

  return byte_100092E70;
}

uint64_t sub_100032930(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10003297C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10002C9DC;

  return v7();
}

uint64_t sub_100032A64(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100029CC0;

  return v8();
}

uint64_t sub_100032B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v26 - v12;
  sub_1000297C4(a3, v26 - v12, &qword_1000913B8, &qword_10006DC30);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100028FF4(v13, &qword_1000913B8, &qword_10006DC30);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = String.utf8CString.getter() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_100028FF4(a3, &qword_1000913B8, &qword_10006DC30);

    return v24;
  }

LABEL_8:
  sub_100028FF4(a3, &qword_1000913B8, &qword_10006DC30);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100032E48(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032F40;

  return v7(a1);
}

uint64_t sub_100032F40()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_100033038(uint64_t a1, uint64_t a2)
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

  sub_100020818(&qword_100091518, &qword_10006DC98);
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

uint64_t sub_1000330E4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100033140(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100033140(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003320C(v11, 0, 0, 1, a1, a2);
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
    sub_100020860(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000208BC(v11);
  return v7;
}

unint64_t sub_10003320C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100033318(a5, a6);
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

char *sub_100033318(uint64_t a1, unint64_t a2)
{
  v4 = sub_100033364(a1, a2);
  sub_100033494(&off_100086670);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100033364(uint64_t a1, unint64_t a2)
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

  v6 = sub_100033580(v5, 0);
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
        v7 = sub_100033580(v10, 0);
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

uint64_t sub_100033494(uint64_t result)
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

  result = sub_1000335F4(result, v12, 1, v3);
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

void *sub_100033580(uint64_t a1, uint64_t a2)
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

  sub_100020818(&qword_100091498, &qword_10006DBF8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000335F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100020818(&qword_100091498, &qword_10006DBF8);
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

_BYTE **sub_1000336E8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_1000336F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for URL();
  sub_100034B18(&qword_100091158, &type metadata accessor for URL);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100033850(a1, v5);
}

unint64_t sub_100033790(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100033A10(a1, a2, v6);
}

unint64_t sub_10003380C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100033AC8(a1, v4);
}

unint64_t sub_100033850(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_100034B18(&qword_1000914A8, &type metadata accessor for URL);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_100033A10(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100033AC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100033B90(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100033BEC(v8);
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

uint64_t sub_100033C40()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100033C78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_100033CC0(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_100033E18(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_100033EC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100033790(a2, a3);
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
      sub_1000470CC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100033790(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_1000474E0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_10003403C(void *a1)
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

_OWORD *sub_100034094(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000340A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100020818(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10003410C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100034154()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100029CC0;

  return sub_1000321C8(v2, v3, v4);
}

uint64_t sub_10003420C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002C9DC;

  return sub_10003297C(v2, v3, v5);
}

uint64_t sub_1000342CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003430C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002C9DC;

  return sub_100032A64(a1, v4, v5, v7);
}

uint64_t sub_1000343D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100034410(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002C9DC;

  return sub_100032E48(a1, v5);
}

uint64_t sub_1000344C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100029CC0;

  return sub_100032E48(a1, v5);
}

uint64_t sub_1000345B0()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000345E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_10002E254(a1, a2, *(v2 + 32));
}

uint64_t sub_100034618()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003467C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100020818(&qword_1000914F8, &qword_10006DC80);
  v49[3] = v4;
  v49[4] = sub_100034A1C();
  v49[0] = a3;
  v5 = sub_100020908(v49, v4);
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v5, v5);
  v8 = v41 - v7;
  (*(v9 + 16))(v41 - v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_1000283C4(v46);
  v11 = -1 << *(*v8 + 32);
  v12 = ~v11;
  v13 = (*v8 + 64);
  v14 = *v13;
  v15 = -v11;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  *v10 = *v8;
  v10[1] = v13;
  v10[2] = v12;
  v10[3] = 0;
  v10[4] = v16 & v14;

  while (1)
  {
    sub_100034AC8(v46, AssociatedTypeWitness);
    dispatch thunk of IteratorProtocol.next()();
    if (!v45)
    {
      break;
    }

    sub_100028428(&v44, v41);
    v17 = v42;
    v18 = v43;
    sub_100020908(v41, v42);
    v19 = (*(v18 + 8))(v17, v18);
    if (v20)
    {
      sub_10005E9F8(&v40, v19, v20);
    }

    v21 = v42;
    v22 = v43;
    sub_100020908(v41, v42);
    v23 = (*(v22 + 16))(v21, v22);
    if (v23)
    {
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = (v23 + 40);
        do
        {
          v26 = *(v25 - 1);
          v27 = *v25;

          sub_10005E9F8(&v40, v26, v27);

          v25 += 2;
          --v24;
        }

        while (v24);
      }
    }

    v28 = v42;
    v29 = v43;
    sub_100020908(v41, v42);
    v30 = (*(v29 + 24))(v28, v29);
    if (v31)
    {
      sub_10005E9F8(&v40, v30, v31);
    }

    v32 = v42;
    v33 = v43;
    sub_100020908(v41, v42);
    v34 = (*(v33 + 32))(v32, v33);
    if (v34)
    {
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = (v34 + 40);
        do
        {
          v37 = *(v36 - 1);
          v38 = *v36;

          sub_10005E9F8(&v40, v37, v38);

          v36 += 2;
          --v35;
        }

        while (v35);
      }
    }

    sub_1000208BC(v41);
  }

  sub_1000208BC(v46);
  return sub_1000208BC(v49);
}

unint64_t sub_100034A1C()
{
  result = qword_100091500;
  if (!qword_100091500)
  {
    sub_100034A80(&qword_1000914F8, &qword_10006DC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091500);
  }

  return result;
}

uint64_t sub_100034A80(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100034AC8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100034B18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100034B84()
{
  v1 = [*v0 sharingAppleIDs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100034C04()
{
  v0 = type metadata accessor for Logger();
  sub_100034C7C(v0, qword_100092E80);
  sub_100020D2C(v0, qword_100092E80);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100034C7C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100034D40(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100034C7C(v3, a2);
  sub_100020D2C(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100034DB8()
{
  v0 = type metadata accessor for Logger();
  sub_100034C7C(v0, qword_100092EE0);
  sub_100020D2C(v0, qword_100092EE0);
  return Logger.init(subsystem:category:)();
}

id sub_100035220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvitationHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100035288()
{
  result = qword_1000915B0;
  if (!qword_1000915B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000915B0);
  }

  return result;
}

uint64_t sub_1000352FC()
{
  v1 = [*v0 receivedInvitations];
  sub_100035884();
  sub_1000358D0();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_100035384(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = aBlock - v15;
  sub_100035814(a2, aBlock - v15);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  isa = 0;
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v18 + 8))(v16, v17);
  }

  if (a4)
  {
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100035554;
    aBlock[3] = &unk_100087110;
    a4 = _Block_copy(aBlock);
  }

  [v6 sendInvitationToDestination:a1 expirationDate:isa context:a3 serverAcknowledgedBlock:a4];
  _Block_release(a4);
}

void sub_100035554(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1000355E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  if (a3)
  {
    v9[4] = a3;
    v9[5] = a4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1000356BC;
    v9[3] = &unk_1000870E8;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v7 acceptInvitation:a1 withContext:a2 serverAcknowledgedBlock:v8];
  _Block_release(v8);
}

void sub_1000356BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_100035728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1000356BC;
    v7[3] = &unk_1000870C0;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v5 declineInvitation:a1 serverAcknowledgedBlock:v6];
  _Block_release(v6);
}

uint64_t sub_1000357FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100035814(uint64_t a1, uint64_t a2)
{
  v4 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100035884()
{
  result = qword_100091710;
  if (!qword_100091710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100091710);
  }

  return result;
}

unint64_t sub_1000358D0()
{
  result = qword_100091620;
  if (!qword_100091620)
  {
    sub_100035884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091620);
  }

  return result;
}

uint64_t sub_100035938(uint64_t a1)
{
  *(a1 + 8) = sub_1000359A0(&qword_100091628);
  result = sub_1000359A0(&qword_1000917D0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000359A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _DeviceActivityData.Metadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000359E8(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t *))
{
  v5 = a2;
  v6 = a3 & 1;
  return a4(a1, &v5);
}

void sub_100035A28(uint64_t a1)
{
  sub_1000297C4(a1, v10, &qword_100091360, &unk_10006D960);
  v2 = v11;
  if (v11)
  {
    v3 = sub_100020908(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    __chkstk_darwin(v3, v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v7, v2);
    sub_1000208BC(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = String._bridgeToObjectiveC()();
  [v1 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

uint64_t sub_100035B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_1000297C4(a3, v28 - v12, &qword_1000913B8, &qword_10006DC30);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_100028FF4(v13, &qword_1000913B8, &qword_10006DC30);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_100028FF4(a3, &qword_1000913B8, &qword_10006DC30);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100028FF4(a3, &qword_1000913B8, &qword_10006DC30);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_100035E98(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v42 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v7 = *(*(v42 - 8) + 64);
  v9 = __chkstk_darwin(v42, v8);
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9, v11);
  v41 = &v31 - v14;
  v38 = *(a3 + 16);
  if (v38)
  {
    v15 = 0;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v37 = v13 + 16;
    v40 = _swiftEmptyArrayStorage;
    v33 = a2;
    v34 = a3;
    v32 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v17 = *(v13 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v13;
      v21 = a1;
      v22 = v41;
      (*(v13 + 16))(v41, v19, v42);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v3)
      {
        (*v35)(v41, v42);
        v30 = v40;

        return v30;
      }

      if (v24)
      {
        v25 = *v36;
        (*v36)(v39, v41, v42);
        v26 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100046AF4(0, v26[2] + 1, 1);
          v26 = v43;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          sub_100046AF4(v28 > 1, v29 + 1, 1);
          v26 = v43;
        }

        v26[2] = v29 + 1;
        v40 = v26;
        result = (v25)(v26 + v16 + v29 * v17, v39, v42);
        a3 = v34;
        a1 = v32;
      }

      else
      {
        result = (*v35)(v41, v42);
        a3 = v18;
      }

      ++v15;
      v13 = v20;
      if (v38 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
LABEL_14:

    return v40;
  }

  return result;
}

uint64_t sub_100036168(uint64_t (*a1)(void), uint64_t a2)
{
  type metadata accessor for DeviceActivityAuthorization();
  if ((static DeviceActivityAuthorization.sharingEnabled.getter() & 1) == 0)
  {
    return a1(0);
  }

  if (qword_100090D38 != -1)
  {
    swift_once();
  }

  return sub_100036B14(a1, a2);
}

uint64_t sub_100036200(uint64_t a1)
{
  if (qword_100090D38 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_1000379FC(a1);
}

uint64_t sub_10003626C(uint64_t a1)
{
  if (qword_100090D38 != -1)
  {
    swift_once();
  }

  v2 = *(qword_100092EF8 + *(*qword_100092EF8 + 224));
  CKSyncEngine.state.getter();
  v3 = sub_10003F194(a1);
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v3);
}

id sub_100036324()
{
  result = [objc_allocWithZone(type metadata accessor for SyncCoordinator()) init];
  qword_100091630 = result;
  return result;
}

uint64_t sub_100036354()
{
  v0 = type metadata accessor for DeviceActivityDataLocations();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = __chkstk_darwin(v0, v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for DeviceActivityDataStore();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100090D30 != -1)
  {
    swift_once();
  }

  v15 = qword_100091630;
  v16 = type metadata accessor for DeviceActivityAuthorization();
  v17 = objc_opt_self();
  v18 = v15;
  v19 = [v17 standardUserDefaults];
  DeviceActivityDataStore.init()();
  DeviceActivityDataLocations.init()();
  if (qword_100090D48 != -1)
  {
    swift_once();
  }

  v20 = [qword_1000918D0 deviceActivity];
  v21 = sub_100020818(&qword_100091670, &qword_10006DF80);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  (*(v1 + 16))(v6, v9, v0);
  v25 = v20;
  v26 = sub_100048350(v16, v18, v19, v14, v6, v25, v24);

  result = (*(v1 + 8))(v9, v0);
  qword_100092EF8 = v26;
  return result;
}

NSString sub_1000365E8()
{
  result = String._bridgeToObjectiveC()();
  qword_100092F00 = result;
  return result;
}

uint64_t sub_1000366AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100020818(qword_1000919E0, &unk_10006DFA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6, v9);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10, v13);
  v15 = &v33 - v14;
  v16 = v2 + *(*v2 + 184);
  v17 = DeviceActivityDataStore.localZones.getter();
  v18 = *(v17 + 16);
  if (v18)
  {
    v33 = v3;
    v34 = a1;
    v35 = a2;
    v40 = _swiftEmptyArrayStorage;
    v39 = v6;
    v19 = v17;
    specialized ContiguousArray.reserveCapacity(_:)();
    v38 = sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
    v36 = v19;
    v37 = CKCurrentUserDefaultName;
    v20 = v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v21 = *(v7 + 72);
    do
    {
      sub_1000297C4(v20, v15, qword_1000919E0, &unk_10006DFA0);
      sub_1000297C4(v15, v12, qword_1000919E0, &unk_10006DFA0);
      v22 = *v12;
      v23 = v12[1];
      v24 = *(v39 + 48);
      v25._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25._object = v26;
      v27._countAndFlagsBits = v22;
      v27._object = v23;
      CKRecordZoneID.init(zoneName:ownerName:)(v27, v25);
      sub_100028FF4(v15, qword_1000919E0, &unk_10006DFA0);
      v28 = type metadata accessor for _SegmentInterval();
      (*(*(v28 - 8) + 8))(v12 + v24, v28);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v29 = v40[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v20 += v21;
      --v18;
    }

    while (v18);

    v30 = v40;
    a1 = v34;
    a2 = v35;
    v3 = v33;
  }

  else
  {

    v30 = _swiftEmptyArrayStorage;
  }

  v31 = *(v3 + 32);
  sub_10003FEB8(v30, a1, a2);
}

uint64_t sub_100036B14(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v137 = *(v6 - 8);
  v7 = *(v137 + 64);
  __chkstk_darwin(v6, v8);
  v10 = (&v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v133 = sub_100020818(qword_1000919E0, &unk_10006DFA0);
  v130 = *(v133 - 8);
  v11 = *(v130 + 64);
  v13 = __chkstk_darwin(v133, v12);
  v129 = (&v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v13, v15);
  isa = (&v116 - v17);
  __chkstk_darwin(v16, v18);
  v128 = (&v116 - v19);
  v20 = v2[2];
  if (![swift_getObjCClassFromMetadata() isAuthorized])
  {
    if (qword_100090D18 == -1)
    {
LABEL_5:
      v27 = type metadata accessor for Logger();
      sub_100020D2C(v27, qword_100092EB0);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Not uploading local data because Device Activity is not authorized.", v30, 2u);
      }

      return (a1)(0);
    }

LABEL_63:
    swift_once();
    goto LABEL_5;
  }

  v21 = *(v2 + *(*v2 + 216));
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100049BDC;
  *(v22 + 24) = v2;
  aBlock[4] = sub_100049BF4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003EE58;
  aBlock[3] = &unk_100087418;
  v23 = _Block_copy(aBlock);

  dispatch_sync(v21, v23);
  _Block_release(v23);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v24 = *(*v2 + 184);
  v25 = DeviceActivityDataStore.localZones.getter();
  v131 = 0;
  v135 = v10;
  v116 = a2;
  v117 = a1;
  v126 = *(v25 + 16);
  v127 = v2;
  v138 = v6;
  if (v126)
  {
    v32 = 0;
    v124 = *(v133 + 48);
    v121 = *(v2 + *(*v2 + 224));
    v123 = v25 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
    v33 = &_swiftEmptyDictionarySingleton;
    v120 = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
    *&v26 = 134349314;
    v118 = v26;
    v119 = xmmword_10006D8A0;
    v122 = v25;
    v125 = v24;
    while (1)
    {
      if (v32 >= *(v25 + 16))
      {
        goto LABEL_59;
      }

      v132 = v33;
      v34 = *(v130 + 72);
      v134 = v32;
      v35 = v128;
      sub_1000297C4(v123 + v34 * v32, v128, qword_1000919E0, &unk_10006DFA0);
      v36 = v35[1];
      v37 = v133;
      v38 = *(v133 + 48);
      v39 = isa;
      *isa = *v35;
      *(v39 + 1) = v36;
      v40 = type metadata accessor for _SegmentInterval();
      v41 = *(v40 - 8);
      (*(v41 + 32))(v39 + v38, v124 + v35, v40);
      v42 = v129;
      sub_1000297C4(v39, v129, qword_1000919E0, &unk_10006DFA0);
      v43 = *v42;
      a1 = v42[1];
      (*(v41 + 8))(v42 + *(v37 + 48), v40);
      v44 = v3[10];
      v45 = v3[11];
      sub_100020908(v3 + 7, v44);
      if (((*(v45 + 8))(v43, a1, v44, v45) & 1) == 0)
      {
        v46 = objc_allocWithZone(CKRecordZone);
        v47 = String._bridgeToObjectiveC()();
        v48 = [v46 initWithZoneName:v47];

        [v48 setCapabilities:8];
        CKSyncEngine.state.getter();
        sub_100020818(&qword_100091668, &qword_10006DF78);
        v49 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
        v50 = *(v49 - 8);
        v51 = *(v50 + 72);
        v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v53 = swift_allocObject();
        *(v53 + 16) = v119;
        *(v53 + v52) = v48;
        v54 = v53 + v52;
        v3 = v127;
        (*(v50 + 104))(v54, v120, v49);
        v6 = v138;
        v55 = v48;
        CKSyncEngine.State.add(pendingDatabaseChanges:)(v53);
      }

      v56 = v131;
      v57 = DeviceActivityDataStore.localRecordNames(forZoneName:segmentInterval:)();
      v131 = v56;
      if (v56)
      {
        sub_100028FF4(isa, qword_1000919E0, &unk_10006DFA0);

        v114 = v117;
        v115 = v131;
        swift_errorRetain();
        v114(v115);
      }

      v58 = v57;
      if (*(v57 + 16))
      {
        break;
      }

      sub_100028FF4(isa, qword_1000919E0, &unk_10006DFA0);

      v33 = v132;
LABEL_11:
      v25 = v122;
      v32 = v134 + 1;
      if (v126 == (v134 + 1))
      {
        goto LABEL_35;
      }
    }

    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100020D2C(v59, qword_100092EB0);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    v62 = os_log_type_enabled(v60, v61);
    v63 = v132;
    if (v62)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock[0] = v65;
      *v64 = v118;
      *(v64 + 4) = *(v58 + 16);

      *(v64 + 12) = 2082;
      *(v64 + 14) = sub_100033140(v43, a1, aBlock);
      _os_log_impl(&_mh_execute_header, v60, v61, "Uploading %{public}ld records for %{public}s.", v64, 0x16u);
      sub_1000208BC(v65);
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v63;
    v68 = sub_100033790(v43, a1);
    v69 = *(v63 + 16);
    v70 = (v67 & 1) == 0;
    v71 = v69 + v70;
    if (__OFADD__(v69, v70))
    {
      goto LABEL_60;
    }

    v72 = v67;
    if (*(v63 + 24) < v71)
    {
      sub_100046E24(v71, isUniquelyReferenced_nonNull_native);
      v73 = sub_100033790(v43, a1);
      if ((v72 & 1) != (v74 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v68 = v73;
      v33 = aBlock[0];
      if ((v72 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_29:
      v75 = *(v33 + 7);
      v76 = *(v75 + 8 * v68);
      *(v75 + 8 * v68) = v58;

LABEL_33:
      sub_100028FF4(isa, qword_1000919E0, &unk_10006DFA0);
      v3 = v127;
      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v33 = aBlock[0];
      if (v67)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_100047370();
      v33 = aBlock[0];
      if (v72)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    *&v33[8 * (v68 >> 6) + 64] |= 1 << v68;
    v77 = (*(v33 + 6) + 16 * v68);
    *v77 = v43;
    v77[1] = a1;
    *(*(v33 + 7) + 8 * v68) = v58;
    v78 = *(v33 + 2);
    v79 = __OFADD__(v78, 1);
    v80 = v78 + 1;
    if (v79)
    {
      goto LABEL_61;
    }

    *(v33 + 2) = v80;
    goto LABEL_33;
  }

  v33 = &_swiftEmptyDictionarySingleton;
LABEL_35:

  v81 = *(v3 + *(*v3 + 224));
  CKSyncEngine.state.getter();
  v82 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

  CKSyncEngine.state.getter();
  CKSyncEngine.State.remove(pendingRecordZoneChanges:)(v82);

  if (*(v33 + 2))
  {
    v123 = CKSyncEngine.state.getter();
    v83 = v33 + 64;
    v84 = 1 << v33[32];
    v85 = -1;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    v86 = v85 & *(v33 + 8);
    v87 = (v84 + 63) >> 6;
    v124 = CKCurrentUserDefaultName;
    LODWORD(v134) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
    v88 = (v137 + 104);
    v133 = v137 + 32;

    a1 = 0;
    v89 = &_swiftEmptyArrayStorage;
    v125 = v87;
    v126 = v33 + 64;
    v132 = v33;
    while (v86)
    {
LABEL_45:
      v130 = v86;
      v91 = __clz(__rbit64(v86)) | (a1 << 6);
      v92 = *(v33 + 7);
      v93 = (*(v33 + 6) + 16 * v91);
      v94 = *v93;
      v95 = v93[1];
      v96 = *(v92 + 8 * v91);
      sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;
      swift_bridgeObjectRetain_n();

      v100._countAndFlagsBits = v94;
      v128 = v95;
      v100._object = v95;
      v101._countAndFlagsBits = v97;
      v101._object = v99;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(v100, v101).super.isa;
      v102 = *(v96 + 16);
      v129 = v96;
      if (v102)
      {
        sub_100021848(0, &qword_100091770, CKRecordID_ptr);
        v103 = (v96 + 40);
        v104 = v135;
        do
        {
          v105 = *(v103 - 1);
          v106 = *v103;

          v107 = isa;
          v108._countAndFlagsBits = v105;
          v108._object = v106;
          v109 = CKRecordID.init(recordName:zoneID:)(v108, v107).super.isa;
          *v104 = v109;
          (*v88)(v104, v134, v6);
          v110 = v109;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v89 = sub_100046714(0, v89[2] + 1, 1, v89, &qword_100091780, &qword_10006DFF0, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
          }

          v112 = v89[2];
          v111 = v89[3];
          if (v112 >= v111 >> 1)
          {
            v89 = sub_100046714(v111 > 1, v112 + 1, 1, v89, &qword_100091780, &qword_10006DFF0, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
          }

          v89[2] = v112 + 1;
          v113 = v89 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v112;
          v104 = v135;
          v6 = v138;
          (*(v137 + 32))(v113, v135, v138);
          v103 += 2;
          --v102;
        }

        while (v102);
      }

      v86 = (v130 - 1) & v130;

      v83 = v126;
      v33 = v132;
      v87 = v125;
    }

    while (1)
    {
      v90 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if (v90 >= v87)
      {

        CKSyncEngine.State.add(pendingRecordZoneChanges:)(v89);

        goto LABEL_56;
      }

      v86 = *&v83[8 * v90];
      ++a1;
      if (v86)
      {
        a1 = v90;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  sub_10003EE80();
LABEL_56:
  v117(0);
}

uint64_t sub_1000379FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  v7 = __chkstk_darwin(v4, v6);
  v9 = (v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7, v10);
  v12 = v48 - v11;
  v13 = sub_100020818(qword_1000919E0, &unk_10006DFA0);
  v63 = *(v13 - 8);
  v14 = v63[8];
  v16 = __chkstk_darwin(v13, v15);
  v18 = (v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16, v19);
  v21 = v48 - v20;
  v22 = v1 + *(*v1 + 184);
  v23 = v64;
  result = DeviceActivityDataStore.localZones.getter();
  if (!v23)
  {
    v60 = v4;
    v61 = v12;
    v53 = v13;
    v48[2] = 0;
    v25 = *(v2 + *(*v2 + 224));
    v26 = result;
    v27 = CKSyncEngine.state.getter();
    v62 = *(v26 + 16);
    if (v62)
    {
      v48[0] = v26;
      v48[1] = v27;
      v52 = v9;
      v28 = 0;
      v29 = *(v53 + 48);
      v59 = v26 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v30 = *(a1 + 16);
      v58 = v63[9];
      v51 = CKCurrentUserDefaultName;
      v50 = (v54 + 104);
      v31 = &_swiftEmptyArrayStorage;
      v57 = (v54 + 32);
      v49 = enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:);
      do
      {
        v63 = v31;
        v64 = v28;
        sub_1000297C4(v59 + v58 * v28, v21, qword_1000919E0, &unk_10006DFA0);
        v32 = 0;
        do
        {
          if (v30 == v32)
          {
            sub_100028FF4(v21, qword_1000919E0, &unk_10006DFA0);
            v31 = v63;
            goto LABEL_5;
          }

          v33 = type metadata accessor for _SegmentInterval();
          v34 = *(v33 - 8);
          v35 = v32 + 1;
          v36 = a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v32;
          sub_100049490(&qword_1000916C0, 255, &type metadata accessor for _SegmentInterval);
          v32 = v35;
        }

        while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
        v55 = sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
        sub_1000297C4(v21, v18, qword_1000919E0, &unk_10006DFA0);
        v37 = *v18;
        v38 = v18[1];
        v56 = *(v53 + 48);
        v39._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39._object = v40;
        v41._countAndFlagsBits = v37;
        v41._object = v38;
        isa = CKRecordZoneID.init(zoneName:ownerName:)(v41, v39).super.isa;
        sub_100028FF4(v21, qword_1000919E0, &unk_10006DFA0);
        (*(v34 + 8))(v18 + v56, v33);
        v43 = v52;
        *v52 = isa;
        v44 = v60;
        (*v50)(v43, v49, v60);
        v45 = *v57;
        (*v57)(v61, v43, v44);
        v31 = v63;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100046714(0, v31[2] + 1, 1, v31, &qword_100091668, &qword_10006DF78, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
        }

        v47 = v31[2];
        v46 = v31[3];
        if (v47 >= v46 >> 1)
        {
          v31 = sub_100046714(v46 > 1, v47 + 1, 1, v31, &qword_100091668, &qword_10006DF78, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
        }

        v31[2] = v47 + 1;
        v45(v31 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v47);
LABEL_5:
        v28 = v64 + 1;
      }

      while (v64 + 1 != v62);
    }

    else
    {

      v31 = &_swiftEmptyArrayStorage;
    }

    CKSyncEngine.State.add(pendingDatabaseChanges:)(v31);
  }

  return result;
}

void sub_1000382A4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_100038308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[4] = a3;
  v3[5] = ObjectType;
  v3[2] = a1;
  v3[3] = a2;
  v8 = type metadata accessor for CKSyncEngine.SendChangesOptions();
  v3[6] = v8;
  v9 = *(v8 - 8);
  v3[7] = v9;
  v10 = *(v9 + 64) + 15;
  v3[8] = swift_task_alloc();
  v11 = type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  v3[9] = v11;
  v12 = *(v11 - 8);
  v3[10] = v12;
  v13 = *(v12 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100038444, 0, 0);
}

uint64_t sub_100038444()
{
  if (qword_100090D38 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100092EF8 + 16);
  if ([swift_getObjCClassFromMetadata() isAuthorized] && (sub_100049C3C(), v2))
  {
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v23 = *(v0 + 32);
    CKSyncEngine.SendChangesContext.options.getter();
    CKSyncEngine.SendChangesOptions.scope.getter();
    (*(v8 + 8))(v5, v7);
    CKSyncEngine.state.getter();
    v11 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

    v12 = swift_task_alloc();
    *(v12 + 16) = v3;
    sub_100035E98(sub_100049E7C, v12, v11);

    *(swift_task_alloc() + 16) = v23;
    CKSyncEngine.RecordZoneChangeBatch.init(pendingChanges:synchronousRecordProvider:)();

    (*(v4 + 8))(v3, v6);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100020D2C(v13, qword_100092EB0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Not creating record zone change batch because Device Activity is not authorized.", v16, 2u);
    }

    v17 = *(v0 + 16);

    v18 = type metadata accessor for CKSyncEngine.RecordZoneChangeBatch();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  }

  v19 = *(v0 + 88);
  v20 = *(v0 + 64);

  v21 = *(v0 + 8);

  return v21();
}

void *sub_100038720(void *a1)
{
  if (qword_100090D38 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_100038784(a1);
}

void *sub_100038784(void *a1)
{
  v2 = v1;
  v4 = sub_100020818(&qword_100091788, &unk_10006E000);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v220 = &v214 - v7;
  v223 = type metadata accessor for URLResourceValues();
  v222 = *(v223 - 8);
  v8 = *(v222 + 64);
  __chkstk_darwin(v223, v9);
  v217 = &v214 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v224 = *(v11 - 8);
  v12 = *(v224 + 64);
  v14 = __chkstk_darwin(v11, v13);
  v218 = &v214 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v228 = &v214 - v17;
  v18 = sub_100020818(&qword_100091790, &qword_10006DC10);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v219 = &v214 - v21;
  v22 = type metadata accessor for _DeviceActivityData.ActivitySegment();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = __chkstk_darwin(v22, v25);
  v216 = &v214 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v28);
  v230 = &v214 - v29;
  v30 = sub_100020818(&qword_100091798, &qword_10006E010);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8, v32);
  v229 = &v214 - v33;
  v231 = type metadata accessor for _DeviceActivityData.Metadata();
  v232 = *(v231 - 8);
  v34 = *(v232 + 64);
  v36 = __chkstk_darwin(v231, v35);
  v221 = &v214 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v38);
  v233 = &v214 - v39;
  v40 = sub_100020818(&qword_1000917A0, &qword_10006E018);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8, v42);
  v236 = &v214 - v43;
  v44 = type metadata accessor for _SegmentInterval();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v48 = __chkstk_darwin(v44, v47);
  v234 = &v214 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48, v50);
  v239 = &v214 - v51;
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  v53 = sub_100020D2C(v52, qword_100092EB0);
  v54 = a1;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  v57 = os_log_type_enabled(v55, v56);
  v226 = v11;
  v225 = v22;
  v227 = v23;
  v237 = v44;
  v238 = v45;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    v240 = v215;
    *v58 = 136446210;
    v59 = v2;
    v60 = v54;
    v61 = [v60 description];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v235 = v53;
    v64 = v63;

    v2 = v59;
    v65 = sub_100033140(v62, v64, &v240);
    v53 = v235;

    *(v58 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v55, v56, "Saving record: %{public}s", v58, 0xCu);
    sub_1000208BC(v215);
  }

  v66 = v2;
  v67 = sub_100049C3C();
  v69 = v68;

  v70 = v54;
  v71 = [v54 zoneID];
  v72 = [v71 zoneName];

  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  if (!v69)
  {
    goto LABEL_8;
  }

  v215 = v66;
  v76 = v236;
  sub_100040590(v73, v75, v236);
  v77 = sub_100020818(&qword_1000917A8, &qword_10006E020);
  v78 = (*(*(v77 - 8) + 48))(v76, 1, v77);

  if (v78 == 1)
  {
    sub_100028FF4(v76, &qword_1000917A0, &qword_10006E018);
LABEL_8:

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      *v81 = 136446466;
      v82 = sub_100033140(v73, v75, &v240);

      *(v81 + 4) = v82;
      *(v81 + 12) = 2082;
      if (v69)
      {
        v83 = v67;
      }

      else
      {
        v83 = 7104878;
      }

      if (!v69)
      {
        v69 = 0xE300000000000000;
      }

      v84 = sub_100033140(v83, v69, &v240);

      *(v81 + 14) = v84;
      _os_log_impl(&_mh_execute_header, v79, v80, "Failed to create record for %{public}s and user: %{public}s", v81, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  v214 = v67;
  v87 = *(v76 + 1);

  v88 = *(v77 + 48);
  v89 = v237;
  v90 = *(v238 + 32);
  v91 = v234;
  v90(v234, &v76[v88], v237);
  v90(v239, v91, v89);
  v92 = [v70 recordName];
  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v94;

  v235 = v53;
  if (v93 == v73 && v95 == v75)
  {

    goto LABEL_23;
  }

  v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v96 & 1) == 0)
  {
    v236 = v93;
    v109 = *(*v215 + 184);
    countAndFlagsBits = DeviceActivityDataStore.localDeviceIdentifier()()._countAndFlagsBits;
    if (v111)
    {

      v85 = 0;
      v113 = v237;
      v99 = v238;
      goto LABEL_30;
    }

    v234 = countAndFlagsBits;
    DeviceActivityDataStore.fetchLocalSegment(segmentInterval:recordName:)();
    v233 = v109;
    v146 = v219;
    DeviceActivityDataStore.fetchCloudSegment(userAltDSID:deviceIdentifier:segmentInterval:recordName:)();

    v147 = v227;
    v148 = v225;
    (*(v227 + 56))(v146, 0, 1, v225);
    v149 = v216;
    (*(v147 + 32))(v216, v146, v148);
    v150 = sub_100021848(0, &qword_1000917B0, CKRecord_ptr);
    v151 = _DeviceActivityData.ActivitySegment.recordSystemFields.getter();
    v234 = v150;
    v85 = sub_100020980(v151, v152);
    v99 = v238;
    if (!v85)
    {
      sub_100021848(0, &qword_100091770, CKRecordID_ptr);
      v232 = _DeviceActivityData.ActivitySegment.recordName.getter();
      v154 = v153;
      sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
      v155 = _DeviceActivityData.ActivitySegment.recordZoneName.getter();
      v157 = v156;
      v158._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v158._object = v159;
      v160._countAndFlagsBits = v155;
      v160._object = v157;
      v148 = v225;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(v160, v158).super.isa;
      v162._countAndFlagsBits = v232;
      v162._object = v154;
      v99 = v238;
      v163 = CKRecordID.init(recordName:zoneID:)(v162, isa).super.isa;
      v164._countAndFlagsBits = 0x7974697669746341;
      v164._object = 0xEF746E656D676553;
      v85 = CKRecord.init(recordType:recordID:)(v164, v163).super.isa;
    }

    (*(v227 + 8))(v149, v148);
    _DeviceActivityData.ActivitySegment.recordSystemFields.setter();
    v165 = (v215 + *(*v215 + 192));
    v166 = v165[4];
    sub_100020908(v165, v165[3]);
    dispatch thunk of DeviceActivityDataLocating.localActivitySegmentURL(segmentInterval:recordName:)();

    sub_100020818(&qword_1000917B8, &qword_10006E028);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006D890;
    *(inited + 32) = NSURLFileSizeKey;
    *(inited + 40) = NSURLTotalFileSizeKey;
    v168 = NSURLFileSizeKey;
    v169 = NSURLTotalFileSizeKey;
    sub_100049EB4(inited);
    swift_setDeallocating();
    type metadata accessor for URLResourceKey(0);
    swift_arrayDestroy();
    v170 = v220;
    URL.resourceValues(forKeys:)();
    v236 = 0;

    v184 = v222;
    v185 = v223;
    (*(v222 + 56))(v170, 0, 1, v223);
    v186 = v217;
    (*(v184 + 32))(v217, v170, v185);
    v187 = URLResourceValues.totalFileSize.getter();
    v144 = v214;
    v183 = v226;
    v188 = v224;
    if (v189 & 1) != 0 && (v187 = URLResourceValues.fileSize.getter(), (v190))
    {
      (*(v222 + 8))(v186, v223);
      v171 = v218;
      (*(v188 + 16))(v218, v228, v183);
      v172 = Logger.logObject.getter();
      v173 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = swift_slowAlloc();
        v175 = v188;
        v176 = swift_slowAlloc();
        v240 = v176;
        *v174 = 136446210;
        sub_100049490(&unk_1000917C0, 255, &type metadata accessor for URL);
        v177 = dispatch thunk of CustomStringConvertible.description.getter();
        v179 = v178;
        v180 = v171;
        v181 = *(v175 + 8);
        v181(v180, v226);
        v182 = sub_100033140(v177, v179, &v240);
        v144 = v214;

        *(v174 + 4) = v182;
        _os_log_impl(&_mh_execute_header, v172, v173, "Failed to extract file size for url: %{public}s", v174, 0xCu);
        sub_1000208BC(v176);

        v183 = v226;
      }

      else
      {

        v191 = v171;
        v181 = *(v188 + 8);
        v181(v191, v183);
      }

      v99 = v238;
      v192 = [v85 encryptedValues];
      v193 = String._bridgeToObjectiveC()();
      [v192 setObject:0 forKeyedSubscript:v193];
      swift_unknownObjectRelease();

      v194 = v230;
      v143 = v239;
      v111 = v236;
      DeviceActivityDataStore.saveLocalSegment(_:segmentInterval:)();
      if (v111)
      {

        v181(v228, v183);
        (*(v227 + 8))(v194, v225);
LABEL_49:
        v113 = v237;
        goto LABEL_30;
      }

      v201 = objc_allocWithZone(CKAsset);
      v202 = v144;
      v203 = v181;
      v204 = v228;
      URL._bridgeToObjectiveC()(&var20);
      v206 = v205;
      [v201 initWithFileURL:v205];

      CKRecord.subscript.setter();
      v203(v204, v183);
      v144 = v202;
      (*(v227 + 8))(v230, v225);
      v113 = v237;
    }

    else
    {
      v195 = v187;
      v196 = [v85 encryptedValues];
      v197 = v230;
      v111 = v236;
      if (v195 > 899999)
      {
        v207 = String._bridgeToObjectiveC()();
        [v196 setObject:0 forKeyedSubscript:v207];
        swift_unknownObjectRelease();

        v143 = v239;
        DeviceActivityDataStore.saveLocalSegment(_:segmentInterval:)();
        if (v111)
        {

          (*(v222 + 8))(v217, v223);
          (*(v224 + 8))(v228, v183);
          (*(v227 + 8))(v197, v225);
          goto LABEL_49;
        }

        v211 = objc_allocWithZone(CKAsset);
        v210 = v228;
        URL._bridgeToObjectiveC()(&var20);
        v213 = v212;
        [v211 initWithFileURL:v212];

        v113 = v237;
      }

      else
      {
        sub_100049490(&qword_100090D68, 255, &type metadata accessor for _DeviceActivityData.ActivitySegment);
        sub_100049490(&qword_100090D70, 255, &type metadata accessor for _DeviceActivityData.ActivitySegment);
        v198 = v225;
        v199 = static DeviceActivityDataStore.encode<A>(_:)();
        v113 = v237;
        if (v111)
        {
          swift_unknownObjectRelease();

          (*(v222 + 8))(v217, v223);
          (*(v224 + 8))(v228, v226);
          (*(v227 + 8))(v197, v198);
LABEL_30:
          swift_errorRetain();
          v100 = Logger.logObject.getter();
          v101 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            v240 = v103;
            *v102 = 136446210;
            v244 = v111;
            swift_errorRetain();
            sub_100020818(&qword_100091370, &qword_10006D390);
            v114 = String.init<A>(describing:)();
            v105 = v99;
            v116 = sub_100033140(v114, v115, &v240);

            *(v102 + 4) = v116;
            v108 = "Failed to add segment to record because it was likely already moved to the Cloud folder: %{public}s";
            goto LABEL_32;
          }

LABEL_33:

          (*(v99 + 8))(v239, v113);
          return 0;
        }

        v208 = v200;
        v209 = v199;
        swift_getObjectType();
        v242 = &type metadata for Data;
        v243 = &protocol witness table for Data;
        v240 = v209;
        v241 = v208;
        CKRecordKeyValueSetting.subscript.setter();
        swift_unknownObjectRelease();
        v143 = v239;
        v183 = v226;
        v210 = v228;
      }

      CKRecord.subscript.setter();
      (*(v222 + 8))(v217, v223);
      (*(v224 + 8))(v210, v183);
      (*(v227 + 8))(v230, v225);
    }

LABEL_37:
    v145 = [v85 encryptedValues];
    swift_getObjectType();
    v242 = &type metadata for String;
    v243 = &protocol witness table for String;
    v240 = v144;
    v241 = v69;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    (*(v99 + 8))(v143, v113);
    return v85;
  }

LABEL_23:

  v97 = *(*v215 + 184);
  DeviceActivityDataStore.localDeviceIdentifier()();
  if (!v98)
  {
    DeviceActivityDataStore.fetchLocalMetadata(segmentInterval:)();
    v112 = v229;
    DeviceActivityDataStore.fetchCloudMetadata(userAltDSID:deviceIdentifier:segmentInterval:)();
    v113 = v237;

    v117 = v232;
    v118 = v231;
    (*(v232 + 56))(v112, 0, 1, v231);
    v119 = v221;
    (*(v117 + 32))(v221, v112, v118);
    v120 = sub_100021848(0, &qword_1000917B0, CKRecord_ptr);
    v121 = _DeviceActivityData.Metadata.recordSystemFields.getter();
    v236 = v120;
    v85 = sub_100020980(v121, v122);
    v99 = v238;
    if (!v85)
    {
      v234 = sub_100021848(0, &qword_100091770, CKRecordID_ptr);
      v123 = _DeviceActivityData.Metadata.recordName.getter();
      v124 = v99;
      v126 = v125;
      sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
      v127 = _DeviceActivityData.Metadata.recordName.getter();
      v129 = v128;
      v130._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v130._object = v131;
      v132._countAndFlagsBits = v127;
      v132._object = v129;
      v118 = v231;
      v133 = CKRecordZoneID.init(zoneName:ownerName:)(v132, v130).super.isa;
      v134._countAndFlagsBits = v123;
      v117 = v232;
      v134._object = v126;
      v99 = v124;
      v135 = CKRecordID.init(recordName:zoneID:)(v134, v133).super.isa;
      v136._countAndFlagsBits = 0x617461646174654DLL;
      v136._object = 0xE800000000000000;
      v85 = CKRecord.init(recordType:recordID:)(v136, v135).super.isa;
    }

    (*(v117 + 8))(v119, v118);
    v137 = v233;
    _DeviceActivityData.Metadata.recordSystemFields.setter();
    v138 = [v85 encryptedValues];
    sub_100049490(&qword_100091628, 255, &type metadata accessor for _DeviceActivityData.Metadata);
    v139 = v137;
    sub_100049490(&qword_1000917D0, 255, &type metadata accessor for _DeviceActivityData.Metadata);
    v140 = static DeviceActivityDataStore.encode<A>(_:)();
    v142 = v141;
    swift_getObjectType();
    v242 = &type metadata for Data;
    v243 = &protocol witness table for Data;
    v240 = v140;
    v241 = v142;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    (*(v232 + 8))(v139, v118);
    v143 = v239;
    v144 = v214;
    goto LABEL_37;
  }

  v85 = 0;
  v113 = v237;
  v99 = v238;
  swift_errorRetain();
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v100, v101))
  {
    goto LABEL_33;
  }

  v102 = swift_slowAlloc();
  v103 = swift_slowAlloc();
  v240 = v103;
  *v102 = 136446210;
  v244 = v98;
  swift_errorRetain();
  sub_100020818(&qword_100091370, &qword_10006D390);
  v104 = String.init<A>(describing:)();
  v105 = v99;
  v107 = sub_100033140(v104, v106, &v240);

  *(v102 + 4) = v107;
  v108 = "Failed to add metadata to record because it was likely already moved to the Cloud folder: %{public}s";
LABEL_32:
  _os_log_impl(&_mh_execute_header, v100, v101, v108, v102, 0xCu);
  sub_1000208BC(v103);

  (*(v105 + 8))(v239, v113);
  return 0;
}

void sub_10003A4CC(void *a1)
{
  v2 = v1;
  v4 = sub_100020818(&qword_1000917A0, &qword_10006E018);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v75 = &v72 - v7;
  v8 = sub_100020818(&qword_1000917A8, &qword_10006E020);
  v74 = *(v8 - 8);
  v9 = *(v74 + 64);
  __chkstk_darwin(v8, v10);
  v73 = &v72 - v11;
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100020D2C(v12, qword_100092EB0);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  v76 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v77 = v72;
    *v18 = 136446210;
    v19 = v14;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v8;
    v23 = v2;
    v24 = v13;
    v26 = v25;

    v27 = sub_100033140(v21, v26, &v77);
    v13 = v24;
    v2 = v23;
    v8 = v22;

    *(v18 + 4) = v27;
    v14 = v76;
    _os_log_impl(&_mh_execute_header, v15, v16, "Saved record: %{public}s", v18, 0xCu);
    sub_1000208BC(v72);
  }

  v28 = sub_100049C3C();
  v30 = v29;

  v31 = [v14 recordID];
  v32 = [v31 zoneID];
  v33 = [v32 zoneName];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (!v30)
  {
    goto LABEL_8;
  }

  v37 = v75;
  sub_100040590(v34, v36, v75);
  if ((*(v74 + 48))(v37, 1, v8) != 1)
  {
    v74 = v28;
    v72 = v13;

    v46 = v2;
    v47 = v73;
    sub_100029830(v37, v73, &qword_1000917A8, &qword_10006E020);
    v48 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
    v49 = v76;
    [v76 encodeSystemFieldsWithCoder:v48];
    [v48 finishEncoding];
    v50 = [v48 encodedData];
    v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    sub_100040840(v49, v51, v53);
    sub_100020D78(v51, v53);
    v55 = CKRecord.recordType.getter();
    v56 = v54;
    if (v55 == 0x617461646174654DLL && v54 == 0xE800000000000000)
    {

      v57 = v47;
    }

    else
    {
      v57 = v47;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v55 == 0x7974697669746341 && v56 == 0xEF746E656D676553)
        {
        }

        else
        {
          v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v62 & 1) == 0)
          {

            v69 = Logger.logObject.getter();
            v70 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              *v71 = 0;
              _os_log_impl(&_mh_execute_header, v69, v70, "Failed to move unknown record type", v71, 2u);
            }

            goto LABEL_23;
          }
        }

        v63 = v8;
        v64 = v31;
        v65 = *(*v46 + 184);
        v66 = *v57;
        v75 = v57[1];
        v76 = v66;
        v67 = *(v63 + 48);
        v68 = [v64 recordName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        DeviceActivityDataStore.moveLocalActivitySegmentToCloud(userAltDSID:deviceIdentifier:segmentInterval:recordName:)();

        goto LABEL_24;
      }
    }

    v58 = *v57;
    v59 = v57[1];
    v60 = *(v8 + 48);
    v61 = v46 + *(*v46 + 184);
    DeviceActivityDataStore.moveLocalMetadataToCloud(userAltDSID:deviceIdentifier:segmentInterval:)();

LABEL_23:

LABEL_24:
    sub_100028FF4(v57, &qword_1000917A8, &qword_10006E020);
    return;
  }

  sub_100028FF4(v37, &qword_1000917A0, &qword_10006E018);
LABEL_8:

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v40 = 136446466;
    v41 = sub_100033140(v34, v36, &v77);

    *(v40 + 4) = v41;
    *(v40 + 12) = 2082;
    if (v30)
    {
      v42 = v28;
    }

    else
    {
      v42 = 7104878;
    }

    if (v30)
    {
      v43 = v30;
    }

    else
    {
      v43 = 0xE300000000000000;
    }

    v44 = v31;
    v45 = sub_100033140(v42, v43, &v77);

    *(v40 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v38, v39, "Failed to move record for %{public}s and user: %{public}s", v40, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10003ADE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v81 = a2;
  swift_errorRetain();
  sub_100020818(&qword_100091370, &qword_10006D390);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v6 = v80;
    v81 = v80;
    sub_100049490(&qword_100090E30, 255, type metadata accessor for CKError);
    _BridgedStoredNSError.code.getter();
    if (v80 <= 13)
    {
      if (v80 == 9)
      {
        if (qword_100090D18 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        sub_100020D2C(v49, qword_100092EB0);
        v38 = v80;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v79 = v42;
          *v41 = 136446210;
          v43 = v38;
          v50 = related decl 'e' for CKErrorCode.description.getter();
          v52 = v51;

          v53 = sub_100033140(v50, v52, &v79);

          *(v41 + 4) = v53;
          v48 = "The current user is not authenticated: %{public}s";
          goto LABEL_22;
        }

LABEL_23:

        return;
      }

      if (v80 == 11)
      {
        sub_100040840(a1, 0, 0xF000000000000000);
        v7 = *(v2 + *(*v2 + 224));
        CKSyncEngine.state.getter();
        sub_100020818(&qword_100091780, &qword_10006DFF0);
        v8 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
        v9 = *(v8 - 8);
        v10 = *(v9 + 72);
        v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_10006D8A0;
        *(v12 + v11) = [a1 recordID];
        (*(v9 + 104))(v12 + v11, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v8);
        CKSyncEngine.State.add(pendingRecordZoneChanges:)(v12);

LABEL_26:

        return;
      }

LABEL_14:
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100020D2C(v37, qword_100092EB0);
      v38 = v80;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v79 = v42;
        *v41 = 136446210;
        v43 = v38;
        v44 = related decl 'e' for CKErrorCode.description.getter();
        v46 = v45;

        v47 = sub_100033140(v44, v46, &v79);

        *(v41 + 4) = v47;
        v48 = "Failed to save record: %{public}s";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v39, v40, v48, v41, 0xCu);
        sub_1000208BC(v42);

        return;
      }

      goto LABEL_23;
    }

    if (v80 != 14)
    {
      if (v80 == 26)
      {
        v21 = [a1 recordID];
        v22 = [v21 zoneID];
        v23 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v22];

        v24 = *(v3 + *(*v3 + 224));
        CKSyncEngine.state.getter();
        sub_100020818(&qword_100091668, &qword_10006DF78);
        v25 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
        v26 = *(v25 - 8);
        v27 = *(v26 + 72);
        v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_10006D8A0;
        *(v29 + v28) = v23;
        (*(v26 + 104))(v29 + v28, enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:), v25);
        v30 = v23;
        CKSyncEngine.State.add(pendingDatabaseChanges:)(v29);

        CKSyncEngine.state.getter();
        sub_100020818(&qword_100091780, &qword_10006DFF0);
        v31 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
        v32 = *(v31 - 8);
        v33 = *(v32 + 72);
        v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_10006D8A0;
        *(v35 + v34) = v21;
        (*(v32 + 104))(v35 + v34, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v31);
        v36 = v21;
        CKSyncEngine.State.add(pendingRecordZoneChanges:)(v35);

        goto LABEL_26;
      }

      goto LABEL_14;
    }

    v54 = related decl 'e' for CKErrorCode.serverRecord.getter();
    if (v54)
    {
      v55 = v54;
      v56 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
      [v55 encodeSystemFieldsWithCoder:v56];
      [v56 finishEncoding];
      v57 = [v56 encodedData];
      v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      sub_100040840(a1, v58, v60);
      sub_100020D78(v58, v60);
      v61 = *(v3 + *(*v3 + 224));
      CKSyncEngine.state.getter();
      sub_100020818(&qword_100091780, &qword_10006DFF0);
      v62 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
      v63 = *(v62 - 8);
      v64 = *(v63 + 72);
      v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_10006D8A0;
      *(v66 + v65) = [a1 recordID];
      (*(v63 + 104))(v66 + v65, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v62);
      CKSyncEngine.State.add(pendingRecordZoneChanges:)(v66);

      goto LABEL_26;
    }

    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100020D2C(v67, qword_100092EB0);
    v68 = a1;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v79 = v72;
      *v71 = 136446210;
      v73 = v68;
      v74 = [v73 description];
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v78 = sub_100033140(v75, v77, &v79);

      *(v71 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v69, v70, "No server record when resolving conflict for record: %{public}s", v71, 0xCu);
      sub_1000208BC(v72);
    }
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100020D2C(v13, qword_100092EB0);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v80 = a2;
      v81 = v17;
      *v16 = 136446210;
      swift_errorRetain();
      v18 = String.init<A>(describing:)();
      v20 = sub_100033140(v18, v19, &v81);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to save record with unknown error: %{public}s", v16, 0xCu);
      sub_1000208BC(v17);
    }

    else
    {
    }
  }
}

void sub_10003B8D8(id a1)
{
  v2 = sub_100020818(&qword_100091720, &qword_10006DFB0);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v160 = &v148 - v9;
  v10 = type metadata accessor for URL();
  v158 = *(v10 - 8);
  v159 = v10;
  v11 = *(v158 + 64);
  __chkstk_darwin(v10, v12);
  v148 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for _DeviceActivityData.ActivitySegment();
  v149 = *(v153 - 8);
  v14 = *(v149 + 64);
  __chkstk_darwin(v153, v15);
  v152 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DeviceActivityDataStore();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v150 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v154 = &v148 - v24;
  v162 = type metadata accessor for _DeviceActivityData.Metadata();
  v155 = *(v162 - 1);
  v25 = *(v155 + 64);
  __chkstk_darwin(v162, v26);
  v161 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100020818(&qword_1000917A0, &qword_10006E018);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8, v30);
  v165 = &v148 - v31;
  v166 = sub_100020818(&qword_1000917A8, &qword_10006E020);
  v164 = *(v166 - 8);
  v32 = *(v164 + 64);
  __chkstk_darwin(v166, v33);
  v35 = &v148 - v34;
  v36 = [a1 recordID];
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100020D2C(v37, qword_100092EB0);
  v39 = v36;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  v42 = os_log_type_enabled(v40, v41);
  v156 = v18;
  v157 = v17;
  v168 = a1;
  v151 = v7;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v169 = v163;
    *v43 = 136446210;
    v44 = v39;
    v45 = [v44 description];
    v46 = v38;
    v47 = v35;
    v48 = v39;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = v49;
    v39 = v48;
    v35 = v47;
    v38 = v46;
    a1 = v168;
    v53 = sub_100033140(v52, v51, &v169);

    *(v43 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v40, v41, "Fetched record: %{public}s", v43, 0xCu);
    sub_1000208BC(v163);
  }

  v54 = [a1 encryptedValues];
  v55 = String._bridgeToObjectiveC()();
  v56 = [v54 objectForKeyedSubscript:v55];
  swift_unknownObjectRelease();

  if (v56 && (v171 = v56, sub_100020818(&qword_100091800, &qword_10006E050), (swift_dynamicCast() & 1) != 0))
  {
    v57 = v170;
    v163 = v169;
  }

  else
  {
    v163 = 0;
    v57 = 0;
  }

  v58 = [v39 zoneID];
  v59 = [v58 zoneName];

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  if (!v57)
  {
    v64 = 0xE300000000000000;
    goto LABEL_13;
  }

  v63 = v165;
  sub_100040590(v60, v62, v165);
  if ((*(v164 + 48))(v63, 1, v166) != 1)
  {

    sub_100029830(v63, v35, &qword_1000917A8, &qword_10006E020);
    v72 = CKRecord.recordType.getter();
    v73 = v71;
    if (v72 == 0x617461646174654DLL && v71 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v74 = v168;
      v75 = [v168 encryptedValues];
      v76 = String._bridgeToObjectiveC()();
      v77 = [v75 objectForKeyedSubscript:v76];
      swift_unknownObjectRelease();

      if (v77)
      {
        v171 = v77;
        sub_100020818(&qword_100091800, &qword_10006E050);
        if (swift_dynamicCast())
        {
          v164 = v38;
          v165 = v35;
          v79 = v169;
          v78 = v170;
          sub_100049490(&qword_100091628, 255, &type metadata accessor for _DeviceActivityData.Metadata);
          sub_100049490(&qword_1000917D0, 255, &type metadata accessor for _DeviceActivityData.Metadata);
          static DeviceActivityDataStore.decode<A>(_:)();
          v159 = v79;
          v160 = v78;
          v108 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
          [v168 encodeSystemFieldsWithCoder:v108];
          [v108 finishEncoding];
          v109 = [v108 encodedData];
          static Data._unconditionallyBridgeFromObjectiveC(_:)();

          _DeviceActivityData.Metadata.recordSystemFields.setter();
          v111 = v156;
          v110 = v157;
          v112 = v154;
          (*(v156 + 16))(v154, v167 + *(*v167 + 184), v157);
          v113 = static DeviceActivityDataStore.encode<A>(_:)();
          v116 = *v165;
          v117 = *(v165 + 1);
          v118 = *(v166 + 48);
          v119 = v113;
          v121 = v120;
          DeviceActivityDataStore.saveEncodedCloudMetadata(_:userAltDSID:deviceIdentifier:segmentInterval:)();

          sub_100020D78(v119, v121);
          sub_100020D78(v159, v160);

          (*(v111 + 8))(v112, v110);
          (*(v155 + 8))(v161, v162);
LABEL_46:
          v35 = v165;
          goto LABEL_47;
        }
      }

      v80 = v74;
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v81, v82))
      {
LABEL_30:

LABEL_47:
        sub_100028FF4(v35, &qword_1000917A8, &qword_10006E020);
        return;
      }

      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v169 = v84;
      *v83 = 136446210;
      v85 = v80;
      v86 = [v85 description];
      v87 = v35;
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;

      v91 = v88;
      v35 = v87;
      v92 = sub_100033140(v91, v90, &v169);

      *(v83 + 4) = v92;
      v93 = "Failed to extract metadata from record: %{public}s";
      goto LABEL_28;
    }

    v94 = v168;
    if (v72 == 0x7974697669746341 && v73 == 0xEF746E656D676553)
    {
    }

    else
    {
      v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v95 & 1) == 0)
      {

        v81 = Logger.logObject.getter();
        v114 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v81, v114))
        {
          goto LABEL_30;
        }

        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&_mh_execute_header, v81, v114, "Failed to download unknown record type", v115, 2u);
        goto LABEL_29;
      }
    }

    v96 = [v94 encryptedValues];
    v97 = String._bridgeToObjectiveC()();
    v98 = [v96 objectForKeyedSubscript:v97];
    swift_unknownObjectRelease();

    v99 = v160;
    if (v98)
    {
      v171 = v98;
      sub_100020818(&qword_100091800, &qword_10006E050);
      if (swift_dynamicCast())
      {
        v101 = v169;
        v100 = v170;
LABEL_38:
        v102 = sub_100049490(&qword_100090D68, 255, &type metadata accessor for _DeviceActivityData.ActivitySegment);
        sub_100049490(&qword_100090D70, 255, &type metadata accessor for _DeviceActivityData.ActivitySegment);
        v165 = v102;
        static DeviceActivityDataStore.decode<A>(_:)();
        v160 = v101;
        v161 = v100;
        v164 = v38;
        v162 = v39;
        v122 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
        [v168 encodeSystemFieldsWithCoder:v122];
        [v122 finishEncoding];
        v123 = [v122 encodedData];
        static Data._unconditionallyBridgeFromObjectiveC(_:)();

        _DeviceActivityData.ActivitySegment.recordSystemFields.setter();
        v124 = v156;
        (*(v156 + 16))(v150, v167 + *(*v167 + 184), v157);
        v137 = static DeviceActivityDataStore.encode<A>(_:)();
        v139 = v138;
        v140 = *(v35 + 1);
        v167 = *v35;
        v159 = v140;
        v141 = *(v166 + 48);
        v142 = [v168 recordID];
        v143 = [v142 recordName];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v144 = v150;
        v165 = v35;
        DeviceActivityDataStore.saveEncodedCloudSegment(_:userAltDSID:deviceIdentifier:segmentInterval:recordName:)();
        v145 = (v149 + 8);

        sub_100020D78(v160, v161);

        sub_100020D78(v137, v139);

        (*(v124 + 8))(v144, v157);
        (*v145)(v152, v153);
        goto LABEL_46;
      }
    }

    if (CKRecord.subscript.getter())
    {
      objc_opt_self();
      v103 = swift_dynamicCastObjCClass();
      if (v103)
      {
        v104 = [v103 fileURL];
        swift_unknownObjectRelease();
        if (v104)
        {
          v105 = v151;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v106 = 0;
          v107 = v159;
        }

        else
        {
          v106 = 1;
          v107 = v159;
          v105 = v151;
        }

        v125 = v158;
        (*(v158 + 56))(v105, v106, 1, v107);
        sub_100029830(v105, v99, &qword_100091720, &qword_10006DFB0);
        if ((*(v125 + 48))(v99, 1, v107) != 1)
        {
          v135 = v148;
          (*(v125 + 32))(v148, v99, v107);
          v136 = Data.init(contentsOf:options:)();
          v147 = v146;
          v101 = v136;
          (*(v125 + 8))(v135, v107);
          v100 = v147;
          goto LABEL_38;
        }

LABEL_53:
        sub_100028FF4(v99, &qword_100091720, &qword_10006DFB0);
        v126 = v94;
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v81, v82))
        {
          goto LABEL_30;
        }

        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v169 = v84;
        *v83 = 136446210;
        v127 = v126;
        v128 = [v127 description];
        v129 = v35;
        v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v132 = v131;

        v133 = v130;
        v35 = v129;
        v134 = sub_100033140(v133, v132, &v169);

        *(v83 + 4) = v134;
        v93 = "Failed to extract encoded activity segment from record: %{public}s";
LABEL_28:
        _os_log_impl(&_mh_execute_header, v81, v82, v93, v83, 0xCu);
        sub_1000208BC(v84);

LABEL_29:

        goto LABEL_30;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v158 + 56))(v99, 1, 1, v159);
    goto LABEL_53;
  }

  sub_100028FF4(v63, &qword_1000917A0, &qword_10006E018);
  v64 = v57;
LABEL_13:

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    *v67 = 136446466;
    v68 = sub_100033140(v60, v62, &v169);

    *(v67 + 4) = v68;
    *(v67 + 12) = 2082;
    if (v57)
    {
      v69 = v163;
    }

    else
    {
      v69 = 7104878;
    }

    v70 = sub_100033140(v69, v64, &v169);

    *(v67 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v65, v66, "Failed to download record for %{public}s and user: %{public}s", v67, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10003CFAC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  __chkstk_darwin(v4, v6);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v44 = *(v46 - 8);
  v8 = *(v44 + 64);
  __chkstk_darwin(v46, v9);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v41, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v16 = [a1 zoneID];
  v17 = [v16 zoneName];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100020D2C(v21, qword_100092EB0);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136446210;

    v26 = sub_100033140(v18, v20, aBlock);

    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "Zone was saved: %{public}s", v24, 0xCu);
    sub_1000208BC(v25);
  }

  v27 = v2[10];
  v28 = v2[11];
  sub_100020908(v2 + 7, v27);
  v51 = &type metadata for Bool;
  LOBYTE(aBlock[0]) = 1;
  (*(v28 + 40))(aBlock, v18, v20, v27, v28);
  sub_100028FF4(aBlock, &qword_100091360, &unk_10006D960);
  v29 = dispatch_group_create();
  dispatch_group_enter(v29);
  v30 = v2[4];
  v31 = [v42 zoneID];
  sub_100041DEC(v31, v29);

  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v32 = v41;
  (*(v11 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v41);
  v33 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v15, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = v18;
  *(v34 + 24) = v20;
  v52 = sub_10004C1B4;
  v53 = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  v51 = &unk_1000874B8;
  v35 = _Block_copy(aBlock);
  v36 = v43;
  static DispatchQoS.unspecified.getter();
  v49 = _swiftEmptyArrayStorage;
  sub_100049490(&qword_1000916F8, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_1000495DC(&qword_100091708, &qword_100091700, qword_10006E1F0);
  v37 = v45;
  v38 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v35);

  (*(v47 + 8))(v37, v38);
  (*(v44 + 8))(v36, v46);
}

void sub_10003D574(void *a1)
{
  v2 = v1;
  v65 = type metadata accessor for _SegmentInterval();
  v59 = *(v65 - 8);
  v4 = *(v59 + 64);
  __chkstk_darwin(v65, v5);
  v61 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100020818(&qword_1000917A0, &qword_10006E018);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = v57 - v10;
  v63 = sub_100020818(&qword_1000917A8, &qword_10006E020);
  v12 = *(v63 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v63, v14);
  v17 = (v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15, v18);
  v64 = v57 - v19;
  v60 = a1;
  v20 = [a1 zoneName];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100020D2C(v24, qword_100092EB0);

  v62 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v21;
    v29 = swift_slowAlloc();
    v30 = v2;
    v31 = swift_slowAlloc();
    *&v66[0] = v31;
    *v29 = 136446210;
    *(v29 + 4) = sub_100033140(v28, v23, v66);
    _os_log_impl(&_mh_execute_header, v26, v27, "Zone was deleted: %{public}s", v29, 0xCu);
    sub_1000208BC(v31);
    v2 = v30;

    v21 = v28;
  }

  v32 = v63;
  sub_100040590(v21, v23, v11);
  if ((*(v12 + 48))(v11, 1, v32) == 1)
  {
    sub_100028FF4(v11, &qword_1000917A0, &qword_10006E018);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v66[0] = v36;
      *v35 = 136446210;
      v37 = sub_100033140(v21, v23, v66);

      *(v35 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to get zone components from %{public}s", v35, 0xCu);
      sub_1000208BC(v36);
    }

    else
    {
    }
  }

  else
  {
    v57[1] = v21;
    v38 = v64;
    sub_100029830(v11, v64, &qword_1000917A8, &qword_10006E020);
    sub_1000297C4(v38, v17, &qword_1000917A8, &qword_10006E020);
    v39 = v2;
    v40 = *v17;
    v41 = v17[1];
    v42 = v59;
    v43 = *(v59 + 8);
    v44 = v17 + *(v32 + 48);
    v45 = v65;
    v63 = v59 + 8;
    v57[2] = v40;
    v58 = v43;
    v43(v44, v65);
    sub_1000297C4(v38, v17, &qword_1000917A8, &qword_10006E020);
    v46 = v17[1];

    v47 = v17 + *(v32 + 48);
    v48 = v61;
    (*(v42 + 32))(v61, v47, v45);
    v49 = v39;
    v50 = v39 + *(*v39 + 184);
    DeviceActivityDataStore.deleteRemoteData(deviceIdentifier:segmentInterval:)();

    v51 = v39[10];
    v52 = v49[11];
    sub_100020908(v49 + 7, v49[10]);
    memset(v66, 0, 32);
    v53 = [v60 zoneName];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    (*(v52 + 40))(v66, v54, v56, v51, v52);

    sub_100028FF4(v66, &qword_100091360, &unk_10006D960);
    v58(v48, v65);
    sub_100028FF4(v64, &qword_1000917A8, &qword_10006E020);
  }
}

void sub_10003DCEC(void *a1, void *a2)
{
  v3 = v2;
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100020D2C(v6, qword_100092EB0);
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v37 = v3;
    v11 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v11 = 136446466;
    v12 = v8;
    sub_100020818(&qword_100091810, &qword_10006E058);
    v13 = String.init<A>(describing:)();
    v15 = sub_100033140(v13, v14, v38);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = v7;
    v17 = String.init<A>(describing:)();
    v19 = sub_100033140(v17, v18, v38);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Account changed from %{public}s to %{public}s", v11, 0x16u);
    swift_arrayDestroy();

    v3 = v37;
  }

  if (a2)
  {
    if (!a1)
    {
      goto LABEL_16;
    }

    sub_100021848(0, &qword_100091770, CKRecordID_ptr);
    v20 = v8;
    v21 = v7;
    v22 = static NSObject.== infix(_:_:)();

    if (v22)
    {
      goto LABEL_16;
    }
  }

  else if (!a1)
  {
    goto LABEL_16;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Deleting all data due to sign-out or account change", v25, 2u);
  }

  v26 = v3 + *(*v3 + 184);
  DeviceActivityDataStore.deleteAllData()();
  if (v27)
  {
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38[0] = v31;
      *v30 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v32 = String.init<A>(describing:)();
      v34 = sub_100033140(v32, v33, v38);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to delete all data: %{public}s", v30, 0xCu);
      sub_1000208BC(v31);
    }

    else
    {
    }
  }

LABEL_16:
  v35 = (v3 + *(*v3 + 240));
  v36 = v35[1];
  *v35 = 0;
  v35[1] = 0;

  sub_10003EE80();
}

id sub_10003E148()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003E1A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100029CC0;

  return (sub_10004A7D8)(a1, a2);
}

uint64_t sub_10003E25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002C9DC;

  return sub_100038308(a1, a2, a3);
}

uint64_t sub_10003E30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = async function pointer to CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10002C9DC;

  return CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)(a1, a2, a3, ObjectType, a5);
}

uint64_t sub_10003E3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = async function pointer to CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10003E4A8;

  return CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)(a1, a2, ObjectType, a4);
}

uint64_t sub_10003E4A8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10003E5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = async function pointer to CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10003E4A8;

  return CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(a1, a2, a3, ObjectType, a5);
}

uint64_t sub_10003E674@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a5;
  v46 = a1;
  v47 = a4;
  v9 = type metadata accessor for DeviceActivityDataStore.SyncStateType();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  v12 = __chkstk_darwin(v9, v11);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v41 = &v36 - v15;
  v44 = sub_100020818(&qword_100091678, &qword_10006DF88);
  v16 = *(*(v44 - 8) + 64);
  v18 = __chkstk_darwin(v44, v17);
  v40 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v22 = &v36 - v21;
  v23 = type metadata accessor for CKSyncEngine.State.Serialization();
  v24 = *(*(v23 - 8) + 56);
  v24(a6, 1, 1, v23);
  v25 = a2[3];
  v26 = a2[4];
  v37 = a2;
  sub_100020908(a2, v25);
  v27 = *(v26 + 16);
  v38 = a3;
  v28 = v27(a3, v47, v25, v26);
  if (v29 >> 60 == 15)
  {
    sub_1000494D8(&qword_1000916C8, &qword_1000916D0);
    sub_1000494D8(&qword_1000916D8, &qword_1000916E0);
    v30 = v40;
    DeviceActivityDataStore.syncState<A>(_:)();
    sub_100028FF4(a6, &qword_100091678, &qword_10006DF88);
    return sub_100029830(v30, a6, &qword_100091678, &qword_10006DF88);
  }

  else
  {
    v32 = v28;
    v33 = v29;
    sub_100020CD8(v28, v29);
    CKSyncEngine.State.Serialization.init(deprecatedData:)();
    sub_100028FF4(a6, &qword_100091678, &qword_10006DF88);
    v24(v22, 0, 1, v23);
    sub_100029830(v22, a6, &qword_100091678, &qword_10006DF88);
    sub_1000494D8(&qword_1000916C8, &qword_1000916D0);
    sub_1000494D8(&qword_1000916D8, &qword_1000916E0);
    DeviceActivityDataStore.write<A>(_:type:)();
    v34 = v37[3];
    v35 = v37[4];
    sub_100020908(v37, v34);
    memset(v48, 0, sizeof(v48));
    (*(v35 + 40))(v48, v38, v47, v34, v35);
    sub_100020D64(v32, v33);
    return sub_100028FF4(v48, &qword_100091360, &unk_10006D960);
  }
}

uint64_t sub_10003ECF4(uint64_t result)
{
  v1 = *(*result + 208);
  if (!*(result + v1))
  {
    v2 = result;
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100020D2C(v3, qword_100092EB0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Taking a transaction in order to upload local data.", v6, 2u);
    }

    v7 = os_transaction_create();
    v8 = *(v2 + v1);
    *(v2 + v1) = v7;

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10003EE80()
{
  v1 = v0;
  v2 = *(v0 + *(*v0 + 224));
  CKSyncEngine.state.getter();
  v3 = *(CKSyncEngine.State.pendingRecordZoneChanges.getter() + 16);

  if (v3)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100020D2C(v4, qword_100092EB0);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "There are still more changes to upload. Keeping sync transaction alive.", v6, 2u);
    }
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100020D2C(v7, qword_100092EB0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "There are no more changes to upload. Releasing sync transaction.", v10, 2u);
    }

    v11 = *(v1 + *(*v1 + 216));
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100049C1C;
    *(v12 + 24) = v1;
    aBlock[4] = sub_10004EB9C;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003EE58;
    aBlock[3] = &unk_100087468;
    v13 = _Block_copy(aBlock);

    dispatch_sync(v11, v13);
    _Block_release(v13);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void *sub_10003F194(uint64_t a1)
{
  v3 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v9)
  {
    v52 = v8;
    v42 = v1;
    v56 = &_swiftEmptyArrayStorage;
    sub_100046A4C(0, v9, 0);
    v55 = v56;
    v11 = a1 + 56;
    v12 = -1 << *(a1 + 32);
    v13 = _HashTable.startBucket.getter();
    result = sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
    v50 = result;
    v14 = 0;
    v49 = CKCurrentUserDefaultName;
    v48 = (v4 + 104);
    v47 = enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:);
    v45 = a1 + 56;
    v46 = v4 + 32;
    v43 = a1 + 64;
    v44 = v9;
    v51 = v4;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v18 = *(a1 + 36);
      v53 = v14;
      v54 = v18;
      v19 = (*(a1 + 48) + 16 * v13);
      v20 = a1;
      v21 = *v19;
      v22 = v19[1];
      v23 = v3;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      swift_bridgeObjectRetain_n();
      v27._countAndFlagsBits = v21;
      v27._object = v22;
      v28._countAndFlagsBits = v24;
      v3 = v23;
      v28._object = v26;
      v29.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v27, v28).super.isa;
      v30 = v52;
      v52->super.isa = v29.super.isa;
      (*v48)(v30, v47, v23);

      v31 = v55;
      v56 = v55;
      v33 = v55[2];
      v32 = v55[3];
      if (v33 >= v32 >> 1)
      {
        sub_100046A4C(v32 > 1, v33 + 1, 1);
        v30 = v52;
        v31 = v56;
      }

      v31[2] = v33 + 1;
      v34 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v55 = v31;
      result = (*(v51 + 32))(v31 + v34 + *(v51 + 72) * v33, v30, v23);
      v15 = 1 << *(v20 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      a1 = v20;
      v11 = v45;
      v35 = *(v45 + 8 * v17);
      if ((v35 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      if (v54 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v36 = v35 & (-2 << (v13 & 0x3F));
      if (v36)
      {
        v15 = __clz(__rbit64(v36)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v16 = v44;
      }

      else
      {
        v37 = v17 << 6;
        v38 = v17 + 1;
        v16 = v44;
        v39 = (v43 + 8 * v17);
        while (v38 < (v15 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            result = sub_100047C6C(v13, v54, 0);
            v15 = __clz(__rbit64(v40)) + v37;
            goto LABEL_4;
          }
        }

        result = sub_100047C6C(v13, v54, 0);
      }

LABEL_4:
      v14 = v53 + 1;
      v13 = v15;
      if (v53 + 1 == v16)
      {
        return v55;
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
  }

  return result;
}

void *sub_10003F534(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v26 = a1;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v26 + 56;
    v5 = -1 << *(v26 + 32);
    result = _HashTable.startBucket.getter();
    v6 = v26;
    v7 = result;
    v8 = 0;
    v9 = *(v26 + 36);
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v6 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_22;
      }

      v27 = v8;
      v12 = v4;
      v13 = (*(v6 + 48) + 16 * v7);
      v14 = *v13;
      v15 = v13[1];
      v16 = objc_allocWithZone(CKUserIdentityLookupInfo);

      v17 = String._bridgeToObjectiveC()();
      [v16 initWithEmailAddress:v17];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v6 = v26;
      v10 = 1 << *(v26 + 32);
      if (v7 >= v10)
      {
        goto LABEL_23;
      }

      v19 = *(v12 + 8 * v11);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v9 != *(v26 + 36))
      {
        goto LABEL_25;
      }

      v4 = v12;
      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v26 + 64 + 8 * v11);
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_100047C6C(v7, v9, 0);
            v6 = v26;
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_100047C6C(v7, v9, 0);
        v6 = v26;
      }

LABEL_4:
      v8 = v27 + 1;
      v7 = v10;
      if (v27 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10003F7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.Scope();
  v6[5] = Changes;
  v8 = *(Changes - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  ChangesOptions = type metadata accessor for CKSyncEngine.FetchChangesOptions();
  v6[8] = ChangesOptions;
  v11 = *(ChangesOptions - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_10003F8D0, 0, 0);
}

uint64_t sub_10003F8D0()
{
  v1 = v0[10];
  v2 = v0[2];
  (*(v0[6] + 104))(v0[7], enum case for CKSyncEngine.FetchChangesOptions.Scope.all(_:), v0[5]);
  CKSyncEngine.FetchChangesOptions.init(scope:operationGroup:)();
  v3 = *(v2 + *(*v2 + 232));
  v4 = async function pointer to CKSyncEngine.fetchChanges(_:)[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_10003F9C8;
  v6 = v0[10];

  return CKSyncEngine.fetchChanges(_:)(v6);
}

uint64_t sub_10003F9C8()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_10003FCA4;
  }

  else
  {
    v3 = sub_10003FADC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003FADC()
{
  v1 = *(v0[2] + *(*v0[2] + 224));
  v2 = async function pointer to CKSyncEngine.fetchChanges(_:)[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10003FB90;
  v4 = v0[10];

  return CKSyncEngine.fetchChanges(_:)(v4);
}

uint64_t sub_10003FB90()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_10003FE00;
  }

  else
  {
    v3 = sub_10003FD5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003FCA4()
{
  v1 = v0[12];
  v3 = v0[3];
  v2 = v0[4];
  (*(v0[9] + 8))(v0[10], v0[8]);
  swift_errorRetain();
  v3(v1);

  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10003FD5C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  (*(v0 + 24))(0);
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10003FE00()
{
  v1 = v0[14];
  v3 = v0[3];
  v2 = v0[4];
  (*(v0[9] + 8))(v0[10], v0[8]);
  swift_errorRetain();
  v3(v1);

  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10003FEB8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v62 = a3;
  v72 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = dispatch_group_create();
  v17 = v3[7];
  v18 = v3[8];
  v71 = v3;
  sub_100020908(v3 + 4, v17);
  v19 = (*(v18 + 8))(v17, v18);
  v67 = v5;
  v68 = v4;
  v65 = v9;
  v66 = v10;
  v63 = v15;
  v64 = v11;
  if (v19)
  {
    v20 = *(v19 + 16);

    if (v20)
    {
      v21 = v72;
      if (v72 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        v21 = v72;
        if (result)
        {
LABEL_5:
          v23 = result - 1;
          if (result >= 1)
          {
            v24 = 0;
            v25 = v21 & 0xC000000000000001;
            if ((v21 & 0xC000000000000001) == 0)
            {
              goto LABEL_8;
            }

LABEL_7:
            for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v21 + 8 * v24 + 32))
            {
              v27 = i;
              dispatch_group_enter(v16);
              v28 = v71[7];
              v29 = v71[8];
              sub_100020908(v71 + 4, v28);
              v30 = (*(v29 + 8))(v28, v29);
              if (v30)
              {
                if (*(v30 + 16))
                {
                  v31 = v30;
                  v32 = [objc_allocWithZone(CKShare) initWithRecordZoneID:v27];
                  sub_1000432B8(v31, v32, v16);

                  goto LABEL_18;
                }
              }

              if (qword_100090D18 != -1)
              {
                swift_once();
              }

              v33 = type metadata accessor for Logger();
              sub_100020D2C(v33, qword_100092EB0);
              v34 = Logger.logObject.getter();
              v35 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v34, v35))
              {
                v36 = swift_slowAlloc();
                *v36 = 0;
                _os_log_impl(&_mh_execute_header, v34, v35, "No Apple IDs to share with", v36, 2u);
              }

              dispatch_group_leave(v16);
LABEL_18:
              v21 = v72;
              if (v23 == v24)
              {
                goto LABEL_32;
              }

              ++v24;
              if (v25)
              {
                goto LABEL_7;
              }

LABEL_8:
              ;
            }
          }

          goto LABEL_34;
        }
      }

      else
      {
        result = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_5;
        }
      }

LABEL_32:
      v53 = v71[15];
      v54 = swift_allocObject();
      v56 = v61;
      v55 = v62;
      *(v54 + 16) = v61;
      *(v54 + 24) = v55;
      v78 = sub_10004EB14;
      v79 = v54;
      aBlock = _NSConcreteStackBlock;
      v75 = 1107296256;
      v76 = sub_10004EB74;
      v77 = &unk_100087850;
      v57 = _Block_copy(&aBlock);
      sub_100029DB4(v56);
      v58 = v63;
      static DispatchQoS.unspecified.getter();
      v73 = _swiftEmptyArrayStorage;
      sub_100049490(&qword_1000916F8, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_100020818(&qword_100091700, qword_10006E1F0);
      sub_1000495DC(&qword_100091708, &qword_100091700, qword_10006E1F0);
      v59 = v65;
      v60 = v68;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v57);

      (*(v67 + 8))(v59, v60);
      (*(v64 + 8))(v58, v66);
    }
  }

  if (v72 >> 62)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
    if (!v37)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v37 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v37)
    {
      goto LABEL_32;
    }
  }

  result = sub_100021848(0, &qword_100091770, CKRecordID_ptr);
  if (v37 >= 1)
  {
    v38 = 0;
    v39 = v72;
    v69 = v71[3];
    v70 = CKRecordNameZoneWideShare;
    v40 = v72 & 0xC000000000000001;
    do
    {
      if (v40)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v41 = *(v39 + 8 * v38 + 32);
      }

      v42 = v41;
      ++v38;
      dispatch_group_enter(v16);
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;
      v46 = v42;
      v47._countAndFlagsBits = v43;
      v47._object = v45;
      isa = CKRecordID.init(recordName:zoneID:)(v47, v46).super.isa;
      v49 = swift_allocObject();
      *(v49 + 16) = v46;
      *(v49 + 24) = v16;
      v78 = sub_10004EACC;
      v79 = v49;
      aBlock = _NSConcreteStackBlock;
      v75 = 1107296256;
      v76 = sub_10004EBCC;
      v77 = &unk_100087800;
      v50 = _Block_copy(&aBlock);
      v51 = v46;
      v52 = v16;

      [v69 deleteRecordWithID:isa completionHandler:v50];

      _Block_release(v50);

      v39 = v72;
    }

    while (v37 != v38);
    goto LABEL_32;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_100040590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_100020818(&qword_1000917E0, &qword_10006E038);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = v29 - v9;
  v11 = type metadata accessor for _SegmentInterval();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[2] = a1;
  v29[3] = a2;
  v29[0] = 95;
  v29[1] = 0xE100000000000000;
  sub_10004A0A8();
  v17 = StringProtocol.components<A>(separatedBy:)();
  v18 = v17[2];
  if (!v18)
  {

    goto LABEL_5;
  }

  v19 = v17[4];
  v20 = v17[5];
  v21 = &v17[2 * v18 + 4];
  v22 = *(v21 - 16);
  v23 = *(v21 - 8);

  _SegmentInterval.init(unlocalizedSegmentName:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_100028FF4(v10, &qword_1000917E0, &qword_10006E038);
LABEL_5:
    v24 = sub_100020818(&qword_1000917A8, &qword_10006E020);
    return (*(*(v24 - 8) + 56))(a3, 1, 1, v24);
  }

  v26 = *(v12 + 32);
  v26(v16, v10, v11);
  v27 = sub_100020818(&qword_1000917A8, &qword_10006E020);
  v28 = *(v27 + 48);
  *a3 = v19;
  *(a3 + 1) = v20;
  v26(&a3[v28], v16, v11);
  return (*(*(v27 - 8) + 56))(a3, 0, 1, v27);
}

void sub_100040840(void *a1, uint64_t a2, unint64_t a3)
{
  v157 = a2;
  v158 = a3;
  v4 = sub_100020818(&qword_100091790, &qword_10006DC10);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v148 = v144 - v7;
  v150 = type metadata accessor for _DeviceActivityData.ActivitySegment();
  v152 = *(v150 - 8);
  v8 = *(v152 + 64);
  v10 = __chkstk_darwin(v150, v9);
  v146 = v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v154 = v144 - v13;
  v149 = type metadata accessor for DeviceActivityDataStore();
  v159 = *(v149 - 8);
  v14 = *(v159 + 64);
  v16 = __chkstk_darwin(v149, v15);
  v145 = v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v147 = v144 - v19;
  v20 = sub_100020818(&qword_100091798, &qword_10006E010);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v153 = v144 - v23;
  v24 = type metadata accessor for _DeviceActivityData.Metadata();
  v25 = *(v24 - 8);
  v155 = v24;
  v156 = v25;
  v26 = *(v25 + 64);
  v28 = __chkstk_darwin(v24, v27);
  v151 = v144 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v30);
  v160 = v144 - v31;
  v32 = type metadata accessor for _SegmentInterval();
  v164 = *(v32 - 8);
  v165 = v32;
  v33 = *(v164 + 64);
  __chkstk_darwin(v32, v34);
  v163 = v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100020818(&qword_1000917A0, &qword_10006E018);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8, v38);
  v40 = v144 - v39;
  v41 = sub_100020818(&qword_1000917A8, &qword_10006E020);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v45 = __chkstk_darwin(v41, v44);
  v47 = v144 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45, v48);
  v50 = v144 - v49;
  v161 = a1;
  v51 = [a1 recordID];
  v52 = [v51 zoneID];
  v53 = [v52 zoneName];

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  v57 = v166;
  sub_100040590(v54, v56, v40);

  if ((*(v42 + 48))(v40, 1, v41) != 1)
  {
    sub_100029830(v40, v50, &qword_1000917A8, &qword_10006E020);
    v70 = sub_100049C3C();
    v162 = v50;
    if (!v71)
    {
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v83 = type metadata accessor for Logger();
      sub_100020D2C(v83, qword_100092EB0);
      v84 = v51;
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v168[0] = v88;
        *v87 = 136446210;
        v89 = v84;
        v90 = [v89 description];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = sub_100033140(v91, v93, v168);

        *(v87 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v85, v86, "Failed to update local object for %{public}s because the user has Alt DSID", v87, 0xCu);
        sub_1000208BC(v88);
      }

      else
      {
      }

      goto LABEL_27;
    }

    v72 = v70;
    v73 = v71;
    sub_1000297C4(v162, v47, &qword_1000917A8, &qword_10006E020);
    v74 = *(v47 + 1);

    v76 = v163;
    v75 = v164;
    v77 = v165;
    (*(v164 + 32))(v163, &v47[*(v41 + 48)], v165);
    v78 = v73;
    v79 = *(*v57 + 184);
    v81 = DeviceActivityDataStore.localDeviceIdentifier()();
    if (v80)
    {

      v82 = v51;
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      sub_100020D2C(v102, qword_100092EB0);
      swift_errorRetain();
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = v80;
        v107 = v75;
        v108 = swift_slowAlloc();
        v168[0] = v108;
        *v105 = 136446210;
        v167 = v106;
        swift_errorRetain();
        sub_100020818(&qword_100091370, &qword_10006D390);
        v109 = String.init<A>(describing:)();
        v111 = sub_100033140(v109, v110, v168);

        *(v105 + 4) = v111;
        _os_log_impl(&_mh_execute_header, v103, v104, "Failed to update local object: %{public}s", v105, 0xCu);
        sub_1000208BC(v108);

        (*(v107 + 8))(v76, v165);
        goto LABEL_27;
      }

LABEL_26:
      (*(v75 + 8))(v76, v77);
      goto LABEL_27;
    }

    v144[0] = v81._countAndFlagsBits;
    v144[1] = v72;
    v144[2] = v81._object;
    v144[3] = v78;
    v95 = v57;
    v97 = CKRecord.recordType.getter();
    v98 = v96;
    if (v97 == 0x617461646174654DLL && v96 == 0xE800000000000000)
    {

      v99 = v51;
    }

    else
    {
      v100 = v51;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v75 = v164;
        if (v97 == 0x7974697669746341 && v98 == 0xEF746E656D676553)
        {
        }

        else
        {
          v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v112 & 1) == 0)
          {

            if (qword_100090D18 != -1)
            {
              swift_once();
            }

            v115 = type metadata accessor for Logger();
            sub_100020D2C(v115, qword_100092EB0);
            v116 = Logger.logObject.getter();
            v117 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v116, v117))
            {
              v118 = swift_slowAlloc();
              *v118 = 0;
              _os_log_impl(&_mh_execute_header, v116, v117, "Failed to update object with unknown record type", v118, 2u);
            }

            goto LABEL_26;
          }
        }

        v113 = [v51 recordName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        DeviceActivityDataStore.fetchLocalSegment(segmentInterval:recordName:)();

        sub_100020CC4(v157, v158);
        _DeviceActivityData.ActivitySegment.recordSystemFields.setter();
        DeviceActivityDataStore.saveLocalSegment(_:segmentInterval:)();
        v124 = [v51 recordName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        DeviceActivityDataStore.fetchCloudSegment(userAltDSID:deviceIdentifier:segmentInterval:recordName:)();
        v125 = v152;

        v129 = v148;
        v130 = v150;
        (*(v125 + 56))(v148, 0, 1, v150);
        (*(v125 + 32))(v146, v129, v130);
        sub_100020CC4(v157, v158);
        _DeviceActivityData.ActivitySegment.recordSystemFields.setter();
        v131 = v159;
        v132 = v166 + v79;
        v133 = v130;
        v134 = v145;
        (*(v159 + 16))(v145, v132, v149);
        sub_100049490(&qword_100090D68, 255, &type metadata accessor for _DeviceActivityData.ActivitySegment);
        sub_100049490(&qword_100090D70, 255, &type metadata accessor for _DeviceActivityData.ActivitySegment);
        v135 = static DeviceActivityDataStore.encode<A>(_:)();
        v139 = v138;
        v140 = v135;
        v141 = [v100 recordName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v161 = v140;
        v166 = v139;
        DeviceActivityDataStore.saveEncodedCloudSegment(_:userAltDSID:deviceIdentifier:segmentInterval:recordName:)();
        v142 = (v152 + 8);

        sub_100020D78(v161, v166);

        (*(v131 + 8))(v134, v149);
        v143 = *v142;
        (*v142)(v146, v133);
        v143(v154, v133);
        (*(v164 + 8))(v163, v165);
        goto LABEL_27;
      }

      v99 = v51;
    }

    DeviceActivityDataStore.fetchLocalMetadata(segmentInterval:)();
    v101 = v159;
    sub_100020CC4(v157, v158);
    _DeviceActivityData.Metadata.recordSystemFields.setter();
    DeviceActivityDataStore.saveLocalMetadata(_:)();
    DeviceActivityDataStore.fetchCloudMetadata(userAltDSID:deviceIdentifier:segmentInterval:)();
    v114 = v99;
    v120 = v155;
    v119 = v156;
    v121 = v153;
    (*(v156 + 56))(v153, 0, 1, v155);
    (*(v119 + 32))(v151, v121, v120);
    sub_100020CC4(v157, v158);
    _DeviceActivityData.Metadata.recordSystemFields.setter();
    v122 = v147;
    v123 = v149;
    (*(v101 + 16))(v147, v95 + v79, v149);
    sub_100049490(&qword_100091628, 255, &type metadata accessor for _DeviceActivityData.Metadata);
    sub_100049490(&qword_1000917D0, 255, &type metadata accessor for _DeviceActivityData.Metadata);
    v126 = static DeviceActivityDataStore.encode<A>(_:)();
    v166 = v127;
    DeviceActivityDataStore.saveEncodedCloudMetadata(_:userAltDSID:deviceIdentifier:segmentInterval:)();
    v128 = (v156 + 8);

    sub_100020D78(v126, v166);

    (*(v101 + 8))(v122, v123);
    v136 = *v128;
    v137 = v155;
    (*v128)(v151, v155);
    v136(v160, v137);
    (*(v164 + 8))(v76, v165);
LABEL_27:
    sub_100028FF4(v162, &qword_1000917A8, &qword_10006E020);
    return;
  }

  sub_100028FF4(v40, &qword_1000917A0, &qword_10006E018);
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_100020D2C(v58, qword_100092EB0);
  v59 = v51;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v168[0] = v63;
    *v62 = 136446210;
    v64 = v59;
    v65 = [v64 description];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    v69 = sub_100033140(v66, v68, v168);

    *(v62 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v60, v61, "Failed to update local object for %{public}s", v62, 0xCu);
    sub_1000208BC(v63);
  }

  else
  {
  }
}

void sub_100041DEC(uint64_t a1, NSObject *a2)
{
  v5 = v2[7];
  v6 = v2[8];
  sub_100020908(v2 + 4, v5);
  v7 = (*(v6 + 8))(v5, v6);
  if (v7)
  {
    if (*(v7 + 16))
    {
      v8 = v7;
      v9 = [objc_allocWithZone(CKShare) initWithRecordZoneID:a1];
      sub_1000432B8(v8, v9, a2);

      return;
    }
  }

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100020D2C(v10, qword_100092EB0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "No Apple IDs to share with", v13, 2u);
  }

  dispatch_group_leave(a2);
}

void sub_100041F94(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1[3];
  v5 = a1[4];
  sub_100020908(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = v6;
  if ((v6 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100021848(0, &qword_100091710, IDSReceivedInvitation_ptr);
    sub_1000358D0();
    Set.Iterator.init(_cocoa:)();
    v7 = v40[1];
    v8 = v40[2];
    v9 = v40[3];
    v10 = v40[4];
    v11 = v40[5];
  }

  else
  {
    v10 = 0;
    v12 = -1 << *(v6 + 32);
    v8 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
  }

  v15 = (v9 + 64) >> 6;
  v35 = v7;
  v36 = v3;
  v34 = v8;
  v38 = v15;
  while (v7 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100021848(0, &qword_100091710, IDSReceivedInvitation_ptr), swift_dynamicCast(), v20 = v40[0], v18 = v10, v19 = v11, !v40[0]))
    {
LABEL_22:
      sub_100034580();
      return;
    }

LABEL_18:
    v39 = v19;
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100020D2C(v21, qword_100092EB0);
    v22 = v20;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40[0] = v37;
      *v25 = 136446210;
      v26 = v22;
      v27 = [v26 description];
      v28 = a2;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v3 = v36;
      v32 = v29;
      a2 = v28;
      v33 = sub_100033140(v32, v31, v40);
      v7 = v35;

      *(v25 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "Handling pending invitation: %{public}s", v25, 0xCu);
      sub_1000208BC(v37);

      v8 = v34;
    }

    v15 = v38;
    sub_100042328(v3, v22);

    v10 = v18;
    v11 = v39;
  }

  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (v11)
  {
LABEL_14:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_22;
    }

    v17 = *(v8 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_100042328(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v117 = *(v11 - 8);
  v12 = *(v117 + 64);
  __chkstk_darwin(v11, v13);
  v116 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100020818(&qword_100091720, &qword_10006DFB0);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v20 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v21);
  v23 = &v102 - v22;
  v24 = type metadata accessor for URL();
  v119 = *(v24 - 8);
  v120 = v24;
  v25 = *(v119 + 64);
  __chkstk_darwin(v24, v26);
  v118 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 context];
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = v28;
    v111 = v10;
    v112 = v11;
    v113 = v6;
    v114 = v5;
    v30 = [v28 schemaIdentifier];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (v31 == 0xD000000000000030 && 0x8000000100070180 == v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v115 = v3;

      v34 = [v29 dictionary];
      v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v35 + 16))
      {
        v36 = sub_100033790(0x6974617469766E69, 0xEE00617461446E6FLL);
        if (v37)
        {
          sub_100020860(*(v35 + 56) + 32 * v36, &aBlock);

          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_27:
            v57 = v115;
            if (qword_100090D18 != -1)
            {
              swift_once();
            }

            v58 = type metadata accessor for Logger();
            sub_100020D2C(v58, qword_100092EB0);
            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              *v61 = 0;
              _os_log_impl(&_mh_execute_header, v59, v60, "Failed to extract share metadata from invitation. Declining the invitation.", v61, 2u);
            }

            v62 = v57[12];
            v63 = v57[13];
            sub_100020908(v57 + 9, v62);
            (*(v63 + 48))(a2, sub_100059710, 0, v62, v63);
            return swift_unknownObjectRelease();
          }

          v109 = v121;
          v110 = v122;
          v38 = [v29 dictionary];
          v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v39 + 16))
          {
            v40 = sub_100033790(0xD000000000000018, 0x8000000100070200);
            if (v41)
            {
              sub_100020860(*(v39 + 56) + 32 * v40, &aBlock);

              if ((swift_dynamicCast() & 1) == 0)
              {
                sub_100020D78(v109, v110);
                goto LABEL_27;
              }

              URL.init(string:)();

              v42 = v119;
              v43 = v120;
              v44 = *(v119 + 48);
              if (v44(v23, 1, v120) == 1)
              {
                sub_100020D78(v109, v110);
                sub_100028FF4(v23, &qword_100091720, &qword_10006DFB0);
                goto LABEL_27;
              }

              v72 = v118;
              (*(v42 + 32))(v118, v23, v43);
              v73 = *(v42 + 16);
              v108 = (v42 + 16);
              v107 = v73;
              v73(v20, v72, v43);
              (*(v42 + 56))(v20, 0, 1, v43);
              sub_100020CD8(v109, v110);
              v74.super.isa = Data._bridgeToObjectiveC()().super.isa;
              if (v44(v20, 1, v43) == 1)
              {
                v76 = 0;
              }

              else
              {
                URL._bridgeToObjectiveC()(v75);
                v76 = v77;
                (*(v42 + 8))(v20, v43);
              }

              v104 = [objc_allocWithZone(CKDeviceToDeviceShareInvitationToken) initWithSharingInvitationData:v74.super.isa shareURL:v76];

              sub_100020D78(v109, v110);
              v106 = swift_allocObject();
              v105 = sub_100021848(0, &qword_100091728, CKFetchShareMetadataOperation_ptr);
              sub_100020818(&qword_100091730, &qword_10006DFB8);
              v78 = *(v42 + 72);
              v79 = (*(v42 + 80) + 32) & ~*(v42 + 80);
              v80 = swift_allocObject();
              v102 = xmmword_10006D8A0;
              v103 = v80;
              *(v80 + 16) = xmmword_10006D8A0;
              v81 = v118;
              v82 = v107;
              v107(v80 + v79, v118, v43);
              sub_100020818(&qword_100091738, &qword_10006DFC0);
              v83 = v43;
              v84 = (sub_100020818(&unk_100091740, &unk_10006DFC8) - 8);
              v85 = *(*v84 + 72);
              v86 = (*(*v84 + 80) + 32) & ~*(*v84 + 80);
              v87 = swift_allocObject();
              *(v87 + 16) = v102;
              v88 = v87 + v86;
              v89 = v84[14];
              v82(v88, v81, v83);
              v90 = v104;
              *(v88 + v89) = v104;
              v108 = v90;
              sub_100049960(v87);
              swift_setDeallocating();
              sub_100028FF4(v88, &unk_100091740, &unk_10006DFC8);
              swift_deallocClassInstance();
              v91 = v106;
              sub_1000215E0((v106 + 16));
              [*(v91 + 16) setQualityOfService:25];
              v92 = swift_allocObject();
              v93 = v115;
              *(v92 + 16) = v115;
              *(v92 + 24) = a2;
              v94 = *(v91 + 16);

              v95 = a2;
              CKFetchShareMetadataOperation.perShareMetadataResultBlock.setter();
              sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
              v96 = static OS_dispatch_queue.main.getter();
              v97 = swift_allocObject();
              *(v97 + 16) = v93;
              *(v97 + 24) = v91;
              v127 = sub_100049B58;
              v128 = v97;
              aBlock = _NSConcreteStackBlock;
              v124 = 1107296256;
              v125 = sub_10004EB74;
              v126 = &unk_1000872D8;
              v98 = _Block_copy(&aBlock);

              v99 = v116;
              static DispatchQoS.unspecified.getter();
              aBlock = &_swiftEmptyArrayStorage;
              sub_100049490(&qword_1000916F8, 255, &type metadata accessor for DispatchWorkItemFlags);
              sub_100020818(&qword_100091700, qword_10006E1F0);
              sub_1000495DC(&qword_100091708, &qword_100091700, qword_10006E1F0);
              v100 = v111;
              v101 = v114;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v98);

              swift_unknownObjectRelease();
              sub_100020D78(v109, v110);
              (*(v113 + 8))(v100, v101);
              (*(v117 + 8))(v99, v112);
              (*(v119 + 8))(v118, v120);
            }
          }

          sub_100020D78(v109, v110);
        }
      }

      goto LABEL_27;
    }

    if (v31 == 0xD000000000000037 && 0x80000001000701C0 == v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (qword_100090D50 != -1)
      {
        swift_once();
      }

      v52 = qword_100092F08;
      v53 = swift_allocObject();
      *(v53 + 16) = v3;
      *(v53 + 24) = a2;
      v54 = v3[3];
      v127 = sub_100049630;
      v128 = v53;
      aBlock = _NSConcreteStackBlock;
      v124 = 1107296256;
      v125 = sub_10004EBCC;
      v126 = &unk_100087238;
      v55 = _Block_copy(&aBlock);

      v56 = a2;

      [v54 saveRecordZone:v52 completionHandler:v55];

      swift_unknownObjectRelease();
      _Block_release(v55);
    }

    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100020D2C(v64, qword_100092EB0);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      aBlock = v68;
      *v67 = 136446210;
      v69 = sub_100033140(v31, v33, &aBlock);

      *(v67 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v65, v66, "Received invitation using unknown schema: %{public}s", v67, 0xCu);
      sub_1000208BC(v68);
    }

    else
    {
    }

    v70 = v3[12];
    v71 = v3[13];
    sub_100020908(v3 + 9, v70);
    (*(v71 + 48))(a2, sub_100059710, 0, v70, v71);

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100020D2C(v45, qword_100092EB0);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Failed to extract context from invitation. Declining the invitation.", v48, 2u);
    }

    v49 = v3[12];
    v50 = v3[13];
    sub_100020908(v3 + 9, v49);
    return (*(v50 + 48))(a2, sub_100059710, 0, v49, v50);
  }
}

uint64_t sub_100043274(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000432B8(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = *(v46 + 64);
  __chkstk_darwin(v13, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100020D2C(v18, qword_100092EB0);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v44 = v17;
    v45 = v4;
    v23 = v12;
    v24 = a3;
    v25 = v22;
    aBlock[0] = v22;
    *v21 = 136446210;
    v26 = Set.description.getter();
    v28 = sub_100033140(v26, v27, aBlock);

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Fetching share participants with Apple IDs: %{public}s", v21, 0xCu);
    sub_1000208BC(v25);
    a3 = v24;
    v12 = v23;
    v17 = v44;
    v4 = v45;
  }

  sub_10003F534(a1);
  v29 = swift_allocObject();
  sub_100021848(0, &qword_100091818, CKFetchShareParticipantsOperation_ptr);
  off_100091110((v29 + 16));
  [*(v29 + 16) setQualityOfService:25];
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10004C1BC;
  *(v31 + 24) = v30;
  v32 = *(v29 + 16);
  v33 = a2;
  CKFetchShareParticipantsOperation.perShareParticipantResultBlock.setter();
  v34 = swift_allocObject();
  v34[2] = v4;
  v34[3] = v33;
  v34[4] = a3;
  v35 = *(v29 + 16);
  v36 = v33;

  v37 = a3;
  CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.setter();
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v38 = static OS_dispatch_queue.main.getter();
  v39 = swift_allocObject();
  *(v39 + 16) = v4;
  *(v39 + 24) = v29;
  aBlock[4] = sub_10004C224;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_1000875A8;
  v40 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100049490(&qword_1000916F8, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_1000495DC(&qword_100091708, &qword_100091700, qword_10006E1F0);
  v41 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v40);

  (*(v48 + 8))(v12, v41);
  (*(v46 + 8))(v17, v47);
}