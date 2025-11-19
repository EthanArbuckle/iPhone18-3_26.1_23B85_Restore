void sub_1002A41F4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SuplContext);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002C2FB8(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BF58, &qword_100394018);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002C2FB8(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BF58, &qword_100394018);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002A4444()
{
  v1 = sub_100024A2C(&qword_10042BF58, &qword_100394018);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BF58, &qword_100394018);
  v7 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BF58, &qword_100394018);
  return v8;
}

uint64_t sub_1002A4564()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF58, &qword_100394018);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002C2FB8(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BF58, &qword_100394018);
  return swift_endAccess();
}

uint64_t sub_1002A46AC@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF60, &qword_100394020);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BF60, &qword_100394020);
  v9 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
  }

  sub_1001A2798(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BF60, &qword_100394020);
  }

  return result;
}

uint64_t sub_1002A4824(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF60, &qword_100394020);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002C2FB8(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
  v17 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BF60, &qword_100394020);
  return swift_endAccess();
}

void (*sub_1002A4990(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF60, &qword_100394020) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF60, &qword_100394020);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001A2798(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF60, &qword_100394020);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
  }

  return sub_1002A4BDC;
}

void sub_1002A4BDC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002C2FB8(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BF60, &qword_100394020);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
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
      v27 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002C2FB8(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BF60, &qword_100394020);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002A4E2C()
{
  v1 = sub_100024A2C(&qword_10042BF60, &qword_100394020);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BF60, &qword_100394020);
  v7 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BF60, &qword_100394020);
  return v8;
}

uint64_t sub_1002A4F4C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF60, &qword_100394020);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002C2FB8(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BF60, &qword_100394020);
  return swift_endAccess();
}

uint64_t sub_1002A50DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100303344();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1002A5128@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002F8058(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002A5174@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002F8058(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002A51F0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_1002A529C()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Response(0) + 20));
  if (v1 == 62)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002A52C8(char a1)
{
  result = type metadata accessor for Proto_Gpsd_Response(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1002A52F8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Response(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 62)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1002A5384()
{
  result = type metadata accessor for Proto_Gpsd_Response(0);
  *(v0 + *(result + 20)) = 62;
  return result;
}

uint64_t sub_1002A53C4(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_Response(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002A53FC(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Response(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002A5494()
{
  result = type metadata accessor for Proto_Gpsd_Response(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002A54C4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Response(0) + 28));
  if (v1 == 10)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002A54F0(char a1)
{
  result = type metadata accessor for Proto_Gpsd_Response(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1002A5520(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Response(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 10)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_100025584;
}

uint64_t sub_1002A55AC()
{
  result = type metadata accessor for Proto_Gpsd_Response(0);
  *(v0 + *(result + 28)) = 10;
  return result;
}

int *sub_1002A55D4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_Response(0);
  *(a1 + result[5]) = 62;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + result[7]) = 10;
  return result;
}

uint64_t sub_1002A5634()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  if (*(v1 + 16) == 24)
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t sub_1002A5688(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_1002D9034(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  return result;
}

void (*sub_1002A5720(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 24)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1002A57C8;
}

void sub_1002A57C8(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_1002D9034(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 16) = v2;

  free(v1);
}

BOOL sub_1002A5890()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) != 24;
}

uint64_t sub_1002A5928()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  if (*(v1 + 17) == 62)
  {
    return 0;
  }

  else
  {
    return *(v1 + 17);
  }
}

uint64_t sub_1002A597C(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_1002D9034(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 17) = a1;
  return result;
}

void (*sub_1002A5A14(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 17);
  if (v7 == 62)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1002A5ABC;
}

void sub_1002A5ABC(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_1002D9034(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 17) = v2;

  free(v1);
}

BOOL sub_1002A5B84()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  return *(v1 + 17) != 62;
}

uint64_t sub_1002A5BD8()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    sub_1002D9034(v10);
    *(v1 + v2) = v9;
  }

  result = swift_beginAccess();
  *(v5 + 17) = 62;
  return result;
}

uint64_t sub_1002A5C68()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  if (*(v1 + 32))
  {
    return 0;
  }

  else
  {
    return *(v1 + 24);
  }
}

uint64_t sub_1002A5CC0(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_1002D9034(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 24) = a1;
  *(v7 + 32) = 0;
  return result;
}

void (*sub_1002A5D5C(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 32))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_1002A5E08;
}

void sub_1002A5E08(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_1002D9034(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 24) = v2;
  *(v7 + 32) = 0;

  free(v1);
}

BOOL sub_1002A5ED4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

uint64_t sub_1002A5F28()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    sub_1002D9034(v10);
    *(v1 + v2) = v9;
  }

  result = swift_beginAccess();
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  return result;
}

uint64_t sub_1002A5FBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF68, &qword_100394028);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BF68, &qword_100394028);
  v9 = type metadata accessor for Proto_Gnss_Fix(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_Fix);
  }

  sub_10026D97C(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BF68, &qword_100394028);
  }

  return result;
}

uint64_t sub_1002A6134(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF68, &qword_100394028);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gnss_Fix);
  v17 = type metadata accessor for Proto_Gnss_Fix(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BF68, &qword_100394028);
  return swift_endAccess();
}

void (*sub_1002A62A0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF68, &qword_100394028) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Fix(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF68, &qword_100394028);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_10026D97C(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF68, &qword_100394028);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Fix);
  }

  return sub_1002A64EC;
}

void sub_1002A64EC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Fix);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_Fix);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BF68, &qword_100394028);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_Fix);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_Fix);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BF68, &qword_100394028);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002A673C()
{
  v1 = sub_100024A2C(&qword_10042BF68, &qword_100394028);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BF68, &qword_100394028);
  v7 = type metadata accessor for Proto_Gnss_Fix(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BF68, &qword_100394028);
  return v8;
}

uint64_t sub_1002A685C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF68, &qword_100394028);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Fix(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BF68, &qword_100394028);
  return swift_endAccess();
}

uint64_t sub_1002A69A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF70, &qword_100394030);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BF70, &qword_100394030);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
  }

  sub_100069CA0(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BF70, &qword_100394030);
  }

  return result;
}

