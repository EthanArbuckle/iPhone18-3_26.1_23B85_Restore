BOOL sub_1000CDD0C()
{
  v1 = sub_100024A2C(&qword_10041CA58, &qword_100374488);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10041CA58, &qword_100374488);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10041CA58, &qword_100374488);
  return v8;
}

uint64_t sub_1000CDE2C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA58, &qword_100374488);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10012A7D4(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10041CA58, &qword_100374488);
  return swift_endAccess();
}

uint64_t sub_1000CDF74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA60, &qword_100374490);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10041CA60, &qword_100374490);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000112AC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (qword_100443D30 != -1)
  {
    swift_once();
  }

  *(a1 + v11) = qword_100443D38;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return sub_1000059A8(v6, &qword_10041CA60, &qword_100374490);
  }

  return result;
}

uint64_t sub_1000CE140(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA60, &qword_100374490);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10012A7D4(v16);
    *(v2 + v8) = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10041CA60, &qword_100374490);
  return swift_endAccess();
}

void (*sub_1000CE2AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA60, &qword_100374490) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA60, &qword_100374490);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    if (qword_100443D30 != -1)
    {
      swift_once();
    }

    *(v13 + v18) = qword_100443D38;
    v19 = v17(v7, 1, v8);

    if (v19 != 1)
    {
      sub_1000059A8(v7, &qword_10041CA60, &qword_100374490);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  }

  return sub_1000CE544;
}

void sub_1000CE544(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10012A7D4(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10041CA60, &qword_100374490);
    swift_endAccess();
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10012A7D4(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10041CA60, &qword_100374490);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000CE794()
{
  v1 = sub_100024A2C(&qword_10041CA60, &qword_100374490);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10041CA60, &qword_100374490);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10041CA60, &qword_100374490);
  return v8;
}

uint64_t sub_1000CE8B4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA60, &qword_100374490);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10012A7D4(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10041CA60, &qword_100374490);
  return swift_endAccess();
}

uint64_t sub_1000CE9FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA68, &qword_100374498);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10041CA68, &qword_100374498);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000112AC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  }

  UnknownStorage.init()();
  *(a1 + *(v9 + 20)) = 14;
  *(a1 + *(v9 + 24)) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10041CA68, &qword_100374498);
  }

  return result;
}

uint64_t sub_1000CEB8C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA68, &qword_100374498);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10012A7D4(v16);
    *(v2 + v8) = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10041CA68, &qword_100374498);
  return swift_endAccess();
}

void (*sub_1000CECF8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA68, &qword_100374498) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA68, &qword_100374498);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = 14;
    *(v13 + *(v8 + 24)) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA68, &qword_100374498);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  }

  return sub_1000CEF5C;
}

void sub_1000CEF5C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10012A7D4(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10041CA68, &qword_100374498);
    swift_endAccess();
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10012A7D4(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10041CA68, &qword_100374498);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000CF1AC()
{
  v1 = sub_100024A2C(&qword_10041CA68, &qword_100374498);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10041CA68, &qword_100374498);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10041CA68, &qword_100374498);
  return v8;
}

uint64_t sub_1000CF2CC()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA68, &qword_100374498);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10012A7D4(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10041CA68, &qword_100374498);
  return swift_endAccess();
}

void (*sub_1000CF47C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000CF528;
}

uint64_t sub_1000CF57C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_10012A7D4(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  result = swift_beginAccess();
  *(v5 + v10) = 2;
  return result;
}

void (*sub_1000CF67C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000CF738;
}

void (*sub_1000CF83C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000CF8EC;
}

uint64_t sub_1000CF940()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_10012A7D4(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  result = swift_beginAccess();
  *(v5 + v10) = 3;
  return result;
}

uint64_t sub_1000CF9D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA70, &qword_1003744A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10041CA70, &qword_1003744A0);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000112AC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v9[8];
  *v14 = 0;
  *(v14 + 8) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10041CA70, &qword_1003744A0);
  }

  return result;
}

uint64_t sub_1000CFB94(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA70, &qword_1003744A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10012A7D4(v16);
    *(v2 + v8) = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10041CA70, &qword_1003744A0);
  return swift_endAccess();
}

void (*sub_1000CFD00(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA70, &qword_1003744A0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA70, &qword_1003744A0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v13 + v8[8];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA70, &qword_1003744A0);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  }

  return sub_1000CFF90;
}

void sub_1000CFF90(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10012A7D4(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10041CA70, &qword_1003744A0);
    swift_endAccess();
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10012A7D4(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10041CA70, &qword_1003744A0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000D01E0()
{
  v1 = sub_100024A2C(&qword_10041CA70, &qword_1003744A0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10041CA70, &qword_1003744A0);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10041CA70, &qword_1003744A0);
  return v8;
}

uint64_t sub_1000D0300()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA70, &qword_1003744A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10012A7D4(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10041CA70, &qword_1003744A0);
  return swift_endAccess();
}

uint64_t sub_1000D0448@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA78, &qword_1003744A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10041CA78, &qword_1003744A8);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000112AC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  }

  UnknownStorage.init()();
  v11 = a1 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + *(v9 + 24);
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10041CA78, &qword_1003744A8);
  }

  return result;
}

uint64_t sub_1000D05E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA78, &qword_1003744A8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10012A7D4(v16);
    *(v2 + v8) = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10041CA78, &qword_1003744A8);
  return swift_endAccess();
}

