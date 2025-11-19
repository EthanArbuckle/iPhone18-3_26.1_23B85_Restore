void (*sub_100112428(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 132) & 1;
  return sub_1001124CC;
}

void sub_1001124CC(uint64_t *a1)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    sub_100176B94(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 132) = v4;

  free(v1);
}

BOOL sub_100112594()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 132) != 2;
}

uint64_t sub_1001125E8()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    sub_100176B94(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  result = swift_beginAccess();
  *(v5 + 132) = 2;
  return result;
}

uint64_t sub_10011267C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  if (*(v1 + 133) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 133);
  }
}

uint64_t sub_1001126D0(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    sub_100176B94(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 133) = a1;
  return result;
}

void (*sub_10011276C(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 133);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_100112814;
}

void sub_100112814(uint64_t *a1)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    sub_100176B94(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 133) = v2;

  free(v1);
}

BOOL sub_1001128E0()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return *(v1 + 133) != 4;
}

uint64_t sub_100112934()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    sub_100176B94(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  result = swift_beginAccess();
  *(v5 + 133) = 4;
  return result;
}

float sub_1001129C8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  result = *(v1 + 136);
  if (*(v1 + 140))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100112A24(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v8 = swift_allocObject();
    sub_100176B94(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 136) = a1;
  *(v7 + 140) = 0;
  return result;
}

void (*sub_100112AC4(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 136);
  if (*(v6 + 140))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return sub_100112B74;
}

void sub_100112B74(uint64_t *a1)
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
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v10 = swift_allocObject();
    sub_100176B94(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 136) = v2;
  *(v7 + 140) = 0;

  free(v1);
}

BOOL sub_100112C44()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20));
  swift_beginAccess();
  return (*(v1 + 140) & 1) == 0;
}

uint64_t sub_100112C98()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
    v6 = swift_allocObject();
    sub_100176B94(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  result = swift_beginAccess();
  *(v5 + 136) = 0;
  *(v5 + 140) = 1;
  return result;
}