uint64_t sub_1002A6B1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF70, &qword_100394030);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BF70, &qword_100394030);
  return swift_endAccess();
}

void (*sub_1002A6C88(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF70, &qword_100394030) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF70, &qword_100394030);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_100069CA0(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF70, &qword_100394030);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
  }

  return sub_1002A6ED4;
}

void sub_1002A6ED4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BF70, &qword_100394030);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BF70, &qword_100394030);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002A7124()
{
  v1 = sub_100024A2C(&qword_10042BF70, &qword_100394030);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BF70, &qword_100394030);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BF70, &qword_100394030);
  return v8;
}

uint64_t sub_1002A7244()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF70, &qword_100394030);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BF70, &qword_100394030);
  return swift_endAccess();
}

uint64_t sub_1002A738C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF78, &qword_100394038);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BF78, &qword_100394038);
  v9 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_PwrMeasurement);
  }

  sub_1002713D8(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BF78, &qword_100394038);
  }

  return result;
}

uint64_t sub_1002A7504(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF78, &qword_100394038);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gnss_PwrMeasurement);
  v17 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BF78, &qword_100394038);
  return swift_endAccess();
}

void (*sub_1002A7670(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF78, &qword_100394038) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF78, &qword_100394038);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1002713D8(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF78, &qword_100394038);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_PwrMeasurement);
  }

  return sub_1002A78BC;
}

void sub_1002A78BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_PwrMeasurement);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_PwrMeasurement);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BF78, &qword_100394038);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_PwrMeasurement);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_PwrMeasurement);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BF78, &qword_100394038);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002A7B0C()
{
  v1 = sub_100024A2C(&qword_10042BF78, &qword_100394038);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BF78, &qword_100394038);
  v7 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BF78, &qword_100394038);
  return v8;
}

uint64_t sub_1002A7C2C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF78, &qword_100394038);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BF78, &qword_100394038);
  return swift_endAccess();
}

uint64_t sub_1002A7D74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF80, &qword_100394040);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BF80, &qword_100394040);
  v9 = type metadata accessor for Proto_Gpsd_Status(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_Status);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a1 + v9[7]) = 2;
  *(a1 + v9[8]) = 2;
  *(a1 + v9[9]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BF80, &qword_100394040);
  }

  return result;
}

int *sub_1002A7F2C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_Status(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  *(a1 + result[9]) = 2;
  return result;
}

uint64_t sub_1002A7F98(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF80, &qword_100394040);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gpsd_Status);
  v17 = type metadata accessor for Proto_Gpsd_Status(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BF80, &qword_100394040);
  return swift_endAccess();
}

void (*sub_1002A8104(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF80, &qword_100394040) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_Status(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF80, &qword_100394040);
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
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    *(v13 + v8[9]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF80, &qword_100394040);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_Status);
  }

  return sub_1002A8390;
}

void sub_1002A8390(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_Status);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gpsd_Status);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BF80, &qword_100394040);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gpsd_Status);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gpsd_Status);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BF80, &qword_100394040);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002A85E0()
{
  v1 = sub_100024A2C(&qword_10042BF80, &qword_100394040);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BF80, &qword_100394040);
  v7 = type metadata accessor for Proto_Gpsd_Status(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BF80, &qword_100394040);
  return v8;
}

uint64_t sub_1002A8700()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF80, &qword_100394040);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_Status(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BF80, &qword_100394040);
  return swift_endAccess();
}

uint64_t sub_1002A8848@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF88, &qword_100394048);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BF88, &qword_100394048);
  v9 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_TimeTransferDataExtend);
  }

  sub_10026FE90(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BF88, &qword_100394048);
  }

  return result;
}

uint64_t sub_1002A89C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF88, &qword_100394048);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gnss_TimeTransferDataExtend);
  v17 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BF88, &qword_100394048);
  return swift_endAccess();
}

void (*sub_1002A8B2C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF88, &qword_100394048) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF88, &qword_100394048);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_10026FE90(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF88, &qword_100394048);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_TimeTransferDataExtend);
  }

  return sub_1002A8D78;
}

void sub_1002A8D78(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_TimeTransferDataExtend);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_TimeTransferDataExtend);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BF88, &qword_100394048);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_TimeTransferDataExtend);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_TimeTransferDataExtend);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BF88, &qword_100394048);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002A8FC8()
{
  v1 = sub_100024A2C(&qword_10042BF88, &qword_100394048);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BF88, &qword_100394048);
  v7 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BF88, &qword_100394048);
  return v8;
}

uint64_t sub_1002A90E8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF88, &qword_100394048);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BF88, &qword_100394048);
  return swift_endAccess();
}

uint64_t sub_1002A9230@<X0>(char *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF90, &qword_100394050);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BF90, &qword_100394050);
  v9 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_RecoveryStatistics);
  }

  *a1 = &_swiftEmptyArrayStorage;
  v11 = &a1[*(v9 + 20)];
  UnknownStorage.init()();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BF90, &qword_100394050);
  }

  return result;
}

uint64_t sub_1002A93FC@<X0>(char *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  v3 = &a1[*(v2 + 20)];
  UnknownStorage.init()();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1002A9490(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF90, &qword_100394050);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gpsd_RecoveryStatistics);
  v17 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BF90, &qword_100394050);
  return swift_endAccess();
}

void (*sub_1002A95FC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF90, &qword_100394050) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF90, &qword_100394050);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    v18 = &v13[*(v8 + 20)];
    UnknownStorage.init()();
    v19 = *(v8 + 24);
    v20 = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
    (*(*(v20 - 8) + 56))(&v13[v19], 1, 1, v20);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF90, &qword_100394050);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_RecoveryStatistics);
  }

  return sub_1002A989C;
}

void sub_1002A989C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_RecoveryStatistics);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gpsd_RecoveryStatistics);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BF90, &qword_100394050);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gpsd_RecoveryStatistics);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gpsd_RecoveryStatistics);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BF90, &qword_100394050);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002A9AEC()
{
  v1 = sub_100024A2C(&qword_10042BF90, &qword_100394050);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BF90, &qword_100394050);
  v7 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BF90, &qword_100394050);
  return v8;
}