void (*sub_1000D0750(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA78, &qword_1003744A8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA78, &qword_1003744A8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + *(v8 + 24);
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA78, &qword_1003744A8);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  }

  return sub_1000D09C0;
}

void sub_1000D09C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10012A7D4(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10041CA78, &qword_1003744A8);
    swift_endAccess();
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10012A7D4(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10041CA78, &qword_1003744A8);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000D0C10()
{
  v1 = sub_100024A2C(&qword_10041CA78, &qword_1003744A8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10041CA78, &qword_1003744A8);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10041CA78, &qword_1003744A8);
  return v8;
}

uint64_t sub_1000D0D30()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA78, &qword_1003744A8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10012A7D4(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10041CA78, &qword_1003744A8);
  return swift_endAccess();
}

uint64_t sub_1000D0E78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA80, &qword_1003744B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10041CA80, &qword_1003744B0);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000112AC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  }

  UnknownStorage.init()();
  v11 = a1 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (a1 + *(v9 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10041CA80, &qword_1003744B0);
  }

  return result;
}

uint64_t sub_1000D1010(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA80, &qword_1003744B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10012A7D4(v16);
    *(v2 + v8) = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10041CA80, &qword_1003744B0);
  return swift_endAccess();
}

void (*sub_1000D117C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA80, &qword_1003744B0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA80, &qword_1003744B0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = (v13 + *(v8 + 24));
    *v19 = 0;
    v19[1] = 0;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA80, &qword_1003744B0);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  }

  return sub_1000D13E8;
}

void sub_1000D13E8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10012A7D4(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10041CA80, &qword_1003744B0);
    swift_endAccess();
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10012A7D4(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10041CA80, &qword_1003744B0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000D1638()
{
  v1 = sub_100024A2C(&qword_10041CA80, &qword_1003744B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10041CA80, &qword_1003744B0);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10041CA80, &qword_1003744B0);
  return v8;
}

uint64_t sub_1000D1758()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA80, &qword_1003744B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10012A7D4(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10041CA80, &qword_1003744B0);
  return swift_endAccess();
}

uint64_t sub_1000D1908(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  v12 = *(v5 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v19 = v14;
    v14 = v18;
    a4(v19);
    *(v9 + v11) = v18;
  }

  v20 = *a5;
  result = swift_beginAccess();
  *(v14 + v20) = a1;
  return result;
}

void (*sub_1000D19C4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000D1A74;
}

void sub_1000D1AA8(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 80);
  v11 = *(*a1 + 72);
  v12 = *(v11 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = *(v8 + 80);
    v16 = *(v8 + 72);
    v17 = a3(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    v21 = v14;
    v14 = v20;
    a4(v21);
    *(v16 + v15) = v20;
  }

  v22 = *a5;
  swift_beginAccess();
  *(v14 + v22) = v9;

  free(v8);
}

uint64_t sub_1000D1BB0()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_10012A7D4(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  result = swift_beginAccess();
  *(v5 + v10) = 3;
  return result;
}

uint64_t sub_1000D1C48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA88, &qword_1003744B8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10041CA88, &qword_1003744B8);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000112AC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10041CA88, &qword_1003744B8);
  }

  return result;
}

uint64_t sub_1000D1DF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA88, &qword_1003744B8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10012A7D4(v16);
    *(v2 + v8) = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10041CA88, &qword_1003744B8);
  return swift_endAccess();
}

void (*sub_1000D1F60(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA88, &qword_1003744B8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA88, &qword_1003744B8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA88, &qword_1003744B8);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
  }

  return sub_1000D21E0;
}

void sub_1000D21E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10012A7D4(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10041CA88, &qword_1003744B8);
    swift_endAccess();
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10012A7D4(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10041CA88, &qword_1003744B8);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000D2430()
{
  v1 = sub_100024A2C(&qword_10041CA88, &qword_1003744B8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10041CA88, &qword_1003744B8);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10041CA88, &qword_1003744B8);
  return v8;
}

uint64_t sub_1000D2550()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA88, &qword_1003744B8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10012A7D4(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10041CA88, &qword_1003744B8);
  return swift_endAccess();
}

uint64_t sub_1000D26A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198514();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000D270C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001984C0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000D283C@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations(0) + 24);
  return UnknownStorage.init()();
}

uint64_t sub_1000D287C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 20));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D28A8(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1000D28D8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000D2964()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v0 + *(result + 20)) = 3;
  return result;
}

uint64_t sub_1000D29B4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1000D29E4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000D2A6C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_1000D2A94()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 28));
  if (v1 == 5)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D2AC0(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1000D2AF0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 1;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000D2B7C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v0 + *(result + 28)) = 5;
  return result;
}

uint64_t sub_1000D2BBC(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000D2BF4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000D2C8C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000D2CE4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1000D2D14(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000D2D9C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

int *sub_1000D2DC4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(a1 + result[5]) = 3;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 5;
  v3 = a1 + result[8];
  *v3 = 0;
  *(v3 + 4) = 1;
  *(a1 + result[9]) = 2;
  return result;
}

uint64_t sub_1000D2E58(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1000D2E88(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000D2F10()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_1000D2F38@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0);
  *(a1 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_1000D2F70()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 16) == 72)
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t sub_1000D3004(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(a2(0) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = a3(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    a4(v12);

    *(v7 + v9) = v16;
    v12 = v16;
  }

  result = swift_beginAccess();
  *(v12 + 16) = a1;
  return result;
}

void (*sub_1000D30C0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 72)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000D3168;
}

void sub_1000D3194(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 84);
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 72);
  v10 = *(v9 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v6 + 80);
    v14 = *(v6 + 72);
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    a4(v12);

    *(v14 + v13) = v18;
    v12 = v18;
  }

  swift_beginAccess();
  *(v12 + 16) = v7;

  free(v6);
}