uint64_t sub_100112D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100197C38();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_100112DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100197BE4();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_100112E5C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432FF8);
  sub_100005DF0(v0, qword_100432FF8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CLRF_UNKNOWN";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CLRF_WGS84";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "CLRF_CHINA_SHIFTED";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001130D8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433010);
  sub_100005DF0(v0, qword_100433010);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10036D7E0;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 0;
  *v5 = "LT_UNKNOWN";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "LT_GPS";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "LT_NMEA";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "LT_ACCESSORY";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "LT_WIFI";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "LT_SKYHOOK_OBSOLETE";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "LT_CELL";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "LT_LAC";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "LT_MCC";
  *(v22 + 8) = 6;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "LT_GPS_COARSE";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "LT_PIPELINE";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "LT_WIFI2";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "LT_COMPENSATED";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "LT_LOIOVERRIDE";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001135E8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433028);
  sub_100005DF0(v0, qword_100433028);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CLIENT_SATELLITE_CONSTELLATION_UNKNOWN";
  *(v6 + 8) = 38;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CLIENT_SATELLITE_CONSTELLATION_GPS";
  *(v10 + 8) = 34;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CLIENT_SATELLITE_CONSTELLATION_GLONASS";
  *(v12 + 1) = 38;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CLIENT_SATELLITE_CONSTELLATION_BEIDOU";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CLIENT_SATELLITE_CONSTELLATION_GALILEO";
  *(v16 + 1) = 38;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "CLIENT_SATELLITE_CONSTELLATION_QZSS";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "CLIENT_SATELLITE_CONSTELLATION_NAVIC";
  *(v20 + 1) = 36;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100113958()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433040);
  sub_100005DF0(v0, qword_100433040);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "BATCHED_LOCATION_FIX_TYPE_UNKNOWN";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BATCHED_LOCATION_FIX_TYPE_SCALED_INTERPOLATED";
  *(v10 + 8) = 45;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BATCHED_LOCATION_FIX_TYPE_MAP_MATCHED_INTERPOLATED";
  *(v12 + 1) = 50;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BATCHED_LOCATION_FIX_TYPE_MAP_MATCHED_GNSS_FIX";
  *(v14 + 1) = 46;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "BATCHED_LOCATION_FIX_TYPE_GNSS_FIX";
  *(v15 + 8) = 34;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100113C54()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433058);
  sub_100005DF0(v0, qword_100433058);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "GNSS_MODE_OF_OPERATION_UNKNOWN";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GNSS_MODE_OF_OPERATION_1HZ";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "GNSS_MODE_OF_OPERATION_RHYTHMIC";
  *(v11 + 8) = 31;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100113ED0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433070);
  sub_100005DF0(v0, qword_100433070);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RHYTHMIC_GNSS_BEST_RHYTHMIC_UNKNOWN";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RHYTHMIC_GNSS_BEST_RHYTHMIC_INVALID";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RHYTHMIC_GNSS_BEST_RHYTHMIC_NON_WAKING";
  *(v12 + 1) = 38;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RHYTHMIC_GNSS_BEST_RHYTHMIC_WAKING";
  *(v14 + 1) = 34;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "RHYTHMIC_GNSS_PROACTIVE_NON_WAKING";
  *(v15 + 8) = 34;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001141C8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433088);
  sub_100005DF0(v0, qword_100433088);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "BATCH_MODE_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BATCH_MODE_DISABLE_ON_WAKE";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "BATCH_MODE_ALLOW_DARK_WAKE";
  *(v11 + 8) = 26;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100114440()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004330A0);
  sub_100005DF0(v0, qword_1004330A0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "OPERATING_MODE_UNKNOWN";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OPERATING_MODE_NORMAL";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "OPERATING_MODE_TIME";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "OPERATING_MODE_SKIP_DEBOUNCE";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001146F0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004330B8);
  sub_100005DF0(v0, qword_1004330B8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PIPELINE_OPERATING_MODE_UNKNOWN";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PIPELINE_OPERATING_MODE_INDOOR";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "PIPELINE_OPERATING_MODE_REGIONAL";
  *(v11 + 8) = 32;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011496C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004330D0);
  sub_100005DF0(v0, qword_1004330D0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_1003743C0;
  v4 = v147 + v3;
  v5 = v147 + v3 + v1[14];
  *(v147 + v3) = 0;
  *v5 = "DM_UNKNOWN";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v147 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "DM_FROZEN";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v147 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "DM_STATIC";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v147 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "DM_MOVING";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v147 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "DM_WALKING";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v147 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "DM_DRIVING";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v147 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "DM_CYCLING";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v147 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "DM_SEMI_STATIONARY";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = v147 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "DM_RUNNING";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v147 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "DM_MOVING_COARSE";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v147 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "DM_IN_VEHICLE_FROZEN";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v8();
  v27 = (v147 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "DM_IN_VEHICLE_STATIC";
  *(v28 + 1) = 20;
  v28[16] = 2;
  v8();
  v29 = (v147 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 41;
  *v30 = "DM_WALKING_SLOW";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  v31 = (v147 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 52;
  *v32 = "DM_VEHICULAR_IN_HAND";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v8();
  v33 = (v147 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 56;
  *v34 = "DM_DRIVING_OTHER";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v8();
  v35 = (v147 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 61;
  *v36 = "DM_MACHINE_WORKOUT";
  *(v36 + 1) = 18;
  v36[16] = 2;
  v8();
  v37 = v147 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 62;
  *v37 = "DM_WORKOUT";
  *(v37 + 8) = 10;
  *(v37 + 16) = 2;
  v8();
  v38 = (v147 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 63;
  *v39 = "DM_MULTI_SPORT_TRANSITION";
  *(v39 + 1) = 25;
  v39[16] = 2;
  v8();
  v40 = (v147 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 64;
  *v41 = "DM_INDOOR_SOCCER";
  *(v41 + 1) = 16;
  v41[16] = 2;
  v8();
  v42 = (v147 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 65;
  *v43 = "DM_AUSTRALIAN_FOOTBALL";
  *(v43 + 1) = 22;
  v43[16] = 2;
  v8();
  v44 = (v147 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 66;
  *v45 = "DM_PICKLEBALL";
  *(v45 + 1) = 13;
  v45[16] = 2;
  v8();
  v46 = (v147 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 100;
  *v47 = "DM_CYCLING_LEG";
  *(v47 + 1) = 14;
  v47[16] = 2;
  v8();
  v48 = (v147 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 2010;
  *v49 = "DM_STATIONARY_CYCLING";
  *(v49 + 1) = 21;
  v49[16] = 2;
  v8();
  v50 = (v147 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 2020;
  *v51 = "DM_CALISTHENICS";
  *(v51 + 1) = 15;
  v51[16] = 2;
  v8();
  v52 = (v147 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 2022;
  *v53 = "DM_FUNCTIONAL_STRENGTH";
  *(v53 + 1) = 22;
  v53[16] = 2;
  v8();
  v54 = (v147 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 2024;
  *v55 = "DM_CORE_TRAINING";
  *(v55 + 1) = 16;
  v55[16] = 2;
  v8();
  v56 = (v147 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 2048;
  *v57 = "DM_ELLIPTICAL";
  *(v57 + 1) = 13;
  v57[16] = 2;
  v8();
  v58 = (v147 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 2061;
  *v59 = "DM_CROSS_TRAINING";
  *(v59 + 1) = 17;
  v59[16] = 2;
  v8();
  v60 = (v147 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 2065;
  *v61 = "DM_STAIR_CLIMBING";
  *(v61 + 1) = 17;
  v61[16] = 2;
  v8();
  v62 = (v147 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 2068;
  *v63 = "DM_JUMP_ROPE";
  *(v63 + 1) = 12;
  v63[16] = 2;
  v8();
  v64 = (v147 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 2071;
  *v65 = "DM_ROWING";
  *(v65 + 1) = 9;
  v65[16] = 2;
  v8();
  v66 = (v147 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 2101;
  *v67 = "DM_COOL_DOWN";
  *(v67 + 1) = 12;
  v67[16] = 2;
  v8();
  v68 = v147 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 2105;
  *v68 = "DM_PILATES";
  *(v68 + 8) = 10;
  *(v68 + 16) = 2;
  v8();
  v69 = (v147 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 2150;
  *v70 = "DM_YOGA";
  *(v70 + 1) = 7;
  v70[16] = 2;
  v8();
  v71 = (v147 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 3015;
  *v72 = "DM_DANCING";
  *(v72 + 1) = 10;
  v72[16] = 2;
  v8();
  v73 = (v147 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 3016;
  *v74 = "DM_STEP_TRAINING";
  *(v74 + 1) = 16;
  v74[16] = 2;
  v8();
  v75 = (v147 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 11805;
  *v76 = "DM_PUSHING_WHEELCHAIR";
  *(v76 + 1) = 21;
  v76[16] = 2;
  v8();
  v77 = (v147 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 12150;
  *v78 = "DM_INDOOR_RUNNING";
  *(v78 + 1) = 17;
  v78[16] = 2;
  v8();
  v79 = (v147 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 15030;
  *v80 = "DM_BADMINTON";
  *(v80 + 1) = 12;
  v80[16] = 2;
  v8();
  v81 = (v147 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 15055;
  *v82 = "DM_BASKETBALL";
  *(v82 + 1) = 13;
  v82[16] = 2;
  v8();
  v83 = (v147 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 15100;
  *v84 = "DM_BOXING";
  *(v84 + 1) = 9;
  v84[16] = 2;
  v8();
  v85 = (v147 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 15110;
  *v86 = "DM_KICKBOXING";
  *(v86 + 1) = 13;
  v86[16] = 2;
  v8();
  v87 = (v147 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 15150;
  *v88 = "DM_CRICKET";
  *(v88 + 1) = 10;
  v88[16] = 2;
  v8();
  v89 = (v147 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 15230;
  *v90 = "DM_AMERICAN_FOOTBALL";
  *(v90 + 1) = 20;
  v90[16] = 2;
  v8();
  v91 = (v147 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 15240;
  *v92 = "DM_DISC_SPORTS";
  *(v92 + 1) = 14;
  v92[16] = 2;
  v8();
  v93 = (v147 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 15255;
  *v94 = "DM_GOLFING";
  *(v94 + 1) = 10;
  v94[16] = 2;
  v8();
  v95 = (v147 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 15330;
  *v96 = "DM_HANDBALL";
  *(v96 + 1) = 11;
  v96[16] = 2;
  v8();
  v97 = (v147 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 15350;
  *v98 = "DM_OUTDOOR_HOCKEY";
  *(v98 + 1) = 17;
  v98[16] = 2;
  v8();
  v99 = (v147 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 15360;
  *v100 = "DM_INDOOR_HOCKEY";
  *(v100 + 1) = 16;
  v100[16] = 2;
  v8();
  v101 = (v147 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 15460;
  *v102 = "DM_LACROSSE";
  *(v102 + 1) = 11;
  v102[16] = 2;
  v8();
  v103 = (v147 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 15562;
  *v104 = "DM_RUGBY";
  *(v104 + 1) = 8;
  v104[16] = 2;
  v8();
  v105 = (v147 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 15592;
  *v106 = "DM_OUTDOOR_SKATING_SPORTS";
  *(v106 + 1) = 25;
  v106[16] = 2;
  v8();
  v107 = (v147 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 15610;
  *v108 = "DM_OUTDOOR_SOCCER";
  *(v108 + 1) = 17;
  v108[16] = 2;
  v8();
  v109 = (v147 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 15620;
  *v110 = "DM_SOFTBALL";
  *(v110 + 1) = 11;
  v110[16] = 2;
  v8();
  v111 = (v147 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 15652;
  *v112 = "DM_SQUASH";
  *(v112 + 1) = 9;
  v112[16] = 2;
  v8();
  v113 = (v147 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 15660;
  *v114 = "DM_TABLE_TENNIS";
  *(v114 + 1) = 15;
  v114[16] = 2;
  v8();
  v115 = (v147 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 15670;
  *v116 = "DM_TAI_CHI";
  *(v116 + 1) = 10;
  v116[16] = 2;
  v8();
  v117 = (v147 + v3 + 57 * v2);
  v118 = v117 + v1[14];
  *v117 = 15675;
  *v118 = "DM_TENNIS";
  *(v118 + 1) = 9;
  v118[16] = 2;
  v8();
  v119 = (v147 + v3 + 58 * v2);
  v120 = v119 + v1[14];
  *v119 = 15710;
  *v120 = "DM_VOLLEYBALL";
  *(v120 + 1) = 13;
  v120[16] = 2;
  v8();
  v121 = (v147 + v3 + 59 * v2);
  v122 = v121 + v1[14];
  *v121 = 15733;
  *v122 = "DM_TRACK_AND_FIELD";
  *(v122 + 1) = 18;
  v122[16] = 2;
  v8();
  v123 = (v147 + v3 + 60 * v2);
  v124 = v123 + v1[14];
  *v123 = 17150;
  *v124 = "DM_INDOOR_WALKING";
  *(v124 + 1) = 17;
  v124[16] = 2;
  v8();
  v125 = (v147 + v3 + 61 * v2);
  v126 = v125 + v1[14];
  *v125 = 18070;
  *v126 = "DM_OUTDOOR_ROWING";
  *(v126 + 1) = 17;
  v126[16] = 2;
  v8();
  v127 = (v147 + v3 + 62 * v2);
  v128 = v127 + v1[14];
  *v127 = 18200;
  *v128 = "DM_SCUBA_DIVING";
  *(v128 + 1) = 15;
  v128[16] = 2;
  v8();
  v129 = (v147 + v3 + 63 * v2);
  v130 = v129 + v1[14];
  *v129 = 18225;
  *v130 = "DM_PADDLE_SPORTS";
  *(v130 + 1) = 16;
  v130[16] = 2;
  v8();
  v131 = v147 + v3 + (v2 << 6) + v1[14];
  *(v4 + (v2 << 6)) = 18240;
  *v131 = "DM_SWIMMING";
  *(v131 + 8) = 11;
  *(v131 + 16) = 2;
  v8();
  v132 = (v147 + v3 + 65 * v2);
  v133 = v132 + v1[14];
  *v132 = 19030;
  *v133 = "DM_INDOOR_SKATING_SPORTS";
  *(v133 + 1) = 24;
  v133[16] = 2;
  v8();
  v134 = (v147 + v3 + 66 * v2);
  v135 = v134 + v1[14];
  *v134 = 19090;
  *v135 = "DM_CROSS_COUNTRY_SKIING";
  *(v135 + 1) = 23;
  v135[16] = 2;
  v8();
  v136 = (v147 + v3 + 67 * v2);
  v137 = v136 + v1[14];
  *v136 = 19150;
  *v137 = "DM_DOWNHILL_SKIING";
  *(v137 + 1) = 18;
  v137[16] = 2;
  v8();
  v138 = (v147 + v3 + 68 * v2);
  v139 = v138 + v1[14];
  *v138 = 19160;
  *v139 = "DM_SNOWBOARDING";
  *(v139 + 1) = 15;
  v139[16] = 2;
  v8();
  v140 = (v147 + v3 + 69 * v2);
  v141 = v140 + v1[14];
  *v140 = 90603;
  *v141 = "DM_OUTDOOR_WHEELCHAIR";
  *(v141 + 1) = 21;
  v141[16] = 2;
  v8();
  v142 = (v147 + v3 + 70 * v2);
  v143 = v142 + v1[14];
  *v142 = 515621;
  *v143 = "DM_BASEBALL";
  *(v143 + 1) = 11;
  v143[16] = 2;
  v8();
  v144 = (v147 + v3 + 71 * v2);
  v145 = v144 + v1[14];
  *v144 = 515652;
  *v145 = "DM_RACQUETBALL";
  *(v145 + 1) = 14;
  v145[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100115CDC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004330E8);
  sub_100005DF0(v0, qword_1004330E8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "RT_UNKNOWN";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "RT_UNAVAILABLE";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "RT_SMALL";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "RT_LARGE";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 1001;
  *v14 = "RT_UNACHIEVABLE";
  *(v14 + 8) = 15;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100115FD0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433100);
  sub_100005DF0(v0, qword_100433100);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "BC_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BC_NONE";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BC_USB";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BC_EXTERNAL";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "BC_ARCAS";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001162CC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433118);
  sub_100005DF0(v0, qword_100433118);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SE_FIDELITY_LEVEL_UNKNOWN";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SE_FIDELITY_LEVEL_UNAVAILABLE";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SE_FIDELITY_LEVEL_COARSE";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SE_FIDELITY_LEVEL_HIGH_RESOLUTION";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011657C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433130);
  sub_100005DF0(v0, qword_100433130);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = -1;
  *v5 = "CC_UNKNOWN";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 0;
  *v9 = "CC_UNRELIABLE";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 1;
  *v11 = "CC_2DWEAK";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 2;
  *v13 = "CC_2DSTRONG";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 3;
  *v15 = "CC_3DWEAK";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 4;
  *v17 = "CC_3D";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 5;
  *v19 = "CC_3DSTRONG";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 6;
  *v21 = "CC_MAX";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100116924()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433148);
  sub_100005DF0(v0, qword_100433148);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FM_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FM_DEFAULT";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FM_NAVIGATION";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FM_SWIM";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "FM_GAMING";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100116C20()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433160);
  sub_100005DF0(v0, qword_100433160);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AP_MODE_UNKNOWN";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AP_MODE_IBSS";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AP_MODE_INFRA";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AP_MODE_ANY";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100116ED0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433178);
  sub_100005DF0(v0, qword_100433178);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PROTOBUF_DEFAULT";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BAND_2GHz";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BAND_5GHz";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BAND_6GHz";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100117180()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433190);
  sub_100005DF0(v0, qword_100433190);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1003743D0;
  v4 = v36 + v3;
  v5 = v36 + v3 + v1[14];
  *(v36 + v3) = 0;
  *v5 = "WS_UNKNOWN";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v36 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "WS_HARVEST_2_GHZ_SET1";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v36 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "WS_HARVEST_2_GHZ_SET2";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v8();
  v12 = (v36 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "WS_HARVEST_5_GHZ_SET1";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v36 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "WS_HARVEST_5_GHZ_SET2";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v8();
  v16 = (v36 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "WS_HARVEST_5_GHZ_SET3";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v36 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "WS_CACHED";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v36 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "WS_LOW_PRIORITY";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = v36 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "WS_CHANNEL";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "WS_FAST";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "WS_STAGE1";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "WS_STAGE2";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v8();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "WS_NORMAL";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "WS_CUSTOM_SCAN_PARAMETERS";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v8();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "WS_5GHZ_STAGE1";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001176B4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004331A8);
  sub_100005DF0(v0, qword_1004331A8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1003743D0;
  v4 = v36 + v3;
  v5 = v36 + v3 + v1[14];
  *(v36 + v3) = 0;
  *v5 = "WN_UNKNOWN";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v36 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "WN_AVAILABLE";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v36 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "WN_POWER";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v36 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "WN_SCAN_READY";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v36 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "WN_SCAN";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v36 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "WN_SCAN_ERROR";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v36 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "WN_SCAN_ERROR_BUSY";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v36 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "WN_LINK_STATUS";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v36 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "WN_ROAM";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "WN_BACKGROUND_ENTRY";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "WN_BACKGROUND_EXIT";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v8();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "WN_TRACKING_AVAILABLE";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v8();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "WN_WOW";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v8();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "WN_SCAN_CACHE";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v8();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "WN_PEER_RANGING";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100117C08()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004331C0);
  sub_100005DF0(v0, qword_1004331C0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LOCATION_SERVICES_ENABLED_UNKNOWN";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LOCATION_SERVICES_ENABLED_NO";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LOCATION_SERVICES_ENABLED_YES";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LOCATION_SERVICES_ENABLED_UNAVAILABLE";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100117EB8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004331D8);
  sub_100005DF0(v0, qword_1004331D8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DATA_AVAILABILITY_UNKNOWN";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DATA_AVAILABILITY_UNAVAILABLE";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "DATA_AVAILABILITY_AVAILABLE";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100118134()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004331F0);
  sub_100005DF0(v0, qword_1004331F0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "INDOOR_OUTDOOR_TYPE_UNKNOWN";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INDOOR_OUTDOOR_TYPE_INDOOR";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "INDOOR_OUTDOOR_TYPE_OUTDOOR";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001183B0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433208);
  sub_100005DF0(v0, qword_100433208);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "INDOOR_OUTDOOR_CONFIDENCE_UNKNOWN";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INDOOR_OUTDOOR_CONFIDENCE_LOW";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "INDOOR_OUTDOOR_CONFIDENCE_MEDIUM";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "INDOOR_OUTDOOR_CONFIDENCE_HIGH";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100118688()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433220);
  sub_100005DF0(v0, qword_100433220);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cf_absolute_time_s";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mach_absolute_time_s";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "mach_continuous_time_s";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100118988(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423AE8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100118A28(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100118A94()
{
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  return Message.hash(into:)();
}

uint64_t sub_100118B3C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433238);
  sub_100005DF0(v0, qword_100433238);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "applicable_time";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "x_mps2";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "y_mps2";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "z_mps2";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100118EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423AE0, type metadata accessor for CLP_LogEntry_PrivateData_AccelSample);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100118F50(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CB80, type metadata accessor for CLP_LogEntry_PrivateData_AccelSample);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100118FBC()
{
  sub_100015EDC(&qword_10041CB80, type metadata accessor for CLP_LogEntry_PrivateData_AccelSample);

  return Message.hash(into:)();
}

uint64_t sub_100119064()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433250);
  sub_100005DF0(v0, qword_100433250);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event_receipt_time";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sample";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011927C()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Accel(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0);
        sub_100015EDC(&qword_10041CB80, type metadata accessor for CLP_LogEntry_PrivateData_AccelSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001193E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1001194DC(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0);
      sub_100015EDC(&qword_10041CB80, type metadata accessor for CLP_LogEntry_PrivateData_AccelSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_Accel(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001194DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Accel(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_1001197C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423AD8, type metadata accessor for CLP_LogEntry_PrivateData_Accel);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100119868(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D850, type metadata accessor for CLP_LogEntry_PrivateData_Accel);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001198D4()
{
  sub_100015EDC(&qword_10041D850, type metadata accessor for CLP_LogEntry_PrivateData_Accel);

  return Message.hash(into:)();
}

uint64_t sub_100119978()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433268);
  sub_100005DF0(v0, qword_100433268);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "applicable_time";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "x_radps";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "y_radps";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "z_radps";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100119C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  result = sub_100168420(v5, a1, a2, a3, a4);
  if (!v6)
  {
    v9 = a5(0);
    v10 = v5 + v9[6];
    if ((*(v10 + 4) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v12 = v5 + v9[7];
    if ((*(v12 + 4) & 1) == 0)
    {
      v13 = *v12;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    v14 = v5 + v9[8];
    if ((*(v14 + 4) & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100119E1C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + a1[8];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_100119EC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423AD0, type metadata accessor for CLP_LogEntry_PrivateData_GyroSample);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100119F60(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CB98, type metadata accessor for CLP_LogEntry_PrivateData_GyroSample);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100119FCC()
{
  sub_100015EDC(&qword_10041CB98, type metadata accessor for CLP_LogEntry_PrivateData_GyroSample);

  return Message.hash(into:)();
}

uint64_t sub_10011A074()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433280);
  sub_100005DF0(v0, qword_100433280);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event_receipt_time";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sample";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011A28C()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Gyro(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0);
        sub_100015EDC(&qword_10041CB98, type metadata accessor for CLP_LogEntry_PrivateData_GyroSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10011A3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_10011A4EC(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0);
      sub_100015EDC(&qword_10041CB98, type metadata accessor for CLP_LogEntry_PrivateData_GyroSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_Gyro(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10011A4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Gyro(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10011A7A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = &a2[*(a1 + 20)];
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_10011A864(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423AC8, type metadata accessor for CLP_LogEntry_PrivateData_Gyro);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011A904(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D878, type metadata accessor for CLP_LogEntry_PrivateData_Gyro);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011A970()
{
  sub_100015EDC(&qword_10041D878, type metadata accessor for CLP_LogEntry_PrivateData_Gyro);

  return Message.hash(into:)();
}

uint64_t sub_10011AA14()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433298);
  sub_100005DF0(v0, qword_100433298);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "applicable_time";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pressure";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "temperature";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011AC7C()
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

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0) + 24);
LABEL_5:
        v0 = v3;
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        goto LABEL_6;
      }

      if (result == 1)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0) + 20);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0) + 28);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_10011ADB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100168420(v3, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
  if (!v4)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
    v7 = v3 + *(v6 + 24);
    if ((*(v7 + 4) & 1) == 0)
    {
      v8 = v6;
      v9 = *v7;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
      v6 = v8;
    }

    v10 = v3 + *(v6 + 28);
    if ((*(v10 + 4) & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10011AF04@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t sub_10011AFC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423AC0, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011B068(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CBB0, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011B0D4()
{
  sub_100015EDC(&qword_10041CBB0, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);

  return Message.hash(into:)();
}

uint64_t sub_10011B178()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004332B0);
  sub_100005DF0(v0, qword_1004332B0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event_receipt_time";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sample";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011B390()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Baro(0) + 24);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
        sub_100015EDC(&qword_10041CBB0, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10011B4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_10011B5F0(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
      sub_100015EDC(&qword_10041CBB0, type metadata accessor for CLP_LogEntry_PrivateData_BaroSample);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_Baro(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10011B5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_Baro(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10011B88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423AB8, type metadata accessor for CLP_LogEntry_PrivateData_Baro);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011B92C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D8A0, type metadata accessor for CLP_LogEntry_PrivateData_Baro);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011B998()
{
  sub_100015EDC(&qword_10041D8A0, type metadata accessor for CLP_LogEntry_PrivateData_Baro);

  return Message.hash(into:)();
}

uint64_t sub_10011BA3C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004332C8);
  sub_100005DF0(v0, qword_1004332C8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "latitude";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "longitude";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011BD1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423AB0, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011BDBC(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D8B8, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011BE28()
{
  sub_100015EDC(&qword_10041D8B8, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

  return Message.hash(into:)();
}

uint64_t sub_10011BED0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004332E0);
  sub_100005DF0(v0, qword_1004332E0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1003743E0;
  v4 = v49 + v3;
  v5 = v49 + v3 + v1[14];
  *(v49 + v3) = 1;
  *v5 = "suitability";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v49 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "coordinate";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v49 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "horizontal_accuracy";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v49 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "altitude";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v49 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "vertical_accuracy";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v49 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "speed";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v49 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "speed_accuracy";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v49 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "course";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v49 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "course_accuracy";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v49 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "timestamp";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v49 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "confidence";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v49 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "lifespan";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v49 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "type";
  *(v30 + 1) = 4;
  v30[16] = 2;
  v8();
  v31 = (v49 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "raw_coordinate";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v8();
  v33 = (v49 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "raw_course";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  v35 = (v49 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "floor";
  *(v36 + 1) = 5;
  v36[16] = 2;
  v8();
  v37 = v49 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "integrity";
  *(v37 + 8) = 9;
  *(v37 + 16) = 2;
  v8();
  v38 = (v49 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "reference_frame";
  *(v39 + 1) = 15;
  v39[16] = 2;
  v8();
  v40 = (v49 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "raw_reference_frame";
  *(v41 + 1) = 19;
  v41[16] = 2;
  v8();
  v42 = (v49 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "signal_environment_type";
  *(v43 + 1) = 23;
  v43[16] = 2;
  v8();
  v44 = (v49 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "ellipsoidal_altitude";
  *(v45 + 1) = 20;
  v45[16] = 2;
  v8();
  v46 = (v49 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "from_simulation_controller";
  *(v47 + 1) = 26;
  v47[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011C5E0()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 4;
  v4 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v7 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type) = 14;
  result = (v6)(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate, 1, 1, v5);
  v18 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  *v19 = 0;
  *(v19 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame) = 3;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame) = 3;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType) = 8;
  v20 = v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController) = 2;
  qword_100443CF8 = v3;
  return result;
}

uint64_t sub_10011C808()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate, &qword_10041CA38, &qword_100374468);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate, &qword_10041CA38, &qword_100374468);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10011C8AC()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_100172298(v6);

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
          swift_beginAccess();
          sub_100198808();
          goto LABEL_16;
        case 2:
        case 14:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
          sub_100015EDC(&qword_10041D8B8, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_17;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 12:
        case 15:
        case 21:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_17;
        case 11:
        case 16:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_17;
        case 13:
          swift_beginAccess();
          sub_100198E98();
          goto LABEL_16;
        case 17:
          swift_beginAccess();
          sub_1001987B4();
          goto LABEL_16;
        case 18:
        case 19:
          swift_beginAccess();
          sub_100198EEC();
          goto LABEL_16;
        case 20:
          swift_beginAccess();
          sub_100197FD4();
LABEL_16:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_17;
        case 22:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_17:
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

uint64_t sub_10011CCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 4)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100198808();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_10011D174(v9, a1, a2, a3);
  v11 = v9 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy;
  swift_beginAccess();
  if ((*(v11 + 8) & 1) == 0)
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v13 = v9 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude;
  swift_beginAccess();
  if ((*(v13 + 8) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v15 = v9 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  swift_beginAccess();
  if ((*(v15 + 8) & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v17 = v9 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  swift_beginAccess();
  if ((*(v17 + 8) & 1) == 0)
  {
    v18 = *v17;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy);
  sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course);
  sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy);
  sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp);
  sub_10014F29C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence, 11, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan);
  sub_10011D39C(v9);
  sub_10011D440(v9, a1, a2, a3);
  sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse);
  sub_10014F29C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor, 16, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_100123D2C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity, sub_1001987B4);
  sub_100141760(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame, sub_100198EEC);
  sub_100141760(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame, sub_100198EEC);
  sub_1001586A8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType, sub_100197FD4);
  sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude);
  sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10011D174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA38, &qword_100374468);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA38, &qword_100374468);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_100015EDC(&qword_10041D8B8, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
}

uint64_t sub_10011D39C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  result = swift_beginAccess();
  if (*(a1 + v2) != 14)
  {
    v4 = *(a1 + v2);
    sub_100198E98();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10011D440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA38, &qword_100374468);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA38, &qword_100374468);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_100015EDC(&qword_10041D8B8, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
}

uint64_t sub_10011D6AC(uint64_t a1, uint64_t a2)
{
  v141 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v4 = *(v141 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v141);
  v7 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_100024A2C(&qword_100423CD0, &qword_100382F38);
  v8 = *(*(v140 - 8) + 64);
  v9 = __chkstk_darwin(v140);
  v11 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v134 - v12;
  v14 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v138 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v139 = &v134 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v134 - v21;
  __chkstk_darwin(v20);
  v24 = &v134 - v23;
  swift_beginAccess();
  v25 = *(a1 + 16);
  swift_beginAccess();
  v26 = *(a2 + 16);
  if (v25 == 4)
  {
    if (v26 != 4)
    {
      return 0;
    }
  }

  else if (v26 == 4 || qword_100383080[v25] != qword_100383080[v26])
  {
    return 0;
  }

  v136 = v11;
  v137 = v7;
  v142 = a2;
  v27 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v27, v24, &qword_10041CA38, &qword_100374468);
  v28 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  v29 = *(v140 + 48);
  sub_10000A0A4(v24, v13, &qword_10041CA38, &qword_100374468);
  v30 = v142 + v28;
  v31 = v142;
  sub_10000A0A4(v30, &v13[v29], &qword_10041CA38, &qword_100374468);
  v34 = *(v4 + 48);
  v32 = v4 + 48;
  v33 = v34;
  v35 = v141;
  if (v34(v13, 1, v141) == 1)
  {

    sub_1000059A8(v24, &qword_10041CA38, &qword_100374468);
    if (v33(&v13[v29], 1, v35) == 1)
    {
      v134 = v33;
      v135 = v32;
      sub_1000059A8(v13, &qword_10041CA38, &qword_100374468);
      goto LABEL_15;
    }

LABEL_11:
    sub_1000059A8(v13, &qword_100423CD0, &qword_100382F38);
    goto LABEL_12;
  }

  sub_10000A0A4(v13, v22, &qword_10041CA38, &qword_100374468);
  if (v33(&v13[v29], 1, v35) == 1)
  {

    sub_1000059A8(v24, &qword_10041CA38, &qword_100374468);
    sub_100015F24(v22, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    goto LABEL_11;
  }

  v134 = v33;
  v135 = v32;
  v37 = &v13[v29];
  v38 = v137;
  sub_1000112AC(v37, v137, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

  v39 = sub_100184D80(v22, v38, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_100015F24(v38, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_1000059A8(v24, &qword_10041CA38, &qword_100374468);
  sub_100015F24(v22, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v31 = v142;
  sub_1000059A8(v13, &qword_10041CA38, &qword_100374468);
  if ((v39 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v40 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy;
  swift_beginAccess();
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 8);
  v42 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy;
  swift_beginAccess();
  v43 = *(v42 + 8);
  if (v40)
  {
    if ((*(v42 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v42 + 8) & 1) != 0 || v41 != *v42)
  {
    goto LABEL_12;
  }

  v44 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude;
  swift_beginAccess();
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  v46 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude;
  swift_beginAccess();
  v47 = *(v46 + 8);
  if (v44)
  {
    if ((*(v46 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v46 + 8) & 1) != 0 || v45 != *v46)
  {
    goto LABEL_12;
  }

  v48 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  swift_beginAccess();
  v49 = *v48;
  LOBYTE(v48) = *(v48 + 8);
  v50 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  swift_beginAccess();
  v51 = *(v50 + 8);
  if (v48)
  {
    if ((*(v50 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v50 + 8) & 1) != 0 || v49 != *v50)
  {
    goto LABEL_12;
  }

  v52 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  swift_beginAccess();
  v53 = *v52;
  LOBYTE(v52) = *(v52 + 8);
  v54 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  swift_beginAccess();
  v55 = *(v54 + 8);
  if (v52)
  {
    if ((*(v54 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v54 + 8) & 1) != 0 || v53 != *v54)
  {
    goto LABEL_12;
  }

  v56 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy;
  swift_beginAccess();
  v57 = *v56;
  LOBYTE(v56) = *(v56 + 8);
  v58 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy;
  swift_beginAccess();
  v59 = *(v58 + 8);
  if (v56)
  {
    if ((*(v58 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v58 + 8) & 1) != 0 || v57 != *v58)
  {
    goto LABEL_12;
  }

  v60 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course;
  swift_beginAccess();
  v61 = *v60;
  LOBYTE(v60) = *(v60 + 8);
  v62 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course;
  swift_beginAccess();
  v63 = *(v62 + 8);
  if (v60)
  {
    if ((*(v62 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v62 + 8) & 1) != 0 || v61 != *v62)
  {
    goto LABEL_12;
  }

  v64 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy;
  swift_beginAccess();
  v65 = *v64;
  LOBYTE(v64) = *(v64 + 8);
  v66 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy;
  swift_beginAccess();
  v67 = *(v66 + 8);
  if (v64)
  {
    if ((*(v66 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v66 + 8) & 1) != 0 || v65 != *v66)
  {
    goto LABEL_12;
  }

  v68 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v69 = *v68;
  LOBYTE(v68) = *(v68 + 8);
  v70 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v71 = *(v70 + 8);
  if (v68)
  {
    if (*(v70 + 8))
    {
      goto LABEL_55;
    }

LABEL_12:

    return 0;
  }

  if ((*(v70 + 8) & 1) != 0 || v69 != *v70)
  {
    goto LABEL_12;
  }

LABEL_55:
  v72 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  swift_beginAccess();
  v73 = *v72;
  LOBYTE(v72) = *(v72 + 4);
  v74 = v31 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  swift_beginAccess();
  v75 = *(v74 + 4);
  if (v72)
  {
    if ((*(v74 + 4) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v74 + 4) & 1) != 0 || v73 != *v74)
  {
    goto LABEL_12;
  }

  v76 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan;
  swift_beginAccess();
  v77 = *v76;
  LOBYTE(v76) = *(v76 + 8);
  v78 = v142 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan;
  swift_beginAccess();
  v79 = *(v78 + 8);
  if (v76)
  {
    if ((*(v78 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v78 + 8) & 1) != 0 || v77 != *v78)
  {
    goto LABEL_12;
  }

  v80 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  v81 = *(a1 + v80);
  v82 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  v83 = v142;
  swift_beginAccess();
  v84 = *(v83 + v82);
  if (v81 == 14)
  {
    if (v84 != 14)
    {
      goto LABEL_12;
    }
  }

  else if (v84 == 14 || v81 != v84)
  {
    goto LABEL_12;
  }

  v85 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  v86 = v139;
  sub_10000A0A4(a1 + v85, v139, &qword_10041CA38, &qword_100374468);
  v87 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  v88 = v142;
  swift_beginAccess();
  v89 = *(v140 + 48);
  v90 = v136;
  sub_10000A0A4(v86, v136, &qword_10041CA38, &qword_100374468);
  sub_10000A0A4(v88 + v87, v90 + v89, &qword_10041CA38, &qword_100374468);
  if (v134(v90, 1, v141) == 1)
  {
    sub_1000059A8(v139, &qword_10041CA38, &qword_100374468);
    if (v134(&v136[v89], 1, v141) == 1)
    {
      sub_1000059A8(v136, &qword_10041CA38, &qword_100374468);
      goto LABEL_78;
    }

LABEL_75:
    sub_1000059A8(v136, &qword_100423CD0, &qword_100382F38);
    goto LABEL_12;
  }

  v91 = v136;
  sub_10000A0A4(v136, v138, &qword_10041CA38, &qword_100374468);
  if (v134((v91 + v89), 1, v141) == 1)
  {
    sub_1000059A8(v139, &qword_10041CA38, &qword_100374468);
    sub_100015F24(v138, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    goto LABEL_75;
  }

  v92 = v136;
  v93 = &v136[v89];
  v94 = v137;
  sub_1000112AC(v93, v137, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v95 = v138;
  v96 = sub_100184D80(v138, v94, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_100015F24(v94, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_1000059A8(v139, &qword_10041CA38, &qword_100374468);
  sub_100015F24(v95, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_1000059A8(v92, &qword_10041CA38, &qword_100374468);
  if ((v96 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_78:
  v97 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse;
  swift_beginAccess();
  v98 = *v97;
  LOBYTE(v97) = *(v97 + 8);
  v99 = v142 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse;
  swift_beginAccess();
  v100 = *(v99 + 8);
  if (v97)
  {
    if ((*(v99 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v99 + 8) & 1) != 0 || v98 != *v99)
  {
    goto LABEL_12;
  }

  v101 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  swift_beginAccess();
  v102 = *v101;
  LOBYTE(v101) = *(v101 + 4);
  v103 = v142 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  swift_beginAccess();
  v104 = *(v103 + 4);
  if (v101)
  {
    if ((*(v103 + 4) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v103 + 4) & 1) != 0 || v102 != *v103)
  {
    goto LABEL_12;
  }

  v105 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity;
  swift_beginAccess();
  v106 = *(a1 + v105);
  v107 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity;
  v108 = v142;
  swift_beginAccess();
  v109 = *(v108 + v107);
  if (v106 == 5)
  {
    if (v109 != 5)
    {
      goto LABEL_12;
    }
  }

  else if (v109 == 5 || qword_1003830A0[v106] != qword_1003830A0[v109])
  {
    goto LABEL_12;
  }

  v110 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  v111 = *(a1 + v110);
  v112 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  v113 = v142;
  swift_beginAccess();
  v114 = *(v113 + v112);
  if (v111 == 3)
  {
    if (v114 != 3)
    {
      goto LABEL_12;
    }
  }

  else if (v114 == 3 || v111 != v114)
  {
    goto LABEL_12;
  }

  v115 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame;
  swift_beginAccess();
  v116 = *(a1 + v115);
  v117 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame;
  v118 = v142;
  swift_beginAccess();
  v119 = *(v118 + v117);
  if (v116 == 3)
  {
    if (v119 != 3)
    {
      goto LABEL_12;
    }
  }

  else if (v119 == 3 || v116 != v119)
  {
    goto LABEL_12;
  }

  v120 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType;
  swift_beginAccess();
  v121 = *(a1 + v120);
  v122 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType;
  v123 = v142;
  swift_beginAccess();
  v124 = *(v123 + v122);
  if (v121 == 8)
  {
    if (v124 != 8)
    {
      goto LABEL_12;
    }
  }

  else if (v124 == 8 || v121 != v124)
  {
    goto LABEL_12;
  }

  v125 = a1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude;
  swift_beginAccess();
  v126 = *v125;
  LOBYTE(v125) = *(v125 + 8);
  v127 = v142 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude;
  swift_beginAccess();
  v128 = *(v127 + 8);
  if (v125)
  {
    if ((*(v127 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v127 + 8) & 1) != 0 || v126 != *v127)
  {
    goto LABEL_12;
  }

  v129 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController;
  swift_beginAccess();
  v130 = *(a1 + v129);

  v131 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController;
  v132 = v142;
  swift_beginAccess();
  v133 = *(v132 + v131);

  if (v130 == 2)
  {
    if (v133 != 2)
    {
      return 0;
    }
  }

  else if (v133 == 2 || ((v130 ^ v133) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_10011E64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423AA8, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011E6EC(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CC28, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011E758()
{
  sub_100015EDC(&qword_10041CC28, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);

  return Message.hash(into:)();
}

uint64_t sub_10011E7D4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004332F8);
  sub_100005DF0(v0, qword_1004332F8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ST_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ST_ROUTE_GUIDANCE";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ST_OTHER";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 0xFFFFLL;
  *v14 = "ST_ANY";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011EA84()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433310);
  sub_100005DF0(v0, qword_100433310);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = -1;
  *v6 = "LI_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 0;
  *v10 = "LI_NONE";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 25;
  *v12 = "LI_LOW";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 50;
  *v14 = "LI_MEDIUM";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 75;
  *v15 = "LI_HIGH";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011EDAC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433328);
  sub_100005DF0(v0, qword_100433328);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "raw_unmodified_course";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "raw_unmodified_course_unc";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "is_static";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_mounted";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011F03C()
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
        v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 32);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 20);
LABEL_14:
      v0 = 0;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 24);
      goto LABEL_14;
    }
  }
}

uint64_t sub_10011F138()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
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

uint64_t sub_10011F2C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423AA0, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011F364(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D8E0, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011F3D0()
{
  sub_100015EDC(&qword_10041D8E0, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);

  return Message.hash(into:)();
}

uint64_t sub_10011F474()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433340);
  sub_100005DF0(v0, qword_100433340);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "std";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011F6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v8 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v6 = *(a4(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v9 = *(a4(0) + 24);
LABEL_3:
      v4 = 0;
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }
}

uint64_t sub_10011F790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10011F8D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A98, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011F970(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D8F8, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011F9DC()
{
  sub_100015EDC(&qword_10041D8F8, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);

  return Message.hash(into:)();
}

uint64_t sub_10011FA80()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433358);
  sub_100005DF0(v0, qword_100433358);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "constellation";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "sat_id";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "elevation_deg";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "azimuth_deg";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "l1_cn0";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "l5_cn0";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_tracked";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "is_phase_tracked";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011FE14()
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

      if (result > 4)
      {
        if (result <= 6)
        {
          v5 = v0;
          if (result == 5)
          {
            v11 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 36);
          }

          else
          {
            v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 40);
          }

          goto LABEL_5;
        }

        if (result == 7)
        {
          v8 = v0;
          v12 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 44);
        }

        else
        {
          if (result != 8)
          {
            goto LABEL_6;
          }

          v8 = v0;
          v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 48);
        }

        v0 = v8;
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else
      {
        if (result > 2)
        {
          v5 = v0;
          if (result == 3)
          {
            v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 28);
          }

          else
          {
            v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 32);
          }

LABEL_5:
          v0 = v5;
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_6;
        }

        if (result == 1)
        {
          v10 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 20);
          sub_100198E44();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
        {
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 24);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10011FFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 7)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v17 = *(v5 + *(result + 20));
    sub_100198E44();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v11 = (v5 + v10[6]);
  if ((v11[1] & 1) == 0)
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  v13 = v5 + v10[7];
  if ((*(v13 + 4) & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v15 = v5 + v10[8];
  if ((*(v15 + 4) & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  sub_10013B19C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  sub_10001677C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  sub_100016874(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  sub_1000167F8(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100120210@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 7;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  *(a2 + a1[11]) = 2;
  *(a2 + v13) = 2;
  return result;
}

uint64_t sub_1001202CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A90, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10012036C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D910, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001203D8()
{
  sub_100015EDC(&qword_10041D910, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);

  return Message.hash(into:)();
}

uint64_t sub_10012047C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433370);
  sub_100005DF0(v0, qword_100433370);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1003743F0;
  v4 = v118 + v3;
  v5 = v118 + v3 + v1[14];
  *(v118 + v3) = 1;
  *v5 = "odometer";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v118 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "delta_distance";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v118 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "delta_distance_accuracy";
  *(v11 + 1) = 23;
  v11[16] = 2;
  v8();
  v12 = (v118 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "timestamp_gps";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v118 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "mach_time";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v118 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "horz_unc_semi_maj";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v118 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "horz_unc_semi_min";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v118 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "horz_unc_semi_maj_az";
  *(v21 + 1) = 20;
  v21[16] = 2;
  v8();
  v22 = v118 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "is_fitness_match";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v118 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "match_quality";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v118 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "match_coordinate";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v118 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "match_course";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v118 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "match_form_of_way";
  *(v30 + 1) = 17;
  v30[16] = 2;
  v8();
  v31 = (v118 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "match_road_class";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v8();
  v33 = (v118 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "match_shifted";
  *(v34 + 1) = 13;
  v34[16] = 2;
  v8();
  v35 = (v118 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "pressure";
  *(v36 + 1) = 8;
  v36[16] = 2;
  v8();
  v37 = v118 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "undulation_model";
  *(v37 + 8) = 16;
  *(v37 + 16) = 2;
  v8();
  v38 = (v118 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "undulation";
  *(v39 + 1) = 10;
  v39[16] = 2;
  v8();
  v40 = (v118 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "special_coordinate";
  *(v41 + 1) = 18;
  v41[16] = 2;
  v8();
  v42 = (v118 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "special_horizontal_accuracy";
  *(v43 + 1) = 27;
  v43[16] = 2;
  v8();
  v44 = (v118 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "mach_continuous_time";
  *(v45 + 1) = 20;
  v45[16] = 2;
  v8();
  v46 = (v118 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "origin_device";
  *(v47 + 1) = 13;
  v47[16] = 2;
  v8();
  v48 = (v118 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "is_matcher_propagated_coordinates";
  *(v49 + 1) = 33;
  v49[16] = 2;
  v8();
  v50 = (v118 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "map_matcher_data";
  *(v51 + 1) = 16;
  v51[16] = 2;
  v8();
  v52 = (v118 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "slope";
  *(v53 + 1) = 5;
  v53[16] = 2;
  v8();
  v54 = (v118 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "max_abs_slope";
  *(v55 + 1) = 13;
  v55[16] = 2;
  v8();
  v56 = (v118 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "ground_altitude";
  *(v57 + 1) = 15;
  v57[16] = 2;
  v8();
  v58 = (v118 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "ground_altitude_uncertainty";
  *(v59 + 1) = 27;
  v59[16] = 2;
  v8();
  v60 = (v118 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 29;
  *v61 = "smoothed_gps_altitude";
  *(v61 + 1) = 21;
  v61[16] = 2;
  v8();
  v62 = (v118 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 30;
  *v63 = "smoothed_gps_altitude_uncertainty";
  *(v63 + 1) = 33;
  v63[16] = 2;
  v8();
  v64 = (v118 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 31;
  *v65 = "is_simulated_or_spoofed";
  *(v65 + 1) = 23;
  v65[16] = 2;
  v8();
  v66 = (v118 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 32;
  *v67 = "raw_horizontal_accuracy";
  *(v67 + 1) = 23;
  v67[16] = 2;
  v8();
  v68 = v118 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 33;
  *v68 = "raw_course_accuracy";
  *(v68 + 8) = 19;
  *(v68 + 16) = 2;
  v8();
  v69 = (v118 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 34;
  *v70 = "is_coordinate_fused";
  *(v70 + 1) = 19;
  v70[16] = 2;
  v8();
  v71 = (v118 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 35;
  *v72 = "fused_coordinate";
  *(v72 + 1) = 16;
  v72[16] = 2;
  v8();
  v73 = (v118 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 36;
  *v74 = "fused_horizontal_accuracy";
  *(v74 + 1) = 25;
  v74[16] = 2;
  v8();
  v75 = (v118 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 37;
  *v76 = "fused_reference_frame";
  *(v76 + 1) = 21;
  v76[16] = 2;
  v8();
  v77 = (v118 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 38;
  *v78 = "fused_course";
  *(v78 + 1) = 12;
  v78[16] = 2;
  v8();
  v79 = (v118 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 39;
  *v80 = "fused_course_accuracy";
  *(v80 + 1) = 21;
  v80[16] = 2;
  v8();
  v81 = (v118 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 40;
  *v82 = "estimated_worst_case_error";
  *(v82 + 1) = 26;
  v82[16] = 2;
  v8();
  v83 = (v118 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 41;
  *v84 = "pre_fusing_altitude";
  *(v84 + 1) = 19;
  v84[16] = 2;
  v8();
  v85 = (v118 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 42;
  *v86 = "pre_fusing_vertical_accuracy";
  *(v86 + 1) = 28;
  v86[16] = 2;
  v8();
  v87 = (v118 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 43;
  *v88 = "is_coordinate_fused_with_vl";
  *(v88 + 1) = 27;
  v88[16] = 2;
  v8();
  v89 = (v118 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 44;
  *v90 = "fused_altitude";
  *(v90 + 1) = 14;
  v90[16] = 2;
  v8();
  v91 = (v118 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 45;
  *v92 = "fused_vertical_accuracy";
  *(v92 + 1) = 23;
  v92[16] = 2;
  v8();
  v93 = (v118 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 46;
  *v94 = "satellite_visibility_report";
  *(v94 + 1) = 27;
  v94[16] = 2;
  v8();
  v95 = (v118 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 47;
  *v96 = "gnss_content";
  *(v96 + 1) = 12;
  v96[16] = 2;
  v8();
  v97 = (v118 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 48;
  *v98 = "raw_altitude";
  *(v98 + 1) = 12;
  v98[16] = 2;
  v8();
  v99 = (v118 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 49;
  *v100 = "estimated_position_context_state";
  *(v100 + 1) = 32;
  v100[16] = 2;
  v8();
  v101 = (v118 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 50;
  *v102 = "estimated_position_context_state_probability_indoor";
  *(v102 + 1) = 51;
  v102[16] = 2;
  v8();
  v103 = (v118 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 51;
  *v104 = "estimated_position_context_state_probability_outdoor";
  *(v104 + 1) = 52;
  v104[16] = 2;
  v8();
  v105 = (v118 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 52;
  *v106 = "map_matcher_type";
  *(v106 + 1) = 16;
  v106[16] = 2;
  v8();
  v107 = (v118 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 53;
  *v108 = "is_route_hints_triggered_map_matching";
  *(v108 + 1) = 37;
  v108[16] = 2;
  v8();
  v109 = (v118 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 54;
  *v110 = "loi_location_source_accuracy";
  *(v110 + 1) = 28;
  v110[16] = 2;
  v8();
  v111 = (v118 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 55;
  *v112 = "batched_location_fix_type";
  *(v112 + 1) = 25;
  v112[16] = 2;
  v8();
  v113 = (v118 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 56;
  *v114 = "is_wifi_fix_with_associated_ap";
  *(v114 + 1) = 30;
  v114[16] = 2;
  v8();
  v115 = (v118 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 57;
  *v116 = "is_gnss_from_raven_estimators";
  *(v116 + 1) = 29;
  v116[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100121430()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 64) = 0;
  *(v3 + 72) = 1;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;
  *(v3 + 92) = 0;
  *(v3 + 96) = 1;
  *(v3 + 100) = 0;
  *(v3 + 104) = 1;
  *(v3 + 108) = 0;
  *(v3 + 112) = 1;
  *(v3 + 113) = 1026;
  v4 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v7 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
  *v9 = 0;
  *(v9 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted) = 2;
  v10 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel) = 4;
  v12 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
  *v12 = 0;
  *(v12 + 4) = 1;
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate, 1, 1, v5);
  v13 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice) = 3;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates) = 2;
  v15 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  v17 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
  *v22 = 0;
  *(v22 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed) = 2;
  v23 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused) = 2;
  v6(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate, 1, 1, v5);
  v25 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame) = 3;
  v26 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl) = 2;
  v31 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
  *v32 = 0;
  *(v32 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport) = &_swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent) = 3;
  v33 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  result = (*(*(v34 - 8) + 56))(v3 + v33, 1, 1, v34);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState) = 3;
  v36 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
  *v36 = 0;
  *(v36 + 8) = 1;
  v37 = v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
  *v37 = 0;
  *(v37 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType) = 4;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy) = 3;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType) = 5;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp) = 2;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators) = 2;
  qword_100443D38 = v3;
  return result;
}

uint64_t sub_100121908()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate, &qword_10041CA38, &qword_100374468);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure, &qword_10041CA40, &qword_100374470);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate, &qword_10041CA38, &qword_100374468);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData, &qword_10041CA48, &qword_100374478);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate, &qword_10041CA38, &qword_100374468);
  v1 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport);

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude, &qword_10041CA50, &qword_100374480);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t sub_100121A34()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_100172D1C(v6);

    *(v2 + v3) = v10;
  }

  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v1 || (v12 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 12:
      case 20:
      case 21:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 32:
      case 33:
      case 36:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 44:
      case 45:
      case 50:
      case 51:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        goto LABEL_26;
      case 6:
      case 7:
      case 8:
      case 18:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        goto LABEL_26;
      case 9:
      case 15:
      case 23:
      case 31:
      case 34:
      case 43:
      case 53:
      case 56:
      case 57:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_26;
      case 10:
        swift_beginAccess();
        sub_100198760();
        goto LABEL_25;
      case 11:
      case 19:
      case 35:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
        v13 = &qword_10041D8B8;
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate;
        goto LABEL_19;
      case 13:
      case 14:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_26;
      case 16:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
        v13 = &qword_10041D8F8;
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample;
        goto LABEL_19;
      case 17:
        swift_beginAccess();
        sub_10019870C();
        goto LABEL_25;
      case 22:
        swift_beginAccess();
        sub_1001986B8();
        goto LABEL_25;
      case 24:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
        v13 = &qword_10041D8E0;
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData;
        goto LABEL_19;
      case 37:
        swift_beginAccess();
        sub_100198EEC();
        goto LABEL_25;
      case 46:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
        sub_100015EDC(&qword_10041D910, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_26;
      case 47:
        swift_beginAccess();
        sub_100198664();
        goto LABEL_25;
      case 48:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
        v13 = &unk_10041D938;
        v14 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo;
LABEL_19:
        sub_100015EDC(v13, v14);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_26;
      case 49:
        swift_beginAccess();
        sub_100198610();
        goto LABEL_25;
      case 52:
        swift_beginAccess();
        sub_1001985BC();
        goto LABEL_25;
      case 54:
        swift_beginAccess();
        sub_100198568();
        goto LABEL_25;
      case 55:
        swift_beginAccess();
        sub_100198DF0();
LABEL_25:
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_26:
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_100122244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  result = swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    v11 = *(v9 + 16);
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (!v4)
  {
    swift_beginAccess();
    if ((*(v9 + 40) & 1) == 0)
    {
      v12 = *(v9 + 32);
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    swift_beginAccess();
    if ((*(v9 + 56) & 1) == 0)
    {
      v13 = *(v9 + 48);
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    swift_beginAccess();
    if ((*(v9 + 72) & 1) == 0)
    {
      v14 = *(v9 + 64);
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_100122DD4(v9);
    sub_10016E1D4(v9);
    sub_10016E26C(v9);
    sub_10016E304(v9);
    sub_100122E58(v9);
    sub_100122EE0(v9);
    sub_100122F7C(v9, a1, a2, a3);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse);
    sub_10014F29C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay, 13, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
    sub_10014F29C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass, 14, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted);
    sub_1001231A4(v9, a1, a2, a3);
    sub_100123C6C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel, sub_10019870C);
    sub_100089FE0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation);
    sub_1001233CC(v9, a1, a2, a3);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime);
    sub_100141760(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice, sub_1001986B8);
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates);
    sub_1001235F4(v9, a1, a2, a3);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty);
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy);
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused);
    sub_10012381C(v9, a1, a2, a3);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy);
    sub_100141760(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame, sub_100198EEC);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy);
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy);
    v15 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
    swift_beginAccess();
    if (*(*(v9 + v15) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
      sub_100015EDC(&qword_10041D910, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    sub_100141760(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent, sub_100198664);
    sub_100123A44(v9, a1, a2, a3);
    sub_100141760(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState, sub_100198610);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor);
    sub_100123C6C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType, sub_1001985BC);
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching);
    sub_100141760(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy, sub_100198568);
    sub_100123D2C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType, sub_100198DF0);
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp);
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100122DD4(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 88) & 1) == 0)
  {
    v3 = *(a1 + 80);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100122E58(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 113) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100122EE0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 114) != 4)
  {
    sub_100198760();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100122F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA38, &qword_100374468);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA38, &qword_100374468);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_100015EDC(&qword_10041D8B8, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
}

uint64_t sub_1001231A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA40, &qword_100374470);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA40, &qword_100374470);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA40, &qword_100374470);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
  sub_100015EDC(&qword_10041D8F8, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
}

uint64_t sub_1001233CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA38, &qword_100374468);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA38, &qword_100374468);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_100015EDC(&qword_10041D8B8, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
}

uint64_t sub_1001235F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA48, &qword_100374478);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA48, &qword_100374478);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA48, &qword_100374478);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
  sub_100015EDC(&qword_10041D8E0, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
}

uint64_t sub_10012381C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA38, &qword_100374468);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA38, &qword_100374468);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_100015EDC(&qword_10041D8B8, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
}

uint64_t sub_100123A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA50, &qword_100374480);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA50, &qword_100374480);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA50, &qword_100374480);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
  sub_100015EDC(&qword_10041D938, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
}

uint64_t sub_100123C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v8) != 4)
  {
    v10 = *(a1 + v8);
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100123D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v8) != 5)
  {
    v10 = *(a1 + v8);
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100123E30(uint64_t a1, uint64_t a2)
{
  v413 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v411 = *(v413 - 8);
  v4 = *(v411 + 64);
  __chkstk_darwin(v413);
  v412 = &v396 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v408 = sub_100024A2C(&qword_100423DC0, &qword_100383028);
  v6 = *(*(v408 - 8) + 64);
  __chkstk_darwin(v408);
  v414 = &v396 - v7;
  v8 = sub_100024A2C(&qword_10041CA50, &qword_100374480);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v410 = &v396 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v409 = &v396 - v12;
  v403 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v401 = *(v403 - 8);
  v13 = *(v401 + 64);
  __chkstk_darwin(v403);
  v402 = &v396 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v398 = sub_100024A2C(&qword_100423DC8, &qword_100383030);
  v15 = *(*(v398 - 8) + 64);
  __chkstk_darwin(v398);
  v404 = &v396 - v16;
  v17 = sub_100024A2C(&qword_10041CA48, &qword_100374478);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v400 = &v396 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v399 = &v396 - v21;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v419 = *(v22 - 8);
  v23 = *(v419 + 64);
  __chkstk_darwin(v22);
  v418 = &v396 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100024A2C(&qword_100423DD0, &qword_100383038);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v420 = &v396 - v27;
  v28 = sub_100024A2C(&qword_10041CA40, &qword_100374470);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v32 = &v396 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v396 - v33;
  v35 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v423 = *(v35 - 8);
  v424 = v35;
  v36 = *(v423 + 64);
  __chkstk_darwin(v35);
  v421 = &v396 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v422 = sub_100024A2C(&qword_100423CD0, &qword_100382F38);
  v38 = *(*(v422 - 8) + 64);
  v39 = __chkstk_darwin(v422);
  v407 = &v396 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v417 = &v396 - v42;
  __chkstk_darwin(v41);
  v44 = &v396 - v43;
  v45 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  v46 = *(*(v45 - 8) + 64);
  v47 = __chkstk_darwin(v45 - 8);
  v406 = &v396 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v405 = &v396 - v50;
  v51 = __chkstk_darwin(v49);
  v415 = &v396 - v52;
  v53 = __chkstk_darwin(v51);
  v416 = &v396 - v54;
  v55 = __chkstk_darwin(v53);
  v57 = &v396 - v56;
  __chkstk_darwin(v55);
  v59 = &v396 - v58;
  swift_beginAccess();
  v60 = *(a1 + 16);
  v425 = a1;
  LOBYTE(a1) = *(a1 + 24);
  swift_beginAccess();
  v61 = *(a2 + 24);
  if (a1)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v60 != *(a2 + 16))
    {
      v61 = 1;
    }

    if (v61)
    {
      return 0;
    }
  }

  v426 = a2;
  v62 = v425;
  swift_beginAccess();
  v63 = *(v62 + 32);
  v64 = *(v62 + 40);
  swift_beginAccess();
  v65 = *(v426 + 40);
  if (v64)
  {
    if (!*(v426 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v63 != *(v426 + 32))
    {
      v65 = 1;
    }

    if (v65)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v66 = *(v62 + 48);
  v67 = *(v62 + 56);
  swift_beginAccess();
  v68 = *(v426 + 56);
  if (v67)
  {
    if (!*(v426 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v66 != *(v426 + 48))
    {
      v68 = 1;
    }

    if (v68)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v69 = *(v62 + 64);
  v70 = *(v62 + 72);
  swift_beginAccess();
  v71 = *(v426 + 72);
  if (v70)
  {
    if (!*(v426 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v69 != *(v426 + 64))
    {
      v71 = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v72 = *(v62 + 80);
  v73 = *(v62 + 88);
  swift_beginAccess();
  v74 = *(v426 + 88);
  if (v73)
  {
    if (!*(v426 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (v72 != *(v426 + 80))
    {
      v74 = 1;
    }

    if (v74)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v75 = *(v62 + 92);
  v76 = *(v62 + 96);
  v397 = (v426 + 92);
  swift_beginAccess();
  v77 = *(v426 + 96);
  if (v76)
  {
    if (!*(v426 + 96))
    {
      return 0;
    }
  }

  else
  {
    if (v75 != *v397)
    {
      v77 = 1;
    }

    if (v77)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v78 = *(v62 + 100);
  v79 = *(v62 + 104);
  v397 = (v426 + 100);
  swift_beginAccess();
  v80 = *(v426 + 104);
  if (v79)
  {
    if (!*(v426 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (v78 != *v397)
    {
      v80 = 1;
    }

    if (v80)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v81 = *(v62 + 108);
  v82 = *(v62 + 112);
  v397 = (v426 + 108);
  swift_beginAccess();
  v83 = *(v426 + 112);
  if (v82)
  {
    if (!*(v426 + 112))
    {
      return 0;
    }
  }

  else
  {
    if (v81 != *v397)
    {
      v83 = 1;
    }

    if (v83)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v84 = *(v62 + 113);
  swift_beginAccess();
  v85 = *(v426 + 113);
  if (v84 == 2)
  {
    if (v85 != 2)
    {
      return 0;
    }
  }

  else if (v85 == 2 || ((v84 ^ v85) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v86 = *(v62 + 114);
  swift_beginAccess();
  v87 = *(v426 + 114);
  if (v86 == 4)
  {
    if (v87 != 4)
    {
      return 0;
    }

LABEL_59:
    v89 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
    v90 = v425;
    swift_beginAccess();
    sub_10000A0A4(v90 + v89, v59, &qword_10041CA38, &qword_100374468);
    v397 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
    v91 = v426;
    swift_beginAccess();
    v92 = *(v422 + 48);
    sub_10000A0A4(v59, v44, &qword_10041CA38, &qword_100374468);
    v93 = v397 + v91;
    v397 = v92;
    sub_10000A0A4(v93, v92 + v44, &qword_10041CA38, &qword_100374468);
    v95 = v423 + 48;
    v94 = *(v423 + 48);
    if (v94(v44, 1, v424) == 1)
    {

      v96 = v426;

      sub_1000059A8(v59, &qword_10041CA38, &qword_100374468);
      v97 = v94(v397 + v44, 1, v424);
      v98 = v425;
      if (v97 == 1)
      {
        v396 = v94;
        v423 = v95;
        sub_1000059A8(v44, &qword_10041CA38, &qword_100374468);
        goto LABEL_67;
      }
    }

    else
    {
      sub_10000A0A4(v44, v57, &qword_10041CA38, &qword_100374468);
      if (v94(v397 + v44, 1, v424) != 1)
      {
        v396 = v94;
        v423 = v95;
        v99 = v421;
        sub_1000112AC(v397 + v44, v421, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

        v100 = v426;

        LODWORD(v397) = sub_100184D80(v57, v99, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
        sub_100015F24(v99, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
        sub_1000059A8(v59, &qword_10041CA38, &qword_100374468);
        v101 = v57;
        v96 = v100;
        v98 = v425;
        sub_100015F24(v101, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
        sub_1000059A8(v44, &qword_10041CA38, &qword_100374468);
        if ((v397 & 1) == 0)
        {
          goto LABEL_94;
        }

LABEL_67:
        v102 = v98 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
        swift_beginAccess();
        v103 = *v102;
        v104 = *(v102 + 8);
        v105 = v96 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
        swift_beginAccess();
        v106 = *(v105 + 8);
        if (v104)
        {
          if ((*(v105 + 8) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if ((*(v105 + 8) & 1) != 0 || v103 != *v105)
        {
          goto LABEL_94;
        }

        v107 = (v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay);
        swift_beginAccess();
        v108 = *v107;
        v109 = *(v107 + 4);
        v110 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
        swift_beginAccess();
        v111 = *(v110 + 4);
        if (v109)
        {
          if ((*(v110 + 4) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if ((*(v110 + 4) & 1) != 0 || v108 != *v110)
        {
          goto LABEL_94;
        }

        v112 = (v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass);
        swift_beginAccess();
        v113 = *v112;
        v114 = *(v112 + 4);
        v115 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
        swift_beginAccess();
        v116 = *(v115 + 4);
        if (v114)
        {
          if ((*(v115 + 4) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if ((*(v115 + 4) & 1) != 0 || v113 != *v115)
        {
          goto LABEL_94;
        }

        v117 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
        v118 = v425;
        swift_beginAccess();
        v119 = *(v118 + v117);
        v120 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
        v121 = v426;
        swift_beginAccess();
        v122 = *(v121 + v120);
        if (v119 == 2)
        {
          if (v122 != 2)
          {
            goto LABEL_94;
          }
        }

        else if (v122 == 2 || ((v119 ^ v122) & 1) != 0)
        {
          goto LABEL_94;
        }

        v123 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
        v124 = v425;
        swift_beginAccess();
        sub_10000A0A4(v124 + v123, v34, &qword_10041CA40, &qword_100374470);
        v125 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
        v126 = v426;
        swift_beginAccess();
        v127 = *(v25 + 48);
        v128 = v420;
        sub_10000A0A4(v34, v420, &qword_10041CA40, &qword_100374470);
        sub_10000A0A4(v126 + v125, v128 + v127, &qword_10041CA40, &qword_100374470);
        v129 = *(v419 + 48);
        if (v129(v128, 1, v22) == 1)
        {
          sub_1000059A8(v34, &qword_10041CA40, &qword_100374470);
          if (v129(v420 + v127, 1, v22) == 1)
          {
            sub_1000059A8(v420, &qword_10041CA40, &qword_100374470);
            goto LABEL_98;
          }
        }

        else
        {
          v130 = v420;
          sub_10000A0A4(v420, v32, &qword_10041CA40, &qword_100374470);
          if (v129(v130 + v127, 1, v22) != 1)
          {
            v134 = v420;
            v135 = v418;
            sub_1000112AC(v420 + v127, v418, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            v136 = sub_100184D80(v32, v135, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            sub_100015F24(v135, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            sub_1000059A8(v34, &qword_10041CA40, &qword_100374470);
            sub_100015F24(v32, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            sub_1000059A8(v134, &qword_10041CA40, &qword_100374470);
            if ((v136 & 1) == 0)
            {
              goto LABEL_94;
            }

LABEL_98:
            v137 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
            v138 = v425;
            swift_beginAccess();
            v139 = *(v138 + v137);
            v140 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
            v141 = v426;
            swift_beginAccess();
            v142 = *(v141 + v140);
            if (v139 == 4)
            {
              if (v142 != 4)
              {
                goto LABEL_94;
              }
            }

            else if (v142 == 4 || v139 != v142)
            {
              goto LABEL_94;
            }

            v143 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
            swift_beginAccess();
            v144 = *v143;
            v145 = *(v143 + 4);
            v146 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
            swift_beginAccess();
            v147 = *(v146 + 4);
            if (v145)
            {
              if ((*(v146 + 4) & 1) == 0)
              {
                goto LABEL_94;
              }
            }

            else if ((*(v146 + 4) & 1) != 0 || v144 != *v146)
            {
              goto LABEL_94;
            }

            v148 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
            v149 = v425;
            swift_beginAccess();
            v150 = v416;
            sub_10000A0A4(v149 + v148, v416, &qword_10041CA38, &qword_100374468);
            v151 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
            v152 = v426;
            swift_beginAccess();
            v153 = *(v422 + 48);
            v154 = v150;
            v155 = v417;
            sub_10000A0A4(v154, v417, &qword_10041CA38, &qword_100374468);
            sub_10000A0A4(v152 + v151, v155 + v153, &qword_10041CA38, &qword_100374468);
            if (v396(v155, 1, v424) == 1)
            {
              sub_1000059A8(v416, &qword_10041CA38, &qword_100374468);
              if (v396(v417 + v153, 1, v424) == 1)
              {
                sub_1000059A8(v417, &qword_10041CA38, &qword_100374468);
                goto LABEL_115;
              }
            }

            else
            {
              v156 = v417;
              sub_10000A0A4(v417, v415, &qword_10041CA38, &qword_100374468);
              if (v396(v156 + v153, 1, v424) != 1)
              {
                v157 = v417;
                v158 = v417 + v153;
                v159 = v421;
                sub_1000112AC(v158, v421, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                v160 = v415;
                v161 = sub_100184D80(v415, v159, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                sub_100015F24(v159, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                sub_1000059A8(v416, &qword_10041CA38, &qword_100374468);
                sub_100015F24(v160, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                sub_1000059A8(v157, &qword_10041CA38, &qword_100374468);
                if ((v161 & 1) == 0)
                {
                  goto LABEL_94;
                }

LABEL_115:
                v162 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
                swift_beginAccess();
                v163 = *v162;
                v164 = *(v162 + 8);
                v165 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
                swift_beginAccess();
                v166 = *(v165 + 8);
                if (v164)
                {
                  if ((*(v165 + 8) & 1) == 0)
                  {
                    goto LABEL_94;
                  }
                }

                else if ((*(v165 + 8) & 1) != 0 || v163 != *v165)
                {
                  goto LABEL_94;
                }

                v167 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
                swift_beginAccess();
                v168 = *v167;
                v169 = *(v167 + 8);
                v170 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
                swift_beginAccess();
                v171 = *(v170 + 8);
                if (v169)
                {
                  if ((*(v170 + 8) & 1) == 0)
                  {
                    goto LABEL_94;
                  }
                }

                else if ((*(v170 + 8) & 1) != 0 || v168 != *v170)
                {
                  goto LABEL_94;
                }

                v172 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
                v173 = v425;
                swift_beginAccess();
                v174 = *(v173 + v172);
                v175 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
                v176 = v426;
                swift_beginAccess();
                v177 = *(v176 + v175);
                if (v174 == 3)
                {
                  if (v177 != 3)
                  {
                    goto LABEL_94;
                  }
                }

                else if (v177 == 3 || v174 != v177)
                {
                  goto LABEL_94;
                }

                v178 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
                v179 = v425;
                swift_beginAccess();
                v180 = *(v179 + v178);
                v181 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
                v182 = v426;
                swift_beginAccess();
                v183 = *(v182 + v181);
                if (v180 == 2)
                {
                  if (v183 != 2)
                  {
                    goto LABEL_94;
                  }
                }

                else if (v183 == 2 || ((v180 ^ v183) & 1) != 0)
                {
                  goto LABEL_94;
                }

                v184 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
                v185 = v425;
                swift_beginAccess();
                v186 = v399;
                sub_10000A0A4(v185 + v184, v399, &qword_10041CA48, &qword_100374478);
                v187 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
                v188 = v426;
                swift_beginAccess();
                v189 = *(v398 + 48);
                v190 = v186;
                v191 = v404;
                sub_10000A0A4(v190, v404, &qword_10041CA48, &qword_100374478);
                sub_10000A0A4(v188 + v187, v191 + v189, &qword_10041CA48, &qword_100374478);
                v192 = *(v401 + 48);
                if (v192(v191, 1, v403) == 1)
                {
                  sub_1000059A8(v399, &qword_10041CA48, &qword_100374478);
                  if (v192(v404 + v189, 1, v403) == 1)
                  {
                    sub_1000059A8(v404, &qword_10041CA48, &qword_100374478);
                    goto LABEL_142;
                  }
                }

                else
                {
                  v193 = v404;
                  sub_10000A0A4(v404, v400, &qword_10041CA48, &qword_100374478);
                  if (v192(v193 + v189, 1, v403) != 1)
                  {
                    v194 = v404;
                    v195 = v404 + v189;
                    v196 = v402;
                    sub_1000112AC(v195, v402, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                    v197 = v400;
                    v198 = sub_100185170(v400, v196);
                    sub_100015F24(v196, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                    sub_1000059A8(v399, &qword_10041CA48, &qword_100374478);
                    sub_100015F24(v197, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                    sub_1000059A8(v194, &qword_10041CA48, &qword_100374478);
                    if ((v198 & 1) == 0)
                    {
                      goto LABEL_94;
                    }

LABEL_142:
                    v199 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
                    swift_beginAccess();
                    v200 = *v199;
                    v201 = *(v199 + 8);
                    v202 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
                    swift_beginAccess();
                    v203 = *(v202 + 8);
                    if (v201)
                    {
                      if ((*(v202 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v202 + 8) & 1) != 0 || v200 != *v202)
                    {
                      goto LABEL_94;
                    }

                    v204 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
                    swift_beginAccess();
                    v205 = *v204;
                    v206 = *(v204 + 8);
                    v207 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
                    swift_beginAccess();
                    v208 = *(v207 + 8);
                    if (v206)
                    {
                      if ((*(v207 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v207 + 8) & 1) != 0 || v205 != *v207)
                    {
                      goto LABEL_94;
                    }

                    v209 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
                    swift_beginAccess();
                    v210 = *v209;
                    v211 = *(v209 + 8);
                    v212 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
                    swift_beginAccess();
                    v213 = *(v212 + 8);
                    if (v211)
                    {
                      if ((*(v212 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v212 + 8) & 1) != 0 || v210 != *v212)
                    {
                      goto LABEL_94;
                    }

                    v214 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
                    swift_beginAccess();
                    v215 = *v214;
                    v216 = *(v214 + 8);
                    v217 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
                    swift_beginAccess();
                    v218 = *(v217 + 8);
                    if (v216)
                    {
                      if ((*(v217 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v217 + 8) & 1) != 0 || v215 != *v217)
                    {
                      goto LABEL_94;
                    }

                    v219 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
                    swift_beginAccess();
                    v220 = *v219;
                    v221 = *(v219 + 8);
                    v222 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
                    swift_beginAccess();
                    v223 = *(v222 + 8);
                    if (v221)
                    {
                      if ((*(v222 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v222 + 8) & 1) != 0 || v220 != *v222)
                    {
                      goto LABEL_94;
                    }

                    v224 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
                    swift_beginAccess();
                    v225 = *v224;
                    v226 = *(v224 + 8);
                    v227 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
                    swift_beginAccess();
                    v228 = *(v227 + 8);
                    if (v226)
                    {
                      if ((*(v227 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v227 + 8) & 1) != 0 || v225 != *v227)
                    {
                      goto LABEL_94;
                    }

                    v229 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
                    v230 = v425;
                    swift_beginAccess();
                    v231 = *(v230 + v229);
                    v232 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
                    v233 = v426;
                    swift_beginAccess();
                    v234 = *(v233 + v232);
                    if (v231 == 2)
                    {
                      if (v234 != 2)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if (v234 == 2 || ((v231 ^ v234) & 1) != 0)
                    {
                      goto LABEL_94;
                    }

                    v235 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
                    swift_beginAccess();
                    v236 = *v235;
                    v237 = *(v235 + 8);
                    v238 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
                    swift_beginAccess();
                    v239 = *(v238 + 8);
                    if (v237)
                    {
                      if ((*(v238 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v238 + 8) & 1) != 0 || v236 != *v238)
                    {
                      goto LABEL_94;
                    }

                    v240 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
                    swift_beginAccess();
                    v241 = *v240;
                    v242 = *(v240 + 8);
                    v243 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
                    swift_beginAccess();
                    v244 = *(v243 + 8);
                    if (v242)
                    {
                      if ((*(v243 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v243 + 8) & 1) != 0 || v241 != *v243)
                    {
                      goto LABEL_94;
                    }

                    v245 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
                    v246 = v425;
                    swift_beginAccess();
                    v247 = *(v246 + v245);
                    v248 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
                    v249 = v426;
                    swift_beginAccess();
                    v250 = *(v249 + v248);
                    if (v247 == 2)
                    {
                      if (v250 != 2)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if (v250 == 2 || ((v247 ^ v250) & 1) != 0)
                    {
                      goto LABEL_94;
                    }

                    v251 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
                    v252 = v425;
                    swift_beginAccess();
                    v253 = v405;
                    sub_10000A0A4(v252 + v251, v405, &qword_10041CA38, &qword_100374468);
                    v254 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
                    v255 = v426;
                    swift_beginAccess();
                    v256 = *(v422 + 48);
                    v257 = v253;
                    v258 = v407;
                    sub_10000A0A4(v257, v407, &qword_10041CA38, &qword_100374468);
                    sub_10000A0A4(v255 + v254, v258 + v256, &qword_10041CA38, &qword_100374468);
                    if (v396(v258, 1, v424) == 1)
                    {
                      sub_1000059A8(v405, &qword_10041CA38, &qword_100374468);
                      if (v396(v407 + v256, 1, v424) == 1)
                      {
                        sub_1000059A8(v407, &qword_10041CA38, &qword_100374468);
LABEL_199:
                        v265 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
                        swift_beginAccess();
                        v266 = *v265;
                        v267 = *(v265 + 8);
                        v268 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
                        swift_beginAccess();
                        v269 = *(v268 + 8);
                        if (v267)
                        {
                          if ((*(v268 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v268 + 8) & 1) != 0 || v266 != *v268)
                        {
                          goto LABEL_94;
                        }

                        v270 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
                        v271 = v425;
                        swift_beginAccess();
                        v272 = *(v271 + v270);
                        v273 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
                        v274 = v426;
                        swift_beginAccess();
                        v275 = *(v274 + v273);
                        if (v272 == 3)
                        {
                          if (v275 != 3)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if (v275 == 3 || v272 != v275)
                        {
                          goto LABEL_94;
                        }

                        v276 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
                        swift_beginAccess();
                        v277 = *v276;
                        v278 = *(v276 + 8);
                        v279 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
                        swift_beginAccess();
                        v280 = *(v279 + 8);
                        if (v278)
                        {
                          if ((*(v279 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v279 + 8) & 1) != 0 || v277 != *v279)
                        {
                          goto LABEL_94;
                        }

                        v281 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
                        swift_beginAccess();
                        v282 = *v281;
                        v283 = *(v281 + 8);
                        v284 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
                        swift_beginAccess();
                        v285 = *(v284 + 8);
                        if (v283)
                        {
                          if ((*(v284 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v284 + 8) & 1) != 0 || v282 != *v284)
                        {
                          goto LABEL_94;
                        }

                        v286 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
                        swift_beginAccess();
                        v287 = *v286;
                        v288 = *(v286 + 8);
                        v289 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
                        swift_beginAccess();
                        v290 = *(v289 + 8);
                        if (v288)
                        {
                          if ((*(v289 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v289 + 8) & 1) != 0 || v287 != *v289)
                        {
                          goto LABEL_94;
                        }

                        v291 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
                        swift_beginAccess();
                        v292 = *v291;
                        v293 = *(v291 + 8);
                        v294 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
                        swift_beginAccess();
                        v295 = *(v294 + 8);
                        if (v293)
                        {
                          if ((*(v294 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v294 + 8) & 1) != 0 || v292 != *v294)
                        {
                          goto LABEL_94;
                        }

                        v296 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
                        swift_beginAccess();
                        v297 = *v296;
                        v298 = *(v296 + 8);
                        v299 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
                        swift_beginAccess();
                        v300 = *(v299 + 8);
                        if (v298)
                        {
                          if ((*(v299 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v299 + 8) & 1) != 0 || v297 != *v299)
                        {
                          goto LABEL_94;
                        }

                        v301 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
                        v302 = v425;
                        swift_beginAccess();
                        v303 = *(v302 + v301);
                        v304 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
                        v305 = v426;
                        swift_beginAccess();
                        v306 = *(v305 + v304);
                        if (v303 == 2)
                        {
                          if (v306 != 2)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if (v306 == 2 || ((v303 ^ v306) & 1) != 0)
                        {
                          goto LABEL_94;
                        }

                        v307 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
                        swift_beginAccess();
                        v308 = *v307;
                        v309 = *(v307 + 8);
                        v310 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
                        swift_beginAccess();
                        v311 = *(v310 + 8);
                        if (v309)
                        {
                          if ((*(v310 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v310 + 8) & 1) != 0 || v308 != *v310)
                        {
                          goto LABEL_94;
                        }

                        v312 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
                        swift_beginAccess();
                        v313 = *v312;
                        v314 = *(v312 + 8);
                        v315 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
                        swift_beginAccess();
                        v316 = *(v315 + 8);
                        if (v314)
                        {
                          if ((*(v315 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v315 + 8) & 1) != 0 || v313 != *v315)
                        {
                          goto LABEL_94;
                        }

                        v317 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
                        v318 = v425;
                        swift_beginAccess();
                        v319 = *(v318 + v317);
                        v320 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
                        v321 = v426;
                        swift_beginAccess();
                        v322 = *(v321 + v320);

                        LOBYTE(v321) = sub_1001719FC(v319, v322, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, sub_10017AB2C);

                        if ((v321 & 1) == 0)
                        {
                          goto LABEL_94;
                        }

                        v323 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
                        v324 = v425;
                        swift_beginAccess();
                        v325 = *(v324 + v323);
                        v326 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
                        v327 = v426;
                        swift_beginAccess();
                        v328 = *(v327 + v326);
                        if (v325 == 3)
                        {
                          if (v328 != 3)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if (v328 == 3 || v325 != v328)
                        {
                          goto LABEL_94;
                        }

                        v329 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
                        v330 = v425;
                        swift_beginAccess();
                        v331 = v409;
                        sub_10000A0A4(v330 + v329, v409, &qword_10041CA50, &qword_100374480);
                        v332 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
                        v333 = v426;
                        swift_beginAccess();
                        v334 = *(v408 + 48);
                        v335 = v331;
                        v336 = v414;
                        sub_10000A0A4(v335, v414, &qword_10041CA50, &qword_100374480);
                        sub_10000A0A4(v333 + v332, v336 + v334, &qword_10041CA50, &qword_100374480);
                        v337 = *(v411 + 48);
                        if (v337(v336, 1, v413) == 1)
                        {
                          sub_1000059A8(v409, &qword_10041CA50, &qword_100374480);
                          if (v337(v414 + v334, 1, v413) == 1)
                          {
                            sub_1000059A8(v414, &qword_10041CA50, &qword_100374480);
LABEL_262:
                            v344 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
                            v345 = v425;
                            swift_beginAccess();
                            v346 = *(v345 + v344);
                            v347 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
                            v348 = v426;
                            swift_beginAccess();
                            v349 = *(v348 + v347);
                            if (v346 == 3)
                            {
                              if (v349 != 3)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v349 == 3 || v346 != v349)
                            {
                              goto LABEL_94;
                            }

                            v350 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
                            swift_beginAccess();
                            v351 = *v350;
                            v352 = *(v350 + 8);
                            v353 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
                            swift_beginAccess();
                            v354 = *(v353 + 8);
                            if (v352)
                            {
                              if ((*(v353 + 8) & 1) == 0)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if ((*(v353 + 8) & 1) != 0 || v351 != *v353)
                            {
                              goto LABEL_94;
                            }

                            v355 = v425 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
                            swift_beginAccess();
                            v356 = *v355;
                            v357 = *(v355 + 8);
                            v358 = v426 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
                            swift_beginAccess();
                            v359 = *(v358 + 8);
                            if (v357)
                            {
                              if ((*(v358 + 8) & 1) == 0)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if ((*(v358 + 8) & 1) != 0 || v356 != *v358)
                            {
                              goto LABEL_94;
                            }

                            v360 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
                            v361 = v425;
                            swift_beginAccess();
                            v362 = *(v361 + v360);
                            v363 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
                            v364 = v426;
                            swift_beginAccess();
                            v365 = *(v364 + v363);
                            if (v362 == 4)
                            {
                              if (v365 != 4)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v365 == 4 || v362 != v365)
                            {
                              goto LABEL_94;
                            }

                            v366 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
                            v367 = v425;
                            swift_beginAccess();
                            v368 = *(v367 + v366);
                            v369 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
                            v370 = v426;
                            swift_beginAccess();
                            v371 = *(v370 + v369);
                            if (v368 == 2)
                            {
                              if (v371 != 2)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v371 == 2 || ((v368 ^ v371) & 1) != 0)
                            {
                              goto LABEL_94;
                            }

                            v372 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
                            v373 = v425;
                            swift_beginAccess();
                            v374 = *(v373 + v372);
                            v375 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
                            v376 = v426;
                            swift_beginAccess();
                            v377 = *(v376 + v375);
                            if (v374 == 3)
                            {
                              if (v377 != 3)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v377 == 3 || v374 != v377)
                            {
                              goto LABEL_94;
                            }

                            v378 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
                            v379 = v425;
                            swift_beginAccess();
                            v380 = *(v379 + v378);
                            v381 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
                            v382 = v426;
                            swift_beginAccess();
                            v383 = *(v382 + v381);
                            if (v380 == 5)
                            {
                              if (v383 != 5)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v383 == 5 || v380 != v383)
                            {
                              goto LABEL_94;
                            }

                            v384 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
                            v385 = v425;
                            swift_beginAccess();
                            v386 = *(v385 + v384);
                            v387 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
                            v388 = v426;
                            swift_beginAccess();
                            v389 = *(v388 + v387);
                            if (v386 != 2)
                            {
                              if (v389 == 2 || ((v386 ^ v389) & 1) != 0)
                              {
                                goto LABEL_94;
                              }

LABEL_302:
                              v390 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
                              v391 = v425;
                              swift_beginAccess();
                              v392 = *(v391 + v390);

                              v393 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
                              v394 = v426;
                              swift_beginAccess();
                              v395 = *(v394 + v393);

                              if (v392 == 2)
                              {
                                if (v395 != 2)
                                {
                                  return 0;
                                }
                              }

                              else if (v395 == 2 || ((v392 ^ v395) & 1) != 0)
                              {
                                return 0;
                              }

                              return 1;
                            }

                            if (v389 == 2)
                            {
                              goto LABEL_302;
                            }

LABEL_94:

                            return 0;
                          }
                        }

                        else
                        {
                          v338 = v414;
                          sub_10000A0A4(v414, v410, &qword_10041CA50, &qword_100374480);
                          if (v337(v338 + v334, 1, v413) != 1)
                          {
                            v339 = v414;
                            v340 = v414 + v334;
                            v341 = v412;
                            sub_1000112AC(v340, v412, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                            v342 = v410;
                            v343 = sub_100184E80(v410, v341);
                            sub_100015F24(v341, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                            sub_1000059A8(v409, &qword_10041CA50, &qword_100374480);
                            sub_100015F24(v342, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                            sub_1000059A8(v339, &qword_10041CA50, &qword_100374480);
                            if ((v343 & 1) == 0)
                            {
                              goto LABEL_94;
                            }

                            goto LABEL_262;
                          }

                          sub_1000059A8(v409, &qword_10041CA50, &qword_100374480);
                          sub_100015F24(v410, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                        }

                        v131 = &qword_100423DC0;
                        v132 = &qword_100383028;
                        v133 = v414;
LABEL_93:
                        sub_1000059A8(v133, v131, v132);
                        goto LABEL_94;
                      }
                    }

                    else
                    {
                      v259 = v407;
                      sub_10000A0A4(v407, v406, &qword_10041CA38, &qword_100374468);
                      if (v396(v259 + v256, 1, v424) != 1)
                      {
                        v260 = v407;
                        v261 = v407 + v256;
                        v262 = v421;
                        sub_1000112AC(v261, v421, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        v263 = v406;
                        v264 = sub_100184D80(v406, v262, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        sub_100015F24(v262, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        sub_1000059A8(v405, &qword_10041CA38, &qword_100374468);
                        sub_100015F24(v263, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        sub_1000059A8(v260, &qword_10041CA38, &qword_100374468);
                        if ((v264 & 1) == 0)
                        {
                          goto LABEL_94;
                        }

                        goto LABEL_199;
                      }

                      sub_1000059A8(v405, &qword_10041CA38, &qword_100374468);
                      sub_100015F24(v406, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                    }

                    v131 = &qword_100423CD0;
                    v132 = &qword_100382F38;
                    v133 = v407;
                    goto LABEL_93;
                  }

                  sub_1000059A8(v399, &qword_10041CA48, &qword_100374478);
                  sub_100015F24(v400, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                }

                v131 = &qword_100423DC8;
                v132 = &qword_100383030;
                v133 = v404;
                goto LABEL_93;
              }

              sub_1000059A8(v416, &qword_10041CA38, &qword_100374468);
              sub_100015F24(v415, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
            }

            v131 = &qword_100423CD0;
            v132 = &qword_100382F38;
            v133 = v417;
            goto LABEL_93;
          }

          sub_1000059A8(v34, &qword_10041CA40, &qword_100374470);
          sub_100015F24(v32, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
        }

        v131 = &qword_100423DD0;
        v132 = &qword_100383038;
        v133 = v420;
        goto LABEL_93;
      }

      sub_1000059A8(v59, &qword_10041CA38, &qword_100374468);
      sub_100015F24(v57, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    }

    sub_1000059A8(v44, &qword_100423CD0, &qword_100382F38);
    goto LABEL_94;
  }

  result = 0;
  if (v87 != 4 && v86 == v87)
  {
    goto LABEL_59;
  }

  return result;
}

uint64_t sub_100126878(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A88, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100126918(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CC30, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100126984()
{
  sub_100015EDC(&qword_10041CC30, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);

  return Message.hash(into:)();
}

uint64_t sub_100126A00()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433388);
  sub_100005DF0(v0, qword_100433388);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MQ_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MQ_NONE";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MQ_STRONG";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MQ_AMBIGUOUS";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100126CB0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004333A0);
  sub_100005DF0(v0, qword_1004333A0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = -1;
  *v6 = "UM_INVALID";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 0;
  *v10 = "UM_UNKNOWN";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 1;
  *v12 = "UM_DMA";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 2;
  *v14 = "UM_EGM08";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100126F60()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004333B8);
  sub_100005DF0(v0, qword_1004333B8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "OD_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OD_LOCAL";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "OD_REMOTE";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001271DC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004333D0);
  sub_100005DF0(v0, qword_1004333D0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "GNSS_CONTENT_UNKNOWN";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GNSS_CONTENT_NONE";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "GNSS_CONTENT_PRESENT";
  *(v11 + 8) = 20;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100127458()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004333E8);
  sub_100005DF0(v0, qword_1004333E8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PC_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PC_INDOOR";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "PC_OUTDOOR";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001276D4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433400);
  sub_100005DF0(v0, qword_100433400);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MM_TYPE_UNKNOWN";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MM_TYPE_VEHICLE";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MM_TYPE_PEDESTRIAN";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MM_TYPE_BICYCLE";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100127984()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433418);
  sub_100005DF0(v0, qword_100433418);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LOI_LOCATION_SOURCE_ACCURACY_UNKNOWN";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LOI_LOCATION_SOURCE_ACCURACY_LOW";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "LOI_LOCATION_SOURCE_ACCURACY_HIGH";
  *(v11 + 8) = 33;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

void sub_100127C00()
{
  v0._countAndFlagsBits = 0x64757469746C412ELL;
  v0._object = 0xED00006F666E4965;
  String.append(_:)(v0);
  qword_100433430 = 0xD00000000000002ELL;
  *algn_100433438 = 0x800000010039F5E0;
}

uint64_t *sub_100127C78()
{
  if (qword_100443D78 != -1)
  {
    swift_once();
  }

  return &qword_100433430;
}

uint64_t sub_100127CF0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433440);
  sub_100005DF0(v0, qword_100433440);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "altitude";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "vertical_accuracy";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "undulation";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "undulation_model";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100127F98()
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

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 28);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 32);
          sub_10019870C();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 20);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 24);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001280BC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
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

  v8 = (v0 + v3[7]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v0 + v3[8]) != 4)
  {
    v10 = *(v0 + v3[8]);
    sub_10019870C();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10012823C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + v8) = 4;
  return result;
}

uint64_t sub_1001282F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A80, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100128394(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D938, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100128400()
{
  sub_100015EDC(&qword_10041D938, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);

  return Message.hash(into:)();
}

uint64_t sub_1001284A4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433458);
  sub_100005DF0(v0, qword_100433458);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "location_type";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "active";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001286BC()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0) + 20);
        sub_100198E98();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0) + 24);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001287A0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 14)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v4 = *(v0 + *(result + 20));
    sub_100198E98();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100128904(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A78, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001289A4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D950, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100128A10()
{
  sub_100015EDC(&qword_10041D950, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);

  return Message.hash(into:)();
}

uint64_t sub_100128AB4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433470);
  sub_100005DF0(v0, qword_100433470);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "speed";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "mach_continuous_time";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "mach_absolute_time";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100128E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A70, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100128EC4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D968, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100128F30()
{
  sub_100015EDC(&qword_10041D968, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);

  return Message.hash(into:)();
}

uint64_t sub_100128FD4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433488);
  sub_100005DF0(v0, qword_100433488);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "true_heading";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001292BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A68, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10012935C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D980, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001293C8()
{
  sub_100015EDC(&qword_10041D980, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);

  return Message.hash(into:)();
}

uint64_t sub_10012946C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004334A0);
  sub_100005DF0(v0, qword_1004334A0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "when";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "where";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10012967C()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0) + 20);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0) + 24);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t sub_100129738()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
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
  if (v6[1])
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100129844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1001298B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A60, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100129958(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D998, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001299C4()
{
  sub_100015EDC(&qword_10041D998, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);

  return Message.hash(into:)();
}

uint64_t sub_100129A68()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004334B8);
  sub_100005DF0(v0, qword_1004334B8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "speed";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "uncertainty";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100129CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
        v10 = *(a4(0) + 28);
LABEL_3:
        v4 = 0;
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 2:
        v6 = *(a4(0) + 24);
        goto LABEL_3;
      case 1:
        v9 = *(a4(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t sub_100129E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A58, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100129F08(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D9B0, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100129F74()
{
  sub_100015EDC(&qword_10041D9B0, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);

  return Message.hash(into:)();
}

uint64_t sub_10012A018()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004334D0);
  sub_100005DF0(v0, qword_1004334D0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10036D7A0;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "event_receipt_time";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "client";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "location";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "location_private";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "status";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "active";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "odometer";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "signal_quality";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "vehicle_speed";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "vehicle_heading";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "xtra_file_available";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "motion_detected";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "location_derived_speed";
  *(v30 + 1) = 22;
  v30[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10012A4F8()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = v3 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active) = 2;
  v13 = v3 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality) = 3;
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  (*(*(v19 - 8) + 56))(v3 + v18, 1, 1, v19);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected) = 3;
  v20 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  v21 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  result = (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  qword_100443DC0 = v3;
  return result;
}

uint64_t sub_10012A7D4(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CA88, &qword_1003744B8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v92 = &v77 - v5;
  v6 = sub_100024A2C(&qword_10041CA80, &qword_1003744B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v91 = &v77 - v8;
  v9 = sub_100024A2C(&qword_10041CA78, &qword_1003744A8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v90 = &v77 - v11;
  v12 = sub_100024A2C(&qword_10041CA70, &qword_1003744A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v89 = &v77 - v14;
  v15 = sub_100024A2C(&qword_10041CA68, &qword_100374498);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v88 = &v77 - v17;
  v18 = sub_100024A2C(&qword_10041CA60, &qword_100374490);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v84 = &v77 - v20;
  v21 = sub_100024A2C(&qword_10041CA58, &qword_100374488);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v80 = &v77 - v23;
  v24 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v77 - v26;
  v28 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v29 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v29 - 8) + 56))(v1 + v28, 1, 1, v29);
  v30 = v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v30 = 0;
  *(v30 + 4) = 1;
  v31 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  v32 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  (*(*(v32 - 8) + 56))(v1 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  v77 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  (*(*(v34 - 8) + 56))(v1 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  v78 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  v36 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  (*(*(v36 - 8) + 56))(v1 + v35, 1, 1, v36);
  v79 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active) = 2;
  v37 = v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  *v37 = 0;
  *(v37 + 8) = 1;
  v81 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality) = 3;
  v38 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  v82 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  v39 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  (*(*(v39 - 8) + 56))(v1 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  v83 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  v41 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  (*(*(v41 - 8) + 56))(v1 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  v85 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  v43 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  (*(*(v43 - 8) + 56))(v1 + v42, 1, 1, v43);
  v86 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected) = 3;
  v44 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  v87 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  v45 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  (*(*(v45 - 8) + 56))(v1 + v44, 1, 1, v45);
  v46 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v46, v27, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v27, v1 + v28, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v47 = a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  LODWORD(v28) = *v47;
  LOBYTE(v47) = *(v47 + 4);
  swift_beginAccess();
  *v30 = v28;
  *(v30 + 4) = v47;
  v48 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  v49 = v80;
  sub_10000A0A4(a1 + v48, v80, &qword_10041CA58, &qword_100374488);
  swift_beginAccess();
  sub_10000AD64(v49, v1 + v31, &qword_10041CA58, &qword_100374488);
  swift_endAccess();
  v50 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  v51 = v84;
  sub_10000A0A4(a1 + v50, v84, &qword_10041CA60, &qword_100374490);
  v52 = v77;
  swift_beginAccess();
  sub_10000AD64(v51, v1 + v52, &qword_10041CA60, &qword_100374490);
  swift_endAccess();
  v53 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  v54 = v88;
  sub_10000A0A4(a1 + v53, v88, &qword_10041CA68, &qword_100374498);
  v55 = v78;
  swift_beginAccess();
  sub_10000AD64(v54, v1 + v55, &qword_10041CA68, &qword_100374498);
  swift_endAccess();
  v56 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  swift_beginAccess();
  LOBYTE(v56) = *(a1 + v56);
  v57 = v79;
  swift_beginAccess();
  *(v1 + v57) = v56;
  v58 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer);
  swift_beginAccess();
  v59 = *v58;
  LOBYTE(v58) = *(v58 + 8);
  swift_beginAccess();
  *v37 = v59;
  *(v37 + 8) = v58;
  v60 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  swift_beginAccess();
  LOBYTE(v60) = *(a1 + v60);
  v61 = v81;
  swift_beginAccess();
  *(v1 + v61) = v60;
  v62 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  v63 = v89;
  sub_10000A0A4(a1 + v62, v89, &qword_10041CA70, &qword_1003744A0);
  v64 = v82;
  swift_beginAccess();
  sub_10000AD64(v63, v1 + v64, &qword_10041CA70, &qword_1003744A0);
  swift_endAccess();
  v65 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  v66 = v90;
  sub_10000A0A4(a1 + v65, v90, &qword_10041CA78, &qword_1003744A8);
  v67 = v83;
  swift_beginAccess();
  sub_10000AD64(v66, v1 + v67, &qword_10041CA78, &qword_1003744A8);
  swift_endAccess();
  v68 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  v69 = v91;
  sub_10000A0A4(a1 + v68, v91, &qword_10041CA80, &qword_1003744B0);
  v70 = v85;
  swift_beginAccess();
  sub_10000AD64(v69, v1 + v70, &qword_10041CA80, &qword_1003744B0);
  swift_endAccess();
  v71 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  swift_beginAccess();
  LOBYTE(v71) = *(a1 + v71);
  v72 = v86;
  swift_beginAccess();
  *(v1 + v72) = v71;
  v73 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  v74 = v92;
  sub_10000A0A4(a1 + v73, v92, &qword_10041CA88, &qword_1003744B8);

  v75 = v87;
  swift_beginAccess();
  sub_10000AD64(v74, v1 + v75, &qword_10041CA88, &qword_1003744B8);
  swift_endAccess();
  return v1;
}

uint64_t sub_10012B254()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location, &qword_10041CA58, &qword_100374488);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate, &qword_10041CA60, &qword_100374490);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status, &qword_10041CA68, &qword_100374498);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed, &qword_10041CA70, &qword_1003744A0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading, &qword_10041CA78, &qword_1003744A8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable, &qword_10041CA80, &qword_1003744B0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed, &qword_10041CA88, &qword_1003744B8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10012B3A8()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_10012A7D4(v6);
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
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v14 = &qword_10041C7B8;
          goto LABEL_21;
        case 2:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_22;
        case 3:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation;
          v14 = &qword_10041CC28;
          goto LABEL_21;
        case 4:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate;
          v14 = &qword_10041CC30;
          goto LABEL_21;
        case 5:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus;
          v14 = &qword_10041D950;
          goto LABEL_21;
        case 6:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_22;
        case 7:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_22;
        case 8:
          swift_beginAccess();
          sub_100198514();
          goto LABEL_15;
        case 9:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed;
          v14 = &qword_10041D968;
          goto LABEL_21;
        case 10:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading;
          v14 = &qword_10041D980;
          goto LABEL_21;
        case 11:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable;
          v14 = &qword_10041D998;
          goto LABEL_21;
        case 12:
          swift_beginAccess();
          sub_1001984C0();
LABEL_15:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_22;
        case 13:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed;
          v14 = &qword_10041D9B0;
LABEL_21:
          sub_100015EDC(v14, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_22:
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

uint64_t sub_10012B8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  result = sub_10012BB3C(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = (v8 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
    swift_beginAccess();
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    sub_10012BD64(v8, a1, a2, a3);
    sub_10012BF8C(v8, a1, a2, a3);
    sub_10012C1B4(v8, a1, a2, a3);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer);
    sub_100141760(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality, sub_100198514);
    sub_10012C3DC(v8, a1, a2, a3);
    sub_10012C604(v8, a1, a2, a3);
    sub_10012C82C(v8, a1, a2, a3);
    sub_100141760(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected, sub_1001984C0);
    sub_10012CA54(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10012BB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10012BD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA58, &qword_100374488);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA58, &qword_100374488);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA58, &qword_100374488);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  sub_100015EDC(&qword_10041CC28, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
}

uint64_t sub_10012BF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA60, &qword_100374490);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA60, &qword_100374490);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA60, &qword_100374490);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  sub_100015EDC(&qword_10041CC30, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
}

uint64_t sub_10012C1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA68, &qword_100374498);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA68, &qword_100374498);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA68, &qword_100374498);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  sub_100015EDC(&qword_10041D950, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
}

uint64_t sub_10012C3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA70, &qword_1003744A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA70, &qword_1003744A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA70, &qword_1003744A0);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  sub_100015EDC(&qword_10041D968, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
}

uint64_t sub_10012C604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA78, &qword_1003744A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA78, &qword_1003744A8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA78, &qword_1003744A8);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  sub_100015EDC(&qword_10041D980, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
}

uint64_t sub_10012C82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA80, &qword_1003744B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA80, &qword_1003744B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA80, &qword_1003744B0);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  sub_100015EDC(&qword_10041D998, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
}

uint64_t sub_10012CA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA88, &qword_1003744B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA88, &qword_1003744B8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA88, &qword_1003744B8);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
  sub_100015EDC(&qword_10041D9B0, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
}

BOOL sub_10012CCC0(uint64_t a1, uint64_t a2)
{
  v275 = a2;
  v229 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v226 = *(v229 - 8);
  v3 = *(v226 + 64);
  __chkstk_darwin(v229);
  v223 = &v223 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_100024A2C(&qword_100423DD8, &qword_100383040);
  v5 = *(*(v224 - 8) + 64);
  __chkstk_darwin(v224);
  v230 = &v223 - v6;
  v7 = sub_100024A2C(&qword_10041CA88, &qword_1003744B8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v225 = &v223 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v228 = &v223 - v11;
  v238 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v234 = *(v238 - 8);
  v12 = *(v234 + 64);
  __chkstk_darwin(v238);
  v227 = &v223 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_100024A2C(&qword_100423DE0, &qword_100383048);
  v14 = *(*(v232 - 8) + 64);
  __chkstk_darwin(v232);
  v242 = &v223 - v15;
  v16 = sub_100024A2C(&qword_10041CA80, &qword_1003744B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v233 = &v223 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v237 = &v223 - v20;
  v21 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v240 = *(v21 - 8);
  v241 = v21;
  v22 = *(v240 + 64);
  __chkstk_darwin(v21);
  v231 = &v223 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_100024A2C(&qword_100423DE8, &qword_100383050);
  v24 = *(*(v239 - 8) + 64);
  __chkstk_darwin(v239);
  v245 = &v223 - v25;
  v26 = sub_100024A2C(&qword_10041CA78, &qword_1003744A8);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v235 = &v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v244 = &v223 - v30;
  v31 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v247 = *(v31 - 8);
  v248 = v31;
  v32 = *(v247 + 64);
  __chkstk_darwin(v31);
  v236 = &v223 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_100024A2C(&qword_100423DF0, &qword_100383058);
  v34 = *(*(v246 - 8) + 64);
  __chkstk_darwin(v246);
  v249 = &v223 - v35;
  v36 = sub_100024A2C(&qword_10041CA70, &qword_1003744A0);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v243 = &v223 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v257 = &v223 - v40;
  v41 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v254 = *(v41 - 8);
  v255 = v41;
  v42 = *(v254 + 64);
  __chkstk_darwin(v41);
  v250 = &v223 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_100024A2C(&qword_100423DF8, &qword_100383060);
  v44 = *(*(v253 - 8) + 64);
  __chkstk_darwin(v253);
  v256 = &v223 - v45;
  v46 = sub_100024A2C(&qword_10041CA68, &qword_100374498);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46 - 8);
  v251 = &v223 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v258 = &v223 - v50;
  v51 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  v262 = *(v51 - 8);
  v263 = v51;
  v52 = *(v262 + 64);
  __chkstk_darwin(v51);
  v252 = &v223 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_100024A2C(&qword_100423E00, &qword_100383068);
  v54 = *(*(v261 - 8) + 64);
  __chkstk_darwin(v261);
  v264 = &v223 - v55;
  v56 = sub_100024A2C(&qword_10041CA60, &qword_100374490);
  v57 = *(*(v56 - 8) + 64);
  v58 = __chkstk_darwin(v56 - 8);
  v260 = &v223 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v265 = &v223 - v60;
  v61 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  v268 = *(v61 - 8);
  v269 = v61;
  v62 = *(v268 + 64);
  __chkstk_darwin(v61);
  v259 = &v223 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_100024A2C(&qword_100423E08, &unk_100383070);
  v64 = *(*(v267 - 8) + 64);
  __chkstk_darwin(v267);
  v270 = &v223 - v65;
  v66 = sub_100024A2C(&qword_10041CA58, &qword_100374488);
  v67 = *(*(v66 - 8) + 64);
  v68 = __chkstk_darwin(v66 - 8);
  v266 = &v223 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v272 = &v223 - v70;
  v274 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v71 = *(v274 - 8);
  v72 = *(v71 + 64);
  __chkstk_darwin(v274);
  v271 = &v223 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v75 = v74 - 8;
  v76 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v78 = &v223 - v77;
  v79 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v80 = *(*(v79 - 8) + 64);
  v81 = __chkstk_darwin(v79 - 8);
  v273 = &v223 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v81);
  v84 = &v223 - v83;
  v85 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v85, v84, &qword_10041CA30, &qword_100374460);
  v86 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v87 = v275;
  swift_beginAccess();
  v88 = *(v75 + 56);
  sub_10000A0A4(v84, v78, &qword_10041CA30, &qword_100374460);
  v89 = v87 + v86;
  v90 = v274;
  sub_10000A0A4(v89, &v78[v88], &qword_10041CA30, &qword_100374460);
  v91 = *(v71 + 48);
  if (v91(v78, 1, v90) == 1)
  {

    sub_1000059A8(v84, &qword_10041CA30, &qword_100374460);
    if (v91(&v78[v88], 1, v90) == 1)
    {
      sub_1000059A8(v78, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    v93 = &qword_100423CE0;
    v94 = &qword_100393E90;
    v95 = v78;
LABEL_7:
    sub_1000059A8(v95, v93, v94);
    goto LABEL_8;
  }

  v92 = v273;
  sub_10000A0A4(v78, v273, &qword_10041CA30, &qword_100374460);
  if (v91(&v78[v88], 1, v90) == 1)
  {

    sub_1000059A8(v84, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v92, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v97 = v271;
  sub_1000112AC(&v78[v88], v271, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v98 = sub_1001853C4(v92, v97, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v97, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v84, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v92, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v78, &qword_10041CA30, &qword_100374460);
  if ((v98 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v99 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v100 = *v99;
  v101 = *(v99 + 4);
  v102 = v87 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v103 = *(v102 + 4);
  if (v101)
  {
    v104 = v272;
    if ((*(v102 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v104 = v272;
    if ((*(v102 + 4) & 1) != 0 || v100 != *v102)
    {
      goto LABEL_8;
    }
  }

  v105 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  sub_10000A0A4(a1 + v105, v104, &qword_10041CA58, &qword_100374488);
  v106 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  v107 = *(v267 + 48);
  v108 = v270;
  sub_10000A0A4(v104, v270, &qword_10041CA58, &qword_100374488);
  sub_10000A0A4(v87 + v106, v108 + v107, &qword_10041CA58, &qword_100374488);
  v109 = v269;
  v110 = *(v268 + 48);
  if (v110(v108, 1, v269) == 1)
  {
    sub_1000059A8(v104, &qword_10041CA58, &qword_100374488);
    if (v110(v108 + v107, 1, v109) == 1)
    {
      sub_1000059A8(v108, &qword_10041CA58, &qword_100374488);
      goto LABEL_25;
    }

LABEL_21:
    v93 = &qword_100423E08;
    v94 = &unk_100383070;
LABEL_31:
    v95 = v108;
    goto LABEL_7;
  }

  v111 = v266;
  sub_10000A0A4(v108, v266, &qword_10041CA58, &qword_100374488);
  if (v110(v108 + v107, 1, v109) == 1)
  {
    sub_1000059A8(v272, &qword_10041CA58, &qword_100374488);
    sub_100015F24(v111, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
    goto LABEL_21;
  }

  v112 = v109;
  v113 = v259;
  sub_1000112AC(v108 + v107, v259, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  v114 = *(v112 + 20);
  v115 = *(v111 + v114);
  v116 = *(v113 + v114);
  if (v115 != v116)
  {

    v117 = sub_10011D6AC(v115, v116);

    if ((v117 & 1) == 0)
    {
      v148 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation;
      sub_100015F24(v113, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
      v149 = &qword_10041CA58;
      v150 = &qword_100374488;
      sub_1000059A8(v272, &qword_10041CA58, &qword_100374488);
      v151 = v266;
LABEL_48:
      sub_100015F24(v151, v148);
      v95 = v108;
      v93 = v149;
      v94 = v150;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v118 = v266;
  v119 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100015F24(v113, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  sub_1000059A8(v272, &qword_10041CA58, &qword_100374488);
  sub_100015F24(v118, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  sub_1000059A8(v108, &qword_10041CA58, &qword_100374488);
  if ((v119 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  v120 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  v121 = v265;
  sub_10000A0A4(a1 + v120, v265, &qword_10041CA60, &qword_100374490);
  v122 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  v123 = *(v261 + 48);
  v124 = v264;
  sub_10000A0A4(v121, v264, &qword_10041CA60, &qword_100374490);
  v125 = v87 + v122;
  v108 = v124;
  sub_10000A0A4(v125, v124 + v123, &qword_10041CA60, &qword_100374490);
  v126 = *(v262 + 48);
  v127 = v124;
  v128 = v263;
  if (v126(v127, 1, v263) == 1)
  {
    sub_1000059A8(v121, &qword_10041CA60, &qword_100374490);
    if (v126(v108 + v123, 1, v128) == 1)
    {
      sub_1000059A8(v108, &qword_10041CA60, &qword_100374490);
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v129 = v260;
  sub_10000A0A4(v108, v260, &qword_10041CA60, &qword_100374490);
  if (v126(v108 + v123, 1, v128) == 1)
  {
    sub_1000059A8(v265, &qword_10041CA60, &qword_100374490);
    sub_100015F24(v129, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
LABEL_30:
    v93 = &qword_100423E00;
    v94 = &qword_100383068;
    goto LABEL_31;
  }

  v130 = v128;
  v131 = v252;
  sub_1000112AC(v108 + v123, v252, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  v132 = *(v130 + 20);
  v133 = *(v129 + v132);
  v134 = *(v131 + v132);
  if (v133 != v134)
  {

    v135 = sub_100123E30(v133, v134);

    if ((v135 & 1) == 0)
    {
      v148 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate;
      sub_100015F24(v131, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
      v149 = &qword_10041CA60;
      v150 = &qword_100374490;
      sub_1000059A8(v265, &qword_10041CA60, &qword_100374490);
      v151 = v260;
      goto LABEL_48;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v136 = v260;
  v137 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100015F24(v131, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  sub_1000059A8(v265, &qword_10041CA60, &qword_100374490);
  sub_100015F24(v136, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  sub_1000059A8(v108, &qword_10041CA60, &qword_100374490);
  if ((v137 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_35:
  v138 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  v139 = v258;
  sub_10000A0A4(a1 + v138, v258, &qword_10041CA68, &qword_100374498);
  v140 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  v141 = *(v253 + 48);
  v142 = v256;
  sub_10000A0A4(v139, v256, &qword_10041CA68, &qword_100374498);
  v143 = v142;
  sub_10000A0A4(v87 + v140, v142 + v141, &qword_10041CA68, &qword_100374498);
  v144 = v255;
  v145 = *(v254 + 48);
  if (v145(v142, 1, v255) == 1)
  {
    sub_1000059A8(v139, &qword_10041CA68, &qword_100374498);
    v146 = v145(v142 + v141, 1, v144);
    v147 = v257;
    if (v146 == 1)
    {
      sub_1000059A8(v142, &qword_10041CA68, &qword_100374498);
      goto LABEL_44;
    }

LABEL_41:
    v93 = &qword_100423DF8;
    v94 = &qword_100383060;
LABEL_42:
    v95 = v143;
    goto LABEL_7;
  }

  v152 = v251;
  sub_10000A0A4(v142, v251, &qword_10041CA68, &qword_100374498);
  v153 = v145(v142 + v141, 1, v144);
  v147 = v257;
  if (v153 == 1)
  {
    sub_1000059A8(v258, &qword_10041CA68, &qword_100374498);
    sub_100015F24(v152, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
    goto LABEL_41;
  }

  v154 = v142 + v141;
  v155 = v250;
  sub_1000112AC(v154, v250, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  v156 = sub_10017B6B0(v152, v155);
  sub_100015F24(v155, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  sub_1000059A8(v258, &qword_10041CA68, &qword_100374498);
  sub_100015F24(v152, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  sub_1000059A8(v142, &qword_10041CA68, &qword_100374498);
  if ((v156 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_44:
  v157 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  swift_beginAccess();
  v158 = *(a1 + v157);
  v159 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  swift_beginAccess();
  v160 = *(v87 + v159);
  if (v158 == 2)
  {
    if (v160 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v160 == 2 || ((v158 ^ v160) & 1) != 0)
  {
    goto LABEL_8;
  }

  v161 = a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  swift_beginAccess();
  v162 = *v161;
  v163 = *(v161 + 8);
  v164 = v87 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  swift_beginAccess();
  v165 = *(v164 + 8);
  if (v163)
  {
    if ((*(v164 + 8) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(v164 + 8) & 1) != 0 || v162 != *v164)
  {
    goto LABEL_8;
  }

  v166 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  swift_beginAccess();
  v167 = *(a1 + v166);
  v168 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  swift_beginAccess();
  v169 = *(v87 + v168);
  if (v167 == 3)
  {
    if (v169 != 3)
    {
      goto LABEL_8;
    }
  }

  else if (v169 == 3 || v167 != v169)
  {
    goto LABEL_8;
  }

  v170 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  sub_10000A0A4(a1 + v170, v147, &qword_10041CA70, &qword_1003744A0);
  v171 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  v172 = *(v246 + 48);
  v173 = v249;
  sub_10000A0A4(v147, v249, &qword_10041CA70, &qword_1003744A0);
  v143 = v173;
  sub_10000A0A4(v87 + v171, v173 + v172, &qword_10041CA70, &qword_1003744A0);
  v174 = v248;
  v175 = *(v247 + 48);
  if (v175(v173, 1, v248) == 1)
  {
    sub_1000059A8(v147, &qword_10041CA70, &qword_1003744A0);
    if (v175(v173 + v172, 1, v174) == 1)
    {
      sub_1000059A8(v173, &qword_10041CA70, &qword_1003744A0);
      v177 = v244;
      v176 = v245;
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  v178 = v243;
  sub_10000A0A4(v173, v243, &qword_10041CA70, &qword_1003744A0);
  if (v175(v173 + v172, 1, v174) == 1)
  {
    sub_1000059A8(v147, &qword_10041CA70, &qword_1003744A0);
    sub_100015F24(v178, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
LABEL_66:
    v93 = &qword_100423DF0;
    v94 = &qword_100383058;
    goto LABEL_42;
  }

  v179 = v173 + v172;
  v180 = v236;
  sub_1000112AC(v179, v236, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  v181 = sub_100183B70(v178, v180, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  sub_100015F24(v180, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  sub_1000059A8(v147, &qword_10041CA70, &qword_1003744A0);
  sub_100015F24(v178, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  sub_1000059A8(v173, &qword_10041CA70, &qword_1003744A0);
  v177 = v244;
  v176 = v245;
  if ((v181 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_68:
  v182 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  sub_10000A0A4(a1 + v182, v177, &qword_10041CA78, &qword_1003744A8);
  v183 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  v184 = *(v239 + 48);
  sub_10000A0A4(v177, v176, &qword_10041CA78, &qword_1003744A8);
  sub_10000A0A4(v87 + v183, v176 + v184, &qword_10041CA78, &qword_1003744A8);
  v185 = v241;
  v186 = *(v240 + 48);
  if (v186(v176, 1, v241) == 1)
  {
    sub_1000059A8(v177, &qword_10041CA78, &qword_1003744A8);
    if (v186(v176 + v184, 1, v185) == 1)
    {
      sub_1000059A8(v176, &qword_10041CA78, &qword_1003744A8);
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  v187 = v235;
  sub_10000A0A4(v176, v235, &qword_10041CA78, &qword_1003744A8);
  if (v186(v176 + v184, 1, v185) == 1)
  {
    sub_1000059A8(v177, &qword_10041CA78, &qword_1003744A8);
    sub_100015F24(v187, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
LABEL_73:
    v93 = &qword_100423DE8;
    v94 = &qword_100383050;
    v95 = v176;
    goto LABEL_7;
  }

  v188 = v176 + v184;
  v189 = v231;
  sub_1000112AC(v188, v231, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  v190 = sub_100184D80(v187, v189, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  sub_100015F24(v189, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  sub_1000059A8(v177, &qword_10041CA78, &qword_1003744A8);
  sub_100015F24(v187, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  sub_1000059A8(v176, &qword_10041CA78, &qword_1003744A8);
  if ((v190 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_75:
  v191 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  v192 = a1;
  v193 = a1 + v191;
  v194 = v237;
  sub_10000A0A4(v193, v237, &qword_10041CA80, &qword_1003744B0);
  v195 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  v196 = *(v232 + 48);
  v197 = v242;
  sub_10000A0A4(v194, v242, &qword_10041CA80, &qword_1003744B0);
  v198 = v87;
  sub_10000A0A4(v87 + v195, v197 + v196, &qword_10041CA80, &qword_1003744B0);
  v199 = *(v234 + 48);
  if (v199(v197, 1, v238) == 1)
  {
    sub_1000059A8(v237, &qword_10041CA80, &qword_1003744B0);
    if (v199(v242 + v196, 1, v238) == 1)
    {
      sub_1000059A8(v242, &qword_10041CA80, &qword_1003744B0);
      goto LABEL_83;
    }

LABEL_80:
    sub_1000059A8(v242, &qword_100423DE0, &qword_100383048);
    goto LABEL_8;
  }

  v200 = v242;
  sub_10000A0A4(v242, v233, &qword_10041CA80, &qword_1003744B0);
  if (v199(v200 + v196, 1, v238) == 1)
  {
    sub_1000059A8(v237, &qword_10041CA80, &qword_1003744B0);
    sub_100015F24(v233, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
    goto LABEL_80;
  }

  v201 = v242;
  v202 = v242 + v196;
  v203 = v227;
  sub_1000112AC(v202, v227, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  v204 = v233;
  v205 = sub_10017AE18(v233, v203);
  sub_100015F24(v203, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  sub_1000059A8(v237, &qword_10041CA80, &qword_1003744B0);
  sub_100015F24(v204, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  sub_1000059A8(v201, &qword_10041CA80, &qword_1003744B0);
  if ((v205 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_83:
  v206 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  swift_beginAccess();
  v207 = *(v192 + v206);
  v208 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  swift_beginAccess();
  v209 = *(v198 + v208);
  if (v207 == 3)
  {
    if (v209 == 3)
    {
      goto LABEL_88;
    }

LABEL_8:

    return 0;
  }

  if (v209 == 3 || v207 != v209)
  {
    goto LABEL_8;
  }

LABEL_88:
  v210 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  v211 = v228;
  sub_10000A0A4(v192 + v210, v228, &qword_10041CA88, &qword_1003744B8);
  v212 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  v213 = *(v224 + 48);
  v214 = v211;
  v215 = v230;
  sub_10000A0A4(v214, v230, &qword_10041CA88, &qword_1003744B8);
  sub_10000A0A4(v198 + v212, v215 + v213, &qword_10041CA88, &qword_1003744B8);
  v216 = *(v226 + 48);
  if (v216(v215, 1, v229) != 1)
  {
    v217 = v230;
    sub_10000A0A4(v230, v225, &qword_10041CA88, &qword_1003744B8);
    if (v216(v217 + v213, 1, v229) == 1)
    {

      sub_1000059A8(v228, &qword_10041CA88, &qword_1003744B8);
      sub_100015F24(v225, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
      goto LABEL_93;
    }

    v218 = v230;
    v219 = v230 + v213;
    v220 = v223;
    sub_1000112AC(v219, v223, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    v221 = v225;
    v222 = sub_1001853C4(v225, v220, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);

    sub_100015F24(v220, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    sub_1000059A8(v228, &qword_10041CA88, &qword_1003744B8);
    sub_100015F24(v221, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    sub_1000059A8(v218, &qword_10041CA88, &qword_1003744B8);
    return (v222 & 1) != 0;
  }

  sub_1000059A8(v228, &qword_10041CA88, &qword_1003744B8);
  if (v216(v230 + v213, 1, v229) != 1)
  {
LABEL_93:
    sub_1000059A8(v230, &qword_100423DD8, &qword_100383040);
    return 0;
  }

  sub_1000059A8(v230, &qword_10041CA88, &qword_1003744B8);
  return 1;
}

uint64_t sub_10012EE38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A50, type metadata accessor for CLP_LogEntry_PrivateData_Location);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10012EED8(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D9C8, type metadata accessor for CLP_LogEntry_PrivateData_Location);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10012EF44()
{
  sub_100015EDC(&qword_10041D9C8, type metadata accessor for CLP_LogEntry_PrivateData_Location);

  return Message.hash(into:)();
}

uint64_t sub_10012EFC0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004334E8);
  sub_100005DF0(v0, qword_1004334E8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SQ_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SQ_POOR";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SQ_GOOD";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10012F238()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433500);
  sub_100005DF0(v0, qword_100433500);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MD_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MD_YES";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "MD_NO";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10012F4DC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433518);
  sub_100005DF0(v0, qword_100433518);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "locations";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "locations_private";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10012F6F4()
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

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
        sub_100015EDC(&qword_10041CC30, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
    sub_100015EDC(&qword_10041CC28, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
LABEL_5:
    v0 = v3;
    dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10012F82C()
{
  if (!*(*v0 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0), sub_100015EDC(&qword_10041CC28, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0), sub_100015EDC(&qword_10041CC30, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_10012F988(uint64_t *a1, uint64_t *a2)
{
  if ((sub_100170368(*a1, *a2, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, sub_10011D6AC) & 1) == 0 || (sub_100170368(a1[1], a2[1], type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, sub_100123E30) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations(0) + 24);
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10012FB04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  a2[1] = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t (*sub_10012FB30(uint64_t a1, uint64_t a2))()
{
  result = static ALProtobufUtil.debug<A>(_:);
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_10012FB84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A48, type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10012FC24(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D9E0, type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10012FC90()
{
  sub_100015EDC(&qword_10041D9E0, type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations);

  return Message.hash(into:)();
}

uint64_t sub_10012FD0C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_100170368(*a1, *a2, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, sub_10011D6AC) & 1) == 0 || (sub_100170368(a1[1], a2[1], type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, sub_100123E30) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10012FE64()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433530);
  sub_100005DF0(v0, qword_100433530);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "gnss_mode_of_operation";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "active_gnss_session";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rhythmic_mode";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "current_modes_of_operation";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "has_subscribed_rhythmic_client";
  *(v15 + 8) = 30;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100130140()
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

      if (result <= 2)
      {
        break;
      }

      switch(result)
      {
        case 3:
          v7 = v0;
          v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 28);
          sub_100198D48();
LABEL_18:
          v0 = v7;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 4:
          v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 32);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 5:
          v4 = v0;
          v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 36);
LABEL_15:
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result != 1)
    {
      if (result != 2)
      {
        goto LABEL_5;
      }

      v4 = v0;
      v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 24);
      goto LABEL_15;
    }

    v7 = v0;
    v9 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 20);
    sub_100198D9C();
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1001302B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 3)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = *(v5 + *(result + 20));
    sub_100198D9C();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 5)
  {
    v14 = *(v5 + v10[7]);
    sub_100198D48();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  v11 = (v5 + v10[8]);
  if ((v11[1] & 1) == 0)
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_10013FD7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate);
  return UnknownStorage.traverse<A>(visitor:)();
}