uint64_t sub_1002A9C0C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF90, &qword_100394050);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BF90, &qword_100394050);
  return swift_endAccess();
}

uint64_t sub_1002A9D54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF98, &qword_100394058);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BF98, &qword_100394058);
  v9 = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_LtlInfoRequest);
  }

  UnknownStorage.init()();
  *(a1 + *(v9 + 20)) = 5;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BF98, &qword_100394058);
  }

  return result;
}

uint64_t sub_1002A9EF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF98, &qword_100394058);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gpsd_LtlInfoRequest);
  v17 = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BF98, &qword_100394058);
  return swift_endAccess();
}

void (*sub_1002AA060(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF98, &qword_100394058) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF98, &qword_100394058);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = 5;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF98, &qword_100394058);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_LtlInfoRequest);
  }

  return sub_1002AA2B8;
}

void sub_1002AA2B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_LtlInfoRequest);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gpsd_LtlInfoRequest);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BF98, &qword_100394058);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gpsd_LtlInfoRequest);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gpsd_LtlInfoRequest);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BF98, &qword_100394058);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002AA508()
{
  v1 = sub_100024A2C(&qword_10042BF98, &qword_100394058);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BF98, &qword_100394058);
  v7 = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BF98, &qword_100394058);
  return v8;
}

uint64_t sub_1002AA628()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF98, &qword_100394058);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BF98, &qword_100394058);
  return swift_endAccess();
}

uint64_t sub_1002AA770@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BFA0, &qword_100394060);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BFA0, &qword_100394060);
  v9 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);
  }

  sub_100271B24(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BFA0, &qword_100394060);
  }

  return result;
}

uint64_t sub_1002AA8E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BFA0, &qword_100394060);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);
  v17 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BFA0, &qword_100394060);
  return swift_endAccess();
}

void (*sub_1002AAA54(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BFA0, &qword_100394060) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BFA0, &qword_100394060);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_100271B24(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BFA0, &qword_100394060);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);
  }

  return sub_1002AACA0;
}

void sub_1002AACA0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BFA0, &qword_100394060);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BFA0, &qword_100394060);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002AAEF0()
{
  v1 = sub_100024A2C(&qword_10042BFA0, &qword_100394060);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BFA0, &qword_100394060);
  v7 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BFA0, &qword_100394060);
  return v8;
}

uint64_t sub_1002AB010()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BFA0, &qword_100394060);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BFA0, &qword_100394060);
  return swift_endAccess();
}

uint64_t sub_1002AB158@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BFA8, &qword_100394068);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BFA8, &qword_100394068);
  v9 = type metadata accessor for Proto_Gnss_DecodedRti(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_DecodedRti);
  }

  sub_100271674(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BFA8, &qword_100394068);
  }

  return result;
}

uint64_t sub_1002AB2D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BFA8, &qword_100394068);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gnss_DecodedRti);
  v17 = type metadata accessor for Proto_Gnss_DecodedRti(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BFA8, &qword_100394068);
  return swift_endAccess();
}

void (*sub_1002AB43C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BFA8, &qword_100394068) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_DecodedRti(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BFA8, &qword_100394068);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_100271674(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BFA8, &qword_100394068);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_DecodedRti);
  }

  return sub_1002AB688;
}

void sub_1002AB688(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_DecodedRti);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_DecodedRti);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BFA8, &qword_100394068);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_DecodedRti);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_DecodedRti);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BFA8, &qword_100394068);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002AB8D8()
{
  v1 = sub_100024A2C(&qword_10042BFA8, &qword_100394068);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BFA8, &qword_100394068);
  v7 = type metadata accessor for Proto_Gnss_DecodedRti(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BFA8, &qword_100394068);
  return v8;
}

uint64_t sub_1002AB9F8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BFA8, &qword_100394068);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_DecodedRti(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BFA8, &qword_100394068);
  return swift_endAccess();
}

void (*sub_1002ABB58(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startStatus;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 10)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1002ABC08;
}

uint64_t sub_1002ABC3C(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  if (*(v3 + v4) == 10)
  {
    return 0;
  }

  else
  {
    return *(v3 + v4);
  }
}

uint64_t sub_1002ABCA4(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v4 + v6) = v13;
  }

  v15 = *a2;
  result = swift_beginAccess();
  *(v9 + v15) = a1;
  return result;
}

void (*sub_1002ABD44(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__stopStatus;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 10)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1002ABDF4;
}

void sub_1002ABE00(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 84);
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 72);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    v17 = v10;
    v10 = v16;
    sub_1002D9034(v17);
    *(v12 + v11) = v16;
  }

  v18 = *a3;
  swift_beginAccess();
  *(v10 + v18) = v5;

  free(v4);
}

BOOL sub_1002ABEDC(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) != 10;
}

uint64_t sub_1002ABF48(uint64_t *a1, char a2)
{
  v5 = v2;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v5 + v6) = v13;
  }

  v15 = *a1;
  result = swift_beginAccess();
  *(v9 + v15) = a2;
  return result;
}

uint64_t sub_1002ABFE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BFB0, &qword_100394070);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BFB0, &qword_100394070);
  v9 = type metadata accessor for Proto_Gpsd_Exception(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_Exception);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BFB0, &qword_100394070);
  }

  return result;
}

int *sub_1002AC194@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_Exception(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t sub_1002AC1F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BFB0, &qword_100394070);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gpsd_Exception);
  v17 = type metadata accessor for Proto_Gpsd_Exception(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BFB0, &qword_100394070);
  return swift_endAccess();
}

void (*sub_1002AC360(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BFB0, &qword_100394070) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_Exception(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BFB0, &qword_100394070);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BFB0, &qword_100394070);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_Exception);
  }

  return sub_1002AC5E0;
}

void sub_1002AC5E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_Exception);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gpsd_Exception);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BFB0, &qword_100394070);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gpsd_Exception);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gpsd_Exception);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BFB0, &qword_100394070);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002AC830()
{
  v1 = sub_100024A2C(&qword_10042BFB0, &qword_100394070);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BFB0, &qword_100394070);
  v7 = type metadata accessor for Proto_Gpsd_Exception(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BFB0, &qword_100394070);
  return v8;
}