BOOL sub_1000D3274()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) != 72;
}

uint64_t sub_1000D330C(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), char a4)
{
  v8 = v4;
  v9 = *(a1(0) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = a2(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    a3(v12);

    *(v8 + v9) = v16;
    v12 = v16;
  }

  result = swift_beginAccess();
  *(v12 + 16) = a4;
  return result;
}

uint64_t sub_1000D33CC()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 17) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 17);
  }
}

uint64_t sub_1000D3420(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    sub_1001745A0(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 17) = a1;
  return result;
}

void (*sub_1000D34C0(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 17);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000D3568;
}

void sub_1000D3568(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 84);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 17) = v2;

  free(v1);
}

BOOL sub_1000D3638()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 17) != 4;
}

uint64_t sub_1000D368C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_1001745A0(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 17) = 4;
  return result;
}

uint64_t sub_1000D3724()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 18) == 3)
  {
    return 0;
  }

  else
  {
    return *(v1 + 18);
  }
}

uint64_t sub_1000D3778(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    sub_1001745A0(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 18) = a1;
  return result;
}

void (*sub_1000D3818(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 18);
  if (v7 == 3)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000D38C0;
}

void sub_1000D38C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 84);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 18) = v2;

  free(v1);
}

BOOL sub_1000D3990()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 18) != 3;
}

uint64_t sub_1000D39E4()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_1001745A0(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 18) = 3;
  return result;
}

uint64_t sub_1000D3A7C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 19) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 19);
  }
}

uint64_t sub_1000D3AD0(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    sub_1001745A0(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 19) = a1;
  return result;
}

void (*sub_1000D3B70(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 19);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000D3C18;
}

void sub_1000D3C18(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 84);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 19) = v2;

  free(v1);
}

BOOL sub_1000D3CE8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 19) != 4;
}

uint64_t sub_1000D3D3C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_1001745A0(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 19) = 4;
  return result;
}

uint64_t sub_1000D3DD4()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 20) & 1;
}

uint64_t sub_1000D3E24(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    sub_1001745A0(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 20) = a1 & 1;
  return result;
}

void (*sub_1000D3EC8(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 20) & 1;
  return sub_1000D3F6C;
}

void sub_1000D3F6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 20) = v4;

  free(v1);
}

BOOL sub_1000D4038()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 20) != 2;
}

uint64_t sub_1000D408C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_1001745A0(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 20) = 2;
  return result;
}

float sub_1000D4124()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  result = *(v1 + 24);
  if (*(v1 + 28))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000D4180(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    sub_1001745A0(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 24) = a1;
  *(v7 + 28) = 0;
  return result;
}

void (*sub_1000D4224(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 28))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return sub_1000D42D4;
}

void sub_1000D42D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 24) = v2;
  *(v7 + 28) = 0;

  free(v1);
}

BOOL sub_1000D43A8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return (*(v1 + 28) & 1) == 0;
}

uint64_t sub_1000D43FC()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_1001745A0(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 24) = 0;
  *(v5 + 28) = 1;
  return result;
}

double sub_1000D44B0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 32);
  if (*(v2 + 40))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000D4554(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), double a4)
{
  v7 = v4;
  v9 = *(a1(0) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = a2(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    a3(v12);

    *(v7 + v9) = v16;
    v12 = v16;
  }

  result = swift_beginAccess();
  *(v12 + 32) = a4;
  *(v12 + 40) = 0;
  return result;
}

void (*sub_1000D4618(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 40))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000D46C8;
}

void sub_1000D46F4(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 88);
  v9 = *(*a1 + 80);
  v10 = *(v9 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v6 + 88);
    v14 = *(v6 + 80);
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    a4(v12);

    *(v14 + v13) = v18;
    v12 = v18;
  }

  swift_beginAccess();
  *(v12 + 32) = v7;
  *(v12 + 40) = 0;

  free(v6);
}

BOOL sub_1000D47F0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 40) & 1) == 0;
}

uint64_t sub_1000D488C(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = *(a1(0) + 20);
  v8 = *(v3 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = a2(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    a3(v10);

    *(v6 + v7) = v14;
    v10 = v14;
  }

  result = swift_beginAccess();
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  return result;
}

uint64_t sub_1000D4948()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 41) & 1;
}

uint64_t sub_1000D4998(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    sub_1001745A0(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 41) = a1 & 1;
  return result;
}

void (*sub_1000D4A3C(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 41) & 1;
  return sub_1000D4AE0;
}

void sub_1000D4AE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 41) = v4;

  free(v1);
}

BOOL sub_1000D4BAC()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 41) != 2;
}

uint64_t sub_1000D4C00()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_1001745A0(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 41) = 2;
  return result;
}

uint64_t sub_1000D4C98()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 42) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 42);
  }
}

uint64_t sub_1000D4CEC(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    sub_1001745A0(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 42) = a1;
  return result;
}

