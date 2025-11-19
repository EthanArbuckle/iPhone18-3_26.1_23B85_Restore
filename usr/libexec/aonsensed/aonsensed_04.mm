uint64_t sub_10005FFAC(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 28);
  sub_1000059A8(v1 + v3, &qword_100418D88, &qword_10036D8F8);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_100060064(void *a1))()
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
  v5 = *(*(sub_100024A2C(&qword_100418D88, &qword_10036D8F8) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418D88, &qword_10036D8F8);
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
      sub_1000059A8(v7, &qword_100418D88, &qword_10036D8F8);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return sub_1000AEB6C;
}

uint64_t sub_10006031C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  sub_10000A0A4(v1 + *(v7 + 32), v6, &qword_100418D88, &qword_10036D8F8);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D88, &qword_10036D8F8);
  }

  return result;
}

uint64_t sub_1000604A4(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 32);
  sub_1000059A8(v1 + v3, &qword_100418D88, &qword_10036D8F8);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_10006055C(void *a1))()
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
  v5 = *(*(sub_100024A2C(&qword_100418D88, &qword_10036D8F8) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418D88, &qword_10036D8F8);
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
      sub_1000059A8(v7, &qword_100418D88, &qword_10036D8F8);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return sub_1000AEB6C;
}

uint64_t sub_100060814@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), a1 + v6, 1, 1, v7);
  v8 = a1 + v2[8];

  return v10(v8, 1, 1, v7);
}

uint64_t sub_10006092C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  sub_10000A0A4(v1 + *(v7 + 20), v6, &qword_100418D88, &qword_10036D8F8);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D88, &qword_10036D8F8);
  }

  return result;
}

uint64_t sub_100060AB4(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100418D88, &qword_10036D8F8);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_100060B6C(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D88, &qword_10036D8F8) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418D88, &qword_10036D8F8);
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
      sub_1000059A8(v7, &qword_100418D88, &qword_10036D8F8);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return sub_100060DAC;
}

BOOL sub_100060E24(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_10000A0A4(v4 + *(v13 + 20), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000059A8(v12, a1, a2);
  return v15;
}

uint64_t sub_100060F5C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_100061020(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100061058(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 24);
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

uint64_t sub_1000610F0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100061120@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + *(v2 + 24);
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_1000611C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D90, &qword_10036D900);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418D90, &qword_10036D900);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v9[6];
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v9[7];
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D90, &qword_10036D900);
  }

  return result;
}

uint64_t sub_1000613DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D90, &qword_10036D900);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_100094134(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D90, &qword_10036D900);
  return swift_endAccess();
}

void (*sub_100061548(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D90, &qword_10036D900) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D90, &qword_10036D900);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v8[6];
    v20 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    v21 = v8[7];
    v22 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
    (*(*(v22 - 8) + 56))(v13 + v21, 1, 1, v22);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D90, &qword_10036D900);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  }

  return sub_100061830;
}

void sub_100061830(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100094134(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D90, &qword_10036D900);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100094134(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D90, &qword_10036D900);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_100061A80()
{
  v1 = sub_100024A2C(&qword_100418D90, &qword_10036D900);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D90, &qword_10036D900);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D90, &qword_10036D900);
  return v8;
}

uint64_t sub_100061BA0()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D90, &qword_10036D900);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_100094134(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D90, &qword_10036D900);
  return swift_endAccess();
}

uint64_t sub_100061CE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D98, &qword_10036D908);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418D98, &qword_10036D908);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  *(a1 + v9[7]) = 6;
  v13 = v9[8];
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a1 + v13, 1, 1, v14);
  v15(a1 + v9[9], 1, 1, v14);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D98, &qword_10036D908);
  }

  return result;
}

uint64_t sub_100061F08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D98, &qword_10036D908);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_100094134(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D98, &qword_10036D908);
  return swift_endAccess();
}

void (*sub_100062074(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D98, &qword_10036D908) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D98, &qword_10036D908);
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
    *(v13 + v8[7]) = 6;
    v20 = v8[8];
    v21 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
    v22 = *(*(v21 - 8) + 56);
    v22(v13 + v20, 1, 1, v21);
    v22(v13 + v8[9], 1, 1, v21);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D98, &qword_10036D908);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  }

  return sub_100062360;
}

void sub_100062360(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100094134(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D98, &qword_10036D908);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100094134(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D98, &qword_10036D908);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000625B0()
{
  v1 = sub_100024A2C(&qword_100418D98, &qword_10036D908);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D98, &qword_10036D908);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D98, &qword_10036D908);
  return v8;
}

uint64_t sub_1000626D0()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D98, &qword_10036D908);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_100094134(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D98, &qword_10036D908);
  return swift_endAccess();
}

uint64_t sub_100062818@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418DA0, &qword_10036D910);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418DA0, &qword_10036D910);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (qword_100437140 != -1)
  {
    swift_once();
  }

  *(a1 + v11) = qword_100437148;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return sub_1000059A8(v6, &qword_100418DA0, &qword_10036D910);
  }

  return result;
}

uint64_t sub_1000629E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418DA0, &qword_10036D910);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_100094134(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418DA0, &qword_10036D910);
  return swift_endAccess();
}

void (*sub_100062B50(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418DA0, &qword_10036D910) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418DA0, &qword_10036D910);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    if (qword_100437140 != -1)
    {
      swift_once();
    }

    *(v13 + v18) = qword_100437148;
    v19 = v17(v7, 1, v8);

    if (v19 != 1)
    {
      sub_1000059A8(v7, &qword_100418DA0, &qword_10036D910);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  }

  return sub_100062DE8;
}

void sub_100062DE8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100094134(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418DA0, &qword_10036D910);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100094134(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418DA0, &qword_10036D910);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_100063038()
{
  v1 = sub_100024A2C(&qword_100418DA0, &qword_10036D910);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418DA0, &qword_10036D910);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418DA0, &qword_10036D910);
  return v8;
}

uint64_t sub_100063158()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418DA0, &qword_10036D910);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_100094134(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418DA0, &qword_10036D910);
  return swift_endAccess();
}

uint64_t sub_1000632A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418DA8, &qword_10036D918);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418DA8, &qword_10036D918);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v9[6];
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v9[7];
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v16 = *(*(v15 - 8) + 56);
  v16(a1 + v14, 1, 1, v15);
  v16(a1 + v9[8], 1, 1, v15);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418DA8, &qword_10036D918);
  }

  return result;
}

uint64_t sub_1000634E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418DA8, &qword_10036D918);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_100094134(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418DA8, &qword_10036D918);
  return swift_endAccess();
}

void (*sub_100063654(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418DA8, &qword_10036D918) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418DA8, &qword_10036D918);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v8[6];
    v20 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    v21 = v8[7];
    v22 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
    v23 = *(*(v22 - 8) + 56);
    v23(v13 + v21, 1, 1, v22);
    v23(v13 + v8[8], 1, 1, v22);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418DA8, &qword_10036D918);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  }

  return sub_100063968;
}

void sub_100063968(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100094134(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418DA8, &qword_10036D918);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100094134(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418DA8, &qword_10036D918);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_100063BB8()
{
  v1 = sub_100024A2C(&qword_100418DA8, &qword_10036D918);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418DA8, &qword_10036D918);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418DA8, &qword_10036D918);
  return v8;
}

uint64_t sub_100063CD8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418DA8, &qword_10036D918);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_100094134(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418DA8, &qword_10036D918);
  return swift_endAccess();
}

uint64_t sub_100063E20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418DB0, &qword_10036D920);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418DB0, &qword_10036D920);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + *(v9 + 24);
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418DB0, &qword_10036D920);
  }

  return result;
}

uint64_t sub_100063FF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418DB0, &qword_10036D920);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_100094134(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418DB0, &qword_10036D920);
  return swift_endAccess();
}

void (*sub_100064164(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418DB0, &qword_10036D920) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418DB0, &qword_10036D920);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    v19 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v13 + *(v8 + 24);
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418DB0, &qword_10036D920);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  }

  return sub_100064408;
}

void sub_100064408(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100094134(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418DB0, &qword_10036D920);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100094134(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418DB0, &qword_10036D920);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_100064658()
{
  v1 = sub_100024A2C(&qword_100418DB0, &qword_10036D920);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418DB0, &qword_10036D920);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418DB0, &qword_10036D920);
  return v8;
}

uint64_t sub_100064778()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418DB0, &qword_10036D920);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_100094134(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418DB0, &qword_10036D920);
  return swift_endAccess();
}

uint64_t sub_100064934(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10006496C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 20);
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

uint64_t sub_100064A04()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100064A4C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100064A84(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 24);
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

uint64_t sub_100064B20()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100064B68(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100064BA0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 28);
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

uint64_t sub_100064C3C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100064C84(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100064CBC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 32);
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

uint64_t sub_100064D58()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_100064DA0(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 36);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100064DE0(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100064E18(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 36);
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

uint64_t sub_100064EB4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_100064EE4()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 40);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100064F1C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100064F54(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 40);
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

uint64_t sub_100064FF0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_100065020()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 44);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100065058(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100065090(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 44);
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

uint64_t sub_10006512C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_10006515C()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 48);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100065194(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000651CC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 48);
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

uint64_t sub_100065268()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_100065298()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 52);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000652D0(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100065308(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 52);
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

uint64_t sub_1000653A4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1000653D4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + result[11];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[12];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + result[13];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_1000654AC(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000654E4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0) + 20);
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

uint64_t sub_100065580()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000655C8(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100065600(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0) + 24);
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

uint64_t sub_10006569C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000656E4(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10006571C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0) + 28);
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

uint64_t sub_1000657B8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100065800@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  sub_10000A0A4(v1 + *(v7 + 20), v6, &qword_100418D10, &qword_10036D880);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = *(v8 + 24);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D10, &qword_10036D880);
  }

  return result;
}

uint64_t sub_1000659AC(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100418D10, &qword_10036D880);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_100065A64(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D10, &qword_10036D880) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418D10, &qword_10036D880);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = *(v8 + 24);
    v18 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D10, &qword_10036D880);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  }

  return sub_100065CC8;
}

uint64_t sub_100065D7C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 24));
  if (v1 == 13)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100065DA8(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_100065DD8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 13)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_100065E64()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  *(v0 + *(result + 24)) = 13;
  return result;
}

uint64_t sub_100065E8C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 28));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100065EB8(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_100065EE8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_100065F74()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  *(v0 + *(result + 28)) = 4;
  return result;
}

uint64_t sub_100065F9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418DB8, &qword_10036D928);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  sub_10000A0A4(v1 + *(v7 + 32), v6, &qword_100418DB8, &qword_10036D928);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418DB8, &qword_10036D928);
  }

  return result;
}

uint64_t sub_100066124(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 32);
  sub_1000059A8(v1 + v3, &qword_100418DB8, &qword_10036D928);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000661DC(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418DB8, &qword_10036D928) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418DB8, &qword_10036D928);
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
      sub_1000059A8(v7, &qword_100418DB8, &qword_10036D928);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  }

  return sub_10006641C;
}

void sub_100066458(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_10009E78C(v12, v11, a6);
    sub_1000059A8(v15 + v10, a3, a4);
    sub_10009E724(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_10009E7F4(v12, a6);
  }

  else
  {
    sub_1000059A8(v15 + v10, a3, a4);
    sub_10009E724(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

uint64_t sub_10006660C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[6]) = 13;
  *(a1 + v2[7]) = 4;
  v5 = v2[8];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_100066740(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100066778(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0) + 20);
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

uint64_t sub_100066814()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_10006685C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100066894(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0) + 24);
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

uint64_t sub_100066930()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100066978(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000669B0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0) + 28);
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

uint64_t sub_100066A4C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100066A94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418DC0, &qword_10036D930);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418DC0, &qword_10036D930);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
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
    return sub_1000059A8(v6, &qword_100418DC0, &qword_10036D930);
  }

  return result;
}

uint64_t sub_100066C40(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418DC0, &qword_10036D930);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10009973C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418DC0, &qword_10036D930);
  return swift_endAccess();
}

void (*sub_100066DAC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418DC0, &qword_10036D930) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418DC0, &qword_10036D930);
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
      sub_1000059A8(v7, &qword_100418DC0, &qword_10036D930);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  }

  return sub_10006702C;
}