uint64_t sub_1002AC950()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BFB0, &qword_100394070);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_Exception(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BFB0, &qword_100394070);
  return swift_endAccess();
}

uint64_t sub_1002ACA98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BFB8, &qword_100394078);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BFB8, &qword_100394078);
  v9 = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_AskBasebandReset);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (a1 + v9[7]);
  *v13 = 0;
  v13[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BFB8, &qword_100394078);
  }

  return result;
}

int *sub_1002ACC40@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1002ACC9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BFB8, &qword_100394078);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gpsd_AskBasebandReset);
  v17 = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BFB8, &qword_100394078);
  return swift_endAccess();
}

void (*sub_1002ACE08(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BFB8, &qword_100394078) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BFB8, &qword_100394078);
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
    v20 = (v13 + v8[7]);
    *v20 = 0;
    v20[1] = 0;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BFB8, &qword_100394078);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_AskBasebandReset);
  }

  return sub_1002AD084;
}

void sub_1002AD084(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_AskBasebandReset);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gpsd_AskBasebandReset);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BFB8, &qword_100394078);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gpsd_AskBasebandReset);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gpsd_AskBasebandReset);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BFB8, &qword_100394078);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002AD2D4()
{
  v1 = sub_100024A2C(&qword_10042BFB8, &qword_100394078);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BFB8, &qword_100394078);
  v7 = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BFB8, &qword_100394078);
  return v8;
}

uint64_t sub_1002AD3F4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BFB8, &qword_100394078);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BFB8, &qword_100394078);
  return swift_endAccess();
}

uint64_t sub_1002AD53C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BFC0, &qword_100394080);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BFC0, &qword_100394080);
  v9 = type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_Emergency_SummaryReport);
  }

  sub_10019F6D8(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BFC0, &qword_100394080);
  }

  return result;
}

uint64_t sub_1002AD6B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BFC0, &qword_100394080);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gnss_Emergency_SummaryReport);
  v17 = type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BFC0, &qword_100394080);
  return swift_endAccess();
}

void (*sub_1002AD820(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BFC0, &qword_100394080) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BFC0, &qword_100394080);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_10019F6D8(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BFC0, &qword_100394080);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_SummaryReport);
  }

  return sub_1002ADA6C;
}

void sub_1002ADA6C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SummaryReport);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_Emergency_SummaryReport);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BFC0, &qword_100394080);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_Emergency_SummaryReport);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_Emergency_SummaryReport);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BFC0, &qword_100394080);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002ADCBC()
{
  v1 = sub_100024A2C(&qword_10042BFC0, &qword_100394080);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BFC0, &qword_100394080);
  v7 = type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BFC0, &qword_100394080);
  return v8;
}

uint64_t sub_1002ADDDC()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BFC0, &qword_100394080);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BFC0, &qword_100394080);
  return swift_endAccess();
}

uint64_t sub_1002ADF44(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  sub_10000BE4C(v4, v5);
  return v6;
}

uint64_t sub_1002AE00C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(uint64_t), void *a6)
{
  v10 = v6;
  v13 = *(a3(0) + 20);
  v14 = *(v6 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = a4(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    v21 = v16;
    v16 = v20;
    a5(v21);
    *(v10 + v13) = v20;
  }

  v22 = (v16 + *a6);
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  *v22 = a1;
  v22[1] = a2;
  return sub_10000CA64(v23, v24);
}

void (*sub_1002AE0D8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolIndication);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v6;
  }

  v10 = 0xC000000000000000;
  if (v8 >> 60 != 15)
  {
    v10 = v6[1];
  }

  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  sub_10000BE4C(v7, v8);
  return sub_1002AE19C;
}

void sub_1002AE1D0(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 72);
  v10 = *(*a1 + 96);
  v11 = *(*a1 + 80);
  v12 = *(*a1 + 88);
  if (a2)
  {
    sub_1000150EC(*(*a1 + 72), v11);
    v13 = *(v12 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v12 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v8 + 96);
      v17 = *(v8 + 88);
      v18 = a3(0);
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      v21 = swift_allocObject();
      a4(v15);
      *(v17 + v16) = v21;
      v15 = v21;
    }

    v22 = (v15 + *a5);
    swift_beginAccess();
    v23 = *v22;
    v24 = v22[1];
    *v22 = v9;
    v22[1] = v11;
    sub_10000CA64(v23, v24);
    sub_100005B2C(*(v8 + 72), *(v8 + 80));
  }

  else
  {
    v25 = *(v12 + v10);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v12 + v10);
    if ((v26 & 1) == 0)
    {
      v28 = *(v8 + 96);
      v29 = *(v8 + 88);
      v30 = a3(0);
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      v33 = swift_allocObject();
      a4(v27);
      *(v29 + v28) = v33;
      v27 = v33;
    }

    v34 = (v27 + *a5);
    swift_beginAccess();
    v35 = *v34;
    v36 = v34[1];
    *v34 = v9;
    v34[1] = v11;
    sub_10000CA64(v35, v36);
  }

  free(v8);
}

BOOL sub_1002AE35C(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return *(v3 + 8) >> 60 != 15;
}

uint64_t sub_1002AE410(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
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

  v18 = (v12 + *a4);
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  *v18 = xmmword_10036D770;
  return sub_10000CA64(v19, v20);
}

uint64_t sub_1002AE4D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BFC8, &qword_100394088);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BFC8, &qword_100394088);
  v9 = type metadata accessor for Proto_Gnss_Emergency_PositionReport(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_Emergency_PositionReport);
  }

  sub_1001C81E0(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BFC8, &qword_100394088);
  }

  return result;
}

uint64_t sub_1002AE650(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BFC8, &qword_100394088);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gnss_Emergency_PositionReport);
  v17 = type metadata accessor for Proto_Gnss_Emergency_PositionReport(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BFC8, &qword_100394088);
  return swift_endAccess();
}

void (*sub_1002AE7BC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BFC8, &qword_100394088) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_PositionReport(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BFC8, &qword_100394088);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001C81E0(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BFC8, &qword_100394088);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_PositionReport);
  }

  return sub_1002AEA08;
}