void (*sub_1000D4D8C(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 42);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000D4E34;
}

void sub_1000D4E34(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 84);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 42) = v2;

  free(v1);
}

BOOL sub_1000D4F04()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 42) != 4;
}

uint64_t sub_1000D4F58()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_1001745A0(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 42) = 4;
  return result;
}

double sub_1000D5008(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 48);
  if (*(v2 + 56))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000D50AC(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), double a4)
{
  v7 = v4;
  v9 = *(a1(0) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = a2(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    a3(v12);

    *(v7 + v9) = v16;
    v12 = v16;
  }

  result = swift_beginAccess();
  *(v12 + 48) = a4;
  *(v12 + 56) = 0;
  return result;
}

void (*sub_1000D5170(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 48);
  if (*(v6 + 56))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000D5220;
}

void sub_1000D524C(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 88);
  v9 = *(*a1 + 80);
  v10 = *(v9 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v6 + 88);
    v14 = *(v6 + 80);
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    a4(v12);

    *(v14 + v13) = v18;
    v12 = v18;
  }

  swift_beginAccess();
  *(v12 + 48) = v7;
  *(v12 + 56) = 0;

  free(v6);
}

BOOL sub_1000D5348(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 56) & 1) == 0;
}

uint64_t sub_1000D53E4(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = *(a1(0) + 20);
  v8 = *(v3 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = a2(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    a3(v10);

    *(v6 + v7) = v14;
    v10 = v14;
  }

  result = swift_beginAccess();
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
  return result;
}

double sub_1000D54B8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 64);
  if (*(v2 + 72))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000D555C(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), double a4)
{
  v7 = v4;
  v9 = *(a1(0) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = a2(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    a3(v12);

    *(v7 + v9) = v16;
    v12 = v16;
  }

  result = swift_beginAccess();
  *(v12 + 64) = a4;
  *(v12 + 72) = 0;
  return result;
}

void (*sub_1000D5620(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 64);
  if (*(v6 + 72))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000D56D0;
}

void sub_1000D56FC(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 88);
  v9 = *(*a1 + 80);
  v10 = *(v9 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v6 + 88);
    v14 = *(v6 + 80);
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    a4(v12);

    *(v14 + v13) = v18;
    v12 = v18;
  }

  swift_beginAccess();
  *(v12 + 64) = v7;
  *(v12 + 72) = 0;

  free(v6);
}

BOOL sub_1000D57F8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 72) & 1) == 0;
}

uint64_t sub_1000D5894(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = *(a1(0) + 20);
  v8 = *(v3 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = a2(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    a3(v10);

    *(v6 + v7) = v14;
    v10 = v14;
  }

  result = swift_beginAccess();
  *(v10 + 64) = 0;
  *(v10 + 72) = 1;
  return result;
}

uint64_t sub_1000D5950()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 73) == 72)
  {
    return 0;
  }

  else
  {
    return *(v1 + 73);
  }
}

uint64_t sub_1000D59A4(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    sub_1001745A0(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 73) = a1;
  return result;
}

void (*sub_1000D5A44(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 73);
  if (v7 == 72)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000D5AEC;
}

void sub_1000D5AEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 84);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 73) = v2;

  free(v1);
}

BOOL sub_1000D5BBC()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 73) != 72;
}

uint64_t sub_1000D5C10()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_1001745A0(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 73) = 72;
  return result;
}

uint64_t sub_1000D5CA8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 74) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 74);
  }
}

uint64_t sub_1000D5CFC(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    sub_1001745A0(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 74) = a1;
  return result;
}

void (*sub_1000D5D9C(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 74);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000D5E44;
}

void sub_1000D5E44(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 84);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 74) = v2;

  free(v1);
}

BOOL sub_1000D5F14()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 74) != 4;
}

uint64_t sub_1000D5F68()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_1001745A0(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 74) = 4;
  return result;
}