void sub_10006702C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10009973C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418DC0, &qword_10036D930);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10009973C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418DC0, &qword_10036D930);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10006727C()
{
  v1 = sub_100024A2C(&qword_100418DC0, &qword_10036D930);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418DC0, &qword_10036D930);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418DC0, &qword_10036D930);
  return v8;
}

uint64_t sub_10006739C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418DC0, &qword_10036D930);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10009973C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418DC0, &qword_10036D930);
  return swift_endAccess();
}

uint64_t sub_1000674E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418DC8, &qword_10036D938);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418DC8, &qword_10036D938);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (qword_1004370B0 != -1)
  {
    swift_once();
  }

  *(a1 + v11) = qword_1004370B8;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return sub_1000059A8(v6, &qword_100418DC8, &qword_10036D938);
  }

  return result;
}

uint64_t sub_1000676B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418DC8, &qword_10036D938);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10009973C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418DC8, &qword_10036D938);
  return swift_endAccess();
}

void (*sub_10006781C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418DC8, &qword_10036D938) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418DC8, &qword_10036D938);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    if (qword_1004370B0 != -1)
    {
      swift_once();
    }

    *(v13 + v18) = qword_1004370B8;
    v19 = v17(v7, 1, v8);

    if (v19 != 1)
    {
      sub_1000059A8(v7, &qword_100418DC8, &qword_10036D938);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  }

  return sub_100067AB4;
}

void sub_100067AB4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10009973C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418DC8, &qword_10036D938);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10009973C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418DC8, &qword_10036D938);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_100067D04()
{
  v1 = sub_100024A2C(&qword_100418DC8, &qword_10036D938);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418DC8, &qword_10036D938);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418DC8, &qword_10036D938);
  return v8;
}

uint64_t sub_100067E24()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418DC8, &qword_10036D938);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10009973C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418DC8, &qword_10036D938);
  return swift_endAccess();
}

void (*sub_100067FD4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_100068084;
}

void (*sub_100068120(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1000681D0;
}

uint64_t sub_100068204@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418DD0, &qword_10036D940);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418DD0, &qword_10036D940);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (qword_100437168 != -1)
  {
    swift_once();
  }

  *(a1 + v11) = qword_100437170;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return sub_1000059A8(v6, &qword_100418DD0, &qword_10036D940);
  }

  return result;
}

uint64_t sub_1000683D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418DD0, &qword_10036D940);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10009973C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418DD0, &qword_10036D940);
  return swift_endAccess();
}

void (*sub_10006853C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418DD0, &qword_10036D940) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418DD0, &qword_10036D940);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    if (qword_100437168 != -1)
    {
      swift_once();
    }

    *(v13 + v18) = qword_100437170;
    v19 = v17(v7, 1, v8);

    if (v19 != 1)
    {
      sub_1000059A8(v7, &qword_100418DD0, &qword_10036D940);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  }

  return sub_1000687D4;
}

void sub_1000687D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10009973C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418DD0, &qword_10036D940);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10009973C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418DD0, &qword_10036D940);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_100068A24()
{
  v1 = sub_100024A2C(&qword_100418DD0, &qword_10036D940);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418DD0, &qword_10036D940);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418DD0, &qword_10036D940);
  return v8;
}

uint64_t sub_100068B44()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418DD0, &qword_10036D940);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10009973C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418DD0, &qword_10036D940);
  return swift_endAccess();
}

void (*sub_100068CB8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_100068D74;
}

uint64_t sub_100068E3C(void *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10009973C(v14);
    *(v4 + v6) = v13;
  }

  v15 = v9 + *a1;
  result = swift_beginAccess();
  *v15 = a2;
  *(v15 + 8) = 0;
  return result;
}

void (*sub_100068EEC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_100068FA8;
}

uint64_t sub_100069044@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418DD8, &qword_10036D948);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418DD8, &qword_10036D948);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v9[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v9[9];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v9[10];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v9[11];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a1 + v9[12];
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a1 + v9[13];
  *v19 = 0;
  *(v19 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418DD8, &qword_10036D948);
  }

  return result;
}

uint64_t sub_100069250(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418DD8, &qword_10036D948);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10009973C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418DD8, &qword_10036D948);
  return swift_endAccess();
}

void (*sub_1000693BC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418DD8, &qword_10036D948) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418DD8, &qword_10036D948);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v13 + v8[9];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v13 + v8[10];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v13 + v8[11];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v13 + v8[12];
    *v25 = 0;
    *(v25 + 4) = 1;
    v26 = v13 + v8[13];
    *v26 = 0;
    *(v26 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418DD8, &qword_10036D948);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  }

  return sub_10006969C;
}

void sub_10006969C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10009973C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418DD8, &qword_10036D948);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10009973C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418DD8, &qword_10036D948);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000698EC()
{
  v1 = sub_100024A2C(&qword_100418DD8, &qword_10036D948);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418DD8, &qword_10036D948);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418DD8, &qword_10036D948);
  return v8;
}

uint64_t sub_100069A0C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418DD8, &qword_10036D948);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10009973C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418DD8, &qword_10036D948);
  return swift_endAccess();
}

void (*sub_100069BBC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_100069C6C;
}

uint64_t sub_100069CFC(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_100069D5C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004329D0);
  sub_100005DF0(v0, qword_1004329D0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GLONASS_SLOT_SOURCE_PROTOBUF_DEFAULT";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GLONASS_SLOT_SOURCE_UNSET";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "GLONASS_SLOT_SOURCE_UNCLEAR";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "GLONASS_SLOT_SOURCE_DECODED_OVER_THE_AIR";
  *(v14 + 1) = 40;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "GLONASS_SLOT_SOURCE_POSITION_KNOWLEDGE";
  *(v15 + 8) = 38;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006A058()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004329E8);
  sub_100005DF0(v0, qword_1004329E8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D790;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SATELLITE_SYSTEM_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SATELLITE_SYSTEM_GPS";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SATELLITE_SYSTEM_GLONASS";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SATELLITE_SYSTEM_BEIDOU";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "SATELLITE_SYSTEM_GALILEO";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "SATELLITE_SYSTEM_QZSS";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 32;
  *v20 = "SATELLITE_SYSTEM_SBAS";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 64;
  *v22 = "SATELLITE_SYSTEM_NAVIC";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006A410()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432A00);
  sub_100005DF0(v0, qword_100432A00);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10036D7A0;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 0;
  *v5 = "BAND_PROTOBUF_DEFAULT";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v32 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "BAND_UNSET";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v32 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "BAND_GPS_QZSS_L1CA";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v32 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "BAND_GPS_QZSS_L2C";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v32 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "BAND_GPS_QZSS_L5";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v32 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "BAND_GLONASS_L1F";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v32 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "BAND_BEIDOU_B1i";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v32 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "BAND_BEIDOU_B2a";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = v32 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "BAND_GALILEO_E1";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "BAND_GALILEO_E5a";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "BAND_SBAS_L1";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v8();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "BAND_BEIDOU_B1c";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "BAND_NAVIC_L5";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006A8E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432A18);
  sub_100005DF0(v0, qword_100432A18);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FULL_SV_TIME_SOURCE_PROTOBUF_DEFAULT";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FULL_SV_TIME_SOURCE_UNSET";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FULL_SV_TIME_SOURCE_NEWLY_DECODED_FROM_SV";
  *(v12 + 1) = 41;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FULL_SV_TIME_SOURCE_PREV_DECODED_FROM_SV";
  *(v14 + 1) = 40;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "FULL_SV_TIME_SOURCE_POSITION_AND_OTHER_SV_TIME";
  *(v16 + 1) = 46;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "FULL_SV_TIME_SOURCE_POSITION_ONLY";
  *(v18 + 1) = 33;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006AC14()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432A30);
  sub_100005DF0(v0, qword_100432A30);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MEASUREMENT_DETECTION_METHOD_PROTOBUF_DEFAULT";
  *(v6 + 8) = 45;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MEASUREMENT_DETECTION_METHOD_UNSET";
  *(v10 + 8) = 34;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MEASUREMENT_DETECTION_METHOD_NOT_DETECTED";
  *(v12 + 1) = 41;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MEASUREMENT_DETECTION_METHOD_ENERGY_BINS";
  *(v14 + 1) = 40;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "MEASUREMENT_DETECTION_METHOD_CODE_TRACKING";
  *(v16 + 1) = 42;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "MEASUREMENT_DETECTION_METHOD_FREQUENCY_TRACKING";
  *(v18 + 1) = 47;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "MEASUREMENT_DETECTION_METHOD_PHASE_TRACKING";
  *(v20 + 1) = 43;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006AF84()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432A48);
  sub_100005DF0(v0, qword_100432A48);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "MULTIPATH_INDICATOR_PROTOBUF_DEFAULT";
  *(v5 + 8) = 36;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "MULTIPATH_INDICATOR_UNSET";
  *(v9 + 8) = 25;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "MULTIPATH_INDICATOR_UNKNOWN";
  *(v11 + 1) = 27;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MULTIPATH_INDICATOR_PRESENT";
  *(v13 + 1) = 27;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "MULTIPATH_INDICATOR_NOT_PRESENT";
  *(v14 + 8) = 31;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006B278()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432A60);
  sub_100005DF0(v0, qword_100432A60);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SV_POSITION_SOURCE_PROTOBUF_DEFAULT";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SV_POSITION_SOURCE_UNSET";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SV_POSITION_SOURCE_EPHEMERIS_OVER_THE_AIR";
  *(v12 + 1) = 41;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SV_POSITION_SOURCE_BROADCAST_EPHEMERIS_FILE";
  *(v14 + 1) = 43;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SV_POSITION_SOURCE_LONG_TERM_ORBIT_MOBILE_CALC_deprecated";
  *(v16 + 1) = 57;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "SV_POSITION_SOURCE_LONG_TERM_PREDICTIONS_FILE";
  *(v18 + 1) = 45;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "SV_POSITION_SOURCE_SHORT_TERM_PREDICTIONS_FILE";
  *(v20 + 1) = 46;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006B5E8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432A78);
  sub_100005DF0(v0, qword_100432A78);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "SV_HEALTH_INDICATION_PROTOBUF_DEFAULT";
  *(v5 + 8) = 37;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "SV_HEALTH_INDICATION_UNSET";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "SV_HEALTH_INDICATION_UNKNOWN";
  *(v11 + 1) = 28;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "SV_HEALTH_INDICATION_HEALTHY";
  *(v13 + 1) = 28;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "SV_HEALTH_INDICATION_UNHEALTHY";
  *(v14 + 8) = 30;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006B8DC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432A90);
  sub_100005DF0(v0, qword_100432A90);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "IONO_CORR_SOURCE_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IONO_CORR_SOURCE_KLOBUCHAR_MODEL";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "IONO_CORR_SOURCE_GLOBAL_PREDICTIONS";
  *(v11 + 8) = 35;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006BB58()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432AA8);
  sub_100005DF0(v0, qword_100432AA8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LEAP_SECOND_CHANGE_KNOWLEDGE_PROTOBUF_DEFAULT";
  *(v6 + 8) = 45;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LEAP_SECOND_CHANGE_KNOWLEDGE_PROTOBUF_UNSET";
  *(v10 + 8) = 43;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LEAP_SECOND_CHANGE_KNOWLEDGE_PROTOBUF_UNKNOWN";
  *(v12 + 1) = 45;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LEAP_SECOND_CHANGE_KNOWLEDGE_PROTOBUF_NOT_CHANGING";
  *(v14 + 1) = 50;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "LEAP_SECOND_CHANGE_KNOWLEDGE_PROTOBUF_CHANGING";
  *(v15 + 8) = 46;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006BE54()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432AC0);
  sub_100005DF0(v0, qword_100432AC0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10036C7E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "GLONASS_LEAP_SECOND_PROTOBUF_DEFAULT";
  *(v4 + 8) = 36;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "GLONASS_LEAP_SECOND_UNSET";
  *(v8 + 8) = 25;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "GLONASS_LEAP_SECOND_NONE";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "GLONASS_LEAP_SECOND_POSITIVE";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "GLONASS_LEAP_SECOND_NEGATIVE";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "GLONASS_LEAP_SECOND_NOT_YET_DEFINED";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006C180()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432AD8);
  sub_100005DF0(v0, qword_100432AD8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SV_REFERENCE_POINT_UNKNOWN";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SV_REFERENCE_POINT_CENTER_OF_MASS";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SV_REFERENCE_POINT_L1_ANTENNA";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SV_REFERENCE_POINT_L5_ANTENNA";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006C4C4()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0) + 20);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0) + 24);
        sub_1000AEADC();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10006C5A8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 5)
  {
    v6 = *(v0 + *(v3 + 24));
    sub_1000AEADC();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10006C6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a2 + v5) = 5;
  return result;
}