void sub_1002AEA08(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PositionReport);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_Emergency_PositionReport);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BFC8, &qword_100394088);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_Emergency_PositionReport);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_Emergency_PositionReport);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BFC8, &qword_100394088);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002AEC58()
{
  v1 = sub_100024A2C(&qword_10042BFC8, &qword_100394088);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BFC8, &qword_100394088);
  v7 = type metadata accessor for Proto_Gnss_Emergency_PositionReport(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BFC8, &qword_100394088);
  return v8;
}

uint64_t sub_1002AED78()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BFC8, &qword_100394088);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_PositionReport(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BFC8, &qword_100394088);
  return swift_endAccess();
}

uint64_t sub_1002AEEC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BFD0, &qword_100394090);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BFD0, &qword_100394090);
  v9 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport);
  }

  sub_1001D0BD4(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BFD0, &qword_100394090);
  }

  return result;
}

uint64_t sub_1002AF038(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BFD0, &qword_100394090);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport);
  v17 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BFD0, &qword_100394090);
  return swift_endAccess();
}

void (*sub_1002AF1A4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BFD0, &qword_100394090) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BFD0, &qword_100394090);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001D0BD4(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BFD0, &qword_100394090);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport);
  }

  return sub_1002AF3F0;
}

void sub_1002AF3F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_MeasurementReport);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BFD0, &qword_100394090);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BFD0, &qword_100394090);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002AF640()
{
  v1 = sub_100024A2C(&qword_10042BFD0, &qword_100394090);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BFD0, &qword_100394090);
  v7 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BFD0, &qword_100394090);
  return v8;
}

uint64_t sub_1002AF760()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BFD0, &qword_100394090);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BFD0, &qword_100394090);
  return swift_endAccess();
}

uint64_t sub_1002AF8A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BFD8, &qword_100394098);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BFD8, &qword_100394098);
  v9 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport);
  }

  sub_1001D7E9C(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BFD8, &qword_100394098);
  }

  return result;
}

uint64_t sub_1002AFA20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BFD8, &qword_100394098);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport);
  v17 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BFD8, &qword_100394098);
  return swift_endAccess();
}

void (*sub_1002AFB8C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BFD8, &qword_100394098) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BFD8, &qword_100394098);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001D7E9C(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BFD8, &qword_100394098);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport);
  }

  return sub_1002AFDD8;
}

void sub_1002AFDD8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BFD8, &qword_100394098);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BFD8, &qword_100394098);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002B0028()
{
  v1 = sub_100024A2C(&qword_10042BFD8, &qword_100394098);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BFD8, &qword_100394098);
  v7 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BFD8, &qword_100394098);
  return v8;
}

uint64_t sub_1002B0148()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BFD8, &qword_100394098);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BFD8, &qword_100394098);
  return swift_endAccess();
}

uint64_t sub_1002B0290@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BFE0, &qword_1003940A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BFE0, &qword_1003940A0);
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest);
  }

  sub_1001E8B90(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BFE0, &qword_1003940A0);
  }

  return result;
}

uint64_t sub_1002B0408(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BFE0, &qword_1003940A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest);
  v17 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BFE0, &qword_1003940A0);
  return swift_endAccess();
}

void (*sub_1002B0574(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BFE0, &qword_1003940A0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BFE0, &qword_1003940A0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001E8B90(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BFE0, &qword_1003940A0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest);
  }

  return sub_1002B07C0;
}

void sub_1002B07C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BFE0, &qword_1003940A0);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BFE0, &qword_1003940A0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002B0A10()
{
  v1 = sub_100024A2C(&qword_10042BFE0, &qword_1003940A0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BFE0, &qword_1003940A0);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BFE0, &qword_1003940A0);
  return v8;
}

uint64_t sub_1002B0B30()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BFE0, &qword_1003940A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BFE0, &qword_1003940A0);
  return swift_endAccess();
}

uint64_t sub_1002B0C78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BFE8, &qword_1003940A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BFE8, &qword_1003940A8);
  v9 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate);
  }

  sub_1001EF59C(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BFE8, &qword_1003940A8);
  }

  return result;
}

uint64_t sub_1002B0DF0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BFE8, &qword_1003940A8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate);
  v17 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BFE8, &qword_1003940A8);
  return swift_endAccess();
}

void (*sub_1002B0F5C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BFE8, &qword_1003940A8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BFE8, &qword_1003940A8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001EF59C(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BFE8, &qword_1003940A8);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate);
  }

  return sub_1002B11A8;
}

void sub_1002B11A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BFE8, &qword_1003940A8);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BFE8, &qword_1003940A8);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002B13F8()
{
  v1 = sub_100024A2C(&qword_10042BFE8, &qword_1003940A8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BFE8, &qword_1003940A8);
  v7 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BFE8, &qword_1003940A8);
  return v8;
}

uint64_t sub_1002B1518()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BFE8, &qword_1003940A8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BFE8, &qword_1003940A8);
  return swift_endAccess();
}

uint64_t sub_1002B1660@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BFF0, &qword_1003940B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BFF0, &qword_1003940B0);
  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_Emergency_SessionStatus);
  }

  sub_1001ABCF8(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BFF0, &qword_1003940B0);
  }

  return result;
}

uint64_t sub_1002B17D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BFF0, &qword_1003940B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gnss_Emergency_SessionStatus);
  v17 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BFF0, &qword_1003940B0);
  return swift_endAccess();
}

void (*sub_1002B1944(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BFF0, &qword_1003940B0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BFF0, &qword_1003940B0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001ABCF8(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BFF0, &qword_1003940B0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_SessionStatus);
  }

  return sub_1002B1B90;
}

void sub_1002B1B90(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SessionStatus);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_Emergency_SessionStatus);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BFF0, &qword_1003940B0);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_Emergency_SessionStatus);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_Emergency_SessionStatus);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BFF0, &qword_1003940B0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002B1DE0()
{
  v1 = sub_100024A2C(&qword_10042BFF0, &qword_1003940B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BFF0, &qword_1003940B0);
  v7 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BFF0, &qword_1003940B0);
  return v8;
}