uint64_t sub_1000D6020(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_1001745A0(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000D6194(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA30, &qword_100374460);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_1000D6414;
}

void sub_1000D6414(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1001745A0(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1001745A0(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000D6674()
{
  v1 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10041CA30, &qword_100374460);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10041CA30, &qword_100374460);
  return v8;
}

uint64_t sub_1000D6794()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_1001745A0(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v15, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

uint64_t sub_1000D6904(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_1001745A0(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000D6A78(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA30, &qword_100374460);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_1000D6CF8;
}

void sub_1000D6CF8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1001745A0(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1001745A0(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000D6F58()
{
  v1 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10041CA30, &qword_100374460);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10041CA30, &qword_100374460);
  return v8;
}

uint64_t sub_1000D7078()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_1001745A0(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v15, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

uint64_t sub_1000D71C8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  if (*(v1 + v2) == 6)
  {
    return 0;
  }

  else
  {
    return *(v1 + v2);
  }
}

void (*sub_1000D726C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 6)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000D731C;
}

BOOL sub_1000D7350()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  return *(v1 + v2) != 6;
}

uint64_t sub_1000D73AC()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_1001745A0(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  result = swift_beginAccess();
  *(v5 + v10) = 6;
  return result;
}

uint64_t sub_1000D7458(uint64_t a1, uint64_t a2)
{
  v4 = sub_10019846C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000D74C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198418();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000D7528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001983C4();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000D7590(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198370();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t (*sub_1000D7678(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000D7948(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1000D7984(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000D79BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000D7A54()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000D7A84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
  sub_10000A0A4(v1 + *(v7 + 28), v6, &qword_10041CA90, &qword_1003744C0);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000112AC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (qword_100443DF8 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_100443E00;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_1000059A8(v6, &qword_10041CA90, &qword_1003744C0);
  }

  return result;
}

uint64_t sub_1000D7C2C(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 28);
  sub_1000059A8(v1 + v3, &qword_10041CA90, &qword_1003744C0);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000D7CE4(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA90, &qword_1003744C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA90, &qword_1003744C0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    if (qword_100443DF8 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100443E00;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000059A8(v7, &qword_10041CA90, &qword_1003744C0);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  }

  return sub_1000D7F3C;
}

uint64_t sub_1000D8034()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 20));
  if (v1 == 72)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D8060(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1000D8090(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 72)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000D811C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  *(v0 + *(result + 20)) = 72;
  return result;
}

uint64_t sub_1000D815C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000D8194(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000D8230()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000D8278(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 28);
  sub_1000059A8(v1 + v3, &qword_10041CA30, &qword_100374460);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1000D8330(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

BOOL sub_1000D85AC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_10000A0A4(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000059A8(v12, a1, a2);
  return v15;
}

uint64_t sub_1000D86E4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1000D8790()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 32));
  if (v1 == 72)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D87BC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1000D87EC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 72)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000D8878()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  *(v0 + *(result + 32)) = 72;
  return result;
}

uint64_t sub_1000D88A0@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  *(a1 + v2[5]) = 72;
  v3 = a1 + v2[6];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v2[7];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v2[8]) = 72;
  return result;
}

uint64_t (*sub_1000D897C(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000D8C4C(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000D8C84(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000D8D1C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000D8D4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA98, &qword_1003744C8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
  sub_10000A0A4(v1 + *(v7 + 28), v6, &qword_10041CA98, &qword_1003744C8);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000112AC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 72;
  v10 = a1 + v8[6];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v8[7];
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  *(a1 + v8[8]) = 72;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10041CA98, &qword_1003744C8);
  }

  return result;
}

uint64_t sub_1000D8F14(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 28);
  sub_1000059A8(v1 + v3, &qword_10041CA98, &qword_1003744C8);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000D8FCC(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA98, &qword_1003744C8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA98, &qword_1003744C8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 72;
    v16 = v13 + v8[6];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v8[7];
    v18 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    *(v13 + v8[8]) = 72;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA98, &qword_1003744C8);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  }

  return sub_1000D9244;
}

uint64_t sub_1000D9324@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = a1(0);
  v7 = v6[5];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = a3 + v6[6];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v6[7];
  v11 = a2(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a3 + v10, 1, 1, v11);
}

uint64_t sub_1000D9434()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1000D9488(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_1000D94D0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_100198F98;
}

uint64_t sub_1000D95B0()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 20));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_1000D9600(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1000D9674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*sub_1000D96C0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_100198F98;
}

uint64_t sub_1000D97B8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1000D97F8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 28));
  if (v1 == 67)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D9824(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1000D9854(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 67)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000D98E0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  *(v0 + *(result + 28)) = 67;
  return result;
}

uint64_t sub_1000D9908()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 32));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D9934(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1000D9964(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000D99F0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  *(v0 + *(result + 32)) = 5;
  return result;
}

uint64_t sub_1000D9A18()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 36));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D9A44(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1000D9A74(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000D9B00()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  *(v0 + *(result + 36)) = 3;
  return result;
}

uint64_t sub_1000D9B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10019831C();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_1000D9B84@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100174B7C(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000D9BBC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100174B7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D9BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001982C8();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000D9C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198274();

  return Enum.hash(into:)(a1, a2, v4);
}

int *sub_1000D9CB8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + result[7]) = 67;
  *(a1 + result[8]) = 5;
  *(a1 + result[9]) = 3;
  return result;
}

uint64_t (*sub_1000D9D58(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000DA028(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041CA30, &qword_100374460);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1000DA0E0(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000DA398()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 28));
  if (v1 == 19)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000DA3C4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1000DA3F4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 19)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000DA480()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  *(v0 + *(result + 28)) = 19;
  return result;
}

uint64_t (*sub_1000DA4D8(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000DA790@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CAA0, &qword_1003744D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  sub_10000A0A4(v1 + *(v7 + 36), v6, &qword_10041CAA0, &qword_1003744D0);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000112AC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  }

  UnknownStorage.init()();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v8[7]) = 67;
  *(a1 + v8[8]) = 5;
  *(a1 + v8[9]) = 3;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10041CAA0, &qword_1003744D0);
  }

  return result;
}

uint64_t sub_1000DA920(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 36);
  sub_1000059A8(v1 + v3, &qword_10041CAA0, &qword_1003744D0);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000DA9D8(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CAA0, &qword_1003744D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 36);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CAA0, &qword_1003744D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = (v13 + v8[5]);
    *v16 = 0;
    v16[1] = 0;
    v17 = (v13 + v8[6]);
    *v17 = 0;
    v17[1] = 0;
    *(v13 + v8[7]) = 67;
    *(v13 + v8[8]) = 5;
    *(v13 + v8[9]) = 3;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CAA0, &qword_1003744D0);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  }

  return sub_1000DAC20;
}