uint64_t sub_10006C74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C418, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006C7EC(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419158, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006C858()
{
  sub_1000A5BD8(&qword_100419158, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);

  return Message.hash(into:)();
}

uint64_t sub_10006C920(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _NameMap();
  sub_100036108(v7, a2);
  sub_100005DF0(v7, a2);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v8 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10036C830;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 8;
  *(v13 + 16) = 2;
  v14 = enum case for _NameMap.NameDescription.standard(_:);
  v15 = type metadata accessor for _NameMap.NameDescription();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006CB24()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0) + 20);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
        sub_1000A5BD8(&qword_100419158, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10006CC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418C90, &qword_10036D800);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100418C90, &qword_10036D800);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418C90, &qword_10036D800);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  sub_1000A5BD8(&qword_100419158, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
}

uint64_t sub_10006CF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C410, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006CFCC(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419170, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006D038()
{
  sub_1000A5BD8(&qword_100419170, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);

  return Message.hash(into:)();
}

uint64_t sub_10006D0E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432B20);
  sub_100005DF0(v0, qword_100432B20);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10036C820;
  v4 = v21 + v3;
  v5 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v5 = "gps_prn";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "glonass_id";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "beidou_ranging_code";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "galileo_spreading_code";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "qzss_prn";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sbas_prn";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "navic_prn";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006D428()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 20);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 2:
            v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 24);
            type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
            sub_1000A5BD8(&qword_100419170, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 3:
            v3 = v0;
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 28);
            goto LABEL_5;
        }
      }

      else
      {
        if (result <= 5)
        {
          v3 = v0;
          if (result == 4)
          {
            v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 32);
          }

          else
          {
            v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 36);
          }

          goto LABEL_5;
        }

        if (result == 6)
        {
          v3 = v0;
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 40);
          goto LABEL_5;
        }

        if (result == 7)
        {
          v3 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0) + 44);
          goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10006D5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_10006D72C(v5, a1, a2, a3);
  v13 = (v5 + *(v10 + 28));
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + *(v10 + 32));
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_10006D948(v5);
  sub_10006D9C0(v5);
  sub_10006DA38(v5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10006D72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418C98, &qword_10036D808);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100418C98, &qword_10036D808);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418C98, &qword_10036D808);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
  sub_1000A5BD8(&qword_100419170, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
}

uint64_t sub_10006D948(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10006D9C0(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10006DA38(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10006DAFC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  result = (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t sub_10006DBF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C408, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006DC98(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419188, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006DD04()
{
  sub_1000A5BD8(&qword_100419188, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);

  return Message.hash(into:)();
}

uint64_t sub_10006DDAC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432B38);
  sub_100005DF0(v0, qword_100432B38);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "system";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "constel_id";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006DFC4()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvId(0) + 20);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvId(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
        sub_1000A5BD8(&qword_100419188, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10006E134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v6;
  result = a4(0);
  v15 = (v10 + *(result + 20));
  if (v15[1])
  {
    if (v7)
    {
      return result;
    }
  }

  else
  {
    result = a5(*v15, 1, a2, a3);
    if (v7)
    {
      return result;
    }
  }

  a6(v10, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10006E1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418CA0, &qword_10036D810);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100418CA0, &qword_10036D810);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CA0, &qword_10036D810);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  sub_1000A5BD8(&qword_100419188, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
}

uint64_t sub_10006E47C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = *(a1 + 20);
  v7 = *(a1 + 24);
  v8 = a3 + v6;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v7, 1, 1, v9);
}

uint64_t sub_10006E52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C400, type metadata accessor for CLP_LogEntry_PrivateData_SvId);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006E5CC(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004191A0, type metadata accessor for CLP_LogEntry_PrivateData_SvId);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006E638()
{
  sub_1000A5BD8(&qword_1004191A0, type metadata accessor for CLP_LogEntry_PrivateData_SvId);

  return Message.hash(into:)();
}

uint64_t sub_10006E804(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3F8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006E8A4(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004191B8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006E910()
{
  sub_1000A5BD8(&qword_1004191B8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);

  return Message.hash(into:)();
}

uint64_t sub_10006E9B8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432B68);
  sub_100005DF0(v0, qword_100432B68);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "cm_code_lock";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cl_code_lock";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "c_nav_bit";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "c_nav_frame";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "tow_decoded";
  *(v15 + 8) = 11;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006ED78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3F0, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006EE18(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004191D0, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006EE84()
{
  sub_1000A5BD8(&qword_1004191D0, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);

  return Message.hash(into:)();
}

uint64_t sub_10006EF28()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432B80);
  sub_100005DF0(v0, qword_100432B80);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "code_lock";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "c_nav_bit";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "c_nav_frame";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tow_decoded";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006F1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v7)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v8 = v4;
          v12 = *(a4(0) + 28);
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_13;
          }

          v8 = v4;
          v10 = *(a4(0) + 32);
        }
      }

      else if (result == 1)
      {
        v8 = v4;
        v11 = *(a4(0) + 20);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_13;
        }

        v8 = v4;
        v9 = *(a4(0) + 24);
      }

      v4 = v8;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_13:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10006F314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + *(result + 20)) == 2)
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if (*(v4 + v7[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v4 + v7[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v4 + v7[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10006F4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3E8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006F540(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004191E8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006F5AC()
{
  sub_1000A5BD8(&qword_1004191E8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);

  return Message.hash(into:)();
}

uint64_t sub_10006F650()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432B98);
  sub_100005DF0(v0, qword_100432B98);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "code_lock";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "symbol";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "nav_bit";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "string";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "tod_decoded";
  *(v14 + 8) = 11;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006F960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v7)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v8 = v4;
          v13 = *(a4(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_15;
          }

          v8 = v4;
          v10 = *(a4(0) + 24);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v8 = v4;
            v11 = *(a4(0) + 28);
            break;
          case 4:
            v8 = v4;
            v12 = *(a4(0) + 32);
            break;
          case 5:
            v8 = v4;
            v9 = *(a4(0) + 36);
            break;
          default:
            goto LABEL_15;
        }
      }

      v4 = v8;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_15:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10006FAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = v5;
  result = a4(0);
  v13 = result;
  if (*(v8 + *(result + 20)) == 2)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v6)
    {
      return result;
    }
  }

  if (*(v8 + v13[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v8 + v13[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v8 + v13[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  sub_10006FBFC(v8, a1, a2, a3, a5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10006FBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10006FCF0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t sub_10006FD3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3E0, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006FDDC(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419200, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006FE48()
{
  sub_1000A5BD8(&qword_100419200, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);

  return Message.hash(into:)();
}

uint64_t sub_100070010(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3D8, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000700B0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419218, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10007011C()
{
  sub_1000A5BD8(&qword_100419218, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);

  return Message.hash(into:)();
}

uint64_t sub_1000701CC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  sub_100036108(v3, a2);
  sub_100005DF0(v3, a2);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v4 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10036D7B0;
  v8 = v7 + v6;
  v9 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v9 = "code_lock";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v10 = enum case for _NameMap.NameDescription.standard(_:);
  v11 = type metadata accessor for _NameMap.NameDescription();
  v12 = *(*(v11 - 8) + 104);
  (v12)(v9, v10, v11);
  v13 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v13 = "nav_bit";
  *(v13 + 8) = 7;
  *(v13 + 16) = 2;
  v12();
  v14 = (v8 + 2 * v5);
  v15 = v14 + v4[14];
  *v14 = 3;
  *v15 = "subframe";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v12();
  v16 = (v8 + 3 * v5);
  v17 = v16 + v4[14];
  *v16 = 4;
  *v17 = "tow_decoded";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v12();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100070530(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3D0, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000705D0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419230, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10007063C()
{
  sub_1000A5BD8(&qword_100419230, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);

  return Message.hash(into:)();
}

uint64_t sub_1000706E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432BE0);
  sub_100005DF0(v0, qword_100432BE0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "e1bc_code_lock";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "e1c_code_lock";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "e1b_page";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tow_decoded";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100070A40@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  return result;
}

uint64_t sub_100070A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3C8, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100070B24(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419248, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100070B90()
{
  sub_1000A5BD8(&qword_100419248, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);

  return Message.hash(into:)();
}

uint64_t sub_100070C34()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432BF8);
  sub_100005DF0(v0, qword_100432BF8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10036C7F0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "e5b_prim_code_lock";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "e5a_prim_code_lock";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "e5_alt_boc_prim_code_lock";
  *(v11 + 1) = 25;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "e5b_data_bit";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "e5a_data_bit";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "e5b_sec_code_lock";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "e5a_sec_code_lock";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "e5b_page_sync";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "e5a_page_sync";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "tow_decoded";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100071030()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          v3 = v0;
          if (result == 6)
          {
            v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 40);
          }

          else
          {
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 44);
          }
        }

        else
        {
          switch(result)
          {
            case 8:
              v3 = v0;
              v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 48);
              break;
            case 9:
              v3 = v0;
              v13 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 52);
              break;
            case 10:
              v3 = v0;
              v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 56);
              break;
            default:
              goto LABEL_25;
          }
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          v3 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_25;
          }

          v3 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 24);
        }
      }

      else if (result == 3)
      {
        v3 = v0;
        v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 28);
      }

      else
      {
        v3 = v0;
        if (result == 4)
        {
          v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 32);
        }

        else
        {
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0) + 36);
        }
      }

      v0 = v3;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_25:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1000711D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  sub_10006FBFC(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  sub_100071388(v5);
  sub_100071400(v5);
  sub_100071478(v5);
  sub_1000714F0(v5);
  sub_100071568(v5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100071388(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100071400(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100071478(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1000714F0(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100071568(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 56)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10007162C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  v7 = a1[10];
  *(a2 + a1[9]) = 2;
  *(a2 + v7) = 2;
  v8 = a1[12];
  *(a2 + a1[11]) = 2;
  *(a2 + v8) = 2;
  v9 = a1[14];
  *(a2 + a1[13]) = 2;
  *(a2 + v9) = 2;
  return result;
}

uint64_t sub_1000716C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3C0, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100071764(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419260, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000717D0()
{
  sub_1000A5BD8(&qword_100419260, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);

  return Message.hash(into:)();
}

uint64_t sub_100071874()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432C10);
  sub_100005DF0(v0, qword_100432C10);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "code_lock";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "message";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100071ADC()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0) + 28);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 2:
        v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t sub_100071BA0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 2)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v0 + *(v3 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100071CD4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t sub_100071D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3B8, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100071DE4(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419278, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100071E50()
{
  sub_1000A5BD8(&qword_100419278, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);

  return Message.hash(into:)();
}

uint64_t sub_100071EF4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432C28);
  sub_100005DF0(v0, qword_100432C28);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10036D7C0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "band";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "gps_l1";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "gps_l2c";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "gps_l5";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "glonass_l1f";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "beidou_b1";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "beidou_b2";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "galileo_e1";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "galileo_e5";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "sbas_l1";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "navic_l5";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100072338()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 13;
  v4 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  (*(*(v18 - 8) + 56))(v3 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  v20 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  (*(*(v20 - 8) + 56))(v3 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  (*(*(v22 - 8) + 56))(v3 + v21, 1, 1, v22);
  result = (v6)(v3 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5, 1, 1, v5);
  qword_100437018 = v3;
  return result;
}

uint64_t sub_10007263C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418CE8, &qword_10036D858);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v95 = &v78 - v5;
  v6 = sub_100024A2C(&qword_100418CE0, &qword_10036D850);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v94 = &v78 - v8;
  v9 = sub_100024A2C(&qword_100418CD8, &qword_10036D848);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v93 = &v78 - v11;
  v12 = sub_100024A2C(&qword_100418CD0, &qword_10036D840);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v92 = &v78 - v14;
  v15 = sub_100024A2C(&qword_100418CC8, &qword_10036D838);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v91 = &v78 - v17;
  v18 = sub_100024A2C(&qword_100418CC0, &qword_10036D830);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v90 = &v78 - v20;
  v21 = sub_100024A2C(&qword_100418CB8, &qword_10036D828);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v88 = &v78 - v23;
  v24 = sub_100024A2C(&qword_100418CB0, &qword_10036D820);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v83 = &v78 - v26;
  v27 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v79 = &v78 - v29;
  *(v1 + 16) = 13;
  v30 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  v31 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v32 = *(*(v31 - 8) + 56);
  v32(v1 + v30, 1, 1, v31);
  v33 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  (*(*(v34 - 8) + 56))(v1 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  v80 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  v36 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  (*(*(v36 - 8) + 56))(v1 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  v81 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  v38 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  (*(*(v38 - 8) + 56))(v1 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  v82 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  v40 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  (*(*(v40 - 8) + 56))(v1 + v39, 1, 1, v40);
  v41 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  v84 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  v42 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  (*(*(v42 - 8) + 56))(v1 + v41, 1, 1, v42);
  v43 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  v85 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  v44 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  (*(*(v44 - 8) + 56))(v1 + v43, 1, 1, v44);
  v45 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  v86 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  v46 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  (*(*(v46 - 8) + 56))(v1 + v45, 1, 1, v46);
  v47 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  v87 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  v48 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  (*(*(v48 - 8) + 56))(v1 + v47, 1, 1, v48);
  v89 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  v32(v1 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5, 1, 1, v31);
  swift_beginAccess();
  v49 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v49;
  v50 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  swift_beginAccess();
  v51 = v79;
  sub_10000A0A4(a1 + v50, v79, &qword_100418CA8, &qword_10036D818);
  swift_beginAccess();
  sub_10000AD64(v51, v1 + v30, &qword_100418CA8, &qword_10036D818);
  swift_endAccess();
  v52 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  v53 = v83;
  sub_10000A0A4(a1 + v52, v83, &qword_100418CB0, &qword_10036D820);
  swift_beginAccess();
  sub_10000AD64(v53, v1 + v33, &qword_100418CB0, &qword_10036D820);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  v55 = v88;
  sub_10000A0A4(a1 + v54, v88, &qword_100418CB8, &qword_10036D828);
  v56 = v80;
  swift_beginAccess();
  sub_10000AD64(v55, v1 + v56, &qword_100418CB8, &qword_10036D828);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  v58 = v90;
  sub_10000A0A4(a1 + v57, v90, &qword_100418CC0, &qword_10036D830);
  v59 = v81;
  swift_beginAccess();
  sub_10000AD64(v58, v1 + v59, &qword_100418CC0, &qword_10036D830);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  v61 = v91;
  sub_10000A0A4(a1 + v60, v91, &qword_100418CC8, &qword_10036D838);
  v62 = v82;
  swift_beginAccess();
  sub_10000AD64(v61, v1 + v62, &qword_100418CC8, &qword_10036D838);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  v64 = v92;
  sub_10000A0A4(a1 + v63, v92, &qword_100418CD0, &qword_10036D840);
  v65 = v84;
  swift_beginAccess();
  sub_10000AD64(v64, v1 + v65, &qword_100418CD0, &qword_10036D840);
  swift_endAccess();
  v66 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  v67 = v93;
  sub_10000A0A4(a1 + v66, v93, &qword_100418CD8, &qword_10036D848);
  v68 = v85;
  swift_beginAccess();
  sub_10000AD64(v67, v1 + v68, &qword_100418CD8, &qword_10036D848);
  swift_endAccess();
  v69 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  v70 = v94;
  sub_10000A0A4(a1 + v69, v94, &qword_100418CE0, &qword_10036D850);
  v71 = v86;
  swift_beginAccess();
  sub_10000AD64(v70, v1 + v71, &qword_100418CE0, &qword_10036D850);
  swift_endAccess();
  v72 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  v73 = v95;
  sub_10000A0A4(a1 + v72, v95, &qword_100418CE8, &qword_10036D858);
  v74 = v87;
  swift_beginAccess();
  sub_10000AD64(v73, v1 + v74, &qword_100418CE8, &qword_10036D858);
  swift_endAccess();
  v75 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  sub_10000A0A4(a1 + v75, v51, &qword_100418CA8, &qword_10036D818);

  v76 = v89;
  swift_beginAccess();
  sub_10000AD64(v51, v1 + v76, &qword_100418CA8, &qword_10036D818);
  swift_endAccess();
  return v1;
}

uint64_t sub_100073104()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1, &qword_100418CA8, &qword_10036D818);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C, &qword_100418CB0, &qword_10036D820);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5, &qword_100418CB8, &qword_10036D828);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F, &qword_100418CC0, &qword_10036D830);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1, &qword_100418CC8, &qword_10036D838);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2, &qword_100418CD0, &qword_10036D840);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1, &qword_100418CD8, &qword_10036D848);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5, &qword_100418CE0, &qword_10036D850);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1, &qword_100418CE8, &qword_10036D858);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5, &qword_100418CA8, &qword_10036D818);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000732A8()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10007263C(v6);
    *(v2 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while (1)
    {
      if (v12)
      {
        return result;
      }

      if (result > 5)
      {
        break;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState;
          v15 = &qword_1004191D0;
        }

        else
        {
          v13 = v1;
          if (result == 4)
          {
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
            v14 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState;
            v15 = &qword_1004191E8;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
            v14 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState;
            v15 = &qword_100419200;
          }
        }

        goto LABEL_29;
      }

      if (result != 1)
      {
        if (result != 2)
        {
          goto LABEL_31;
        }

LABEL_21:
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState;
        v15 = &qword_1004191B8;
        goto LABEL_29;
      }

      swift_beginAccess();
      sub_1000AEA34();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_30:
      swift_endAccess();
LABEL_31:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 8)
    {
      switch(result)
      {
        case 9:
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState;
          v15 = &qword_100419260;
          break;
        case 10:
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
          v14 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState;
          v15 = &qword_100419278;
          break;
        case 11:
          goto LABEL_21;
        default:
          goto LABEL_31;
      }
    }

    else if (result == 6)
    {
      v13 = v1;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
      v14 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState;
      v15 = &qword_100419218;
    }

    else
    {
      v13 = v1;
      if (result == 7)
      {
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState;
        v15 = &qword_100419230;
      }

      else
      {
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState;
        v15 = &qword_100419248;
      }
    }