uint64_t sub_1002B1F00()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BFF0, &qword_1003940B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BFF0, &qword_1003940B0);
  return swift_endAccess();
}

uint64_t sub_1002B2048@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BFF8, &qword_1003940B8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042BFF8, &qword_1003940B8);
  v9 = type metadata accessor for Proto_Gnss_Emergency_Init(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_Emergency_Init);
  }

  sub_1001A67B4(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042BFF8, &qword_1003940B8);
  }

  return result;
}

uint64_t sub_1002B21C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BFF8, &qword_1003940B8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gnss_Emergency_Init);
  v17 = type metadata accessor for Proto_Gnss_Emergency_Init(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042BFF8, &qword_1003940B8);
  return swift_endAccess();
}

void (*sub_1002B232C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BFF8, &qword_1003940B8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_Init(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BFF8, &qword_1003940B8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001A67B4(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BFF8, &qword_1003940B8);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_Init);
  }

  return sub_1002B2578;
}

void sub_1002B2578(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_Init);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_Emergency_Init);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042BFF8, &qword_1003940B8);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_Emergency_Init);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_Emergency_Init);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042BFF8, &qword_1003940B8);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002B27C8()
{
  v1 = sub_100024A2C(&qword_10042BFF8, &qword_1003940B8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042BFF8, &qword_1003940B8);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Init(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042BFF8, &qword_1003940B8);
  return v8;
}

uint64_t sub_1002B28E8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BFF8, &qword_1003940B8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_Init(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042BFF8, &qword_1003940B8);
  return swift_endAccess();
}

void (*sub_1002B2A98(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1002B2B50;
}

uint64_t sub_1002B2BEC()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitDecodeResult;
  swift_beginAccess();
  if (*(v1 + v2) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + v2);
  }
}

void (*sub_1002B2C54(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitDecodeResult;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 4)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1002B2D04;
}

BOOL sub_1002B2D10()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitDecodeResult;
  swift_beginAccess();
  return *(v1 + v2) != 4;
}

void (*sub_1002B2DE4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1002B2E9C;
}

uint64_t sub_1002B2F38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042C000, &unk_1003940C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042C000, &unk_1003940C0);
  v9 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest);
  }

  sub_1001A1EE8(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042C000, &unk_1003940C0);
  }

  return result;
}

uint64_t sub_1002B30B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042C000, &unk_1003940C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002D9034(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest);
  v17 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042C000, &unk_1003940C0);
  return swift_endAccess();
}

void (*sub_1002B321C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042C000, &unk_1003940C0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042C000, &unk_1003940C0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001A1EE8(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042C000, &unk_1003940C0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest);
  }

  return sub_1002B3468;
}