BOOL sub_1000DAC5C()
{
  v1 = sub_100024A2C(&qword_10041CAA0, &qword_1003744D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  sub_10000A0A4(v0 + *(v5 + 36), v4, &qword_10041CAA0, &qword_1003744D0);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000059A8(v4, &qword_10041CAA0, &qword_1003744D0);
  return v7;
}

uint64_t sub_1000DAD50()
{
  v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 36);
  sub_1000059A8(v0 + v1, &qword_10041CAA0, &qword_1003744D0);
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1000DADEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198220();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_1000DAE38@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100174BAC(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000DAE70@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100174BAC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000DAE9C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[6], 1, 1, v4);
  *(a1 + v2[7]) = 19;
  v5(a1 + v2[8], 1, 1, v4);
  v6 = v2[9];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t sub_1000DB000(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_100138A84(v16);
    *(v2 + v8) = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000DB16C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA30, &qword_100374460);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_1000DB3EC;
}

void sub_1000DB3EC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100138A84(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100138A84(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000DB63C()
{
  v1 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10041CA30, &qword_100374460);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10041CA30, &qword_100374460);
  return v8;
}

uint64_t sub_1000DB75C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_100138A84(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

uint64_t sub_1000DB90C(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  v12 = *(v5 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v19 = v14;
    v14 = v18;
    a4(v19);
    *(v9 + v11) = v18;
  }

  v20 = v14 + *a5;
  result = swift_beginAccess();
  *v20 = a1;
  *(v20 + 4) = 0;
  return result;
}

void (*sub_1000DB9D0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1000DBA88;
}

void sub_1000DBABC(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 84);
  v11 = *(*a1 + 72);
  v12 = *(v11 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = *(v8 + 84);
    v16 = *(v8 + 72);
    v17 = a3(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    v21 = v14;
    v14 = v20;
    a4(v21);
    *(v16 + v15) = v20;
  }

  v22 = v14 + *a5;
  swift_beginAccess();
  *v22 = v9;
  *(v22 + 4) = 0;

  free(v8);
}

uint64_t sub_1000DBC14(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
{
  v8 = v4;
  v9 = *(a1(0) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = a2(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    v17 = v12;
    v12 = v16;
    a3(v17);
    *(v8 + v9) = v16;
  }

  v18 = v12 + *a4;
  result = swift_beginAccess();
  *v18 = 0;
  *(v18 + 4) = 1;
  return result;
}

uint64_t sub_1000DBCD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CAA8, &qword_1003744D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10041CAA8, &qword_1003744D8);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000112AC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  }

  UnknownStorage.init()();
  v11 = v9[5];
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v13 = *(*(v12 - 8) + 56);
  v13(a1 + v11, 1, 1, v12);
  v13(a1 + v9[6], 1, 1, v12);
  *(a1 + v9[7]) = 19;
  v13(a1 + v9[8], 1, 1, v12);
  v14 = v9[9];
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10041CAA8, &qword_1003744D8);
  }

  return result;
}

uint64_t sub_1000DBF34(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CAA8, &qword_1003744D8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_100138A84(v16);
    *(v2 + v8) = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10041CAA8, &qword_1003744D8);
  return swift_endAccess();
}

void (*sub_1000DC0A0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CAA8, &qword_1003744D8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CAA8, &qword_1003744D8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v8[5];
    v19 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
    v20 = *(*(v19 - 8) + 56);
    v20(v13 + v18, 1, 1, v19);
    v20(v13 + v8[6], 1, 1, v19);
    *(v13 + v8[7]) = 19;
    v20(v13 + v8[8], 1, 1, v19);
    v21 = v8[9];
    v22 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
    (*(*(v22 - 8) + 56))(v13 + v21, 1, 1, v22);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CAA8, &qword_1003744D8);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  }

  return sub_1000DC3CC;
}

void sub_1000DC3CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100138A84(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10041CAA8, &qword_1003744D8);
    swift_endAccess();
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100138A84(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10041CAA8, &qword_1003744D8);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000DC61C()
{
  v1 = sub_100024A2C(&qword_10041CAA8, &qword_1003744D8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10041CAA8, &qword_1003744D8);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10041CAA8, &qword_1003744D8);
  return v8;
}

uint64_t sub_1000DC73C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CAA8, &qword_1003744D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_100138A84(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10041CAA8, &qword_1003744D8);
  return swift_endAccess();
}

uint64_t sub_1000DC8F8(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DC930(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000DC9CC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000DC9FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_10041CA90, &qword_1003744C0);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000112AC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (qword_100443DF8 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_100443E00;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_1000059A8(v6, &qword_10041CA90, &qword_1003744C0);
  }

  return result;
}

uint64_t sub_1000DCBA4(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041CA90, &qword_1003744C0);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000DCC5C(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA90, &qword_1003744C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA90, &qword_1003744C0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    if (qword_100443DF8 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100443E00;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000059A8(v7, &qword_10041CA90, &qword_1003744C0);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  }

  return sub_100198F9C;
}

uint64_t sub_1000DCF54(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1000DCF84(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000DD00C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1000DD034@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v2[7]) = 2;
  return result;
}

uint64_t sub_1000DD0D0()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 20));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000DD0FC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1000DD12C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000DD1B8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  *(v0 + *(result + 20)) = 3;
  return result;
}