LABEL_29:
    sub_1000A5BD8(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1000737D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 13)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *(v9 + 16);
    sub_1000AEA34();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_10007398C(v9, a1, a2, a3);
  sub_100073BB4(v9, a1, a2, a3);
  sub_100073DDC(v9, a1, a2, a3);
  sub_100074004(v9, a1, a2, a3);
  sub_10007422C(v9, a1, a2, a3);
  sub_100074454(v9, a1, a2, a3);
  sub_10007467C(v9, a1, a2, a3);
  sub_1000748A4(v9, a1, a2, a3);
  sub_100074ACC(v9, a1, a2, a3);
  sub_100074CF4(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10007398C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418CA8, &qword_10036D818);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CA8, &qword_10036D818);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  sub_1000A5BD8(&qword_1004191B8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
}

uint64_t sub_100073BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418CB0, &qword_10036D820);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418CB0, &qword_10036D820);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CB0, &qword_10036D820);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
  sub_1000A5BD8(&qword_1004191D0, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
}

uint64_t sub_100073DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418CB8, &qword_10036D828);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418CB8, &qword_10036D828);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CB8, &qword_10036D828);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
  sub_1000A5BD8(&qword_1004191E8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
}

uint64_t sub_100074004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418CC0, &qword_10036D830);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418CC0, &qword_10036D830);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CC0, &qword_10036D830);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
  sub_1000A5BD8(&qword_100419200, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
}

uint64_t sub_10007422C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418CC8, &qword_10036D838);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418CC8, &qword_10036D838);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CC8, &qword_10036D838);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
  sub_1000A5BD8(&qword_100419218, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
}

uint64_t sub_100074454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418CD0, &qword_10036D840);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418CD0, &qword_10036D840);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CD0, &qword_10036D840);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
  sub_1000A5BD8(&qword_100419230, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
}

uint64_t sub_10007467C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418CD8, &qword_10036D848);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418CD8, &qword_10036D848);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CD8, &qword_10036D848);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
  sub_1000A5BD8(&qword_100419248, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
}

uint64_t sub_1000748A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418CE0, &qword_10036D850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418CE0, &qword_10036D850);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CE0, &qword_10036D850);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  sub_1000A5BD8(&qword_100419260, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
}

uint64_t sub_100074ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418CE8, &qword_10036D858);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418CE8, &qword_10036D858);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CE8, &qword_10036D858);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
  sub_1000A5BD8(&qword_100419278, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
}

uint64_t sub_100074CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418CA8, &qword_10036D818);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CA8, &qword_10036D818);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  sub_1000A5BD8(&qword_1004191B8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
}