void sub_1002B3468(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002D9034(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042C000, &unk_1003940C0);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest);
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
      v27 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002D9034(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042C000, &unk_1003940C0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002B36B8()
{
  v1 = sub_100024A2C(&qword_10042C000, &unk_1003940C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_Indication(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042C000, &unk_1003940C0);
  v7 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042C000, &unk_1003940C0);
  return v8;
}

uint64_t sub_1002B37D8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042C000, &unk_1003940C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_Indication(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002D9034(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042C000, &unk_1003940C0);
  return swift_endAccess();
}

uint64_t sub_1002B3968(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003032F0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1002B39B4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002F8158(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002B3A00@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002F8158(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002B3AB8(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_Status(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B3AF0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Status(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100026DCC;
}

uint64_t sub_1002B3B88()
{
  result = type metadata accessor for Proto_Gpsd_Status(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B3BD0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1002B3C0C(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_Status(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B3C44(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Status(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002B3CDC()
{
  result = type metadata accessor for Proto_Gpsd_Status(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B3D34(char a1)
{
  result = type metadata accessor for Proto_Gpsd_Status(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1002B3D64(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Status(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B3DEC()
{
  result = type metadata accessor for Proto_Gpsd_Status(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1002B3E3C(char a1)
{
  result = type metadata accessor for Proto_Gpsd_Status(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1002B3E6C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Status(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B3EF4()
{
  result = type metadata accessor for Proto_Gpsd_Status(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

uint64_t sub_1002B3F44(char a1)
{
  result = type metadata accessor for Proto_Gpsd_Status(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1002B3F74(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Status(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_100025584;
}

uint64_t sub_1002B3FFC()
{
  result = type metadata accessor for Proto_Gpsd_Status(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

uint64_t sub_1002B4058(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1002B4088(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetPvtmReport(0) + 20);
  v4 = *(v1 + v3);
  *(a1 + 8) = v3;
  *(a1 + 12) = (v4 == 2) | v4 & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B411C()
{
  result = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_1002B416C(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1002B419C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetPvtmReport(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B4224()
{
  result = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_1002B4274(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1002B42A4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetPvtmReport(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B432C()
{
  result = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1002B437C(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1002B43AC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetPvtmReport(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B4434()
{
  result = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

uint64_t sub_1002B4484(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1002B44B4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetPvtmReport(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B453C()
{
  result = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

uint64_t sub_1002B458C(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*sub_1002B45BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetPvtmReport(0) + 40);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B4644()
{
  result = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  *(v0 + *(result + 40)) = 2;
  return result;
}

uint64_t (*sub_1002B469C(uint64_t a1))(uint64_t, char)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_10000BE4C(v5, v6);
  return sub_1003034BC;
}

uint64_t sub_1002B475C()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0) + 24));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002B4788(char a1)
{
  result = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1002B47B8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1002B4844()
{
  result = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  *(v0 + *(result + 24)) = 3;
  return result;
}

uint64_t sub_1002B4884(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >> 60 != 15)
  {
    v5 = v2[1];
  }

  sub_10000BE4C(*v2, v3);
  return v4;
}

uint64_t sub_1002B48F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = v3 + *(a3(0) + 20);
  result = sub_10000CA64(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t (*sub_1002B4940(uint64_t a1))(uint64_t, char)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_InjectRtiFile(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_10000BE4C(v5, v6);
  return sub_1002B49B4;
}

double sub_1002B4A04(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 20);
  sub_10000CA64(*v2, *(v2 + 8));
  result = 0.0;
  *v2 = xmmword_10036D770;
  return result;
}

uint64_t (*sub_1002B4A7C(uint64_t a1))(uint64_t, char)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_10000BE4C(v5, v6);
  return sub_1003034BC;
}

uint64_t sub_1002B4BB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042AAE8, &qword_100390F28);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  sub_10000A0A4(v1 + *(v7 + 20), v6, &qword_10042AAE8, &qword_100390F28);
  v8 = type metadata accessor for Proto_Gnss_Position(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gnss_Position);
  }

  sub_10026A5F4(a1);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042AAE8, &qword_100390F28);
  }

  return result;
}

uint64_t sub_1002B4D08(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0) + 20);
  sub_1000059A8(v1 + v3, &qword_10042AAE8, &qword_100390F28);
  sub_1002F7BE8(a1, v1 + v3, type metadata accessor for Proto_Gnss_Position);
  v4 = type metadata accessor for Proto_Gnss_Position(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1002B4DC0(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042AAE8, &qword_100390F28) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Position(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10042AAE8, &qword_100390F28);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_10026A5F4(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042AAE8, &qword_100390F28);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Position);
  }

  return sub_1002B4FCC;
}

BOOL sub_1002B5008()
{
  v1 = sub_100024A2C(&qword_10042AAE8, &qword_100390F28);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  sub_10000A0A4(v0 + *(v5 + 20), v4, &qword_10042AAE8, &qword_100390F28);
  v6 = type metadata accessor for Proto_Gnss_Position(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000059A8(v4, &qword_10042AAE8, &qword_100390F28);
  return v7;
}

uint64_t sub_1002B50FC()
{
  v1 = *(type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0) + 20);
  sub_1000059A8(v0 + v1, &qword_10042AAE8, &qword_100390F28);
  v2 = type metadata accessor for Proto_Gnss_Position(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1002B5188()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0) + 24));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002B51B4(char a1)
{
  result = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1002B51E4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1002B5270()
{
  result = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  *(v0 + *(result + 24)) = 4;
  return result;
}

uint64_t sub_1002B52C0(char a1)
{
  result = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1002B52F0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B5378()
{
  result = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1002B53B8(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B53F0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002B5488()
{
  result = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B54E8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1002B5524(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B555C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002B55F4()
{
  result = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B563C(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B5674(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002B570C()
{
  result = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B573C()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0) + 28));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1002B5770(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B57A8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002B5840()
{
  result = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B5888(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B58C0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_DeleteGnssData(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002B5958()
{
  result = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B59A0(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B59D8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetNmeaHandler(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002B5A70()
{
  result = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B5AB8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1002B5B54(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1002B5D24(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B5D5C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceDem(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002B5DF4()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B5E3C(double a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B5E74(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceDem(0) + 24);
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

uint64_t sub_1002B5F10()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B5F58(double a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B5F90(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceDem(0) + 28);
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

uint64_t sub_1002B602C()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B6074(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B60AC(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002B6144()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1002B618C(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1002B61CC(double a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B6204(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 24);
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

uint64_t sub_1002B62A0()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1002B62E8(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1002B6328(double a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B6360(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 28);
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

uint64_t sub_1002B63FC()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B6454(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1002B6484(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B650C()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

double sub_1002B6534()
{
  v1 = v0 + *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 36);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1002B656C(double a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B65A4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 36);
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

uint64_t sub_1002B6640()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1002B6670()
{
  v1 = v0 + *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 40);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1002B66A8(double a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B66E0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 40);
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

uint64_t sub_1002B677C()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1002B67AC()
{
  v1 = v0 + *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 44);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1002B67E4(double a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B681C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 44);
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

uint64_t sub_1002B68B8()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1002B68E8()
{
  v1 = v0 + *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 48);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1002B6920(double a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B6958(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 48);
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

uint64_t sub_1002B69F4()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B6A4C(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t (*sub_1002B6A7C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 52);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B6B04()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  *(v0 + *(result + 52)) = 2;
  return result;
}

uint64_t sub_1002B6B54(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t (*sub_1002B6B84(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 56);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B6C0C()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  *(v0 + *(result + 56)) = 2;
  return result;
}

uint64_t sub_1002B6C5C(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t (*sub_1002B6C8C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 60);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B6D14()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  *(v0 + *(result + 60)) = 2;
  return result;
}

uint64_t sub_1002B6D64(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t (*sub_1002B6D94(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 64);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B6E1C()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  *(v0 + *(result + 64)) = 2;
  return result;
}

uint64_t sub_1002B6E6C(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t (*sub_1002B6E9C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0) + 68);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B6F24()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  *(v0 + *(result + 68)) = 2;
  return result;
}

uint64_t sub_1002B6F64(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B6F9C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002B7034()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B7064()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0) + 24));
  if (v1 == 10)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002B7090(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1002B70C0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 10)
  {
    LOBYTE(v4) = 1;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1002B714C()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  *(v0 + *(result + 24)) = 10;
  return result;
}

uint64_t sub_1002B7174()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0) + 28));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002B71A0(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1002B71D0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1002B725C()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  *(v0 + *(result + 28)) = 5;
  return result;
}

uint64_t sub_1002B7284()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0) + 32));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002B72B0(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1002B72E0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1002B736C()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  *(v0 + *(result + 32)) = 6;
  return result;
}

uint64_t sub_1002B73AC(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B73E4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002B747C()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B74AC()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0) + 24));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002B74D8(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1002B7508(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1002B7594()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  *(v0 + *(result + 24)) = 4;
  return result;
}

uint64_t sub_1002B75BC()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0) + 20));
  if (v1 == 8)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002B75E8(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1002B7618(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 8)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1002B76A4()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  *(v0 + *(result + 20)) = 8;
  return result;
}

uint64_t sub_1002B76E4(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B771C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002B77B4()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B77FC(double a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B7834(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0) + 24);
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

uint64_t sub_1002B78D0()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B7918(double a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B7950(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0) + 28);
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

uint64_t sub_1002B79EC()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1002B7A1C()
{
  v1 = v0 + *(type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0) + 32);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1002B7A54(double a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B7A8C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0) + 32);
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

uint64_t sub_1002B7B28()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B7B70(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B7BA8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002B7C40()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B7C88(double a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B7CC0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0) + 24);
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

uint64_t sub_1002B7D5C()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B7DA4(double a1)
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B7DDC(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0) + 28);
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

uint64_t sub_1002B7E78()
{
  result = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B7EC0(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002B7EF8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetThermalRiskState(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002B7F90()
{
  result = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002B7FD8(int a1)
{
  result = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002B8010(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetThermalRiskState(0) + 24);
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

uint64_t sub_1002B80A8()
{
  result = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002B8100(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1002B8130(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B81B8()
{
  result = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_1002B81F8(uint64_t (*a1)(void))
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

uint64_t sub_1002B8234(int a1)
{
  result = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002B826C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0) + 24);
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

uint64_t sub_1002B8304()
{
  result = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002B834C(int a1)
{
  result = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002B8384(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0) + 20);
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

uint64_t sub_1002B841C()
{
  result = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002B8464(int a1)
{
  result = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002B849C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0) + 24);
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

uint64_t sub_1002B8534()
{
  result = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002B858C(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1002B85BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B8644()
{
  result = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_1002B8694(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1002B86C4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B874C()
{
  result = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_1002B879C(char a1)
{
  result = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1002B87CC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B8854()
{
  result = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

void (*sub_1002B88AC(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for Proto_Gpsd_TerminationImminent(0) + 20);
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

  return sub_100268FE8;
}

uint64_t sub_1002B89BC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
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

uint64_t sub_1002B8A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*sub_1002B8A7C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for Proto_Gpsd_ExitMessage(0) + 20);
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

  return sub_100268FE8;
}

uint64_t sub_1002B8B74(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1002B8BB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042C008, &qword_1003940D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_10042C008, &qword_1003940D0);
  v8 = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 2;
  v10 = a1 + v8[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  *(a1 + v8[7]) = 2;
  *(a1 + v8[8]) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042C008, &qword_1003940D0);
  }

  return result;
}

int *sub_1002B8D38@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  *(a1 + result[5]) = 2;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 4) = 1;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  return result;
}

uint64_t sub_1002B8D94(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gpsd_RecoveryStatistics(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10042C008, &qword_1003940D0);
  sub_1002F7BE8(a1, v1 + v3, type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus);
  v4 = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1002B8E4C(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042C008, &qword_1003940D0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_RecoveryStatistics(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10042C008, &qword_1003940D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    v16 = v13 + v8[6];
    *v16 = 0;
    *(v16 + 4) = 1;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042C008, &qword_1003940D0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus);
  }

  return sub_1002B9088;
}

BOOL sub_1002B90C4()
{
  v1 = sub_100024A2C(&qword_10042C008, &qword_1003940D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  sub_10000A0A4(v0 + *(v5 + 24), v4, &qword_10042C008, &qword_1003940D0);
  v6 = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000059A8(v4, &qword_10042C008, &qword_1003940D0);
  return v7;
}

uint64_t sub_1002B91B8()
{
  v1 = *(type metadata accessor for Proto_Gpsd_RecoveryStatistics(0) + 24);
  sub_1000059A8(v0 + v1, &qword_10042C008, &qword_1003940D0);
  v2 = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1002B92E4(char a1)
{
  result = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1002B9314(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B939C()
{
  result = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_1002B93DC(int a1)
{
  result = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002B9414(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0) + 24);
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

uint64_t sub_1002B94AC()
{
  result = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002B9504(char a1)
{
  result = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1002B9534(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B95BC()
{
  result = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1002B960C(char a1)
{
  result = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1002B963C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002B96C4()
{
  result = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryStatus(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

void (*sub_1002B971C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryPoint(0) + 20);
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

  return sub_100268FE8;
}

uint64_t sub_1002B982C(int a1)
{
  result = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryPoint(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002B9864(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryPoint(0) + 24);
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

uint64_t sub_1002B98FC()
{
  result = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryPoint(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

void (*sub_1002B995C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryPoint(0) + 28);
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

  return sub_100268FE8;
}

int *sub_1002B9A54@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_RecoveryStatistics.RecoveryPoint(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1002B9AC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1002B9B38()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_LtlInfoRequest(0) + 20));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002B9B64(char a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1002B9B94(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfoRequest(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1002B9C20()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
  *(v0 + *(result + 20)) = 5;
  return result;
}

uint64_t sub_1002B9C48()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) & 1;
}

uint64_t sub_1002B9C98(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_1002F01B8(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1 & 1;
  return result;
}

void (*sub_1002B9D34(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 16) & 1;
  return sub_1002B9DD8;
}

void sub_1002B9DD8(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_1002F01B8(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 16) = v4;

  free(v1);
}

BOOL sub_1002B9E9C()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) != 2;
}

uint64_t sub_1002B9F34(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), char a4)
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

  result = swift_beginAccess();
  *(v12 + 16) = a4;
  return result;
}

uint64_t sub_1002B9FE4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    return 0;
  }

  else
  {
    return *(v1 + 20);
  }
}

uint64_t sub_1002BA03C(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_1002F01B8(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 20) = a1;
  *(v7 + 24) = 0;
  return result;
}

void (*sub_1002BA0D8(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1002BA184;
}

void sub_1002BA184(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_1002F01B8(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 20) = v2;
  *(v7 + 24) = 0;

  free(v1);
}

BOOL sub_1002BA250()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  swift_beginAccess();
  return (*(v1 + 24) & 1) == 0;
}

uint64_t sub_1002BA2A4()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_1002F01B8(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 20) = 0;
  *(v5 + 24) = 1;
  return result;
}

uint64_t sub_1002BA338()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  swift_beginAccess();
  if (*(v1 + 25) == 5)
  {
    return 0;
  }

  else
  {
    return *(v1 + 25);
  }
}

uint64_t sub_1002BA38C(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_1002F01B8(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 25) = a1;
  return result;
}

void (*sub_1002BA424(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 25);
  if (v7 == 5)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1002BA4CC;
}

void sub_1002BA4CC(uint64_t *a1)
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
    v10 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_1002F01B8(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 25) = v2;

  free(v1);
}