uint64_t sub_1000DD1F8(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DD230(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 24);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DD2CC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DD314(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DD34C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 28);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DD3E8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DD430(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DD468(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 32);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DD504()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_1000DD54C(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 36);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000DD58C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DD5C4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 36);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DD660()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_1000DD6A8(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 40);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000DD6E8(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DD720(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 40);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DD7BC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DD804(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DD83C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 44);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DD8D8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DD920(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DD958(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 48);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DD9F4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_1000DDA24()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 52);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000DDA5C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DDA94(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 52);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DDB30()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DDB60()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 56));
  if (v1 == 8)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000DDB8C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t (*sub_1000DDBBC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 56);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 8)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000DDC48()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  *(v0 + *(result + 56)) = 8;
  return result;
}

float sub_1000DDC70()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 60);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000DDCA8(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DDCE0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 60);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DDD7C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 60);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DDDB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001981CC();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000DDE24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198178();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_1000DDE70@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100174C3C(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000DDEA8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100174C3C(*a1);
  *a2 = result;
  return result;
}

int *sub_1000DDED4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  *(a1 + result[5]) = 3;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[9];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[11];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[13];
  *v10 = 0;
  *(v10 + 4) = 1;
  *(a1 + result[14]) = 8;
  v11 = a1 + result[15];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t (*sub_1000DDFE4(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000DE2B4(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DE2EC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DE384()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DE3B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CAB0, &qword_1003744E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
  sub_10000A0A4(v1 + *(v7 + 28), v6, &qword_10041CAB0, &qword_1003744E0);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000112AC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 3;
  v10 = a1 + v8[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[8];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[9];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v8[11];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v8[12];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v8[13];
  *v17 = 0;
  *(v17 + 4) = 1;
  *(a1 + v8[14]) = 8;
  v18 = a1 + v8[15];
  *v18 = 0;
  *(v18 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10041CAB0, &qword_1003744E0);
  }

  return result;
}

uint64_t sub_1000DE5B4(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 28);
  sub_1000059A8(v1 + v3, &qword_10041CAB0, &qword_1003744E0);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000DE66C(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CAB0, &qword_1003744E0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CAB0, &qword_1003744E0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 3;
    v16 = v13 + v8[6];
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + v8[7];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v13 + v8[8];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[9];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[10];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[11];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v13 + v8[12];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v13 + v8[13];
    *v23 = 0;
    *(v23 + 4) = 1;
    *(v13 + v8[14]) = 8;
    v24 = v13 + v8[15];
    *v24 = 0;
    *(v24 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CAB0, &qword_1003744E0);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  }

  return sub_1000DE924;
}

uint64_t (*sub_1000DEA4C(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Timer(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t (*sub_1000DED60(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000DF030(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DF068(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000DF104()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000DF14C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DF184(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000DF220()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000DF268(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DF2A0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 32);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DF33C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DF384(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DF3BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 36);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DF458()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DF4A0(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DF4D8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 40);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DF574()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DF5BC(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DF5F4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DF68C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DF6BC@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v2[11];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t (*sub_1000DF7CC(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000DFA9C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DFAD4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000DFB70()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000DFBB8(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DFBF0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000DFC8C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1000DFCD4(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000DFD14(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DFD4C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000DFDE8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000DFE30(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DFE68(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000DFF04()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000DFF4C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DFF84(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E0020()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E0068(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E00A0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 44);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E013C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E0184(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E01BC(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 48);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E0258()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1000E0288()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 52);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000E02C0(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E02F8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 52);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E0394()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1000E03C4()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 56);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000E03FC(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E0434(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 56);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E04D0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 56);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E0528(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t (*sub_1000E0558(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 60);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E05E0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v0 + *(result + 60)) = 2;
  return result;
}

uint64_t sub_1000E0630(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t (*sub_1000E0660(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 64);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E06E8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v0 + *(result + 64)) = 2;
  return result;
}

uint64_t sub_1000E0738(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t (*sub_1000E0768(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 68);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E07F0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v0 + *(result + 68)) = 2;
  return result;
}

uint64_t sub_1000E0840(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t (*sub_1000E0870(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 72);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E08F8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v0 + *(result + 72)) = 2;
  return result;
}

uint64_t sub_1000E0920@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v2[11];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v2[12];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v2[13];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v2[14];
  *v14 = 0;
  *(v14 + 8) = 1;
  *(a1 + v2[15]) = 2;
  *(a1 + v2[16]) = 2;
  *(a1 + v2[17]) = 2;
  *(a1 + v2[18]) = 2;
  return result;
}

uint64_t sub_1000E0A74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10013E098(v16);
    *(v2 + v8) = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000E0BE0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA30, &qword_100374460);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_1000E0E60;
}

void sub_1000E0E60(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10013E098(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10013E098(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000E10B0()
{
  v1 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10041CA30, &qword_100374460);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10041CA30, &qword_100374460);
  return v8;
}

uint64_t sub_1000E11D0()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10013E098(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000E1380(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1000E1438;
}

uint64_t sub_1000E14D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CAB8, &qword_1003744E8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v23 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10041CAB8, &qword_1003744E8);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000112AC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  }

  UnknownStorage.init()();
  v11 = v9[5];
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + v9[6];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v9[7];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v9[8];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v9[9];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = a1 + v9[10];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a1 + v9[11];
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = a1 + v9[12];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = a1 + v9[13];
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = a1 + v9[14];
  *v21 = 0;
  *(v21 + 8) = 1;
  *(a1 + v9[15]) = 2;
  *(a1 + v9[16]) = 2;
  *(a1 + v9[17]) = 2;
  *(a1 + v9[18]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10041CAB8, &qword_1003744E8);
  }

  return result;
}

uint64_t sub_1000E1750(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CAB8, &qword_1003744E8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10013E098(v16);
    *(v2 + v8) = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10041CAB8, &qword_1003744E8);
  return swift_endAccess();
}

void (*sub_1000E18BC(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CAB8, &qword_1003744E8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v4[11] = v10;
  sub_1000E14D4(v10);
  return sub_1000E1A04;
}

void sub_1000E1A04(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[6];
    sub_100172B7C(v2[11], v2[10], type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
    v5 = *(v3 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v3 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      v11 = swift_allocObject();
      sub_10013E098(v7);
      *(v3 + v4) = v11;
      v7 = v11;
    }

    v13 = v2[10];
    v12 = v2[11];
    v14 = v2[8];
    v15 = v2[9];
    v16 = v2[7];
    sub_1000112AC(v13, v16, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    (*(v15 + 56))(v16, 0, 1, v14);
    v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
    swift_beginAccess();
    sub_10000AD64(v16, v7 + v17, &qword_10041CAB8, &qword_1003744E8);
    swift_endAccess();
    sub_100015F24(v12, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  }

  else
  {
    v18 = v2[6];
    v19 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
    v20 = *(v18 + v19);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v18 + v19);
    if ((v21 & 1) == 0)
    {
      v23 = type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      v26 = swift_allocObject();
      sub_10013E098(v22);
      *(v18 + v19) = v26;
      v22 = v26;
    }

    v13 = v2[10];
    v12 = v2[11];
    v27 = v2[8];
    v28 = v2[9];
    v16 = v2[7];
    sub_1000112AC(v12, v16, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    (*(v28 + 56))(v16, 0, 1, v27);
    v29 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
    swift_beginAccess();
    sub_10000AD64(v16, v22 + v29, &qword_10041CAB8, &qword_1003744E8);
    swift_endAccess();
  }

  free(v12);
  free(v13);
  free(v16);

  free(v2);
}

BOOL sub_1000E1C50()
{
  v1 = sub_100024A2C(&qword_10041CAB8, &qword_1003744E8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10041CAB8, &qword_1003744E8);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10041CAB8, &qword_1003744E8);
  return v8;
}

uint64_t sub_1000E1D70()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CAB8, &qword_1003744E8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10013E098(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10041CAB8, &qword_1003744E8);
  return swift_endAccess();
}

uint64_t (*sub_1000E1F44(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000E2214(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E224C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E22E8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E2330(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E2368(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E2404()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E244C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E2484(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E2520()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E2578(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1000E25A8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E2630()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

uint64_t sub_1000E2680(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*sub_1000E26B0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 40);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E2738()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v0 + *(result + 40)) = 2;
  return result;
}

uint64_t sub_1000E2788(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*sub_1000E27B8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E2840()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v0 + *(result + 44)) = 2;
  return result;
}

uint64_t sub_1000E2890(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*sub_1000E28C0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 48);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E2948()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v0 + *(result + 48)) = 2;
  return result;
}

uint64_t sub_1000E2970@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a1 + v2[9]) = 2;
  *(a1 + v2[10]) = 2;
  *(a1 + v2[11]) = 2;
  *(a1 + v2[12]) = 2;
  return result;
}

uint64_t (*sub_1000E2A74(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000E2D44(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000E2D7C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000E2E14()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000E2E44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CAC0, &qword_1003744F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
  sub_10000A0A4(v1 + *(v7 + 28), v6, &qword_10041CAC0, &qword_1003744F0);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000112AC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + v8[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[8];
  *v14 = 0;
  *(v14 + 8) = 1;
  *(a1 + v8[9]) = 2;
  *(a1 + v8[10]) = 2;
  *(a1 + v8[11]) = 2;
  *(a1 + v8[12]) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10041CAC0, &qword_1003744F0);
  }

  return result;
}

uint64_t sub_1000E303C(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 28);
  sub_1000059A8(v1 + v3, &qword_10041CAC0, &qword_1003744F0);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000E30F4(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CAC0, &qword_1003744F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CAC0, &qword_1003744F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v8[5];
    v17 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = v13 + v8[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[8];
    *v20 = 0;
    *(v20 + 8) = 1;
    *(v13 + v8[9]) = 2;
    *(v13 + v8[10]) = 2;
    *(v13 + v8[11]) = 2;
    *(v13 + v8[12]) = 2;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CAC0, &qword_1003744F0);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  }

  return sub_1000E339C;
}

uint64_t sub_1000E34B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_100174D8C(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000E3628(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA30, &qword_100374460);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_1000E38A8;
}

void sub_1000E38A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100174D8C(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
    sub_100015F24(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100174D8C(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000112AC(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000E3B08()
{
  v1 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10041CA30, &qword_100374460);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10041CA30, &qword_100374460);
  return v8;
}

uint64_t sub_1000E3C28()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_100174D8C(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v15, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000E3DE0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E3E9C;
}

void (*sub_1000E3FA0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E405C;
}

void (*sub_1000E4160(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E421C;
}

void (*sub_1000E4320(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E43DC;
}