BOOL sub_100074F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v244 = *(v4 - 8);
  v5 = *(v244 + 64);
  __chkstk_darwin(v4);
  v7 = &v233 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_100024A2C(&qword_10041C4E0, &qword_100373CD0);
  v8 = *(*(v243 - 8) + 64);
  __chkstk_darwin(v243);
  v10 = &v233 - v9;
  v11 = sub_100024A2C(&qword_100418CE8, &qword_10036D858);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v239 = &v233 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v246 = &v233 - v15;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v248 = *(v16 - 8);
  v249 = v16;
  v17 = *(v248 + 64);
  __chkstk_darwin(v16);
  v240 = &v233 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_100024A2C(&qword_10041C4E8, &qword_100373CD8);
  v19 = *(*(v247 - 8) + 64);
  __chkstk_darwin(v247);
  v250 = &v233 - v20;
  v21 = sub_100024A2C(&qword_100418CE0, &qword_10036D850);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v265 = &v233 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v252 = &v233 - v25;
  v26 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  v255 = *(v26 - 8);
  v256 = v26;
  v27 = *(v255 + 64);
  __chkstk_darwin(v26);
  v245 = &v233 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = sub_100024A2C(&qword_10041C4F0, &qword_100373CE0);
  v29 = *(*(v254 - 8) + 64);
  __chkstk_darwin(v254);
  v257 = &v233 - v30;
  v31 = sub_100024A2C(&qword_100418CD8, &qword_10036D848);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v251 = &v233 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v259 = &v233 - v35;
  v36 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  v262 = *(v36 - 8);
  v263 = v36;
  v37 = *(v262 + 64);
  __chkstk_darwin(v36);
  v253 = &v233 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_100024A2C(&qword_10041C4F8, &qword_100373CE8);
  v39 = *(*(v261 - 8) + 64);
  __chkstk_darwin(v261);
  v264 = &v233 - v40;
  v41 = sub_100024A2C(&qword_100418CD0, &qword_10036D840);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v258 = &v233 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v267 = &v233 - v45;
  v46 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  v270 = *(v46 - 8);
  v271 = v46;
  v47 = *(v270 + 64);
  __chkstk_darwin(v46);
  v260 = &v233 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_100024A2C(&qword_10041C500, &qword_100373CF0);
  v49 = *(*(v269 - 8) + 64);
  __chkstk_darwin(v269);
  v272 = &v233 - v50;
  v51 = sub_100024A2C(&qword_100418CC8, &qword_10036D838);
  v52 = *(*(v51 - 8) + 64);
  v53 = __chkstk_darwin(v51 - 8);
  v266 = &v233 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v284 = &v233 - v55;
  v56 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  v276 = *(v56 - 8);
  v277 = v56;
  v57 = *(v276 + 64);
  __chkstk_darwin(v56);
  v268 = &v233 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = sub_100024A2C(&qword_10041C508, &qword_100373CF8);
  v59 = *(*(v275 - 8) + 64);
  __chkstk_darwin(v275);
  v278 = &v233 - v60;
  v61 = sub_100024A2C(&qword_100418CC0, &qword_10036D830);
  v62 = *(*(v61 - 8) + 64);
  v63 = __chkstk_darwin(v61 - 8);
  v273 = &v233 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v285 = &v233 - v65;
  v66 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  v281 = *(v66 - 8);
  v282 = v66;
  v67 = *(v281 + 64);
  __chkstk_darwin(v66);
  v274 = &v233 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = sub_100024A2C(&qword_10041C510, &qword_100373D00);
  v69 = *(*(v280 - 8) + 64);
  __chkstk_darwin(v280);
  v283 = &v233 - v70;
  v71 = sub_100024A2C(&qword_100418CB8, &qword_10036D828);
  v72 = *(*(v71 - 8) + 64);
  v73 = __chkstk_darwin(v71 - 8);
  v292 = &v233 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v293 = &v233 - v75;
  v76 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  v289 = *(v76 - 8);
  v290 = v76;
  v77 = *(v289 + 64);
  __chkstk_darwin(v76);
  v279 = &v233 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = sub_100024A2C(&qword_10041C518, &qword_100373D08);
  v79 = *(*(v288 - 8) + 64);
  __chkstk_darwin(v288);
  v291 = &v233 - v80;
  v81 = sub_100024A2C(&qword_100418CB0, &qword_10036D820);
  v82 = *(*(v81 - 8) + 64);
  v83 = __chkstk_darwin(v81 - 8);
  v286 = &v233 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v294 = &v233 - v85;
  v86 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v87 = *(v86 - 8);
  v296 = v86;
  v297 = v87;
  v88 = *(v87 + 64);
  __chkstk_darwin(v86);
  v287 = &v233 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = sub_100024A2C(&qword_10041C520, &qword_100373D10);
  v90 = *(*(v295 - 8) + 64);
  v91 = __chkstk_darwin(v295);
  v242 = &v233 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v91);
  v94 = &v233 - v93;
  v95 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  v96 = *(*(v95 - 8) + 64);
  v97 = __chkstk_darwin(v95 - 8);
  v238 = &v233 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __chkstk_darwin(v97);
  v241 = &v233 - v100;
  v101 = __chkstk_darwin(v99);
  v103 = &v233 - v102;
  __chkstk_darwin(v101);
  v105 = &v233 - v104;
  swift_beginAccess();
  v106 = *(a1 + 16);
  swift_beginAccess();
  v107 = *(a2 + 16);
  if (v106 == 13)
  {
    if (v107 != 13)
    {
      return 0;
    }

LABEL_6:
    v235 = v7;
    v236 = v4;
    v237 = v10;
    v109 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
    swift_beginAccess();
    v110 = a1;
    sub_10000A0A4(a1 + v109, v105, &qword_100418CA8, &qword_10036D818);
    v111 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
    swift_beginAccess();
    v112 = *(v295 + 48);
    sub_10000A0A4(v105, v94, &qword_100418CA8, &qword_10036D818);
    sub_10000A0A4(a2 + v111, &v94[v112], &qword_100418CA8, &qword_10036D818);
    v113 = v296;
    v114 = v297 + 48;
    v115 = *(v297 + 48);
    if (v115(v94, 1, v296) == 1)
    {

      sub_1000059A8(v105, &qword_100418CA8, &qword_10036D818);
      v234 = v115;
      v116 = v115(&v94[v112], 1, v113);
      v117 = v110;
      if (v116 == 1)
      {
        v297 = v114;
        sub_1000059A8(v94, &qword_100418CA8, &qword_10036D818);
LABEL_13:
        v123 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
        swift_beginAccess();
        v124 = v294;
        sub_10000A0A4(v117 + v123, v294, &qword_100418CB0, &qword_10036D820);
        v125 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
        swift_beginAccess();
        v126 = *(v288 + 48);
        v127 = v291;
        sub_10000A0A4(v124, v291, &qword_100418CB0, &qword_10036D820);
        v128 = v127;
        sub_10000A0A4(a2 + v125, v127 + v126, &qword_100418CB0, &qword_10036D820);
        v129 = *(v289 + 48);
        v130 = v127;
        v131 = v290;
        if (v129(v130, 1, v290) == 1)
        {
          sub_1000059A8(v124, &qword_100418CB0, &qword_10036D820);
          v132 = v129(v128 + v126, 1, v131);
          v133 = v292;
          v134 = v293;
          if (v132 == 1)
          {
            sub_1000059A8(v128, &qword_100418CB0, &qword_10036D820);
            goto LABEL_20;
          }
        }

        else
        {
          v135 = v286;
          sub_10000A0A4(v128, v286, &qword_100418CB0, &qword_10036D820);
          v136 = v129(v128 + v126, 1, v131);
          v137 = v292;
          v134 = v293;
          if (v136 != 1)
          {
            v138 = v128 + v126;
            v139 = v279;
            sub_10009E724(v138, v279, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            LODWORD(v290) = sub_1000A1C88(v135, v139, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            sub_10009E7F4(v139, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            sub_1000059A8(v294, &qword_100418CB0, &qword_10036D820);
            sub_10009E7F4(v135, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            sub_1000059A8(v128, &qword_100418CB0, &qword_10036D820);
            v133 = v137;
            if ((v290 & 1) == 0)
            {
              goto LABEL_70;
            }

LABEL_20:
            v140 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
            swift_beginAccess();
            sub_10000A0A4(v117 + v140, v134, &qword_100418CB8, &qword_10036D828);
            v141 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
            swift_beginAccess();
            v142 = *(v280 + 48);
            v143 = v283;
            sub_10000A0A4(v134, v283, &qword_100418CB8, &qword_10036D828);
            v144 = v143;
            sub_10000A0A4(a2 + v141, v143 + v142, &qword_100418CB8, &qword_10036D828);
            v145 = v282;
            v146 = *(v281 + 48);
            if (v146(v143, 1, v282) == 1)
            {
              sub_1000059A8(v134, &qword_100418CB8, &qword_10036D828);
              v147 = v146(v143 + v142, 1, v145);
              v149 = v284;
              v148 = v285;
              if (v147 == 1)
              {
                sub_1000059A8(v144, &qword_100418CB8, &qword_10036D828);
                goto LABEL_27;
              }
            }

            else
            {
              sub_10000A0A4(v143, v133, &qword_100418CB8, &qword_10036D828);
              v150 = v146(v143 + v142, 1, v145);
              v151 = v284;
              v148 = v285;
              if (v150 != 1)
              {
                v152 = v144 + v142;
                v153 = v274;
                sub_10009E724(v152, v274, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                LODWORD(v294) = sub_1000A3FAC(v133, v153, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                sub_10009E7F4(v153, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                sub_1000059A8(v293, &qword_100418CB8, &qword_10036D828);
                v154 = v133;
                v149 = v151;
                sub_10009E7F4(v154, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                sub_1000059A8(v144, &qword_100418CB8, &qword_10036D828);
                if ((v294 & 1) == 0)
                {
                  goto LABEL_70;
                }

LABEL_27:
                v155 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
                swift_beginAccess();
                sub_10000A0A4(v117 + v155, v148, &qword_100418CC0, &qword_10036D830);
                v156 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
                swift_beginAccess();
                v157 = *(v275 + 48);
                v144 = v278;
                sub_10000A0A4(v148, v278, &qword_100418CC0, &qword_10036D830);
                sub_10000A0A4(a2 + v156, v144 + v157, &qword_100418CC0, &qword_10036D830);
                v158 = v277;
                v159 = *(v276 + 48);
                if (v159(v144, 1, v277) == 1)
                {
                  sub_1000059A8(v148, &qword_100418CC0, &qword_10036D830);
                  if (v159(v144 + v157, 1, v158) == 1)
                  {
                    sub_1000059A8(v144, &qword_100418CC0, &qword_10036D830);
                    goto LABEL_34;
                  }
                }

                else
                {
                  v160 = v273;
                  sub_10000A0A4(v144, v273, &qword_100418CC0, &qword_10036D830);
                  if (v159(v144 + v157, 1, v158) != 1)
                  {
                    v161 = v144 + v157;
                    v162 = v268;
                    sub_10009E724(v161, v268, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    v163 = sub_1000A1C88(v160, v162, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    sub_10009E7F4(v162, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    sub_1000059A8(v285, &qword_100418CC0, &qword_10036D830);
                    sub_10009E7F4(v160, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    sub_1000059A8(v144, &qword_100418CC0, &qword_10036D830);
                    if ((v163 & 1) == 0)
                    {
                      goto LABEL_70;
                    }

LABEL_34:
                    v164 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
                    swift_beginAccess();
                    sub_10000A0A4(v117 + v164, v149, &qword_100418CC8, &qword_10036D838);
                    v165 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
                    swift_beginAccess();
                    v166 = *(v269 + 48);
                    v167 = v272;
                    sub_10000A0A4(v149, v272, &qword_100418CC8, &qword_10036D838);
                    v144 = v167;
                    sub_10000A0A4(a2 + v165, v167 + v166, &qword_100418CC8, &qword_10036D838);
                    v168 = v271;
                    v169 = *(v270 + 48);
                    if (v169(v167, 1, v271) == 1)
                    {
                      sub_1000059A8(v149, &qword_100418CC8, &qword_10036D838);
                      if (v169(v167 + v166, 1, v168) == 1)
                      {
                        sub_1000059A8(v167, &qword_100418CC8, &qword_10036D838);
                        goto LABEL_41;
                      }
                    }

                    else
                    {
                      v170 = v266;
                      sub_10000A0A4(v167, v266, &qword_100418CC8, &qword_10036D838);
                      if (v169(v167 + v166, 1, v168) != 1)
                      {
                        v171 = v167 + v166;
                        v172 = v260;
                        sub_10009E724(v171, v260, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        v173 = sub_1000A3FAC(v170, v172, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        sub_10009E7F4(v172, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        sub_1000059A8(v284, &qword_100418CC8, &qword_10036D838);
                        sub_10009E7F4(v170, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        sub_1000059A8(v167, &qword_100418CC8, &qword_10036D838);
                        if ((v173 & 1) == 0)
                        {
                          goto LABEL_70;
                        }

LABEL_41:
                        v174 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
                        swift_beginAccess();
                        v175 = v267;
                        sub_10000A0A4(v117 + v174, v267, &qword_100418CD0, &qword_10036D840);
                        v176 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
                        swift_beginAccess();
                        v177 = *(v261 + 48);
                        v144 = v264;
                        sub_10000A0A4(v175, v264, &qword_100418CD0, &qword_10036D840);
                        sub_10000A0A4(a2 + v176, v144 + v177, &qword_100418CD0, &qword_10036D840);
                        v178 = v263;
                        v179 = *(v262 + 48);
                        if (v179(v144, 1, v263) == 1)
                        {
                          sub_1000059A8(v175, &qword_100418CD0, &qword_10036D840);
                          v180 = v179(v144 + v177, 1, v178);
                          v181 = v265;
                          if (v180 == 1)
                          {
                            sub_1000059A8(v144, &qword_100418CD0, &qword_10036D840);
                            goto LABEL_48;
                          }
                        }

                        else
                        {
                          v182 = v258;
                          sub_10000A0A4(v144, v258, &qword_100418CD0, &qword_10036D840);
                          v183 = v177;
                          v184 = v179(v144 + v177, 1, v178);
                          v181 = v265;
                          if (v184 != 1)
                          {
                            v185 = v144 + v183;
                            v186 = v253;
                            sub_10009E724(v185, v253, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            v187 = sub_1000A3FAC(v182, v186, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            sub_10009E7F4(v186, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            sub_1000059A8(v267, &qword_100418CD0, &qword_10036D840);
                            sub_10009E7F4(v182, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            sub_1000059A8(v144, &qword_100418CD0, &qword_10036D840);
                            if ((v187 & 1) == 0)
                            {
                              goto LABEL_70;
                            }

LABEL_48:
                            v188 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
                            swift_beginAccess();
                            v189 = v259;
                            sub_10000A0A4(v117 + v188, v259, &qword_100418CD8, &qword_10036D848);
                            v190 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
                            swift_beginAccess();
                            v191 = *(v254 + 48);
                            v192 = v257;
                            sub_10000A0A4(v189, v257, &qword_100418CD8, &qword_10036D848);
                            v144 = v192;
                            sub_10000A0A4(a2 + v190, v192 + v191, &qword_100418CD8, &qword_10036D848);
                            v193 = v256;
                            v194 = *(v255 + 48);
                            if (v194(v192, 1, v256) == 1)
                            {
                              sub_1000059A8(v189, &qword_100418CD8, &qword_10036D848);
                              if (v194(v192 + v191, 1, v193) == 1)
                              {
                                sub_1000059A8(v192, &qword_100418CD8, &qword_10036D848);
LABEL_55:
                                v199 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
                                swift_beginAccess();
                                v200 = v252;
                                sub_10000A0A4(v117 + v199, v252, &qword_100418CE0, &qword_10036D850);
                                v201 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
                                swift_beginAccess();
                                v202 = *(v247 + 48);
                                v203 = v250;
                                sub_10000A0A4(v200, v250, &qword_100418CE0, &qword_10036D850);
                                v144 = v203;
                                sub_10000A0A4(a2 + v201, v203 + v202, &qword_100418CE0, &qword_10036D850);
                                v204 = v249;
                                v205 = *(v248 + 48);
                                if (v205(v203, 1, v249) == 1)
                                {
                                  sub_1000059A8(v200, &qword_100418CE0, &qword_10036D850);
                                  if (v205(v203 + v202, 1, v204) == 1)
                                  {
                                    sub_1000059A8(v203, &qword_100418CE0, &qword_10036D850);
LABEL_62:
                                    v209 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
                                    swift_beginAccess();
                                    v210 = v246;
                                    sub_10000A0A4(v117 + v209, v246, &qword_100418CE8, &qword_10036D858);
                                    v211 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
                                    swift_beginAccess();
                                    v212 = *(v243 + 48);
                                    v213 = v210;
                                    v214 = v237;
                                    sub_10000A0A4(v213, v237, &qword_100418CE8, &qword_10036D858);
                                    v144 = v214;
                                    sub_10000A0A4(a2 + v211, v214 + v212, &qword_100418CE8, &qword_10036D858);
                                    v215 = *(v244 + 48);
                                    v216 = v236;
                                    if (v215(v214, 1, v236) == 1)
                                    {
                                      sub_1000059A8(v246, &qword_100418CE8, &qword_10036D858);
                                      if (v215(v214 + v212, 1, v216) == 1)
                                      {
                                        sub_1000059A8(v214, &qword_100418CE8, &qword_10036D858);
LABEL_74:
                                        v221 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
                                        swift_beginAccess();
                                        v222 = v241;
                                        sub_10000A0A4(v117 + v221, v241, &qword_100418CA8, &qword_10036D818);
                                        v223 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
                                        swift_beginAccess();
                                        v224 = *(v295 + 48);
                                        v225 = v242;
                                        sub_10000A0A4(v222, v242, &qword_100418CA8, &qword_10036D818);
                                        sub_10000A0A4(a2 + v223, v225 + v224, &qword_100418CA8, &qword_10036D818);
                                        v226 = v296;
                                        v227 = v234;
                                        if (v234(v225, 1, v296) == 1)
                                        {

                                          sub_1000059A8(v241, &qword_100418CA8, &qword_10036D818);
                                          if (v227(v225 + v224, 1, v226) == 1)
                                          {
                                            sub_1000059A8(v242, &qword_100418CA8, &qword_10036D818);
                                            return 1;
                                          }

                                          goto LABEL_79;
                                        }

                                        sub_10000A0A4(v225, v238, &qword_100418CA8, &qword_10036D818);
                                        if (v227(v225 + v224, 1, v226) == 1)
                                        {

                                          sub_1000059A8(v241, &qword_100418CA8, &qword_10036D818);
                                          sub_10009E7F4(v238, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
LABEL_79:
                                          sub_1000059A8(v242, &qword_10041C520, &qword_100373D10);
                                          return 0;
                                        }

                                        v228 = v242;
                                        v229 = v242 + v224;
                                        v230 = v287;
                                        sub_10009E724(v229, v287, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
                                        v231 = v238;
                                        v232 = sub_1000A3FAC(v238, v230, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);

                                        sub_10009E7F4(v230, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
                                        sub_1000059A8(v241, &qword_100418CA8, &qword_10036D818);
                                        sub_10009E7F4(v231, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
                                        sub_1000059A8(v228, &qword_100418CA8, &qword_10036D818);
                                        return (v232 & 1) != 0;
                                      }

                                      goto LABEL_67;
                                    }

                                    v217 = v239;
                                    sub_10000A0A4(v214, v239, &qword_100418CE8, &qword_10036D858);
                                    if (v215(v214 + v212, 1, v216) == 1)
                                    {
                                      sub_1000059A8(v246, &qword_100418CE8, &qword_10036D858);
                                      sub_10009E7F4(v217, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
LABEL_67:
                                      v118 = &qword_10041C4E0;
                                      v119 = &qword_100373CD0;
                                      goto LABEL_68;
                                    }

                                    v218 = v214 + v212;
                                    v219 = v235;
                                    sub_10009E724(v218, v235, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                                    v220 = sub_1000A1A28(v217, v219);
                                    sub_10009E7F4(v219, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                                    sub_1000059A8(v246, &qword_100418CE8, &qword_10036D858);
                                    sub_10009E7F4(v217, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                                    sub_1000059A8(v214, &qword_100418CE8, &qword_10036D858);
                                    if (v220)
                                    {
                                      goto LABEL_74;
                                    }

LABEL_70:

                                    return 0;
                                  }
                                }

                                else
                                {
                                  sub_10000A0A4(v203, v181, &qword_100418CE0, &qword_10036D850);
                                  if (v205(v203 + v202, 1, v204) != 1)
                                  {
                                    v206 = v203 + v202;
                                    v207 = v240;
                                    sub_10009E724(v206, v240, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                    v208 = sub_1000A1284(v181, v207);
                                    sub_10009E7F4(v207, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                    sub_1000059A8(v252, &qword_100418CE0, &qword_10036D850);
                                    sub_10009E7F4(v181, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                    sub_1000059A8(v203, &qword_100418CE0, &qword_10036D850);
                                    if ((v208 & 1) == 0)
                                    {
                                      goto LABEL_70;
                                    }

                                    goto LABEL_62;
                                  }

                                  sub_1000059A8(v252, &qword_100418CE0, &qword_10036D850);
                                  sub_10009E7F4(v181, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                }

                                v118 = &qword_10041C4E8;
                                v119 = &qword_100373CD8;
LABEL_68:
                                v120 = v144;
                                goto LABEL_69;
                              }
                            }

                            else
                            {
                              v195 = v251;
                              sub_10000A0A4(v192, v251, &qword_100418CD8, &qword_10036D848);
                              if (v194(v192 + v191, 1, v193) != 1)
                              {
                                v196 = v192 + v191;
                                v197 = v245;
                                sub_10009E724(v196, v245, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                v198 = sub_1000A3FAC(v195, v197, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                sub_10009E7F4(v197, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                sub_1000059A8(v259, &qword_100418CD8, &qword_10036D848);
                                sub_10009E7F4(v195, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                sub_1000059A8(v192, &qword_100418CD8, &qword_10036D848);
                                if ((v198 & 1) == 0)
                                {
                                  goto LABEL_70;
                                }

                                goto LABEL_55;
                              }

                              sub_1000059A8(v259, &qword_100418CD8, &qword_10036D848);
                              sub_10009E7F4(v195, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                            }

                            v118 = &qword_10041C4F0;
                            v119 = &qword_100373CE0;
                            goto LABEL_68;
                          }

                          sub_1000059A8(v267, &qword_100418CD0, &qword_10036D840);
                          sub_10009E7F4(v182, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                        }

                        v118 = &qword_10041C4F8;
                        v119 = &qword_100373CE8;
                        goto LABEL_68;
                      }

                      sub_1000059A8(v284, &qword_100418CC8, &qword_10036D838);
                      sub_10009E7F4(v170, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                    }

                    v118 = &qword_10041C500;
                    v119 = &qword_100373CF0;
                    goto LABEL_68;
                  }

                  sub_1000059A8(v285, &qword_100418CC0, &qword_10036D830);
                  sub_10009E7F4(v160, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                }

                v118 = &qword_10041C508;
                v119 = &qword_100373CF8;
                goto LABEL_68;
              }

              sub_1000059A8(v293, &qword_100418CB8, &qword_10036D828);
              sub_10009E7F4(v133, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
            }

            v118 = &qword_10041C510;
            v119 = &qword_100373D00;
            goto LABEL_68;
          }

          sub_1000059A8(v294, &qword_100418CB0, &qword_10036D820);
          sub_10009E7F4(v135, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
        }

        v118 = &qword_10041C518;
        v119 = &qword_100373D08;
        v120 = v128;
LABEL_69:
        sub_1000059A8(v120, v118, v119);
        goto LABEL_70;
      }
    }

    else
    {
      sub_10000A0A4(v94, v103, &qword_100418CA8, &qword_10036D818);
      if (v115(&v94[v112], 1, v113) != 1)
      {
        v234 = v115;
        v297 = v114;
        v121 = v287;
        sub_10009E724(&v94[v112], v287, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        v117 = v110;

        v122 = sub_1000A3FAC(v103, v121, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        sub_10009E7F4(v121, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        sub_1000059A8(v105, &qword_100418CA8, &qword_10036D818);
        sub_10009E7F4(v103, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        sub_1000059A8(v94, &qword_100418CA8, &qword_10036D818);
        if ((v122 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_13;
      }

      sub_1000059A8(v105, &qword_100418CA8, &qword_10036D818);
      sub_10009E7F4(v103, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
    }

    v118 = &qword_10041C520;
    v119 = &qword_100373D10;
    v120 = v94;
    goto LABEL_69;
  }

  result = 0;
  if (v107 != 13 && v106 == v107)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1000773E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3B0, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100077484(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419290, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000774F0()
{
  sub_1000A5BD8(&qword_100419290, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);

  return Message.hash(into:)();
}

uint64_t sub_100077594()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432C40);
  sub_100005DF0(v0, qword_100432C40);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "time_nanoseconds";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "time_unc_nanoseconds";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "uncertainty_adjusted_by_external_tool";
  *(v11 + 8) = 37;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000778C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3A8, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100077968(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004192A8, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000779D4()
{
  sub_1000A5BD8(&qword_1004192A8, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);

  return Message.hash(into:)();
}

uint64_t sub_100077A78()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432C58);
  sub_100005DF0(v0, qword_100432C58);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "frequency_offset_ppb";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "frequency_offset_unc_ppb";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "uncertainty_adjusted_by_external_tool";
  *(v11 + 8) = 37;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100077D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v8 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v6 = *(a4(0) + 28);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 2:
        v10 = *(a4(0) + 24);
LABEL_10:
        v4 = 0;
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 1:
        v9 = *(a4(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t sub_100077E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  v8 = (v4 + *(result + 20));
  if (v8[1])
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v9 = *v8;
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  v10 = (v4 + *(v7 + 24));
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v4 + *(v7 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100077F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3A0, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100078018(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004192C0, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100078084()
{
  sub_1000A5BD8(&qword_1004192C0, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);

  return Message.hash(into:)();
}

uint64_t sub_100078128()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432C70);
  sub_100005DF0(v0, qword_100432C70);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "frequency_offset_ppb";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "frequency_offset_unc_ppb";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cycle_slip_detected";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "uncertainty_adjusted_by_external_tool";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000783B8()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 32);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 20);
LABEL_14:
      v0 = 0;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0) + 24);
      goto LABEL_14;
    }
  }
}

uint64_t sub_1000784B4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + v3[6]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v0 + v3[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v0 + v3[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100078610@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v8) = 2;
  return result;
}

uint64_t sub_100078698(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C398, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100078738(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004192D8, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000787A4()
{
  sub_1000A5BD8(&qword_1004192D8, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);

  return Message.hash(into:)();
}

uint64_t sub_100078848()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432C88);
  sub_100005DF0(v0, qword_100432C88);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "phase_start_time_nanoseconds";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "phase_end_time_nanoseconds";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "accumulated_phase_nanoseconds";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "accumulated_phase_unc_nanoseconds";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "cycle_slips_detected";
  *(v15 + 8) = 20;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100078B24()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 20);
LABEL_16:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else if (result == 2)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 24);
        goto LABEL_16;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 28);
          goto LABEL_3;
        case 4:
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 32);
LABEL_3:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
        case 5:
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0) + 36);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
      }
    }
  }
}

uint64_t sub_100078C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v10 = result;
  v11 = v5 + *(result + 20);
  if (*(v11 + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = v5 + v10[6];
  if ((*(v13 + 8) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  v15 = v5 + v10[7];
  if ((*(v15 + 8) & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v17 = v5 + v10[8];
  if ((*(v17 + 8) & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_10006FBFC(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100078DDC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t sub_100078E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C390, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100078F1C(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004192F0, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100078F88()
{
  sub_1000A5BD8(&qword_1004192F0, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);

  return Message.hash(into:)();
}

uint64_t sub_10007902C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432CA0);
  sub_100005DF0(v0, qword_100432CA0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sv_time";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "frequency_offset";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "cn0_dbhz";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100079288()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 28);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_5;
        case 2:
          v4 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 24);
          type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
          v6 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset;
          v7 = &qword_1004192C0;
          break;
        case 1:
          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 20);
          type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
          v6 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime;
          v7 = &qword_1004192A8;
          break;
        default:
          goto LABEL_5;
      }

      sub_1000A5BD8(v7, v6);
      v0 = v4;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100079408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1000794C8(v5, a1, a2, a3);
  if (!v4)
  {
    sub_1000796E4(v5, a1, a2, a3);
    v10 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 28);
    if ((*(v10 + 4) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000794C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_100418CF0, &qword_10036D860);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CF0, &qword_10036D860);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_1000A5BD8(&qword_1004192A8, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
}

uint64_t sub_1000796E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_100418CF8, &qword_10036D868);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418CF8, &qword_10036D868);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_1000A5BD8(&qword_1004192C0, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
}

uint64_t sub_10007994C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t sub_100079A48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C388, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100079AE8(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419308, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100079B54()
{
  sub_1000A5BD8(&qword_100419308, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);

  return Message.hash(into:)();
}

uint64_t sub_100079BFC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432CB8);
  sub_100005DF0(v0, qword_100432CB8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "derived_full_sv_time_nanoseconds";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "derived_full_sv_time_unc_nanoseconds";
  *(v10 + 1) = 36;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "full_sv_time_source";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100079E58()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 28);
          sub_1000AE9E0();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        case 2:
          v4 = v0;
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 24);
          break;
        case 1:
          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0) + 20);
          break;
        default:
          goto LABEL_5;
      }

      v0 = v4;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100079F58()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v0 + *(v3 + 28)) != 6)
  {
    v8 = *(v0 + *(v3 + 28));
    sub_1000AE9E0();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10007A0B8@<X0>(int *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  result = UnknownStorage.init()();
  v7 = a1[6];
  v8 = a3 + a1[5];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a3 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(a3 + a1[7]) = a2;
  return result;
}

uint64_t sub_10007A144(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C380, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10007A1E4(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419320, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A250()
{
  sub_1000A5BD8(&qword_100419320, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);

  return Message.hash(into:)();
}

uint64_t sub_10007A2F4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432CD0);
  sub_100005DF0(v0, qword_100432CD0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "innovation";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "residual";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "final_uncertainty";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10007A558()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0) + 28);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        break;
      case 2:
        v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t sub_10007A61C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v8 = (v0 + *(v3 + 28));
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10007A750@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t sub_10007A7D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C378, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10007A878(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419338, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A8E4()
{
  sub_1000A5BD8(&qword_100419338, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);

  return Message.hash(into:)();
}

uint64_t sub_10007A988()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432CE8);
  sub_100005DF0(v0, qword_100432CE8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10036D7D0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "jammer_cn0_dbHz";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "snr_at_correlator_output";
  *(v9 + 8) = 24;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "full_sv_time";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "sv_time_usage_nanoseconds";
  *(v13 + 1) = 25;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "frequency_offset_usage_ppb";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "carrier_phase_usage_nanoseconds";
  *(v17 + 1) = 31;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "noncoherent_interval_count";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "coherent_integration_ms";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "sv_time_detection_method";
  *(v22 + 8) = 24;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "frequency_detection_method";
  *(v24 + 1) = 26;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "channel_id";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "code_lock_duration_seconds";
  *(v28 + 1) = 26;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "frequency_lock_duration_seconds";
  *(v30 + 1) = 31;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "metadata";
  *(v32 + 1) = 8;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "metadata_format";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "top_correlation_peaks";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

double sub_10007AF08()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 20) = 1;
  *(v3 + 24) = 0;
  *(v3 + 28) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v3 + v6, 1, 1, v7);
  v8(v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb, 1, 1, v7);
  v8(v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds, 1, 1, v7);
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs;
  *v10 = 0;
  *(v10 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod) = 7;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod) = 7;
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
  *v13 = 0;
  *(v13 + 4) = 1;
  result = 0.0;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata) = xmmword_10036D770;
  v15 = v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  *v15 = 0;
  *(v15 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks) = &_swiftEmptyArrayStorage;
  qword_100437068 = v3;
  return result;
}

uint64_t sub_10007B100(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v64 = &v60 - v5;
  v6 = sub_100024A2C(&qword_100418D00, &qword_10036D870);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v63 = &v60 - v8;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  v9 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  v61 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  v62 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  v65 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb, 1, 1, v12);
  v66 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds, 1, 1, v12);
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount;
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs;
  *v15 = 0;
  *(v15 + 4) = 1;
  v67 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod) = 7;
  v16 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod) = 7;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID;
  v68 = v16;
  v69 = v17;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
  v70 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
  v71 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
  *v19 = 0;
  *(v19 + 4) = 1;
  v72 = (v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata) = xmmword_10036D770;
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  v73 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  *v20 = 0;
  *(v20 + 4) = 1;
  v74 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks) = &_swiftEmptyArrayStorage;
  swift_beginAccess();
  v21 = *(a1 + 16);
  v22 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v21;
  *(v1 + 20) = v22;
  swift_beginAccess();
  v23 = *(a1 + 24);
  LOBYTE(v21) = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v23;
  *(v1 + 28) = v21;
  v24 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  v25 = v63;
  sub_10000A0A4(a1 + v24, v63, &qword_100418D00, &qword_10036D870);
  v26 = v61;
  swift_beginAccess();
  sub_10000AD64(v25, v1 + v26, &qword_100418D00, &qword_10036D870);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  v28 = v64;
  sub_10000A0A4(a1 + v27, v64, &qword_100418D08, &qword_10036D878);
  v29 = v62;
  swift_beginAccess();
  sub_10000AD64(v28, v1 + v29, &qword_100418D08, &qword_10036D878);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  sub_10000A0A4(a1 + v30, v28, &qword_100418D08, &qword_10036D878);
  v31 = v65;
  swift_beginAccess();
  sub_10000AD64(v28, v1 + v31, &qword_100418D08, &qword_10036D878);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  sub_10000A0A4(a1 + v32, v28, &qword_100418D08, &qword_10036D878);
  v33 = v66;
  swift_beginAccess();
  sub_10000AD64(v28, v1 + v33, &qword_100418D08, &qword_10036D878);
  swift_endAccess();
  v34 = (a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount);
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 4);
  swift_beginAccess();
  *v14 = v35;
  *(v14 + 4) = v34;
  v36 = a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs;
  swift_beginAccess();
  LODWORD(v34) = *v36;
  LOBYTE(v36) = *(v36 + 4);
  swift_beginAccess();
  *v15 = v34;
  *(v15 + 4) = v36;
  v37 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod;
  swift_beginAccess();
  LOBYTE(v37) = *(a1 + v37);
  v38 = v67;
  swift_beginAccess();
  *(v1 + v38) = v37;
  v39 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod;
  swift_beginAccess();
  LOBYTE(v39) = *(a1 + v39);
  v40 = v68;
  swift_beginAccess();
  *(v1 + v40) = v39;
  v41 = a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID;
  swift_beginAccess();
  LODWORD(v40) = *v41;
  LOBYTE(v41) = *(v41 + 4);
  v42 = v69;
  swift_beginAccess();
  *v42 = v40;
  *(v42 + 4) = v41;
  v43 = a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
  swift_beginAccess();
  LODWORD(v40) = *v43;
  LOBYTE(v43) = *(v43 + 4);
  v44 = v70;
  swift_beginAccess();
  *v44 = v40;
  *(v44 + 4) = v43;
  v45 = a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
  swift_beginAccess();
  LODWORD(v40) = *v45;
  LOBYTE(v45) = *(v45 + 4);
  v46 = v71;
  swift_beginAccess();
  *v46 = v40;
  *(v46 + 4) = v45;
  v47 = (a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  swift_beginAccess();
  v49 = *v47;
  v48 = v47[1];
  v50 = v72;
  swift_beginAccess();
  v51 = *v50;
  v52 = v50[1];
  *v50 = v49;
  v50[1] = v48;
  sub_10000BE4C(v49, v48);
  sub_10000CA64(v51, v52);
  v53 = a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  swift_beginAccess();
  LODWORD(v49) = *v53;
  LOBYTE(v53) = *(v53 + 4);
  v54 = v73;
  swift_beginAccess();
  *v54 = v49;
  *(v54 + 4) = v53;
  v55 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
  swift_beginAccess();
  v56 = *(a1 + v55);

  v57 = v74;
  swift_beginAccess();
  v58 = *(v1 + v57);
  *(v1 + v57) = v56;

  return v1;
}

uint64_t sub_10007B8CC()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime, &qword_100418D00, &qword_10036D870);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds, &qword_100418D08, &qword_10036D878);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb, &qword_100418D08, &qword_10036D878);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds, &qword_100418D08, &qword_10036D878);
  sub_10000CA64(*(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata), *(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata + 8));
  v1 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t sub_10007B9CC()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10007B100(v6);
    *(v2 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while ((v12 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
        case 12:
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_16;
        case 3:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime;
          v14 = &qword_100419320;
          goto LABEL_11;
        case 4:
        case 5:
        case 6:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage;
          v14 = &qword_100419338;
LABEL_11:
          sub_1000A5BD8(v14, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_16;
        case 7:
        case 8:
        case 15:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_16;
        case 9:
        case 10:
          swift_beginAccess();
          sub_1000AE98C();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_16;
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_16;
        case 14:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          goto LABEL_16;
        case 16:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
          sub_1000A5BD8(&qword_100419308, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
LABEL_16:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10007BDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 20))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *(v9 + 16);
    result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 28) & 1) == 0)
  {
    v12 = *(v9 + 24);
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  sub_10007C188(v9, a1, a2, a3);
  sub_10007C3B0(v9, a1, a2, a3);
  sub_10007C5D8(v9, a1, a2, a3);
  sub_10007C800(v9, a1, a2, a3);
  sub_10007CB8C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount, 7, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_10007CB8C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs, 8, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_10007CA28(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod);
  sub_10007CA28(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod);
  sub_10007CB8C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID, 11, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_100089FE0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds);
  sub_100089FE0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds);
  sub_10007CAD8(v9);
  sub_10007CB8C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat, 15, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  v13 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
  swift_beginAccess();
  if (*(*(v9 + v13) + 16))
  {
    type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
    sub_1000A5BD8(&qword_100419308, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10007C188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D00, &qword_10036D870);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D00, &qword_10036D870);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D00, &qword_10036D870);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  sub_1000A5BD8(&qword_100419320, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
}

uint64_t sub_10007C3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D08, &qword_10036D878);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D08, &qword_10036D878);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  sub_1000A5BD8(&qword_100419338, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
}

uint64_t sub_10007C5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D08, &qword_10036D878);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D08, &qword_10036D878);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  sub_1000A5BD8(&qword_100419338, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
}

uint64_t sub_10007C800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418D08, &qword_10036D878);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418D08, &qword_10036D878);
  }

  sub_10009E724(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  sub_1000A5BD8(&qword_100419338, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
}

uint64_t sub_10007CA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v6) != 7)
  {
    v8 = *(a1 + v6);
    sub_1000AE98C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10007CAD8(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  result = swift_beginAccess();
  v3 = v1[1];
  if (v3 >> 60 != 15)
  {
    v4 = *v1;
    sub_1000150EC(v4, v3);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return sub_10000CA64(v4, v3);
  }

  return result;
}

uint64_t sub_10007CB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    return a7(*v11, a6, a3, a4);
  }

  return result;
}

uint64_t sub_10007CC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v159 = *(v4 - 8);
  v160 = v4;
  v5 = *(v159 + 64);
  __chkstk_darwin(v4);
  v152 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_100024A2C(&qword_10041C528, &qword_100373D18);
  v7 = *(*(v161 - 8) + 64);
  v8 = __chkstk_darwin(v161);
  v10 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v151 = &v148 - v12;
  __chkstk_darwin(v11);
  v158 = &v148 - v13;
  v14 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v149 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v154 = &v148 - v19;
  v20 = __chkstk_darwin(v18);
  v150 = &v148 - v21;
  v22 = __chkstk_darwin(v20);
  v155 = &v148 - v23;
  v24 = __chkstk_darwin(v22);
  v153 = &v148 - v25;
  __chkstk_darwin(v24);
  v157 = &v148 - v26;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v162 = *(v27 - 8);
  v28 = *(v162 + 8);
  __chkstk_darwin(v27);
  v156 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100024A2C(&qword_10041C530, &qword_100373D20);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v148 - v32;
  v34 = sub_100024A2C(&qword_100418D00, &qword_10036D870);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v38 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v148 - v39;
  swift_beginAccess();
  v41 = *(a1 + 16);
  v164 = a1;
  LOBYTE(a1) = *(a1 + 20);
  swift_beginAccess();
  v42 = *(a2 + 20);
  if (a1)
  {
    if (!*(a2 + 20))
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v41 != *(a2 + 16))
    {
      v42 = 1;
    }

    if (v42)
    {
      goto LABEL_35;
    }
  }

  v43 = v164;
  swift_beginAccess();
  v44 = *(v43 + 24);
  LOBYTE(v43) = *(v43 + 28);
  swift_beginAccess();
  v45 = *(a2 + 28);
  if (v43)
  {
    if (!*(a2 + 28))
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v44 != *(a2 + 24))
    {
      v45 = 1;
    }

    if (v45)
    {
      goto LABEL_35;
    }
  }

  v148 = v10;
  v163 = a2;
  v46 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  v47 = v164;
  swift_beginAccess();
  sub_10000A0A4(v47 + v46, v40, &qword_100418D00, &qword_10036D870);
  v48 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  v49 = *(v30 + 48);
  sub_10000A0A4(v40, v33, &qword_100418D00, &qword_10036D870);
  sub_10000A0A4(v163 + v48, &v33[v49], &qword_100418D00, &qword_10036D870);
  v50 = *(v162 + 6);
  if (v50(v33, 1, v27) == 1)
  {

    sub_1000059A8(v40, &qword_100418D00, &qword_10036D870);
    if (v50(&v33[v49], 1, v27) == 1)
    {
      sub_1000059A8(v33, &qword_100418D00, &qword_10036D870);
      goto LABEL_20;
    }

LABEL_18:
    v51 = &qword_10041C530;
    v52 = &qword_100373D20;
    v53 = v33;
LABEL_33:
    sub_1000059A8(v53, v51, v52);
    goto LABEL_34;
  }

  sub_10000A0A4(v33, v38, &qword_100418D00, &qword_10036D870);
  if (v50(&v33[v49], 1, v27) == 1)
  {

    sub_1000059A8(v40, &qword_100418D00, &qword_10036D870);
    sub_10009E7F4(v38, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
    goto LABEL_18;
  }

  v54 = v156;
  sub_10009E724(&v33[v49], v156, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  v47 = v164;

  v55 = sub_1000A3E88(v38, v54);
  sub_10009E7F4(v54, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  sub_1000059A8(v40, &qword_100418D00, &qword_10036D870);
  sub_10009E7F4(v38, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  sub_1000059A8(v33, &qword_100418D00, &qword_10036D870);
  if ((v55 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_20:
  v56 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  v57 = v157;
  sub_10000A0A4(v47 + v56, v157, &qword_100418D08, &qword_10036D878);
  v58 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  v59 = *(v161 + 48);
  v60 = v158;
  sub_10000A0A4(v57, v158, &qword_100418D08, &qword_10036D878);
  sub_10000A0A4(v163 + v58, v60 + v59, &qword_100418D08, &qword_10036D878);
  v61 = v160;
  v62 = *(v159 + 48);
  if (v62(v60, 1, v160) == 1)
  {
    sub_1000059A8(v57, &qword_100418D08, &qword_10036D878);
    if (v62(v60 + v59, 1, v61) == 1)
    {
      v162 = v62;
      sub_1000059A8(v60, &qword_100418D08, &qword_10036D878);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v63 = v153;
  sub_10000A0A4(v60, v153, &qword_100418D08, &qword_10036D878);
  if (v62(v60 + v59, 1, v61) == 1)
  {
    sub_1000059A8(v57, &qword_100418D08, &qword_10036D878);
    sub_10009E7F4(v63, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
LABEL_25:
    v51 = &qword_10041C528;
    v52 = &qword_100373D18;
    v53 = v60;
    goto LABEL_33;
  }

  v162 = v62;
  v64 = v60 + v59;
  v65 = v152;
  sub_10009E724(v64, v152, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  LODWORD(v159) = sub_1000A0FF0(v63, v65);
  sub_10009E7F4(v65, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  sub_1000059A8(v57, &qword_100418D08, &qword_10036D878);
  sub_10009E7F4(v63, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  sub_1000059A8(v60, &qword_100418D08, &qword_10036D878);
  if ((v159 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  v66 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  v67 = v155;
  sub_10000A0A4(v47 + v66, v155, &qword_100418D08, &qword_10036D878);
  v68 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  v69 = *(v161 + 48);
  v70 = v151;
  sub_10000A0A4(v67, v151, &qword_100418D08, &qword_10036D878);
  v71 = v70;
  sub_10000A0A4(v163 + v68, v70 + v69, &qword_100418D08, &qword_10036D878);
  v72 = v162;
  if (v162(v70, 1, v61) == 1)
  {
    sub_1000059A8(v67, &qword_100418D08, &qword_10036D878);
    v73 = v72(v70 + v69, 1, v61);
    v74 = v154;
    if (v73 == 1)
    {
      v162 = v72;
      sub_1000059A8(v71, &qword_100418D08, &qword_10036D878);
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  v75 = v70;
  v76 = v72;
  v77 = v150;
  sub_10000A0A4(v75, v150, &qword_100418D08, &qword_10036D878);
  v162 = v76;
  v78 = v76(v71 + v69, 1, v61);
  v74 = v154;
  if (v78 == 1)
  {
    sub_1000059A8(v155, &qword_100418D08, &qword_10036D878);
    sub_10009E7F4(v77, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
LABEL_32:
    v51 = &qword_10041C528;
    v52 = &qword_100373D18;
    v53 = v71;
    goto LABEL_33;
  }

  v81 = v71 + v69;
  v82 = v152;
  sub_10009E724(v81, v152, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  v83 = sub_1000A0FF0(v77, v82);
  sub_10009E7F4(v82, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  sub_1000059A8(v155, &qword_100418D08, &qword_10036D878);
  sub_10009E7F4(v77, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  sub_1000059A8(v71, &qword_100418D08, &qword_10036D878);
  if ((v83 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  v84 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  sub_10000A0A4(v47 + v84, v74, &qword_100418D08, &qword_10036D878);
  v85 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  v86 = v74;
  v87 = v163;
  swift_beginAccess();
  v88 = *(v161 + 48);
  v89 = v86;
  v90 = v148;
  sub_10000A0A4(v89, v148, &qword_100418D08, &qword_10036D878);
  sub_10000A0A4(v87 + v85, v90 + v88, &qword_100418D08, &qword_10036D878);
  v91 = v162;
  if (v162(v90, 1, v61) != 1)
  {
    v92 = v149;
    sub_10000A0A4(v90, v149, &qword_100418D08, &qword_10036D878);
    if (v91(v90 + v88, 1, v61) != 1)
    {
      v93 = v152;
      sub_10009E724(v90 + v88, v152, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
      v94 = sub_1000A0FF0(v92, v93);
      sub_10009E7F4(v93, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
      sub_1000059A8(v154, &qword_100418D08, &qword_10036D878);
      sub_10009E7F4(v92, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
      sub_1000059A8(v90, &qword_100418D08, &qword_10036D878);
      if ((v94 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_46;
    }

    sub_1000059A8(v154, &qword_100418D08, &qword_10036D878);
    sub_10009E7F4(v92, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
LABEL_43:
    sub_1000059A8(v90, &qword_10041C528, &qword_100373D18);
    goto LABEL_34;
  }

  sub_1000059A8(v154, &qword_100418D08, &qword_10036D878);
  if (v91(v90 + v88, 1, v61) != 1)
  {
    goto LABEL_43;
  }

  sub_1000059A8(v90, &qword_100418D08, &qword_10036D878);
LABEL_46:
  v95 = (v47 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount);
  swift_beginAccess();
  v96 = *v95;
  v97 = *(v95 + 4);
  v98 = v163 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount;
  swift_beginAccess();
  v99 = *(v98 + 4);
  if (v97)
  {
    if ((*(v98 + 4) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((*(v98 + 4) & 1) != 0 || v96 != *v98)
  {
    goto LABEL_34;
  }

  v100 = (v47 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs);
  swift_beginAccess();
  v101 = *v100;
  v102 = *(v100 + 4);
  v103 = v163 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs;
  swift_beginAccess();
  v104 = *(v103 + 4);
  if (v102)
  {
    v105 = v163;
    if ((*(v103 + 4) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (*(v103 + 4))
    {
      goto LABEL_34;
    }

    v105 = v163;
    if (v101 != *v103)
    {
      goto LABEL_34;
    }
  }

  v106 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod;
  swift_beginAccess();
  v107 = *(v47 + v106);
  v108 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod;
  swift_beginAccess();
  v109 = *(v105 + v108);
  if (v107 == 7)
  {
    if (v109 != 7)
    {
      goto LABEL_34;
    }
  }

  else if (v109 == 7 || v107 != v109)
  {
    goto LABEL_34;
  }

  v110 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod;
  swift_beginAccess();
  v111 = *(v47 + v110);
  v112 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod;
  swift_beginAccess();
  v113 = *(v105 + v112);
  if (v111 != 7)
  {
    if (v113 == 7 || v111 != v113)
    {
      goto LABEL_34;
    }

LABEL_66:
    v114 = (v47 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID);
    swift_beginAccess();
    v115 = *v114;
    v116 = v105;
    v117 = *(v114 + 4);
    v118 = v116 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID;
    swift_beginAccess();
    v119 = *(v118 + 4);
    if (v117)
    {
      if ((*(v118 + 4) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if ((*(v118 + 4) & 1) != 0 || v115 != *v118)
    {
      goto LABEL_34;
    }

    v120 = v164 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
    swift_beginAccess();
    v121 = *v120;
    v122 = *(v120 + 4);
    v123 = v163 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
    swift_beginAccess();
    v124 = *(v123 + 4);
    if (v122)
    {
      if ((*(v123 + 4) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if ((*(v123 + 4) & 1) != 0 || v121 != *v123)
    {
      goto LABEL_34;
    }

    v125 = v164 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
    swift_beginAccess();
    v126 = *v125;
    v127 = *(v125 + 4);
    v128 = v163 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
    swift_beginAccess();
    v129 = *(v128 + 4);
    if (v127)
    {
      if ((*(v128 + 4) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if ((*(v128 + 4) & 1) != 0 || v126 != *v128)
    {
      goto LABEL_34;
    }

    v130 = (v164 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
    swift_beginAccess();
    v132 = *v130;
    v131 = v130[1];
    v133 = (v163 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
    swift_beginAccess();
    v134 = *v133;
    v135 = v133[1];
    sub_10000BE4C(v132, v131);
    sub_10000BE4C(v134, v135);
    if (v131 >> 60 == 15)
    {
      if (v135 >> 60 == 15)
      {
        sub_10000CA64(v132, v131);
        goto LABEL_89;
      }
    }

    else
    {
      sub_10000BE4C(v132, v131);
      sub_10000BE4C(v134, v135);
      if (v135 >> 60 != 15)
      {
        v136 = sub_10009F948(v132, v131, v134, v135);
        sub_10000CA64(v134, v135);
        sub_10000CA64(v132, v131);
        sub_10000CA64(v134, v135);
        sub_10000CA64(v132, v131);
        if ((v136 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_89:
        v137 = (v164 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat);
        swift_beginAccess();
        v138 = *v137;
        v139 = *(v137 + 4);
        v140 = v163 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
        swift_beginAccess();
        v141 = *(v140 + 4);
        if (v139)
        {
          if ((*(v140 + 4) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else if ((*(v140 + 4) & 1) != 0 || v138 != *v140)
        {
          goto LABEL_34;
        }

        v142 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
        v143 = v164;
        swift_beginAccess();
        v144 = *(v143 + v142);
        v145 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
        v146 = v163;
        swift_beginAccess();
        v147 = *(v146 + v145);

        v79 = sub_10009C63C(v144, v147);

        return v79 & 1;
      }

      sub_10000CA64(v134, v135);
      sub_10000CA64(v132, v131);
    }

    sub_10000CA64(v132, v131);
    sub_10000CA64(v134, v135);
    goto LABEL_35;
  }

  if (v113 == 7)
  {
    goto LABEL_66;
  }

LABEL_34:

LABEL_35:
  v79 = 0;
  return v79 & 1;
}